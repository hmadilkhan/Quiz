<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Question;
use App\Models\Result;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;

class QuestionPageController extends BaseController
{
    
    public function index()
    {
        if (session("id") == "") {
            return Redirect::to('/')->send();
        }
        return view("question");
    }

    public function getQuestions()
    {
        $data = [
            "questions" => Question::with("answers")->takeRandom(10)->excludeQuestions()->get(),
        ];

        return $this->sendResponse($data, 200);
    }

    public function getQuestionsView()
    {
        return view("partials.questionview", [
            "questions" => Question::with("answers")->takeRandom(1)->first(),
        ]);
    }

    public function store(Request $request)
    {
        try {
            $checkQuestion = Question::findOrFail($request->questionId);
            if (!empty($checkQuestion)) {
                $correctAnswer = Answer::where("id", $request->answerId)->first("isCorrect");

                $data = [
                    "user_id" => session("id"),
                    "question_id" => $request->questionId,
                    "option_id" => $request->answerId,
                    "status" => $this->setStatus($correctAnswer),
                ];
                Result::create($data);
            }
            return $this->sendResponse(["message" => "Saved successfully!"], 200);
        } catch (\Throwable $th) {
            return $this->sendError($th->getMessage(), 500);
        }
    }

    public function setStatus($correctAnswer)
    {
        if (!empty($correctAnswer) && $correctAnswer->isCorrect == 1) {
            return "Correct";
        } else if (!empty($correctAnswer) && $correctAnswer->isCorrect == 0) {
            return "Wrong";
        } else {
            return "Skip";
        }
    }

    public function getResults()
    {
        try {
            $results = Result::where("user_id", session("id"))->select(DB::raw("COUNT(id) as total"), "status")->groupBy("status")->get();
            return $this->sendResponse(["results" => $results], 200);
        } catch (\Throwable $th) {
            return $this->sendError($th->getMessage(), 500);
        }
    }
}

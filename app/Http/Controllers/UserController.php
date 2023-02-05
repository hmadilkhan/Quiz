<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class UserController extends BaseController
{
    public function index()
    {
        if (session("id") != "") {
            return Redirect::to('/question-page')->send();
        }
        return view('welcome');
    }

    public function createUser(Request $request)
    {
        $this->validate($request, [
            'username' => 'required|string',
        ]);
        try {
            $user = User::create([
                "name" => $request->username,
            ]);

            if (!empty($user)) {
                $request->session()->put('name', $user->name);
                $request->session()->put('id', $user->id);
                return redirect()->route("question.page");
            }

        } catch (\Throwable $th) {
            return $this->sendError("User Not Found", 404);
        }
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Question extends Model
{
    use HasFactory;

    public function answers()
    {
        return $this->hasMany(Answer::class);
    }

    public function scopeTakeRandom($query, $size = 1)
    {
        return $query->orderBy(DB::raw('RAND()'))->take($size);
    }

    public function scopeExcludeQuestions($query)
    {
        return $query->whereNotIn("id",Result::where("user_id",session("id"))->pluck("question_id"));
    }
}

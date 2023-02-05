<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Questions</title>
    <link href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="{{asset('style.css')}}" rel="stylesheet" />
</head>

<body>
    <div class="container mt-sm-5 my-1" id="questionDiv" style="display:none;">
        <div class="question ml-sm-5 pl-sm-5 pt-2">
            <input type="hidden" id="question_id" />
            <div class="py-2 h5"><b>Question <span id="questionNumber">1<span></b></div>
            <div class="alert alert-danger" id="message" style="display: none;" role="alert">
                Please select any option
            </div>
            <div class="py-2 h5"><b id="questionarea">Q. which option best describes your job role?</b></div>
            <div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options">
                <label class="options">Small Business Owner or Employee
                    <input type="radio" name="radio">
                    <span class="checkmark"></span>
                </label>
                <label class="options">Nonprofit Owner or Employee
                    <input type="radio" name="radio">
                    <span class="checkmark"></span>
                </label>
                <label class="options">Journalist or Activist
                    <input type="radio" name="radio">
                    <span class="checkmark"></span>
                </label>
                <label class="options">Other
                    <input type="radio" name="radio">
                    <span class="checkmark"></span>
                </label>
            </div>
        </div>
        <div class="d-flex justify-content-between pt-3">
            <div id="prev">
                <button class="btn btn-primary float-left" onclick="nextQuestion('skip')">Skip</button>
            </div>
            <div class="prev">
                <button class="btn btn-success float-right" onclick="nextQuestion('next')">Next</button>
            </div>
        </div>
    </div>
    <div class="container mt-sm-5 my-1" id="resultDiv" style="display:none;">
        <div class="question ml-sm-5 pl-sm-5 pt-2">
            <div class="py-2 h5 "><b>Result Page</b></div>
            <hr/>
            <div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3">
                <label class="options">Correct Answers
                    <input type="radio" name="radio">
                    <span class="checkmark text-center" id="correct">0</span>
                </label>
                <br/><br/><br/>
                <label class="options">Wrong Answers
                    <input type="radio" name="radio">
                    <span class="checkmark text-center" id="wrong">0</span>
                </label>
                <br/><br/><br/>
                <label class="options">Skip Answers
                    <input type="radio" name="radio">
                    <span class="checkmark text-center" id="skip">0</span>
                </label>
            </div>
        </div>
    </div>
    @include("scripts")
</body>

</html>
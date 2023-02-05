<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script type="text/javascript">
    var questions = [];
    var count = 0;
    var totalCount = 1;

    if (totalCount == 1) {
        getQuestion();
    }

    function getQuestion() {
        $.ajax({
            url: "{{route('get.questions')}}",
            method: "POST",
            data: {
                _token: "{{csrf_token()}}"
            },
            success: function(response) {
                if (response.code == 200) {
                    questions = response.data.questions;
                    count = 0;
                    $("#questionDiv").css("display", "block")
                    createQuestion(questions[count]);
                }
            },
            error: function(jqXHR, exception) {
                alert("some error occurred")
            }
        })
    }

    function createQuestion(question) {
        if (question != undefined) {
            $("#questionarea").html("Q. " + question.question);
            $("#question_id").val(question.id);
            $("#options").empty();
            $.each(question.answers, function(index, item) {
                let option = '<label class="options">' + item.option +
                    '<input type="radio" name="' + item.question_id + '" value="' + item.id + '">' +
                    '<span class="checkmark"></span>' +
                    '</label>';
                $("#options").append(option);
            });
        }
    }

    function nextQuestion(status) {
        if (status == "next") {
            let question = $("#question_id").val();
            if ($("input:radio[name='" + question + "']").is(":checked")) {
                saveIntoDB();
            } else {
                showError()
            }
        } else if (status == "skip") {
            saveIntoDB();
        }

    }

    function saveIntoDB() {
        let questionId = $("#question_id").val();
        let answerId = $('input[name="' + questionId + '"]:checked').val()
        $.ajax({
            url: "{{route('store.question')}}",
            method: "POST",
            data: {
                _token: "{{csrf_token()}}",
                questionId: questionId,
                answerId: answerId
            },
            success: function(response) {
                if (response.code == 200) {
                    loadQuestion();
                }
            },
            error: function(jqXHR, exception) {
                alert("some error occurred")
            }
        })
    }

    function loadQuestion() {
        // Load Next 10 Question 
        if (count == 9) {
            getQuestion();
        }
        totalCount++;
        if (totalCount <= 20) {
            count++;
            emptyControls();
            createQuestion(questions[count])
        } else {
            getResults();
        }
    }

    function emptyControls() {
        $("#questionarea").html('');
        $("#question_id").val('');
        $("#questionNumber").html(totalCount);
    }

    function showError() {
        $("#message").css("display", "block");
        $("#message").fadeOut(5000);
    }

    function getResults() {
        $("#questionDiv").css("display", "none");
        $("#resultDiv").css("display", "block");
        $.ajax({
            url: "{{route('get.results')}}",
            method: "POST",
            data: {
                _token: "{{csrf_token()}}",
            },
            success: function(response) {
                if (response.code == 200) {
                    generateResult(response.data.results);
                }
            },
            error: function(jqXHR, exception) {
                alert("some error occurred")
            }
        })
    }

    function generateResult(results) {
        $("#questionDiv").css("display", "none");
        $("#correct").html(0)
        $("#wrong").html(0)
        $("#skip").html(0)
        $.each(results, function(index, item) {
            if (item.status == "Correct") {
                $("#correct").html(item.total)
            }
            if (item.status == "Wrong") {
                $("#wrong").html(item.total)
            }
            if (item.status == "Skip") {
                $("#skip").html(item.total)
            }
        });
    }
</script>
<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Redirect;

class BaseController extends Controller
{
    public function __construct()
    {
       if (session("id") == "") {
            return Redirect::to('/');
       }
    }

    public function sendResponse($result, $message = "", $code = 200)
    {
        $response = [
            'success' => true,
            'data'    => $result,
            'message' => $message,
            'code' => 200,
        ];


        return response()->json($response, $code);
    }


    /**
     * return error response.
     *
     * @return \Illuminate\Http\Response
     */
    public function sendError($message, $errorMessages = [], $code = 404)
    {
        $response = [
            'success' => false,
            'message' => $message,
        ];


        if (!empty($errorMessages)) {
            $response['data'] = $errorMessages;
        }


        return response()->json($response, $code);
    }
}

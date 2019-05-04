<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use Auth;

class SessionKW
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {   
        //dd($request);
        //dd($device_token);
        if (!$request->session()->exists('user')) {
            // user value cannot be found in session
            return redirect('/');
        }
        return $next($request);
    }
}

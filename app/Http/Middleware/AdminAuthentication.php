<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class AdminAuthentication
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
        if(Auth::check())
        {
            if(Auth::user()->isadmin == '1')
            {
                return $next($request);
            }
            else
            {
                return redirect()->intended('/')->with('info','You do not have rights to access this location'); 
            }
        }
        return redirect()->intended(route('home.login'))->with('info','You do not have rights to access this location');
    }
}
<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class HomeAuthentication
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
            $id = Auth::user()->id;
            if(Auth::user()->isadmin != '1')
            {
                return $next($request);
            }
            else{
                if(Auth::user()->account_status != '1'){
                    return redirect()->intended(route('products.index', compact('id')))->with('info','You have already logged in.');
                }
                else{
                    return redirect()->intended(route('employees.index'))->with('info','You have already logged in.');
                }
            }
        }
        return $next($request);
    }
}

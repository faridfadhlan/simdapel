<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class OperatorMiddleware
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
        $roles = $this->getRequiredRoleForRoute($request->route());
        if($request->user()->hasRole($roles) || !$roles)
        {
            return $next($request);
        }
        return response([
            'error' => [
                    'code' => 'INSUFFICIENT_ROLE',
                    'description' => 'You are not authorized to access this resource.'
            ]
        ], 401);
/*
        $user = Auth::user();
        if($user->level_id == '4') {
            return $next($request);
        }
        return redirect('/');*/
    }
    
    private function getRequiredRoleForRoute($route)
    {
        $actions = $route->getAction();
        return isset($actions['roles']) ? $actions['roles'] : null;
    }
}

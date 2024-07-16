<?php

namespace App\Exceptions;

use Exception;
use Hybridauth\Exception\InvalidAuthorizationCodeException;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use PayPal\Exception\PayPalConnectionException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class Handler extends ExceptionHandler {
	/**
	 * A list of the exception types that should not be reported.
	 *
	 * @var array
	 */
	protected $dontReport = [
		\Illuminate\Auth\AuthenticationException::class,
		\Illuminate\Auth\Access\AuthorizationException::class,
		\Symfony\Component\HttpKernel\Exception\HttpException::class,
		\Illuminate\Database\Eloquent\ModelNotFoundException::class,
		\Illuminate\Session\TokenMismatchException::class,
		\Illuminate\Validation\ValidationException::class,
	];

	/**
	 * Report or log an exception.
	 *
	 * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
	 *
	 * @param  \Exception $exception
	 *
	 * @return void
	 */
	public function report( Exception $exception ) {
		parent::report( $exception );
	}

	/**
	 * Render an exception into an HTTP response.
	 *
	 * @param  \Illuminate\Http\Request $request
	 * @param  \Exception $exception
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function render( $request, Exception $exception ) {
		if ( $exception instanceof \Illuminate\Session\TokenMismatchException ) {
			return redirect()->back()->withInput( $request->except( '_token' ) )
			                 ->with( 'w_message', 'Sorry, your session seems to have expired. Please try again.' );
		}elseif ( $exception instanceof PayPalConnectionException ) {
			return redirect()->back()->withInput()
			                 ->with( 'w_message', 'Sorry, We cannot connect to PayPal Server. Please try Again!' );
		}elseif ( $exception instanceof InvalidAuthorizationCodeException ) {
			return redirect('/signup')
			                 ->with( 'socialAuthWarningMessage', 'Authorization Cancelled! Please try again.' );
		} elseif ( $exception instanceof NotFoundHttpException ) {
			return response( view( 'page.404' ), 404 );
		}

		return parent::render( $request, $exception );
	}

	/**
	 * Convert an authentication exception into an unauthenticated response.
	 *
	 * @param  \Illuminate\Http\Request $request
	 * @param  \Illuminate\Auth\AuthenticationException $exception
	 *
	 * @return \Illuminate\Http\Response
	 */
	protected function unauthenticated( $request, AuthenticationException $exception ) {
		if ( $request->expectsJson() ) {
			return response()->json( [ 'error' => 'Unauthenticated.' ], 401 );
		}

		return redirect()->guest( route( 'login' ) );
	}
}

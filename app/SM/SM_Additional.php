<?php

namespace App\SM;

use App\Model\Common\Service;

trait SM_Additional {

	public static function date_difference_in_day( $start_date, $end_date ) {
		$date1     = date_create( $start_date );
		$date2     = date_create( $end_date );
		$diff      = date_diff( $date1, $date2 );
		$day_count = $diff->format( "%a" );
		$suffix    = ( $day_count > 1 ) ? " days" : " day";

		return $day_count . $suffix;
	}

	/**
	 * This method will provide seralize array data with base64 encode
	 *
	 * @param array $data Data that need to serialized and base64encoded
	 *
	 * @return string base64encoded string
	 */
	public static function sm_serialize( $data ) {
		return serialize( $data );
	}

	/**
	 * This method will provide unserialized array with base64decode
	 *
	 * @param $data string this data need to be base64encoded searialize data
	 *
	 * @return array
	 */
	public static function sm_unserialize( $data, $return_empty_array = 0 ) {
		$uns_chk = @unserialize( $data );
		if ( $uns_chk !== false || $data === 'b:0;' ) {
			return unserialize( $data );
		} elseif ( $return_empty_array == 1 ) {
			return array();
		}
	}

	public static function getServices() {
		return array();
	}

}

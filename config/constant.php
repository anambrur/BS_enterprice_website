<?php



/**

 * -----------------------------------------------------------------------------

 * This file defined all constant

 * @author Engr. Mizanur Rahman Khan <engr.mrksohag.com>

 * @copyright (c) 2016, Engr. Mizanur Rahman Khan

 * @mofified 08-06-2017

 * -----------------------------------------------------------------------------

 */

$asset = ( PHP_SAPI === 'cli' ) ? false : asset( '/' );

$site  = ( PHP_SAPI === 'cli' ) ? false : url( '/' );

return [

	'smSite'                              => $site,

//admin slug and url

	'smAdminSlug'                         => 'lavenderadmin',

	'smAdminUrl'                          => $site . '/lavenderadmin/',

//pagination

	'smPagination'                        => 10,

	'smPaginationMedia'                   => 49,

	'smFrontPagination'                   => 10,

	'cachingTimeInMinutes'                => 10,

	'popupHideTimeInMinutes'              => 24 * 60,

	'popupHideTimeInMinutesForSubscriber' => 30 * 24 * 60,

//image upload directory and url

	'smUploadsDir'                        => 'uploads/',

	'smUploads'                           => $asset . 'uploads/',

	'smUploadsUrl'                        => $asset . 'uploads/',

//image size: width and height

//1: logo

//2-4:gallery

//5:manage page

//6:manage page

//7:author small

//8-10:blog

//11-11: sliders

//12 team

//13 testimonial logo

	'smPostMaxInMb'                       => 5,



//galary (600x400, 112x112 not crop resized)

	'smImgWidth'                          => [



		227, //order page signature

		112, //media

		600, //media big show

		30, //admin user image

		1920, //slider

		80, //admin table image view

		165, //admin select image view

		16, //fav icon

		190, //header logo

		622, //about home page

		110, //services home page

		20, //portfoilo category image

		337, //portfoilo home page

		670, //portfoilo details page Sliding

        1600, //portfoilo details page Hover View

		370, //team home page

		85, //testimonial home page

		75, //Clients home page

		1920, //breadcrumb

		370, // blog

		770, // blog details

		120, //blog rightsider bar

		70, //blog footer

		// 193,

		// 600,

		// 165,

		// 80,

		// 45,

		// 30,

		// 750,

		// 748,

		// 360,

		// 358,

		// 358,

		// 550,

		// 560,

		// 270,

		// 210,

		// 170,

		// 263,

		// -----------sumon

		// 200,

		// 550,

		// 100,

		// 81,

		// 1920,

		// 550,

		// 370,

		// 1920,

		// 770,

		// 95,

		// // portfolio page

		// 630,

		// // portfolio details

		// 1170



	],

	'smImgHeight'                         => [

		42, //order page signature

		112,//media

		400,//media big show

		30, //admin user image

		450,//slider

		80, //admin image view

		165, //admin select image view

		16,//fav icon

		34,//header logo

		360, //about home page

		115, //services home page

		20, //portfoilo category image

		302, //portfoilo home page

        391, //portfoilo details page Sliding

		1200, //portfoilo details page Hover View

		400, //team home page

		85, //testimonial home page

		54, //Clients home page

		340, //breadcrumb

		280, // blog

		450, // blog details

		100, //blog rightsider bar

		70, //blog footer

		// 78,

		// 400,

		// 165,

		// 80,

		// 45,

		// 30,

		// 560,

		// 436,

		// 380,

		// 263,

		// 200,

		// 550,

		// 447,

		// 316,

		// 153,

		// 95,

		// 365,

		// -------------

		// 88,

		// 594,

		// 100,

		// 28,

		// 1210,

		// 600,

		// 280,

		// 340,

		// 450,

		// 95,

		// // portfolio page

		// 430,

		// // portfolio details

		// 624



	],

	//               1    2    3    4     5   6   7    8    9    10  11  12    13   14   15   16  17



];
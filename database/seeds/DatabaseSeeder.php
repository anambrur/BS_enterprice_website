<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder {
	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		DB::table( 'admins' )->insert( [
			'username' => 'mizan_sohag',
			'email'    => 'engr.mrksohag@gmail.com',
			'password' => bcrypt( "123456" ),
			'image'    => '',
			'status'   => 1,
			'role_id'     => 1
		] );
		$this->command->info( "Admin user creted!" );
		DB::table( 'roles' )->insert( [
			'name'       => 'Super Admin',
			'permission' => '',
			'created_by' => 1,
			'status'     => 1
		] );
		$this->command->info( "Super Admin Role created!" );

		DB::table( "users" )->insert( [
			'username' => 'mizan_Sohag',
			"email"    => "engr.mrksohag@gmail.com",
			"password" => bcrypt( "123456" ),
			"image"    => "",
			"status"   => 1
		] );

		$this->command->info( "Front user mizan_sohag creted!" );

		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'site_name',
				'option_value' => 'SM',
				'autoload'     => 1,
				'created_by'   => 1,
				'status'       => 1
			] );
		$this->command->info( "site_name creted!" );

		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'tag_line',
				'option_value' => '',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "tag_line creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'address',
				'option_value' => 'Uttara, Dhaka',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "site email creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'email',
				'option_value' => 'engr.mrksohag@gmail.com',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "Usermeta creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'secondary_email',
				'option_value' => 'engr.mrksohag@gmail.com',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "site secondary_email creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'mobile',
				'option_value' => '01715892032',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "mobile no inserted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'logo',
				'option_value' => '13',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "logo creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'favicon',
				'option_value' => '11',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "favicon creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'site_screenshot',
				'option_value' => '33',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "site_screenshot creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'site_meta_keywords',
				'option_value' => 'Shop, ecommerce, products, smshop',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "site_meta_keywords creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'site_meta_description',
				'option_value' => '',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "site_meta_description creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'main_menu',
				'option_value' => '',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "main_menu creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'fb_page',
				'option_value' => 'http://facebook.com/smddtech',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "fb_page creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'gp_page',
				'option_value' => 'http://facebook.com/smddtech',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "gp_page creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'tt_page',
				'option_value' => 'http://facebook.com/smddtech',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "tt_page creted!" );
		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'li_page',
				'option_value' => 'http://facebook.com/smddtech',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			] );
		$this->command->info( "li_page creted!" );


		DB::table( 'settings' )->insert(
			[
				'option_name'  => 'youtube_page',
				'option_value' => 'http://facebook.com/smddtech',
				'created_by'   => 1,
				'autoload'     => 1,
				'status'       => 1
			]
		);
		$this->command->info( "youtube_page creted!" );
	}
}

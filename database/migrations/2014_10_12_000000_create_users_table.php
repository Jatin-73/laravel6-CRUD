<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('username');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('image');
            $table->string('name');
            $table->string('mobile');
            $table->tinyInteger('roleId')->length(4);
            $table->string('fb_id');
            $table->string('category_id');
            $table->enum('account_status', array(0, 1))->default(0);
            $table->longText('device_token');
            $table->string('device_type');
            $table->string('language');
            $table->string('otp');
            $table->enum('isadmin', array(0, 1))->default(0);
            $table->enum('notification', array(0, 1))->default(0);
            $table->tinyInteger('document_verified')->length(4)->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}

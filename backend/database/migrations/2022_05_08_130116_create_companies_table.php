<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('companies', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('description')
                    ->nullable();
            $table->string('email');
            $table->string('phone');
            $table->string('location');
            $table->string('fax',30);
            $table->string('website');
            $table->string('linkedin')
                    ->nullable();
            $table->string('youtube')
                    ->nullable();
            $table->string('facebook')
                    ->nullable();
            $table->string('twitter')
                    ->nullable();
            $table->string('logo')
                    ->nullable();
            $table->integer('city_id')
                    ->unsigned()
                    ->nullable();
            $table->foreign('city_id')
                    ->references('id')
                    ->on('cities')
                    ->nullable();
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
        Schema::dropIfExists('companies');
    }
}

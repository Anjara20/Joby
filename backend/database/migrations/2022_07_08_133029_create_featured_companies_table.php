<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFeaturedCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('featured_companies', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('company_id')
                    ->unsigned();
            $table->boolean('is_active');
            $table->foreign('company_id')
                  ->references('id')
                  ->on('companies');
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
        Schema::dropIfExists('featured_companies');
    }
}

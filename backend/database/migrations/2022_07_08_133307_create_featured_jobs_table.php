<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFeaturedJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('featured_jobs', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('job_id')
                    ->unsigned();
            $table->boolean('is_active');
            $table->foreign('job_id')
                    ->references('id')
                    ->on('jobs');
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
        Schema::dropIfExists('featured_jobs');
    }
}

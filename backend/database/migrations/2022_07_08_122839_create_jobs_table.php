<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->longText('description')
                    ->nullable();
            $table->string('poste');
            $table->decimal('salary',12,2)
                    ->nullable();
            $table->enum('currency',['Ariary','Euro','dollar'])
                    ->nullable();
            $table->enum('types',['hours','day','month','year'])
                    ->nullable();
            $table->integer('number_person')
                    ->unsigned();
            $table->integer('company_id')
                    ->unsigned();
            $table->integer('domain_id')
                    ->unsigned();
            $table->foreign('company_id')
                    ->references('id')
                    ->on('companies')
                    ->onDelete('cascade')
                    ->onUpdate('cascade');
            $table->foreign('domain_id')
                    ->references('id')
                    ->on('domains')
                    ->onDelete('cascade')
                    ->onUpdate('cascade');
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
        Schema::dropIfExists('jobs');
    }
}

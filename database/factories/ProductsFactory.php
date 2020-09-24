<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\products;
use App\categories;
use Faker\Provider\Lorem;
use Faker\Provider\Base;
use Faker\Provider\Image;
use Faker\Generator as Faker;

$factory->define(products::class, function (Faker $faker) {
    return [
        'name' => $faker->word(8),
        'price' => $faker->numberBetween($min = 50, $max = 500),
        'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),
        'image' => $faker->imageUrl($width = 640, $height = 480, 'technics'),
        'category_id' => categories::all()->random()->id
    ];
});

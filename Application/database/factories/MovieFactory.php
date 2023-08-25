<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Movie>
 */
class MovieFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            //'user_id'=>User::factory(),
            // 'category_id'=>Category::factory(),
            // 'title'=>$this->faker->sentence,
            // 'slug'=>$this->faker->sentence,
            // 'body'=>$this->faker->paragraph,
            // 'img1'=>$this->faker->imageUrl,
            // 'img2'=>$this->faker->imageUrl,
            // 'video'=>'\trailer.mp4',
        ];
    }
}

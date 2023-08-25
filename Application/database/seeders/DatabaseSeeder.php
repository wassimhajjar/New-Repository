<?php

namespace Database\Seeders;

 use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Movie;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::truncate();
        // Movie::truncate();
        // Category::truncate();
         //\App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        //     Movie::factory()->create();

        // $user=User::factory()->create();
        //     $all1=Category::create([
        //         'name'=>'all1',
        //         'slug'=>'all1'
        //     ]);

        //     $all2=Category::create([
        //         'name'=>'all2',
        //         'slug'=>'all2'
        //     ]);

            // $movie=Movie::create([
            //     //'user_id'=>$user->id,
            //     'category_id'=>$all1->id,
            //     'title'=>'Now you see me 2',
            //     'slug'=>'Now-you-see-me-2',
            //     'img1'=>'/Now you see me.jpg',
            //     'img2'=>'/intro.jpeg',
            //     'video'=>'/trailer.mp4',
            //     'body'=>'<div class="main-container ">
            //     <img src="/intro.jpeg" alt="">
            //     <h1>Now you see me 2</h1>
            //     <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
            //         Reprehenderit nobis ea tenetur facere, placeat, 
            //         molestiae omnis ipsa nisi quas,
            //         asperiores odio doloremque tempora ratione. 
            //         Non incidunt voluptas magnam. Aut, quasi?
            //     </p>
            //     <button class="btn">Watch now</button>
            // </div>
            // <div class="trailer-container active">
            //     <video src="/trailer.mp4"  controls></video>
            //      <i class="fa-sharp fa-solid fa-xmark fa-2x close-icon"></i>
            // </div>'
            // ]);
            
            // Movie::create([
            //     'user_id'=>$user->id,
            //     'category_id'=>$all2->id,
            //     'title'=>'Now you see me 2',
            //     'slug'=>'Now-you-see-me-2',
            //     'img1'=>'/Now you see me.jpg',
            //     'img2'=>'/intro.jpeg',
            //     'video'=>'/trailer.mp4',
            //     'body'=>'<div class="main-container ">
            //     <img src="/intro.jpeg" alt="">
            //     <h1>Now you see me 2</h1>
            //     <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
            //         Reprehenderit nobis ea tenetur facere, placeat, 
            //         molestiae omnis ipsa nisi quas,
            //         asperiores odio doloremque tempora ratione. 
            //         Non incidunt voluptas magnam. Aut, quasi?
            //     </p>
            //     <button class="btn">Watch now</button>
            // </div>
            // <div class="trailer-container active">
            //     <video src="/trailer.mp4"  controls></video>
            //      <i class="fa-sharp fa-solid fa-xmark fa-2x close-icon"></i>
            // </div>'
            // ]);
    }
}

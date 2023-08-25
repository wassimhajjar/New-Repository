<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    use HasFactory;
    protected $guarded=[];

    //protected $with='category';

    public function /*cat*/ category(){
        // hasOne , hasMany , belongsTo, belongsToMany
    return $this->belongsTo(Category::class,/*'category_id'*/);
    }

    // public function scopeFilter($query, array $filters)//Post::newquery()->filter()
    // {   
    //     $query->when($filters['search'] ?? false,function($query,$search,$filters){
    //         $query
    //         ->where('title','like','%'.$search.'%');
    //         // ->orWhere('body','like','%' .request('search').'%');

    //         $query->when($filters['category'] ?? false,function($query,$category){
    //             // $query->whereHas('category',function($query){//give the movies that belongs to a category
    //             //     $query->where('slug',$category);//give the movies where the slug = requested category slug
    //         //OR
    //             $query
    //             ->whereExists(function($query,$category){
    //                 $query->from('categories')
    //                 ->whereColumn('categories.id','movies.category_id')
    //                 ->where('categories.slug',$category);
    //         });

    //         });
    //     });
    
    // }

    public function scopeFilter($query, array $filters)//Post::newquery()->filter()
    {   
        $query->when($filters['search'] ?? false,fn($query,$search)=>
            $query->where(fn($query)=>
            $query->where('title','like','%'.$search.'%')
            // ->orWhere('body','like','%' .request('search').'%')
            )
        );
            $query->when($filters['category'] ?? false,fn($query,$category)=>
                // $query->whereHas('category',function($query){//give the movies that belongs to a category
                //     $query->where('slug',$category);//give the movies where the slug = requested category slug
            //OR
                $query
                ->whereExists(fn($query)=>
                    $query->from('categories')
                    ->whereColumn('categories.id','movies.category_id')
                    ->where('categories.slug',$category))
            );
    }



    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}

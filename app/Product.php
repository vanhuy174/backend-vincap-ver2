<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Product extends Model
{
    use Translatable;
    protected $translatable= ['title', 'slug', 'excerpt', 'body', 'image', 'meta_description', 'meta_keywords'];
}

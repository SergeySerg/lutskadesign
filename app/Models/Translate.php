<?php
namespace App\Models;
use App;
use Illuminate\Database\Eloquent\Model;

class Translate extends Model {

    public function getTranslate($field, $lang = null){
        $pieces = explode("@|;", $this->$field);
        if(count($pieces) < 2 )
            return $this->$field;
        if(!$lang){
            $lang = App::getLocale();
        }
/*        if ($lang == 'ua')
            $field = $pieces[0];*/
        if ($lang == 'ru')
            $field = $pieces[0];
        if ($lang == 'en')
            $field = $pieces[1];
        return $field;
    }

    public function getAttributeTranslate($key, $lang = null){

        $articleArray =  $this->toArray();
        $attributes = json_decode($articleArray['attributes'], true);
        //dd($attributes[$key]);
        if(isset($attributes[$key]) AND $attributes[$key]){
            $pieces = explode("@|;", $attributes[$key]);
            //dd($pieces);
            if(count($pieces) < 2 )
                return $attributes[$key];
            if(!$lang){
                $lang = App::getLocale();
            }
            /*        if ($lang == 'ua')
                        $field = $pieces[0];*/
            if ($lang == 'ru')
                $field = $pieces[0];
            if ($lang == 'en')
                $field = $pieces[1];
            return $field;

        }
        return false;
    }

}
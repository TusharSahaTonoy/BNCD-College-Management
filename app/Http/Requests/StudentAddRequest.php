<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentInfoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
          'stu_name'=> '',
          'stu_class' => '',
          'stu_group'=> '',
          'stu_section'=>'',
          'stu_roll' => '',
          'guide_teacher' =>'',
          'admition_date' => '',
          'nomination_no' =>'',
          'seccurity_code' =>'',
          'nationality' => '',
          'religion' =>'',
          'date_of_birth'=>'',
          'emargency1'=>'',
          'emargency2'=>'',
          'father_name'=>'',
          'father_occ'=>'',
          'father_pos'=>'',
          'father_ins'=>'',
          'father_income'=>'',
          'father_mobile'=>'',
          'father_image'=>'',
          'mother_name'=>'',
          'mother_occ'=>'',
          'mother_pos'=>'',
          'mother_ins'=>'',
          'mother_income'=>'',
          'mother_mobile'=>'',
          'mother_image'=>'',
          'guardian_name'=>'',
          'guardian_relation'=>'',
          'guardian_occu'=>'',
          'guardian_ins'=>'',
          'guardian_pos'=>'',
          'guardian_income'=>'',
          'guardian_mobile'=>'',
          'guardian_image'=>'',
          'local_name'=>'',
          'local_relation'=>'father',
          'local_occu'=>'',
          'local_ins'=>'',
          'local_pos'=>'',
          'local_income'=>'',
          'local_mobile'=>'',
          'local_image'=>'',

        ];
    }
}

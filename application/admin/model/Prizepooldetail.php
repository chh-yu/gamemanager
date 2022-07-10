<?php

namespace app\admin\model;

use think\Model;


class Prizepooldetail extends Model
{

    

    

    // 表名
    protected $name = 'prize_pool_detail';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    protected $deleteTime = false;

    // 追加属性
    protected $append = [
        'type_text'
    ];
    

    
    public function getTypeList()
    {
        return ['firearm' => __('Firearm'), 'melee_weapon' => __('Melee_weapon'), 'prop' => __('Prop')];
    }


    public function getTypeTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['type']) ? $data['type'] : '');
        $list = $this->getTypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }




    public function pool()
    {
        return $this->belongsTo('app\admin\model\prize\Pool', 'prize_pool_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}

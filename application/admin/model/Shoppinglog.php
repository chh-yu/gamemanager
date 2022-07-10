<?php

namespace app\admin\model;

use think\Model;


class Shoppinglog extends Model
{

    

    

    // 表名
    protected $name = 'shopping_log';
    
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




    public function users()
    {
        return $this->belongsTo('Users', 'users_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}

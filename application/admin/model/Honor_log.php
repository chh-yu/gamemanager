<?php

namespace app\admin\model;

use think\Model;


class Honor_log extends Model
{

    

    

    // 表名
    protected $name = 'honor_log';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    protected $deleteTime = false;

    // 追加属性
    protected $append = [

    ];
    

    







    public function users()
    {
        return $this->belongsTo('Users', 'user_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function honor()
    {
        return $this->belongsTo('Honor', 'honor_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}

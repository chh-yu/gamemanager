<?php

namespace app\admin\model\honor;

use think\Model;


class Log extends Model
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
    

    







    public function honor()
    {
        return $this->belongsTo('app\admin\model\Honor', 'honor_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function users()
    {
        return $this->belongsTo('app\admin\model\Users', 'user_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}

<?php

namespace app\api\controller;

use app\common\controller\Api;
use app\admin\model\Users;

/**
 * 首页接口
 */
class Index extends Api{
    protected $noNeedLogin = ['*'];
    protected $noNeedRight = ['*'];
    /**
     * @var \think\Model
     */
    private $model;
    private $token;

    /**
     * 首页
     *
     */
    public function index(){
        $this->success(json_encode($this->request->param()));
        // $this->success("登录成功");
    }
    public function test(){
        $this->success(base64_decode($_POST["token"]));
    }

    public  function signup(){
        $params = $this->request->param();
        $user = [
            "account"   =>  $params["account"],
            "password"  =>  md5($params["password"]),
            "phone"     =>  $params["phone"] ?? null,
            "nickname"  =>  $params["nickname"] ?? null,
            "email"     =>  $params["email"] ?? null
        ];
        $this->model = model("app\admin\model\Users");
        try {
            if ($this->model->where("account", $user["account"])->find()) {
                $this->success("用户名已存在！", null,  2);
            }
            $res = $this->model->insert($user);
            if($res){
                $this->success("注册成功");
            }
            else{
                $this->error("注册失败");
            }
        } catch (DataNotFoundException | ModelNotFoundException | DbException $e) {
            $this->error("注册失败");
        }
    }

    public function login(){
        $params = $this->request->param();
        $user = [
            "account"   => $params["account"],
            "password"  =>  md5($params["password"]),
        ];
        $this->model = model("app\admin\model\Users");
        $res = $this->model->where($user)->find();
        $token = 1;
        if($res){
            $this->success("登录成功", ['token' =>  Common::get_token($res)]);
        }
        else{
            $this->error("登录失败");
        }
    }
    public function valid(){
        $params = $this->request->param();
        $this->success(Common::check_token($params["token"]));
    }
}

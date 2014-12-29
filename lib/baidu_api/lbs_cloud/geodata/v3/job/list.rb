# encoding: utf-8
module BaiduApi::LbsCloud::Geodata::V3::Job::List
  class Request
    attr_accessor :type     # job类型   int32(<10)  
    attr_accessor :status   # job状态   int32(<10)  目前是1：新增，2：正在处理，3：完成。
    attr_accessor :ak       # 用户的访问权限key  string(50)  必选。
    attr_accessor :sn       # 用户的权限签名 string(50)  可选。
  end

  class Response
    attr_accessor :status       # 状态码 int32   必须。0代表成功，其它取值含义另行说明
    attr_accessor :message      # 响应的信息   string(50)  对status的英文描述。
    attr_accessor :jobs         # job结果列表 array   必选
    attr_accessor :id           # 数据id    string  必选
    attr_accessor :create_time  # 用户创建日期  string  可选
    attr_accessor :modify_time  # string  可选
    attr_accessor :error        # 错误码 int32   可选
    attr_accessor :poi_fail     # 导入失败的   uint32  可选
    attr_accessor :poi_size     # 导入总数的   uint32  可选，可能为0
    attr_accessor :poi_success  # 导入成功的   uint32  可选
    attr_accessor :status       # 状态  int32   必选
    attr_accessor :type         # 类型  int32   可选
  end
end

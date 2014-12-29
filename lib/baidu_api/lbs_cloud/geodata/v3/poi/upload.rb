# encoding: utf-8
module BaiduApi::LbsCloud::Geodata::V3::Poi::Upload
  class Request
    attr_accessor :geotable_id  # 导入的geotable的标识  uint32  必须
    attr_accessor :poi_list     # 输入的poi列表名称  file  必须，小于10M
    attr_accessor :ak           # 用户的访问权限key  string(50)  必选。
    attr_accessor :sn           # 用户的权限签名 string(50)  可选。
    attr_accessor :timestamp    # 时间戳 uint32
  end

  class Response
    attr_accessor :status       # 状态码 int32 必须。0代表成功，其它取值含义另行说明
    attr_accessor :message      # 响应的信息 string(50)  对status的英文描述。
    attr_accessor :job_id       # 导入job的id，可以用这个job_id查询这个job后续的导入情况调用job/listimportdata接口详情见下  string  必须
  end
end

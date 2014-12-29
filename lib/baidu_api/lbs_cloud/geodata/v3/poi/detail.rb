# encoding: utf-8
module BaiduApi::LbsCloud::Geodata::V3::Poi::Detail
  class Request
    attr_accessor :status       # 状态码 int32   必须。0代表成功，其它取值含义另行说明
    attr_accessor :message      # 响应的信息   string(50)  对status的英文描述。
    attr_accessor :poi          # poi结果列表 dict    
    attr_accessor :id           # 数据id    string  当不存在唯一索引字段时必选，存在唯一索引字段时可选
    attr_accessor :geotable_id  # geotable_id string  必选
    # TODO: 自定义唯一索引key  Value   自定义类型   可选，若自定义索引字段和id共存时，将以id为准
    attr_accessor :title        # poi名称   string  必选
    attr_accessor :location     # 坐标  float   格式为：[经度,纬度]或者[对应的墨卡托投影]
    attr_accessor :create_time  # 用户创建日期  string  
    attr_accessor :address      # 地址  string  
    attr_accessor :city         # 城市  string  
    attr_accessor :province     # 所在的省份   string  
    attr_accessor :district     # 所在区域    string  
    attr_accessor :custom_columns # 用户在column定义的key/value对  用户自定义的类别  
  end

  class Response
    attr_accessor :id           # poi主键   uint64  必须
    attr_accessor :geotable_id  # 表主键 int32   必须
    attr_accessor :ak           # 用户的访问权限key  string(50)  必选。
    attr_accessor :sn           # 用户的权限签名 string(50)  可选。
  end
end

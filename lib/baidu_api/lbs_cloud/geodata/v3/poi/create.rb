# encoding: utf-8
module BaiduApi::LbsCloud::Geodata::V3::Poi::Create
  class Request
    attr_accessor :status # 状态码 int32 必须。0代表成功，其它取值含义另行说明
    attr_accessor :message # 响应的信息 string(50)  对status的英文描述。
    attr_accessor :id # 新增的数据的id  string  必选
  end

  class Response
    attr_accessor :title          # poi名称 string(256) 可选 。
    attr_accessor :address        # 地址  string(256) 可选 。
    attr_accessor :tags           # tags  string(256) 可选 。
    attr_accessor :latitude       # 用户上传的纬度 double  必选 。
    attr_accessor :longitude      # 用户上传的经度 double  必选 。
    attr_accessor :coord_type     # 用户上传的坐标的类型  uint32  
                                  # 1：GPS经纬度坐标 2：国测局加密经纬度坐标 3：百度加密经纬度坐标 4：百度加密墨卡托坐标 必选
    attr_accessor :geotable_id    # 记录关联的geotable的标识  string(50)  必选，加密后的id 。
    attr_accessor :ak             # 用户的访问权限key  string(50)  必选。
    attr_accessor :sn             # 用户的权限签名 string(50)  可选。
    attr_accessor :custom_columns # 用户在column定义的key/value对  开发者自定义的类型（string、int、double）
                                  # 唯一索引字段需要保证唯一，否则会创建失败
  end
end

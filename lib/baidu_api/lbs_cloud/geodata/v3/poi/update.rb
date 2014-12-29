# encoding: utf-8
module BaiduApi::LbsCloud::Geodata::V3::Poi::Update
  class Request
    attr_accessor :id             # poi的id  uint64  当不存在唯一索引字段时必须，存在唯一索引字段可选
    # TODO: 自定义唯一索引key  Value   用户自定义类型 可选，若自定义索引字段和id共存时，将以id为准，且自定义索引key将被新的value
    attr_accessor :title          # poi名称   string(256) 
    attr_accessor :address        # 地址      
    attr_accessor :tags           # tags        
    attr_accessor :latitude       # 用户上传的纬度 double  
    attr_accessor :longitude      # 用户上传的经度 double  
    attr_accessor :coord_type     # 用户上传的坐标的类型  uint32
                                  # 1．GPS经纬度坐标 2．测局加密经纬度坐标 3．百度加密经纬度坐标 4．百度加密墨卡托坐标 必选
    attr_accessor :geotable_id    # 记录关联的geotable的标识    string(50)  必选，加密后的id
    attr_accessor :ak             # 用户的访问权限key  string(50)  必选。
    attr_accessor :sn             # 用户的权限签名 string(50)  可选。
    attr_accessor :custom_columns # 用户在column定义的key/value对  用户自定义的的列类别  
  end

  class Response
    attr_accessor :status         # 状态码 int32 必须。0代表成功，其它取值含义另行说明
    attr_accessor :message        # 响应的信息 string(50)  对status的英文描述。
  end
end

# encoding: utf-8
module BaiduApi::LbsCloud::Geodata::V3::Poi::Delete
  class Request
    attr_accessor :id               # 被删除的id  uint64  如果传了这个参数，此其它的删除条件会被忽略，此时此操作不是批量请求。只会最多删除一个poi
    # TODO 自定义唯一索引key  Value 用户自定义类型 可选，若自定义索引字段和id共存时，将以id为准，且自定义索引key将被新的value
    attr_accessor :ids              # id列表  以,分隔的id 最多1000个id,如果有这个条件,其它条件将被忽略.
    attr_accessor :indeies          # 用户在column定义的key/value对    column需要设置了is_index_field=1。对于string，是两端匹配。对于int或者double，则是范围查找，传递的格式为：最小值,最大值。当无最小值或者最大值时，用-代替，同时，此字段最大长度不超过50，最小值与最大值都是整数.
    attr_accessor :title            # 名称  string(256) 可选
    attr_accessor :tags             # 标签  string(256) 可选
    attr_accessor :bounds           # 查询的矩形区域 string(100) 格式x1,y1;x2,y2分别代表矩形的左上角和右下角
    attr_accessor :geotable_id      # geotable_id string(50)  必选
    attr_accessor :ak               # 用户的访问权限key  string(50)  必选。
    attr_accessor :sn               # 用户的权限签名 string(50)  可选。
    attr_accessor :custom_columns   # 用户在column定义的key/value对    
    attr_accessor :is_total_del     # 标记为批量删除 int32 如果是批量删除，则需要传这个参数，值为1；如果不是批量删除，则不用传这个参数
  end

  class Response
    attr_accessor :status           # 状态码 int32 必须。0代表成功，其它取值含义另行说明
    attr_accessor :message          # 响应的信息 string(50)  对status的英文描述。
    attr_accessor :id               # job id  string
  end
end

# encoding: utf-8
module BaiduApi::LbsCloud::Geodata::V3::Poi::List
  class Request
    attr_accessor :status         # 状态码 int32 必须。0代表成功，其它取值含义另行说明
    attr_accessor :message        # 响应的信息 string(50)  对status的英文描述。
    attr_accessor :size           # 返回数据条数  uint32  必须
    attr_accessor :total          # 全部的数据条数 uint32  必须，最多返回2000个结果。如果想更多的结果，需要变更查询条件。
    attr_accessor :pois           # poi结果列表 array 
    attr_accessor :id             # 数据id  string  必选
    attr_accessor :geotable_id    # geotable_id string  必选
    attr_accessor :title          # poi名称 string  必选
    attr_accessor :location       # 坐标  float 格式为：[经度,纬度]或者[对应的墨卡托投影]
    attr_accessor :address        # 地址  string  
    attr_accessor :tags           # 标签  string  
    attr_accessor :create_time    # 用户创建日期  string  
    attr_accessor :modify_time    # 用户修改时间  string  
    attr_accessor :province       # 所在的省份 string  
    attr_accessor :district       # 所在的区  string  
    attr_accessor :custom_columns # 用户在column定义的key/value对  用户自定义的类类别 
  end

  class Response
    # 用户在column定义的key/value对, column需要设置了is_index_field=1。对于string，
    # 是两端匹配。对于int或者double，则是范围查找，传递的格式为最小值,最大值。当无最小值
    # 或者最大值时，用-代替，同时，此字段最大长度不超过50，最小值与最大值都是整数.
    # 例：如加入一个命名为color数据类型为string的column，在检索是可设置为“color=red”的形式来检索color字段为red的POI
    attr_accessor :custom_columns 
    attr_accessor :title        # 记录（数据）名称    string(256) 可选 。
    attr_accessor :tags         # 记录的标签（用于检索筛选）   string(256) 可选 。
    attr_accessor :bounds       # 查询的矩形区域 string(100) 格式x1,y1;x2,y2分别代表矩形的左上角和右下角，可选
    attr_accessor :geotable_id  # geotable_id string(50)  必选 。
    attr_accessor :page_index   # 分页索引    uint32  默认为0，最大为9
    attr_accessor :page_size    # 分页数目    uint32  默认为10，上限为200
    attr_accessor :ak           # 用户的访问权限key  string(50)  必选。
    attr_accessor :sn           # 用户的权限签名 string(50)  可选。
  end
end

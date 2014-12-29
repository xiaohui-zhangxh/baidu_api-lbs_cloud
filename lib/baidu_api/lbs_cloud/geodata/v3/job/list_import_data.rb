# encoding: utf-8
module BaiduApi::LbsCloud::Geodata::V3::Job::ListImportData
  class Request
    attr_accessor :geotable_id  # 导入的geotable的标识  uint32  必须
    attr_accessor :job_id       # 导入接口返回的job_id string（50）  必须
    attr_accessor :status       # Poi导入的状态  uint32  默认为0 全部 1失败 2成功
    attr_accessor :page_index   # 分页索引  uint32  默认为0
    attr_accessor :page_size    # 分页数目  uint32  默认为10，上限为100
    attr_accessor :ak           # 用户的访问权限key  string(50)  必选
    attr_accessor :sn           # 用户的权限签名 string(50)  可选。
    attr_accessor :timestamp    # 时间戳 uint32
  end

  class Response
    attr_accessor :status           # 状态码 int32 必须。0代表成功，其它取值含义另行说明
    attr_accessor :message          # 响应的信息 string(50)  对status的英文描述。
    attr_accessor :total            # 导入poi总数目  int32 必须
    attr_accessor :size             # 当前返回个数  int32 必须
    attr_accessor :process_status   # 导入进度状态  int32 0进行中 1完成
    attr_accessor :process_total    # 导入总数  int32 
    attr_accessor :process_failed   # 导入失败总数  int32 
    attr_accessor :process_success  # 导入成功总数    
    attr_accessor :datas            # Array[ poi=>array(),//导入的poi信息 msg=>导入状态信息 ]  Array 
    attr_accessor :Header           # 导入的header信息 Array 
    attr_accessor :time             # 导入总时间单位s  int32 
  end# 
end

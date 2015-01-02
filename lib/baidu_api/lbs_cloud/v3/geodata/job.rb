module BaiduApi::LbsCloud::V3::Geodata
  class Job

    include BaiduApi::LbsCloud::V3::RequestBase
    self.module_name = 'geodata'
    self.controller  = 'job'

    def listimportdata(data)
      request('listimportdata', data, :post)
    end

    def list(data = {})
      request('list', data)
    end

    def detail(data)
      request('detail', data, :post)
    end

  end
end

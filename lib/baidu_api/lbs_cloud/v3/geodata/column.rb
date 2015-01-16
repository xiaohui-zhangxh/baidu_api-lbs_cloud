module BaiduApi::LbsCloud::V3::Geodata
  class Column

    include BaiduApi::LbsCloud::V3::RequestBase
    self.module_name = 'geodata'
    self.controller  = 'column'

    add_raise_methods :create, :list, :detail, :update, :delete
  
    def create(data)
      request('create', data, :post)
    end

    def list(data = {})
      request('list', data)
    end

    def detail(data)
      request('detail', data)
    end

    def update(data)
      request('update', data, :post)
    end

    def delete(data)
      request('delete', data, :post)
    end
  end
end



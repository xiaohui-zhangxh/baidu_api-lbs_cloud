class BaiduApi::LbsCloud::V3::Geosearch

  def self.setup(params)
    ak = params.fetch(:ak) { fail ':ak is required.' }
    sk = params.fetch(:sk, nil)
    @instance = new(ak, sk)
  end

  def self.instance
    @instance || fail('Has to setup Geosearch before using')
  end

  include BaiduApi::LbsCloud::V3::RequestBase

  self.module_name = 'geosearch'

  def nearby(data)
    request('nearby', data)
  end

  def local(data)
    request('local', data)
  end

  def bound(data)
    request('bound', data)
  end

  def detail(uid, data)
    request("detail/#{uid}", data)
  end

end

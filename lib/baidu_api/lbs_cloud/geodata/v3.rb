module BaiduApi::LbsCloud::Geodata
  module V3

  end
end

%w(poi job).each do |mod|
  require File.expand_path("../v3/#{mod}", __FILE__)
end

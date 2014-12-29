module BaiduApi::LbsCloud::Geodata::V3
  module Poi

  end
end

%w(create delete detail list update upload).each do |action|
  require File.expand_path("../poi/#{action}", __FILE__)
end

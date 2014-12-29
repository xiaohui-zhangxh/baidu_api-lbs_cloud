module BaiduApi::LbsCloud::Geodata::V3
  module Job

  end
end

%w(detail list list_import_data).each do |action|
  require File.expand_path("../job/#{action}", __FILE__)
end

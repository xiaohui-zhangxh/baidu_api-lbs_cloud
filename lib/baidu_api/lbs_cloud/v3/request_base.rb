require 'erb'
require 'uri'
require 'digest/md5'
require 'httparty'

module BaiduApi::LbsCloud::V3::RequestBase

  def self.included(base)
    base.send(:include, HTTParty)
    base.send(:extend, ClassMethods)

    base.instance_eval do
      base_uri "http://api.map.baidu.com/"
      format :json
    end
  end

  module ClassMethods

    attr_writer :module_name, :controller

    def module_name
      fail 'module_name has to be defined' if @module_name.nil?
      @module_name
    end

    def controller
      @controller
    end

  end

  attr_accessor :ak, :sk

  def initialize(ak, sk = nil)
    @ak, @sk = ak, sk
  end

  protected

  def request(action, data, method = :get)
    uri       = build_uri(action)
    query_str = build_query(uri, data)
    if method == :post
      self.class.post(uri, body: query_str)
    else
      self.class.get(uri, query: query_str)
    end
  end

  def build_uri(action)
    "/#{self.class.module_name}/v3/#{self.class.controller + '/' if self.class.controller}#{action}"
  end

  def build_query(uri, data)
    data = data.merge(ak: ak)
    query_str = data.sort.map do |key, value|
      "#{key}=#{URI.encode(value.to_s, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))}"
    end.join('&')
    return query_str if sk.nil?
    sn = Digest::MD5.hexdigest(ERB::Util.url_encode("#{uri}?#{query_str}#{sk}"))
    "#{query_str}&sn=#{sn}"
  end
end

module BaiduApi::LbsCloud::Exceptions
  class Failed < StandardError
    attr_reader :raw
    def initialize(raw)
      @raw = raw
      super(raw['message'])
    end
  end
end

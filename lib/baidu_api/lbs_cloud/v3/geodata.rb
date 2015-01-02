module BaiduApi::LbsCloud::V3::Geodata

  class Basement
    attr_reader :ak, :sk, :geotable, :column, :poi, :job

    def initialize(ak, sk = nil)
      @ak, @sk = ak, sk
      @geotable  = Geotable.new(ak, sk)
      @column    = Column.new(ak, sk)
      @poi       = Poi.new(ak, sk)
      @job       = Job.new(ak, sk)
    end

  end

  def self.setup(params)
    ak = params.fetch(:ak) { fail ':ak is required.' }
    sk = params.fetch(:sk, nil)
    @basement = Basement.new(ak, sk)
  end

  def self.instance
    @basement || fail('Has to setup Geodata before using')
  end

  def self.geotable
    instance && @basement.geotable
  end

  def self.column
    instance && @basement.column
  end

  def self.poi
    instance && @basement.poi
  end

  def self.job
    instance && @basement.job
  end

end

require File.expand_path('../geodata/geotable', __FILE__)
require File.expand_path('../geodata/column', __FILE__)
require File.expand_path('../geodata/poi', __FILE__)
require File.expand_path('../geodata/job', __FILE__)
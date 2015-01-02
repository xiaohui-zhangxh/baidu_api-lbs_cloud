# BaiduApi::LbsCloud

A Ruby client to call [Baidu LBS Cloud API](http://developer.baidu.com/map/index.php?title=lbscloud)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'baidu_api-lbs_cloud'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baidu_api-lbs_cloud

## Usage

```ruby
require 'baidu_api/lbs_cloud'

# Call Geodata APIs

# :sk is unnecessary if you are not authenticating with SN
BaiduApi::LbsCloud::V3::Geodata.setup ak: 'xxxx', sk: 'xxxxx'

# get geodata singleton instance
geodata = BaiduApi::LbsCloud::V3::Geodata.instance

# list existing geotables
geodata.geotable.list()
=> {"status"=>0,
 "geotables"=>
  [{"name"=>"5656", "geotype"=>1, "is_published"=>1, "create_time"=>1420180426, "modify_time"=>1420180426, "id"=>90286},
   {"create_time"=>1419816767, "geotype"=>1, "is_published"=>1, "modify_time"=>1420180449, "name"=>"gogo", "id"=>89998}],
 "size"=>2,
 "message"=>"成功"}

# create geotable
geodata.geotable.create(name: 'mytest', geotype: 3, is_published: 0)
=> {"status"=>0, "id"=>90288, "message"=>"成功"}

# Call Geosearch APIs

BaiduApi::LbsCloud::V3::Geosearch.setup ak: 'xxx', sk: 'xxx'

geosearch = BaiduApi::LbsCloud::V3::Geosearch.instance

geosearch.local(geotable_id: 89998)
=> {"status"=>0,
 "total"=>2,
 "size"=>2,
 "contents"=>
  [{"title"=>"qqq",
    "location"=>[116.401147, 39.899501],
    "city"=>"北京市",
    "create_time"=>1419816873,
    "geotable_id"=>89998,
    "address"=>"北京市西城区煤市街146号",
    "province"=>"北京市",
    "district"=>"西城区",
    "uid"=>585565808,
    "coord_type"=>3,
    "type"=>0,
    "distance"=>0,
    "weight"=>0},
   {"title"=>"oo",
    "location"=>[116.407682, 39.902137],
    "city"=>"北京市",
    "create_time"=>1419817076,
    "geotable_id"=>89998,
    "address"=>"北京市东城区得丰西巷25号",
    "province"=>"北京市",
    "district"=>"东城区",
    "icon_style_id"=>"sid1",
    "uid"=>585567281,
    "coord_type"=>3,
    "type"=>0,
    "distance"=>0,
    "weight"=>0}]}

```


## Contributing

1. Fork it ( https://github.com/xiaohui-zhangxh/baidu_api-lbs_cloud/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

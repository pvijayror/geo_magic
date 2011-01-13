require 'spec_helper'
require 'geo_magic'
require 'geo_magic/remote'

describe "GeoMagic Remote" do
  it "should get the remote IP address" do
    ip = GeoMagic::Remote.my_ip    
    puts "ip: #{ip.inspect}"    
  end

  it "should get other location" do
    location = GeoMagic::Remote.location_of '74.200.247.59'
    puts "location: #{location['city']}"    
  end

  it "should get my location" do
    location = GeoMagic::Remote.my_location
    puts location
    puts "location: #{location['city']}"    
  end

end

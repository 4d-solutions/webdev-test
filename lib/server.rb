#!/usr/bin/env ruby

require "sinatra"
require "json"

# Options
set :public_folder, "public"

set :bind, "0.0.0.0"
enable :sessions
set :port, 5000
set :session_secret, "A56DJF6589NHSX7SFBG85478"

# Configure the initial application
configure do

    puts "Startup at: #{Time.now()}"
end

before do
    puts "Begin"
end

##################################################
# ROUTES
##################################################

# 200 response codes
get "/products" do  

    content_type :html
    return "<b>products</b>"
end

get "/contacts" do  

    content_type :html
    return "<i>contacts</i>"
end

get "/accounts" do  

    content_type :html
    return "<i>accounts</i>"
end

get "/orders" do  

    status 404

    content_type :html
    return "<i>orders</i>"
end

get "/payments" do  

    status 403

    content_type :html
    return "<i>payments</i>"
end

get "/inventory" do  

    sleep 10

    content_type :html
    return "<i>inventory</i>"
end
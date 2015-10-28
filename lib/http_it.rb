#!/usr/bin/env ruby
require 'optparse'
require 'webrick'

options = { :bind => '0.0.0.0', :port => 8888 }

OptionParser.new do|opts|
    opts.banner = "Usage: http_it [options]. You can also invoke http_it by its alias: hi"

    opts.on('-p', '--port number', 'Specify your own port (default is 8888)') do |number|
        options[:port] = number.to_i
    end

    opts.on('-b', '--bind address', 'Specify a bind address (default is 0.0.0.0)') do |address|
    	options[:bind] = address
    end

    opts.on('-h', '--help', 'Displays help') do
        puts "\n#{opts}"

        exit
    end

end.parse!


server = WEBrick::HTTPServer.new :Port => options[:port], :DocumentRoot => './', :BindAddress => options[:bind]
trap('INT') { server.stop }
server.start
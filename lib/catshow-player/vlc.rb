=begin
  #!/usr/bin/env ruby

  require 'rubygems'
  require 'pp'
  require 'cocaine'

  cvlc_path="/Applications/VLC.app/Contents/MacOS/VLC"
  vlc_path="/Applications/VLC.app"

  video_path=ARGV[0]

  # direct to VLC with no options
  #cmd = Cocaine::CommandLine.new(cvlc_path, ":video", :video => video_path)

  # using the `open` command in OSX. brings video to front and stuff. works well, with options, not so much.
  #cmd = Cocaine::CommandLine.new("open", "-a VLC :video", :video => video_path)

  # with pid, daemon mode and rc extraint.
  #cmd = Cocaine::CommandLine.new("open", "-a :vlc :video --args --pidfile vlc.pid --extraint rc --daemon", :video => video_path, :vlc => vlc_path)

  # no pid or daemon mode. with rc extraint and port 3456
  cmd = Cocaine::CommandLine.new("open", "-a :vlc :video --args --extraint rc --rc-host 0.0.0.0:3456", :video => video_path, :vlc => vlc_path)


  puts cmd.command

  cmd.run

  puts "sleeping"
  sleep 5

  puts "Killing..."
=end
require 'cocaine'

module Catshow
  module Player
    
    class VLC
      @@vlc_path = "/Applications/VLC.app"
      
      class << self
        
        def play(video_path)
          cmd = Cocaine::CommandLine.new("open", "-a :vlc :video --args --extraint rc --rc-host 0.0.0.0:3456", :video => video_path, :vlc => @@vlc_path)
          
          cmd.run
        end
        
      end
      
    end
    
  end
end
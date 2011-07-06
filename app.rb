# -*- coding: utf-8 -*-

class Zakuro
  def timeline
    Twitter.public_timeline
  end
end

helpers do
  def convert_hex(str)
    an = []
    str.split(//).each do |s|
      an << format("%x",s.unpack("U*")[0])
    end
    an.join("").scan(/.../)
  end
end

get '/' do
  @tl = Zakuro.new.timeline
  haml :index
end

get '/style.css' do
  sass :style
end
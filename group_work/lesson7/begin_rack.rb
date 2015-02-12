require 'begin_rack'
=begin
class MyApp
	def call(env)
		[200,{},[env.to_s] ]
#"Content-Disposition"=>"all"
	end
end


Rack::Server.start :app => MyApp.new 
#Rack::Server.start :app => lambda {|env| [200, {}, ['Some text']] } 
#Rack::Handler::WEBrick.run MyApp.new 
=end
class MyApp
  def call(env)
    q = env['QUERY_STRING']
    name = q.split('=').last
    if name
      [200, {}, ["Hello #{name}"]]
    else
      [200, {"Content-Type" => "text/html"}, ['What is you name?<form><input name = "name"> <input type="submit"></form>']]
    end
  end
end

Rack::Server.start :app => MyApp.new


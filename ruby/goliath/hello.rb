require 'goliath'
class HelloGoliath < Goliath::API
  def response (env)
    [200, {}, "Hello Goliath!"]
  end
end
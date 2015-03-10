require "rack_injection/version"

# Yes, this is really all it does...
module RackInjection
  def initialize(app, opts={})
    @app = app
    @injections = opts
  end

  def call(env)
    @injections.each { |k,v| env[k] = v }
    @app.call(env)
  end
end

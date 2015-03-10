# Yes, this is really all it does...
class RackInjection
  VERSION = "0.2.0"

  def initialize(app, opts={})
    @app = app
    @injections = opts
  end

  def call(env)
    @injections.each { |k,v| env[k] = v }
    @app.call(env)
  end
end

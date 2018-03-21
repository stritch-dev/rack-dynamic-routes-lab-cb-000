class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    path = req.path.match(/items/)
    item = req.path.split('/').last
    STDERR.puts "--------------------- #{item} -----------------------------"
    # if path.include? "item"
      # if @@items.include? path
        # @@items.each  {|item| resp.write "#{item.price}\n"}
        # resp.status = 200
      # else
      # resp.write "Item not found"
      # resp.status = 400
    # else
      # resp.write "Route not found"
      # resp.status = 400
    # end

    resp.finish
  end
end

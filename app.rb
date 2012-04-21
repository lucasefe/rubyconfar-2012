require './shotgun'

Cuba.define do

  on default do
    res.write "hello world"
    res.finish
  end
end

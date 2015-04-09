defmodule IsUp do
  def check(url) do
    response = HTTPotion.head(url)
    HTTPotion.Response.success?(response, :extra)
  end  
end

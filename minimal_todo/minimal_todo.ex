defmodule MinimalTodo do
  def start do
    # ask user for file name
    # open file and read
    # parse the data
    # ask user for command
    # (read todos, add todos, delete todos, load file, save files)
    filename = IO.gets("Name of .csv to load:")
               |> String.trim
    read(filename)
  end

  def read(filename) do
    case File.read(filename) do
      {:ok, body} -> body
      {:error, reason} ->
        IO.puts(~s(Could not open file "#{filename}"))
        IO.inspect(reason)
    end
  end
end

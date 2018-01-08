defmodule SupervisionCheatSheet.AServer do

  use GenServer

  def child_spec(args) do
    IO.inspect args
    %{
      id: args[:arg1],
      start: { __MODULE__, :start_link, [args]},
      restart: :permanent,
      shutdown: 5000,
      type: :worker
     }
  end

  def start_link(args) do
    IO.inspect args
    name = args[:arg1]
    GenServer.start_link(__MODULE__, args, [name: name])
  end

end

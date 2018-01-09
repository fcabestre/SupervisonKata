defmodule SupervisionCheatSheet.FirstSupervisor do

  use Supervisor
  alias SupervisionCheatSheet.AServer

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: :first)
  end

  def start_server(args) do
    Supervisor.start_child(:first, AServer.child_spec(args))
  end

  def init(arg) do
    IO.inspect arg
    Supervisor.init([
      {AServer, [arg1: :server11]},
      {AServer, [arg1: :server12]},
      {AServer, [arg1: :server13]}
    ], strategy: :one_for_one)
  end

end

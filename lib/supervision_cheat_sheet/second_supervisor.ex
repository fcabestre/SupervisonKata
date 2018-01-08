defmodule SupervisionCheatSheet.SecondSupervisor do

  use Supervisor
  alias SupervisionCheatSheet.AServer

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: :second)
  end

  def init(arg) do
    IO.inspect arg
    Supervisor.init([
      {AServer, [arg1: :server21]},
      {AServer, [arg1: :server22]},
      {AServer, [arg1: :server23]}
    ], strategy: :one_for_all)
  end

end

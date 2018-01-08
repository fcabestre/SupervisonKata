defmodule SupervisionCheatSheet.ThirdSupervisor do

  use Supervisor
  alias SupervisionCheatSheet.AServer

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: :third)
  end

  def init(arg) do
    IO.inspect arg
    Supervisor.init([
      {AServer, [arg1: :server31]},
      {AServer, [arg1: :server32]},
      {AServer, [arg1: :server33]}
    ], strategy: :rest_for_one)
  end

end

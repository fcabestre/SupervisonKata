defmodule SupervisionCheatSheet.FourthSupervisor do

  use Supervisor
  alias SupervisionCheatSheet.AServer

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: :fourth)
  end

  def start_server(id) do
    Supervisor.start_child(:fourth, [arg1: id])
  end

  def init(arg) do
    IO.inspect arg
    Supervisor.init([AServer], strategy: :simple_one_for_one)
  end

end

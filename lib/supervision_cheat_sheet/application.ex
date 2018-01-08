defmodule SupervisionCheatSheet.Application do
  @moduledoc false

  use Application
  alias SupervisionCheatSheet.FirstSupervisor
  alias SupervisionCheatSheet.SecondSupervisor
  alias SupervisionCheatSheet.ThirdSupervisor

  def start(_type, _args) do

    children = [
      {FirstSupervisor, [arg1: :first]},
      {SecondSupervisor, [arg1: :second]},
      {ThirdSupervisor, [arg1: :third]}
    ]

    opts = [strategy: :one_for_one, name: :root]
    Supervisor.start_link(children, opts)
  end
end

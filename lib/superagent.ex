defmodule Superagent do
  use Application
  def start(_, _) do
    import Supervisor.Spec
    children = [
      worker(Agent, [fn -> %{} end, [name: Foo]])
    ]
    Supervisor.start_link(children, strategy: :one_for_one, name: Superagent.Supervisor)
  end
end

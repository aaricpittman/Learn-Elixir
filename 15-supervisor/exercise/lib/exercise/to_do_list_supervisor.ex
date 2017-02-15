defmodule Exercise.ToDoListSupervisor do
  use Supervisor

  def init([]) do
    children = [
      worker(Exercise.ToDoList, [[]], id: "worker-1")
    ]

    supervise(children, strategy: :one_for_one)
  end

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end
end
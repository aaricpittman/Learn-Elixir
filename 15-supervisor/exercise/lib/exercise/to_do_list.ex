defmodule Exercise.ToDoList do
  use GenServer
  
  def start(list) do
    {:ok, to_do_list} = GenServer.start(__MODULE__, list, name: __MODULE__)
    to_do_list
  end

  def start_link(list) do
    GenServer.start_link(__MODULE__, list, name: __MODULE__)
  end

  def add_item(item) do
    GenServer.cast(__MODULE__, {:add_item, item})
  end

  def remove_item(item) do
    GenServer.cast(__MODULE__, {:remove_item, item})
  end

  def get_list() do
    GenServer.call(__MODULE__, :get_list)
  end

  def handle_cast({:add_item, item}, list) do
    {:noreply, [item|list]}
  end

  def handle_cast({:remove_item, item}, list) do
    {:noreply, List.delete(list, item)}
  end

  def handle_call(:get_list, _, list) do
    {:reply, list, list}
  end
end
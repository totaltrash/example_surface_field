defmodule MyAppWeb.PageLive do
  use MyAppWeb, :surface_view

  alias Surface.Components.Form
  alias MyAppWeb.MyForm

  @impl true
  def render(assigns) do
    ~F"""
    <Form for={:parent}>
      <MyForm />
    </Form>
    """
  end
end

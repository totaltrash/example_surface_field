defmodule MyAppWeb.MyForm do
  use MyAppWeb, :surface_component

  alias Surface.Components.Form

  def render(assigns) do
    ~F"""
    <Form.Inputs for={:inner}>
      <Form.Field name={:some_field}>
        <!-- These components have incorrect names and ids >= 0.5.2 -->
        <Form.Label />
        <Form.TextInput />
        <Form.ErrorTag />
      </Form.Field>
      <!-- This is fine -->
      <Form.TextInput field={:some_input}/>
    </Form.Inputs>
    """
  end
end

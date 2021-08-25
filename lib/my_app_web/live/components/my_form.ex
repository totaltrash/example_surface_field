defmodule MyAppWeb.MyForm do
  use MyAppWeb, :surface_component

  alias Surface.Components.Form

  def render(assigns) do
    ~F"""
    <Context get={Surface.Components.Form, form: form}>
      <Form.Inputs for={:inner}>
        <Form.Field name={:some_field}>
          <Form.Label>
            Broken Name and Id
          </Form.Label>
          <Form.TextInput />
          <Form.ErrorTag />
          <div>
            <p>
              You would expect the name/id of the text input to be:
            </p>
            <p>
              <code>parent[inner][some_field] / parent_inner_some_field</code>
            </p>
            <p>
              With surface 0.5.1 that is the case. But in surface 0.5.2, it looks like Field is maybe using the form set in the <code>Context</code>
              instead of the form set in <code>Inputs</code>, and the name and id are set incorrectly:
            </p>
            <p>
              <code>parent[some_field] / parent_some_field</code>
            </p>
          </div>
        </Form.Field>
        <p>
          When using the TextInput directly without using a Field, the name and id are set correctly
        </p>
        <Form.TextInput field={:some_input}/>
      </Form.Inputs>
    </Context>
    """
  end
end

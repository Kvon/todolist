require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      name: "MyString",
      completed: false,
      color: "MyString"
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "input[name=?]", "todo[name]"

      assert_select "input[name=?]", "todo[completed]"

      assert_select "input[name=?]", "todo[color]"
    end
  end
end

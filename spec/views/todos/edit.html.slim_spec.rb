require 'rails_helper'

RSpec.describe "todos/edit", type: :view do
  before(:each) do
    @todo = assign(:todo, Todo.create!(
      name: "MyString",
      completed: false,
      color: "MyString"
    ))
  end

  it "renders the edit todo form" do
    render

    assert_select "form[action=?][method=?]", todo_path(@todo), "post" do

      assert_select "input[name=?]", "todo[name]"

      assert_select "input[name=?]", "todo[completed]"

      assert_select "input[name=?]", "todo[color]"
    end
  end
end

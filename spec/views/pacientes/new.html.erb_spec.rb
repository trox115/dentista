require 'rails_helper'

RSpec.describe "pacientes/new", type: :view do
  before(:each) do
    assign(:paciente, Paciente.new(
      nome: "MyString",
      morada: "MyString",
      telefone: "MyString",
      nif: "MyString",
      cc: "MyString",
      pem: "MyString",
      obs: "MyString"
    ))
  end

  it "renders new paciente form" do
    render

    assert_select "form[action=?][method=?]", pacientes_path, "post" do

      assert_select "input[name=?]", "paciente[nome]"

      assert_select "input[name=?]", "paciente[morada]"

      assert_select "input[name=?]", "paciente[telefone]"

      assert_select "input[name=?]", "paciente[nif]"

      assert_select "input[name=?]", "paciente[cc]"

      assert_select "input[name=?]", "paciente[pem]"

      assert_select "input[name=?]", "paciente[obs]"
    end
  end
end

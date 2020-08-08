require 'rails_helper'

RSpec.describe "pacientes/index", type: :view do
  before(:each) do
    assign(:pacientes, [
      Paciente.create!(
        nome: "Nome",
        morada: "Morada",
        telefone: "Telefone",
        nif: "Nif",
        cc: "Cc",
        pem: "Pem",
        obs: "Obs"
      ),
      Paciente.create!(
        nome: "Nome",
        morada: "Morada",
        telefone: "Telefone",
        nif: "Nif",
        cc: "Cc",
        pem: "Pem",
        obs: "Obs"
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Morada".to_s, count: 2
    assert_select "tr>td", text: "Telefone".to_s, count: 2
    assert_select "tr>td", text: "Nif".to_s, count: 2
    assert_select "tr>td", text: "Cc".to_s, count: 2
    assert_select "tr>td", text: "Pem".to_s, count: 2
    assert_select "tr>td", text: "Obs".to_s, count: 2
  end
end

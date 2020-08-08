require 'rails_helper'

RSpec.describe "pacientes/show", type: :view do
  before(:each) do
    @paciente = assign(:paciente, Paciente.create!(
      nome: "Nome",
      morada: "Morada",
      telefone: "Telefone",
      nif: "Nif",
      cc: "Cc",
      pem: "Pem",
      obs: "Obs"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Morada/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Nif/)
    expect(rendered).to match(/Cc/)
    expect(rendered).to match(/Pem/)
    expect(rendered).to match(/Obs/)
  end
end

require 'rails_helper'

RSpec.describe "utensilios/show", type: :view do
  before(:each) do
    @utensilio = assign(:utensilio, Utensilio.create!(
      :nome => "Nome",
      :descricao => "MyText",
      :cpf => "Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Cpf/)
  end
end

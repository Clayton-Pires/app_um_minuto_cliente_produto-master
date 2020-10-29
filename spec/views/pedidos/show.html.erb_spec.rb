require 'rails_helper'

RSpec.describe "pedidos/show", type: :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      :cliente => nil,
      :produto => nil,
      :valor_total => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
  end
end

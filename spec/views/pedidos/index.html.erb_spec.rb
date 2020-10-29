require 'rails_helper'

RSpec.describe "pedidos/index", type: :view do
  before(:each) do
    assign(:pedidos, [
      Pedido.create!(
        :cliente => nil,
        :produto => nil,
        :valor_total => 2.5
      ),
      Pedido.create!(
        :cliente => nil,
        :produto => nil,
        :valor_total => 2.5
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end

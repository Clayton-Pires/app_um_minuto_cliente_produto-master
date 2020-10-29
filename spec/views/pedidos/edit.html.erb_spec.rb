require 'rails_helper'

RSpec.describe "pedidos/edit", type: :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      :cliente => nil,
      :produto => nil,
      :valor_total => 1.5
    ))
  end

  it "renders the edit pedido form" do
    render

    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do

      assert_select "input#pedido_cliente_id[name=?]", "pedido[cliente_id]"

      assert_select "input#pedido_produto_id[name=?]", "pedido[produto_id]"

      assert_select "input#pedido_valor_total[name=?]", "pedido[valor_total]"
    end
  end
end

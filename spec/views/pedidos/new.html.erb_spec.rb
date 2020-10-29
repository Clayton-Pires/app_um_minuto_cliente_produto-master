require 'rails_helper'

RSpec.describe "pedidos/new", type: :view do
  before(:each) do
    assign(:pedido, Pedido.new(
      :cliente => nil,
      :produto => nil,
      :valor_total => 1.5
    ))
  end

  it "renders new pedido form" do
    render

    assert_select "form[action=?][method=?]", pedidos_path, "post" do

      assert_select "input#pedido_cliente_id[name=?]", "pedido[cliente_id]"

      assert_select "input#pedido_produto_id[name=?]", "pedido[produto_id]"

      assert_select "input#pedido_valor_total[name=?]", "pedido[valor_total]"
    end
  end
end

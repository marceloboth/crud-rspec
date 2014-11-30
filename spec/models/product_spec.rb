require 'rails_helper'

describe Product do
  before do
    @product = Product.new(name: "Cadastro Exemplo",
      description: "Descrição do cadastro Exemplo")
  end

  describe "quando o nome não foi informado" do
    before { @product.name = ""}
    it { should_not be_valid }
  end

  describe "quando o nome é muito curto" do
    before { @product.name = "na"}
    it { should_not be_valid }
  end

  describe "quando o nome é muito longo" do
    before { @product.name = "n" * 50}
    it { should_not be_valid }
  end

  describe "quando o nome de produto já está sendo usado" do
    before do
      product_with_same_name      = @product.dup
      product_with_same_name.name = @product.name
      product_with_same_name.save
    end

    it { should_not be_valid }
  end

  describe "quando a descrição não foi informada " do
    before { @product.description = "" }
    it { should_not be_valid }
  end

  describe "quando a descrição é muito curta" do
    before { @product.name = "n" * 15}
    it { should_not be_valid }
  end

  describe "quando a descrição é muito longa" do
    before { @product.name = "n" * 255}
    it { should_not be_valid }
  end
end

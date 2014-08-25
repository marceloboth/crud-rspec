require "rails_helper"

feature "Listando Produtos" do
  it "consigo acessar o link da página" do
    visit root_path
    expect(page).to have_link('Produtos')
  end
end

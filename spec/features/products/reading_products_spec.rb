require "rails_helper"

feature "Listando Produtos" do
  before do
    visit root_path
  end

  scenario "listando todos os registros cadastrados" do
    @products = FactoryGirl.create_list(:product, 25)

    click_link 'Produtos'

    expect(page).to have_content(@products.first.name)
    expect(page).to have_content(@products.last.name)
  end

  scenario "exibindo mensagem de que nao ha dados" do
    click_link 'Produtos'
    expect(page).to have_content('Nenhum registro encontrado!')
  end
end

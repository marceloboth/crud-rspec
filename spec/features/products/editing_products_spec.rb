require 'rails_helper'

feature 'Editando Produtos' do
  let(:product) do
    FactoryGirl.create(:product)
  end

  before do
    visit root_path
    click_link 'Produtos'
  end


  scenario "posso editar um produto" do
    click_link "Editar"
  #   fill_in 'Nome', with: 'Produto 1'
  #   fill_in 'Descrição', with: 'Descrição do produto 1 (um)'
  #   click_button 'Criar produto'

  #   expect(page).to have_content('Produto foi editado.')
  end

  # scenario "com descrição inválida não posso editar um produto" do
  #   fill_in 'Nome', with: 'Meu produto'
  #   fill_in 'Descrição', with: ''
  #   click_button 'Criar produto'

  #   expect(page).to have_content('Descrição é muito curto (mínimo: 15 caracteres)')
  # end
end

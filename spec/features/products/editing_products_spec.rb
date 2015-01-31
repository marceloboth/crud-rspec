require 'rails_helper'

feature 'Editando Produtos' do

  before do
    product = FactoryGirl.create(:product)

    visit root_path
    click_link 'Produtos'
  end


  scenario "posso editar um produto" do
    click_link "Editar"
    fill_in 'Nome', with: 'Produto 1'
    click_button 'Salvar'

    expect(page).to have_content('Produto foi editado.')
  end

  scenario "quando nome em branco não posso editar um produto" do
    click_link "Editar"
    fill_in 'Nome', with: ''
    click_button 'Salvar'

    expect(page).to have_content('Produto não foi alterado, verifique os erros.')
    expect(page).to have_content('Nome é muito curto (mínimo: 5 caracteres)')
  end
end

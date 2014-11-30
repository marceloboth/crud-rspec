require 'rails_helper'

  feature 'Criando Produtos' do
    before do
      visit '/'
      click_link 'Novo Produto'
    end

    scenario "posso criar um produto" do
      fill_in 'Nome', with: 'Produto 1'
      fill_in 'Descrição', with: 'Produto 1 (um)'
      click_button 'Criar produto'

      expect(page).to have_content('Produto foi criado.')
    end

    scenario "com descrição inválida não posso criar um produto" do
      fill_in 'Nome', with: 'Meu produto'
      fill_in 'Descrição', with: ''
      click_button 'Criar produto'

      expect(page).to have_content('Descrição é muito curto (mínimo: 15 caracteres)')
    end
  end

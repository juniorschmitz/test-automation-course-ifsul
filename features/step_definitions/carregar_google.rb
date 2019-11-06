Dado("que esteja na página inicial do Google") do
  @google_page = GooglePage.new
  @google_page.load
end

Então("o formulário de busca deve ser apresentado") do
  expect(@google_page).to have_search_form
end

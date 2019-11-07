Dado("que esteja na página inicial do Google") do
  @google_search_page = GoogleSearchPage.new
  @google_search_page.load
end

Então("o formulário de busca deve ser apresentado") do
  expect(@google_search_page).to have_search_form
end

Quando("buscar por {string}") do |query|
  @google_search_page.search_form.set(query)
  @google_search_page.search_button.click
  @google_result_page = GoogleResultPage.new
end

Então("resultados devem ser apresentados") do
  expect(@google_result_page.text).to include 'Batata'
  expect(@google_result_page.text).to have_content 'Batata'
  expect(@google_result_page.text).to match(/Batata/i)
  expect(@google_result_page.results.first).not_to be nil
  expect(@google_result_page).to have_results
end

Quando("acessar o primeiro resultado") do
  scroll_to(@google_result_page.results.first)
  @google_result_page.results.first.click
  @first_result_page = FirstResultPage.new
end

Então("deve apresentar o texto {string} na página") do |text|
  expect(@first_result_page.current_url).to match(/#{text}/i)
end
class GoogleResultPage < SitePrism::Page
  set_url ''

  element  :search_form, 'input.gLFyf'
  elements :results, '.LC20lb', visible: :visible
end
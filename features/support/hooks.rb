Before do
  puts 'Hakuna matata!'
end

AfterStep do
  screenshot = "log/screenshot#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'hakuna_matata')
end
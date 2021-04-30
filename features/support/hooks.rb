#configura funções, ações antes e depois de rodar o cenário 

require 'selenium-webdriver'
require 'report_builder'
require 'json'
#antes de começar os steps ele vai fazer isso
Before do |scn|
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  page.driver.quit
  Capybara.page.driver.browser.manage.window.maximize
end

ReportBuilder.configure do |config|
  config.json_path = 'data/reports/report.json'
  config.report_path = "data/reports/report-#{$report_time}"
  config.report_types = [:html]
  config.report_title = "Automação - #{$report_title}"
  config.color = "blue"
end

at_exit do
ReportBuilder.build_report
end
#depois que termina o cenário, se o cenário falhar ele tira o scream shot e salva na pasta citada aqui 
After do |scn|
  if scn.failed?
    save_screenshot("data/reports/screenshots/bugs/bug - (#{scn.name}).png")
  end
end

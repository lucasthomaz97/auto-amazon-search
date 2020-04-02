require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

Given("the user acesses {string}") do |address|
    driver.get address
  end
  
  When("i click in the text field typing {string}") do |txt|
    search = driver.find_element(id:"twotabsearchtextbox").send_keys txt
  end

  When("I click in Search") do
    driver.find_element(:class,'nav-input').click()
  end
  
  Then("i'll be redirected for results page and find my book {string}") do |name|
    screenshot = "log/screenshots/Encontrado.png"
    driver.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'print')
  end
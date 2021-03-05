require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the words page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word_name', :with => 'Apple')
    click_on('Add!')
    expect(page).to have_content('Apple')
  end
end

describe('create a word path', {:type => :feature}) do
  it('selects a word and goes to its dynamic word page') do
    visit('/words')
    click_on('Apple')
    expect(page).to have_content('Edit name')
  end
end

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the words page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word_name', :with => 'Cat')
    click_on('Add!')
    expect(page).to have_content('Cat')
  end
end

describe('update a word path', {:type => :feature}) do
  it('selects and updates a word and then goes to the words page') do
    visit('/words')
    click_on('Cat')
    click_on('Edit name')
    fill_in('name', :with => 'Dog')
    click_on('Update')
    expect(page).to have_content('Dog')
  end
end

describe('create a definition path', {:type => :feature}) do
  it("creates a definition and then goes to a word's definitions page") do
    visit('/words')
    click_on('Dog')
    fill_in('meaning', :with => 'a domesticated mammal typically having a long snout and acute sense of smell')
    click_on('Add definition')
    expect(page).to have_content('a domesticated mammal typically having a long snout and acute sense of smell')
  end
end

describe('update a definition path', {:type => :feature}) do
  it("updates a definition and then goes to a word's definitions page") do
    visit('/words')
    click_on('Dog')
    click_on('a domesticated mammal typically having a long snout and acute sense of smell')
    fill_in('definition', :with => 'a person regarded as unpleasant')
    click_on('Update definition')
    expect(page).to have_content('a person regarded as unpleasant')
  end
end

describe('delete a definition path', {:type => :feature}) do
  it("deletes a definition and then goes to a word's definitions page") do
    visit('/words')
    click_on('Dog')
    click_on('a person regarded as unpleasant')
    click_on('Delete definition')
    expect(page).to have_content('no definitions listed')
  end
end

describe('delete a word path', {:type => :feature}) do
  it('deletes a word and then goes to the words page') do
    visit('/words')
    click_on('Dog')
    click_on('Edit name')
    click_on('Delete word')
    expect(page).to have_content('currently no words')
  end
end

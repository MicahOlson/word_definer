require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the words page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word_name', :with => 'Kittens')
    click_on('Add!')
    expect(page).to have_content('Kittens')
  end
end

describe('select a word path', {:type => :feature}) do
  it('selects a word and goes to its dynamic word page') do
    visit('/words')
    click_on('Kittens')
    expect(page).to have_content('Edit name')
  end
end

describe('update a word path', {:type => :feature}) do
  it('updates a word and then goes to the words page') do
    visit('/words')
    click_on('Kittens')
    click_on('Edit name')
    fill_in('name', :with => 'Puppies')
    click_on('Update')
    expect(page).to have_content('Puppies')
  end
end

describe('delete a word path', {:type => :feature}) do
  it('deletes a word and then goes to the words page') do
    visit('/words')
    click_on('Puppies')
    click_on('Edit name')
    click_on('Delete word')
    expect(page).to have_content('currently no words')
  end
end

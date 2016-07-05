require('capybara/rspec')
require('launchy')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('gathers sides of a triangle and returns type of triangle') do
    visit('/')
    fill_in('side_1', :with => '2')
    fill_in('side_2', :with => '4')
    fill_in('side_3', :with => '5')
    click_button('submit')
    expect(page).to have_content('this is a scalene triangle')
  end
end

describe('the triangle path', {:type => :feature}) do
  it('gathers sides of a triangle and returns type of triangle') do
    visit('/')
    fill_in('side_1', :with => '4')
    fill_in('side_2', :with => '4')
    fill_in('side_3', :with => '4')
    click_button('submit')
    expect(page).to have_content('this is an equilateral triangle')
  end
end

describe('the triangle path', {:type => :feature}) do
  it('gathers sides of a triangle and returns type of triangle') do
    visit('/')
    fill_in('side_1', :with => '1')
    fill_in('side_2', :with => '4')
    fill_in('side_3', :with => '9')
    click_button('submit')
    expect(page).to have_content('this is not a triangle')
  end
end

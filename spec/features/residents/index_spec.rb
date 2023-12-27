require 'rails_helper'

RSpec.describe 'Resident Index Page' do
  before :each do
    @r1 = Resident.create!(name: 'Logan', age: '69', occupation: 'street sweeper')
    @r2 = Resident.create!(name: 'Carol', age: '1000', occupation: 'who cares')
  end

  it 'has resident information' do
    visit '/residents'

    expect(page).to have_content('Logan')
    expect(page).to have_content('Carol')
    expect(page).to have_content('69')
    expect(page).to have_content('1000')
    expect(page).to have_content('street sweeper')
    expect(page).to have_content('who cares')
  end

  it 'shows average age of residents' do
    visit '/residents'

    expect(page).to have_content("Average Resident Age: #{Resident.average(:age)}")
  end
end
require 'rails_helper'

RSpec.describe 'Resident Show Page' do
  before :each do
    @r1 = Resident.create!(name: 'Logan', age: '69', occupation: 'street sweeper')
    @r2 = Resident.create!(name: 'Carol', age: '1000', occupation: 'who cares')

    @c1 = Course.create!(name: 'Nerd School')
    @c2 = Course.create!(name: 'Underwater Basket Weaving')

    @rc1 = ResidentCourse.create!(resident: "#{@r1}", course: "#{@c1}")
    @rc2 = ResidentCourse.create!(resident: "#{@r2}", course: "#{@c2}")
  end

  it 'has resident name' do
    visit "/residents/#{@r1.id}"

    expect(page).to have_content('Logan')
    expect(page).to have_content('Nerd School')
    expect(page).to_not have_content('Underwater Basket Weaving')
    expect(page).to_not have_content('Carol')
  end
end
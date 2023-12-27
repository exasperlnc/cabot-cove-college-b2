require 'rails_helper'

RSpec.describe 'Course Show Page' do
  before :each do
    @r1 = Resident.create!(name: 'Logan', age: '69', occupation: 'street sweeper')
    @r2 = Resident.create!(name: 'Carol', age: '1000', occupation: 'who cares')

    @c1 = Course.create!(name: 'Nerd School')
    @c2 = Course.create!(name: 'Underwater Basket Weaving')

    @rc1 = ResidentCourse.create(resident: @r1, course: @c1)
    @rc2 = ResidentCourse.create(resident: @r2, course: @c2)
  end

  it 'has resident name' do
    visit "/courses/"

    expect(page).to have_content('Nerd School')
    expect(page).to_not have_content('Underwater Basket Weaving')
  end
end
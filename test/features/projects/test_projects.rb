# ruby -Itest test/features/projects/view_projects_in_tab.rb

require 'test_helper'

feature 'projects' do

  scenario 'Shows all the published projects' do
    visit projects_path
    page.must_have_content 'Nathaniel Barnes'
    page.must_have_content 'Portfolio Platform'
    page.must_have_content 'Searchable sortable Trakehner horses'
  end

  scenario "Doesn't show unpublished projects" do
    visit projects_path
    page.wont_have_content 'analyst'
  end

  scenario "Doesn't show blog content when viewing project content" do
    visit projects_path
    page.wont_have_content 'post1_title'
  end

end

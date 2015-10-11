# ruby -Itest test/features/projects/view_posts_in_tab.rb

require 'test_helper'

feature 'posts' do

  scenario 'Shows all the published posts' do
    visit blog_path
    page.must_have_content 'Nathaniel Barnes'
    page.must_have_content 'post1_title'
    page.must_have_content 'Ex ea commodo consequat duis autem vel eum iriure dolor'
  end

  scenario "Doesn't show unpublished posts" do
    visit blog_path
    page.wont_have_content 'post5_title'
  end

  scenario "Doesn't show projects content when viewing blog content" do
    visit blog_path
    page.wont_have_content 'Portfolio Platform'
  end

end

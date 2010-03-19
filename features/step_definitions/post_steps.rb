Given /^the following posts:$/ do |posts|
  Post.create!(posts.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) post$/ do |pos|
  visit posts_url
  within("#posts div:nth-child(#{pos.to_i})") do
    click_link "Destroy"
  end
end

Then /^I should see the following posts:$/ do |expected_posts_table|
  expected_posts_table.diff!(tableish('.expandable', '.title, .body'))
end

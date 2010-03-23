Then /^I should see a rating of (\d+) on the (\d+)(?:st|nd|rd|th) post$/ do |rating, pos|
  within("#posts div:nth-child(#{pos.to_i})") do
    page.find(:css, "dl.rating dt").text.strip.should == rating
  end
end

# for reference:

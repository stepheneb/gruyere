# Then /^(?:|I )should see "([^\"]*)"(?: within "([^\"]*)")?$/ do |text, selector|
#   with_scope(selector) do
#     if defined?(Spec::Rails::Matchers)
#       page.should have_content(text)
#     else
#       assert page.has_content?(text)
#     end
#   end
# end

Then /^(?:|I )should see "([^\"]*)" on the screen(?: within "([^\"]*)")?$/ do |text, selector|
  with_scope(selector) do
    dom_node = page.find(:xpath, "//*[contains(text(), '#{text}')]")
    dom_node.should be_visible
  end
end

Then /^(?:|I )should not see "([^\"]*)" on the screen(?: within "([^\"]*)")?$/ do |text, selector|
  with_scope(selector) do
    dom_node = page.find(:xpath, "//*[contains(text(), '#{text}')]")
    dom_node.should_not be_visible
  end
end

When /^I click on "([^\"]*)" of the (\d+)(?:st|nd|rd|th) post$/ do |text,pos|
  within("#posts div:nth-child(#{pos.to_i})") do
    page.find(:xpath, "//*[contains(text(), '#{text}')]").click
  end
end

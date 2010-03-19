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
    debugger
    page.find(:xpath, "//text('#{text}')")
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should see "([^\"]*)" on the screen$/ do |text|
  if defined?(Spec::Rails::Matchers)
    page.find('.expandable .body').visible?
  else
    assert page.find('.expandable .body').visible?
  end
end

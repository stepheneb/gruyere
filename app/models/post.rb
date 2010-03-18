class Post < ActiveRecord::Base
  validates_format_of :title, :with => /simon says/i, :on => :create, :message => "You didn't say simon says! (noah broke the build)"
end

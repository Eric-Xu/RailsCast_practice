# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsCastDemo::Application.initialize!

Time::DATE_FORMATS[:due_date] = "%-m/%-d/%Y at %I:%M %p"
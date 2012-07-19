# Load the rails application
require File.expand_path('../application', __FILE__)
require "will_paginate/array"
require 'will_paginate'
require 'will_paginate/active_record'  # or data_mapper/sequel
# Initialize the rails application
BootstrapDemo::Application.initialize!

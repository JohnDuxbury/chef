# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jadux"
client_key               "#{current_dir}/jadux.pem"
validation_client_name   "jditc-validator"
validation_key           "#{current_dir}/jditc-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/jditc"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor] = "/usr/bin/vim"

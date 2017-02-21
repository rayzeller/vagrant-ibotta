default['mysql_host'] = ENV['MYSQL_HOST'] || '127.0.0.1'
default['mysql_port'] = ENV['MYSQL_PORT'] || '3306'
default['mysql_user'] = ENV['MYSQL_USERNAME'] || 'root'
default['environment'] = 'production' || ENV['RACK_ENV']
default['ruby_version'] = '2.3.1'

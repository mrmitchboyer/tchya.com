require_relative './config/environment'
use Rack::Static, :urls => ['/bootstrap', '/css', '/fonts', '/images', '/js', '/php'], :root => 'public'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
run ApplicationController
require_relative './config/environment'
use Rack::Static, :urls => ['/bootstrap', '/css', '/fonts', '/images', '/js', '/php'], :root => 'public'

run ApplicationController
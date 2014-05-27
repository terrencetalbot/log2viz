require 'rack/ssl'
require 'heroku/bouncer'
require './app'

use Rack::SSL
use Heroku::Bouncer, expose_token: true
run App
# OmniAuth afterclassroom

This gem contains the afterclassroom strategy for OmniAuth.

afterclassroom uses the OAuth 1.0a flow, you can read about it here: https://dev.afterclassroom.com/docs/auth/oauth

## How To Use It

Usage is as per any other OmniAuth 1.0 strategy. So let's say you're using Rails, you need to add the strategy to your `Gemfile`:

    gem 'omniauth-afterclassroom'

You can pull them in directly from github e.g.:

    gem 'omniauth-afterclassroom', :git => 'https://github.com/arunagw/omniauth-afterclassroom.git'

Once these are in, you need to add the following to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :afterclassroom, "consumer_key", "consumer_secret" 
    end

You will obviously have to put in your key and secret, which you get when you register your app with afterclassroom (they call them API Key and Secret Key). 

afterclassroom also optionally supports specifying a username when authenticating. This is handy when your application supports multiple afterclassroom accounts since you can prompt the user to login to the correct account (and not defaulting to the current login). 

To use this, just add a querystring for screen_name. 

	/auth/afterclassroom?screen_name=scottw

You can also specify ```force_login``` without specifying the screen_name to prompt the user to choose the afterclassroom account they wish to use.

    /auth/afterclassroom?force_login=true

afterclassroom also optionally supports specifying a x_auth_access_type when authenticating. This is handy when you need to specify special permission in some cases.

To use this, just add a querystring for x_auth_access_type. 

	/auth/afterclassroom?x_auth_access_type=read	


Now just follow the README at: https://github.com/intridea/omniauth

## Watch the RailsCast

Ryan Bates has put together an excellent RailsCast on OmniAuth:

[![RailsCast #241](https://www.evernote.com/shard/s35/sh/479f2503-aefa-4542-a7b4-8f84fd22eafc/0571f5a3795a0be3d0b0814312a8d5b7/res/49b5478a-657c-4aff-ae58-dae08b9a46d5/Screen_Shot_2012-07-15_at_12.41.15_PM-20120715-125424.jpg.jpg "RailsCast #241 - Simple OmniAuth (revised)")](http://railscasts.com/episodes/241-simple-omniauth-revised)


## Supported Rubies

OmniAuth afterclassroom is tested under 1.8.7, 1.9.2, 1.9.3 and Ruby Enterprise Edition.

[![CI Build
Status](https://secure.travis-ci.org/arunagw/omniauth-afterclassroom.png)](http://travis-ci.org/arunagw/omniauth-afterclassroom)

## Note on Patches/Pull Requests

- Fork the project.
- Make your feature addition or bug fix.
- Add tests for it. This is important so I don’t break it in a future version unintentionally.
- Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
- Send me a pull request. Bonus points for topic branches.

## License

Copyright (c) 2011 by Arun Agrawal

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

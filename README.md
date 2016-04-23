# Hldslogs

Hldslogs gem is Counter-Strike 1.6 Server logs recever, the gem use UDP Socket to receve the
data or the log files from Counter-Strike 1.6 Server.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hldslogs'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install hldslogs
```

## Usage

To use this game you have first to installet the gem.
Use this example, create new ruby file logs.rb and put this in it:

```ruby
require 'hldslogs'

@conn = LogsHlds.new("192.168.0.1", 27015, 28015)

until @conn.socket == nil do
  logs = @conn.receve_data
  puts logs
end
```
For 0.2.2 version or below version make logs.rb file like this:

```ruby
require 'hldslogs'

@conn = HldsSocket.new("192.168.0.1", 27015, 28015)

until @conn.socket == nil do
  logs = @conn.receve_data
  puts logs
end
```

In your Counter-Strike 1.6 Server console add the ip and bind port from the socket with this command:

```
logaddress_add 192.168.0.1 28015
```

After this run the logs.rb file in terminal, make sure that your terminal directory is where the file is located
and after this run ruby logs.rb. If everything go well you should get the server logs in terminal.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


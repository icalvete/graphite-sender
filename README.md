# graphite-sender

Simple gem to send measures to graphite.

## TODO

Send using a amqp server as intermediate.

## Example

install (from http://rubygems.org/)

```
$ gem install graphite-sender --no-rdoc --no-ri
```

use

```
#!/usr/bin/ruby

require 'graphite_sender'

now = Time.now.to_i

$gs = Graphite_sender.new('graphite.smartpurposes.net', 2005, 'udp')
$gs.send_measure('my.stats.hit', 123, now)

```

##Authors:

Israel Calvete Talavera <icalvete@gmail.com>

# kemal-playground

A sandbox app to play around with Kemal. Two autocomplete fields have been implemented - one that uses AJAX and another that uses WebSockets.

## Installation

1. [Install Crystal](https://crystal-lang.org/docs/installation/)
2. Run the following commands
```bash
$ shards install
$ crystal build --release src/kemal-playground.cr # Omit the release flag for faster non-optimized builds
$ ./kemal-playground
[development] Kemal is ready to lead at http://0.0.0.0:3000
```

## Usage

1. Visit `localhost:3000`
2. Be impressed with Kemal's sub 100µs response times

## Development

No further development is planned beyond adhoc features being added. Feel free to fork if you want a starting point with Kemal.

## Contributing

1. Fork it ( https://github.com/marksiemers/kemal-playground/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- Mark Siemers ([marksiemers](https://github.com/marksiemers)) - creator, maintainer

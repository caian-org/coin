# COIN: CLI to currency conversion

`coin` is a command-line application that performs currency conversion via the
[Fixer API][fixer]. It is currently able to convert monetary values up to 168
different currencies.

<p align="center"

![example](coin.png)
></p>

<p align="center"

[![pd](https://forthebadge.com/images/badges/cc-0.svg)][ccz] [![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)][ftb] [![didnt-ask](https://forthebadge.com/images/badges/you-didnt-ask-for-this.svg)][ftb]
></p>

[ccz]: http://creativecommons.org/publicdomain/zero/1.0
[ftb]: https://forthebadge.com

[fixer]: https://fixer.io

---

## Table of Contents

- [Usage](#usage)
    - [Fixer API token](#fixer-api-token)
- [Installation](#installation)
    - [Pre-built](#pre-built)
    - [From source](#from-source)
    - [Running in Docker](#running-in-docker)
- [Contributing](#contributing)
- [License](#license)


## Usage

```
user@host:~$ coin -h

Usage: coin [-h] [-v] amount origin <target, ...>

Positional arguments:
    amount             The amount of money to be converted
    origin             The origin currency used as base for conversion
    target             Each of the target currencies for conversion

Optional arguments:
    -h, --help         Show this help message and exit
    -v, --version      Show the program version and exit

Examples:
    $ coin 1 usd brl
    # => converts 1 us dollar to brazilian real

    $ coin 2.5 eur rub jpy
    # => converts 2.5 euro to russian rouble and japanese yen

This project is dedicated to the Public Domain (CC0).

Project page: <github.com/caian-org/coin>
```

### Fixer API token

## Installation

### Pre-built

### From source

### Running in Docker

- __Pull from DockerHub:__

```sh
$ docker pull caian/coin
```

- __Run the container:__

```sh
$ docker run -e FIXER_API_TOKEN="my_token" caian/coin 1 usd jpy
```

Alternatively, you can build the Docker image yourself:

```sh
docker build -t coin .
```


## Contributing

## License

To the extent possible under law, [Caian Rais Ertl](https://github.com/caiertl)
has waived all copyright and related or neighboring rights to this work.

Coin depends on [`optarg`](https://github.com/mosop/optarg). `optarg` is
licensed under the MIT license.

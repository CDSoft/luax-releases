# LuaX release builder

`release` produces binary releases of:

- [LuaX](https://github.com/cdsoft/luax/releases/latest)
- [bang](https://github.com/cdsoft/bang/releases/latest)
- [ypp](https://github.com/cdsoft/ypp/releases/latest)
- [panda](https://github.com/CDSoft/panda/releases/latest)
- [lsvg](https://github.com/CDSoft/lsvg/releases/latest)
- [icd](https://github.com/CDSoft/icd/releases/latest)
- [tagref](https://github.com/CDSoft/tagref/releases/latest)
- [calculadoira](https://github.com/CDSoft/calculadoira/releases/latest)

as well as a complete release:

- [LuaX & friends](https://github.com/CDSoft/luax-releases/releases/latest)

# Pricing

LuaX is a free and open source software.
But it has a cost. It takes time to develop, maintain and support.

To help LuaX remain free, open source and supported,
users are cordially invited to contribute financially to its development.

| LuaX price         | Europe        | United States | Rest of the World |
| ------------------ | ------------- | ------------- | ----------------- |
| Personal usage     | Free donation | Free donation | Free donation     |
| Academic usage     | €10 or more   | $20 or more   | $15 or more       |
| Professional usage | €20 or more   | $40 or more   | $25 or more       |

These prices are per month and per tools (see [`PRICING`](PRICING)).

<a href='https://liberapay.com/LuaX/donate' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://liberapay.com/assets/widgets/donate.svg' border='0' alt='Donate using Liberapay' /></a>
<a href='https://ko-fi.com/K3K11CD108' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi6.png?v=6' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>
<a href='https://github.com/sponsors/CDSoft' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=%23fe8e86' border='0' alt='Donate using Github' /></a>

Feel free to promote LuaX!

# Download

[`get-luax.sh`](get-luax.sh) detects your platform (Linux and MacOS only) and installs the appropriate LuaX archive.

The environment variable `PREFIX` points to the installation path (defaults to `~/.local`).
The `musl` C library can be chosen with the `LIBC` variable.

E.g.:

``` sh
$ EXPORT PREFIX=/custom/install/path
$ curl -sS https://raw.githubusercontent.com/CDSoft/luax-releases/refs/heads/master/get-luax.sh | sh
```

or if you need binaries compiled with `musl`:

``` sh
$ EXPORT PREFIX=/custom/install/path
$ EXPORT LIBC=musl
$ curl -sS https://raw.githubusercontent.com/CDSoft/luax-releases/refs/heads/master/get-luax.sh | sh
```

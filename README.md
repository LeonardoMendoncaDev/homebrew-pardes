# homebrew-pardes

Homebrew tap for the [PARDES CLI](https://www.pardes.pro).

## Install

```bash
brew install LeonardoMendoncaDev/pardes/pardes-cli
```

The first run automatically adds the `LeonardoMendoncaDev/pardes` tap.
Subsequent updates are just `brew upgrade pardes-cli`.

## What is PARDES?

PARDES is a method to turn human intent into predictable code. The CLI
materialises the method as a single command — `pardes init` — that
prepares everything in the project and hands the briefing to your AI
agent (Claude Code, Cursor, Windsurf, Copilot, Gemini, Aider).

See [pardes.pro](https://www.pardes.pro) for the full method and the CLI
documentation.

## Formula source

Formula lives at `Formula/pardes-cli.rb`. Updates are pushed automatically
by GoReleaser on each release of the [`pardes-cli`](https://github.com/LeonardoMendoncaDev/pardes-cli)
repository.

## License

The formula is released under the [MIT License](LICENSE), matching the
PARDES CLI itself.

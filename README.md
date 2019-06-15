# What is it?

`tf` stands for **t**rans**f**orm. It's used to modify text.

It's an editor agnostic text transformer with the goal of being 'pluginned' for
editors that need it.

## Examples

`tf` operates on standard input, examples below.

### Transformations

For now, the accepted arguments are `upper`, `lower`, `title`, and `join`.

```
> echo "hello" | tf upper
HELLO

> echo "HElLo" | tf lower
hello

> echo "HElLo" | tf title
Hello

> echo "you her him" | tf join ":"
you:her:him
```

## Developing

### Compiling

Use the build script in `./build/build.sh`. This will compile an executable into
the `./dist` directory and run some tests for you.

## Testing

Tests can be ran by running the build script `./build/build.sh`.
It uses `go test` and [shelltest](https://github.com/liquidz/shelltest).

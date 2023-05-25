# What is it?

`tf` stands for **t**rans**f**orm. It's used to modify text.

It's an editor agnostic text transformer with the goal of being 'plugin-able' for
editors that need it.

## Examples

`tf` operates on standard input, examples below.

For now, the accepted arguments are `join`, `prefix `, `suffix `, `lower`, `upper`, `reverse`, `strip`, `title`, `kebab` and `snake`.
See `tf --help` for details on their usage.

```
> echo "hello" | tf upper
HELLO

> echo "HElLo" | tf lower
hello

> echo "HElLo" | tf title
Hello

> echo "you her him" | tf join ":"
you:her:him

> echo "Pleaxse stxop" | tf strip "x"
Please Stop

> echo 'godtac' | tf upper | tf reverse | tf suffix !
CATDOG!

> echo 'MyOldschoolVariable' | tf snake
my_oldschool_variable
```

## Developing

### Testing

Tests can be ran with `make test`. It requires the `luaunit` rock.

```
luarocks install luaunit
```

# Compiling

```
go build -o tf main.go
```

Then running

```
echo "this is a test | ./tf"
```

Once compiled you can do this

```
> echo "test" | ./tf upper
TEST
```

Accepted arguments are upper, lower, and title. More to come... maybe

# Testing

Uses https://github.com/liquidz/shelltest for tests (for now). 

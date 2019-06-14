gofmt -w ./main.go
shelltest test.txt

# Versions are bound to a commit id, each commit id gets a reference in the dist directory
commit=$(git rev-parse --short HEAD)
output_dir="./dist/$commit"
mkdir -p "$output_dir"
go build -o "$output_dir/tf" ./main.go

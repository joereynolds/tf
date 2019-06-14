gofmt -w ./main.go

output_dir="./dist"
go build -o "$output_dir/tf" ./main.go

shelltest test.txt

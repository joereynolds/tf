gofmt -w ./main.go

# Install shelltest
if [ ! -f ./shelltest ]; then
    wget https://github.com/liquidz/shelltest/releases/download/v0.1.1/shelltest_linux_amd64
    mv shelltest_linux_amd64 shelltest
    chmod +x ./shelltest
fi

output_dir="./dist"
go build -o "$output_dir/tf" *.go

./shelltest test.txt

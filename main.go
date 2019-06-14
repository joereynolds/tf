package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')

	if len(os.Args) < 2 {
		fmt.Println("Expected one of the following subcommmands: 'upper', 'lower', 'title', 'join'")
		os.Exit(1)
	}

	switch os.Args[1] {

	case "upper":
		fmt.Println(strings.ToUpper(text))
	case "lower":
		fmt.Println(strings.ToLower(text))
	case "title":
		fmt.Println(strings.Title(text))
	case "join":
		fmt.Println(JoinString(text, os.Args[2]))
	}
}

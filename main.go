package main

import (
	"bufio"
	"fmt"
	tf "github.com/joereynolds/tf/strings"
	"os"
	"strconv"
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
		fmt.Println(tf.JoinString(text, os.Args[2]))
	case "nth":
		if os.Args[2] == "word" {
			n, _ := strconv.Atoi(os.Args[3])
			fmt.Println(
				tf.ReplaceEveryNthWordWith(
					n,
					text,
					os.Args[4],
				),
			)
		}
	}
}

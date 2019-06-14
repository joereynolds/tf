package main

import "strings"

func JoinString(text string, glue string) string {
        return strings.Join(strings.Split(text, " "), glue)
}

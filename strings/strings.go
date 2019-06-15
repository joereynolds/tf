package strings

import "strings"

func JoinString(text string, glue string) string {
	return strings.Join(strings.Split(text, " "), glue)
}

func ReplaceEveryNthWordWith(n int, sentence string, replacement string) string {
	sentenceArray := strings.Split(sentence, " ")

	for i := n - 1; i < len(sentenceArray); i += n {
		sentenceArray[i] = replacement
	}
	return strings.Join(sentenceArray, " ")
}

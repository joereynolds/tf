package main

import "testing"
import "github.com/stretchr/testify/assert"
import tf "github.com/joereynolds/tf/strings"

func TestJoinString(t *testing.T) {
	actual := tf.JoinString("this is some string yeah", "-")
	expected := "this-is-some-string-yeah"

	assert.Equal(t, expected, actual)
}

func TestReplaceEveryNthWordWith(t *testing.T) {
	actual := tf.ReplaceEveryNthWordWith(
		3,
		"this is just a sentence to have some replacements done on it",
		"___",
	)
	expected := "this is ___ a sentence ___ have some ___ done on ___"

	assert.Equal(t, expected, actual)
}

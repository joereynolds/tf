package main

import "testing"
import "github.com/stretchr/testify/assert"

func TestJoinString(t *testing.T) {
    actual := JoinString("this is some string yeah", "-")
    expected := "this-is-some-string-nah"

    assert.Equal(t, expected, actual)
}


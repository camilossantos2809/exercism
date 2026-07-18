package wordcount

import (
	"regexp"
	"strings"
)

type Frequency map[string]int

func WordCount(phrase string) Frequency {
	words := make(Frequency)
	re := regexp.MustCompile("[ \n\t,]+")
	rePunc := regexp.MustCompile("[!&@$%^&.:]+")
	for _, word := range re.Split(rePunc.ReplaceAllString(phrase, ""), -1) {
		normWord := strings.TrimSpace(strings.ToLower(word))

		if normWord == "" {
			continue
		}

		if normWord[0] == '\'' && normWord[len(normWord)-1] == '\'' {
			words[normWord[1:len(normWord)-1]]++
			continue
		}

		if normWord[0] == '\'' {
			words[normWord[1:]]++
			continue
		}

		if normWord[len(normWord)-1] == '\'' {
			words[normWord[:len(normWord)-1]]++
			continue
		}

		words[normWord]++
	}
	return words
}

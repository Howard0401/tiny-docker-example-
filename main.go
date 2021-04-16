package main

import (
	"log"
)

func main() {
	i := 0 // range of int32: from -2,147,483,648 to 2,147,483,647
	for {
		i += 1
		// i64, err := safecast.Int32(i)
		// if err != nil {
		// 	if strings.Contains(err.Error(), "int32 out of range") {
		// 		i = 0
		// 	}
		// }
		// log.Println(i64)
		log.Println(i)
	}

}

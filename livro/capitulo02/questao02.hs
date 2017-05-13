media_3 a b c = (a + b + c ) / 3
maior_que_a_media a b c | a > (media_3 a b c) && b > (media_3 a b c) && c > (media_3 a b c) = 3              
                        | a > (media_3 a b c) && b > (media_3 a b c) = 2   
			| b > (media_3 a b c) && c > (media_3 a b c) = 2
			| a > (media_3 a b c) && c > (media_3 a b c) = 2
			| a > (media_3 a b c) = 1
	         	| b > (media_3 a b c) = 1
         		| c > (media_3 a b c) = 1
			| otherwise = 0



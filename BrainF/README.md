Prints 

First Hand

********************************************
*** PARDON THE PROGRAMMING LANGUAGE NAME ***
*** I've encoded the name for censorship ***
********************************************

https://en.wikipedia.org/wiki/Brainf%75%63%6B
Use Online compiler for BF at https://copy.sh/brainf%75%63%6B/
Note: Asterisk added for censoring the link. Replace it with 'u' to go to correct links

Code explanation:
ASCII values: F 70    i 105   r 114   s 115   t 116   32   H 72   a 97   n 110   d 100   

1*5*7 = 35
2*5*7 = 70
3*5*7 = 105
+++++++      Set cell 0 to 7 
[
    >+++++       Set cell 1 to 5
    [
      >+      Inc cell 2 by 1
      >++     Inc cell 3 by 2
      >+++    Inc cell 4 by 3
      >+++    Inc cell 5 by 3
      <<<<-    Dec cell 1 by 1
    ]
    <- Dec cell 0 by 1
]
cell2=35   cell3=70   cell4=105(up)   cell5=105(down)   pointer=cell0
>>>.    	print cell3=70
>.     		print cell4=105
+++++++++.	inc cell4 by 9. print cell4= 114 
+.			inc cell4 by 1. print cell4= 115 
+.			inc cell4 by 1. print cell5= 115
<<---.		dec cell2 by 3. print cell2=32
>++.        inc cell3 by 2. print cell3=72
>>--------. dec cell5 by 8. print cell5=97 
<------.	dec cell4 by 6. print cell4=110 
>+++.       inc cell5 by 3. print cell5=100

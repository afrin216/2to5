// cerner_2^5_2017
object XMas {
   def main(args: Array[String]) {
       
    var days = Array("first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth");
    var day_lyric = "";
        
    var items = Array("A partridge in a pear tree","Two turtle doves and","Three french hens","Four calling birds","Five golden rings",
                               "Six geese a-laying","Seven swans a-swimming","Eight maids a-milking","Nine ladies dancing","Ten lords a-leaping",
                               "Eleven pipers piping","Twelve drummers drumming");
         
        var i=0;
        while (i<12){
            println(s"\n\nOn the ${days(i)} day of Christmas, my true love gave to me");
            var j=i;
            while(j>=0){
                println(s"${items(j)}");
                j = j-1;
            }
            i = i + 1;
        }
   }
}
/* cerner_2^5_2017 */
fun main(args: Array<String>) {
    
    beerme(1)
    println("No more bottles of beer on the wall, no more bottles of beer. ")
    println("Go to the store and buy some more, 99 bottles of beer on the wall.")
}

fun beerme(count: Int){
    if(count<99){
        beerme(count+1)
    }
    val leftBottle: String = if (count==1) "no more bottles" else if (count==2) "1 bottle" else ""+(count-1)+" bottles"
    val suffix: String = if (count==1) "" else "s"
    
    println("$count bottle$suffix of beer on the wall, $count bottle$suffix of beer.")
    println("Take one down and pass it around, $leftBottle of beer on the wall.")
}
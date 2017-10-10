/* cerner_2^5_2017 */
import 'dart:html';
import 'dart:convert';
import 'dart:math';

/* Outputs a random first hand youtube video everytime this program is run */
void main(){
   var url = "https://www.googleapis.com/youtube/v3/search?key=AIzaSyCXx6g1x3hl8mOe0gsqw88iq3_Qxi5lqIs&channelId=UCiDq1AkSn2Csj5oe_dm9eOA&part=snippet,id&order=date&maxResults=50";
    HttpRequest.getString(url).then(onDataLoaded);
}

void onDataLoaded(String responseText) {
  var jsonString = responseText;
  var json = JSON.decode(jsonString);
  var totalResults = json["pageInfo"]["totalResults"] as int;
  print("Total results found:$totalResults");
  var randomId = new Random().nextInt(totalResults);
  var randomVideo = json["items"][randomId]["id"]["videoId"];
  print("Random First Hand Video : https://www.youtube.com/watch?v=$randomVideo");
}
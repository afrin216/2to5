import urllib2, json, sys, random

def get_response(uri_string):
    uri = urllib2.Request(uri_string)
    response = urllib2.urlopen(uri)
    return response.read()

#########################################################################################
#Given a jumble of letters, this script uses an api to find best anagram 
#from the letters and then outputs it in random ascii art form using another api
#cerner_2^5_2017
#Usage: python anagram_ascii_py.rb <random_group_of_letters>
#Use Python 2.7
#########################################################################################
if len(sys.argv) != 2:
  print  "Incorrect number of args (expected 1)"
  print  "usage: python anagram_ascii_py.py <random_group_of_letters>"
  print "eg: python anagram_ascii_py.rb abcd"
  sys.exit(2)

jumble = sys.argv[1]
if len(jumble) > 10:
  print "Unfortunately the API doesn't support more than 10 letters"
  sys.exit(2)

#get best anagram word for the jumble
anagram = json.loads(get_response("http://www.anagramica.com/best/"+jumble))['best'][0]
fonts = "standard starwars".split(" ")
selected_font = fonts[random.randrange(len(fonts))]
#get list of fonts and select a random fonts
print get_response("http://artii.herokuapp.com/make?text="+anagram+"&font="+selected_font)
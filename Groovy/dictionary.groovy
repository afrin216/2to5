import groovy.json.JsonSlurper 

// cerner_2^5_2017

def word = "test"
if(args.length > 0){
	word = args[0]
}
def wordurl = "http://api.wordnik.com/v4/word.json/"+word+"/definitions?limit=1&includeRelated=false&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5"
def data = new URL(wordurl).getText();

def jsonSlurper = new JsonSlurper()
def object = jsonSlurper.parseText(data)
println ""
println "The meaning of the word is ["+word+"] is "+ object.text
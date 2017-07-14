# Write your code here.
# "hello" becomes 'hi'
# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"
def dictionary(word)
	dictionary = {"hello"=>"hi","to"=>"2","two"=>"2","too"=>"2","for"=>"4","four"=>"4","be"=>"b","you"=>"u","at"=>"@","and"=>"&"}
	if dictionary.keys.include?(word.downcase)
		dictionary[word.downcase] 
	else
		word
	end
end

def word_substituter(tweet)
	new_tweet=[]
	tweet =tweet.split
	tweet.each do |i|
		new_tweet << dictionary(i)
	end
	new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)
		if tweet.length > 140
			 word_substituter(tweet)
		else
			 tweet
		end

end

def shortened_tweet_truncator(tweet)
	
	new_tweet = word_substituter(tweet)
		
		if new_tweet.length >140
			new_tweet[0..136] + "..."
		else
			new_tweet
		end
	end


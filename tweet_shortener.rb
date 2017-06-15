# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi", "to" => "2", "too" => "2", "two" => "2", "for" => "4",
     "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"
  }
end

def word_substituter(tweet)
  splitTweet = tweet.split(" ")
  newTweet =[]
  splitTweet.each do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    elsif dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    newTweet.push(word)
  end
  newTweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect do |tweet|
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
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end

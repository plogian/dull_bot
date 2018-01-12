library(twitteR)


dull_twitter_api_key <- "your twitter api key here"
dull_twitter_api_secret <- "your twitter api secret here"
dull_twitter_access_token <- "your twitter access token here"
dull_twitter_access_token_secret <- "your twitter access secret here"

#create the tweets

tweetText <- function() {
  #decide how many times "work" appears
  workReps <- sample(c(0:5), 1)
  
  hashtagChances <- sample(c(0:3), 1)
  addHashtag <- ""
  if(hashtagChances==1) {
    addHashtag <- " #noplay"
  }
  paste0(strrep("work ", workReps), "work", addHashtag)
}

#connect to twitter
dull_api_key             <- dull_twitter_api_key
dull_api_secret          <- dull_twitter_api_secret
dull_access_token        <- dull_twitter_access_token
dull_access_token_secret <- dull_twitter_access_token_secret
origop <- options("httr_oauth_cache")
options(httr_oauth_cache=F)
setup_twitter_oauth(dull_api_key, dull_api_secret, dull_access_token, dull_access_token_secret)
options(httr_oauth_cache=origop)

tweet(tweetText())
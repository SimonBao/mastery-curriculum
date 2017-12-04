replace = {
  'sucks' => 'CENSORED',
  'bad' => 'CENSORED ',
  'hate' => 'CENSORED ',
  'foolish' => 'CENSORED',
  'danger to society' => 'CENSORED'
}
match = /#{replace.keys.join('|')}/


test_tweets = [
  "This president sucks! hate",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

test_tweets.map do |string|
  string.gsub(match, replace)
end

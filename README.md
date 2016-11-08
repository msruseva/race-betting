# Race betting

Fork this repo and email us when everything is green. Feel free to commit often, we would love to see how you tackle this and not just the final result.

Fill in the `score` routine in the `RaceBet::Race` class which accepts two arguments:

* an `Array` of guesses, for example `[:bob, :mark, :walter]` which models a prediction that Bob will have finished first, Mark second and Walter third
* an `Array` of actual winners, for example `[:mark, :bob, :walter]`

In this example the scoring function must calculate `7` points, according to following rules:
* correct first place guess - 15 points
* correct second place guess - 10 points
* correct third place guess - 5 points
* correct fourth place guess - 3 points
* correct fifth place guess - 1 point
* correctly guessing a participant is in the top 5 but misplacing them - 1 point.

Please take a look in the `race_spec.rb` file for the exact logic.

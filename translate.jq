(.[2] + .[1]) as $strings
| .[0]
| to_entries
| map({(.key): (.value + " " + $strings[.key])})
| add

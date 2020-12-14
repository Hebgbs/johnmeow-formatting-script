.objects
| to_entries
| map([.key, .value.hash])
| map(select(.[0] | startswith("minecraft/lang/")))
| map(
    (.[0] / "/")[-1] + " "
    + .[1][:2]       + "/"
    + .[1]           + "\n")
| add

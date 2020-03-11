# murder-mistery
Solving the murder mysteries available on the internet

# Solutions available

* [gitstery]
* [clmistery]
* [SQL Mysteries]

[gitstery]:	https://github.com/nivbend/gitstery
[clmistery]: https://github.com/veltman/clmystery
[SQL Mysteries]: https://github.com/NUKnightLab/sql-mysteries.git

## gitstery

- You can take a look in [progress.txt] to see my logic flow to solve
  the mistery (it's randomly structured, sorry)
- [search_murder.sh] it's a hacking way to solve this: it
  collects all residents available and crack the solution by
  brute-force (I swear I did this AFTER solving normally first :p)
- To try it yourself you need to clone the original git repository
  too, since all the metadata of git it's important to solve the problem
- This murder-solving it was my first, so it's documented very poorly
- the commands `git rev-list`, `git grep` and `git hash-object` it was a interesting discover

[progress.txt]: /gitstery/progress.txt
[search_murder.sh]: /gistery/search_murder.sh

## clmistery

- I have a [did.txt] log file about my thought process in details
- In the script [commands.sh] it contains all the shell commands to
  cross data and info to find the **fucking murder**. It combine the
  clues individually until just one suspect remains in the end.
- Basically a lot of grep and pipes, though (learn about grep context (-C|-B-A) too)

[commands.sh]: /clmystery/commands.sh
[did.txt]: /clmystery/did.txt

## SQL Misteries

- I solve each one SQL query per once locally using a SQLite Browser that has
capabilities to run SQL queries.
- Take a look in the [queries] directory to understand the flow.
- You can execute each one individually to understand all the
  solution.

[queries]: /sql-mysteries/queries

# Author

Manoel Vilela, 2020

## Console Exercise with Files

```yaml
type: ConsoleExercise
xp: 100
```

Write a script like this:

```sh
cut -d , -f 1 $@ | grep -v Date | sort | uniq | sort -n
```

`@instructions`

- Update `./count-dates.sh` to do ...
- Change permissions using `chmod u+x ./count-dates`
- Run the script as `./count-dates data/*.csv`.


`@sample_code`

`@@Terminal`

```{sh}

```

`@@count-dates.sh`

```{text open = TRUE}

```

`@@data/a.csv`

```{csv locked = TRUE, open = TRUE}
a,b,c
1,2,3
```

`@@data/b.csv`

```{csv locked = TRUE}
a,b,c
1,2,3
```

`@solution`

`@@Terminal`

```{sh}
./count-dates data/*.csv
```

`@@count-dates.sh`

```{text}
cut -d , -f 1 $@ | grep -v Date | sort | uniq | sort -n
```

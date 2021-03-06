# backup

scripts to backup repos, etc.



## Setup

Add the `backup` command line tool via the `gitti-backup` gem.
To update / install use:

```
$ gem install gitti-backup
```



## Usage


To backup all repos use:

```
$ backup config/repos.yml
```

All repos get git cloned in the backup folder in home (e.g. `~/backup`).

Bonus: Use the `--daily` flag to
auto-add an extra folder for today's date e.g. (`2020-09-14`):

``` ruby
backup_dir = "~/backup/#{Date.today.strftime('%Y-%m-%d')}"
```


### More

#### Update Datafiles

To update / generate the reposet / list (`./repos.yml`)
to backup and to update all stats (stars, commits, etc.)
in `../cache.github` use the online script e.g.:

```
$ ruby script/online.rb
```

Note: Set your GitHub env credentials (personal access token preferred) e.g.

```
set HUBBA_TOKEN=abcdef0123456789
#   - or -
set HUBBA_USER=you
set HUBBA_PASSWORD=topsecret
```



Note: For now exclude (comment out) these by-hand:

```
cryptocopycats (6):
- kitties                    ## download to big
```




##### Update Summary

To fast forward (ff) the (cached) github api stats
in `/cache.github` use the sync script e.g.

```
$ ruby script/sync.rb
```


To update the summary (`SUMMARY.md`) & co. reports use the reports script e.g.

```
$ ruby script/reports.rb
```



## License

The scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.

require_relative 'helper'


##  todo/fix:
##  use/add gh.cache.put( )  or gh.cache.save()
##     instead of  save_json !!!


h = Hubba.reposet( 'geraldb', 'yorobot', cache: true )
pp h

save_yaml( "./config/repos.yml", h )



### update stats records for all repos (in ./repos.yml)

####
## up stats for all repos (in )
##
##  todo/check: use gitti repolist (exits?) or something -reuse, reuse, reuse!!!!
##

# h = YAML.load_file( './repos.yml' )
# pp h

Hubba.update_stats( h )
Hubba.update_traffic( h )

puts "Done."

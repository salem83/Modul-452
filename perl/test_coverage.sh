for t in $(find t -name *.t);do perl -Ilib -MDevel::Cover $t; done
cover
firefox cover_db/coverage.html &

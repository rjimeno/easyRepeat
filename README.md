The goal for this project is to help provide a system that can be used
for break-fix tests and to do learning exercises.

It is based on code provided for me by somebody else.

#berks install -d # May be necessary to generate Berksfile, perhaps more.
rm -rf .kitchen Gemfile.lock Berksfile.lock
bundle exec kitchen list # Generates Gemfile.lock?
bundle install # Generates Berksfile.lock?
bundle exec berks install
#berks init # May be necessary to update Berksfile.
bundle exec kitchen converge  # This line may not succed on the first attempt.
bundle exec kitchen login

When an IP address is used, the special content will not be
delivered. The hostname 'easyrepeat' must be used instead. This means
that an entry for 192.178.70.71 will probably be required on the
/etc/hosts table for the client.

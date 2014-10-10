Vagrant Chef Example
====================


How to run the unit tests
-------------------------

    bundle exec rspec

How to run the integration tests
--------------------------------

First time:

    bundle exec knife test

Consecutive runs:

    bundle exec knife converge
    bundle exec knife verify


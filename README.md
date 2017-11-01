# Slugger

[![Build status](https://badge.buildkite.com/d540425404497643294edd72e8134fad2f01fce0cf8d857034.svg)](https://buildkite.com/infolinks/slugger)

Slugger is a small script to create a slug from a given input.

Slugger is distributed as a Docker container, so you can run it anywhere
and get a consistent slug back - like this:

    $ docker run infolinks/slugger "Custom branch for my feature"
    custom-branch-for-my-feature

To save it in a Bash variable:

    $ SLUG=$(docker run infolinks/slugger "My Feature")
    $ echo ${SLUG}
    my-feature

Slugger will change colons, spaces, backslashes, dots, etc into dashes.

**NOTE:** slugger _will not_ print a new-line at the end of the slug.
So if you try this in an interactive Bash environment (not when using a
script) you might see a `%` at the end of the line, similar to this:

    $ docker run infolinks/slugger "Custom branch for my feature"
    custom-branch-for-my-feature%

Don't worry about that `%` at the end of the output - it's just the
terminal complaining about the missing end-of-line.

## Contributions

Any contribution to the project will be appreciated! Whether it's bug
reports, feature requests, pull requests - all are welcome, as long as
you follow our [contribution guidelines for this project](CONTRIBUTING.md)
and our [code of conduct](CODE_OF_CONDUCT.md).

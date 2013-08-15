# Building the demo

Building gandalf requires ruby and bundler.  Once these are installed,
use make to build the gandalf demo.

    make

# Generate gandalf's key

    bin/new key gandalf@middle.earth

Don't run `new key` twice as it wil create two keys wth the same email
address.

# Create a new secrets with gandalf's key

Secrets are referenced in `config/gandalf.yml`.  The moria secrets is already
defined as an example and uses gandalf's key.

    bin/new secrets moria

# View the secrets

The secrets should be encrypted with gandalf's key and unlocked with his
passphrase.

    bin/show secrets moria

# Edit the secrets

Will decrypt the secrets into a temporary file and edit with $EDITOR or vim.

    bin/edit secrets moria

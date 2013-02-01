# Generate gandalf's key

    bin/new key gandalf@middle.earth

Don't run `new key` twice as it wil create two keys wth the same email
address.

# Create a new secrets bundle with gandalf's key

Bundles are referenced in `config/gandalf.yml`.  The moria bundle is already
defined as an example and uses gandalf's key.

    bin/new moria

# View the secrets

The bundle should be encrypted with gandalf's key and unlocked with his
passphrase.

    bin/list moria

# Edit the secrets

Will decrypt the bundle into a temporary file and edit with $EDITOR or vim.

    bin/edit moria

# Create a new GPG secrets bundle 

Bundles are referenced in `config/gandalf.yml`.  The moria bundle is already
created as an example and assumes there's a GPG saved under gandalf.

To create the moria bundle with an empty yaml file:

    bin/new moria

# View the secrets

The bundle should be encrypted with a key you possess.  Unlock with your password.

    bin/list moria

# Edit the secrets

Will decrypt the bundle into a temporary file and edit with $EDITOR or vim.

    bin/edit moria


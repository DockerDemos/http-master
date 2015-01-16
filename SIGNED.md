##### Signed by https://keybase.io/clcollins
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEABECAAYFAlS5crYACgkQte6EFif3vzfQcwCgy/gA9itFMdZVoMclXbwO0wJL
jSQAoJ5MgBhcvi8GHyx5pcvRabgG+rzL
=GwKW
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size   exec  file                     contents                                                                                                                         
             ./                                                                                                                                                        
17             .gitignore             a631eed2368ffa1e9e7032d23fa5d388e4d2b864afa60c6a08603903763c33dd                                                                 
12288          .http-master.conf.swp  8ba140431d28b2b875d3982e0ecd06e404de062fcc2126d497eefff623f97bf9|42cdb97dbc5e202844dafdf6bc09d3b069ab2578d9928841ccea7e761b1d9925
549            Dockerfile             7b7d7a80b72d425882587a0890da4239ca1c6ee7096d5382ba4e7c38ec7ae67d                                                                 
35120          LICENSE                fe3eea6c599e23a00c08c5f5cb2320c30adc8f8687db5fcec9b79a662c53ff6b                                                                 
1766           README.md              02a0d99f188af5b06946d9219dc07dca7ebac3531d71b623a89113e15283d27e                                                                 
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing
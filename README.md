# dotfiles
linux dotfiles

### Neomutt Oauth2
Requries installing latest neomutt release from source. For autosetup ensure `--ssl --sasl` options are set as well as header cache support. Set `ENCRYPTION PIPE` parameters and change `client_id` and/or `client_secret` depending on server in `.neomutt/mutt_oauth2.py`. Run `python3 mutt_oauth2.py tokens --verbose --authorize` in `.neomutt/` and select `localhost` option when prompted.

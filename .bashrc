[ -n "$PS1" ] && source ~/.bash_profile

j-server() {
  bundle exec jekyll serve --config _config.yml _config.dev.yaml
}

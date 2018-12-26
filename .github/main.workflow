workflow "New workflow" {
  on = "push"
  resolves = ["docker://centos"]
}

action "docker://centos" {
  uses = "docker://centos"
  runs = "python -m 'SimpleHTTPServer'"
  secrets = ["GITHUB_TOKEN"]
}

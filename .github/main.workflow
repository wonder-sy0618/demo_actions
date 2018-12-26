workflow "New workflow" {
  on = "push"
  resolves = ["docker://centos"]
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@76ff57a"
  secrets = ["GITHUB_TOKEN"]
  runs = "echo '----------------'"
}

action "docker://centos" {
  uses = "docker://centos"
  needs = ["GitHub Action for Docker"]
  runs = "curl http://baidu.com"
  secrets = ["GITHUB_TOKEN"]
}

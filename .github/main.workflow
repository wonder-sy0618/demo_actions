workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Docker"]
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@76ff57a"
  secrets = ["GITHUB_TOKEN"]
  runs = "curl https://baidu.com"
}

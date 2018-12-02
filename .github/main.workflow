workflow "New workflow" {
  on = "push"
  resolves = ["Hello Actions"]
}

action "Hello Actions" {
  uses = "./action-a"
  env = {
    AWESOMENESS = "High"
  }
  args = "\"Hello actions, I find you really $AWESOMENESS!\""
}

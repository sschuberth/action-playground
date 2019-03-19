workflow "Release on annotated tags" {
  on = "push"
  resolves = ["Filters for GitHub Actions"]
}

action "Filters for GitHub Actions" {
  uses = "sschuberth/actions-bin/filter@master"
  args = "tag v*-release"
}

workflow "Release on annotated tags" {
  on = "push"
  resolves = ["Filters for GitHub Actions"]
}

action "Filters for GitHub Actions" {
  uses = "sschuberth/actions-bin/filter@filter-annotated-tags"
  args = "tag_annotated v*-release"
}

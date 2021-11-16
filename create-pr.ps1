param(
  [Parameter(Mandatory=$false)]
  [string]$Branch
)
$WorkingPath = '.\files'

git checkout main
git checkout -b branch-$branch

New-Item -ItemType Directory -Force -Path $WorkingPath
echo "hello-$branch" > .\files\hello-$branch.md
git add .\files\hello-$branch.md
git commit -m "Create hello-$branch.md"
git push origin branch-$branch
gh pr create --title "Create hello-$branch.md" --base "preview/dev" --label "[workflow] to deploy" --repo "my-wrm/dummy-project"  --body " "
git checkout main
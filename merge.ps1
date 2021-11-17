

# github.event.pull_request.head.ref
# github.event.pull_request.base.ref


git clone https://mywrm:${{ env.access_token }}@github.com/my-wrm/dummy-project
git checkout ${{ github.event.pull_request.base.ref }}
git merge --no-ff ${{ github.event.pull_request.head.ref }}
git push origin ${{ github.event.pull_request.base.ref }}



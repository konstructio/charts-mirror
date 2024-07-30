# charts-mirror
Git mirror of Konstruct.io and Kubefirst Helm charts

### How to use this repository

You can manually trigger this repository's workflow via a `workflow_dispatch` which will do the following:

* Download all Helm charts from `$REGISTRY_SOURCE`
* Commit and push them to the `charts` branch of this repository
* Upload all found charts to the `$REGISTRY_DESTINATION` Helm repository

The commit part doesn't need any special tokens since the workflow itself is automatically authenticated for `write` operations.

To upload the charts to the destination repository, you'll need to provide the authentication credentials for the target ChartMuseum. These are the environment variables `HELM_REPO_USERNAME` and `HELM_REPO_PASSWORD`.

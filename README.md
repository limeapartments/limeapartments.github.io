# limeapartments

The Github pages repo for the limeapartments organization.

## Updating

When content changes in [limeapartments/website](https://github.com/limeapartments/website) the [`update.sh`](https://github.com/limeapartments/limeapartments.github.io/blob/master/update.sh) script should be run.

This script will pull the latest changes from the website repo, build the production single page app, then copy the updated content into the repo. After that the content is ready to be committed and pushed.

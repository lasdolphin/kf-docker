# kf-docker
  A docker image that can be used for kf deployments. It includes gcloud, kf cli, etc.


## Deployment
   To aumatically update for the new versions of the included software, a concourse pipeline continously monitors the availability of new version of the software and build a new docker image.

   for most cases, you should not need to deploy the pipeline yourself. Instead you should use saedalav/kf docker image from dockerhub. This is especially true because the pipeline is not written for reusibility (note the hardcoded usernames and urls).

   However, if you really want to run this pipeline on your own Concourse pipeline, here is a quick how-to:

   1. Modify the pipeline's hardcoded usernames and urls
   2. Ensure the following to secrets are available either in your credential manager, or passed to the pipeline:
        * git_private_key
        * image_repo_secret
# Haskell Demo

This is a simple scotty application. It should work with any app built with
cabal (eg. snap or yesod apps).

## Deploying on Clever Cloud

You can deploy this app on Clever Cloud with the docker runtime.

If it's your first clever cloud docker application, please have a look at the
documentation: <https://www.clever-cloud.com/doc/docker/docker>

In a nutshell:

 - create a docker application
 - `git remote add clever <git remote url>`
 - git push clever master

{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty

import Data.Monoid (mconcat)

main = scotty 8080 $ do
  get "/" $ do
    html $ mconcat [
      "<h1>Hi, I'm Scotty</h1>",
      "<p>Want a <a href=\"/beam\">lift</a>?</p>" ]

  get "/:word" $ do
    beam <- param "word"
    html $ mconcat ["<h1>Scotty, ", beam, " me up!</h1>"]

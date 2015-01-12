FROM haskell:7.8

ADD ./haskell-demo.cabal /root/haskell-demo/haskell-demo.cabal

WORKDIR /root/haskell-demo

RUN cabal update \
 && cabal sandbox init \
 && cabal install -j4 --only-dependencies

ADD . /root/haskell-demo

RUN cabal build

EXPOSE 8080

ENTRYPOINT ["/root/haskell-demo/dist/build/haskell-demo/haskell-demo"]

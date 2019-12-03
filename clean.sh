# delete v3 cache
yarn config set cache-folder /Users/carlos/Library/Caches/Yarn/v3
yarn cache clean

# delete v4 cache
yarn config set cache-folder /Users/carlos/Library/Caches/Yarn/v4
yarn cache clean

# delete homebrew caches
brew cleanup

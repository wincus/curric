if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Uploading pdf version ...\n"
  
  git checkout master
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis"

  echo "https://${GH_TOKEN}:@github.com" > .git/credentials
  git config credential.helper "store --file=.git/credentials"
  git remote set-url origin https://github.com/wincus/curric.git
  git add pdf/curric.pdf
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [ci skip]"
  git push -fq origin master > /dev/null

  echo -e "Done!\n"
fi

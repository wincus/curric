if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Uploading pdf version ...\n"

  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis"

  git config credential.helper "store --file=.git/credentials"
  echo "https://${GH_TOKEN}:@github.com" > .git/credentials

  git add pdf/curric.pdf
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [ci skip]"
  git push -fq origin > /dev/null

  echo -e "Done!\n"
fi

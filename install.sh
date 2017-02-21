brew=`which brew`
ruby_version=`cat ./.ruby-version`

if ! type "rbenv" > /dev/null; then
  echo "Installing rbenv....."
  $brew update && $brew install rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
  echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
  source ~/.bash_profile
fi

if ! type "ruby-build" > /dev/null; then
  echo "Installing ruby-build....."
  $brew update && $brew install ruby-build
fi

if ! [[ `rbenv versions` =~ $ruby_version ]]
then
  echo "Installing ruby $ruby_version ....."
  rbenv install $ruby_version
  rbenv rehash
fi

echo "Installing bundler ....."
gem install bundler

echo "Installing ruby gems in Gemfile.lock ....."
bundle install

if ! type "fortune" > /dev/null; then
  echo "Installing fortune...."
  brew install fortune
fi

echo "Making tmp directory...."
mkdir -p "tmp"
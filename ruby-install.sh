yum install -y git git-core zlib zlib-devel gcc-c++ patch readline readline-devel \
               libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake \
               libtool bison curl sqlite-devel ImageMagick ImageMagick-devel mysql-devel

cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile

source ~/.bash_profile

rbenv install -v 2.3.0

cd ~/your-rails-project

rbenv local 2.3.0
gem install bundler
gem install rails -v 5.0.1
rbenv rehash
bundle install

# Ghost
#
# VERSION               0.0.1
# BUILD-USING:        docker build -t docker-base-ruby .
# PUSH-USING:         docker tag docker-base-ruby surf/docker-base-ruby  && docker push surf/docker-base-ruby

FROM     surf/docker-base
MAINTAINER Dan Kinsley <dan@surfbeta.com>

# make sure the package repository is up to date
RUN apt-get update && apt-get install -y \
	ruby1.9.3 \
	build-essential \
	git

# install rubygem bundler
RUN gem install bundler

CMD ["/bin/bash"]

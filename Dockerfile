# Ghost
#
# VERSION               0.0.1
# BUILD-USING:        docker build -t base-ruby .
# PUSH-USING:         docker tag base-ruby quay.io/queue/base-ruby  && docker push quay.io/queue/base-ruby

FROM      quay.io/queue/base
MAINTAINER Dan Kinsley <dan@queuenetwork.com>

# make sure the package repository is up to date
RUN apt-get update && apt-get install -y \
	ruby1.9.3 \
	build-essential

# install rubygem bundler
RUN gem install bundler

CMD ["/bin/bash"]

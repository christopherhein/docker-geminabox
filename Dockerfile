FROM ruby:2.3.0-onbuild
RUN mkdir data
ENV RUBYGEMS_PROXY=true REMOTE_FAILURE=true
EXPOSE 9292

ENTRYPOINT ["rackup", "--host", "0.0.0.0"]

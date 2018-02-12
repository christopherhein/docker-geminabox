FROM ruby:2.3.0-onbuild
RUN mkdir data
ENV RUBYGEMS_PROXY=true REMOTE_FAILURE=true
EXPOSE 9292
COPY start /usr/src/app/start

CMD /usr/src/app/start

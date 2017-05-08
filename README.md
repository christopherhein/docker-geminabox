# Docker Geminbox

This uses the configuration specified on [Geminabox Github
README](https://github.com/geminabox/geminabox#docker) allowing you to deploy a
geminbox server into your infrastructure with ease.

## Setup

To run this all you need to do it run via `docker`

```bash
docker run -p 9292:9292 christopherhein/geminabox:latest
```

## Usage

Once you have added the gemserver you can push to it to teh new gemserver by
using:

```bash
gem push pkg/my-awesome-gem-1.0.gem --host HOST
```

Or if you'd like to use the `geminabox` built in mechanisms you can use:

```bash
gem install geminabox

gem inabox pkg/my-awesome-gem-1.0.gem
```

## Installing Into DC/OS

> Coming Soon

If you'd like to have the security of having your own private rubygems mirror
for your organization and use DC/OS you have the added benefit of using the
mesosphere universe packages.

This is setup so that you can easily run:

```bash
dcos package install geminabox
```

This will also install the local forked `dcos geminabox` command for easy adding
of gems.

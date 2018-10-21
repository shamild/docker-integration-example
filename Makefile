NAME=docker-integration-example
GIT_VERSION=$(shell git rev-parse HEAD)
CAT_VERSION=$(shell cat VERSION)
DEPLOY_DEV_URL=http://<DEPLOY_SERVER>/job/deploy-dev/buildWithParameters
DEPLOY_STAGING_URL=http://<DEPLOY_SERVER>/job/deploy-staging/buildWithParameters

deploy-dev:
#	@curl -vvv -XPOST "${DEPLOY_DEV_URL}?token=${JENKINS_DEV_TOKEN}&APP=${NAME}&VERSION=${GIT_VERSION}"
	@echo "@curl -vvv -XPOST ${DEPLOY_DEV_URL}?token=${JENKINS_DEV_TOKEN}&APP=${NAME}&VERSION=${GIT_VERSION}"

deploy-staging:
#	@curl -vvv -XPOST "${DEPLOY_STAGING_URL}?token=${JENKINS_STAGING_TOKEN}&APP=${NAME}&VERSION=${CAT_VERSION}"
	@echo "@curl -vvv -XPOST ${DEPLOY_STAGING_URL}?token=${JENKINS_STAGING_TOKEN}&APP=${NAME}&VERSION=${CAT_VERSION}"

#!/bin/bash

echo ECS_CLUSTER=${ecs-cluster-name} > /etc/ecs/ecs.config
sudo yum install java-1.8.0 -y
sudo yum -y update
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo service jenkins start

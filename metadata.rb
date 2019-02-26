# frozen_string_literal: true

name 'docker_apache2_precedence_issue'
maintainer 'Esten Rye'
maintainer_email 'esten.rye@ryezone.com'
license 'All Rights Reserved'
description 'Installs docker and virtual box on the same server.'
long_description 'Demonstrates precedence issue between docker and apache2 cookbooks.'
version '1.0.0'
chef_version '>= 14.0' if respond_to?(:chef_version)

source_url 'https://github.com/estenrye/docker_apach2_cookbook_precedence_issue_example'
issues_url 'https://github.com/estenrye/docker_apach2_cookbook_precedence_issue_example/issues'

supports 'redhat'
supports 'centos'

depends 'docker', '>= 0.0.0'
depends 'virtualbox-install', '>= 0.0.0'

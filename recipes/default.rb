if platform_family?('rhel')
  package %w(yum-utils device-mapper-persistent-data lvm2)
end

docker_installation_package 'default' do
  action :create
end

docker_service_manager 'default' do
  log_driver 'json-file'
  action :start
end

execute 'docker swarm init' do
  not_if "docker info | grep 'Swarm: active'"
end

include_recipe 'virtualbox-install'

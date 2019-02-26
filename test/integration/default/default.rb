describe file('/etc/systemd/system/docker.service') do
  its('content') { should match %r{ExecStartPost=/usr/libexec/docker/docker-wait-ready} }
end

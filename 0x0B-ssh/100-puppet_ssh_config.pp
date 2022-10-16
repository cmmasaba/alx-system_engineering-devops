# using Puppet to make changes to the ssh client configuration file

exec { 'echo':
  path    => '/usr/bin',
  command => 'echo "    IdentityFile ~/.ssh/school\n    PasswordAuthentication no" >> /etc/ssh/ssh_config',
  returns => [0,1],
}

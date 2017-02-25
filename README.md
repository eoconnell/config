Installing puppet

```bash
$ sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-fedora-21.noarch.rpm
$ sudo yum -y install puppet
```

Usage

```bash
$ make              # checks to see if r10k is installed
$ make install      # installs puppet modules with r10k
$ sudo make apply   # applies puppet manifest
```

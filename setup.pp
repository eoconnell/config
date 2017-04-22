
node 'burrito' {

     include ::virtualbox

     $packages = [
         'tmux',
         'vim',
         'zsh',
     ]

     $packages.each |String $package| {
         package { "${package}":
             ensure   => installed,
             provider => 'yum',
         }
     }

     vcsrepo { '/home/epo/.dotfiles':
         ensure     => present,
         provider   => git,
         source     => 'https://github.com/eoconnell/dotfiles.git',
         revision   => 'linux',
         submodules => true,
         user       => 'epo',
     }

     $dotfiles = [
         '.gitconfig',
         '.screenrc',
         '.tmux.conf',
         '.vim',
         '.vimrc',
         '.zprofile',
         '.zsh',
         '.zshenv',
         '.zshrc',
     ]

     $dotfiles.each |String $dotfile| {
         file { "/home/epo/${dotfile}":
             ensure => "/home/epo/.dotfiles/${dotfile}",
         }
     }

     file { '/home/epo/bin':
         ensure => '/home/epo/.dotfiles/bin',
     }
}

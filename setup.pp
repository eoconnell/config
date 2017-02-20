
node 'burrito' {

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
}

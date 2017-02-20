
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
}

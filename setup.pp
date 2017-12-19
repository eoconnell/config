
node 'burrito' {

     include ::virtualbox

     # i3wm
     # i3lock
     # arandr   # visually manage displays
     # rofi     # dmenu replacement
     # compton  # enables opacity amoung other things
     # i3blocks # i3status replacement
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

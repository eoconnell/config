
node 'burrito' {

     package { 'tmux':
         ensure   => installed,
         provider => 'yum',
     }

     package { 'zsh':
         ensure   => installed,
         provider => 'yum',
     }

     package { 'vim':
         ensure   => installed,
         provider => 'yum',
     }
}

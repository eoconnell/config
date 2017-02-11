
node 'burrito' {

     package { 'tmux':
         ensure   => installed,
         provider => 'yum',
     }
}

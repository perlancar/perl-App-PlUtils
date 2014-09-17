package App::PlUtils;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

1;
# ABSTRACT: Command-line utilities related to Perl scripts

=head1 SYNOPSIS

This distribution provides the following command-line utilities:

 pllex
 plsub
 pluse

These utilities have tab completion capability. To activate it, put these lines
to your bash startup file (e.g. C</etc/bash.bashrc>, C<~/.bash_profile>, or
C<~/.bashrc>):

 for p in \
   pllex plsub pluse; do
     complete -C $p $p
 done


=head1 FAQ


=head1 SEE ALSO

L<App::PMUtils>, distribution that provides utilities related to Perl modules.

=cut

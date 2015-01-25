package App::PlUtils;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $arg_file_single = {
    summary => 'Perl script',
    description => <<'_',

For convenience, if filename does not contain path separator, it will first be
searched in the current directory, then in `PATH` (using `File::Which`).

_
    schema  => 'str*',
    req     => 1,
    pos     => 0,
    completion => sub {
        require Complete::Util;
        my %args = @_;
        Complete::Util::complete_program(word=>$args{word});
    },
};

our $arg_file_multiple = {
    summary => 'Perl script',
    description => <<'_',

For convenience, if filename does not contain path separator, it will first be
searched in the current directory, then in `PATH` (using `File::Which`).

_
    schema  => ['array*', of=>'str*', min_len=>1],
    req     => 1,
    pos     => 0,
    greedy  => 1,
    element_completion => sub {
        require Complete::Util;
        my %args = @_;
        Complete::Util::complete_program(word=>$args{word});
    },
};

our $arg_module_single = {
    schema => 'str*',
    completion => sub {
        require Complete::Module;
        my %args = @_;
        Complete::Module::complete_module(word=>$args{word});
    },
    cmdline_aliases => {m=>{}},
};

1;
# ABSTRACT: Command-line utilities related to Perl scripts

=head1 SYNOPSIS

This distribution provides several command-line utilities related to Perl
scripts. The main purpose of these utilities is tab completion.


=head1 FAQ


=head1 SEE ALSO

L<App::PMUtils>, a similarly spirited distribution that provides utilities
related to Perl modules.

=cut

package Bencher::Scenario::TruncatingString;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark modules that truncate/elide string',
    participants => [
        {
            fcall_template => 'String::Elide::Parts::elide(<string>, <max_len>)',
        },
        {
            fcall_template => 'String::Elide::Tiny::elide(<string>, <max_len>)',
        },
        {
            fcall_template => 'String::Truncate::elide(<string>, <max_len>)',
        },
        {
            fcall_template => 'Text::Elide::elide(<string>, <max_len>)',
        },
        {
            fcall_template => 'Text::Truncate::truncstr(<string>, <max_len>)',
        },
    ],
    datasets => [
        {name=>'str100-70', args=>{string=>"1234567890" x 10, max_len=>70}},
    ],
};

1;
# ABSTRACT:

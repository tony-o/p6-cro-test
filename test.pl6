#!/usr/bin/perl6

use Cro::HTTP::Server;
use Cro::HTTP::Router;
use R;

my $application = r;
my Cro::Service $hello = Cro::HTTP::Server.new:
    :host<localhost>, :port<10000>, :$application;

$hello.start;
react whenever signal(SIGINT) { $hello.stop; exit; }
sleep 20;

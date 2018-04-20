unit module B;
use Cro::HTTP::Router;
use A;

our sub b-call('b', :$req = request) {
  request-body -> %params {
    content 'text/plain', "echo %params<username>";
  }
}

use Cro::HTTP::Router;
unit module A;

our sub a-call('a', :$req = request) {
  request-body -> %x {
    content 'text/plain', "echo %x<username>";
  }
}

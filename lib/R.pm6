unit module R;
use Cro::HTTP::Router;

sub r is export {
  my @x = (
    'B::&b-call',
    'A::&a-call',
  );
  route {
    for @x -> $x {
      my ($pm6, $meth) = $x.split('::&', 2);
      require ::($pm6);
      post ::($x);
    }
  };
};

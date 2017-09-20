#Calculating the Number PI Through Infinite Sequences

# https://en.wikipedia.org/wiki/Vi%C3%A8te%27s_formula
#Viete's Series
sub viete{
	$pi_sqrt = sqrt(2);
	$pi = $pi_sqrt/2;
	for (my $iteration=1; $iteration<=$_[0]; $iteration++){
		$pi_sqrt = sqrt($pi_sqrt + 2);
		$pi = $pi * ($pi_sqrt/2) ; 	}
	$pi = 2/$pi;
	print "Viete's        : $pi\n"; }

#Gregory-Leibniz series
#https://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80
sub gregory{
	$pi = 4/1;
	for (my $iteration=1; $iteration<=$_[0]; $iteration=$iteration+2){
		$pi_sub = 4/($iteration*2 + 1);
		$pi_add = 4/($iteration*2 + 3);
		$pi = $pi - $pi_sub + $pi_add; 	}
	print "Gregory-Leibniz: $pi\n"; }

#Nilakantha series
sub nilakantha{
	$pi = 3;
	for (my $iteration=2; $iteration<=$_[0]; $iteration=$iteration+4){
		$pi_add = 4/($iteration*($iteration+1)*($iteration+2));
		$pi_sub = 4/(($iteration+2)*($iteration+3)*($iteration+4));
		$pi = $pi + $pi_add - $pi_sub;	}
	print "Nilakantha     : $pi\n"; }

$base_iterations = 10000;
for ($i=1;$i<25;$i++){
	$trial = $base_iterations * $i;
	print "\n\nIterations: $trial\n";
	gregory($trial); 
	nilakantha($trial);
	viete($trial); }
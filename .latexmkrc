use File::Path qw(make_path);

make_path('Tmp') unless -d 'Tmp';

$aux_dir = 'Tmp';
$out_dir = 'Tmp';

$pdf_mode = 5;
$xelatex = 'xelatex -interaction=nonstopmode -halt-on-error -file-line-error %O %S';

$ENV{'TEXINPUTS'} = './Style//:' . ($ENV{'TEXINPUTS'} // '');


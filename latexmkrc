use File::Path qw(make_path);

my $build_dir = 'Tmp';
make_path($build_dir, "$build_dir/Tex");

@default_files = ('Thesis.tex');

$pdf_mode = 5;
$aux_dir = $build_dir;
$out_dir = $build_dir;

$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$biber = 'biber %O %B';
$bibtex = 'bibtex %O %B';

$ENV{'TEXINPUTS'} = './Style:./Tex:./Img:./Biblio:' . ($ENV{'TEXINPUTS'} // '');
$ENV{'BIBINPUTS'} = './Biblio:' . ($ENV{'BIBINPUTS'} // '');
$ENV{'BSTINPUTS'} = './Biblio:' . ($ENV{'BSTINPUTS'} // '');
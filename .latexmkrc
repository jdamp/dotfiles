# .latexmkrc starts
$pdf_mode = 1;
$pdf_previewer = "okular --unique %S";
#$preview_continuous_mode = 1;
$bibtex_use = 2;
$out_dir = "output";
$pdflatex = 'lualatex --shell-escape -file-line-error -interaction=nonstopmode -synctex=1 %O %S';
$pdflatex .= '&& cp %D %R.pdf && cp %Z%R.synctex.gz %R.synctex.gz && cp %Z%R.log %R.log';
$ENV{TEXINPUTS} = "$ENV{PWD}:";

 
add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
sub makeglossaries {
   my ($base_name, $path) = fileparse( $_[0] );
   pushd $path;
   my $return = system "makeglossaries $base_name";
   popd;
   return $return;
}
 
push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy';
# .latexmkrc ends

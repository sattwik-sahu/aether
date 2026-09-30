# Latexmk config for slides/ — VimTeX (Neovim) friendly.
# Build with LuaLaTeX (required: fontspec + unicode-math in main.tex).
# VimTeX picks this up automatically; just open main.tex and \ll.
$pdf_mode = 4;            # 4 = lualatex
$pdflatex = 'lualatex -interaction=nonstopmode -halt-on-error -synctex=1 %O %S';
$lualatex = 'lualatex -interaction=nonstopmode -halt-on-error -synctex=1 %O %S';
$xelatex  = 'xelatex -interaction=nonstopmode -halt-on-error -synctex=1 %O %S';
$biber = 'biber %O %S';
$bibtex_use = 2;          # run biber/bibtex when needed
$recorder = 1;
$synctex = 1;
$interaction = 'nonstopmode';
$halt_on_error = 1;
# VimTeX continuous mode: run `latexmk -pvc main.tex` (or :VimtexCompile).
# (Command-line flags always win over these rc defaults.)
$preview_continuous_mode = 0;
$preview_mode = 0;
# Default target so bare `latexmk` works (overrides $HOME glob).
@default_files = ('main.tex');
# Default output dir: build/ (VimTeX: let g:vimtex_compiler_latexmk = {'out_dir': 'build'})
$out_dir = 'build';
$aux_dir = 'build';
# Forward/inverse search helper (VimTeX handles this; zathura example)
# $pdf_previewer = 'zathura --synctex-forward %l:1:%f %s 2>/dev/null &';
push @generated_exts, 'synctex.gz', 'run.xml', 'bcf';
$clean_ext = 'bbl bcf blg run.xml synctex.gz nav snm toc vrb out log aux';

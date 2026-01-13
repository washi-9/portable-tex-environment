# LuaLaTeXでPDFを直接生成する(4)
$pdf_mode = 4;
$lualatex = 'lualatex %O -halt-on-error -interaction=nonstopmode %S';

# 参考文献エラーを防ぐ（手書き bibitem 用）
$bibtex_use = 0;
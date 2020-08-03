unlet b:current_syntax
syn include @HTML $VIMRUNTIME/syntax/html.vim
syn region htmlTemplate start=+<script [^>]*type *=[^>]*text/template[^>]*>+
\                       end=+</script>+me=s-1 keepend
\                       contains=@HTML,htmlScriptTag,@htmlPreproc
syn region javaScript start=+<script [^>]*type *=[^>]*text/htmac[^>]*>+
\                       end=+</script>+me=s-1 keepend
\                       contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc

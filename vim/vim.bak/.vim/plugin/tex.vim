"this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" " TIP: if you write your \label's as \label{fig:something}, then if you
" " type in \ref{fig: and press <C-n> you will automatically cycle through
" " all the figure labels. Very useful!
set iskeyword+=:

"Atajos personalizados
:call IMAP ('EFI', " \\begin{figure}[tbh!]\<CR>\\begin{center}\<CR>\\includegraphics[<++>]{<++>}\<CR>\\end{center}\<CR>\\caption{<++>}\<CR>\\label{fig:<++>}\<CR>\\end{figure}", 'tex')
:call IMAP ('`w', '\omega', 'tex')

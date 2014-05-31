"this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" " TIP: if you write your \label's as \label{fig:something}, then if you
" " type in \ref{fig: and press <C-n> you will automatically cycle through
" " all the figure labels. Very useful!
set iskeyword+=.,:

"Atajos personalizados
:call IMAP ('EFI', " \\begin{figure}[tbh!]\<CR>\\begin{center}\<CR>\\includegraphics[\width=<++>, angle=<++>]{<++>}\<CR>\\end{center}\<CR>\\caption{<++>}\<CR>\\label{fig:<++>}\<CR>\\end{figure}\<CR><++>", 'tex')
:call IMAP ('`w', '\omega', 'tex')
:call IMAP ('+e', 'é', 'tex')
:call IMAP ('+col', '\columnwidth', 'tex')
:call IMAP ('+text', '\textwidth', 'tex')
:call IMAP ('+label', '\label{<++>}', 'tex')
:call IMAP ('+ref', '\ref{<++>}', 'tex')
:call IMAP ('+cite', '\cite{<++>}', 'tex')
:call IMAP ('+o', '$^{\circ}$<++>', 'tex')
:call IMAP ('==', '\,=\,', 'tex')
:call IMAP ('+==', '\ = \', 'tex') 
:call IMAP ('ETA', "\\begin{table}[h!]\<CR>\\centering\<CR>\\begin{tabular}{<++>}\\hline\<CR>\\end{tabular}\<CR>\\caption{<++>}\<CR>\\label{<++>}\<CR>\\end{table}<++>", 'tex')
:call IMAP ('+nom', '\nomenclature{<++>}{<++>}', 'tex')
:call IMAP ('SSE', '\section{<++>}\label{S:<++>}', 'tex')
:call IMAP ('SSS', '\subsection{<++>}\label{SS:<++>}', 'tex')
:call IMAP ('+pm', '\pm', 'tex')

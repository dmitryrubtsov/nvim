""""""""""""""""""""""""""""""
" => GnuPG encrypted files
""""""""""""""""""""""""""""""

" Transparent editing of gpg encrypted files.
" By Wouter Hanegraaff
augroup encrypted
  au!

  " First make sure nothing is written to ~/.viminfo while editing
  " an encrypted file.
  autocmd BufReadPre,FileReadPre *.asc,*.gpg,*.pgp set viminfo=
  " We don't want a swap file, as it writes unencrypted data to disk
  autocmd BufReadPre,FileReadPre *.asc,*.gpg,*.pgp set noswapfile

  " Switch to binary mode to read the encrypted file
  autocmd BufReadPre,FileReadPre *.asc,*.gpg,*.pgp set bin
  autocmd BufReadPre,FileReadPre *.asc,*.gpg,*.pgp let ch_save = &ch|set ch=2
  " (If you use tcsh, you may need to alter this line.)
  autocmd BufReadPost,FileReadPost *.asc,*.gpg,*.pgp '[,']!gpg --decrypt 2> /dev/null

  " Switch to normal mode for editing
  autocmd BufReadPost,FileReadPost *.asc,*.gpg,*.pgp set nobin
  autocmd BufReadPost,FileReadPost *.asc,*.gpg,*.pgp let &ch = ch_save|unlet ch_save
  autocmd BufReadPost,FileReadPost *.asc,*.gpg,*.pgp execute ":doautocmd BufReadPost " . expand("%:r")

  " Convert all text to encrypted text before writing
  " (If you use tcsh, you may need to alter this line.)
  autocmd BufWritePre,FileWritePre *.asc,*.gpg,*.pgp '[,']!gpg --default-recipient-self -ae 2>/dev/null
  " Undo the encryption so we are back in the normal text, directly
  " after the file has been written.
  autocmd BufWritePost,FileWritePost *.asc,*.gpg,*.pgp u
augroup END
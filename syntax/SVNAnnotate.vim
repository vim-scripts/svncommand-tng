" $Id: SVNAnnotate.vim 13 2006-07-09 14:11:04Z troycurtisjr $
" Vim syntax file
" Language:	SVN annotate output
" Maintainer:   Troy Curtis, Jr. <troycurtisjr@gmail.com>	
" Last Change:	$Date: 2006-07-09 09:11:04 -0500 (Sun, 09 Jul 2006) $
" Remark:	Used by the svncommand plugin.  Based on CVSAnnotate Originally written by Mathieu
"               Clabaut and maintained by Bob Hiestand <bob@hiestandfamily.org> 
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match svnText       /.*$/
syn match svnName       /\s*[^ ]\+\s*/                  nextgroup=svnText
syn match svnVer        /^\s*\d\+ /                     nextgroup=svnName

if !exists("did_svnannotate_syntax_inits")
let did_svnannotate_syntax_inits = 1
hi link svnText 	String
"hi link svnDate 	Comment
hi link svnName	Type
hi link svnVer	Statement
endif

let b:current_syntax="SVNAnnotate"

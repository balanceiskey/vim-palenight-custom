hi clear
syntax reset
set background=dark

let g:colors_name = "Palenight"

let NONE="NONE"
let BACKGROUND="#292D3F"
let COMMENTS="#676D96"
let FOREGROUND="#a6abce"
let SEARCH="#3F4464"

let WHITE="#FFFFFF"
let BLACK="#000000"
let RED="#FF5370"
let ORANGE="#F78C6C"
let YELLOW="#FFCC63"
let GREEN="#C2E981"
let CYAN="#86DDFF"
let BLUE="#82AAFF"
let PALEBLUE="#B2CCD6"
let PURPLE="#C58DE9"
let BROWN="#C17E70"
let PINK="#F07178"
let VIOLET="#BB80B3"

let Colors = {}
let Colors['Normal'] = { "guibg": BACKGROUND, "guifg": FOREGROUND }

" FOREGROUND
let Colors['jsVariableDef'] = { "guibg": NONE, "guifg": FOREGROUND }
let Colors['jsObjectKey'] = { "guibg": NONE, "guifg": FOREGROUND }
let Colors['jsBrackets'] = { "guibg": NONE, "guifg": FOREGROUND }
let Colors['jsParens'] = { "guibg": NONE, "guifg": FOREGROUND }
let Colors['ALEErrorSign'] = { "guibg": NONE, "guifg": FOREGROUND }
let Colors['ALEWarningSign'] = { "guibg": NONE, "guifg": FOREGROUND }

" COMMENTS
let Colors['Comment'] = { "guibg": NONE, "guifg": COMMENTS }
let Colors['jsEnvComment'] = { "guibg": NONE, "guifg": COMMENTS }
let Colors['jsComment'] = { "guibg": NONE, "guifg": COMMENTS }

" SEARCH
let Colors['Search'] = { "guibg": SEARCH, "guifg": NONE, "gui": NONE }
let Colors['Visual'] = { "guibg": SEARCH, "guifg": NONE, "gui": NONE }
let Colors['Spellbad'] = { "gui": "italic" , "guibg": SEARCH, "guifg": FOREGROUND }
let Colors['VertSplit'] = { "guibg": NONE, "guifg": SEARCH }

" ORANGE
let Colors['jsNumber'] = { "guibg": NONE, "guifg": ORANGE }
let Colors['jsBooleanTrue'] = { "guibg": NONE, "guifg": ORANGE }
let Colors['jsBooleanFalse'] = { "guibg": NONE, "guifg": ORANGE }
let Colors['jsFuncArgs'] = { "guibg": NONE, "guifg": ORANGE }
let Colors['jsNull'] = { "guibg": NONE, "guifg": ORANGE }

" YELLOW 
let Colors['jsGlobalObjects'] = { "guibg": NONE, "guifg": YELLOW }

" BLUE
let Colors['jsGlobalNodeObjects'] = { "guibg": NONE, "guifg": BLUE }
let Colors['jsFuncCall'] = { "guibg": NONE, "guifg": BLUE }
let Colors['jsTaggedTemplate'] = { "guibg": NONE, "guifg": BLUE }
let Colors['markdownLinkText'] = { "guibg": NONE, "guifg": BLUE }
let Colors['markdownUrl'] = { "guibg": NONE, "guifg": BLUE }
let Colors['markdownCode'] = { "guibg": NONE, "guifg": BLUE }

" CYAN
let Colors['jsDestructuringBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsNoise'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsObjectBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsFuncParens'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsFuncBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsIfElseBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsModuleBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['jsTemplateBraces'] = { "guibg": NONE, "guifg": CYAN }
let Colors['Special'] = { "guibg": NONE, "guifg": CYAN }
let Colors['SpecialKey'] = { "guibg": NONE, "guifg": CYAN }
let Colors['markdownH1'] = { "guibg": NONE, "guifg": CYAN }
let Colors['markdownH2'] = { "guibg": NONE, "guifg": CYAN }
let Colors['xmlEqual'] = { "guibg": NONE, "guifg": CYAN }

" PURPLE
let Colors['jsReturn'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsOperator'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsFunction'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsConditional'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['xmlAttrib'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsArrowFunction'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsImport'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsExport'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsFrom'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsTry'] = { "guibg": NONE, "guifg": PURPLE }
let Colors['jsCatch'] = { "guibg": NONE, "guifg": PURPLE }

" RED 
let Colors['xmlTag'] = { "guibg": NONE, "guifg": RED }
let Colors['xmlEndTag'] = { "guibg": NONE, "guifg": RED }
let Colors['xmlTagName'] = { "guibg": NONE, "guifg": RED }
let Colors['Error'] = { "guibg": RED, "guifg": FOREGROUND }
let Colors['ErrorMsg'] = { "guibg": RED, "guifg": FOREGROUND }

" hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#260808

" hi Error gui=NONE guifg=NONE guibg=#260808
" hi ErrorMsg gui=NONE guifg=NONE guibg=#260808


for key in keys(Colors)
  let s:colors = Colors[key]
  
  if has_key(s:colors, 'gui')
    let gui = s:colors['gui']
  else
    let gui = 'NONE'
  endif

  if has_key(s:colors, 'guifg')
    let guifg = s:colors['guifg']
  else
    let guifg = 'NONE'
  endif

  if has_key(s:colors, 'guibg')
    let guibg = s:colors['guibg']
  else
    let guibg = 'NONE'
  endif

  if has_key(s:colors, 'term')
    let term = s:colors['term']
  else
    let term = 'NONE'
  endif

  if has_key(s:colors, 'cterm')
    let cterm = s:colors['cterm']
  else
    let cterm = 'NONE'
  endif

  if has_key(s:colors, 'ctermfg')
    let ctermfg = s:colors['ctermfg']
  else
    let ctermfg = 'NONE'
  endif

  if has_key(s:colors, 'ctermbg')
    let ctermbg = s:colors['ctermbg']
  else
    let ctermbg = 'NONE'
  endif

  if has_key(s:colors, 'guisp')
    let guisp = s:colors['guisp']
  else
    let guisp = 'NONE'
  endif

  if key =~ '^\k*$'
    execute "hi ".key." term=".term." cterm=".cterm." gui=".gui." ctermfg=".ctermfg." guifg=".guifg." ctermbg=".ctermbg." guibg=".guibg." guisp=".guisp
  endif
endfor

hi Boolean gui=NONE guifg=#79d0f6 guibg=NONE
hi ColorColumn gui=NONE guifg=NONE guibg=#1a1a1a
hi Conceal gui=NONE guifg=#808080 guibg=NONE
hi Conditional gui=NONE guifg=#8f8f8f guibg=NONE
hi Constant gui=NONE guifg=#808080 guibg=NONE
hi Cursor gui=reverse guifg=NONE guibg=NONE
hi CursorColumn gui=NONE guifg=NONE guibg=#1a1a1a
hi CursorLine gui=NONE guifg=NONE guibg=#1a1a1a
hi CursorLineNr gui=NONE guifg=#707070 guibg=NONE
hi DiffAdd gui=NONE guifg=NONE guibg=#082608
hi DiffChange gui=NONE guifg=NONE guibg=#1a1a1a
hi DiffDelete gui=NONE guifg=NONE guibg=#260808
hi DiffText gui=NONE guifg=NONE guibg=#333333
hi Directory gui=NONE guifg=#8f8f8f guibg=NONE
hi FoldColumn gui=NONE guifg=#616161 guibg=NONE
hi Folded gui=NONE guifg=#707070 guibg=NONE
hi Ignore gui=NONE guifg=NONE guibg=NONE
hi IncSearch gui=NONE guifg=NONE guibg=#333333
hi LineNr gui=NONE guifg=#3A3F58 guibg=NONE
hi MatchParen gui=NONE guifg=NONE guibg=#333333
hi ModeMsg gui=NONE guifg=NONE guibg=NONE
hi MoreMsg gui=NONE guifg=NONE guibg=NONE
hi NonText gui=NONE guifg=#616161 guibg=NONE
hi Number gui=NONE guifg=#fac7f9 guibg=NONE
hi Pmenu gui=NONE guifg=NONE guibg=#1a1a1a
hi PmenuSbar gui=NONE guifg=NONE guibg=#262626
hi PmenuSel gui=NONE guifg=NONE guibg=#333333
hi PmenuThumb gui=NONE guifg=NONE guibg=#424242
hi Question gui=NONE guifg=NONE guibg=NONE
hi SignColumn gui=NONE guifg=#616161 guibg=NONE
hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#082608
hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626
hi Statement gui=NONE guifg=#8adeff guibg=NONE
hi StatusLine gui=NONE guifg=#9e9e9e guibg=#262626
hi StatusLineNC gui=NONE guifg=#707070 guibg=#262626
hi StorageClass gui=NONE guifg=#c894eb guibg=NONE
hi String gui=NONE guifg=#c3e88d guibg=NONE
hi TabLine gui=NONE guifg=#707070 guibg=#262626
hi TabLineFill gui=NONE guifg=NONE guibg=#262626
hi TabLineSel gui=NONE guifg=#9e9e9e guibg=#262626
hi Title gui=NONE guifg=#808080 guibg=NONE
hi Todo gui=standout guifg=NONE guibg=NONE
hi Type gui=NONE guifg=#8f8f8f guibg=NONE
hi Underlined gui=NONE guifg=NONE guibg=NONE
hi VisualNOS gui=NONE guifg=NONE guibg=NONE
hi WarningMsg gui=NONE guifg=NONE guibg=#260808
hi WildMenu gui=NONE guifg=NONE guibg=#525252
hi lCursor gui=NONE guifg=NONE guibg=NONE
hi Identifier gui=NONE guifg=#82AAFF guibg=NONE
hi PreProc gui=NONE guifg=NONE guibg=NONE


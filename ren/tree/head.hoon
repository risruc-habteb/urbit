::
::::  /hoon/head/tree/ren
  ::
::
/?    310
/=    tub    /$  |=({bem/beam *} (flop s.bem))
/=    aut
  /$  %+  cork  fuel                                    :: after parsing params,
      |=  gas/epic  ^-  ?                               :: check that the fcgi
      %+  lien  (~(tap in (~(get ju aut.ced.gas) %$)))  :: has an identity
      |=(a/knot !=(%pawn (clan (slav %p a))))           :: which isn't a comet
/=    dbg
  /^  {nopack/? nomin/?}
  /$  %+  cork  fuel                                    :: after parsing params,
      |=  gas/epic  ^-  {? ?}                           :: check if the query
      :-  (~(has by qix.gas) 'dbg.nopack')              :: dictates separate files
      (~(has by qix.gas) 'dbg.nomin')                   :: and/or unminified assets
::
|%
++  cdnjs
  |=(a/tape "//cdnjs.cloudflare.com/ajax/libs/{a}{?:(nomin.dbg "" ".min")}.js")
++  maxcdn
  |=(a/tape "//maxcdn.bootstrapcdn.com/{a}{?:(nomin.dbg "" ".min")}.js")
--
!:
::::
  ::
^-  marl
;=  ;title: Tree
    ;meta(name "viewport", content "width=device-width, initial-scale=1");
::     ;link(type "text/css", rel "stylesheet", href "//cdnjs.cloudflare.com/ajax/libs/codemirror/4.3.0/codemirror.min.css");
    ;*  ?.  nopack.dbg
          :_  ~
          ;link(type "text/css", rel "stylesheet", href "/=home=/web/tree/~.main_codemirror_fonts_bootstrap.css");
::           ;link(type "text/css", rel "stylesheet", href "/=home=/web/tree/~.main_codemirror_bootstrap.css");
        ;=
          ;link(type "text/css", rel "stylesheet", href "/=home=/web/lib/css/fonts.css");
          ;link(type "text/css", rel "stylesheet", href "/=home=/web/lib/css/bootstrap.css");
          ;link(type "text/css", rel "stylesheet", href "/=home=/web/lib/css/codemirror.css");
          ;link(type "text/css", rel "stylesheet", href "/=home=/web/tree/main.css");
        ==
    ::;link(type "text/css", rel "stylesheet", href "http://localhost:8000/docs/pub/tree/main.css");
    ;script(type "text/javascript", src "{(cdnjs "jquery/2.1.3/jquery")}");
    ;script(type "text/javascript", src "{(maxcdn "bootstrap/3.3.6/js/bootstrap")}");
    ;script(type "text/javascript", src "{(cdnjs "lodash.js/2.4.1/lodash")}");
    ;script(type "text/javascript", src "{(cdnjs "react/0.14.6/react")}");
    ;script(type "text/javascript", src "{(cdnjs "react/0.14.6/react-dom")}");
    ;script(type "text/javascript", src "{(cdnjs "flux/2.1.1/Flux")}");
::     ;script(type "text/javascript", src "//cdnjs.cloudflare.com/ajax/libs/codemirror/4.3.0/codemirror.js");
::     ;script(type "text/javascript", src "//cdnjs.cloudflare.com/ajax/libs/".
::       "codemirror/4.3.0/mode/markdown/markdown.min.js");
    ;*  ?.  nopack.dbg 
          :_  ~
          ;script(type "text/javascript", src "{?.(aut "" "/~~")}".
                                            "/~/at/=home=/web/tree/~.main_urb.js");
::                                             "/~/at/=home=/web/tree/~.main_hoon_urb.js");
        ;=
::           ;script(type "text/javascript", src "/=home=/web/lib/js/hoon.js");
          ;script(type "text/javascript", src "/=home=/web/tree/main.js");
          ;script(type "text/javascript", src "{?.(aut "" "/~~")}".
                                              "/~/at/=home=/web/lib/js/urb.js");
        ==
    ;link(type "application/rss+xml", rel "alternate", href "{(spud tub)}.rss-xml");
==

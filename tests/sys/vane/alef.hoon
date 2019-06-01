/+  *test
/=  alef  /:  /===/sys/vane/alef
          /!noun/
::
=/  vane  (alef !>(..zuse))
=/  lane-foo=lane:alef  `@uxlane``@`'lane-foo'
::
=/  items-from-keys
  |=  keys=(list @ud)
  %+  turn  keys
  |=  k=@ud
  [k `@tas`(add k %a)]
::
=/  test-items=(list [@ud @tas])
  (items-from-keys (gulf 0 6))
::
=/  atom-map  ((ordered-map:alef @ud @tas) lte)
::
|%
::
+|  %ordered-map
::
++  test-ordered-map-gas  ^-  tang
  ::
  =/  a=(tree [@ud @tas])  (gas:atom-map ~ test-items)
  ::
  %+  expect-eq
    !>  %.y
    !>  (check-balance:atom-map a)
::
++  test-ordered-map-tap  ^-  tang
  ::
  =/  a=(tree [@ud @tas])  (gas:atom-map ~ test-items)
  ::
  %+  expect-eq
    !>  test-items
    !>  (tap:atom-map a)
::
++  test-ordered-map-pop  ^-  tang
  ::
  =/  a=(tree [@ud @tas])  (gas:atom-map ~ test-items)
  ::
  %+  expect-eq
    !>  [[0 %a] (gas:atom-map ~ (items-from-keys (gulf 1 6)))]
    !>  (pop:atom-map a)
::
++  test-ordered-map-peek  ^-  tang
  ::
  =/  a=(tree [@ud @tas])  (gas:atom-map ~ test-items)
  ::
  %+  expect-eq
    !>  `[0 %a]
    !>  (peek:atom-map a)
::
++  test-ordered-map-nip  ^-  tang
  ::
  =/  a=(tree [@ud @tas])  (gas:atom-map ~ test-items)
  ::
  =/  b  (nip:atom-map a)
  ::
  %+  expect-eq
    !>  (gas:atom-map ~ ~[[0^%a] [1^%b] [2^%c] [3^%d] [4^%e] [5^%f]])
    !>  b
::
++  test-ordered-map-traverse  ^-  tang
  ::
  =/  a=(tree [@ud @tas])  (gas:atom-map ~ test-items)
  ::
  =/  b  %-  (traverse:atom-map ,(list [@ud @tas]))
         :*  a
             start=`3
             state=~
             ::
             |=  [s=(list [@ud @tas]) k=@ud v=@tas]
             :+  ?:  =(3 k)
                   ~
                 [~ `@tas`+(v)]
               =(5 k)
             [[k v] s]
         ==
  ::
  ;:  weld
    %+  expect-eq
      !>  (gas:atom-map ~ ~[[0^%a] [1^%b] [2^%c] [4^%f] [5^%g] [6^%g]])
      !>  +.b
  ::
    %+  expect-eq
      !>  ~[[5^%f] [4^%e] [3^%d]]
      !>  -.b
  ==
::
++  test-ordered-map-traverse-null-start  ^-  tang
  ::
  =/  a=(tree [@ud @tas])  (gas:atom-map ~ test-items)
  ::
  =/  b  %-  (traverse:atom-map ,(list [@ud @tas]))
         :*  a
             start=~
             state=~
             ::
             |=  [s=(list [@ud @tas]) k=@ud v=@tas]
             :+  ?:  =(3 k)
                   ~
                 [~ `@tas`+(v)]
               =(5 k)
             [[k v] s]
         ==
  ::
  ;:  weld
    %+  expect-eq
      !>  (gas:atom-map ~ ~[[0^%b] [1^%c] [2^%d] [4^%f] [5^%g] [6^%g]])
      !>  +.b
  ::
    %+  expect-eq
      !>  (flop (items-from-keys (gulf 0 5)))
      !>  -.b
  ==
::
++  test-ordered-map-uni  ^-  tang
  ::
  =/  a=(tree [@ud @tas])  (gas:atom-map ~ (scag 4 test-items))
  =/  b=(tree [@ud @tas])  (gas:atom-map ~ (slag 4 test-items))
  ::
  =/  c  (uni:atom-map a b)
  ::
  %+  expect-eq
    !>  (gas:atom-map ~ test-items)
    !>  c
::
+|  %vane
::
++  test-packet-encoding  ^-  tang
  ::
  =/  =packet:alef
    :*  [sndr=~nec rcvr=~doznec-doznec]
        encrypted=%.n
        origin=~
        content=[12 13]
    ==
  ::
  =/  encoded  (encode-packet:alef packet)
  =/  decoded  (decode-packet:alef encoded)
  ::
  %+  expect-eq
    !>  packet
    !>  decoded
::
++  test-alien-encounter  ^-  tang
  ::
  =/  =packet:alef
    :*  [sndr=~nec rcvr=~doznec-doznec]
        encrypted=%.y
        origin=~
        content=%double-secret
    ==
  =/  =blob:alef  (encode-packet:alef packet)
  ::
  =/  event-args
    [our=~doznec-doznec eny=0xdead.beef now=~2222.2.2 *sley]
  ::
  =/  res
    (call:(vane event-args) ~[//unix] *type %hear lane-foo blob)
  ::
  ;:  weld
    %+  expect-eq
      !>  [~[//unix] %pass /alien %j %pubs ~nec]~
      !>  -.res
  ::
    %+  expect-eq
      !>  [%alien [lane-foo packet]~ ~]
      !>  (~(got by peers.ames-state.+.res) ~nec)
  ==
--

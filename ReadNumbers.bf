
//**** スペース区切りの数値を読み込む *******************


>>+
[
    -<,

    ----- ----- // 改行コード(10)をチェック
    [
        ---------- ---------- -- // 空白(32)をチェック
        [
            ---------- ------// 数字にキャスト
            <[->>+<<]
            >>[-<<++++++++++>>]
            <[-<+>]
            >+<
        ]
        +>[-<->]< //Not
        [
            -
             //空白の数だけポインタ移動を記述(必要があれば空白でなくても可)

            > //次のポインタに
        ]
        >+<
    ]
    >
]<


//**********************************************

//**** スペース区切りの数値を読み込む *******************
>>+
[-<,----- -----[---------- ---------- --
  [---------- ------<[->>+<<]>>[-<<++++++++++>>]<[-<+>]>+<]
  +>[-<->]< [- /* */ > ]>+<
]>]<
//**********************************************
//101のオフセットを与えた数値の読み取り
>>>+
[-<,----- -----[ >++++[-<----->]<-- [ >++++[-<---->]+<+++
[>-<---<[->>+<<]>>[-<<++++++++++>>]<[-<+>]]>[-<<<+>>>]+<]+>[-<->]< 
[- <<[->>+<<]+>>[-<[-<->]>]<[-<+>]++++++++++[-<++++++++++>] >> ]>+<]>]<
<<[->>+<<]+>>[-<[-<->]>]<[-<+>]++++++++++[-<++++++++++>]
//
//Ourput Number (not 0)
[>[-]>[-]>[-]>[-]>[-]>[-]<<+<<<<[->>+<<]>>[>>>+++++++++[-<<<[-<<+>>>]>[<]>>]<<<[-<+<[-]>>>]>[<]<]<<+>]>>++++++[-<++++++++>]<-[-<<[+<]>[>]>]<<[.[-]<]
//*********************************************************************************************************

//Ourput Number
>[-]+<
[
  [>[-]>[-]>[-]>[-]>[-]>[-]<<+<<<<[->>+<<]>>[>>>+++++++++[-<<<[-<<+>>>]>[<]>>]<<<[-<+<[-]>>>]>[<]<]<<+>]
  >>++++++[-<++++++++>]
  <-[-<<[+<]>[>]>]<<
  [.[-]<]
]
>[
[-]
  ++++++++++ ++++++++++ ++++++++++ ++++++++++ ++++++++.>
]
//*********************************************************************************************************

/***********正負判定込みの数値読取
>>
>>+
[-<,----- -----[ >++++[-<----->]<-- 
  [ 
    >++++[-<---->]<
    >+<
    +++
    [
      >-<---<[->>+<<]>>[-<<++++++++++>>]<[-<+>]
    ]
    >[-<<<+>>>]<
    >+<
  ]
  +>[-<->]< [- /* */ >> ]>+<
]>]<
/******************
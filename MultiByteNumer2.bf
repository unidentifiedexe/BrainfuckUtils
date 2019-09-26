1桁1byteのメモリで管理する10進数マルチバイト変数

/**************************************************/
#region 数値読み取り
  +>+>+>+>+> +>+> //桁数
  >+[-<
    ,+[-----------[----------------------
      [--------------<-[+<-]>[[-<+>]>]+<]
    ]]>
  ]
  <<-[+<-]+>[->]<
#endregion
/**************************************************/
#region デクリメント
  [-[>[+++++++++>]>]+<]>-<< >>>[<+[+++++++++>]>>]<<<
#endregion
/**************************************************/
#region 負にならないデクリメント　( if (x gt 0 ) Dec(x);)
  [-[>[+++++++++>]>]+<]>-<< >>>[<+[>]>>]<<<
#endregion
/**************************************************/
#region 出力
  +[<]>[-[+[>]]<+>>] ++++++[-<-------->]<+<--> [[<]>[+>]<]<[<]>[.>]
  >++++++[-<++++++++>]<- [[<]>[->]<]<[<]<[[->+<]<]>>[>]<　//数値復帰部
#endregion
/**************************************************/
#region 前の値に加算
  //start  ___{ a }___{ b*}___
  //resilt ___{res}___{ b*}___
  [
    [<] {} <[<]<<[->>+<<]>>[>]> {} [>]>+<<-
    [ [<] {} <[<]>+[>]> {} [>] >+<<- ] <
  ]
  {} <[<]<<[<]>
  [[-<+>]>]>>[[-<<<+>>>]>]<<<<
  [ 
    [->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[ 
      [->+<]>----------< <[+>]>[<]
    ]]]]]]]]]]]<
  ]
  >>[>]>>>{}>>[[-<<+>>]>]<<<
#endregion
/**************************************************/
#region 次の値に加算
  //start  ___{ a*}___{ b*}___
  //resilt ___{ a*}___{res}___
  //notice b の桁が a 以上である必要があります
  [
    -
    [ ->>+[>]> {} [>]<+[<] {} <[<]< ]
    >>+[>]> {} [>]<
    [->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[ 
      [->+<]>----------< <[+>]>[<]
    ]]]]]]]]]]]
    <[<] {} <[<]<<
  ]
  >>>[[-<<+>>]>]>[>]<
  [
    [->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[ 
      [->+<]>----------< <[+>]>[<]
    ]]]]]]]]]]]
    <
  ]
  >>[[-<+>]>]<<[<]{}<<<
#endregion
/**************************************************/
#region 次の値から減算
  //start  ___{ a*}___{ b }___
  //resilt ___{ a*}___{res}___
  //notice b の桁が a 以上である必要があります。
  //       アンダーフロー処理済み
  > >>> {}<++>{}<<< <
  [<]>[[-<<+>>]>]
  <<<
  [
    -[ ->>+[>]>>> {} [>]< [-[<]] <[>++++++++++< [-[<]]< ]> {} <<<[<]< ]
    >>+[>]>>> {} [>]<
    [->+<]<[<]{} <<<[<]<<
  ]
  >>>[>]>>> {}<[-]>>>[[-<+>]>]<<
  [<] {} <<<
#endregion
/**************************************************/
#region 比較
  //start  ___{ a }___{ b*}___
  //resilt ___{ a }_x_{ b*}___
  //notice 桁数が同じである必要があります
  //x : 0 if same / 1 if a lt b / 2 if a gt b
  #region メイン比較部
  [[->>+<<]<]
  <<<[<]>
  [
    -<<+>>
    [>[>]>-<<[<]<+>>-]
    >[>]>>>[>]>>
    -<<+>>
    [-<<+[<]<+>>[>]>]
    <<[<]<
    [
      <->>+<
      -[-[-[-[-[-[-[-[-[-[[+]>+<]]]]]]]]]]
    ]
    <+
    [- <[<]]>
  ]
  >[<]
  >[-<+>]<
  #endregion
  #region 後処理部
  <<[<]<<[[->>+<<]<]>>>[>]>>>[>]>>[[-<<+>>]>]<<<
  #endregion
#endregion
/**************************************************/
#region Swap
  //start  ___{ a }___{ b*}___
  //resilt ___{ b }___{ a*}___
  //notice 桁数が同じである必要があります
  [[->>+<<]<]
  >>>
  [
    -<<+>>
    [<<[<]{}<<<[<]<+>>[>]>>>{}[>]>-]
    <<[<]{}<<<[<]>
    -<<+>>
    [[>]>>>{}[>]<+[<]{}<<<[<]>-]
    >[>]>>>{}[>]>>
  ]
  <<<[<]{}<<<<<[[->>+<<]<]>>>[>]>>>{}[>]<
#endregion
/**************************************************/
#region IsTrue
  // note 非ゼロ判定します
  //start  ___{ a*}___
  //resilt ___{ a*}_x_
  //x : 0 if 0  1 if not 0
  [-[+[>]>]+<] <[[<]<]>>[>]<
#endregion
/**************************************************/
#region 符号反転
  [-[>[+++++++++>]>]+<]>->[<+[+++++++++>]>>]<<<
  [ >++++++++++< -[->-<] <]
  >>[[-<+>]>]<<
#endregion
/**************************************************/
#region Abs
  [<]>
  -[+
    [>]<
    [-[>[+++++++++>]>]+<]>-<<
    [ >++++++++++< -[->-<] <]
    >>[[-<+>]>]<<
    [<]>[-]
  ]+
  [>]<
#endregion
/**************************************************/

#region Next Is Bigger
  //start  ___{ a }___{    b*    }___
  //resilt ___{ a }___{ Max(a b)*}___
  //notice 桁数が同じである必要があります
  #region メイン比較部
  [[->>+<<]<]
  <<<[<]>
  [
    -<<+>>
    [>[>]>-<<[<]<+>>-]
    >[>]>>>[>]>>
    -<<+>>
    [-<<+[<]<+>>[>]>]
    <<[<]<
    [
      <->>+<
      -[-[-[-[-[-[-[-[-[-[[+]>+<]]]]]]]]]]
    ]
    <+
    [- <[<]]>
  ]
  >[<]
  >[-<+>]<
  #endregion
  #region 値の移し替え
  [-[-
    >>[>]<[-]+[<]<<<[<]
    <<
    -[->+>>[>]>>>[>]<+[<]<<<[<]<<]+>[-<+>]
    >>
    [
      [>]>>>[>]+>>[-]<<[<]<<<[<]<+>>-
      [ [>]>>>[>]<+[<]<<<[<]<+>>-]
      >
    ]
    >
  ]]
  
  #endregion
  
  #region 後処理部
  <<[<]<<[[->>+<<]<]>>>[>]>>>[>]>>[[-<<+>>]>]<<<
  #endregion
#endregion


/**************************************************/
#region Prev Is Bigger
  //start  ___{     a    }___{ b*}___
  //resilt ___{ Max(a b) }___{ b*}___
  //notice 桁数が同じである必要があります
  #region メイン比較部
  [[->>+<<]<]
  <<<[<]>
  [
    -<<+>>
    [>[>]>-<<[<]<+>>-]
    >[>]>>>[>]>>
    -<<+>>
    [-<<+[<]<+>>[>]>]
    <<[<]<
    [
      <->>++<
      -[-[-[-[-[-[-[-[-[-[[+]>-<]]]]]]]]]]
    ]
    <+
    [- <[<]]>
  ]
  >[<]
  >[-<+>]<
  #endregion
  #region 値の移し替え
  [-[-
    
    
    <<[<]<<[-]>>+>[[-]+>]>>>[>]<[->>+<<]>>
    [
      -<<+[<]<<<[<]<+>>->[>]>>>[>]>
      [-<<+[<]<<<[<]<<+>>>[>]>>>[>]>]
      >
    ]
    <<<[<]<
  ]]
  
  #endregion
  
  #region 後処理部
  <<[<]<<[[->>+<<]<]>>>[>]>>>[>]>>[[-<<+>>]>]<<<
  #endregion
#endregion



/**************************************************/
インクリメント(オバーフロー処理なし)
>+[-<[->+>+<<]>[-[-[-[-[-[-[-[-[-[-<+>>[-]<]]]]]]]]]]>+<<]>>[[-<<+>>]>]<<<

/**************************************************/
#region 正規化
[
  [->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[ 
    [->+<]>----------< <+>
  ]]]]]]]]]]]
  <
]
>>[[-<+>]>]
#endregion
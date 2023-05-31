<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <assign|chapter-nr|6><chapter|The integer numbers>

  TODO

  <section|Definition and arithmetic>

  One major defect of <math|\<bbb-N\><rsub|0>> is that <math|n-m>, defined to
  be the unique number such that <math|<around*|(|n-m|)>+m=n>, is only
  defined for <math|m\<leqslant\>n>. If this limitation didn't exist then we
  can easely find a inverse for a number <math|n>, just take <math|-n=0-n>
  then <math|<around*|(|-n|)>+n=<around*|(|0-n|)>+n=0>. So how to extend
  <math|n-m>, first note that <math|n-m> consist of two number so we can
  always write this as a pair. So <math|<around*|(|n,m|)>> is to be
  interpreted as <math|n-m> even if <math|m\<nleqslant\>n>, members of
  <math|\<bbb-N\><rsub|0>> are then represented by <math|<around*|(|n,0|)>>
  as <math|n-0=n>. However we hit a problem, the same number has many
  representations as a<space|1em>pair, for example as <math|3=3-0=4-1=5-2>
  the natural number <math|3> would have the representations
  <math|<around*|(|3,0|)>,<around*|(|4,1|)>,<around*|(|5,2|)>>, etc. How can
  we solve this? If <math|<around*|(|n,m|)>> and
  <math|<around*|(|n<rprime|'>,m<rprime|'>|)>> are two representations of the
  same number then in our formal interpretion we would have that
  <math|n-m=n<rprime|'>-m<rprime|'>> which formally gives
  <math|n+m<rprime|'>=m+n<rprime|'>>. So it is natural to say that two pairs
  <math|<around*|(|n,m|)>>, <math|<around*|(|n<rprime|'>,m<rprime|'>|)>>
  satisfying <math|n+m<rprime|'>=m+n<rprime|'>> represent the same number.
  The way to do this is to define a equivalence relation whose equivalence
  class are the numbers. This is what we will do in this chapter.

  <\theorem>
    <label|integers equivalence relation>The relation
    <math|\<sim\>\<subseteq\><around*|(|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>|)>\<times\><around*|(|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>|)>>
    defined by

    <\equation*>
      \<sim\>=<around*|{|<around*|(|<around*|(|n,m|)>,<around*|(|n<rprime|'>,m<rprime|'>|)>|)>\|n+m<rprime|'>=m+n<rprime|'>|}>
    </equation*>

    is a equivalence relation.\ 
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexivity>If <math|<around*|(|n,m|)>\<in\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
      then <math|n+m\<equallim\><rsub|<text|[theorem: <reference|natural
      numbers sum commutativity>]>>m+n> so that
      <math|<around*|(|n,m|)>\<approx\><around*|(|n,m|)>>.

      <item*|symmetry>If <math|<around*|(|n,m|)>\<sim\><around*|(|n<rprime|'>,m<rprime|'>|)>>
      then <math|n+m<rprime|'>=m+n<rprime|'>\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|natural numbers sum commutativity>]>>n<rprime|'>+m=m<rprime|'>+n>
      so that <math|<around*|(|n<rprime|'>,m<rprime|'>|)>\<sim\><around*|(|n,m|)>>.

      <item*|transitivity>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|n,m|)>\<sim\><around*|(|n<rprime|'>,m<rprime|'>|)>\<wedge\><around*|(|n<rprime|'>,m<rprime|'>|)>\<sim\><around*|(|n<rprime|''>,m<rprime|''>|)>>|<cell|\<Rightarrow\>>|<cell|n+m<rprime|'>=m+n<rprime|'>\<wedge\>n<rprime|'>+m<rprime|''>=m<rprime|'>+n<rprime|''>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n+m<rprime|'>|)>+<around*|(|n<rprime|'>+m<rprime|''>|)>=<around*|(|m+n<rprime|'>|)>+<around*|(|m<rprime|'>+n<rprime|''>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n+m<rprime|''>|)>+<around*|(|m<rprime|'>+n<rprime|'>|)>=<around*|(|m+n<rprime|''>|)>+<around*|(|n<rprime|'>+m<rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n+m<rprime|''>|)>+<around*|(|n<rprime|'>+m<rprime|'>|)>=<around*|(|m+n<rprime|''>|)>+<around*|(|n<rprime|'>+m<rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n+m<rprime|''>|)>=<around*|(|m+n<rprime|''>|)>>>>>
      </eqnarray*>

      so that <math|<around*|(|n,m|)>\<sim\><around*|(|n<rprime|''>,m<rprime|''>|)>>.
    </description>
  </proof>

  Next we define the set of integers.

  <\definition>
    <label|integers><index|integers>The set of integers <math|\<bbb-Z\>> is
    defined by <math|\<bbb-Z\>/\<sim\>> or in other words\ 

    <\equation*>
      \<bbb-Z\>=<around*|{|\<sim\><around*|[|<around*|(|n,m|)>|]>\|<around*|(|n,m|)>\<in\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>|}>
    </equation*>
  </definition>

  <\theorem>
    <label|integers ~([n,m])~([n+k,m+k)]>If
    <math|\<sim\><around*|[|<around*|(|n,m|)>|]>\<in\>\<bbb-Z\>> then if
    <math|k\<in\>\<bbb-N\><rsub|0>> we have
    <math|\<sim\><around*|[|<around*|(|n,m|)>|]>=\<sim\><around*|[|<around*|(|n+k,m+k|)>|]>>
  </theorem>

  <\proof>
    <math|n+<around*|(|m+k|)>=<around*|(|n+m|)>+k=<around*|(|n+k|)>+m=<around*|(|n+m|)>+k=m+<around*|(|n+l|)>>
    so that <math|<around*|(|n,m|)>\<sim\><around*|(|n+k,m+k|)>>. Hence by
    [theorem: <reference|equivalence relation R[x]=R[y]>]
    <math|\<sim\><around*|[|<around*|(|n,m|)>|]>=\<sim\><around*|[|<around*|(|n+k,m+k|)>|]>>.
  </proof>

  <\theorem>
    <label|integers sum uniqueness>If <math|\<sim\><around*|[|<around*|(|n,m|)>|]>,\<sim\><around*|[|<around*|(|r,s|)>|]>,\<sim\><around*|[|<around*|(|n<rprime|'>,m<rprime|'>|)>|]>>
    and <math|\<sim\><around*|[|<around*|(|r<rprime|'>,s<rprime|'>|)>|]>> are
    elements of <math|\<bbb-Z\>> such that
    <math|\<sim\><around*|[|<around*|(|n,m|)>|]>=\<sim\><around*|[|<around*|(|n<rprime|'>,m<rprime|'>|)>|]>>
    and <math|\<sim\><around*|[|<around*|(|r,s|)>|]>=\<sim\><around*|[|<around*|(|r<rprime|'>,s<rprime|'>|)>|]>>
    then <math|\<sim\><around*|[|<around*|(|n+r,m+s|)>|]>=\<sim\><around*|[|<around*|(|n<rprime|'>+r<rprime|'>,m<rprime|'>+s<rprime|'>|)>|]>>
  </theorem>

  <\proof>
    As <math|\<sim\><around*|[|<around*|(|n,m|)>|]>=\<sim\><around*|[|<around*|(|n<rprime|'>,m<rprime|'>|)>|]>\<wedge\>\<sim\><around*|[|<around*|(|r,s|)>|]>=\<sim\><around*|[|<around*|(|r<rprime|'>,s<rprime|'>|)>|]>>
    we have\ 

    <\equation>
      <label|eq 7.1.022>n+m<rprime|'>=m+n<rprime|'>\<wedge\>r+s<rprime|'>=s+r<rprime|'>
    </equation>

    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|n+r|)>+<rsub|\<bbb-N\><rsub|0>><around*|(|m<rprime|'>+s<rprime|'>|)>>|<cell|=>|<cell|<around*|(|n+m<rprime|'>|)>+<rsub|\<bbb-N\><rsub|0>><around*|(|r+s<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 7.1.022>]>>>|<cell|<around*|(|m+n<rprime|'>|)>+<around*|(|s+r<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|m+s|)>+<around*|(|n<rprime|'>+r<rprime|'>|)>>>>>
    </eqnarray*>

    so that <math|<around*|(|n+r,m+s|)>\<sim\><around*|(|n<rprime|'>+r<rprime|'>,m<rprime|'>+s<rprime|'>|)>>
    proving that\ 

    <\equation*>
      \<sim\><around*|[|<around*|(|n+r,m+s|)>|]>\<equallim\>\<sim\><around*|[|<around*|(|n<rprime|'>+r<rprime|'>,m<rprime|'>+s<rprime|'>|)>|]>
    </equation*>
  </proof>

  The above ensure that the following definition is well defined:

  <\definition>
    The sum operator <math|+:\<bbb-Z\>\<times\>\<bbb-Z\>\<rightarrow\>\<bbb-Z\>>
    is defined by\ 

    <\equation*>
      \<sim\><around*|[|*<around*|(|n,m|)>|]>+\<sim\><around*|[|<around*|(|r,s|)>|]>=\<sim\><around*|[|<around*|(|n+r,m+s|)>|]>
    </equation*>
  </definition>

  <\lemma>
    <label|integers neutral element>If <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|\<sim\><around*|[|<around*|(|n,n|)>|]>=\<sim\><around*|[|<around*|(|0,0|)>|]>>
  </lemma>

  <\proof>
    As <math|n+0=n+0> we have <math|<around*|(|n,n|)>\<sim\><around*|(|0,0|)>>
    so that <math|\<sim\><around*|[|<around*|(|n,n|)>|]>=\<sim\><around*|[|<around*|(|0,0|)>|]>>.
  </proof>

  <\remark>
    Be carefull in the above definition because we use the same symbol
    <math|+> is used for the sum in <math|\<bbb-N\><rsub|0>> and the sum in
    <math|\<bbb-Z\>>. If <math|n,m\<in\>\<bbb-N\><rsub|0>> then <math|n+m> is
    the sum defined for the natural numbers and if <math|n,m\<in\>\<bbb-Z\>>
    then <math|n+m> is the sum defined in <math|\<bbb-Z\>>. So context is
    important. Another reuse of the same symbol is for the neutral element
    <math|0>, so if <math|n\<in\>\<bbb-N\><rsub|0>> then <math|0> in
    <math|n+0> is the neutral element of <math|\<bbb-N\><rsub|0>> and if
    <math|n\<in\>\<bbb-Z\>> then <math|0> in <math|n+0> is the neutral
    element of <math|\<bbb-Z\>>.
  </remark>

  <\theorem>
    <label|integers integers forms a group><index|<math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>><dueto|<math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>><text|
    is a Abelain group>>>so\ 

    <\description>
      <item*|Associativity><math|\<forall\>n,m,k\<in\>\<bbb-Z\>> we have
      <math|<around*|(|n+m|)>+k=n+<around*|(|m+k|)>.>

      <item*|Neutral element><math|\<forall\>n\<in\>\<bbb-Z\>> we have that
      <math|n+0=0+n> where <math|0=\<sim\><around*|[|<around*|(|0,0|)>|]>>.

      <item*|Inverse element><math|\<forall\>n\<in\>\<bbb-Z\>> there exist a
      inverse element <math|-n> such that
      <math|<around*|(|-n|)>+n=0=n+<around*|(|-n|)>>. More specifically if
      <math|x=\<sim\><around*|[|<around*|(|n,m|)>|]>> then
      <math|-x=<around*|[|<around*|(|m,n|)>|]>>.

      <item*|Commutativity><math|\<forall\>n,m\<in\>\<bbb-N\><rsub|0>> we
      have <math|n+m=m+n>.
    </description>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|Associativity>If <math|n=\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>>,<math|m=\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>>
      and <math|k=\<sim\><around*|[|<around*|(|n<rsub|3>,m<rsub|3>|)>|]>>
      then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|n+m|)>+k>|<cell|=>|<cell|<around*|(|\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>+\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>|)>+\<sim\><around*|[|<around*|(|n<rsub|3>,m<rsub|3>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|1>+n<rsub|2>,m<rsub|1>+m<rsub|2>|)>|]>+\<sim\><around*|[|<around*|(|n<rsub|3>,m<rsub|3>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|\<sim\><around*|(|<around*|(|n<rsub|1>+n<rsub|2>|)>+n<rsub|3>,<around*|(|m<rsub|1>+m<rsub|2>|)>+m<rsub|3>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|1>+<around*|(|n<rsub|2>+n<rsub|3>|)>,m<rsub|1>+<around*|(|m<rsub|2>+m<rsub|3>|)>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>+\<sim\><around*|[|<around*|(|n<rsub|2>+n<rsub|3>|\<nobracket\>>,<around*|\<nobracket\>|m<rsub|2>+m<rsub|3>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>+<around*|(|\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>+\<sim\><around*|[|<around*|(|n<rsub|3>,m<rsub|3>|)>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|n+<around*|(|m+k|)>>>>>
      </eqnarray*>

      <item*|Commutatitivity>If <math|n=\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>>
      and <math|m=\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>+\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|1>+n<rsub|2>,m<rsub|1>+m<rsub|2>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|2>+n<rsub|1>,m<rsub|2>+m<rsub|1>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>+\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>>>>>
      </eqnarray*>

      <item*|Neutral element>If <math|k=\<sim\><around*|[|<around*|(|n,m|)>|]>\<in\>\<bbb-Z\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|k+0>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|0+n>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n,m|)>|]>+\<sim\><around*|[|<around*|(|0,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n+0,m+0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n,m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|k>>>>
      </eqnarray*>

      <item*|Inverse element>If <math|k=\<sim\><around*|[|<around*|(|n,m|)>|]>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|k+<around*|(|-k|)>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<around*|(|-k|)>+k>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|m,n|)>|]>+\<sim\><around*|[|<around*|(|n,m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|m+n,n+m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n+m,n+m|)>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[throrem:
        <reference|integers neutral element>]>>>|<cell|\<sim\><around*|[|<around*|(|0,0|)>|]>>>>>
      </eqnarray*>
    </description>
  </proof>

  <\remark>
    Next we are gooing to define multiplication in <math|\<bbb-Z\>>, again we
    will reuse symbols for simplicity, So if
    <math|n,m\<in\>\<bbb-N\><rsub|0>> then <math|n\<cdot\>m> is
    mulitiplication in <math|\<bbb-N\><rsub|0>> and if
    <math|n,m\<in\>\<bbb-N\><rsub|0>> then <math|n\<cdot\>m> is
    multiplication in <math|\<bbb-Z\>>. Likewise <math|1> could be the
    neutral element in <math|\<bbb-N\><rsub|0>> or <math|\<bbb-Z\>>.
  </remark>

  <\definition>
    <label|integers difference>Let <math|n,m\<in\>\<bbb-Z\><rsup|+><rsub|0>>
    then we have <math|n-m=n+<around*|(|-m|)>>.
  </definition>

  <\theorem>
    <label|integers multiplication equivalence>If
    <math|\<sim\><around*|[|<around*|(|n,m|)>|]>,\<sim\><around*|[|<around*|(|r,s|)>|]>,\<sim\><around*|[|<around*|(|n<rprime|'>,m<rprime|'>|)>|]>>
    and <math|\<sim\><around*|[|<around*|(|r<rprime|'>,s<rprime|'>|)>|]>> are
    elements of <math|\<bbb-Z\>> such that
    <math|\<sim\><around*|[|<around*|(|n,m|)>|]>=\<sim\><around*|[|<around*|(|n<rprime|'>,m<rprime|'>|)>|]>>
    and <math|\<sim\><around*|[|<around*|(|r,s|)>|]>=\<sim\><around*|[|<around*|(|r<rprime|'>,s<rprime|'>|)>|]>>
    then\ 

    <\equation*>
      \<sim\><around*|[|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>|]>=\<sim\><around*|[|<around*|(|n<rprime|'>\<cdot\>r<rprime|'>+m<rprime|'>\<cdot\>s<rprime|'>,m<rprime|'>\<cdot\>r<rprime|'>+n<rprime|'>\<cdot\>s<rprime|'>|)>|]>
    </equation*>
  </theorem>

  <\proof>
    As <math|\<sim\><around*|[|<around*|(|n,m|)>|]>=\<sim\><around*|[|<around*|(|n<rprime|'>,m<rprime|'>|)>|]>\<wedge\>\<sim\><around*|[|<around*|(|r,s|)>|]>=\<sim\><around*|[|<around*|(|r<rprime|'>,s<rprime|'>|)>|]>>
    we have\ 

    <\equation>
      <label|eq 7.2.022>n+m<rprime|'>=m+n<rprime|'>\<wedge\>r+s<rprime|'>=s+r<rprime|'>
    </equation>

    So we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>r+m<rprime|'>\<cdot\>r>|<cell|=>|<cell|<around*|(|n+m<rprime|'>|)>\<cdot\>r>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 7.2.022>]>>>|<cell|<around*|(|m+n<rprime|'>|)>\<cdot\>r>>|<row|<cell|>|<cell|=>|<cell|m\<cdot\>r+n<rprime|'>\<cdot\>r>>|<row|<cell|m\<cdot\>s+n<rprime|'>\<cdot\>s>|<cell|=>|<cell|<around*|(|m+n<rprime|'>|)>\<cdot\>s>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 7.2.022>]>>>|<cell|<around*|(|n+m<rprime|'>|)>\<cdot\>s>>|<row|<cell|>|<cell|=>|<cell|n\<cdot\>s+m<rprime|'>\<cdot\>s>>|<row|<cell|m<rprime|'>\<cdot\>s+m<rprime|'>\<cdot\>r<rprime|'>>|<cell|=>|<cell|m<rprime|'>\<cdot\><around*|(|s+r<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 7.2.022>]>>>|<cell|m<rprime|'>\<cdot\><around*|(|r+s<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|m<rprime|'>\<cdot\>r+m<rprime|'>\<cdot\>s<rprime|'>>>|<row|<cell|n<rprime|'>\<cdot\>r+n<rprime|'>\<cdot\>s<rprime|'>>|<cell|=>|<cell|n<rprime|'>\<cdot\><around*|(|r+s<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 7.2.022>]>>>|<cell|n<rprime|'>\<cdot\><around*|(|s+r<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|n<rprime|'>\<cdot\>s+n<rprime|'>\<cdot\>r<rprime|'>>>>>
    </eqnarray*>

    so after summing, here common terms are underlined,

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>r+<wide*|m<rprime|'>\<cdot\>r|\<wide-underbrace\>><rsub|1>+m\<cdot\>s+<wide*|n<rprime|'>\<cdot\>s|\<wide-underbrace\>><rsub|2>+<wide*|m<rprime|'>\<cdot\>s|\<wide-underbrace\>><rsub|3>+m<rprime|'>\<cdot\>r<rprime|'>+<wide*|n<rprime|'>\<cdot\>r|\<wide-underbrace\>><rsub|4>+n<rprime|'>\<cdot\>s<rprime|'>>|<cell|=>|<cell|>>|<row|<cell|m\<cdot\>r+<wide*|n<rprime|'>\<cdot\>r|\<wide-underbrace\>><rsub|4>+n\<cdot\>s+<wide*|m<rprime|'>\<cdot\>s|\<wide-underbrace\>><rsub|3>+<wide*|m<rprime|'>\<cdot\>r|\<wide-underbrace\>><rsub|1>+m<rprime|'>\<cdot\>s<rprime|'>+<wide*|n<rprime|'>\<cdot\>s|\<wide-underbrace\>><rsub|2>+n<rprime|'>\<cdot\>r<rprime|'>>|<cell|>|<cell|>>>>
    </eqnarray*>

    Using [theorem: <reference|natural numbers n+k=m+k\<less\>=\<gtr\>n=m>]
    to eliminate common terms in the above gives:

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>r+m\<cdot\>s+m<rprime|'>\<cdot\>r<rprime|'>+n<rprime|'>\<cdot\>s<rprime|'>>|<cell|=>|<cell|m\<cdot\>r+n\<cdot\>s+m<rprime|'>\<cdot\>s<rprime|'>+n<rprime|'>\<cdot\>r<rprime|'>>>>>
    </eqnarray*>

    So that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>>|<cell|\<sim\>>|<cell|<around*|(|n<rprime|'>\<cdot\>r<rprime|'>+m<rprime|'>\<cdot\>s<rprime|'>,m<rprime|'>\<cdot\>r<rprime|'>+n<rprime|'>\<cdot\>s<rprime|'>|)>>>>>
    </eqnarray*>

    Hence\ 

    <\equation*>
      \<sim\><around*|[|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>|]>=\<sim\><around*|[|<around*|(|n<rprime|'>\<cdot\>r<rprime|'>+m<rprime|'>\<cdot\>s<rprime|'>,m<rprime|'>\<cdot\>r<rprime|'>+n<rprime|'>\<cdot\>s<rprime|'>|)>|]>
    </equation*>
  </proof>

  The above theorem ensures that the following definition is sensible.

  <\definition>
    <label|integers multiplication>The muliplication operator
    <math|\<cdot\>:\<bbb-Z\>\<times\>\<bbb-Z\>\<rightarrow\>\<bbb-Z\>> is
    defined by\ 

    <\equation*>
      \<sim\><around*|[|<around*|(|n,m|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|r,s|)>|]>=\<sim\><around*|[|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>|]>
    </equation*>
  </definition>

  <\theorem>
    <label|integers integral domain><math|<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>>
    is a <with|font-series|bold|integral domain >[definition: <reference|ring
    integral domain>] more in detail:

    <\enumerate>
      <item><math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>> is a abelian
      group [see: <reference|integers integers forms a group>]\ 

      <item><math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>> is a
      <with|font-series|bold|Abelian semi-group>.

      <\description>
        <item*|Associativity><math|\<forall\>n,m,k\<in\>\<bbb-Z\>> we have
        <math|n\<cdot\><around*|(|m\<cdot\>k|)>=<around*|(|n\<cdot\>m|)>\<cdot\>k>

        <item*|Neutral Element>There exist a
        <math|1=\<sim\><around*|[|<around*|(|1,0|)>|]>> such that
        <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
        <math|n\<cdot\>1=n=1\<cdot\>n>.

        <item*|<math|>Commutativity><math|\<forall\>n,m\<in\>\<bbb-Z\>> we
        have <math|n\<cdot\>m=m\<cdot\>n>.
      </description>

      <item>Further we have:

      <\description>
        <item*|Distributivity><math|\<forall\>n,m,k\<in\>\<bbb-Z\>> we have
        <math|n\<cdot\><around*|(|m+k|)>=n\<cdot\>m+n\<cdot\>k>

        <item*|There does not exist a zero divisor>If
        <math|n,m\<in\>\<bbb-Z\>> is such that
        <math|n\<cdot\>m=0\<Rightarrow\>n=0\<vee\>m=0>
      </description>

      <item>Additional we have also that <math|<around*|(|-1|)>\<cdot\><around*|(|-1|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This is already proved in [theorem: <reference|integers integers
      forms a group>].

      <item>\ 

      <\description>
        <item*|Commutatitivity>If <math|\<sim\><around*|[|<around*|(|n,m|)>|]>,\<sim\><around*|[|<around*|(|r,s|)>|]>\<in\>\<bbb-Z\>>
        we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<sim\><around*|[|<around*|(|n,m|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|r,s|)>|]>>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|r\<cdot\>n+s\<cdot\>m,s\<cdot\>n+r\<cdot\>m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|r,s|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|n,m|)>|]>>>>>
        </eqnarray*>

        <item*|Associativity>Let <math|\<sim\><around*|[|<around*|(|a,b|)>|]>,\<sim\><around*|[|<around*|(|c,d|)>|]>,\<sim\><around*|[|<around*|(|e,f|)>|]>\<in\>\<bbb-Z\>>
        then

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\><around*|(|\<sim\><around*|[|<around*|(|c,d|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|e,f|)>|]>|)>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\><around*|(|\<sim\><around*|[|<around*|(|c\<cdot\>e+d\<cdot\>f,d\<cdot\>e+c\<cdot\>f|)>|]>|)>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a\<cdot\><around*|(|c\<cdot\>e+d\<cdot\>f|)>+b\<cdot\><around*|(|d\<cdot\>e+c\<cdot\>f|)>,b\<cdot\><around*|(|c\<cdot\>e+d\<cdot\>f|)>+a\<cdot\><around*|(|d\<cdot\>e+c\<cdot\>f|)>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|<wide*|a\<cdot\><around*|(|c\<cdot\>e|)>|\<wide-underbrace\>><rsub|1>+<wide*|a\<cdot\><around*|(|d\<cdot\>f|)>|\<wide-underbrace\>><rsub|2>+<wide*|b\<cdot\><around*|(|d\<cdot\>e|)>|\<wide-underbrace\>><rsub|3>+<wide*|b\<cdot\><around*|(|c\<cdot\>f|)>|\<wide-underbrace\>><rsub|4>,<wide*|b\<cdot\><around*|(|c\<cdot\>e|)>|\<wide-underbrace\>><rsub|5>+<wide*|b\<cdot\><around*|(|d\<cdot\>f|)>|\<wide-underbrace\>><rsub|6>+<wide*|a\<cdot\><around*|(|d\<cdot\>e|)>|\<wide-underbrace\>><rsub|7>+<wide*|a\<cdot\><around*|(|c\<cdot\>f|)>|\<wide-underbrace\>><rsub|8>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|<wide*|<around*|(|a\<cdot\>c|)>\<cdot\>e|\<wide-underbrace\>><rsub|1>+<wide*|<around*|(|b\<cdot\>d|)>\<cdot\>e|\<wide-underbrace\>><rsub|3>+<wide*|<around*|(|b\<cdot\>c|)>\<cdot\>f|\<wide-underbrace\>><rsub|4>+<wide*|<around*|(|a\<cdot\>d|)>\<cdot\>f|\<wide-underbrace\>><rsub|2>,<wide*|<around*|(|b\<cdot\>c|)>\<cdot\>e|\<wide-underbrace\>><rsub|5>+<wide*|<around*|(|a\<cdot\>d|)>\<cdot\>e|\<wide-underbrace\>><rsub|7>+<wide*|<around*|(|a\<cdot\>c|)>\<cdot\>f|\<wide-underbrace\>><rsub|8>+<wide*|<around*|(|b\<cdot\>d|)>\<cdot\>f|\<wide-underbrace\>><rsub|6>|)>|]>>|<cell|>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|<around*|(|a\<cdot\>c+b\<cdot\>d|)>\<cdot\>e+<around*|(|b\<cdot\>c+a\<cdot\>d|)>\<cdot\>f|)>,<around*|(|b\<cdot\>c+a\<cdot\>d|)>\<cdot\>e+<around*|(|a\<cdot\>c+b\<cdot\>d|)>\<cdot\>f|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a\<cdot\>c+b\<cdot\>d,b\<cdot\>c+a\<cdot\>d|)>|]>\<cdot\>\<backsim\><around*|[|<around*|(|e,f|)>|]>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|c,d|)>|]>|)>\<cdot\>\<sim\><around*|[|<around*|(|e,f|)>|]>>|<cell|>|<cell|>>>>
        </eqnarray*>

        <item*|Neutral element>If <math|n=\<sim\><around*|[|<around*|(|n,m|)>|]>\<in\>\<bbb-Z\>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|n\<cdot\>1>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|1\<cdot\>n>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|1,0|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|n,m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|1\<cdot\>n+0\<cdot\>m,0\<cdot\>n+1\<cdot\>m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|(|n,m|)>>>>>
        </eqnarray*>
      </description>

      <item>Further we have:

      <\description>
        <item*|Distributivity>If <math|\<sim\><around*|[|<around*|(|a,b|)>|]>,\<sim\><around*|[|<around*|(|c,d|)>|]>,\<sim\><around*|[|<around*|(|e,f|)>|]>\<in\>\<bbb-Z\>>
        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\><around*|(|\<sim\><around*|[|<around*|(|c,d|)>|]>+\<sim\><around*|[|<around*|(|e,f|)>|]>|)>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|c+e,d+f|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a\<cdot\><around*|(|c+e|)>+b\<cdot\><around*|(|d+f|)>,b\<cdot\><around*|(|c+e|)>+a\<cdot\><around*|(|d+f|)>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|<wide*|a\<cdot\>c|\<wide-underbrace\>><rsub|1>+<wide*|a\<cdot\>e|\<wide-underbrace\>><rsub|2>+<wide*|b\<cdot\>d|\<wide-underbrace\>><rsub|3>+<wide*|b\<cdot\>f|\<wide-underbrace\>><rsub|4>,<wide*|b\<cdot\>c|\<wide-underbrace\>><rsub|5>+<wide*|b\<cdot\>e|\<wide-underbrace\>><rsub|6>+<wide*|a\<cdot\>d|\<wide-underbrace\>><rsub|7>+<wide*|a\<cdot\>f|\<wide-underbrace\>><rsub|8>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|<wide*|a\<cdot\>c|\<wide-underbrace\>><rsub|1>+<wide*|b\<cdot\>d|\<wide-underbrace\>><rsub|3>+<wide*|a\<cdot\>e|\<wide-underbrace\>><rsub|2>+<wide*|b\<cdot\>f|\<wide-underbrace\>><rsub|4>,<wide*|b\<cdot\>c|\<wide-underbrace\>><rsub|5>+<wide*|a\<cdot\>d|\<wide-underbrace\>><rsub|7>+<wide*|b\<cdot\>e|\<wide-underbrace\>><rsub|6>+<wide*|a\<cdot\>f|\<wide-underbrace\>><rsub|8>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a\<cdot\>c+b\<cdot\>d,b\<cdot\>c+a\<cdot\>d|)>|]>+\<sim\><around*|[|<around*|(|a\<cdot\>e+b\<cdot\>f,b\<cdot\>e+a\<cdot\>f|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|c,d|)>|]>+\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|e,f|)>|]>>|<cell|=>|<cell|>>>>
        </eqnarray*>

        <item*|There does not exist a zero divisor>Let
        <math|n=\<sim\><around*|{|<around*|(|a,b|)>|}>>,
        <math|m\<equallim\>\<sim\><around*|[|<around*|(|c,d|)>|]>> such that
        <math|n\<cdot\>m=0> then\ 

        <\equation*>
          \<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|c,d|)>|]>=\<sim\><around*|[|<around*|(|a\<cdot\>c+b\<cdot\>d,b\<cdot\>c+a\<cdot\>d|)>|]>=\<sim\><around*|[|<around*|(|0,0|)>|]>
        </equation*>

        so we have that <math|<around*|(|a\<cdot\>c+b\<cdot\>d|)>+0=<around*|(|b\<cdot\>c+a\<cdot\>d|)>+0>
        giving

        <\equation>
          <label|eq 7.3.022>a\<cdot\>c+b\<cdot\>d=b\<cdot\>c+a\<cdot\>d
        </equation>

        Assume that <math|n\<neq\>0> then
        <math|\<sim\><around*|[|<around*|(|a,b|)>|]>\<neq\>\<sim\><around*|[|<around*|(|0,0|)>|]>>
        so that <math|a+0\<neq\>b+0> so that <math|a\<neq\>b>, hence we have
        te following cases to consider:

        <\description>
          <item*|<math|a\<less\>b>>Then using [theorem: <reference|natural
          numbers n\<less\>m then there exists a k such that m=n+k>] there
          exists a <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that
          <math|a+k=b>, so substituting this in [eq: <reference|eq 7.3.022>]
          gives

          <\eqnarray*>
            <tformat|<table|<row|<cell|a\<cdot\>c+<around*|(|a+k|)>\<cdot\>d=<around*|(|a+k|)>\<cdot\>c+a\<cdot\>d>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|<wide*|a\<cdot\>c|\<wide-underbrace\>><rsub|1>+<wide*|a\<cdot\>d|\<wide-underbrace\>><rsub|2>+k\<cdot\>d=<wide*|a\<cdot\>c|\<wide-underbrace\>><rsub|1>+k\<cdot\>c+<wide*|a\<cdot\>d|\<wide-underbrace\>><rsub|2>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|k\<cdot\>d=k\<cdot\>c>|<cell|\<Rightarrowlim\><rsub|k\<neq\>0\<wedge\><text|[theorem:
            <reference|natural numbers n.k=m.k=\<gtr\>n=m>]>>>|<cell|>>|<row|<cell|d=c>|<cell|>|<cell|>>>>
          </eqnarray*>

          So <math|m=\<sim\><around*|[|<around*|(|c,d|)>|]>=\<sim\><around*|[|<around*|(|d,d|)>|]>\<equallim\><rsub|<text|[theorem:
          <reference|integers neutral element>]>>!<around*|[|<around*|(|0,0|)>|]>=0<rsub|>.>

          <item*|<math|b\<less\>a>>Then using [theorem: <reference|natural
          numbers n\<less\>m then there exists a k such that m=n+k>] there
          exists a <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that
          <math|b+k=a>, so substituting this in [eq: <reference|eq 7.3.022>]
          gives

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|b+k|)>\<cdot\>c+b\<cdot\>d=b\<cdot\>c+<around*|(|b+k|)>\<cdot\>d>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|<wide*|b\<cdot\>c|\<wide-underbrace\>><rsub|1>+k\<cdot\>c+<wide*|b\<cdot\>d|\<wide-underbrace\>><rsub|2>=<wide*|b\<cdot\>c|\<wide-underbrace\>><rsub|1>+<wide*|b\<cdot\>d|\<wide-underbrace\>><rsub|2>+k\<cdot\>d>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|k\<cdot\>c=k\<cdot\>d>|<cell|\<Rightarrowlim\><rsub|k\<neq\>0\<wedge\><text|[theorem:
            <reference|natural numbers n.k=m.k=\<gtr\>n=m>]>>>|<cell|>>|<row|<cell|c=d>|<cell|>|<cell|>>>>
          </eqnarray*>

          So <math|m=\<sim\><around*|[|<around*|(|c,d|)>|]>=\<sim\><around*|[|<around*|(|d,d|)>|]>\<equallim\><rsub|<text|[theorem:
          <reference|integers neutral element>]>><around*|[|<around*|(|0,0|)>|]>=0<rsub|>.>
        </description>

        So if <math|n\<cdot\>m=0> then we have either <math|n\<neq\>0> but
        then <math|m=0> or <math|n=0> proving that
        <math|n\<cdot\>m=0\<Rightarrow\>n=0\<vee\>m=0>.
      </description>

      <item>As <math|1=\<sim\><around*|[|<around*|(|1,0|)>|]>> we heve by
      [theorem: <reference|integers integers forms a group>] that
      <math|-1=\<sim\><around*|[|<around*|(|0,1|)>|]>> so that

      <\equation*>
        <around*|(|-1|)>\<cdot\><around*|(|-1|)>=\<sim\><around*|[|<around*|(|0,1|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|0,1|)>|]>=\<sim\><around*|[|<around*|(|0\<cdot\>0+1\<cdot\>1,1\<cdot\>0+0\<cdot\>1|)>|]>=\<sim\><around*|[|<around*|(|1,0|)>|]>=1
      </equation*>
    </enumerate>
  </proof>

  <\lemma>
    <label|integers condition for 0><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>
    we have that <math|\<sim\><around*|[|<around*|(|n,0|)>|]>\<neq\>0>
  </lemma>

  <\proof>
    We prove this by contradiction so assume that
    <math|\<sim\><around*|[|<around*|(|n,0|)>|]>=0=\<sim\><around*|[|<around*|(|0,0|)>|]>>
    then <math|n+0=0\<Rightarrow\>n=0> contradicting
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>. So
    <math|\<sim\><around*|[|<around*|(|n,0|)>|]>\<neq\>0>.
  </proof>

  <\corollary>
    <label|integers z=-z=\<gtr\>z=0><math|\<forall\>z\<in\>\<bbb-Z\>> such
    that <math|z=-z> we have <math|z=0>
  </corollary>

  <\proof>
    If <math|z=-z> we have that <math|z+z=<around*|(|-z|)>+z=0>. So
    <math|<around*|(|1+1|)>\<cdot\>z=z\<cdot\>1+z\<cdot\>1=z+z=0>, hence\ 

    <\equation*>
      <around*|(|1+1|)>\<cdot\>z=0
    </equation*>

    \ As <math|1+1=\<sim\><around*|[|<around*|(|1,0|)>|]>+\<sim\><around*|[|<around*|(|1,0|)>|]>=\<sim\><around*|[|<around*|(|2,0|)>|]>>
    and <math|2=0> we have by [corollary: <reference|integers condition for
    0>] that <math|1+1\<neq\>0>, using [theorem: <reference|integers integral
    domain>] on the above proves then that <math|Z=0>.
  </proof>

  <\theorem>
    <label|integers absorbing element><dueto|Absorbing element>If
    <math|z\<in\>\<bbb-Z\>> then <math|0\<cdot\>n=0=n\<cdot\>0>
  </theorem>

  <\proof>
    Let <math|z=\<sim\><around*|[|<around*|(|n,m|)>|]>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>0>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|0\<cdot\>n>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|0,0|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|n,m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|0\<cdot\>n+0\<cdot\>m,0\<cdot\>n+0\<cdot\>m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|0,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|integers (-1).n>If <math|z\<in\>\<bbb-Z\>> then
    <math|<around*|(|-1|)>\<cdot\>z=-1>
  </theorem>

  <\proof>
    If <math|z=\<sim\><around*|[|<around*|(|n,m|)>|]>> then we have by
    [theorem: <reference|integers integers forms a group>] that
    <math|-z=\<sim\><around*|[|<around*|(|m,n|)>|]>>, further as
    <math|1=\<sim\><around*|[|<around*|(|1,0|)>|]>> we have
    <math|-1=\<sim\><around*|[|<around*|(|0,1|)>|]>>. Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|-1|)>\<cdot\>z>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|0,1|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|n,m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|0\<cdot\>n+1\<cdot\>m,1\<cdot\>n+0\<cdot\>m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|m,n|)>|]>>>|<row|<cell|>|<cell|=>|<cell|-z>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|integers -(n,m)=(-n),(-m)>If <math|n,m\<in\>\<bbb-Z\>> then
    <math|-<around*|(|n\<cdot\>m|)>=<around*|(|-n|)>\<cdot\>m=n\<cdot\><around*|(|-m|)>>
  </theorem>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|-<around*|(|n\<cdot\>m|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers (-1).n>]>>>|<cell|<around*|(|-1|)>\<cdot\><around*|(|n\<cdot\>m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|<around*|(|-1|)>\<cdot\>n|)>\<cdot\>m>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers (-1).n>]>>>|<cell|<around*|(|-n|)>\<cdot\>m>>|<row|<cell|-<around*|(|n,m|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers (-1).n>]>>>|<cell|<around*|(|-1|)>\<cdot\><around*|(|n\<cdot\>m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<around*|(|n\<cdot\>m|)>\<cdot\><around*|(|-1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|n\<cdot\><around*|(|m\<cdot\><around*|(|-1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutativ>>>|<cell|n\<cdot\><around*|(|<around*|(|-1|)>\<cdot\>m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers (-1).n>]>>>|<cell|n\<cdot\><around*|(|-m|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|integers n.r=k.r=\<gtr\>n=k>Let <math|n,k,r\<in\>\<bbb-Z\>> with
    <math|r\<neq\>0> then <math|n\<cdot\>r=k\<cdot\>r> implies <math|n=k>.
  </theorem>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>r=k\<cdot\>r>|<cell|\<Rightarrow\>>|<cell|n\<cdot\>r+<around*|(|-<around*|(|k\<cdot\>r|)>|)>=<around*|(|k\<cdot\>r|)>+<around*|(|-<around*|(|k\<cdot\>r|)>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n\<cdot\>r+<around*|(|-<around*|(|k\<cdot\>r|)>|)>=0>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|integers -(n,m)=(-n),(-m)>]>>>|<cell|n\<cdot\>r+<around*|(|-k|)>\<cdot\>r=0>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n+<around*|(|-k|)>|)>\<cdot\>r=0>>>>
    </eqnarray*>

    As by [theorem: <reference|integers integral domain>]
    <math|<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>> is a integral
    domain and <math|r\<neq\>0> we have <math|n+<around*|(|-k|)>>=0

    \ so that <math|<around*|(|n+<around*|(|-k|)>|)>+k=0+k> or
    <math|n+<around*|(|<around*|(|-k|)>+k|)>=k> proving <math|n=k>.
  </proof>

  We can use recursion [see: theorem <reference|recursion final>] to define
  power in the set of integer

  <\definition>
    Let <math|z\<in\>\<bbb-Z\>> then <math|z<rsup|<around*|(|.|)>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>
    <math|n\<rightarrow\>z<rsup|n>> is defined by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|z<rsup|0><rsup|><rsup|>>|<cell|=>|<cell|1>>|<row|<cell|z<rsup|n+1>>|<cell|=>|<cell|z\<cdot\>z<rsup|n>>>>>
    </eqnarray*>
  </definition>

  <\theorem>
    <label|integers z^n++m=z^n.z^m>If <math|n,m\<in\>\<bbb-N\><rsub|0>> and
    <math|z\<in\>\<bbb-N\><rsub|0>> then <math|z<rsup|n+m>=z<rsup|n>\<cdot\>z<rsup|m>>
  </theorem>

  <\proof>
    This is proved by induction, so let <math|z\<in\>\<bbb-Z\>,n\<in\>\<bbb-N\><rsub|0>>
    and define\ 

    <\equation*>
      S<rsub|n,z>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|z<rsup|n+m>=z<rsup|n>\<cdot\>z<rsup|m>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n,z>>>Then
      <math|z<rsup|n+0>=z<rsup|n>=z<rsup|n>\<cdot\>1=z<rsup|n>\<cdot\>z<rsup|0>>
      proving that <math|0\<in\>S<rsub|n,z>>.

      <item*|<math|m\<in\>S<rsub|n,z>\<Rightarrow\>m+1\<in\>S<rsub|n,z>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|z<rsup|n+<around*|(|m+1|)>>>|<cell|=>|<cell|z<rsup|<around*|(|n+m|)>+1>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\>z<rsup|<around*|(|n+m|)>>>>|<row|<cell|>|<cell|=>|<cell|z<rsup|n+m>\<cdot\>z>>|<row|<cell|>|<cell|\<equallim\><rsub|m\<in\>S<rsub|n,z><rsub|>>>|<cell|<around*|(|z<rsup|n>\<cdot\>z<rsup|m>|)>\<cdot\>z>>|<row|<cell|>|<cell|=>|<cell|z<rsup|n>\<cdot\><around*|(|z<rsup|m>\<cdot\>z|)>>>|<row|<cell|>|<cell|=>|<cell|z<rsup|n>\<cdot\><around*|(|z\<cdot\>z<rsup|m>|)>>>|<row|<cell|>|<cell|=>|<cell|z<rsup|n>\<cdot\>z<rsup|m+1>>>>>
      </eqnarray*>

      proving that <math|m+1\<in\>S<rsub|n,z>>
    </description>

    Mathematical induction completes then the proof.
  </proof>

  <\theorem>
    <label|integers properties>Let <math|n\<in\>\<bbb-N\><rsub|0>> then we
    have

    <\enumerate>
      <item>If <math|n\<neq\>0> then <math|0<rsup|n>=0>

      <item><math|1<rsup|n>=1>

      <item><math|<around*|(|-1|)><rsup|n>=1\<vee\><around*|(|-1|)><rsup|n>=-1>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n>=1>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n+1>=-1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|n\<neq\>0> then <math|\<exists\>m\<in\>\<bbb-N\><rsub|0>>
      such that <math|n=m+1> so that <math|0<rsup|n>=0<rsup|m+1>=0\<cdot\>0<rsup|m>\<equallim\><rsub|<text|[theorem:
      <reference|integers absorbing element>]>>0>

      <item>We proceed by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|1<rsup|n>=1|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>><math|1<rsup|0>=1> by definition proving that
        <math|0\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>><math|1<rsup|n+1>=1\<cdot\>1<rsup|n>\<equallim\><rsub|n\<in\>S>1\<cdot\>1>
        proving that <math|n+1\<in\>S>
      </description>

      <item>Again we use induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<around*|(|-1|)><rsup|n>=1\<vee\><around*|(|-1|)><rsup|n>=-1|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>><math|<around*|(|-1|)><rsup|0>=1> proving that
        <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> we
        have either:

        <\description>
          <item*|<math|<around*|(|-1|)><rsup|n>=1>>Then
          <math|<around*|(|-1|)><rsup|n+1>=<around*|(|-1|)>\<cdot\><around*|(|-1|)><rsup|n>=<around*|(|-1|)>\<cdot\>1=-1>
          so the <math|n+1\<in\>S>

          <item*|<math|<around*|(|-1|)><rsup|n>=-1>>Then
          <math|<around*|(|-1|)><rsup|n+1>=<around*|(|-1|)>\<cdot\><around*|(|-1|)><rsup|n>=<around*|(|-1|)>\<cdot\><around*|(|-1|)>\<equallim\><rsub|<text|[theroem:
          <reference|integers integral domain>]>>1> so that\ 
        </description>
      </description>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n>=<around*|(|-1|)><rsup|<around*|(|1+1|)>\<cdot\>n>=<around*|(|-1|)><rsup|n+n>\<equallim\><rsub|<text|[theorem:
      <reference|integers z^n++m=z^n.z^m>]>><around*|(|-1|)><rsup|n>\<cdot\><around*|(|-1|)><rsup|n>\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>] and (3)>><rsup|>=1>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n+1>=<around*|(|-1|)>\<cdot\><around*|(|-1|)><rsup|2\<cdot\>n>\<equallim\><rsub|<around*|(|4|)>><around*|(|-1|)>\<cdot\>1=-1>
    </enumerate>

    \;
  </proof>

  <section|Order relation on the set of integers>

  First we define the set of non negative integers.

  <\definition>
    <label|integers non negative><math|\<bbb-Z\><rsup|+><rsub|0>=<around*|{|\<sim\><around*|[|<around*|(|n,0|)>|]>\|n\<in\>\<bbb-N\><rsub|0>|}>\<subseteq\>\<bbb-Z\>>
  </definition>

  We have the following properties for the set on non negative integers.

  <\theorem>
    <label|integers properties (1)>We have the following:

    <\enumerate>
      <item><math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>>
      is a sub semi-group of <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>
      [hence by [theorem: <reference|group semi-group inheritance>]
      <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>> is a
      Abelian semi-group].

      <item><math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<cdot\>|\<rangle\>>>
      is a sub semi-group of <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>
      <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>> [hence by
      [theorem: <reference|group semi-group inheritance>]
      <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<cdot\>|\<rangle\>>>
      is a Abelian semi-group].

      <item><math|i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
      defined by <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>>
      forms a\ 

      <\enumerate>
        <item>group isomorphism between <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>
        and <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>>

        <item>group isomorphism between <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>
        and <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>>
      </enumerate>

      <item>For every <math|z\<in\>\<bbb-Z\>>
      <math|\<exists\>x,y\<in\>\<bbb-Z\><rsup|+><rsub|0>> such that
      <math|z=x-y>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|z,z<rprime|'>\<in\>\<bbb-Z\>> then
      <math|z=\<sim\><around*|[|<around*|(|n,0|)>|]>> and
      <math|z<rprime|'>=\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>> so
      that

      <\equation*>
        z+z<rprime|'>=\<sim\><around*|[|<around*|(|n,0|)>|]>+\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>=\<sim\><around*|[|<around*|(|n+n<rprime|'>,0+0|)>|]>=\<sim\><around*|[|<around*|(|n+n<rprime|'>,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>
      </equation*>

      further

      <\equation*>
        0=\<sim\><around*|[|<around*|(|0,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>.
      </equation*>

      Using [definition: <reference|sub-semi-group>] it follows that
      <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>> is a
      sub semi-group of <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>.

      <item>Let <math|z,z<rprime|'>\<in\>\<bbb-Z\>> then
      <math|z=\<sim\><around*|[|<around*|(|n,0|)>|]>> and
      <math|z<rprime|'>=\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>> so
      that

      <\equation*>
        z\<cdot\>z<rprime|'>=\<sim\><around*|[|<around*|(|n,0|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>=\<sim\><around*|[|<around*|(|n\<cdot\>n<rprime|'>+0\<cdot\>0,0\<cdot\>n<rprime|'>+n\<cdot\>0|)>|]>\<equallim\>\<sim\><around*|[|<around*|(|n\<cdot\>n<rprime|'>,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>
      </equation*>

      further

      <\equation*>
        1=\<sim\><around*|[|<around*|(|1,9|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>
      </equation*>

      Using [definition: <reference|sub-semi-group>] it follows that
      <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>> is a
      sub semi-group of <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>.

      <item>First we show that <math|i<rsub|\<bbb-N\><rsub|0>>> is a
      bijection:

      <\description>
        <item*|injectivity>If <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>>
        then <math|\<sim\><around*|[|<around*|(|n,0|)>|]>=\<sim\><around*|[|<around*|(|m,0|)>|]>>
        so that <math|n+0=0+m\<Rightarrow\>n=m>.

        <item*|surjectivity>If <math|z\<in\>\<bbb-Z\><rsup|+><rsub|0>> there
        exist a <math|n\<in\>\<bbb-N\><rsub|0>> such that
        <math|z=\<sim\><around*|[|<around*|(|n,0|)>|]>=i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>>.
      </description>

      Next we have:\ 

      <\enumerate>
        <item>First <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|n+m|)>=\<sim\><around*|[|<around*|(|n+m,0|)>|]>=\<sim\><around*|[|<around*|(|n,0|)>|]>+\<sim\><around*|[|<around*|(|m,0|)>|]>=i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>+i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>>.
        Second <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|0|)>=\<sim\><around*|[|<around*|(|0,0|)>|]>=1\<in\>\<bbb-Z\><rsup|+><rsub|0>>.

        <item>First

        <\eqnarray*>
          <tformat|<table|<row|<cell|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>\<cdot\>i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n,0|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|m,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>m+0\<cdot\>m,0\<cdot\>n+n\<cdot\>0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>m,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-N\><rsub|0>><around*|(|n\<cdot\>m|)>>>>>
        </eqnarray*>

        Second <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|1|)>=\<sim\><around*|[|<around*|(|1,0|)>|]>=1\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
      </enumerate>

      <item>Let <math|z\<in\>\<bbb-Z\>> then
      <math|z=\<sim\><around*|[|<around*|(|n,m|)>|]>> take
      <math|x=\<sim\><around*|[|<around*|(|n,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      and <math|y=\<sim\><around*|[|<around*|(|m,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      then we have\ 

      <\equation*>
        x-y=x+<around*|(|-y|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>+\<sim\><around*|[|<around*|(|0,m|)>|]>=\<sim\><around*|[|<around*|(|n,m|)>|]>=z
      </equation*>
    </enumerate>
  </proof>

  Next we define the set of non positive number.

  <\definition>
    <label|integers non positive numbers><math|\<bbb-Z\><rsup|-><rsub|0>=<around*|{|-n\|n\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>=<around*|{|<around*|(|0,n|)>\|n\<in\>\<bbb-N\><rsub|0>|}>\<subseteq\>\<bbb-Z\>>
  </definition>

  <\definition>
    <math|\<bbb-Z\><rsup|+>=\<bbb-Z\><rsup|+><rsub|0>\\<around*|{|0|}>> and
    <math|\<bbb-Z\><rsup|->=\<bbb-Z\><rsup|-><rsub|0>\\<around*|{|0|}>>
  </definition>

  The following theorem shows the relation between
  <math|\<bbb-Z\><rsup|+><rsub|0>> and <math|\<bbb-Z\><rsup|-><rsub|0>>.

  \;

  <\theorem>
    <label|integers positive and negative><math|\<bbb-Z\>=\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
    and <math|<around*|{|0|}>=\<bbb-Z\><rsup|+><rsub|0><big|cap>\<bbb-Z\><rsup|-><rsub|0>>
  </theorem>

  <\proof>
    As <math|\<bbb-Z\><rsup|+><rsub|0>\<subseteq\>\<bbb-Z\>> and
    <math|\<bbb-Z\><rsup|-><rsub|0>\<subseteq\>\<bbb-Z\>> then\ 

    <\equation>
      <label|eq 7.4.022>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|9>\<subseteq\>\<bbb-Z\>
    </equation>

    Let <math|z\<in\>\<bbb-Z\>> then <math|\<exists\>n,m\<in\>\<bbb-N\><rsub|0>>
    such that <math|z=\<sim\><around*|[|<around*|(|n,m|)>|]>> then for
    <math|n,m> we have either:

    <\description>
      <item*|<math|n\<leqslant\>m>>then using [theorem: <reference|natural
      numbers n\<less\>=m\<less\>=\<gtr\>there exists a k such that m=k>]
      there exist a <math|k\<in\>\<bbb-N\><rsub|0>> such that <math|m=n+k> so
      that\ 

      <\equation>
        <label|eq 7.5.022>z=\<sim\><around*|[|<around*|(|n,n+k|)>|]>
      </equation>

      Now for <math|<around*|(|0,k|)>> and <math|<around*|(|n,n+k|)>> we have
      <math|0+<around*|(|n+k|)>=n+k> so that
      <math|<around*|(|0,k|)>\<sim\><around*|(|n,n+k|)>> proving that
      <math|\<sim\><around*|[|<around*|(|0,k|)>|]>=\<sim\><around*|[|<around*|(|n,n+k|)>|]>\<equallim\><rsub|<text|[eq:
      <reference|eq 7.5.022>>>z>, proving that
      <math|z\<in\>\<bbb-Z\><rsup|-><rsub|0>\<subseteq\>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>.

      <item*|<math|m\<less\>n>>Then using [theorem: <reference|natural
      numbers n\<less\>=m\<less\>=\<gtr\>there exists a k such that m=k>]
      there exist a <math|k\<in\>\<bbb-N\><rsub|0>> such that <math|n=m+k> so
      that\ 

      <\equation>
        <label|eq 7.6.022>z=\<sim\><around*|[|<around*|(|m+k,m|)>|]>
      </equation>

      Now for <math|<around*|(|k,0|)>> and <math|<around*|(|m+k,m|)>> we have
      <math|k+m=0+m+k> so that <math|<around*|(|k,0|)>\<sim\><around*|(|m+k,m|)>>
      proving that <math|\<sim\><around*|[|<around*|(|k,0|)>|]>=\<sim\><around*|[|<around*|(|m+k,m|)>|]>\<equallim\><rsub|<text|[eq:
      <reference|eq 7.5.022>>>z>, proving that
      <math|z\<in\>\<bbb-Z\><rsup|+><rsub|0>\<subseteq\>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>.
    </description>

    From the above we have <math|\<bbb-Z\>\<subseteq\>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
    which by [eq: <reference|eq 7.4.022>] proves that\ 

    <\equation*>
      \<bbb-Z\>=\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>
    </equation*>

    As <math|0=\<sim\><around*|[|<around*|(|0,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
    and <math|0=\<sim\><around*|[|<around*|(|0,0|)>|]>\<in\>\<bbb-Z\><rsup|-><rsub|0>>
    we have that <math|<around*|{|0|}>\<in\>\<bbb-Z\><rsup|+><rsub|0><big|cap>\<bbb-Z\><rsup|-><rsub|0>>.
    Let <math|z\<in\>\<bbb-Z\><rsup|+><rsub|0><big|cap>\<bbb-Z\><rsup|-><rsub|0>>
    then there exists <math|n,m\<in\>\<bbb-N\><rsub|0>> such that
    <math|z=\<sim\><around*|[|<around*|(|n,0|)>|]>=\<sim\><around*|[|<around*|(|0,m|)>|]>>
    hence <math|n+0=0+m\<Rightarrow\>n=m>,. So
    <math|z=\<sim\><around*|[|<around*|(|n,0|)>|]>=\<sim\><around*|[|<around*|(|0,n|)>|]>=-z>.
    Applying then [theorem: <reference|integers z=-z=\<gtr\>z=0>] it follows
    that <math|z=0> or <math|\<bbb-Z\><rsup|+><rsub|0><big|cap>\<bbb-Z\><rsup|-><rsub|0>\<subseteq\><around*|{|0|}>>.
    Hence\ 

    <\equation*>
      \<bbb-Z\><rsup|+><rsub|0><big|cap>\<bbb-Z\><rsup|-><rsub|0>=<around*|{|0|}>
    </equation*>
  </proof>

  We can now define order relation on <math|\<bbb-Z\>>.

  <\theorem>
    <label|integeres order><index|<math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>><dueto|Order
    relation in <math|\<bbb-Z\>>><math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>
    where

    <\equation*>
      \<leqslant\>=<around*|{|<around*|(|n,m|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><around*|\||m+<around*|(|-n|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>|\|>|}>
    </equation*>

    is a totally ordered set.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexivity>If <math|z\<in\>\<bbb-Z\>> then
      <math|z+<around*|(|-z|)>=0\<in\>\<bbb-Z\><rsup|+><rsub|0>> so that
      <math|z\<leqslant\>z>.

      <item*|anti symmetry>Let <math|x,y\<in\>\<bbb-Z\>> with
      <math|x\<leqslant\>y> and <math|y\<leqslant\>x> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|y+<around*|(|-x|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>|<cell|\<wedge\>>|<cell|x+<around*|(|-y|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>>>
      </eqnarray*>

      then <math|\<exists\>n,m\<in\>\<bbb-N\><rsub|0>> such that\ 

      <\equation*>
        y+<around*|(|-x|)>=\<sim\><around*|[|<around*|(|n.0|)>|]>\<wedge\>x+<around*|(|-y|)>=\<sim\><around*|[|<around*|(|m,0|)>|]>
      </equation*>

      so taking the sum we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<sim\><around*|[|0,0|]>>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|y+<around*|(|-x|)>+x+<around*|(|-y|)>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n,0|)>|]>+\<sim\><around*|[|<around*|(|m,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n+m,0|)>|]>>>>>
      </eqnarray*>

      Hence <math|0+0=0+n+m> so that <math|n+m=0> which by [theorem:
      <reference|natural numbers n+k=0=\<gtr\>n=0>] proves that <math|n=m=0>
      so that <math|y+<around*|(|-x|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>=\<sim\><around*|[|<around*|(|0,0|)>|]>=0>.
      So <math|x=y+<around*|(|-x|)>+x=0+x=x>. <math|>

      <item*|transitivity>If <math|x\<leqslant\>y> and <math|y\<leqslant\>z>
      then <math|y+<around*|(|-x|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>> and
      <math|z+<around*|(|-y|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>. Using
      [theorem: <reference|integers properties (1)>] we have that
      <math|z+<around*|(|-x|)>=<around*|(|z+<around*|(|-y|)>|)>+<around*|(|y+<around*|(|-x|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      so that <math|x\<leqslant\>z>.

      <item*|total ordering>If <math|x,y\<in\>\<bbb-N\><rsub|0>> then we have
      for <math|x+<around*|(|-y|)>\<in\>\<bbb-Z\>\<equallim\><rsub|<text|[theorem:
      <reference|integers positive and negative>]>>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
      the following:

      <\description>
        <item*|<math|x+<around*|(|-y|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>Then
        <math|y\<leqslant\>x>

        <item*|<math|x+<around*|(|-y|)>\<in\>\<bbb-Z\><rsup|-><rsub|0>>>Then
        <math|-<around*|(|x+<around*|(|-y|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>,
        as\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|-<around*|(|x+<around*|(|-y|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|group inverse of x.y>]>>>|<cell|-x+<around*|(|-<around*|(|-y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|group group inverse of
          inverse>]>>>|<cell|-x+y>>|<row|<cell|>|<cell|=>|<cell|y+<around*|(|-x|)>>>>>
        </eqnarray*>

        proving that <math|x\<leqslant\>y>.
      </description>
    </description>
  </proof>

  Using the order relation we have the following identity

  <\theorem>
    <label|integers {x\|-\<less\>=x}><math|\<bbb-Z\><rsup|+><rsub|0>=<around*|{|x\<in\>\<bbb-Z\>\|0\<leqslant\>x|}>>
    and <math|\<bbb-Z\><rsup|-><rsub|0>=<around*|{|x\<in\>\<bbb-Z\>\|x\<leqslant\>0|}>>
  </theorem>

  <\proof>
    First we have\ 

    <\equation>
      <label|eq 7.7.022>x+<around*|(|-0|)>\<equallim\><rsub|<text|[theorem:
      <reference|group group inverse of inverse>]>>x+0=x
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<bbb-Z\><rsup|+><rsub|0>>|<cell|\<Leftrightarrowlim\><rsub|<text|[eq:
      <reference|eq 7.7.022>]>>>|<cell|x+<around*|(|-0|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|x\<in\>\<bbb-Z\>\|0\<leqslant\>x|}>>>>>
    </eqnarray*>

    proving\ 

    <\equation*>
      \<bbb-Z\><rsup|+><rsub|0>=<around*|{|x\<in\>\<bbb-Z\>\|0\<leqslant\>x|}>
    </equation*>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<bbb-Z\><rsup|-><rsub|0>>|<cell|\<Leftrightarrow\>>|<cell|-x\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0+<around*|(|-x|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<leqslant\>0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|x\<in\>\<bbb-Z\>\|x\<leqslant\>0|}>>>>>
    </eqnarray*>

    proving\ 

    <\equation*>
      \<bbb-Z\><rsup|-><rsub|0>=<around*|{|x\<in\>\<bbb-Z\>\|x\<leqslant\>0|}>
    </equation*>
  </proof>

  <\theorem>
    <label|integers x\<less\>=y\<less\>=\<gtr\>-y\<less\>=x>If
    <math|x,y\<in\>\<bbb-Z\>> then we have

    <\enumerate>
      <item><math|x\<leqslant\>y\<Leftrightarrow\>-y\<leqslant\>-x>

      <item><math|x\<less\>y\<Leftrightarrow\>-y\<less\>-x>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|x\<leqslant\>y> then
        <math|y+<around*|(|-x|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>, further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|-x|)>+<around*|(|-<around*|(|-y|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|group group inverse of
          inverse>]>>>|<cell|<around*|(|-x|)>+y>>|<row|<cell|>|<cell|=>|<cell|y+<around*|(|-x|)>>>|<row|<cell|>|<cell|\<in\>>|<cell|\<bbb-Z\><rsup|+><rsub|0>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          -y\<leqslant\>-x
        </equation*>

        <item*|<math|\<Leftarrow\>>>If <math|-y\<leqslant\>-x> then we have
        by the above that <math|-<around*|(|-x|)>\<leqslant\>-<around*|(|-y|)>\<Rightarrowlim\><rsub|<text|[theroem:
        <reference|group group inverse of inverse>]>>x\<leqslant\>y>
      </description>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<less\>y>|<cell|\<Leftrightarrow\>>|<cell|x\<neq\>y\<wedge\>x\<leqslant\>y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<neq\>y\<wedge\>-y\<leqslant\>-x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|group -x=-y\<less\>=\<gtr\>x=y>]>>>|<cell|-x\<neq\>-y\<wedge\>-y\<leqslant\>-x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|-y\<less\>-x>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|integers positive condition>If <math|x\<in\>\<bbb-Z\>> so that
    <math|x=\<sim\><around*|[|<around*|(|n,m|)>|]>> then we have

    <\enumerate>
      <item><math|0\<leqslant\>x\<Leftrightarrow\>m\<leqslant\>n>

      <item><math|0\<less\>x\<Leftrightarrow\>m\<less\>n>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|0\<leqslant\>x>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|integers {x\|-\<less\>=x}>]>>>|<cell|x\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>k\<in\>\<bbb-N\><rsub|0>
        such that x\<equallim\>\<sim\><around*|[|<around*|(|k,0|)>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>k\<in\>\<bbb-N\><rsub|0><text|
        such that <math|n+0=m+k>>\<Leftrightarrow\>n=m+k>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>=m\<less\>=\<gtr\>there exists a
        k such that m=k>]>>>|<cell|m\<leqslant\>n>>>>
      </eqnarray*>

      <item>First\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<neq\>0>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|n,m|)>|]>\<neq\>\<sim\><around*|[|<around*|(|0,0|)>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|n+0\<neq\>m+0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|n\<neq\>m>>>>
      </eqnarray*>

      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0\<less\>x>|<cell|\<Leftrightarrow\>>|<cell|x\<neq\>0\<wedge\>0\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|n\<neq\>m\<wedge\>0\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|n\<neq\>m\<wedge\>m\<leqslant\>n>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|m\<less\>n>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|integers properties (2)>If <math|n,m,k\<in\>\<bbb-Z\>> then\ 

    <\enumerate>
      <item><math|n\<leqslant\>m\<Leftrightarrow\>n+k\<leqslant\>m+k>

      <item><math|n\<less\>m\<Leftrightarrow\>n+k\<less\>m+k>

      <item><math|n\<leqslant\>m\<Leftrightarrow\>0\<leqslant\>m+<around*|(|-n|)>>

      <item><math|n\<less\>m\<Leftrightarrow\>0\<less\>m+<around*|(|-n|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<leqslant\>m>|<cell|\<Leftrightarrow\>>|<cell|m+<around*|(|-n|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|m+0+<around*|(|-n|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|m+k+<around*|(|-k|)>+<around*|(|-n|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|group inverse of x.y>]>>>|<cell|<around*|(|m+k|)>+<around*|(|-<around*|(|k+n|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|m+k+<around*|(|-<around*|(|n+k|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|n+k\<leqslant\>m+k>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<less\>m>|<cell|\<Leftrightarrow\>>|<cell|n\<neq\>m\<wedge\>n\<leqslant\>m>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|n+k\<neq\>m+k\<wedge\>n\<leqslant\>m>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|n+k\<neq\>m+k\<wedge\>n+k\<leqslant\>m+k>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|n+k\<less\>m+k>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<leqslant\>m>|<cell|\<Leftrightarrow\>>|<cell|m+<around*|(|-n|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|integers {x\|-\<less\>=x}>>>>|<cell|0\<leqslant\>m+<around*|(|-n|)>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<less\>m>|<cell|\<Leftrightarrow\>>|<cell|n\<neq\>m\<wedge\>n\<leqslant\>m>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|3|)>>>|<cell|n\<neq\>m\<wedge\>0\<leqslant\>m+<around*|(|-n|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0\<neq\>m+<around*|(|-n|)>\<wedge\>0\<leqslant\>m+<around*|(|-n|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0\<less\>m+<around*|(|-n|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|integers 0\<less\>n and 0\<less\>m then 0\<less\>n.m>If
    <math|x,y\<in\>\<bbb-Z\>> and <math|0\<less\>x\<wedge\>0\<less\>y> then
    <math|0\<less\>x\<cdot\>y>
  </theorem>

  <\proof>
    If <math|x=\<sim\><around*|[|<around*|(|n.m|)>|]>> and
    <math|y=\<sim\><around*|[|<around*|(|r,s|)>|]>> then by [theorem:
    <reference|integers positive condition>] we have <math|m\<less\>n> and
    <math|s\<less\>r> so by [theorem: <reference|natural numbers n\<less\>m
    then there exists a k such that m=n+k>] there exists
    <math|k,l\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that <math|n=m+k>
    and <math|r=s+l>. Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>r+m\<cdot\>s>|<cell|=>|<cell|<around*|(|m+k|)>\<cdot\><around*|(|s+l|)>+m\<cdot\>s>>|<row|<cell|>|<cell|=>|<cell|<wide*|m\<cdot\>s|\<wide-underbrace\>><rsub|1>+<wide*|m\<cdot\>l|\<wide-underbrace\>><rsub|2>+<wide*|k\<cdot\>s|\<wide-underbrace\>><rsub|3>+k\<cdot\>l+<wide*|m\<cdot\>s|\<wide-underbrace\>><rsub|4>>>|<row|<cell|m\<cdot\>r+n\<cdot\>s>|<cell|=>|<cell|m\<cdot\><around*|(|s+l|)>+<around*|(|m+k|)>\<cdot\>s>>|<row|<cell|>|<cell|=>|<cell|<wide*|m\<cdot\>s|\<wide-underbrace\>><rsub|1>+<wide*|m\<cdot\>l|\<wide-underbrace\>><rsub|2>+<wide*|m\<cdot\>s|\<wide-underbrace\>><rsub|4>+<wide*|k\<cdot\>s|\<wide-underbrace\>><rsub|3>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      n\<cdot\>r+m\<cdot\>s=m\<cdot\>r+n\<cdot\>s+k\<cdot\>l
    </equation*>

    As <math|0\<neq\>k> and <math|0\<neq\>l> it follows from [theorem:
    <reference|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>] that
    <math|k\<cdot\>l\<neq\>0>, using the above together with [theorem:
    <reference|natural numbers n\<less\>m\<less\>=\<gtr\>there exists a k
    such that m=k>] proves that\ 

    <\equation>
      <label|eq 7.8.022>m\<cdot\>r+n\<cdot\>s\<less\>n\<cdot\>r+m\<cdot\>s
    </equation>

    now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<cdot\>y>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>|]>>>>>
    </eqnarray*>

    Combining the above with [eq: <reference|eq 7.8.022>] and [theorem:
    <reference|integers positive condition> proves finally:

    <\equation*>
      0\<less\>x\<cdot\>y
    </equation*>
  </proof>

  <\corollary>
    <label|integers n\<less\>m=\<gtr\>n,k\<less\>=m.k>If
    <math|n,m,k\<in\>\<bbb-Z\>> such that <math|0\<less\>k> and
    <math|n\<less\>m> then <math|n\<cdot\>k\<less\>m\<cdot\>k>
  </corollary>

  <\proof>
    From <math|n\<less\>m> we have by [theorem: <reference|integers
    properties (2)>] that <math|0\<less\>m+<around*|(|-n|)>>, so using the
    previous theorem [theorem: <reference|integers 0\<less\>n and 0\<less\>m
    then 0\<less\>n.m>] it follows that

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|\<less\>>|<cell|<around*|(|m+<around*|(|-n|)>|)>\<cdot\>k>>|<row|<cell|>|<cell|=>|<cell|m\<cdot\>k+<around*|(|-n|)>\<cdot\>k>>|<row|<cell|>|<cell|=>|<cell|m\<cdot\>k+<around*|(|-1|)>\<cdot\>n\<cdot\>k>>|<row|<cell|>|<cell|=>|<cell|m\<cdot\>k+<around*|(|-<around*|(|n\<cdot\>k|)>|)>>>>>
    </eqnarray*>

    which by [theorem: <reference|integers properties (2)>] proves that\ 

    <\equation*>
      n\<cdot\>k\<less\>m\<cdot\>k
    </equation*>
  </proof>

  <\corollary>
    <label|integers n\<less\>=m=\<gtr\>n.k\<less\>=m.k>If
    <math|n,m,k\<in\>\<bbb-Z\>> such that <math|0\<leqslant\>k> and
    <math|n\<leqslant\>m> then <math|n\<cdot\>k\<leqslant\>m\<cdot\>k>.
  </corollary>

  <\proof>
    For <math|k> we have the following possibilities:\ 

    <\description>
      <item*|<math|k=0>>Then <math|n\<cdot\>k=n\<cdot\>0=0=m\<cdot\>0=m\<cdot\>k>
      so that <math|n\<cdot\>k\<leqslant\>m\<cdot\>k.>

      <item*|<math|0\<less\>k>>For <math|n\<leqslant\>m> we have either:

      <\description>
        <item*|<math|n=m>>Then <math|n\<cdot\>k=m\<cdot\>k> so that
        <math|n\<cdot\>k\<leqslant\>m\<cdot\>k>

        <item*|<math|n\<less\>m>>Then using [corollary: <reference|integers
        n\<less\>m=\<gtr\>n,k\<less\>=m.k>]
        <math|n\<cdot\>k\<less\>m\<cdot\>k> so that
        <math|n\<cdot\>k\<leqslant\>m\<cdot\>k>
      </description>
    </description>
  </proof>

  <\corollary>
    <label|integers 0\<less\>=n.n>If <math|x\<in\>\<bbb-Z\>> then
    <math|0\<leqslant\>x\<cdot\>x>
  </corollary>

  <\proof>
    As <math|x\<in\>\<bbb-Z\>\<equallim\><rsub|<text|[theorem:
    <reference|integers positive and negative>]>>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
    we have the folowing cases to consider:

    <\description>
      <item*|<math|x\<in\>\<bbb-Z\><rsup|+><rsub|0>>>Then
      <math|0\<leqslant\>x> so that by [corollary: <reference|integers
      n\<less\>=m=\<gtr\>n.k\<less\>=m.k>]]
      <math|0=0\<cdot\>x\<leqslant\>x\<cdot\>x>.

      <item*|<math|x\<in\>\<bbb-Z\><rsup|-><rsub|0>>>Then
      <math|-x\<in\>\<bbb-Z\><rsup|+><rsub|0>> so that

      <\equation*>
        0\<leqslant\><around*|(|-x|)>\<cdot\><around*|(|-x|)>
      </equation*>

      Now <math|x\<cdot\>x=\<sim\><around*|[|<around*|(|n,m|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|n,m|)>|]>=\<sim\><around*|[|<around*|(|n\<cdot\>n+m\<cdot\>m,m\<cdot\>n+n\<cdot\>m|)>|]>>
      so that <math|0\<leqslant\>x\<cdot\>x>.
    </description>
  </proof>

  <\theorem>
    <label|integers order preserving bijection><math|i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
    defined by <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>>
    is a order isomorphism between <math|<around*|\<langle\>|N<rsub|0>,\<leqslant\>|\<rangle\>>>
    and <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>.
    In other words <math|><math|i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
    is a bijection and <math|x\<leqslant\>y\<Leftrightarrow\>i<rsub|\<bbb-N\><rsub|0>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>><around*|(|y|)>>.
  </theorem>

  <\proof>
    Using [theorem: <reference|integers properties (1)>] it follows that

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0><text|
      is a bijection>
    </equation*>

    Further we have:

    <\eqnarray*>
      <tformat|<table|<row|<cell|i<rsub|\<bbb-N\><rsub|0>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>><around*|(|y|)>>|<cell|\<Leftrightarrow\>>|<cell|i<rsub|\<bbb-N\><rsub|0>><around*|(|y|)>+<around*|(|-i<rsub|\<bbb-N\><rsub|0>><around*|(|x|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,0|)>|]>+<around*|(|-<around*|[|<around*|(|x,0|)>|]>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,0|)>|]>+\<sim\><around*|[|<around*|(|0,x|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,x|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
      <reference|integers positive condition>]>>>|<cell|x\<leqslant\>y>>>>
    </eqnarray*>
  </proof>

  The above theorem allows us to transfer properties of
  <math|\<bbb-N\><rsub|0>> to <math|\<bbb-Z\><rsup|+><rsub|0>> as is
  expressed in the following theorems.

  <\theorem>
    <label|integers Archimedean><dueto|Archimedean property>If
    <math|x,y\<in\>\<bbb-Z\>> with <math|0\<less\>x> then there exist a
    <math|k\<in\>\<bbb-Z\><rsup|+><rsub|0>>such that
    <math|y\<less\>k\<cdot\>x>
  </theorem>

  <\proof>
    We have the following cases for <math|x>:

    <\description>
      <item*|<math|x\<leqslant\>0>>Take <math|k=1\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      then as <math|x\<leqslant\>0\<less\>y=1\<cdot\>y=k\<cdot\>y> proving
      that <math|x\<less\>k\<cdot\>y>

      <item*|<math|0\<less\>x>>Then <math|x\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      so that as <math|i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
      defined by <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>>
      is a group isomorphism [see theorem: <reference|integers properties
      (1)>] between <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>
      and <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>>.
      Take <math|n=<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>>
      and <math|m=<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|y|)>>
      then <math|x=i<rsub|\<bbb-N\><rsub|0>>*<around*|(|n|)>> and
      <math|n\<neq\>0> [otherwise <math|x=i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>><around*|(|0|)>=0>]].
      Using the Archimedean property of the natural numbers [see theorem:
      <reference|natural numbers Archimedean property>] there exists a
      <math|l\<in\>\<bbb-N\><rsub|0>> such that <math|m\<less\>l\<cdot\>n>.
      So by [theorem: <reference|integers order preserving bijection>] we
      have that

      <\equation>
        <label|eq 7.9.022>i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>\<less\>i<rsub|\<bbb-N\><rsub|0>><around*|(|l\<cdot\>n|)>\<equallim\><rsub|<text|[theorem:
        <reference|integers properties (1)>]>>i<rsub|\<bbb-N\><rsub|0>><around*|(|l|)>\<cdot\>i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>
      </equation>

      Take <math|k=i<rsub|\<bbb-N\><rsub|0>><around*|(|l|)>\<in\>\<bbb-Z\><rsup|+><rsub|9>>
      then as <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>|)>=x>
      and <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>=i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|y|)>|)>=y>
      we have by [eq: <reference|eq 7.9.022>] that\ 

      <\equation*>
        y\<less\>k\<cdot\>x
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|integers positive integeres are well
    ordered><math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>
    is a well-ordered set
  </theorem>

  <\proof>
    Using [theorem: <reference|integers order preserving bijection>] we have
    that\ 

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0><text|
      is a order isomorphism between <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>
      <text|and ><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>|\<rangle\>>
    </equation*>

    Let <math|A\<subseteq\>\<bbb-Z\><rsup|+><rsub|0>> such that
    <math|A\<neq\>0> then as <math|i<rsub|\<bbb-N\><rsub|0>>> is a bijection,
    hence a surjection, we have that <math|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>\<neq\>\<varnothing\>>.
    By [theorem: <reference|natural numbers are well ordered>]
    <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>> is
    well-ordered so there exists a least element <math|m> of
    <math|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>>.
    So\ 

    <\equation*>
      m\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)><text|
      and >\<forall\>n\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)><text|
      we have >m\<leqslant\>n
    </equation*>

    As <math|m\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>>
    we have for <math|M=i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>> that\ 

    <\equation>
      <label|eq 7.10.022>M\<in\>A
    </equation>

    Further if <math|x\<in\>A> then as <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>|)>=x\<in\>A>
    we have that <math|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>>
    so that <math|m\<leqslant\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>*>,
    hence by [theorem: <reference|integers order preserving bijection>] we
    have that <math|M=i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>|)>=x>.
    Proving that\ 

    <\equation>
      <label|eq 7.11.022>\<forall\>x\<in\>A<text| we have
      <math|M\<leqslant\>x>>
    </equation>

    From [eq: <reference|eq 7.10.022>] and [eq: <reference|eq 7.11.022>] i
    follows that <math|A> has a least element proving that
    <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>
    is a well-ordered set.
  </proof>

  <\theorem>
    <label|integers are conditional complete><math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>
    is conditional complete [see definition: <reference|order conditional
    complete order>].
  </theorem>

  <\proof>
    As by [theorem: <reference|integers positive integeres are well ordered>]
    <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>
    is well-ordered it follows from [theorem: <reference|order well order
    implies conditional complete and totally ordering>] it follows that
    <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>
    is conditional complete.
  </proof>

  <\theorem>
    <label|integers sup is max>If <math|A\<subseteq\>\<bbb-Z\><rsup|+><rsub|0>>
    is such that <math|A\<neq\>\<varnothing\>> and <math|sup<around*|(|A|)>>
    exists then <math|sup<around*|(|A|)>\<in\>A>.
  </theorem>

  <\proof>
    By [theorem: <reference|integers order preserving bijection>]\ 

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0><text|
      is a order isomorphism between ><around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>><text|
      and ><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>
    </equation*>

    which by [theorem: <reference|order isomorphism condition (2)>] means
    that\ 

    <\equation*>
      <around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1>:\<bbb-Z\><rsup|+><rsub|>\<rightarrow\>\<bbb-N\><rsub|0><text|
      is a order isomorphism between ><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>><text|
      and ><around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>
    </equation*>

    Assume that <math|M=sup<around*|(|A|)>> exists then by [theorem:
    <reference|order isomorphism preservers sup and inf>]
    <math|sup<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>|)>>
    exist and <math|sup<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>|)>=<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|M|)>>.
    By [theorem: <reference|natural numbers sup property>] we have that
    <math|sup<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>|)>\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>>
    so that <math|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|M|)>\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>>,
    hence <math|M=i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|M|)>|)>\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>|)>=A>
    or\ 

    <\equation*>
      sup<around*|(|A|)>\<in\>A
    </equation*>
  </proof>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|6>
    <associate|page-first|167>
    <associate|section-nr|2>
    <associate|subsection-nr|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|7|?>>
    <associate|auto-2|<tuple|7.1|?>>
    <associate|auto-3|<tuple|integers|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>|?>>
    <associate|auto-5|<tuple|7.2|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>|?>>
    <associate|eq 7.1.022|<tuple|7.1|?>>
    <associate|eq 7.10.022|<tuple|7.10|?>>
    <associate|eq 7.11.022|<tuple|7.11|?>>
    <associate|eq 7.2.022|<tuple|7.2|?>>
    <associate|eq 7.3.022|<tuple|7.3|?>>
    <associate|eq 7.4.022|<tuple|7.4|?>>
    <associate|eq 7.5.022|<tuple|7.5|?>>
    <associate|eq 7.6.022|<tuple|7.6|?>>
    <associate|eq 7.7.022|<tuple|7.7|?>>
    <associate|eq 7.8.022|<tuple|7.8|?>>
    <associate|eq 7.9.022|<tuple|7.9|?>>
    <associate|integeres order|<tuple|7.28|?>>
    <associate|integers|<tuple|7.2|?>>
    <associate|integers (-1).n|<tuple|7.17|?>>
    <associate|integers -(n,m)=(-n),(-m)|<tuple|7.18|?>>
    <associate|integers 0\<less\>=n.n|<tuple|7.36|?>>
    <associate|integers 0\<less\>n and 0\<less\>m then
    0\<less\>n.m|<tuple|7.33|?>>
    <associate|integers Archimedean|<tuple|7.38|?>>
    <associate|integers absorbing element|<tuple|7.16|?>>
    <associate|integers are conditional complete|<tuple|7.40|?>>
    <associate|integers condition for 0|<tuple|7.14|?>>
    <associate|integers difference|<tuple|7.10|?>>
    <associate|integers equivalence relation|<tuple|7.1|?>>
    <associate|integers integers forms a group|<tuple|7.8|?>>
    <associate|integers integral domain|<tuple|7.13|?>>
    <associate|integers is conditional complete|<tuple|7.40|?>>
    <associate|integers multiplication|<tuple|7.12|?>>
    <associate|integers multiplication equivalence|<tuple|7.11|?>>
    <associate|integers n.r=k.r=\<gtr\>n=k|<tuple|7.19|?>>
    <associate|integers n\<less\>=m=\<gtr\>n.k\<less\>=m.k|<tuple|7.35|?>>
    <associate|integers n\<less\>m=\<gtr\>n,k\<less\>=m.k|<tuple|7.34|?>>
    <associate|integers neutral element|<tuple|7.6|?>>
    <associate|integers non negative|<tuple|7.23|?>>
    <associate|integers non positive numbers|<tuple|7.25|?>>
    <associate|integers order preserving bijection|<tuple|7.37|?>>
    <associate|integers positive and negative|<tuple|7.27|?>>
    <associate|integers positive condition|<tuple|7.31|?>>
    <associate|integers positive integeres are well ordered|<tuple|7.39|?>>
    <associate|integers properties|<tuple|7.22|?>>
    <associate|integers properties (1)|<tuple|7.24|?>>
    <associate|integers properties (2)|<tuple|7.32|?>>
    <associate|integers sum uniqueness|<tuple|7.4|?>>
    <associate|integers sup is max|<tuple|7.41|?>>
    <associate|integers x\<less\>=y\<less\>=\<gtr\>-y\<less\>=x|<tuple|7.30|?>>
    <associate|integers z=-z=\<gtr\>z=0|<tuple|7.15|?>>
    <associate|integers z^n++m=z^n.z^m|<tuple|7.21|?>>
    <associate|integers {x\|-\<less\>=x}|<tuple|7.29|?>>
    <associate|integers ~([n,m])~([n+k,m+k)]|<tuple|7.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|integers>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>>|<pageref|auto-6>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>The
      integer numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      7.1<space|2spc>Definition and arithmetic
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      7.2<space|2spc>Order relation on the set of integers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>
    </associate>
  </collection>
</auxiliary>
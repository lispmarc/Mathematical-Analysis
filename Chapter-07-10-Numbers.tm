<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <assign|chapter-nr|6><chapter|The integer numbers>

  TODO

  <section|Definition and arithmetic>

  The problem with the natural numbers is that we have no inverse number for
  every natural number, meaning that <math|\<bbb-N\>> can not be a group only
  a semi-group. In other words given <math|n\<in\>\<bbb-N\>> with
  <math|n\<neq\>0> there does not exists a <math|n<rprime|'>> such that
  <math|n+n<rprime|'>=0>. This is solved by introducing the whole numbers. We
  solve this by introducing a equivalence relation and consider the
  equivalence classes to define the integer numbers.

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
    and <math|\<sim\><around*|[|<around*|(|r<rprime|'>,s<rprime|'>|)>|]>>
    such that <math|\<sim\><around*|[|<around*|(|n,m|)>|]>=\<sim\><around*|[|<around*|(|n<rprime|'>,m<rprime|'>|)>|]>>
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
        <tformat|<table|<row|<cell|k+<around*|(|-k|)>>|<cell|=>|<cell|<around*|(|-k|)>+k>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|m,n|)>|]>+\<sim\><around*|[|<around*|(|n,m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|m+n,n+m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n+m,n+m|)>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[throrem:
        <reference|integers neutral element>]>>>|<cell|\<sim\><around*|[|<around*|(|0,0|)>|]>>>>>
      </eqnarray*>
    </description>
  </proof>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|6>
    <associate|page-first|165>
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
    <associate|eq 7.1.022|<tuple|7.1|?>>
    <associate|integers|<tuple|7.2|?>>
    <associate|integers equivalence relation|<tuple|7.1|?>>
    <associate|integers integers forms a group|<tuple|7.8|?>>
    <associate|integers neutral element|<tuple|7.6|?>>
    <associate|integers sum|<tuple|7.4|?>>
    <associate|integers sum uniqueness|<tuple|7.4|?>>
    <associate|integers ~([n,m])~([n+k,m+k)]|<tuple|7.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|integers>|<pageref|auto-3>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>The
      integer numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      7.1<space|2spc>Definition and arithmetic
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|2.1.1>

<project|Book.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <assign|chapter-nr|6><chapter|The integer numbers>

  In this chapter we will introduce the set of integers and embed the natural
  numbers in it. Just as with <math|\<bbb-N\><rsub|0>> we will introduce a
  order relation, a sum operator, a product operator, neutral elements for
  addition and multiplication as well as inverse elements. If we would use
  different symbols to note these we introduce a lot of excessive notation
  clutter. So we use the same symbols for the natural numbers and integers,
  and use context to determine the meaning of the symbols involved. A
  practice also used in programming languages [where it is called 'over
  loading', the following table should help you in determining the meaning of
  the different symbols based on the context of there usage.

  \;

  <block|<tformat|<table|<row|<cell|Context>|<cell|Expression>|<cell|Operator>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|n+m>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<cdot\>m>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<leqslant\>m>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<less\>m>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n-m>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n+0>
  or <math|0+n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<cdot\>1<text|
  or >1\<cdot\>n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|-n>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|n+m>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<cdot\>m>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<leqslant\>m>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-Z\>\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<less\>m>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n-m>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-Z\>,-|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|n+0>
  or <math|0+n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|n\<cdot\>1<text|
  or >1\<cdot\>n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|-n>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>>>>

  <section|Definition and arithmetic>

  One major defect of <math|\<bbb-N\><rsub|0>> is that <math|n-m>, defined to
  be the unique natural number such that <math|<around*|(|n-m|)>+m=n>, is
  only defined for <math|m\<leqslant\>n>. If this limitation did not exist
  then we can easily find a inverse for a number <math|n>, just take
  <math|-n=0-n>, then <math|<around*|(|-n|)>+n=<around*|(|0-n|)>+n=0>. The
  purpose of this chapter is to define a new set of numbers, the set of
  integers, that does not have this defect. One strategy could be that we add
  to the set of natural numbers the set of numbers of the form <math|n-m>
  where <math|n\<less\>m>. The numbers of the form <math|n-m> where
  <math|m\<leqslant\>n> is then the set of non negative integers and
  represent the set of natural numbers and the numbers <math|n-m> where
  <math|n\<less\>m> forms the set of negative numbers. Of course the
  expression <math|n-m> is only defined if <math|m\<leqslant\>n> but that is
  easily solved by working with pairs. So a integer is of the form
  <math|<around*|(|n,m|)>> where <math|n,m\<in\>\<bbb-N\><rsub|0>>, that must
  be interpreted as representing the <with|font-series|bold|formal>
  expression <math|n-m> if <math|n\<less\>m> and the
  <with|font-series|bold|real> expression <math|n-m> if
  <math|m\<leqslant\>n>. However we encounter then another problem, the
  representations are not <with|font-series|bold|unique>. For example we know
  that for the natural number <math|3> we have that
  <math|3=3-0=4-1=5-2=6-3,\<ldots\>>, so that
  \ <math|<around*|(|3,0|)>,<around*|(|4,1|)>,<around*|(|5,2|)>,<around*|(|6,3|)>,\<ldots\>>,
  must all represent the same number 3. \ How can we see if two
  representations of a natural number are the same? If
  <math|<around*|(|n,m|)>> and <math|<around*|(|n<rprime|'>,m<rprime|'>|)>>
  are representations of the same natural number then <math|m\<leqslant\>n>
  and <math|m<rprime|'>\<leqslant\>n<rprime|'>> and we must have

  <\eqnarray*>
    <tformat|<table|<row|<cell|n-m=n<rprime|'>-m<rprime|'>>|<cell|\<Rightarrow\>>|<cell|<around*|(|n-m|)>+m=<around*|(|n<rprime|'>-m<rprime|'>|)>+m>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n=<around*|(|n<rprime|'>-m<rprime|'>|)>+m>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n=m+<around*|(|n<rprime|'>-m<rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n+m<rprime|'>=<around*|(|m+<around*|(|n<rprime|'>-m<rprime|'>|)>|)>+m<rprime|'>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n+m<rprime|'>=m+<around*|(|<around*|(|n\<longminus\>m<rprime|'>|)>+m<rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n+m<rprime|'>=m+n<rprime|'>>>>>
  </eqnarray*>

  So <math|<around*|(|n,m|)><infix-and><around*|(|n<rprime|'>,m<rprime|'>|)>>
  with <math|m\<leqslant\>n> and <math|m<rprime|'>\<leqslant\>n<rprime|'>>
  represent the same number if <math|n+m<rprime|'>=m+n<rprime|'>>. As we
  don't use subtraction anymore we can extends this test also to the cases
  where <math|n\<less\>m> or <math|n<rprime|'>\<less\>m>. So we say that two
  representations <math|<around*|(|n,m|)>> and
  <math|<around*|(|n<rprime|'>,m<rprime|'>|)>> represent the same integer if
  <math|n+m<rprime|'>=m+n<rprime|'>>. Hence if we define the relation
  <math|<around*|(|n,m|)>\<sim\><around*|(|n<rprime|'>,m<rprime|'>|)>> iff
  <math|n+m<rprime|'>=m+n<rprime|'>> and prove that is a equivalence relation
  then the equivalence classes will be our integers.\ 

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
    defined by <math|<around*|(|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>|)>/\<sim\>>
    or in other words\ 

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
    <math|n+<around*|(|m+k|)>=<around*|(|n+m|)>+k=<around*|(|m+n|)>+k=m+<around*|(|n+k|)>>
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
      <tformat|<table|<row|<cell|<around*|(|n+r|)>+<around*|(|m<rprime|'>+s<rprime|'>|)>>|<cell|=>|<cell|<around*|(|n+m<rprime|'>|)>+<around*|(|r+s<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 7.1.022>]>>>|<cell|<around*|(|m+n<rprime|'>|)>+<around*|(|s+r<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|m+s|)>+<around*|(|n<rprime|'>+r<rprime|'>|)>>>>>
    </eqnarray*>

    so that <math|<around*|(|n+r,m+s|)>\<sim\><around*|(|n<rprime|'>+r<rprime|'>,m<rprime|'>+s<rprime|'>|)>>
    proving that\ 

    <\equation*>
      \<sim\><around*|[|<around*|(|n+r,m+s|)>|]>\<equallim\>\<sim\><around*|[|<around*|(|n<rprime|'>+r<rprime|'>,m<rprime|'>+s<rprime|'>|)>|]>
    </equation*>
  </proof>

  The above theorem ensure that the following definition is well defined:

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

  <\theorem>
    <label|integers integers forms a group><index|<math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>><dueto|<math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>><text|
    is a Abelian group>>>so\ 

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

      <item*|Commutativity>If <math|n=\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>>
      and <math|m=\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>+\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|1>+n<rsub|2>,m<rsub|1>+m<rsub|2>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|2>+n<rsub|1>,m<rsub|2>+m<rsub|1>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n<rsub|2>,m<rsub|2>|)>|]>+\<sim\><around*|[|<around*|(|n<rsub|1>,m<rsub|1>|)>|]>>>>>
      </eqnarray*>

      <item*|Neutral element>If <math|k=\<sim\><around*|[|<around*|(|n,m|)>|]>\<in\>\<bbb-Z\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0+k>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|k+0>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n,m|)>|]>+\<sim\><around*|[|<around*|(|0,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n+0,m+0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n,m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|k>>>>
      </eqnarray*>

      <item*|Inverse element>If <math|k=\<sim\><around*|[|<around*|(|n,m|)>|]>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|k+<around*|(|-k|)>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<around*|(|-k|)>+k>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|m,n|)>|]>+\<sim\><around*|[|<around*|(|n,m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|m+n,n+m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n+m,n+m|)>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers neutral element>]>>>|<cell|\<sim\><around*|[|<around*|(|0,0|)>|]>>>>>
      </eqnarray*>
    </description>
  </proof>

  The following introduce the difference operator that is now defined for all
  integers.

  <\definition>
    <label|integers difference>Let <math|n,m\<in\>\<bbb-Z\><rsup|+><rsub|0>>
    then we have <math|n-m=n+<around*|(|-m|)>>
  </definition>

  Now to define multiplication in <math|\<bbb-Z\>>, note that
  <math|<around*|(|n,m|)>> is to be interpreted as <math|n-m>. So if
  <math|x=<around*|(|n,m|)>> and <math|y=<around*|(|r,s|)>> are two integers
  then <math|x\<cdot\>y=<around*|(|n,m|)>\<cdot\><around*|(|r,s|)>> is to be
  interpreted as the formal expression \ <math|<around*|(|n-m|)>\<cdot\><around*|(|r-s|)>>.
  Which if we formally evaluate it gives

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|n-m|)>\<cdot\><around*|(|r-s|)>>|<cell|=>|<cell|n\<cdot\>r-n\<cdot\>s-m\<cdot\>r+m\<cdot\>s>>|<row|<cell|>|<cell|=>|<cell|n\<cdot\>r+m\<cdot\>s-<around*|(|m\<cdot\>r+n\<cdot\>s|)>>>>>
  </eqnarray*>

  which suggest us that <math|<around*|(|n,m|)>\<cdot\><around*|(|r,s|)>>
  should be equal to <math|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>>,
  of course this is based on the resprentation of <math|x> and <math|y>. The
  next theorem proves that this product is indepedent of the representation,
  allowing us to define the product.

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

    so after summing (underlining common terms).

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
    <label|integers multiplication>The multiplication operator
    <math|\<cdot\>:\<bbb-Z\>\<times\>\<bbb-Z\>\<rightarrow\>\<bbb-Z\>> is
    defined by\ 

    <\equation*>
      \<sim\><around*|[|<around*|(|n,m|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|r,s|)>|]>=\<sim\><around*|[|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>|]>
    </equation*>
  </definition>

  <\theorem>
    <label|integers integral domain><math|<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>>
    is a <with|font-series|bold|integral domain >[definition: <reference|ring
    integral domain>], more specific:

    <\enumerate>
      <item><math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>> is a
      <with|font-series|bold|Abelian> group [see: <reference|integers
      integers forms a group>]\ 

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
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This is already proved in [theorem: <reference|integers integers
      forms a group>].

      <item>\ 

      <\description>
        <item*|Commutativity>If <math|\<sim\><around*|[|<around*|(|n,m|)>|]>,\<sim\><around*|[|<around*|(|r,s|)>|]>\<in\>\<bbb-Z\>>
        we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<sim\><around*|[|<around*|(|n,m|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|r,s|)>|]>>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>r+m\<cdot\>s,m\<cdot\>r+n\<cdot\>s|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|r\<cdot\>n+s\<cdot\>m,s\<cdot\>n+r\<cdot\>m|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|r,s|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|n,m|)>|]>>>>>
        </eqnarray*>

        <item*|Associativity>Let <math|\<sim\><around*|[|<around*|(|a,b|)>|]>,\<sim\><around*|[|<around*|(|c,d|)>|]>,\<sim\><around*|[|<around*|(|e,f|)>|]>\<in\>\<bbb-Z\>>
        then

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\><around*|(|\<sim\><around*|[|<around*|(|c,d|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|e,f|)>|]>|)>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\><around*|(|\<sim\><around*|[|<around*|(|c\<cdot\>e+d\<cdot\>f,d\<cdot\>e+c\<cdot\>f|)>|]>|)>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a\<cdot\><around*|(|c\<cdot\>e+d\<cdot\>f|)>+b\<cdot\><around*|(|d\<cdot\>e+c\<cdot\>f|)>,b\<cdot\><around*|(|c\<cdot\>e+d\<cdot\>f|)>+a\<cdot\><around*|(|d\<cdot\>e+c\<cdot\>f|)>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|<wide*|a\<cdot\><around*|(|c\<cdot\>e|)>|\<wide-underbrace\>><rsub|1>+<wide*|a\<cdot\><around*|(|d\<cdot\>f|)>|\<wide-underbrace\>><rsub|2>+<wide*|b\<cdot\><around*|(|d\<cdot\>e|)>|\<wide-underbrace\>><rsub|3>+<wide*|b\<cdot\><around*|(|c\<cdot\>f|)>|\<wide-underbrace\>><rsub|4>,<wide*|b\<cdot\><around*|(|c\<cdot\>e|)>|\<wide-underbrace\>><rsub|5>+<wide*|b\<cdot\><around*|(|d\<cdot\>f|)>|\<wide-underbrace\>><rsub|6>+<wide*|a\<cdot\><around*|(|d\<cdot\>e|)>|\<wide-underbrace\>><rsub|7>+<wide*|a\<cdot\><around*|(|c\<cdot\>f|)>|\<wide-underbrace\>><rsub|8>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|<wide*|<around*|(|a\<cdot\>c|)>\<cdot\>e|\<wide-underbrace\>><rsub|1>+<wide*|<around*|(|b\<cdot\>d|)>\<cdot\>e|\<wide-underbrace\>><rsub|3>+<wide*|<around*|(|b\<cdot\>c|)>\<cdot\>f|\<wide-underbrace\>><rsub|4>+<wide*|<around*|(|a\<cdot\>d|)>\<cdot\>f|\<wide-underbrace\>><rsub|2>,<wide*|<around*|(|b\<cdot\>c|)>\<cdot\>e|\<wide-underbrace\>><rsub|5>+<wide*|<around*|(|a\<cdot\>d|)>\<cdot\>e|\<wide-underbrace\>><rsub|7>+<wide*|<around*|(|a\<cdot\>c|)>\<cdot\>f|\<wide-underbrace\>><rsub|8>+<wide*|<around*|(|b\<cdot\>d|)>\<cdot\>f|\<wide-underbrace\>><rsub|6>|)>|]>>|<cell|>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a\<cdot\>c+b\<cdot\>d|)>\<cdot\>e+<around*|(|b\<cdot\>c+a\<cdot\>d|)>\<cdot\>f,<around*|(|b\<cdot\>c+a\<cdot\>d|)>\<cdot\>e+<around*|(|a\<cdot\>c+b\<cdot\>d|)>\<cdot\>f|]>>|<cell|=>|<cell|>>|<row|<cell|\<sim\><around*|[|<around*|(|a\<cdot\>c+b\<cdot\>d,b\<cdot\>c+a\<cdot\>d|)>|]>\<cdot\>\<backsim\><around*|[|<around*|(|e,f|)>|]>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<sim\><around*|[|<around*|(|a,b|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|c,d|)>|]>|)>\<cdot\>\<sim\><around*|[|<around*|(|e,f|)>|]>>|<cell|>|<cell|>>>>
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
          <reference|integers neutral element>]>>\<sim\><around*|[|<around*|(|0,0|)>|]>=0<rsub|>.>

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
    </enumerate>
  </proof>

  <\example>
    <label|integers 1+1=2><math|1+1=2> where
    <math|2=\<sim\><around*|[|<around*|(|2,0|)>|]>>
  </example>

  <\proof>
    <math|1+1=\<sim\><around*|[|<around*|(|1,0|)>|]>+\<sim\><around*|[|<around*|(|1,0|)>|]>=\<sim\><around*|[|<around*|(|1+1,0+0|)>|]>=\<sim\><around*|[|<around*|(|1+1,0|)>|]>\<equallim\><rsub|<text|[example:
    <reference|natural numbers 1+1=2>]>>\<sim\><around*|[|<around*|(|2,0|)>|]>=2>
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
    and <math|2\<neq\>0> we have by [corollary: <reference|integers condition
    for 0>] that <math|1+1\<neq\>0>, using [theorem: <reference|integers
    integral domain>] on the above proves then that <math|z=0>.
  </proof>

  <\theorem>
    <label|integers n.r=k.r=\<gtr\>n=k>Let <math|n,k,r\<in\>\<bbb-Z\>> with
    <math|r\<neq\>0> then <math|n\<cdot\>r=k\<cdot\>r> implies <math|n=k>.
  </theorem>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>r=k\<cdot\>r>|<cell|\<Rightarrow\>>|<cell|n\<cdot\>r+<around*|(|-<around*|(|k\<cdot\>r|)>|)>=<around*|(|k\<cdot\>r|)>+<around*|(|-<around*|(|k\<cdot\>r|)>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n\<cdot\>r+<around*|(|-<around*|(|k\<cdot\>r|)>|)>=0>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|ring 0 1 and ->]>>>|<cell|n\<cdot\>r+<around*|(|-k|)>\<cdot\>r=0>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n+<around*|(|-k|)>|)>\<cdot\>r=0>>>>
    </eqnarray*>

    As by [theorem: <reference|integers integral domain>]
    <math|<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>> is a integral
    domain and <math|r\<neq\>0> we have <math|n+<around*|(|-k|)>>=0

    \ so that <math|<around*|(|n+<around*|(|-k|)>|)>+k=0+k> or
    <math|n+<around*|(|<around*|(|-k|)>+k|)>=k> proving <math|n=k>.
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
      [hence by [theorem: <reference|group semi-group inheritance>]
      <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<cdot\>|\<rangle\>>>
      is a Abelian semi-group].

      <item>For <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
      defined by <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>>
      we have that

      <\enumerate>
        <item><math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>>
        is a group isomorphism

        <item><math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<cdot\>|\<rangle\>>>
        is a group isomorphism
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
        1=\<sim\><around*|[|<around*|(|1,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>
      </equation*>

      Using [definition: <reference|sub-semi-group>] it follows that
      <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>> is a
      sub semi-group of <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>.

      <item>First we show that <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>>
      is a bijection:

      <\description>
        <item*|injectivity>If <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|m|)>>
        then <math|\<sim\><around*|[|<around*|(|n,0|)>|]>=\<sim\><around*|[|<around*|(|m,0|)>|]>>
        so that <math|n+0=0+m\<Rightarrow\>n=m>.

        <item*|surjectivity>If <math|z\<in\>\<bbb-Z\><rsup|+><rsub|0>> there
        exist a <math|n\<in\>\<bbb-N\><rsub|0>> such that
        <math|z=\<sim\><around*|[|<around*|(|n,0|)>|]>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>>.
      </description>

      Next we have:\ 

      <\enumerate>
        <item>First <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n+m|)>=\<sim\><around*|[|<around*|(|n+m,0|)>|]>=\<sim\><around*|[|<around*|(|n,0|)>|]>+\<sim\><around*|[|<around*|(|m,0|)>|]>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>+i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|m|)>>.
        Secondly <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|0|)>=\<sim\><around*|[|<around*|(|0,0|)>|]>=0\<in\>\<bbb-Z\><rsup|+><rsub|0>>.

        <item>First

        <\eqnarray*>
          <tformat|<table|<row|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>\<cdot\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|m|)>>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n,0|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|m,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>m+0\<cdot\>m,0\<cdot\>n+n\<cdot\>0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>m,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n\<cdot\>m|)>>>>>
        </eqnarray*>

        Second <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|1|)>=\<sim\><around*|[|<around*|(|1,0|)>|]>=1\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
      </enumerate>

      <item>Let <math|z\<in\>\<bbb-Z\>> then
      <math|z=\<sim\><around*|[|<around*|(|n,m|)>|]>>, take
      <math|x=\<sim\><around*|[|<around*|(|n,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      and <math|y=\<sim\><around*|[|<around*|(|m,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      then we have\ 

      <\equation*>
        x-y=x+<around*|(|-y|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>+\<sim\><around*|[|<around*|(|0,m|)>|]>=\<sim\><around*|[|<around*|(|n,m|)>|]>=z
      </equation*>
    </enumerate>
  </proof>

  Next we define the set of non positive numbers.

  <\definition>
    <label|integers non positive numbers><math|\<bbb-Z\><rsup|-><rsub|0>=<around*|{|-n\|n\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>=<around*|{|<around*|(|0,n|)>\|n\<in\>\<bbb-N\><rsub|0>|}>\<subseteq\>\<bbb-Z\>>
  </definition>

  <\definition>
    <math|\<bbb-Z\><rsup|+>=\<bbb-Z\><rsup|+><rsub|0>\\<around*|{|0|}>> and
    <math|\<bbb-Z\><rsup|->=\<bbb-Z\><rsup|-><rsub|0>\\<around*|{|0|}>>
  </definition>

  The following theorem shows the relation between
  <math|\<bbb-Z\><rsup|+><rsub|0>> and <math|\<bbb-Z\><rsup|-><rsub|0>>.

  <\theorem>
    <label|integers positive and negative><math|\<bbb-Z\>=\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
    and <math|<around*|{|0|}>=\<bbb-Z\><rsup|+><rsub|0><big|cap>\<bbb-Z\><rsup|-><rsub|0>>
  </theorem>

  <\proof>
    As <math|\<bbb-Z\><rsup|+><rsub|0>\<subseteq\>\<bbb-Z\>> and
    <math|\<bbb-Z\><rsup|-><rsub|0>\<subseteq\>\<bbb-Z\>> it follows that\ 

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
      <reference|eq 7.6.022>]>>z>, proving that
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

  We can now define a order relation on <math|\<bbb-Z\>>.

  <\theorem>
    <label|integeres order><index|<math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>><math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>
    where

    <\equation*>
      \<leqslant\>=<around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><around*|\||y+<around*|(|-x|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>|\|>|}>
    </equation*>

    is a totally ordered set.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexivity>If <math|x\<in\>\<bbb-Z\>> then
      <math|x+<around*|(|-x|)>=0\<in\>\<bbb-Z\><rsup|+><rsub|0>> so that
      <math|x\<leqslant\>x>.

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
      Hence <math|y=y+<around*|(|-x|)>=x=0+x> from which it follows that
      <math|y=x>.

      <item*|transitivity>If <math|x\<leqslant\>y> and <math|y\<leqslant\>z>
      then <math|y+<around*|(|-x|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>> and
      <math|z+<around*|(|-y|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>. Then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|z+<around*|(|-x|)>>|<cell|=>|<cell|<around*|(|z+<around*|(|-x|)>|)>+0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|z+<around*|(|-x|)>|)>+<around*|(|y+<around*|(|-y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|y+<around*|(|-x|)>|)>+<around*|(|z+<around*|(|-y|)>|)>>>>>
      </eqnarray*>

      which as <math|y+<around*|(|-x|)>,z+<around*|(|-y|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      proves by [theorem: <reference|integers properties (1)>] that
      <math|z+<around*|(|-x|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>> proving that
      <math|x\<leqslant\>z>.

      <item*|total ordering>If <math|x,y\<in\>\<bbb-N\><rsub|0>> then we have
      for <math|x+<around*|(|-y|)>\<in\>\<bbb-Z\>\<equallim\><rsub|<text|[theorem:
      <reference|integers positive and negative>]>>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
      either:

      <\description>
        <item*|<math|x+<around*|(|-y|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>Then
        <math|y\<leqslant\>x>

        <item*|<math|x+<around*|(|-y|)>\<in\>\<bbb-Z\><rsup|-><rsub|0>>>Then
        <math|-<around*|(|x+<around*|(|-y|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>,
        further\ 

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
    <label|integers positive condition>If
    <math|x=\<sim\><around*|[|n,m|]>\<in\>\<bbb-Z\>> then we have

    <\enumerate>
      <item><math|0\<leqslant\>x\<Leftrightarrow\>m\<leqslant\>n>

      <item><math|0\<less\>x\<Leftrightarrow\>m\<less\>n>

      <item>If <math|0\<less\>x> then <math|1\<leqslant\>x>
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

      <item>If <math|0\<less\>x> then by (2) <math|m\<less\>n> so that by
      [theorem: <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>]

      <\equation*>
        m+1\<leqslant\>n.
      </equation*>

      Now

      <\equation*>
        x+<around*|(|-1|)>=\<sim\><around*|[|<around*|(|n,m|)>|]>+\<sim\><around*|[|<around*|(|0,1|)>|]>=\<sim\><around*|[|<around*|(|n,m+1|)>|]>
      </equation*>

      so that <math|0\<leqslant\>x+<around*|(|-1|)>>, hence
      <math|x+<around*|(|-1|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>> from which we
      conclude that\ 

      <\equation*>
        1\<leqslant\>x
      </equation*>
    </enumerate>
  </proof>

  <\corollary>
    <label|integers strict positive numbers><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|0\<leqslant\>\<sim\><around*|[|<around*|(|n,0|)>|]>>
    further if <math|n\<neq\>0> then <math|0\<less\>\<sim\><around*|[|<around*|(|n,0|)>|]>>
  </corollary>

  <\proof>
    By [theorem: <reference|natural numbers 0\<less\>=n>] we have
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that <math|0\<leqslant\>n> so
    that by [theorem: <reference|integers positive condition>] [
    <math|0\<leqslant\>\<sim\><around*|[|<around*|(|n,0|)>|]>>, further if
    <math|n\<neq\>0> then <math|0\<less\>n>, hence by \ [theorem:
    <reference|integers positive condition>] we have that
    <math|0\<less\>\<sim\><around*|[|<around*|(|n,0|)>|]>>
  </proof>

  <\example>
    <label|integers 0\<less\>1 and 0\<less\>2>0\<less\>1 and
    <math|0\<less\>2> where <math|1,2\<in\>\<bbb-Z\>>
  </example>

  <\proof>
    This follows directly from [corollary: <reference|integers strict
    positive numbers>] and the fact that for
    <math|1,2\<in\>\<bbb-N\><rsub|0>> we have <math|0\<less\>1> and
    <math|0\<less\>2>.
  </proof>

  <\theorem>
    <label|integers 0\<less\>n and 0\<less\>m then 0\<less\>n.m>If
    <math|x,y\<in\>\<bbb-Z\>> and <math|0\<less\>x\<wedge\>0\<less\>y> then
    <math|0\<less\>x\<cdot\>y>.
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

    As <math|0\<neq\>k\<Rightarrow\>0\<less\>k> and
    <math|0\<neq\>l\<Rightarrow\>0\<less\>l> it follows from [theorem:
    <reference|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>] that
    <math|0\<less\>k\<cdot\>l> so that <math|k\<cdot\>l\<neq\>0>, using the
    above together with [theorem: <reference|natural numbers
    n\<less\>m\<less\>=\<gtr\>there exists a k such that m=k>] proves that\ 

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

  <\theorem>
    <label|integers ordered ring><math|<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>,\<leqslant\>|\<rangle\>>>
    is a ordered integral domain [definition: <reference|ring ordered ring>]
  </theorem>

  <\proof>
    Using [theorem: <reference|integers integral domain>]
    <math|<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>> is a integral
    domain and using [theorem: <reference|integeres order>] we have that
    <math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>> is totaly
    ordered. Next\ 

    <\enumerate>
      <item>For <math|n,m,k\<in\>\<bbb-Z\>> with <math|n\<less\>m> \ we have
      \ 

      <\equation>
        <label|eq 7.7.046>m+<around*|(|-n|)>\<in\>\<bbb-Z\><rsub|0><rsup|+><text|
        and >n\<neq\>m\<Rightarrow\>n+k\<neq\>m+k
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|m+k|)>+<around*|(|-<around*|(|n+k|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|group inverse of x.y>]>>>|<cell|<around*|(|m+k|)>+<around*|(|<around*|(|-n|)>+<around*|(|-k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutatitivity>>>|<cell|<around*|(|m+k|)>+<around*|(|<around*|(|-k|)>+<around*|(|-n|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|m+<around*|(|k+<around*|(|<around*|(|-k|)>+<around*|(|-n|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|m+<around*|(|<around*|(|k+<around*|(|-k|)>|)>+<around*|(|-n|)>|)>>>|<row|<cell|>|<cell|=>|<cell|m+<around*|(|0+<around*|(|-n|)>|)>>>|<row|<cell|>|<cell|=>|<cell|m+<around*|(|-n|)>>>>>
      </eqnarray*>

      which by [eq: <reference|eq 7.7.046>] proves that
      <math|<around*|(|m+k|)>+<around*|(|-<around*|(|n+k|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
      Hence <math|n+k\<leqslant\>m+k> and <math|n+k\<neq\>m+k> proving that\ 

      <\equation*>
        n+k\<less\>m+k
      </equation*>

      <item>Let <math|n,m\<in\>\<bbb-Z\>> with <math|0\<less\>m> and
      <math|0\<less\>m> then by [theorem: <reference|integers 0\<less\>n and
      0\<less\>m then 0\<less\>n.m>] we have <math|0\<less\>n\<cdot\>m>.
    </enumerate>
  </proof>

  <\theorem>
    <label|integers order preserving bijection>Define
    <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
    by <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>>
    then

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>><text|
      is a order isomorphism>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|integers properties (1)> (3)] it follows that

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0><text|
      is a bijection>
    </equation*>

    Further we have:

    <\eqnarray*>
      <tformat|<table|<row|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|y|)>>|<cell|\<Leftrightarrow\>>|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|y|)>+<around*|(|-i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|x|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,0|)>|]>+<around*|(|-<around*|(|\<sim\><around*|[|<around*|(|x,0|)>|]>|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,0|)>|]>+\<sim\><around*|[|<around*|(|0,x|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,x|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
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
    <math|y\<less\>k\<cdot\>x>.
  </theorem>

  <\proof>
    We have the following cases for <math|y>:

    <\description>
      <item*|<math|y\<leqslant\>0>>Take <math|k=1\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      then as <math|y\<leqslant\>0\<less\>x=1\<cdot\>x=k\<cdot\>x> proving
      that <math|y\<less\>k\<cdot\>x>

      <item*|<math|0\<less\>y>>Then <math|y\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
      Using [theorem: <reference|integers properties (1)>]
      <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<cdot\>|\<rangle\>>>
      defined by <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>>
      is a group isomorphism. Take <math|n=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|x|)>>
      and <math|m=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|y|)>>
      then <math|x=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>*<around*|(|n|)>>
      and <math|n\<neq\>0> [otherwise <math|x=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|0|)>=0>].
      Using the Archimedean property of the natural numbers [see theorem:
      <reference|natural numbers Archimedean property>] there exists a
      <math|l\<in\>\<bbb-N\><rsub|0>> such that <math|m\<less\>l\<cdot\>n>.
      So by [theorem: <reference|integers order preserving bijection>] we
      have that

      <\equation>
        <label|eq 7.11.022>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|m|)>\<less\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|l\<cdot\>n|)>\<equallim\><rsub|<text|[theorem:
        <reference|integers properties (1)>]>>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|l|)>\<cdot\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>
      </equation>

      Take <math|k=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|l|)>\<in\>\<bbb-Z\><rsup|+><rsub|9>>
      then as <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|x|)>|)>=x>
      and <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|m|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|y|)>|)>=y>
      we have by [eq: <reference|eq 7.11.022>] that\ 

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
    that <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
    is a order isomorphism, further by [theorem: <reference|natural numbers
    are well ordered>] <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
    is well ordered. so using [theorem: <reference|order well ordered and
    order isomorphism>] we conclude that\ 

    <\equation*>
      <around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>><text|
      is well ordered>
    </equation*>
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
      i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>><text|
      is a order isomorphism>
    </equation*>

    which by [theorem: <reference|order isomorphism condition (2)>] means
    that\ 

    <\equation*>
      <around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1>:<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>><text|
      is a order isomorphism>
    </equation*>

    Assume that <math|M=sup<around*|(|A|)>> exists then by [theorem:
    <reference|order isomorphism preservers sup and inf>]
    <math|sup<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|A|)>|)>>
    exist and <math|sup<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|A|)>|)>=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|M|)>>.
    By [theorem: <reference|natural numbers sup property>] we have that
    <math|sup<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|A|)>|)>\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|A|)>>
    so that <math|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|M|)>\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|A|)>>,
    hence <math|M=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|M|)>|)>\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><rsup|-1><around*|(|A|)>|)>=A>
    or\ 

    <\equation*>
      sup<around*|(|A|)>\<in\>A
    </equation*>
  </proof>

  <\definition>
    <label|integers absolute value><index|absolute
    value><index|<math|<around*|\||x|\|>>><dueto|Absolute Value>If
    <math|x\<in\>\<bbb-Z\>> then <math|<around*|\||x|\|>> is defined by\ 

    <\equation*>
      <around*|\||x|\|>=<choice|<tformat|<table|<row|<cell|x <text| if
      >0\<leqslant\>x>>|<row|<cell|-x<text| if >x\<less\>0>>>>>
    </equation*>
  </definition>

  <\theorem>
    <label|integers \|x.y\|=\|x\|.\|y\|>If <math|x,y\<in\>\<bbb-Z\>> then
    <math|<around*|\||x\<cdot\>y|\|>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>
  </theorem>

  <\proof>
    We have the following possibilities for <math|x,y>:

    <\description>
      <item*|<math|0\<leqslant\>x\<wedge\>0\<leqslant\>y>>Then
      <math|<around*|\||x|\|>=x> and <math|<around*|\||y|\|>=y>. Further by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] <math|0=0\<cdot\>y\<leqslant\>x\<cdot\>y>, hence
      <math|x\<cdot\>y=<around*|\||x\<cdot\>y|\|>>. So we have that
      <math|<around*|\||x\<cdot\>y|\|>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>.\ 

      <item*|<math|0\<leqslant\>x\<wedge\>y\<less\>0>>Then
      <math|x=<around*|\||x|\|>> and <math|-y=<around*|\||y|\|>>, further by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] <math|x\<cdot\>y\<leqslant\>0\<cdot\>y=0>, hence
      <math|<around*|\||x\<cdot\>y|\|>=-<around*|(|x\<cdot\>y|)>>. So

      <\equation*>
        <around*|\||x|\|>\<cdot\><around*|\||y|\|>=x\<cdot\><around*|(|-y|)>\<equallim\><rsub|<text|[theorem:
        <reference|ring 0 1 and ->]>>-<around*|(|x\<cdot\>y|)>=<around*|\||x\<cdot\>y|\|>.
      </equation*>

      <item*|<math|x\<less\>0\<wedge\>0\<leqslant\>y>>Then
      <math|-x=<around*|\||x|\|>> and <math|y=<around*|\||y|\|>>, further by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] <math|x\<cdot\>y\<leqslant\>0\<cdot\>y=0>, hence
      <math|<around*|\||x\<cdot\>y|\|>=-<around*|(|x\<cdot\>y|)>>. So\ 

      <\equation*>
        <around*|\||x|\|>\<cdot\><around*|\||y|\|>=<around*|(|-x|)>\<cdot\>y\<equallim\><rsub|<text|[theorem:
        <reference|ring 0 1 and ->]>>-<around*|(|x,y|)>=<around*|\||x\<cdot\>y|\|>
      </equation*>

      <item*|<math|x\<less\>0\<wedge\>y\<less\>0>>Then
      <math|-x=<around*|\||x|\|>>, <math|-y=<around*|\||y|\|>>, further by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] <math|0=0\<cdot\>y\<less\>x\<cdot\>y>, hence
      <math|<around*|\||x\<cdot\>y|\|>=x\<cdot\>y>. So\ 

      <\equation*>
        <around*|\||x|\|>\<cdot\><around*|\||y|\|>=<around*|(|-x|)>\<cdot\><around*|(|-y|)>\<equallim\><rsub|<text|[theorem:
        <reference|ring 0 1 and ->]>>-<around*|(|-<around*|(|x\<cdot\>y|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|group group inverse of
        inverse>]>>x\<cdot\>y<around*|\||=x\<cdot\>y|\|>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|integers x\<less\>=\|x\|>If <math|x\<in\>\<bbb-Z\>> then
    <math|x\<leqslant\><around*|\||x|\|>>
  </theorem>

  <\proof>
    If <math|0\<leqslant\>x> then <math|x=<around*|\||x|\|>> so that
    trivially <math|x\<leqslant\><around*|\||x|\|>>, if <math|x\<less\>0>
    then by [theorem: <reference|integers positive condition>]
    <math|0\<less\>-x=<around*|\||x|\|>> so that by transitivity
    <math|x\<less\><around*|\||x|\|>> or <math|x\<leqslant\><around*|\||x|\|>>.
  </proof>

  <\theorem>
    <label|integers \|x\|\<less\>=\<gtr\>x=0><math|\<forall\>x\<in\>\<bbb-Z\>>
    we have <math|<around*|\||x|\|>=0\<Leftrightarrow\>x=0>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x=0> then <math|x\<leqslant\>0>
      so that <math|<around*|\||x|\|>=x=0> hence <math|<around*|\||q|\|>=0>

      <item*|<math|\<Leftarrow\>>>If <math|<around*|\||x|\|>=0> then if
      <math|x\<less\>0> we would have <math|-x=<around*|\||x|\|>=0> so that
      <math|-x=0\<Rightarrow\>x=0> contradicting <math|x\<less\>0>. So we
      must have <math|0\<leqslant\>x>, hence <math|x=<around*|\||x|\|>=0>
      proving that <math|x=0>.
    </description>
  </proof>

  We introduce now division, just as was done for the natural numbers.

  <\theorem>
    <label|integers division><dueto|Division Algorithm>If
    <math|n,m\<in\>\<bbb-Z\>> and <math|0\<less\>n> then there exists
    <with|font-series|bold|unique> <math|r\<in\>\<bbb-Z\><rsup|+><rsub|0>>,
    <math|q\<in\>\<bbb-Z\>> such that <math|0\<leqslant\>r\<less\>n> and
    <math|m=n\<cdot\>q+r>
  </theorem>

  <\proof>
    First we prove existence, let <math|m,n\<in\>\<bbb-Z\>> with
    <math|0\<less\>n>. Define

    <\equation*>
      A<rsub|n,m>=<around*|{|m+n\<cdot\>q\|q\<in\>\<bbb-Z\>\<wedge\>0\<leqslant\>m+n\<cdot\>q|}>\<subseteq\>\<bbb-Z\><rsup|+><rsub|0>.
    </equation*>

    Using the Archimedean property of <math|\<bbb-Z\>> [see theorem:
    <reference|integers Archimedean>] there exist a
    <math|k\<in\>\<bbb-Z\><rsub|0><rsup|+>> such that
    <math|-m\<less\>n\<cdot\>k>, using [theorems: <reference|integers ordered
    ring>, <reference|ring order properties>] it follows that
    <math|0\<less\>n\<cdot\>k+<around*|(|-<around*|(|-m|)>|)>=n\<cdot\>k+m=m+n\<cdot\>k>
    proving that <math|m+n\<cdot\>k\<in\>A<rsub|n,m>>, hence
    <math|A<rsub|n,m>\<neq\>\<varnothing\>>. As
    <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>
    is well-ordered [see theorem: <reference|integers positive integeres are
    well ordered>] <math|A<rsub|n,m>> has a least element, hence

    <\equation>
      <label|eq 7.12.022>\<exists\>r<rprime|'>\<in\>A<rsub|n,m><text| such
      that >\<forall\>a\<in\>A<rsub|n,m><text| we have
      >r<rprime|'>\<leqslant\>a
    </equation>

    As <math|r<rprime|'>\<in\>A<rsub|n,m>> there exist a
    <math|q<rprime|'>\<in\>\<bbb-Z\>> such that

    <\equation>
      <label|eq 7.13.022>r<rprime|'>=m+n\<cdot\>q<rprime|'><text| and
      >0\<leqslant\>r<rprime|'>
    </equation>

    Assume that <math|n\<less\>r<rprime|'>> then by [theorems:
    <reference|integers ordered ring>, <reference|ring order properties>]
    <math|\<exists\>k\<subset\>\<bbb-Z\><rsup|+><rsub|0>\\<around*|{|0|}>>
    such that <math|r<rprime|'>=n+k>. Hence <math|m+n\<cdot\>q<rprime|'>=n+k>
    so that <math|0\<less\>k=m+n\<cdot\>q<rprime|'>+<around*|(|-n|)>=m+<around*|(|q<rprime|'>-1|)>\<cdot\>n>
    proving that <math|k\<in\>A<rsub|n,m>>. Now
    <math|0\<less\>n\<Rightarrowlim\><rsub|<text|[theorems:
    <reference|integers ordered ring>, <reference|ring order
    properties>]>>k\<less\>n+k=r<rprime|'>\<Rightarrow\>k\<less\>r<rprime|'>>,
    as <math|k\<in\>A<rsub|n,m>> we have by [eq: <reference|eq 7.12.022>]
    <math|r<rprime|'>\<leqslant\>k>, giving the contradiction
    <math|k\<less\>k>. So we must have that <math|r<rprime|'>\<leqslant\>n>
    or\ 

    <\description>
      <item*|<math|r<rprime|'>=n>>In this case we we have that
      <math|m+n\<cdot\>q<rprime|'>=r<rprime|'>=n>, hence

      <\equation*>
        m=n+<around*|(|-<around*|(|n\<cdot\>q<rprime|'>|)>|)>=n\<cdot\>1+n\<cdot\><around*|(|-q<rprime|'>|)>=n\<cdot\><around*|(|1+<around*|(|-q<rprime|'>|)>|)>
      </equation*>

      So by taking <math|q=<around*|(|1+<around*|(|-q<rprime|'>|)>|)>> and
      <math|r=0\<less\>n> we have\ 

      <\equation*>
        m=n\<cdot\>q+r<text| and <math|0\<leqslant\>r\<less\>n>>
      </equation*>

      <item*|<math|r<rprime|'>\<less\>n>>Then as
      <math|r<rprime|'>=m+n\<cdot\>q<rprime|'>> we have
      <math|m=r<rprime|'>+<around*|(|-<around*|(|n\<cdot\>q<rprime|'>|)>|)>=r<rprime|'>+n\<cdot\><around*|(|-q<rprime|'>|)>>,
      so taking <math|q=-q<rprime|'>> and <math|r=r<rprime|'>> then

      <\equation*>
        m=n\<cdot\>q+r<infix-and>0\<leqslant\>r<rprime|'>\<less\>n
      </equation*>
    </description>

    Now for uniqueness assume that there exists
    <math|q<rsub|1>,q<rsub|2>\<in\>\<bbb-Z\>> and
    <math|r<rsub|1>,r<rsub|2>\<in\>\<bbb-Z\><rsup|+><rsub|0>> such that\ 

    <\equation*>
      m=n\<cdot\>q<rsub|1>+r<rsub|1>\<wedge\>m=n\<cdot\>q<rsub|2>+r<rsub|2>\<wedge\>0\<leqslant\>r<rsub|1>\<less\>n\<wedge\>0\<leqslant\>r<rsub|2>\<less\>n
    </equation*>

    Then

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>q<rsub|1>+r<rsub|1>=n\<cdot\>q<rsub|2>+r<rsub|2>>|<cell|\<Rightarrowlim\>>|<cell|n\<cdot\>q<rsub|1>+<around*|(|-<around*|(|n\<cdot\>q<rsub|2>|)>|)>=r<rsub|2>+<around*|(|-r<rsub|1>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n\<cdot\><around*|(|q<rsub|1>+<around*|(|-q<rsub|2>|)>|)>=r<rsub|2>+<around*|(|-r<rsub|1>|)><eq-number><label|eq
      7.16.022>>>|<row|<cell|n\<cdot\>q<rsub|1>+r<rsub|1>=n\<cdot\>q<rsub|2>+r<rsub|2>>|<cell|\<Rightarrow\>>|<cell|n\<cdot\>q<rsub|2>+<around*|(|-<around*|(|n\<cdot\>q<rsub|1>|)>|)>=r<rsub|1>+<around*|(|-r<rsub|2>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n\<cdot\><around*|(|q<rsub|2>+<around*|(|-q<rsub|1>|)>|)>=r<rsub|1>+<around*|(|-r<rsub|2>|)><eq-number><label|eq
      7.17.022>>>>>
    </eqnarray*>

    Assume now that <math|r<rsub|1>\<neq\>r<rsub|2>> then we have either:

    <\description>
      <item*|<math|r<rsub|1>\<less\>r<rsub|2>>>Then by [theorems:
      <reference|integers ordered ring>, <reference|ring order properties>]
      <math|0\<less\>r<rsub|2>+<around*|(|-r<rsub|1>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 7.16.022>]>>n\<cdot\><around*|(|q<rsub|1>+<around*|(|-q<rsub|2>|)>|)>>,
      hence <math|0\<cdot\>n\<less\><around*|(|q<rsub|1>+<around*|(|-q<rsub|2>|)>|)>\<cdot\>n>
      as <math|0\<less\>n> we must have by [theorems: <reference|integers
      ordered ring>, <reference|ring order properties>] that
      <math|0\<less\><around*|\<nobracket\>|q<rsub|1>+<around*|(|-q<rsub|2>|\<nobracket\>>|)>>.
      Using [theorem: <reference|integers positive condition>] we have

      <\equation>
        <label|eq 7.18.022>1\<leqslant\>q<rsub|1>+<around*|(|-q<rsub|2>|)>
      </equation>

      As <math|r<rsub|2>\<less\>n> we have by [theorems: <reference|integers
      ordered ring>, <reference|ring order properties>] that
      <math|r<rsub|2>+<around*|(|-r<rsub|1>|)>\<less\>n+<around*|(|-r<rsub|1>|)>>,
      further as <math|<around*|(|-r<rsub|1>|)>\<leqslant\>0<text| we have by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] that >n+<around*|(|-r<rsub|1>|)>\<leqslant\>n> so that
      <math|r<rsub|2>+<around*|(|-r<rsub|1>|)>\<less\>n>. Using this with
      [eq: <reference|eq 7.16.022>] gives
      <math|n\<cdot\><around*|(|q<rsub|1>+<around*|(|-q<rsub|2>|)>|)>\<less\>n=1\<cdot\>n>,
      hence using [theorems: <reference|integers ordered ring>,
      <reference|ring order properties>] we have that
      <math|q<rsub|2>+<around*|(|-q<rsub|1>|)>\<less\>1>, contradicting [eq:
      <reference|eq 7.18.022>]. So this case never occurs.

      <item*|<math|r<rsub|2>\<less\>r<rsub|1>>>Then by [theorems:
      <reference|integers ordered ring>, <reference|ring order properties>]
      <math|0\<less\>r<rsub|1>+<around*|(|-r<rsub|2>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 7.17.022>]>>n\<cdot\><around*|(|q<rsub|2>+<around*|(|-q<rsub|1>|)>|)>>,
      hence <math|0\<cdot\>n\<less\><around*|(|q<rsub|2>+<around*|(|-q<rsub|1>|)>|)>\<cdot\>n>
      as <math|0\<less\>n> we must have by [theorems: <reference|integers
      ordered ring>, <reference|ring order properties>] that
      <math|0\<less\><around*|\<nobracket\>|q<rsub|2>+<around*|(|-q<rsub|1>|\<nobracket\>>|)>>.
      Using [theorem: <reference|integers positive condition>] we have

      <\equation>
        <label|eq 7.19.022>1\<leqslant\>q<rsub|2>+<around*|(|-q<rsub|1>|)>
      </equation>

      As <math|r<rsub|1>\<less\>n> we have by [theorems: <reference|integers
      ordered ring>, <reference|ring order properties>] that
      <math|r<rsub|1>+<around*|(|-r<rsub|2>|)>\<less\>n+<around*|(|-r<rsub|2>|)>>,
      further as <math|<around*|(|-r<rsub|2>|)>\<leqslant\>0<text| we have by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] that >n+<around*|(|-r<rsub|2>|)>\<leqslant\>n> so that
      <math|r<rsub|1>+<around*|(|-r<rsub|2>|)>\<less\>n>. Using this with
      [eq: <reference|eq 7.17.022>] gives
      <math|n\<cdot\><around*|(|q<rsub|2>+<around*|(|-q<rsub|1>|)>|)>\<less\>n=1\<cdot\>n>,
      hence using [theorems: <reference|integers ordered ring>,
      <reference|ring order properties>] we have that
      <math|q<rsub|1>+<around*|(|-q<rsub|2>|)>\<less\>1>, contradicting [eq:
      <reference|eq 7.19.022>]. So this case never occurs.
    </description>

    As all the cases lead to a contradiction the assumption
    <math|r<rsub|1>\<neq\>r<rsub|2>> is wrong. Hence

    <\equation*>
      r<rsub|1>=r<rsub|2>
    </equation*>

    So <math|n\<cdot\>q<rsub|1>+r<rsub|1>\<equallim\><rsub|r<rsub|1>=r<rsub|2>>n\<cdot\>q<rsub|2>+r<rsub|1>>
    giving, by adding <math|-r<rsub|1>> to both sides, that
    <math|n\<cdot\>q<rsub|1>=n\<cdot\>q<rsub|2>>. Applying [theorem:
    <reference|integers n.r=k.r=\<gtr\>n=k>] proves then\ 

    <\equation*>
      q<rsub|1>=q<rsub|2>
    </equation*>
  </proof>

  <\definition>
    <label|integers divide relation><index|<math|m\|n>>If
    <math|n,m\<in\>\<bbb-Z\>> then we say that <math|n> divides <math|m>
    noted as <math|n\|m> if there exist a <math|q\<in\>\<bbb-Z\>> such that
    <math|q\<cdot\>n=m>, we call <math|n> a <with|font-series|bold|divisor>
    of <math|m>.
  </definition>

  <\example>
    Every integer is a divisor of <math|0>.
  </example>

  <\proof>
    If <math|n\<in\>\<bbb-Z\>> then <math|n\<cdot\>0=0>
  </proof>

  <\example>
    <label|integers divisor 1>If <math|n\<in\>\<bbb-Z\>> then <math|1\|n>
  </example>

  <\proof>
    As <math|1\<cdot\>n=n> we have by definition <math|1\|n>.
  </proof>

  <\theorem>
    <label|integers divisors >Let <math|m\<in\>\<bbb-Z\>> then if <math|n\|m>
    we have that <math|<around*|(|-n|)>\|m>. In other words if <math|n> is a
    divisor of <math|m> then <math|-n> is a divisor of <math|m>. As
    <math|<around*|\||n|\|>=<choice|<tformat|<table|<row|<cell|-n<text| if
    >n\<less\>0>>|<row|<cell|n<text| if >0\<leqslant\>n>>>>>> we have also
    that <math|n\|m\<Rightarrow\><around*|\||n|\|>\|m>/
  </theorem>

  <\proof>
    If <math|n\|m> then there exist a <math|q> such that <math|n\<cdot\>q=m>,
    then <math|<around*|(|-n|)>\<cdot\><around*|(|-q|)>=n\<cdot\>q=m> so that
    <math|<around*|(|-n|)>\|m>.
  </proof>

  <\theorem>
    <label|integers quotient theorem>If <math|m\<in\>\<bbb-Z\>> and
    <math|n\<in\>\<bbb-Z\>\\<around*|{|0|}>> a divisor of <math|m> then there
    exists a <with|font-series|bold|unique> <math|q> such that
    <math|n\<cdot\>q=m>
  </theorem>

  <\proof>
    Existence follows from the definition of divisor. Now for uniqueness
    assume that <math|q<rsub|1>,q<rsub|2>\<in\>\<bbb-Z\>> such that
    <math|n\<cdot\>q<rsub|1>=m=n\<cdot\>q<rsub|2>> then by [theorem:
    <reference|integers n.r=k.r=\<gtr\>n=k>] <math|q<rsub|1>=q<rsub|1>>.
  </proof>

  <\definition>
    <label|integers quotient><index|quotient><index|<math|<frac|m|n>>>If
    <math|m\<in\>\<bbb-Z\>> and <math|n\<in\>\<bbb-Z\>\\<around*|{|0|}>> then
    the unique number <math|q> such that <math|m=n\<cdot\>q> is called the
    <with|font-series|bold|quotient> of <math|n> and <math|m> and is noted as
    <math|<frac|m|n>>. So <math|n\<cdot\><frac|m|n>=m>.
  </definition>

  <\definition>
    <label|integers common divisor><dueto|Common Divisor>If
    <math|n,m\<in\>\<bbb-Z\>> then <math|d> is a
    <with|font-series|bold|common divisor> of <math|n<infix-and>>m if
    <math|d\|n> and <math|d\|m>.
  </definition>

  <\lemma>
    <label|integers divisors properties>If <math|n,m\<in\>\<bbb-Z\>> such
    that <math|m\<neq\>0> and <math|n\|m> then
    <math|n\<leqslant\><around*|\||m|\|>>
  </lemma>

  <\proof>
    As <math|n\|m> there exist a <math|q\<in\>\<bbb-Z\>> such that
    <math|n\<cdot\>q=m>, as <math|m\<neq\>0> we must have <math|q\<neq\>0>
    [otherwise <math|m=n\<cdot\>q=0>]. For <math|n,m> we have now the
    following possibilities to consider:

    <\description>
      <item*|<math|0\<less\>m\<wedge\>n\<leqslant\>0>>In this case we have
      <math|n\<leqslant\>0\<less\>m\<leqslant\><around*|\||m|\|>> so that
      <math|n\<leqslant\><around*|\||m|\|>>

      <item*|<math|0\<less\>m\<wedge\>0\<less\>n>>If
      <math|q\<leqslant\>0\<Rightarrowlim\><rsub|q\<neq\>0>q\<less\>0\<Rightarrowlim\><rsub|0\<less\>n\<wedge\><text|[theorems:
      <reference|integers ordered ring>, <reference|ring order
      properties>]>>q\<cdot\>n\<less\>0\<cdot\>n=0> so that
      <math|m=q\<cdot\>n\<less\>0> contradicting <math|0\<less\>m>, hence we
      must have that <math|0\<less\>q>. Using [theorem: <reference|integers
      positive condition>] we have <math|1\<leqslant\>q> so that by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] <math|n=1\<cdot\>n\<leqslant\>q\<cdot\>n=m=<around*|\||m|\|>>,
      hence <math|n\<leqslant\><around*|\||m|\|>>.

      <item*|<math|m\<less\>0\<wedge\>n\<leqslant\>0>>Then
      <math|0\<less\>-m=<around*|\||m|\|>> so that
      <math|n\<leqslant\>0\<less\><around*|\||m|\|>> giving
      <math|n\<leqslant\><around*|\||m|\|>>.

      <item*|<math|m\<less\>0\<wedge\>0\<less\>n>>If
      <math|0\<leqslant\>q\<Rightarrowlim\><rsub|q\<neq\>0>0\<less\>q\<Rightarrowlim\><rsub|0\<less\>n\<wedge\><text|[theorems:
      <reference|integers ordered ring>, <reference|ring order
      properties>]>>0=0\<cdot\>n\<less\>q\<cdot\>n=m> contradicting
      <math|m\<less\>0>, hence <math|q\<less\>0>., so that
      <math|0\<less\>-q>. Using [theorem: <reference|integers positive
      condition>] we have then

      <\equation*>
        1\<leqslant\>-q\<Rightarrowlim\><rsub|[theorems: <reference|integers
        ordered ring>, <reference|ring order
        properties>]>n=1\<cdot\>n\<leqslant\><around*|(|-q|)>\<cdot\>n=-<around*|(|q\<cdot\>n|)>=<around*|\||m|\|>
      </equation*>

      proving that <math|n\<leqslant\><around*|\||m|\|>.>
    </description>

    So in all cases we have\ 

    <\equation*>
      n\<leqslant\><around*|\||m|\|>
    </equation*>
  </proof>

  <\theorem>
    <label|integers gcd existence>Let <math|n,m\<in\>\<bbb-Z\>> with
    <math|n\<neq\>0> then <math|max<around*|(|<around*|{|d\<in\>\<bbb-Z\><rsup|+><rsub|0>\|d<text|
    is a common divisor of >n<text| and >m|}>|)>> exist and
    <math|0\<less\>1\<leqslant\>max<around*|(|<around*|{|d\<in\>\<bbb-Z\><rsup|+><rsub|0>\|d<text|
    is a common divisor of >n<text| and >m|}>|)>>
  </theorem>

  <\proof>
    Let <math|n,m\<in\>\<bbb-Z\>> and define
    <math|D<rsub|n,m>=<around*|{|d\<in\>\<bbb-Z\><rsup|+><rsub|0>\|d<text| is
    a common divisor of >n<text| and >m|}>>. By [example: <reference|integers
    divisor 1>] <math|1> is a common divisor of <math|n> and <math|m>, which
    as <math|0\<less\>1> means that <math|1\<in\>D<rsub|n,m>> so that
    <math|D<rsub|n,m>\<neq\>\<varnothing\>>. Let <math|d\<in\>D<rsub|n,m>>
    then as <math|d\|n> and <math|n\<neq\>0> we have by [lemma:
    <reference|integers divisors properties>] that
    <math|d\<leqslant\><around*|\||n|\|>> so that <math|D<rsub|n,m>> has a
    upper bound. As <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>
    is conditional complete [see theorem: <reference|integers are conditional
    complete>] it follows that <math|max<around*|(|D<rsub|n,m>|)>> exist.
  </proof>

  The above theorem ensures that the following definition is well defined,

  <\definition>
    <label|integers greatest common divisor>Let
    <math|n,m\<in\>\<bbb-Z\><rsup|+><rsub|0>> with <math|n\<neq\>0> then

    <\equation*>
      gcd<around*|(|n,m|)>=max<around*|(|<around*|{|d\<in\>\<bbb-Z\><rsup|+><rsub|0>\|d
      <text|is a common divisor if >n<text| and
      >m|}>|\<nobracket\>>\<geqslant\>1\<gtr\>0
    </equation*>

    <math|gcd<around*|(|n,m|)>> is called the <with|font-series|bold|greatest
    common divisor >of <math|n> and <math|m>.
  </definition>

  <\theorem>
    <label|integers gcd properties>If <math|n,m\<in\>\<bbb-Z\>> with
    <math|m\<neq\>0> then we have\ 

    <\enumerate>
      <item><math|<around*|{|d\<in\>\<bbb-Z\>\|d\|n/gcd<around*|(|n,m|)>\<wedge\>d\|m/gcd<around*|(|n,m|)>|}>=<around*|{|1,-1|}>>

      <item><math|gcd<around*|(|n/gcd<around*|(|n,m|)>,m/gcd<around*|(|n,m|)>|)>=1>
    </enumerate>
  </theorem>

  <\proof>
    \ As <math|gcd<around*|(|n,m|)>\|n> and <math|gcd<around*|(|n,m|)>\|m>
    the quotients <math|n/gcd<around*|(|n,m|)>> and
    <math|m/gcd<around*|(|n,m|)>> are well defined.

    <\enumerate>
      <item>Take <math|n<rprime|'>=n/gcd<around*|(|n,m|)>> and
      <math|m<rprime|'>=m/gcd<around*|(|n,m|)>> then
      <math|n=n<rprime|'>\<cdot\>gcd<around*|(|n,m|)>> and
      <math|m=m<rprime|'>\<cdot\>gcd<around*|(|n,m|)>>. If
      <math|d\|n<rprime|'>> and <math|d\|m<rprime|'>> there exists
      <math|n<rprime|''>,m<rprime|''>\<in\>\<bbb-Z\>> such that
      <math|n<rprime|''>\<cdot\>d=n<rprime|'>> and
      <math|m<rprime|''>\<cdot\>d=m<rprime|'>>. Multiplying both sides by
      <math|gcd<around*|(|n,m|)>> gives

      <\equation>
        <label|eq 7.18.027.1><around*|(|d\<cdot\>gcd<around*|(|n,m|)>|)>\<cdot\>n<rprime|''>=<around*|(|n<rprime|''>\<cdot\>d|)>\<cdot\>gcd<around*|(|n,m|)>=n<rprime|'>\<cdot\>gcd<around*|(|n,m|)>=n
      </equation>

      and\ 

      <\equation>
        <label|eq 7.19.027.1><around*|(|d\<cdot\>gcd<around*|(|n,m|)>|)>\<cdot\>m<rprime|''>=<around*|(|m<rprime|''>\<cdot\>d|)>\<cdot\>gcd<around*|(|n,m|)>=m<rprime|'>\<cdot\>gcd<around*|(|n,m|)>=m
      </equation>

      proving that <math|d\<cdot\>gcd<around*|(|n,m|)>\|n> and
      <math|d\<cdot\>gcd<around*|(|n,m|)>\|m> Usng [theorem:
      <reference|integers divisors >] and
      <math|0\<less\>gcd<around*|(|n,m|)>> we have that

      <\equation*>
        <around*|\||d|\|>\<cdot\>gcd<around*|(|n,m|)>\|n<text| and
        ><around*|\||d|\|>\<cdot\>gcd<around*|(|n,m|)>\|m
      </equation*>

      So by the definition of <math|gcd<around*|(|n,m|)>> we have then that\ 

      <\equation*>
        <around*|\||d|\|>\<cdot\>gcd<around*|(|n,m|)>\<leqslant\>gcd<around*|(|n,m|)>=1\<cdot\>gcd<around*|(|n,m|)>
      </equation*>

      As <math|0\<less\>gcd<around*|(|n,m|)>> we have by [theorems:
      <reference|integers ordered ring>, <reference|ring order properties>]
      and the above that\ 

      <\equation*>
        <around*|\||d|\|>\<leqslant\>1
      </equation*>

      If <math|d=0> then <math|>by [eq: <reference|eq 7.19.027.1>] <math|m=0>
      contradicting <math|m\<neq\>0> so we have <math|d\<neq\>0>, proving by
      [theorem: <reference|integers \|x\|\<less\>=\<gtr\>x=0>] that
      <math|<around*|\||d|\|>\<neq\>0> which as
      <math|0\<leqslant\><around*|\||d|\|>> implies that
      <math|0\<less\><around*|\||d|\|>> or using [theorem:
      <reference|integers positive condition>]
      <math|1\<leqslant\><around*|\||d|\|>>, which by the above proves that
      <math|<around*|\||d|\|>=1> hence <math|d=1> or <math|d=-1>. So\ 

      <\equation*>
        <around*|{|d\<in\>\<bbb-Z\>\|d\|n/gcd<around*|(|n,m|)>\<wedge\>d\|m/gcd<around*|(|n,m|)>|}>=<around*|{|1,-1|}>
      </equation*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|gcd<around*|(|n/gcd<around*|(|n,m|)>,m/gcd<around*|(|n,m|)>|)>>|<cell|=>|<cell|max<around*|(|<around*|{|d\<in\>\<bbb-Z\><rsup|+><rsub|0>\|d\|n/gcd<around*|(|n,m|)>\<wedge\>d\|m/gcd<around*|(|n,m|)>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|max<around*|(|<around*|{|1|}>|)>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\definition>
    <label|integers even odd><index|event integers><index|odd integers>A
    <math|z\<in\>\<bbb-Z\>> is <with|font-series|bold|even> if <math|2\|z>
    and <with|font-series|bold|odd> is <math|z> is not even.
  </definition>

  <\theorem>
    <label|integers even odd equivalences>Let <math|z\<in\>\<bbb-Z\>> then we
    have\ 

    <\enumerate>
      <item><math|z> is even <math|\<Leftrightarrow\>>
      <math|\<exists\>m\<in\>\<bbb-Z\>> such that <math|z=2\<cdot\>m>

      <item><math|z> is odd <math|\<Leftrightarrow\>>
      <math|\<exists\>m\<in\>\<bbb-Z\>> such that <math|z=2\<cdot\>m+1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|z<text| is even
        >>|<cell|\<Leftrightarrow\>>|<cell|2\|z>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>m\<in\>\<bbb-Z\><text|
        such that >z=2\<cdot\>m>>>>
      </eqnarray*>

      <item>Using the Division Algorithm [see: theorem: <reference|integers
      division>] there exists unique <math|q,r\<in\>\<bbb-Z\>> such that
      <math|z=2\<cdot\>q+r> and <math|0\<leqslant\>r\<less\>2> proving that
      <math|r\<in\><around*|{|0,1|}>>. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|z<text| is
        odd>>|<cell|\<Leftrightarrow\>>|<cell|z <text|is not
        even>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|r=0\<Rightarrow\>z
        is evn>>|<cell|z=2\<cdot\>q+1>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|integers even condition>If <math|z\<in\>\<bbb-Z\>> then we have\ 

    <\enumerate>
      <item><math|z> is even <math|\<Leftrightarrow\>>
      <math|z<rsup|2>=z\<cdot\>z> is even

      <item><math|z> is odd <math|\<Leftrightarrow\>>
      <math|z<rsup|2>=z\<cdot\>z> is odd
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|z> is even then <math|z=2\<cdot\>m> so that
      <math|z\<cdot\>z=<around*|(|2\<cdot\>m|)>\<cdot\><around*|(|2\<cdot\>m|)>=2\<cdot\><around*|(|2\<cdot\><around*|(|m\<cdot\>m|)>|)>>
      proving that <math|z\<cdot\>z> is even. If <math|z.z> is even then if
      <math|z> is odd we have <math|z=2\<cdot\>m+1> so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<cdot\>z>|<cell|=>|<cell|<around*|(|2\<cdot\>m+1|)>\<cdot\><around*|(|2\<cdot\>m+1|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\>*<around*|(|m\<cdot\><around*|(|2\<cdot\>m+1|)>|)>+2\<cdot\>m+1>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|m\<cdot\><around*|(|2\<cdot\>m+1|)>+m|)>+1>>>>
      </eqnarray*>

      proving that <math|z\<cdot\>z> is odd contradiction the fact that
      <math|z\<cdot\>z> is even, hence <math|z> should be even.

      <item> This follows from (1) by contra position.
    </enumerate>
  </proof>

  <section|Denumerability of the Integers>

  <\theorem>
    <label|integers denumerability><math|\<bbb-Z\><rsup|+><rsub|0>>,
    <math|\<bbb-Z\><rsup|+><rsub|0>> and <math|\<bbb-Z\>> are all denumerable
  </theorem>

  <\proof>
    Using [theorem: <reference|integers properties (1)> (3)] there exists a
    bijection <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
    so that <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-Z\><rsup|+><rsub|0>>

    <\equation*>
      \<bbb-Z\><rsup|+><rsub|0><text| is denumerable>
    </equation*>

    Define now <math|\<beta\>:\<bbb-Z\><rsup|+><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|-><rsub|0>>
    by <math|\<beta\><around*|(|n|)>=-n> then we have\ 

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|n|)>=\<beta\><around*|(|n<rprime|'>|)>>
      then <math|-n=-n<rprime|'>\<Rightarrow\>n=<around*|(|-<around*|(|-n|)>|)>=<around*|(|-<around*|(|-n<rprime|'>|)>|)>=n<rprime|'>>

      <item*|surjectivity>If <math|n\<in\>\<bbb-Z\><rsup|-><rsub|0>=<around*|{|-n\|n\<in\>\<bbb-Z\><rsup|-><rsub|0>|}>>
      there exists <math|m\<in\>\<bbb-Z\><rsup|+>> such that
      <math|n=-m=\<beta\><around*|(|m|)>>
    </description>

    Hence <math|\<beta\>:\<bbb-Z\><rsup|+><rsub|0>-\<less\>\<bbb-Z\><rsup|-><rsub|0>>
    is a bijection proving that <math|\<bbb-Z\><rsup|+><rsub|0>\<approx\>\<bbb-Z\><rsup|-><rsub|0>>.
    So using [theorem: <reference|equipotence finite, denumerable ,
    countable>] it follows that\ 

    <\equation*>
      \<bbb-Z\><rsup|-><rsub|0><text| is denumerable>
    </equation*>

    Finally as <math|\<bbb-Z\>\<equallim\><rsub|<text|[theorem:
    <reference|integers positive and negative>]>>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
    it followst by [theorem: <reference|denumerable union of a finite family
    of denumerable sets is denumerable>] that

    <\equation*>
      \<bbb-Z\><text| is denumerable>
    </equation*>
  </proof>

  <chapter|The Rational Numbers>

  In this chapter we will introduce the set of rational numbers and embed the
  integer numbers in it. Just as with <math|\<bbb-Z\>> and
  <math|\<bbb-N\><rsub|0>> we will introduce a order relation, a sum
  operator, a product operator, neutral elements for addition and
  multiplication as well as inverse elements. If we would use different
  symbols to note these we introduce a lot of excessive notation clutter. So
  we use the same symbols for the natural numbers, integers and rational
  numbers and use context to determine the meaning of the symbols involved.
  The following table should help you in determining the meaning of the
  different symbols based on the context of there usage.

  \;

  <block|<tformat|<table|<row|<cell|Context>|<cell|Expression>|<cell|Operator>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|n+m>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<cdot\>m>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<leqslant\>m>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<less\>m>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n-m>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n+0>
  or <math|0+n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<cdot\>1<text|
  or >1\<cdot\>n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|-n>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|n+m>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<cdot\>m>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<leqslant\>m>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-Z\>\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<less\>m>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n-m>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-Z\>,-|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|n+0>
  or <math|0+n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|n\<cdot\>1<text|
  or >1\<cdot\>n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|-n>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|q+r>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<cdot\>r>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<leqslant\>r>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-Q\>\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<less\>r>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,e\<in\>\<bbb-Q\>>>|<cell|<math|q-r>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-Q\>,-|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q/r>>|<cell|division
  in <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|q+0>
  or <math|0+q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|q\<cdot\>1<text|
  or >1\<cdot\>q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|-q>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>>>>

  \;

  \;

  <section|Definition and arithmetic>

  One of the problems that the integer numbers have is that the quotient of
  two numbers <math|n> and <math|m> is only defined if <math|n> divides
  <math|m>. The following example shows this issue.

  <\example>
    If <math|x> is a even number and <math|y> is a odd number then <math|x>
    can not divide <math|y>.
  </example>

  <\proof>
    As <math|x> is even there exists a <math|n\<in\>\<bbb-Z\>> such that
    <math|x=2\<cdot\>n> and as <math|y> is <math|odd> <math|y> is not even.
    Assume that <math|n\|m> then there exists a <math|q\<in\>\<bbb-Z\>> such
    that <math|x\<cdot\>y=m> but then <math|y=2\<cdot\><around*|(|x\<cdot\>q|)>>
    proving that <math|y> is even, contradicting the fact that <math|y> is
    odd.
  </proof>

  The rational number will resolve this defect. Just as we have done with set
  of integers we work with pairs of integers <math|*<around*|(|n,m|)>> that
  will be interpreted as the quotient <math|<frac|n|m>> [the quotient is the
  integer such that <math|<frac|n|m>\<cdot\>m=n>] if <math|m> divides
  <math|n> or a formal quotient if <math|m> does not divide <math|n>. We have
  to be carefull however for if <math|m=0> then the quotient only exist if
  <math|n=0> and then every integer is a quotient. So we should only consider
  pairs <math|<around*|(|n,m|)>> where <math|n\<in\>\<bbb-Z\>> and
  <math|m\<in\>\<bbb-Z\>\\<around*|{|0|}>>. Further we have that
  <math|<frac|8|4>=<frac|6|3>=<frac|4|2>=<frac|2|1>=2> so we have to define a
  equivalence relation and work with equivalence classes.\ 

  <\definition>
    <label|integers without 0><math|\<bbb-Z\><rsup|\<ast\>>=\<bbb-Z\>\\<around*|{|0|}>>
  </definition>

  <\theorem>
    <label|rational equivalence relation>The relation
    <math|\<simeq\>\<subseteq\><around*|(|\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>|)>\<times\><around*|(|\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>|)>>
    defined by\ 

    <\equation*>
      \<simeq\>=<around*|{|<around*|(|<around*|(|n,m|)>,<around*|(|r,s|)>|)>\<in\><around*|(|\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>|)>\<times\><around*|(|\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>|)>\|n\<cdot\>s=m\<cdot\>r|}>
    </equation*>

    is a equivalence relation in <math|\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexivity>If <math|<around*|{|n,m|}>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>
      then <math|n\<cdot\>m\<equallim\><rsub|<text|[theorem:
      <reference|integers integers forms a group>]>>m\<cdot\>n> so that
      <math|<around*|(|n,m|)>\<simeq\><around*|(|n,m|)>>

      <item*|symmetry>If <math|<around*|(|n,m|)>\<simeq\><around*|(|r,s|)>>
      then <math|n\<cdot\>s=m\<cdot\>r\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|integers integers forms a group>]>>r\<cdot\>m=s\<cdot\>n>
      proving that <math|<around*|(|r,s|)>\<simeq\><around*|(|n,m|)>>

      <item*|transitivity>If <math|<around*|(|n,m|)>\<simeq\><around*|(|k.l|)>>
      and <math|<around*|(|k,l|)>\<simeq\><around*|(|r,s|)>> then
      <math|n\<cdot\>l=m\<cdot\>k> and <math|k\<cdot\>s=l\<cdot\>r> then we
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|n\<cdot\>l|)>\<cdot\>s=<around*|(|m\<cdot\>k|)>\<cdot\>s>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<around*|(|n\<cdot\>s|)>\<cdot\>l=m\<cdot\><around*|(|k\<cdot\>s|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n\<cdot\>s|)>\<cdot\>l=m\<cdot\><around*|(|l\<cdot\>r|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<around*|(|n\<cdot\>s|)>\<cdot\>l=<around*|(|m\<cdot\>r|)>\<cdot\>l>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|l\<neq\>0\<wedge\><text|[theorem:
        <reference|integers n.r=k.r=\<gtr\>n=k>]>>>|<cell|n\<cdot\>s=m\<cdot\>r>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n,m|)>\<simeq\><around*|(|r,s|)>>>>>
      </eqnarray*>
    </description>
  </proof>

  <\definition>
    <label|rational numbers>The set of rational numbers noted as
    <math|\<bbb-Q\>> is defined as

    <\equation*>
      \<bbb-Q\>=<around*|(|\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>|)>/\<simeq\>
    </equation*>

    or using the definition of <math|<around*|(|\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>|)>/\<simeq\>>

    <\equation*>
      \<bbb-Q\>=<around*|{|\<simeq\><around*|[|<around*|(|n,m|)>|]>\|<around*|(|n,m|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>|}>
    </equation*>

    We note <math|\<simeq\><around*|[|<around*|(|n,m|)>|]>\<in\>\<bbb-Q\>> as
    <math|<frac|n|m>>, <math|n> is called the
    <with|font-series|bold|numerator> and <math|m> is called the
    <with|font-series|bold|denominator>. Using this notation we have that
    <math|<frac|n|m>=<frac|n<rprime|'>|m<rprime|'>>\<Leftrightarrow\>n\<cdot\>m<rprime|'>=m\<cdot\>n<rprime|'>>.
    In this new notation we have\ 

    <\equation*>
      \<bbb-Q\>=<around*|{|<frac|n|m>\|<around*|(|n,m|)>\<in\>\<bbb-Z\><rsup|\<ast\>>|}>
    </equation*>
  </definition>

  <\theorem>
    <label|rational n/m=n.k/m.k>If <math|k\<in\>\<bbb-Z\><rsup|\<ast\>>> and
    <math|<around*|(|n,m|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>
    then\ 

    <\enumerate>
      <item><math|<frac|n|m>=<frac|n\<cdot\>k|m\<cdot\>k>>

      <item><math|<frac|0|n>=<frac|0|1>>

      <item><math|<frac|n|m>=<frac|0|1>\<Leftrightarrow\>n=0>

      <item><math|<frac|n|m>\<neq\><frac|0|1>\<Leftrightarrow\>n\<neq\>0>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First as <math|k\<neq\>0> and <math|m\<neq\>0> we have that
      <math|m\<cdot\>k\<neq\>0> so that <math|<frac|n\<cdot\>k|m\<cdot\>k>\<in\>\<bbb-Q\>>.
      Further\ 

      <\equation*>
        n\<cdot\><around*|(|m\<cdot\>k|)>\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>m\<cdot\><around*|(|n\<cdot\>k|)>
      </equation*>

      proving that\ 

      <\equation*>
        <frac|n|m>=<frac|n\<cdot\>k|m\<cdot\>k>
      </equation*>

      <item>As <math|0\<cdot\>1=0=n\<cdot\>0> we have
      <math|<frac|0|n>=<frac|0|1>>

      <item><math|<frac|n|m>=<frac|0|1>\<Leftrightarrow\>n\<cdot\>1=m\<cdot\>0\<Leftrightarrow\>n=0>

      <item>This follows from (3) by contraposition.
    </enumerate>
  </proof>

  <\theorem>
    <label|rational sum operator (1)>Let <math|<frac|n|m>,<frac|n<rprime|'>|m<rprime|'>>,<frac|r|s>,<frac|r<rprime|'>|s<rprime|'>>\<in\>\<bbb-Q\>>
    are such that <math|<frac|n|m>=<frac|n<rprime|'>|m<rprime|'>>> and
    <math|<frac|r|s>=<frac|r<rprime|'>|s<rprime|'>>> then\ 

    <\equation*>
      <frac|n\<cdot\>s+r\<cdot\>m|m\<cdot\>s>,<frac|n<rprime|'>\<cdot\>s<rprime|'>+r<rprime|'>\<cdot\>m<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>\<in\>\<bbb-Q\><text|
      and ><frac|n\<cdot\>s+r\<cdot\>m|m\<cdot\>s>=<frac|n<rprime|'>\<cdot\>s<rprime|'>+r<rprime|'>\<cdot\>m<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>
    </equation*>
  </theorem>

  <\proof>
    First as <math|m\<neq\>0,m<rprime|'>\<neq\>0,s\<neq\>0> and
    <math|s<rprime|'>\<neq\>0> then <math|m\<cdot\>s\<neq\>0,m<rprime|'>\<cdot\>s<rprime|'>\<neq\>0>
    we have that\ 

    <\equation*>
      <frac|n\<cdot\>s+r\<cdot\>m|m\<cdot\>s>,<frac|n<rprime|'>\<cdot\>s<rprime|'>+r<rprime|'>\<cdot\>m<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>\<in\>\<bbb-Q\>
    </equation*>

    As <math|><math|<frac|n|m>=<frac|n<rprime|'>|m<rprime|'>>> and
    <math|<frac|r|s>=<frac|r<rprime|'>|s<rprime|'>>> we have

    <\equation>
      <label|eq 8.1.023>n\<cdot\>m<rprime|'>=m\<cdot\>n<rprime|'>\<wedge\>r\<cdot\>s<rprime|'>=s\<cdot\>r<rprime|'>
    </equation>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|n\<cdot\>s+r\<cdot\>m|)>\<cdot\><around*|(|m<rprime|'>\<cdot\>s<rprime|'>|)>>|<cell|=>|<cell|<around*|(|n\<cdot\>s|)>\<cdot\><around*|(|m<rprime|'>\<cdot\>s<rprime|'>|)>+<around*|(|r\<cdot\>m|)>\<cdot\><around*|(|m<rprime|'>\<cdot\>s<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>>|<cell|<around*|(|n\<cdot\>m<rprime|'>|)>\<cdot\><around*|(|s\<cdot\>s<rprime|'>|)>+<around*|(|r\<cdot\>s<rprime|'>|)>\<cdot\><around*|(|m\<cdot\>m<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 8.1.023>]>>>|<cell|<around*|(|m\<cdot\>n<rprime|'>|)>\<cdot\><around*|(|s\<cdot\>s<rprime|'>|)>+<around*|(|s\<cdot\>r<rprime|'>|)>\<cdot\><around*|(|m\<cdot\>m<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>>|<cell|<around*|(|n<rprime|'>\<cdot\>s|)>\<cdot\><around*|(|m\<cdot\>s|)>+<around*|(|r<rprime|'>\<cdot\>m<rprime|'>|)>\<cdot\><around*|(|m\<cdot\>s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>>|<cell|<around*|(|n<rprime|'>\<cdot\>s+r<rprime|'>\<cdot\>m<rprime|'>|)>\<cdot\><around*|(|m\<cdot\>s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>>|<cell|<around*|(|m\<cdot\>s|)>\<cdot\><around*|(|n<rprime|'>\<cdot\>s+r<rprime|'>\<cdot\>m<rprime|'>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <frac|n\<cdot\>s+r\<cdot\>m|m\<cdot\>s>=<frac|n<rprime|'>\<cdot\>s<rprime|'>+r<rprime|'>\<cdot\>m<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>
    </equation*>
  </proof>

  The above theorem ensures that the following is well-defined, independent
  of the representation.

  <\definition>
    <label|rational sum operator>The sum operator
    <math|+:\<bbb-Q\>\<times\>\<bbb-Q\>\<rightarrow\>\<bbb-Q\>> is defined by\ 

    <\equation*>
      <frac|n|m>+<frac|r|s>=<frac|n\<cdot\>s+m\<cdot\>r|m\<cdot\>s>
    </equation*>
  </definition>

  <\theorem>
    <label|rational group><index|<math|<around*|\<langle\>|\<bbb-Q\>,+|)>>><math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>
    is a <with|font-series|bold|Abelian group> with neutral element
    <math|0=<frac|0|1>> and for every <math|<frac|n|m>\<in\>\<bbb-Q\>> the
    inverse element <math|<frac|-n|m>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|associativity> Let <math|<frac|a|b>,<frac|c|d>,<frac|e|f>\<in\>\<bbb-Q\>>
      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a|b>+<around*|(|<frac|c|d>+<frac|e|f>|)>>|<cell|=>|<cell|<frac|a|b>+<frac|c\<cdot\>f+d\<cdot\>e|d\<cdot\>f>>>|<row|<cell|>|<cell|=>|<cell|<frac|a\<cdot\><around*|(|d\<cdot\>f|)>+b\<cdot\><around*|(|c\<cdot\>f+d\<cdot\>e|)>|b\<cdot\><around*|(|d\<cdot\>f|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|<around*|(|a\<cdot\>d|)>\<cdot\>f+<around*|(|c\<cdot\>b|)>\<cdot\>f+<around*|(|b\<cdot\>d|)>\<cdot\>e|<around*|(|b\<cdot\>d|)>\<cdot\>f>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|<around|(|a\<cdot\>d+c\<cdot\>b|)>\<cdot\>f+<around*|(|b\<cdot\>d|)>\<cdot\>e|<around*|(|b\<cdot\>d|)>\<cdot\>f>>>|<row|<cell|>|<cell|=>|<cell|<frac|a\<cdot\>d+c\<cdot\>b|b\<cdot\>d>+<frac|e|f>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|a|b>+<frac|c|d>|)>+<frac|e|f>>>>>
      </eqnarray*>

      <item*|commutativity>Let <math|<frac|a|b>,<frac|c|d>\<in\>\<bbb-Q\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a|b>+<frac|c|d>>|<cell|=>|<cell|<frac|a\<cdot\>d+b\<cdot\>c|b\<cdot\>d>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|c\<cdot\>b+d\<cdot\>a|d\<cdot\>b>>>|<row|<cell|>|<cell|=>|<cell|<frac|c|d>+<frac|a|b>>>>>
      </eqnarray*>

      <item*|neutral element>Let <math|<frac|a|b>\<in\>\<bbb-Q\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a|b>+<frac|0|1>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<frac|a\<cdot\>1+b\<cdot\>0|b\<cdot\>1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>] and [theorem: <reference|ring 0
        1 and ->]>>>|<cell|<frac|a|b>>>>>
      </eqnarray*>

      <item*|inverse element> Let <math|<frac|a|b>\<in\>\<bbb-Q\>> then we
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a|b>+<frac|-a|b>>|<cell|=>|<cell|<frac|-a|b>+<frac|a|b>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|-a|)>\<cdot\>b+b\<cdot\>a|b\<cdot\>b>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|b\<cdot\><around*|(|<around*|(|-a|)>+a|)>|b\<cdot\>b>>>|<row|<cell|>|<cell|=>|<cell|<frac|b\<cdot\>0|b\<cdot\>b>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|0|b\<cdot\>b>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|rational n/m=n.k/m.k>]>>>|<cell|<frac|0|1>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>
    </description>
  </proof>

  <\definition>
    <label|rational x-y>If <math|x,y\<in\>\<bbb-Q\>> then
    <math|x-y=x+<around*|(|-y|)>>
  </definition>

  Next we define multiplication.

  <\theorem>
    <label|rational product (1)>If <math|<frac|n|m>,<frac|n<rprime|'>|m<rprime|'>>,<frac|r|s>,<frac|r<rprime|'>|s<rprime|'>>\<in\>\<bbb-Q\>>
    such that <math|<frac|n|m>=<frac|n<rprime|'>|m<rprime|'>>> and
    <math|<frac|r|s>=<frac|r<rprime|'>|s<rprime|'>>> then\ 

    <\equation*>
      <frac|n\<cdot\>r|m\<cdot\>s>,<frac|n<rprime|'>\<cdot\>r<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>\<in\>\<bbb-Q\><text|
      and ><frac|n\<cdot\>r|m\<cdot\>s>=<frac|n<rprime|'>\<cdot\>r<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>
    </equation*>
  </theorem>

  <\proof>
    First as <math|m\<neq\>0,m<rprime|'>\<neq\>0,s\<neq\>0> and
    <math|s<rprime|'>\<neq\>0> we have that <math|m\<cdot\>s\<neq\>0> and
    <math|m<rprime|'>\<cdot\>s<rprime|'>\<neq\>0> so that
    <math|<frac|n\<cdot\>r|m\<cdot\>s>,<frac|n<rprime|'>\<cdot\>r<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>\<in\>\<bbb-Q\>>.
    As <math|<frac|n|m>=<frac|n<rprime|'>|m<rprime|'>>> and
    <math|<frac|r|s>=<frac|r<rprime|'>|s<rprime|'>>> we have also that\ 

    <\equation>
      <label|eq 8.2.023>n\<cdot\>m<rprime|'>=m\<cdot\>n<rprime|'>\<wedge\>r\<cdot\>s<rprime|'>=s\<cdot\>r<rprime|'>
    </equation>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|n\<cdot\>r|)>\<cdot\><around*|(|m<rprime|'>\<cdot\>s<rprime|'>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>>|<cell|<around*|(|n\<cdot\>m<rprime|'>|)>\<cdot\><around*|(|r\<cdot\>s<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 8.2.023>]>>>|<cell|<around*|(|m\<cdot\>n<rprime|'>|)>\<cdot\><around*|(|s\<cdot\>r<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|m\<cdot\>s|)>\<cdot\><around*|(|n<rprime|'>\<cdot\>r<rprime|'>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      <frac|n\<cdot\>r|m\<cdot\>s>=<frac|n<rprime|'>\<cdot\>r<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>
    </equation*>
  </proof>

  The above theorem ensures that the next definition is well defined.

  <\definition>
    <label|rational product>The product operator
    \ <math|\<cdot\>:<math|\<bbb-Q\>\<times\>\<bbb-Q\>\<rightarrow\>\<bbb-Q\>>>
    is defined by\ 

    <\equation*>
      <frac|n|m>\<cdot\><frac|r|s>=<frac|n\<cdot\>r|m\<cdot\>s>
    </equation*>
  </definition>

  <\theorem>
    <label|rational field><index|<math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>><math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>
    is a field [see [definition: <reference|field>] \ more specifically:

    <\enumerate>
      <item><math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>> is a Abelian
      group [see theorem: <reference|rational group>]\ 

      <item><math|\<cdot\>:\<bbb-Q\>\<times\>\<bbb-Q\>\<rightarrow\>\<bbb-Q\>>
      satisfies

      <\description>
        <item*|distributivity><math|\<forall\>x,y,z\<in\>\<bbb-Q\>> we have
        <math|x\<cdot\><around*|(|y+z|)>=x\<cdot\>y+x\<cdot\>z>

        <item*|commutativity><math|\<forall\>x,y\<in\>\<bbb-Q\>> we have
        <math|x\<cdot\>y=y\<cdot\>x>

        <item*|neutral element><math|\<forall\>x\<in\>\<bbb-Q\>>
        <math|<frac|1|1>\<cdot\>x=1=x\<cdot\><frac|1|1>>, so
        <math|1\<equallim\><rsub|definition><frac|1|1>> is the neutral
        element.\ 

        <item*|associativity><math|\<forall\>x,y,z\<in\>\<bbb-Q\>>
        <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

        <item*|inverse element><math|\<forall\>x\<in\>\<bbb-Q\>\\<around*|{|0|}>>
        there exists a <math|x<rsup|-1>\<cdot\>x=x\<cdot\>x<rsup|-1>>. More
        specific if <math|x=<frac|a|b>\<neq\>0> then
        <math|x<rsup|-1>=<frac|b|a>>.
      </description>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from [theorem: <reference|rational group>].

      <item>We have:

      <\description>
        <item*|distributivity>Let <math|<frac|a|b>,<frac|c|d>,<frac|e|f>\<in\>\<bbb-Q\>>
        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|a|b>\<cdot\><frac|c|d>+<frac|a|b>\<cdot\><frac|e|f>>|<cell|=>|<cell|<frac|a\<cdot\>c|b\<cdot\>d>+<frac|a\<cdot\>e|b\<cdot\>f>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|a\<cdot\>c|)>\<cdot\><around*|(|b\<cdot\>f|)>+<around*|(|b\<cdot\>d|)>\<cdot\><around*|(|a\<cdot\>e|)>|<around*|(|b\<cdot\>d|)>\<cdot\><around*|(|b\<cdot\>f|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers integral domain>]>>>|<cell|<frac|b\<cdot\><around*|(|a\<cdot\><around*|(|c\<cdot\>f|)>|)>+b\<cdot\><around*|(|a\<cdot\><around*|(|d\<cdot\>e|)>|)>|b\<cdot\><around*|(|b\<cdot\><around*|(|d\<cdot\>f|)>|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers integral domain>]>>>|<cell|<frac|b\<cdot\><around*|(|a\<cdot\><around*|(|c\<cdot\>f|)>+a\<cdot\><around*|(|d\<cdot\>e|)>|)>|b\<cdot\><around*|(|b\<cdot\><around*|(|d\<cdot\>f|)>|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|b\<neq\>0\<wedge\><text|[theorem:
          <reference|rational n/m=n.k/m.k>]>>>|<cell|<frac||><frac|a\<cdot\><around*|(|c\<cdot\>f|)>+a\<cdot\><around*|(|d\<cdot\>e|)>|b\<cdot\><around*|(|d\<cdot\>f|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|a|b>\<cdot\><around*|(|<frac|c\<cdot\>f+d\<cdot\>e|d\<cdot\>f>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|a|b>\<cdot\><around*|(|<frac|c|d>+<frac|e|f>|)>>>>>
        </eqnarray*>

        <item*|commutativity>Let <math|<frac|a|b>,<frac|c|d>\<in\>\<bbb-Q\>>
        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|a|b>\<cdot\><frac|c|d>>|<cell|=>|<cell|<frac|a\<cdot\>c|b\<cdot\>d>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers integral domain>]>>>|<cell|<frac|c\<cdot\>a|d\<cdot\>b>>>|<row|<cell|>|<cell|=>|<cell|<frac|c|d>\<cdot\><frac|a|b>>>>>
        </eqnarray*>

        <item*|neutral element>Let <math|<frac|a|b>\<in\>\<bbb-Q\>> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|1|1>\<cdot\><frac|a|b>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<frac|a|b>\<cdot\><frac|1|1>>>|<row|<cell|>|<cell|=>|<cell|<frac|a\<cdot\>1|b\<cdot\>1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers integral domain>]>>>|<cell|<frac|a|b>>>>>
        </eqnarray*>

        <item*|associativity>Let <math|<frac|a|b>,<frac|c|d>,<frac|e|f>\<in\>\<bbb-Q\>>
        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|a|b>\<cdot\><around*|(|<frac|c|d>\<cdot\><frac|e|f>|)>>|<cell|=>|<cell|<frac|a|b>\<cdot\><frac|c\<cdot\>e|d\<cdot\>f>>>|<row|<cell|>|<cell|=>|<cell|<frac|a\<cdot\><around*|(|c\<cdot\>e|)>|b\<cdot\><around*|(|d\<cdot\>f|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers integral domain>]>>>|<cell|<frac|<around*|(|a\<cdot\>c|)>\<cdot\>e|<around*|(|b\<cdot\>d|)>\<cdot\>f>>>|<row|<cell|>|<cell|=>|<cell|<frac|a\<cdot\>c|b\<cdot\>d>\<cdot\><frac|e|f>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|a|b>\<cdot\><frac|c|d>|)>\<cdot\><frac|e|f>>>>>
        </eqnarray*>

        <item*|inverse element>Let <math|<frac|a|b>\<in\>\<bbb-Q\>\\<around*|{|0|}>>
        then <math|<frac|a|b>\<neq\><frac|0|1>\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|rational n/m=n.k/m.k>]>>a\<neq\>0> so that
        <math|<frac|b|a>\<in\>\<bbb-Q\>>, then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|a|b>\<cdot\><frac|b|a>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<frac|b|a>\<cdot\><frac|a|b>>>|<row|<cell|>|<cell|=>|<cell|<frac|b\<cdot\>a|a\<cdot\>b>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers integral domain>]>>>|<cell|<frac|1\<cdot\><around*|(|a\<cdot\>b|)>|1\<cdot\><around*|(|a\<cdot\>b|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|a\<cdot\>b\<neq\>0\<wedge\><text|[theorem:
          <reference|rational n/m=n.k/m.k>]>>>|<cell|<frac|1|1>>>>>
        </eqnarray*>
      </description>
    </enumerate>
  </proof>

  <\example>
    <label|rational 1+1=2><math|1+1=2> and <math|2<rsup|-1>=<frac|1|2>> where
    <math|2=<frac|2|1>>.
  </example>

  <\proof>
    <math|<frac|1|1>+<frac|1|1>=<frac|1\<cdot\>1+1\<cdot\>1|1\<cdot\>1>=<frac|1+1|1>\<equallim\><rsub|<text|[theorem:
    <reference|integers 1+1=2>]>><frac|2|1>=2>, so
    <math|2<rsup|-1>=<around*|(|<frac|2|1>|)><rsup|-1>=<frac|1|2>>
  </proof>

  <\theorem>
    <label|rational q=r\<less\>=\<gtr\>q.s=r.s>Let <math|q,r\<in\>\<bbb-Q\>>
    and <math|s\<neq\>0> then\ 

    <\enumerate>
      <item><math|q=r\<Leftrightarrow\>q\<cdot\>s=r\<cdot\>s>

      <item><math|q\<neq\>r\<Leftrightarrow\>q\<cdot\>s\<neq\>r\<cdot\>s>
    </enumerate>
  </theorem>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|q=r> then
        <math|q\<cdot\>s=r\<cdot\>s>

        <item*|<math|\<Leftarrow\>>>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|q\<cdot\>s=r\<cdot\>s>|<cell|\<Rightarrowlim\><rsub|s\<neq\>0>>|<cell|<around*|(|q\<cdot\>s|)>\<cdot\>s<rsup|-1>=<around*|(|r\<cdot\>s|)>\<cdot\>s<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
          <reference|rational field>]>>>|<cell|q\<cdot\><around*|(|s\<cdot\>s<rsup|-1>|)>=r\<cdot\><around*|(|s\<cdot\>s<rsup|-1>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
          <reference|rational field>]>>>|<cell|q\<cdot\>1=r\<cdot\>1>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
          <reference|rational field>]>>>|<cell|q\<cdot\>s=r\<cdot\>s>>>>
        </eqnarray*>
      </description>

      <item>This follows by contraposition.
    </enumerate>

    \;

    \;
  </proof>

  <section|Order Relation>

  <\definition>
    <label|sign function>The set of non negative rational numbers
    <math|\<bbb-Q\><rsup|+><rsub|0>> and the set of non positive numbers
    <math|\<bbb-Q\><rsup|-><rsub|0>> is defined by:

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<bbb-Q\><rsup|+><rsub|0>>|<cell|=>|<cell|<around*|{|<frac|a|b>\|<around*|(|a,b|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>\<wedge\>a\<cdot\>b\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>\<equallim\><rsub|<text|[theorem:
      <reference|integers {x\|-\<less\>=x}>]>><around*|{|<frac|a|b>\|<around*|(|a,b|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>\<wedge\>0\<leqslant\>a\<cdot\>b|}>>>|<row|<cell|\<bbb-Q\><rsup|-><rsub|0>>|<cell|=>|<cell|<around*|{|<frac|a|b>\|<around*|(|a,b|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>\<wedge\>a\<cdot\>b\<in\>\<bbb-Z\><rsup|-><rsub|0>|}>\<equallim\><rsub|<text|[theorem:
      <reference|integers {x\|-\<less\>=x}>]>><around*|{|<frac|a|b>\|<around*|(|a,b|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>\<wedge\>a\<cdot\>b\<leqslant\>0|}>>>>>
    </eqnarray*>
  </definition>

  <\theorem>
    <label|rational {0}><math|\<bbb-Q\>=\<bbb-Q\><rsup|+><rsub|0><big|cup>\<bbb-Q\><rsup|-><rsub|0>>
    and <math|<around*|{|0|}>=\<bbb-Q\><rsup|+><rsub|0><big|cap>\<bbb-Q\><rsup|-><rsub|0>>
  </theorem>

  <\proof>
    If <math|q\<in\>\<bbb-Q\>> then <math|\<exists\><around*|(|a,b|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>
    such that <math|q=<frac|a|b>>, as <math|a\<cdot\>b\<in\>\<bbb-Z\>\<equallim\><rsub|<text|[theorem:
    <reference|integers positive and negative>]>>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
    we have either:

    <\description>
      <item*|<math|a\<cdot\>b\<in\>\<bbb-Z\><rsup|+><rsub|0>>>Then
      <math|q=<frac|a|b>\<in\>\<bbb-Q\><rsup|+><rsub|0>>

      <item*|<math|a\<cdot\>b\<in\>\<bbb-Z\><rsup|-><rsub|0>>>Then
      <math|q=<frac|a|b>\<in\>\<bbb-Q\><rsup|-><rsub|0>>
    </description>

    proving that\ 

    <\equation*>
      \<bbb-Q\>\<subseteq\>\<bbb-Q\><rsup|+><big|cup>\<bbb-Q\><rsup|-><rsub|0>
    </equation*>

    As trivially <math|\<bbb-Q\><rsup|+><rsub|0>\<subseteq\>\<bbb-Q\>> and
    <math|\<bbb-Q\><rsup|-><rsub|0>\<subseteq\>\<bbb-Q\>> we have that
    <math|\<bbb-Q\><rsup|+><rsub|0><big|cup>\<bbb-Q\><rsup|-><rsub|0>\<subseteq\>\<bbb-Q\>>,
    which by the above proves that\ 

    <\equation*>
      \<bbb-Q\>=\<bbb-Q\><rsup|+><rsub|0><big|cup>\<bbb-Q\><rsup|-><rsub|0>
    </equation*>

    If <math|q\<in\><around*|{|0|}>> then <math|q=<frac|0|1>> so that
    <math|0\<cdot\>1=0\<in\>\<bbb-Z\><rsup|+><rsub|0>> and
    <math|0\<cdot\>1=0\<in\>\<bbb-Z\><rsup|-><rsub|0>> so that
    <math|q\<in\>\<bbb-Q\><rsup|+><rsub|0><big|cap>\<bbb-Q\><rsup|-><rsub|0>>
    proving that\ 

    <\equation>
      <label|eq 8.3.023><around*|{|0|}>\<subseteq\>\<bbb-Q\><rsup|+><rsub|0><big|cap>\<bbb-Q\><rsup|-><rsub|0>
    </equation>

    If <math|q\<in\>\<bbb-Q\><rsup|+><rsub|0><big|cap>\<bbb-Q\><rsup|-><rsub|0>>
    then there exist <math|<around*|(|a,b|)>,<around*|(|c,d|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>\<Rightarrow\>b\<neq\>0\<neq\>d>
    such that <math|a\<cdot\>b\<in\>\<bbb-Z\><rsup|+><rsub|0>\<Rightarrow\>0\<leqslant\>a\<cdot\>b>,
    <math|c\<cdot\>d\<in\>\<bbb-Z\><rsup|<rsup|->><rsub|0>\<Rightarrow\>c\<cdot\>d\<leqslant\>0>
    and <math|<frac|a|b>=<frac|c|d>\<Rightarrow\>a\<cdot\>d=b\<cdot\>c>.
    Assume that <math|a\<neq\>0> then we have either:

    <\description>
      <item*|<math|0\<less\>a>>Assume that <math|b\<less\>0> then by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] <math|a\<cdot\>b\<less\>0> contradicting
      <math|0\<leqslant\>a\<cdot\>b>, so we must have that
      <math|0\<leqslant\>b> which as <math|b\<neq\>0> gives\ 

      <\equation>
        <label|eq 8.4.023>0\<less\>b
      </equation>

      As <math|d\<neq\>0> we have by [theorems: <reference|integers ordered
      ring>, <reference|ring order properties>] that
      <math|0\<less\>d\<cdot\>d> so that by [theorems: <reference|integers
      ordered ring>, <reference|ring order properties>]

      <\equation>
        <label|eq 8.5.023>0\<less\>a\<cdot\><around*|(|d\<cdot\>d|)>=<around*|(|a\<cdot\>d|)>\<cdot\>d\<equallim\><rsub|a\<cdot\>d=b\<cdot\>c><around*|(|b\<cdot\>c|)>\<cdot\>d=<around*|(|c\<cdot\>d|)>\<cdot\>b
      </equation>

      Using [theorems: <reference|integers ordered ring>, <reference|ring
      order properties>] on [eq: <reference|eq 8.4.023>] and [eq:
      <reference|eq 8.5.023>] we have that <math|0\<less\>c\<cdot\>d>
      contradicting <math|c\<leqslant\>d>.

      <item*|<math|a\<less\>0>>Assume that <math|0\<less\>b> then by
      [theorems: <reference|integers ordered ring>, <reference|ring order
      properties>] <math|a\<cdot\>b\<less\>0> contradicting
      <math|0\<leqslant\>a\<cdot\>b>, so we must have that
      <math|0\<leqslant\>b> which as <math|b\<neq\>0> gives\ 

      <\equation>
        <label|eq 8.6.023>b\<less\>0
      </equation>

      As <math|d\<neq\>0> we have by [theorems: <reference|integers ordered
      ring>, <reference|ring order properties>] that
      <math|0\<less\>d\<cdot\>d> so that by [theorems: <reference|integers
      ordered ring>, <reference|ring order properties>]
      <math|a\<cdot\><around*|(|d\<cdot\>d|)>\<less\>0>, hence as
      <math|a\<cdot\>d=b\<cdot\>c>

      <\equation>
        <label|eq 8.7.023><around*|(|c\<cdot\>d|)>\<cdot\>b=<around*|(|b\<cdot\>c|)>\<cdot\>d=<around*|(|a\<cdot\>d|)>\<cdot\>d=a\<cdot\><around*|(|d\<cdot\>d|)>\<less\>0
      </equation>

      Using [theorems: <reference|integers ordered ring>, <reference|ring
      order properties>] on [eq: <reference|eq 8.6.023>] and [eq:
      <reference|eq 8.7.023>] we have that <math|0\<less\>c\<cdot\>d>
      contradicting <math|c\<cdot\>d\<leqslant\>0>.
    </description>

    As in all cases we reach a contracdiction the assumption <math|a\<neq\>0>
    is wrong, so <math|a=0> or <math|q=<frac|0|b>\<equallim\><rsub|<text|[theorem:
    <reference|rational n/m=n.k/m.k>]>><frac|0|1>=0>. Hence
    <math|\<bbb-Q\><rsup|+><rsub|0><big|cap>\<bbb-Q\><rsup|-><rsub|0>\<subseteq\><around*|{|0|}>>
    which combined with [eq: <reference|eq 8.3.023>] proves that\ 

    <\equation*>
      \<bbb-Q\><rsup|+><rsub|0><big|cap>\<bbb-Q\><rsup|-><rsub|0>=<around*|{|0|}>
    </equation*>
  </proof>

  <\theorem>
    <label|rational non negative rationals><math|\<bbb-Q\><rsup|-><rsub|0>=<around*|{|-q\|q\<in\>\<bbb-Q\><rsup|+><rsub|0>|}>>
  </theorem>

  <\proof>
    If <math|q\<in\>\<bbb-Q\><rsup|-><rsub|0>> then
    <math|\<exists\><around*|(|n,m|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>
    with <math|n\<cdot\>m\<in\>\<bbb-Z\><rsup|-><rsub|0>> such that
    <math|q=<frac|n|m>>. By the definition of
    <math|\<bbb-Z\><rsup|<rsup|->><rsub|0><rsup|>> it follows that
    <math|\<exists\>k\<in\>\<bbb-Z\><rsup|+><rsub|0>> such that
    <math|n\<cdot\>m=-k>. Hence

    <\equation*>
      <around*|(|-n|)>\<cdot\>m\<equallim\><rsub|<text|[theorem:
      <reference|ring 0 1 and ->]>>-<around*|(|n\<cdot\>m|)>=-<around*|(|-<around*|(|k|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|group group inverse of inverse>]>>k\<in\>\<bbb-Z\><rsup|+><rsub|0>,
    </equation*>

    proving that <math|-q=<frac|-n|m>\<in\>\<bbb-Q\><rsup|+><rsub|0>>. Using
    [theorem: <reference|group group inverse of inverse>] again we have
    <math|q=-<around*|(|-q|)>> so that <math|q\<in\><around*|{|-q\|q\<in\>\<bbb-Q\><rsup|+><rsub|0>|}>>
    or that\ 

    <\equation>
      <label|eq 8.8.024>\<bbb-Q\><rsup|-><rsub|0>\<subseteq\><around*|{|-q\|q\<in\>\<bbb-Q\><rsup|+><rsub|0>|}>
    </equation>

    If <math|q\<in\><around*|{|-q\|q\<in\>\<bbb-Q\><rsup|+><rsub|0>|}>> then
    <math|\<exists\><around*|(|n,m|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>
    with <math|n\<cdot\>m\<in\>\<bbb-Z\><rsup|+><rsub|0>> such that
    <math|q=-<frac|n|m>\<equallim\><rsub|def><frac|-n|m>>, as
    <math|<around*|(|-n|)>\<cdot\>m=-<around*|(|n,m|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>,
    it follows that <math|q\<in\>\<bbb-Q\><rsup|-><rsub|0>>. Hence
    <math|<around*|{|-q\|q\<in\>\<bbb-Q\><rsup|+><rsub|0>|}>\<subseteq\>\<bbb-Q\><rsup|-><rsub|0>>
    which together with [eq: <reference|eq 8.8.024>] gives

    <\equation*>
      \<bbb-Q\><rsup|-><rsub|0>=<around*|{|-q\|q\<in\>\<bbb-Q\><rsup|+><rsub|->|}>
    </equation*>
  </proof>

  <\theorem>
    <label|rational non negative rationals from a
    semi-group><math|<around*|\<langle\>|\<bbb-Q\><rsup|+><rsub|0>,+|\<rangle\>>>
    is a sub semi-group of <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>
    [hence <math|<around*|\<langle\>|\<bbb-Q\><rsup|+><rsub|0>,+|\<rangle\>>>
    is a semi-group]
  </theorem>

  <\proof>
    By [theorem: <reference|rational {0}>]

    <\equation>
      <label|eq 8.9.024.1>0\<in\>\<bbb-Q\><rsup|+><rsub|0>
    </equation>

    If <math|q,r\<in\>\<bbb-Q\><rsup|+><rsub|0>> then there exists
    <math|<around*|(|a,b|)>,<around*|(|c,d|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>
    with <math|a\<cdot\>b,c\<cdot\>d\<in\>\<bbb-Z\><rsup|+><rsub|0>> such
    that <math|q=<frac|a|b>> and <math|<frac|c|d>>. Then we have\ 

    <\equation*>
      q+r=<frac|a\<cdot\>d+b\<cdot\>c|b\<cdot\>d>
    </equation*>

    so we have to check that <math|<around*|(|a\<cdot\>d+b\<cdot\>c|)>\<cdot\><around*|(|b\<cdot\>d|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
    Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|*<around*|(|a\<cdot\>d+b\<cdot\>c|)>\<cdot\><around*|(|b\<cdot\>d|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>>|<cell|<around*|(|a\<cdot\>d|)>\<cdot\>*<around*|(|b\<cdot\>d|)>+<around*|(|b\<cdot\>c|)>\<cdot\><around*|(|b\<cdot\>d|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>>|<cell|<around*|(|a\<cdot\>b|)>\<cdot\><around*|(|d\<cdot\>d|)>+<around*|(|c\<cdot\>d|)>\<cdot\><around*|(|b\<cdot\>b|)><eq-number><label|eq
      8.9.024>>>>>
    </eqnarray*>

    Now using [theorems: <reference|integers ordered ring>, <reference|ring
    order properties>] we have that <math|0\<leqslant\>d\<cdot\>d\<wedge\>0\<leqslant\>b\<cdot\>b>,
    as <math|0\<leqslant\>a\<cdot\>b\<wedge\>0\<leqslant\>c\<cdot\>d>, we
    have by [theorems: <reference|integers ordered ring>, <reference|ring
    order properties>] that <math|0\<leqslant\><around*|(|a\<cdot\>b|)>\<cdot\><around*|(|d\<cdot\>d|)>\<wedge\>0\<leqslant\><around*|(|c\<cdot\>d|)>\<cdot\><around*|(|b\<cdot\>b|)>>
    or <math|><math|<around*|(|a\<cdot\>b|)>\<cdot\><around*|(|d\<cdot\>d|)>,<around*|(|c\<cdot\>d|)>\<cdot\><around*|(|b\<cdot\>b|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
    Using [theorem: <reference|integers properties (1)>] it follows that
    <math|<around*|(|a\<cdot\>b|)>\<cdot\><around*|(|d\<cdot\>d|)>+<around*|(|c\<cdot\>d|)>\<cdot\><around*|(|b\<cdot\>b|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>,
    hence by [eq: <reference|eq 8.9.024>]
    <math|<around*|(|a\<cdot\>d+b\<cdot\>c|)>\<cdot\><around*|(|b\<cdot\>d|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
    so that <math|q+r\<in\>\<bbb-Q\><rsup|+><rsub|0>>. So\ 

    <\equation>
      <label|eq 8.11.024>\<forall\>q,r\<in\>\<bbb-Q\><rsup|+><rsub|0><text|
      we have >q+r\<in\>\<bbb-Q\><rsup|+><rsub|0>
    </equation>

    Finally [eq: <reference|eq 8.9.024.1>] and [eq: <reference|eq 8.11.024>]
    proves that <math|<around*|\<langle\>|\<bbb-Q\><rsup|+><rsub|0>,+|\<rangle\>>>
    is a semi-group.
  </proof>

  Next we define the relation that later will become a order relation on
  <math|\<bbb-Q\>>.

  <\definition>
    <label|rational order relation (1)><dueto|Order
    Relation><math|\<leqslant\>\<subseteq\>\<bbb-Q\>\<times\>\<bbb-Q\>> is
    defined as\ 

    <\equation*>
      \<leqslant\>=<around*|{|<around*|(|q,r|)>\<in\>\<bbb-Q\>\<times\>\<bbb-Q\>\|r+<around*|(|-q|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>|}>
    </equation*>

    So <math|q\<leqslant\>r> if and only if
    <math|r+<around*|(|-q|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>
  </definition>

  <\theorem>
    <label|rational 0\<less\>=q property><math|\<bbb-Q\><rsup|+><rsub|0>=<around*|{|q\<in\>\<bbb-Q\>\|0\<leqslant\>q|}>>
    and <math|\<bbb-Q\><rsup|-><rsub|0>=<around*|(|q\<in\>\<bbb-Q\>\|q\<leqslant\>0|)>>.
  </theorem>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|q\<in\>\<bbb-Q\><rsup|+><rsub|0>>|<cell|\<Leftrightarrowlim\><rsub|q=q+<around*|(|-0|)>>>|<cell|q+<around*|(|-0|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|\<bbb-Q\><rsup|+><rsub|0>\<subseteq\>\<bbb-Q\>>>|<cell|q\<in\>\<bbb-Q\>\<wedge\>0\<leqslant\>q>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|q\<in\><around*|{|q\<in\>Q\|0\<leqslant\>q|}>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<bbb-Q\><rsup|+><rsub|0>=<around*|{|q\<in\>\<bbb-Q\>\|0\<leqslant\>q|}>
    </equation*>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|q\<in\>\<bbb-Q\><rsup|-><rsub|0>>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
      <reference|rational non negative rationals>]>>>|<cell|-q\<in\>\<bbb-Q\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|0+<around*|(|-q|)>=-q>>|<cell|0+<around*|(|-q|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|\<bbb-Q\><rsup|+><rsub|0>\<subseteq\>\<bbb-Q\>>>|<cell|q\<in\>\<bbb-Q\>\<wedge\>q\<leqslant\>0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<leqslant\>0|}>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<bbb-Q\><rsup|-><rsub|0>=<around*|{|q\<in\>\<bbb-Q\>\|q\<leqslant\>0|}>
    </equation*>
  </proof>

  <\theorem>
    <label|rational q\<less\>r\<less\>=\<gtr\>0\<less\>r+(-q)>If
    <math|q,r\<in\>\<bbb-Q\>> then\ 

    <\enumerate>
      <item><math|q\<leqslant\>r\<Leftrightarrow\>0\<leqslant\>r+<around*|(|-q|)>>

      <item><math|q\<less\>r\<Leftrightarrow\>0\<less\>r+<around*|(|-q|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item> We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|q\<leqslant\>r>|<cell|\<Leftrightarrow\>>|<cell|r+<around*|(|-q|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|rational 0\<less\>=q property>]>>>|<cell|0\<leqslant\>r+<around*|(|-q|)>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|q\<less\>r>|<cell|\<Leftrightarrow\>>|<cell|q\<neq\>r\<wedge\>q\<leqslant\>r>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|group cancelation>]>>>|<cell|q+<around*|(|-q|)>\<neq\>r+<around*|(|-q|)>\<wedge\>q\<leqslant\>r>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|q+<around*|(|-q|)>\<neq\>r+<around*|(|-q|)>\<wedge\>q\<leqslant\>r>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0\<neq\>r+<around*|(|-q|)>\<wedge\>q\<leqslant\>r>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|0\<neq\>r+<around*|(|-q|)>\<wedge\>0\<leqslant\>r+<around*|(|-q|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0\<less\>r+<around*|(|-q|)>>>>>
      </eqnarray*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|rational q\<less\>=0 and 0\<less\>=q then q=0>If
    <math|q\<in\>\<bbb-Q\>> satisfies <math|0\<leqslant\>q\<wedge\>q\<leqslant\>0>
    then <math|q=0>
  </theorem>

  <\proof>
    As <math|0\<leqslant\>q> and <math|q\<leqslant\>0> we have by [theorem:
    <reference|rational 0\<less\>=q property>] that
    <math|q\<in\>\<bbb-Q\><rsup|+><rsub|0>\<wedge\>\<bbb-Q\><rsup|-><rsub|0>>,
    so <math|q\<in\>\<bbb-Q\><rsup|+><rsub|0><big|cap>\<bbb-Q\><rsup|-><rsub|0>\<equallim\><rsub|<text|[theorem:
    <reference|rational {0}>]>><around*|{|0|}>>. Proving <math|q=0>.
  </proof>

  <\theorem>
    <label|rational 0\<less\>=q and 0\<less\>=q=\<gtr\>0\<less\>=q+r>If
    <math|q,r\<in\>\<bbb-Q\>> such that <math|0\<leqslant\>q\<wedge\>0\<leqslant\>r>
    then <math|0\<leqslant\>q+r>
  </theorem>

  <\proof>
    As <math|0\<leqslant\>q\<wedge\>0\<leqslant\>r> we have by [theorem:
    <reference|rational 0\<less\>=q property>] that
    <math|q,r\<in\>\<bbb-Q\><rsup|+><rsub|0>>, using <reference|rational non
    negative rationals from a semi-group>] it follows that
    <math|q+r\<in\>\<bbb-Q\><rsup|+><rsub|0>>, hence by [theorem:
    <reference|rational 0\<less\>=q property>] again we have

    <\equation*>
      0\<leqslant\>q+r
    </equation*>
  </proof>

  <\theorem>
    <label|rational totally ordered><math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>>
    is a totally ordered set.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflectivity>If <math|q\<in\>\<bbb-Q\><rsup|+><rsub|0>> then
      <math|q+<around*|(|-q|)>=0\<in\><around*|{|0|}>\<equallim\><rsub|<text|[theorem:
      <reference|rational {0}>]>>Q<rsup|+><rsub|0><big|cap>\<bbb-Q\><rsup|-><rsub|0>\<subseteq\>\<bbb-Q\><rsup|+><rsub|0>>
      so that <math|q\<leqslant\>q>.

      <item*|anti symmetry>If <math|q\<leqslant\>r> and <math|r\<leqslant\>q>
      then using [theorem: <reference|rational
      q\<less\>r\<less\>=\<gtr\>0\<less\>r+(-q)>]
      <math|0\<leqslant\>r+<around*|(|-q|)>> and
      <math|r+<around*|(|-q|)>\<leqslant\>0>, using [theorem:
      <reference|rational q\<less\>=0 and 0\<less\>=q then q=0>] we have that
      <math|r+<around*|(|-q|)>=0> so that <math|r=q>.

      <item*|transitivity>If <math|q\<leqslant\>r> and <math|r\<leqslant\>s>
      then <math|r+<around*|(|-q|)>,s+<around*|(|-r|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>
      so that by [theorem: <reference|rational non negative rationals from a
      semi-group>] we have that

      <\equation>
        <label|eq 8.12.024><around*|(|r+<around*|(|-q|)>|)>+<around*|(|s+<around*|(|-r|)>|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>
      </equation>

      As <math|<around*|(|r+<around*|(|-q|)>|)>+<around*|(|s+<around*|(|-r|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|rational group>]>>s+<around*|(|-q|)>> we have by [eq:
      <reference|eq 8.12.024>] that <math|s+<around*|(|-q|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>
      proving that\ 

      <\equation*>
        q\<leqslant\>s
      </equation*>

      <item*|totally order>If <math|q,r\<in\>\<bbb-Q\>> then as
      <math|r+<around*|(|-q|)>\<in\>\<bbb-Q\>\<equallim\><rsub|<text|[theorem:
      <reference|rational {0}>]>>\<bbb-Q\><rsup|+><rsub|0><big|cup>\<bbb-Q\><rsup|-><rsub|0>>
      such that we have the following possibilities:

      <\description>
        <item*|<math|r+<around*|(|-q|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>>Then
        <math|q\<leqslant\>r>

        <item*|<math|r+<around*|(|-q|)>\<in\>\<bbb-Q\><rsup|-><rsub|0>>>Then
        by [theorem: <reference|rational non negative rationals>] we have
        that <math|-<around*|(|r+<around*|(|-q|)>|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>.
        Further\ 

        <\equation*>
          -<around*|(|r+<around*|(|-q|)>|)>\<equallim\><rsub|<text|[theorem:
          <reference|ring 0 1 and ->]>><around*|(|-r|)>+<around*|(|-<around*|(|-q|)>|)>=q+<around*|(|-r|)>
        </equation*>

        so that <math|q+<around*|(|-r|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>> or
        <math|r\<leqslant\>q>.
      </description>
    </description>
  </proof>

  <\lemma>
    <label|rational 0\<less\>q=\<gtr\>q=n/m>Let <math|q\<in\>\<bbb-Q\>> then
    <math|0\<less\>q\<Leftrightarrow\>\<exists\>n,m\<in\>\<bbb-Z\>> with
    <math|0\<less\>n\<wedge\>0\<less\>m> such that <math|q=<frac|n|m>>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|0\<less\>q> we have
      <math|0\<neq\>q> and <math|0\<leqslant\>q\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|rational 0\<less\>=q property>]>>q\<in\>\<bbb-Q\><rsup|+><rsub|0>>,
      so there exists <math|<around*|(|n<rprime|'>,m<rprime|'>|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>
      with <math|0\<leqslant\>n<rprime|'>\<cdot\>m<rprime|'>> such that
      <math|q=<frac|n<rprime|'>|m<rprime|'>>> , as
      <math|m<rprime|'>\<in\>\<bbb-Z\><rsup|\<ast\>>> we have
      <math|m<rprime|'>\<neq\>0>, further by [theorem: <reference|rational
      n/m=n.k/m.k>] <math|n<rprime|'>\<neq\>0>. So we have the following
      resting cases to consider for <math|n<rprime|'>,m<rprime|'>>:

      <\description>
        <item*|<math|0\<less\>n<rprime|'>\<wedge\>0\<less\>m<rprime|'>>>Then
        <math|q=<frac|n<rprime|'>|m<rprime|'>>> so if we take
        <math|n=n<rprime|'>> and <math|m=m<rprime|'>> we have
        <math|0\<less\>n\<wedge\>0\<less\>m> such that <math|q=<frac|n|m>>.\ 

        <item*|<math|0\<less\>n<rprime|'>\<wedge\>m<rprime|'>\<less\>0>>Then
        by [theorems: <reference|integers ordered ring>, <reference|ring
        order properties>] we have <math|n<rprime|'>\<cdot\>m<rprime|'>\<less\>0>
        contradicting <math|0\<leqslant\>n<rprime|'>\<cdot\>m<rprime|'>> so
        this is not a valid case.

        <item*|<math|n<rprime|'>\<less\>0\<wedge\>0\<less\>m<rprime|'>>>Then
        by [theorems: <reference|integers ordered ring>, <reference|ring
        order properties>] we have <math|n<rprime|'>\<cdot\>m<rprime|'>\<less\>0>
        contradicting <math|0\<leqslant\>n<rprime|'>\<cdot\>m<rprime|'>> so
        this is not a valid case.

        <item*|<math|n<rprime|'>\<less\>0\<wedge\>m<rprime|'>\<less\>0>>Then
        by [theorem: <reference|integers ordered ring>, <reference|ring order
        properties>] we have <math|0\<less\>-n<rprime|'>\<wedge\>0\<less\>-m<rprime|'>>
        we have that <math|<frac|-n<rprime|'>|-m<rprime|'>>=<frac|n<rprime|'>\<cdot\><around*|(|-1|)>|m<rprime|'>\<cdot\><around*|(|-1|)>>\<equallim\><rsub|<text|[theorem:
        <reference|rational n/m=n.k/m.k>>><frac|n<rprime|'>|m<rprime|'>>=q>.
        So if we take <math|n=-n<rprime|'>> and <math|m=-m<rprime|'>> then
        <math|0\<less\>n\<wedge\>0\<less\>m> and <math|q=<frac|n|m>>.\ 
      </description>

      So in all valid cases we found a <math|n,m\<in\>\<bbb-Z\>> with
      <math|0\<less\>n\<wedge\>0\<less\>m> and <math|q=<frac|n|m>>.

      <item*|<math|\<Leftarrow\>>>If <math|\<exists\>n,m\<in\>\<bbb-Z\>> with
      <math|0\<less\>n\<wedge\>0\<less\>m> such that <math|q=<frac|n|m>> then
      by [theorem: <reference|integers 0\<less\>n and 0\<less\>m then
      0\<less\>n.m>] we have that <math|0\<less\>n\<cdot\>m> so that
      <math|0\<leqslant\>q>, further by [theorem: <reference|rational
      n/m=n.k/m.k>] and <math|n\<neq\>0> we have <math|q\<neq\>0>, hence
      <math|0\<less\>q>.
    </description>
  </proof>

  <\example>
    <label|rational 0\<less\>1><math|0\<less\>1> where
    <math|0,1\<in\>\<bbb-Q\>>
  </example>

  <\proof>
    As <math|1=<frac|1|1>> and in <math|\<bbb-Z\>> we have
    <math|1=1\<cdot\>1> and <math|0\<less\>1> [see example:
    <reference|integers 0\<less\>1 and 0\<less\>2>] it follows from [lemma:
    <reference|rational 0\<less\>q=\<gtr\>q=n/m>] that <math|0\<less\>1>.\ 
  </proof>

  <\corollary>
    <label|rational q\<less\>q+1 and q-1\<less\>q>If <math|q\<in\>\<bbb-Q\>>
    then\ 

    <\enumerate>
      <item><math|q\<less\>q+1>

      <item><math|q-1=q+<around*|(|-1|)>>\<less\>q
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item><math|<around*|(|q+1|)>+<around*|(|-q|)>=<around*|(|q+<around*|(|-q|)>|)>+1=1>
      and by [example: <reference|rational 0\<less\>1>] <math|0\<less\>1> so
      that <math|q\<leqslant\>q+1>. If <math|q=q+1> we have
      <math|0=q+<around*|(|-q|)>=<around*|(|q+1|)>+<around*|(|-q|)>=1>
      contradicting <math|0\<less\>1> so we must have that\ 

      <\equation*>
        q\<less\>q+1
      </equation*>

      <item><math|q+<around*|(|-<around*|(|q+<around*|(|-1|)>|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|group inverse of x.y>]>>q+<around*|(|<around*|(|-q|)>+<around*|(|-<around*|(|-1|)>|)>|)>=<around*|(|q+<around*|(|-q|)>|)>+<around*|(|-<around*|(|-1|)>|)>=0+1=1>
      and by [example: <reference|rational 0\<less\>1>] <math|0\<less\>1> so
      that <math|q+<around*|(|-1|)>\<leqslant\>q>. If
      <math|q+<around*|(|-1|)>=q> then <math|q=q+1> contradicting (1) so
      <math|q-1\<neq\>q> and we have\ 

      <\equation*>
        q-1=q-1\<less\>q
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|rational n/m and n\<less\>m or m\<less\>n>Let
    <math|n\<in\>\<bbb-Z\>> and <math|m\<in\>\<bbb-Z\><rsup|\<ast\>>> then we
    have\ 

    <\enumerate>
      <item><math|n=m\<Leftrightarrow\><frac|n|m>=1>

      <item>If <math|0\<less\>m> then

      <\enumerate>
        <item><math|n\<less\>m\<Leftrightarrow\><frac|n|m>\<less\>1>

        <item><math|m\<less\>n\<Leftrightarrow\>1\<less\><frac|n|m>>

        <item><math|n\<leqslant\>m\<Leftrightarrow\><frac|n|m>\<leqslant\>1>

        <item><math|m\<leqslant\>n\<Leftrightarrow\>1\<leqslant\><frac|n|m>>
      </enumerate>

      <item>If <math|m\<less\>0> then\ 

      <\enumerate>
        <item><math|n\<less\>m\<Leftrightarrow\>1\<less\><frac|n|m>>

        <item><math|m\<less\>n\<Leftrightarrow\><frac|n|m>\<less\>1>

        <item><math|n\<leqslant\>m\<Leftrightarrow\>1\<leqslant\><frac|n|m>>

        <item><math|m\<leqslant\>n\<Leftrightarrow\><frac|n|m>\<leqslant\>1>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><space|1em>

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|n=m> then
        <math|<frac|n|m>=<frac|n|n>=<frac|1\<cdot\>n|1\<cdot\>n>\<equallim\><rsub|<text|[theorem:
        <reference|rational n/m=n.k/m.k>]>><frac|1|1>=1>.

        <item*|<math|\<Leftarrow\>>> If <math|<frac|n|m>=1> then
        <math|<frac|n|m>=<frac|1|1>> so that <math|n\<cdot\>1=m\<cdot\>1>
        proving that <math|n=m>.\ 
      </description>

      <item><space|1em>

      <\enumerate>
        <item>Note that <math|1+<around*|(|-<frac|n|m>|)>=<frac|1|1>+<frac|-n|m>=<frac|m+<around*|(|-n|)>|m>>,
        as <math|n\<less\>m> we have <math|0\<less\>m+<around*|(|-n|)>> which
        together with <math|0\<less\>m> gives by [theorem:
        <reference|rational 0\<less\>q=\<gtr\>q=n/m>] that
        <math|0\<less\>1+<around*|(|-<frac|n|m>|)>> proving
        <math|<frac|n|m>\<less\>1>.

        <item>Note that <math|<frac|n|m>+<around*|(|-1|)>=<frac|n|m>+<frac|-1|1>=<frac|n+<around*|(|-m|)>|m>>,
        as <math|m\<less\>n> we have <math|0\<less\>n+<around*|(|-m|)>> which
        togther with <math|0\<less\>m> \ gives by [theorem:
        <reference|rational 0\<less\>q=\<gtr\>q=n/m>] that
        <math|0\<less\><frac|n|m>+<around*|(|-1|)>> proving that
        <math|1\<less\><frac|n|m>>

        <item>This follows from (1) and (2.a)

        <item>This follows from (1) and (2.b)
      </enumerate>

      <item> As <math|m\<less\>0> we have by [theorem: <reference|integers
      ordered ring>, <reference|ring order properties>] that
      <math|0\<less\>-m>

      <\enumerate>
        <item>As <math|n\<less\>m> we have by [theorem: <reference|integers
        ordered ring>, <reference|ring order properties>] that
        <math|-m\<less\>-n>, so by (2.b) it follows that
        <math|1\<less\><frac|-n|-m>>. Now
        <math|<frac|-n|-m>\<equallim\><rsub|<text|[theorem: <reference|ring 0
        1 and ->[>><frac|n\<cdot\><around*|(|-1|)>|m\<cdot\><around*|(|-1|)>>\<equallim\><rsub|<text|[theorem:
        <reference|rational n/m=n.k/m.k>]>><frac|n|m>> so that we have
        <math|1\<less\><frac|n|m>>.

        <item>As <math|m\<less\>n> we have by [theorems: <reference|integers
        ordered ring>, <reference|ring order properties>] that
        <math|-n\<less\>-m>, so by (2.a) it follows that
        <math|<frac|-n|-m>\<less\>1>. Now
        <math|<frac|-n|-m>\<equallim\><rsub|<text|[theorem: <reference|ring 0
        1 and ->[>><frac|n\<cdot\><around*|(|-1|)>|m\<cdot\><around*|(|-1|)>>\<equallim\><rsub|<text|[theorem:
        <reference|rational n/m=n.k/m.k>]>><frac|n|m>> so that we have
        <math|<frac|n|m>\<less\>1>.

        <item>This follows from (1) and (3.a)

        <item>This follows from (1) and (3.b)
      </enumerate>
    </enumerate>
  </proof>

  <\theorem>
    <label|rational 0\<less\>q and 0\<less\>r =\<gtr\> 0\<less\>q,r>If
    <math|q,r\<in\>\<bbb-Q\>> such that <math|0\<less\>q> and
    <math|0\<less\>r> then <math|0\<less\>q<around*|\<nobracket\>|\<cdot\>r|\<nobracket\>>>.
  </theorem>

  <\proof>
    As <math|0\<less\>q\<wedge\>0\<less\>r> we have by [lemma:
    <reference|rational 0\<less\>q=\<gtr\>q=n/m>] the existence of
    <math|a,b,c,d\<in\>\<bbb-Z\>> with <math|0\<less\>a>, <math|0\<less\>b>,
    <math|0\<less\>c>, <math|0\<less\>d> such that <math|q=<frac|a|b>> and
    <math|r=<frac|c|d>>. So by applying [theorems: <reference|integers
    ordered ring>, <reference|ring order properties>] we have
    <math|0\<less\>a\<cdot\>c\<wedge\>0\<less\>b\<cdot\>d>, hence
    <math|0\<less\><around*|(|a\<cdot\>c|)>\<cdot\><around*|(|b\<cdot\>d|)>>,
    so that <math|q\<cdot\>r=<frac|a\<cdot\>c|b\<cdot\>d>\<in\>\<bbb-Q\><rsup|+><rsub|0>>
    or <math|0\<leqslant\>q\<cdot\>r>. As <math|0\<less\>a\<cdot\>c> we have
    by [theorem: <reference|rational n/m=n.k/m.k>] that
    <math|q\<cdot\>r\<neq\>0>, so\ 

    <\equation*>
      0\<less\>q\<cdot\>r
    </equation*>
  </proof>

  <\theorem>
    <label|rational ordered field><math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>,\<leqslant\>|\<rangle\>>>
    is a ordered field\ 
  </theorem>

  <\proof>
    First using [theorem: <reference|rational field>]
    <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>> is a field.
    Next\ 

    <\enumerate>
      <item>For <math|r,q,s\<in\>\<bbb-Q\>> with <math|r\<less\>q> \ we have
      \ 

      <\equation>
        <label|eq 8.13.046>q+<around*|(|-r|)>\<in\>\<bbb-Q\><rsub|0><rsup|+><text|
        and >r\<neq\>q\<Rightarrow\>r+s\<neq\>q+s
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|q+s|)>+<around*|(|-<around*|(|r+s|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|group inverse of x.y>]>>>|<cell|<around*|(|q+s|)>+<around*|(|<around*|(|-r|)>+<around*|(|-s|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutatitivity>>>|<cell|<around*|(|q+s|\<nobracket\>>+<around*|(|<around*|(|-s|)>+<around*|(|-r|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|q+<around*|(|s+<around*|(|<around*|(|-s|)>+<around*|(|-r|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|q+<around*|(|<around*|(|s+<around*|(|-s|)>|)>+<around*|(|-r|)>|)>>>|<row|<cell|>|<cell|=>|<cell|q+<around*|(|0+<around*|(|-r|)>|)>>>|<row|<cell|>|<cell|=>|<cell|q+<around*|(|-r|)>>>>>
      </eqnarray*>

      which by [eq: <reference|eq 8.13.046>] proves that
      <math|<around*|(|q+s|)>+<around*|(|-<around*|(|r+s|)>|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>.
      Hence <math|r+s\<leqslant\>q+s> and <math|r+s\<neq\>q+s> proving that\ 

      <\equation*>
        r+s\<less\>q+s
      </equation*>

      <item>Let <math|q,r\<in\>\<bbb-Q\>> with <math|0\<less\>q> and
      <math|0\<less\>r> then by [theorem: <reference|rational 0\<less\>q and
      0\<less\>r =\<gtr\> 0\<less\>q,r>] <math|0\<less\>q\<cdot\>r>.
    </enumerate>
  </proof>

  <\theorem>
    <label|rational -(q^-1)=(-q)^-1><math|\<forall\>q\<in\>\<bbb-Q\>> with
    <math|q\<neq\>0> we have <math|-<around*|(|q<rsup|-1>|)>=<around*|(|-q|)><rsup|-1>>
  </theorem>

  <\proof>
    If <math|q\<neq\>0> then <math|-q\<neq\>0> so <math|q<rsup|-1>> and
    <math|<around*|(|-q|)><rsup|-1>> exists, further <math|q=<frac|a|b>>
    where <math|a,b\<neq\>0>. Now

    <\equation*>
      -<around*|(|q<rsup|-1>|)>=-<around*|(|<frac|b|a>|)>=<around*|(|<frac|-b|a>|)>=<around*|(|<frac|a|-b>|)><rsup|-1>=<around*|(|<frac|-1|-1>\<cdot\><frac|a|-b>|)><rsup|-1>=<around*|(|<frac|-a|b>|)><rsup|-1>=<around*|(|-q|)><rsup|-1>
    </equation*>
  </proof>

  Next we embed the set of integer numbers in the set of rational numbers.

  <\definition>
    <label|rational embedded integers><index|<math|\<bbb-Z\><rsub|\<bbb-Q\>>>><math|\<bbb-Z\><rsub|\<bbb-Q\>>=<around*|{|<frac|z|1>\|z\<in\>\<bbb-Z\>|}>\<subseteq\>\<bbb-Q\>>
  </definition>

  <\theorem>
    <label|rational sub-ring><math|\<bbb-Z\><rsub|\<bbb-Q\>>> is a subring
    [see definition: <reference|subring>] of
    <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>> and
    <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-Q\>>>
    defined by <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|z|)>=<frac|z|1>>
    is a ring isomorphism between <math|<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>>
    and <math|<around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-Q\>>,+,\<cdot\>|\<rangle\>>>
    and a order order isomorphism between
    <math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>> and
    <math|<around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-Q\>>,\<leqslant\>|\<rangle\>>>
    [using the induced order from <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>>
    [see theorem: <reference|order partial order on sub class>]]
  </theorem>

  <\proof>
    If <math|q,r\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>> then
    <math|\<exists\>n,m\<in\>\<bbb-Z\>> such that <math|q=<frac|n|1>> and
    <math|r=<frac|m|1>> then we have\ 

    <\equation*>
      q+r=<frac|n|1>+<frac|m|1>=<frac|n\<cdot\>1+1\<cdot\>m|1\<cdot\>1>=<frac|n+m|1>
    </equation*>

    proving that <math|q+r\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>>. Further we have\ 

    <\equation*>
      q\<cdot\>r=<frac|n|1>\<cdot\><frac|m|1>=<frac|n\<cdot\>m|1\<cdot\>1>=<frac|n\<cdot\>m|1>
    </equation*>

    proving that <math|q\<cdot\>r\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>>. Also
    <math|-q=<frac|-n|1>\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>>. So we have\ 

    <\equation*>
      \<forall\>q,r\<in\>\<bbb-Z\><rsub|\<bbb-Q\>><text| we have
      >q+r\<in\>\<bbb-Z\><rsub|\<bbb-Q\>><text|,
      >q\<cdot\>r\<in\>\<bbb-Z\><rsub|\<bbb-Q\>><text| and
      >-q\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>
    </equation*>

    Further we have <math|0=<frac|0|1>> and <math|1=<frac|1|1>> so that\ 

    <\equation*>
      0,1\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>
    </equation*>

    Hence we have that\ 

    <\equation*>
      \<bbb-Z\><rsub|\<bbb-Q\>><text| is a subring of
      ><around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>
    </equation*>

    Now for <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-Q\>>>
    we have:

    <\description>
      <item*|injectivity>If <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y|)>>
      then <math|<frac|x|1>=<frac|y|1>> so that
      <math|x\<cdot\>1=1\<cdot\>y\<Rightarrow\>x=y>.

      <item*|surjectivity>This follows from the definition of
      <math|\<bbb-Z\><rsub|\<bbb-Q\>>>.
    </description>

    proving that\ 

    <\equation>
      <label|eq 8.13.024>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-Q\>><text|
      is a bijection>
    </equation>

    Further if <math|x,y\<in\>\<bbb-Z\>> then
    <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y|)>+<around*|(|-i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>|)>=<frac|y|1>+<around*|(|-<frac|x|1>|)>=<frac|y|1>+<frac|-x|1>=<frac|y\<cdot\>1+1\<cdot\><around*|(|-x|)>|1\<cdot\>1>=<frac|y+<around*|(|-x|)>|1>>
    so\ 

    <\equation>
      <label|eq 8.14.024>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y|)>+<around*|(|-i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>|)>=<frac|y+<around*|(|-x|)>|1>
    </equation>

    So we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y|)>>|<cell|\<Leftrightarrow\>>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y|)>+<around*|(|-i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>|)>\<in\>\<bbb-Q\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
      <reference|eq 8.14.024>]>>>|<cell|<frac||><frac|y+<around*|(|-x|)>|1>\<in\>\<bbb-Q\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|def
      \<bbb-Q\><rsup|+><rsub|0>>>|<cell|<around*|(|y+<around*|(|-x|)>|)>\<cdot\>1\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y+<around*|(|-x|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<leqslant\>y>>>>
    </eqnarray*>

    which combined with [eq: <reference|eq 8.13.024>] proves that\ 

    <\equation*>
      i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-Q\>>,\<leqslant\>|\<rangle\>><text|
      is a order isomorphism>
    </equation*>

    Now for the proof that <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>> is
    a ring isomorphism.\ 

    <\equation*>
      i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x+y|)>=<frac|x+y|1>=<frac|x\<cdot\>1+1\<cdot\>y|1\<cdot\>1>=<frac|x|1>+<frac|y|1>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>+i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y|)>
    </equation*>

    and\ 

    <\equation*>
      i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x\<cdot\>y|)>=<frac|x\<cdot\>y|1>=<frac|x|1>\<cdot\><frac|y|1>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>\<cdot\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y|)>
    </equation*>

    and

    <\equation*>
      i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|1|)>=<frac|1|1>=1
    </equation*>

    proving with [eq: <reference|eq 8.13.024>] that\ 

    <\equation*>
      i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-Q\>>,+,\<cdot\>|\<rangle\>><text|
      is a ring isomorphism>
    </equation*>
  </proof>

  <\theorem>
    <label|rational alternative definition><math|\<bbb-Q\>=<around*|{|x\<cdot\>y<rsup|-1>\|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>|}>>
  </theorem>

  <\proof>
    If <math|q\<in\>\<bbb-Q\>> there exists <math|x<rprime|'>\<in\>\<bbb-Z\>>
    and <math|y<rprime|'>\<in\>\<bbb-Z\><rsup|\<ast\>>=\<bbb-Z\>\\<around*|{|0|}>>
    such that <math|q=<frac|x<rprime|'>|y<rprime|'>>>. Define now
    <math|x=<frac|x<rprime|'>|1>> and <math|<frac|y<rprime|'>|1>> then by the
    previous theoremg \ [theorem: <reference|rational sub-ring>] we have that
    <math|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>> and
    <math|y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>>. Further

    <\equation*>
      q=<frac|x<rprime|'>|y<rprime|'>>=<frac|x<rprime|'>|1>\<cdot\><frac|1|y<rprime|'>>=<frac|x<rprime|'>|1>\<cdot\><around*|(|<frac|y<rprime|'>|1>|)><rsup|-1>=x\<cdot\>y<rsup|-1>\<in\><around*|{|x\<cdot\>y<rsup|-1>\|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>|}>
    </equation*>

    proving\ 

    <\equation>
      <label|eq 8.15.040>\<bbb-Q\>\<subseteq\><around*|{|x\<cdot\>y<rsup|-1>\|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>|}>
    </equation>

    If <math|q\<in\><around*|{|x\<cdot\>y<rsup|-1>\|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>|}>>
    there exists a <math|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>> and
    <math|y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}><rsub|>> such that
    <math|q=x\<cdot\>y<rsup|-1>>. Using \ [theorem: <reference|rational
    sub-ring>] again there exists <math|x<rprime|'>\<in\>\<bbb-Z\>> and
    <math|y<rprime|'>\<in\>\<bbb-Z\>\\<around*|{|0|}>> such that
    <math|x=<frac|x<rprime|'>|1>> and <math|y=<frac|y<rprime|'>|1>> so that\ 

    <\equation*>
      q=x\<cdot\>y<rsup|-1>=<frac|x<rprime|'>|1>\<cdot\><around*|(|<frac|1|y<rprime|'>>|)><rsup|-1>=<frac|x<rprime|'>|1>\<cdot\><frac|1|y<rprime|'>>=<frac|x<rprime|'>|y<rprime|'>>\<in\>\<bbb-Q\>
    </equation*>

    proving that <math|q\<in\><around*|{|x\<cdot\>y<rsup|-1>\|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>|}>\<subseteq\>\<bbb-Q\>>
    which combined with [eq: <reference|eq 8.15.040>] results in\ 

    <\equation*>
      \<bbb-Q\>=<around*|{|x\<cdot\>y<rsup|-1>\|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>|}>
    </equation*>
  </proof>

  <\definition>
    <label|rational natural numbers><math|\<bbb-N\><rsub|0,\<bbb-Q\>>=<around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>|)><around*|(|\<bbb-N\><rsub|0>|)>\<subseteq\>\<bbb-Q\>>
    where\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><text|is
      defined by >i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>=\<sim\><around*|[|n,0|]>>|<cell|>>|<row|<cell|>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Q\><text|
      is defined by >i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|z|)>=<frac|z|1>>|<cell|<rsub|>>>>>
    </eqnarray*>
  </definition>

  <\theorem>
    <label|rational NQ properties (1)>We have that\ 

    <\enumerate>
      <item><math|\<bbb-N\><rsub|0,\<bbb-Q\>>=<around*|{|<frac|n|1>\|n\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>>

      <item><math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,+|\<rangle\>>>
      is a sub semi-group of <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>

      <item><math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<cdot\>|\<rangle\>>>
      is a sub semi-group of <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>

      <item>If we define <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0,\<bbb-Q\>>>
      by <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>>
      then we have\ 

      <\enumerate>
        <item><math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,+|\<rangle\>>>
        is a group isomorphism

        <item><math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<cdot\>|\<rangle\>>>
        is a group isomorphism

        <item><math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<leqslant\>|\<rangle\>>>
        is a order isomorphism
      </enumerate>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>> we have that
      <math|0\<leqslant\>n>, if <math|n\<neq\>0> then
      <math|0\<less\>1\<leqslant\>n>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>n\<subset\>\<bbb-N\><rsub|0><text|
        such that >x=<around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><around*|(|n|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x=<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>|1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|\<sim\><around*|[|<around*|(|n,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<cell|x\<in\><around*|{|<frac|n|1>\|n\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 8.15.028>\<bbb-N\><rsub|0,\<bbb-Q\>>\<subseteq\><around*|{|<frac|n|1>\|n\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>
      </equation>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|{|<frac|n|1>\|n\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>>|<cell|\<Rightarrow\>>|<cell|\<exists\>n\<in\>\<bbb-Z\><rsup|+><rsub|0><text|
        such that >x=<frac|n|1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|definition
        of >\<bbb-Z\><rsup|+><rsub|0>>>|<cell|\<exists\>n<rprime|'>\<in\>\<bbb-N\><rsub|0><text|
        such that <math|n\<equallim\>\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x=<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>|1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n<rprime|'>|)>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><around*|(|n<rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>>>>>
      </eqnarray*>

      proving that <math|<around*|{|<frac|n|1>\|n\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>\<subseteq\>\<bbb-N\><rsub|0,\<bbb-Q\>>>
      which combined with [eq: <reference|eq 8.15.028>]\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-Q\>>=<around*|{|<frac|n|1>\|n\<in\>\<bbb-Z\><rsup|+><rsub|0>|}>
      </equation*>

      <item>If <math|x,y\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>> then
      <math|\<exists\>n,m\<in\>\<bbb-N\><rsub|0>> such that
      <math|x=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>|)>>
      and <math|y=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|m|)>|)>>,
      hence <math|x=<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>|1>> and
      <math|y=<frac|\<sim\><around*|[|<around*|(|m,0|)>|]>|1>>. So that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x+y>|<cell|=>|<cell|<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>|1>+<frac|\<sim\><around*|[|<around*|(|m,0|)>|]>|1>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>\<cdot\>1=1\<cdot\>\<sim\><around*|[|<around*|(|m,0|)>|]>|1\<cdot\>1>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>+\<sim\><around*|[|<around*|(|m,0|)>|]>|1>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<sim\><around*|[|<around*|(|n+m,0|)>|]>|1>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n+m|)>|)>\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 8.15.026>\<forall\>x,y\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>><text|
        we have >x+y\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>
      </equation>

      As <math|\<sim\><around*|[|<around*|(|0,0|)>|]>=0\<in\>\<bbb-Z\>> we
      have that <math|<frac|\<sim\><around*|[|<around*|(|0,0|)>|]>|1>=<frac|0|1>=0\<in\>\<bbb-Q\>>,
      so <math|0=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|0|)>|)>>
      proving that

      <\equation>
        <label|eq 8.16.026>0\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>><text|>
      </equation>

      So using [eq: <reference|eq 8.15.026>] and [eq: <reference|eq
      8.16.026>] it follows that\ 

      <\equation*>
        <around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,+|\<rangle\>><text|
        is a sub semi-group ><around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>
      </equation*>

      <item>If <math|x,y\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>> then
      <math|\<exists\>n,m\<in\>\<bbb-N\><rsub|0>> such that
      <math|x=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>|)>>
      and <math|y=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|m|)>|)>>,
      hence <math|x=<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>|1>> and
      <math|y=<frac|\<sim\><around*|[|<around*|(|m,0|)>|]>|1>>. So that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<cdot\>y>|<cell|=>|<cell|<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>|1>\<cdot\><frac|\<sim\><around*|[|<around*|(|m,0|)>|]>|1>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<sim\><around*|[|<around*|(|n,0|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|m,0|)>|]>|1\<cdot\>1>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|n\<cdot\>m+0\<cdot\>0,0\<cdot\>m+n\<cdot\>0|)>|1>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|n\<cdot\>m,0|)>|1>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n\<cdot\>m|)>|)>\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 8.17.026>\<forall\>x,y\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>><text|
        we have >x\<cdot\>y\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>
      </equation>

      As <math|\<sim\><around*|[|<around*|(|1,0|)>|]>=1\<in\>\<bbb-Z\>> we
      have that <math|<frac|\<sim\><around*|[|<around*|(|1,0|)>|]>|1>=<frac|1|1>=1\<in\>\<bbb-Q\>>,
      so <math|1=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|1|)>|)>>
      proving that

      <\equation>
        <label|eq 8.18.026>1\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>
      </equation>

      Using [eq: <reference|eq 8.17.026>] and [eq: <reference|eq 8.18.026>]
      we have that\ 

      <\equation*>
        <around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<cdot\>|\<rangle\>><text|
        is a sub semi-group ><around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>
      </equation*>

      <item>Using [theorem: <reference|integers properties (1)>] and
      [theorem: <reference|rational sub-ring>] we have that
      <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
      and <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-Q\>>>
      are bijections, hence <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>
      and <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>
      are injections, so that <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>
      is a injection, which as <math|><math|\<bbb-N\><rsub|0,\<bbb-Q\>>=<around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>|)><around*|(|\<bbb-N\><rsub|0>|)>>
      proves that\ 

      <\equation>
        <label|eq 8.19.026>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0,\<bbb-Q\>><text|
        is bijective>
      </equation>

      Further we have:\ 

      <\enumerate>
        <item>If <math|x,y\<in\>\<bbb-N\><rsub|0>> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|x+y|)>>|<cell|=>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|x+y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers properties (1)>]>>>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|x|)>+i<rsub|\<bbb-N\><rsub|o>\<rightarrow\>\<bbb-Z\>><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|rational sub-ring>]>>>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|x|)>|)>+i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>+i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|y|)><eq-number><label|eq
          8.20.026.1>>>>>
        </eqnarray*>

        and\ 

        <\equation>
          <label|eq 8.21.026>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|0|)>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|0|)>|)>\<equallim\><rsub|<text|[theorem:
          <reference|integers properties (1)>]>>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|0|)>\<equallim\><rsub|<text|[theorem:
          <reference|rational sub-ring>]>>0
        </equation>

        Hence by [eq: <reference|eq 8.19.026>], [eq: <reference|eq
        8.20.026.1>] and [eq: <reference|eq 8.21.026>] we have\ 

        <\equation*>
          i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,+|\<rangle\>><text|
          is a group isomorphism>
        </equation*>

        <item>If <math|x,y\<in\>\<bbb-N\><rsub|0>> then

        <\eqnarray*>
          <tformat|<table|<row|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|x\<cdot\>y|)>>|<cell|=>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|x\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers properties (1)>]>>>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|x|)>\<cdot\>i<rsub|\<bbb-N\><rsub|o>\<rightarrow\>\<bbb-Z\>><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|rational sub-ring>]>>>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|x|)>|)>\<cdot\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>\<cdot\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|y|)><eq-number><label|eq
          8.22.026>>>>>
        </eqnarray*>

        and\ 

        <\equation>
          <label|eq 8.23.026>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|1|)>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|1|)>|)>\<equallim\><rsub|<text|[theorem:
          <reference|integers properties (1)>]>>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|1|)>\<equallim\><rsub|<text|[theorem:
          <reference|rational sub-ring>]>>1
        </equation>

        Hence by [eq: <reference|eq 8.19.026>], [eq: <reference|eq 8.22.026>]
        and [eq: <reference|eq 8.23.026>]\ 

        <\equation*>
          i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<cdot\>|\<rangle\>><text|
          is a group isomorphism><text|>
        </equation*>

        <item>If <math|x,y\<subset\>\<bbb-N\><rsub|0>> then we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<leqslant\>y>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
          <reference|integers order preserving
          bijection>]>>>|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|9>\<rightarrow\>\<bbb-Z\>><around*|(|y|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
          <reference|rational sub-ring>]>>>|<cell|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|x|)>|)>\<leqslant\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|y|)>>>>>
        </eqnarray*>

        proving together with [eq: <reference|eq 8.19.026>] that\ 

        <\equation*>
          i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<leqslant\>|\<rangle\>><text|
          is a order isomorphism>.
        </equation*>
      </enumerate>

      <item>If <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>> then there exist a
      <math|n<rprime|'>\<in\>\<bbb-N\><rsub|0>> such that

      <\equation*>
        n=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|n<rprime|'>|)>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n<rprime|'>|)><rsub|>|)>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>|)>=<frac|\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>|1>
      </equation*>

      now <math|\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>\<cdot\>1=\<sim\><around*|[|<around*|(|n<rprime|'>,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      so that <math|n\<in\>\<bbb-Q\><rsup|+><rsub|0>> or

      <\equation*>
        0\<leqslant\>n
      </equation*>

      If <math|n\<neq\>0> then by [eq: <reference|eq 8.21.026>]
      <math|n<rprime|'>\<neq\>0\<Rightarrow\>0\<less\>n<rprime|'>> so by
      [theorem: <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>]
      <math|1=s<around*|(|0|)>\<leqslant\>n<rprime|'>>. Using (3) we have
      that\ 

      <\equation*>
        1\<equallim\><rsub|<text|[eq: <reference|eq
        8.23.026>]>>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|1|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>><around*|(|n<rprime|'>|)>=n
      </equation*>

      as by [example: <reference|rational 0\<less\>1>] <math|0\<less\>1> we
      have\ 

      <\equation*>
        0\<less\>1\<less\>n
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|rational Archimedean><dueto|Archimedean Property>If
    <math|x,y\<in\>\<bbb-Q\>> with <math|0\<less\>x> then there exists
    <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>> such that
    <math|y\<less\>n\<cdot\>x>
  </theorem>

  <\proof>
    For <math|y\<in\>\<bbb-Q\>> we have the following possibilities to
    consider:\ 

    <\description>
      <item*|<math|y\<leqslant\>0>>Take <math|1\<in\>\<bbb-Q\>> then by
      [theorem: <reference|rational NQ properties (1)>]
      <math|1\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>> so if we take <math|n=1> then
      <math|y\<leqslant\>0\<less\>x=1\<cdot\>x=n\<cdot\>x>, hence
      <math|y\<less\>n\<cdot\>x>.

      <item*|<math|0\<less\>y>>As also <math|0\<less\>x> we have by [theorem:
      <reference|rational 0\<less\>q=\<gtr\>q=n/m>] the existence of
      <math|p,q,r,s\<in\>\<bbb-Z\>> with <math|0\<less\>p>,
      <math|0\<less\>q>, <math|0\<less\>r>, <math|0\<less\>s> such that
      <math|x=<frac|p|q>> and <math|y=<frac|r|s>>. As
      <math|0\<less\>p\<wedge\>0\<less\>s> we have by [theorem:
      <reference|integers 0\<less\>n and 0\<less\>m then 0\<less\>n.m>] that
      <math|0\<less\>p\<cdot\>s>. Using the Archimedean property of
      <math|\<bbb-Z\>> [see theorem: <reference|integers Archimedean>] there
      exist a <math|n<rprime|'>\<in\>\<bbb-Z\><rsup|+><rsub|0>> such that
      <math|q\<cdot\>r\<less\>n<rprime|'>\<cdot\><around*|(|p\<cdot\>s|)>> or\ 

      <\equation>
        <label|eq 8.24.027>0\<less\>n<rprime|'>\<cdot\><around*|(|p\<cdot\>s|)>+<around*|(|-<around*|(|q\<cdot\>r|)>|)>
      </equation>

      As <math|n<rprime|'>\<in\>\<bbb-Z\><rsup|+><rsub|0>> there exists a
      <math|n<rprime|''>\<in\>\<bbb-N\><rsub|0>> such that
      <math|n<rprime|'>=\<sim\><around*|[|<around*|(|n<rprime|''>,0|)>|]>> so
      that if we take <math|n=<frac|n<rprime|'>|1>=<frac|\<sim\><around*|[|<around*|(|n<rprime|''>,0|)>|]>|1>>
      we have <math|n=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n<rprime|''>|)>|)>>
      so that\ 

      <\equation>
        <label|eq 8.25.027>n\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<cdot\>x-y>|<cell|=>|<cell|<frac|n<rprime|'>|1>\<cdot\>x+<around*|(|-y|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|n<rprime|'>|1>\<cdot\><frac|p|q>+<frac|-r|s>>>|<row|<cell|>|<cell|=>|<cell|<frac|n<rprime|'>\<cdot\>p|1\<cdot\>q>+<frac|-r|s>>>|<row|<cell|>|<cell|=>|<cell|<frac|n<rprime|'>\<cdot\>p|q>+<frac|-r|s>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|n<rprime|'>\<cdot\>p|)>\<cdot\>s+q\<cdot\><around*|(|-r|)>|q\<cdot\>s>>>|<row|<cell|>|<cell|=>|<cell|<frac|n<rprime|'>\<cdot\><around*|(|p\<cdot\>s|)>+<around*|(|-<around*|(|q\<cdot\>r|)>|)>|q\<cdot\>s><eq-number><label|eq
        8.26.027>>>>>
      </eqnarray*>

      As <math|0\<less\>q\<wedge\>0\<less\>s\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|integers 0\<less\>n and 0\<less\>m then
      0\<less\>n.m>]]>>0\<less\>q\<cdot\>s> and
      <math|0\<less\>n<rprime|'>\<cdot\><around*|(|p\<cdot\>s|)>+<around*|(|-<around*|(|q\<cdot\>r|)>|)>>
      [see eq: <reference|eq 8.24.027>] it follows using [theorem:
      <reference|rational 0\<less\>q=\<gtr\>q=n/m>] that
      <math|0\<less\>n\<cdot\>x-y> h

      <\equation*>
        y\<less\>n\<cdot\>x<text| where >n\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>><text|>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|rational densitiy><dueto|<math|\<bbb-Q\>> is dense>If
    <math|x,y\<in\>\<bbb-Q\>> with <math|x\<less\>y> then there exist a
    <math|q\<in\>\<bbb-Q\>> such that <math|x\<less\>q\<less\>y>.
  </theorem>

  <\proof>
    As <math|x\<less\>y> we have by [theorems <reference|rational ordered
    field>, <reference|field order properties>] that
    <math|x+x\<less\>y+x=x+y> and <math|x+y\<less\>y+y>. Further
    <math|x+x=1\<cdot\>x+1\<cdot\>x=<around*|(|1+1|)>\<cdot\>x\<equallim\><rsub|<text|[example:
    <reference|rational 1+1=2>]>><frac|2|1>\<cdot\>x> and
    \ <math|y+y=1\<cdot\>y+1\<cdot\>y=<around*|(|1+1|)>\<cdot\>y\<equallim\><rsub|<text|[example:
    <reference|rational 1+1=2>]>><frac|2|1>\<cdot\>y>. So

    <\equation>
      <label|eq 8.24.026><frac|2|1>\<cdot\>x\<less\>x+y<text| and
      >x+y\<less\><frac|2|1>\<cdot\>y
    </equation>

    As <math|0\<less\>1\<less\>1+1=2> we have by [theorems:
    <reference|rational ordered field>, <reference|field order properties>]
    <math|0\<less\><around*|(|<frac|2|1>|)><rsup|-1>=<frac|1|2>>, so using
    [theorems: <reference|rational ordered field>, <reference|field order
    properties>] on [eq: <reference|eq 8.24.026>] that
    <math|x\<less\><frac|1|2>\<cdot\><around*|(|x+y|)>> and
    <math|<frac|1|2>\<cdot\><around*|(|x+y|)>\<less\>y>. So if
    <math|q=<frac|1|2>\<cdot\><around*|(|x+y|)>> we have that\ 

    <\equation*>
      x\<less\>q\<less\>y
    </equation*>
  </proof>

  <\theorem>
    <label|rational NQ is well-ordered><math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<leqslant\>|\<rangle\>>>
    is well ordered\ 
  </theorem>

  <\proof>
    Using the previous theorem [theorem: <reference|rational NQ is
    well-ordered>] we have that <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0,\<bbb-Q\>>>
    is a order isomorphism, further by [theorem: <reference|natural numbers
    are well ordered>] <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
    is well ordered. so using [theorem: <reference|order well ordering and
    order isomorphism>] we conclude that\ 

    <\equation*>
      <around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<leqslant\>|\<rangle\>><text|
      is well ordered>
    </equation*>
  </proof>

  <\theorem>
    <math|<label|NQ is conditional complete><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<leqslant\>|\<rangle\>>>
    is conditional complete
  </theorem>

  <\proof>
    As by [theorem: <reference|rational NQ is well-ordered>]
    <math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<leqslant\>|\<rangle\>>>
    is well-ordered it follows from [theorem: <reference|order well order
    implies conditional complete and totally ordering>] that
    <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>>>
    is conditional complete.
  </proof>

  Although <math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<leqslant\>|\<rangle\>>>
  is conditional complete <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>>
  is not conditional complete as we will prove now. First we have a lemma
  that essentially says that <math|<sqrt|2>> is not a rational number.

  <\lemma>
    <label|rational square root of 2 does not
    exist><math|\<forall\>q\<in\>\<bbb-Q\>> we have
    <math|q<rsup|2>=q\<cdot\>q\<neq\>2=<frac|2|1>>.
  </lemma>

  <\proof>
    We prove this by contradiction. Assume that
    <math|\<exists\>q<rprime|'>\<in\>\<bbb-Q\>> such that
    <math|q<rprime|'>\<cdot\>q<rprime|'>=2>, then <math|q<rprime|'>\<neq\>0>
    [if <math|q<rprime|'>=0\<Rightarrow\>q<rprime|'>\<cdot\>q<rprime|'>=0=2>].
    Take <math|q=<choice|<tformat|<table|<row|<cell|-q<rprime|'><text| if
    >q<rprime|'>\<less\>0>>|<row|<cell|q<rprime|'><text| if q'\<gtr\>0>>>>>>>
    then

    <\equation*>
      0\<less\>q<text| and >q\<cdot\>q=2
    </equation*>

    Using [theorem: <reference|rational 0\<less\>q=\<gtr\>q=n/m>] there exist
    <math|n,m\<in\>\<bbb-Z\>> with <math|0\<less\>n\<wedge\>0\<less\>m> such
    that <math|q=<frac|n|m>>. Take now <math|n<rprime|'>=n/gcd<around*|(|n,m|)>>
    and <math|m<rprime|'>=m/gcd<around*|(|n,m|)>> then as
    <math|m\<neq\>0\<Rightarrow\>m<rprime|'>\<neq\>0> we have by [theorem:
    <reference|integers gcd properties>] that\ 

    <\equation>
      <label|eq 8.28.027><around*|{|d\<in\>\<bbb-Z\>\|d\|n<rprime|'>\<wedge\>d\|m<rprime|'>|}>=<around*|{|1,-1|}>
    </equation>

    Now\ 

    <\equation*>
      <frac|n<rprime|'>|m<rprime|'>>\<equallim\><rsub|0\<less\>gcd<around*|(|n,m|)>\<wedge\><text|[theorem:
      <reference|rational n/m=n.k/m.k>]>><frac|n<rprime|'>\<cdot\>gcd<around*|(|n,m|)>|m<rprime|'>\<cdot\>gcd*n,m>=<frac|n|m>=q
    </equation*>

    so that\ 

    <\equation*>
      <frac|n<rprime|'>\<cdot\>n<rprime|'>|m<rprime|'>\<cdot\>m<rprime|'>>=<frac|n<rprime|'>|m<rprime|'>>\<cdot\><frac|n<rprime|'>|m<rprime|'>>=q\<cdot\>q=<frac|2|1>
    </equation*>

    Hence <math|<around*|(|n<rprime|'>\<cdot\>n<rprime|'>|)>\<cdot\>1=<around*|(|m<rprime|'>\<cdot\>m<rprime|'>|)>\<cdot\>2>
    or <math|n<rprime|'>\<cdot\>n<rprime|'>=2\<cdot\><around*|(|m<rprime|'>\<cdot\>m<rprime|'>|)>>
    proving that <math|n<rprime|'>\<cdot\>n<rprime|'>> is even, using
    [theorem: <reference|integers even condition>] it follows then that
    <math|n<rprime|'>> is even. So there exist a <math|k\<in\>\<bbb-Z\>> such
    that <math|n<rprime|'>=2\<cdot\>k>. Then
    <math|2\<cdot\><around*|(|m<rprime|'>\<cdot\>m<rprime|'>|)>=<around*|(|2\<cdot\>k|)>\<cdot\><around*|(|2\<cdot\>k|)>=2\<cdot\><around*|(|2\<cdot\><around*|(|k\<cdot\>k|)>|)>>,
    hence by [theorem: <reference|integers n.r=k.r=\<gtr\>n=k>]
    <math|m<rprime|'>\<cdot\>m<rprime|'>=2\<cdot\><around*|(|k\<cdot\>k|)>>
    proving that <math|m<rprime|'>\<cdot\>m<rprime|'>> is even, by [theorem:
    <reference|integers even condition>] <math|m<rprime|'>> is even hence
    <math|\<exists\>l\<in\>\<bbb-Z\>> such that
    <math|m<rprime|'>=2\<cdot\>l>. So <math|2\|n<rprime|'>> and
    <math|2\|m<rprime|'>> which by [eq: <reference|eq 8.28.027>] means that
    <math|2=1> or <math|2=-1> both of which are false, so we reach a
    contradiction.\ 
  </proof>

  <\theorem>
    <label|rational rational numbers are not conditional
    complete><math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>> is
    not conditional complete, so there exist a non empty subset of
    <math|\<bbb-Q\>> that is bounded above but does not have a least upper
    bound.
  </theorem>

  <\proof>
    In this prove we make use of the fact that there does not exist a
    <math|q\<in\>\<bbb-Q\>> such that <math|q\<cdot\>q=2>. So define

    <\equation*>
      A=<around*|{|q\<in\>\<bbb-Q\>\|0\<less\>q\<wedge\>q\<cdot\>q\<less\><frac|2|1>|}>\<subseteq\>\<bbb-Q\>
    </equation*>

    As <math|0\<less\><frac|4|3>> and <math|<frac|2|1>+<around*|(|-<around*|(|<frac|4|3>|)>\<cdot\><around*|(|<frac|4|3>|)>|)>=<frac|18-16|9>=<frac|2|8>\<gtr\>0>
    so that <math|<frac|4|3>\<cdot\><frac|4|3>\<less\>2> we have that\ 

    <\equation>
      <frac|4|3>\<in\>A\<Rightarrow\>\<varnothing\>\<neq\>A
    </equation>

    Let <math|x\<in\>A> then <math|0\<less\>x> and
    <math|x\<cdot\>x\<less\><frac|2|1>>. Assume that
    <math|<frac|2|1>\<less\>x> then <math|>by multiplying both sides by
    <math|x> we have by [theorems: <reference|rational ordered field>,
    <reference|field order properties>] that
    <math|<frac|2|1>\<cdot\>x\<less\>x\<cdot\>x\<less\><frac|2|1>=1\<cdot\><frac|2|1>>
    we have by [theorems: <reference|rational ordered field>,
    <reference|field order properties>] that <math|x\<less\><frac|2|1>>
    contradicting <math|<frac|2|1>\<less\>x>. So we must have that
    <math|x\<leqslant\><frac|2|1>> hence\ 

    <\equation>
      <frac|2|1><text| is a upper bound of >A
    </equation>

    Assume now that <math|u=sup<around*|(|A|)>> exist. As
    <math|<frac|4|3>+<around*|(|-1|)>=<frac|4|3>+<frac|-1|1>=<frac|4+<around*|(|-3|)>|3>=<frac|1|3>\<gtr\>0>
    it follows that <math|1\<less\><frac|4|3>\<in\>A> so that
    <math|0\<less\>1\<less\>u> and as <math|<frac|2|1>> is a upper bound of
    <math|A> we have

    <\equation>
      <label|eq 8.32.028>0\<less\>1\<less\>u\<less\><frac|2|1>
    </equation>

    Now for <math|u\<cdot\>u> we have by [theorem: <reference|rational square
    root of 2 does not exist>] that <math|u\<cdot\>u\<neq\><frac|2|1>> so we
    have only to consider the following possibilities:

    <\description>
      <item*|<math|u\<cdot\>u\<less\><frac|2|1>>>So
      <math|0\<less\><frac|2|1>+<around*|(|-u\<cdot\>u|)>> and by the
      Archimedean property [see theorem: <reference|rational Archimedean>]
      there exist a <math|n<rprime|'>\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>> such
      that\ 

      <\equation*>
        <frac|5|1>\<less\>n<rprime|'>\<cdot\><around*|(|<frac|2|1>-u\<cdot\>u|)>
      </equation*>

      Using [theorem <reference|rational NQ properties (1)>] we have that
      <math|\<exists\>n\<in\>\<bbb-Z\><rsup|+><rsub|0>> such that
      <math|n<rprime|'>=<frac|n|1>>, further <math|n\<neq\>0> [otherwise
      <math|<frac|5|1>\<less\><frac|0|1>\<cdot\>><math|<around*|(|<frac|2|1>-u\<cdot\>u|)>=0>]
      so there exist a <math|n\<in\>\<bbb-Z\><rsup|+><rsub|0>\\<around*|{|0|}>>
      such that\ 

      <\equation*>
        <frac|5|1>\<less\><frac|n|1>\<cdot\><around*|(|<frac|2|1>-u\<cdot\>u|)>
      </equation*>

      multiplying both sides by <math|<frac|1|n>=<around*|(|<frac|n|1>|)><rsup|-1>>
      gives\ 

      <\equation>
        <label|eq 8.33.028><frac|5|n>\<less\><frac|2|1>-u\<cdot\>u
      </equation>

      Now

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|u\<upl\><frac|1|n>|)>\<cdot\><around*|(|u\<upl\><frac|1|n>|)>>|<cell|=>|<cell|u\<cdot\>u+u\<cdot\><frac|1|n>\<upl\>u\<cdot\><frac|1|n>\<upl\><frac|1|n>\<cdot\><frac|1|n>>>|<row|<cell|>|<cell|=>|<cell|u\<cdot\>u\<upl\><frac|2|1>\<cdot\>u\<cdot\><frac|1|n>\<upl\><frac|1|n>\<cdot\><frac|1|n>>>>>
      </eqnarray*>

      and thus\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|>|<cell|<tformat|<table|<row|<cell|<around*|(|u\<upl\><frac|1|n>|)>\<cdot\><around*|(|u\<upl\><frac|1|n>|)>\<less\><frac|2|1>>|<cell|\<Leftrightarrow\>>|<cell|u\<cdot\>u\<upl\><frac|2|1>\<cdot\>u\<cdot\><frac|1|n>\<upl\><frac|1|n>\<cdot\><frac|1|n>\<less\><frac|2|1>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<frac|2|1>\<cdot\>u\<cdot\><frac|1|n>\<upl\><frac|1|n>\<cdot\><frac|1|n>\<less\><frac|2|1>\<um\>u\<cdot\>u>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<frac|2|n>\<cdot\>u\<upl\><frac|1|n>\<cdot\><frac|1|n>\<less\><frac|2|1>\<um\>u\<cdot\>u<eq-number><label|eq
        8.34.028>>>>>>>>>
      </eqnarray*>

      As <math|0\<less\>n>, so that by [theorem: <reference|integers positive
      condition>] <math|1\<leqslant\>n>, hence \ <math|0\<leqslant\>n-1>. Now

      <\equation*>
        <frac|1|n>-<frac|1|n>\<cdot\><frac|1|n>=<frac|1|n>-<frac|1|n\<cdot\>n>=<frac|n\<cdot\>n-n\<cdot\>1|n\<cdot\>n>=<frac|n\<cdot\><around*|(|n-1|)>|n\<cdot\>n>=<frac|n\<um\>1|n>\<geqslant\>0
      </equation*>

      giving\ 

      <\equation>
        <label|eq 8.35.028><frac|1|n>\<cdot\><frac|1|n>\<leqslant\><frac|1|n>
      </equation>

      Further as <math|u\<less\><frac|2|1>> [see eq: <reference|eq 8.32.028>]
      we have by [theorems: <reference|rational ordered field>,
      <reference|field order properties>] and that <math|0\<less\><frac|2|n>>
      [as <math|0\<less\>n\<wedge\>0\<less\>2>]\ 

      <\equation>
        <label|eq 8.36.028>u\<cdot\><frac|2|n>\<less\><frac|2|n>\<cdot\><frac|2|1>=<frac|4|n>
      </equation>

      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|2|n>\<cdot\>u\<upl\><frac|1|n>\<cdot\><frac|1|n>>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 8.35.028>]>>>|<cell|<frac|2|n>\<cdot\>u+<frac|1|n>>>|<row|<cell|1>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 8.36.028>]>>>|<cell|<frac|4|n>\<upl\><frac|1|n>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|4|1>+<frac|1|1>|)>\<cdot\><frac|1|n>>>|<row|<cell|>|<cell|=>|<cell|<frac|5|1>\<cdot\><frac|1|n>>>|<row|<cell|>|<cell|=>|<cell|<frac|5|n>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 8.33.028>]>>>|<cell|<frac|2|1>-u\<cdot\>u>>>>
      </eqnarray*>

      So by [eq: <reference|eq 8.34.028>] we have

      <\equation*>
        <around*|(|u\<upl\><frac|1|n>|)>\<cdot\><around*|(|u\<upl\><frac|1|n>|)>\<less\><frac|2|1>
      </equation*>

      By [eq: <reference|eq 8.32.028>] <math|0\<less\>u\<Rightarrow\>0\<less\>u+<frac|1|n>>
      which together with the above proves that <math|u+<frac|1|n>\<in\>A>,
      so <math|u+<frac|1|n>\<leqslant\>sup<around*|(|A|)>=u>, which as
      <math|u\<less\>u+<frac|1|n>> leads to the contradiction
      <math|u\<less\>u>. So this case is impossible.

      <item*|<math|<frac|2|1>\<less\>u\<cdot\>u>>So
      <math|0\<less\>u\<cdot\>u+<frac|-2|1>> and using the Archimedean
      property there exist a <math|n<rprime|'>\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>>
      such that

      <\equation>
        <label|eq 8.37.028><frac|2|1>\<cdot\>u\<less\>n<rprime|'>\<cdot\><around*|(|u\<cdot\>u+<frac|-2|1>|)>
      </equation>

      Using [theorem: <reference|rational NQ properties (1)>] there exist a
      <math|n\<in\>\<bbb-Z\><rsup|+><rsub|0>> such that
      <math|n<rprime|'>=<frac|n|1>>. If \ <math|n=0\<Rightarrow\>n<rprime|'>=0>
      so that <math|<frac|2|1>\<cdot\>u\<less\>0\<cdot\><around*|(|u\<cdot\>u+<frac|-2|1>|)>=0\<Rightarrow\>u\<less\>0>
      contradicting <math|0\<less\>u> [see eq: <reference|eq 8.32.028>],
      hence we must have that <math|n\<neq\>0> or <math|0\<less\>n>, so
      <math|<around*|(|n<rprime|'>|)><rsup|-1>=<frac|1|n>> exist and
      <math|0\<less\><frac|1|n>>. Next

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|2|1>\<cdot\>u\<less\>n<rprime|'>\<cdot\><around*|(|u\<cdot\>u+<frac|-2|1>|)>>|<cell|\<Rightarrow\>>|<cell|<frac|2|1>\<cdot\>u\<less\><frac|n|1>\<cdot\><around*|(|u\<cdot\>u+<frac|-2|1>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|0\<less\><frac|1|n>\<wedge\><text|[theorems:
        <reference|rational ordered field>, <reference|field order
        properties>]>>>|<cell|<around*|(|<frac|2|1>\<cdot\>u|)>\<cdot\><frac|1|n>\<less\><around*|(|<frac|n|1>\<cdot\><around*|(|u\<cdot\>u+<frac|-2|1>|)>|)>\<cdot\><frac|1|n>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|2|n>\<cdot\>u\<less\>u\<cdot\>u+<frac|-2|1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|2|1>\<less\>u\<cdot\>u+<frac|-2|n>\<cdot\>u>>>>
      </eqnarray*>

      which as <math|0\<less\><frac|1|n>\<Rightarrow\>0\<less\><frac|1|n>\<cdot\><frac|1|n>>
      proves that\ 

      <\equation>
        <label|eq 8.38.028><frac|2|1>\<less\>u\<cdot\>u+<frac|-2|n>\<cdot\>u+<frac|1|n>\<cdot\><frac|1|n>
      </equation>

      As <math|0\<less\>n> we have that <math|1\<leqslant\>n> which by
      [theorem: <reference|rational n/m and n\<less\>m or m\<less\>n>] gives
      <math|<frac|1|n>\<less\>1> and as <math|1\<less\>u> we have
      <math|<frac|1|n>\<less\>u>, hence\ 

      <\equation>
        <label|eq 8.39.028>0\<less\>u+<around*|(|<frac|-1|n>|)>\<Rightarrowlim\><rsub|<text|[theorems:
        <reference|rational ordered field>, <reference|field order
        properties>]>>0\<less\><around*|(|u+<frac|-1|n>|)>\<cdot\><around*|(|u+<frac|-1|n>|)>
      </equation>

      As <math|0\<less\><frac|1|n>\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|ring 0 1 and ->]>><frac|-1|n>\<less\>0> so that
      <math|u+<frac|-1|n>\<less\>u>, as <math|u=sup<around*|(|A|)>> and
      <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>> is
      totally ordered we have by [theorem: <reference|order sup, inf
      property>] that there exist a <math|q\<in\>A> such that\ 

      <\equation>
        <label|eq 8.40.029>u+<frac|-1|n>\<less\>q\<leqslant\>u
      </equation>

      Multiplying both sides of [eq: <reference|eq 8.40.029>] by
      <math|u+<frac|-1|n>> we have by \ [theorems: <reference|rational
      ordered field>, <reference|field order properties>] that

      <\equation*>
        <around*|(|u+<frac|-1|n>|)>\<cdot\><around*|(|u+<frac|-1|n>|)>\<less\>q\<cdot\><around*|(|u+<frac|-1|n>|)>,
      </equation*>

      further as <math|0\<less\>u+<frac|-1|n>\<less\>q\<Rightarrow\>0\<less\>q>
      we have, by multiplying both sides of [eq: <reference|eq 8.40.029>]
      \ by <math|q>, that

      <\equation*>
        <around*|(|u+<frac|-1|n>|)>\<cdot\>q\<less\>q\<cdot\>q.
      </equation*>

      Hence <math|<around*|(|u+<frac|-1|n>|)>\<cdot\><around*|(|u+<frac|-1|n>|)>\<less\>q\<cdot\>q>
      and as <math|q\<in\>A> we have also <math|q\<cdot\>q\<less\><frac|2|1>>
      so that\ 

      <\equation>
        <label|eq 8.40.028><around*|(|u+<frac|-1|n>|)>\<cdot\><around*|(|u+<frac|-1|n>|)>\<less\><frac|2|1>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|u+<frac|-1|n>|)>\<cdot\><around*|(|u+<frac|-1|n>|)>>|<cell|=>|<cell|u\<cdot\>u+<frac|-1|n>\<cdot\>u+<frac|-1|n>\<cdot\>n+<frac|-1|n>\<cdot\><frac|-1|n>>>|<row|<cell|>|<cell|=>|<cell|u\<cdot\>u+<frac|-2|n>+<frac|1|n>\<cdot\><frac|1|n>>>>>
      </eqnarray*>

      which by [eq: <reference|eq 8.40.028>] proves that
      <math|u\<cdot\>u+<frac|-2|n>+<frac|1|n>\<cdot\><frac|1|n>\<less\><frac|2|1>>,
      combinding this with [eq: <reference|eq 8.38.028>] result in
      <math|<frac|2|1>\<less\><frac|2|1>> a contradiction. So this case is
      impossible.
    </description>

    As all possible cases are impossible, the assumption is wrong hence
    <math|A> has no supremum and <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>>
    is not conditional complete.
  </proof>

  So we have that <math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-Q\>>,\<leqslant\>|\<rangle\>>>
  is conditional complete but <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>>
  is not. This defect will be resolved by introducing the set of real numbers
  that will extend the set of rationals.

  <section|Denumerability of the rationals>

  <\theorem>
    \ <math|<label|rational NQ is denumerable>\<bbb-N\><rsub|0,\<bbb-Q\>> is
    denumerable>.
  </theorem>

  <\proof>
    Using [theorem: <reference|rational NQ properties (1)>]
    <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>Q>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0,\<bbb-Q\>>>
    is a bijection, hence <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-Q\>> proving
    that <math|\<bbb-Q\>> is denumerable.
  </proof>

  <\theorem>
    <label|rational ZQ is denumerable><math|\<bbb-Z\><rsub|\<bbb-Q\>>> is
    denumerable
  </theorem>

  <\proof>
    Using [theorem: <reference|integers denumerability>] we have that
    <math|\<bbb-Z\>> is denumerable, further by [theorem: <reference|rational
    sub-ring>]

    <\equation*>
      i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Q\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-Q\>>
    </equation*>

    is a bijection, hence <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-Q\>\<approx\>\<bbb-Z\><rsub|\<bbb-Q\>>>,
    proving that <math|\<bbb-Z\><rsub|\<bbb-Q\>>> is denumerable.
  </proof>

  <\theorem>
    <label|rational Q is denumerable><math|\<bbb-Q\>> is denumerable
  </theorem>

  <\proof>
    Define the mapping <math|f:\<bbb-Z\>\<times\>\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>
    by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|x,y|)>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<frac|x|y>
      if <around*|(|x,y|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<ast\>>>>|<row|<cell|0
      if <around*|(|x,y|)>\<in\>\<bbb-Z\>\<times\><around*|{|0|}>>>>>>>>>>
    </eqnarray*>

    If <math|q\<in\>\<bbb-Q\>> then there exist a
    <math|<around*|(|x,y|)>\<in\>\<bbb-Z\>\<times\>\<bbb-Z\><rsup|\<star\>>\<subseteq\>\<bbb-Z\>*\<times\>\<bbb-Z\>>
    such that <math|q=<frac|x|y>=f<around*|(|x,y|)>> proving that

    <\equation*>
      f:\<bbb-Z\>\<times\>\<bbb-Z\>\<rightarrow\>\<bbb-Q\> <text|is a
      surjection>
    </equation*>

    As <math|\<bbb-Z\>> is denumerable [see theorem: <reference|integers
    denumerability>] we have by [theorem: <reference|denumerable product of
    denumerable sets is denumerable>] that <math|\<bbb-Z\>\<times\>\<bbb-Z\>>
    is denumerable, hence there exist a bijection
    <math|g:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>\<times\>\<bbb-Z\>>, so
    <math|f\<circ\>g:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>> is a
    surjection. By [theorem: <reference|countable set conditions (1)>]
    <math|\<bbb-Q\>> is countable, hence either finite or denumerable. As
    <math|\<bbb-N\><rsub|0,\<bbb-Q\>>\<subseteq\>\<bbb-Q\>> and
    <math|\<bbb-N\><rsub|0,\<bbb-Q\>>> is denumerable, it follow from
    [theorem: <reference|set containing a denumerable set is infinite>] that
    <math|\<bbb-Q\>> is not finite, hence we must have that <math|\<bbb-Q\>>
    is denumerable.
  </proof>

  <chapter|The real numbers>

  In this chapter we will introduce the set of real numbers and embed the
  natural, integer and rational numbers in it. Just as with <math|\<bbb-Q\>>,
  <math|\<bbb-Z\>> and <math|\<bbb-N\><rsub|0>> we will introduce a order
  relation, a sum operator, a product operator, neutral elements for addition
  and multiplication as well as inverse elements. If we would use different
  symbols for these we introduce a lot of excessive notation clutter. So we
  use the same symbols for the natural numbers, integers, rational numbers
  and real numbers and use context to determine the meaning of the symbols
  involved. The following table should help you in determining the meaning of
  the different symbols based on the context of there usage.

  \;

  <block|<tformat|<table|<row|<cell|Context>|<cell|Expression>|<cell|Operator>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|n+m>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<cdot\>m>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<leqslant\>m>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<less\>m>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n-m>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n+0>
  or <math|0+n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<cdot\>1<text|
  or >1\<cdot\>n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|-n>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|n+m>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<cdot\>m>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<leqslant\>m>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-Z\>\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<less\>m>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n-m>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-Z\>,-|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|n+0>
  or <math|0+n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|n\<cdot\>1<text|
  or >1\<cdot\>n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|-n>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|q+r>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<cdot\>r>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<leqslant\>r>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-Q\>\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<less\>r>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,e\<in\>\<bbb-Q\>>>|<cell|<math|q-r>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-Q\>,-|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q/r>>|<cell|division
  in <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|q+0>
  or <math|0+q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|q\<cdot\>1<text|
  or >1\<cdot\>q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|-q>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|q+r>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|<math|q\<cdot\>r>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|<math|q\<leqslant\>r>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|<math|q\<less\>r>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,e\<in\>\<bbb-R\>>>|<cell|<math|q-r>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-R\>,-|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|<math|q/r>>|<cell|division
  in <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-R\>>>|<cell|<math|q+0>
  or <math|0+q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-R\>>>|<cell|<math|q\<cdot\>1<text|
  or >1\<cdot\>q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-R\>>>|<cell|<math|-q>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>>>>>>>

  \;

  <section|Definition and Arithmetic on <math|\<bbb-R\>>>

  <\subsection>
    Definition of the real numbers
  </subsection>

  <\definition>
    <label|real Dedekind's cut><index|Dedekind's cut><dueto|Dedekind Cut>A
    subset <math|\<alpha\>\<subseteq\>\<bbb-Q\>> is a Dedekidn's cut of
    <math|\<bbb-Q\>> if the following properties hold

    <\enumerate>
      <item><math|\<alpha\>\<neq\>\<varnothing\>>

      <item><math|\<alpha\>\<neq\>\<bbb-Q\>> [which as
      <math|\<alpha\>\<subseteq\>\<bbb-Q\>> implies that
      <math|\<bbb-Q\>\\\<alpha\>\<neq\>\<varnothing\>>]

      <item><math|\<forall\>q\<in\>\<alpha\>\<wedge\>\<forall\>r\<in\>Q\\\<alpha\>>
      we have <math|q\<less\>r>

      <item><math|\<alpha\>> does not have a greatest element [or maximum]
    </enumerate>
  </definition>

  So a Dedekind cut <math|\<alpha\>> devides <math|\<bbb-Q\>> in two disjoint
  pieces so that <math|\<alpha\>\<neq\>\<varnothing\>\<neq\>Q\\\<alpha\>>
  where every element in <math|\<alpha\>> is strict lower of elements in
  <math|\<bbb-Q\>\\\<alpha\>> and <math|\<alpha\>> has not a greatest
  element. The collection of Dedekind cuts will from the set of real numbers.

  <\definition>
    <label|real real numbers><index|<math|\<bbb-R\>>>The set of real numbers,
    noted as <math|\<bbb-R\>> is the set of Dedekind cuts of <math|\<bbb-Q\>>
    hence\ 

    <\equation*>
      \<bbb-R\>=<around*|{|\<alpha\>\<subseteq\>\<bbb-Q\>\|\<alpha\><text| is
      a Dedekind cut>|}>
    </equation*>
  </definition>

  <\lemma>
    <label|real property to determine membership of a
    cut><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> we have
    <math|\<forall\>q\<in\>\<alpha\>> that <math|\<forall\>r\<in\>\<bbb-Q\>>
    with <math|r\<leqslant\>q> we have <math|r\<in\>\<alpha\>>
  </lemma>

  <\proof>
    We prove this by contradiction, so assume that there exist a
    <math|\<alpha\>\<in\>\<bbb-R\>>, a <math|q\<in\>\<alpha\>> and a
    <math|r\<in\>\<bbb-Q\>> with <math|r\<leqslant\>q> such that
    <math|r\<nin\>\<alpha\>>. As <math|r\<nin\>\<alpha\>> we have that
    <math|r\<in\>\<bbb-Q\>\\\<alpha\>> hence by definition of a Dedekind cut
    that <math|q\<less\>r> contradicting <math|r\<leqslant\>q>.
  </proof>

  We prove now that every rational number can be associated with a Dedekind
  cut of <math|\<bbb-Q\>>.

  <\theorem>
    <label|real rational cut><dueto|Rational cuts>If <math|q\<in\>\<bbb-Q\>>
    then <math|\<alpha\><rsub|q>=<around*|{|r\<in\>\<bbb-Q\>\|r\<less\>q|}>>
    is a Dedekind cut. Dedekind cuts of this forms are called rational cuts.
    Furthermore we have:

    <\enumerate>
      <item><math|\<alpha\><rsub|q>=\<alpha\><rsub|r>\<Leftrightarrow\>q=r>

      <item><math|\<alpha\>> is a rational cut <math|\<Leftrightarrow\>>
      <math|q=min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> exist and in that case
      <math|\<alpha\>=\<alpha\><rsub|q>>
    </enumerate>
  </theorem>

  <\proof>
    \ First we prove that given <math|q\<in\>\<bbb-Q\>>
    <math|\<alpha\><rsub|q>=<around*|{|r\<in\>\<bbb-Q\>\|r\<less\>q|}>> is a
    cut.\ 

    <\enumerate>
      <item>As <math|q+<around*|(|-<around*|(|q+<around*|(|-1|)>|)>|)>=q+<around*|(|-q+<around*|(|-<around*|(|-1|)>|)>|)>=1\<gtr\>0>
      so that <math|q-1\<less\>q> hence <math|q-1\<in\>\<alpha\><rsub|q>>
      proving that <math|\<alpha\><rsub|q>\<neq\>\<varnothing\>>.

      <item>As <math|q\<less\>q> is false we have that
      <math|q\<in\>\<bbb-Q\>\\\<alpha\><rsub|q>> so that
      <math|\<bbb-Q\>\\\<alpha\><rsub|q>\<neq\>\<varnothing\>>.

      <item>If <math|r\<in\>\<alpha\><rsub|q>> and
      <math|s\<in\>\<bbb-Q\>\\\<alpha\><rsub|q>> then <math|r\<less\>q> and
      <math|\<neg\><around*|(|s\<less\>q|)>\<Rightarrow\>q\<leqslant\>s> so
      that <math|r\<less\>s>.

      <item>Assume that <math|m> is a greatest element of
      <math|\<alpha\><rsub|q>> then <math|m\<in\>\<alpha\><rsub|q>> and
      <math|\<forall\>r\<in\>\<alpha\><rsub|q>> we have
      <math|r\<leqslant\>m>. As <math|m\<in\>\<alpha\><rsub|q>> we have that
      <math|m\<less\>q>, using the density of <math|\<bbb-Q\>> [see theorem:
      <reference|rational densitiy>] there exist a <math|r\<in\>\<bbb-Q\>>
      such that <math|m\<less\>r\<less\>q>. As <math|r\<less\>q> we have that
      <math|r\<in\>\<alpha\><rsub|q>> so that <math|r\<leqslant\>m>
      contradicting <math|m\<less\>r>. So the assumption is false proving
      that <math|\<alpha\><rsub|q>> has no greatest element.
    </enumerate>

    Next we prove (1) and (2)\ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|\<alpha\><rsub|q>=\<alpha\><rsub|r>>
        then if <math|q\<neq\>r> we have either\ 

        <\description>
          <item*|<math|q\<less\>r>>then <math|q\<in\>\<alpha\><rsub|r>> and
          so that <math|q\<in\>\<alpha\><rsub|q>> resulting in the
          contradiction <math|q\<less\>q>.

          <item*|<math|r\<less\>q>>then <math|r\<in\>\<alpha\><rsub|q>> and
          so that <math|r\<in\>\<alpha\><rsub|r>> resulting in the
          contradiction <math|r\<less\>r>.
        </description>

        so we must have <math|q=r>.

        <item*|<math|\<Leftarrow\>>><math|s\<in\>\<alpha\><rsub|q>\<Leftrightarrow\>s\<in\>\<bbb-Q\>\<wedge\>s\<less\>q\<Leftrightarrowlim\><rsub|r=r>s\<in\>\<bbb-Q\>\<wedge\>s\<less\>r\<Leftrightarrow\>s\<in\>\<alpha\><rsub|r>>
        hence <math|\<alpha\><rsub|q>=\<alpha\><rsub|s>>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|\<alpha\>> is a rational cut
        then there exist a <math|q\<in\>\<bbb-Q\>> such that
        <math|\<alpha\>=<around*|{|r\<in\>\<bbb-Q\>\|r\<less\>q|}>>. So\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|s\<in\>\<bbb-Q\>\\\<alpha\>>|<cell|\<Leftrightarrow\>>|<cell|s\<in\>\<bbb-Q\>\<wedge\>\<neg\><around*|(|s\<less\>q|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|s\<in\>\<bbb-Q\>\<wedge\>q\<leqslant\>s>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|s\<in\><around*|{|s\<in\>\<bbb-Q\>\|q\<leqslant\>s|}>>>>>
        </eqnarray*>

        proving that <math|\<bbb-Q\>\\\<alpha\>=<around*|{|s\<in\>\<bbb-Q\>\|q\<leqslant\>s|}>>.
        So <math|q\<in\><around*|{|s\<in\>\<bbb-Q\>\|q\<leqslant\>s|}>> and
        <math|\<forall\>s\<in\>Q\\\<alpha\>> we have <math|q\<leqslant\>s>
        proving that <math|q=min<around*|(|\<bbb-Q\>\\a|)>> and
        <math|\<alpha\>=<around*|{|r\<in\>\<bbb-Q\>\|r\<less\>q|}>=\<alpha\><rsub|q>>

        <item*|<math|\<Leftarrow\>>>If <math|q=min<around*|(|\<bbb-Q\>\\\<alpha\>|)>>
        exists then <math|q\<in\>\<bbb-Q\>\\\<alpha\>> and
        <math|\<forall\>r\<in\>\<bbb-Q\>\\a> we have <math|q\<leqslant\>r>.
        If now <math|r\<in\>\<alpha\>> then by the definition of a cut we
        have <math|r\<less\>q>, hence <math|r\<in\><around*|{|r\<in\>\<bbb-Q\>\|r\<less\>q|}>=\<alpha\><rsub|q>>.
        Further if <math|r\<in\>\<alpha\><rsub|q>> then <math|r\<less\>q>,
        assume that <math|r\<nin\>\<alpha\>> then we have
        <math|q\<leqslant\>r> contradicting <math|r\<less\>q>, so we must
        have that <math|r\<in\>\<alpha\>>. Hence we have that\ 

        <\equation*>
          \<alpha\>=\<alpha\><rsub|q><text| where
          >q=min<around*|(|\<bbb-Q\>\\\<alpha\>|)>
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|reals the set of reals are non empty><math|\<bbb-R\>\<neq\>0>
  </corollary>

  <\proof>
    As <math|0,1\<in\>\<bbb-Q\>> we have that
    <math|\<alpha\><rsub|0>,\<alpha\><rsub|1>\<in\>\<bbb-R\>> proving that
    <math|\<bbb-R\>\<neq\>\<varnothing\>>/
  </proof>

  We embed now the rational numbers in the set of reals.

  <\definition>
    <label|real QR>The set <math|\<bbb-Q\><rsub|\<bbb-R\>>> is defined by\ 

    <\equation*>
      \<bbb-Q\><rsub|\<bbb-R\>>=<around*|{|\<alpha\><rsub|q>\|q\<in\>\<bbb-Q\>|}>\<subseteq\>\<bbb-R\>
    </equation*>

    where <math|\<alpha\><rsub|q>=<around*|{|r\<in\>\<bbb-Q\>\|r\<less\>q|}>>
  </definition>

  To make the above a embedding we need a bijection between <math|\<bbb-Q\>>
  and <math|\<bbb-Q\><rsub|\<bbb-R\>>> and once we have defined sum, product
  and order that it is field and order isomorphism. We start with providing a
  bijection.

  <\theorem>
    <label|real QR bijection><math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:\<bbb-Q\>\<rightarrow\>\<bbb-Q\><rsub|\<bbb-R\>>>
    defined by <math|i<rsub|\<bbb-Q\>><around*|(|q|)>=\<alpha\><rsub|q>> is a
    bijection.
  </theorem>

  <\proof>
    We have\ 

    <\description>
      <item*|reflexivity>If <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q|)>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r|)>>
      then <math|\<alpha\><rsub|q>=\<alpha\><rsub|r>> so that by [theorem:
      <reference|real rational cut>]

      <item*|surjective>If <math|\<alpha\>\<in\>\<bbb-Q\><rsub|\<bbb-Q\>>> we
      have a <math|q\<in\>\<bbb-Q\>> such that
      <math|\<alpha\>=\<alpha\><rsub|q>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q|)>>
      \ 
    </description>
  </proof>

  <\corollary>
    <label|real QR is denumerable>The set <math|\<bbb-Q\><rsub|\<bbb-R\>>> is
    denumerable.
  </corollary>

  <\proof>
    As <math|\<bbb-Q\>> is denumerable we have that
    <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-Q\>>, further from the previous
    theorem [theorem: <reference|real QR bijection>] we have
    <math|\<bbb-Q\>\<approx\>\<bbb-Q\><rsub|\<bbb-R\>>> so that
    <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-Q\><rsub|\<bbb-R\>>>. Hence
    <math|\<bbb-Q\><rsub|\<bbb-R\>>> is denumerable.
  </proof>

  <\theorem>
    <label|real gap theorem><dueto|Gap theorem>If
    <math|\<alpha\>\<in\>\<bbb-R\>> then <math|\<forall\>\<varepsilon\>\<in\>\<bbb-Q\>>
    with <math|0\<less\>\<varepsilon\>> there
    <math|\<exists\>q\<in\>\<alpha\>> and
    <math|\<exists\>r\<in\>\<bbb-Q\>\\\<alpha\>> such that\ 

    <\equation*>
      r-q=r+<around*|(|-q|)>\<less\>\<varepsilon\>
    </equation*>
  </theorem>

  <\proof>
    Let <math|\<alpha\>\<in\>\<bbb-R\>> and
    <math|\<varepsilon\>\<in\>\<bbb-Q\>\\<around*|{|0|}>>. By the definition
    of a cut there exist a <math|q<rprime|'>\<in\>\<alpha\>> and a
    <math|r<rprime|'>\<in\>\<bbb-Q\>\\\<alpha\>> such that
    <math|q<rprime|'>\<less\>r<rprime|'>>, so
    <math|0\<less\>r<rprime|'>+<around*|(|-q<rprime|'>|)>=r<rprime|'>-q<rprime|'>>
    and we have by the Archimedean property [see theorem: <reference|rational
    Archimedean>] the existence of a <math|k\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>>
    such that <math|r<rprime|'>-q<rprime|'>\<less\>k\<cdot\>\<varepsilon\>>.
    If <math|k=0> then we would have that
    <math|0\<less\>r<rprime|'>-k<rprime|'>\<less\>0> a contradiction, so
    <math|k\<neq\>0> which by [theorem: <reference|rational NQ properties
    (1)>] proves that <math|0\<less\>k>. Applying [theorems:
    <reference|rational ordered field>, <reference|field order properties>]
    we have that <math|0\<less\>k<rsup|-1>>, so multiplying both sides of
    <math|r<rprime|'>-q<rprime|'>\<less\>k\<cdot\>\<varepsilon\>> gives\ 

    <\equation>
      <label|eq 9.1.028>k<rsup|-1>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>\<less\>\<varepsilon\>
    </equation>

    Define now\ 

    <\equation*>
      A=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>\|q<rprime|'>+<around*|(|n\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>\<nin\>\<alpha\>|}>\<subseteq\>\<bbb-N\><rsub|0,\<bbb-Q\>>
    </equation*>

    As <math|q<rprime|'>+<around*|(|k\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>=q<rprime|'>+<around*|(|r<rprime|'>-q<rprime|'>|)>=r<rprime|'>\<in\>\<bbb-Q\>\\\<alpha\>>
    it follows that <math|k\<in\>A> so that <math|A\<neq\>0>, as
    <math|\<bbb-N\><rsub|0,\<bbb-Q\>>> is well ordered [see theorem:
    <reference|rational NQ is well-ordered>] it follows that
    <math|k<rprime|'>=min<around*|(|A|)>> exist. If <math|k<rprime|'>=0> theb
    as <math|k<rprime|'>\<in\>A> we would have
    <math|q<rprime|'>=q<rprime|'>+<around*|(|0\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>\<nin\>\<alpha\>>
    contradicting <math|q<rprime|'>\<in\>a>, so we must have that
    <math|k<rprime|'>\<neq\>0> and using [theorem: <reference|rational NQ
    properties (1)>] it follows that <math|1\<leqslant\>k<rprime|'>>, hence
    <math|0\<leqslant\>k<rprime|'>-1>, where by [theorem: <reference|rational
    NQ properties (1)>] <math|k<rprime|'>-1\<in\>\<bbb-N\><rsub|0,\<bbb-Q\>>>.
    As by [theorem: <reference|rational q\<less\>q+1 and q-1\<less\>q>]
    <math|k<rprime|'>-1\<less\>k<rprime|'>> we have as
    <math|k<rprime|'>=min<around*|(|A|)>> that <math|k<rprime|'>-1\<nin\>A>
    so that

    <\equation*>
      q<rprime|'>+<around*|(|<around*|(|k<rprime|'>-1|)>\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>\<in\>\<alpha\>
    </equation*>

    Define now <math|q=q<rprime|'>+<around*|(|<around*|(|k<rprime|'>-1|)>\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>>
    and <math|r=q<rprime|'>+<around*|(|k<rprime|'>\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>>
    then we have

    <\equation*>
      q\<in\>\<alpha\><text| and >r\<in\>\<bbb-Q\>\\\<alpha\>
    </equation*>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|r-q>|<cell|=>|<cell|<around*|(|q<rprime|'>+<around*|(|k<rprime|'>\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>|)>-<around*|(|q<rprime|'>+<around*|(|<around*|(|k<rprime|'>-1|)>\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|k<rprime|'>\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>-<around*|(|<around*|(|k<rprime|'>-1|)>\<cdot\>k<rsup|-1>|)>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|k<rsup|-1>\<cdot\><around*|(|r<rprime|'>-q<rprime|'>|)>>>|<row|<cell|>|<cell|\<less\>\<varepsilon\>>|<cell|<text|[see
      eq: <reference|eq 9.1.028>]>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|real negative cut><dueto|Negative cut>If
    <math|\<alpha\>\<in\>\<bbb-R\>> then <math|-\<alpha\>> defined by\ 

    <\equation*>
      -\<alpha\>=<around*|{|r\|-r\<in\>\<bbb-Q\>\\\<alpha\><text| such that
      <math|\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vDash\>t\<less\>-r>>|}>
    </equation*>

    is a Dedekind cut called the <with|font-series|bold|negative cut>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<alpha\>> is a Dedekind cut we have by [definition:
      <reference|real Dedekind's cut> (2)] that
      <math|\<bbb-Q\>\\\<alpha\>\<neq\>\<varnothing\>> so there exist a
      <math|q\<in\>\<bbb-Q\>\\\<alpha\>>. Assume that
      <math|q+1\<in\>\<alpha\>> then by [definition: <reference|real
      Dedekind's cut> (3)] we have <math|q+1\<less\>q> a contradiction, so we
      must have that <math|q+1\<nin\>\<alpha\>> or
      <math|q+1\<in\>\<bbb-Q\>\\\<alpha\>>. Hence we have
      \ <math|-<around*|(|-<around*|(|q+1|)>|)>=q+1\<in\>\<bbb-Q\>\\\<alpha\>>
      and <math|q\<in\>\<bbb-Q\>\\\<alpha\>> with
      <math|q\<less\>q+1=-<around*|(|-<around*|(|q+1|)>|)>> proving that
      <math|-<around*|(|q+1|)>\<in\>-\<alpha\>> or that\ 

      <\equation*>
        -\<alpha\>\<neq\>\<varnothing\>
      </equation*>

      <item>As <math|\<alpha\>> is a Dedekind cut we have by [definition:
      <reference|real Dedekind's cut> (1)] that
      <math|\<alpha\>\<neq\>\<varnothing\>> so there exist a
      <math|q\<in\>\<alpha\>> hence <math|q\<nin\>\<bbb-Q\>\\\<alpha\>>. If
      <math|-q\<in\>-\<alpha\>> then <math|q=-<around*|(|-q|)>\<in\>\<bbb-Q\>\\\<alpha\>>
      contradicting <math|q\<nin\>\<bbb-Q\>\\\<alpha\>> hence we must have
      that <math|-q\<nin\>-\<alpha\>> proving that\ 

      <\equation*>
        -\<alpha\>\<neq\>\<bbb-Q\>
      </equation*>

      <item>Let <math|q\<in\>-\<alpha\>> and
      <math|s\<in\>\<bbb-Q\>\\-\<alpha\>>. Assume that <math|s\<leqslant\>q>
      then by [theorems: <reference|rational ordered field>, <reference|field
      order properties>]\ 

      <\equation>
        <label|eq 9.2.033>-q\<leqslant\>-s
      </equation>

      As <math|q\<in\>-\<alpha\>> we have that\ 

      <\equation>
        <label|eq 9.3.033>-q\<in\>\<bbb-Q\>\\\<alpha\><text| and
        >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vDash\>t\<less\>-q
      </equation>

      If <math|-s\<in\>\<alpha\>> then as <math|-q\<in\>\<bbb-Q\>\\\<alpha\>>
      we have by [definition: <reference|real Dedekind's cut> (3)] that
      <math|-s\<less\>-q> contradicting [eq: <reference|eq 9.2.033>] hence we
      must have that <math|-s\<nin\>\<alpha\>> such that
      <math|-s\<in\>\<bbb-Q\>\\\<alpha\>>. Using [eq: <reference|eq 9.2.033>]
      and [eq: <reference|eq 9.3.033>] we have
      <math|\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>> such that
      <math|t\<less\>-q\<less\>-s> so we have that <math|s\<in\>-\<alpha\>>
      contradicting <math|s\<in\>\<bbb-Q\>\\-\<alpha\>>. So the assumption is
      wrong and we have\ 

      <\equation*>
        q\<less\>s
      </equation*>

      <item>Assume that <math|-\<alpha\>> has a greatest element <math|m>
      then\ 

      <\equation>
        <label|eq 9.4.033>m\<in\>-\<alpha\><text| and
        >\<forall\>r\<in\>-\<alpha\><text| we have >r\<leqslant\>m
      </equation>

      As <math|m\<in\>-a> we have that

      <\equation>
        <label|eq 9.5.033>-m\<in\>\<bbb-Q\>\\\<alpha\><text| and
        >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vDash\>t\<less\>-m\<Rightarrowlim\><rsub|<text|[theorems:
        <reference|rational ordered field>, <reference|field order
        properties>]>>m\<less\>-t
      </equation>

      For <math|\<bbb-Q\>\\\<alpha\>> we have now two cases to consider:

      <\description>
        <item*|<math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)><text| does not
        exist>>>As <math|t\<in\>\<bbb-Q\>\\\<alpha\>> and
        <math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> does not exist there
        exist a <math|s\<in\>\<bbb-Q\>\\\<alpha\>> such that
        <math|s\<less\>t>, we have <math|-<around*|(|-t|)>\<in\>\<bbb-Q\>\\\<alpha\>\<wedge\>s\<less\><around*|(|-t|)>>
        proving that <math|-t\<in\>-\<alpha\>> hence by [eq: <reference|eq
        9.4.033>] that <math|-t\<leqslant\>m> contradicting [eq <reference|eq
        9.5.033>].

        <item*|<math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> exist>As
        <math|-m\<in\>\<bbb-Q\>\\\<alpha\>> we have
        <math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>\<leqslant\>-m>, further
        as <math|t\<in\>\<bbb-Q\>\\\<alpha\>\<wedge\>t\<less\>-m>
        <math|-m\<neq\>min<around*|(|\<bbb-Q\>|)>> so that
        <math|min<around*|(|\<bbb-Q\>|)>\<less\>-m>. Using the density of
        <math|\<bbb-Q\>> [see <reference|rational densitiy>] there exist a
        <math|s\<in\>\<bbb-Q\>> such that

        <\equation>
          <label|eq 9.6.030>min<around*|(|\<bbb-Q\>|)>\<less\>s\<less\>-m
        </equation>

        If <math|s\<in\>\<alpha\>> then as
        <math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>\<in\>\<bbb-Q\>\\\<alpha\>>
        we have by [definition: <reference|real Dedekind's cut> (4)] that
        <math|s\<less\>min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> contradicting
        <math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>\<less\>s>, so we must
        have that <math|s\<in\>\<bbb-Q\>\\\<alpha\>>. Hence
        <math|s=-<around*|(|-s|)>\<in\>\<bbb-Q\>\\\<alpha\>>,
        <math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>\<in\>\<bbb-Q\>\\\<alpha\>>
        and <math|min<around*|(|\<bbb-Q\>|)>\<less\>s=-<around*|(|-s|)>>
        proving that <math|-s\<in\>-\<alpha\>>. Using [eq: <reference|eq
        9.4.033>] it follows that <math|-s\<leqslant\>m> or
        <math|-m\<leqslant\>s> contradicting [eq: <reference|eq 9.6.030>]
      </description>

      So in all cases we reach a contradiction so that the assumption is
      wron. Hence\ 

      <\equation*>
        -\<alpha\><text| has no greatest element>
      </equation*>
    </enumerate>
  </proof>

  For rational cuts there is a simpler expression for negative curs of as cut

  <\theorem>
    <label|real negastive cut of rational cut>If <math|q\<in\>\<bbb-Q\>> then
    <math|-\<alpha\><rsub|q>=\<alpha\><rsub|-q>>
  </theorem>

  <\proof>
    \ Using [theorem: <reference|real rational cut>] we have that\ 

    <\equation*>
      min<around*|(|\<bbb-Q\>\\\<alpha\><rsub|q>|)><text| exist and
      >q=min<around*|(|\<bbb-Q\>\\\<alpha\><rsub|q>|)>
    </equation*>

    If <math|x\<in\>-\<alpha\><rsub|q>> then
    <math|-x\<in\>\<bbb-Q\>\\\<alpha\><rsub|q>>
    <math|\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>> such that <math|t\<less\>-x>
    so that <math|-x\<neq\>min<around*|(|\<bbb-Q\>\\\<alpha\>|)>=q>. As
    <math|\<alpha\><rsub|q>=<around*|{|r\<in\>\<bbb-Q\>\|r\<less\>q|}>>
    <math|>and <math|-x\<in\>\<bbb-Q\>\\\<alpha\><rsub|q>> we have
    <math|q\<leqslant\>-x> or <math|x\<leqslant\>-q> which as
    <math|-x\<neq\>q\<Rightarrow\>x\<neq\>-q>, gives <math|x\<less\>-q>.
    Hence <math|x\<in\><around*|{|r\<in\>\<bbb-Q\>\|r\<less\>-q|}>=\<alpha\><rsub|-q>>
    proving that

    <\equation>
      <label|eq 9.10.030>-\<alpha\><rsub|q>\<subseteq\>\<alpha\><rsub|-q>
    </equation>

    If <math|x\<in\>\<alpha\><rsub|-q>> then <math|x\<less\>-q>, so that
    <math|q\<less\>-x> hence <math|-x\<nin\><around*|{|x\<in\>\<bbb-Q\>\|x\<less\>q|}>=\<alpha\><rsub|q>>
    and <math|q\<less\>-x> where <math|q=min<around*|(|\<bbb-Q\>\\\<alpha\><rsub|q>|)>\<in\>\<bbb-Q\>\\\<alpha\><rsub|q>>
    proving that <math|x\<in\>-\<alpha\><rsub|q>>. So
    <math|\<alpha\><rsub|-q>\<subseteq\>\<alpha\><rsub|q>>, combining this
    with [eq: <reference|eq 9.10.030>] gives

    <\equation*>
      -\<alpha\><rsub|q>=\<alpha\><rsub|-q>
    </equation*>
  </proof>

  <subsection|Arithmetic in <math|\<bbb-R\>>>

  <subsubsection|Addition in <math|\<bbb-R\>>>

  <\definition>
    If <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> then we define
    <math|\<alpha\>+\<beta\>> by\ 

    <\equation*>
      \<alpha\>+b=<around*|{|q+r\|q\<in\>\<alpha\>\<wedge\>r\<in\>\<beta\>|}>
    </equation*>
  </definition>

  Before we can use the above definition to define the addition operator in
  <math|\<bbb-R\>> we must prove that <math|\<alpha\>+\<beta\>> is a Dedekind
  cut hence a element of <math|\<bbb-R\>>. First we need a little lemma.

  <\lemma>
    <math|<label|real lemma for sum operator>\<forall\>\<alpha\>\<in\>\<bbb-R\>>
    and <math|\<forall\>\<varepsilon\>\<in\>\<bbb-Q\>> with
    <math|0\<less\>\<varepsilon\>> there exist a <math|r\<in\>\<alpha\>> such
    that <math|r+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>>
  </lemma>

  <\proof>
    Let <math|\<alpha\>\<in\>\<bbb-R\>> and
    <math|\<varepsilon\>\<in\>\<bbb-Q\>> such that
    <math|0\<less\>\<varepsilon\>>. Using [theorem: <reference|real gap
    theorem>] there exist a <math|q\<in\>\<alpha\>> and a
    <math|r\<in\>\<bbb-Q\>\\\<alpha\>> such that
    <math|r-q\<less\>\<varepsilon\>>. Assume that
    <math|q+\<varepsilon\>\<in\>\<alpha\>> then we have by the definition of
    a cut that <math|q+\<varepsilon\>\<less\>r> so that
    <math|\<varepsilon\>\<less\>r-q> contradicting
    <math|r-q\<less\>\<varepsilon\>>. Hence we must have that
    <math|q+\<varepsilon\>\<nin\>\<alpha\>> or
    <math|q+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>>/
  </proof>

  <\theorem>
    <label|real sum is a operator><math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\>>
    we have that <math|\<alpha\>+\<beta\>\<in\>\<bbb-R\>>, hence
    <math|+:\<bbb-R\>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-R\>> where
    <math|+<around*|(|\<alpha\>,\<beta\>|)>=\<alpha\>+\<beta\>> is a operator
    on <math|\<bbb-R\>>.
  </theorem>

  <\proof>
    Given Dedekind cuts <math|\<alpha\>> and <math|\<beta\>> we must prove
    that <math|\<alpha\>+\<beta\>> is a Dedekind cut.\ 

    <\enumerate>
      <item>As <math|\<alpha\>\<neq\>\<varnothing\>> and
      <math|\<beta\>\<neq\>\<varnothing\>> it follows that
      <math|\<exists\>a\<in\>\<alpha\>> and <math|\<exists\>b\<in\>\<beta\>>
      so that <math|\<alpha\>+\<beta\>\<in\><around*|{|q+r\|q\<in\>\<alpha\>\<wedge\>r\<in\>\<beta\>|}>=\<alpha\>+\<beta\>>,
      proving that\ 

      <\equation*>
        \<alpha\>+\<beta\>\<neq\>\<varnothing\>
      </equation*>

      <item>Given <math|\<varepsilon\>=<frac|1|2>\<in\>\<bbb-Q\>> we can as
      <math|0\<less\>\<varepsilon\>> use [lemma: <reference|real lemma for
      sum operator>] find a <math|r<rprime|'>\<in\>\<alpha\>> and a
      <math|s<rprime|'>\<in\>\<beta\>> such that
      <math|q<rprime|'>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>> and
      <math|r<rprime|'>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<beta\>>. Assume that
      <math|q<rprime|'>+y<rprime|'>+1\<in\>\<alpha\>+\<beta\>> then there
      exists a <math|q\<in\>\<alpha\>> and <math|r\<in\>\<beta\>> such that

      <\equation>
        <label|eq 9.10.029>q<rprime|'>+y<rprime|'>+1=q+r
      </equation>

      As <math|q\<in\>\<alpha\>\<wedge\>q<rprime|'>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>>
      and <math|r\<in\>\<beta\>\<wedge\>r<rprime|'>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<beta\>>
      it follows from the defintion of Dedekind cuts that
      <math|q\<less\>q<rprime|'>+\<varepsilon\>> and
      <math|r\<less\>r<rprime|'>+\<varepsilon\>> so that
      <math|q+r\<less\>q<rprime|'>+r<rprime|'>+2\<cdot\>\<varepsilon\>=q<rprime|'>+r<rprime|'>+1\<equallim\><rsub|<text|[eq:
      <reference|eq 9.10.029>]>>q+r> giving the contradiction that
      <math|q+r\<less\>q+r>. So we must have that
      <math|q<rprime|'>+r<rprime|'>+1\<nin\>\<alpha\>+\<beta\>> proving that\ 

      <\equation*>
        \<alpha\>+\<beta\>\<neq\>\<bbb-Q\>
      </equation*>

      <item>Let <math|s\<in\>\<alpha\>+\<beta\>> and
      <math|t\<in\>\<bbb-Q\>\\\<alpha\>+\<beta\>> then there exists a
      <math|q\<in\>\<alpha\>> and a <math|r\<in\>\<beta\>> such that
      <math|s=q+r>. Assume now that that <math|t\<leqslant\>s>, then
      <math|t\<leqslant\>q+r>, so that <math|t-r\<leqslant\>q>, by [theorem:
      <reference|real property to determine membership of a cut>] it follows
      then that <math|t-r\<in\>\<alpha\>>. From this and the fact that
      <math|r\<in\>\<alpha\>> it follows that
      <math|t=<around*|(|t-r|)>+r\<in\>\<alpha\>+\<beta\>> contradicting
      <math|t\<in\>\<bbb-Q\>\\\<alpha\>+\<beta\>>, hence we must have that
      <math|s\<less\>t>.\ 

      <item>Assume that <math|\<alpha\>+\<beta\>> has a greates element
      <math|m> then we have\ 

      <\equation>
        <label|eq 9.11.029>m\<in\>\<alpha\>+\<beta\><text| and
        >\<forall\>q\<in\>\<alpha\>+\<beta\><text| we have >q\<leqslant\>m
      </equation>

      As <math|m\<in\>\<alpha\>+\<beta\>> there exists a
      <math|q\<in\>\<alpha\>> and a <math|r\<in\>\<beta\>> such that
      <math|m=q+r>. As <math|\<alpha\>> has no greatest element there exist a
      <math|q<rprime|'>\<in\>\<alpha\>> such that
      <math|q\<less\>q<rprime|'>>, hence <math|m=q+r\<less\>q<rprime|'>+r>
      which as <math|q<rprime|'>+r\<in\>\<alpha\>+\<beta\>> contradicts [eq:
      <reference|eq 9.11.029>]. So the assumption is wrong, hence
      <math|\<alpha\>+\<beta\>> has no greatest element.
    </enumerate>
  </proof>

  <\theorem>
    <label|real group><math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> is a
    Abelian group with neutral ekement <math|0=\<alpha\><rsub|0>=<around*|{|q\<in\>\<bbb-Q\>\|q\<less\>0|}>>
    and if <math|\<alpha\>\<in\>\<bbb-R\>> then <math|-\<alpha\>> [the
    negative cut of <math|\<alpha\>>] is the inverse element of
    <math|\<alpha\>>.
  </theorem>

  <\proof>
    We make use of the fact that <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>
    is a Abelian group [see theorem: <reference|rational group>]. So we have\ 

    <\description>
      <item*|associativity>If <math|\<alpha\>,\<beta\>,\<gamma\>\<in\>\<bbb-R\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\><around*|(|\<alpha\>+\<beta\>|)>+\<gamma\>>|<cell|\<Leftrightarrow\>>|<cell|z=r+s\<wedge\>r\<in\><around*|(|a+\<beta\>|)>\<wedge\>s\<in\>\<gamma\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=<around*|(|q+t|)>+s\<wedge\>q\<in\>\<alpha\>\<wedge\>t\<in\>\<beta\>\<wedge\>s\<in\>\<gamma\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=q+<around*|(|t+s|)>\<wedge\>q\<in\>\<alpha\>\<wedge\>t\<in\>\<beta\>\<wedge\>s\<in\>\<gamma\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=q+r\<wedge\>q\<in\>\<alpha\>\<wedge\>r\<in\>\<beta\>+\<gamma\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\>\<alpha\>+<around*|(|\<beta\>+\<gamma\>|)>>>>>
      </eqnarray*>

      proving that <math|<around*|(|\<alpha\>+\<beta\>|)>+\<gamma\>=\<alpha\>+<around*|(|\<beta\>+\<gamma\>|)>>.

      <item*|commutativity>If <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\>\<alpha\>\<upl\>\<beta\>>|<cell|\<Leftrightarrow\>>|<cell|z=r\<upl\>s\<wedge\>r\<in\>\<alpha\>\<wedge\>s\<in\>\<beta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z=s\<upl\>r\<wedge\>r\<in\>\<alpha\>\<wedge\>s\<in\>\<beta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\>\<beta\>\<upl\>\<alpha\>>>>>
      </eqnarray*>

      <item*|neutral element>Let <math|\<alpha\>\<in\>\<bbb-R\>> and take
      <math|\<alpha\><rsub|0>=<around*|{|q\<in\>\<bbb-Q\>\|q\<less\>0|}>>. If
      <math|q\<in\>\<alpha\>+\<alpha\><rsub|0>> then there exists
      <math|r\<in\>\<alpha\>> and <math|s\<in\>\<alpha\><rsub|0>> such that
      <math|q=r+s>, as <math|s\<in\>\<alpha\><rsub|0>> we have that
      <math|s\<less\>0> so that <math|q=r+s\<less\>r>, using [theorem:
      <reference|real property to determine membership of a cut>] it follows
      then that <math|q\<in\>\<alpha\>>. Hence we have that\ 

      <\equation>
        <label|eq 9.12.029>\<alpha\>+\<alpha\><rsub|0>\<subseteq\>\<alpha\>
      </equation>

      If <math|q\<in\>\<alpha\>> then as <math|\<alpha\>> has no maximum
      there exist a <math|r\<in\>\<alpha\>> such that <math|q\<less\>r>, so
      <math|q-r\<less\>0> so that <math|q-r\<in\>\<alpha\><rsub|0>>, hence
      <math|q=<around*|(|q-r|)>+r\<in\>\<alpha\>+\<alpha\><rsub|0>>.<space|1em>So
      <math|\<alpha\>\<subseteq\>\<alpha\>+\<alpha\><rsub|0>> which together
      with [eq: <reference|eq 9.12.029>] proves that\ 

      <\equation*>
        \<alpha\>=\<alpha\>+\<alpha\><rsub|0>\<equallim\><rsub|<text|commutativity>>\<alpha\><rsub|0>+\<alpha\>
      </equation*>

      <item*|inverse element>Let <math|\<alpha\>\<in\>\<bbb-R\>> and take

      <\equation*>
        -\<alpha\>\<equallim\><rsub|<text|[theorem: <reference|real negative
        cut>]>><around*|{|r\|-r\<in\>\<bbb-Q\>\\\<alpha\><text| such that if
        >min<around*|(|\<bbb-Q\>\\\<alpha\>|)><text| exist then
        >-r\<neq\>min<around*|(|\<bbb-Q\>\\\<alpha\>|)>|}>
      </equation*>

      then we have the following cases to consider:

      <\description>
        <item*|<math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)><text| does not
        exist>>>If <math|q\<in\>\<alpha\><rsub|0>> then <math|q\<less\>0> so
        that by \ [theorems: <reference|rational ordered field>,
        <reference|field order properties>] <math|0\<less\>-q>, by [theorem:
        <reference|real lemma for sum operator>] there exist a
        <math|r\<in\>\<alpha\>> such that
        <math|-<around*|(|q+<around*|(|-r|)>|)>==r+<around*|(|-q|)>\<in\>\<bbb-Q\>\\\<alpha\>>,
        as <math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> does not exist there
        exist a <math|s\<in\>\<bbb-Q\>\\\<alpha\>> such that
        <math|s\<less\>r+<around*|(|-q|)>=-<around*|(|q+<around*|(|-r|)>|)>>.
        So we conclude that <math|q+<around*|(|-r|)>\<in\>-\<alpha\>>, hence
        <math|q=<around*|(|q+<around*|(|-r|)>|)>+r\<in\><around*|(|-\<alpha\>|)>+\<alpha\>>
        giving\ 

        <\equation>
          <label|eq 9.11.034>\<alpha\><rsub|0>\<subseteq\><around*|(|-\<alpha\>|)>+\<alpha\>
        </equation>

        If <math|q\<in\><around*|(|-\<alpha\>|)>+\<alpha\>> there exist a
        <math|r\<in\>-\<alpha\>> and <math|s\<in\>\<alpha\>> such that
        <math|q=r+s>. As <math|r\<in\>-\<alpha\>> we have that
        <math|-r\<in\>\<bbb-Q\>\\\<alpha\>>, using [definition:
        <reference|real Dedekind's cut> (3)] we have then <math|s\<less\>-r>
        so that <math|q=s+r\<less\>0> proving that
        <math|q\<in\>\<alpha\><rsub|0>>. Hence
        <math|<around*|(|-\<alpha\>|)>+\<alpha\>\<in\>\<alpha\><rsub|0>>
        which by [eq: <reference|eq 9.11.034>] proves that\ 

        <\equation*>
          \<alpha\><rsub|0>=<around*|(|-\<alpha\>|)>+\<alpha\>
        </equation*>

        <item*|<math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>>
        exist><item*|<math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> exist>Let
        <math|m=min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> then by [theorem:
        <reference|real rational cut>]

        <\equation*>
          \<alpha\>=\<alpha\><rsub|m>=<around*|{|q\<in\>\<bbb-Q\>\|q\<less\>m|}>
        </equation*>

        Further by [theorem: <reference|real negastive cut of rational cut>]
        we have then that\ 

        <\equation*>
          -\<alpha\>=-\<alpha\><rsub|m>=\<alpha\><rsub|-m>
        </equation*>

        so that\ 

        <\equation*>
          \<alpha\>+<around*|(|-\<alpha\>|)>=\<alpha\><rsub|m>+\<alpha\><rsub|-m>
        </equation*>

        If <math|q\<in\>\<alpha\>+<around*|(|-\<alpha\>|)>> then there exist
        a <math|r\<in\>\<alpha\><rsub|m>> and a
        <math|s\<in\>\<alpha\><rsub|-m>> such that <math|q=r+s>. As
        <math|r\<in\>\<alpha\><rsub|m>> we have <math|r\<less\>m> and as
        <math|s\<in\>\<alpha\><rsub|-m>> <math|s\<less\>-m> so that
        <math|q=r+s\<less\>m+<around*|(|-m|)>=0> proving that
        <math|q\<in\>\<alpha\><rsub|0>>. Hence\ 

        <\equation>
          <label|eq 9.14.029>\<alpha\>+<around*|(|-\<alpha\>|)>\<subseteq\>\<alpha\><rsub|0>
        </equation>

        Further if <math|q\<in\>\<alpha\><rsub|0>> then <math|q\<less\>0>
        then as <math|0\<less\><frac|1|2>> we have that
        <math|<frac|1|2>\<cdot\>x\<less\>0> so that
        <math|m+<frac|1|2>\<cdot\>q\<less\>m> and
        <math|-m+<frac|1|2>\<cdot\>q\<less\>-m> so that
        <math|m+<frac|1|2>\<cdot\>q\<in\>a<rsub|m>> and
        <math|-m+<frac|1|2>\<cdot\>q\<in\>\<alpha\><rsub|-m>> hence\ 

        <\equation*>
          <around*|(|m+<frac|1|2>\<cdot\>q|)>+<around*|(|-m+<frac|1|2>\<cdot\>q|)>\<in\>\<alpha\><rsub|m>+\<alpha\><rsub|-m>=\<alpha\>+<around*|(|-\<alpha\>|)>
        </equation*>

        which as <math|><math|<around*|(|m+<frac|1|2>\<cdot\>q|)>+<around*|(|-m+<frac|1|2>\<cdot\>q|)>=<frac|1|2>\<cdot\>q+<frac|1|2>\<cdot\>q=<around*|(|<frac|1|2>+<frac|1|2>|)>\<cdot\>q=q>
        proves that <math|q\<in\>\<alpha\>+<around*|(|-\<alpha\>|)>>. So
        <math|\<alpha\><rsub|0>\<subseteq\>\<alpha\>+-\<alpha\><frac||>>
        which combined with [eq: <reference|eq 9.14.029>] gives\ 

        <\equation*>
          \<alpha\><rsub|0>=\<alpha\>+<around*|(|-\<alpha\>|)>\<equallim\><rsub|<text|commutativity>><around*|(|-\<alpha\>|)>+\<alpha\>
        </equation*>
      </description>
    </description>

    \;
  </proof>

  <subsubsection|Multiplication>

  Before we can define multiplication we have to divide the set of real
  numbers in the positive real numbers, the negative real numbers and the
  <math|0> element.

  <\definition>
    <label|real positive negative numbers><index|<math|\<bbb-R\><rsup|+>>><index|<math|\<bbb-R\><rsup|->>>The
    set of positive real numbers noted by <math|\<bbb-R\><rsup|+>> and
    negative real numbers noted by <math|\<bbb-R\><rsup|->> is defined by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|\<bbb-R\><rsup|+>=<around*|{|\<alpha\>\<in\>\<bbb-R\>\|0\<in\>\<alpha\>|}>\<subseteq\>\<bbb-R\>>|<cell|>>|<row|<cell|>|<cell|\<bbb-R\><rsup|->=<around*|{|\<alpha\>\|-\<alpha\>\<in\>\<bbb-R\><rsup|+>|}>\<subseteq\>\<bbb-R\>>|<cell|>>>>
    </eqnarray*>

    Further we define the set <math|\<bbb-R\><rsup|+><rsub|0>> of non
    negative numbers and <math|\<bbb-R\><rsup|-><rsub|0>> of non positive
    numbers by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|\<bbb-R\><rsup|+><rsub|0>=\<bbb-R\><rsup|+><big|cup><around*|{|0|}>>|<cell|>>|<row|<cell|>|<cell|\<bbb-R\><rsup|-><rsub|0>=\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>|<cell|>>>>
    </eqnarray*>
  </definition>

  The following theorem shows that <math|\<bbb-R\><rsup|+><rsub|0>\<neq\>\<bbb-R\><rsup|+>>
  and <math|\<bbb-R\><rsup|-><rsub|0>\<neq\>\<bbb-R\><rsup|->>

  <\theorem>
    <label|real division of real numbers in positive and negative
    numbers><math|\<bbb-R\>=\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
    where <math|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->=\<varnothing\>>,
    <math|\<bbb-R\><rsup|+><big|cap><around*|{|0|}>=\<varnothing\>> and
    <math|\<bbb-R\><rsup|-><big|cap><around*|{|0|}>=\<varnothing\>>
  </theorem>

  <\note>
    Be carefull here, <math|0> can mean either <math|0\<in\>\<bbb-Z\>> or
    <math|0\<in\>\<bbb-R\>> in which case <math|0=\<alpha\><rsub|0>>
  </note>

  <\proof>
    As <math|<around*|{|0|}>\<subseteq\>\<bbb-R\>>,
    <math|\<bbb-R\><rsup|+>\<subseteq\>\<bbb-R\>> and
    <math|\<bbb-R\><rsup|->\<subseteq\>\<bbb-R\>> we have\ 

    <\equation>
      <label|eq 9.16.030>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>\<subseteq\>\<bbb-R\>
    </equation>

    If <math|\<alpha\>\<in\>\<bbb-R\>> then we have either:

    <\description>
      <item*|<math|0\<in\>\<alpha\>>>then
      <math|\<alpha\>\<in\>\<bbb-R\><rsup|+>> so that
      <math|\<alpha\>\<in\>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>

      <item*|<math|0\<nin\>\<alpha\>>>then we have either:

      <\description>
        <item*|<math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> does not exist>As
        <math|0\<nin\>\<alpha\>> we have <math|-0=0\<in\>\<bbb-Q\>\\\<alpha\>>
        and 'if <math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> exist
        <math|-0\<neq\>min<around*|(|\<bbb-Q\>\\\<alpha\>|)>>' is true so
        that <math|0\<in\>-\<alpha\>>, hence
        <math|-\<alpha\>\<in\>\<bbb-R\><rsup|+>> proving that
        <math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<subseteq\>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>.

        <item*|<math|min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> exist>Then by
        [theorem: <reference|real rational cut>]
        \ <math|\<alpha\>=\<alpha\><rsub|m>> where
        <math|m=min<around*|(|\<bbb-Q\>\\\<alpha\>|)>>

        <\description>
          <item*|<math|0=m>>Then <math|\<alpha\>=\<alpha\><rsub|0>=0> so that
          <math|\<alpha\>\<in\><around*|{|0|}>\<subseteq\>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>.

          <item*|<math|0\<less\>m>>Then <math|0\<in\>\<alpha\><rsub|m>=\<alpha\>>
          so that <math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<subseteq\>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>.

          <item*|<math|m\<less\>0>>Then <math|0\<nin\>\<alpha\><rsub|m>=\<alpha\>>
          so that <math|-0=0\<in\>\<bbb-Q\>\\\<alpha\>> and as
          <math|-0=0\<neq\>min<around*|(|\<bbb-Q\>\\\<alpha\>|)>> it follows
          that <math|0\<in\>-\<alpha\>>, proving that
          <math|-\<alpha\>\<in\>\<bbb-R\><rsup|+>>, hence
          <math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<subseteq\>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
        </description>
      </description>
    </description>

    So in all cases we have <math|\<alpha\>\<in\>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
    proving <math|\<bbb-R\>\<subseteq\>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
    which combined with [eq: <reference|eq 9.16.030>] proves\ 

    <\equation*>
      \<bbb-R\>=\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>
    </equation*>

    Now as <math|0=\<alpha\><rsub|0>=<around*|{|q\<in\>\<bbb-Q\>\|q\<less\>0|}>>
    we have that <math|0\<nin\>\<alpha\><rsub|0>> hence
    <math|0=\<alpha\><rsub|0>\<nin\>\<bbb-R\><rsup|+>> proving that\ 

    <\equation*>
      \<bbb-R\><rsup|+><big|cap><around*|{|0|}>=\<varnothing\>
    </equation*>

    Using [theorem: <reference|real negastive cut of rational cut>] it
    follows that <math|-\<alpha\><rsub|0>=\<alpha\><rsub|-0>=\<alpha\><rsub|0>>
    so that <math|-0=-\<alpha\><rsub|0>\<nin\>\<bbb-R\><rsup|+>> hence
    <math|0\<nin\>\<bbb-R\><rsup|->> proving that\ 

    <\equation*>
      \<bbb-R\><rsup|-><big|cap><around*|{|0|}>=\<varnothing\>
    </equation*>

    Finally if <math|\<alpha\>\<in\>\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->>
    then <math|0\<in\>\<alpha\>> and <math|0\<in\>-\<alpha\>>, as
    <math|0\<in\>-\<alpha\>> then at least
    <math|-0\<in\>\<bbb-Q\>\\\<alpha\>> so that <math|0=-0\<nin\>\<alpha\>>
    contradicting <math|0\<in\>\<alpha\>>. So we have\ 

    <\equation*>
      \<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->=\<varnothing\>
    </equation*>
  </proof>

  Defining multiplication in <math|\<bbb-R\>> is difficult. we first define
  multiplication for <math|\<bbb-R\><rsup|+>> and extend it later to
  <math|\<bbb-R\>>.

  <\definition>
    Given <math|\<alpha\>,b\<in\>\<bbb-R\><rsup|+>> we define
    <math|A=\<alpha\>\<odot\>\<beta\>> by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<odot\>\<beta\>>|<cell|=>|<cell|\<bbb-Q\><rsup|-><rsub|0><big|cup><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}><big|cup><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>>>>>
    </eqnarray*>
  </definition>

  <\theorem>
    <label|real product is internal><math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>>
    we have that <math|\<alpha\>\<odot\>\<beta\>\<in\>\<bbb-R\><rsup|+>>
  </theorem>

  <\proof>
    First we prove that <math|\<alpha\>\<odot\>\<beta\>> is a Dedekind cut.\ 

    <\enumerate>
      <item>As <math|0\<in\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}>>
      it follows that\ 

      <\equation*>
        \<alpha\>\<odot\>\<beta\>\<neq\>\<varnothing\>
      </equation*>

      <item>As <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>> it follows
      that <math|0\<in\>\<alpha\>\<wedge\>0\<in\>\<beta\>> and as
      <math|\<alpha\>,\<beta\>> do not have a greatest element we have\ 

      <\equation>
        <label|eq 9.17.030>\<exists\>s<rsub|1>\<in\>\<alpha\>,\<exists\>s<rsub|2>\<in\>\<beta\><text|
        such that >0\<less\>s<rsub|1>\<wedge\>0\<less\>t<rsub|1>
      </equation>

      As <math|0\<less\>1> we have by [theorem: <reference|real lemma for sum
      operator>] that\ 

      <\equation>
        <label|eq 9.18.030>\<exists\>s<rsub|2>\<in\>\<alpha\>,\<exists\>t<rsub|2>\<in\>\<beta\><text|
        such that >s<rsub|2>+1\<in\>\<bbb-Q\>\\\<alpha\>\<wedge\>t<rsub|2>+1\<in\>\<bbb-Q\>\\\<beta\>
      </equation>

      Take now\ 

      <\equation>
        <label|eq 9.19.030>s=max<around*|(|<around*|{|s<rsub|1>,s<rsub|2>|}>|)><text|
        and >t=max<around*|(|<around*|{|t<rsub|1>,t<rsub|2>|}>|)>
      </equation>

      If <math|s\<nin\>\<alpha\>> then <math|s\<in\>\<bbb-Q\>\\\<alpha\>> so
      that by [definition: <reference|real Dedekind's cut> (3)] and [eq:
      <reference|eq 9.17.030>] we have <math|s1\<less\>s> and
      <math|s<rsub|2>\<less\>s> contradicting the fact that
      <math|s\<in\><around*|{|s<rsub|1>,s<rsub|2>|}>>, so we must have that
      <math|s\<in\>\<alpha\>>. Likewise if <math|t\<nin\>\<beta\>> then
      <math|t\<in\>\<bbb-Q\>\\\<beta\>> so that by [definition:
      <reference|real Dedekind's cut> (3)] \ and [eq: <reference|eq
      9.17.030>]<space|1em>we have <math|t1\<less\>t> and
      <math|t<rsub|2>\<less\>t> contradicting the fact that
      <math|t\<in\><around*|{|t<rsub|1>,t<rsub|2>|}>>, so we must have that
      <math|s\<in\>\<beta\>>. So we have\ 

      <\equation>
        <label|eq 9.20.030>s\<in\>\<alpha\>\<wedge\>t\<in\>\<beta\><text| and
        by [eqs: <reference|eq 9.17.030>,<reference|eq 9.19.030>] that
        >0\<less\>s\<wedge\>\<less\>t
      </equation>

      If <math|s+1\<in\>\<alpha\>> then by [definition: <reference|real
      Dedekind's cut> (3)] and [eq: <reference|eq 9.18.030>] we have
      <math|s+1\<less\>s<rsub|2>+1\<Rightarrow\>s\<less\>s<rsub|2>>
      contradicting <math|s=max<around*|(|s<rsub|1>,s<rsub|2>|)>>. Likewise
      if <math|t+1\<in\>\<beta\>> then by [definition: <reference|real
      Dedekind's cut> (3)] and [eq: <reference|eq 9.18.030>] we have
      <math|t+1\<less\>t<rsub|2>+t\<Rightarrow\>t\<less\>t<rsub|2>>
      contradicting <math|t=max<around*|(|t<rsub|1>,t<rsub|2>|)>>. So we must
      have

      <\equation>
        <label|eq 9.21.030>s+1\<in\>\<bbb-Q\>\\\<alpha\><text| and
        >t+1\<in\>\<bbb-Q\>\\\<alpha\>
      </equation>

      Assume now that <math|s\<cdot\>t+s+t+1\<in\>\<alpha\>\<odot\>\<beta\>>.
      As <math|0\<less\>s\<wedge\>0\<less\>t> we have that
      <math|0\<less\>s\<cdot\>t> giving <math|0\<less\>s\<cdot\>t+s+t+1> so
      that <math|s\<cdot\>t+s+t+1\<nin\><around*|{|q\<in\>\<bbb-Q\>\|q\<leqslant\>0|}>>
      so we must have that

      <\equation*>
        s\<cdot\>t+s+t+1\<in\><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>
      </equation*>

      hence there exists <math|s<rprime|'>\<in\>\<alpha\>> and
      <math|t<rprime|'>\<in\>\<beta\>> with
      <math|0\<less\>s<rprime|'>\<wedge\>0\<less\>t<rprime|'>> such that
      <math|s\<cdot\>t+s+t+1=s<rprime|'>\<cdot\>t<rprime|'>>. Using
      \ [definition: <reference|real Dedekind's cut> (3)] and [eq:
      <reference|eq 9.21.030>] we have that <math|s<rprime|'>\<less\>s+1> and
      <math|t<rprime|'>\<less\>t+1> so <math|s<rprime|'>\<cdot\>t<rprime|'>\<less\><around*|(|s+1|)>\<cdot\>t<rprime|'>>
      and <math|t<rprime|'>\<cdot\><around*|(|s+1|)>\<less\><around*|(|t+1|)>\<cdot\><around*|(|s+1|)>>
      , hence <math|s<rprime|'>\<cdot\>t<rprime|'>\<less\><around*|(|s+1|)>\<cdot\><around*|(|t+1|)>=s\<cdot\>t+s+t+1=s<rprime|'>\<cdot\>t<rprime|'>>
      giving the contradiction <math|s<rprime|'>\<cdot\>t<rprime|'>\<less\>s<rprime|'>\<cdot\>t<rprime|'>>.
      Hence the assumption is false so that
      <math|s\<cdot\>t+s+t+1\<nin\>\<alpha\>\<odot\>\<beta\>> proving that\ 

      <\equation*>
        \<alpha\>\<odot\>\<beta\>\<neq\>\<bbb-Q\>
      </equation*>

      <item>Let <math|q\<in\>\<alpha\>\<odot\>\<beta\>> and
      <math|r\<in\>\<bbb-Q\>\\\<alpha\>\<odot\>\<beta\>> then for <math|q> we
      have either:

      <\description>
        <item*|<math|q\<in\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}>>>Then
        <math|q\<leqslant\>0> furher as <math|r\<in\>\<bbb-Q\>\\\<alpha\>\<odot\>\<beta\>>
        we have that <math|r\<nin\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}>>
        so that <math|0\<less\>r> from which it follows that
        <math|q\<less\>r>.

        <item*|<math|q\<nin\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}>>>Then
        <math|q\<in\><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>>
        so that\ 

        <\equation>
          <label|eq 9.22.030>\<exists\>s<rprime|'>\<in\>\<alpha\>,\<exists\>t<rprime|'>\<in\>\<beta\><text|
          with >0\<less\>s<rprime|'>\<wedge\>0\<less\>t<rprime|'><text| such
          that >q=s<rprime|'>\<cdot\>t<rprime|'>
        </equation>

        Assume now that <math|r\<leqslant\>q>. As
        <math|r\<in\>\<bbb-Q\>\\\<alpha\>\<odot\>\<beta\>> we have that
        <math|r\<neq\>q> [as <math|q\<in\>\<alpha\>\<odot\>\<beta\>> and
        <math|r\<nin\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}>> so that
        <math|0\<less\>r>. Hence we have 0\<less\><math|r\<less\>q> or
        multiplying by <math|r<rsup|-1>> [which exists and
        <math|0\<less\>r<rsup|-1>> by [theorems: <reference|rational ordered
        field>, <reference|field order properties>] we have
        <math|1=r\<cdot\>r<rsup|-1>\<less\>q\<cdot\>r<rsup|-1>> or if we
        define <math|t=q\<cdot\>r<rsup|-1>>, it follows that

        <\equation>
          <label|eq 9.23.030>1\<less\>t<text| and >t\<cdot\>r=q
        </equation>

        Using the above, we have by [theorems: <reference|rational ordered
        field>, <reference|field order properties>] that
        <math|0\<less\>t<rsup|-1>\<less\>1> so that by multiplying by
        <math|s<rprime|'>> we have, as <math|0\<less\>s<rprime|'>>, that

        <\equation>
          <label|eq 9.24.030>t<rsup|-1>\<cdot\>s<rprime|'>\<less\>s<rprime|'>
        </equation>

        If now <math|t<rsup|-1>\<cdot\>s<rprime|'>\<nin\>\<alpha\>> then
        <math|t<rsup|-1>\<cdot\>s<rprime|'>\<in\>\<bbb-Q\>\\\<alpha\>> which,
        as <math|s<rprime|'>\<in\>\<alpha\>>, means by [definition:
        <reference|real Dedekind's cut> (3)] that
        <math|s<rprime|'>\<less\>t<rsup|-1>\<cdot\>s<rprime|'>> contradicting
        [eq: <reference|eq 9.24.030>]. Hence we must have that\ 

        <\equation>
          <label|eq 9.25.030>t<rsup|-1>\<cdot\>s<rprime|'>\<in\>\<alpha\>
        </equation>

        As by [eq: <reference|eq 9.22.030>] <math|t<rprime|'>\<in\>\<beta\>>
        we using the above that <math|<around*|(|t<rsup|-1>\<cdot\>s<rprime|'>|)>\<cdot\>t<rprime|'>\<in\><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>>
        so that\ 

        <\equation>
          <label|eq 9.26.030><around*|(|t<rsup|-1>\<cdot\>s<rprime|'>|)>\<cdot\>t<rprime|'>\<in\>\<alpha\>\<odot\>\<beta\>
        </equation>

        Now\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|t<rsup|-1>\<cdot\>s<rprime|'>|)>\<cdot\>t<rprime|'>>|<cell|=>|<cell|t<rsup|-1>\<cdot\><around*|(|s<rprime|'>\<cdot\>t<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 9.22.030>]>>>|<cell|t<rsup|-1>\<cdot\>q>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 9.23.030>]>>>|<cell|t<rsup|-1>\<cdot\><around*|(|t\<cdot\>r|)>>>|<row|<cell|>|<cell|=>|<cell|r>>>>
        </eqnarray*>

        which combined with [eq: <reference|eq 9.25.030>] proves that
        <math|r\<in\>\<alpha\>\<oplus\>\<beta\>> contradicting the fact
        <math|r\<in\>\<bbb-Q\>\\\<alpha\>\<odot\>\<beta\>>, hence the
        assumption is wrong and we must have\ 

        <\equation*>
          q\<less\>r
        </equation*>
      </description>

      <item>Assume now that <math|\<alpha\>\<odot\>\<beta\>> has a greatest
      element <math|m> then we have\ 

      <\equation>
        <label|eq 9.27.030>m\<in\>\<alpha\>\<odot\>\<beta\><text| and
        >\<forall\>r\<in\>\<alpha\>\<odot\>\<beta\><text| we have
        >r\<leqslant\>m
      </equation>

      As <math|m\<in\>\<alpha\>\<odot\>\<beta\>> we have the following cases
      to consider:

      <\description>
        <item*|<math|m\<in\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}>>>Then
        <math|m\<leqslant\>0>. As <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>>
        we have that <math|0\<in\>\<alpha\>> and <math|0\<in\>\<beta\>>
        which, as <math|\<alpha\>,\<beta\>> have no greatest element, that
        there exists <math|s\<in\>\<alpha\>> and <math|t\<in\>\<beta\>> such
        that <math|0\<less\>s> and <math|0\<less\>t>, hence
        <math|s\<cdot\>t\<in\><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>>
        proving that

        <\equation*>
          s\<cdot\>t\<in\>\<alpha\>\<odot\>\<beta\><text| and thus
          >s\<cdot\>t\<leqslant\>m
        </equation*>

        As <math|0\<less\>s\<wedge\>0\<less\>t> we have that
        <math|0\<less\>s\<cdot\>t> so, as <math|m\<leqslant\>0>, we have
        <math|m\<less\>s\<cdot\>t> contradicting the above.

        <item*|<math|m\<nin\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}>>>Then
        <math|0\<less\>m> and <math|m\<in\><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>>
        hence there exists <math|s\<in\>\<alpha\>> and <math|t\<in\>\<beta\>>
        with <math|0\<less\>s> and <math|0\<less\>t> such that

        <\equation>
          <label|eq 9.28.030>m=s\<cdot\>t
        </equation>

        As <math|\<alpha\>,\<beta\>> has no greatest element there exists
        <math|s<rprime|'>\<in\>\<alpha\>> and
        <math|t<rprime|'>\<in\>\<beta\>> such that
        <math|0\<less\>s\<less\>s<rprime|'>> and
        <math|0\<less\>t\<less\>t<rprime|'>>. As
        <math|0\<less\>s\<wedge\>0\<less\>t> we have
        <math|s\<cdot\>t\<less\>s<rprime|'>\<cdot\>t> and
        <math|t\<cdot\>s<rprime|'>\<less\>s<rprime|'>\<cdot\>t<rprime|'>> so
        that <math|s\<cdot\>t\<less\>s<rprime|'>\<cdot\>t<rprime|'>> or using
        [eq: <reference|eq 9.28.030>]\ 

        <\equation>
          <label|eq 9.29.030>m\<less\>s<rprime|'>\<cdot\>t<rprime|'>
        </equation>

        Further as <math|s\<cdot\>t\<in\><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>>
        we have that <math|s<rprime|'>\<cdot\>t<rprime|'>\<in\>\<alpha\>\<odot\>\<beta\>>
        so that by [eq: <reference|eq 9.27.030>]
        <math|s<rprime|'>\<cdot\>t<rprime|'>\<leqslant\>m> contradicting [eq:
        <reference|eq 9.29.030>]. \ 
      </description>

      As in all cases we have a contradiction the assumption must be wrong,
      so <math|\<alpha\>\<odot\>\<beta\>> has no greatest element.
    </enumerate>

    By (1),(2),(3) and (4) we have that <math|\<alpha\>\<odot\>\<beta\>> is a
    Dedekind cut, hence

    <\equation*>
      \<alpha\>\<odot\>\<beta\>\<in\>\<bbb-R\>
    </equation*>

    Finally as <math|0\<in\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}>>
    we have <math|0\<in\>\<alpha\>\<odot\>\<beta\>> proving that\ 

    <\equation*>
      \<alpha\>\<odot\>\<beta\>\<in\>\<bbb-R\><rsup|+>
    </equation*>
  </proof>

  After we have defined multiplication in <math|\<bbb-R\><rsup|+>> we want to
  specify the neutral element for <math|\<odot\>>

  <\theorem>
    <label|real 1.a=a for positive numbers><math|\<forall\>\<alpha\>\<in\>\<bbb-R\><rsup|+>>
    we have <math|\<alpha\><rsub|1>\<odot\>\<alpha\>=\<alpha\>>
  </theorem>

  <\proof>
    Let <math|x\<in\>\<alpha\><rsub|1>\<odot\>\<alpha\>> then we have either:

    <\description>
      <item*|<math|x\<leqslant\>0>>As <math|\<alpha\>\<in\>\<bbb-R\><rsup|<rsub|>+>>
      we have that <math|0\<in\>\<alpha\>> and as <math|x\<leqslant\>0> it
      follows from [theorem: <reference|real property to determine membership
      of a cut>] that <math|x\<in\>\<alpha\>>.

      <item*|<math|0\<less\>x>>Then <math|x\<nin\>\<bbb-Q\><rsup|-><rsub|0>>
      so there exists a <math|s\<in\>\<alpha\><rsub|1>> and a
      <math|t\<in\>\<alpha\>> with <math|0\<less\>s\<wedge\>0\<less\>t> such
      that <math|x=s\<cdot\>t>. From <math|s\<in\>\<alpha\><rsub|1>> it
      follows that <math|s\<less\>1> so, as <math|0\<less\>t> we have that
      <math|x=s\<cdot\>t\<less\>t\<Rightarrow\>x\<less\>t>. As
      <math|t\<in\>\<alpha\>> it follows from [theorem: <reference|real
      property to determine membership of a cut>] that
      <math|x\<in\>\<alpha\>>.
    </description>

    As in all cases <math|x\<in\>\<alpha\>> it follows that\ 

    <\equation>
      <label|eq 9.27.034>\<alpha\><rsub|1>\<odot\>\<alpha\>\<subseteq\>\<alpha\>
    </equation>

    If <math|x\<in\>\<alpha\>> then we have either:

    <\description>
      <item*|<math|x\<leqslant\>0>>Then <math|x\<in\>\<bbb-Q\><rsup|-><rsub|0>>
      so that <math|x\<in\>\<alpha\><rsub|1>\<odot\>\<alpha\>>

      <item*|<math|0\<less\>x>>As <math|\<alpha\>> has no greatest element
      [see definition: <reference|real Dedekind's cut> (4)] there exist a
      <math|t\<in\>\<alpha\>> such that <math|0\<less\>x\<less\>t>. Then as
      by [theorems: <reference|rational ordered field>, <reference|field
      order properties>] <math|0\<less\>t<rsup|-1>> we have that
      <math|0\<less\>x\<cdot\>t<rsup|-1>\<less\>t\<cdot\>t<rsup|-1>=1> so
      that <math|x\<cdot\>t<rsup|-1>\<in\>\<alpha\><rsub|1>>. Now
      <math|0\<less\>t>, <math|0\<less\>x\<cdot\>t<rsup|-1>> so that
      <math|x=<around*|(|x\<cdot\>t<rsup|-1>|)>\<cdot\>t\<in\>a<rsub|1>\<odot\>\<alpha\>>.
      Hence <math|\<alpha\>\<subseteq\>\<alpha\><rsub|1>\<odot\>\<alpha\>>
      <math|>which combined with [eq: <reference|eq 9.27.034>] results in\ 

      <\equation*>
        \<alpha\><rsub|1>\<circ\>\<alpha\>=\<alpha\>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|real a.b=b.a positive numbers><math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>>
    we have <math|\<alpha\>\<odot\>\<beta\>=\<beta\>\<odot\>\<alpha\>>
  </theorem>

  <\proof>
    Then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|q\<in\>\<alpha\>\<odot\>\<beta\>>|<cell|\<Leftrightarrow\>>|<cell|q\<in\><around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}><big|cup><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\>\<wedge\>0\<less\>s\<wedge\>0\<less\>t|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|q\<leqslant\>0\<vee\>\<exists\><around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\><text|
      with >0\<less\>s\<wedge\>0\<less\>t<text| such that
      <math|q=s\<cdot\>t>>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
      <reference|rational field>>>>|<cell|q\<leqslant\>0\<vee\>\<exists\><around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\><text|
      with >0\<less\>s\<wedge\>0\<less\>t<text| such that
      <math|q=t\<cdot\>s>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|q\<leqslant\>0\<vee\>\<exists\><around*|(|t,s|)>\<in\>\<beta\>\<times\>\<alpha\><text|
      with >0\<less\>t\<wedge\>0\<less\>s<text| such that
      <math|q=s\<cdot\>t>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|q\<in\>\<beta\>\<odot\>\<alpha\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<alpha\>\<circ\>\<beta\>=\<beta\>\<odot\>\<alpha\>
    </equation*>
  </proof>

  <\theorem>
    <label|real associativity positive numbers>Let
    <math|\<alpha\>,\<beta\>,\<gamma\>\<in\>\<bbb-R\><rsup|+>> then we have
    that <math|\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>\<gamma\>|)>=<around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>>
  </theorem>

  <\proof>
    Using the definition of <math|\<odot\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<odot\>\<beta\>>|<cell|=>|<cell|\<bbb-Q\><rsup|-><rsub|0><big|cup><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\>\<beta\><text|
      with >0\<less\>s\<wedge\>0\<less\>t|}><eq-number><label|eq
      9.30.031>>>|<row|<cell|\<beta\>\<odot\>\<gamma\>>|<cell|=>|<cell|\<bbb-Q\><rsup|-><rsub|0><big|cup><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<beta\>\<times\>\<gamma\><text|
      with >0\<less\>s\<wedge\>0\<less\>t|}><eq-number><label|eq
      9.31.031>>>|<row|<cell|\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>\<gamma\>|)>>|<cell|=>|<cell|\<bbb-Q\><rsup|-><rsub|0><big|cup><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\>\<alpha\>\<times\><around*|(|\<beta\>\<odot\>\<gamma\>|)><text|
      with >0\<less\>s\<wedge\>0\<less\>t|}><eq-number><label|eq
      9.32.031>>>|<row|<cell|<around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>>|<cell|=>|<cell|\<bbb-Q\><rsup|-><rsub|0><big|cup><around*|{|s\<cdot\>t\|<around*|(|s,t|)>\<in\><around*|(|\<alpha\>\<odot\>\<beta\>|)>\<times\>\<gamma\><text|
      with >0\<less\>s\<wedge\>0\<less\>t|}><eq-number><label|eq
      9.33.031>>>>>
    </eqnarray*>

    Let <math|x\<in\>\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>
    then we have either

    <\description>
      <item*|<math|x\<leqslant\>0>>Then we have
      <math|x\<in\>\<bbb-Q\><rsup|-><rsub|0>> proving by [eq: <reference|eq
      9.33.031>] that <math|x\<in\><around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>>

      <item*|<math|0\<less\>x>>Then by [eq: <reference|eq 9.32.031>] there
      exista <math|q\<in\>\<alpha\>> and <math|r\<in\>\<beta\>\<odot\>\<gamma\>>
      with <math|0\<less\>q\<wedge\>0\<less\>r> such that\ 

      <\equation>
        <label|eq 9.34.031>x=q\<cdot\>r
      </equation>

      As <math|0\<less\>r> and <math|r\<in\>\<beta\>\<odot\>\<gamma\>> it
      follows from [eq: <reference|eq 9.31.031>] that there exists a
      <math|s\<in\>\<beta\>> and <math|t\<in\>\<gamma\>> such that
      <math|r=s\<cdot\>t> hence \ <math|x=q\<cdot\>r=q\<cdot\><around*|(|s\<cdot\>t|)>\<equallim\><rsub|<text|[theorem:
      <reference|rational field>]>><around*|(|q\<cdot\>s|)>\<cdot\>t> proving
      that\ 

      <\equation>
        <label|eq 9.35.031>x=<around*|(|q\<cdot\>s|)>\<cdot\>t
      </equation>

      As <math|q\<in\>\<alpha\>\<wedge\>s\<in\>\<beta\>\<wedge\>0\<less\>\<alpha\>\<wedge\>0\<less\>\<beta\>>
      we have by [eq: <reference|eq 9.30.031>] that
      <math|q\<cdot\>s\<in\>\<alpha\>\<odot\>\<beta\>>. Further as
      <math|0\<less\>q\<wedge\>0\<less\>s> we have <math|0\<less\>q\<cdot\>s>
      which together with \ <math|t\<in\>\<gamma\>\<wedge\>0\<less\>\<gamma\>>
      proves that <math|<around*|(|q\<cdot\>s|)>\<cdot\>t\<in\><around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>>
      or using [eq: <reference|eq 9.35.031>] that\ 

      <\equation*>
        x\<in\><around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>
      </equation*>
    </description>

    So we have proved that\ 

    <\equation>
      <label|eq 9.36.031>\<alpha\>\<odot\>*<around*|(|\<beta\>\<odot\>\<gamma\>|)>\<subseteq\><around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>
    </equation>

    Let <math|x\<in\><around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>>
    then we have either:

    <\description>
      <item*|<math|x\<leqslant\>0>>Then we have
      <math|x\<in\>\<bbb-Q\><rsup|-><rsub|0>> proving by [eq: <reference|eq
      9.33.031>] that <math|x\<in\><around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>>.

      <item*|<math|0\<less\>x>>Then by [eq: <reference|eq 9.33.031>] we have
      that there exists a <math|q\<in\>\<alpha\>\<odot\>\<beta\>> and a
      <math|r\<in\>\<gamma\>> with <math|0\<less\>q\<wedge\>0\<less\>r> such
      that\ 

      <\equation>
        <label|eq 9.37.031>x=q\<cdot\>r
      </equation>

      As <math|0\<less\>q> and <math|q\<in\>\<alpha\>\<odot\>\<beta\>> it
      follows from [eq: <reference|eq 9.30.031>] that there exists a
      <math|s\<in\>\<alpha\>> and <math|t\<in\>\<beta\>> with
      <math|0\<less\>s\<wedge\>0\<less\>t> such that <math|q=s\<cdot\>t>.
      Hence <math|x=q\<cdot\>r=<around*|(|s\<cdot\>t|)>\<cdot\>r=s\<cdot\><around*|(|t\<cdot\>r|)>>
      giving\ 

      <\equation>
        <label|eq 9.38.031>x=s\<cdot\><around*|(|t\<cdot\>r|)>
      </equation>

      As <math|t\<in\>\<beta\>\<wedge\>r\<in\>\<gamma\>\<wedge\><rsup|>0\<less\>\<beta\>\<wedge\>0\<less\>\<gamma\>>
      we have by [eq: <reference|eq 9.31.031>] that
      <math|t\<cdot\>r\<in\>\<beta\>\<odot\>\<gamma\>>. Further as
      <math|0\<less\>t\<wedge\>0\<less\>r> we have <math|0\<less\>t\<cdot\>r>
      which together with <math|s\<in\>\<alpha\>\<wedge\>0\<less\>s> proves
      that <math|s\<cdot\><around*|(|t\<cdot\>r|)>\<in\>\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>\<gamma\>|)>>
      or using [eq: <reference|eq 9.38.031>] we have that

      <\equation*>
        x\<in\>\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>\<gamma\>|)>
      </equation*>
    </description>

    So we have proved that <math|<around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>\<subseteq\>\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>\<gamma\>|)>>
    which combined with [eq: <reference|eq 9.36.031>] gives\ 

    <\equation*>
      <around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>-\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>\<gamma\>|)>
    </equation*>
  </proof>

  <\theorem>
    <label|real distributivity><math|\<forall\>\<alpha\>,\<beta\>,\<gamma\>\<in\>\<bbb-R\><rsup|+>>
    we have that <math|\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>=\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>>
  </theorem>

  <\proof>
    Let <math|x\<in\>\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>> then
    we have either:

    <\description>
      <item*|<math|x\<leqslant\>0>>Then <math|0,x\<in\>\<bbb-Q\><rsup|-><rsub|0>>
      so that <math|x\<in\>\<alpha\>\<odot\>\<beta\>> and
      <math|0\<in\>\<alpha\>\<odot\>\<gamma\>> hence
      <math|x=x+0\<in\>\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>>.\ 

      <item*|<math|0\<less\>x>>Then <math|x=s\<cdot\>t> where
      <math|s\<in\>\<alpha\>\<wedge\>0\<less\>s> and
      <math|t\<in\>\<beta\>+\<gamma\>\<wedge\>0\<less\>t>. As
      <math|t\<in\>\<beta\>+\<gamma\>> there exists <math|u\<in\>\<beta\>>
      and <math|v\<in\>\<gamma\>> such that <math|t=u+v>. Using [theorem:
      <reference|rational field>] we have that

      <\equation>
        <label|eq 9.37.035>x=s\<cdot\>t=s\<cdot\><around*|(|u+v|)>=s\<cdot\>u+s\<cdot\>v
      </equation>

      We have now the following possibilities for <math|u> and <math|v>:

      <\description>
        <item*|<math|u\<leqslant\>0\<wedge\>v\<leqslant\>0>>Then
        <math|t=u+v\<leqslant\>0> giving the contradiction
        <math|0\<less\>t\<leqslant\>0> so this case will not occur.

        <item*|<math|u\<leqslant\>0\<wedge\>0\<less\>v>>Then as
        <math|0\<less\>s> we have <math|s\<cdot\>u\<leqslant\>0\<Rightarrow\>s\<cdot\>u\<in\>\<bbb-Q\><rsup|-><rsub|0>\<Rightarrow\>s\<cdot\>u\<in\>\<alpha\>\<odot\>\<beta\>>,
        further as <math|0\<less\>s\<wedge\>0\<less\>v> we have that
        <math|s\<cdot\>u\<in\>\<alpha\>\<odot\>\<gamma\>>. Hence
        <math|x\<equallim\><rsub|<text|[eq: <reference|eq
        9.37.035>]>>s\<cdot\>u+s\<cdot\>v\<in\>\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>>.\ 

        <item*|<math|0\<less\>u\<wedge\>v\<leqslant\>0>>Then as
        <math|0\<less\>s\<wedge\>0\<less\>u> we have that
        <math|s\<cdot\>u\<in\>\<alpha\>\<odot\>\<beta\>>, further
        <math|s\<cdot\>v\<leqslant\>0\<Rightarrow\>s\<cdot\>v\<in\>\<bbb-Q\><rsup|-><rsub|0>\<Rightarrow\>s\<cdot\>v\<in\>\<alpha\>\<odot\>\<gamma\>>.
        Hence <math|x\<equallim\><rsub|<text|[eq: <reference|eq
        9.37.035>]>>s\<cdot\>u+s\<cdot\>v\<in\>\<alpha\>\<odot\>\<beta\>+s\<odot\>\<gamma\>>

        <item*|<math|0\<less\>u\<wedge\>0\<less\>v>>Then as
        <math|0\<less\>s\<wedge\>0\<less\>u\<wedge\>0\<less\>v> we have that
        <math|s\<cdot\>u\<in\>\<alpha\>\<circ\>\<beta\>> and
        <math|s\<cdot\>v\<in\>\<alpha\>\<odot\>\<gamma\>>. Hence
        <math|x\<equallim\><rsub|<text|[eq: <reference|eq
        9.37.035>]>>s\<cdot\>u+s\<cdot\>v\<in\>\<alpha\>\<odot\>\<beta\>+s\<odot\>\<gamma\>>.
      </description>
    </description>

    So in call cases we have that <math|x\<in\>\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>>
    proving that\ 

    <\equation>
      <label|eq 9.38.035>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>\<subseteq\>\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>
    </equation>

    For the opposite inclusion let <math|x\<in\>\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>>.
    Then\ 

    <\equation>
      <label|eq 9.39.035>x=r+t<text| where
      >r\<in\>\<alpha\>\<odot\>\<beta\><text| and
      >t\<in\>\<alpha\>\<odot\>\<gamma\>
    </equation>

    We must now consider the following cases for <math|x>:\ 

    <\description>
      <item*|<math|x\<leqslant\>0>>Then <math|x\<in\>\<bbb-Q\><rsup|-><rsub|0>>
      so that <math|x\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>>

      <item*|<math|0\<less\>x>>Then we have to look at the following sub
      cases:\ 

      <\description>
        <item*|<math|r\<leqslant\>0\<wedge\>t\<leqslant\>0>>Then
        <math|x\<equallim\><rsub|<text|[eq: <reference|eq
        9.39.035>]>>r+t\<leqslant\>0> a contradicting <math|0\<less\>x>, so
        this case does not occur.

        <item*|<math|r\<leqslant\>0\<wedge\>0\<less\>t>>Then as
        <math|t\<nin\>\<bbb-Q\><rsup|+><rsub|0>> there exists
        <math|u\<in\>\<alpha\>> and <math|v\<in\>\<gamma\>> with
        <math|0\<less\>u\<wedge\>0\<less\>v> such that
        <math|t=u\<cdot\>v=u\<cdot\><around*|(|0+v|)>\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>>.
        Since <math|r\<leqslant\>0> we have
        <math|x\<equallim\><rsub|<text|[eq: <reference|eq
        9.39.035>]>>r+t\<leqslant\>0+t=t>, which, as
        <math|t\<in\>\<alpha\>\<odot\><around*|(|\<alpha\>+\<beta\>|)>>,
        proves by [theorem: <reference|real property to determine membership
        of a cut>] that\ 

        <\equation*>
          x\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
        </equation*>

        <item*|<math|0\<less\>r\<wedge\>t\<leqslant\>0>>Then as
        <math|r\<nin\>\<bbb-Q\><rsup|-><rsub|0>> there exists
        <math|u\<in\>\<alpha\>> and <math|v\<in\>\<beta\>> with
        <math|0\<less\>u\<wedge\>0\<less\>\<gamma\>> such that
        <math|r=u\<cdot\>v=u\<cdot\><around*|(|0+v|)>\<in\>\<alpha\>\<odot\>*<around*|(|\<beta\>+\<gamma\>|)>>.
        Since <math|t\<leqslant\>0> we have
        <math|x\<equallim\><rsub|<text|[eq: <reference|eq
        9.39.035>]>>r+t\<leqslant\>r+0=r>, which, as
        <math|r\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>>,
        proves by [theorem: <reference|real property to determine membership
        of a cut>] that

        <\equation*>
          x\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
        </equation*>

        <item*|<math|0\<less\>r\<wedge\>0\<less\>t>>Then as
        <math|r,t\<nin\>\<bbb-Q\><rsup|-><rsub|0>> there exists
        <math|u,u<rprime|'>\<in\>\<alpha\>>, <math|v\<in\>\<beta\>> and
        <math|v<rprime|'>\<in\>\<gamma\>> such that\ 

        <\equation>
          <label|eq 9.40.035>r=u\<cdot\>v\<wedge\>t=u<rprime|'>\<cdot\>v<rprime|'>\<wedge\>0\<less\>u\<wedge\>0\<less\>v\<wedge\>0\<less\>u<rprime|'>\<wedge\>0\<less\>v<rprime|'>
        </equation>

        For <math|u,u<rprime|'>> we must now examine the following
        possibilities:

        <\description>
          <item*|<math|u=u<rprime|'>>>Then

          <\equation>
            <label|eq 9.41.035>x\<equallim\><rsub|<text|[eqs: <reference|eq
            9.39.035>, <reference|eq 9.40.035>]>>u\<cdot\>v+u<rprime|'>\<cdot\>v<rprime|'>=u\<cdot\>v+u\<cdot\>v=u\<cdot\><around*|(|v+v<rprime|'>|)>
          </equation>

          so as <math|0\<less\>u\<wedge\>0\<less\>v+v<rprime|'>> we have that
          <math|u\<cdot\><around*|(|v+v<rprime|'>|)>\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>>
          hence\ 

          <\equation*>
            x\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
          </equation*>

          <item*|<math|u\<less\>u<rprime|'>>>Then as
          <math|0\<less\>u<rprime|'>\<wedge\>0\<less\>v+v<rprime|'>\<wedge\>u<rprime|'>\<in\>\<alpha\>\<wedge\>v+v<rprime|'>\<in\>\<beta\>+\<gamma\>>
          we have

          <\equation*>
            u<rprime|'>\<cdot\><around*|(|v+v<rprime|'>|)>\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
          </equation*>

          Further from <math|u\<less\>u<rprime|'>>, <math|0\<less\>v> we have
          that <math|u\<cdot\>v\<less\>u<rprime|'>\<cdot\>v>, hence

          <\equation*>
            x\<equallim\><rsub|<text|[eq: <reference|eq
            9.39.035>,<reference|eq 9.40.035>]>>u\<cdot\>v+u<rprime|'>\<cdot\>v<rprime|'>\<less\>u<rprime|'>\<cdot\>v+u<rprime|'>\<cdot\>v<rprime|'>=u<rprime|'>\<cdot\><around*|(|v+v<rprime|'>|)>\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
          </equation*>

          which by \ [theorem: <reference|real property to determine
          membership of a cut>] proves that\ 

          <\equation*>
            x\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
          </equation*>

          <item*|<math|u<rprime|'>\<less\>u>>Then as
          <math|0\<less\>u\<wedge\>0\<less\>v+v<rprime|'>\<wedge\>u\<in\>a\<wedge\>v+v<rprime|'>\<in\>\<beta\>+\<gamma\>>
          we have\ 

          <\equation*>
            u\<cdot\><around*|(|v+v<rprime|'>|)>\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
          </equation*>

          Further from <math|u<rprime|'>\<less\>u>,
          <math|0\<less\>v<rprime|'>> it follows that
          <math|u<rprime|'>\<cdot\>v<rprime|'>\<less\>u\<cdot\>v<rprime|'>>,
          hence\ 

          <\equation*>
            x\<equallim\><rsub|<text|[eq: <reference|eq
            9.39.035>,<reference|eq 9.40.035>]>>u\<cdot\>v+u<rprime|'>\<cdot\>v<rprime|'>\<less\>u\<cdot\>v+u\<cdot\>v<rprime|'>=u\<cdot\><around*|(|v+v<rprime|'>|)>\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
          </equation*>

          which by \ [theorem: <reference|real property to determine
          membership of a cut>] proves that\ 

          <\equation*>
            x\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>
          </equation*>
        </description>
      </description>
    </description>

    So in call cases we have <math|x\<in\>\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>>
    proving that <math|\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>\<subseteq\>\<alpha\>\<odot\><around*|(|\<beta\>+g|)>>
    which combined with [eq: <reference|eq 9.38.035> gives\ 

    <\equation*>
      \<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>=\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>
    </equation*>
  </proof>

  <\theorem>
    <label|real inv>Let <math|\<alpha\>\<in\>\<bbb-R\><rsup|+>> then
    <math|inv<around*|(|\<alpha\>|)>> defined by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|inv<around*|(|\<alpha\>|)>>|<cell|=>|<cell|<around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}><big|cup><around*|{|s<rsup|-1>\|s\<in\>\<bbb-Q\>\\\<alpha\><text|
      with >0\<less\>s<text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s|}>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<bbb-Q\><rsup|-><rsub|0>=<around*|{|r\<in\>\<bbb-Q\>\|r\<leqslant\>0|}><rsup|>>>|<cell|\<bbb-Q\><rsup|-><rsub|0><big|cup><around*|{|s<rsup|-1>\|s\<in\>\<bbb-Q\>\\\<alpha\><text|
      with >0\<less\>s<text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s|}>>>>>
    </eqnarray*>

    is a Dedekind cut such that <math|inv<around*|(|\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>>.
  </theorem>

  <\proof>
    We have\ 

    <\enumerate>
      <item>As <math|0\<in\>\<bbb-Q\><rsup|-><rsub|0>> it follow that
      <math|0\<in\>inv<around*|(|\<alpha\>|)>> proving that\ 

      <\equation*>
        inv<around*|(|\<alpha\>|)>\<neq\>\<varnothing\>
      </equation*>

      <item>As <math|\<alpha\>\<in\>\<bbb-R\><rsup|+>> we have
      <math|0\<in\>\<alpha\>> and as <math|\<alpha\>> has no greatest element
      there exist a <math|s\<in\>\<alpha\>> such that <math|0\<less\>s>.
      Hence <math|s<rsup|-1>> exist and by [theorems: <reference|rational
      ordered field>, <reference|field order properties>]
      <math|0\<less\>s<rsup|-1>> so that <math|s<rsup|-1>\<nin\>\<bbb-Q\><rsup|-><rsub|0>>.
      Assume that <math|s<rsup|-1>\<in\>inv<around*|(|\<alpha\>|)>> then as
      <math|s<rsup|-1>\<nin\>\<bbb-Q\><rsup|-><rsub|0>> we must have that

      <\equation*>
        s<rsup|-1>\<in\><math|<around*|{|s<rsup|-1>\|s\<in\>\<bbb-Q\>\\\<alpha\><text|
        with >0\<less\>s<text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vDash\>t\<less\>s|}>>
      </equation*>

      so that <math|\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>> such that
      <math|s<rsup|-1>=t<rsup|-1>\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|field x^-1=y^-1=\<gtr\>x=y>]]>>s=t>. So
      <math|s\<in\>\<bbb-Q\>\\\<alpha\>> contradicting
      <math|s\<in\>\<alpha\>> hence <math|s<rsup|-1>\<in\>inv<around*|(|\<alpha\>|)>>
      proving that\ 

      <\equation*>
        inv<around*|(|\<alpha\>|)>\<neq\>\<bbb-Q\>
      </equation*>

      <item>Let <math|q\<in\>inv<around*|(|\<alpha\>|)>> and
      <math|r\<in\>\<bbb-Q\>\\inv<around*|(|\<alpha\>|)>>. For <math|q> we
      have the follTowing possibilities:

      <\description>
        <item*|<math|q\<leqslant\>0>>Then as
        <math|r\<in\>\<bbb-Q\>\\inv<around*|(|\<alpha\>|)>> we have
        <math|r\<nin\>inv<around*|(|\<alpha\>|)>> hence
        <math|r\<nin\>\<bbb-Q\><rsup|-><rsub|0>> so that <math|0\<less\>r>
        giving

        <\equation*>
          q\<less\>r
        </equation*>

        <item*|<math|0\<less\>q>>Then <math|q\<nin\>\<bbb-Q\><rsup|-><rsub|0>>
        hence, as <math|q\<in\>inv<around*|(|\<alpha\>|)>>, we have:

        <\equation*>
          q\<in\><around*|{|s<rsup|-1>\|s\<in\>\<bbb-Q\>\\\<alpha\><text|
          with >0\<less\>s<text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s|}>
        </equation*>

        so there exist a <math|s\<in\>\<bbb-Q\>\\\<alpha\>> with
        <math|0\<less\>s> and <math|\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s>
        \ such that <math|q=s<rsup|-1>>, as
        <math|q<rsup|-1>=<around*|(|s<rsup|-1>|)><rsup|-1>\<equallim\><rsub|<text|[theorem:
        <reference|field inverse of inverse>]>>s> we have that\ 

        <\equation>
          <label|eq 9.39.032>q<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\><text|,
          >0\<less\>q<rsup|-1><text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>q<rsup|-1>
        </equation>

        Further as <math|r\<in\>\<bbb-Q\>\\inv<around*|(|\<alpha\>|)>> we
        have that <math|r\<nin\>\<bbb-Q\><rsup|-><rsub|0>> giving
        <math|0\<less\>r> so that by [theorems: <reference|rational ordered
        field>, <reference|field order properties>]\ 

        <\equation>
          <label|eq 9.40.032>0\<less\>r<text| and >0\<less\>r<rsup|-1>
        </equation>

        For <math|r<rsup|-1>> we have the following possibilities:

        <\description>
          <item*|<math|r<rsup|-1>\<in\>\<alpha\>>>Then as
          <math|q<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\>> [see eq: <reference|eq
          9.39.032>] we have by [definition: <reference|real Dedekind's cut>
          (3)] that <math|r<rsup|-1>\<less\>q<rsup|-1>>, so as
          <math|0\<less\>r<rsup|-1>> we have by [theorems:
          <reference|rational ordered field>, <reference|field order
          properties>] that

          <\equation*>
            q\<less\>r
          </equation*>

          <item*|<math|r<rsup|-1>\<nin\>\<alpha\>>>Then
          <math|r<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\>> and we have to look at
          the following possibilities

          <\description>
            <item*|<math|\<forall\>t\<in\>\<bbb-Q\>\<vDash\>r<rsup|-1>\<leqslant\>t>>Then
            as <math|q<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\>> [see eq:
            <reference|eq 9.39.032>] we have that
            <math|r<rsup|-1>\<leqslant\>q<rsup|-1>>. If
            <math|r<rsup|-1>=q<rsup|-1>> we have by [eq: <reference|eq
            9.39.032>] a <math|t\<in\>\<bbb-Q\>\\\<alpha\>> such that
            <math|t\<less\>r<rsup|-1>> contradicting
            <math|\<forall\>t\<in\>\<bbb-Q\>\<vDash\>r<rsup|-1>\<leqslant\>t>,
            hence <math|r<rsup|-1>\<neq\>q<rsup|-1>>. So
            <math|0\<less\>r<rsup|-1>\<less\>q<rsup|-1>> and by \ [theorems:
            <reference|rational ordered field>, <reference|field order
            properties>]\ 

            <\equation*>
              q\<less\>r
            </equation*>

            <item*|<math|\<exists\>t\<in\>\<bbb-Q\>> such that
            <math|t\<less\>r<rsup|-1>>>Then as
            <math|r<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\>> and
            <math|0\<less\>r<rsup|-1>> we have that
            <math|r=<around*|(|r<rsup|-1>|)><rsup|-1>\<in\><around*|{|s<rsup|-1>\|s\<in\>\<bbb-Q\>\\\<alpha\><text|
            with >0\<less\>s<text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s|}>>
            so that <math|r\<in\>inv<around*|(|\<alpha\>|)>> contradicting
            <math|r\<in\>\<bbb-Q\>\\inv<around*|(|\<alpha\>|)>> so this case
            does not occur.
          </description>
        </description>
      </description>

      <item>Assume that <math|inv<around*|(|\<alpha\>|)>> has a greatest
      element <math|m> then we have\ 

      <\equation>
        <label|eq 9.41.032>m\<in\>inv<around*|(|\<alpha\>|)><text| and
        >\<forall\>s\<in\>inv<around*|(|\<alpha\>|)><text| we have
        >s\<leqslant\>m
      </equation>

      For <math|m> we have to look at the following possibilities:

      <\description>
        <item*|<math|m\<leqslant\>0>>Using [definition: <reference|real
        Dedekind's cut> (2)] <math|\<varnothing\>\<neq\>\<bbb-Q\>\\\<alpha\>>
        so there exist a <math|r\<in\>\<bbb-Q\>\\\<alpha\>>. As
        <math|\<alpha\>\<in\>\<bbb-R\><rsup|+>> we have that
        <math|0\<in\>\<alpha\>> so that by [definition: <reference|real
        Dedekind's cut> (3)] that\ 

        <\equation>
          <label|eq 9.42.032>0\<less\>r\<Rightarrowlim\><rsub|r\<less\>r+1>0\<less\>r+1<text|
          and by [theorems: <reference|rational ordered field>,
          <reference|field order properties>]
          <math|0\<less\><around*|(|r+1|)><rsup|-1>>>
        </equation>

        If <math|r+1\<in\>\<alpha\>> then as
        <math|r\<in\>\<bbb-Q\>\\\<alpha\>> we have by [definition:
        <reference|real Dedekind's cut> (3)] that <math|r+1\<less\>r> a
        contradiction, so we must have that <math|r+1\<nin\>\<alpha\>> or
        <math|r+1\<in\>\<bbb-Q\>\\\<alpha\>>. As further <math|r\<less\>r+1>
        and <math|0\<less\>r+1> it follows that
        <math|<around*|(|r+1|)><rsup|-1>\<in\><around*|{|s<rsup|-1>\|s\<in\>\<bbb-Q\>\\\<alpha\><text|
        with >0\<less\>s<text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s|}>>
        so that <math|<around*|(|r+1|)><rsup|-1>\<in\>inv<around*|(|\<alpha\>|)>>
        hence by [eq: <reference|eq 9.41.032>]
        <math|<around*|(|r+1|)><rsup|-1>\<leqslant\>m\<leqslant\>0>
        contradicting <math|0\<less\><around*|(|r+1|)><rsup|-1>> [see eq:
        <reference|eq 9.42.032>]. So we end in a contradiction.

        <item*|<math|0\<less\>m>>Then <math|m\<nin\>\<bbb-Q\><rsup|-><rsub|0>>
        so that, as <math|m\<in\>inv<around*|(|\<alpha\>|)>>, we have
        <math|m\<in\><around*|{|s<rsup|-1>\|s\<in\>\<bbb-Q\>\\\<alpha\><text|
        with >0\<less\>s<text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s|}>>
        so there exist a <math|s\<in\>\<bbb-Q\>\\\<alpha\>> with
        <math|0\<less\>s> and <math|\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s>
        such that <math|m=s<rsup|-1>>, hence <math|m<rsup|-1>=s> so that:\ 

        <\equation>
          <label|eq 9.43.032>m<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\><text|,
          >0\<less\>m<rsup|-1><text| and >\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\><text|
          such that >t\<less\>m<rsup|-1>
        </equation>

        As <math|t\<in\>\<bbb-Q\>\\\<alpha\>> we have that
        <math|t\<nin\>\<bbb-Q\><rsup|-><rsub|0>> so that <math|0\<less\>t>,
        further as <math|t\<less\>m<rsup|-1>> we have by the density of
        <math|\<bbb-Q\>> [see theorem: <reference|rational densitiy>] that
        there exist a <math|s\<in\>\<bbb-Q\>> such that
        <math|t\<less\>s\<less\>m<rsup|-1>>, hence

        <\equation>
          <label|eq 9.44.032>0\<less\>t\<less\>s\<less\>m<rsup|-1><text|
          which by [theorems: <reference|rational ordered field>,
          <reference|field order properties>] gives also >m\<less\>s<rsup|-1>
        </equation>

        If <math|s\<in\>\<alpha\>> then as <math|t\<in\>\<bbb-Q\>\\\<alpha\>>
        [see eq: <reference|eq 9.43.032>] we have by [definition:
        <reference|real Dedekind's cut> (3)] that <math|s\<less\>t>
        contradicting <math|t\<less\>s\<less\>m<rsup|-1>>, so we must have
        <math|s\<nin\>\<alpha\>>, hence <math|s\<in\>\<bbb-Q\>\\\<alpha\>>,
        so as <math|s\<nin\>a> we have <math|s\<nin\>\<bbb-Q\><rsup|-><rsub|0>>,
        so that <math|0\<less\>s>, which together with
        <math|t\<in\>\<bbb-Q\>\\\<alpha\>> and <math|t\<less\>s> proves that
        <math|s<rsup|-1>\<in\>inv<around*|(|\<alpha\>|)>>. Using [eq:
        <reference|eq 9.41.032>] it follows that
        <math|s<rsup|-1>\<leqslant\>m> which contradicts [eq: <reference|eq
        9.44.032>]. So this case ends also in a contradiction.
      </description>

      As all possible cases ends in a contradiction the assumption must be
      false resulting in

      <\equation*>
        inv<around*|(|\<alpha\>|)><text| has no greatest element>
      </equation*>
    </enumerate>

    (1),(2),(3),(4) proves that\ 

    <\equation*>
      inv<around*|(|\<alpha\>|)><text| is a Dedekind cut>
    </equation*>

    Further as <math|0\<in\>\<bbb-Q\><rsup|-><rsub|0>> we have that
    <math|0\<in\>inv<around*|(|\<alpha\>|)>> hence\ 

    <\equation*>
      inv<around*|(|\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>
    </equation*>
  </proof>

  We prove now that <math|inv<around*|(|\<alpha\>|)>> is the multiplicative
  inverse for <math|\<bbb-R\><rsup|+>>.

  <\theorem>
    <label|real inv(a) is inverse element>If
    <math|\<alpha\>\<in\>\<bbb-R\><rsup|+>> then
    <math|\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>=\<alpha\><rsub|1>>
  </theorem>

  <\proof>
    If <math|x\<in\>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>> then we have
    for <math|x> either:

    <\description>
      <item*|<math|x\<leqslant\>0>>Then as <math|0\<less\>1> we have
      <math|x\<less\>1> hence <math|x\<in\>\<alpha\><rsub|1>>

      <item*|<math|0\<less\>x>>Then <math|x\<nin\>\<bbb-Q\><rsup|-><rsub|0>>
      we have as <math|x\<in\>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>>
      that <math|\<exists\>s\<in\>\<alpha\>\<wedge\>\<exists\>t\<in\>inv<around*|(|\<alpha\>|)>>
      with <math|0\<less\>s> and <math|0\<less\>t> such that
      <math|x=s\<cdot\>t>. For <math|t> we have the following cases:

      <\description>
        <item*|<math|t\<leqslant\>0>>Then from <math|0\<less\>s> we have that
        <math|x=s\<cdot\>t\<leqslant\>0\<less\>1> hence
        <math|x\<in\>\<alpha\><rsub|1>>.

        <item*|<math|0\<less\>t>>Then <math|t\<nin\>\<bbb-Q\><rsup|-><rsub|0>>
        which as <math|t\<in\>inv<around*|(|\<alpha\>|)>> means that there
        exist a <math|s\<in\>\<bbb-Q\>\\\<alpha\>> such that
        <math|0\<less\>s> and <math|\<exists\>r\<in\>\<bbb-Q\>\\\<alpha\>\<vDash\>r\<less\>s>
        such that <math|t=s<rsup|-1>>. As
        <math|t<rsup|-1>=<around*|(|s<rsup|-1>|)><rsup|-1>=s> we have that
        <math|t<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\>>. Using [definition:
        <reference|real Dedekind's cut> (3)] we have
        <math|s\<less\>t<rsup|-1>> so that <math|x=s\<cdot\>t\<less\>1>
        proving that <math|x\<in\>\<alpha\><rsub|1>>.
      </description>
    </description>

    As in all cases <math|x\<in\>\<alpha\><rsub|1>> we have that\ 

    <\equation>
      <label|eq 9.42.033>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>\<subseteq\>\<alpha\><rsub|1>
    </equation>

    Now for the opposite inclusion, let <math|x\<in\>\<alpha\><rsub|1>> then
    <math|x\<less\>1> and we have either:

    <\description>
      <item*|<math|x\<leqslant\>0>>Then <math|x\<in\>\<bbb-Q\><rsup|-><rsub|0>>
      so that <math|x\<in\>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>>.

      <item*|<math|0\<less\>x>>As <math|\<alpha\>\<in\>\<bbb-R\><rsup|+>> we
      have that <math|0\<in\>\<alpha\>>, further as <math|\<alpha\>> is a
      Dedekind cut, <math|\<alpha\>> has no greatest element [see defintion:
      <reference|real Dedekind's cut> (4)] so

      <\equation>
        <label|eq 9.43.033>\<exists\>s<rsub|1>\<in\>\<alpha\><text| such that
        >0\<less\>s<rsub|1>
      </equation>

      As <math|0\<less\>x\<less\>1> we have <math|0\<less\>1-x>, and by
      [theorems: <reference|rational ordered field>, <reference|field order
      properties>] <math|0\<less\>x<rsup|-1>> so that for

      <\equation>
        <label|eq 9.44.033>\<varepsilon\>=s<rsub|1>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>
      </equation>

      we have <math|0\<less\>\<varepsilon\>> we have by [theorem:
      <reference|real lemma for sum operator>] that there exist a
      <math|s<rsub|2>\<in\>\<alpha\>> such that
      <math|s<rsub|2>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>>. As
      <math|\<alpha\>> has no maximal element and
      <math|s<rsub|2>\<in\>\<alpha\>> there exist a
      <math|s<rsub|3>\<in\>\<alpha\>> such that
      <math|s<rsub|2>\<less\>s<rsub|3>> then
      <math|s<rsub|2>+\<varepsilon\>\<less\>s<rsub|3>+\<varepsilon\>>. If
      <math|s<rsub|3>+\<varepsilon\>\<in\>\<alpha\>> then by [definition:
      <reference|real Dedekind's cut> (3)] we have as
      <math|s<rsub|2>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>> that
      <math|s<rsub|3>+\<varepsilon\>\<less\>s<rsub|2>+s<rsub|3>>
      contradicting <math|s<rsub|2>+\<varepsilon\>\<less\>s<rsub|3>+\<varepsilon\>>
      hence we must have that

      <\equation>
        <label|eq 9.45.034>s<rsub|3>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\><text|
        and >s<rsub|2>+\<varepsilon\>\<less\>s<rsub|3>+\<varepsilon\>\<wedge\>s<rsub|2>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>
      </equation>

      For <math|s<rsub|1>>,<math|s<rsub|2>> we have either:

      <\description>
        <item*|<math|s<rsub|3>\<less\>s<rsub|1>>>Then
        <math|s<rsub|3>+\<varepsilon\>\<less\>s<rsub|1>+\<varepsilon\>>. If
        <math|s<rsub|1>+\<varepsilon\>\<in\>\<alpha\>> then as
        <math|s<rsub|3>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>> we have by
        [definition: <reference|real Dedekind's cut> (3)] that
        <math|s<rsub|1>+\<varepsilon\>\<less\>s<rsub|3>+\<varepsilon\>>
        contradicting <math|s<rsub|3>+\<varepsilon\>\<less\>s<rsub|1>+\<varepsilon\>>
        so we must have that\ 

        <\equation>
          <label|eq 9.45.033>s<rsub|1>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>
        </equation>

        As <math|0\<in\>\<alpha\>> and <math|x<rsub|1>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>>
        we have by [definition: <reference|real Dedekind's cut> (3)] that\ 

        <\equation>
          <label|eq 9.46.033>0\<less\>s<rsub|1>+\<varepsilon\><text| and by
          [theorems: <reference|rational ordered field>, <reference|field
          order properties>] >0\<less\><around*|(|s<rsub|1>+\<varepsilon\>|)><rsup|-1>
        </equation>

        By [eq: <reference|eq 9.45.033>], [eq: <reference|eq 9.46.033>] and
        the fact that <math|s<rsub|3>+\<varepsilon\>\<less\>s<rsub|1>+\<varepsilon\>>,
        <math|s<rsub|3>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>> we have by
        the definition of <math|inv<around*|(|\<alpha\>|)>> we have that

        <\equation*>
          <around*|(|s<rsub|1>+\<varepsilon\>|)><rsup|-1>\<in\>inv<around*|(|\<alpha\>|)>
        </equation*>

        As <math|0\<less\>s<rsub|1>\<in\>\<alpha\>>,
        <math|0\<less\><around*|(|s<rsub|1>+\<varepsilon\>|)><rsup|-1>\<in\>inv<around*|(|\<alpha\>|)>>
        [see eqs: <reference|eq 9.43.033>, <reference|eq 9.45.033>,
        <reference|eq 9.46.033>] it follows from the definition of
        <math|\<odot\>> that\ 

        <\equation>
          <label|eq 9.47.033>s<rsub|1>\<cdot\><around*|(|s<rsub|1>+\<varepsilon\>|)><rsup|-1>\<in\>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>
        </equation>

        Now

        <\eqnarray*>
          <tformat|<table|<row|<cell|s<rsub|1>\<cdot\><around*|(|s<rsub|1>+\<varepsilon\>|)><rsup|-1>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 9.44.033>]>>>|<cell|s<rsub|1>\<cdot\><around*|(|s<rsub|1>+s<rsub|1>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|s<rsub|1>\<cdot\><around*|(|s<rsub|1>+s<rsub|1>\<cdot\>x<rsup|-1>-s<rsub|1>\<cdot\>x<rsup|-1>\<cdot\>x|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|s<rsub|1>\<cdot\><around*|(|s<rsub|1>+s<rsub|1>\<cdot\>x<rsup|-1>-s<rsub|1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|s<rsub|1>\<cdot\><around*|(|s<rsub|1>\<cdot\>x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|field inverse of product>]>>>|<cell|s<rsub|1>\<cdot\><around*|(|s<rsub|1><rsup|-1>\<cdot\><around*|(|x<rsup|-1>|)><rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|x>>>>
        </eqnarray*>

        proving using [eq: <reference|eq 9.47.033>[ that

        <\equation*>
          x\<in\>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>
        </equation*>

        <item*|<math|s<rsub|1>\<leqslant\>s<rsub|3>>>Then as
        <math|0\<in\>\<alpha\>> and <math|s<rsub|3>+\<varepsilon\>\<in\>\<bbb-Q\>\\\<alpha\>>
        [see eq: <reference|eq 9.45.034>] it follows from [definition:
        <reference|real Dedekind's cut>] that

        <\equation>
          <label|eq 9.49.034>0\<less\>s<rsub|3>+\<varepsilon\><text| and by
          [theorems: <reference|rational ordered field>, <reference|field
          order properties>] <math|0\<less\><around*|(|s<rsub|3>+\<varepsilon\>|)><rsup|-1>>>
        </equation>

        So using the definition if <math|inv<around*|(|\<alpha\>|)>> together
        with [eqs: <reference|eq 9.45.034>, <reference|eq 9.49.034>] that\ 

        <\equation>
          <label|eq 9.50.034><around*|(|s<rsub|3>+\<varepsilon\>|)><rsup|-1>\<in\>inv<around*|(|\<alpha\>|)>
        </equation>

        Now by [eq: <reference|eq 9.43.033>]
        <math|0\<less\>s<rsub|1>\<leqslant\>s<rsub|3>\<in\>\<alpha\>> and
        <math|0\<less\><around*|(|s<rsub|3>+\<varepsilon\>|)><rsup|-1>\<in\>inv<around*|(|\<alpha\>|)>>
        [see eq: <reference|eq 9.49.034>, <reference|eq 9.45.034>] so that\ 

        <\equation>
          <label|eq 9.51.034>s<rsub|3>\<cdot\><around*|(|s<rsub|3>+\<varepsilon\>|)><rsup|-1>\<in\>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>
        </equation>

        Now\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|s<rsub|1>\<leqslant\>s<rsub|3>>|<cell|\<Rightarrowlim\><rsub|0\<less\>1-x>>|<cell|s<rsub|1>\<cdot\><around*|(|1-x|)>\<leqslant\>s<rsub|3>\<cdot\><around*|(|1-x|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|0\<less\>x<rsup|-1>>>|<cell|s<rsub|1>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>\<leqslant\>s<rsub|3>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|s<rsub|3>+s<rsub|1>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>\<leqslant\>s<rsub|3>+s<rsub|3>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorems:
          <reference|rational ordered field>, <reference|field order
          properties>]>>>|<cell|<around*|(|s<rsub|3>+s<rsub|1>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>|)><rsup|-1>\<geqslant\><around*|(|s<rsub|3>+s<rsub|3>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[eq:
          <reference|eq 9.44.033>]>>>|<cell|<around*|(|s<rsub|3>+\<varepsilon\>|)><rsup|-1>\<geqslant\><around*|(|s<rsub|3>+s<rsub|3>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|0\<less\>s<rsub|1>\<leqslant\>s<rsub|3>>>|<cell|s<rsub|3>\<cdot\><around*|(|s<rsub|3>+\<varepsilon\>|)><rsup|-1>\<geqslant\>s<rsub|3>\<cdot\><around*|(|s<rsub|3>+s<rsub|3>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>|)><rsup|-1><eq-number><label|eq
          9.52.034>>>>>
        </eqnarray*>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|s<rsub|3>\<cdot\><around*|(|s<rsub|3>+\<varepsilon\>|)><rsup|-1>>|<cell|=>|<cell|s<rsub|3>\<cdot\><around*|(|s<rsub|3>+\<varepsilon\>|)><rsup|-1>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 9.52.034>]>>>|<cell|s<rsub|3>\<cdot\><around*|(|s<rsub|3>+s<rsub|3>\<cdot\><around*|(|1-x|)>\<cdot\>x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|s<rsub|3>\<cdot\><around*|(|s<rsub|3>+s<rsub|3>\<cdot\>x<rsup|-1>-s<rsub|3>\<cdot\>x\<cdot\>x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|s<rsub|3>\<cdot\><around*|(|s<rsub|3>+s<rsub|3>\<cdot\>x<rsup|-1>-s<rsub|3>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|s<rsub|3>\<cdot\><around*|(|s<rsub|3>\<cdot\>x|)><rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|field inverse of product>]>>>|<cell|s<rsub|3>\<cdot\>s<rsub|3><rsup|-1>\<cdot\><around*|(|x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|x>>>>
        </eqnarray*>

        which by [theorem: <reference|real property to determine membership
        of a cut>[ proves that\ 

        <\equation*>
          x\<in\>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>
        </equation*>
      </description>
    </description>

    As in all cases <math|x\<in\>\<alpha\>\<odot\>in<around*|(|\<alpha\>|)>>
    it follows that <math|\<alpha\><rsub|1>\<subseteq\>\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>>
    which combined with [eq: <reference|eq 9.42.033>] proves finally that\ 

    <\equation*>
      \<alpha\><rsub|1>=\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>
    </equation*>
  </proof>

  \;

  We prove now that <math|\<bbb-R\>\<times\>\<bbb-R\>> is the disjoint union
  of sets of the form <math|A\<times\>B> where
  <math|A,B\<in\><around*|{|\<bbb-R\><rsup|+>,\<bbb-R\><rsup|->,<around*|{|0|}>|}>>

  <\theorem>
    <label|real RxR><math|\<bbb-R\>\<times\>\<bbb-R\>> can be expressed as
    follows

    <\equation*>
      \<bbb-R\>*\<times\>\<bbb-R\>=<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
    </equation*>

    where\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|-1>|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>=\<varnothing\>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    First note that by [theorem: <reference|real division of real numbers in
    positive and negative numbers>]

    <\equation>
      <label|eq 9.30.030>\<bbb-R\>=\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>=<big|cup><rsub|A\<in\><around*|{|\<bbb-R\><rsup|+>,\<bbb-R\><rsup|->,<around*|{|0|}>|}>>A
    </equation>

    and

    <\equation>
      <label|eq 9.31.030>\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->=\<varnothing\><text|
      and >\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|+><big|cap><around*|{|0|}>=\<varnothing\><text|
      and >\<bbb-R\><rsup|-><big|cap><around*|{|0|}>=\<varnothing\>
    </equation>

    First as <math|\<bbb-R\><rsup|+>\<subseteq\>\<bbb-R\>>,
    <math|\<bbb-R\><rsup|->>, <math|<around*|{|0|}>\<in\>\<bbb-R\>> and
    <math|\<bbb-R\>\<subseteq\>\<bbb-R\>> we have by [theorem:
    <reference|cartesian product and inclusion>] that
    <math|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>,
    <math|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>,
    <math|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>,
    <math|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>,
    <math|<around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>\<subseteq\>\<bbb-R\>*\<times\>\<bbb-R\>>
    so that\ 

    <\equation>
      <label|eq 9.32.030><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>
    </equation>

    Let <math|*<around*|(|x,y|)>\<in\>\<bbb-R\>\<times\>\<bbb-R\>> then
    <math|x\<in\>\<bbb-R\>\<equallim\><rsub|<text|[eq: <reference|eq
    9.30.030>]>>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
    and <math|x\<in\>\<bbb-R\>\<equallim\><rsub|<text|[eq: <reference|eq
    9.30.030>]>>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
    so that for <math|x> we have either:

    <\description>
      <item*|<math|x\<in\>\<bbb-R\><rsup|+>>>Then for <math|y> we have
      either:

      <\description>
        <item*|<math|y\<in\>\<bbb-R\><rsup|+>>>Then
        <math|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>>
        so that

        <\equation*>
          <around*|(|x,y|)>\<in\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
        </equation*>

        <item*|<math|y\<in\>\<bbb-R\><rsup|->>>Then
        <math|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->>
        so that\ 

        <\equation*>
          <around*|(|x,y|)>\<in\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
        </equation*>

        <item*|<math|y\<in\><around*|{|0|}>>>Then
        <math|<around*|(|x,y|)>\<in\>\<bbb-R\>\<times\><around*|{|0|}>> so
        that

        <\equation*>
          <around*|(|x,y|)>\<in\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
        </equation*>
      </description>

      <item*|<math|x\<in\>\<bbb-R\><rsup|->>>Then for <math|y> we have
      either:

      <\description>
        <item*|<math|y\<in\>\<bbb-R\><rsup|+>>>Then
        <math|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>>
        so that

        <\equation*>
          <around*|(|x,y|)>\<in\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
        </equation*>

        <item*|<math|y\<in\>\<bbb-R\><rsup|->>>Then
        <math|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->>
        so that\ 

        <\equation*>
          <around*|(|x,y|)>\<in\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
        </equation*>

        <item*|<math|y\<in\><around*|{|0|}>>>Then
        <math|<around*|(|x,y|)>\<in\>\<bbb-R\>\<times\><around*|{|0|}>> so
        that

        <\equation*>
          <around*|(|x,y|)>\<in\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
        </equation*>
      </description>

      <item*|<math|x\<in\><around*|{|0|}>>>Them
      <math|<around*|(|x,y|)>\<in\><around*|{|0|}>\<times\>\<bbb-R\>> so that\ 

      <\equation*>
        <around*|(|x,y|)>\<in\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
      </equation*>
    </description>

    So <math|<around*|(|x,y|)>\<in\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>
    proving that <math|\<bbb-R\>\<times\>\<bbb-R\>\<subseteq\><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>
    which combined with [eq: <reference|eq 9.32.030>] we have\ 

    <\equation>
      <label|eq 9.33.030>\<bbb-R\>\<times\>\<bbb-R\>=<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cup><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cup><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>
    </equation>

    Next we have by [theorem: <reference|cartesian product properties (1)>]
    and [theorem: <reference|cartesian product with enpty set>] that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)>>|<cell|=>|<cell|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|+>|)>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|+>|)>\<times\>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)>>|<cell|=>|<cell|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->|)>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|+>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|\<varnothing\>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|+>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)>>|<cell|=>|<cell|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->|)>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|\<varnothing\>\<times\>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>|)><big|cup><around*|(|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\>|)>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap><around*|{|0|}>|)>|)><big|cup><around*|(|<around*|(|\<bbb-R\><rsup|+><big|cap><around*|{|0|}>|)>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\>|)>\<times\>\<varnothing\>|)><big|cup><around*|(|\<varnothing\>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\><big|cup>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)>>|<cell|=>|<cell|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->|)>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\><rsup|+>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|\<varnothing\>\<times\>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)>>|<cell|=>|<cell|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->|)>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\><rsup|->|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|\<varnothing\>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->|)>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>|)><big|cup><around*|(|<around*|(|\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\>|)>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap><around*|{|0|}>|)>|)><big|cup><around*|(|<around*|(|\<bbb-R\><rsup|+><big|cap><around*|{|0|}>|)>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\>|)>\<times\>\<varnothing\>|)><big|cup><around*|(|\<varnothing\>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\><big|cup>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)>>|<cell|=>|<cell|<around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\><rsup|->|)>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\><rsup|->|)>\<times\>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>|)><big|cup><around*|(|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>|)><big|cap><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\>|)>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap><around*|{|0|}>|)>|)><big|cup><around*|(|<around*|(|\<bbb-R\><rsup|-><big|cap><around*|{|0|}>|)>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\>|)>\<times\>\<varnothing\>|)><big|cup><around*|(|\<varnothing\>\<times\><around*|(|\<bbb-R\><rsup|+><big|cap>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\><big|cup>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|<around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>|)><big|cup><around*|(|<around*|(|\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->|)><big|cap><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\>|)>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap><around*|{|0|}>|)>|)><big|cup><around*|(|<around*|(|\<bbb-R\><rsup|-><big|cap><around*|{|0|}>|)>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 9.31.030>]>>>|<cell|<around*|(|<around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\>|)>\<times\>\<varnothing\>|)><big|cup><around*|(|\<varnothing\>\<times\><around*|(|\<bbb-R\><rsup|-><big|cap>\<bbb-R\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\><big|cup>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>>>
    </eqnarray*>
  </proof>

  The two previous theorems, [theorem: <reference|real product is internal>]
  and [theorem: <reference|real RxR>] allowws us to define the multiplication
  operator on <math|\<bbb-R\>>.

  <\definition>
    <label|real multiplication operator>The multiplication operator
    <math|\<cdot\>:\<bbb-R\>\<times\>\<bbb-R\>\<Rightarrow\>\<bbb-R\>> is
    defined as\ 

    <\equation*>
      \<alpha\>\<cdot\>\<beta\>=<choice|<tformat|<table|<row|<cell|\<alpha\>\<odot\>\<beta\><text|
      if ><around*|(|\<alpha\>,b|)>\<in\>\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>>>|<row|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>|)><text|
      if ><around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>>>|<row|<cell|-<around*|(|\<alpha\>\<odot\><around*|(|-\<beta\>|)>|)><text|
      if ><around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->>>|<row|<cell|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<beta\>|)><text|
      if ><around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->>>|<row|<cell|0<text|
      if ><around*|(|\<alpha\>,\<beta\>|)><text| if
      ><around*|(|\<alpha\>,\<beta\>|)>\<in\><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)><big|cup><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)>>>>>>
    </equation*>
  </definition>

  If we want to prove something about multiplication then we have 5 cases to
  consider per use of the multiplication operator. The following lemma allows
  to reduce the amount work.

  <\lemma>
    <label|real -(a.b)=(-a).b=(a.(-b)><math|\<forall\>a,b\<in\>\<bbb-R\>\<times\>\<bbb-R\>>
    we have <math|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>=<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>=\<alpha\>\<cdot\><around*|(|-\<beta\>|)>>
  </lemma>

  <\proof>
    \ We have to consider the following 5 cases [see theorem: <reference|real
    RxR>]:

    <\description>
      <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>>|<cell|\<equallim\><rsub|-\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|-<around*|(|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<odot\>\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|-<around*|(|-\<alpha\>|)>=\<alpha\>>>|<cell|-<around*|(|\<alpha\>\<odot\>\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>>|<row|<cell|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>-\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|-<around*|(|\<alpha\>\<odot\><around*|(|-<around*|(|-\<beta\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<alpha\>\<odot\>\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>>>>
      </eqnarray*>

      <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+><rsup|>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|-<around*|(|-<around*|(|\<alpha\>\<odot\><around*|(|-\<beta\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<odot\><around*|(|-\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>-\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|\<alpha\>\<cdot\><around*|(|-\<beta\>|)><eq-number><label|eq
        9.60.034>>>|<row|<cell|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>>|<cell|\<equallim\><rsub|-\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<odot\><around*|(|-\<beta\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<odot\><around*|(|-\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>-\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq>:<reference|eq
        9.60.034>>>|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>>>>
      </eqnarray*>

      <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|-<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>>>|<row|<cell|>|<cell|\<equallim\><rsub|-\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+><text|>>>|<cell|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>>>|<row|<cell|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>-\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-<around*|(|-\<beta\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>>>|<row|<cell|>|<cell|\<equallim\><rsub|-\<alpha\>\<in\>\<bbb-E\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 9.59.034>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>>>>
      </eqnarray*>

      <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<beta\>|)>|)><eq-number><label|eq
        9.59.034>>>|<row|<cell|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>>|<cell|\<equallim\><rsub|-\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<beta\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 9.59.034>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>>|<row|<cell|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>-\<beta\>\<in\>\<bbb-R\><rsup|+>><rsub|>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<beta\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 9.59.034>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>>>>
      </eqnarray*>

      <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)><big|cup><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>|<cell|\<equallim\><rsub|<around*|(|\<alpha\>,\<beta\>|)>\<in\><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)><big|cup><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>>>|<cell|0>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|-\<alpha\>,\<beta\>|)>\<in\><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)><big|cup><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>>>|<cell|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>>>|<row|<cell|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>>|<cell|\<equallim\><rsub|<around*|(|\<alpha\>,\<beta\>|)>\<in\><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)><big|cup><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>>>|<cell|0>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|\<alpha\>,-\<beta\>|)>\<in\><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)><big|cup><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>>>|<cell|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>>>>>
      </eqnarray*>
    </description>
  </proof>

  <\lemma>
    <label|real a.(b+g) where b or g is negative>If
    <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>> and
    <math|\<gamma\>\<in\>\<bbb-R\><rsup|->> then
    <math|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>=\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>
    <math|. >
  </lemma>

  <\proof>
    First we proof that\ 

    <\equation>
      <label|eq 9.65.035>\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|-><text|
      such that >\<beta\>+\<gamma\>\<in\>\<bbb-R\><rsup|+> we have
      \<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>
    </equation>

    <\proof>
      As <math|\<beta\>,-\<gamma\>\<in\>\<bbb-R\><rsup|+>> we have
      <math|0\<in\>\<beta\>\<wedge\>0\<in\>-\<gamma\>> so that
      <math|0=0+0\<in\>\<beta\>+<around*|(|-\<gamma\>|)>> proving that

      <\equation*>
        \<beta\>+<around*|(|-\<gamma\>|)>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>+\<gamma\>\<in\>\<bbb-R\><rsup|+>
      </equation*>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<beta\>>|<cell|\<equallim\><rsub|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<beta\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<odot\>*<around*|(|\<beta\>+\<beta\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<odot\><around*|(|<around*|(|\<beta\>+<around*|(|-\<gamma\>|)>|)>+<around*|(|\<beta\>+\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 9.65.035>+theorem: <reference|real
        distributivity>]>>>|<cell|<around*|(|\<alpha\>\<odot\><around*|(|\<beta\>+<around*|(|-\<gamma\>|)>|)>|)>+\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[>\<beta\>,-\<gamma\>\<in\>\<bbb-R\><rsup|+><text|+theorem:
        <reference|real distributivity>]>>>|<cell|\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\><around*|(|-\<gamma\>|)>+\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>,\<gamma\>\<in\>\<bbb-R\><rsup|->,\<alpha\>+\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|\<alpha\>\<cdot\>\<beta\>+<around*|(|-<around*|(|\<alpha\>\<cdot\>\<gamma\>|)>|)>+\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>>>
      </eqnarray*>

      so after adding <math|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>+\<alpha\>\<cdot\>\<gamma\>>
      to both sides gives\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<beta\>+<around*|(|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>|)>+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
      </eqnarray*>
    </proof>

    For <math|\<beta\>+\<gamma\>\<in\>\<bbb-R\>> we have three cases to
    consider:

    <\description>
      <item*|<math|\<beta\>+\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
      <math|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 9.65.035>]>>\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>

      <item*|<math|\<beta\>+\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
      <math|<around*|(|-\<beta\>|)>+<around*|(|-\<gamma\>|)>\<equallim\><rsub|<text|[theorem:
      <reference|group inverse of x.y>]>>-<around*|(|\<beta\>+\<gamma\>|)>\<in\>\<bbb-R\><rsup|+>>.
      So if we take <math|\<gamma\><rprime|'>=-\<beta\>\<in\>\<bbb-R\><rsup|->>
      and <math|\<beta\><rprime|'>=-\<gamma\>\<in\>\<bbb-R\><rsup|+>> we have
      that <math|\<beta\><rprime|'>+\<gamma\><rprime|'>=-<around*|(|\<beta\>+\<gamma\>|)>\<in\>\<bbb-R\><rsup|+>>,
      so we can apply [eq: <reference|eq 9.65.035>] resulting in

      <\equation*>
        \<alpha\>\<cdot\><around*|(|\<beta\><rprime|'>+\<gamma\><rprime|'>|)>=\<alpha\>\<cdot\>\<beta\><rprime|'>+\<alpha\>\<exterior\>\<gamma\><rprime|'>
      </equation*>

      which after substituting the formulas for
      <math|\<beta\><rprime|'>,\<gamma\><rprime|'>> gives\ 

      <\equation>
        <label|eq 9.66.035>\<alpha\>\<cdot\><around*|(|<around*|(|-\<gamma\>|)>+<around*|(|-\<beta\>|)>|)>=\<alpha\>\<cdot\><around*|(|-\<gamma\>|)>+\<alpha\>\<cdot\><around*|(|-\<beta\>|)>
      </equation>

      Now we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|-<around*|(|\<beta\>+\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|-<around*|(|\<beta\>+\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|<around*|(|-\<gamma\>|)>+<around*|(|-\<beta\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 9.66.035>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<gamma\>|)>+\<alpha\>\<cdot\><around*|(|-\<beta\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>+\<alpha\>\<cdot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|group inverse of x.y>]>>>|<cell|<around*|(|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>|)>|)>+<around*|(|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|-\<beta\>|)>|)>+\<alpha\>\<cdot\><around*|(|-<around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
      </eqnarray*>

      <item*|<math|\<beta\>+\<gamma\>=0>>The <math|\<gamma\>=-\<beta\>> and
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+<around*|(|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\><around*|(|-\<beta\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
      </eqnarray*>
    </description>
  </proof>

  We are finally ready to prove that <math|<around*|\<langle\>|\<bbb-R\>,*+,\<cdot\>|\<rangle\>>>
  is a field

  \;

  <\definition>
    <label|real a^-1>If <math|\<alpha\>\<in\>\<bbb-R\>\\<around*|{|0|}>> then
    we define <math|\<alpha\><rsup|-1>> by
    <math|\<alpha\><rsup|-1>=<choice|<tformat|<table|<row|<cell|inv<around*|(|\<alpha\>|)><text|
    if >\<alpha\>\<in\>\<bbb-R\><rsup|+>>>|<row|<cell|-inv<around*|(|-\<alpha\>|)><text|
    if >\<alpha\>\<in\>\<bbb-R\><rsup|->>>>>>>
  </definition>

  <\proof>
    As by [theorem: <reference|real division of real numbers in positive and
    negative numbers>] <math|\<bbb-R\>\\<around*|{|0|}>=\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|->>
    and <math|\<bbb-R\><rsup|+><big|cap>\<bbb-R\><rsup|->=\<varnothing\>>
    <math|\<alpha\><rsup|-1>> is well defined.
  </proof>

  <\theorem>
    <label|real field><math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
    is a field where

    <\enumerate>
      <item><math|+:\<bbb-R\>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-R\>>is
      defined in [theorem: <reference|real group>]

      <item><math|\<cdot\>:\<bbb-R\>*\<times\>\<bbb-R\>\<rightarrow\>\<bbb-R\>>
      is defined in [definition: <reference|real multiplication operator>]

      <item><math|0=\<alpha\><rsub|0>> is the additive inverse [see theorem:
      <reference|real group>]

      <item><math|1=\<alpha\><rsub|1>> is the multiplicative rational
      element.

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> the additive inverse is
      the neagative cut of <math|\<alpha\>> [see theorem: <reference|real
      group>]

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>\\<around*|{|0|}>> we
      have the multiplicative inverse is defined by [definition:
      <reference|real a^-1>]
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using [theorem: <reference|real group>]
      <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> is a Abelian group
      with neutral element <math|0=\<alpha\><rsub|0>> and
      <math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> the negative cut
      <math|-\<alpha\>> as inverse.

      <item>For the multiplaction operator
      <math|\<cdot\>:\<bbb-R\>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-R\>> we
      have:

      <\description>
        <item*|commutativity>Let <math|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\>\<times\>\<bbb-R\>>
        then using [theorem: <reference|real RxR>] we have to consider the
        following cases:

        <\description>
          <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<beta\>>|<cell|\<equallim\><rsub|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|\<alpha\>\<odot\>\<beta\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real a.b=b.a positive
            numbers>]>>>|<cell|\<beta\>\<odot\>\<alpha\>>>|<row|<cell|>|<cell|=>|<cell|\<beta\>\<cdot\>\<alpha\>>>>>
          </eqnarray*>

          <item*|<math|<around*|(|\<alpha\>.\<beta\>|)>\<in\>\<bbb-R\><rsup|+>\<times\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<beta\>>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|-<around*|(|\<alpha\>\<odot\><around*|(|-\<beta\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real a.b=b.a positive
            numbers>]>>>|<cell|-<around*|(|<around*|(|-\<beta\>|)>\<odot\>\<alpha\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>-\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|-<around*|(|<around*|(|-\<beta\>|)>\<cdot\>\<alpha\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|-<around*|(|\<beta\>\<cdot\>\<alpha\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\>\<cdot\>\<alpha\>>>>>
          </eqnarray*>

          <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<beta\>>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real a.b=b.a positive
            numbers>]>>>|<cell|-<around*|(|\<beta\>\<odot\><around*|(|-\<alpha\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|-\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>>>|<cell|-<around*|(|\<beta\>\<cdot\><around*|(|-\<alpha\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|-<around*|(|\<beta\>\<cdot\>\<alpha\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\>\<cdot\>\<alpha\>>>>>
          </eqnarray*>

          <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\><rsup|->\<times\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<beta\>>|<cell|\<equallim\><rsub|a,\<beta\>\<in\>\<bbb-R\><rsup|->>>|<cell|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real a.b=b.a positive
            numbers>]>>>|<cell|<around*|(|-\<beta\>|)>\<odot\><around*|(|-\<alpha\>|)>>>|<row|<cell|>|<cell|->|<cell|\<beta\>\<cdot\>\<alpha\>>>>>
          </eqnarray*>

          <item*|<math|<around*|(|\<alpha\>,\<beta\>|)>\<in\><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)><big|cup><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<beta\>>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<beta\>\<cdot\>\<alpha\>>>>>
          </eqnarray*>
        </description>

        <item*|<math|neutral element>>First note that as
        <math|0\<in\>\<alpha\><rsub|1>> we have
        <math|\<alpha\><rsub|1>\<in\>\<bbb-R\><rsup|+>>. Let
        <math|\<alpha\>\<in\>\<bbb-R\>\<equallim\><rsub|<text|[theorem:
        <reference|real division of real numbers in positive and negative
        numbers>]>>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
        then we have either:

        <\description>
          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>>>Then we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<alpha\><rsub|1>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|\<alpha\><rsub|1>\<cdot\>\<alpha\>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\><rsub|1>,\<alpha\>\<in\>\<bbb-R\><rsup|+>>>|<cell|\<alpha\><rsub|1>\<odot\>\<alpha\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real 1.a=a for positive
            numbers>]>>>|<cell|\<alpha\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->>>Then we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<alpha\><rsub|1>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|\<alpha\><rsub|1>\<cdot\>\<alpha\>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\><rsub|1>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<alpha\>\<in\>\<bbb-R\><rsup|->>>|<cell|-<around*|(|\<alpha\><rsub|1>\<odot\><around*|(|-\<alpha\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real 1.a=a for positive
            numbers>]>>>|<cell|-<around*|(|-\<alpha\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0>>Then we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<alpha\><rsub|1>>|<cell|=>|<cell|\<alpha\><rsub|1>\<cdot\>\<alpha\>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>>>>>
          </eqnarray*>
        </description>

        <item*|inverse element>First <math|inv<around*|(|\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>>
        [see theorem: <reference|real inv>]. Let
        <math|\<alpha\>\<in\>\<bbb-R\>\\<around*|{|0|}>> then by [theorem:
        <reference|real division of real numbers in positive and negative
        numbers>] we have to consider:\ 

        <\description>
          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\><rsup|-1>\<cdot\>\<alpha\>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|\<alpha\>\<cdot\>\<alpha\><rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>>>|<cell|\<alpha\>\<cdot\>inv<around*|(|\<alpha\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|inv<around*|(|\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<alpha\>\<in\>\<bbb-R\><rsup|+>>>|<cell|\<alpha\>\<odot\>inv<around*|(|\<alpha\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real inv(a) is inverse
            element>]>>>|<cell|\<alpha\><rsub|1>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\><rsup|-1>\<cdot\>\<alpha\>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|\<alpha\>\<cdot\>\<alpha\><rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>>>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|inv<around*|(|-\<alpha\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\>inv<around*|(|-\<alpha\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|-\<alpha\>|)>\<cdot\>inv<around*|(|-\<alpha\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem::
            <reference|real inv(a) is inverse
            element>]>>>|<cell|\<alpha\><rsub|1>>>>>
          </eqnarray*>
        </description>

        <item*|associativity>As <math|\<bbb-R\>\<equallim\><rsub|<text|[theorem:
        <reference|real division of real numbers in positive and negative
        numbers>]>>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
        we have for <math|\<alpha\>,\<beta\>,\<gamma\>\<in\>\<bbb-R\>> the
        following 27 cases to consider:

        <\description>
          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real associativity positive
            numbers>]>>>|<cell|<around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|-<around*|(|\<beta\>\<cdot\>\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|\<beta\>\<cdot\><around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\><around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<alpha\>\<odot\><around*|(|\<beta\>\<odot\><around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real associativity positive
            numbers>]>>>|<cell|-<around*|(|<around*|(|\<alpha\>\<odot\>\<beta\>|)>\<odot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\><around*|(|-<around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<matheuler\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<around*|(|-<around*|(|-\<beta\>|)>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|<around*|(|-\<beta\>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|<around*|(|-\<beta\>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<alpha\>\<odot\><around*|(|<around*|(|-\<beta\>|)>\<odot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real associativity positive
            numbers>]>>>|<cell|-<around*|(|<around*|(|\<alpha\>\<odot\><around*|(|-\<beta\>|)>|)>\<odot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>|)>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|-<around*|(|-\<beta\>|)>|)>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|b\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<around*|(|-<around*|(|-\<beta\>|)>|)>\<cdot\><around*|(|-<around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|<around*|(|-\<beta\>|)>\<cdot\><around*|(|-<around*|(|-\<gamma\>|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|-<around*|(|<around*|(|-\<beta\>|)>\<cdot\><around*|(|-\<gamma\>|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<around*|(|-\<beta\>|)>\<cdot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<odot\><around*|(|<around*|(|-\<beta\>|)>\<odot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real associativity positive
            numbers>]>>>|<cell|<around*|(|\<alpha\>\<odot\><around*|(|-\<beta\>|)>|)>\<odot\><around*|(|-\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>|)>\<cdot\><around*|(|-\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|-<around*|(|<around*|(|a\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>*<around*|(|\<beta\>\<cdot\>0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>0|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>0|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>=0\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>0|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\><around*|(|\<beta\>\<odot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real associativity positive
            numbers>]>>>|<cell|-<around*|(|<around*|(|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>|)>\<odot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|-<around*|(|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\><around*|(|\<beta\>\<cdot\><around*|(|-<around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|\<beta\>\<cdot\><around*|(|-<around*|(|-\<gamma\>|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|-<around*|(|\<beta\>\<cdot\><around*|(|-\<gamma\>|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|\<beta\>\<cdot\><around*|(|-\<gamma\>|)>*|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|\<beta\>\<cdot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<odot\><around*|(|\<beta\>\<odot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real associativity positive
            numbers>]>>>|<cell|<around*|(|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>|)>\<odot\><around*|(|-\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>|)>\<cdot\><around*|(|-\<gamma\>|)>>>|<row|<cell|>|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>|<cell|-<around*|(|<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|-<around*|(|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\><around*|(|<around*|(|-<around*|(|-\<beta\>|)>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|<around*|(|-<around*|(|-\<beta\>|)>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|-<around*|(|<around*|(|-\<beta\>|)>\<cdot\>\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|<around*|(|-\<beta\>|)>\<cdot\>\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|<around*|(|-\<beta\>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<odot\><around*|(|<around*|(|-\<beta\>|)>\<odot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real associativity positive
            numbers>]>>>|<cell|<around*|(|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<beta\>|)>|)>\<odot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<around*|(|-\<beta\>|)>\<odot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\><around*|(|<around*|(|-\<beta\>|)>\<odot\><around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real associativity positive
            numbers>]>>>|<cell|-<around*|(|<around*|(|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<beta\>|)>|)>\<odot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|-<around*|(|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>0|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>0|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>=0\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>0|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>=0\<wedge\>\<gamma\>=0>>Then
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>\<gamma\>>>>>
          </eqnarray*>
        </description>

        <item*|distributivity>As <math|\<bbb-R\>\<equallim\><rsub|<text|[theorem:
        <reference|real division of real numbers in positive and negative
        numbers>]>>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>
        we have for <math|\<alpha\>,\<beta\>,\<gamma\>\<in\>\<bbb-R\>> the
        following 27 cases to consider:

        <\description>
          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<odot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real distributivity>]>>>|<cell|\<alpha\>\<odot\>\<beta\>+\<alpha\>\<odot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<matheuler\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|b+\<gamma\>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
            <reference|real a.(b+g) where b or g is
            negative>]>>\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>|<cell|>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>=0>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<gamma\>+\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
            <reference|real a.(b+g) where b or g is
            negative>]>>>|<cell|\<alpha\>\<cdot\>\<gamma\>+\<alpha\>\<cdot\>\<beta\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|-<around*|(|\<beta\>+\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|-<around*|(|\<beta\>+\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|group inverse of x.y>]>>>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|<around*|(|-\<beta\>|)>+<around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<alpha\>\<odot\><around*|(|<around*|(|-\<beta\>|)>+<around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real distributivity>]>>>|<cell|-<around*|(|\<alpha\>\<odot\><around*|(|-\<beta\>|)>+\<alpha\>\<odot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>+\<alpha\>\<cdot\><around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|group inverse of x.y>]>>>|<cell|<around*|(|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>|)>|)>+<around*|(|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|\<alpha\>\<cdot\><around*|(|-<around*|(|-\<beta\>|)>|)>+\<alpha\>\<cdot\><around*|(|-<around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>=0>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<beta\>=0\<wedge\>\<gamma\>=0>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\><around*|(|\<beta\>+\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real distributivity>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>+<around*|(|-\<alpha\>|)>\<odot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|group inverse of x.y>]>>>|<cell|<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\>\<beta\>|)>|)>+<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<odot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>|)>|)>+<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\>\<beta\>+<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
            <reference|real a.(b+g) where b or g is
            negative>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>+<around*|(|-\<alpha\>|)>\<cdot\>\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|group inverse of x.y>]>>>|<cell|<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>|)>|)>+<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\>\<beta\>+<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>=0>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<gamma\>+\<beta\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\><around*|(|\<gamma\>+\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|\<gamma\>+\<beta\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
            <reference|real a.(b+g) where b or g is
            negative>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<gamma\>+<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|group inverse of x.y>]>>>|<cell|<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<gamma\>|)>|)>+<around*|(|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>\<beta\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\>\<gamma\>+<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\>\<beta\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<gamma\>+\<alpha\>\<cdot\>\<beta\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>b+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|<around*|(|-<around*|(|-\<alpha\>|)>|)>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|-<around*|(|\<beta\>+\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|group inverse of x.y>]>>>|<cell|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|<around*|(|-\<beta\>|)>+<around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<odot\><around*|(|<around*|(|-\<beta\>|)>+<around*|(|-\<gamma\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real distributivity>]>>>|<cell|<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<beta\>|)>+<around*|(|-\<alpha\>|)>\<odot\><around*|(|-\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|-\<beta\>|)>+<around*|(|-\<alpha\>|)>\<cdot\><around*|(|-\<gamma\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<beta\>|)>|)>|)>+<around*|(|-<around*|(|\<alpha\>\<cdot\><around*|(|-\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|real -(a.b)=(-a).b=(a.(-b)>]>>>|<cell|<around*|(|-<around*|(|-<around*|(|\<alpha\>\<cdot\>\<beta\>|)>|)>|)>+<around*|(|-<around*|(|-<around*|(|\<alpha\>\<cdot\>\<gamma\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>=0>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<beta\>=0\<wedge\>\<gamma\>=0>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|0+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0+\<alpha\>\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<gamma\>=0>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>\<in\>\<bbb-R\><rsup|->\<wedge\>\<gamma\>=0>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|+>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>=0\<wedge\>\<gamma\>\<in\>\<bbb-R\><rsup|->>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>

          <item*|<math|\<alpha\>=0\<wedge\>\<beta\>=0\<wedge\>\<gamma\>=0>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>|<cell|=>|<cell|0\<cdot\><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<beta\>+0\<cdot\>\<gamma\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<beta\>+\<alpha\>\<cdot\>\<gamma\>>>>>
          </eqnarray*>
        </description>
      </description>
    </enumerate>
  </proof>

  Remember that <math|x+<around*|(|-y|)>> has a shorthand notation
  <math|x-y>, in the same way we have some shorthand notations for
  multiplication with a inverse element.

  <\notation>
    <label|real notation for division>If <math|x,y\<in\>\<bbb-R\>>
    <math|x\<neq\>0> then we use the following shorthand notation\ 

    <\enumerate>
      <item><math|x<rsup|-1>> is noted as <math|1/x>

      <item><math|y\<cdot\>x<rsup|-1>> is noted as <math|y/x>
    </enumerate>
  </notation>

  We show now how the rational numbers as a field can be embedded in the
  field of the real numbers. The primary candidate fore this are the rational
  cuts, lets review some of the properties of the rational cuts. First we
  need two little lemmas.

  <\lemma>
    <label|real inverse of rational cut>If <math|r\<in\>\<bbb-Q\>> such that
    <math|\<alpha\><rsub|r>\<in\>\<bbb-R\><rsup|+>> then
    <math|inv<around*|(|\<alpha\><rsub|r>|)>=\<alpha\><rsub|r<rsup|-1>>>
  </lemma>

  <\proof>
    As <math|\<alpha\><rsub|r>\<in\>\<bbb-R\><rsup|+> we have
    0\<in\>\<alpha\><rsub|r>> hence <math|0\<less\>r\<Rightarrow\>0\<less\>r<rsup|-1>>.
    Let <math|x\<in\>inv<around*|(|\<alpha\><rsub|r>|)>> then we have for
    <math|x> to consider:

    <\description>
      <item*|<math|x\<leqslant\>0>>Then <math|x\<leqslant\>0\<less\>r<rsup|-1>>
      proving that <math|x\<in\>\<alpha\><rsub|r<rsup|-1>>>.

      <item*|<math|0\<less\>x>>Then <math|x\<nin\>\<bbb-Q\><rsup|-><rsub|0>>
      so there exists a <math|s\<in\>\<bbb-Q\>\\\<alpha\><rsub|r>> such that
      <math|0\<less\>s> and <math|\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\>\<vdash\>t\<less\>s>
      such that <math|x=s<rsup|-1>>. Hence <math|s=x<rsup|-1>> and
      <math|x<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\><rsub|r>> and
      <math|\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\><rsub|r>> such that
      <math|t\<less\>x<rsup|-1>>. As <math|\<alpha\><rsub|r>> is a rational
      cut we haveby [theorem: <reference|real rational cut>] that
      <math|r=min<around*|(|\<bbb-Q\>\\\<alpha\><rsub|r>|)>> hence
      <math|\<forall\>t\<in\>\<bbb-Q\>\\\<alpha\><rsub|r>> we have
      <math|r\<leqslant\>t>, from which we conclude that
      <math|x<rsup|-1>\<neq\>r>. As <math|x<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\><rsub|r>\<Rightarrow\>r\<leqslant\>x<rsup|-1>>
      we conclude that <math|0\<less\>r\<less\>x<rsup|-1>> or using
      [theorems: <reference|rational ordered field>, <reference|field order
      properties>] that <math|x\<less\>r<rsup|-1>>. Hence we have
      <math|x\<in\>\<alpha\><rsub|r<rsup|-1>>>
    </description>

    So we have that\ 

    <\equation>
      <label|eq 9.67.036.1>inv<around*|(|\<alpha\><rsub|r>|)>\<subseteq\>\<alpha\><rsub|r<rsup|-1>>
    </equation>

    Let <math|x\<in\>\<alpha\><rsub|r<rsup|-1>>>. For <math|x> we have
    either:

    <\description>
      <item*|<math|x\<leqslant\>0>>Then <math|x\<in\>\<bbb-Q\><rsup|-><rsub|0>>
      so that <math|x\<in\>inv<around*|(|\<alpha\><rsub|r>|)>>.

      <item*|<math|0\<less\>x>>Then as <math|x\<in\>\<alpha\><rsub|r<rsup|-1>>>
      we have that <math|x\<less\>r<rsup|-1>> so that
      <math|r\<less\>x<rsup|-1>>, hence <math|x<rsup|-1>\<nin\>\<alpha\><rsub|r>>
      or <math|x<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\><rsub|r>>, as
      <math|0\<less\>r> we have <math|0\<less\>x<rsup|-1>>, further
      <math|\<bbb-Q\>\\\<alpha\>\<ni\>min<around*|(|\<bbb-Q\>\\\<alpha\><rsub|r>|)>\<equallim\><rsub|<text|[theorem:
      <reference|real rational cut>]>>r\<less\>x<rsup|-1>>. Summarized we
      have <math|x<rsup|-1>\<in\>\<bbb-Q\>\\\<alpha\><rsub|r>\<wedge\>0\<less\>x<rsup|-1>\<wedge\>\<exists\>t\<in\>\<bbb-Q\>\\\<alpha\><rsub|r>\<vdash\>t\<less\>x<rsup|-1>>
      proving that <math|x\<in\>inv<around*|(|\<alpha\><rsub|r>|)>>.
    </description>

    So we have proved that <math|\<alpha\><rsub|r<rsup|-1>>\<in\>inv<around*|(|\<alpha\><rsub|r>|)>>,
    combining this with [eq: <reference|eq 9.67.036.1>] gives

    <\equation*>
      inv<around*|(|\<alpha\><rsub|r>|)>=\<alpha\><rsub|r<rsup|-1>>
    </equation*>
  </proof>

  <\lemma>
    <label|real a_r.a_s=a_r.s>Let <math|\<alpha\><rsub|r>,\<alpha\><rsub|s>\<in\>\<bbb-R\><rsup|+>>
    then <math|\<alpha\><rsub|r>\<odot\>\<alpha\><rsub|s>=\<alpha\><rsub|r\<cdot\>s>>
  </lemma>

  <\proof>
    As <math|\<alpha\><rsub|r>,\<alpha\><rsub|s>\<in\>\<bbb-R\><rsup|+>> we
    have <math|0\<in\>\<alpha\><rsub|r>\<wedge\>0\<in\>\<alpha\><rsub|s>> so
    that\ 

    <\equation>
      <label|eq 9.67.036>0\<less\>r\<wedge\>0\<less\>s
    </equation>

    Let <math|x\<in\>\<alpha\><rsub|r>\<odot\>\<alpha\><rsub|s>> then we have
    the following possibilities:

    <\description>
      <item*|<math|x\<leqslant\>0>>Then as
      <math|0\<less\>r\<wedge\>0\<less\>s> we have that
      <math|0\<less\>r\<cdot\>s> so that <math|x\<less\>r\<cdot\>s> proving
      that <math|x\<in\>\<alpha\><rsub|r\<cdot\>s>>

      <item*|<math|0\<less\>x>>Then we have
      <math|x\<nin\>\<bbb-Q\><rsup|-><rsub|0>> so there exists
      <math|u\<in\>\<alpha\><rsub|r>> and <math|v\<in\>\<alpha\><rsub|s>> so
      that <math|x=u\<cdot\>v> with <math|0\<less\>u> and <math|0\<less\>v>.
      As <math|u\<in\>\<alpha\><rsub|r>> and <math|v\<in\>\<alpha\>s> we have
      <math|u\<less\>r> and <math|v\<less\>s>. So
      <math|u\<cdot\>v\<less\>r\<cdot\>v> and
      <math|r\<cdot\>v\<less\>r\<cdot\>s> hence
      <math|x=u\<cdot\>v\<less\>r\<cdot\>s>.
    </description>

    So we conclude that\ 

    <\equation>
      <label|eq 9.68.036>\<alpha\><rsub|r>\<odot\>\<alpha\><rsub|s>\<subseteq\>\<alpha\><rsub|r\<cdot\>s>
    </equation>

    Let <math|x\<in\>\<alpha\><rsub|r\<cdot\>s>> then
    <math|x\<less\>r\<cdot\>s>. For <math|x> we have now the following cases
    to consider:\ 

    <\description>
      <item*|<math|x\<leqslant\>0>>Then <math|x\<in\>\<bbb-Q\><rsup|-><rsub|0>>
      so that <math|x\<in\>\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>\ 

      <item*|<math|0\<less\>x>>As <math|0\<less\>r> we have by the density of
      <math|\<bbb-Q\>> [see theorem: <reference|rational densitiy>] the
      existence of <math|\<varepsilon\><rsub|1>\<in\>\<bbb-Q\>> such that
      <math|0\<less\>\<varepsilon\><rsub|1>\<less\>r>. From
      <math|x\<less\>r\<cdot\>s> it follows that <math|0\<less\>r\<cdot\>s-x>
      hence, as <math|0\<less\>s\<Rightarrow\>0\<less\>s<rsup|-1>> we have
      that <math|0\<less\><around*|(|r\<cdot\>s-x|)>\<cdot\>s<rsup|-1>=r-x\<cdot\>s<rsup|-1>>.
      Using desnuty of <math|\<bbb-Q\>> again there exist a
      <math|\<varepsilon\><rsub|2>\<in\>\<bbb-Q\>> such that
      <math|0\<less\>\<varepsilon\><rsub|2>\<less\><around*|(|r\<cdot\>s-x|)>\<cdot\>s<rsup|-1>>.
      Take now <math|\<varepsilon\>=min<around*|(|\<varepsilon\><rsub|1>,\<varepsilon\><rsub|3>|)>>
      then we have\ 

      <\equation>
        <label|eq 9.69.036>0\<less\>\<varepsilon\>\<leqslant\>\<varepsilon\><rsub|1>\<less\>r<text|
        and >0\<less\>\<varepsilon\>\<leqslant\>\<varepsilon\><rsub|2>\<less\>0\<less\>r-x\<cdot\>s<rsup|-1>
      </equation>

      From the above we have \ <math|x\<cdot\>s<rsup|-1>\<less\>r-\<varepsilon\>>
      or as <math|0\<less\>x\<wedge\>0\<less\>s<rsup|-1>\<Rightarrow\>x\<cdot\>s<rsup|-1>>
      that <math|0\<less\>x\<cdot\>s<rsup|-1>\<less\>r-\<varepsilon\>>
      allowing use to apply [theorems: <reference|rational ordered field>,
      <reference|field order properties>] giving

      <\equation*>
        0\<less\><around*|(|r-\<varepsilon\>|)><rsup|-1>\<less\><around*|(|x\<cdot\>s<rsup|-1>|)><rsup|-1>\<equallim\><rsub|<text|[theorem:
        <reference|field inverse of product>>><around*|(|s<rsup|-1>|)><rsup|-1>\<cdot\>x<rsup|-1>=s\<cdot\>x<rsup|-1>
      </equation*>

      multiplying by <math|0\<less\>x> we get
      <math|0\<less\>x\<cdot\><around*|(|r-\<varepsilon\>|)><rsup|-1>\<less\>s>
      so that <math|>

      <\equation>
        <label|eq 9.70.036>0\<less\>x\<cdot\><around*|(|r-\<varepsilon\>|)><rsup|-1>\<in\>\<alpha\><rsub|s>
      </equation>

      As <math|0\<less\>\<varepsilon\>\<less\>r> [see eq: <reference|eq
      9.69.036>] we have <math|0\<less\>r-\<varepsilon\>\<less\>r> so that\ 

      <\equation>
        <label|eq 9.71.036>0\<less\>r-s\<in\>\<alpha\><rsub|r>
      </equation>

      Now <math|<around*|(|x\<cdot\><around*|(|r-\<varepsilon\>|)><rsup|-1>|)>\<cdot\><around*|(|r-s|)>=x>
      which combined with [eqs: <reference|eq 9.70.036>, <reference|eq
      9.71.036>] proves that <math|x\<in\>\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>.
    </description>

    So in all cases we have <math|x\<in\>\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>
    hence it follows that <math|\<alpha\><rsub|r\<cdot\>s>\<subseteq\>\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>.
    Combining this with [eq: <reference|eq 9.68.036>] proves that\ 

    <\equation*>
      \<alpha\><rsub|r\<cdot\>s>=\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>
    </equation*>
  </proof>

  <\theorem>
    <label|real rational cut properties>Let <math|r,s\<in\>\<bbb-Q\>> then we
    have\ 

    <\enumerate>
      <item><math|\<alpha\><rsub|r>+\<alpha\><rsub|s>=\<alpha\><rsub|r+s>>

      <item><math|-\<alpha\><rsub|r>=\<alpha\><rsub|-r>>

      <item><math|\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>=\<alpha\><rsub|r\<cdot\>s>>

      <item>If <math|\<alpha\><rsub|r>\<neq\>0> then
      <math|1/\<alpha\><rsub|r>\<equallim\><rsub|notation><around*|(|\<alpha\><rsub|r>|)><rsup|-1>=\<alpha\><rsub|r<rsup|-1>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>\<alpha\><rsub|r>+\<alpha\><rsub|s>> then there
      exists <math|u\<in\>\<alpha\><rsub|r>> and
      <math|v\<in\>\<alpha\><rsub|s>> such that <math|x=u+v>. As
      <math|u\<in\>\<alpha\><rsub|r>> and <math|v\<in\>\<alpha\><rsub|s>> we
      have that <math|u\<less\>r> and <math|v\<less\>s> so that
      <math|u+v\<less\>r+v> and <math|v+r\<less\>s+r> giving
      <math|x=u+v\<less\>r+s> proving that
      <math|x\<in\>\<alpha\><rsub|r>+\<alpha\><rsub|s>>. Hence we have\ 

      <\equation>
        <label|eq 9.67.035>\<alpha\><rsub|r>+\<alpha\><rsub|s>\<subseteq\>\<alpha\><rsub|r+s>
      </equation>

      Let <math|x\<in\>\<alpha\><rsub|r+s>> then <math|x\<less\>r+s> hence
      <math|x-r\<less\>s>. Using the density of <math|\<bbb-Q\>> [see
      theorem: <reference|rational densitiy>] there exist a
      <math|z\<in\>\<bbb-Q\>> such that <math|x-r\<less\>z\<less\>s>. Then
      <math|z\<in\>\<alpha\><rsub|s>> and if we define
      <math|\<varepsilon\>=z-<around*|(|x-r|)>> we have
      <math|0\<less\>\<varepsilon\>\<Rightarrow\>-\<varepsilon\>\<less\>0>.
      So <math|r-\<varepsilon\>=r+<around*|(|-\<varepsilon\>|)>\<less\>r>
      proving that <math|r-\<varepsilon\>\<in\>\<alpha\><rsub|r>>. Hence\ 

      <\equation>
        <label|eq 9.68.035><around*|(|r-\<varepsilon\>|)>+z\<in\>\<alpha\><rsub|r>+\<alpha\><rsub|s>
      </equation>

      Now

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|r-\<varepsilon\>|)>+z>|<cell|=>|<cell|r-<around*|(|z-<around*|(|x-r|)>|)>+z>>|<row|<cell|>|<cell|=>|<cell|r-z+x-r+z>>|<row|<cell|>|<cell|=>|<cell|x>>>>
      </eqnarray*>

      so that by [eq: <reference|eq 9.68.035>]
      <math|x\<in\>\<alpha\><rsub|r>+\<alpha\><rsub|s>>. Hence
      <math|\<alpha\><rsub|r+s>\<subseteq\>\<alpha\><rsub|r>+\<alpha\><rsub|s>>
      which together with [eq: <reference|eq 9.67.035>] proves\ 

      <\equation*>
        \<alpha\><rsub|r+s>=\<alpha\><rsub|r>+\<alpha\><rsub|s>
      </equation*>

      <item>This is stated in [theorem: <reference|real negastive cut of
      rational cut>]

      <item>Using [theorem: <reference|real RxR>] we have to look at the
      following five cases:

      <\description>
        <item*|<math|\<alpha\><rsub|r>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<alpha\><rsub|s>\<in\>\<bbb-R\><rsup|+>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>|<cell|=>|<cell|\<alpha\><rsub|r>\<odot\>\<alpha\><rsub|s>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|real a_r.a_s=a_r.s>]>>>|<cell|\<alpha\><rsub|r\<cdot\>s>>>>>
        </eqnarray*>

        <item*|<math|\<alpha\><rsub|r>\<in\>\<bbb-R\><rsup|+>\<wedge\>\<alpha\><rsub|s>\<in\>\<bbb-R\><rsup|->>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>|<cell|=>|<cell|-<around*|(|\<alpha\><rsub|r>\<odot\><around*|(|-\<alpha\><rsub|s>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|-<around*|(|\<alpha\><rsub|r>\<odot\>\<alpha\><rsub|-s>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|real a_r.a_s=a_r.s>]>>>|<cell|-\<alpha\><rsub|r\<cdot\><around*|(|-s|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|ring 0 1 and ->>>>|<cell|-\<alpha\><rsub|-<around*|(|r\<cdot\>s|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|\<alpha\><rsub|-<around*|(|-<around*|(|r\<cdot\>s|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|r\<cdot\>s>>>>>
        </eqnarray*>

        <item*|<math|\<alpha\><rsub|r>\<in\>\<bbb-R\><rsup|->\<wedge\>\<alpha\><rsub|s>\<in\>\<bbb-R\><rsup|+>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>|<cell|=>|<cell|-<around*|(|<around*|(|-\<alpha\><rsub|r>|)>\<odot\>\<alpha\><rsub|s>|)>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|-<around*|(|\<alpha\><rsub|-r>\<odot\>\<alpha\><rsub|s>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|real a_r.a_s=a_r.s>]>>>|<cell|-<around*|(|\<alpha\><rsub|<around*|(|-r|)>\<cdot\>s>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|ring 0 1 and ->>>>|<cell|-<around*|(|\<alpha\><rsub|-<around*|(|r\<cdot\>s|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|\<alpha\><rsub|-<around*|(|-<around*|(|r\<cdot\>s|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|r\<cdot\>s>>>>>
        </eqnarray*>

        <item*|<math|\<alpha\><rsub|r>\<in\>\<bbb-R\><rsup|->\<wedge\>\<alpha\><rsub|s>\<in\>\<bbb-R\><rsup|->>>Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>|<cell|=>|<cell|<around*|(|-\<alpha\><rsub|r>|)>\<odot\><around*|(|-\<alpha\><rsub|s>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|\<alpha\><rsub|-r>\<odot\>\<alpha\><rsub|-s>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|real a_r.a_s=a_r.s>]>>>|<cell|\<alpha\><rsub|<around*|(|-r|)>\<cdot\><around*|(|-s|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|ring 0 1 and ->]>>>|<cell|\<alpha\><rsub|r\<cdot\>s>>>>>
        </eqnarray*>

        <item*|<math|<around*|(|\<alpha\><rsub|r>,\<alpha\><rsub|s>|)>\<in\><around*|(|<around*|{|0|}>\<times\>\<bbb-R\>|)><big|cup><around*|(|\<bbb-R\>\<times\><around*|{|0|}>|)>>>Then
        we have two subcases:

        <\description>
          <item*|<math|<around*|(|\<alpha\><rsub|r>,\<alpha\><rsub|s>|)>\<in\><around*|{|0|}>\<times\>\<bbb-R\>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>|<cell|=>|<cell|0\<cdot\>\<alpha\><rsub|s>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|0>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|0\<cdot\>s>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|r\<cdot\>s>>>>>
          </eqnarray*>

          <item*|<math|<around*|(|\<alpha\><rsub|r>,\<alpha\><rsub|s>|)>\<in\>\<bbb-R\>\<times\><around*|{|0|}>>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>>|<cell|=>|<cell|\<alpha\><rsub|r>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|0>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|r\<cdot\>0>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|r\<cdot\>s>>>>>
          </eqnarray*>
        </description>
      </description>

      <item>Let <math|\<alpha\><rsub|r>\<in\>\<bbb-R\>\\<around*|{|0|}>> then
      we have the following possibilites:

      <\description>
        <item*|<math|\<alpha\><rsub|r>\<in\>\<bbb-R\><rsup|+>>>Then
        <math|<around*|(|\<alpha\><rsub|r>|)><rsup|-1>=inv<around*|(|\<alpha\><rsub|r>|)>\<equallim\><rsub|<text|[lemma:
        <reference|real inverse of rational
        cut>]>>\<alpha\><rsub|r<rsup|-1>>>

        <item*|<math|\<alpha\><rsub|r>\<in\>\<bbb-R\><rsup|->>>Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<alpha\><rsub|r>|)><rsup|-1>>|<cell|=>|<cell|-inv<around*|(|-\<alpha\><rsub|r>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|-inv<around*|(|\<alpha\><rsub|-r>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|real inverse of rational
          cut>]>>>|<cell|-\<alpha\><rsub|<around*|(|-r|)><rsup|-1>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
          <reference|rational ordered field>, <reference|field order
          properties>]>>>|<cell|-\<alpha\><rsub|-<around*|(|r<rsup|-1>|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|\<alpha\><rsub|-<around*|(|-<around*|(|r<rsup|-1>|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|r<rsup|=1>>>>>>
        </eqnarray*>
      </description>
    </enumerate>
  </proof>

  We show now that <math|\<bbb-Q\><rsub|\<bbb-R\>>> is a embedding of
  <math|\<bbb-Q\>> in <math|\<bbb-R\>> that conserves the field structure.

  <\theorem>
    <label|real field embedding Q>For <math|\<bbb-Q\><rsub|\<bbb-R\>>=<around*|{|\<alpha\><rsub|r>\|r\<in\>\<bbb-Q\>|}>>
    [definition: <reference|real QR>] we have:

    <\enumerate>
      <item><math|\<bbb-Q\><rsub|\<bbb-R\>>> is a subfield of
      <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>

      <item>The function <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
      defined by <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q|)>=\<alpha\><rsub|q>>
      is a field isomorphism
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x,y\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> then we have that
      <math|\<exists\>r,s\<in\>\<bbb-Q\>> such that
      <math|x=\<alpha\><rsub|r>> and <math|y=\<alpha\><rsub|s>>. Then we
      have:

      <\enumerate>
        <item><math|x+y=\<alpha\><rsub|r>+\<alpha\><rsub|s>\<equallim\><rsub|<text|[theorem:
        <reference|real rational cut properties>]>>\<alpha\><rsub|r+s>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>

        <item><math|x\<cdot\>y=\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>\<equallim\><rsub|<text|[theorem:
        <reference|real rational cut properties>]>>\<alpha\><rsub|r\<cdot\>s>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>

        <item>If <math|x\<neq\>0> then <math|x<rsup|-1>=<around*|(|\<alpha\><rsub|r>|)><rsup|-1>=\<alpha\><rsub|r<rsup|-1>>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>

        <item><math|0=\<alpha\><rsub|0>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>

        <item><math|1=\<alpha\><rsub|1>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>
      </enumerate>

      which proves that <math|\<bbb-Q\><rsub|\<bbb-R\>>> is a subfield of
      <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>.

      <item>Using [theorem: <reference|real QR bijection>] it follows that\ 

      <\equation*>
        i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:\<bbb-Q\>\<rightarrow\>\<bbb-R\><text|
        is a bijection>
      </equation*>

      Next we have to prove the homeomorphism properties:

      <\enumerate>
        <item>If <math|r,s\<in\>\<bbb-Q\>> then
        <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r+s|)>=\<alpha\><rsub|r+s>\<equallim\><rsub|<text|[theorem:
        <reference|real rational cut properties>]>>\<alpha\><rsub|r>+\<alpha\><rsub|s>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r|)>+i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|s|)><rsub|>>

        <item>If <math|r,s\<in\>\<bbb-Q\>> then
        <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r\<cdot\>s|)>=\<alpha\><rsub|r>\<cdot\>\<alpha\><rsub|s>\<equallim\><rsub|<text|[theorem:
        <reference|real rational cut properties>]>>\<alpha\><rsub|r\<cdot\>s>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r|)>\<cdot\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|s|)>>

        <item><math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|1|)>=\<alpha\><rsub|1>=1>
      </enumerate>
    </enumerate>
  </proof>

  <section|Order relation on <math|\<bbb-R\>>>

  <\theorem>
    <label|real properties positive numbers>If
    <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>> then\ 

    <\enumerate>
      <item><math|\<alpha\>+\<beta\>\<in\>\<bbb-R\><rsup|+>>

      <item><math|\<alpha\>\<cdot\>\<beta\>\<in\>\<bbb-R\><rsup|+>>

      <item><math|\<alpha\><rsup|-1>\<in\>\<bbb-R\><rsup|+>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>> we have that
      <math|0\<in\>\<alpha\>> and <math|0\<in\>\<beta\>> then
      <math|0=0+0\<in\>\<alpha\>+\<beta\>> proving that\ 

      <\equation*>
        \<alpha\>+\<beta\>\<in\>\<bbb-R\><rsup|+>
      </equation*>

      <item>As <math|0\<in\>\<bbb-Q\><rsup|-><rsub|0>> we have
      <math|\<alpha\>\<odot\>\<beta\>\<in\>\<bbb-R\><rsup|+>> so that

      <\equation*>
        \<alpha\>\<cdot\>\<beta\>\<equallim\><rsub|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+>>\<alpha\>\<odot\>\<beta\>\<in\>\<bbb-R\><rsup|+>
      </equation*>

      <item>We have <math|\<alpha\><rsup|-1>\<equallim\><rsub|\<alpha\>\<in\>\<bbb-R\><rsup|+>>inv<around*|(|\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>>
    </enumerate>

    \;

    \;
  </proof>

  We define now the relation on <math|\<bbb-R\>> that later will be proved to
  be a order relation, this definition mirrors the definition of order in
  <math|\<bbb-Z\>> and <math|\<bbb-Q\>> and is the reason why we have defined
  <math|\<bbb-R\><rsup|+>>. One problem is that
  <math|0\<nin\>\<bbb-R\><rsup|+>>, so we have first to define
  <math|\<less\>> and base <math|\<leqslant\>> on <math|\<less\>>.

  <\definition>
    <label|real strict order relation definition><math|\<less\>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
    is defined by\ 

    <\equation*>
      \<less\>=<around*|{|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\>\<times\>\<bbb-R\>\|\<beta\>+<around*|(|-\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>|}>
    </equation*>

    or in other words for <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> we have\ 

    <\equation*>
      \<alpha\>\<less\>\<beta\>\<Leftrightarrow\>\<beta\>-\<alpha\>=\<beta\>+<around*|(|-\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>
    </equation*>
  </definition>

  <\definition>
    <label|real order relation (1)><math|\<leqslant\>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
    is defined nu\ 

    <\equation*>
      \<leqslant\>=<around*|{|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-R\>\<times\>\<bbb-R\>\|\<alpha\>=\<beta\>\<vee\>\<beta\>+<around*|(|-\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>|}>=<around*|{|<around*|(|\<alpha\>,\<beta\>|)>\|\<bbb-R\>\<times\>\<bbb-R\>\<vee\>\<alpha\>\<less\>\<beta\>|}>
    </equation*>

    or in other words for <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> we have\ 

    <\equation*>
      \<alpha\>\<leqslant\>\<beta\>\<Leftrightarrow\>\<alpha\>=\<beta\>\<vee\>\<alpha\>\<less\>\<beta\>\<Leftrightarrow\>\<alpha\>=\<beta\>\<vee\>\<beta\>-\<alpha\>=\<beta\>+<around*|(|-\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>
    </equation*>
  </definition>

  The following theorem shows a simpler way to descide if
  <math|\<alpha\>\<less\>\<beta\>> or <math|\<alpha\>\<leqslant\>\<beta\>>

  \;

  <\theorem>
    <label|real order relation eauivalences><math|\<forall\>\<alpha\>\<comma\>\<beta\>\<in\>\<bbb-R\>>
    we have\ 

    <\enumerate>
      <item><math|\<alpha\>\<less\>\<beta\>\<Leftrightarrow\>\<alpha\>\<subset\>\<beta\>>
      [strict inclusion]

      <item><math|\<alpha\>\<leqslant\>\<beta\>\<Leftrightarrow\>\<alpha\>\<subseteq\>\<beta\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|\<alpha\>\<less\>\<beta\>> we
        have that <math|\<beta\>+<around*|(|-\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>>
        so that

        <\equation>
          <label|eq 9.75.036>0\<in\>\<beta\>+<around*|(|-\<alpha\>|)>
        </equation>

        Let <math|r\<in\>\<alpha\>>. If <math|-r\<in\>-\<alpha\>> then by the
        definition of a negative cut [see definition: <reference|real
        negative cut>] we have <math|\<alpha\>=-<around*|(|-\<alpha\>|)>\<in\>\<bbb-Q\>\\\<alpha\>>
        contradicting <math|r\<in\>\<alpha\>>. Hence we must have that
        <math|-r\<nin\>-\<alpha\>> or

        <\equation>
          <label|eq 9.76.036>-r\<in\>\<bbb-Q\>\\-\<alpha\>
        </equation>

        As <math|0\<in\>\<beta\>+<around*|(|-\<alpha\>|)>> [see eq:
        <reference|eq 9.75.036>] there exists <math|s\<in\>\<beta\>> and a
        <math|t\<in\>-\<alpha\>> such that <math|0=s+t> or <math|s=-t>. As
        <math|t\<in\>-\<alpha\>> and <math|-r\<in\>\<bbb-Q\>\\-\<alpha\>>
        [see eq: <reference|eq 9.76.036>] it follows from [definition:
        <reference|real Dedekind's cut> (3)] that <math|t\<less\>-r> or
        <math|r\<less\>-t=s\<in\>\<beta\>>. So
        <math|r\<less\>s\<in\>\<beta\>> which by [theorem: <reference|real
        property to determine membership of a cut>] proves that
        <math|r\<in\>\<beta\>>. Hence we have

        <\equation>
          <label|eq 9.77.036>\<alpha\>\<subseteq\>\<beta\>
        </equation>

        If now <math|\<alpha\>=\<beta\>> then
        <math|\<beta\>+<around*|(|-\<alpha\>|)>=\<beta\>+<around*|(|-\<beta\>|)>=0=a<rsub|0>>
        so as by [eq: <reference|eq 9.75.036>]
        <math|0\<in\>\<beta\>+<around*|(|-\<alpha\>|)>> we find that
        <math|0\<in\>\<alpha\><rsub|0>=<around*|{|q\<in\>\<bbb-Q\>\|q\<less\>0|}>>
        a contradiction, so <math|\<alpha\>\<neq\>\<beta\>>, which combined
        with [eq: <reference|eq 9.77.036>] gives

        <\equation*>
          \<alpha\>\<subset\>\<beta\>
        </equation*>

        <item*|<math|\<Leftarrow\>>>As <math|\<alpha\>\<subset\>\<beta\>>
        then there exist a <math|r\<in\>\<beta\>> such that
        <math|r\<nin\>\<alpha\>> or

        <\equation>
          <label|eq 9.78.036>r\<in\>\<bbb-Q\>\\\<alpha\>
        </equation>

        As by [definiton: <reference|real Dedekind's cut> (4)]
        <math|max<around*|(|\<beta\>|)>> does not exist we have

        <\equation*>
          \<exists\>r<rprime|'>\<in\>\<beta\><text| such that
          >r\<less\>r<rprime|'>
        </equation*>

        If <math|r<rprime|'>\<in\>\<alpha\>> then as
        <math|r\<in\>\<bbb-Q\>\\\<alpha\>> we have by [definition:
        <reference|real Dedekind's cut> (3)] that <math|r<rprime|'>\<less\>r>
        contradicting <math|r\<less\>r<rprime|'>>, hence
        <math|r<rprime|'>\<nin\>a> or

        <\equation*>
          r<rprime|'>\<in\>\<bbb-Q\>\\\<alpha\>
        </equation*>

        So we have that <math|-<around*|(|-r<rprime|'>|)>\<in\>\<bbb-Q\>\\\<alpha\>>
        and <math|r\<less\>r<rprime|'>=-<around*|(|-r<rprime|'>|)>> where
        <math|r\<in\>\<bbb-Q\>\\\<alpha\>> which by the definition of a
        negative cut [see definition: <reference|real negative cut>] proves
        that <math|-r<rprime|'>\<in\>-\<alpha\>>. As
        <math|r<rprime|'>\<in\>\<beta\>> we have that
        <math|0=r<rprime|'>+<around*|(|-r<rprime|'>|)>\<in\>\<beta\>+<around*|(|-\<alpha\>|)>>
        proving that <math|\<beta\>+<around*|(|-\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>>
        or that\ 

        <\equation*>
          \<alpha\>\<less\>\<beta\>
        </equation*>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|\<alpha\>\<leqslant\>\<beta\>>
        we have by (1) that <math|\<alpha\>=\<beta\>\<vee\>\<alpha\>\<subset\>\<beta\>>
        so that <math|\<alpha\>\<subseteq\>\<beta\>>

        <item*|<math|\<Leftarrow\>>>If <math|\<alpha\>\<subseteq\>\<beta\>>
        then <math|\<alpha\>=\<beta\>\<wedge\>\<alpha\>\<subset\>\<beta\>> so
        that by (1) <math|\<alpha\>=\<beta\>\<vee\>\<alpha\>\<less\>b> or
        <math|a\<leqslant\>\<beta\>>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|real 0\<less\>1>For <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
    we have that <math|0\<less\>1>
  </corollary>

  <\proof>
    Note that <math|1=\<alpha\><rsub|1>=<around*|{|q\<in\>\<bbb-Q\>\|q\<less\>1|}>>
    and <math|1=<around*|{|q\<in\>\<bbb-Q\>\|q\<less\>1|}>>. So if
    <math|q\<in\>\<alpha\><rsub|1>> we have in
    <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>> that
    <math|q\<less\>0\<less\>1> proving that <math|q\<in\>\<alpha\><rsub|1>>.
    Hence we have that\ 

    <\equation*>
      \<alpha\><rsub|0>\<subseteq\>\<alpha\><rsub|1>
    </equation*>

    Now using [see theorem: <reference|rational densitiy>] there exist a
    <math|q\<in\>\<bbb-Q\>> such that <math|0\<less\>q\<less\>1> hence
    <math|q\<in\>\<alpha\><rsub|1>> but <math|q\<nin\>\<alpha\><rsub|1>>
    proving that\ 

    <\equation*>
      \<alpha\><rsub|0>\<subset\>\<alpha\><rsub|1>
    </equation*>

    whcih by the previous theorem [theorem: <reference|real order relation
    eauivalences>] proves that\ 

    <\equation*>
      0\<less\>1
    </equation*>
  </proof>

  <\theorem>
    <label|real totally ordered><math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
    is a totally ordered set
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexivity>If <math|\<alpha\>\<in\>\<bbb-R\>> then
      <math|\<alpha\>\<subseteq\>\<alpha\>> so that by [theorem:
      <reference|real order relation eauivalences>]
      <math|\<alpha\>\<leqslant\>\<alpha\>>

      <item*|anti symmetry>If <math|\<alpha\>\<leqslant\>\<beta\>> and
      <math|\<beta\>\<leqslant\>\<alpha\>> then by \ [theorem:
      <reference|real order relation eauivalences>] we have
      <math|\<alpha\>\<subseteq\>\<beta\>> and
      <math|\<beta\>\<subseteq\>\<alpha\>> hence <math|\<alpha\>=\<beta\>>.

      <item*|transitivity>If <math|\<alpha\>\<leqslant\>\<beta\>> and
      <math|\<beta\>\<leqslant\>\<gamma\>> then \ by \ [theorem:
      <reference|real order relation eauivalences>] we have
      <math|\<alpha\>\<subseteq\>\<beta\>\<wedge\>\<beta\>\<subseteq\>\<gamma\>>
      so that <math|\<alpha\>\<subseteq\>\<gamma\>> whuch by \ [theorem:
      <reference|real order relation eauivalences>] proves that
      <math|\<alpha\>\<leqslant\>\<gamma\>>

      <item*|totally ordering>Let <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>>
      then for <math|\<alpha\>+<around*|(|-\<beta\>|)>> we have, as
      <math|\<bbb-R\>\<equallim\><rsub|<text|[theorem: <reference|real
      division of real numbers in positive and negative
      numbers>]>>\<bbb-R\><rsup|+><big|cup>\<bbb-R\><rsup|-><big|cup><around*|{|0|}>>,
      either:\ 

      <\description>
        <item*|<math|\<alpha\>+<around*|(|-\<beta\>|)>\<in\>\<bbb-R\><rsup|+>>>Then
        <math|\<alpha\>\<less\>\<beta\>\<Rightarrow\>\<alpha\>\<leqslant\>\<beta\>>

        <item*|<math|\<alpha\>+<around*|(|-\<beta\>|)>\<in\>\<bbb-R\><rsup|->>>Then
        <math|\<beta\>+<around*|(|-\<alpha\>|)>=-<around*|(|\<alpha\>+<around*|(|-\<beta\>|)>|)>\<in\>\<bbb-R\><rsup|+>>
        so that <math|\<beta\>\<less\>\<alpha\>\<Rightarrow\>\<beta\>\<leqslant\>\<alpha\>>

        <item*|<math|\<alpha\>+<around*|(|-\<beta\>|)>=0>>Then
        <math|\<alpha\>=\<beta\>> hence <math|\<alpha\>\<leqslant\>\<beta\>>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|real R+ R->We have the following for <math|\<bbb-R\>>\ 

    <\enumerate>
      <item><math|\<bbb-R\><rsup|+>=<around*|{|\<alpha\>\<in\>\<bbb-R\>\|0\<less\>\<alpha\>|}>>

      <item><math|\<bbb-R\><rsup|+><rsub|0>=<around*|{|\<alpha\>\<in\>\<bbb-R\>\|0\<leqslant\>\<alpha\>|}>>

      <item><math|\<bbb-R\><rsup|->=<around*|{|\<alpha\>\<in\>\<bbb-R\>\|\<alpha\>\<less\>0|}>>

      <item><math|\<bbb-R\><rsup|-><rsub|0>=<around*|{|\<alpha\>\<in\>\<bbb-R\>\|\<alpha\>\<leqslant\>0|}>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<alpha\>\<in\>\<bbb-R\><rsup|+>\<Leftrightarrow\>\<alpha\>+<around*|(|-0|)>\<in\>\<bbb-R\><rsup|+>\<Leftrightarrow\>0\<less\>\<alpha\>\<Leftrightarrow\>\<alpha\>\<in\><around*|{|\<alpha\>\<in\>\<bbb-R\>\|0\<less\>\<alpha\>|}>>

      <item><math|\<alpha\>\<in\>\<bbb-R\><rsup|+><rsub|0>\<Leftrightarrow\>\<alpha\>=0\<vee\>\<alpha\>+<around*|(|-0|)>\<in\>\<bbb-R\><rsup|+>\<Leftrightarrow\>\<alpha\>=0\<vee\>0\<less\>\<alpha\>\<Leftrightarrow\>0\<in\>\<alpha\>\<Leftrightarrow\>\<alpha\>\<in\><around*|{|\<alpha\>\<in\>\<bbb-R\>\|0\<leqslant\>\<alpha\>|}>>.

      <item><math|\<alpha\>\<in\>\<bbb-R\><rsup|->\<Leftrightarrow\>-\<alpha\>\<in\>\<bbb-R\><rsup|+>\<Leftrightarrow\>0+<around*|(|-\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>\<Leftrightarrow\>0\<less\>\<alpha\>\<Leftrightarrow\>\<alpha\>\<in\><around*|{|\<alpha\>\<in\>\<bbb-R\>\|\<alpha\>\<less\>0|}>>

      <item> <math|\<alpha\>\<in\>\<bbb-R\><rsup|-><rsub|0>\<Leftrightarrow\>\<alpha\>=0\<vee\>\<alpha\>\<in\>\<bbb-R\><rsup|->\<Leftrightarrowlim\>\<alpha\>=0\<vee\>0+<around*|(|-\<alpha\>|)>\<in\>\<bbb-R\><rsup|+>\<Leftrightarrow\>\<alpha\>=0\<vee\>\<alpha\>\<less\>0\<Leftrightarrow\>\<alpha\>\<leqslant\>0\<Leftrightarrow\>\<alpha\>\<in\><around*|{|\<alpha\>\<in\>\<bbb-R\>\|\<alpha\>\<leqslant\>0|}>>
    </enumerate>
  </proof>

  <\theorem>
    <label|real ordered field><math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>,\<leqslant\>|\<rangle\>>>
    is a ordered field\ 
  </theorem>

  <\proof>
    First using [theorem: <reference|real field>] we have that
    <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> is a field.
    Second we have\ 

    <\enumerate>
      <item>If <math|x,y,z\<in\>\<bbb-R\>> with <math|x\<less\>y> then

      <\equation>
        <label|eq 9.79.046>y+<around*|(|-x|)>\<in\>\<bbb-R\><rsup|+>,
      </equation>

      further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|y+z|)>+<around*|(|-<around*|(|x+z|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|group inverse of x.y>]>>>|<cell|<around*|(|y+z|)>+<around*|(|<around*|(|-x|)>+<around*|(|-z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|y+z|)>+<around*|(|<around*|(|-z|)>+<around*|(|-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|y+<around*|(|z+<around*|(|<around*|(|-z|)>+<around*|(|-x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|y+<around*|(|<around*|(|z+<around*|(|-z|)>|)>+<around*|(|-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|y+<around*|(|0+<around*|(|-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|y+<around*|(|-x|)>>>>>
      </eqnarray*>

      which by [eq: <reference|eq 9.79.046>] proves that
      <math|><math|<around*|(|y+z|)>+<around*|(|-<around*|(|x+z|)>|)>\<in\>\<bbb-R\><rsup|+>>
      or\ 

      <\equation*>
        x+z\<less\>y+z
      </equation*>

      <item>If <math|x,y\<in\>\<bbb-R\>> with <math|0\<less\>x> and
      <math|0\<less\>y> then by [theorem: <reference|real R+ R->]
      <math|x,y\<in\>\<bbb-R\><rsup|+>>. So by [theorem: <reference|real
      properties positive numbers>] we have that
      <math|x\<cdot\>y\<in\>\<bbb-R\><rsup|+>> which by \ [theorem:
      <reference|real R+ R-> proves that\ 

      <\equation*>
        0\<less\>x\<cdot\>y
      </equation*>
    </enumerate>
  </proof>

  <\corollary>
    <label|real a\<less\>a+1 and a-1\<less\>a>Let
    <math|\<alpha\>\<in\>\<bbb-R\>>

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\><text| we have
      >\<alpha\>\<less\>\<alpha\>+1>

      <item><math|\<alpha\>-1\<less\>\<alpha\>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>As <math|0\<less\>1> [see corollary: <reference|real
        0\<less\>1>[ we have by [theorems: <reference|real ordered field>,
        <reference|field order properties>] that
        <math|\<alpha\>=0+\<alpha\>\<less\>1+\<alpha\>=\<alpha\>+1>

        <item>As <math|0\<less\>1> we have by [theorems: <reference|real
        ordered field>, <reference|field order properties>] that
        <math|-1\<less\>0> hence suing [theorems: <reference|real ordered
        field>, <reference|field order properties>] again we have
        <math|\<alpha\>-1=<around*|(|-1|)>+\<alpha\>\<less\>0+\<alpha\>=\<alpha\>>.
      </enumerate>
    </proof>
  </corollary>

  <\theorem>
    <label|real 0\<less\>=a,b and a+b=0 then a=0=b>If
    <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+><rsub|0>> [so that
    <math|0\<leqslant\>\<alpha\>\<wedge\>*0\<leqslant\>\<beta\>>] such that
    <math|\<alpha\>+\<beta\>=0> then <math|\<alpha\>=0=\<beta\>>
  </theorem>

  <\proof>
    As <math|0\<leqslant\>\<alpha\>>, <math|0\<leqslant\>\<beta\>> then we
    have either

    <\description>
      <item*|<math|0\<less\>\<alpha\>>>Then
      <math|\<beta\>=0+\<beta\>\<less\>\<alpha\>+\<beta\>=0> hence
      <math|\<beta\>\<less\>0> contradicting <math|0\<leqslant\>\<beta\>>, so
      this case does not occur.

      <item*|<math|0\<less\>\<beta\>>>Then
      <math|\<alpha\>=\<alpha\>+0\<less\>\<alpha\>+\<beta\>=0> hence
      <math|\<alpha\>\<less\>0> contradicting <math|0\<leqslant\>\<alpha\>>,
      so this case does not occur.

      <item*|<math|\<alpha\>=\<beta\>=0>>This is the only resting case
      porving that <math|\<alpha\>=\<beta\>=0>
    </description>
  </proof>

  <\lemma>
    <label|real r\<less\>s=\<gtr\>a_r\<less\>a_s>Let
    <math|r,s\<in\>\<bbb-Q\>> then we have\ 

    <\enumerate>
      <item><math|r\<less\>s\<Leftrightarrow\>\<alpha\><rsub|r>\<less\>\<alpha\><rsub|s>>

      <item><math|r\<leqslant\>s\<Leftrightarrow\>\<alpha\><rsub|r>\<less\>\<alpha\><rsub|s>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|x\<in\>\<alpha\><rsub|r>> then
        <math|x\<less\>r> which as <math|r\<less\>s> proves that
        <math|x\<less\>s> hence <math|x\<in\>\<alpha\><rsub|s>>, so
        <math|\<alpha\><rsub|r>\<subseteq\>\<alpha\><rsub|s>>. Further as
        <math|r\<less\>s> we have by the density of <math|\<bbb-Q\>> [see
        theorem: <reference|rational densitiy>] that there exists a
        <math|q\<in\>\<bbb-Q\>> such that <math|r\<less\>q\<less\>s> hence
        <math|q\<in\>\<alpha\><rsub|s>> and <math|q\<nin\>r>, proving that
        <math|\<alpha\><rsub|r>\<subset\>\<alpha\><rsub|s>>. By [theorem:
        <reference|real order relation eauivalences>] it follows then that\ 

        <\equation*>
          \<alpha\><rsub|r>\<less\>\<alpha\><rsub|s>
        </equation*>

        <item*|<math|\<Leftarrow\>>>If <math|\<alpha\><rsub|r>\<less\>\<alpha\><rsub|s>>
        then we have by [theorem: <reference|real order relation
        eauivalences>] that <math|\<alpha\><rsub|r>\<subset\>\<alpha\><rsub|s>>.
        Assume that <math|s\<leqslant\>r> then
        <math|\<forall\>t\<in\>\<alpha\><rsub|s>> we have
        <math|t\<less\>s\<leqslant\>r\<Rightarrow\>t\<less\>r\<Rightarrow\>t\<in\>\<alpha\><rsub|r>>
        proving that <math|\<alpha\><rsub|s>\<subseteq\>\<alpha\><rsub|r>>
        contradicting <math|\<alpha\><rsub|r>\<subset\>\<alpha\><rsub|s>>. As
        the assumption <math|s\<leqslant\>r> leads to a contradiction we must
        have that <math|r\<less\>s>.
      </description>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|r\<leqslant\>s>|<cell|\<Leftrightarrow\>>|<cell|r=s\<vee\>r\<less\>s>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<alpha\><rsub|r>=\<alpha\><rsub|s>\<vee\>r\<less\>s>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|\<alpha\><rsub|r>=a<rsub|s>\<vee\>\<alpha\><rsub|r>\<less\>\<alpha\><rsub|s>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<alpha\><rsub|r>\<leqslant\>\<alpha\><rsub|s>>>>>
      </eqnarray*>

      If <math|r\<leqslant\>s> then we have either <math|r=s> giving
      <math|\<alpha\><rsub|r>=\<alpha\><rsub|s>\<Rightarrow\>\<alpha\><rsub|r>\<subseteq\>\<alpha\><rsub|s>>
      or <math|r\<less\>s\<Rightarrowlim\><rsub|<around*|(|1|)>>\<alpha\><rsub|r>\<less\>\<alpha\><rsub|s>\<Rightarrow\>\<alpha\><rsub|r>\<leqslant\>a<rsub|s>>
    </enumerate>

    \;
  </proof>

  The above lemma allows us to show that the embedding of <math|\<bbb-Q\>> in
  <math|\<bbb-R\>> by <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>> is not
  only preserving the field structure but alsp the order.

  <\theorem>
    <label|real embedding of Q and order>The field isomorphism
    <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>>>
    defined by <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r|)>=\<alpha\><rsub|r>>
    [see theorem: <reference|real field embedding Q>] is a order isomorphism
    between <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>> and
    <math|<around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
  </theorem>

  <\proof>
    Using [theorem: <reference|real field embedding Q>] we have that
    <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:\<bbb-Q\>\<rightarrow\>\<bbb-Q\><rsub|\<bbb-R\>>>
    is a bijection. Further for <math|r,s\<in\>\<bbb-Q\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|r\<leqslant\>s>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
      <reference|real r\<less\>s=\<gtr\>a_r\<less\>a_s>]>>>|<cell|\<alpha\><rsub|r>\<leqslant\>\<alpha\><rsub|s>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r|)>\<leqslant\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|s|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|real QR is not conditional complete><math|<around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
    is not conditional complete
  </theorem>

  <\proof>
    We prove this by contradiction. Assume that
    <math|<around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
    is conditional complete. Using the previous theorem [theorem:
    <reference|real embedding of Q and order>] there exists a order
    isomorphism <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:\<bbb-Q\>\<rightarrow\>\<bbb-Q\><rsub|\<bbb-R\>>>,
    by [theorem: <reference|order isomorphism condition (2)>]
    <math|<around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>:\<bbb-Q\><rsub|\<bbb-R\>>\<rightarrow\>\<bbb-R\>>
    is a order isomorphism, hence using [theorem: <reference|order
    isomorphism and conditional complete>] we have that
    <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>> is
    conditional complete, contradiction the fact that by [theorem:
    <reference|rational rational numbers are not conditional complete>]
    <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>> is not
    conditional complete. So the assumption is wrong and
    <math|<around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
    is not conditional complete.
  </proof>

  We have seen in [theorem: <reference|rational rational numbers are not
  conditional complete>] that the rational numbers are not conditional
  complete [causing <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
  to be not conditional complete], the prime reason that we construct the
  real numbers is that the real numbers are conditional complete.

  <\theorem>
    <label|real conditional complete><math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
    is conditional complete [defniition: <reference|order conditional
    complete order>] in other words\ 

    <\equation*>
      \<forall\>S\<subseteq\>\<bbb-R\><text| with
      >S\<neq\>\<varnothing\><text| such that
      <math|\<exists\>\<upsilon\>\<in\>\<bbb-R\><text| such that
      <math|\<forall\>\<alpha\>\<in\>S<text| we have
      >\<alpha\>\<leqslant\>\<upsilon\>>>> we have that
      >sup<around*|(|S|)><text| exist>
    </equation*>

    Using [theorem: <reference|order conditional complete alternatives>] this
    is equivalent with

    <\equation*>
      \<forall\>S\<subseteq\>\<bbb-R\><text| with
      >S\<neq\>\<varnothing\><text| such that
      <math|\<exists\>\<lambda\>\<in\>\<bbb-R\><text| such that
      <math|\<forall\>\<alpha\>\<in\>S<text| we have
      >\<lambda\>\<leqslant\>\<alpha\>>>> we have that
      >inf<around*|(|S|)><text| exist>
    </equation*>
  </theorem>

  <\proof>
    Let <math|S\<subseteq\>\<bbb-R\>> with <math|S\<neq\>0> such that there
    exists a <math|\<mu\>\<in\>S> such that <math|\<forall\>\<alpha\>\<in\>S>
    we have <math|\<alpha\>\<leqslant\>\<upsilon\>>. Define <math|\<gamma\>>
    by

    <\equation*>
      \<gamma\>=<around*|{|q\<in\>\<bbb-Q\>\|\<exists\>\<alpha\>\<in\>S\|x\<in\>\<alpha\>|}>
    </equation*>

    First we prove that <math|\<gamma\>\<in\>\<bbb-R\>> [or <math|\<gamma\>>
    is a Dedekind cut]

    <\enumerate>
      <item>As <math|S\<neq\>\<varnothing\>> there exist a
      <math|\<alpha\>\<in\>S\<subseteq\>\<bbb-R\>>. As <math|\<alpha\>> is a
      Dedekind cut we have by [definition: <reference|real Dedekind's cut>
      (1)] that <math|\<alpha\>\<neq\>\<varnothing\>>. Hence
      <math|\<exists\>q\<in\>\<alpha\>\<subseteq\>\<bbb-Q\>> such that
      <math|q\<in\>\<gamma\>>, proving that

      <\equation*>
        \<gamma\>\<neq\>\<varnothing\>
      </equation*>

      <item>As <math|S\<neq\>\<varnothing\>> there exist a
      <math|\<alpha\>\<in\>S>, hence as <math|\<upsilon\>> is a upper bound
      of <math|S> we have <math|\<alpha\>\<leqslant\>\<beta\>\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|real order relation eauivalences>]>>\<alpha\>\<subseteq\>\<beta\>>.
      As <math|\<beta\>\<in\>\<bbb-R\>> we have by [definition:
      <reference|real Dedekind's cut> (2)] that
      <math|\<beta\>\<neq\>\<bbb-Q\>> hence <math|\<exists\>q\<in\>\<bbb-Q\>>
      such that <math|x\<nin\>\<beta\>\<Rightarrowlim\><rsub|\<alpha\>\<subseteq\>\<beta\>>x\<nin\>\<alpha\>>
      proving that\ 

      <\equation*>
        \<gamma\>\<neq\>\<bbb-Q\>
      </equation*>

      <item>Let <math|r\<in\>\<gamma\>> and
      <math|s\<in\>\<bbb-Q\>\\\<gamma\>>. As <math|r\<in\>\<gamma\>> there
      exists a <math|\<alpha\>\<in\>S> such that <math|r\<in\>\<alpha\>> and
      as <math|s\<in\>\<bbb-Q\>\\\<gamma\>> we have that
      <math|\<forall\>\<zeta\>\<in\>S> we have <math|s\<nin\>\<zeta\>>, so in
      particular <math|s\<in\>\<alpha\>> hence
      <math|s\<in\>\<bbb-Q\>\\\<alpha\>>. Using [definition: <reference|real
      Dedekind's cut> (3)] we have that <math|r\<less\>s>. So

      <\equation*>
        <text|If >r\<in\>\<gamma\>\<wedge\>s\<in\>\<bbb-Q\>\\\<gamma\><text|
        then >r\<less\>s
      </equation*>

      <item>Assune that <math|\<gamma\>> has a greatest element <math|m> then\ 

      <\equation>
        <label|eq 9.82.036>m\<in\>\<gamma\><text| and
        >\<forall\>r\<in\>\<gamma\><text| we have >r\<leqslant\>m
      </equation>

      Now as <math|m\<in\>\<gamma\>> there exist a <math|\<alpha\>\<in\>S>
      such that <math|m\<in\>\<alpha\>>. As by [definition: <reference|real
      Dedekind's cut> (4)] <math|\<alpha\>> has no greatest element there
      exist a <math|s\<in\>\<alpha\>> such that <math|m\<less\>s>. As
      <math|s\<in\>\<alpha\>\<in\>S> it follows that <math|s\<in\>\<gamma\>>
      so by [eq: <reference|eq 9.82.036>] we must have that
      <math|s\<leqslant\>m> contradicting <math|s\<less\>m>. So the
      assumption is wrong and we have\ 

      <\equation*>
        \<gamma\><text| has no greatest element>
      </equation*>
    </enumerate>

    From (1),(2),(3) and (4) we conclude that <math|\<gamma\>> is a Dedekind
    cut, hence

    <\equation*>
      \<gamma\>\<in\>\<bbb-R\>
    </equation*>

    Next we proof that <math|\<gamma\>> is a upper bound of <math|S>. So let
    <math|\<alpha\>\<in\>S> then if <math|q\<in\>\<alpha\>> we have by
    definition that <math|q\<in\>\<gamma\>> proving that
    <math|\<alpha\>\<subseteq\>\<gamma\>> which by [theorem: <reference|real
    order relation eauivalences>] results in
    <math|\<alpha\>\<leqslant\>\<gamma\>>. Hence\ 

    <\equation*>
      \<gamma\><text| is a upper bound of S>
    </equation*>

    Finally let <math|\<lambda\>\<in\>\<upsilon\><around*|(|S|)>=<around*|{|\<alpha\>\<in\>\<bbb-R\>\|\<alpha\><text|
    is a upper bound of >S|}>>. If <math|q\<in\>\<gamma\>> there exist a
    <math|\<alpha\>\<in\>\<cal-S\>> such that <math|q\<in\>\<alpha\>>, as
    <math|\<lambda\>> is a upper bound of <math|S> we have
    <math|\<alpha\>\<leqslant\>\<lambda\>\<Rightarrowlim\><rsub|<text|[theorem:
    <reference|real order relation eauivalences>]>>\<alpha\>\<subseteq\>\<lambda\>>,
    so <math|q\<in\>\<lambda\>>, proving that
    <math|\<gamma\>\<subseteq\>\<lambda\>> or by [theorem: <reference|real
    order relation eauivalences>] that <math|\<gamma\>\<leqslant\>\<lambda\>>.
    Hence <math|\<gamma\>> is the least element of
    <math|\<upsilon\><around*|(|S|)>> which by definition proves that\ 

    <\equation*>
      sup<around*|(|S|)> exist
    </equation*>
  </proof>

  As we have show that <math|<around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
  is not conditional complete and <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
  is conditional complete we conclude that
  <math|\<bbb-Q\><rsub|\<bbb-R\>>\<neq\>\<bbb-R\>> so there exist real
  numbers different from embedded rational numbers. This is expressed in the
  following corollary.

  <\corollary>
    <label|real irrational numbers><math|<dueto|Irrational
    Numbers>\<bbb-Q\><rsub|\<bbb-R\>>\<subset\>\<bbb-R\>> so that
    <math|\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>\<neq\>\<varnothing\>>. The set
    <math|\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>> is called the set of
    <with|font-series|bold|irrational numbers>.
  </corollary>

  <\proof>
    By [theorem: <reference|real QR is not conditional complete>]
    <math|<around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
    is not conditional complete. Hence there exists a non empoty
    <math|S\<subseteq\>\<bbb-Q\><rsub|\<bbb-R\>>> with a upper bound
    <math|\<upsilon\>> such that <math|sup<around*|(|S|)>> does not exist in
    <math|\<bbb-Q\><rsub|\<bbb-R\>>>. As <math|\<bbb-Q\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>>
    we have <math|S\<subseteq\>\<bbb-R\>> so that <math|s=sup<around*|(|A|)>>
    exist. If now <math|s\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> then it would be a
    upper bound of <math|S> and if <math|b\<in\>\<bbb-Q\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>>
    of <math|S> is another upper bound of <math|S> it is also a upper bound
    of <math|S> in <math|\<bbb-R\>> and thus <math|s\<leqslant\>b> so
    <math|s> would be the supremum of <math|S> in
    <math|\<bbb-Q\><rsub|\<bbb-R\>>> contradicting the fact that
    <math|sup<around*|(|A|)>> does not exists in
    <math|\<bbb-Q\><rsub|\<bbb-R\>>>. Hence
    <math|s\<in\>\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>>.
  </proof>

  <\theorem>
    <label|real inf or sup of -S>Let <math|S\<subseteq\>\<bbb-R\>> with
    <math|S\<neq\>\<varnothing\>> then for
    <math|-S=<around*|{|-s\|s\<in\>S|}>> we have:

    <\enumerate>
      <item>If <math|sup<around*|(|S|)>> exist then
      <math|inf<around*|(|-S|)>> exist and
      <math|inf<around*|(|-S|)>=-sup<around*|(|S|)>>

      <item>If <math|inf<around*|(|S|)>> exist then
      <math|sup<around*|(|-S|)>> exist and
      <math|sup<around*|(|-S|)>=-inf<around*|(|S|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|s\<in\>-S> then <math|\<exists\>t\<in\>S> such that
      <math|s=-t\<Rightarrow\>t=-s> or <math|-s\<in\>S>. As
      <math|sup<around*|(|S|)>> is a upper bound of <math|S> we have that
      <math|-s\<leqslant\>sup<around*|(|S|)>\<Rightarrowlim\><rsub|<text|[theorems:
      <reference|real ordered field>, <reference|field order
      properties>]>>-sup<around*|(|S|)>\<leqslant\>s> so that\ 

      <\equation>
        <label|eq 9.83.036><text|>-sup<around*|(|S|)><text| is a lower bound
        of >-S
      </equation>

      As <math|S\<neq\>\<varnothing\>\<Rightarrow\>-S\<neq\>\<varnothing\>>
      and <math|-S> has a lower bound <math|-sup<around*|(|S|)>>, it follows
      from the conditonal completeness of <math|\<bbb-R\>> [see theorem:
      <reference|real conditional complete>] that\ 

      <\equation>
        <label|eq 9.84.036>inf<around*|(|-S|)><text| exist
        >and-sup*<around*|(|S|)>\<leqslant\>inf<around*|(|-S|)>
      </equation>

      Assume now that <math|-sup<around*|(|S|)>\<less\>inf<around*|(|-S|)>\<Rightarrowlim\><rsub|<text|[theorems:
      <reference|real ordered field>, <reference|field order
      properties>]>>-inf<around*|(|-S|)>\<less\>sup<around*|(|S|)>>. then as
      <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
      totally ordered it follows from [theorem: <reference|order sup, inf
      property>] that there exist a <math|\<alpha\>\<in\>S> such that
      <math|-inf<around*|(|-S|)>\<less\>\<alpha\>\<leqslant\>sup<around*|(|S|)>>.
      Using [theorems: <reference|real ordered field>, <reference|field order
      properties>] we have <math|-\<alpha\>\<less\>inf<around*|(|-S|)>>, as
      <math|\<alpha\>\<in\>S\<Rightarrow\>-\<alpha\>\<in\>-S> so that
      <math|inf<around*|(|-S|)>\<leqslant\>-\<alpha\>> contradicting
      <math|-\<alpha\>\<less\>inf<around*|(|-S|)>>. So the assumption is
      wrong and we must have that <math|inf<around*|(|-S|)>\<leqslant\>-sup<around*|(|S|)>>
      which combined with [eq: <reference|eq 9.84.036>] proves that\ 

      <\equation*>
        inf<around*|(|-S|)>=-sup<around*|(|S|)>
      </equation*>

      <item>Let <math|s\<in\>-S> then <math|\<exists\>t\<in\>S> such that
      <math|s=-t\<Rightarrow\>t=-s> or <math|-s\<in\>S>. As
      <math|inf<around*|(|S|)>> is a lower bound of <math|S> we have that
      <math|inf<around*|(|S|)>\<leqslant\>-s\<Rightarrowlim\><rsub|<text|[theorems:
      <reference|real ordered field>, <reference|field order
      properties>]>>s\<leqslant\>-inf<around*|(|S|)>> so that\ 

      <\equation>
        <label|eq 9.85.036><text|>-inf<around*|(|S|)><text| is a upper bound
        of >-S
      </equation>

      As <math|S\<neq\>\<varnothing\>\<Rightarrow\>-S\<neq\>\<varnothing\>>
      and <math|-S> has a upper bound <math|-inf<around*|(|S|)>>, it follows
      from the conditonal completeness of <math|\<bbb-R\>> [see theorem:
      <reference|real conditional complete>] that\ 

      <\equation>
        <label|eq 9.86.036>sup<around*|(|-S|)><text| exist >and
        sup<around*|(|-S|)>\<leqslant\> -inf<around*|(|S|)>
      </equation>

      Assume now that <math|sup<around*|(|-S|)>\<less\>-inf<around*|(|S|)>\<Rightarrowlim\><rsub|[theorems:
      <reference|real ordered field>, <reference|field order
      properties>]>inf<around*|(|S|)>\<less\>-sup<around*|(|-S|)>>. then as
      <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
      totally ordered it follows from [theorem: <reference|order sup, inf
      property>] that there exist a <math|\<alpha\>\<in\>S> such that
      <math|inf<around*|(|S|)>\<leqslant\>\<alpha\>\<less\>-sup<around*|(|-S|)>>.
      Using [theorems: <reference|real ordered field>, <reference|field order
      properties>] we have <math|sup<around*|(|-S|)>\<less\>-\<alpha\>>, as
      <math|\<alpha\>\<in\>S\<Rightarrow\>-\<alpha\>\<in\>-S> so that
      <math|-\<alpha\>\<leqslant\>sup<around*|(|-S|)>> contradicting
      <math|sup<around*|(|-S|)>\<less\>-\<alpha\>>. So the assumption is
      wrong and we must have that <math|-inf<around*|(|S|)>\<leqslant\>sup<around*|(|-S|)>>
      which combined with [eq: <reference|eq 9.86.036>] proves that\ 

      <\equation*>
        sup<around*|(|-S|)>=-inf<around*|(|S|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|real sup(S+T) and inf(S+T)>Let <math|S,T\<subseteq\>\<bbb-R\>>
    with <math|S\<neq\>\<varnothing\>\<neq\>T> then for

    <\equation*>
      S+t=<around*|{|\<alpha\>+\<beta\>\|\<alpha\>\<in\>S\<wedge\>\<beta\>\<in\>T|}>
    </equation*>

    <\enumerate>
      <item>If <math|sup<around*|(|S|)>,sup<around*|(|T|)>> exists then
      <math|sup<around*|(|S+T|)>> exist and
      <math|sup<around*|(|S+T|)>=sup<around*|(|S|)>+sup<around*|(|T|)>>

      <item>If <math|inf<around*|(|S|)>,inf<around*|(|T|)>> exists then
      <math|inf<around*|(|S+T|)>> exist and
      <math|inf<around*|(|S+T|)>=inf<around*|(|S|)>+sup<around*|(|T|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ First as <math|S\<neq\>\<varnothing\>\<neq\>T> there exists
    <math|s\<in\>S> and <math|t\<in\>T> so that <math|s+t\<in\>S+T> hence\ 

    <\equation*>
      S+T\<neq\>\<varnothing\>
    </equation*>

    <\enumerate>
      <item>Let <math|q\<in\>S+T> then <math|\<exists\>s\<in\>S> and
      <math|\<exists\>t\<in\>T> such that <math|q=s+t>, as
      <math|s\<leqslant\>sup<around*|(|S|)>> we have
      <math|q=s+t\<leqslant\>sup<around*|(|S|)>+t>, further as
      <math|t\<leqslant\>sup<around*|(|T|)>> it follows that
      <math|sup<around*|(|S|)>+t\<leqslant\>sup<around*|(|S|)>+sup<around*|(|T|)>>
      giving <math|q\<leqslant\>sup<around*|(|S|)>+sup<around*|(|T|)>>. So
      <math|sup<around*|(|S|)>+sup<around*|(|T|)>> is a upper bound of
      <math|S+T> which as <math|S+T\<neq\>\<varnothing\>> and
      <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
      conditional complete [see theorem: <reference|real conditional
      complete>] proves thaat\ 

      <\equation>
        <label|eq 9.87.036>sup<around*|(|S+T|)><text| exist and
        >sup<around*|(|S+T|)>\<leqslant\>sup<around*|(|S|)>+sup<around*|(|T|)>
      </equation>

      Assume now that <math|sup<around*|(|S+T|)>\<less\>sup<around*|(|S|)>+sup<around*|(|T|)>>
      then for <math|\<varepsilon\>=sup<around*|(|S|)>+sup<around*|(|T|)>-sup<around*|(|S+T|)>>
      we have <math|0\<less\>\<varepsilon\>>. So
      <math|-\<varepsilon\>\<less\>0> and as
      <math|0\<less\>2\<Rightarrow\>0\<less\>2<rsup|-1>> we have that
      <math|-<around*|(|\<varepsilon\>/2|)>\<less\>0>. So
      <math|sup<around*|(|S|)>-\<varepsilon\>/2\<less\>sup<around*|(|S|)>>
      and <math|sup<around*|(|T|)>-\<varepsilon\>/2\<less\>sup<around*|(|T|)>>.
      As <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
      totally ordered we have by [theorem: <reference|order sup, inf
      property>] that there exists <math|s\<in\>S> and <math|t\<in\>T> such
      that <math|sup<around*|(|S|)>-\<varepsilon\>/2\<less\>s> and
      <math|sup<around*|(|T|)>-\<varepsilon\>/2\<less\>t>. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|s+t>|<cell|\<gtr\>>|<cell|sup<around*|(|S|)>-\<varepsilon\>/2+sup<around*|(|T|)>-\<varepsilon\>/2>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|S|)>+sup<around*|(|T|)>-<around*|(|\<varepsilon\>+\<varepsilon\>|)>/2>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|S|)>+sup<around*|(|T|)>-\<varepsilon\>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|S|)>+sup<around*|(|T|)>-sup<around*|(|S|)>-sup<around*|(|T|)>+sup<around*|(|S+T|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|s+t|)><eq-number><label|eq
        9.88.036>>>>>
      </eqnarray*>

      As <math|s+t\<in\>S+T> we have that
      <math|s+t\<leqslant\>sup<around*|(|S|)>> contradicting [eq:
      <reference|eq 9.88.036>], so the assumption is wrong and we must have
      <math|sup<around*|(|S|)>+sup<around*|(|T|)>\<leqslant\>sup<around*|(|S+T|)>>
      which combined with [eq: <reference|eq 9.87.036>] proves that\ 

      <\equation*>
        sup<around*|(|S+T|)>=sup<around*|(|S|)>+sup<around*|(|T|)>
      </equation*>

      <item>Let <math|q\<in\>S+T> then <math|\<exists\>s\<in\>S> and
      <math|\<exists\>t\<in\>T> such that <math|q=s+t>, as
      <math|inf<around*|(|S|)>\<leqslant\>s> we have
      <math|inf<around*|(|S|)>+t\<leqslant\>s+t=q>, further as
      <math|inf<around*|(|T|)>\<leqslant\>t> it follows that
      <math|inf<around*|(|S|)>+inf<around*|(|T|)>\<leqslant\>inf<around*|(|T|)>+t>
      giving <math|sup<around*|(|S|)>+sup<around*|(|T|)>\<leqslant\>q>. So
      <math|inf<around*|(|S|)>+inf<around*|(|T|)>> is a lower bound of
      <math|S+T> which as <math|S+T\<neq\>\<varnothing\>> and
      <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
      conditional complete [see theorem: <reference|real conditional
      complete>] proves that\ 

      <\equation>
        <label|eq 9.89.036>inf<around*|(|S+T|)><text| exist and
        >inf<around*|(|S|)>+inf<around*|(|T|)>\<leqslant\>inf<around*|(|S+T|)>
      </equation>

      Assume now that <math|inf<around*|(|S|)>+inf<around*|(|T|)>\<less\>inf<around*|(|S+T|)>>
      then for <math|\<varepsilon\>=inf<around*|(|S+T|)>-inf<around*|(|S|)>-inf<around*|(|T|)>>
      we have <math|0\<less\>\<varepsilon\>>. As
      <math|0\<less\>2\<Rightarrow\>0\<less\>2<rsup|-1>> we have that
      <math|0\<less\>\<varepsilon\>/2>. So
      <math|inf<around*|(|S|)>\<less\>inf<around*|(|S|)>+\<varepsilon\>/2>
      and <math|inf<around*|(|T|)>\<less\>inf<around*|(|T|)>+\<varepsilon\>/2>.
      As <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
      totally ordered we have by [theorem: <reference|order sup, inf
      property>] that there exists <math|s\<in\>S> and <math|t\<in\>T> such
      that <math|s\<less\>inf<around*|(|S|)>+\<varepsilon\>/2> and
      <math|t\<less\>inf<around*|(|T|)>+\<varepsilon\>/2>. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|s+t>|<cell|\<less\>>|<cell|inf<around*|(|S|)>+\<varepsilon\>/2+inf<around*|(|T|)>+\<varepsilon\>/2>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|S|)>+inf<around*|(|T|)>+\<varepsilon\>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|S|)>+inf<around*|(|T|)>+inf<around*|(|S+T|)>-inf<around*|(|S|)>-inf<around*|(|T|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|S+T|)><eq-number><label|eq
        9.90.036>>>>>
      </eqnarray*>

      As <math|s+t\<in\>S+T> we have that
      <math|inf<around*|(|S+T|)>\<leqslant\>s+t> contradicting [eq:
      <reference|eq 9.90.036>], so the assumption is wrong and we must have
      <math|inf<around*|(|S+T|)>\<leqslant\>inf<around*|(|S|)>+inf<around*|(|T|)>>
      which combined with [eq: <reference|eq 9.89.036>] proves that\ 

      <\equation*>
        inf<around*|(|S+T|)>=inf<around*|(|S|)>+inf<around*|(|T|)>
      </equation*>
    </enumerate>
  </proof>

  <\corollary>
    <label|real sup(S+s) inf(T+t)>Let <math|S\<subseteq\>\<bbb-R\>> with
    <math|S\<neq\>\<varnothing\>> and <math|\<alpha\>\<in\>\<bbb-R\>> then
    for <math|S+\<alpha\>=<around*|{|s+\<alpha\>\|s\<in\>S|}>> we have that\ 

    <\enumerate>
      <item>If <math|sup<around*|(|S|)>> exists then
      <math|sup<around*|(|S+\<alpha\>|)>> exists and
      <math|sup<around*|(|S+\<alpha\>|)>=sup<around*|(|S|)>+\<alpha\>>

      <item>If <math|inf<around*|(|S|)>> exists then
      <math|inf<around*|(|S+\<alpha\>|)>> exists and
      <math|inf<around*|(|S+\<alpha\>|)>=inf<around*|(|S|)>+\<alpha\>>
    </enumerate>

    <\proof>
      First\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>S+\<alpha\>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>s\<in\>S<text|
        such that >x=s+\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|t\<in\><around*|{|\<alpha\>|}>\<Leftrightarrow\>t=\<alpha\>>>|<cell|\<exists\>s\<in\>S\<wedge\>\<exists\>t\<in\><around*|{|\<alpha\>|}><text|
        such that <math|x=s+t>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>S+<around*|{|\<alpha\>|}>>>>>
      </eqnarray*>

      hence we have\ 

      <\equation*>
        S+\<alpha\>=S+<around*|{|\<alpha\>|}>
      </equation*>

      Now we have\ 

      <\enumerate>
        <item>If <math|sup<around*|(|S|)>> exists then by [real
        <reference|real sup(S+T) and inf(S+T)>] that
        <math|sup<around*|(|S+<around*|{|a|}>|)>> exist and
        <math|sup<around*|(|S+<around*|{|\<alpha\>|}>|)>=sup<around*|(|S|)>+sup<around*|(|<around*|{|\<alpha\>|}>|)>>
        which as <math|S+<around*|{|\<alpha\>|}>=S+\<alpha\>> and
        <math|sup<around*|(|<around*|{|\<alpha\>|}>|)>=\<alpha\>> proves that\ 

        <\equation*>
          sup<around*|(|S+\<alpha\>|)><text| exist and
          >sup<around*|(|S+\<alpha\>|)>=sup<around*|(|S|)>+\<alpha\>
        </equation*>

        <item>If <math|inf> exists then by [real <reference|real sup(S+T) and
        inf(S+T)>] that <math|inf<around*|(|S+<around*|{|a|}>|)>> exist and
        <math|inf<around*|(|S+<around*|{|\<alpha\>|}>|)>=inf<around*|(|S|)>+inf<around*|(|<around*|{|\<alpha\>|}>|)>>
        which as <math|S+<around*|{|\<alpha\>|}>=S+\<alpha\>> and
        <math|inf<around*|(|<around*|{|\<alpha\>|}>|)>=\<alpha\>> proves that\ 

        <\equation*>
          inf<around*|(|S+\<alpha\>|)><text| exist and
          >inf<around*|(|S+\<alpha\>|)>=inf<around*|(|S|)>+\<alpha\>
        </equation*>
      </enumerate>
    </proof>

    <section|Embeddings in <math|\<bbb-R\>>>
  </corollary>

  First remember that by [theorems: <reference|real field embedding
  Q>,<reference|real embedding of Q and order>] we have a embedding of
  <math|\<bbb-Q\>> in <math|\<bbb-R\>> by the order and field isomorphism
  <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:\<bbb-Q\>\<rightarrow\>\<bbb-Q\><rsub|\<bbb-R\>>>
  defined by <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r|)>=\<alpha\><rsub|r>>.
  We show now that there exist also embeddings of <math|\<bbb-N\><rsub|0>>
  and <math|\<bbb-Z\>> in <math|\<bbb-R\>>.\ 

  <\definition>
    <label|real ZQ><index|<math|\<bbb-Z\><rsub|\<bbb-R\>>>><math|\<bbb-Z\><rsub|\<bbb-R\>>=<around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>|)><around*|(|\<bbb-Z\>|)>>
    where\ 

    <\equation*>
      i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-Q\>>\<subseteq\>\<bbb-Q\><text|
      is defined by <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|z|)>=<frac|z|1><rsub|>>
      [theorem: <reference|rational sub-ring>]>\ 
    </equation*>

    and

    <\equation*>
      i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:\<bbb-Q\>\<rightarrow\>\<bbb-Q\><rsub|\<bbb-R\>><text|
      is defined by <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|r|)>=\<alpha\><rsub|r><text|
      [theorem: <reference|real embedding of Q and order>]>>>
    </equation*>

    so that

    <\equation*>
      \<bbb-Z\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-R\>>
    </equation*>
  </definition>

  <\theorem>
    <label|real ZR properties>For <math|<around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>.+,\<cdot\>|\<rangle\>>>
    and <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-R\>>>
    defined by <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>\<circ\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>>
    then we have

    <\enumerate>
      <item><math|><math|\<bbb-Z\><rsub|\<bbb-R\>>> is a subring of
      <math|<around*|\<langle\>|\<bbb-R\>,<rsub|,+,\<cdot\>>|\<rangle\>>> and
      <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>>>
      is a ring isomorphism.

      <item><math|\<bbb-Z\><rsub|\<bbb-R\>>> is a subgroup of
      <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> and
      <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+|\<rangle\>>>
      is a group isomorphism.

      <item><math|\<bbb-Z\><rsub|\<bbb-R\>>,> is a sub semi-group of
      <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>> and
      <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,\<cdot\>|\<rangle\>>>
      is a group isomorphism.

      <item><math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
      is a order isomorphism

      <item><math|\<bbb-Z\><rsub|\<bbb-R\>>> is denumerable
    </enumerate>
  </theorem>

  <\proof>
    \ First note that by the definition of <math|\<bbb-Z\><rsub|\<bbb-R\>>>
    we have that

    <\equation>
      <label|eq 9.89.047>\<bbb-Z\><rsub|\<bbb-R\>>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|\<bbb-Z\>|)>|)>
    </equation>

    Second we have\ 

    <\enumerate>
      <item>Using [theorems: <reference|rational sub-ring>, <reference|real
      embedding of Q and order>] we have that

      <\equation*>
        i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>><text|
        and >i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,+|\<rangle\>><text|
        are ring isomorphisms>
      </equation*>

      So using [theorem: <reference|ring homeomorphism composition>[ and
      [theorem: <reference|rational sub-ring>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|\<bbb-Z\>|)>|)><text|
        is a subring of ><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|>
      </equation*>

      and

      <\equation*>
        i<rsub|\<bbb-Q\>-\<bbb-R\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|\<bbb-Z\>|)>|)>,+,\<cdot\>|\<rangle\>><text|
        is a ring isomorphism>
      </equation*>

      Using [eq: <reference|eq 9.89.047>] and [theorems: <reference|ring sub
      sub ring>, <reference|real embedding of Q and order>] we have that\ 

      <\equation*>
        \<bbb-Z\><rsub|\<bbb-R\>><text| is a subring of
        <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|
        is a ring isomorphism>
      </equation*>

      <item>This follows from (1) and [theorems: <reference|ring
      homeomorphism/isomorphism is a group homeomorphism> and <reference|ring
      subring subgroup>]

      <item>This follows from (1) and [theorems: <reference|ring
      homeomorphism/isomorphism is a group homeomorphism> and <reference|ring
      subring subgroup>]

      <item>Using [theorems: \ <reference|rational sub-ring>, <reference|real
      embedding of Q and order>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-Q\>>,\<leqslant\>|\<rangle\>><text|
        and >i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>\<of\><around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
        are order isomorphisms>
      </equation*>

      So using [theorem: <reference|order composition of functions>] we have
      that\ 

      <\equation*>
        i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|\<bbb-Z\>|)>|)>,\<leqslant\>|\<rangle\>><text|
        is a order isomorphism>
      </equation*>

      hence using [eq: <reference|eq 9.89.047>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
        is a order isomorphism>
      </equation*>

      <item>Using (4) we have that <math|Z\<approx\>Z<rsub|\<bbb-R\>>> which
      as by [theorem: <reference|integers denumerability>]
      <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-Z\>> proves that
      <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-Z\><rsub|R>> proving that
      <math|\<bbb-Z\><rsub|\<bbb-R\>>> is denumerable.
    </enumerate>
  </proof>

  We can use the same technique to embed the set of natural numbers in
  <math|\<bbb-R\>>.

  <\definition>
    <label|real NR><index|<math|\<bbb-N\><rsub|0,\<bbb-R\>>>><math|\<bbb-N\><rsub|0,\<bbb-R\>>=<around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><around*|(|\<bbb-N\><rsub|0>|)>>
    where\ 

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>\<subseteq\>\<bbb-Z\><text|
      is defined by >i<rsub|\<bbb-N\><rsub|0>><around*|(|z|)>=\<sim\><around*|[|<around*|(|z,0|)>|]><text|
      [theorem: <reference|integers properties (1)>] >and
    </equation*>

    <\equation*>
      i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-R\>><text|
      [theorem: <reference|real ZR properties>]>
    </equation*>

    so that

    <\equation*>
      \<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>
    </equation*>
  </definition>

  In many cases we want to exclude <math|0> from the embedded real numbers,
  hene the following definition.

  <\definition>
    <index|<math|\<bbb-N\><rsub|\<bbb-R\>>>><math|\<bbb-N\><rsub|\<bbb-R\>>=\<bbb-N\><rsub|0,\<bbb-R\>>\\<around*|{|0|}>>
  </definition>

  <\theorem>
    <label|real NR properties>For <math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>.+,\<cdot\>|\<rangle\>>>
    and <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    defined by <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>>
    we have\ 

    <\enumerate>
      <item><math|\<bbb-N\><rsub|0,\<bbb-R\>>> is a sub-semi-group of
      <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> and
      <math|i<rsub|\<bbb-N\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,+|\<rangle\>>>
      is a group isomorphism.\ 

      <item><math|\<bbb-N\><rsub|0,\<bbb-R\>>> is a sub-semi-group of
      <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>> and
      <math|i<rsub|\<bbb-N\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<cdot\>|\<rangle\>>>
      is a group isomorphism.

      <item><math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
      is a order isomorphism

      <item><math|\<bbb-N\><rsub|0,\<bbb-R\>>> is denumerable

      <item><math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
      is well ordered
    </enumerate>
  </theorem>

  <\proof>
    \ First note that by the definition of <math|\<bbb-N\><rsub|0,\<bbb-R\>>>
    we have that\ 

    <\equation>
      <label|eq 9.90.047>\<bbb-N\><rsub|0,\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-N\><rsub|0>><around*|(|\<bbb-N\><rsub|0>|)>|)>
    </equation>

    <\enumerate>
      <item> Using [theorems: <reference|integers properties (1)> and
      <reference|real ZR properties>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>><text|
        and >i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+|\<rangle\>><text|
        are a group isomorphisms>
      </equation*>

      So using [theorem: <reference|group homeomorphism composition>] and
      [theorem: \ <reference|integers properties (1)>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|\<bbb-N\><rsub|0>|)>|)><text|
        is a sub group of ><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+|\<rangle\>>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0,>+|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|\<bbb-N\><rsub|0>|)>|)>,+|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      Using [eq: <reference|eq 9.90.047>] and [theorems: <reference|group sub
      sub group>, <reference|real ZR properties>] it follows that\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-R\>><text| is a sub group of
        ><around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0,>+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,+|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      <item>Using [theorems: <reference|integers properties (1)> and
      <reference|real ZR properties>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<cdot\>|\<rangle\>><text|
        and >i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,\<cdot\>|\<rangle\>><text|
        are a group isomorphisms>
      </equation*>

      So using [theorem: <reference|group homeomorphism composition>] and
      [theorem: \ <reference|integers properties (1)>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|\<bbb-N\><rsub|0>|)>|)><text|
        is a sub semi-group of ><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,\<cdot\>|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0,>\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|\<bbb-N\><rsub|0>|)>|)>,\<cdot\>|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      Using [eq: <reference|eq 9.90.047>] and [theorems: <reference|group sub
      sub group>, <reference|real ZR properties>] it follows that\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-R\>><text| is a sub semi-group of
        ><around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0,>\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<cdot\>|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      <item>Using [theorems: <reference|integers order preserving bijection>
      and <reference|real ZR properties>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,\<leqslant\>|\<rangle\>><text|
        and >i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>.\<leqslant\>|\<rangle\>>
      </equation*>

      so using [theorem: <reference|order composition of functions>

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|\<bbb-N\><rsub|0>|)>|)>,\<leqslant\>|\<rangle\>><text|
        is a order isomorphism>
      </equation*>

      Using [eq: <reference|eq 9.90.047>] it follows that\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
        is a order isomorphism>
      </equation*>

      <item>Using (3) we have that <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-N\><rsub|0,\<bbb-R\>>>
      proving that <math|\<bbb-N\><rsub|0,\<bbb-R\>>> is denumerable.

      <item>By [theorem: <reference|natural numbers are well ordered>]
      <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
      is well ordered, futher by <math|<around*|(|3|)>>
      <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
      is a order isomorphism, hence by [theorem: <reference|order well
      ordered and order isomorphism>] it follows that\ 

      <\equation*>
        <around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
        is well ordered>
      </equation*>
    </enumerate>
  </proof>

  For the relation between <math|\<bbb-N\><rsub|0,\<bbb-R\>>>,
  <math|\<bbb-Z\><rsub|\<bbb-R\>>>, <math|\<bbb-Q\><rsub|\<bbb-R\>>> and
  <math|\<bbb-R\>> we have\ 

  <\theorem>
    <label|real natural numbers, integers and rational numbers>We have the
    following properties for <math|\<bbb-N\><rsub|0,\<bbb-R\>>>,
    <math|\<bbb-Z\><rsub|\<bbb-R\>>>, <math|\<bbb-Q\><rsub|\<bbb-R\>>> and
    <math|\<bbb-R\>>

    <\enumerate>
      <item><math|\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>>

      <item><math|\<bbb-N\><rsub|0,\<bbb-R\>>=<around*|{|z\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\|0\<leqslant\>z|}>>

      <item><math|-\<bbb-N\><rsub|0,\<bbb-R\>>=<around*|{|z\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\|z\<leqslant\>0|}>>
      where <math|-\<bbb-N\><rsub|0,\<bbb-R\>>=<around*|{|-n\|n\<in\>\<bbb-N\><rsub|\<bbb-R\>>|}>>

      <item><math|\<bbb-Z\><rsub|\<bbb-R\>>=\<bbb-N\><rsub|0,\<bbb-R\>><big|cup><around*|(|-\<bbb-N\><rsub|0,\<bbb-R\>>|)>>
      and <math|\<bbb-N\><rsub|0,\<bbb-R\>><big|cap><around*|(|-\<bbb-N\><rsub|0,\<bbb-R\>>|)>=<around*|{|0|}>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using [definition: <reference|real QR>] we have that
      <math|\<bbb-Q\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>>, using
      [definition: <reference|real ZQ>] we have that
      <math|\<bbb-Z\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-R\>>>
      and finally by [definition: <reference|real NR>] it follows that
      <math|\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>>

      <item>Using [theorem: <reference|real NR properties> (3)] we have that\ 

      <\equation>
        <label|eq 9.96.040>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
        is a order isomorphism>
      </equation>

      and\ 

      <\equation>
        <label|eq 9.97.040>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,+|\<rangle\>><text|
        is a group isomorphism>
      </equation>

      If <math|z\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>>
      [see (1)] then by [eq: <reference|eq 9.96.040>] there exist a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|z=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>>.
      Now by [theorem: <reference|natural numbers 0\<less\>=n>] we have that
      <math|0\<leqslant\>n> so that by [eq: <reference|eq 9.96.040>] we have
      that

      <\equation*>
        0\<equallim\><rsub|<text|[eq: <reference|eq
        9.97.040>]>>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|0|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>=z
      </equation*>

      So we have that\ 

      <\equation>
        <label|eq 9.98.040>\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\><around*|{|z\<in\><rsub|\<bbb-R\>>\|0\<leqslant\>z|}>
      </equation>

      For the opposite inclusion. Using [theorem: <reference|real ZR
      properties>] we have that\ 

      <\equation>
        <label|eq 9.99.040>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
        is a order isomorphism>
      </equation>

      and

      <\equation>
        <label|eq 9.100.040>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+|\<rangle\>><text|
        is a group isomorphism>
      </equation>

      Hence if <math|z\<in\><around*|{|z\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\|0\<leqslant\>z|}>>
      then by [eq: <reference|eq 9.99.040>] there exists a
      <math|z<rprime|'>\<in\>\<bbb-Z\>> such that
      <math|z=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|z<rprime|'>|)>>
      Assume that <math|z<rprime|'>\<less\>0> then by [eqs: <reference|eq
      9.99.040>, <reference|eq 9.100.040>] we have that
      <math|z=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|z<rprime|'>|)>\<less\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|0|)>=0>
      contradicting <math|0\<leqslant\>\<bbb-Z\>>, so we must have that
      <math|0\<leqslant\>z<rprime|'>>, which by <reference|integers
      {x\|-\<less\>=x}> proves that <math|z<rprime|'>\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
      Using [theorems: <reference|integers properties (1)>] we have that
      <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|z<rprime|'>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>>.
      Hence

      <\equation*>
        z=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>><around*|(|n|)>|)>=<around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\>>|)><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)><rsub|>\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>
      </equation*>

      proving that <math|<around*|{|z\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\|0\<leqslant\>z|}>\<subseteq\>\<bbb-N\><rsub|0,Rr>>.
      Combining this with [eq: <reference|eq 9.98.040>] proves that\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-R\>>=<around*|{|z\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\|0\<leqslant\>z|}>
      </equation*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|{|z\<in\>\<bbb-Z\>\|z\<leqslant\>0|}>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-Z\>\<wedge\>x\<leqslant\>0>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorems:
        <reference|real ordered field>, <reference|field order
        properties>]>>>|<cell|x\<in\>\<bbb-Z\>\<wedge\>0\<leqslant\>-x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|-<around*|(|-x|)>\<in\>\<bbb-Z\>\<wedge\>0\<leqslant\>-x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|-x\<in\><around*|{|z\<in\>\<bbb-Z\>\|0\<leqslant\>z|}>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|2|)>>>|<cell|-x\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|-\<bbb-N\><rsub|0,\<bbb-R\>>>>>>
      </eqnarray*>

      <item>As <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
      is totaly ordered [see theorem: <reference|real totally ordered>] and
      <math|0\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> [as
      <math|<around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+|\<rangle\>>> is a
      sub group of <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>>] we
      have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\><around*|(|0\<leqslant\>x\<vee\>x\<leqslant\>0|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\>0\<leqslant\>x|)>\<vee\><around*|(|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\>x\<leqslant\>0|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|2|)><text|
        and ><around*|{|3|}>>>|<cell|x\<in\>\<bbb-N\><rsub|\<bbb-R\>>\<vee\>x\<in\><around*|(|-\<bbb-N\><rsub|\<bbb-R\>>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-N\><rsub|\<bbb-R\>><big|cup><around*|(|-\<bbb-N\><rsub|\<bbb-R\>>|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<bbb-Z\><rsub|\<bbb-R\>>=\<bbb-N\><rsub|\<bbb-R\>><big|cup><around*|(|-\<bbb-N\><rsub|\<bbb-R\>>|)>
      </equation*>

      If <math|z\<in\>\<bbb-N\><rsub|\<bbb-R\>><big|cap><around*|(|-\<bbb-N\><rsub|\<bbb-R\>>|)>\<equallim\><rsub|<around*|(|2|)><text|
      and ><around*|(|3|)>><around*|{|z\<in\>\<bbb-Z\>\|0\<leqslant\>z|}><big|cap><around*|{|z\<in\>\<bbb-Z\>\|z\<leqslant\>0|}>>
      so that <math|0\<leqslant\>z\<wedge\>z\<leqslant\>0> so that <math|z=0>
      proving that\ 

      <\equation*>
        \<bbb-N\><rsub|\<bbb-R\>><big|cap><around*|(|-\<bbb-N\><rsub|\<bbb-R\>>|)>=<around*|{|0|}>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|real rational numbers specification><math|\<bbb-Q\><rsub|\<bbb-R\>>=<around*|{|x/y\|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\\<around*|{|0|}>|}>>
    where <math|q/r> is a shorthand for <math|q\<cdot\>r<rsup|-1>> [see
    notation: <reference|real notation for division>]
  </theorem>

  <\proof>
    Using [theorems: <reference|rational sub-ring>, <reference|real field
    embedding Q>, <reference|real ZR properties>] we have the following\ 

    <\equation>
      <label|eq 9.101.041>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-Q\>>,+,\<cdot\>|\<rangle\>><text|
      is a field isomorphism>
    </equation>

    <\equation>
      <label|eq 9.102.041>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|
      is a field isomorphism>
    </equation>

    <\equation>
      <label|eq 9.103.041>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|
      is a ring isomorphism>
    </equation>

    Let <math|q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> then by [eq: <reference|eq
    9.102.041>] there exist a <math|q<rprime|'>\<in\>\<bbb-Q\>> such that
    <math|q=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q<rprime|'>|)>>.
    As <math|q<rprime|'>\<in\>\<bbb-Q\>> we have by [theorem:
    <reference|rational alternative definition>] that there exists
    <math|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>><infix-and>y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>>
    such that <math|q<rprime|'>=x\<cdot\>y<rsup|-1>>, hence we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|q>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x\<cdot\>y<rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x|)>\<cdot\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|y<rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x|)>\<cdot\><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|y|)>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x|)>/i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|y|)><eq-number><label|eq
      9.104.041>>>>>
    </eqnarray*>

    As <math|x\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>> and
    <math|y\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>> there exists by
    [eq: <reference|eq 9.101.040>] a <math|x<rprime|'>\<in\>\<bbb-Z\>> and
    <math|y<rprime|'>\<in\>\<bbb-Z\>> such that
    <math|x=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x<rprime|'>|)>>
    and <math|y=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y<rprime|'>|)>>.
    So by [eq: <reference|eq 9.103.041>] we have that
    <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x|)>=<around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>|)><around*|(|x<rprime|'>|)>\<in\>\<bbb-Z\><rsub|R>>
    and <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|y|)>=<around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>|)><around*|(|y<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\\<around*|{|0|}>>.
    Combining this with [eq: <reference|eq 9.104.041>] we have that
    <math|q\<in\><around*|{|x/y\|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\\<around*|{|0|}>|}>>
    proving that\ 

    <\equation>
      <label|eq 9.105.041>\<bbb-Q\><rsub|\<bbb-R\>>\<subseteq\><around*|{|x/y\|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\\<around*|{|0|}>|}>
    </equation>

    If <math|q\<in\><around*|{|x/y\|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\\<around*|{|0|}>|}>>
    there exists <math|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> and
    <math|y\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\\<around*|{|0|}>> such that
    <math|q=x/y>. Using [eq: <reference|eq 9.103.041>] there exists
    <math|x<rprime|'>\<in\>\<bbb-Z\>> and
    <math|z<rprime|'>\<in\>\<bbb-Z\>\\<around*|{|0|}>> such that
    <math|x=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x<rprime|'>|)>|)>>
    and <math|y=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y<rprime|'>|)>|)>>.
    From [eq: <reference|eq 9.101.041>] it follows that
    <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>>
    and <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<bbb-Q\>>\\<around*|{|0|}>>
    which by [theorem: <reference|rational alternative definition>] gives
    <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x<rprime|'>|)>\<cdot\><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y<rprime|'>|)>|)><rsup|-1>\<in\>\<bbb-Q\>>.
    So by [eq: <reference|eq 9.103.041>]\ 

    <\equation>
      <label|eq 9.106.041>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x<rprime|'>|)>\<cdot\><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y<rprime|'>|)>|)><rsup|-1>|)>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>
    </equation>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x<rprime|'>|)>\<cdot\><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y<rprime|'>|)>|)><rsup|-1>|)>>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x<rprime|'>|)>|)>\<cdot\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|<around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|y<rprime|'>|)>|)><rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>><around*|(|x<rprime|'>|)>|)>\<cdot\><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>*<around*|(|y<rprime|'>|)>|)>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|x\<cdot\>y<rsup|-1>>>|<row|<cell|>|<cell|=q>|<cell|>>>>
    </eqnarray*>

    proving by [eq: <reference|eq 9.106.041>] that
    <math|q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>. Hence
    <math|<around*|{|x/y\|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\\<around*|{|0|}>|}>\<subseteq\>\<bbb-Q\><rsub|\<bbb-R\>>>
    which combined with [eq: <reference|eq 9.105.041>] proves finally that\ 

    <\equation*>
      \<bbb-Q\><rsub|\<bbb-R\>>=<around*|{|x/y\|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\<wedge\>y\<in\>\<bbb-Z\><rsub|\<bbb-R\>>\\<around*|{|0|}>|}>
    </equation*>
  </proof>

  <\notation>
    The above theorem allows us to write\ 
  </notation>

  <\theorem>
    <label|real x\<less\>y=\<gtr\>x+1\<less\>=y>Let
    <math|x,y\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> with <math|x\<less\>y> then

    <\enumerate>
      <item><math|x+1\<leqslant\>y>

      <item><math|x\<leqslant\>y-1>
    </enumerate>
  </theorem>

  <\proof>
    By [theorem: <reference|real NR properties>] that

    <\equation>
      <label|eq 9.101.040>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
      is a order isomorphism>
    </equation>

    <\equation>
      <label|eq 9.102.040>i<rsub|\<bbb-N\><rsub|0>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<cdot\>|\<rangle\>><text|
      is a group homeomorphism>
    </equation>

    Let <math|x\<in\>\<bbb-Z\>> with <math|0\<less\>x> then by [theorem:
    <reference|real natural numbers, integers and rational numbers>] we have
    that <math|x\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> so that by [eq:
    <reference|eq 9.101.040>] <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such
    that <math|x=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>>.
    Using [theorem: <reference|order isomorphism strictly>] we have then that
    <math|0\<less\>n> so that by [theorem: <reference|natural numbers
    n\<less\>m=\<gtr\>s(n)\<less\>=m>] we have that <math|1\<leqslant\>n>,
    hence we have that <math|1\<equallim\><rsub|<text|[eq: <reference|eq
    9.102.040>]>>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|1|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>=x<rsub|>>,
    so we have\ 

    <\equation>
      <label|eq 9.103.040>\<forall\>x\<in\>\<bbb-Z\><text| with
      >0\<less\>x<text| we have >1\<leqslant\>x
    </equation>

    Next\ 

    <\enumerate>
      <item>Let <math|x,y\<in\>\<bbb-Z\>> with <math|x\<less\>y> then
      <math|0\<less\>y-x\<in\>\<bbb-Z\>> [as
      <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>> is a sub group of
      <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>], so by
      [eq: <reference|eq 9.103.040>] we have that <math|1\<leqslant\>y-x>,
      hence

      <\equation*>
        x+1\<leqslant\>y
      </equation*>

      <item>As <math|x+1\<leqslant\>y> we have that\ 

      <\equation*>
        x=<around*|(|x+1|)>-1\<leqslant\>y-1
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|real Archimedean property><dueto|Archimedean Property>If
    <math|x,y\<in\>\<bbb-R\>> with <math|0\<less\>x> then
    <math|\<exists\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
    <math|y\<less\>n\<cdot\>x>
  </theorem>

  <\proof>
    For <math|y> we have either\ 

    <\description>
      <item*|<math|y\<leqslant\>0>>Then for <math|n=1> we have
      <math|y\<leqslant\>0\<less\>x=1\<cdot\>x=n\<cdot\>x> proving that
      <math|y\<less\>n\<cdot\>x>

      <item*|<math|0\<less\>y>>We prove this by contradiction. Assume that
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> we have
      <math|n\<cdot\>x\<leqslant\>y>. Define\ 

      <\equation*>
        A=<around*|{|n\<cdot\>x\|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>|}>=0
      </equation*>

      then <math|\<forall\>t\<in\>A> we have <math|t\<leqslant\>y> so that
      <math|y<text| is a upper bound of <math|A>>>. By [theorem:
      <reference|real conditional complete>]
      <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
      conditional complete so that <math|sup<around*|(|A|)>> exists. As
      <math|0\<less\>x> we have <math|-x\<less\>0> so that
      <math|sup<around*|(|A|)>-x\<less\>sup<around*|(|A|)>>, given that by
      [theorem: <reference|real totally ordered>]
      <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
      totally ordered we have by [theorem: <reference|order sup, inf
      property>] that <math|\<exists\>t\<in\>A> such that
      <math|sup<around*|(|A|)>-x\<less\>t>. Given the definition of <math|A>
      we have that <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>,\<bbb-R\>> such
      that <math|t=n\<cdot\>x> hence <math|sup<around*|(|A|)>-x\<less\>n\<cdot\>x>
      so that\ 

      <\equation>
        <label|eq 9.104.040>sup<around*|(|A|)>\<less\>n\<cdot\>x+x=<around*|(|n+1|)>\<cdot\>x
      </equation>

      As <math|n+1\<in\>\<bbb-N\><rsub|0>> we have that
      <math|<around*|(|n+1|)>\<cdot\>x\<in\>A> so that
      <math|<around*|(|n+1|)>\<cdot\>x\<leqslant\>sup<around*|(|A|)>>
      contradicting [eq: <reference|eq 9.104.040>]. So our assumption is
      wrong hence\ 

      <\equation*>
        \<exists\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>><text| such that
        >y\<less\>n\<cdot\>x
      </equation*>
    </description>
  </proof>

  <\corollary>
    <label|real Archimedean property consequence (1)>Let
    <math|x\<in\>\<bbb-R\>> then we have\ 

    <\enumerate>
      <item><math|\<exists\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
      <math|x\<less\>n>

      <item><math|\<exists\>n\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> such that
      <math|n\<leqslant\>x\<less\>n+1>

      <item><math|\<exists\>n\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> such that
      <math|n\<less\>x\<leqslant\>n+1>

      <item><math|\<exists\>n\<in\>\<bbb-Z\><rsub|\<bbb-R\>><text| such that
      <math|n-1\<leqslant\>x\<less\>n>>>

      <item><math|\<exists\>n\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> such that
      <math|n-1\<less\>x\<leqslant\>n>

      <item>If <math|0\<less\>x> then <math|\<exists\>n\<in\>\<bbb-N\><rsub|\<bbb-R\>>>
      such that <math|0\<less\>1/n\<less\>x>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|0\<less\>1> [see corollary: <reference|real 0\<less\>1>]
      \ we have by the Archimedean property [see theorem: <reference|real
      Archimedean property>] that there exist a
      <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
      <math|x\<less\>n\<cdot\>1=n>

      <item>By (1) <math|A=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|x\<less\>n|}>\<neq\>\<varnothing\>>
      and by the well ordering of <math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>>>
      [see theorem: <reference|real NR properties> (7)] there exists a least
      element <math|m\<in\>A>. As <math|m-1\<less\>m> [see corollary:
      <reference|real a\<less\>a+1 and a-1\<less\>a>] we have that
      <math|m-1\<nin\>A> hence <math|m-1\<leqslant\>x> and as <math|m\<in\>A>
      we have also <math|x\<less\>m>. Take <math|n=m-1> then
      <math|n\<leqslant\>x\<less\>m=n+1>.

      <item>Using (2) there exist a <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
      such that <math|m\<leqslant\>x\<less\>m+1>. As <math|m\<leqslant\>x> we
      have the following possibilities to consider:

      <\description>
        <item*|<math|m=x>>Take then <math|n=m-1> so that <math|n+1=m> then we
        have <math|n\<less\>x\<leqslant\>n+1>

        <item*|<math|m\<less\>x>>Take then <math|n=m> so that
        <math|n\<less\>x\<leqslant\>n+1>
      </description>

      <item>Using (2) there exist a <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
      such that <math|m\<leqslant\>x\<less\>m+1>, take then <math|n=m+1> so
      that <math|m=n-1>, hence <math|n-1\<leqslant\>x\<less\>n>.

      <item>Using (3) there exist a <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
      such that <math|m\<less\>x\<leqslant\>m+1>, take then <math|n=m+1> so
      that <math|m=n-1>, hence <math|n-1\<less\>x\<leqslant\>n>.

      <item>Using the Archimedean Property [see theorem: <reference|real
      Archimedean property>] there exists a
      <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
      <math|1\<less\>n\<cdot\>x>. If <math|n=0> we would have
      <math|1\<less\>0> a contradiction so <math|0\<neq\>n>. Using [theorem:
      <reference|real natural numbers, integers and rational numbers>] we
      have that <math|0\<leqslant\>n> so we find that <math|0\<less\>n>.
      Applying then [theorems: <reference|real ordered field>,
      <reference|field order properties>] we have
      <math|0\<less\>n<rsup|-1>=1/n> which using [theorems: <reference|real
      ordered field>, <reference|field order properties>] on
      <math|1\<less\>n\<cdot\>x> gives <math|1/n=1\<cdot\>n<rsup|-1>\<less\><around*|(|n\<cdot\>x|)>\<cdot\>n<rsup|-1>=x>.
    </enumerate>
  </proof>

  <\corollary>
    <label|real Archimedean property consequence (2)>Let
    <math|x,y\<in\>\<bbb-R\>> then we have\ 

    <\enumerate>
      <item>If <math|\<forall\>n\<in\>\<bbb-N\><rsub|\<bbb-R\>>> we have that
      <math|x\<leqslant\>y+1/n> then <math|x\<leqslant\>y>

      <item>If <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have
      that <math|x\<leqslant\>y+\<varepsilon\>> then <math|x\<leqslant\>y>

      <item>Let <math|a\<in\>\<bbb-R\><rsup|+><rsub|0>> then if
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have that
      <math|x\<leqslant\>y+\<varepsilon\>\<cdot\>a> then
      <math|x\<leqslant\>y>

      <item>Let <math|a\<in\>\<bbb-R\><rsup|+><rsub|0>> then if
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|\<bbb-R\>>> we have that
      <math|x\<leqslant\>y+a/n> then <math|x\<leqslant\>y>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume that <math|y\<less\>x> then we have <math|0\<less\>x-y> so
      by [corollary: <reference|real Archimedean property consequence (1)>]
      there exist a <math|n\<in\>\<bbb-N\><rsub|\<bbb-R\>>> such that
      <math|1/n\<less\>x-y>. As we also have that
      <math|x\<leqslant\>y+1/n\<Rightarrow\>x-y\<leqslant\>1/n> we reach the
      contradiction <math|1/n\<less\>1/n>. So the assumption is wrong and we
      must have that\ 

      <\equation*>
        x\<leqslant\>y
      </equation*>

      <item>Assume that <math|y\<less\>x> then we have <math|0\<less\>x-y> so
      by [corollary: <reference|real Archimedean property consequence (1)>]
      there exist a <math|n\<in\>\<bbb-N\><rsub|\<bbb-R\>>> such that
      <math|1/n\<less\>x-y>. Take <math|\<varepsilon\>=1/n> then we have also
      <math|x\<leqslant\>y+\<varepsilon\>\<Rightarrow\>x-y\<leqslant\>\<varepsilon\>=<frac|1|n>>
      so we reach the contradiction <math|1/n\<less\>1/n>. So the assumption
      is wrong and we must have that\ 

      <\equation*>
        x\<leqslant\>y
      </equation*>

      <item>As <math|a\<in\>\<bbb-R\><rsup|+><rsub|0>> we have two
      possibilities to consider:

      <\description>
        <item*|<math|a=0>>Then if we take
        <math|\<varepsilon\>=1\<in\>\<bbb-R\><rsup|+>> we have from
        <math|x\<leqslant\>y+a\<cdot\>\<varepsilon\>=y+0.1=y> that
        <math|x\<leqslant\>y>

        <item*|<math|0\<less\>a>>Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
        then for <math|\<delta\>=\<varepsilon\>/a\<in\>\<bbb-R\><rsup|+>> we
        have by the assumption that <math|x\<leqslant\>y+a\<cdot\>\<delta\>=y+<around*|(|\<varepsilon\>/a|)>\<cdot\>a=y+\<varepsilon\>>.
        So we have <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
        that <math|x\<leqslant\>y+\<varepsilon\>> which by (2) proves that

        <\equation*>
          x\<leqslant\>y
        </equation*>
      </description>

      <item>As <math|a\<in\>\<bbb-R\><rsup|+><rsub|0>> we have two
      possibilities to consider:

      <\description>
        <item*|<math|a=0>>Then if we take
        <math|n=1\<in\>\<bbb-N\><rsub|\<bbb-R\>>> we have from
        <math|x\<leqslant\>y+a/n=y+1/1\<cdot\>0=y> that <math|x\<leqslant\>y>

        <item*|<math|0\<less\>a>>Take <math|n\<in\>\<bbb-N\><rsub|\<bbb-R\>>>
        then

        <\equation*>
          0\<less\>n\<Rightarrowlim\><rsub|<text|[theorems: <reference|real
          ordered field>, <reference|field order
          properties>]>>0\<less\>a\<cdot\>n\<Rightarrowlim\><rsub|<text|[theorems:
          <reference|real ordered field>, <reference|field order
          properties>]>>0\<less\><around*|(|a\<cdot\>n|)><rsup|-1>=a<rsup|-1>\<cdot\>n<rsup|-1>
        </equation*>

        so that by [corollary: <reference|real Archimedean property
        consequence (1)>] there exists a <math|m\<in\>\<bbb-N\><rsub|\<bbb-R\>>>
        such that <math|1/m>\<less\><math|a<rsup|-1>\<cdot\>n<rsup|-1>>. By
        assumption we have now <math|x\<leqslant\>y+a/m=y+a\<cdot\><around*|(|a<rsup|-1>\<cdot\>n<rsup|-1>|)>=y+1/n>.
        So we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|\<bbb-R\>>> that
        <math|x\<leqslant\>y+1/n> which by (1) implies that\ 

        <\equation*>
          x\<leqslant\>y
        </equation*>
      </description>
    </enumerate>
  </proof>

  The next theorem shows how the embedded rational numbers are dense in the
  set of real numbers.\ 

  <\theorem>
    <label|real densitiy theorem><dueto|Density Theorem>If
    <math|x\<in\>y\<in\>\<bbb-R\>> such that <math|x\<less\>y> then we have

    <\enumerate>
      <item><math|\<exists\>q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> such that
      <math|x\<less\>q\<less\>y>

      <item><math|\<exists\>r\<in\>\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>> such
      that <math|x\<less\>r\<less\>y>
    </enumerate>

    In other words if we have two different real numbers then we can alwys
    find a rational number and a irationl number that lies between the two
    real numbers.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We first prove the case for <math|0\<leqslant\>x>, then we have
      either\ 

      <\description>
        <item*|<math|0\<less\>x>>From <math|x\<less\>y> we have that
        <math|0\<less\>y-x> so that by [theorems: <reference|real ordered
        field>, <reference|field order properties>]
        <math|0\<less\><around*|(|y-x|)><rsup|-1>>. Using [corollary:
        <reference|real Archimedean property consequence (1)>] there exists a
        <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
        <math|0\<less\><around*|(|y-x|)><rsup|-1>\<less\>n>. As
        <math|0\<less\>y-x> we have that <math|1=<around*|(|y-x|)><rsup|-1>\<cdot\><around*|(|y-x|)>\<less\>n\<cdot\><around*|(|y-x|)>>
        so that

        <\equation>
          <label|eq 9.111.041>1+n\<cdot\>x\<less\>n\<cdot\>y
        </equation>

        and from <math|0\<less\><around*|(|y-x|)><rsup|-1>\<less\>n> that

        <\equation>
          <label|eq 9.112.041>0\<less\>n\<Rightarrowlim\><rsub|<text|[theorems:
          <reference|real ordered field>, <reference|field order
          properties>]>>0\<less\>n<rsup|-1>=1/n
        </equation>

        Using [corollary: <reference|real Archimedean property consequence
        (1)>] there exist a <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such
        that

        <\equation>
          <label|eq 9.113.041>m-1\<leqslant\>n\<cdot\>x\<less\>m
        </equation>

        Multiplying by <math|n<rsup|-1>> gives then by \ [theorems:
        <reference|real ordered field>, <reference|field order properties>]
        that <math|x=<around*|(|n\<cdot\>x|)>\<cdot\>n<rsup|-1>\<less\>m\<cdot\>n<rsup|-1>=m/n>.
        Take <math|q=m/n> then, as <math|n,m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>>,
        we have by [theorem: <reference|real rational numbers specification>]
        that <math|q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>. So we have\ 

        <\equation>
          <label|eq 9.114.041>x\<less\>q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>
        </equation>

        From [eq: <reference|eq 9.113.041>] we have that
        <math|m\<leqslant\>n\<cdot\>x+1\<less\>n\<cdot\>y> [see eq:
        <reference|eq 9.111.041>] so that <math|m\<less\>n\<cdot\>y> and by
        multiplying both sides by <math|n<rsup|-1>> that
        <math|q=m/n\<less\>y>. Combining this with [eq: <reference|eq
        9.114.041>] gives finally

        <\equation*>
          x\<less\>q\<less\>y<text| where
          <math|q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>>
        </equation*>

        <item*|<math|x=0>>Then <math|0\<less\>y> and by [corollary:
        <reference|real Archimedean property consequence (1)>] there exists a
        <math|n\<in\>\<bbb-N\><rsub|\<bbb-R\>>> such that
        <math|0\<less\>1/n\<less\>y>. As <math|1,n\<in\>\<bbb-N\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>>
        we have by [theorem: <reference|real rational numbers specification>]
        that <math|1/n\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> hence if we take
        <math|q=1/n> we have that\ 

        <\equation*>
          x\<less\>q\<less\>y<text| where
          <math|q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>>
        </equation*>
      </description>

      So we have proved that\ 

      <\equation>
        <label|eq 9.115.041>\<forall\>x,y\<in\>\<bbb-R\><text| with
        <math|0\<leqslant\>x\<wedge\>x\<less\>y<text| there exist a
        <math|q\<in\>\<bbb-Q\><rsub|\<bbb-R\>><text| such that
        <math|x\<less\>q\<less\>y>>>>>>
      </equation>

      So the only case left to prove is where <math|x\<less\>0>. Then we for
      <math|y> we have either\ 

      <\description>
        <item*|<math|0\<less\>y>>Then if we tak
        <math|q=0\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-R\>>>
        so that\ 

        <\equation*>
          x\<less\>q\<less\>y<text| with >q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>
        </equation*>

        <item*|<math|y\<leqslant\>0>>Then <math|x\<less\>y\<leqslant\>0> or
        using [theorems: <reference|real ordered field>, <reference|field
        order properties>] <math|0\<leqslant\>-y\<less\>-x>. Take
        <math|x<rprime|'>=-y> and <math|y<rprime|'>=-x> then
        <math|0\<leqslant\>x<rprime|'>\<less\>y<rprime|'>> and by [eq:
        <reference|eq 9.115.041>] there exists a
        <math|q<rprime|'>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> such that
        <math|x<rprime|'>\<less\>q<rprime|'>\<less\>y<rprime|'>>. So
        <math|-y\<less\>q<rprime|'>\<less\>-x> or
        <math|x\<less\>-q<rprime|'>\<less\>y>. As
        <math|<around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,+|\<rangle\>>> is
        a sub group of <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> it
        follows that<math|> <math|-q<rprime|'>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>
        hence if we take <math|q=-q<rprime|'>> then we have\ 

        <\equation*>
          x\<less\>q\<less\>y<text| where >q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>
        </equation*>
      </description>

      <item>Finally we prove the case for the irrational numbers. By
      [theorem: <reference|real irrational numbers>]
      <math|\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>\<neq\>\<varnothing\>> so
      there exist a <math|z\<in\>\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>>, then
      from <math|x\<less\>y> we have that <math|x+z\<less\>y+z>. Using (1)
      there exist a <math|r\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> such that
      <math|x+z\<less\>r\<less\>y+z> or <math|x\<less\>r-q\<less\>y>. Take
      <math|q=r-z> then we have <math|x\<less\>q\<less\>y>. Assume that
      <math|q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> then as
      <math|z=r-q,r\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> and
      <math|<around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,+|\<rangle\>>> is a
      sub group of <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> we have
      that <math|z\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> contradicting
      <math|z\<in\>\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>>. So we must have
      that <math|q\<in\>\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>> and we conclude
      that\ 

      <\equation*>
        x\<less\>q\<less\>y<text| where <math|x\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>>
      </equation*>
    </enumerate>
  </proof>

  <section|Recursion and Induction in the set of real numbers>

  <subsection|Extending Mathematical induction and recursion>

  To be able to use recursion and induction arguments we have to extend
  mathematical induction and recursion using
  <math|\<bbb-N\><rsub|0,\<bbb-R\>>> instead of <math|\<bbb-N\><rsub|0>>.
  First we handle induction and then recursion.

  <\definition>
    Let <math|n,m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> then we define\ 

    <\equation*>
      <around*|{|n,\<ldots\>,m|}>=<around*|{|i\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|n\<leqslant\>i\<leqslant\>m|}>
    </equation*>

    <\equation*>
      <around*|{|n,,\<ldots\>,\<infty\>|}>=<around*|{|i\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|n\<leqslant\>i|}>
    </equation*>
  </definition>

  <\theorem>
    <label|real mathematical induction>Let
    <math|k\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> and
    <math|S\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>> such that\ 

    <\enumerate>
      <item><math|k\<in\>S>

      <item>If <math|n\<in\>S> then <math|n+1\<in\>S>
    </enumerate>

    then <math|S=<around*|{|k,\<ldots\>,\<infty\>|}>>
  </theorem>

  <\proof>
    Using [theorems: <reference|real NR properties>, <reference|order
    isomorphism condition (2)>]] we have that\ 

    <\equation>
      <label|eq 9.118.042>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,+|\<rangle\>><text|
      is a group isomorphisms and >i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|1|)>=1
    </equation>

    <\equation>
      <label|eq 9.119.042>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
      and ><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>:<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>><text|
      are order isomorphisms>
    </equation>

    Define <math|T=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|S|)>>
    and take <math|k<rprime|'>=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|k|)>>
    then we have

    <\description>
      <item*|<math|k<rprime|'>\<in\>T>>As
      <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|k<rprime|'>|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|k|)>|)>=k\<in\>S>
      it follows that <math|k<rprime|'>\<in\>T>

      <item*|<math|n\<in\>T\<Rightarrow\>n+1\<in\>T>>As
      <math|n\<in\>T=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|S|)>>
      we have that <math|n<rprime|'>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>\<in\>S>,
      by the hypothesis we have then that <math|n<rprime|'>+1\<in\>S>. Hence

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n+1|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 9.118.042>]>>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>+i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|1|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 9.118.042>]>>n<rprime|'>+1\<in\>S
      </equation*>

      so that <math|n+1\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|S|)>=T>.
    </description>

    Using [theorem: <reference|mathematical induction>] it follows that
    <math|T=<around*|{|k<rprime|'>,\<ldots\>\<infty\>|}>> so

    <\equation>
      <label|eq 9.120.042>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|T|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|S|)>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 9.118.042>] and [theorem: <reference|function preimage of
      image>]>>S
    </equation>

    Now if <math|x\<in\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>|)>>
    then <math|\<exists\>x<rprime|'>\<in\><around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>>
    such that <math|x=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>>,
    as <math|x<rprime|'>\<in\><around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>>
    we have that <math|k<rprime|'>\<leqslant\>x<rprime|'>>, hence by [eq:
    <reference|eq 9.119.042>]

    <\equation*>
      k=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|k|)>|)>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|k<rprime|'>|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>=x
    </equation*>

    proving that <math|x\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> or\ 

    <\equation>
      <label|eq 9.121.042>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>|)>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>
    </equation>

    Further if <math|x\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
    <math|k\<leqslant\>x>, using [eq: <reference|eq 9.119.042>] we have then
    that <math|k<rprime|'>=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|k|)>\<leqslant\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|x|)>>
    so that <math|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|x|)>\<in\><around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>>
    or <math|x=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|x|)>|)>\<in\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>|)>>.
    Hence <math|<around*|{|k,\<ldots\>,\<infty\>|}>\<subseteq\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>|)>>
    which by [eq: <reference|eq 9.121.042>] proves that

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|{|k<rprime|'>,\<ldots\>,\<infty\>|}>|)>=<around*|{|k,\<ldots\>,\<infty\>|}>.
    </equation*>

    Combining this with [eq: <reference|eq 9.120.042>] gives finally that\ 

    <\equation*>
      S=<around*|{|k,\<ldots\>,\<infty\>|}>
    </equation*>
  </proof>

  Next we handle recursive defnitions\ 

  <\theorem>
    <label|real recursion>Let <math|A> be a set, <math|a\<in\>A> and
    <math|f:A\<rightarrow\>A> a function then there exist a
    <with|font-series|bold|unique> function\ 

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A
    </equation*>

    such that:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>><text| we have
      <math|\<lambda\><around*|(|n+1|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>>>
    </enumerate>
  </theorem>

  <\proof>
    Using [theorems: <reference|real NR properties>,<reference|group
    isomorphism inverse>] we have that

    <\equation>
      <label|eq 9.122.042>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,R>,+|\<rangle\>><text|
      and ><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>:<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>><text|
      are group isomorphisms>
    </equation>

    and\ 

    <\equation>
      <label|eq 9.123.042>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|1|)>=1
    </equation>

    Now by [theorem: <reference|recursion final>] there exist a
    <with|font-series|bold|unique> function
    <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A> such that

    <\enumerate>
      <item><math|\<beta\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<beta\><around*|(|n+1|)>=f<around*|(|\<beta\><around*|(|n|)>|)>>
    </enumerate>

    Define <math|\<lambda\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A> by
    <math|\<lambda\>=\<beta\>\<circ\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>>
    then we have:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=\<beta\>\<circ\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|0|)>=\<beta\><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|0|)>|)>=\<beta\><around*|(|0|)>=a>

      <item>Let <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> and take
      <math|n<rprime|'>=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>>
      then

      <\equation*>
        <around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n+1|)>=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>+<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|1|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 9.123.042>]>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>+1=n<rprime|'>+1
      </equation*>

      So that

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<gamma\><around*|(|n+1|)>>|<cell|=>|<cell|<around*|(|\<beta\>\<circ\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>|)><around*|(|n+1|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n+1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\><around*|(|n<rprime|'>+1|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<beta\><around*|(|n<rprime|'>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<beta\><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|n|)>|)>>>>>
      </eqnarray*>

      Hence we have proved the existence of
      <math|\<lambda\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A>.
    </enumerate>

    Next we prove uniquenes, so assume that there is another
    <math|\<gamma\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A> such that
    <math|\<gamma\><around*|(|0|)>=a> and
    <math|\<gamma\><around*|(|n+1|)>=f<around*|(|\<gamma\><around*|(|n|)>|)>>.
    Then <math|<around*|(|\<gamma\>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)>:\<bbb-N\><rsub|0>\<rightarrow\>A>
    is such that

    <\equation*>
      <around*|(|\<gamma\>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><around*|(|0|)>=\<gamma\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|0|)>|)>=\<gamma\><around*|(|0|)>=a
    </equation*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<gamma\>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><around*|(|n+1|)>>|<cell|=>|<cell|\<gamma\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n+1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<gamma\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>+i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<gamma\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>+1|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<gamma\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|n|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|<around*|(|\<gamma\>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><around*|(|n|)>|)>>>>>
    </eqnarray*>

    As <math|\<beta\>> is unique we have by the above that
    <math|\<beta\>=\<gamma\>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>>,
    so that

    <\equation*>
      \<lambda\>=\<beta\>\<circ\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>=<around*|(|\<gamma\>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)>\<circ\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>=\<gamma\>\<circ\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>\<circ\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>|)>=\<gamma\>\<circ\>id<rsub|\<bbb-N\><rsub|0,\<bbb-R\>>>=\<gamma\>
    </equation*>

    proving uniqueness.
  </proof>

  <\theorem>
    <label|real recursion iteration><dueto|Iteration>Let <math|A> be a set
    and <math|f:A\<rightarrow\>A> a function then
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> there exist a
    function\ 

    <\equation*>
      <around*|(|f|)><rsup|n>:A\<rightarrow\>A
    </equation*>

    such that:

    <\enumerate>
      <item><math|<around*|(|f|)><rsup|0>=Id<rsub|A>>

      <item><math|<around*|(|f|)><rsup|n+1>=f\<circ\><around*|(|f|)><rsup|n>>
    </enumerate>
  </theorem>

  <\proof>
    Let <math|a\<in\>A> and use the recursion [theorem: <reference|real
    recursion>] to find a function\ 

    <\equation*>
      \<lambda\><rsub|a>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A<text|
      such that >\<lambda\><rsub|a><around*|(|0|)>=a<text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>><text|
      >\<lambda\><rsub|a><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><rsub|a><around*|(|n|)>|)>
    </equation*>

    Define now <math|>

    <\equation*>
      <around*|(|f|)><rsup|n>:A\<rightarrow\>A<text| where
      ><around*|(|f<rsup|>|)><rsup|n><around*|(|a|)>=\<lambda\><rsub|a><around*|(|n|)>
    </equation*>

    Then we have\ 

    <\enumerate>
      <item><math|\<forall\>a\<in\>A> we have that
      <math|<around*|(|f|)><rsup|0><around*|(|a|)>=\<lambda\><rsub|a><around*|(|0|)>=a>
      so that

      <\equation*>
        <around*|(|f|)><rsup|0>=Id<rsub|A>
      </equation*>

      <item><math|\<forall\>a\<in\>A> we have that
      <math|<around*|(|f|)><rsup|s<around*|(|n|)>><around*|(|a|)>=\<lambda\><rsub|a><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><rsub|a><around*|(|n|)>|)>=f<around*|(|<around*|(|f|)><rsup|n><around*|(|a|)>|)>=<around*|(|f\<circ\><around*|(|f|)><rsup|n>|)><around*|(|a|)>>
      so that

      <\equation*>
        <around*|(|f|)><rsup|s<around*|(|n|)>>=f\<circ\><around*|(|f|)><rsup|n>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|real recursion step>Let <math|A> be a set, <math|a\<in\>A> and
    <math|g:\<bbb-N\><rsub|0,\<bbb-R\>>\<times\>A\<rightarrow\>A> then there
    exist a <with|font-series|bold|unique> function\ 

    <\equation*>
      \<gamma\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A
    </equation*>

    such that:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
      <math|\<lambda\><around*|(|n+1|)>=g<around*|(|n,\<lambda\><around*|(|n|)>|)>>
    </enumerate>
  </theorem>

  <\proof>
    By [theorems: <reference|real NR properties>,<reference|group isomorphism
    inverse>] we have that

    <\equation>
      <label|eq 9.124.042>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,R>,+|\<rangle\>><text|
      and ><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>:<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>><text|
      are group isomorphisms>
    </equation>

    and\ 

    <\equation>
      <label|eq 9.125.042>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|1|)>=1
    </equation>

    Define now\ 

    <\equation*>
      h:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>A<text| by
      >h<around*|(|n,a|)>=g<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><around*|(|n|)>,a|)>
    </equation*>

    Using [theorem: <reference|recursion step (2)>] there exist a
    <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A> such that\ 

    <\enumerate>
      <item><math|\<beta\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>><text| we have
      >\<beta\><around*|(|n+1|)>=h<around*|(|n,\<beta\><around*|(|n|)>|)>>
    </enumerate>

    Define now

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A<text| by
      >\<lambda\>=\<beta\>\<circ\><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1>
    </equation*>

    then we have:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=\<beta\><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|0|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|eq 9.124.042>]>>\<beta\><around*|(|0|)>=a>

      <item>If <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<lambda\><around*|(|n+1|)>>|<cell|=>|<cell|\<beta\><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n+1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 9.124.042>]>>>|<cell|\<beta\><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>+<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 9.125.042>]>>>|<cell|\<beta\><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>+1|)>>>|<row|<cell|>|<cell|=>|<cell|h<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>,\<beta\><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|h<around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>,\<lambda\><around*|(|n|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>|)><rsup|-1><around*|(|n|)>|)>,\<lambda\><around*|(|n|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|,\<lambda\><around*|(|n|)>|)>>>>>
      </eqnarray*>
    </enumerate>

    which proves existence. Now for uniqueness assume that there is a\ 

    <\equation*>
      \<gamma\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A<text| such that
      >\<beta\><around*|(|0|)>=a<text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>><text| that
      >\<beta\><around*|(|s<around*|(|n|)>|)>=g<around*|(|n,\<beta\><around*|(|n|)>|)>
    </equation*>

    Define now <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|\<lambda\><around*|(|n|)>=\<gamma\><around*|(|n|)>|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|\<lambda\><around*|(|0|)>=a=\<gamma\><around*|(|0|)>>
      it follows that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As\ 

      <\equation*>
        \<lambda\><around*|(|n+1|)>=g<around*|(|n,\<lambda\><around*|(|n|)>|)>\<equallim\><rsub|n\<in\>S>g<around*|(|n,\<gamma\><around*|(|n|)>|)>=\<gamma\><around*|(|n+1|)>
      </equation*>

      we have that <math|n+1\<in\>S>
    </description>

    Using mathematical induction [theorem: <reference|real mathematical
    induction>] we have <math|S=\<bbb-N\><rsub|0,\<bbb-R\>>>, so
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> we have
    <math|n\<in\>S> hence <math|\<lambda\><around*|(|n|)>=\<gamma\><around*|(|n|)>>
    proving that\ 

    <\equation*>
      \<lambda\>=\<gamma\>
    </equation*>
  </proof>

  <\corollary>
    <label|real recursion step (2)>Let <math|A> be a set, <math|a\<in\>A> and
    <math|g:\<bbb-N\><rsub|0,\<bbb-R\>>\<times\>A\<rightarrow\>A> then there
    exist a <with|font-series|bold|unique> function\ 

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A
    </equation*>

    such that:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>
      <math|\<lambda\><around*|(|n|)>=g<around*|(|n-1,\<lambda\><around*|(|n-1|)>|)>>
    </enumerate>
  </corollary>

  <\proof>
    Using [theorem: <reference|real recursion step>] there exists a
    <with|font-series|bold|unique> <math|\<lambda\>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A>
    such that\ 

    <\equation*>
      \<lambda\><around*|(|0|)>=a<text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      >\<lambda\><around*|(|n+1|)>=g<around*|(|n,\<lambda\><around*|(|n|)>|)>
    </equation*>

    Let <math|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> then
    <math|1\<leqslant\>n> so that <math|n-1\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    such that <math|n=<around*|(|n-1|)>+1>, hence
    <math|\<lambda\><around*|(|n|)>=\<lambda\><around*|(|<around*|(|n-1|)>+1|)>=g<around*|(|n-1,\<lambda\><around*|(|n-1|)>|)>>.
  </proof>

  The two previous theorems gives a way of defining functions by recursions
  as is expressed in the following two definitions.

  <\definition>
    <label|real definition by recursion (1)>Let <math|A> be a set,
    <math|a\<in\>A> then we can define a function as follows:

    <\equation*>
      f:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A
    </equation*>

    \ is defined by:

    <\enumerate>
      <item><math|f<around*|(|0|)>=a>

      <item><math|f<around*|(|n+1|)>=G<around*|(|n,\<lambda\><around*|(|n|)>|)>>
    </enumerate>

    where <math|G<around*|(|n,\<lambda\><around*|(|n|)>|)>> is a expression
    of two parameters. The above is equivalent with the function defined by
    [theorem: <reference|real recursion step>] where <math|a\<in\>A> and
    <math|g:\<bbb-N\><rsub|0,\<bbb-R\>>\<times\>A\<rightarrow\>A> is defined
    by <math|g<around*|(|n,x|)>=G<around*|(|n,x|)>>.
  </definition>

  Another way to define a recursive function is based on [corollary:
  <reference|real recursion step (2)>]\ 

  <\definition>
    <label|real definition by recursion (2)>Let <math|A> be a set,
    <math|a\<in\>A> then we define <math|f:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>A>
    as follows

    <\equation*>
      f<around*|(|n|)>=<choice|<tformat|<table|<row|<cell|a<text| if
      >n=0>>|<row|<cell|G<around*|(|n-1,f<around*|(|n-1|)>|)><text| if
      >n\<in\><around*|{|1,\<ldots\>\<infty\>|}>>>>>>
    </equation*>

    Which is equivalent with the function defined by [theorem:
    <reference|recursion step form (3)>] where <math|a\<in\>A> and
    <math|g:\<bbb-N\><rsub|0,\<bbb-R\>>\<times\>A\<rightarrow\>A> is defined
    by <math|g<around*|(|n,x|)>=G<around*|(|n,x|)>>.
  </definition>

  We apply this to define power operation in <math|\<bbb-R\>>

  <subsection|Power in <math|\<bbb-R\>>>

  Next we define power in the set of real numbers.

  <\definition>
    <label|real power>Let <math|\<alpha\>\<in\>\<bbb-R\>> then
    <math|\<alpha\><rsup|<around*|(|.|)>>:\<bbb-N\><rsub|0,\<bbb-R\>>\<rightarrow\>\<bbb-R\>>
    is defined by <math|n\<rightarrow\>\<alpha\><rsup|n>> where

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\><rsup|0>>|<cell|=>|<cell|1>>|<row|<cell|\<alpha\><rsup|n+1>>|<cell|=>|<cell|\<alpha\>\<cdot\>\<alpha\><rsup|n>>>>>
    </eqnarray*>
  </definition>

  <\theorem>
    <label|real power properties (1)>Let <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    then we have\ 

    <\enumerate>
      <item>If <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> then
      <math|m<rsup|n>\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>

      <item>If <math|z\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> then
      <math|z<rsup|n>\<in\>\<bbb-Z\><rsub|\<bbb-R\>>>

      <item>If <math|q\<in\>\<bbb-Q\>> then
      <math|q<rsup|n>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>

      <item>If <math|\<alpha\>\<in\>\<bbb-R\><rsup|+>> then
      <math|\<alpha\><rsup|n>\<in\>\<bbb-R\><rsup|+>> [in other words if
      <math|0\<less\>\<alpha\>> then <math|0\<less\>\<alpha\><rsup|n>>]
    </enumerate>
  </theorem>

  <\proof>
    This is easely proved by induction.\ 

    <\enumerate>
      <item>Take <math|S<rsub|m>=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|m<rsup|n>\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>|}>>
      then we have

      <\description>
        <item*|<math|0\<in\>S<rsub|m>>>As
        <math|m<rsup|0>=1\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> we have that
        <math|0\<in\>S<rsub|m>>

        <item*|<math|n\<in\>S<rsub|m>\<Rightarrow\>n+1\<in\>S<rsub|m>>>Then
        <math|m<rsup|n+1>=m\<cdot\>m<rsup|n>>. As <math|n\<in\>S<rsub|m>> we
        have that <math|m<rsup|n>\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> and by
        the hypothese <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>, so, as
        <math|<around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<cdot\>|\<rangle\>>>
        is a sub group of <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>>,
        we have that <math|m\<cdot\>m<rsup|n>\<in\>S<rsub|m>>. Hence
        <math|n+1\<in\>S<rsub|m>.>
      </description>

      <item>Take <math|S<rsub|z>=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|z<rsup|n>\<in\>\<bbb-Z\>|}>>
      then we have

      <\description>
        <item*|<math|0\<in\>S<rsub|z>>>As
        <math|m<rsup|0>=1\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>>
        we have that <math|0\<in\>S<rsub|z>>

        <item*|<math|n\<in\>S<rsub|z>\<Rightarrow\>n+1\<in\>S<rsub|z>>>Then
        <math|z<rsup|n+1>=z\<cdot\>z<rsup|n>>. As <math|n\<in\>S<rsub|z>> we
        have that <math|z<rsup|n>\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> and by the
        hypothese <math|z\<in\>\<bbb-Z\><rsub|\<bbb-R\>>>, so, as
        <math|<around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,\<cdot\>|\<rangle\>>>
        is a sub group of <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>>,
        we have that <math|z\<cdot\>z<rsup|n>\<in\>S<rsub|z>>. Hence
        <math|n+1\<in\>S<rsub|z>.>
      </description>

      <item>Take <math|S<rsub|q>=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|q<rsup|n>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>|}>>
      then we have

      <\description>
        <item*|<math|0\<in\>S<rsub|q>>>As
        <math|q<rsup|0>=1\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-R\>>>
        we have that <math|0\<in\>S<rsub|q>>

        <item*|<math|n\<in\>S<rsub|q>\<Rightarrow\>n+1\<in\>S<rsub|q>>>Then
        <math|q<rsup|n+1>=q\<cdot\>q<rsup|n>>. As <math|n\<in\>S<rsub|q>> we
        have that <math|q<rsup|n>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> and by the
        hypothese <math|q\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>, so, as
        <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>> is a sub
        group of <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>>,
        we have that <math|q\<cdot\>q<rsup|n>\<in\>S<rsub|q>>. Hence
        <math|n+1\<in\>S<rsub|q>.>
      </description>

      <item>Take <math|S<rsub|\<alpha\>>=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|\<alpha\><rsup|n>\<in\>\<bbb-R\><rsup|+>|}>>
      then we have:

      <\description>
        <item*|<math|0\<in\>S<rsub|\<alpha\>>>>As
        <math|\<alpha\><rsup|0>=1\<in\>\<bbb-R\><rsup|+>> it follows that
        <math|0\<in\>S<rsub|\<alpha\>>>.

        <item*|<math|n\<in\>S<rsub|\<alpha\>>\<rightarrow\>n+1\<in\>S<rsub|\<alpha\>>>>As
        <math|n\<in\>S<rsub|\<alpha\>>> we have that
        <math|0\<less\>\<alpha\><rsup|n>> so that, as
        <math|0\<less\>\<alpha\>> we have that
        <math|0\<less\>\<alpha\>\<cdot\>\<alpha\><rsup|n>=\<alpha\><rsup|n+1>>
        proving that <math|n+1\<in\>S<rsub|\<alpha\>>.>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|real power and inequality>For <math|\<bbb-R\>> we have\ 

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> with
      <math|0\<less\>\<zeta\>\<less\>1> and
      <math|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> that
      <math|0\<less\>\<alpha\><rsup|n>\<less\>1>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> with<math|>
      <math|0\<less\>\<alpha\>\<less\>1> and
      <math|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>> that
      <math|0\<less\>\<alpha\><rsup|n>\<less\>x>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\>> such that
      <math|1\<leqslant\>\<alpha\>> and <math|\<alpha\>\<in\>\<bbb-N\><rsub|\<bbb-R\>>>
      we have:

      <\enumerate>
        <item>If <math|\<alpha\>\<less\>\<beta\>> then
        <math|\<alpha\>\<less\>\<beta\><rsup|n>>

        <item>If <math|\<alpha\>\<leqslant\>\<beta\>> then
        <math|\<alpha\>\<less\>\<beta\><rsup|n>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We proof this by induction on <math|n>. So let
      <math|S=<around*|{|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>\|0\<less\>\<alpha\><rsup|n>\<less\>1|}>>
      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|0\<less\>\<alpha\>\<less\>1> we have
        by (7.a) that <math|0=0\<cdot\>\<alpha\>\<less\>\<alpha\><rsup|1>=\<alpha\>\<less\>1\<cdot\>\<alpha\>>
        so \ that <math|0\<less\>\<alpha\><rsup|1>\<less\>\<alpha\>> proving
        that <math|1\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> we
        have <math|0\<less\>\<alpha\><rsup|n>\<less\>1>, so using [theorem:
        <reference|real ordered field>, <reference|field order properties>]
        we have that <math|0=0\<cdot\>\<alpha\>\<less\>\<alpha\><rsup|n>\<cdot\>\<alpha\>\<less\>1\<cdot\>\<alpha\>=\<alpha\>\<less\>1>
        or <math|0\<less\>\<alpha\><rsup|n+1>\<less\>1>. Hence
        <math|n+1\<in\>\<b-S\>>
      </description>

      Proving that <math|S=<around*|{|1,\<ldots\>,\<infty\>|}>> or
      <math|\<forall\>n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> we have
      <math|0\<less\>\<alpha\><rsup|n>\<less\>1>

      <item>As <math|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>> we have
      <math|2\<leqslant\>n\<Rightarrow\>1=2+<around*|(|-1|)>\<leqslant\>n+<around*|(|-1|)>=n-1>
      so that <math|<around*|(|n-1|)>\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>.
      Using <math|<around*|(|1|)>> we have
      <math|0\<less\>\<alpha\><rsup|n-1>\<less\>1> which as
      <math|0\<less\>\<alpha\>> gives by (7.a)
      <math|0\<less\>0\<cdot\>\<alpha\>\<less\>\<alpha\><rsup|n-1>\<cdot\>\<alpha\>\<less\>1\<cdot\>\<alpha\>=\<alpha\>>.
      Or as <math|\<alpha\><rsup|n-1>\<cdot\>\<alpha\>=\<alpha\><rsup|n>>
      that <math|0\<less\>\<alpha\><rsup|n>\<less\>\<alpha\>>.

      <item> Let <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> such that
      <math|1\<leqslant\>\<alpha\>> and <math|n\<in\>\<bbb-N\><rsub|\<bbb-R\>>>

      <\enumerate>
        <item>If <math|\<alpha\>\<less\>\<beta\>> we have to prove that
        <math|\<alpha\>\<less\>\<beta\><rsup|n>>. Let
        <math|S=<around*|{|n\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<beta\><rsup|n>|}>>
        then we have:

        <\description>
          <item*|<math|1\<in\>S>>As <math|\<alpha\>\<less\>\<beta\>=\<beta\><rsup|1>>
          we have that <math|1\<in\>S>

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As
          <math|1\<leqslant\>\<alpha\>\<less\>\<beta\>\<Rightarrow\>1\<less\>\<beta\>>
          we have by [theorem: <reference|real ordered field>,
          <reference|field order properties>] that

          <\equation>
            <label|eq 9.125.046>\<alpha\>=1\<cdot\>\<alpha\>\<less\>\<beta\>\<cdot\>\<alpha\>=\<alpha\>\<cdot\>\<beta\>
          </equation>

          As <math|n\<in\>S> we have that
          <math|\<alpha\>\<less\>\<beta\><rsup|n>> which by [theorem:
          <reference|real ordered field>, <reference|field order properties>]
          gives <math|\<alpha\>\<cdot\>\<beta\>\<less\>\<beta\><rsup|n>\<cdot\>\<beta\>=\<beta\><rsup|n+1>>,
          combining this with [eq: <reference|eq 9.125.046>] proves
          <math|\<alpha\>\<less\>\<beta\><rsup|n+1>>. So <math|n+1\<in\>S>.\ 
        </description>

        So <math|S=<around*|{|1,\<ldots\>,n|}>=\<bbb-N\>> hence
        <math|\<forall\>n\<in\>\<bbb-N\>> we have
        <math|\<alpha\>\<less\>\<beta\><rsup|n>>.

        <item>If <math|\<alpha\>\<leqslant\>\<beta\>> we have to prove that
        <math|\<alpha\>\<leqslant\>\<beta\><rsup|n>>. Let
        <math|S=<around*|{|n\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<leqslant\>\<beta\><rsup|n>|}>>
        then we have:

        <\description>
          <item*|<math|1\<in\>S>>As <math|\<alpha\>\<leqslant\>\<beta\>=\<beta\><rsup|1>>
          we have that <math|1\<in\>S>

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As
          <math|1\<leqslant\>\<alpha\>\<leqslant\>\<beta\>\<Rightarrow\>1\<leqslant\>\<beta\>>
          we have by (7.a) that

          <\equation>
            <label|eq 9.126.046>\<alpha\>=1\<cdot\>\<alpha\>\<leqslant\>\<beta\>\<cdot\>\<alpha\>=\<alpha\>\<cdot\>\<beta\>
          </equation>

          As <math|n\<in\>S> we have that
          <math|\<alpha\>\<leqslant\>\<beta\><rsup|n>> which by [theorem:
          <reference|real ordered field>, <reference|field order properties>]
          gives <math|\<alpha\>\<cdot\>\<beta\>\<leqslant\>\<beta\><rsup|n>\<cdot\>\<beta\>=\<beta\><rsup|n+1>>,
          combining this with [eq: <reference|eq 9.126.046>] proves
          <math|\<alpha\>\<leqslant\>\<beta\><rsup|n+1>>. So
          <math|n+1\<in\>S>.\ 
        </description>

        So <math|S=<around*|{|1,\<ldots\>,n|}>=\<bbb-N\>> hence
        <math|\<forall\>n\<in\>\<bbb-N\>> we have
        <math|\<alpha\>\<leqslant\>\<beta\><rsup|n>>.
      </enumerate>
    </enumerate>
  </proof>

  <\theorem>
    Let <math|\<alpha\>\<in\>\<bbb-R\>> we have
    <math|\<alpha\><rsup|1>=\<alpha\>> and
    <math|\<alpha\><rsup|2>=\<alpha\>\<cdot\>\<alpha\>>
  </theorem>

  <\proof>
    We have <math|\<alpha\><rsup|1>=\<alpha\><rsup|0+1>=\<alpha\>\<cdot\>\<alpha\><rsup|0>=\<alpha\>\<cdot\>1=\<alpha\>>
    and <math|\<alpha\><rsup|2>=\<alpha\><rsup|1+1>=\<alpha\>\<cdot\>\<alpha\><rsup|1>=\<alpha\>\<cdot\>\<alpha\>>
  </proof>

  <\theorem>
    <label|real q^(n+m)=q^n.q^m>If <math|n,m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    and <math|\<alpha\>\<in\>\<bbb-R\>> then
    <math|\<alpha\><rsup|n+m>=\<alpha\><rsup|n>\<cdot\>\<alpha\><rsup|m>>
  </theorem>

  <\proof>
    This is proved by induction, so let <math|\<alpha\>\<in\>\<bbb-R\>,n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    and define\ 

    <\equation*>
      S<rsub|n,\<alpha\>>=<around*|{|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|\<alpha\><rsup|n+m>=\<alpha\><rsup|n>\<cdot\>\<alpha\><rsup|m>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n,\<alpha\>>>>Then
      <math|\<alpha\><rsup|n+0>=\<alpha\><rsup|n>=\<alpha\><rsup|n>\<cdot\>1=\<alpha\><rsup|n>\<cdot\>\<alpha\><rsup|0>>
      proving that <math|0\<in\>S<rsub|n,\<alpha\>>>.

      <item*|<math|m\<in\>S<rsub|n,\<alpha\>>\<Rightarrow\>m+1\<in\>S<rsub|n,\<alpha\>>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<alpha\><rsup|n+<around*|(|m+1|)>>>|<cell|=>|<cell|\<alpha\><rsup|<around*|(|n+m|)>+1>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<alpha\><rsup|<around*|(|n+m|)>>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsup|n+m>\<cdot\>\<alpha\>>>|<row|<cell|>|<cell|\<equallim\><rsub|m\<in\>S<rsub|n,\<alpha\>><rsub|>>>|<cell|<around*|(|\<alpha\><rsup|n>\<cdot\>\<alpha\><rsup|m>|)>\<cdot\>\<alpha\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsup|n>\<cdot\><around*|(|\<alpha\><rsup|m>\<cdot\>\<alpha\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsup|n>\<cdot\><around*|(|\<alpha\>\<cdot\>\<alpha\><rsup|m>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsup|n>\<cdot\>\<alpha\><rsup|m+1>>>>>
      </eqnarray*>

      proving that <math|m+1\<in\>S<rsub|n,\<alpha\>>>
    </description>
  </proof>

  <\theorem>
    <label|real power of inverse>Let <math|x\<in\>\<bbb-R\>\\<around*|{|0|}>>
    then <math|<around*|(|x<rsup|-1>|)><rsup|n>=<around*|(|x<rsup|n>|)><rsup|-1>>
    or in other words <math|<around*|(|1/x|)><rsup|n>=1/x<rsup|n>>
  </theorem>

  <\proof>
    Theorem we prove this by induction, take
    <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|<around*|(|x<rsup|-1>|)><rsup|n>=<around*|(|x<rsup|n>|)><rsup|-1>|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|<around*|(|1/x|)><rsup|0>=1=<around*|(|1|)><rsup|-1>=<around*|(|x<rsup|0>|)>>
      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<rightarrow\>n+1\<in\>S>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x<rsup|-1>|)><rsup|n+1>>|<cell|=>|<cell|<around*|(|x<rsup|-1>|)>\<cdot\><around*|(|x<rsup|-1>|)><rsup|n>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|x<rsup|-1>|)>\<cdot\><around*|(|x<rsup|n>|)><rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|field inverse of product>]>>>|<cell|<around*|(|x\<cdot\>x<rsup|n>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsup|n+1>|)><rsup|-1>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>

    \;
  </proof>

  <\theorem>
    <label|real power properties>Let <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    then we have

    <\enumerate>
      <item>If <math|n\<neq\>0> then <math|0<rsup|n>=0> [note that by
      definition <math|0<rsup|0>=1>]

      <item><math|1<rsup|n>=1>

      <item><math|<around*|(|-1|)><rsup|n>=1\<vee\><around*|(|-1|)><rsup|n>=-1>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n>=1>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n+1>=-1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|n\<neq\>0> then <math|\<exists\>m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
      such that <math|n=m+1> so that <math|0<rsup|n>=0<rsup|m+1>=0\<cdot\>0<rsup|m>=0>

      <item>We proceed by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|1<rsup|n>=1|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>><math|1<rsup|0>=1> by definition, proving that
        <math|0\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>><math|1<rsup|n+1>=1\<cdot\>1<rsup|n>\<equallim\><rsub|n\<in\>S>1\<cdot\>1=1>
        proving that <math|n+1\<in\>S>
      </description>

      <item>Again we use induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|<around*|(|-1|)><rsup|n>=1\<vee\><around*|(|-1|)><rsup|n>=-1|}>
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
          <math|<around*|(|-1|)><rsup|n+1>=<around*|(|-1|)>\<cdot\><around*|(|-1|)><rsup|n>=<around*|(|-1|)>\<cdot\><around*|(|-1|)>\<equallim\><rsub|<text|[theorem:
          <reference|real -(a.b)=(-a).b=(a.(-b)>]>>1\<cdot\>1=1> so that
          <math|n+1\<in\>S>
        </description>
      </description>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n>=<around*|(|-1|)><rsup|<around*|(|1+1|)>\<cdot\>n>=<around*|(|-1|)><rsup|n+n>\<equallim\><rsub|<text|[theorem:
      <reference|real q^(n+m)=q^n.q^m>]>><around*|(|-1|)><rsup|n>\<cdot\><around*|(|-1|)><rsup|n>\<equallim\><rsub|<text|[theorem:
      <reference|real -(a.b)=(-a).b=(a.(-b)>]] and (3)>><rsup|>1>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n+1>=<around*|(|-1|)>\<cdot\><around*|(|-1|)><rsup|2\<cdot\>n>\<equallim\><rsub|<around*|(|4|)>><around*|(|-1|)>\<cdot\>1=-1>
    </enumerate>
  </proof>

  The following theorems will play a important role in the calculation of
  limits.

  <\theorem>
    <label|real n\<less\>2^n><math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    we have that <math|n\<less\>2<rsup|n>>\ 
  </theorem>

  <\proof>
    This is proved by induction so let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>\|n\<less\>2<rsup|n>|}>>
    then we have\ 

    <\description>
      <item*|<math|0\<in\>S>>As <math|n=0\<less\>1=2<rsup|0>> we have that
      <math|0\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>For <math|n+1> we have
      the following cases to consider:

      <\description>
        <item*|<math|n+1=1>>Then <math|n+1=1\<less\>2=2<rsup|1>=2<rsup|n+1>>
        proving that in this case <math|n+1\<in\>S>

        <item*|<math|1\<less\>n+1>>Then by [theorem: <reference|real
        x\<less\>y=\<gtr\>x+1\<less\>=y>] we have <math|1+1\<leqslant\>n+1>
        so that <math|1\<leqslant\>n>, adding <math|n> to both sides gives
        then <math|n+1\<leqslant\>n+n=<around*|(|1+1|)>\<cdot\>n=2\<cdot\>n>.
        Further as <math|n\<in\>S> we have <math|n\<less\>2<rsup|n>> so that
        <math|2\<cdot\>n\<less\>2\<cdot\>2<rsup|n>=2<rsup|n+1>>, hence we
        have <math|n+1\<less\>2<rsup|n+1>>, proving that <math|n+1\<in\>S>.
      </description>
    </description>
  </proof>

  <\corollary>
    <label|real a\<less\>2^n><math|\<forall\>x\<in\>\<bbb-R\>> there exists a
    <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
    <math|x\<less\>2<rsup|n>>
  </corollary>

  <\proof>
    Let <math|x\<in\>\<bbb-R\>> then by [corollary: <reference|real
    Archimedean property consequence (1)>] there exist a
    <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that <math|x\<less\>n>,
    using [theorem: <reference|real n\<less\>2^n>] <math|n\<less\>2<rsup|n>>
    so we have <math|x\<less\>2<rsup|n>.>
  </proof>

  <\lemma>
    <label|real (x^n-1)\<gtr\>=n.(x-1)>Let <math|x\<in\>\<bbb-R\>> with
    <math|1\<less\>x> then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    we have

    <\equation*>
      n\<cdot\><around*|(|x-1|)>\<leqslant\>x<rsup|n>-1
    </equation*>
  </lemma>

  <\proof>
    We prove this by induction, so let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|n\<cdot\><around*|(|x-1|)>\<leqslant\>x<rsup|n>-1|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S>>Then <math|n\<cdot\><around*|(|x-1|)>=0\<cdot\><around*|(|x-1|)>=0\<leqslant\>0=1-1=x<rsup|0>-1=x<rsup|n>-1>
      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Then as <math|n\<in\>S>
      we have <math|><math|n\<cdot\><around*|(|x-1|)>\<leqslant\>x<rsup|n>-1>
      which as <math|0\<less\>x> prove that\ 

      <\equation>
        <label|eq 9.116.041>x\<cdot\>n\<cdot\><around*|(|x-1|)>\<leqslant\>x\<cdot\><around*|(|x<rsup|n>-1|)>
      </equation>

      As <math|1\<less\>x> we have that <math|0\<less\>x-1\<Rightarrowlim\><rsub|0\<leqslant\>n>0\<less\>n\<cdot\><around*|(|x-1|)>>
      so that

      <\equation*>
        n\<cdot\><around*|(|x-1|)>=1\<cdot\>n\<cdot\><around*|(|x-1|)>\<less\>x\<cdot\>n\<cdot\><around*|(|x-1|)>
      </equation*>

      which combined with [eq: <reference|eq 9.116.041>] proves that\ 

      <\equation>
        <label|eq 9.117.041>n\<cdot\><around*|(|x-1|)>\<leqslant\>x\<cdot\><around*|(|x<rsup|n>-1|)>
      </equation>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|n+1>-1>|<cell|=>|<cell|x\<cdot\>x<rsup|n>-1>>|<row|<cell|>|<cell|=>|<cell|x\<cdot\>x<rsup|n>-x+x-1>>|<row|<cell|>|<cell|=>|<cell|x\<cdot\><around*|(|x<rsup|n>-1|)>+<around*|(|x-1|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
        <reference|eq 9.117.041>]>>>|<cell|n\<cdot\><around*|(|x-1|)>+<around*|(|x-1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\><around*|(|x-1|)>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\theorem>
    <label|real x^n\<gtr\>n if x\<gtr\>1 (R)>If
    <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> and <math|x\<in\>\<bbb-R\>>
    with <math|1\<less\>x> then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0><rsub|>,\<bbb-R\>>
    such that <math|m\<less\>x<rsup|n>>
  </theorem>

  <\proof>
    For <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> we have either:

    <\description>
      <item*|<math|m=1>>Then <math|m=0\<less\>1=x<rsup|0>> proving the
      theorem in this case.

      <item*|<math|m=1>>Then <math|m=1\<less\>x=x<rsup|1>> proving the
      theorem in this case.

      <item*|<math|1\<less\>m>>Then <math|0\<less\>m-1> and as
      <math|0\<less\>x-1\<Rightarrow\><around*|(|x-1|)><rsup|-1>> so that
      <math|<around*|(|m-1|)>/<around*|(|x-1|)>\<gtr\>0>. By [corollary:
      <reference|real Archimedean property consequence (1)>] there exist a
      <math|n<rprime|'>\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
      <math|<around*|(|m-1|)>/<around*|(|x-1|)>\<less\>n>. As
      <math|0\<less\>x-1> we have <math|m-1\<less\>n\<cdot\><around*|(|x-1|)>>,
      by [lemma: <reference|real (x^n-1)\<gtr\>=n.(x-1)>]
      <math|n\<cdot\><around*|(|x-1|)>\<leqslant\><around*|(|x<rsup|n>-1|)>>,
      hence <math|m-1\<leqslant\>x<rsup|n>-1> or \ <math|m\<less\>x<rsup|n>>,
      proving the theorem in this case.
    </description>
  </proof>

  <\theorem>
    <label|real n\<less\>m and 0\<less\>x\<less\>1 then x^n\<less\>x^m>If
    <math|x\<in\>\<bbb-R\>> with <math|0\<less\>x\<less\>1> and
    <math|n,m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that <math|n\<less\>m>
    then <math|x<rsup|m>\<less\>x<rsup|n>>
  </theorem>

  <\proof>
    We prove this by induction, let <math|m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
    and take <math|S<rsub|m>=<around*|{|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>\|x<rsup|m+n>\<less\>x<rsup|m>|}>>
    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S<rsub|m>>>As <math|0\<less\>x> we have by
      [theorem: <reference|real power properties (1)>] that
      <math|0\<less\>x<rsup|m>>, hence from <math|x\<less\>1> we have that
      <math|x<rsup|m+1>=x\<cdot\>x<rsup|m>\<less\>1\<cdot\>x<rsup|m>=x<rsup|m>>,
      proving that <math|1\<in\>S<rsub|m>>.

      <item*|<math|n\<in\>S<rsub|m>\<Rightarrow\>n+1\<in\>S<rsub|m>>>As
      <math|x\<less\>1> and by [theorem: <reference|real power properties
      (1)>] <math|0\<less\>x<rsup|m+n>> we have that
      <math|x<rsup|m+<around*|(|n+1|)>>=x\<cdot\>x<rsup|m+n>\<less\>x<rsup|m+n>\<Rightarrowlim\><rsub|n\<in\>S<rsub|m>\<Rightarrow\>x<rsup|m+n>\<less\>x<rsup|m>>x<rsup|m+<around*|(|n+1|)>>\<less\>x<rsup|m>>
      proving that <math|n+1\<in\>S<rsub|m>>.
    </description>

    Using Mathematical induction [see theorem: <reference|real mathematical
    induction>] we have that <math|S<rsub|m>=<around*|{|1,\<ldots\>,\<infty\>|}><rsub|>>.So
    take <math|n,m\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> with <math|n\<less\>m>
    then <math|k=m-n\<gtr\>0\<Rightarrow\>k\<geqslant\>1> so that
    <math|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>=S<rsub|n>> hence
    <math|x<rsup|m>=x<rsup|n+k>\<less\>x<rsup|n><rsup|> completing the
    proof.>
  </proof>

  <\theorem>
    <label|real 0\<less\>x\<less\>1 then 0\<less\>x^n\<less\>e>Let
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and <math|x\<in\>\<bbb-R\>>
    such that <math|0\<less\>x\<less\>1> then
    <math|\<exists\>n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
    <math|0\<less\>x<rsup|n>\<less\>\<varepsilon\>>
  </theorem>

  <\proof>
    As <math|0\<less\>\<varepsilon\>> we have by [theorem: <reference|real
    Archimedean property consequence (1)>] that
    <math|\<exists\>m\<in\>\<bbb-N\><rsub|\<bbb-R\>>> such that
    <math|0\<less\>1/m\<less\>\<varepsilon\>>, hence using [theorems:
    <reference|real ordered field>, <reference|field order properties>]
    <math|0\<less\>1/\<varepsilon\>\<less\>m>. As <math|0\<less\>x\<less\>1>
    we have by [theorems: <reference|real ordered field>, <reference|field
    order properties>] <math|1=1/1\<less\>1/x>, so using the previous theorem
    [theorem: <reference|real x^n\<gtr\>n if x\<gtr\>1 (R)>] there exist a
    <math|n\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>> such that
    <math|m\<less\><around*|(|1/x|)><rsup|n>\<equallim\><rsub|<text|[theorem:
    <reference|real power of inverse>]>>1/x<rsup|n>>. Hence we have
    <math|0\<less\>1/\<varepsilon\>\<less\>1/x<rsup|n>> which by [theorems:
    <reference|real ordered field>, <reference|field order properties>] gives
    <math|0\<less\>x<rsup|n>\<less\>\<varepsilon\>>.
  </proof>

  <section|The square root>

  <\theorem>
    <label|real square operator is a bijection>The function

    <\equation*>
      <around*|(|.|)><rsup|2>:\<bbb-R\><rsup|+><rsub|0>\<rightarrow\>\<bbb-R\><rsup|+><rsub|0><text|
      defined by ><around*|(|.|)><rsup|2><around*|(|x|)>=x<rsup|2>=x\<cdot\>x
    </equation*>

    is a bijection.
  </theorem>

  <\proof>
    We have\ 

    <\description>
      <item*|injectivity>Let <math|x,y\<in\>\<bbb-R\><rsup|+><rsub|0>\<equallim\><rsub|<text|[theorem:
      <reference|real R+ R->]>><around*|{|x\<in\>\<bbb-R\>\<wedge\>0\<leqslant\>x|}>>
      be such that <math|x<rsup|2>=y<rsup|2>> then we have the following
      possibilities:

      <\description>
        <item*|<math|x=0>>Assume that <math|y\<neq\>0> then <math|0\<less\>y>
        so that by [theorems: <reference|real ordered field>,
        <reference|field order properties>]
        <math|0\<less\>y\<cdot\>y=y<rsup|2>=x<rsup|2>=x\<cdot\>x=0> leading
        to the contradiction <math|0\<less\>0>. Hence we have <math|y=0> so
        that <math|x=y>.

        <item*|<math|y=0>>Assume that <math|x\<neq\>0> then <math|0\<less\>y>
        so that by [theorems: <reference|real ordered field>,
        <reference|field order properties>]
        <math|0\<less\>x\<cdot\>x=x<rsup|2>=y<rsup|2>=y\<cdot\>y=0> leading
        to the contradiction <math|0\<less\>0>. Hence we have <math|x=0> so
        that <math|x=y>.

        <item*|<math|0\<less\>x\<wedge\>0\<less\>y>>Assume that
        <math|x\<neq\>y> then we have either:

        <\description>
          <item*|<math|x\<less\>y>>Then by [theorems: <reference|real ordered
          field>, <reference|field order properties>] we have
          <math|x\<cdot\>y\<less\>y\<cdot\>y=y<rsup|2>> and
          <math|x<rsup|2>=x\<cdot\>x\<less\>y\<cdot\>x=x\<cdot\>y><space|1em>so
          that <math|x<rsup|2>\<neq\>y<rsup|2>> contradicting
          <math|x<rsup|2>=y<rsup|2>.>

          <item*|<math|y\<less\>x>>Then by [theorems: <reference|real ordered
          field>, <reference|field order properties>] we have
          <math|y\<cdot\>x\<less\>x\<cdot\>x=x<rsup|2>> and
          <math|y<rsup|2>=y\<cdot\>y\<less\>x\<cdot\>y=y\<cdot\>x> so that
          <math|x<rsup|2>\<neq\>y<rsup|2>> contradicting
          <math|x<rsup|2>=y<rsup|2>.>
        </description>
      </description>

      <item*|surjectivity>Given <math|y\<in\>\<bbb-R\><rsup|+><rsub|0>=<around*|{|x\<in\>\<bbb-R\>\|0\<leqslant\>x|}>>
      then <math|0\<leqslant\>y> and we have the folowing possibilities to
      consider:

      <\description>
        <item*|<math|y=0>>Then <math|0<rsup|0>=0\<cdot\>0=0=y>, hence if
        <math|x=0> we have <math|y=x<rsup|2>>

        <item*|<math|y=1>>Then <math|1<rsup|2>=1\<cdot\>1=1=y>, hence if
        <math|x=1> we have <math|y=x<rsup|2>>

        <item*|<math|0\<less\>y\<wedge\>y\<neq\>1>>Take then
        <math|S<rsub|y>=<around*|{|t\<in\>\<bbb-R\>\|0\<leqslant\>t\<wedge\>t<rsup|2>\<leqslant\>y|}>>.
        As <math|0<rsup|2>=0\<less\>y> we have <math|0\<in\>S<rsub|y>> hence

        <\equation>
          <label|eq 9.126.044>\<varnothing\>=S<rsub|y>
        </equation>

        As <math|y\<neq\>1> we have either:

        <\description>
          <item*|<math|y\<less\>1>>Assume that
          <math|\<exists\>t\<in\>S<rsub|y>> such that <math|1\<less\>t> then
          by [theorems: <reference|real ordered field>, <reference|field
          order properties>] we have <math|t\<less\>t\<cdot\>t=t<rsup|2>>, as
          <math|t\<in\>S<rsub|y>> we have
          <math|t<rsup|2>\<leqslant\>y\<less\>1> so that <math|t\<less\>1>
          contradicting <math|1\<less\>t>. Hence we have
          <math|\<forall\>t\<in\>S<rsub|y>> that <math|t\<leqslant\>1>
          proving that <math|S<rsub|y>> is bounded above.

          <item*|<math|1\<less\>y>>Assume that
          <math|\<exists\>t\<in\>S<rsub|y>> such that <math|y\<less\>t> then
          as <math|1\<less\>y> we have <math|1\<less\>t> so that
          <math|t\<less\>t\<cdot\>t=t<rsup|2>\<leqslant\>y> contradicting the
          assumption <math|y\<less\>t>. So the assumption is wrong and we
          have <math|\<forall\>t\<in\>S<rsub|Y>> that <math|t\<leqslant\>y>
          proving that <math|S<rsub|y>> is bounded above.
        </description>

        So in all cases we have that\ 

        <\equation>
          <label|eq 9.127.044>S<rsub|u><text| is bounded above>
        </equation>

        As <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
        conditonaly complete [see theorem: <reference|real conditional
        complete>] we have thanks to [eqs: <reference|eq 9.126.044>,
        <reference|eq 9.127.044>] that\ 

        <\equation>
          <label|eq 9.128.044>s<rsub|y>=sup<around*|(|S<rsub|y>|)><text|
          exist>
        </equation>

        For <math|y\<neq\>1> we consider again the following possibilities:

        <\description>
          <item*|<math|y\<less\>1>>As <math|0\<less\>y> we have by [theorems:
          <reference|real ordered field>, <reference|field order properties>]
          that <math|y<rsup|2>=y\<cdot\>y\<less\>1\<cdot\>y=y> so that
          <math|y\<in\>S<rsub|y>> so <math|y\<leqslant\>s<rsub|y>\<Rightarrowlim\><rsub|o\<less\>y>0\<less\>s<rsub|y>>.

          <item*|<math|1\<less\>y>>Then <math|0\<less\>t> and
          <math|1<rsup|2>=1\<less\>y> so that <math|1\<in\>S<rsub|y>>, hence
          <math|1\<leqslant\>s<rsub|y>> proving that
          <math|0\<less\>s<rsub|y>>.
        </description>

        So we have that\ 

        <\equation>
          <label|eq 9.129.044>0\<less\>s<rsub|y>
        </equation>

        Let <math|\<varepsilon\>\<in\>\<bbb-R\>> such that
        <math|0\<less\>\<varepsilon\>\<less\>s<rsub|y>>. Then
        <math|0\<less\>s<rsub|y>-\<varepsilon\>\<less\>s<rsub|y>\<less\>s<rsub|y>+\<varepsilon\><rsub|>>,
        so that by [theorems: <reference|real ordered field>,
        <reference|field order properties>]

        <\eqnarray*>
          <tformat|<table|<row|<cell|>|<cell|<around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>=<around*|(|s<rsub|y>-\<varepsilon\>|)>\<cdot\><around*|(|s<rsub|y>-\<varepsilon\>|)>\<less\>s<rsub|y>\<cdot\><around*|(|s<rsub|y>-\<varepsilon\>|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|s<rsub|y>-\<varepsilon\>|)>\<cdot\>s<rsub|y>\<less\>s<rsub|y>\<cdot\>s<rsub|y>=s<rsub|y><rsup|2>>|<cell|>>|<row|<cell|>|<cell|s<rsub|y>\<cdot\><around*|(|s<rsub|y>+\<varepsilon\>|)>\<less\><around*|(|s<rsub|y>+\<varepsilon\>|)>\<cdot\><around*|(|s<rsub|y>+\<varepsilon\>|)>=<around*|(|s<rsub|y>+\<varepsilon\>|)><rsup|2>>|<cell|>>|<row|<cell|>|<cell|s<rsub|y><rsup|2>=s<rsub|y>\<cdot\>s<rsub|y>\<less\><around*|(|s<rsub|y>+\<varepsilon\>|)>\<cdot\>s<rsub|y>>|<cell|>>>>
        </eqnarray*>

        \ So that\ 

        <\equation>
          <label|eq 9.130.044><around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>\<less\>s<rsub|y><rsup|2>\<less\><around*|(|s<rsub|y>+\<varepsilon\>|)><rsup|2>
        </equation>

        As <math|s<rsub|y>> is a upper bound of <math|S<rsub|y>> and
        <math|s<rsub|y>\<less\>s<rsub|y>+\<varepsilon\>> we must have that
        <math|s<rsub|y>+\<varepsilon\>\<nin\>S<rsub|y>>, which, as
        <math|0\<less\>s<rsub|y>\<less\>s<rsub|y>+\<varepsilon\>> proves that

        <\equation>
          <label|eq 9.131.044>y\<less\><around*|(|s<rsub|y>+\<varepsilon\>|)><rsup|2>
        </equation>

        As <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
        totally ordered and <math|s<rsub|y>-\<varepsilon\>\<less\>s<rsub|y>>
        we have by [theorem: <reference|order sup, inf property>] that
        <math|\<exists\>f\<in\>S<rsub|y>> such that
        <math|s<rsub|y>-\<varepsilon\>\<less\>f>. As
        <math|0\<less\>s<rsub|y>-\<varepsilon\>> we have by [theorems:
        <reference|real ordered field>, <reference|field order properties>]
        that <math|<around*|(|s<rsub|y>-\<varepsilon\>|)>\<cdot\>f\<less\>f\<cdot\>f>=f^2
        and <math|<around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>=<around*|(|s<rsub|y>-\<varepsilon\>|)>\<cdot\><around*|(|s<rsub|y>-\<varepsilon\>|)>\<less\>f\<cdot\><around*|(|s<rsub|y>-\<varepsilon\>|)>>
        so that <math|<around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>\<less\>f<rsup|2>.
        As f\<in\>S<rsub|y>> it follows that <math|f<rsup|2>\<leqslant\>y> so
        that

        <\equation>
          <label|eq 9.132.044><around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>\<less\>y
        </equation>

        Using [theorems: <reference|real ordered field>, <reference|field
        order properties>] on [eqs: <reference|eq 9.131.044>, <reference|eq
        9.132.044>] we have that\ 

        <\equation>
          <label|eq 9.133.044>-<around*|(|s<rsub|y>+\<varepsilon\>|)><rsup|2>\<less\>-y\<less\>-<around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>
        </equation>

        Adding [eq: <reference|eq 9.130.044>] to [eq: <reference|eq
        9.133.044>] gives

        <\equation>
          <label|eq 9.134.044><around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>-<around*|(|s<rsub|y>+\<varepsilon\>|)><rsup|2>\<less\>s<rsup|2><rsub|y>-y\<less\><around*|(|s<rsub|y>+\<varepsilon\>|)><rsup|2>-<around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>
        </equation>

        Now

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|s<rsub|y>-\<varepsilon\>|)><rsup|2>-<around*|(|s<rsub|y>+\<varepsilon\>|)><rsup|2>>|<cell|=>|<cell|s<rsub|y><rsup|2>-2\<cdot\>\<varepsilon\>\<cdot\>s<rsub|y>+\<varepsilon\><rsup|2>-<around*|(|s<rsub|y><rsup|2>+2\<cdot\>\<varepsilon\>\<ast\>s<rsub|y>+\<varepsilon\><rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|-4\<cdot\>\<varepsilon\>\<cdot\>s<rsub|y>>>>>
        </eqnarray*>

        which combined with [eq: <reference|eq 9.134.044>] gives\ 

        <\equation>
          <label|eq 9.135.044>\<forall\>\<varepsilon\>\<in\>\<bbb-R\><text|
          with >0\<less\>\<varepsilon\>\<less\>s<rsub|y><text| we have
          >-4\<cdot\>\<varepsilon\>\<cdot\>s<rsup|2><rsub|y>\<less\>s<rsup|2><rsub|y>-y\<less\>4\<cdot\>\<varepsilon\>\<cdot\>s<rsub|y><text|>
        </equation>

        or using [theorems: <reference|real ordered field>, <reference|field
        order properties>]\ 

        <\equation>
          <label|eq 9.136.044>\<forall\>\<varepsilon\>\<in\>\<bbb-R\><text|
          with >0\<less\>\<varepsilon\>\<less\>s<rsub|y><text| we have
          >-4\<cdot\>\<varepsilon\>\<cdot\>s<rsup|2><rsub|y>\<less\>y-s<rsup|2><rsub|y>\<less\>4\<cdot\>\<varepsilon\>\<cdot\>s<rsub|y><text|>
        </equation>

        Now as <math|0\<less\>s<rsub|y>> we have by [theorem: <reference|real
        Archimedean property>] a <math|\<varepsilon\><rsub|0>\<in\>\<bbb-R\>>
        such that\ 

        <\equation>
          <label|eq 9.137.044>0\<less\>\<varepsilon\><rsub|0>\<less\>s<rsub|y>
        </equation>

        For <math|s<rsub|y><rsup|2>-y> we can have now the following
        possibilities:

        <\description>
          <item*|<math|s<rsup|2><rsub|y>-y\<less\>0>>Take then
          <math|\<delta\>=y-s<rsup|2><rsub|y>> then
          <math|0\<less\>\<delta\>>. Take
          <math|\<varepsilon\>=min<around*|(|\<delta\>/<around*|(|4\<cdot\>s<rsub|y>|)>,\<varepsilon\><rsub|0>|)>>
          then we have as <math|0\<less\>4,s<rsub|y>,\<varepsilon\><rsub|0>>
          by [theorems: <reference|real ordered field>, <reference|field
          order properties>] that <math|0\<less\>\<varepsilon\>> and
          <math|\<varepsilon\>\<leqslant\>\<varepsilon\><rsub|0>\<less\>s<rsub|y>>
          so we have by [eq: <reference|eq 9.136.044>] that
          <math|\<delta\>=y-s<rsup|2><rsub|y>\<less\>4\<cdot\>\<varepsilon\>\<cdot\>s<rsub|y>>.
          As <math|4\<cdot\>\<varepsilon\>\<cdot\>s<rsub|y>\<leqslant\><around*|(|\<delta\>/<around*|(|4\<cdot\>s<rsub|y>|)>|)>\<cdot\>4\<cdot\>s<rsub|y>=\<delta\>>
          giving the contradiction <math|\<delta\>\<less\>\<delta\>>. So this
          case does not occur.

          <item*|<math|0\<less\>s<rsup|2><rsub|y>-y>>Take then
          <math|\<delta\>=s<rsup|2><rsub|y>-y> then
          <math|0\<less\>\<delta\>>. Take
          <math|\<varepsilon\>=min<around*|(|\<delta\>/<around*|(|4\<cdot\>s<rsub|y>|)>,\<varepsilon\><rsub|0>|)>>
          then we have as <math|0\<less\>4,s<rsub|y>,\<varepsilon\><rsub|0>>
          by [theorems: <reference|real ordered field>, <reference|field
          order properties>] that <math|0\<less\>\<varepsilon\>> and
          <math|\<varepsilon\>\<leqslant\>\<varepsilon\><rsub|0>\<less\>s<rsub|y>>
          so we have by [eq: <reference|eq 9.135.044>] that
          <math|\<delta\>=s<rsup|2><rsub|y>-y\<less\>4\<cdot\>\<varepsilon\>\<cdot\>s<rsub|y>>.
          As <math|4\<cdot\>\<varepsilon\>\<cdot\>s<rsub|y>\<leqslant\><around*|(|\<delta\>/<around*|(|4\<cdot\>s<rsub|y>|)>|)>\<cdot\>4\<cdot\>s<rsub|y>=\<delta\>>
          giving the contradiction <math|\<delta\>\<less\>\<delta\>>. So this
          case does not occur.

          <item*|<math|s<rsup|2><rsub|y>-y=0>>Then <math|y=s<rsup|2><rsub|y>>
        </description>

        So the only valid case is where <math|y=s<rsub|y><rsup|2>>, so if we
        take <math|x=s<rsub|y>> then <math|x<rsup|2>=y>.
      </description>

      In all cases we have found a <math|x\<in\>\<bbb-R\>> such that
      <math|y=x<rsup|2>=<around*|(|.|)><rsup|2><around*|(|x|)>> which proves
      surjectivity.
    </description>
  </proof>

  <\definition>
    <label|real square root><label|real square
    root><index|<math|<sqrt|x>>><dueto|Square Root>Using the previous theorem
    [theorem: <reference|real square operator is a bijection>] we have htat\ 

    <\equation*>
      <around*|(|.|)><rsup|2>:\<bbb-R\><rsub|0><rsup|+>\<rightarrow\>\<bbb-R\><rsub|0><rsup|+><text|
      defined by ><around*|(|.|)><rsup|2><around*|(|x|)>=x\<cdot\>x
    </equation*>

    is a bijection so that we have a inverse bijction

    <\equation*>
      <around*|(|<around*|(|.|)><rsup|-1>|)>:\<bbb-R\><rsub|0><rsup|+>\<rightarrow\>\<bbb-R\><rsub|0><rsup|+>
    </equation*>

    this inverse is called the square root mapping and noted by\ 

    <\equation*>
      <sqrt|.>:\<bbb-R\><rsub|0><rsup|+>\<rightarrow\>\<bbb-R\><rsub|0><rsup|+>
      <text| where ><sqrt|.>=<around*|(|<around*|(|.|)><rsup|2>|)><rsup|-1>
    </equation*>

    Hence if <math|x\<in\>\<bbb-R\><rsub|0><rsup|+<rsub|>>> then
    <math|<sqrt|<around*|(|x<rsup|2>|)>>=<around*|(|<sqrt|.>\<circ\><around*|(|.|)><rsup|2>|)><around*|(|x|)>=i<rsub|\<bbb-R\><rsub|0><rsup|2>><around*|(|x|)>=x>
    and <math|<around*|(|<sqrt|x>|)><rsup|2>=<around*|(|<around*|(|.|)><rsup|2>\<circ\><sqrt|.>|)><around*|(|x|)>=i<rsub|\<bbb-R\><rsub|0><rsup|+>><around*|(|x|)>>
  </definition>

  <\note>
    The requirement that <math|x\<in\>\<bbb-R\><rsub|0><rsup|+>> in the above
    is requered for if <math|<around*|(|.|)><rsup|2>:\<bbb-R\>\<rightarrow\>\<bbb-R\>>
    is not injective as we have for example
    <math|<around*|(|1|)><rsup|2>-1=<around*|(|-1|)><rsup|2>>
  </note>

  <\note>
    <label|real square root of 2 is irational>As
    <math|2\<in\>\<bbb-R\><rsub|0><rsup|+>> <math|<sqrt|2>> exist however
    <math|<sqrt|2>\<nin\>\<bbb-Q\><rsub|\<bbb-R\>>> so that
    <math|<sqrt|2>\<in\>\<bbb-R\>\\\<bbb-Q\><rsub|\<bbb-R\>>> or
    <math|<sqrt|2>> is a irational number.
  </note>

  <\proof>
    Asume that <math|<sqrt|2>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>, as by
    [theorem: <reference|real ZR properties>]
    <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
    is a ring isomorphism there exist a <math|q\<in\>\<bbb-Q\>> such that
    <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q|)>=<sqrt|2>>,
    hence:

    <\eqnarray*>
      <tformat|<table|<row|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q\<cdot\>q|)>>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q|)>\<cdot\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|q|)>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|2>\<cdot\><sqrt|2>>>|<row|<cell|>|<cell|=>|<cell|2>>|<row|<cell|>|<cell|=>|<cell|1+1>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|1|)>+i<rsub|\<bbb-Q\><rsub|\<bbb-R\>>><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|1+1|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|2|)>>>>>
    </eqnarray*>

    so that by injectivity we have that <math|q\<cdot\>q=2> which by
    [theorem: <reference|rational square root of 2 does not exist>] is
    impossible.
  </proof>

  <\theorem>
    <label|real square root is strictly increasing><math|<sqrt|.>:\<bbb-R\><rsup|+><rsub|0>\<rightarrow\>\<bbb-R\><rsub|0><rsup|+>>
    is strictly increasing
  </theorem>

  <\proof>
    We prove this by contradiction. Let <math|x,y\<in\>\<bbb-R\><rsup|+><rsub|0>>
    be such that <math|x\<less\>y> and assume that
    <math|<sqrt|y>\<leqslant\><sqrt|x>>, then as
    <math|<sqrt|x>,<sqrt|y>\<in\>\<bbb-R\><rsup|+><rsub|0>> we can use
    [theorems: <reference|real ordered field>, <reference|field order
    properties>] getting <math|y=<sqrt|y>\<cdot\><sqrt|y>\<leqslant\><sqrt|x>\<cdot\><sqrt|y>>
    and <math|<sqrt|y>\<cdot\><sqrt|x>\<leqslant\><sqrt|x>\<cdot\><sqrt|x>=x>,
    so <math|y\<leqslant\>x> contradicting <math|x\<less\>y>. Hence we must
    have that <math|<sqrt|x>\<less\><sqrt|y>>.
  </proof>

  <\theorem>
    <label|eq real square root properties (1)>If <math|x\<in\>\<bbb-R\>> and
    <math|a\<in\>\<bbb-R\><rsup|+><rsub|0>> then we have\ 

    <\enumerate>
      <item><math|x<rsup|2>=a\<Leftrightarrow\>x=<sqrt|a>\<vee\>x=-<sqrt|y>>

      <item><math|x<rsup|2>\<leqslant\>a\<Leftrightarrow\>-<sqrt|a>\<leqslant\>x\<leqslant\><sqrt|a>>

      <item><math|x<rsup|2>\<less\>a\<Leftrightarrow\>-<sqrt|a>\<less\>x\<less\><sqrt|a>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>For <math|x> we have either:

        <\description>
          <item*|<math|0\<leqslant\>x>>Then <math|>by [definition:
          <reference|real square root>] we have
          <math|x=<sqrt|x<rsup|2>>=<sqrt|a>>

          <item*|<math|x\<less\>0>>Then <math|0\<less\>-x> and
          <math|<around*|(|-x|)><rsup|2>=x<rsup|2>=a> so that by [definition:
          <reference|real square root>] that
          <math|-x=<sqrt|<around*|(|-x|)><rsup|2>>=<sqrt|a>> giving
          <math|x-<sqrt|a>>
        </description>

        <item*|<math|\<Leftarrow\>>>If <math|x=<sqrt|a>> then
        <math|x<rsup|2>=<around*|(|<sqrt|a>|)><rsup|2>=a> and if
        <math|x=-<sqrt|a>> we have <math|x<rsup|2>=<around*|(|-<sqrt|a>|)><rsup|2>=<around*|(|<sqrt|a>|)><rsup|2>=a>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>For <math|x> we have either\ 

        <\description>
          <item*|<math|0\<leqslant\>x>>As <math|0\<leqslant\><sqrt|a>> it
          follows that <math|-<sqrt|a>\<leqslant\>0\<leqslant\>x>. Further
          assume that <math|><sqrt|a>\<less\>x then by [theorems:
          <reference|real ordered field>, <reference|field order properties>]
          and <math|0\<leqslant\><sqrt|a>,x> we have
          <math|a=<around*|(|<sqrt|a>|)><rsup|2>\<less\>x<rsup|2>>
          contradicting <math|x<rsup|2>\<leqslant\>a>, so we must have
          <math|x\<leqslant\><sqrt|a>>. So
          <math|-<sqrt|a>\<leqslant\>x\<leqslant\><sqrt|a>.>

          <item*|<math|x\<less\>0>>Then as
          <math|0\<leqslant\><sqrt|a>\<Rightarrow\>-<sqrt|a>\<leqslant\>0> we
          have <math|x\<less\><sqrt|a>>. Further assume that
          <math|<sqrt|a>\<less\>-x> we have by [theorems: <reference|real
          ordered field>, <reference|field order properties>] and
          <math|0\<leqslant\><sqrt|a>,-x> that
          <math|a=<around*|(|<sqrt|a>|)><rsup|2>\<less\><around*|(|-x|)><rsup|2>=x<rsup|2>>
          contradicting <math|x<rsup|2>\<leqslant\>a>, hence
          <math|-x\<leqslant\><sqrt|a>> or <math|-<sqrt|a>\<leqslant\>x>. So
          <math|-<sqrt|a>\<leqslant\>x\<less\><sqrt|a>\<Rightarrow\>-<sqrt|a>\<leqslant\>x\<leqslant\><sqrt|a>>.
        </description>

        <item*|<math|\<Leftarrow\>>>For <math|x> we have either\ 

        <\description>
          <item*|<math|0\<leqslant\>x>>Then from <math|x\<leqslant\><sqrt|a>>
          and <math|0\<leqslant\><sqrt|a>> we have by [theorems:
          <reference|real ordered field>, <reference|field order properties>]
          that <math|x<rsup|2>\<leqslant\><around*|(|<sqrt|a>|)><rsup|2>=a>.

          <item*|<math|x\<less\>0>>Then from
          <math|-<sqrt|a>\<leqslant\>x\<Rightarrow\>-x\<leqslant\><sqrt|a>>
          and <math|0\<leqslant\><sqrt|a>,-x> we have by [theorems:
          <reference|real ordered field>, <reference|field order properties>]
          that <math|x<rsup|2>=<around*|(|-x|)><rsup|2>\<leqslant\><around*|(|<sqrt|a>|)><rsup|2>=a>.
        </description>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|x=<sqrt|a>> or
        <math|x=-<sqrt|a>> then by (1) <math|x<rsup|2>=a> contradicting
        <math|x<rsup|2>\<less\>a> hence we must have that
        <math|x\<neq\><sqrt|a>> and <math|x\<neq\>-<sqrt|a>>. Using (2) we
        have that <math|-<sqrt|a>\<leqslant\>x\<leqslant\><sqrt|a>> so that
        <math|-<sqrt|a>\<less\>x\<less\><sqrt|a>.>

        <item*|<math|\<Leftarrow\>>>As <math|-<sqrt|a>\<less\>x\<less\><sqrt|a>>
        we have <math|x\<neq\><sqrt|a>> and <math|x\<neq\>-<sqrt|a>> so that
        by (1) <math|x<rsup|2>\<neq\>a>, further by <math|<around*|(|2|)>> we
        have <math|x<rsup|2>\<leqslant\>a> so that <math|x<rsup|2>\<less\>a>.
      </description>
    </enumerate>
  </proof>

  <\note>
    By [theorem: <reference|real properties positive numbers>] we have
    <math|\<forall\>x,y\<in\>\<bbb-R\><rsup|+><rsub|0>> that
    <math|x\<cdot\>y\<in\>\<bbb-R\><rsup|+>> and
    <math|x+y\<in\>\<bbb-R\><rsup|+>> so that the following two theorems make
    sense.
  </note>

  <\theorem>
    <label|real square root of product>If
    <math|x,y\<in\>\<bbb-R\><rsup|+><rsub|0>> then
    <math|<sqrt|x\<cdot\>y>=<sqrt|x>\<cdot\><sqrt|y>>\ 
  </theorem>

  <\proof>
    As <math|<around*|(|<sqrt|x\<cdot\>y>|)><rsup|2>=x\<cdot\>y=<around*|(|<sqrt|x>|)><rsup|2>\<cdot\><around*|(|<sqrt|y>|)><rsup|2>=<around*|(|<sqrt|x>\<cdot\><sqrt|y>|)><rsup|2>>
    we have by the fact that <math|<around*|(|.|)><rsup|2>:\<bbb-R\><rsup|+><rsub|0>\<rightarrow\>\<bbb-R\><rsup|+><rsub|0>>
    is a bijection and thus injective so we have
    <math|<sqrt|x\<cdot\>y>=<sqrt|x>\<cdot\><sqrt|y>>
  </proof>

  <\theorem>
    <label|real square root norm>Let <math|x,y\<in\>\<bbb-R\><rsup|+><rsub|0>>
    then <math|<sqrt|x+y>\<leqslant\><sqrt|x>+<sqrt|y>>
  </theorem>

  <\proof>
    We prove this by contradiction, so assume that
    <math|<sqrt|x>+<sqrt|y>\<less\><sqrt|x+y>>. Then by [theorems:
    <reference|real ordered field>, <reference|field order properties>] we
    have that <math|<around*|(|<sqrt|x>+<sqrt|y>|)><rsup|2>\<less\><around*|(|<sqrt|x+y>|)><rsup|2>=x+y>.
    Now

    <\equation*>
      <around*|(|<sqrt|x>+<sqrt|y>|)><rsup|2>=<around*|(|<sqrt|x>|)><rsup|2>+<around*|(|<sqrt|y>|)><rsup|2>+2\<cdot\><sqrt|x>\<cdot\><sqrt|y>=x+y+2\<cdot\><sqrt|x>\<cdot\><sqrt|y>
    </equation*>

    so that we have that <math|x+y+2\<cdot\><sqrt|x>\<cdot\><sqrt|y>\<less\>x+y>
    or <math|2\<cdot\><sqrt|x>\<cdot\><sqrt|y>\<less\>0> giving\ 

    <\equation*>
      <sqrt|x>\<cdot\><sqrt|y>\<less\>0
    </equation*>

    As <math|0\<leqslant\><sqrt|x>> and <math|0\<leqslant\><sqrt|y>> we have
    by \ [theorem: <reference|real properties positive numbers>] that
    <math|0\<leqslant\><sqrt|x>\<cdot\><sqrt|y>> contradicting the above. So
    we must have that <math|<sqrt|x+y>\<leqslant\><sqrt|x>+<sqrt|y>>
  </proof>

  Note that <math|<sqrt|.>:\<bbb-R\><rsup|+><rsub|0>\<rightarrow\>\<bbb-R\><rsup|+><rsub|0>>
  is a bijection between non negative real numbers, one reason for this is
  that the square root of non negative numbers is not defined. For example
  for <math|<sqrt|-1>> we must have by [theorems: <reference|real ordered
  field>, <reference|field order properties>] that
  <math|0\<leqslant\><around*|(|<sqrt|-1>|)><rsup|2>=-1> a contradiction.
  This will be solved by extending the real numbers to the complex numbers.

  <chapter|The complex numbers>

  <section|Definition and arithmetics>

  <\definition>
    <label|complex numbers>The space <math|\<bbb-C\>> of complex numbers
    together with two operators <math|+:\<bbb-C\>\<times\>\<bbb-C\>\<rightarrow\>\<bbb-C\>>
    and <math|\<cdot\>:\<bbb-C\>\<times\>\<bbb-C\>\<rightarrow\>\<bbb-C\>> is
    is defined as follows

    <\enumerate>
      <item><math|\<bbb-C\>=\<bbb-R\>\<times\>\<bbb-R\>=<around*|{|<around*|(|x,y|)>\|x,y\<in\>\<bbb-R\>|}>>

      <item><math|+:\<bbb-C\>\<times\>\<bbb-C\>\<rightarrow\>\<bbb-C\>> where
      <math|<around*|(|x,y|)>+<around*|(|x<rprime|'>,y<rprime|'>|)>=<around*|(|x+x<rprime|'>,y+y<rprime|'>|)>>

      <item><math|\<cdot\>:\<bbb-C\>\<times\>\<bbb-C\>\<rightarrow\>\<bbb-C\>>
      where <math|<around*|(|x,y|)>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>=<around*|(|x\<cdot\>x<rprime|'>-y\<cdot\>y<rprime|'>,x\<cdot\>y<rprime|'>+x<rprime|'>\<cdot\>y|)>>
    </enumerate>
  </definition>

  Just as <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> is a
  field we have that <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>
  is a field.

  <\theorem>
    <label|complex field><math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>
    is a field where\ 

    <\enumerate>
      <item>The additive neutral element is <math|<around*|(|0,0|)>>\ 

      <item>Then multiplicative neutral element is <math|<around*|(|1,0|)>>\ 

      <item>The additive inverse element of
      <math|<around*|(|x,y|)>=<around*|(|-x,-y|)>>

      <item>The multiplicative inverse element for
      <math|<around*|(|x,y|)>\<neq\><around*|(|0,0|)>> is

      <\equation*>
        <around*|(|x/<around*|(|x<rsup|2>+y<rsup|2>|)>,-y/<around*|(|x<rsup|2>+y<rsup|2>|)>|)>
      </equation*>
    </enumerate>

    As usual we use the following notation convention based on context:

    <\enumerate>
      <item>The additive neutral element is noted as <math|0>

      <item>The multiplicative neutral element is noted as <math|1>

      <item>The additve inverse of <math|z\<in\>\<bbb-C\>> is noted as
      <math|-z>

      <item>The multiplicative inverse of
      <math|x\<in\>\<bbb-C\>\\<around*|{|0|}>> is noted as <math|<rsup|-1>>
    </enumerate>
  </theorem>

  <\proof>
    First we prove that <math|<around*|\<langle\>|\<bbb-C\>,+|\<rangle\>>> is
    a Abelian group:

    <\description>
      <item*|associativity>If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>,<around*|(|x<rprime|''>,y<rprime|''>|)>\<in\>\<bbb-C\>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>+<around*|(|<around*|(|x<rprime|'>,y<rprime|'>|)>+<around*|(|x<rprime|''>,y<rprime|''>|)>|)>>|<cell|=>|<cell|<around*|(|x,y|)>+<around*|(|x<rprime|'>+x<rprime|''>,y<rprime|'>+y<rprime|''>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+<around*|(|x<rprime|'>+x<rprime|''>|)>,y+<around*|(|y<rprime|'>+y<rprime|''>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|x+x<rprime|'>|)>+x<rprime|''>,<around*|(|y+y<rprime|'>|)>+y<rprime|''>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+x<rprime|'>,y+y<rprime|'>|)>+<around*|(|x<rprime|''>,y<rprime|''>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|x,y|)>+<around*|(|x<rprime|'>,y<rprime|'>|)>|)>+<around*|(|x<rprime|''>,y<rprime|''>|)>>>>>
      </eqnarray*>

      <item*|commutativiy>If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>\<in\>\<bbb-C\>>
      then

      <\equation*>
        <around*|(|x,y|)>+<around*|(|x<rprime|'>,y<rprime|'>|)>=<around*|(|x+x<rprime|'>,y+y<rprime|'>|)>=<around*|(|x<rprime|'>+x,y<rprime|'>+y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>+<around*|(|x,y|)>
      </equation*>

      <item*|neutral element>If <math|<around*|(|x,y|)>\<in\>\<bbb-C\>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>+<around*|(|0,0|)>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<around*|(|0,0|)>+<around*|(|x,y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0+x,0+y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x,y|)>>>>>
      </eqnarray*>

      <item*|inverse element>If <math|<around*|(|x,y|)>\<in\>\<bbb-C\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>+<around*|(|-x,-y|)>>|<cell|=>|<cell|<around*|(|-x,-y|)>+<around*|(|x,y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|-x|)>+x,<around*|(|-y|)>+y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0,0|)>>>>>
      </eqnarray*>
    </description>

    Next we prove the rest of the axioms for a field for the multiplaction

    <\description>
      <item*|associativity>If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>,<around*|(|x<rprime|''>,y<rprime|''>|)>\<in\>\<bbb-C\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<cdot\><around*|(|<around*|(|x<rprime|'>,y<rprime|'>|)>\<cdot\><around*|(|x<rprime|''>,y<rprime|''>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|x,y|)>\<cdot\><around*|(|x<rprime|'>\<cdot\>x<rprime|''>-y<rprime|'>\<cdot\>y<rprime|''>,x<rprime|'>\<cdot\>y<rprime|''>+x<rprime|''>\<cdot\>y<rprime|'>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|x\<cdot\><around*|(|x<rprime|'>\<cdot\>x<rprime|''>-y<rprime|'>\<cdot\>y<rprime|''>|)>-y\<cdot\><around*|(|x<rprime|'>\<cdot\>y<rprime|''>+x<rprime|''>\<cdot\>y<rprime|'>|)>,x\<cdot\><around*|(|x<rprime|'>\<cdot\>y<rprime|''>+x<rprime|''>\<cdot\>y<rprime|'>|)>|)>+y\<cdot\><around*|(|x<rprime|'>\<cdot\>x<rprime|''>-y<rprime|'>\<cdot\>y<rprime|''>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|x\<cdot\><around*|(|x<rprime|'>\<cdot\>x<rprime|''>|)>-x\<cdot\><around*|(|y<rprime|'>\<cdot\>y<rprime|''>|)>-y\<cdot\><around*|(|x<rprime|'>\<cdot\>y<rprime|''>|)>-y\<cdot\><around*|(|x<rprime|''>\<cdot\>y<rprime|'>|)>,x\<cdot\><around*|(|x<rprime|'>\<cdot\>y<rprime|''>|)>+x\<cdot\><around*|(|x<rprime|''>\<cdot\>y<rprime|'>|)>+y\<cdot\><around*|(|x<rprime|'>\<cdot\>x<rprime|''>|)>-y\<cdot\><around*|(|y<rprime|'>\<cdot\>y<rprime|''>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<wide*|<around*|(|x\<cdot\>x<rprime|'>|)>\<cdot\>x<rprime|''>|\<wide-underbrace\>><rsub|1>-<wide*|<around*|(|x\<cdot\>y<rprime|'>|)>\<cdot\>y<rprime|''>|\<wide-underbrace\>><rsub|2><wide*|-<around*|(|y\<cdot\>x<rprime|'>|)>\<cdot\>y<rprime|''>|\<wide-underbrace\>><rsub|2><wide*|-<around*|(|y\<cdot\>y<rprime|'>|)>\<cdot\>x<rprime|''>|\<wide-underbrace\>><rsub|1>,<wide*|<around*|(|x\<cdot\>x<rprime|'>|)>\<cdot\>y<rprime|''>|\<wide-underbrace\>><rsub|3>+<wide*|<around*|(|x\<cdot\>y<rprime|'>|)>\<cdot\>x<rprime|''>+<around*|(|y\<cdot\>x<rprime|'>|)>\<cdot\>x<rprime|''>|\<wide-underbrace\>><rsub|4><wide*|-<around*|(|y\<cdot\>y<rprime|'>|)>\<cdot\>y<rprime|''>|\<wide-underbrace\>><rsub|3>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<wide*|<around*|(|x\<cdot\>x<rprime|'>-y\<cdot\>y<rprime|'>|)>\<cdot\>x<rprime|''>|\<wide-underbrace\>><rsub|1><wide*|-<around*|(|x\<cdot\>y<rprime|'>+y\<cdot\>y<rprime|'>|)>\<cdot\>y<rprime|''>|\<wide-underbrace\>><rsub|2>,<wide*|<around*|(|x\<cdot\>x<rprime|'>-y\<cdot\>y<rprime|'>|)>\<cdot\>y<rprime|''>|\<wide-underbrace\>><rsub|3>+<wide*|<around*|(|x\<cdot\>y<rprime|'>+y\<cdot\>x<rprime|'>|)>\<cdot\>x<rprime|''>|\<wide-underbrace\>><rsub|4>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|x\<cdot\>x<rprime|'>-y\<cdot\>y<rprime|'>,x\<cdot\>y<rprime|'>+y\<cdot\>y<rprime|'>,<around*|(|x<rprime|''>,y<rprime|''>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<around*|(|x,y|)>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>|)>\<cdot\><around*|(|x<rprime|''>,y<rprime|''>|)>>|<cell|=>|<cell|>>>>
      </eqnarray*>

      <item*|commutativity>If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>\<in\>\<bbb-C\>>
      then\ 

      <\equation*>
        <around*|(|x,y|)>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>=<around*|(|x\<cdot\>x<rprime|'>-y\<cdot\>y<rprime|'>,x\<cdot\>y<rprime|'>+x<rprime|'>\<cdot\>y|)>=<around*|(|x<rprime|'>\<cdot\>x-y<rprime|'>\<cdot\>y,y<rprime|'>\<cdot\>x+y\<cdot\>x<rprime|'>|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>\<cdot\><around*|(|x,y|)>
      </equation*>

      <item*|neutral element>If <math|<around*|(|x,y|)>\<in\>\<bbb-C\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<cdot\><around*|(|1,0|)>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<around*|(|1,0|)>\<cdot\><around*|(|x,y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1\<cdot\>x+0\<cdot\>y,1\<cdot\>y+0\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x,y|)>>>>>
      </eqnarray*>

      <item*|inverse element>Let <math|<around*|(|x,y|)>\<in\>\<bbb-C\>\\<around*|{|<around*|(|0,0|)>|}>>
      then <math|x\<neq\>0\<vee\>y\<neq\>0> so that by [theorems:
      <reference|real ordered field>, <reference|field order properties>]
      <math|0\<less\>x<rsup|2>\<vee\>0\<less\>y<rsup|2>> we have that <math|>
      <math|0\<less\>x<rsup|2>+y<rsup|2>> so that
      <math|><math|<around*|(|x<rsup|2>+y<rsup|2>|)>\<neq\>0> hence
      <math|<around*|(|x/<around*|(|x<rsup|2>+y<rsup|2>|)>,-y/<around*|(|x<rsup|2>+y<rsup|2>|)>|)>>
      is well defined. Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<cdot\><around*|(|x/<around*|(|x<rsup|2>+y<rsup|2>|)>,-y/<around*|(|x<rsup|2>+y<rsup|2>|)>|)>>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|>>|<row|<cell|<around*|(|x/<around*|(|x<rsup|2>+y<rsup|2>|)>,-y/<around*|(|x<rsup|2>+y<rsup|2>|)>|)>\<cdot\><around*|(|x,y|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|x<rsup|2>/<around*|(|x<rsup|2>+y<rsup|2>|)>+y<rsup|2>/<around*|(|x<rsup|2><rsub|>+y<rsup|2>|)>,x\<cdot\>y/<around*|(|x<rsup|2>+y<rsup|2><rsup|>|)>+<around*|(|-y|)>\<cdot\>x/<around*|(|x<rsup|2>+y<rsup|2>|)>|)>>|<cell|=>|<cell|*>>|<row|<cell|<around*|(|<around*|(|x<rsup|2>+y<rsup|2>|)>/<around*|(|x<rsup|2>+y<rsup|2>|)>,<around*|(|x\<cdot\>y-y\<cdot\>x|)>/<around*|(|x<rsup|2>+y<rsup|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|1,0|)>>|<cell|=>|<cell|>>>>
      </eqnarray*>

      <item*|distributivity>If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>,<around*|(|x<rprime|''>,y<rprime|''>|)>\<in\>\<bbb-C\>>
      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>\<cdot\><around*|(|<around*|(|x<rprime|'>,y<rprime|'>|)>+<around*|(|x<rprime|''>,y<rprime|''>|)>|)>>|<cell|=>|<cell|<around*|(|x,y|)>\<cdot\><around*|(|x<rprime|'>+x<rprime|''>,y<rprime|'>+y<rprime|''>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x\<cdot\><around*|(|x<rprime|'>+x<rprime|''>|)>-y\<cdot\><around*|(|y<rprime|'>+y<rprime|''>|)>,x\<cdot\><around*|(|y<rprime|'>+y<rprime|''>|)>+y\<cdot\><around*|(|x<rprime|'>+x<rprime|''>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x\<cdot\>x<rprime|'>+x\<cdot\>x<rprime|''>-y\<cdot\>y<rprime|'>-y\<cdot\>y<rprime|''>,x\<cdot\>y<rprime|'>+x\<cdot\>y<rprime|''>+y\<cdot\>x<rprime|'>+y\<cdot\>x<rprime|''>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|x\<cdot\>x<rprime|'>-y\<cdot\>y<rprime|'>|)>+<around*|(|x\<cdot\>x<rprime|''>-y\<cdot\>y<rprime|''>|)>,<around*|(|x\<cdot\>y<rprime|'>+y\<cdot\>x<rprime|'>|)>+<around*|(|x\<cdot\>y<rprime|''>+y\<cdot\>x<rprime|''>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x\<cdot\>x<rprime|'>-y\<cdot\>y<rprime|'>,x\<cdot\>y<rprime|'>+y\<cdot\>x<rprime|'>|)>+<around*|(|x\<cdot\>x<rprime|''>-y\<cdot\>y<rprime|''>,x\<cdot\>y<rprime|''>+y\<cdot\>x<rprime|''>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x,y|)>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>+<around*|(|x,y|)>\<cdot\><around*|(|x<rprime|''>,y<rprime|''>|)>>>>>
      </eqnarray*>
    </description>
  </proof>

  Just as with the integers, rationals and real numbers we introduce the
  following shorthand notation.

  <\notation>
    If <math|x,y\<in\>\<bbb-C\>> then we have the following notation
    conventions:

    <\enumerate>
      <item><math|x+<around*|(|-|)>> is noted as <math|x-y>

      <item>If <math|y\<in\>\<bbb-C\>\\<around*|{|0|}>> then
      <math|x\<cdot\>y<rsup|-1>> is noted as <math|x/y> and <math|y<rsup|-1>>
      is noted as <math|1/y>
    </enumerate>
  </notation>

  A important operation on the set of real numbers is the complex
  conjugation.

  <\definition>
    <label|complex complement>If <math|z\<in\>\<bbb-C\>> then
    <math|<wide|z|\<wide-bar\>>=<around*|(|y,x|)>> where
    <math|z=<around*|(|x,y|)>>
  </definition>

  <section|Embedding of <math|\<bbb-N\><rsub|0>,\<bbb-Z\>,\<bbb-Q\><text| and
  >\<bbb-R\>> in <math|\<bbb-C\>>>

  Note that to avoid having to use different symbols for neutral elements,
  inverse elements, sum, product etc. we use contxt to derive the maining of
  the different symbols.\ 

  \;

  <block|<tformat|<table|<row|<cell|Context>|<cell|Expression>|<cell|Operator>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|n+m>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<cdot\>m>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<leqslant\>m>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<less\>m>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n-m>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n+0>
  or <math|0+n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|n\<cdot\>1<text|
  or >1\<cdot\>n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-N\><rsub|0>>>|<cell|<math|-n>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|n+m>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<cdot\>m>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<leqslant\>m>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-Z\>\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n\<less\>m>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|n,m\<in\>\<bbb-Z\>>>|<cell|<math|n-m>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-Z\>,-|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|n+0>
  or <math|0+n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|n\<cdot\>1<text|
  or >1\<cdot\>n>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|n\<in\>\<bbb-Z\>>>|<cell|<math|-n>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|q+r>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<cdot\>r>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<leqslant\>r>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-Q\>\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q\<less\>r>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,e\<in\>\<bbb-Q\>>>|<cell|<math|q-r>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-Q\>,-|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-Q\>>>|<cell|<math|q/r>>|<cell|division
  in <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|q+0>
  or <math|0+q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|q\<cdot\>1<text|
  or >1\<cdot\>q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-Q\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-Q\>>>|<cell|<math|-q>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-Q\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|q+r>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|<math|q\<cdot\>r>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|<math|q\<leqslant\>r>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|<math|q\<less\>r>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,e\<in\>\<bbb-R\>>>|<cell|<math|q-r>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-R\>,-|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-R\>>>|<cell|<math|q/r>>|<cell|division
  in <math|<around*|\<langle\>|\<bbb-R\>\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-R\>>>|<cell|<math|q+0>
  or <math|0+q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-R\>>>|<cell|<math|q\<cdot\>1<text|
  or >1\<cdot\>q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-R\>>>|<cell|<math|-q>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<math|q,r\<in\>\<bbb-C\>>>|<cell|q+r>|<cell|sum
  in <math|<around*|\<langle\>|\<bbb-C\>,+|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-C\>>>|<cell|<math|q\<cdot\>r>>|<cell|product
  in <math|<around*|\<langle\>|\<bbb-C\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-C\>>>|<cell|<math|q\<leqslant\>r>>|<cell|order
  in <math|<around*|\<langle\>|\<bbb-C\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-C\>>>|<cell|<math|q\<less\>r>>|<cell|strict
  order in <math|<around*|\<langle\>|\<bbb-C\>,\<leqslant\>|\<rangle\>>>>>|<row|<cell|<math|q,e\<in\>\<bbb-C\>>>|<cell|<math|q-r>>|<cell|subtraction
  in <math|<around*|\<langle\>|\<bbb-C\>,-|\<rangle\>>>>>|<row|<cell|<math|q,r\<in\>\<bbb-C\>>>|<cell|<math|q/r>>|<cell|division
  in <math|<around*|\<langle\>|\<bbb-C\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-C\>>>|<cell|<math|q+0>
  or <math|0+q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-C\>,+|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-C\>>>|<cell|<math|q\<cdot\>1<text|
  or >1\<cdot\>q>>|<cell|neutral element in
  <math|<around*|\<langle\>|\<bbb-C\>,\<cdot\>|\<rangle\>>>>>|<row|<cell|<math|q\<in\>\<bbb-C\>>>|<cell|<math|-q>>|<cell|inverse
  element in <math|<around*|\<langle\>|\<bbb-C\>,+|\<rangle\>>>>>>>>

  <subsection|Embeddings>

  <\definition>
    We define <math|\<bbb-R\><rsub|\<bbb-C\>>,\<bbb-Q\><rsub|\<bbb-C\>>,\<bbb-Z\><rsub|\<bbb-C\>>,\<bbb-N\><rsub|\<bbb-C\>>>
    as follows

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|\<bbb-R\><rsub|\<bbb-C\>>=<around*|{|<around*|(|x,0|)>\|x\<in\>\<bbb-R\>|}>>|<cell|>>|<row|<cell|>|<cell|\<bbb-Q\><rsub|\<bbb-C\>>=<around*|{|<around*|(|x,0|)>\|x\<in\>\<bbb-Q\><rsub|\<bbb-R\>>|}>>|<cell|>>|<row|<cell|>|<cell|\<bbb-Z\><rsub|\<bbb-C\>>=<around*|{|<around*|(|x,0|)>\|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>|}>>|<cell|>>|<row|<cell|>|<cell|\<bbb-N\><rsub|0,\<bbb-C\>>=<around*|{|<around*|(|x,0|)>\|x\<in\>\<bbb-N\><rsub|\<bbb-R\>>|}>>|<cell|>>>>
    </eqnarray*>
  </definition>

  It turns out that <math|\<bbb-R\><rsub|\<bbb-C\>>,\<bbb-Q\><rsub|\<bbb-C\>>,\<bbb-Z\><rsub|\<bbb-C\>>,\<bbb-N\><rsub|\<bbb-C\>>>
  are embeddings of <math|\<bbb-R\>,\<bbb-Q\>,\<bbb-Z\>> and <math|\<bbb-N\>>
  in <math|\<bbb-C\>>,

  \;

  <\theorem>
    <label|complex embedding>We have that\ 

    <\enumerate>
      <item><math|\<bbb-R\><rsub|\<bbb-C\>>> is a subfield of
      <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> and

      <\equation*>
        i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>><text|
        defined by >i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(||)>
      </equation*>

      is a field isomorphism.

      <item><math|\<bbb-Q\><rsub|\<bbb-C\>>> is a subfield of
      <math|<around*|\<langle\>|\<bbb-C\>\<dotplus\>,\<cdot\>|\<rangle\>>>
      and if we define <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>>
      then\ 

      <\equation*>
        i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>><text|
        is a field isomorphism>
      </equation*>

      <item><math|\<bbb-Z\><rsub|\<bbb-C\>><text| is a subring of
      <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>>> and if we
      define <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>>
      then\ 

      <\equation*>
        i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|
        is a field isomorphism>
      </equation*>

      <item><math|\<bbb-N\><rsub|0,\<bbb-C\>>> is a sub semi-group of
      <math|<around*|\<langle\>|\<bbb-C\>,+|\<rangle\>>> and if we define
      <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-Z\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>>
      then\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-C\>>,+|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      <item><math|\<bbb-N\><rsub|0,\<bbb-C\>>> is a sub semi-group of
      <math|<around*|\<langle\>|\<bbb-C\>,\<cdot\>|\<rangle\>>> and if we
      define <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-Z\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>>
      then\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-C\>>,\<cdot\>|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      <item><math|\<bbb-N\><rsub|0,\<bbb-C\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-R\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-C\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>\<bbb-R\><rsub|\<bbb-C\>>> then
      <math|\<exists\>x<rprime|'>\<in\>\<bbb-R\>> such that
      <math|x=<around*|(|x<rprime|'>,0|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x<rprime|'>|)>\<in\>i<rsub|\<bbb-R\>><around*|(|\<bbb-R\>|)>>.
      Also if <math|x\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<bbb-R\>|)>>
      then <math|\<exists\>x<rprime|'>\<in\>\<bbb-R\>> such that
      <math|x=i<rsub|\<bbb-R\>><around*|(|x<rprime|'>|)>=<around*|(|x<rprime|'>,0|)>\<in\>\<bbb-R\><rsub|\<bbb-C\>>>.
      So we have that\ 

      <\equation>
        <label|eq 10.1.048>\<bbb-R\><rsub|\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<bbb-R\>|)>
      </equation>

      Let <math|x,y\<in\>\<bbb-R\>> then we have\ 

      <\equation*>
        i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x+y|)>=<around*|(|x+y,0|)>=<around*|(|x,0|)>+<around*|(|y,0|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x|)>+i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|y|)>
      </equation*>

      <\equation*>
        i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x\<cdot\>y|)>=<around*|(|x\<cdot\>y,0|)>=<around*|(||)>=<around*|(|x\<cdot\>y-0\<cdot\>0,x\<cdot\>0+0\<cdot\>y|)>=<around*|(|x,0|)>\<cdot\><around*|(|y,0|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x|)>\<cdot\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|y|)>
      </equation*>

      <\equation*>
        i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|1|)>=<around*|(|1,0|)>=1
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 10.2.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-C\>,,+,\<cdot\>|\<rangle\>>
        <text|is a field homeomorphism>
      </equation>

      As <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> is a
      field we can use [theorem: <reference|field isomorphism and neutral
      element>] together with the above proving that
      <math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<bbb-R\>|)>>
      is a subfield of <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>.
      Combining this with [eq: <reference|eq 10.1.048>] gives\ 

      <\equation*>
        \<bbb-R\><rsub|\<bbb-C\>><text| is a subfield of
        ><around*|\<langle\>|\<bbb-C\>\<dotplus\>,\<cdot\>|\<rangle\>>
      </equation*>

      Further if <math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|y|)>>
      then <math|<around*|(|x,0|)>=<around*|(|y,0|)>> proving that <math|x=y>
      hence\ 

      <\equation*>
        i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:\<bbb-R\>\<rightarrow\>\<bbb-C\><text|
        is injective>
      </equation*>

      so that <math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:\<bbb-R\>\<rightarrow\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-R\>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 10.1.048>]>>\<bbb-R\><rsub|\<bbb-C\>>> is a bijection.
      Hence we have that\ 

      <\equation>
        <label|eq 10.3.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-R\>\<dotplus\>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>><text|
        is a field isomorphism>
      </equation>

      <item>By [theorem: <reference|real field embedding Q>] we have that\ 

      <\equation>
        <label|eq 10.4.048><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|
        is a subfield of ><around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>><text|
        and >i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|
        is a field isomorphism>
      </equation>

      Using then the above together with [eq: <reference|eq 10.3.048>] we
      have by [theorem: <reference|field homeomorphism composition>] that\ 

      <\equation>
        <label|eq 10.5.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Q\>|)>|)><text|
        is a subfield of <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>>>>
      </equation>

      and

      <\equation>
        <label|eq 10.6.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Q\>|)>|)>,+,\<cdot\>|\<rangle\>><text|
        is a field isomorphism>
      </equation>

      Now if <math|x\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Q\>|)>|)>>
      <math|\<exists\>x<rprime|'>\<in\>\<bbb-Q\>> such that
      <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>|)>=<around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>,0|)>>,
      using [eq: <reference|eq 10.4.048>] we have that
      <math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>>
      so that <math|x\<in\>\<bbb-Q\><rsub|\<bbb-C\>>>. Also if
      <math|x\<in\>\<bbb-Q\><rsub|\<bbb-C\>>> then there exist a
      <math|x<rprime|'>\<in\>\<bbb-Q\><rsub|\<bbb-R\>>> such that
      <math|x=<around*|(|x<rprime|'>,0|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x<rprime|'>|)>>,
      using [eq: <reference|eq 10.4.048>] there exists a
      <math|x<rprime|''>\<in\>\<bbb-Q\>> such that
      <math|x<rprime|'>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|''>|)>>
      so that <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>R><around*|(|x<rprime|''>|)>|)>\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Q\>|)>|)>>.
      Hence we have that\ 

      <\equation*>
        \<bbb-Q\><rsub|\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Q\>|)>|)>
      </equation*>

      which combined with [eqs: <reference|eq 10.5.048>,<reference|eq
      10.6.048>] proves that\ 

      <\equation*>
        \<bbb-Q\><rsub|\<bbb-C\>><text| is a subfield of
        <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>><text|
        is a field isomorphism>
      </equation*>

      <item>By [theorem: <reference|real ZR properties>] we have that\ 

      <\equation>
        <label|eq 10.7.048><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|
        is a subring of ><around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>><text|
        and >i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-R\>>,+,\<cdot\>|\<rangle\>><text|
        is a field isomorphism>
      </equation>

      Using then the above together with [eq: <reference|eq 10.3.048>] we
      have by [theorem: <reference|ring homeomorphism composition>] that\ 

      <\equation>
        <label|eq 10.8.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Z\>|)>|)><text|
        is a subring of <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>>>>
      </equation>

      and

      <\equation>
        <label|eq 10.9.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Z\>|)>|)>,+,\<cdot\>|\<rangle\>><text|
        is a ring isomorphism>
      </equation>

      Now if <math|x\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Z\>|)>|)>>
      <math|\<exists\>x<rprime|'>\<in\>\<bbb-Z\>> such that
      <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>|)>=<around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>,0|)>>,
      using [eq: <reference|eq 10.7.048>] we have that
      <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<bbb-R\>>>
      so that <math|x\<in\>\<bbb-Z\><rsub|\<bbb-C\>>>. Also if
      <math|x\<in\>\<bbb-Z\><rsub|\<bbb-C\>>> then there exist a
      <math|x<rprime|'>\<in\>\<bbb-Z\><rsub|\<bbb-R\>>> such that
      <math|x=<around*|(|x<rprime|'>,0|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x<rprime|'>|)>>,
      using [eq: <reference|eq 10.7.048>] there exists a
      <math|x<rprime|''>\<in\>\<bbb-Z\>> such that
      <math|x<rprime|'>=i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|''>|)>>
      so that <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>R><around*|(|x<rprime|''>|)>|)>\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Z\>|)>|)>>.
      Hence we have that\ 

      <\equation*>
        \<bbb-Z\><rsub|\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-Z\>|)>|)>
      </equation*>

      which combined with [eqs: <reference|eq 10.8.048>,<reference|eq
      10.9.048>] proves that\ 

      <\equation*>
        \<bbb-Z\><rsub|\<bbb-C\>><text| is a subfield of
        <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>><text|
        is a ring isomorphism>
      </equation*>

      <item>By [theorem: <reference|real NR properties>] we have that\ 

      <\equation>
        <label|eq 10.10.048><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,+|\<rangle\>><text|
        is a sub seni-group of ><around*|\<langle\>|\<bbb-R\>,+|\<rangle\>><text|
        and >i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,+|\<rangle\>><text|
        is a group isomorphism>
      </equation>

      Using then the above together with [eq: <reference|eq 10.3.048>] we
      have by [theorem: <reference|ring homeomorphism composition>] that\ 

      <\equation>
        <label|eq 10.11.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\>+0\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0>|)>|)><text|
        is a sub semi-group of <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+|\<rangle\>>>>
      </equation>

      and

      <\equation>
        <label|eq 10.12.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-C\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0><rsub|>|)>|)>,+|\<rangle\>><text|
        is a group isomorphism>
      </equation>

      Now if <math|x\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0>|)>|)>>
      <math|\<exists\>x<rprime|'>\<in\>\<bbb-N\><rsub|0>> such that
      <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>|)>=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>,0|)>>,
      using [eq: <reference|eq 10.10.048>] we have that
      <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
      so that <math|x\<in\>\<bbb-N\><rsub|0,\<bbb-C\>>>. Also if
      <math|x\<in\>\<bbb-N\><rsub|0,\<bbb-C\>>> then there exist a
      <math|x<rprime|'>\<in\>\<bbb-C\><rsub|\<bbb-R\>>> such that
      <math|x=<around*|(|x<rprime|'>,0|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x<rprime|'>|)>>,
      using [eq: <reference|eq 10.10.048>] there exists a
      <math|x<rprime|''>\<in\>\<bbb-N\><rsub|0>> such that
      <math|x<rprime|'>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|''>|)>>
      so that <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>R><around*|(|x<rprime|''>|)>|)>\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0>|)>|)>>.
      Hence we have that\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0>|)>|)>
      </equation*>

      which combined with [eqs: <reference|eq 10.11.048>,<reference|eq
      10.12.048>] proves that\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-C\>><text| is a subfield of
        <math|<around*|\<langle\>|\<bbb-C\>,+|\<rangle\>>>>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-C\>>,+|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      <item>By [theorem: <reference|real NR properties>] we have that\ 

      <\equation>
        <label|eq 10.13.048><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<cdot\>|\<rangle\>><text|
        is a sub seni-group of ><around*|\<langle\>|\<bbb-R\>,\<cdot\>|\<rangle\>><text|
        and >i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-R\>>,\<cdot\>|\<rangle\>><text|
        is a group isomorphism>
      </equation>

      Using then the above together with [eq: <reference|eq 10.3.048>] we
      have by [theorem: <reference|ring homeomorphism composition>] that\ 

      <\equation>
        <label|eq 10.14.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\>+0\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0>|)>|)><text|
        is a sub semi-group of <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,\<cdot\>|\<rangle\>>>>
      </equation>

      and

      <\equation>
        <label|eq 10.15.048>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-C\>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0><rsub|>|)>|)>,\<cdot\>|\<rangle\>><text|
        is a group isomorphism>
      </equation>

      Now if <math|x\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0>|)>|)>>
      <math|\<exists\>x<rprime|'>\<in\>\<bbb-N\><rsub|0>> such that
      <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>|)>=<around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>,0|)>>,
      using [eq: <reference|eq 10.13.048>] we have that
      <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|'>|)>\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>>
      so that <math|x\<in\>\<bbb-N\><rsub|0,\<bbb-C\>>>. Also if
      <math|x\<in\>\<bbb-N\><rsub|0,\<bbb-C\>>> then there exist a
      <math|x<rprime|'>\<in\>\<bbb-C\><rsub|\<bbb-R\>>> such that
      <math|x=<around*|(|x<rprime|'>,0|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x<rprime|'>|)>>,
      using [eq: <reference|eq 10.13.048>] there exists a
      <math|x<rprime|''>\<in\>\<bbb-N\><rsub|0>> such that
      <math|x<rprime|'>=i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|x<rprime|''>|)>>
      so that <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>R><around*|(|x<rprime|''>|)>|)>\<in\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0>|)>|)>>.
      Hence we have that\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>><around*|(|\<bbb-N\><rsub|0>|)>|)>
      </equation*>

      which combined with [eqs: <reference|eq 10.14.048>,<reference|eq
      10.15.048>] proves that\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-C\>><text| is a subfield of
        <math|<around*|\<langle\>|\<bbb-C\>,\<cdot\>|\<rangle\>>>>
      </equation*>

      and\ 

      <\equation*>
        i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-C\>>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-C\>>,\<cdot\>|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      <item>By [theorem: <reference|real natural numbers, integers and
      rational numbers>] <math|\<bbb-N\><rsub|0,\<bbb-R\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>>
      so that\ 

      <\equation*>
        <around*|{|<around*|(|x,0|)>\|x\<in\>\<bbb-N\><rsub|0,\<bbb-R\>>|}>\<subseteq\><around*|{|<around*|(|x,0|)>\|x\<in\>\<bbb-Z\><rsub|\<bbb-R\>>|}>\<subseteq\><around*|{|<around*|(|x,0|)><around*|\||x\<in\>\<bbb-Q\><rsub|\<bbb-R\>>|\|>|}>\<subseteq\><around*|{|<around*|(|x,0|)>\|x\<in\>\<bbb-R\>|}>\<subseteq\>\<bbb-C\>
      </equation*>

      proving that\ 

      <\equation*>
        \<bbb-N\><rsub|0,\<bbb-C\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-R\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-C\>
      </equation*>
    </enumerate>
  </proof>

  Note that the the additive neutral element <math|<around*|(|0,0|)>> is
  noted as <math|0> and the multiplicative unit element
  <math|<around*|(|1,0|)>> is noted as <math|1>. In the following definition
  we have also a special notation for <math|<around*|(|0,1|)>>.

  <\definition>
    <label|complex i^2=-1><math|i\<in\>\<bbb-C\>> is defined as <math|i=-1>
  </definition>

  <\theorem>
    <label|compelx>For <math|i> we have\ 

    <\enumerate>
      <item><math|i\<cdot\>i=-1>

      <item>If <math|z\<in\>\<bbb-C\>> then there exists
      <with|font-series|bold|unique> <math|x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>>
      such that <math|z=x+i\<cdot\>y>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item><math|i\<cdot\>1=<around*|(|0,1|)>\<cdot\><around*|(|0,1|)>=<around*|(|0\<cdot\>0-1\<cdot\>1,0\<cdot\>1+1\<cdot\>0|)>=<around*|(|-1,0|)>=-<around*|(|1,0|)>=-1>

        <item>If <math|z\<in\>\<bbb-C\>> then
        <math|\<exists\>x<rprime|'>,y<rprime|'>\<in\>\<bbb-R\>> such that
        <math|z=<around*|(|x<rprime|'>,y<rprime|'>|)>>, define then
        <math|x=<around*|(|x<rprime|'>,0|)>\<in\>\<bbb-R\><rsub|\<bbb-C\>>>
        and <math|y=<around*|(|y<rprime|'>,0|)>\<in\>\<bbb-R\><rsub|\<bbb-C\>>>
        then we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|x+i\<cdot\>y>|<cell|=>|<cell|<around*|(|x<rprime|'>,0|)>+<around*|(|0,1|)>\<cdot\><around*|(|y<rprime|'>,0|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rprime|'>,0|)>+<around*|(|0\<cdot\>y<rprime|'>+1\<cdot\>0,0\<cdot\>0+1\<cdot\>y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rprime|'>,0|)>+<around*|(|0,y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rprime|'>,y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|z>>>>
        </eqnarray*>
      </enumerate>

      Further if <math|u,v\<in\>\<bbb-R\><rsub|\<bbb-C\>>> such that
      <math|z=u+i\<cdot\>v> then <math|\<exists\>u<rprime|'>,v<rprime|'>\<in\>\<bbb-R\>>
      such that <math|z=u+i\<cdot\>v> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,y|)>>|<cell|=>|<cell|u+i\<cdot\>v>>|<row|<cell|>|<cell|=>|<cell|<around*|(|u<rprime|'>,0|)>+<around*|(|0,1|)>\<cdot\><around*|(|v<rprime|'>,0|)>>>|<row|<cell|>|<cell|>|<cell|<around*|(|u<rprime|'>,0|)>+<around*|(|0\<cdot\>v<rprime|'>+1\<cdot\>0,0\<cdot\>0+1\<cdot\>v<rprime|'>|)>>>|<row|<cell|>|<cell|>|<cell|<around*|(|u<rprime|'>,0|)>+<around*|(|0,v<rprime|'>|)>>>|<row|<cell|>|<cell|>|<cell|<around*|(|u<rprime|'>,v<rprime|'>|)>>>>>
      </eqnarray*>

      so that <math|x<rprime|'>=u<rprime|'>> and
      <math|y<rprime|'>=v<rprime|'>> hence
      <math|x=<around*|(|x<rprime|'>,0|)>=<around*|(|u<rprime|'>,0|)>=u> and
      <math|y=<around*|(|y<rprime|'>,0|)>=<around*|(|v<rprime|'>,0|)>=v>
      proving uniqueness
    </proof>
  </theorem>

  <\note>
    Be carefull, in the above <math|x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> not
    <math|\<bbb-R\>>. However if <math|x,y\<in\>\<bbb-R\>> then
    <math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x|)>,i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|y|)>\<in\>\<bbb-R\><rsub|\<bbb-C\>>>
    then we have for <math|z=<around*|(|x,y|)>> that

    <\equation*>
      z=<around*|(|x,y|)>=<around*|(|x,0|)>+<around*|(|0,y|)>=<around*|(|x.0|)>+<around*|(|0,1|)>\<cdot\><around*|(|y,0|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x|)>+i\<cdot\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|y|)>
    </equation*>

    some authors automatical identify <math|x> with
    <math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x|)>> and
    <math|y> with <math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|y|)>>,
    essentially identifying <math|\<bbb-R\>> with
    <math|\<bbb-R\><rsub|\<bbb-C\>>>. In this chapter we do not do this
    identification. A consequence of this is that we have to proof that
    <math|\<bbb-R\><rsub|\<bbb-C\>>> has the same properties as
    <math|\<bbb-R\>>, but this occurs to me the correct thing to do. We will
    use however the fact that every <math|x\<in\>\<bbb-C\>> can be written
    uniquely as <math|z=x+i\<cdot\>y> because it simplifies calculation if we
    remember that <math|i\<cdot\>i=-1>.
  </note>

  <subsection|Order relation>

  As <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is toally
  ordered by [theorem: <reference|real totally ordered>] we could use
  [theorem: <reference|order lexical order>] to define a lexical of
  <math|\<bbb-C\>>. However we can't guarantee that the order is compatible
  with the field operations. More specific if
  <math|<around*|\<langle\>|\<bbb-C\>,+.\<cdot\>,\<leqslant\>|\<rangle\>>> is
  a ordered field so that by [theorems: <reference|real ordered field>,
  <reference|field order properties>]

  <\enumerate>
    <item>If <math|x\<less\>y> then <math|x+z\<less\>y+z>

    <item>If <math|x\<less\>y> and <math|0\<less\>z> then
    <math|x\<cdot\>z\<less\>y\<cdot\>z>
  </enumerate>

  then we have for <math|i=<around*|(|0,1|)>\<neq\><around*|(|0.0|)>=0>
  either\ 

  <\description>
    <item*|<math|0\<less\>i>>Then by (2) <math|0\<less\>i\<cdot\>i=-1> so
    that <math|0\<less\>-1>, hence by (1) we have
    <math|1=0+1\<less\>1+<around*|(|-1|)>=0> or <math|1\<less\>0>. But then
    by (2) we have <math|i=1\<cdot\>i\<less\>0\<cdot\>i=i> or
    <math|i\<less\>0> contradicting <math|0\<gtr\>i>.

    <item*|<math|i\<less\>0>>Then by (1) we have that
    <math|0=i+<around*|(|-i|)>\<less\><around*|(|-i|)>> so that
    <math|0\<less\>-i>. Hence using (2) we have that
    <math|0\<less\><around*|(|-i|)>\<cdot\><around*|(|-i|)>\<equallim\><rsub|<text|[theorem:
    <reference|ring 0 1 and ->]>>i\<cdot\>i=-1> or <math|0\<less\>-1> but
    then by (2) <math|1=0+1\<less\><around*|(|-1|)>+1\<less\>0> or
    <math|1\<less\>0>. But then by (2) we have
    <math|-i=1\<cdot\><around*|(|-i|)>\<less\>0\<cdot\><around*|(|-i|)>=0> or
    <math|-i\<less\>0> contradicting that we fond that <math|0\<less\>-i>.
  </description>

  So although we can equip <math|\<bbb-C\>> with a total order, this order
  can not satisfiy (1) and (2) and the main culprit is <math|i>. However we
  can still have a order relation of the subfield
  <math|\<bbb-R\><rsub|\<bbb-C\>>> that satisfies (1) and (2) as will be
  showed in the following.

  <\definition>
    <label|complex RC order (1)>The relation
    <math|\<leqslant\>\<subseteq\>\<bbb-R\><rsub|\<bbb-C\>>\<times\>\<bbb-R\><rsub|\<bbb-C\>>>
    is defined by

    <\equation*>
      \<leqslant\>=<around*|{|<around*|(|<around*|(|x,0|)>,<around*|(|y,0|)>|)>\<in\>\<bbb-R\><rsub|\<bbb-C\>>\|x\<leqslant\>y|}>
    </equation*>

    Note: that in <math|x\<leqslant\>y> we use the order of
    <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
  </definition>

  <\theorem>
    <label|complex RC order (2)>Using the above order relation we have that

    <\enumerate>
      <item><math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,\<leqslant\>|\<rangle\>>>
      is a totally ordered set

      <item><math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,\<leqslant\>|\<rangle\>>>
      is a order isomorphism
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\description>
        <item*|reflexivity>If <math|<around*|(|x,0|)>\<in\>\<bbb-R\><rsub|\<bbb-C\>>>
        then as <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
        is totally orded we have <math|x\<leqslant\>x> so that
        <math|<around*|(|x,0|)>\<leqslant\><around*|(|x,0|)>>

        \ <item*|anti symmetry>If <math|<around*|(|x,0|)>\<leqslant\><around*|(|y,0|)>\<wedge\><around*|(|y,0|)>\<leqslant\><around*|(|x,0|)>>
        then <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x> which, as
        <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
        totally ordered, proves that <math|x=y> hence
        <math|<around*|(|x,0|)>=<around*|(|y,0|)>>.

        <item*|transitivity>If <math|<around*|(|x,0|)>\<leqslant\><around*|(|y,0|)>\<wedge\><around*|(|y,0|)>\<leqslant\>*<around*|(|z,0|)>>
        then <math|x\<leqslant\>y\<wedge\>y\<leqslant\>z> which, \ as
        <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
        totally ordered, proves that <math|x\<leqslant\>z>, hence
        <math|<around*|(|x,0|)>\<leqslant\><around*|(|z,0|)>>

        <item*|totally order>If <math|<around*|(|x,0|)>,<around*|(|y,0|)>\<in\>\<bbb-R\><rsub|\<bbb-C\>>>
        then we have as <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
        is totally ordered that either <math|x\<leqslant\>y\<Rightarrow\><around*|(|x,0|)>\<leqslant\><around*|(|y,0|)>>
        or <math|y\<leqslant\>x\<Rightarrow\><around*|(|y,0|)>\<leqslant\><around*|(|x,0|)>>.
      </description>

      <item>First by [theorem:<reference|complex embedding>]
      <math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsub|\<bbb-C\>>>
      is a bijection and second\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-R\><rsub|\<bbb-C\>>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|y|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,0|)>\<leqslant\><around*|(|y,0|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|definition>>|<cell|x\<leqslant\>y>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|complex order isomorphisms>We have that\ 

    <\enumerate>
      <item><math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,\<leqslant\>|\<rangle\>>>
      is a order isomorphism

      <item><math|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-C\>>,\<leqslant\>|\<rangle\>>>
      is a order isomorphism

      <item><math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Z\><rsub|\<bbb-C\>>,\<leqslant\>|\<rangle\>>>
      is a order isomorphism

      <item><math|i<rsub|\<bbb-N\><rsub|>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-N\><rsub|0,\<bbb-C\>>,\<leqslant\>|\<rangle\>>>
      is a order isomorphism
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using [theorem: <reference|complex embedding>] we have that

      <\equation*>
        i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:\<bbb-R\>\<rightarrow\>\<bbb-C\><text|
        defined by >i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>|)>=<around*|(|\<alpha\>,0|)><text|
        is a bijection>
      </equation*>

      Further if <math|x,y\<in\>\<bbb-R\>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<leqslant\>y>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,0|)>\<leqslant\><around*|(|y,0|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|y|)>>>>>
      </eqnarray*>

      <item>Using (1) and [theorem: <reference|real embedding of Q and
      order>] we have that\ 

      <\equation*>
        i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>,>\<leqslant\>|\<rangle\>><text|
        and >i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-R\>>,\<leqslant\>|\<rangle\>><text|
        are order isomorphisms>
      </equation*>

      so using [theorem <reference|order composition of functions>]

      <\equation*>
        i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-C\>>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-T\>><around*|(|\<bbb-Q\>|)>|)><rsub|>,\<leqslant\>|\<rangle\>>
        <text| is a order isomorphism>
      </equation*>

      As by [theorem: <reference|complex embedding>]
      <math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-T\>><around*|(|\<bbb-Q\>|)>|)>=\<bbb-Q\><rsub|\<bbb-C\>>>
      we have that\ 

      <\equation*>
        i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-C\>>=i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-C\>>\<circ\>i<rsub|\<bbb-Q\>\<rightarrow\>\<bbb-R\>>:<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-Q\><rsub|\<bbb-C\>><rsub|>,\<leqslant\>|\<rangle\>>
        <text| is a order isomorphism>
      </equation*>

      <item>TODO
    </enumerate>

    \;
  </proof>

  <\definition>
    We have the following definitions:\ 

    <\enumerate>
      <item><math|\<bbb-R\><rsup|+><rsub|\<bbb-C\>>=<around*|{|x\<in\>\<bbb-R\><rsub|\<bbb-C\>>\|0\<less\>x|}>>

      <item><math|\<bbb-R\><rsup|+><rsub|0,\<bbb-C\>>=<around*|{|x\<in\>\<bbb-R\><rsub|\<bbb-C\>>\|0\<leqslant\>x|}>>

      <item><math|\<bbb-R\><rsup|-><rsub|\<bbb-C\>>=<around*|{|x\<in\>\<bbb-R\><rsub|\<bbb-C\>>\|x\<less\>0|}>>

      <item><math|\<bbb-R\><rsup|-><rsub|0,\<bbb-C\>>=<around*|{|x\<in\>\<bbb-R\><rsub|\<bbb-C\>>\|x\<leqslant\>0|}>>
    </enumerate>
  </definition>

  We use now the above order isomorphism and field isomorphism to transfer
  the properties of <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>>
  and <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> to
  <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,\<leqslant\>|\<rangle\>>>
  and <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>>>.
  First we show that <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>,\<leqslant\>|\<rangle\>>>
  is a ordered field.

  <\theorem>
    <label|real RC ordered field><math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>,\<leqslant\>|\<rangle\>>>
    is a ordered field
  </theorem>

  <\proof>
    Using [theorems: <reference|complex embedding>, <reference|complex order
    isomorphisms>] we have that

    <\equation*>
      <around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>|\<rangle\>><text|
      is a field>
    </equation*>

    and\ 

    <\equation>
      <label|eq 10.17.046>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,\<leqslant\>|\<rangle\>><text|
      is a order isomorphism>
    </equation>

    and

    <\equation>
      <label|eq 10.18.046>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>>:<around*|\<langle\>|\<bbb-R\>\<dotplus\>,\<cdot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>><text|
      is a field isormorphism>
    </equation>

    Then we have\ 

    <\enumerate>
      <item>If <math|x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|x\<less\>y> then <math|\<exists\>\<alpha\>,\<beta\>,\<gamma\>\<in\>\<bbb-R\>>
      such that <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>|)>>,
      y=<math|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<beta\>|)>>
      and <math|z=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<gamma\>|)>>.
      As <math|x\<less\>y\<Rightarrow\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>|)>\<less\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<beta\>|)>>
      we have by [eq: <reference|eq 10.17.046>] that
      <math|\<alpha\>\<less\>\<beta\>>. By [theorem: <reference|real ordered
      field>] we have that <math|\<alpha\>+\<gamma\>\<less\>\<beta\>+\<gamma\>>.
      Using then [eqs: <reference|eq 10.17.046>, <reference|eq 10.18.046>] we
      have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x+z>|<cell|=>|<cell|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>|)>+i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>+\<gamma\>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<beta\>+\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<beta\>|)>+i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<gamma\>|)>>>|<row|<cell|>|<cell|=>|<cell|y+z>>>>
      </eqnarray*>

      proving that

      <\equation*>
        x+x\<less\>y+z
      </equation*>

      <item>If <math|x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<less\>x> and <math|0\<less\>y> then there exist
      <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> such that
      <math|x=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>|)>>
      and <math|y=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<beta\>|)>>.
      As <math|0\<less\>x> and <math|0\<less\>y> we have by [eq:
      <reference|eq 10.17.046>] that <math|0\<less\>\<alpha\>> and
      <math|0\<less\>\<beta\>>, using [theorem: <reference|real ordered
      field>] it follows that <math|0\<less\>\<alpha\>\<cdot\>\<beta\>>.
      Using then [eqs: <reference|eq 10.17.046>, <reference|eq 10.18.046>] we
      have that\ 

      <\equation*>
        0=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|0|)>\<less\>i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>\<cdot\>\<beta\>|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>\<cdot\>\<beta\>|)>=i<rsub|\<bbb-R\>\<rightarrow\>\<bbb-C\>><around*|(|\<alpha\>|)>\<cdot\>i<rsub|\<bbb-R\>\<twoheadrightarrow\>\<bbb-C\>><around*|(|\<beta\>|)>=x\<cdot\>y
      </equation*>

      proving that\ 

      <\equation*>
        0\<less\>x\<cdot\>y
      </equation*>
    </enumerate>
  </proof>

  As <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>,\<leqslant\>|\<rangle\>>>
  is a ordered field we have automatically the following properties:

  <\theorem>
    <label|complex RC order properties>For
    <math|<around*|\<langle\>|\<bbb-R\><rsub|\<bbb-C\>>,+,\<cdot\>,\<leqslant\>|\<rangle\>>>
    we have\ 

    <\enumerate>
      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> we have
      <math|x\<less\>y\<Leftrightarrow\>x\<oplus\>z\<less\>y\<oplus\>z>

      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>x\<oplus\>z\<leqslant\>y\<oplus\>z>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> we have
      <math|x\<less\>y\<Leftrightarrow\>0\<less\>y\<oplus\><around*|(|-x|)>>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>0\<leqslant\>y\<oplus\><around*|(|-x|)>>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> we have
      <math|x\<less\>y\<Leftrightarrow\>-y\<less\>-x>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>-y\<leqslant\>-x>

      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<less\>z> we have <math|x\<less\>y\<Leftrightarrow\>x\<odot\>z\<less\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<less\>z> we have <math|x\<leqslant\>y\<Leftrightarrow\>x\<odot\>z\<leqslant\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<leqslant\>z> and <math|x\<leqslant\>y> we have
      <math|x\<odot\>\<leqslant\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|z\<less\>0> we have <math|x\<less\>y\<Leftrightarrow\>y\<odot\>z\<less\>x\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|z\<less\>0> we have <math|x\<leqslant\>y\<Leftrightarrow\>y\<odot\>z\<leqslant\>x\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|z\<leqslant\>0> and <math|x\<leqslant\>y> we have
      <math|y\<odot\>z\<leqslant\>x\<odot\>z>

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsub|\<bbb-C\>>> we have
      <math|0\<leqslant\>x\<cdot\>x\<equallim\><rsub|def>x<rsup|2>>

      <item><math|0\<leqslant\>1>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<less\>x\<less\>y> we have that
      <math|x<rsup|2>\<less\>y<rsup|2>> where <math|x<rsup|2>=x\<odot\>x> and
      <math|y<rsup|2>=y\<odot\>y>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<leqslant\>x\<leqslant\>y> we have that
      <math|x<rsup|2>\<leqslant\>y<rsup|2>> where <math|x<rsup|2>=x\<odot\>x>
      and <math|y<rsup|2>=y\<odot\>y>

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<less\>x> we have <math|0\<less\>x<rsup|-1>>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\><rsub|\<bbb-C\>>> we have
      <math|0\<less\>x\<less\>y\<Leftrightarrow\>0\<less\>y<rsup|-1>\<less\>x<rsup|-1>>

      <item><math|\<forall\>x,y\<in\>><math|\<bbb-R\><rsub|\<bbb-C\>>> we
      have <math|0\<less\>x\<leqslant\>y\<Leftrightarrow\>0\<less\>y<rsup|-1>\<leqslant\>x<rsup|-1>>

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<less\>x\<less\>1> we have <math|1\<less\>x<rsup|-1>>

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsub|\<bbb-C\>>> with
      <math|0\<less\>x\<leqslant\>1> we have <math|1\<leqslant\>x<rsup|-1>>
    </enumerate>
  </theorem>

  <subsection|Recursion and mathematical induction in <math|\<bbb-C\>>>

  The embedding of <math|\<bbb-N\><rsub|0>> in <math|\<bbb-C\>> is important
  because it allows use to extend recursion and induction using
  <math|\<bbb-N\><rsub|0,\<bbb-C\>>> instead of <math|\<bbb-N\><rsub|0>>.
  TODO

  <\definition>
    Let <math|n,m\<in\>\<bbb-N\><rsub|0,\<bbb-C\>>> then we define\ 

    <\equation*>
      <around*|{|n,\<ldots\>,m|}>=<around*|{|i\<in\>\<bbb-N\><rsub|0,\<bbb-C\>>\|n\<leqslant\>i\<leqslant\>m|}>\<subseteq\>\<bbb-N\><rsub|0.C>
    </equation*>

    <\equation*>
      <around*|{|n,,\<ldots\>,\<infty\>|}>=<around*|{|i\<in\>\<bbb-N\><rsub|0,\<bbb-C\>>\|n\<leqslant\>i|}>\<subseteq\>\<bbb-N\><rsub|0,C>
    </equation*>
  </definition>

  <\theorem>
    <label|complex range>We have\ 

    <\enumerate>
      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-C\>><around*|(||)>>
    </enumerate>
  </theorem>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

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
    <associate|page-first|185>
    <associate|section-nr|2>
    <associate|subsection-nr|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|NQ is conditional complete|<tuple|8.40|?>>
    <associate|auto-1|<tuple|7|?>>
    <associate|auto-10|<tuple|quotient|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|<frac|m|n>>|?>>
    <associate|auto-12|<tuple|event integers|?>>
    <associate|auto-13|<tuple|odd integers|?>>
    <associate|auto-14|<tuple|7.3|?>>
    <associate|auto-15|<tuple|8|?>>
    <associate|auto-16|<tuple|8.1|?>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Q\>,+|)>>|?>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>|?>>
    <associate|auto-19|<tuple|8.2|?>>
    <associate|auto-2|<tuple|7.1|?>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|\<bbb-Z\><rsub|\<bbb-Q\>>>|?>>
    <associate|auto-21|<tuple|8.3|?>>
    <associate|auto-22|<tuple|9|?>>
    <associate|auto-23|<tuple|9.1|?>>
    <associate|auto-24|<tuple|9.1.1|?>>
    <associate|auto-25|<tuple|Dedekind's cut|?>>
    <associate|auto-26|<tuple|<with|mode|<quote|math>|\<bbb-R\>>|?>>
    <associate|auto-27|<tuple|9.1.2|?>>
    <associate|auto-28|<tuple|9.1.2.1|?>>
    <associate|auto-29|<tuple|9.1.2.2|?>>
    <associate|auto-3|<tuple|integers|?>>
    <associate|auto-30|<tuple|<with|mode|<quote|math>|\<bbb-R\><rsup|+>>|?>>
    <associate|auto-31|<tuple|<with|mode|<quote|math>|\<bbb-R\><rsup|->>|?>>
    <associate|auto-32|<tuple|9.2|?>>
    <associate|auto-33|<tuple|9.3|?>>
    <associate|auto-34|<tuple|<with|mode|<quote|math>|\<bbb-Z\><rsub|\<bbb-R\>>>|?>>
    <associate|auto-35|<tuple|<with|mode|<quote|math>|\<bbb-N\><rsub|0,\<bbb-R\>>>|?>>
    <associate|auto-36|<tuple|<with|mode|<quote|math>|\<bbb-N\><rsub|\<bbb-R\>>>|?>>
    <associate|auto-37|<tuple|9.4|?>>
    <associate|auto-38|<tuple|9.4.1|?>>
    <associate|auto-39|<tuple|9.4.2|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>|?>>
    <associate|auto-40|<tuple|9.5|?>>
    <associate|auto-41|<tuple|<with|mode|<quote|math>|<sqrt|x>>|?>>
    <associate|auto-42|<tuple|10|?>>
    <associate|auto-43|<tuple|10.1|?>>
    <associate|auto-44|<tuple|10.2|?>>
    <associate|auto-45|<tuple|10.2.1|?>>
    <associate|auto-46|<tuple|10.2.2|?>>
    <associate|auto-47|<tuple|10.2.3|?>>
    <associate|auto-5|<tuple|7.2|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>|?>>
    <associate|auto-7|<tuple|absolute value|?>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|<around*|\||x|\|>>|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|m\|n>|?>>
    <associate|compelx|<tuple|10.8|?>>
    <associate|complex RC order (1)|<tuple|10.10|?>>
    <associate|complex RC order (2)|<tuple|10.11|?>>
    <associate|complex RC order properties|<tuple|10.15|?>>
    <associate|complex complement|<tuple|10.4|?>>
    <associate|complex embedding|<tuple|10.6|?>>
    <associate|complex field|<tuple|10.2|?>>
    <associate|complex i^2=-1|<tuple|10.7|?>>
    <associate|complex numbers|<tuple|10.1|?>>
    <associate|complex order isomorphisms|<tuple|10.12|?>>
    <associate|complex range|<tuple|10.17|?>>
    <associate|eq 10.1.045|<tuple|10.16|?>>
    <associate|eq 10.1.048|<tuple|10.1|?>>
    <associate|eq 10.10.045|<tuple|10.25|?>>
    <associate|eq 10.10.048|<tuple|10.10|?>>
    <associate|eq 10.11.045|<tuple|10.26|?>>
    <associate|eq 10.11.048|<tuple|10.11|?>>
    <associate|eq 10.12.045|<tuple|10.27|?>>
    <associate|eq 10.12.048|<tuple|10.12|?>>
    <associate|eq 10.13.045|<tuple|10.28|?>>
    <associate|eq 10.13.048|<tuple|10.13|?>>
    <associate|eq 10.14.045|<tuple|10.29|?>>
    <associate|eq 10.14.048|<tuple|10.14|?>>
    <associate|eq 10.15.045|<tuple|10.30|?>>
    <associate|eq 10.15.048|<tuple|10.15|?>>
    <associate|eq 10.16.045|<tuple|10.31|?>>
    <associate|eq 10.17.046|<tuple|10.16|?>>
    <associate|eq 10.18.046|<tuple|10.17|?>>
    <associate|eq 10.2.045|<tuple|10.17|?>>
    <associate|eq 10.2.048|<tuple|10.2|?>>
    <associate|eq 10.3.045|<tuple|10.18|?>>
    <associate|eq 10.3.048|<tuple|10.3|?>>
    <associate|eq 10.4.045|<tuple|10.19|?>>
    <associate|eq 10.4.048|<tuple|10.4|?>>
    <associate|eq 10.5.045|<tuple|10.20|?>>
    <associate|eq 10.5.048|<tuple|10.5|?>>
    <associate|eq 10.6.045|<tuple|10.21|?>>
    <associate|eq 10.6.048|<tuple|10.6|?>>
    <associate|eq 10.7.045|<tuple|10.22|?>>
    <associate|eq 10.7.048|<tuple|10.7|?>>
    <associate|eq 10.8.045|<tuple|10.23|?>>
    <associate|eq 10.8.048|<tuple|10.8|?>>
    <associate|eq 10.9.035|<tuple|10.24|?>>
    <associate|eq 10.9.048|<tuple|10.9|?>>
    <associate|eq 7.1.022|<tuple|7.1|?>>
    <associate|eq 7.11.022|<tuple|7.10|?>>
    <associate|eq 7.12.022|<tuple|7.11|?>>
    <associate|eq 7.13.022|<tuple|7.12|?>>
    <associate|eq 7.16.022|<tuple|7.13|?>>
    <associate|eq 7.17.022|<tuple|7.14|?>>
    <associate|eq 7.18.022|<tuple|7.15|?>>
    <associate|eq 7.18.027.1|<tuple|7.17|?>>
    <associate|eq 7.19.022|<tuple|7.16|?>>
    <associate|eq 7.19.027.1|<tuple|7.18|?>>
    <associate|eq 7.2.022|<tuple|7.2|?>>
    <associate|eq 7.3.022|<tuple|7.3|?>>
    <associate|eq 7.4.022|<tuple|7.4|?>>
    <associate|eq 7.5.022|<tuple|7.5|?>>
    <associate|eq 7.6.022|<tuple|7.6|?>>
    <associate|eq 7.7.022|<tuple|7.7|?>>
    <associate|eq 7.7.046|<tuple|7.9|?>>
    <associate|eq 7.8.022|<tuple|7.8|?>>
    <associate|eq 8.1.023|<tuple|8.1|?>>
    <associate|eq 8.11.024|<tuple|8.11|?>>
    <associate|eq 8.12.024|<tuple|8.12|?>>
    <associate|eq 8.13.024|<tuple|8.14|?>>
    <associate|eq 8.13.046|<tuple|8.13|?>>
    <associate|eq 8.14.024|<tuple|8.15|?>>
    <associate|eq 8.15.026|<tuple|8.18|?>>
    <associate|eq 8.15.028|<tuple|8.17|?>>
    <associate|eq 8.15.040|<tuple|8.16|?>>
    <associate|eq 8.16.026|<tuple|8.19|?>>
    <associate|eq 8.17.026|<tuple|8.20|?>>
    <associate|eq 8.18.026|<tuple|8.21|?>>
    <associate|eq 8.19.026|<tuple|8.22|?>>
    <associate|eq 8.2.023|<tuple|8.2|?>>
    <associate|eq 8.20.026.1|<tuple|8.23|?>>
    <associate|eq 8.21.026|<tuple|8.24|?>>
    <associate|eq 8.22.026|<tuple|8.25|?>>
    <associate|eq 8.23.026|<tuple|8.26|?>>
    <associate|eq 8.24.026|<tuple|8.30|?>>
    <associate|eq 8.24.027|<tuple|8.27|?>>
    <associate|eq 8.25.027|<tuple|8.28|?>>
    <associate|eq 8.26.027|<tuple|8.29|?>>
    <associate|eq 8.28.027|<tuple|8.31|?>>
    <associate|eq 8.3.023|<tuple|8.3|?>>
    <associate|eq 8.32.028|<tuple|8.34|?>>
    <associate|eq 8.33.028|<tuple|8.35|?>>
    <associate|eq 8.34.028|<tuple|8.36|?>>
    <associate|eq 8.35.028|<tuple|8.37|?>>
    <associate|eq 8.36.028|<tuple|8.38|?>>
    <associate|eq 8.37.028|<tuple|8.39|?>>
    <associate|eq 8.38.028|<tuple|8.40|?>>
    <associate|eq 8.39.028|<tuple|8.41|?>>
    <associate|eq 8.4.023|<tuple|8.4|?>>
    <associate|eq 8.40.028|<tuple|8.43|?>>
    <associate|eq 8.40.029|<tuple|8.42|?>>
    <associate|eq 8.5.023|<tuple|8.5|?>>
    <associate|eq 8.6.023|<tuple|8.6|?>>
    <associate|eq 8.7.023|<tuple|8.7|?>>
    <associate|eq 8.8.024|<tuple|8.8|?>>
    <associate|eq 8.9.024|<tuple|8.10|?>>
    <associate|eq 8.9.024.1|<tuple|8.9|?>>
    <associate|eq 9.1.028|<tuple|9.1|?>>
    <associate|eq 9.10.029|<tuple|9.8|?>>
    <associate|eq 9.10.030|<tuple|9.7|?>>
    <associate|eq 9.100.040|<tuple|9.95|?>>
    <associate|eq 9.101.040|<tuple|9.102|?>>
    <associate|eq 9.101.041|<tuple|9.96|?>>
    <associate|eq 9.102.040|<tuple|9.103|?>>
    <associate|eq 9.102.041|<tuple|9.97|?>>
    <associate|eq 9.103.040|<tuple|9.104|?>>
    <associate|eq 9.103.041|<tuple|9.98|?>>
    <associate|eq 9.104.040|<tuple|9.105|?>>
    <associate|eq 9.104.041|<tuple|9.99|?>>
    <associate|eq 9.105.041|<tuple|9.100|?>>
    <associate|eq 9.106.041|<tuple|9.101|?>>
    <associate|eq 9.11.029|<tuple|9.9|?>>
    <associate|eq 9.11.034|<tuple|9.11|?>>
    <associate|eq 9.111.041|<tuple|9.106|?>>
    <associate|eq 9.112.041|<tuple|9.107|?>>
    <associate|eq 9.113.041|<tuple|9.108|?>>
    <associate|eq 9.114.041|<tuple|9.109|?>>
    <associate|eq 9.115.041|<tuple|9.110|?>>
    <associate|eq 9.116.041|<tuple|9.121|?>>
    <associate|eq 9.117.041|<tuple|9.122|?>>
    <associate|eq 9.118.042|<tuple|9.111|?>>
    <associate|eq 9.119.042|<tuple|9.112|?>>
    <associate|eq 9.12.029|<tuple|9.10|?>>
    <associate|eq 9.120.042|<tuple|9.113|?>>
    <associate|eq 9.121.042|<tuple|9.114|?>>
    <associate|eq 9.122.042|<tuple|9.115|?>>
    <associate|eq 9.123.042|<tuple|9.116|?>>
    <associate|eq 9.124.042|<tuple|9.117|?>>
    <associate|eq 9.125.042|<tuple|9.118|?>>
    <associate|eq 9.125.046|<tuple|9.119|?>>
    <associate|eq 9.126.044|<tuple|9.123|?>>
    <associate|eq 9.126.046|<tuple|9.120|?>>
    <associate|eq 9.127.044|<tuple|9.124|?>>
    <associate|eq 9.128.044|<tuple|9.125|?>>
    <associate|eq 9.129.044|<tuple|9.126|?>>
    <associate|eq 9.130.044|<tuple|9.127|?>>
    <associate|eq 9.131.044|<tuple|9.128|?>>
    <associate|eq 9.132.044|<tuple|9.129|?>>
    <associate|eq 9.133.044|<tuple|9.130|?>>
    <associate|eq 9.134.044|<tuple|9.131|?>>
    <associate|eq 9.135.044|<tuple|9.132|?>>
    <associate|eq 9.136.044|<tuple|9.133|?>>
    <associate|eq 9.137.044|<tuple|9.134|?>>
    <associate|eq 9.14.029|<tuple|9.12|?>>
    <associate|eq 9.16.030|<tuple|9.13|?>>
    <associate|eq 9.17.030|<tuple|9.14|?>>
    <associate|eq 9.18.030|<tuple|9.15|?>>
    <associate|eq 9.19.030|<tuple|9.16|?>>
    <associate|eq 9.2.033|<tuple|9.2|?>>
    <associate|eq 9.20.030|<tuple|9.17|?>>
    <associate|eq 9.21.030|<tuple|9.18|?>>
    <associate|eq 9.22.030|<tuple|9.19|?>>
    <associate|eq 9.23.030|<tuple|9.20|?>>
    <associate|eq 9.24.030|<tuple|9.21|?>>
    <associate|eq 9.25.030|<tuple|9.22|?>>
    <associate|eq 9.26.030|<tuple|9.23|?>>
    <associate|eq 9.27.030|<tuple|9.24|?>>
    <associate|eq 9.27.034|<tuple|9.27|?>>
    <associate|eq 9.28.030|<tuple|9.25|?>>
    <associate|eq 9.29.030|<tuple|9.26|?>>
    <associate|eq 9.3.033|<tuple|9.3|?>>
    <associate|eq 9.30.030|<tuple|9.59|?>>
    <associate|eq 9.30.031|<tuple|9.28|?>>
    <associate|eq 9.31.030|<tuple|9.60|?>>
    <associate|eq 9.31.031|<tuple|9.29|?>>
    <associate|eq 9.32.030|<tuple|9.61|?>>
    <associate|eq 9.32.031|<tuple|9.30|?>>
    <associate|eq 9.33.030|<tuple|9.62|?>>
    <associate|eq 9.33.031|<tuple|9.31|?>>
    <associate|eq 9.34.031|<tuple|9.32|?>>
    <associate|eq 9.35.031|<tuple|9.33|?>>
    <associate|eq 9.36.031|<tuple|9.34|?>>
    <associate|eq 9.37.031|<tuple|9.35|?>>
    <associate|eq 9.37.035|<tuple|9.37|?>>
    <associate|eq 9.38.031|<tuple|9.36|?>>
    <associate|eq 9.38.035|<tuple|9.38|?>>
    <associate|eq 9.39.032|<tuple|9.42|?>>
    <associate|eq 9.39.035|<tuple|9.39|?>>
    <associate|eq 9.4.033|<tuple|9.4|?>>
    <associate|eq 9.40.032|<tuple|9.43|?>>
    <associate|eq 9.40.035|<tuple|9.40|?>>
    <associate|eq 9.41.032|<tuple|9.44|?>>
    <associate|eq 9.41.035|<tuple|9.41|?>>
    <associate|eq 9.42.032|<tuple|9.45|?>>
    <associate|eq 9.42.033|<tuple|9.48|?>>
    <associate|eq 9.43.032|<tuple|9.46|?>>
    <associate|eq 9.43.033|<tuple|9.49|?>>
    <associate|eq 9.44.032|<tuple|9.47|?>>
    <associate|eq 9.44.033|<tuple|9.50|?>>
    <associate|eq 9.45.033|<tuple|9.52|?>>
    <associate|eq 9.45.034|<tuple|9.51|?>>
    <associate|eq 9.46.033|<tuple|9.53|?>>
    <associate|eq 9.47.033|<tuple|9.54|?>>
    <associate|eq 9.49.034|<tuple|9.55|?>>
    <associate|eq 9.5.033|<tuple|9.5|?>>
    <associate|eq 9.50.034|<tuple|9.56|?>>
    <associate|eq 9.51.034|<tuple|9.57|?>>
    <associate|eq 9.52.034|<tuple|9.58|?>>
    <associate|eq 9.59.034|<tuple|9.64|?>>
    <associate|eq 9.6.030|<tuple|9.6|?>>
    <associate|eq 9.60.034|<tuple|9.63|?>>
    <associate|eq 9.65.035|<tuple|9.65|?>>
    <associate|eq 9.66.035|<tuple|9.66|?>>
    <associate|eq 9.67.035|<tuple|9.73|?>>
    <associate|eq 9.67.036|<tuple|9.68|?>>
    <associate|eq 9.67.036.1|<tuple|9.67|?>>
    <associate|eq 9.68.035|<tuple|9.74|?>>
    <associate|eq 9.68.036|<tuple|9.69|?>>
    <associate|eq 9.69.036|<tuple|9.70|?>>
    <associate|eq 9.70.036|<tuple|9.71|?>>
    <associate|eq 9.71.036|<tuple|9.72|?>>
    <associate|eq 9.75.036|<tuple|9.75|?>>
    <associate|eq 9.76.036|<tuple|9.76|?>>
    <associate|eq 9.77.036|<tuple|9.77|?>>
    <associate|eq 9.78.036|<tuple|9.78|?>>
    <associate|eq 9.79.046|<tuple|9.79|?>>
    <associate|eq 9.82.036|<tuple|9.80|?>>
    <associate|eq 9.83.036|<tuple|9.81|?>>
    <associate|eq 9.84.036|<tuple|9.82|?>>
    <associate|eq 9.85.036|<tuple|9.83|?>>
    <associate|eq 9.86.036|<tuple|9.84|?>>
    <associate|eq 9.87.036|<tuple|9.85|?>>
    <associate|eq 9.88.036|<tuple|9.86|?>>
    <associate|eq 9.89.036|<tuple|9.87|?>>
    <associate|eq 9.89.047|<tuple|9.89|?>>
    <associate|eq 9.90.036|<tuple|9.88|?>>
    <associate|eq 9.90.047|<tuple|9.90|?>>
    <associate|eq 9.96.040|<tuple|9.91|?>>
    <associate|eq 9.97.040|<tuple|9.92|?>>
    <associate|eq 9.98.040|<tuple|9.93|?>>
    <associate|eq 9.99.040|<tuple|9.94|?>>
    <associate|eq real square root properties (1)|<tuple|9.95|?>>
    <associate|integeres order|<tuple|7.21|?>>
    <associate|integers|<tuple|7.2|?>>
    <associate|integers 0\<less\>1 and 0\<less\>2|<tuple|7.25|?>>
    <associate|integers 0\<less\>n and 0\<less\>m then
    0\<less\>n.m|<tuple|7.26|?>>
    <associate|integers 1+1=2|<tuple|7.12|?>>
    <associate|integers Archimedean|<tuple|7.29|?>>
    <associate|integers absolute value|<tuple|7.33|?>>
    <associate|integers are conditional complete|<tuple|7.31|?>>
    <associate|integers common divisor|<tuple|7.44|?>>
    <associate|integers condition for 0|<tuple|7.13|?>>
    <associate|integers denumerability|<tuple|7.52|?>>
    <associate|integers difference|<tuple|7.8|?>>
    <associate|integers divide relation|<tuple|7.38|?>>
    <associate|integers division|<tuple|7.37|?>>
    <associate|integers divisor 1|<tuple|7.40|?>>
    <associate|integers divisors |<tuple|7.41|?>>
    <associate|integers divisors properties|<tuple|7.45|?>>
    <associate|integers equivalence relation|<tuple|7.1|?>>
    <associate|integers even condition|<tuple|7.51|?>>
    <associate|integers even odd|<tuple|7.49|?>>
    <associate|integers even odd equivalences|<tuple|7.50|?>>
    <associate|integers gcd existence|<tuple|7.46|?>>
    <associate|integers gcd properties|<tuple|7.48|?>>
    <associate|integers greatest common divisor|<tuple|7.47|?>>
    <associate|integers integers forms a group|<tuple|7.7|?>>
    <associate|integers integral domain|<tuple|7.11|?>>
    <associate|integers multiplication|<tuple|7.10|?>>
    <associate|integers multiplication equivalence|<tuple|7.9|?>>
    <associate|integers n.r=k.r=\<gtr\>n=k|<tuple|7.15|?>>
    <associate|integers neutral element|<tuple|7.6|?>>
    <associate|integers non negative|<tuple|7.16|?>>
    <associate|integers non positive numbers|<tuple|7.18|?>>
    <associate|integers order preserving bijection|<tuple|7.28|?>>
    <associate|integers ordered ring|<tuple|7.27|?>>
    <associate|integers positive and negative|<tuple|7.20|?>>
    <associate|integers positive condition|<tuple|7.23|?>>
    <associate|integers positive integeres are well ordered|<tuple|7.30|?>>
    <associate|integers properties (1)|<tuple|7.17|?>>
    <associate|integers quotient|<tuple|7.43|?>>
    <associate|integers quotient theorem|<tuple|7.42|?>>
    <associate|integers strict positive numbers|<tuple|7.24|?>>
    <associate|integers sum uniqueness|<tuple|7.4|?>>
    <associate|integers sup is max|<tuple|7.32|?>>
    <associate|integers without 0|<tuple|8.2|?>>
    <associate|integers x\<less\>=\|x\||<tuple|7.35|?>>
    <associate|integers z=-z=\<gtr\>z=0|<tuple|7.14|?>>
    <associate|integers {x\|-\<less\>=x}|<tuple|7.22|?>>
    <associate|integers \|x.y\|=\|x\|.\|y\||<tuple|7.34|?>>
    <associate|integers \|x\|\<less\>=\<gtr\>x=0|<tuple|7.36|?>>
    <associate|integers ~([n,m])~([n+k,m+k)]|<tuple|7.3|?>>
    <associate|rational -(q^-1)=(-q)^-1|<tuple|8.31|?>>
    <associate|rational 0\<less\>1|<tuple|8.26|?>>
    <associate|rational 0\<less\>=q and 0\<less\>=q=\<gtr\>0\<less\>=q+r|<tuple|8.23|?>>
    <associate|rational 0\<less\>=q property|<tuple|8.20|?>>
    <associate|rational 0\<less\>q and 0\<less\>r =\<gtr\>
    0\<less\>q,r|<tuple|8.29|?>>
    <associate|rational 0\<less\>q=\<gtr\>q=n/m|<tuple|8.25|?>>
    <associate|rational 1+1=2|<tuple|8.13|?>>
    <associate|rational Archimedean|<tuple|8.37|?>>
    <associate|rational NQ is denumerable|<tuple|8.43|?>>
    <associate|rational NQ is well-ordered|<tuple|8.39|?>>
    <associate|rational NQ properties (1)|<tuple|8.36|?>>
    <associate|rational Q is denumerable|<tuple|8.45|?>>
    <associate|rational ZQ is denumerable|<tuple|8.44|?>>
    <associate|rational alternative definition|<tuple|8.34|?>>
    <associate|rational densitiy|<tuple|8.38|?>>
    <associate|rational embedded integers|<tuple|8.32|?>>
    <associate|rational equivalence relation|<tuple|8.3|?>>
    <associate|rational field|<tuple|8.12|?>>
    <associate|rational group|<tuple|8.8|?>>
    <associate|rational n/m and n\<less\>m or m\<less\>n|<tuple|8.28|?>>
    <associate|rational n/m=n.k/m.k|<tuple|8.5|?>>
    <associate|rational natural numbers|<tuple|8.35|?>>
    <associate|rational non negative rationals|<tuple|8.17|?>>
    <associate|rational non negative rationals from a
    semi-group|<tuple|8.18|?>>
    <associate|rational numbers|<tuple|8.4|?>>
    <associate|rational order relation (1)|<tuple|8.19|?>>
    <associate|rational ordered field|<tuple|8.30|?>>
    <associate|rational product|<tuple|8.11|?>>
    <associate|rational product (1)|<tuple|8.10|?>>
    <associate|rational q\<less\>=0 and 0\<less\>=q then q=0|<tuple|8.22|?>>
    <associate|rational q\<less\>q+1 and q-1\<less\>q|<tuple|8.27|?>>
    <associate|rational q\<less\>r\<less\>=\<gtr\>0\<less\>r+(-q)|<tuple|8.21|?>>
    <associate|rational q=r\<less\>=\<gtr\>q.s=r.s|<tuple|8.14|?>>
    <associate|rational rational numbers are not conditional
    complete|<tuple|8.42|?>>
    <associate|rational square root of 2 does not exist|<tuple|8.41|?>>
    <associate|rational sub-ring|<tuple|8.33|?>>
    <associate|rational sum operator|<tuple|8.7|?>>
    <associate|rational sum operator (1)|<tuple|8.6|?>>
    <associate|rational totally ordered|<tuple|8.24|?>>
    <associate|rational x-y|<tuple|8.9|?>>
    <associate|rational {0}|<tuple|8.16|?>>
    <associate|real (x^n-1)\<gtr\>=n.(x-1)|<tuple|9.86|?>>
    <associate|real -(a.b)=(-a).b=(a.(-b)|<tuple|9.29|?>>
    <associate|real 0\<less\>1|<tuple|9.42|?>>
    <associate|real 0\<less\>=a,b and a+b=0 then a=0=b|<tuple|9.47|?>>
    <associate|real 0\<less\>x\<less\>1 then
    0\<less\>x^n\<less\>e|<tuple|9.89|?>>
    <associate|real 1.a=a for positive numbers|<tuple|9.21|?>>
    <associate|real Archimedean property|<tuple|9.65|?>>
    <associate|real Archimedean property consequence (1)|<tuple|9.66|?>>
    <associate|real Archimedean property consequence (2)|<tuple|9.67|?>>
    <associate|real Dedekind's cut|<tuple|9.1|?>>
    <associate|real NR|<tuple|9.58|?>>
    <associate|real NR properties|<tuple|9.60|?>>
    <associate|real QR|<tuple|9.6|?>>
    <associate|real QR bijection|<tuple|9.7|?>>
    <associate|real QR is denumerable|<tuple|9.8|?>>
    <associate|real QR is not conditional complete|<tuple|9.50|?>>
    <associate|real R+ R-|<tuple|9.44|?>>
    <associate|real RC ordered field|<tuple|10.14|?>>
    <associate|real RxR|<tuple|9.27|?>>
    <associate|real ZQ|<tuple|9.56|?>>
    <associate|real ZR properties|<tuple|9.57|?>>
    <associate|real a.(b+g) where b or g is negative|<tuple|9.30|?>>
    <associate|real a.b=b.a positive numbers|<tuple|9.22|?>>
    <associate|real a\<less\>2^n|<tuple|9.85|?>>
    <associate|real a\<less\>a+1 and a-1\<less\>a|<tuple|9.46|?>>
    <associate|real a^-1|<tuple|9.31|?>>
    <associate|real a_r.a_s=a_r.s|<tuple|9.35|?>>
    <associate|real associativity positive numbers|<tuple|9.23|?>>
    <associate|real conditional complete|<tuple|9.51|?>>
    <associate|real definition by recursion (1)|<tuple|9.75|?>>
    <associate|real definition by recursion (2)|<tuple|9.76|?>>
    <associate|real densitiy theorem|<tuple|9.68|?>>
    <associate|real distributivity|<tuple|9.24|?>>
    <associate|real division of real numbers in positive and negative
    numbers|<tuple|9.17|?>>
    <associate|real embedding of Q and order|<tuple|9.49|?>>
    <associate|real field|<tuple|9.32|?>>
    <associate|real field embedding Q|<tuple|9.37|?>>
    <associate|real gap theorem|<tuple|9.9|?>>
    <associate|real group|<tuple|9.15|?>>
    <associate|real inf or sup of -S|<tuple|9.53|?>>
    <associate|real inv|<tuple|9.25|?>>
    <associate|real inv(a) is inverse element|<tuple|9.26|?>>
    <associate|real inverse of rational cut|<tuple|9.34|?>>
    <associate|real irrational numbers|<tuple|9.52|?>>
    <associate|real lemma for sum operator|<tuple|9.13|?>>
    <associate|real mathematical induction|<tuple|9.70|?>>
    <associate|real multiplication operator|<tuple|9.28|?>>
    <associate|real n\<less\>2^n|<tuple|9.84|?>>
    <associate|real n\<less\>m and 0\<less\>x\<less\>1 then
    x^n\<less\>x^m|<tuple|9.88|?>>
    <associate|real natural numbers, integers and rational
    numbers|<tuple|9.61|?>>
    <associate|real negastive cut of rational cut|<tuple|9.11|?>>
    <associate|real negative cut|<tuple|9.10|?>>
    <associate|real notation for division|<tuple|9.33|?>>
    <associate|real order relation (1)|<tuple|9.40|?>>
    <associate|real order relation eauivalences|<tuple|9.41|?>>
    <associate|real ordered field|<tuple|9.45|?>>
    <associate|real positive negative numbers|<tuple|9.16|?>>
    <associate|real power|<tuple|9.77|?>>
    <associate|real power and inequality|<tuple|9.79|?>>
    <associate|real power of inverse|<tuple|9.82|?>>
    <associate|real power properties|<tuple|9.83|?>>
    <associate|real power properties (1)|<tuple|9.78|?>>
    <associate|real product is internal|<tuple|9.20|?>>
    <associate|real properties positive numbers|<tuple|9.38|?>>
    <associate|real property to determine membership of a cut|<tuple|9.3|?>>
    <associate|real q^(n+m)=q^n.q^m|<tuple|9.81|?>>
    <associate|real r\<less\>s=\<gtr\>a_r\<less\>a_s|<tuple|9.48|?>>
    <associate|real rational cut|<tuple|9.4|?>>
    <associate|real rational cut properties|<tuple|9.36|?>>
    <associate|real rational numbers specification|<tuple|9.62|?>>
    <associate|real real numbers|<tuple|9.2|?>>
    <associate|real recursion|<tuple|9.71|?>>
    <associate|real recursion iteration|<tuple|9.72|?>>
    <associate|real recursion step|<tuple|9.73|?>>
    <associate|real recursion step (2)|<tuple|9.74|?>>
    <associate|real square operator is a bijection|<tuple|9.90|?>>
    <associate|real square root|<tuple|9.91|?>>
    <associate|real square root is strictly increasing|<tuple|9.94|?>>
    <associate|real square root norm|<tuple|9.98|?>>
    <associate|real square root of 2 is irational|<tuple|9.93|?>>
    <associate|real square root of product|<tuple|9.97|?>>
    <associate|real strict order relation definition|<tuple|9.39|?>>
    <associate|real sum is a operator|<tuple|9.14|?>>
    <associate|real sup(S+T) and inf(S+T)|<tuple|9.54|?>>
    <associate|real sup(S+s) inf(T+t)|<tuple|9.55|?>>
    <associate|real totally ordered|<tuple|9.43|?>>
    <associate|real x\<less\>y=\<gtr\>x+1\<less\>=y|<tuple|9.64|?>>
    <associate|real x^n\<gtr\>n if x\<gtr\>1 (R)|<tuple|9.87|?>>
    <associate|reals the set of reals are non empty|<tuple|9.5|?>>
    <associate|sign function|<tuple|8.15|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|integers>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>>|<pageref|auto-6>>

      <tuple|<tuple|absolute value>|<pageref|auto-7>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\||x|\|>>>|<pageref|auto-8>>

      <tuple|<tuple|<with|mode|<quote|math>|m\|n>>|<pageref|auto-9>>

      <tuple|<tuple|quotient>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|<frac|m|n>>>|<pageref|auto-11>>

      <tuple|<tuple|event integers>|<pageref|auto-12>>

      <tuple|<tuple|odd integers>|<pageref|auto-13>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Q\>,+|)>>>|<pageref|auto-17>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>>|<pageref|auto-18>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-Z\><rsub|\<bbb-Q\>>>>|<pageref|auto-20>>

      <tuple|<tuple|Dedekind's cut>|<pageref|auto-25>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-R\>>>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-R\><rsup|+>>>|<pageref|auto-30>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-R\><rsup|->>>|<pageref|auto-31>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-Z\><rsub|\<bbb-R\>>>>|<pageref|auto-34>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-N\><rsub|0,\<bbb-R\>>>>|<pageref|auto-35>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-N\><rsub|\<bbb-R\>>>>|<pageref|auto-36>>

      <tuple|<tuple|<with|mode|<quote|math>|<sqrt|x>>>|<pageref|auto-41>>
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

      7.3<space|2spc>Denumerability of the Integers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>The
      Rational Numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      8.1<space|2spc>Definition and arithmetic
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>

      8.2<space|2spc>Order Relation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      8.3<space|2spc>Denumerability of the rationals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>The
      real numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      9.1<space|2spc>Definition and Arithmetic on
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>

      <with|par-left|<quote|1tab>|9.1.1<space|2spc>Definition of the real
      numbers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|9.1.2<space|2spc>Arithmetic in
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|2tab>|9.1.2.1<space|2spc>Addition in
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|2tab>|9.1.2.2<space|2spc>Multiplication
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      9.2<space|2spc>Order relation on <with|mode|<quote|math>|\<bbb-R\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>

      9.3<space|2spc>Embeddings in <with|mode|<quote|math>|\<bbb-R\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      9.4<space|2spc>Recursion and Induction in the set of real numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      <with|par-left|<quote|1tab>|9.4.1<space|2spc>Extending Mathematical
      induction and recursion <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|9.4.2<space|2spc>Power in
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      9.5<space|2spc>The square root <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>The
      complex numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42><vspace|0.5fn>

      10.1<space|2spc>Definition and arithmetics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>

      10.2<space|2spc>Embedding of <with|mode|<quote|math>|\<bbb-N\><rsub|0>,\<bbb-Z\>,\<bbb-Q\><with|mode|<quote|text>|
      and >\<bbb-R\>> in <with|mode|<quote|math>|\<bbb-C\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      <with|par-left|<quote|1tab>|10.2.1<space|2spc>Embeddings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|10.2.2<space|2spc>Order relation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|10.2.3<space|2spc>Recursion and
      mathematical induction in <with|mode|<quote|math>|\<bbb-C\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>
    </associate>
  </collection>
</auxiliary>
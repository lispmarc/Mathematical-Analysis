<TeXmacs|2.1.2>

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

      <item>Additional we have also that <math|<around*|(|-1|)>\<cdot\><around*|(|-1|)>=1>
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

      <item>As <math|1=\<sim\><around*|[|<around*|(|1,0|)>|]>> we have by
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
    and <math|2\<neq\>0> we have by [corollary: <reference|integers condition
    for 0>] that <math|1+1\<neq\>0>, using [theorem: <reference|integers
    integral domain>] on the above proves then that <math|z=0>.
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
      <reference|integers (-1).n>]>>>|<cell|<around*|(|-1|)>\<cdot\><around*|(|n\<cdot\>m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|<around*|(|n\<cdot\>m|)>\<cdot\><around*|(|-1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|n\<cdot\><around*|(|m\<cdot\><around*|(|-1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|n\<cdot\><around*|(|<around*|(|-1|)>\<cdot\>m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
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
          <math|<around*|(|-1|)><rsup|n+1>=<around*|(|-1|)>\<cdot\><around*|(|-1|)><rsup|n>=<around*|(|-1|)>\<cdot\><around*|(|-1|)>\<equallim\><rsub|<text|[theorem:
          <reference|integers integral domain>]>>1> so that <math|n+1\<in\>S>
        </description>
      </description>

      <item><math|<around*|(|-1|)><rsup|2\<cdot\>n>=<around*|(|-1|)><rsup|<around*|(|1+1|)>\<cdot\>n>=<around*|(|-1|)><rsup|n+n>\<equallim\><rsub|<text|[theorem:
      <reference|integers z^n++m=z^n.z^m>]>><around*|(|-1|)><rsup|n>\<cdot\><around*|(|-1|)><rsup|n>\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>] and (3)>><rsup|>1>

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
      is a\ 

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
        1=\<sim\><around*|[|<around*|(|1,0|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>
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
        Secondly <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|0|)>=\<sim\><around*|[|<around*|(|0,0|)>|]>=0\<in\>\<bbb-Z\><rsup|+><rsub|0>>.

        <item>First

        <\eqnarray*>
          <tformat|<table|<row|<cell|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>\<cdot\>i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n,0|)>|]>\<cdot\>\<sim\><around*|[|<around*|(|m,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>m+0\<cdot\>m,0\<cdot\>n+n\<cdot\>0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sim\><around*|[|<around*|(|n\<cdot\>m,0|)>|]>>>|<row|<cell|>|<cell|=>|<cell|i<rsub|\<bbb-N\><rsub|0>><around*|(|n\<cdot\>m|)>>>>>
        </eqnarray*>

        Second <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|1|)>=\<sim\><around*|[|<around*|(|1,0|)>|]>=1\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
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

    \;
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
        by the above that <math|-<around*|(|-x|)>\<leqslant\>-<around*|(|-y|)>\<Rightarrowlim\><rsub|<text|[theorem:
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

  <\theorem>
    <label|integers properties (2)>If <math|n,m,k\<in\>\<bbb-Z\>> then\ 

    <\enumerate>
      <item><math|n\<leqslant\>m\<Leftrightarrow\>n+k\<leqslant\>m+k>

      <item><math|n\<less\>m\<Leftrightarrow\>n+k\<less\>m+k>

      <item><math|n\<leqslant\>m\<Leftrightarrow\>0\<leqslant\>m+<around*|(|-n|)>>

      <item><math|n\<less\>m\<Leftrightarrow\>0\<less\>m+<around*|(|-n|)>>

      <item><math|n\<less\>m\<Leftrightarrow\>\<exists\>k\<in\>\<bbb-Z\><rsup|+><rsub|0>\\<around*|{|0|}>>
      such that <math|m=k+n>

      <item><math|n\<leqslant\>m\<Leftrightarrow\>\<exists\>k\<in\>\<bbb-Z\><rsup|+><rsub|0>>
      such that <math|m=k+n>
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

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Assume that <math|n\<less\>m>. Then by
        (2) we have that <math|0=n+<around*|(|-n|)>\<less\>m+<around*|(|-n|)>>,
        so if we take <math|k=m+<around*|(|-n|)>> we have that
        <math|0\<less\>k> hence <math|k\<in\>\<bbb-Z\><rsup|+><rsub|0>\\<around*|{|0|}>>.
        Further <math|n+k=<around*|(|m+<around*|(|-n|)>|)>+n=m+<around*|(|<around*|(|-n|)>+n|)>=m+0=m>.
        So we found a <math|k\<in\>\<bbb-Z\><rsup|+><rsub|0>\\<around*|{|0|}>>
        such that <math|m=n+k>.

        <item*|<math|\<Leftarrow\>>>If <math|k\<in\>\<bbb-Z\><rsub|0><rsup|+>\\<around*|{|0|}>>
        such that <math|m=n+k> then as <math|0\<less\>k> we have by (2)

        <\equation*>
          n=0+n\<less\>k+n=n+k=m
        </equation*>

        so that\ 

        <\equation*>
          n\<less\>m
        </equation*>
      </description>

      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>Assume that <math|n\<leqslant\>m>. Then
        by (1) we have that <math|0=n+<around*|(|-n|)>\<leqslant\>m+<around*|(|-n|)>>,
        so if we take <math|k=m+<around*|(|-n|)>> we have that
        <math|0\<leqslant\>k> hence <math|k\<in\>\<bbb-Z\><rsup|+><rsub|0>>.
        Further <math|n+k=<around*|(|m+<around*|(|-n|)>|)>+n=m+<around*|(|<around*|(|-n|)>+n|)>=m+0=m>.
        So we found a <math|k\<in\>\<bbb-Z\><rsup|+><rsub|0>> such that
        <math|m=n+k>.

        <item*|<math|\<Leftarrow\>>>If <math|k\<in\>\<bbb-Z\><rsub|0><rsup|+>>
        such that <math|m=n+k> then as <math|0\<leqslant\>k> we have by (1)

        <\equation*>
          n=0+n\<leqslant\>k+n=n+k=m
        </equation*>

        so that\ 

        <\equation*>
          n\<leqslant\>m
        </equation*>
      </description>
    </enumerate>
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
    <label|integers order and multiplication>If <math|n,m,k\<in\>\<bbb-Z\>>
    then we have:

    <\enumerate>
      <item>If <math|0\<less\>k> then \ <math|n\<less\>m\<Leftrightarrow\>n\<cdot\>k\<less\>m\<cdot\>k>

      <item>If <math|k\<less\>0> and <math|n\<less\>m\<Leftrightarrow\>m\<cdot\>k\<less\>n\<cdot\>k>

      <item>If <math|0\<leqslant\>k> and <math|n\<leqslant\>m> then
      <math|n\<cdot\>k\<leqslant\>m\<cdot\>k>

      <item>If <math|k\<leqslant\>0> and <math|n\<leqslant\>m> then
      <math|m\<cdot\>k\<leqslant\>n\<cdot\>k>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>From <math|n\<less\>m> we have by
        [theorem: <reference|integers properties (2)>] that
        <math|0\<less\>m+<around*|(|-n|)>>, so using the previous theorem
        [theorem: <reference|integers 0\<less\>n and 0\<less\>m then
        0\<less\>n.m>] it follows that

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|\<less\>>|<cell|<around*|(|m+<around*|(|-n|)>|)>\<cdot\>k>>|<row|<cell|>|<cell|=>|<cell|m\<cdot\>k+<around*|(|-n|)>\<cdot\>k>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|integers -(n,m)=(-n),(-m)>]>>>|<cell|m\<cdot\>k+<around*|(|-<around*|(|n\<cdot\>k|)>|)>>>>>
        </eqnarray*>

        which by [theorem: <reference|integers properties (2)>] proves that
        <math|n\<cdot\>k\<less\>m\<cdot\>k>. Hence we have proved that

        <\equation>
          <label|eq 7.9.022>n\<less\>m\<Rightarrow\>n\<cdot\>k\<less\>m\<cdot\>k
        </equation>

        <item*|<math|\<Leftarrow\>>>Let <math|n\<cdot\>k\<less\>m\<cdot\>k>,
        if <math|n=m> then we would reach the contradiction that
        <math|n\<cdot\>k=m\<cdot\>k>, so we have either <math|n\<less\>m> or
        <math|m\<less\>n>. If <math|m\<less\>n> then from [eq: <reference|eq
        7.9.022>] we have <math|m\<cdot\>k\<less\>n\<cdot\>k> leaving to the
        contradiction <math|n\<cdot\>k\<less\>n\<cdot\>k>, so we must have
        that <math|n\<less\>m>. Hence

        <\equation*>
          n\<cdot\>k\<less\>m\<cdot\>k\<Rightarrow\>n\<less\>m
        </equation*>
      </description>

      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|n\<less\>m>. As
        <math|k\<less\>0> we have by [theorem: <reference|integers
        x\<less\>=y\<less\>=\<gtr\>-y\<less\>=x>]
        <math|-0\<less\><around*|(|-k|)>\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|group group inverse of inverse>]>>0\<less\>-k>. So we have
        by (1) that\ 

        <\equation*>
          n\<cdot\><around*|(|-k|)>\<less\>m\<cdot\><around*|(|-k|)>
        </equation*>

        Using [theorem: <reference|integers -(n,m)=(-n),(-m)>] we have that
        <math|-<around*|(|n\<cdot\>k|)>=n\<cdot\><around*|(|-k|)>> and
        <math|-<around*|(|m\<cdot\>k|)>=m\<cdot\><around*|(|-k|)>> so that by
        the above we have <math|-<around*|(|n\<cdot\>k|)>\<less\>-<around*|(|m\<cdot\>k|)>>.
        Applying then [theorem: <reference|integers
        x\<less\>=y\<less\>=\<gtr\>-y\<less\>=x>] we have
        <math|m\<cdot\>k\<less\>n\<cdot\>k>. So

        <\equation*>
          n\<less\>m\<Rightarrow\>m\<cdot\>k\<less\>n\<cdot\>k
        </equation*>

        <item*|<math|\<Leftarrow\>>>Let <math|m\<cdot\>k\<less\>n\<cdot\>k>.
        Using [theorem: <reference|integers
        x\<less\>=y\<less\>=\<gtr\>-y\<less\>=x>] we have that
        <math|-<around*|(|n\<cdot\>k|)>\<less\>-<around*|(|m\<cdot\>k|)>>
        giving by [theorem: <reference|integers -(n,m)=(-n),(-m)>] that

        <\equation>
          <label|eq 7.10.022>n\<cdot\><around*|(|-k|)>\<less\>m\<cdot\><around*|(|-k|)>
        </equation>

        As <math|k\<less\>0> we have by [theorem: <reference|integers
        x\<less\>=y\<less\>=\<gtr\>-y\<less\>=x>]
        <math|-0\<less\><around*|(|-k|)>\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|group group inverse of inverse>]>>0\<less\>-k>, so
        applying (1) on [eq: <reference|eq 7.10.022>] gives
        <math|n\<less\>m>, hence we have proved that\ 

        <\equation*>
          m\<cdot\>k\<less\>n\<cdot\>k\<Rightarrow\>n\<cdot\>m
        </equation*>
      </description>

      <item>For <math|k> we have the following possibilities:\ 

      <\description>
        <item*|<math|k=0>>Then <math|n\<cdot\>k=n\<cdot\>0=0=m\<cdot\>0=m\<cdot\>k>
        so that <math|n\<cdot\>k\<leqslant\>m\<cdot\>k.>

        <item*|<math|0\<less\>k>>For <math|n\<leqslant\>m> we have either:

        <\description>
          <item*|<math|n=m>>Then <math|n\<cdot\>k=m\<cdot\>k> so that
          <math|n\<cdot\>k\<leqslant\>m\<cdot\>k>

          <item*|<math|n\<less\>m>>Then using (1)
          <math|n\<cdot\>k\<less\>m\<cdot\>k> so that
          <math|n\<cdot\>k\<leqslant\>m\<cdot\>k>
        </description>
      </description>

      <item>For <math|k> we have the following possibilities:\ 

      <\description>
        <item*|<math|k=0>>Then <math|n\<cdot\>k=n\<cdot\>0=0=m\<cdot\>0=m\<cdot\>k>
        so that <math|m\<cdot\>k\<leqslant\>n\<cdot\>k.>

        <item*|<math|k\<less\>0>>For <math|n\<leqslant\>m> we have either:

        <\description>
          <item*|<math|n=m>>Then <math|n\<cdot\>k=m\<cdot\>k> so that
          <math|m\<cdot\>k\<leqslant\>n\<cdot\>k>.

          <item*|<math|n\<less\>m>>Then using (2) we have that
          <math|m\<cdot\>k\<less\>n\<cdot\>k>
        </description>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|integers 0\<less\>=n.n>If <math|x\<in\>\<bbb-Z\>> then
    <math|0\<leqslant\>x\<cdot\>x>
  </corollary>

  <\proof>
    As <math|x\<in\>\<bbb-Z\>\<equallim\><rsub|<text|[theorem:
    <reference|integers positive and negative>]>>\<bbb-Z\><rsup|+><rsub|0><big|cup>\<bbb-Z\><rsup|-><rsub|0>>
    we have the following cases to consider:

    <\description>
      <item*|<math|x\<in\>\<bbb-Z\><rsup|+><rsub|0>>>Then
      <math|0\<leqslant\>x> so that by [corollary: <reference|integers order
      and multiplication>] <math|0=0\<cdot\>x\<leqslant\>x\<cdot\>x>.

      <item*|<math|x\<in\>\<bbb-Z\><rsup|-><rsub|0>>>Then
      <math|-x\<in\>\<bbb-Z\><rsup|+><rsub|0>> so that

      <\equation*>
        0\<leqslant\><around*|(|-x|)>\<cdot\><around*|(|-x|)>
      </equation*>

      Now <math|<around*|(|-x|)>\<cdot\><around*|(|-x|)>=<around*|(|<around*|(|-1|)><around*|\<nobracket\>|\<cdot\>x|\<nobracket\>>|)>\<cdot\><around*|(|<around*|(|-1|)>\<cdot\>x|)>\<equallim\><rsub|<text|associativity>><around*|(|<around*|(|-1|)>\<cdot\><around*|(|-1|)>|)>\<cdot\><around*|(|x\<cdot\>x|)>\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>> <math|x\<cdot\>x> so that
      <math|0\<leqslant\>x\<cdot\>x>.
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
    Using [theorem: <reference|integers properties (1)> (3)] it follows that

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0><text|
      is a bijection>
    </equation*>

    Further we have:

    <\eqnarray*>
      <tformat|<table|<row|<cell|i<rsub|\<bbb-N\><rsub|0>><around*|(|x|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>><around*|(|y|)>>|<cell|\<Leftrightarrow\>>|<cell|i<rsub|\<bbb-N\><rsub|0>><around*|(|y|)>+<around*|(|-i<rsub|\<bbb-N\><rsub|0>><around*|(|x|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,0|)>|]>+<around*|(|-<around*|(|\<sim\><around*|[|<around*|(|x,0|)>|]>|)>|)>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,0|)>|]>+\<sim\><around*|[|<around*|(|0,x|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<sim\><around*|[|<around*|(|y,x|)>|]>\<in\>\<bbb-Z\><rsup|+><rsub|0>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
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
      <math|i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
      defined by <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=\<sim\><around*|[|<around*|(|n,0|)>|]>>
      is a group isomorphism between <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>
      and <math|<around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>,+|\<rangle\>>>.
      Take <math|n=<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>>
      and <math|m=<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|y|)>>
      then <math|x=i<rsub|\<bbb-N\><rsub|0>>*<around*|(|n|)>> and
      <math|n\<neq\>0> [otherwise <math|x=i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>><around*|(|0|)>=0>].
      Using the Archimedean property of the natural numbers [see theorem:
      <reference|natural numbers Archimedean property>] there exists a
      <math|l\<in\>\<bbb-N\><rsub|0>> such that <math|m\<less\>l\<cdot\>n>.
      So by [theorem: <reference|integers order preserving bijection>] we
      have that

      <\equation>
        <label|eq 7.11.022>i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>\<less\>i<rsub|\<bbb-N\><rsub|0>><around*|(|l\<cdot\>n|)>\<equallim\><rsub|<text|[theorem:
        <reference|integers properties (1)>]>>i<rsub|\<bbb-N\><rsub|0>><around*|(|l|)>\<cdot\>i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>
      </equation>

      Take <math|k=i<rsub|\<bbb-N\><rsub|0>><around*|(|l|)>\<in\>\<bbb-Z\><rsup|+><rsub|9>>
      then as <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>|)>=x>
      and <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>=i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|y|)>|)>=y>
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
    that\ 

    <\equation*>
      i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0><text|
      is a order isomorphism between <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>
      <text|and ><around*|\<langle\>|\<bbb-Z\><rsup|+><rsub|0>|\<rangle\>>
    </equation*>

    Let <math|A\<subseteq\>\<bbb-Z\><rsup|+><rsub|0>> be such that
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
      <label|eq 7.12.022.1>M\<in\>A
    </equation>

    Further if <math|x\<in\>A> then as <math|i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>|)>=x\<in\>A>
    we have that <math|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>\<in\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|A|)>>
    so that <math|m\<leqslant\><around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>*>,
    hence by [theorem: <reference|integers order preserving bijection>] we
    have that <math|M=i<rsub|\<bbb-N\><rsub|0>><around*|(|m|)>\<leqslant\>i<rsub|\<bbb-N\><rsub|0>><around*|(|<around*|(|i<rsub|\<bbb-N\><rsub|0>>|)><rsup|-1><around*|(|x|)>|)>=x>.
    Proving that\ 

    <\equation>
      <label|eq 7.13.022.1>\<forall\>x\<in\>A<text| we have
      <math|M\<leqslant\>x>>
    </equation>

    From [eq: <reference|eq 7.12.022.1>] and [eq: <reference|eq 7.13.022.1>]
    it follows that <math|A> has a least element proving that
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
      [theorem: <reference|integers order and multiplication>]
      <math|0=0\<cdot\>y\<leqslant\>x\<cdot\>y>, hence
      <math|x\<cdot\>y=<around*|\||x\<cdot\>y|\|>>. So we have that
      <math|<around*|\||x\<cdot\>y|\|>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>.\ 

      <item*|<math|0\<leqslant\>x\<wedge\>y\<less\>0>>Then
      <math|x=<around*|\||x|\|>> and <math|-y=<around*|\||y|\|>>, further by
      [theorem: <reference|integers order and multiplication>]
      <math|x\<cdot\>y\<leqslant\>0\<cdot\>y=0>, hence
      <math|<around*|\||x\<cdot\>y|\|>=-<around*|(|x\<cdot\>y|)>>. So

      <\equation*>
        <around*|\||x|\|>\<cdot\><around*|\||y|\|>=x\<cdot\><around*|(|-y|)>\<equallim\><rsub|<text|[theorem:
        <reference|integers -(n,m)=(-n),(-m)>]>>-<around*|(|x\<cdot\>y|)>=<around*|\||x\<cdot\>y|\|>.
      </equation*>

      <item*|<math|x\<less\>0\<wedge\>0\<leqslant\>y>>Then
      <math|-x=<around*|\||x|\|>> and <math|y=<around*|\||y|\|>>, further by
      [theorem: <reference|integers order and multiplication>]
      <math|x\<cdot\>y\<leqslant\>0\<cdot\>y=0>, hence
      <math|<around*|\||x\<cdot\>y|\|>=-<around*|(|x\<cdot\>y|)>>. So\ 

      <\equation*>
        <around*|\||x|\|>\<cdot\><around*|\||y|\|>=<around*|(|-x|)>\<cdot\>y\<equallim\><rsub|<text|[theorem:
        <reference|integers -(n,m)=(-n),(-m)>]>>-<around*|(|x,y|)>=<around*|\||x\<cdot\>y|\|>
      </equation*>

      <item*|<math|x\<less\>0\<wedge\>y\<less\>0>>Then
      <math|-x=<around*|\||x|\|>>, <math|-y=<around*|\||y|\|>>, further by
      [theorem: <reference|integers order and multiplication>]
      <math|0=0\<cdot\>y\<less\>x\<cdot\>y>, hence
      <math|<around*|\||x\<cdot\>y|\|>=x\<cdot\>y>. So\ 

      <\equation*>
        <around*|\||x|\|>\<cdot\><around*|\||y|\|>=<around*|(|-x|)>\<cdot\><around*|(|-y|)>\<equallim\><rsub|<text|[theorem:
        <reference|integers -(n,m)=(-n),(-m)>]>>-<around*|(|-<around*|(|x\<cdot\>y|)>|)>\<equallim\><rsub|<text|[theorem:
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
    <math|-m\<less\>n\<cdot\>k>, using [theorem: <reference|integers
    properties (2)>] it follows that <math|0\<less\>n\<cdot\>k+<around*|(|-<around*|(|-m|)>|)>=n\<cdot\>k+m=m+n\<cdot\>k>
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

    Assume that <math|n\<less\>r<rprime|'>> then by [theorem:
    <reference|integers properties (2)>] <math|\<exists\>k\<subset\>\<bbb-Z\><rsup|+><rsub|0>\\<around*|{|0|}>>
    such that <math|r<rprime|'>=n+k>. Hence <math|m+n\<cdot\>q<rprime|'>=n+k>
    so that <math|0\<less\>k=m+n\<cdot\>q<rprime|'>+<around*|(|-n|)>=m+<around*|(|q<rprime|'>-1|)>\<cdot\>n>
    proving that <math|k\<in\>A<rsub|n,m>>. Now
    <math|0\<less\>n\<Rightarrowlim\><rsub|<text|[theorem:
    <reference|integers properties (2)>]>>k\<less\>n+k=r<rprime|'>\<Rightarrow\>k\<less\>r<rprime|'>>,
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

    Then TODO

    <\eqnarray*>
      <tformat|<table|<row|<cell|n\<cdot\>q<rsub|1>+r<rsub|1>=n\<cdot\>q<rsub|2>+r<rsub|2>>|<cell|\<Rightarrowlim\>>|<cell|n\<cdot\>q<rsub|1>+<around*|(|-<around*|(|n\<cdot\>q<rsub|2>|)>|)>=r<rsub|2>+<around*|(|-r<rsub|1>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n\<cdot\><around*|(|q<rsub|1>+<around*|(|-q<rsub|2>|)>|)>=r<rsub|2>+<around*|(|-r<rsub|1>|)><eq-number><label|eq
      7.16.022>>>|<row|<cell|n\<cdot\>q<rsub|1>+r<rsub|1>=n\<cdot\>q<rsub|2>+r<rsub|2>>|<cell|\<Rightarrow\>>|<cell|n\<cdot\>q<rsub|2>+<around*|(|-<around*|(|n\<cdot\>q<rsub|1>|)>|)>=r<rsub|1>+<around*|(|-r<rsub|2>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n\<cdot\><around*|(|q<rsub|2>+<around*|(|-q<rsub|1>|)>|)>=r<rsub|1>+<around*|(|-r<rsub|2>|)><eq-number><label|eq
      7.17.022>>>>>
    </eqnarray*>

    Assume now that <math|r<rsub|1>\<neq\>r<rsub|2>> then we have either:

    <\description>
      <item*|<math|r<rsub|1>\<less\>r<rsub|2>>>Then by [theorem:
      <reference|integers properties (2)>]
      <math|0\<less\>r<rsub|2>+<around*|(|-r<rsub|1>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 7.16.022>]>>n\<cdot\><around*|(|q<rsub|1>+<around*|(|-q<rsub|2>|)>|)>>,
      hence <math|0\<cdot\>n\<less\><around*|(|q<rsub|1>+<around*|(|-q<rsub|2>|)>|)>\<cdot\>n>
      as <math|0\<less\>n> we must have by [theorem: <reference|integers
      order and multiplication>] that <math|0\<less\><around*|\<nobracket\>|q<rsub|1>+<around*|(|-q<rsub|2>|\<nobracket\>>|)>>.
      Using [theorem: <reference|integers positive condition>] we have

      <\equation>
        <label|eq 7.18.022>1\<leqslant\>q<rsub|1>+<around*|(|-q<rsub|2>|)>
      </equation>

      As <math|r<rsub|2>\<less\>n> we have by [theorem: <reference|integers
      properties (2)>] that <math|r<rsub|2>+<around*|(|-r<rsub|1>|)>\<less\>n+<around*|(|-r<rsub|1>|)>>,
      further as <math|<around*|(|-r<rsub|1>|)>\<leqslant\>0<text| we have by
      [theorem: <reference|integers properties (2)>] that
      >n+<around*|(|-r<rsub|1>|)>\<leqslant\>n> so that
      <math|r<rsub|2>+<around*|(|-r<rsub|1>|)>\<less\>n>. Using this with
      [eq: <reference|eq 7.16.022>] gives
      <math|n\<cdot\><around*|(|q<rsub|1>+<around*|(|-q<rsub|2>|)>|)>\<less\>n=1\<cdot\>n>,
      hence using [theorem: <reference|integers order and multiplication>] we
      have that <math|q<rsub|2>+<around*|(|-q<rsub|1>|)>\<less\>1>,
      contradicting [eq: <reference|eq 7.18.022>]. So this case never occurs.

      <item*|<math|r<rsub|2>\<less\>r<rsub|1>>>Then by [theorem:
      <reference|integers properties (2)>]
      <math|0\<less\>r<rsub|1>+<around*|(|-r<rsub|2>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 7.17.022>]>>n\<cdot\><around*|(|q<rsub|2>+<around*|(|-q<rsub|1>|)>|)>>,
      hence <math|0\<cdot\>n\<less\><around*|(|q<rsub|2>+<around*|(|-q<rsub|1>|)>|)>\<cdot\>n>
      as <math|0\<less\>n> we must have by [theorem: <reference|integers
      order and multiplication>] that <math|0\<less\><around*|\<nobracket\>|q<rsub|2>+<around*|(|-q<rsub|1>|\<nobracket\>>|)>>.
      Using [theorem: <reference|integers positive condition>] we have

      <\equation>
        <label|eq 7.19.022>1\<leqslant\>q<rsub|2>+<around*|(|-q<rsub|1>|)>
      </equation>

      As <math|r<rsub|1>\<less\>n> we have by [theorem: <reference|integers
      properties (2)>] that <math|r<rsub|1>+<around*|(|-r<rsub|2>|)>\<less\>n+<around*|(|-r<rsub|2>|)>>,
      further as <math|<around*|(|-r<rsub|2>|)>\<leqslant\>0<text| we have by
      [theorem: <reference|integers properties (2)>] that
      >n+<around*|(|-r<rsub|2>|)>\<leqslant\>n> so that
      <math|r<rsub|1>+<around*|(|-r<rsub|2>|)>\<less\>n>. Using this with
      [eq: <reference|eq 7.17.022>] gives
      <math|n\<cdot\><around*|(|q<rsub|2>+<around*|(|-q<rsub|1>|)>|)>\<less\>n=1\<cdot\>n>,
      hence using [theorem: <reference|integers order and multiplication>] we
      have that <math|q<rsub|1>+<around*|(|-q<rsub|2>|)>\<less\>1>,
      contradicting [eq: <reference|eq 7.19.022>]. So this case never occurs.
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
    divisor of <math|m> then <math|-n> is a divisor of <math|m>.
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
      <math|q\<leqslant\>0\<Rightarrowlim\><rsub|q\<neq\>0>q\<less\>0\<Rightarrowlim\><rsub|0\<less\>n\<wedge\><text|[theorem:
      <reference|integers order and multiplication>]>>q\<cdot\>n\<less\>0\<cdot\>n=0>
      so that <math|m=q\<cdot\>n\<less\>0> contradicting <math|0\<less\>m>,
      hence we must have that <math|0\<less\>q>. Using [theorem:
      <reference|integers positive condition>] we have <math|1\<leqslant\>q>
      so that by [theorem: <reference|integers order and multiplication>]
      <math|n=1\<cdot\>n\<leqslant\>q\<cdot\>n=m=<around*|\||m|\|>>, hence
      <math|n\<leqslant\><around*|\||m|\|>>.

      <item*|<math|m\<less\>0\<wedge\>n\<leqslant\>0>>Then
      <math|0\<less\>-m=<around*|\||m|\|>> so that
      <math|n\<leqslant\>0\<less\><around*|\||m|\|>> giving
      <math|n\<leqslant\><around*|\||m|\|>>.

      <item*|<math|m\<less\>0\<wedge\>0\<less\>n>>If
      <math|0\<leqslant\>q\<Rightarrowlim\><rsub|q\<neq\>0>0\<less\>q\<Rightarrowlim\><rsub|0\<less\>n\<wedge\><text|[theorem:
      <reference|integers order and multiplication>]>>0=0\<cdot\>n\<less\>q\<cdot\>n=m>
      contradicting <math|m\<less\>0>, hence <math|q\<less\>0>., so that
      <math|0\<less\>-q>. Using [theorem: <reference|integers positive
      condition>] we have then

      <\equation*>
        1\<leqslant\>-q\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|integers order and multiplication>]>>n=1\<cdot\>n\<leqslant\><around*|(|-q|)>\<cdot\>n=-<around*|(|q\<cdot\>n|)>=<around*|\||m|\|>
      </equation*>

      proving that <math|n\<leqslant\><around*|\||m|\|>.>
    </description>

    So in all cases we have\ 

    <\equation*>
      n\<leqslant\><around*|\||m|\|>
    </equation*>
  </proof>

  <\theorem>
    Let <math|n,m\<in\>\<bbb-Z\>> with <math|n\<neq\>0> then
    <math|max<around*|(|<around*|{|d\<in\>\<bbb-Z\><rsup|+><rsub|0>\|d<text|
    is a common divisor of >n<text| and >m|}>|)>> exist.
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
      <text|is a common divisor if >n<text| and >m|}>|\<nobracket\>>
    </equation*>

    <math|gcd<around*|(|n,m|)>> is called the <with|font-series|bold|greatest
    common divisor >of <math|n> and <math|m>.
  </definition>

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
    <math|\<bbb-Z\><rsup|+><rsub|0>>, <math|\<bbb-Z\><rsup|+><rsub|0>> and
    <math|\<bbb-Z\>> are all denumerable
  </theorem>

  <\proof>
    Using [theorem: <reference|integers properties (1)> (3)] there exists a
    bijection <math|i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsup|+><rsub|0>>
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

  TODO<chapter|The Rational Numbers>

  n this chapter we will introduce the set of rational numbers and embed the
  integer numbers in it. Just as with <math|\<bbb-Z\>> and
  <math|\<bbb-N\><rsub|0>> we will introduce a order relation, a sum
  operator, a product operator, neutral elements for addition and
  multiplication as well as inverse elements. If we would use different
  symbols to note these we introduce a lot of excessive notation clutter. So
  we use the same symbols for the natural numbers, integers and rational
  numbers, and use context to determine the meaning of the symbols involved.
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
  <math|m>.\ 

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
  will be interpreted as the quotient <math|<frac|n|m>> [the integer such
  that <math|<frac|n|m>\<cdot\>m=n>] if <math|m> divides <math|n> or a formal
  quotient if <math|m> does not divide <math|n>. We have to be carefull
  however for if <math|m=0> then the quotient only exist if <math|n=0> and
  then every integer is a quotient. So we should only consider pairs
  <math|<around*|(|n,m|)>> where <math|n\<in\>\<bbb-Z\>> and
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
  </definition>

  <\theorem>
    <label|rational n/m=n.k/m.k>If <math|k\<in\>\<bbb-Z\><rsub|0>> and
    <math|n,m\<in\>\<bbb-Z\>> then\ 

    <\enumerate>
      <item><math|<frac|n|m>=<frac|n\<cdot\>k|m\<cdot\>k>>

      <item><math|<frac|0|n>=<frac|0|1>>
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
    <math|s<rprime|'>\<neq\>0> then <math|m\<cdot\>s\<neq\>0,m<rprime|'>\<cdot\>s<rprime|'>=0>
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
      <reference|integers integral domain>]>>>|<cell|<around*|(|n<rprime|'>\<cdot\>s|)>\<cdot\><around*|(|m\<cdot\>s|)>+<around*|(|r<rprime|'>\<cdot\>m<rprime|'>|)>\<cdot\><around*|(|m\<cdot\>s|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n<rprime|'>\<cdot\>s+r<rprime|'>\<cdot\>m<rprime|'>|)>\<cdot\><around*|(|m\<cdot\>s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|integers integral domain>]>>>|<cell|<around*|(|m\<cdot\>s|)>\<cdot\><around*|(|n<rprime|'>\<cdot\>s+r<rprime|'>\<cdot\>m<rprime|'>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <frac|n\<cdot\>s+r\<cdot\>m|m\<cdot\>s>=<frac|n<rprime|'>\<cdot\>s<rprime|'>+r<rprime|'>\<cdot\>m<rprime|'>|m<rprime|'>\<cdot\>s<rprime|'>>
    </equation*>
  </proof>

  The above theorem ensures that the following is well-defined.

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
    <math|0=<frac|0|1>> and for <math|<frac|n|m>\<in\>\<bbb-Q\>> the inverse
    element <math|<frac|-n|m>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|associativity> Let <math|<frac|a|b>,<frac|c|d>,<frac|e|f>\<in\>\<bbb-Q\>>
      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a|b>+<around*|(|<frac|c|d>+<frac|e|f>|)>>|<cell|=>|<cell|<frac|a|b>+<frac|c\<cdot\>f+d\<cdot\>e|d\<cdot\>f>>>|<row|<cell|>|<cell|=>|<cell|<frac|a\<cdot\><around*|(|d\<cdot\>f|)>+b\<cdot\><around*|(|c\<cdot\>f+d\<cdot\>e|)>|b\<cdot\><around*|(|d\<cdot\>f|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|<around*|(|a\<cdot\>d|)>\<cdot\>f+<around*|(|c\<cdot\>b|)>\<cdot\>f+<around*|(|b\<cdot\>d|)>\<cdot\>e|<around*|(|b\<cdot\>d|)>\<cdot\>f>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|<around|(|a\<cdot\>d+c\<cdot\>b|)>\<cdot\>f+<around*|(|b\<cdot\>d|)>\<cdot\>e|<around*|(|b\<cdot\>d|)>\<cdot\>f>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|a|b>+<frac|c|d>|)>+<frac|e|f>>>>>
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
        <reference|integers integral domain>] and [theorem:
        <reference|integers absorbing element>]>>>|<cell|<frac|a|b>>>>>
      </eqnarray*>

      <item*|inverse element> Let <math|<frac|a|b>\<in\>\<bbb-Q\>> then we
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a|b>+<frac|-a|b>>|<cell|=>|<cell|<frac|-a|b>+<frac|a|b>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|-a|)>\<cdot\>b+b\<cdot\>a|b\<cdot\>b>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|b\<cdot\><around*|(|<around*|(|-a|)>+a|)>|b\<cdot\>b>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|integers integral domain>]>>>|<cell|<frac|0|b\<cdot\>b>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|rational n/m=n.k/m.k>]>>>|<cell|<frac|0|1>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>
    </description>
  </proof>

  <\definition>
    <label|rational x-y>If <math|x,y\<in\>\<bbb-Q\>> then
    <math|x-y=x+<around*|(|-y|)>>.
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
    <math|<frac|r|s>=<frac|r<rprime|'>|s<rprime|'>>> we have that\ 

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
        <math|<frac|1|1>\<cdot\>x=1=x\<cdot\><frac|1|1>> so
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
        <item*|distributivity>

        <item*|commutativity>

        <item*|neutral elemnt>

        <item*|associativity>

        <item*|inverse element>
      </description>
    </enumerate>
  </proof>

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
    <associate|auto-10|<tuple|quotient|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|<frac|m|n>>|?>>
    <associate|auto-12|<tuple|event integers|?>>
    <associate|auto-13|<tuple|odd integers|?>>
    <associate|auto-14|<tuple|7.3|?>>
    <associate|auto-15|<tuple|8|?>>
    <associate|auto-16|<tuple|8.1|?>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Q\>,+|)>>|?>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>|?>>
    <associate|auto-2|<tuple|7.1|?>>
    <associate|auto-3|<tuple|integers|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,+|\<rangle\>>>|?>>
    <associate|auto-5|<tuple|7.2|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|\<bbb-Z\>,\<leqslant\>|\<rangle\>>>|?>>
    <associate|auto-7|<tuple|absolute value|?>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|<around*|\||x|\|>>|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|m\|n>|?>>
    <associate|eq 7.1.022|<tuple|7.1|?>>
    <associate|eq 7.10.022|<tuple|7.10|?>>
    <associate|eq 7.11.022|<tuple|7.11|?>>
    <associate|eq 7.12.022|<tuple|7.14|?>>
    <associate|eq 7.12.022.1|<tuple|7.12|?>>
    <associate|eq 7.13.022|<tuple|7.15|?>>
    <associate|eq 7.13.022.1|<tuple|7.13|?>>
    <associate|eq 7.16.022|<tuple|7.16|?>>
    <associate|eq 7.17.022|<tuple|7.17|?>>
    <associate|eq 7.18.022|<tuple|7.18|?>>
    <associate|eq 7.19.022|<tuple|7.19|?>>
    <associate|eq 7.2.022|<tuple|7.2|?>>
    <associate|eq 7.3.022|<tuple|7.3|?>>
    <associate|eq 7.4.022|<tuple|7.4|?>>
    <associate|eq 7.5.022|<tuple|7.5|?>>
    <associate|eq 7.6.022|<tuple|7.6|?>>
    <associate|eq 7.7.022|<tuple|7.7|?>>
    <associate|eq 7.8.022|<tuple|7.8|?>>
    <associate|eq 7.9.022|<tuple|7.9|?>>
    <associate|eq 8.1.023|<tuple|8.1|?>>
    <associate|eq 8.2.023|<tuple|8.2|?>>
    <associate|integeres order|<tuple|7.26|?>>
    <associate|integers|<tuple|7.2|?>>
    <associate|integers (-1).n|<tuple|7.15|?>>
    <associate|integers -(n,m)=(-n),(-m)|<tuple|7.16|?>>
    <associate|integers 0\<less\>=n.n|<tuple|7.33|?>>
    <associate|integers 0\<less\>n and 0\<less\>m then
    0\<less\>n.m|<tuple|7.31|?>>
    <associate|integers Archimedean|<tuple|7.35|?>>
    <associate|integers absolute value|<tuple|7.39|?>>
    <associate|integers absorbing element|<tuple|7.14|?>>
    <associate|integers are conditional complete|<tuple|7.37|?>>
    <associate|integers common divisor|<tuple|7.49|?>>
    <associate|integers condition for 0|<tuple|7.12|?>>
    <associate|integers difference|<tuple|7.8|?>>
    <associate|integers divide relation|<tuple|7.43|?>>
    <associate|integers division|<tuple|7.42|?>>
    <associate|integers divisor 1|<tuple|7.45|?>>
    <associate|integers divisors |<tuple|7.46|?>>
    <associate|integers divisors properties|<tuple|7.50|?>>
    <associate|integers equivalence relation|<tuple|7.1|?>>
    <associate|integers even condition|<tuple|7.55|?>>
    <associate|integers even odd|<tuple|7.53|?>>
    <associate|integers even odd equivalences|<tuple|7.54|?>>
    <associate|integers greatest common divisor|<tuple|7.52|?>>
    <associate|integers integers forms a group|<tuple|7.7|?>>
    <associate|integers integral domain|<tuple|7.11|?>>
    <associate|integers multiplication|<tuple|7.10|?>>
    <associate|integers multiplication equivalence|<tuple|7.9|?>>
    <associate|integers n.r=k.r=\<gtr\>n=k|<tuple|7.17|?>>
    <associate|integers neutral element|<tuple|7.6|?>>
    <associate|integers non negative|<tuple|7.21|?>>
    <associate|integers non positive numbers|<tuple|7.23|?>>
    <associate|integers order and multiplication|<tuple|7.32|?>>
    <associate|integers order preserving bijection|<tuple|7.34|?>>
    <associate|integers positive and negative|<tuple|7.25|?>>
    <associate|integers positive condition|<tuple|7.29|?>>
    <associate|integers positive integeres are well ordered|<tuple|7.36|?>>
    <associate|integers properties|<tuple|7.20|?>>
    <associate|integers properties (1)|<tuple|7.22|?>>
    <associate|integers properties (2)|<tuple|7.30|?>>
    <associate|integers quotient|<tuple|7.48|?>>
    <associate|integers quotient theorem|<tuple|7.47|?>>
    <associate|integers sum uniqueness|<tuple|7.4|?>>
    <associate|integers sup is max|<tuple|7.38|?>>
    <associate|integers without 0|<tuple|8.2|?>>
    <associate|integers x\<less\>=y\<less\>=\<gtr\>-y\<less\>=x|<tuple|7.28|?>>
    <associate|integers x\<less\>=\|x\||<tuple|7.41|?>>
    <associate|integers z=-z=\<gtr\>z=0|<tuple|7.13|?>>
    <associate|integers z^n++m=z^n.z^m|<tuple|7.19|?>>
    <associate|integers {x\|-\<less\>=x}|<tuple|7.27|?>>
    <associate|integers \|x.y\|=\|x\|.\|y\||<tuple|7.40|?>>
    <associate|integers ~([n,m])~([n+k,m+k)]|<tuple|7.3|?>>
    <associate|rational equivalence relation|<tuple|8.3|?>>
    <associate|rational field|<tuple|8.12|?>>
    <associate|rational group|<tuple|8.8|?>>
    <associate|rational n/m=n.k/m.k|<tuple|8.5|?>>
    <associate|rational numbers|<tuple|8.4|?>>
    <associate|rational product|<tuple|8.11|?>>
    <associate|rational product (1)|<tuple|8.10|?>>
    <associate|rational sum operator|<tuple|8.7|?>>
    <associate|rational sum operator (1)|<tuple|8.6|?>>
    <associate|rational x-y|<tuple|8.9|?>>
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
    </associate>
  </collection>
</auxiliary>
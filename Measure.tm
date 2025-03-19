<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Measures and Integration>

  <section|Extended real numbers>

  Measure Theory deals with measuring sets which is the act of assigning to a
  set a non negative number, the measure of the set, that somehow quantify
  how big this set is. This process of measuring satisfies countable
  additivity meaning that the measure of the countable unit of sets is the
  sum of the measures of each set in this union. Hence we have to deal with
  series of non negative numbers which are not always convergent in
  <math|\<bbb-R\>> meaning that the measure of a set would not be always
  defined as a real number. To solve this problem we extend the set of real
  numbers by adding two elements, <math|\<infty\>> which will be bigger then
  every real number and <math|-\<infty\>> which will be smaller then every
  real number.

  <\definition>
    <label|extended reals>The set of extended real numbers
    <math|<wide|\<bbb-R\>|\<wide-bar\>>> is defined as\ 

    <\equation*>
      <wide|\<bbb-R\>|\<wide-bar\>>=\<bbb-R\><big|cup><around*|{|\<infty\>,-\<infty\>|}>
    </equation*>

    where <math|\<infty\>,-\<infty\>\<nin\>\<bbb-R\>> and
    <math|\<infty\>\<neq\>-\<infty\>><math|>. In other words we have that\ 

    <\equation*>
      <wide|\<bbb-R\>|\<wide-bar\>>=\<bbb-R\><big|sqcup><around*|{|\<infty\>|}><big|sqcup><around*|{|-\<infty\>|}>
    </equation*>

    <\note>
      Using [lemma: <reference|extended reals existence>] there exist two
      elements <math|<around*|(|\<varnothing\>,0|)>>,
      <math|<around*|(|\<bbb-Q\>,0|)>> such that
      <math|<around*|(|\<varnothing\>,0|)>\<nin\>\<bbb-R\>>,
      <math|<around*|(|\<bbb-Q\>,0|)>\<nin\>\<bbb-R\>> and
      <math|<around*|(|\<varnothing\>,0|)>\<neq\><around*|(|\<bbb-Q\>,0|)>>.
      So we can choose <math|\<infty\>=<around*|(|\<varnothing\>,0|)>> and
      <math|-\<infty\>=<around*|(|\<bbb-Q\>,0|)>>. However we never make use
      of the exact nature of <math|\<infty\>>, <math|-\<infty\>> the only
      thing that matters is that <math|\<infty\>,-\<infty\>\<nin\>\<bbb-R\>>
      and that <math|\<infty\>\<neq\>-\<infty\>>.
    </note>
  </definition>

  <subsection|Order relation in <math|<wide|\<bbb-R\>|\<wide-bar\>>>>

  <\definition>
    <label|extended reals finite real number>A
    <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> is a called a finite real
    number if <math|x\<in\>\<bbb-R\>> so <math|\<bbb-R\>> is the set of
    finite real numbers.
  </definition>

  We introduce now a fully order on <math|<wide|\<bbb-R\>|\<wide-bar\>>>
  based on the order defined on the set of real numbers. To avoid confusion
  with notation, <math|\<leqslant\>> will be the order relation on
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> and
  <math|\<leqslant\><rsub|\<bbb-R\>>> is the order relation on
  <math|\<bbb-R\>>.

  <\definition>
    <label|extended order relation>The relation
    <math|\<leqslant\>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>
    is defined by\ 

    <\equation*>
      \<leqslant\>=\<leqslant\><rsub|\<bbb-R\>><big|cup><around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)><big|cup><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>
    </equation*>

    where <math|\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
    is the order relation on <math|\<bbb-R\>>.

    <\notation>
      As usual <math|x\<leqslant\>y> is another notation for
      <math|<around*|(|x,y|)>\<in\>\<leqslant\>>
    </notation>

    <\note>
      As <math|\<infty\>\<nin\>\<bbb-R\>>, <math|-\<infty\>\<nin\>\<bbb-R\>>
      and <math|-\<infty\>\<neq\>\<infty\>> we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|\<leqslant\><rsub|\<bbb-R\>><big|cap><around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<leqslant\><rsub|\<bbb-R\>><big|cap><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)><big|cap><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>=<around*|{|<around*|(|-\<infty\>,\<infty\>|)>|}>>|<cell|>>>>
      </eqnarray*>
    </note>

    <\note>
      Using the definition we have that <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      we have that <math|<around*|(|x,\<infty\>|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>
      and <rigid|<math|<around*|(|-\<infty\>,x|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>
      so that\ 

      <\equation*>
        \<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>> we
        have-\<infty\>\<leqslant\>x<text| and >x\<leqslant\>\<infty\>
      </equation*>

      So in essence <math|\<infty\>> is a number that is bigger then all
      numbers in <math|<wide|\<bbb-R\>|\<wide-bar\>>> and <math|-\<infty\>>
      is a number that is less than every number in
      <math|<wide|\<bbb-R\>|\<wide-bar\>>>.
    </note>

    <\note>
      If <math|x,y\<in\>\<bbb-R\>> then if <math|x\<leqslant\>y> it follows
      that <math|x\<leqslant\><rsub|\<bbb-R\>>y>
    </note>

    <\proof>
      As <math|x,y\<in\>\<bbb-R\>> <math|\<infty\>,-\<infty\>\<nin\>\<bbb-R\>>
      <math|<around*|(|x,y|)>\<nin\><around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)><big|cup><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>>
      so we must have that <math|<around*|(|x,y|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>
      or <math|x\<leqslant\><rsub|\<bbb-R\>>y>.
    </proof>
  </definition>

  We proof now that <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<leqslant\>|\<rangle\>>>
  is fully ordered partial ordered set

  <\theorem>
    <label|extended fully order><math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<leqslant\>|\<rangle\>>>
    is totally ordered.
  </theorem>

  <\proof>
    First we have to prove that <math|\<leqslant\>> is a partial ordered.\ 

    <\description>
      <item*|reflectivity>Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      then we have either:

      <\description>
        <item*|<math|x=\<infty\>>>Then <math|<around*|(|x,x|)>=<around*|(|\<infty\>,\<infty\>|)>\<in\><wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
        proving that <math|x\<leqslant\>x>.

        <item*|<math|x=-\<infty\>>>Then <math|<around*|(|x,x|)>=<around*|(|-\<infty\>,-\<infty\>|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<subseteq\>\<leqslant\>>
        proving that <math|x\<leqslant\>x>.

        <item*|<math|x\<in\>\<bbb-R\>>>Then as
        <math|\<leqslant\><rsub|\<bbb-R\>>> is a partial order it follows
        that <math|<around*|(|x,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<leqslant\>>
        proving that <math|x\<leqslant\>x>.
      </description>

      <item*|anti-symmetry>If <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x>
      then <math|<around*|(|x,y|)>,<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>><big|sqcup><around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)><big|sqcup><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>>
      and we have for <math|<around*|(|x,y|)>> the following cases:

      <\description>
        <item*|<math|<around*|(|x,y|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>>Then
        as <math|<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>><big|sqcup><around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)><big|sqcup><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>>
        we have either:

        <\description>
          <item*|<math|<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>>As
          <math|\<leqslant\><rsub|\<bbb-R\>>> is a partial order we have that
          <math|x=y>.

          <item*|<math|<around*|(|y,x|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>>This
          can not occur because <math|<around*|(|x,y|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
          so that <math|<rigid|x\<neq\>\<infty\>>\<wedge\>x=\<infty\>>.

          <item*|<math|<around*|(|y,x|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>This
          can not occur because <math|<around*|(|x,y|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
          so that <math|<rigid|y\<neq\>-\<infty\>>\<wedge\>y=-\<infty\>>.
        </description>

        <item*|<math|<around*|(|x,y|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>>Then
        as <math|<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>><big|sqcup><around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)><big|sqcup><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>>
        we have either:

        <\description>
          <item*|<math|<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>>As
          <math|<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
          <math|y\<neq\>\<infty\>> so this can not occur.

          <item*|<math|<around*|(|y,x|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>>Then
          <math|y=\<infty\>\<wedge\>x=\<infty\>> so that <math|x=y>.

          <item*|<math|<around*|(|y,x|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>Then
          <math|y=\<infty\>\<wedge\>y=-\<infty\>> which as
          <math|\<infty\>\<neq\>-\<infty\>> can not occur.
        </description>

        <item*|<math|<around*|(|x,y|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>Then
        as <math|<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>><big|sqcup><around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)><big|sqcup><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>>
        we have either:

        <\description>
          <item*|<math|<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>>As
          <math|<around*|(|y,x|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
          <math|y\<neq\>-\<infty\>\<wedge\>y=\<infty\>> so this can not
          occur.

          <item*|<math|<around*|(|y,x|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>>Then
          <math|x=-\<infty\>\<wedge\>x=\<infty\>> which can not occur as
          <math|\<infty\>\<neq\>-\<infty\>>.

          <item*|<math|<around*|(|y,x|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>Then
          <math|x=-\<infty\>\<wedge\>y=-\<infty\>> so that <math|x=y>.
        </description>
      </description>

      Hence in all valid cases we have that <math|x=y>.

      <item*|transitivity>If <math|x\<leqslant\>y\<wedge\>y\<leqslant\>z>
      then <math|<around*|(|x,y|)>,<around*|(|y,z|)>\<in\>\<leqslant\><rsub|\<bbb-R\>><big|sqcup><around*|(|<wide|\<bbb-R\>|\<bar\>>\<times\><around*|{|\<infty\>|}>|)><big|sqcup><around*|(|<around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>>
      and we have for <math|<around*|(|x,y|)>> either:\ 

      <\description>
        <item*|<math|<around*|(|x,y|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>>Then
        for <math|<around*|(|y,z|)>> we have either:\ 

        <\description>
          <item*|<math|<around*|(|y,z|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>>Then
          <math|x\<leqslant\><rsub|\<bbb-R\>>y\<wedge\>y\<leqslant\><rsub|\<bbb-R\>>z>
          and as <math|\<leqslant\><rsub|\<bbb-R\>>> is a partial order it
          follows that <math|x\<leqslant\><rsub|\<bbb-R\>>z> hence
          <math|<around*|(|x,z|)>\<in\>\<leqslant\>> so that
          <math|x\<leqslant\>z>.

          <item*|<math|<around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>>As
          <math|z=\<infty\>> we have that
          <math|<around*|(|x,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
          so that <math|x\<leqslant\>z>.

          <item*|<math|<around*|(|y,z|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>As
          <math|<around*|(|x,y|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
          we have that <math|y\<neq\>-\<infty\>\<wedge\>y=-\<infty\>> so this
          case can never occur.
        </description>

        <item*|<math|<around*|(|x,y|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>>Then
        for <math|<around*|(|y,z|)>> we have either:\ 

        <\description>
          <item*|<math|<around*|(|y,z|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>>Then
          as <math|<around*|(|y,z|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
          we have that <math|y\<neq\>\<infty\>\<wedge\>y=\<infty\>> so this
          case can never occur.

          <item*|<math|<around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>>As
          <math|z=\<infty\>> we have <math|<around*|(|x,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
          so that <math|x\<leqslant\>z>.

          <item*|<math|<around*|(|y,z|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>As
          <math|y=\<infty\>\<wedge\>y=-\<infty\>> and
          <math|-\<infty\>\<neq\>\<infty\>> so that this case never occurs.
        </description>

        <item*|<math|<around*|(|x,y|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>Then
        for <math|<around*|(|y,z|)>> we have either:\ 

        <\description>
          <item*|<math|<around*|(|y,z|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>>>As
          <math|x=-\<infty\>> we have that
          <math|<around*|(|x,z|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<subseteq\>\<leqslant\>>
          so that <math|x\<leqslant\>z>.

          <item*|<math|<around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>>>As
          <math|z=\<infty\>> we have that
          <math|<around*|(|x,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
          so that <math|x\<leqslant\>z>.

          <item*|<math|<around*|(|y,z|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>>As
          <math|x=-\<infty\>> we have that
          <math|<around*|(|x,z|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<subseteq\>\<leqslant\>>
          so that <math|x\<leqslant\>z>.
        </description>
      </description>

      Hence in all valid cases we have that <math|x\<leqslant\>z>.
    </description>

    Next we have to prove that <math|\<leqslant\>> is a total order. So let
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then we have to consider
    the following cases:

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then as
      <math|\<leqslant\><rsub|\<bbb-R\>>> is a total order we have
      <math|<around*|(|x,y|)>\<in\>\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<leqslant\>>
      so that <math|x\<leqslant\>y>.

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
      <math|<around*|(|y,x|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
      so that <math|y\<leqslant\>x>.

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
      <math|<around*|(|x,y|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<subseteq\>\<leqslant\>>
      so that <math|x\<leqslant\>y>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
      \ <math|<around*|(|x,y|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
      so that <math|x\<leqslant\>y>.

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
      \ <math|<around*|(|x,y|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
      so that <math|x\<leqslant\>y>.

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
      \ <math|<around*|(|x,y|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
      so that <math|x\<leqslant\>y>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
      <math|<around*|(|y,x|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<subseteq\>\<leqslant\>>
      so that <math|y\<leqslant\>x>.

      <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
      <math|<around*|(|y,x|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<subseteq\>\<leqslant\>>
      so that <math|y\<leqslant\>x>.

      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
      <math|<around*|(|y,x|)>\<in\><around*|{|-\<infty\>|}>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<subseteq\>\<leqslant\>>
      so that <math|y\<leqslant\>x>.
    </description>
  </proof>

  <\theorem>
    Let <math|x\<in\>\<bbb-R\>> then we have
    <math|-\<infty\>\<less\>x\<less\>\<infty\>>
  </theorem>

  <\proof>
    As <math|<around*|(|x,\<infty\>|)>\<in\>\<bbb-R\>\<times\><around*|{|\<infty\>|}>\<subseteq\>\<leqslant\>>
    we have <math|x\<leqslant\>\<infty\>> and <math|x\<neq\>\<infty\>> so
    that <math|x\<less\>\<infty\>>. Further as
    <math|<around*|(|-\<infty\>,x|)>\<in\><around*|{|-\<infty\>|}>\<times\>\<bbb-R\>>
    we have that <math|-\<infty\>\<leqslant\>x> and <math|x\<neq\>-\<infty\>>
    so that <math|-\<infty\>\<less\>x>.
  </proof>

  The primary reason for the extended real is that every non empty set has a
  supremum and infinum.

  <\theorem>
    <label|extended sup and inf exist>Let
    <math|\<varnothing\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then <math|sup<around*|(|A|)>> and <math|inf<around*|(|A|)>> exist.
    Further we have:

    <\enumerate>
      <item><math|sup<around*|(|A|)>> has the following values for the
      possible cases of <math|A>:

      <\description>
        <item*|<math|A=<around*|{|-\<infty\>|}>>>Then
        <math|sup<around*|(|A|)>=-\<infty\>>

        <item*|<math|A\<neq\><around*|{|-\<infty\>|}>>>Then we have the
        following possible sub-cases:

        <\description>
          <item*|<math|\<infty\>\<in\>A>>Then
          <math|sup<around*|(|A|)>=\<infty\>>

          <item*|<math|\<infty\>\<nin\>A>>Then we have the following
          sub-cases:\ 

          <\description>
            <item*|<math|\<exists\>u\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A<text|
            we have >x\<leqslant\>u>>Then
            <math|sup<around*|(|A|)>=sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<in\>\<bbb-R\>>

            <item*|<math|\<forall\>u\<in\>R\<vdash\>\<exists\>x\<in\>A<text|
            we have >x\<nleqslant\>u>>Then
            <math|sup<around*|(|A|)>=\<infty\>>
          </description>
        </description>
      </description>

      <item><math|inf<around*|(|A|)>> has the following values for the
      possible cases of <math|A>:

      <\description>
        <item*|<math|A=<around*|{|\<infty\>|}>>>Then
        <math|inf<around*|(|A|)>=\<infty\>>

        <item*|<math|A\<neq\><around*|{|\<infty\>|}>>>Then we have the
        following possible sub-cases:

        <\description>
          <item*|<math|-\<infty\>\<in\>A>>Then
          <math|inf<around*|(|A|)>=-\<infty\>>

          <item*|<math|-\<infty\>\<nin\>A>>Then we have the following
          sub-cases:\ 

          <\description>
            <item*|<math|\<exists\>l\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A<text|
            we have >l\<leqslant\>x>>Then
            <math|inf<around*|(|A|)>=inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<in\>\<bbb-R\>>

            <item*|<math|\<forall\>l\<in\>R\<vdash\>\<exists\>x\<in\>A<text|
            we have >l\<nleqslant\>x>>Then
            <math|inf<around*|(|A|)>=-\<infty\>>
          </description>
        </description>
      </description>
    </enumerate>

    Where <math|sup<around*|(|A|)>> is the supremum of <math|A> using
    <math|\<leqslant\>>, <math|sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>>
    is the supremum of <math|A<big|cap>\<bbb-R\>> using
    <math|\<leqslant\><rsub|\<bbb-R\>>>, <math|inf<around*|(|A|)>> is the
    infinum of <math|A> using <math|\<leqslant\>> and
    <math|inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>> is the
    infinum of <math|A<big|cap>\<bbb-R\>> using
    <math|\<leqslant\><rsub|\<bbb-R\>0>>.
  </theorem>

  <\proof>
    First we proof that <math|sup<around*|(|A|)>> exist. For <math|A> we have
    either:\ 

    <\description>
      <item*|<math|A=<around*|{|-\<infty\>|}>>>As
      <math|-\<infty\>\<leqslant\>-\<infty\>> <math|-\<infty\>> is a upper
      bound of <math|A>. If <math|u\<in\><wide|\<bbb-R\>|\<wide-bar\>>> is
      another upper bound then, as <math|-\<infty\>\<leqslant\>u> it follows
      that <math|-\<infty\>> is the lowest upper bound of <math|A> hence
      <math|sup<around*|(|A|)>=-\<infty\>> and\ 

      <\equation*>
        sup<around*|(|<around*|{|-\<infty\>|}>|)>=-\<infty\>
      </equation*>

      <item*|<math|A\<neq\><around*|{|-\<infty\>|}>>>Then we have either:

      <\description>
        <item*|<math|\<infty\>\<in\>A>>As <math|\<forall\>x\<in\>A> we have
        <math|x\<leqslant\>\<infty\>> so <math|\<infty\>> is clearly a upper
        bound for <math|A>. If <math|u> is a another upper bound for <math|A>
        then, as <math|\<infty\>\<in\>A>, we must have that
        <math|\<infty\>\<leqslant\>u> so <math|\<infty\>> is the lowest upper
        bound of <math|A>. Hence <math|sup<around*|(|A|)>=\<infty\>> or\ 

        <\equation*>
          <text|If <math|\<infty\>\<in\>A> then
          <math|sup<around*|(|A|)>=\<infty\>>>
        </equation*>

        <item*|<math|\<infty\>\<nin\>A>>As <math|A\<neq\>\<varnothing\>> and
        <math|A\<neq\><around*|{|-\<infty\>|}>> there must be a
        <math|z\<in\>A> with <math|z\<neq\>-\<infty\>>, as
        <math|\<infty\>\<nin\>A> it follows that <math|z\<in\>\<bbb-R\>>.
        Hence we conclude that\ 

        <\equation*>
          A<big|cap>\<bbb-R\>\<neq\>\<varnothing\>
        </equation*>

        \ Consider now for <math|A> the following cases:

        <\description>
          <item*|<math|\<exists\>u\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A<text|
          we have >x\<leqslant\>u>>Then <math|\<forall\>x\<in\>A<big|cap>\<bbb-R\>>
          we have <math|x\<leqslant\>u> or, as <math|x,u\<in\>\<bbb-R\>> that
          <math|x\<leqslant\><rsub|\<bbb-R\>>u>, so
          <math|\<varnothing\>\<neq\>A<big|cap>\<bbb-R\>> is bounded above by
          <math|u>. As <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\><rsub|\<bbb-R\>>|\<rangle\>>>
          is conditional complete [see theorem: <reference|complex RC is
          conditional complete>] <math|A<big|cap>\<bbb-R\>> has a supremum
          <math|S=sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<in\>\<bbb-R\>>.
          Let <math|x\<in\>A>, then, given that <math|\<infty\>\<nin\>A>, we
          have either:

          <\description>
            <item*|<math|x\<in\>A<big|cap>\<bbb-R\>>>Then
            <math|x\<leqslant\><rsub|\<bbb-R\>>S> so that
            <math|x\<leqslant\>S>

            <item*|<math|x=-\<infty\>>>Then <math|-\<infty\>\<leqslant\>S>
          </description>

          So in all cases we have <math|x\<leqslant\>S> which proves that\ 

          <\equation*>
            S<text| is a upper bound of >A <around*|[|using\<leqslant\>|]>
          </equation*>

          Let <math|U> be another upper bound of <math|A> [using
          <math|\<leqslant\>>] then we have either:\ 

          <\description>
            <item*|<math|U\<in\>\<bbb-R\>>>Then
            <math|\<forall\>x\<in\>A<big|cap>\<bbb-R\>\<subseteq\>A> we have
            <math|x\<leqslant\>U>, hence, as <math|x,U\<in\>\<bbb-R\>>,
            <math|x\<leqslant\><rsub|\<bbb-R\>>U> so that <math|U> is another
            upper bound of <math|A<big|cap>\<bbb-R\>> using
            <math|\<leqslant\><rsub|\<bbb-R\>>>. So we must have that
            <math|S\<leqslant\>U>.

            <item*|<math|U=\<infty\>>>Then trivially <math|S\<leqslant\>U>.

            <item*|<math|U=-\<infty\>>>Then <math|\<forall\>x\<in\>A> we have
            <math|-\<infty\>\<leqslant\>x\<leqslant\>-\<infty\>\<Rightarrow\>x=-\<infty\>>
            so that <math|<rigid|A\<subseteq\><around*|{|-\<infty\>|}>>> or
            <math|A<big|cap>\<bbb-R\>\<subseteq\><around*|{|-\<infty\>|}><big|cap>\<bbb-R\>=\<varnothing\>>
            contradicting the fact that <rigid|<math|A<big|cap>\<bbb-R\>=\<varnothing\>>>.
            So this case will never occur.
          </description>

          As in all valid cases <math|S\<leqslant\>U> it follows that
          <math|S> is the lowest upper bound of <math|A> or <math|S> is the
          supremum of <math|A>. So\ 

          <\equation*>
            sup<around*|(|A|)>=<text|sup><rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>
          </equation*>

          <item*|<math|\<forall\>u\<in\>\<bbb-R\>\<vdash\>\<exists\>x\<in\>A<text|
          with >x\<nleqslant\>u>>As <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
          we have that <math|x\<leqslant\>\<infty\>> it follows that
          <math|\<infty\>> is a upper bound of <math|A> [using
          <math|\<leqslant\>>]. Let <math|u> be another upper bound of
          <math|A>. Assume that <math|\<infty\>\<nleqslant\>u> then by
          [theorem: <reference|order comparable property>]
          <math|u\<less\>\<infty\>> or <math|u\<neq\>\<infty\>> so that
          <math|u> is either:

          <\description>
            <item*|<math|u=-\<infty\>>>Then <math|\<forall\>x\<in\>A> we have
            <math|-\<infty\>\<leqslant\>x\<leqslant\>u=-\<infty\>\<Rightarrow\>x=-\<infty\>>
            so that <math|<rigid|A\<subseteq\><around*|{|-\<infty\>|}>>> or
            <math|A<big|cap>\<bbb-R\>\<subseteq\><around*|{|-\<infty\>|}><big|cap>\<bbb-R\>=\<varnothing\>>
            contradicting the fact that <math|A<rigid|<big|cap>\<bbb-R\>>=\<varnothing\>>.

            <item*|<math|u\<in\>\<bbb-R\>>>Then <math|\<exists\>x\<in\>A>
            such that <math|x\<nleqslant\>u> contradicting the fact that
            <math|u> is a upper bound.
          </description>

          As in all cases we have a contradiction we must have that the
          assumption is wrong and that <math|\<infty\>\<leqslant\>u>. Hence
          <math|\<infty\>> is the lowest upper bound of <math|A> [using
          <math|\<leqslant\>>] or <math|\<infty\>> is the supremum of
          <math|A>, so

          <\equation*>
            sup<around*|(|A|)>=\<infty\>
          </equation*>
        </description>
      </description>
    </description>

    So in all possible cases of <math|A> we have found that
    <math|sup<around*|(|A|)>> exists. Next we prove that
    <math|inf<around*|(|A|)>> exist, for <math|A> we have either:\ 

    <\description>
      <item*|<math|A=<around*|{|\<infty\>|}>>>As
      <math|\<infty\>\<leqslant\>\<infty\>> <math|\<infty\>> is a lower bound
      of <math|A>. If <math|l\<in\><wide|\<bbb-R\>|\<wide-bar\>>> is another
      lower bound then, as <math|l\<leqslant\>\<infty\>> it follows that
      <math|\<infty\>> is the greatest upper bound of <math|A> hence
      <math|inf<around*|(|A|)>=\<infty\>> and\ 

      <\equation*>
        inf<around*|(|<around*|{|\<infty\>|}>|)>=\<infty\>
      </equation*>

      <item*|<math|A\<neq\><around*|{|\<infty\>|}>>>Then we have either:

      <\description>
        <item*|<math|-\<infty\>\<in\>A>>As <math|\<forall\>x\<in\>A> we have
        <math|-\<infty\>\<leqslant\>x> so <math|-\<infty\>> is clearly a
        lower bound for <math|A>. If <math|l> is a another lower bound for
        <math|A> then, as <math|-\<infty\>\<in\>A>, we must have that
        <math|u\<leqslant\>-\<infty\>> so <math|-\<infty\>> is the greatest
        lower bound of <math|A>. Hence <math|inf<around*|(|A|)>=-\<infty\>>
        or\ 

        <\equation*>
          <text|If <math|-\<infty\>\<in\>A> then
          <math|inf<around*|(|A|)>=-\<infty\>>>
        </equation*>

        <item*|<math|-\<infty\>\<nin\>A>>As <math|A\<neq\>\<varnothing\>> and
        <math|A\<neq\><around*|{|\<infty\>|}>> there must be a
        <math|z\<in\>A> with <math|z\<neq\>\<infty\>>, as
        <math|-\<infty\>\<nin\>A> it follows that <math|z\<in\>\<bbb-R\>>.
        Hence we conclude that\ 

        <\equation*>
          A<big|cap>\<bbb-R\>\<neq\>\<varnothing\>
        </equation*>

        \ Consider now for <math|A> the following cases:

        <\description>
          <item*|<math|\<exists\>l\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A<text|
          we have >l\<leqslant\>x>>Then <math|\<forall\>x\<in\>A<big|cap>\<bbb-R\>>
          we have <math|l\<leqslant\>x> or, as <math|x,l\<in\>\<bbb-R\>> that
          <math|l\<leqslant\><rsub|\<bbb-R\>>x>, so
          <math|\<varnothing\>\<neq\>A<big|cap>\<bbb-R\>> is bounded below by
          <math|l>. As <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\><rsub|\<bbb-R\>>|\<rangle\>>>
          is conditional complete [see theorem: <reference|complex RC is
          conditional complete>] <math|A<big|cap>\<bbb-R\>> has a infinum
          <math|I=inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<in\>\<bbb-R\>>.
          Let <math|x\<in\>A>, then, given that <math|-\<infty\>\<nin\>A>, we
          have either:

          <\description>
            <item*|<math|x\<in\>A<big|cap>\<bbb-R\>>>Then
            <math|I\<leqslant\><rsub|\<bbb-R\>>x> so that
            <math|I\<leqslant\>x>

            <item*|<math|x=\<infty\>>>Then <math|I\<leqslant\>x>
          </description>

          So in all cases we have <math|I\<leqslant\>x> which proves that\ 

          <\equation*>
            I<text| is a lower bound of >A <around*|[|using\<leqslant\>|]>
          </equation*>

          Let <math|L> be another lower bound of <math|A> [using
          <math|\<leqslant\>>] then we have either:\ 

          <\description>
            <item*|<math|L\<in\>\<bbb-R\>>>Then
            <math|\<forall\>x\<in\>A<big|cap>\<bbb-R\>\<subseteq\>A> we have
            <math|L\<leqslant\>x>, hence, as <math|x,L\<in\>\<bbb-R\>>,
            <math|L\<leqslant\><rsub|\<bbb-R\>>x> so that <math|L> is another
            lower bound of <math|A<big|cap>\<bbb-R\>> using
            <math|\<leqslant\><rsub|\<bbb-R\>>>. So we must have that
            <math|L\<leqslant\>I>.

            <item*|<math|L=\<infty\>>>Then <math|\<forall\>x\<in\>A> we have
            <math|\<infty\>\<leqslant\>x\<leqslant\>\<infty\>\<Rightarrow\>x=\<infty\>>
            so that <math|A\<subseteq\><around*|{|\<infty\>|}>> or
            <math|A<big|cap>\<bbb-R\>\<subseteq\><around*|{|\<infty\>|}><big|cap>\<bbb-R\>=\<varnothing\>>
            contradicting the fact that <rigid|<math|A<big|cap>\<bbb-R\>=\<varnothing\>>>.
            So this case will never occur.

            <item*|<math|L=-\<infty\>>>Then <math|L\<leqslant\>I>
          </description>

          As in all valid cases <math|L\<leqslant\>I> it follows that
          <math|I> is the greatest lower bound of <math|A> or <math|I> is the
          infinum of <math|A>. So\ 

          <\equation*>
            inf<around*|(|A|)>=<text|inf><rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>
          </equation*>

          <item*|<math|\<forall\>l\<in\>\<bbb-R\>\<vdash\>\<exists\>x\<in\>A<text|
          with >l\<nleqslant\>x>>As <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
          we have that <math|-\<infty\>\<leqslant\>x> it follows that
          <math|-\<infty\>> is a lower bound of <math|A> [using
          <math|\<leqslant\>>]. Let <math|l> be another lower bound of
          <math|A>. Assume that <math|l\<nleqslant\>-\<infty\>> then by
          [theorem: <reference|order comparable property>]
          <math|-\<infty\>\<less\>l> or <math|l\<neq\>-\<infty\>> so that
          <math|l> is either:

          <\description>
            <item*|<math|l=\<infty\>>>Then <math|\<forall\>x\<in\>A> we have
            <math|\<infty\>=l\<leqslant\>x\<leqslant\>\<infty\>\<Rightarrow\>x=\<infty\>>
            so that <math|<rigid|A\<subseteq\><around*|{|\<infty\>|}>>> or
            <math|A<big|cap>\<bbb-R\>\<subseteq\><around*|{|\<infty\>|}><big|cap>\<bbb-R\>=\<varnothing\>>
            contradicting the fact that <math|A<rigid|<big|cap>\<bbb-R\>>=\<varnothing\>>.

            <item*|<math|l\<in\>\<bbb-R\>>>Then <math|\<exists\>x\<in\>A>
            such that <math|l\<nleqslant\>x> contradicting the fact that
            <math|l> is a lower bound.
          </description>

          As in all cases we have a contradiction we must have that the
          assumption is wrong and that <math|l\<leqslant\>-\<infty\>>. Hence
          <math|-\<infty\>> is the greatest lower bound of <math|A> [using
          <math|\<leqslant\>>] or <math|-\<infty\>> is the infinum of
          <math|A>. So

          <\equation*>
            inf<around*|(|A|)>=-\<infty\>
          </equation*>
        </description>
      </description>
    </description>

    So in all possible cases of <math|A> we have proved that
    <math|inf<around*|(|A|)>> exist.
  </proof>

  <\corollary>
    <label|extended sup inf of real numbers>If
    <math|\<varnothing\>\<neq\>A\<subseteq\>\<bbb-R\>> then
    <math|sup<around*|(|A|)>\<neq\>-\<infty\>> and
    <math|inf<around*|(|A|)>\<neq\>\<infty\>>
  </corollary>

  <\proof>
    If <math|sup<around*|(|A|)>=-\<infty\>> then <math|\<forall\>x\<in\>A> we
    have <math|-\<infty\>\<leqslant\>x\<leqslant\>-\<infty\>> so that
    <math|x=-\<infty\>>, hence <math|A\<subseteq\><around*|{|-\<infty\>|}>>
    so that we get <math|\<varnothing\>\<neq\>A=A<big|cap>\<bbb-R\>\<subseteq\><around*|{|-\<infty\>|}><big|cap>\<bbb-R\>=\<varnothing\>>
    a contradiction. Hence\ 

    <\equation*>
      sup<around*|(|A|)>\<neq\>-\<infty\>
    </equation*>

    Likewise if <math|inf<around*|(|A|)>=\<infty\>> then
    \ <math|\<forall\>x\<in\>A> we have <math|\<infty\>\<leqslant\>x\<leqslant\>\<infty\>>
    so that <math|x=\<infty\>>, hence <math|A\<subseteq\><around*|{|\<infty\>|}>>
    so that we get <math|\<varnothing\>\<neq\>A=A<big|cap>\<bbb-R\>\<subseteq\><around*|{|\<infty\>|}><big|cap>\<bbb-R\>=\<varnothing\>>
    a contradiction. Hence\ 

    <\equation*>
      inf<around*|(|A|)>\<neq\>\<infty\>
    </equation*>
  </proof>

  The next theorem shows the necessary and sufficient constraint for the
  supremum and infinum to be not finite.

  <\corollary>
    <label|extended infinite inf sup>Let <math|\<varnothing\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then\ 

    <\enumerate>
      <item><math|sup<around*|(|A|)>=\<infty\>> <math|\<Leftrightarrow\>>
      <math|\<infty\>\<in\>A<text| or >\<forall\>u\<in\>\<bbb-R\>> there
      exist a <math|x\<in\>A<big|cap>\<bbb-R\>> with <math|x\<nleqslant\>u>
      or <math|u\<less\>x>.

      <item><math|inf<around*|(|A|)>=-\<infty\>\<Leftrightarrow\>-\<infty\>\<in\>A<text|
      or >\<forall\>\<in\>\<bbb-R\>> there exist a
      <math|x\<in\>A<big|cap>\<bbb-R\>> with <math|l\<nleqslant\>x> or
      <math|x\<less\>l>.

      <item><math|sup<around*|(|A|)>=-\<infty\>\<Leftrightarrow\>A=<around*|{|-\<infty\>|}>>

      <item><math|inf<around*|(|A|)>=\<infty\>\<Leftrightarrow\>A=<around*|{|\<infty\>|}>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item> From [theorem: <reference|extended sup and inf exist> (1)] it
      follows that the only possible cases where
      <math|sup<around*|(|A|)>=\<infty\>> are that either
      <math|\<infty\>\<in\>A> or <math|\<forall\>u\<in\>\<bbb-R\>> there
      exist a <math|x\<in\>A<big|cap>\<bbb-R\>> with <math|x\<nleqslant\>u>.

      <item>From [theorem: <reference|extended sup and inf exist> (2)] it
      follows that the only possible cases where
      <math|inf<around*|(|A|)>=-\<infty\>> are that either
      <math|-\<infty\>\<in\>A> or <math|\<forall\>l\<in\>\<bbb-R\>> there
      exist a <math|x\<in\>A<big|cap>\<bbb-R\>> with <math|l\<nleqslant\>x>.

      <item>From [theorem: <reference|extended sup and inf exist> (1)] it
      follows that the only possible cases where
      <math|sup<around*|(|A|)>=-\<infty\>> is the case where
      <math|A=<around*|{|-\<infty\>|}>>.

      <item>From [theorem: <reference|extended sup and inf exist> (2)] it
      follows that the only possible cases where
      <math|inf<around*|(|A|)>=\<infty\>> is the case where
      <math|A=<around*|{|\<infty\>|}>>.
    </enumerate>
  </proof>

  <subsection|Arithmetic operations on <math|<wide|\<bbb-R\>|\<wide-bar\>>>>

  The sum operator on <math|<wide|\<bbb-R\>|\<wide-bar\>>> is a extension of
  the sum on <math|\<bbb-R\>> such that most inequalities involving sums are
  still satisfied.

  <\definition>
    <label|extended sum>The sum operator is defined by\ 

    <\equation*>
      <around*|(|+|)>:<around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|\<infty\>,-\<infty\>|)>,<around*|(|-\<infty\>,\<infty\>|)>|}>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by ><around*|(|+|)><around*|(|x,y|)>\<equallim\><rsub|notation>x+y
    </equation*>

    where\ 

    <\equation*>
      x+y=<choice|<tformat|<table|<row|<cell|\<infty\><text| if
      >x=\<infty\>\<wedge\>y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|-\<infty\>|}>>>|<row|<cell|\<infty\><text|
      if >y=\<infty\>\<wedge\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|-\<infty\>|}>>>|<row|<cell|-\<infty\><text|
      if >x=-\<infty\>\<wedge\>y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|\<infty\>|}>>>|<row|<cell|-\<infty\><text|
      if >y=-\<infty\>\<wedge\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|\<infty\>|}>>>|<row|<cell|x+<rsub|\<bbb-R\>>y<text|
      >if x,y\<in\>\<bbb-R\><text| where >+<rsub|\<bbb-R\>><text| is the sum
      defined for the real numbers>>>>>>
    </equation*>

    <\note>
      <math|\<infty\>+<around*|(|-\<infty\>|)>> and
      <math|-\<infty\>+\<infty\>> are not defined at all.
    </note>
  </definition>

  <\note>
    <label|extended neutral element>Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then for <math|0\<in\>\<bbb-R\>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    we have that <math|0+x=x=x+0>
  </note>

  <\proof>
    For <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have either:\ 

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>>>Then <math|x+0=x+<rsub|\<bbb-R\>>0=x>
      and <math|0+x=0+<rsub|R>x=x>.

      <item*|<math|x=-\<infty\>>>Then <math|x+0=-\<infty\>+0=-\<infty\>=x>
      and <math|0+x=0+<around*|(|-\<infty\>|)>=-\<infty\>=x>.

      <item*|<math|x=\<infty\>>>Then <math|x+0=\<infty\>+0=\<infty\>=x> and
      <math|0+x=0+\<infty\>=\<infty\>=x>.
    </description>
  </proof>

  <\definition>
    The multiplication operator <math|\<cdot\>> is defined by\ 

    <\equation*>
      <around*|(|\<cdot\>|)>:<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>
      by <around*|(|\<cdot\>|)><around*|(|x,y|)>\<equallim\><rsub|notation>x\<cdot\>y
    </equation*>

    where for <math|<around*|(|x,y|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>
    we define <math|x\<cdot\>y> as follows:

    <\description>
      <item*|<math|x=0\<vee\>y=0>>Then <math|x\<cdot\>y=0>

      <item*|<math|x\<less\>0\<wedge\>y=\<infty\>>>Then
      <math|x\<cdot\>y=-\<infty\>>

      <item*|<math|0\<less\>x\<wedge\>y=\<infty\>>>Then
      <math|x\<cdot\>y=\<infty\>>

      <item*|<math|x\<less\>0\<wedge\>y=-\<infty\>>>Then
      <math|x\<cdot\>y=\<infty\>>

      <item*|<math|0\<less\>x\<wedge\>y=-\<infty\>>>Then
      <math|x\<cdot\>y=-\<infty\>>

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>Then
      <math|x\<cdot\>y=\<infty\>>

      <item*|<math|x=\<infty\>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>Then
      <math|x\<cdot\>y=-\<infty\>>

      <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>Then
      <math|x\<cdot\>y=x\<cdot\><rsub|\<bbb-R\>>y>

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
      <math|x\<cdot\>y=-\<infty\>>

      <item*|<math|x=\<infty\>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
      <math|x\<cdot\>y=\<infty\>>

      <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
      <math|x\<cdot\>y=x\<cdot\><rsub|\<bbb-R\>>y>
    </description>

    where <math|x\<cdot\><rsub|\<bbb-R\>>y> is the product in
    <math|\<bbb-R\>>.

    <\note>
      In contrast with the sum the product in
      <math|<wide|\<bbb-R\>|\<wide-bar\>>> is defined
      <math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>.
    </note>
  </definition>

  Next we define the inverse operator.

  <\definition>
    The inverse operator <math|<around*|(|\<cdot\>|)><rsup|-1>> is defined by\ 

    <\equation*>
      <around*|(|\<cdot\>|)><rsup|-1>:<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|0|}>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      >by <around*|(|\<cdot\>|)><rsup|-1>=<choice|<tformat|<table|<row|<cell|0<text|
      if >x=-\<infty\>>>|<row|<cell|0<text| if
      >x=\<infty\>>>|<row|<cell|x<rsup|-1><text| if >x\<in\>\<bbb-R\><text|
      where <math|x<rsup|-1><text| is the inverse defined in
      >\<bbb-R\>>>>>>>>
    </equation*>

    <\notation>
      As usually we note <math|<around*|(|\<cdot\>|)><rsup|-1><around*|(|x|)>>
      as <math|x<rsup|-1>>, <math|1/x> or <math|<frac|1|x>>
    </notation>
  </definition>

  <\note>
    In contrast with real numbers where for
    <math|x\<in\>\<bbb-R\>\\<around*|{|0|}>> we have
    <math|x\<cdot\><frac|1|x>=1=<frac|1|x>\<cdot\>x> this is not the case for
    <math|x=-\<infty\>> and <math|x=\<infty\>> because we have
    <math|\<infty\>\<cdot\><frac|1|\<infty\>>=\<infty\>\<cdot\>0=0> and
    <math|*<around*|(|-\<infty\>|)>\<cdot\><frac|1|-\<infty\>>=<around*|(|-\<infty\>|)>\<cdot\>0=0>.
  </note>

  <\definition>
    The negate operator <math|-> is defined by\ 

    <\equation*>
      <around*|(|-|)>:<wide|\<bbb-R\>|\<wide-bar\>>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      where ><around*|(|-|)><around*|(|x|)>\<equallim\><rsub|<text|notation>>-x\<equallim\><rsub|defined><around*|(|-1|)>\<cdot\>x
    </equation*>

    So as <math|<around*|(|-1|)>\<in\><around*|]|0,\<infty\>|[>> we have that\ 

    <\equation*>
      -x=<choice|<tformat|<table|<row|<cell|\<infty\><text| if
      >x=-\<infty\>>>|<row|<cell|-\<infty\><text| if
      >x=\<infty\>>>|<row|<cell|<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>x<text|
      if >x\<in\>\<bbb-R\>>>>>>
    </equation*>

    \;
  </definition>

  As the sum is not defined for every <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
  <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,+|\<rangle\>>> is
  not a group however if we restrict ourselves to non negative numbers then
  we have a Abelian semi group which allows us to work with generalized sums
  [see section: <reference|section sums and products>].

  <\definition>
    <label|extended positive and non negative
    numbers><index|<math|<wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|+>>><index|<math|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>>The
    set of positive extended real numbers noted as
    <math|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+>> and the set of non negative
    extended real numbers noted as <math|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>
    are defined by\ 

    <\equation*>
      <wide|\<bbb-R\>|\<wide-bar\>><rsup|+>=<around*|]|0,\<infty\>|]>=<around*|{|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\|0\<less\>x|}>
    </equation*>

    and\ 

    <\equation*>
      <wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>=<around*|[|0,\<infty\>|]>=<around*|{|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\|0\<leqslant\>x|}>
    </equation*>
  </definition>

  <\theorem>
    <label|extended abelian semi group><index|<math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>,+|\<rangle\>>>><math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>,+|\<rangle\>>>
    is a Abelian semi-group with neutral element <math|0\<in\>\<bbb-R\>>
    where <math|+> is the restriction to <math|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>
    of the sum defined in [definition: <reference|extended sum>].
  </theorem>

  <\proof>
    First for <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>
    we have <math|0\<leqslant\>x\<wedge\>0\<leqslant\>y> so that
    <math|0\<leqslant\>y\<equallim\><rsub|<text|[note: <reference|extended
    neutral element>]>>0+y<below|\<leqslant\>|<text|[theorem:
    <reference|extended x\<less\>=y then x+z\<less\>=y+z>]>>x+y> proving that
    <math|x+y\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>. Hence\ 

    <\equation*>
      +:<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>\<times\><wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0><text|
      defined by >+<around*|(|x,y|)>\<in\>x+y
    </equation*>

    is a well defined function. Next we need to prove the Abelian semi-group
    axioms:\ 

    <\description>
      <item*|neutral element>This was proved in [note: <reference|extended
      neutral element>].

      <item*|associativity>Let <math|x,y,z\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>
      then we have as <math|-\<infty\>\<nin\><wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>
      [because <math|-\<infty\>\<less\>0>] that

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        <math|x+<around*|(|y+z|)>=x+<rsub|\<bbb-R\>><around*|(|y+<rsub|\<bbb-R\>>z|)>=<around*|(|x+<rsub|\<bbb-R\>>y|)>+<rsub|\<bbb-R\>>z=<around*|(|x+y|)>+z>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>Then

        <\equation*>
          x+<around*|(|y+z|)>=\<infty\>+<around*|(|y+z|)>=\<infty\>=\<infty\>+z=<around*|(|x+\<infty\>|)>+z=<around*|(|x+y|)>+z
        </equation*>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>Then\ 

        <\equation*>
          x+<around*|(|y+y|)>=x+*<around*|(|\<infty\>+z|)>=x+\<infty\>=\<infty\>+z=<around*|(|x+\<infty\>|)>+z=<around*|(|x+y|)>+z
        </equation*>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>Then\ 

        <\equation*>
          x+<around*|(|y+z|)>=\<infty\>+<around*|(|y+z|)>=\<infty\>=\<infty\>+z=<around*|(|x+y|)>+z
        </equation*>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>Then\ 

        <\equation*>
          x+<around*|(|y+z|)>=x+<around*|(|y+\<infty\>|)>=x+\<infty\>=\<infty\>=<around*|(|x+y|)>+\<infty\>=<around*|(|x+y|)>+z
        </equation*>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>Then\ 

        <\equation*>
          x+<around*|(|y+z|)>=\<infty\>+<around*|(|y+z|)>=\<infty\>=<around*|(|x+y|)>+\<infty\>=<around*|(|x+y|)>+z
        </equation*>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>Then\ 

        <\equation*>
          x+<around*|(|y+z|)>=x+<around*|(|\<infty\>+\<infty\>|)>=x+\<infty\>=\<infty\>=<around*|(|x+y|)>+\<infty\>=<around*|(|x+y|)>+z
        </equation*>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>Then\ 

        <\equation*>
          x+<around*|(|y+z|)>=x+<around*|(|\<infty\>+\<infty\>|)>=x+\<infty\>=\<infty\>=<around*|(|x+y|)>+\<infty\>=<around*|(|x+y|)>+z
        </equation*>
      </description>

      So in all cases we have <math|x+<around*|(|y+z|)>=<around*|(|x+y|)>+z>.

      <item*|commutativity>Let <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>
      then we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|x+y=x+<rsub|\<bbb-R\>>y=y+<rsub|\<bbb-R\>>x=y+x>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|x+y=\<infty\>+y=\<infty\>=y+\<infty\>=y+x>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|x+y=x+\<infty\>=\<infty\>=\<infty\>+x=y+x>.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x+y=\<infty\>+\<infty\>=y+x>.
      </description>

      So in all valid cases we have <math|x+y=y+x>.
    </description>
  </proof>

  We have to be very careful if we combine sums and inequalities on
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> the reasoning that works in
  <math|\<bbb-R\>> does not work always in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>. For example if <math|x=10,y=4> and
  <math|z=\<infty\>> then <math|x+z=y+z=\<infty\>> but <math|x\<neq\>y>, also
  we have that <math|x+z\<leqslant\>y+z> but <math|x\<nleqslant\>y>. The
  following theorems shows what is possible.

  <\theorem>
    <label|extended 0\<less\>=x and 0\<less\>=y then
    x\<less\>=x-y\<less\>=x>Let <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    be such that <math|0\<leqslant\>x\<wedge\>0\<leqslant\>y> and one of
    <math|x,y> is finite [so that <math|x-y> is well defined] then
    <math|x-y\<leqslant\>x>
  </theorem>

  <\proof>
    As either <math|x> or <math|y> are finite we have to consider two cases:\ 

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>>>then for <math|y> we have either:

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>then by the properties of the real
        numbers we have <math|x-y\<leqslant\>x>

        <item*|<math|y=\<infty\>>>then <math|x-y=x+<around*|(|-y|)>=x+<around*|(|-\<infty\>|)>=-\<infty\>\<less\>x>
        so that <math|x-y\<leqslant\>y>
      </description>

      <item*|<math|y\<in\>\<bbb-R\>>>then for <math|x> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then by the properties of the real
        numbers we have <math|x-y\<leqslant\>x>

        <item*|<math|x=\<infty\>>>then <math|x-y=x+<around*|(|-y|)>=\<infty\>\<leqslant\>\<infty\>=x>
        giving <math|x-y\<leqslant\>x>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|extended x+z=y+z=\<gtr\>x-y>If
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> and <math|z\<in\>\<bbb-R\>>
    [so that <math|x+z> and <math|y+z> are well defined] then we have\ 

    <\enumerate>
      <item>if <math|x+z=y+z> we have <math|x=y>

      <item>if <math|x+z\<leqslant\>y+z> we have <math|x\<leqslant\>y>

      <item>if <math|x+z\<less\>y+z> we have <math|x\<less\>y>

      <item>if <math|x+z=y> we have <math|x=y-z\<equallim\><rsub|def>y+<around*|(|-z|)>>
      [where <math|y-z> is well defined]

      <item>if <math|x+z\<leqslant\>y> we have
      <math|x\<leqslant\>y-z\<equallim\><rsub|def>y+<around*|(|-z|)>> [where
      <math|y-z> is well defined]

      <item>if <math|x+z\<less\>y> we have
      <math|x\<less\>y-x\<equallim\><rsub|def>y+<around*|(|-z|)>> [where
      <math|y-z> is well defined]

      <item>if <math|x\<leqslant\>y+z> we have
      <math|x+<around*|(|-z|)>\<leqslant\>y>

      <item>if <math|x\<less\>y+z> we have <math|x+<around*|(|-z|)>\<less\>y>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|x,y> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then using
        the properties of the real numbers we have <math|x=y>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x+z=y+z\<in\>\<bbb-R\>> which as
        <math|\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|-\<infty\>=x+z=y+z\<in\>\<bbb-R\>> which as
        <math|-\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|\<infty\>=y+z=x+z\<in\>\<bbb-R\>> which as
        <math|\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then <math|x=y>.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|-\<infty\>=x+z=y+z=\<infty\>> which as
        <math|-\<infty\>\<neq\>\<infty\>> is not a valid case.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>=y+z=x+z\<in\>\<bbb-R\>> which as
        <math|-\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|\<infty\>=x+z=y+z=-\<infty\>> which as
        <math|-\<infty\>\<neq\>\<infty\>> is not a valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then <math|x=y>
      </description>

      So in all valid cases we have <math|x=y>.

      <item>For <math|x,y> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then using
        the properties of the real numbers we have <math|x\<leqslant\>y>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x+z\<leqslant\>y+z\<in\>\<bbb-R\>> which as
        <math|y+z\<less\>\<infty\>> proves that
        <math|<rigid|\<infty\>=x+y\<subset\>\<bbb-R\>>> which as
        <math|\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|x=-\<infty\>\<leqslant\>y>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|x\<leqslant\>\<infty\>=y>,

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x=\<infty\>=y> so that <math|x\<leqslant\>y>.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x=-\<infty\>\<leqslant\>\<infty\>=y>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>As
        <math|x+z\<in\>\<bbb-R\>> we have
        <math|-\<infty\>\<leqslant\>x+z\<leqslant\>y+z\<leqslant\>-\<infty\>>
        so that <math|<rigid|-\<infty\>=x+z\<in\>\<bbb-R\>>> which as
        <math|-\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>As
        <math|\<infty\>=x+z\<leqslant\>y+z=-\<infty\>> and
        <math|-\<infty\>\<leqslant\>\<infty\>> we would have
        <math|-\<infty\>=\<infty\>> so this is not a valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|x=-\<infty\>=y> so that <math|x\<leqslant\>y>.
      </description>

      So in all valid cases we have <math|x\<leqslant\>y>.

      <item>For <math|x,y> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then using
        the properties of the real numbers we have <math|x\<leqslant\>y>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x+z\<less\>y+z\<in\>\<bbb-R\>> which as
        <math|y+z\<less\>\<infty\>> proves that
        <math|<rigid|\<infty\>=x+y\<subset\>\<bbb-R\>>> which as
        <math|\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|x=-\<infty\>\<less\>y>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|x\<less\>\<infty\>=y>.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|\<infty\>=x+z\<less\>y+z=\<infty\>> so this case does not
        apply.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x=-\<infty\>\<less\>\<infty\>=y>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
        <math|x+z\<in\>\<bbb-R\>> so that
        <math|-\<infty\>\<less\>x+z\<less\>y+z=-\<infty\>> so this case does
        not apply.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|\<infty\>=x+z\<less\>y+z-\<infty\>> so this case does not
        apply.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>=x+z\<less\>y+z=-\<infty\>> so this case does not
        apply.
      </description>

      So in all valid cases we have <math|x\<less\>y>.

      <item>For <math|x,y> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then using
        the properties of the real numbers we have <math|x=y-z>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x+z=y\<in\>\<bbb-R\>> which as
        <math|\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|-\<infty\>=x+z=y\<in\>\<bbb-R\>> which as
        <math|-\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|\<infty\>=y=x+z\<in\>\<bbb-R\>> which as
        <math|\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|y-z=\<infty\>=x>.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|-\<infty\>=x+z=y=\<infty\>> which as
        <math|-\<infty\>\<neq\>\<infty\>> is not a valid case.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>=y=x+z\<in\>\<bbb-R\>> which as
        <math|-\<infty\>\<nin\>\<bbb-R\>> is not a valid case.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|\<infty\>=x+z=y=-\<infty\>> which as
        <math|-\<infty\>\<neq\>\<infty\>> is not a valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|y-z=-\<infty\>=x> so that <math|x=y-z>.
      </description>

      So in all valid cases we have <math|x=y-z>.

      <item>For <math|x,y> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then using
        the properties of the real numbers we have <math|x\<leqslant\>y-z>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x+z\<leqslant\>y\<leqslant\>\<infty\>> [as
        <math|y\<in\>\<bbb-R\>>] so <math|\<infty\>=y\<in\>\<bbb-R\>> which
        as <math|\<infty\>\<nin\>\<bbb-R\>> is not a valid case.\ 

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|x=-\<infty\>\<less\>y-z> so that <math|x\<leqslant\>y-z>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|x\<leqslant\>\<infty\>=y-z>.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|y-z=\<infty\>=x> so that <math|x\<leqslant\>y-z>.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x=-\<infty\>\<less\>\<infty\>=y-z> so that
        <math|x\<leqslant\>y-z>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>As
        <math|x+z\<in\>\<bbb-R\>> we have
        <math|-\<infty\>\<less\>x+z\<leqslant\>y=-\<infty\>> so this is not a
        valid case.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|\<infty\>=x+z\<leqslant\>y=-\<infty\>\<less\>\<infty\>> so this
        is not a valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|x=-\<infty\>=y-z> so that <math|x\<leqslant\>y-z>.
      </description>

      So in all valid cases we have <math|x\<leqslant\>y-z>.

      <item>For <math|x,y> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then using
        the properties of the real numbers we have <math|x\<less\>y-z>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x+z\<less\>y\<leqslant\>\<infty\>> [as
        <math|y\<in\>\<bbb-R\>>] so this case is not valid.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|x=-\<infty\>\<less\>y-z>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|x\<less\>\<infty\>=y-z> so that <math|x\<less\>y-z>.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|\<infty\>=x+z\<less\>y=\<infty\>> so this case is not valid.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x=-\<infty\>\<less\>\<infty\>=y-z> so that <math|x\<less\>y-z>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>As
        <math|x\<in\>\<bbb-R\>> we have <math|-\<infty\>\<less\>x+z\<less\>y=-\<infty\>>
        so this case is not valid.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>\<less\>\<infty\>=x+z\<less\>y=-\<infty\>> so this
        case is not valid.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>=x+z\<less\>y=-\<infty\>> so this case is not valid.
      </description>

      So in all valid cases we have<math|x\<less\>y-z>.

      <item>For <math|x,y> we have either:\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then using
        the properties of the real numbers we have <math|x-z\<leqslant\>y>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x\<leqslant\>y+z\<less\>\<infty\>> [as
        <math|x+z\<in\>\<bbb-R\>>] so this case is not valid.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|x-z=-\<infty\>\<less\>y> so that <math|x-z\<leqslant\>y>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|x-z\<less\>\<infty\>=y>.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x-z=\<infty\>=y> so that <math|x-z\<leqslant\>y>.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x-z=-\<infty\>\<less\>\<infty\>=y> so that
        <math|x-z\<leqslant\>y>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>\<less\>x\<leqslant\>y+z=-\<infty\>> so this case is
        not valid.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>\<less\>\<infty\>=x\<leqslant\>y+z=-\<infty\>> so
        this case is not valid.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>=x\<leqslant\>y+z=-\<infty\>> so this case is not
        valid.
      </description>

      So in all valid cases we have <math|x-z\<leqslant\>y>.

      <item>For <math|x,y> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then using
        the properties of the real numbers we have <math|x-z\<less\>y>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x\<less\>y+z\<less\>\<infty\>> [as
        <math|x+z\<in\>\<bbb-R\>>] so this case is not valid.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|x-z=-\<infty\>\<less\>y>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|x-z\<less\>\<infty\>>.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|\<infty\>=x\<less\>y+z=\<infty\>> so this case is not valid.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x-z=-\<infty\>\<less\>\<infty\>=y>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
        <math|x\<less\>\<infty\>\<less\>y+z=-\<infty\>\<less\>\<infty\>> so
        this case is not valid.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>\<less\>\<infty\>=x\<less\>y+z=-\<infty\>> so this
        case is not valid.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|-\<infty\>=x\<less\>y+z=-\<infty\>> so this case is not valid.
      </description>

      So in all valid cases we have <math|x-z\<less\>y>.
    </enumerate>
  </proof>

  <\theorem>
    <label|extended x\<less\>=y then x+z\<less\>=y+z>Let

    <\equation*>
      <around*|(|x,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
    </equation*>

    and

    <\equation*>
      <around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
    </equation*>

    [so that <math|x+z> and <math|y+z> are well defined] then we have:

    <\enumerate>
      <item>If <math|x\<leqslant\>y> then <math|x+z\<leqslant\>y+z>.

      <item>If <math|0\<leqslant\>x> then <math|z\<leqslant\>z+x>

      <item>If <math|x\<less\>y> and <math|z\<in\>\<bbb-R\>> then
      <math|x+z\<less\>y+z>
    </enumerate>

    <\note>
      The condition <math|z\<in\>\<bbb-R\>> in <math|<around*|(|3|)>> is
      necessary, for example if <math|x=2>, <math|y=3> and <math|z=\<infty\>>
      then <math|x\<less\>y> but <math|x+z=\<infty\>=y+z> so that
      <math|x+z\<nless\>y+z>.
    </note>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have the following cases to check for <math|x,y,z>:\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        using the properties of <math|\<bbb-R\>> we have
        <math|x+z\<leqslant\>y+z>.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        <math|x+y=-\<infty\>\<less\>y+z> [as <math|y+z\<in\>\<bbb-R\>>].

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        <math|-\<infty\>\<less\>\<infty\>=x\<leqslant\>y\<less\>\<infty\>> so
        this is not a valid case.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        <math|-\<infty\>\<less\>x\<leqslant\>y=-\<infty\>> so this is not a
        valid case.

        <item*|<math|x\<in\>-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        <math|x+z=-\<infty\>=y+z> so that <math|x+z\<leqslant\>y+z>

        <item*|<math|x\<in\>\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        <math|\<infty\>=x\<leqslant\>y=-\<infty\>\<less\>\<infty\>> so this
        is not a valid case.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        as <math|x+z\<in\>\<bbb-R\>> we have <math|x+z\<less\>\<infty\>=y+z>.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        <math|x+z=-\<infty\>\<less\>\<infty\>=y+z>,

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>Then
        <math|x+z=\<infty\>=y+z> so that <math|x+y\<leqslant\>y+z>.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>Then
        <math|x+z=-\<infty\>=y+z> so that <math|>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>Then
        <math|x+z=-\<infty\>=y+z> so that <math|x+y\<leqslant\>y+z>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|x,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>Then
        <math|-\<infty\>\<less\>x\<leqslant\>y=-\<infty\>> so this is not a
        valid case.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>Then
        <math|x+z=-\<infty\>=y+z> so that <math|x+z\<leqslant\>y+z>.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|x,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|x,z|)>,<around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>Then
        <math|x+z=\<infty\>=y+z> so that <math|x+z\<leqslant\>y+z>.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|x,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>Then
        <math|\<infty\>=x\<less\>y\<less\>\<infty\>> so this is not a valid
        case.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|x,z|)><around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|y,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>Then
        <math|x+z=\<infty\>-y+z> so that <math|x+z\<leqslant\>y+z>.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>This
        cases is excluded because

        <\equation*>
          <around*|(|x,z|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>.
        </equation*>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>Then
        <math|x+z=\<infty\>=y+z> so that <math|x+y\<leqslant\>y+z>.
      </description>

      Hence in all valid cases we have <math|x+y\<leqslant\>y+z>.

      <item>As <math|0\<leqslant\>x> we have
      <math|z=0+z<below|\<leqslant\>|<around*|(|1|)>>x+z>

      <item>As <math|x\<less\>y> implies <math|x\<leqslant\>y> it follows
      from (1) that\ 

      <\equation*>
        x+z\<leqslant\>y+z
      </equation*>

      Assume that <math|x+z=y+z> then, as <math|z\<in\>\<bbb-R\>>, it follows
      from [theorem: <reference|extended x+z=y+z=\<gtr\>x-y>(1)] that
      <math|x=y> contradicting <math|x\<less\>y>. Hence the assumption is
      wrong and <math|x+y\<neq\>y+z> so that\ 

      <\equation*>
        x+y\<less\>y+z
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended 0\<less\>x and 0\<less\>=y then 0\<less\>x+y>Let
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with
    <math|0\<less\>x\<wedge\>0\<leqslant\>y> then <math|0\<less\>x+y>
  </theorem>

  <\proof>
    As <math|0\<less\>x> and <math|0\<leqslant\>y> then we have that
    <math|x\<neq\>-\<infty\>\<neq\>y> so that for <math|x,y> we have either:\ 

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then by the
      properties of the real numbers we have <math|0\<less\>x+y>.

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
      <math|0\<less\>\<infty\>=x+y>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
      <math|0\<less\>\<infty\>=x+y>

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
      <math|0\<less\>\<infty\>=x+y>
    </description>
  </proof>

  <\theorem>
    <label|extended 0\<less\>=y and z=x+y then x\<less\>=z>Let
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|0\<leqslant\>x\<wedge\>0\<leqslant\>y\<wedge\>z=x+y> then
    <math|x\<leqslant\>z>.
  </theorem>

  <\proof>
    As <math|0\<leqslant\>x> and <math|0\<leqslant\>y> then we have that
    <math|x\<neq\>-\<infty\>\<neq\>y> so that for <math|x,y> we have either:\ 

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then by the
      properties of the real numbers we have
      <math|x\<leqslant\>x+y=z><math|>.

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
      <math|x=\<infty\>=\<infty\>+y=z>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
      <math|x\<less\>\<infty\>=x+\<infty\>=x+y=z>.

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
      <math|x=\<infty\>=x+y=z>.
    </description>
  </proof>

  <\theorem>
    <label|extended x.y>Let <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have:\ 

    <\enumerate>
      <item>If <math|0\<less\>x\<wedge\>0\<less\>y> then
      <math|0\<less\>x\<cdot\>y>.

      <item>If <math|x\<less\>0\<wedge\>0\<less\>y> then
      <math|x\<cdot\>y\<less\>0>.

      <item>If <math|0\<less\>x\<wedge\>y\<less\>0> then
      <math|x\<cdot\>y\<less\>0>.

      <item>If <math|x\<less\>0\<wedge\>y\<less\>0> then
      <math|0\<less\>x\<cdot\>y>.

      <item>If <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with
      <math|0\<less\>x\<leqslant\>y> then
      <math|<frac|1|y>\<leqslant\><frac|1|x>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|0\<less\>x\<wedge\>0\<less\>y> we have either:\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\><rsup|+>\<wedge\>y\<in\>\<bbb-R\><rsup|+>>>Then
        by the properties of the real numbers we have
        <math|0\<less\>x\<cdot\>y>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsup|+>>>Then
        <math|0\<less\>\<infty\>=\<infty\>\<cdot\>y=x\<cdot\>y>.

        <item*|<math|x=\<bbb-R\><rsup|+>\<wedge\>y=\<infty\>>>Then
        <math|0\<less\>\<infty\>=x\<cdot\>\<infty\>=x\<cdot\>y>.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|0\<less\>\<infty\>=\<infty\>\<cdot\>\<infty\>=x\<cdot\>y>.
      </description>

      <item>For <math|x\<less\>0\<wedge\>0\<less\>y> we have either:\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\><rsup|->\<wedge\>y\<in\>\<bbb-R\><rsup|+>>>Then
        by the properties of the real numbers we have
        <math|x\<cdot\>y\<less\>0>.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsup|+>>>Then
        <math|x\<cdot\>y=-\<infty\>\<less\>0>.

        <item*|<math|x\<in\>\<bbb-R\><rsup|->\<wedge\>y=\<infty\>>>Then
        <math|x\<cdot\>y=-\<infty\>\<less\>0>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|x\<cdot\>y=-\<infty\>\<less\>0>
      </description>

      <item>For <math|0\<less\>x\<wedge\>y\<less\>0> we have either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\><rsup|+>\<wedge\>y\<in\>\<bbb-R\><rsup|->>>Then
        by the properties of the real numbers <math|x\<cdot\>y\<less\>0>.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsup|->>>Then
        <math|x\<cdot\>y=-\<infty\>\<less\>0>.

        <item*|<math|x\<in\>\<bbb-R\><rsup|+>\<wedge\>y=-\<infty\>>>Then
        <math|x\<cdot\>y=-\<infty\>\<less\>0>.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|x\<cdot\>y=-\<infty\>\<less\>0>.
      </description>

      <item>For <math|x\<less\>0\<wedge\>y\<less\>0> we have either:\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\><rsup|->\<wedge\>y\<in\>\<bbb-R\><rsup|->>>Then
        by the properties of the real numbers <math|0\<less\>x\<cdot\>y>.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsup|->>>Then
        <math|0\<less\>\<infty\>=x\<cdot\>y>.

        <item*|<math|x\<in\>\<bbb-R\><rsup|->\<wedge\>y=-\<infty\>>>Then
        <math|0\<less\>\<infty\>=x\<cdot\>y>.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|0\<less\>\<infty\>=x\<cdot\>y>.
      </description>

      <item>If <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with
      <math|0\<less\>x\<leqslant\>y> we have for <math|x> either:\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\><rsup|+>>>As <math|x\<leqslant\>y> we
        have for <math|y> either:

        <\description>
          <item*|<math|y\<in\>\<bbb-R\><rsup|+>>>Then by the properties of
          the real numbers we have <math|<frac|1|y>\<leqslant\><frac|1|x>>.

          <item*|<math|y=\<infty\>>>Then <math|<frac|1|y>=<frac|1|\<infty\>>=0\<less\><frac|1|x>>.
        </description>

        <item*|<math|x=\<infty\>>>Then <math|y=\<infty\>> so that
        <math|<frac|1|y>=<frac|1|\<infty\>>=<frac|1|x>> so that
        <math|<frac|1|y>\<leqslant\><frac|1|x>>.
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|extended negate>If <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have:

    <\enumerate>
      <item>If <math|0\<less\>x> then <math|-x\<less\>0>

      <item>If <math|0\<leqslant\>x> then <math|-x\<leqslant\>0>

      <item>If <math|x\<less\>0> then <math|0\<less\>-x>

      <item>If <math|x\<leqslant\>0> then <math|0\<leqslant\>-x>
    </enumerate>
  </corollary>

  <\proof>
    As <math|-1\<less\>0> we have:

    <\enumerate>
      <item><math|-x=<around*|(|-1|)>\<cdot\>x<below|\<less\>|<text|[theorem:
      <reference|extended x.y>]>><around*|(|-1|)>\<cdot\>0=0>

      <item><math|-x=<around*|(|-1|)>\<cdot\>x<below|\<leqslant\>|<text|[theorem:
      <reference|extended x.y>]>><around*|(|-1|)>\<cdot\>0=0>

      <item><math|-x=<around*|(|-1|)>\<cdot\>x<below|\<gtr\>|<text|[theorem:
      <reference|extended x.y>]>><around*|(|-1|)>\<cdot\>0=0>

      <item><math|-x=<around*|(|-1|)>\<cdot\>x<below|\<geqslant\>|<text|[theorem:
      <reference|extended x.y>]>><around*|(|-1|)>\<cdot\>0=0>
    </enumerate>
  </proof>

  Although the product <math|x\<cdot\>y> is defined for every
  <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
  <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<cdot\>|\<rangle\>>>
  is not a group, for example <math|0> has still no inverse. However
  <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<cdot\>|\<rangle\>>>
  is a Abelian semi group.

  <\theorem>
    <label|extended abelian semi group (1)><math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<cdot\>|\<rangle\>>>
    is a Abelian semi-group with neutral element <math|1>
  </theorem>

  <\proof>
    We have to prove the semi-group axioms for
    <math|<around*|(|\<cdot\>|)>:<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>.\ 

    <\description>
      <item*|associativity>Let <math|x,y,z> then we have either:\ 

      <\description>
        <item*|<math|x=0\<vee\>y=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=0\<cdot\><around*|(|y\<cdot\>z|)>=0=0\<cdot\>z=<around*|(|x\<cdot\>0|)>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z>

        <item*|<math|x\<less\>0\<wedge\>y=\<infty\>>>Then for <math|z> we
        have either:

        <\description>
          <item*|<math|z=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|y\<cdot\>0|)>=x\<cdot\>0=0=<around*|(|x\<cdot\>y|)>\<cdot\>0=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|z\<less\>0>>Then

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|-\<infty\>|)>=<around*|(|-\<infty\>|)>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=<around*|(|-\<infty\>|)>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>

          <item*|<math|0\<less\>z>>Then\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>\<infty\>=-\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>
        </description>

        <item*|<math|0\<less\>x\<wedge\>y=\<infty\>>>Then for <math|z> we
        have either:\ 

        <\description>
          <item*|<math|z=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|y\<cdot\>0|)>=x\<cdot\>0=0=<around*|(|x\<cdot\>y|)>\<cdot\>0=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|z\<less\>0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|0\<less\>z>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>\<infty\>=\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z>
        </description>

        <item*|<math|x\<less\>0\<wedge\>y=-\<infty\>>>Then for <math|z> we
        have either:\ 

        <\description>
          <item*|<math|z=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>0=0=<around*|(|x\<cdot\>y|)>\<cdot\>0=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|z\<less\>0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>\<infty\>=-\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|0\<less\>z>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z>
        </description>

        <item*|<math|0\<less\>x\<wedge\>y=-\<infty\>>>Then for <math|z> we
        have either:\ 

        <\description>
          <item*|<math|z=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>0=0=<around*|(|x\<cdot\>y|)>\<cdot\>0=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|z\<less\>0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>\<infty\>=\<infty\>=<around*|(|-\<infty\>|)>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|0\<less\>z>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=<around*|(|-\<infty\>|)>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z>
        </description>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>for
        <math|z> we have either:\ 

        <\description>
          <item*|<math|z=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>0=0=<around*|(|x\<cdot\>y|)>\<cdot\>0=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|z\<less\>0>>Then by [theorem: <reference|extended
          x.y>] <math|0\<less\>y\<cdot\>z> so that

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>

          <item*|<math|0\<less\>z>>Then by [theorem: <reference|extended
          x.y>] <math|y\<cdot\>z\<less\>0> so that\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>
        </description>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>Then
        for <math|z> we have either\ 

        <\description>
          <item*|<math|z=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>0=0=<around*|(|x\<cdot\>y|)>\<cdot\>0=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|z\<less\>0>>Then by [theorem: <reference|extended
          x.y>] <math|0\<less\>y\<cdot\>z> so that\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>=<around*|(|-\<infty\>|)>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>

          <item*|<math|0\<less\>z>>Then by [theorem: <reference|extended
          x.y>] <math|y\<cdot\>z\<less\>0> so that

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>=<around*|(|-\<infty\>|)>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>
        </description>

        <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>Then
        for <math|z> we have either:\ 

        <\description>
          <item*|<math|z=\<infty\>>>Then for <math|x> we have either:\ 

          <\description>
            <item*|<math|x\<less\>0>>Then by [theorem: <reference|extended
            x.y>] <math|0\<less\>x\<cdot\>y> so that

            <\equation*>
              x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\>\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\>z
            </equation*>

            <item*|<math|0\<less\>x>>Then by \ [theorem: <reference|extended
            x.y>] <math|x\<cdot\>y\<less\>0> so that\ 

            <\equation*>
              x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\>\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\>z
            </equation*>
          </description>

          <item*|<math|z=-\<infty\>>>Then for <math|x> we have either:

          <\description>
            <item*|<math|x\<less\>0>>Then by [theorem: <reference|extended
            x.y>] <math|0\<less\>x\<cdot\>y> so that

            <\equation*>
              x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>\<infty\>=-\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\><around*|(|-\<infty\>|)>=<around*|(|x\<cdot\>y|)>\<cdot\>z
            </equation*>

            <item*|<math|0\<less\>x>>Then by [theorem: <reference|extended
            x.y>] <math|x\<cdot\>y\<less\>0> so that

            <\equation*>
              x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>\<infty\>=\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\><around*|(|-\<infty\>|)>=<around*|(|x\<cdot\>y|)>\<cdot\>z
            </equation*>
          </description>

          <item*|<math|z\<in\>\<bbb-R\>>>Then\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><rsub|\|\<bbb-R\>><around*|(|y\<cdot\><rsub|\<bbb-R\>>z|)>=<around*|(|x\<cdot\><rsub|\<bbb-R\>>y|)>\<cdot\><rsub|\<bbb-R\>>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>
        </description>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
        for <math|z> we have either:

        <\description>
          <item*|<math|z=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>0=0=<around*|(|x\<cdot\>y|)>\<cdot\>0=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|z\<less\>0>>Then by [theorem: <reference|extended
          x.y>] <math|y\<cdot\>z\<less\>0> so that\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>=<around*|(|-\<infty\>|)>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>

          <item*|<math|0\<less\>z>>Then by [theorem: <reference|extended
          x.y>] <math|0\<less\>y\<cdot\>z> so that\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>=-\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>
        </description>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
        for <math|z> we have either:

        <\description>
          <item*|<math|z=0>>Then <math|x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>0=0=<around*|(|x\<cdot\>y|)>\<cdot\>0=<around*|(|x\<cdot\>y|)>\<cdot\>z>

          <item*|<math|z\<less\>0>>Then by [theorem: <reference|extended
          x.y>] <math|y\<cdot\>z\<less\>0> so that\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>

          <item*|<math|0\<less\>z>>Then by [theorem: <reference|extended
          x.y>] <math|0\<less\>y\<cdot\>z> so that\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>=\<infty\>\<cdot\>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>
        </description>

        <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
        for <math|z> we have either:\ 

        <\description>
          <item*|<math|z=\<infty\>>>Then for <math|x> we have either:\ 

          <\description>
            <item*|<math|x\<less\>0>>Then by [theorem: <reference|extended
            x.y>] <math|x\<cdot\>y\<less\>0> so that

            <\equation*>
              x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>\<infty\>=-\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\>\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\>z
            </equation*>

            <item*|<math|0\<less\>x>>Then by \ [theorem: <reference|extended
            x.y>] <math|0\<less\>x\<cdot\>y> so that\ 

            <\equation*>
              x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\>\<infty\>=\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\>\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\>z
            </equation*>
          </description>

          <item*|<math|z=-\<infty\>>>Then for <math|x> we have either:

          <\description>
            <item*|<math|x\<less\>0>>Then by [theorem: <reference|extended
            x.y>] <math|x\<cdot\>y\<less\>0> so that

            <\equation*>
              x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\><around*|(|-\<infty\>|)>=<around*|(|x\<cdot\>y|)>\<cdot\>z
            </equation*>

            <item*|<math|0\<less\>x>>Then by [theorem: <reference|extended
            x.y>] <math|0\<less\>x\<cdot\>y> so that

            <\equation*>
              x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=<around*|(|x\<cdot\>y|)>\<cdot\><around*|(|-\<infty\>|)>=<around*|(|x\<cdot\>y|)>\<cdot\>z
            </equation*>
          </description>

          <item*|<math|z\<in\>\<bbb-R\>>>Then\ 

          <\equation*>
            x\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><rsub|\|\<bbb-R\>><around*|(|y\<cdot\><rsub|\<bbb-R\>>z|)>=<around*|(|x\<cdot\><rsub|\<bbb-R\>>y|)>\<cdot\><rsub|\<bbb-R\>>z=<around*|(|x\<cdot\>y|)>\<cdot\>z
          </equation*>
        </description>
      </description>

      So in all cases we have <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

      <item*|neutral element>Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      then we have for <math|x> either:\ 

      <\description>
        <item*|<math|x=\<infty\>>>Then <math|1\<cdot\>\<infty\>=\<infty\>=\<infty\>\<cdot\>1>

        <item*|<math|x=-\<infty\>>>Then <math|1\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=<around*|(|-\<infty\>|)>\<cdot\>1>

        <item*|<math|x\<in\>\<bbb-R\>>>Then
        <math|1\<cdot\>x=1\<cdot\><rsub|\<bbb-R\>>x=x=x\<cdot\><rsub|\<bbb-R\>>1=x\<cdot\>1>
      </description>

      <item*|commutativity>Then for <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      we have either\ 

      <\description>
        <item*|<math|x=0\<vee\>y=0>>Then <math|x\<cdot\>y=0=y\<cdot\>x>

        <item*|<math|x\<less\>0\<wedge\>y=\<infty\>>>Then
        <math|x\<cdot\>y\<equallim\><rsub|def>-\<infty\>> and for <math|x> we
        have either:

        <\description>
          <item*|<math|x=-\<infty\>>>Then
          <math|y\<cdot\>x\<equallim\><rsub|0\<less\>\<infty\>=y>-\<infty\>=x\<cdot\>y>

          <item*|<math|x\<in\><around*|]|-\<infty\>,0|[>>>Then
          <math|y\<cdot\>x=-\<infty\>=x\<cdot\>y>.
        </description>

        <item*|<math|0\<less\>x\<wedge\>y=\<infty\>>>Then
        <math|x\<cdot\>y\<equallim\><rsub|def>\<infty\>> and for <math|x> we
        have either:

        <\description>
          <item*|<math|x=\<infty\>>>Then <math|y\<cdot\>x\<equallim\><rsub|0\<less\>\<infty\>=y>\<infty\>=x\<cdot\>y>.

          <item*|<math|x\<in\><around*|]|0,\<infty\>|[>>>Then
          <math|y\<cdot\>x=\<infty\>=x\<cdot\>y>.
        </description>

        <item*|<math|x\<less\>0\<wedge\>y=-\<infty\>>>Then
        <math|x\<cdot\>y\<equallim\><rsub|def>\<infty\>> and for <math|x> we
        have either:

        <\description>
          <item*|<math|x=-\<infty\>>>Then
          <math|y\<cdot\>x\<equallim\><rsub|y=-\<infty\>\<less\>0>\<infty\>=x\<cdot\>y>.

          <item*|<math|x\<in\><around*|]|-\<infty\>,0|[>>>Then
          <math|y\<cdot\>x=\<infty\>=x\<cdot\>y>.
        </description>

        <item*|<math|0\<less\>x\<wedge\>y=-\<infty\>>>Then
        <math|x\<cdot\>y=-\<infty\>> and for <math|x> we have either:

        <\description>
          <item*|<math|x=\<infty\>>>Then <math|y\<cdot\>x\<equallim\><rsub|y=-\<infty\>\<less\>0>-\<infty\>=x\<cdot\>y>

          <item*|<math|x\<in\><around*|]|0,\<infty\>|[>>>Then
          <math|y\<cdot\>x=-\<infty\>=x\<cdot\>y>
        </description>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>Then
        <math|x\<cdot\>y=\<infty\>\<equallim\><rsub|y\<less\>0>y\<cdot\>x>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>Then
        <math|x\<cdot\>y=-\<infty\>\<equallim\><rsub|y\<less\>0>y\<cdot\>x>

        <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>Then
        <math|x\<cdot\>y=x\<cdot\><rsub|\<bbb-R\>>y=y\<cdot\><rsub|\<bbb-R\>>x=y\<cdot\>x>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
        <math|x\<cdot\>y=-\<infty\>\<equallim\><rsub|0\<less\>y>y\<cdot\>x>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
        <math|x\<cdot\>y=\<infty\>\<equallim\><rsub|0\<less\>y>y\<cdot\>x>

        <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>Then
        <math|><math|x\<cdot\>y=x\<cdot\><rsub|\<bbb-R\>>y=y\<cdot\><rsub|\<bbb-R\>>x=y\<cdot\>x>
      </description>
    </description>
  </proof>

  <\corollary>
    <label|extended -(x.y)>Let <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then <math|-<around*|(|x\<cdot\>y|)>=<around*|(|-x|)>\<cdot\>y=x\<cdot\><around*|(|-y|)>>
  </corollary>

  <\proof>
    We have\ 

    <\equation*>
      -<around*|(|x\<cdot\>y|)>=<around*|(|-1|)>\<cdot\><around*|(|x\<cdot\>y|)>\<equallim\><rsub|<text|[theorem:
      <reference|extended abelian semi group
      (1)>]>><around*|(|<around*|(|-1|)>\<cdot\>x|)>\<cdot\>y=<around*|(|-x|)>\<cdot\>y
    </equation*>

    and\ 

    <\equation*>
      -<around*|(|x\<cdot\>y|)>=<around*|(|-1|)>\<cdot\><around*|(|x\<cdot\>y|)>\<equallim\><rsub|<text|[theorem:
      <reference|extended abelian semi group
      (1)>]>><around*|(|-1|)>\<cdot\><around*|(|y\<cdot\>x|)>\<equallim\><rsub|<text|[theorem:
      <reference|extended abelian semi group
      (1)>]>><around*|(|<around*|(|-1|)>\<cdot\>y|)>\<cdot\>x\<equallim\><rsub|<text|[theorem:
      <reference|extended abelian semi group (1)>]>>x\<cdot\><around*|(|-y|)>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|extended x\<less\>=y then for 0\<less\>=s we have
    s.x\<less\>=s.y>If <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with
    <math|x\<leqslant\>y> then for <math|\<lambda\>\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    we have\ 

    <\enumerate>
      <item>If <math|0\<leqslant\>\<lambda\>> then
      <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>\ 

      <item>If <math|\<lambda\>\<leqslant\>0> then
      <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|0\<leqslant\>\<lambda\>> we have either:\ 

      <\description>
        <item*|<math|\<lambda\>=0>>Then <math|\<lambda\>\<cdot\>x=0\<cdot\>x=0=0\<cdot\>y=\<lambda\>\<cdot\>y>
        so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.

        <item*|<math|\<lambda\>\<in\>\<bbb-R\><rsup|+>>>Then for <math|x> we
        have either:

        <\description>
          <item*|<math|x\<in\>\<bbb-R\>>>Then for <math|y> we have as
          <math|-\<infty\>\<less\>x\<leqslant\>y> that\ 

          <\description>
            <item*|<math|y\<in\>\<bbb-R\>>>Then using [theorem:
            <reference|complex RC order properties>] we have

            <\equation*>
              \<lambda\>\<cdot\>x=\<lambda\>\<cdot\><rsub|\<bbb-R\>>x<below|\<leqslant\><rsub|\<bbb-R\>>|<text|[theorem:
              <reference|complex RC order
              properties>]>>\<lambda\>\<cdot\><rsub|\<bbb-R\>>y=\<lambda\>\<cdot\>y
            </equation*>

            so that\ 

            <\equation*>
              \<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y
            </equation*>

            <item*|<math|y=\<infty\>>>Then
            <math|\<lambda\>\<cdot\>x\<in\>\<bbb-R\>> so that
            <math|\<lambda\>\<cdot\>x\<leqslant\>\<infty\>=\<lambda\>\<cdot\>\<infty\>=\<lambda\>\<cdot\>y>
            so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.
          </description>

          <item*|<math|x=-\<infty\>>>Then for <math|y> we have either:\ 

          <\description>
            <item*|<math|y\<in\>\<bbb-R\>>>Then
            <math|\<lambda\>\<cdot\>y\<in\>\<bbb-R\>> so that
            <math|\<lambda\>\<cdot\>x=\<lambda\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>\<less\>\<lambda\>\<cdot\>y>
            hence <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.

            <item*|<math|y=-\<infty\>>>Then
            <math|\<lambda\>\<cdot\>x=\<lambda\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=\<lambda\>\<cdot\>y>
            so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.

            <item*|<math|y=\<infty\>>>Then
            <math|\<lambda\>\<cdot\>x=\<lambda\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>\<less\>\<infty\>=\<lambda\>\<cdot\>y>
            so that \ <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.
          </description>

          <item*|<math|x=\<infty\>>>Then as <math|x\<leqslant\>y> we have
          that <math|y=\<infty\>> hence <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y>
          so that <math|<rigid|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>>.
          \ 
        </description>

        <item*|<math|\<lambda\>=\<infty\>>>Then for <math|x> we have either:\ 

        <\description>
          <item*|<math|x\<less\>0>>Then for <math|y> we have either:\ 

          <\description>
            <item*|<math|y\<less\>0>>Then
            <math|\<lambda\>\<cdot\>x=-\<infty\>=\<lambda\>\<cdot\>y> so that
            <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.

            <item*|<math|y=0>>Then <math|\<lambda\>\<cdot\>x=-\<infty\>\<less\>0=\<lambda\>\<cdot\>\<infty\>=\<lambda\>\<cdot\>y>
            so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.

            <item*|<math|0\<less\>y>>Then
            <math|\<lambda\>\<cdot\>x=-\<infty\>\<less\>\<infty\>=\<lambda\>\<cdot\>\<infty\>=\<lambda\>\<cdot\>y>
            so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.
          </description>

          <item*|<math|x=0>>Then as <math|x\<leqslant\>y> we have that
          <math|y> is either:\ 

          <\description>
            <item*|<math|y=0>>Then <math|\<lambda\>\<cdot\>x=0=\<lambda\>\<cdot\>y>
            so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.

            <item*|<math|0\<less\>y>>Then
            <math|\<lambda\>\<cdot\>x=0\<less\>\<infty\>=\<lambda\>\<cdot\>y>
            so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.
          </description>

          <item*|<math|0\<less\>x>>Then as <math|x\<leqslant\>y> we have that
          <math|0\<less\>y> so that <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y>
          so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.
        </description>
      </description>

      <item>For <math|\<lambda\>\<leqslant\>0> we have either:\ 

      <\description>
        <item*|<math|\<lambda\>=0>>Then <math|\<lambda\>\<cdot\>x=0\<cdot\>x=0=0\<cdot\>y=\<lambda\>\<cdot\>y>
        so that <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.

        <item*|<math|\<lambda\>\<in\>\<bbb-R\><rsup|->>>Then for <math|x> we
        have either:

        <\description>
          <item*|<math|x\<in\>\<bbb-R\>>>Then for <math|y> we have as
          <math|-\<infty\>\<less\>x\<leqslant\>y> that\ 

          <\description>
            <item*|<math|y\<in\>\<bbb-R\>>>Then using [theorem:
            <reference|complex RC order properties>] we have

            <\equation*>
              \<lambda\>\<cdot\>y=\<lambda\>\<cdot\><rsub|\<bbb-R\>>y<below|\<leqslant\><rsub|\<bbb-R\>>|<text|[theorem:
              <reference|complex RC order
              properties>]>>\<lambda\>\<cdot\><rsub|\<bbb-R\>>x=\<lambda\>\<cdot\>x
            </equation*>

            so that\ 

            <\equation*>
              \<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x
            </equation*>

            <item*|<math|y=\<infty\>>>Then
            <math|\<lambda\>\<cdot\>x\<in\>\<bbb-R\>> so that
            <math|\<lambda\>\<cdot\>y=-\<infty\>\<less\>\<lambda\>\<cdot\>x>
            so that <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.
          </description>

          <item*|<math|x=-\<infty\>>>Then for <math|y> we have either:\ 

          <\description>
            <item*|<math|y\<in\>\<bbb-R\>>>Then
            <math|\<lambda\>\<cdot\>y\<in\>\<bbb-R\>> so that
            <math|\<lambda\>\<cdot\>y\<less\>\<infty\>=\<lambda\>\<cdot\>x>
            hence <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.

            <item*|<math|y=-\<infty\>>>Then
            <math|\<lambda\>\<cdot\>y=\<infty\>=\<lambda\>\<cdot\>x> so that
            <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.

            <item*|<math|y=\<infty\>>>Then
            <math|\<lambda\>\<cdot\>y=-\<infty\>\<less\>\<infty\>=\<lambda\>\<cdot\>x>
            so that \ <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.
          </description>

          <item*|<math|x=\<infty\>>>Then as <math|x\<leqslant\>y> we have
          that <math|y=\<infty\>> hence <math|\<lambda\>\<cdot\>y=-\<infty\>=\<lambda\>\<cdot\>x>
          so that <math|<rigid|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>>.
          \ 
        </description>

        <item*|<math|\<lambda\>=-\<infty\>>>Then for <math|x> we have either:\ 

        <\description>
          <item*|<math|x\<less\>0>>Then for <math|y> we have either:\ 

          <\description>
            <item*|<math|y\<less\>0>>Then
            <math|\<lambda\>\<cdot\>y=\<infty\>=\<lambda\>\<cdot\>x> so that
            <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.

            <item*|<math|y=0>>Then <math|\<lambda\>\<cdot\>y=0\<less\>\<infty\>=\<lambda\>\<cdot\><around*|(|-\<infty\>|)>=\<lambda\>\<cdot\>x>
            so that <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.

            <item*|<math|0\<less\>y>>Then
            <math|\<lambda\>\<cdot\>y=-\<infty\>\<less\>\<infty\>=\<lambda\>\<cdot\>x>
            so that <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.
          </description>

          <item*|<math|x=0>>Then as <math|x\<leqslant\>y> we have that
          <math|y> is either:\ 

          <\description>
            <item*|<math|y=0>>Then <math|\<lambda\>\<cdot\>y=0=\<lambda\>\<cdot\>x>
            so that <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.

            <item*|<math|0\<less\>y>>Then
            <math|\<lambda\>\<cdot\>y=-\<infty\>\<less\>0=\<lambda\>\<cdot\>x>
            so that <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.
          </description>

          <item*|<math|0\<less\>x>>Then as <math|x\<leqslant\>y> we have that
          <math|0\<less\>y> so that <math|\<lambda\>\<cdot\>y=-\<infty\>=\<lambda\>\<cdot\>x>
          so that <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>.
        </description>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|extended negate inequality>If <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have\ 

    <\enumerate>
      <item>If <math|-x=-y> then <math|x=y>

      <item>If <math|x\<leqslant\>y> then <math|-y\<leqslant\>-x>

      <item>If <math|x\<less\>y> then <math|-y\<less\>-x>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended abelian semi group
        (1)>]>>>|<cell|1\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|-1|)>\<cdot\><around*|(|-1|)>|)>\<cdot\>x>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended abelian semi group
        (1)>]>>>|<cell|<around*|(|-1|)>\<cdot\><around*|(|<around*|(|-1|)>\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)>\<cdot\><around*|(|-x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)>\<cdot\><around*|(|-y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)>\<cdot\><around*|(|<around*|(|-1|)>\<cdot\>y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended abelian semi group
        (1)>]>>>|<cell|<around*|(|<around*|(|-1|)>\<cdot\><around*|(|-1|)>|)>\<cdot\>y>>|<row|<cell|>|<cell|=>|<cell|1\<cdot\>y>>|<row|<cell|>|<cell|=>|<cell|y>>>>
      </eqnarray*>

      <item>Take <math|\<lambda\>=-1\<leqslant\>0> then
      <math|-y=\<lambda\>\<cdot\>y<below|\<leqslant\>|<text|[theorem:
      <reference|extended x\<less\>=y then for 0\<less\>=s we have
      s.x\<less\>=s.y>]>>\<lambda\>\<cdot\>x=-x>

      <item>If <math|x\<less\>y> then <math|x\<neq\>y> and <math|x\<less\>y>,
      using (2) we have then that <math|<around*|(|-y|)>\<leqslant\>-x> and
      using (1) that <math|-x\<neq\>-y> proving that <math|-y\<less\>-x>
    </enumerate>
  </proof>

  We have also a variant of the distributive law in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> but again we must be careful. For
  example <math|\<infty\>\<cdot\><around*|(|1-3|)>=\<infty\>\<cdot\><around*|(|-2|)>=-\<infty\>>
  but <math|\<infty\>\<cdot\>1+\<infty\>\<cdot\><around*|(|-3|)>> is not
  defined because <math|\<infty\>\<cdot\>1=\<infty\>> and
  <math|\<infty\>\<cdot\><around*|(|-3|)>=-\<infty\>>.

  <\theorem>
    <label|extended distributitivy>Let <math|\<alpha\>\<in\>\<bbb-R\>>,
    <math|<around*|(|x,y|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>|}>>
    then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
  </theorem>

  <\proof>
    For <math|<around*|(|x,y|)>> we have either:\ 

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then
      <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><rsub|\<bbb-R\>><around*|(|x+<rsub|\<bbb-R\>>y|)>=\<alpha\>\<cdot\><rsub|\<bbb-R\>>x+<rsub|\<bbb-R\>>\<alpha\>\<cdot\><rsub|\<bbb-R\>>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<alpha\>\<cdot\>x+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        \ <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=\<alpha\>\<cdot\>x+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=\<alpha\>\<cdot\>x+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=\<alpha\>\<cdot\>x+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=-\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then for <math|\<alpha\>>
      we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<infty\>+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=-\<infty\>+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=-\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=-\<infty\>+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=-\<infty\>+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>
    </description>

    so in all cases we have <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y.>
  </proof>

  <\theorem>
    <label|extended x\<less\>=x+e=\<gtr\>x\<less\>=e>Let
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have
    <math|x\<leqslant\>y+\<varepsilon\>> then <math|x\<leqslant\>y>.
  </theorem>

  <\proof>
    \ If <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have
    <math|x\<leqslant\>y+\<varepsilon\>> then we have for <math|x,y> to
    verify the following cases:\ 

    <\description>
      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then <math|x=y> so that
      <math|x\<leqslant\>y>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
      <math|-\<infty\>\<less\>x\<leqslant\>y+\<varepsilon\>=<around*|(|-\<infty\>|)>+\<varepsilon\>=-\<infty\>>
      leading to the contradiction <math|-\<infty\>\<less\>-\<infty\>>, hence
      this cases never materilize.

      <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\><rsup|>>>Then
      <math|\<infty\>=x\<leqslant\>y+\<varepsilon\>=-\<infty\>+\<varepsilon\>=-\<infty\>>
      leading to the contradiction <math|\<infty\>\<less\>-\<infty\>> so this
      case never occurs.

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
      <math|x=-\<infty\>\<less\>y> so that <math|x\<leqslant\>y>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then by
      \ [theorem: <reference|complex Archimedean property consequence (2)>
      (2)] it follows that <math|x\<leqslant\>y>

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
      <math|\<infty\>=x\<leqslant\>y+\<varepsilon\>\<less\>\<infty\>> leading
      to the contradiction <math|\<infty\>\<less\>\<infty\>>, hence this
      cases never occurs.

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
      <math|x=-\<infty\>\<less\>\<infty\>=y> so that <math|x\<leqslant\>y>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
      <math|x\<less\>\<infty\>=y> so that <math|x\<leqslant\>y>

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then <math|x=y> so that
      <math|x\<leqslant\>y>
    </description>

    So in all valid cases we have that <math|x\<leqslant\>y>
  </proof>

  <subsection|Topology on <math|<wide|\<bbb-R\>|\<wide-bar\>>>>

  First we define the absolute value on <math|<wide|\<bbb-R\>|\<wide-bar\>>>.

  <\definition>
    <label|extended absolute value>Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then the absolute value noted as <math|<around*|\||x|\|>> is defined in
    analogy of the absolute value on <math|\<bbb-R\>> as follows

    <\equation*>
      <around*|\||x|\|>=<choice|<tformat|<table|<row|<cell|x<text| if
      >0\<leqslant\>x>>|<row|<cell|-x<text| if >x\<less\>0>>>>>
    </equation*>
  </definition>

  <\note>
    <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have that
    <math|x\<leqslant\><around*|\||x|\|>>
  </note>

  <\note>
    If <math|x\<in\>\<bbb-R\>> then <math|<around*|\||x|\|>=<around*|\||x|\|><rsub|\<bbb-R\>>>
    where <math|<around*|\|||\|><rsub|\<bbb-R\>>> is the absolute value
    defined in <math|\<bbb-R\>> [see example: <reference|normed real
    numbers>].
  </note>

  <\proof>
    For <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have either:\ 

    <\description>
      <item*|<math|0\<leqslant\>x>>Then <math|x=<around*|\||x|\|>> so that
      <math|x\<leqslant\><around*|\||x|\|>>

      <item*|<math|x\<less\>0>>Then by [theorem: <reference|extended negate>]
      <math|0\<less\>-x=<around*|\||x|\|>> so that
      <math|x\<less\>0\<less\><around*|\||x|\|>> or
      <math|x\<leqslant\><around*|\||x|\|>>
    </description>
  </proof>

  The absolute value of the extended real numbers has similar properties as
  the absolute value on the real numbers.\ 

  <\theorem>
    The absolute value has the following properties:

    <\enumerate>
      <item><math|<around*|\||\<infty\>|\|>=\<infty\>>

      <item><math|<around*|\||-\<infty\>|\|>=\<infty\>>

      <item>For <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have
      <math|<around*|\||x|\|>=0> <math|\<Leftrightarrow\><text| >x=0>.

      <item><math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have
      <math|<around*|\||x\<cdot\>y|\|>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>.

      <item><math|\<forall\><around*|(|x,y|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>>
      we have <math|<around*|\||x+y|\|>\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|0\<less\>\<infty\>> it follows that
      <math|<around*|\||\<infty\>|\|>=\<infty\>>.

      <item>As <math|-\<infty\>\<less\>0> it follows that
      <math|<around*|\||-\<infty\>|\|>=-<around*|(|-\<infty\>|)>=<around*|(|-1|)>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>>

      <item>We have\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Assume that <math|x\<neq\>0> then we
        have either <math|0\<less\>x\<Rightarrow\>0\<neq\>x=<around*|\||x|\|>\<neq\>0>
        leading to the contradiction <math|0\<neq\>0> or
        <math|x\<less\>0\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|extended negate>]>>0\<less\>-x=<around*|\||x|\|>=0>
        leading to the contradiction <math|0\<less\>0>. Hence the assumption
        is false and we must have that <math|x=0>. <math|>

        <item*|<math|\<Leftarrow\>>>As <math|0\<leqslant\>0> it follows that
        <math|<around*|\||0|\|>=0>.
      </description>

      <item>For <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have the
      following cases to consider:\ 

      <\description>
        <item*|<math|x=0\<wedge\>y=0>>Then
        <math|<around*|\||x\<cdot\>y|\|>=<around*|\||0|\|>\<equallim\><rsub|<around*|(|3|)>>0>.

        <item*|<math|x\<less\>0\<wedge\>y=0>>Then
        <math|<around*|\||x\<cdot\>y|\|>=<around*|\||0|\|>\<equallim\><rsub|<around*|(|3|)>>0>.

        <item*|<math|0\<less\>x\<wedge\>y=0>>Then
        <math|<around*|\||x\<cdot\>y|\|>=<around*|\||0|\|>\<equallim\><rsub|<around*|(|3|)>>0>.

        <item*|<math|x=0\<wedge\>y\<less\>0>>Then
        <math|<around*|\||x\<cdot\>y|\|>=<around*|\||0|\|>\<equallim\><rsub|<around*|(|3|)>>0>.

        <item*|<math|x\<less\>0\<wedge\>y\<less\>0>>Then by [theorem:
        <reference|extended x.y>] <math|0\<less\>x\<cdot\>y> so that
        <math|<around*|\||x\<cdot\>y|\|>=x\<cdot\>y=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>.

        <item*|<math|0\<less\>x\<wedge\>y\<less\>0>>Then by [theorem:
        <reference|extended x.y>] <math|x\<cdot\>y\<less\>0> so that

        <\equation*>
          <around*|\||x\<cdot\>y|\|>=-<around*|(|x\<cdot\>y|)>\<equallim\><rsub|<text|[theorem:
          <reference|extended -(x.y)>]>>x\<cdot\><around*|(|-y|)>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>
        </equation*>

        <item*|<math|x=0\<wedge\>0\<less\>y>>Then
        <math|<around*|\||x\<cdot\>y|\|>=<around*|\||0|\|>\<equallim\><rsub|<around*|(|3|)>>0>.

        <item*|<math|x\<less\>0\<wedge\>0\<less\>y>>Then by [theorem:
        <reference|extended x.y>] <math|x\<cdot\>y\<less\>0> so that

        <\equation*>
          <around*|\||x\<cdot\>y|\|>=-<around*|(|x\<cdot\>y|)>=<around*|(|-x|)>\<cdot\>y=<around*|\||x|\|>\<cdot\><around*|\||y|\|>
        </equation*>

        <item*|<math|0\<less\>x\<wedge\>0\<less\>y>>Then by [theorem:
        <reference|extended x.y>] <math|0\<less\>x\<cdot\>y> so that\ 

        <\equation*>
          <around*|\||x\<cdot\>y|\|>=x\<cdot\>y=<around*|\||x|\|>\<cdot\><around*|\||y|\|>
        </equation*>
      </description>

      <item>For <math|<around*|(|x,y|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>>
      we have either:

      <\description>
        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Then
        <math|<around*|\||x+y|\|>=<around*|\||-\<infty\>|\|>\<equallim\><rsub|<around*|(|2|)>>\<infty\>=\<infty\>+\<infty\>=<around*|\||-\<infty\>|\|>+<around*|\||-\<infty\>|\|>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
        <math|<around*|\||x+y|\|>=<around*|\||-\<infty\>|\|>\<equallim\><rsub|<around*|(|2|)>><around*|\||x|\|>+\<infty\>\<equallim\><rsub|<around*|(|2|)>><around*|\||x|\|>+<around*|\||-\<infty\>|\|>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Then
        <math|<around*|\||x+y|\|>=<around*|\||\<infty\>|\|>\<equallim\><rsub|<around*|(|1|)>>\<infty\>=\<infty\>+\<infty\>\<equallim\><rsub|<around*|(|1|)>><around*|\||\<infty\>|\|>+<around*|\||\<infty\>|\|>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
        <math|<around*|\||x+y|\|>=<around*|\||\<infty\>|\|>\<equallim\><rsub|<around*|(|1|)>>\<infty\>=<around*|\||x|\|>+\<infty\>\<equallim\><rsub|<around*|(|1|)>><around*|\||x|\|>+<around*|\||\<infty\>|\|>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|<around*|\||x+y|\|>=<around*|\||\<infty\>|\|>\<equallim\><rsub|<around*|(|1|)>>\<infty\>=\<infty\>+<around*|\||y|\|>\<equallim\><rsub|<around*|(|1|)>><around*|\||\<infty\>|\|>+<around*|\||y|\|>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|<around*|\||x+y|\|>=<around*|\||-\<infty\>|\|>\<equallim\><rsub|<around*|(|2|)>>\<infty\>=\<infty\>+<around*|\||y|\|>\<equallim\><rsub|<around*|(|2|)>><around*|\||-\<infty\>|\|>+<around*|\||y|\|>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then
        <math|<around*|\||x+y|\|>=<around*|\||x+y|\|><rsub|\<bbb-R\>>\<leqslant\><around*|\||x|\|><rsub|\<bbb-R\>>+<around*|\||y|\|><rsub|\<bbb-R\>>=<around*|\||x|\|>+<around*|\||y|\|>>
      </description>
    </enumerate>
  </proof>

  Unfortunately <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<\|\|\>|\<rangle\>>>
  is not a normed space because <math|<wide|\<bbb-R\>|\<wide-bar\>>> is not a
  vector space [remember <math|\<infty\>+<around*|(|-\<infty\>|)>> and
  <math|<around*|(|-\<infty\>|)>+\<infty\>> are not defined. So we can not
  base a topology on a norm instead we use a generating basis [see theorem:
  <reference|topology basis generating>].

  <\definition>
    <label|extended basis for the topology>The following sets are defined

    <\enumerate>
      <item><math|\<cal-B\><rsub|<around*|\|||\|>>=<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>>
      which is the generating basis for the natural topology
      <math|\<cal-T\><rsub|<around*|\|||\|>>> on <math|\<bbb-R\>> [see
      theorem <reference|normed basis of T\|\|>].

      <item><math|\<cal-B\><rsub|\<infty\>>=<around*|{|<around*|]|x,\<infty\>|]>\|x\<in\>\<bbb-R\>|}>>

      <item><math|\<cal-B\><rsub|-\<infty\>>=<around*|{|<around*|[|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>>

      <item><math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>=\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>><big|cup>\<cal-B\><rsub|\<infty\>><big|cup>\<cal-B\><rsub|-\<infty\>>>
    </enumerate>
  </definition>

  We prove now that <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
  satisfies the conditions to be a generating basis [see theorem:
  <reference|topology basis generating>].

  <\lemma>
    <label|extended generating basis>The set
    <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> satisfies\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> there exist
      a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> such that
      <math|x\<in\>B>.

      <item><math|\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      we have that <math|\<forall\>x\<in\>B<rsub|1><big|cap>B<rsub|2>> there
      exist a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      such that <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then we have
      either

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>Then
        <math|x\<in\><around*|]|x-1,x+1|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>

        <item*|<math|x=-\<infty\>>>Then <math|x=-\<infty\>\<in\><around*|[|-\<infty\>,0|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>

        <item*|<math|x=\<infty\>>>Then <math|x=\<infty\>\<in\><around*|]|0,\<infty\>|]>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      </description>

      <item>If <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> then we have for
      <math|B<rsub|1>,B<rsub|2>> either:

      <\description>
        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>>Then
        there exists <math|a<rsub|1>>, <math|b<rsub|1>>, <math|a<rsub|2>>,
        <math|b<rsub|2>> with <math|B<rsub|1>=<around*|]|a<rsub|1>,b<rsub|1>|[>\<wedge\>B<rsub|2>=<around*|]|a<rsub|2>,b<rsub|2>|[>>,
        as <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>>
        \ <math|a<rsub|1>\<less\>x\<less\>b<rsub|1>> and
        <math|a<rsub|2>\<less\>x\<less\>b<rsub|2>>. Define
        <math|B=<around*|]|a,b|[>> where <math|a=max<around*|(|a<rsub|1>,a<rsub|2>|)>>
        and <math|b=min<around*|(|b<rsub|1>,b<rsub|2>|)>> \ then
        <math|a\<less\>x\<less\>b> or <math|x\<in\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>.
        Further if <math|y\<in\>B> then <math|a<rsub|1>,a<rsub|2>\<leqslant\>a\<less\>y\<less\>b\<leqslant\>b<rsub|1>,b<rsub|2>>
        so that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subset\>-\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>>Then
        there exists <math|a,b,c\<in\>\<bbb-R\>> such that
        <math|B<rsub|2>=<around*|]|a,b|[>> and
        <math|B<rsub|1>=<around*|[|-\<infty\>,c|[>>, as
        <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have that
        <math|x\<less\>c> and <math|a\<less\>x\<less\>b>. Define
        <math|B=<around*|]|a,d|[>> where <math|d=min<around*|(|c,b|)>> then
        <math|a\<less\>x\<less\>d> so that
        <math|x\<in\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. Further if
        <math|y\<in\>B> then <math|a\<less\>y\<less\>d\<leqslant\>c,b> so
        that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|><math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>>Then
        there exists <math|a,b,c\<in\>\<bbb-R\>> such that
        <math|B<rsub|2>=<around*|]|a,b|[>> and
        <math|B<rsub|1>=<around*|]|c,\<infty\>|]>>, as
        <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have that
        <math|c\<less\>x> and <math|a\<less\>x\<less\>b>. Define
        <math|B=<around*|]|d,b|[>> where <math|d=max<around*|(|c,a|)>> then
        <math|d\<less\>x\<less\>b> so that
        <math|x\<in\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. Further if
        <math|y\<in\>B> then <math|c,a\<leqslant\>d\<less\>y\<less\>b> so
        that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|><math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|-\<infty\>>>>Then
        there exists <math|a,b,c\<in\>\<bbb-R\>> such that
        <math|B<rsub|1>=<around*|]|a,b|[>> and
        <math|B<rsub|2>=<around*|[|-\<infty\>,c|[>>, as
        <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have
        <math|a\<less\>x\<less\>b> and <math|x\<less\>c>. Define
        <math|B=<around*|]|a,d|[>> where <math|d=min<around*|(|b,c|)>> then
        <math|a\<less\>x\<less\>d> so that
        <math|x\<in\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. Further if
        <math|y\<in\>B> then <math|a\<less\>y\<less\>d\<leqslant\>b,c> so
        that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|><math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|-\<infty\>>>>Then
        there exists <math|c<rsub|1>,c<rsub|2>\<in\>\<bbb-R\>> such that
        <math|B<rsub|1>=<around*|[|-\<infty\>,c<rsub|1>|[>> and
        <math|<rigid|B<rsub|2>=<around*|[|-\<infty\>,c<rsub|2>|[>>>, as
        <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have that
        <math|x\<less\>c<rsub|1>,c<rsub|2>> hence if we define
        <math|<rigid|B=<around*|[|-\<infty\>,c|[>>> where
        \ <math|<rigid|c=min<around*|(|c<rsub|1>,c<rsub|2>|)>\<in\>\<bbb-R\>>>
        then <math|x\<less\>c> so that <math|x\<in\>B\<in\>\<cal-B\><rsub|-\<infty\>>>.
        Further if <math|y\<in\>B> then <math|y\<less\>c\<leqslant\>c<rsub|1>,c<rsub|2>>
        so that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|><math|B\<in\>\<cal-B\><rsub|-\<infty\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|-\<infty\>>>>Then
        there exists <math|c<rsub|1>,c<rsub|2>\<in\>\<bbb-R\>> such that
        <math|B<rsub|1>=<around*|]|c<rsub|1>,\<infty\>|]>> and
        <math|B<rsub|2>=<around*|[|-\<infty\>,c<rsub|2>|[>,>as
        <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have that
        <math|c<rsub|1>\<less\>x\<less\>c<rsub|2>>. Define
        <math|B=<around*|]|c<rsub|1>,c<rsub|2>|[>> then
        <math|x\<in\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. Further if
        <math|y\<in\>B> then <math|c<rsub|1>\<less\>y\<less\>c<rsub|2>> so
        that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|><math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|\<infty\>>>>Then
        there exists <math|a,b,c\<in\>\<bbb-R\>> such that
        <math|B<rsub|1>=<around*|]|a,b|[>> and
        <math|B<rsub|2>=<around*|]|c,\<infty\>|]>>, as
        <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have that
        <math|a\<less\>x\<less\>b> and <math|c\<less\>x>. Define
        <math|B=<around*|]|d,b|[>> where <math|d=max<around*|(|a,c|)>> then
        we have <math|d\<less\>x\<less\>b> so that
        <math|x\<in\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. Further if
        <math|y\<in\>B> then <math|a,c\<leqslant\>d\<less\>y\<less\>b> so
        that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|><math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|\<infty\>>>>Then
        there exists <math|c<rsub|1>,c<rsub|2>\<in\>\<bbb-R\>> such that
        <math|B<rsub|1>=<around*|[|-\<infty\>,c<rsub|1>|[>> and
        <math|<rigid|B<rsub|2>=<around*|]|c<rsub|2>,\<infty\>|]>>>, as
        <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have
        <math|c<rsub|2>\<less\>x\<less\>c<rsub|1>>. Define
        <math|B=<around*|]|c<rsub|2>,c<rsub|1>|[>> then
        <math|x\<in\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. Further if
        <math|y\<in\>B> then <math|c<rsub|2>\<less\>y\<less\>c<rsub|1>> so
        that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|><math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.\ 

        <item*|<math|B<rsub|1>\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B<rsub|2>\<in\>\<cal-B\><rsub|\<infty\>>>>Then
        there exists <math|c<rsub|1>,c<rsub|2>\<in\>\<bbb-R\>> such that
        <math|B<rsub|1>=<around*|]|c<rsub|1>,\<infty\>|]>\<wedge\><rigid|B<rsub|2>=<around*|]|c<rsub|2>,\<infty\>|]>>>,
        as <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have
        <math|c<rsub|1>\<less\>x\<wedge\>c<rsub|2>\<less\>x>. Define
        <math|B=<around*|]|c,\<infty\>|]>> where
        <math|c=max<around*|(|c<rsub|1>,c<rsub|2>|)>\<in\>\<bbb-R\>> then
        <math|c\<less\>x> so that <math|x\<in\>B<rsub|\<infty\>>>. Further if
        <math|y\<in\>B> then <math|c<rsub|1>,c<rsub|2>\<leqslant\>c\<less\>y>
        so that <math|y\<in\>B<rsub|1><big|cap>B<rsub|2>>. Hence
        <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>> where
        <math|><math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
      </description>
    </enumerate>
  </proof>

  We use now <math|\<cal-B\><rsub|<wide|<wide|\<bbb-R\>|\<wide-bar\>>|\<wide-bar\>>>>
  to generate the canonical topology on <math|<wide|\<bbb-R\>|\<wide-bar\>>>.

  <\definition>
    <label|extended canonical topology><index|<math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>>The
    canonical topology on <math|<wide|\<bbb-R\>|\<wide-bar\>>> noted as
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is defined as\ 

    <\equation*>
      \<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>=<around*|{|U\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>\|\<forall\>x\<in\>U<text|
      we have that >\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
      such that >x\<in\>B\<subseteq\>U|}>
    </equation*>

    which is indeed a topology by [theorem: <reference|topology basis
    generating>] and [lemma: <reference|extended generating basis>].
  </definition>

  It turns out that the subspace topology of
  <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> [see theorem:
  <reference|topology subspace topology>] is equal to the canonical topology
  <math|\<cal-T\><rsub|<around*|\|||\|>>> on <math|\<bbb-R\>>.

  <\theorem>
    <label|extended canonical topologies on the real and extended real
    space>Let <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> be the
    canonical topology on <math|<wide|\<bbb-R\>|\<wide-bar\>>> and
    <math|\<cal-T\><rsub|<around*|\|||\|>>> the canonical topology on
    <math|\<bbb-R\>> [see theorem: <reference|normed basis of T\|\|>] then\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
    </equation*>

    and\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\|||\|>>=<around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>\<equallim\><rsub|<text|[theorem:
      <reference|topology subspace topology>]>><around*|(|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|)><rsub|\|\<bbb-R\>>
    </equation*>
  </theorem>

  <\proof>
    By definition\ 

    <\equation*>
      \<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>=<around*|{|U\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>\|\<forall\>x\<in\>U<text|
      we have that >\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
      such that >x\<in\>B\<subseteq\>U|}>
    </equation*>

    Further by [theorem: <reference|normed basis of T\|\|>]\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\|||\|>>=<around*|{|U\<subseteq\>\<bbb-R\>\|\<forall\>x\<in\>U<text|
      we have that >\<exists\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>><text|
      such that >x\<in\>B\<subseteq\>U|}>
    </equation*>

    where\ 

    <\equation*>
      \<cal-B\><rsub|<around*|\|||\|>>=<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
    </equation*>

    Let <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> then
    <math|\<forall\>x\<in\>U> <math|\<exists\>B\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    such that <math|x\<in\>B\<subseteq\>U> proving that
    <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>, hence we
    have\ 

    <\equation>
      <label|eq 20.1.155>\<cal-T\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
    </equation>

    If <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> then
    <math|U\<subseteq\>\<bbb-R\>\<Rightarrow\>U=U<big|cap>\<bbb-R\>> and by
    [eq: <reference|eq 20.1.155>] <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    so that <math|U\<in\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>>
    hence\ 

    <\equation>
      <label|eq 20.2.155>\<cal-T\><rsub|<around*|\|||\|>>\<subseteq\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>
    </equation>

    If <math|U\<in\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>>
    then there exist a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    such that\ 

    <\equation>
      <label|eq 20.3.155>U=V<big|cap>\<bbb-R\>
    </equation>

    If <math|x\<in\>U> then <math|x\<in\>\<bbb-R\>> and
    <math|x\<in\>V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>, so
    there exists a <math|B<rprime|'><rsub|x>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    such that <math|x\<in\>B<rprime|'><rsub|x>\<subseteq\>V>. For
    <math|B<rprime|'><rsub|x>> we have then either:\ 

    <\description>
      <item*|<math|B<rprime|'><rsub|x>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>>Then
      there exist a <math|a,b\<in\>\<bbb-R\>> such that
      <math|B<rprime|'><rsub|x>=<around*|]|a,b|[>\<subseteq\>\<bbb-R\>> hence
      if we take <math|B<rsub|x>=B<rprime|'><rsub|x>> then

      <\equation*>
        x\<in\>B<rsub|x>=B<rsub|x><big|cap>\<bbb-R\>\<subseteq\>V<big|cap>\<bbb-R\>=U
      </equation*>

      <item*|<math|B<rprime|'><rsub|x>\<in\>\<cal-B\><rsub|-\<infty\>>>>Then
      <math|\<exists\>c\<in\>\<bbb-R\>> such that
      <math|B<rprime|'><rsub|x>=<around*|[|-\<infty\>,c|[>>. Define
      <math|B<rsub|x>=<around*|]|x-1,c|[>\<subseteq\>\<bbb-R\>> then
      <math|x-1\<less\>x\<less\>c> so that
      <math|x\<in\>B<rsub|x>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. Further
      for <math|y\<in\>B<rsub|x>> we have <math|y\<less\>c> so that
      <math|y\<in\>B<rprime|'><rsub|x>> proving that
      <math|x\<in\>B<rsub|x>\<subseteq\>B<rprime|'><rsub|x>>. Hence

      <\equation*>
        x\<in\>B<rsub|x>=B<rsub|x><big|cap>\<bbb-R\>\<subseteq\>V<big|cap>\<bbb-R\>=U
      </equation*>

      <item*|<math|B<rprime|'><rsub|x>\<in\>\<cal-B\><rsub|\<infty\>>>>Then
      <math|\<exists\>c\<in\>\<bbb-R\>> such that
      <math|B<rprime|'><rsub|\<infty\>>=<around*|]|c,\<infty\>|]>>. Define
      <math|B<rsub|x>=<around*|]|c,x+1|[>\<subseteq\>\<bbb-R\>> then
      <math|c\<less\>x\<less\>x+1> so that
      <math|x\<in\>B<rsub|x>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. Further
      for <math|y\<in\>B<rsub|x>> we have <math|c\<less\>y> so that
      <math|y\<in\>B<rprime|'><rsub|x>> proving that
      <math|x\<in\>B<rsub|x>\<subseteq\>B<rprime|'><rsub|x>>. Hence\ 

      <\equation*>
        x\<in\>B<rsub|x>=B<rsub|x><big|cap>\<bbb-R\>\<subseteq\>V<big|cap>\<bbb-R\>=U
      </equation*>
    </description>

    so in all cases we found a <math|B<rsub|x>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>
    such that <math|x\<in\>B<rsub|x>\<subseteq\>U>. As <math|x> was choose
    arbitrary it follows that <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>>.
    Hence <math|<around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>>>
    which combined with [eq: <reference|eq 20.2.155>] gives\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\|||\|>>=<around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>
    </equation*>
  </proof>

  <\theorem>
    <label|extended closed sets>We have the following closed sets in
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>\<bbb-R\>>
      <math|<around*|[|-\<infty\>,x|]>> is closed.

      <item><math|\<forall\>x\<in\>\<bbb-R\>>
      <math|<around*|[|x,\<infty\>|]>> is closed,

      <item><math|\<forall\>x\<in\>\<bbb-R\>> <math|<around*|{|x|}>> is
      closed.

      <item><math|<around*|[|-\<infty\>,\<infty\>|]>> is closed.

      <item><math|<around*|{|-\<infty\>,\<infty\>|}>> is closed

      <item><math|<around*|{|-\<infty\>|}>> is closed.

      <item><math|<around*|{|\<infty\>|}>> is closed.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|-\<infty\>,x|]>>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<wedge\>\<neg\><around*|(|-\<infty\>\<leqslant\>y\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<wedge\><around*|(|y\<less\>-\<infty\>\<vee\>x\<less\>y|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<wedge\>x\<less\>y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|]|x,\<infty\>|]>>>>>
      </eqnarray*>

      so that <math|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|-\<infty\>,x|]>=<around*|]|x,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
      hence <math|<around*|[|-\<infty\>,x|]>> is closed.

      <item>As\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|x,\<infty\>|]>>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<wedge\>\<neg\><around*|(|x\<leqslant\>y\<geqslant\>\<infty\>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<wedge\><around*|(|y\<less\>x\<vee\>\<infty\>\<less\>y|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\<wedge\>y\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|[|-\<infty\>,x|[>>>>>
      </eqnarray*>

      so that <math|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|x,\<infty\>|]>=<around*|[|-\<infty\>,x|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      which proves that <math|<around*|[|x,\<infty\>|]>> is closed.

      <item>As <math|<around*|{|x|}>=<around*|[|-\<infty\>,x|]><big|cap><around*|[|x,\<infty\>|]>>
      it follows from (1) and (2) that <math|<around*|{|x|}>> is closed.

      <item>This is trivial as <math|<wide|\<bbb-R\>|\<wide-bar\>>=<around*|[|-\<infty\>,\<infty\>|]>>.

      <item>As <math|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|-\<infty\>,\<infty\>|}>=\<bbb-R\>\<in\>\<cal-T\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><rsub|>>
      it follows that <math|<around*|{|-\<infty\>,\<infty\>|}>> is closed.

      <item>As <math|<around*|{|-\<infty\>|}>=<around*|{|-\<infty\>,\<infty\>|}><big|cap><around*|[|-\<infty\>,0|]>>
      it follows from (2) and (5) that <math|<around*|{|-\<infty\>|}>> is
      closed.

      <item>As <math|<around*|{|\<infty\>|}>=<around*|{|-\<infty\>,\<infty\>|}><big|cap><around*|[|0,\<infty\>|]>>
      it follows form <math|<around*|(|1|)>> and <math|<around*|(|5|)>> that
      <math|<around*|{|\<infty\>|}>> is closed.
    </enumerate>
  </proof>

  <\theorem>
    <label|extended open set properties>

    <\enumerate>
      <item>If <math|x\<in\>\<bbb-R\>> then and
      <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> with
      <math|x\<in\>U> then <math|\<exists\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\>U>.

      <item>If <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      with <math|-\<infty\>\<in\>U> then <math|\<exists\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>.

      <item>f <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      with <math|\<infty\>\<in\>U> then <math|\<exists\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>U> then as <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      is the generating basis for <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      there exist a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      such that <math|x\<in\>B\<subseteq\>U>. For <math|B> we have either:

      <\description>
        <item*|<math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>>As
        <math|\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
        <reference|normed basis of T\|\|>]>><around*|{|<around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>\|y\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>>
        there exists a <math|y\<in\>\<bbb-R\><text| and a
        >\<delta\>\<in\>\<bbb-R\><rsup|+>> so that
        <math|B=<around*|]|y-\<delta\>,y+\<delta\>|[>>. As <math|x\<in\>B> we
        have <math|y-\<delta\>\<less\>x\<less\>y+\<delta\>>, define
        <math|\<varepsilon\>=min<around*|(|x-<around*|(|y-\<delta\>|)>,<around*|(|y+\<delta\>|)>-x|)>>
        then if <math|z\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>>
        we have\ 

        <\equation*>
          y-\<delta\>=x-<around*|(|x-<around*|(|y-\<delta\>|)>|)>\<leqslant\>x-\<varepsilon\>\<less\>z\<less\>x+\<varepsilon\>\<leqslant\>x+<around*|(|y+\<delta\>|)>-x=y+\<delta\>
        </equation*>

        so that <math|x\<in\>B>. Hence <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\>B\<subseteq\>U>.

        <item*|<math|B\<in\>\<cal-B\><rsub|-\<infty\>>>>Then there exist a
        <math|c\<in\>\<bbb-R\>> such that
        <math|B=<around*|[|-\<infty\>,c|[>>, as <math|x\<in\>\<bbb-R\>> and
        <math|x\<in\>B> we have <math|-\<infty\>\<less\>x\<less\>c>. Take
        <math|\<varepsilon\>=c-x\<in\>\<bbb-R\><rsup|+>> then if
        <math|y\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\>\<bbb-R\>>
        we have <math|<rigid|-\<infty\>\<less\>y\<less\>x+\<varepsilon\>=x+<around*|(|c-x|)>=c>>
        so that <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\><around*|]|-\<infty\>,c|[>=B\<subseteq\>U>.

        <item*|<math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>>Then there
        exist a <math|c\<in\>\<bbb-R\>> such that
        <math|B=<around*|]|c,\<infty\>|]>>, as <math|x\<in\>\<bbb-R\>> and
        <math|x\<in\>B> we have <math|c\<less\>x\<less\>\<infty\>>. Take
        <math|\<varepsilon\>=x-c\<in\>\<bbb-R\>> then if
        <math|y\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\>\<bbb-R\>>
        we have <math|<rigid|c=x-<around*|(|x-c|)>=x-\<varepsilon\>\<less\>y\<less\>\<infty\>>>
        so that <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\><around*|]|c,\<infty\>|]>=B\<subseteq\>U>.
      </description>

      <item>As <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is the
      generating basis for <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      there exists a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      such that <math|-\<infty\>\<in\>B\<subseteq\>U>. For <math|B> we have
      either:\ 

      <\description>
        <item*|<math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>>Then there
        exists <math|a,b\<in\>\<bbb-R\>> such that
        <math|B=<around*|]|a,b|[>>, as <math|-\<infty\>\<in\>B> we have
        <math|<rigid|-\<infty\>\<less\>a\<less\>-\<infty\>>> a contradiction.
        So this case does not apply.

        <item*|<math|B\<in\>\<cal-B\><rsub|-\<infty\>>>>Then there exists a
        <math|c\<in\>\<bbb-R\>> such that
        <math|B=<around*|[|-\<infty\>,c|[>>, take
        <rigid|<math|\<varepsilon\>=-min<around*|(|c,-1|)>\<in\>\<bbb-R\><rsup|+>>>.
        If <math|y\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>> we have
        that <math|-\<infty\>\<leqslant\>y\<less\>-\<varepsilon\>=min<around*|(|c,-1|)>\<leqslant\>c><space|1em>so
        that <math|<rigid|-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>B\<subseteq\>U>>.

        <item*|<math|B\<in\>\<cal-B\><rsub|\<infty\>>>>Then there exists a
        <math|c\<in\>\<bbb-R\>> such that <math|B=<around*|]|c,\<infty\>|]>>,
        as <math|-\<infty\>\<in\>B> we have that
        <math|-\<infty\>\<less\>c\<less\>-\<infty\>> a contradiction. So this
        case does not apply.
      </description>

      <item>As <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is the
      generating basis for <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      there exists a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      such that <math|\<infty\>\<in\>B\<subseteq\>U>. For <math|B> we have
      either:\ 

      <\description>
        <item*|<math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>>Then there
        exists <math|a,b\<in\>\<bbb-R\>> such that
        <math|B=<around*|]|a,b|[>>, as <math|\<infty\>\<in\>B> we have
        <math|\<infty\>\<less\>b\<less\>\<infty\>> a contradiction. So this
        case does not apply.

        <item*|<math|B\<in\>\<cal-B\><rsub|-\<infty\>>>>Then there exists a
        <math|c\<in\>\<bbb-R\>> such that
        <math|B=<around*|[|-\<infty\>,c|[>>, as <math|\<infty\>\<in\>B> we
        have that <math|\<infty\>\<less\>c\<less\>\<infty\>> a contradiction.
        So this case does not apply.

        <item*|<math|B\<in\>\<cal-B\><rsub|\<infty\>>>>Then there exists a
        <math|c\<in\>\<bbb-R\>> such that <math|B=<around*|]|c,\<infty\>|]>>,
        take <math|\<varepsilon\>=max<around*|(|1,c|)>\<in\>\<bbb-R\><rsup|+>>.
        If <math|y\<in\><around*|]|\<varepsilon\>,\<infty\>|]>> then
        <math|c\<leqslant\>\<varepsilon\>\<less\>y\<leqslant\>\<infty\>> so
        that <math|\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>B\<subseteq\>U>.
      </description>
    </enumerate>
  </proof>

  We show now that continuous functions with codomain <math|\<bbb-R\>> are
  also continuous if we use the codomain <math|<wide|\<bbb-R\>|\<wide-bar\>>>.

  <\theorem>
    <label|extended continuous functions>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|f:X\<rightarrow\>\<bbb-R\>> be a continuous function [using
    the topology <math|\<cal-T\><rsub|<around*|\|||\|>>>] then
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is also continuous
    using the topology <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
  </theorem>

  <\proof>
    Let <math|x\<in\>X> and let <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    be such that <math|f<around*|(|x|)>\<in\>U>. As
    <math|f<around*|(|X|)>\<subseteq\>\<bbb-R\>> we have that
    <math|f<around*|(|x|)>\<in\>\<bbb-R\>>, then by [theorem:
    <reference|extended open set properties>] there exist a
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|f<around*|(|x|)>\<in\><around*|]|f<around*|(|x|)>-\<varepsilon\>,f<around*|(|x|)>+\<varepsilon\>|[>\<subseteq\>U>.
    As <math|f:X\<rightarrow\>\<bbb-R\>> is continuous and
    <math|<around*|]|f<around*|(|x|)>-\<varepsilon\>,f<around*|(|x|)>+\<varepsilon\>|[>>
    is open in <math|\<bbb-R\>> it follows that
    <math|V=f<rsup|-1><around*|(|<around*|]|f<around*|(|x|)>-\<varepsilon\>,f<around*|(|x|)>+\<varepsilon\>|[>|)>\<in\>\<cal-T\>>.
    As <math|f<around*|(|x|)>\<in\><around*|]|f<around*|(|x|)>-\<varepsilon\>,f<around*|(|x|)>+\<varepsilon\>|[>>
    we have that <math|x\<in\>V>, further

    <\equation*>
      f<around*|(|V|)>=f<around*|(|f<rsup|-1><around*|(|<around*|]|f<around*|(|x|)>-\<varepsilon\>,f<around*|(|x|)>+\<varepsilon\>|[>|)>|)>\<subseteq\><around*|]|f<around*|(|x|)>-\<varepsilon\>,f<around*|(|x|)>+\<varepsilon\>|[>\<subseteq\>U
    </equation*>

    So using [theorem: <reference|continuity at a point>] <math|f> is
    continuous at <math|x>, as <math|x\<in\>X> was chosen arbitrary it
    follows that <math|<rigid|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>>
    is continuous.
  </proof>

  <\theorem>
    <label|extended open set scaling and translation>If
    <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> then for
    <math|x\<in\>\<bbb-R\>> we have that

    <\enumerate>
      <item><math|x+U=<around*|{|x+u\|u\<in\>U|}>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      [in other words if <math|U> is open then <math|x+U> is open]

      <item>If <math|x\<neq\>0> then <math|x\<cdot\>U=<around*|{|x\<cdot\>u\|u\<in\>U|}>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      [in other words is <math|U> is open then <math|x\<cdot\>U> is open]
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|y\<in\>x+U> then there exist a <math|u\<in\>U> such
      that <math|y=x+u>. For <math|u\<in\>U> we have either:

      <\description>
        <item*|<math|u\<in\>\<bbb-R\>>>Using [theorem: <reference|extended
        open set properties>] there exists a
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that\ 

        <\equation*>
          u\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U
        </equation*>

        Let <math|z\<in\><around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>>
        then <math|<around*|(|x+u|)>-\<varepsilon\>=y-\<varepsilon\>\<less\>z\<less\>y+\<varepsilon\>=<around*|(|x+u|)>+\<varepsilon\>>
        hence <math|<rigid|u-\<varepsilon\>\<less\>z-x\<less\>u+\<varepsilon\>>>
        or <math|z-x\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
        so that <math|z=z+<around*|(|z-x|)>\<in\>x+U>, hence
        <math|y\<in\><around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>\<subseteq\>x+U>
        As <math|<around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>B<rsub|<wide|<wide|\<bbb-R\>|\<wide-bar\>>|\<wide-bar\>>>>
        we have by taking <math|B=<around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>>
        we have that\ 

        <\equation*>
          \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
          such that >y\<in\>B\<subseteq\>x+U
        </equation*>

        <item*|<math|u=-\<infty\>>>Using \ [theorem: <reference|extended open
        set properties>] there exists a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
        such that

        <\equation*>
          u=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U
        </equation*>

        Let <math|z\<in\><around*|[|-\<infty\>,-\<varepsilon\>+x|[>> then
        <math|-\<infty\>\<leqslant\>z\<less\>-\<varepsilon\>+x> so that
        <math|-\<infty\>\<leqslant\>z-x\<less\>-\<varepsilon\>> proving that
        <math|z-x\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>,
        hence <math|z=x+<around*|(|z-x|)>\<in\>x+U> or
        <math|<around*|[|-\<infty\>,-\<varepsilon\>+x|[>\<subseteq\>x+U>. As
        <math|y=x+u=x+<around*|(|-\<infty\>|)>=-\<infty\>> it follows that
        <math|y\<in\><around*|[|-\<infty\>,-\<varepsilon\>+x|[>\<subseteq\>x+U>.
        Hence if we take <math|<rigid|B=<around*|[|-\<infty\>,-\<varepsilon\>+x|[>\<in\>\<cal-B\><rsub|-\<infty\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>>
        we have that\ 

        <\equation*>
          \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>> such
          that y\<in\>B\<subseteq\>x+U
        </equation*>

        <item*|<math|u\<in\>\<infty\>>>Using \ [theorem: <reference|extended
        open set properties>] there exists a
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that

        <\equation*>
          u=\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U
        </equation*>

        Let <math|z\<in\><around*|]|\<varepsilon\>+x,\<infty\>|]>> then
        <math|\<varepsilon\>+x\<less\>z\<leqslant\>\<infty\>> so that
        <math|\<varepsilon\>\<less\>z-x\<leqslant\>\<infty\>> proving that
        <math|z-x\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>,
        hence <math|z=x+<around*|(|z-x|)>\<in\>x+U> or
        <math|<around*|]|\<varepsilon\>+x,\<infty\>|]>\<subseteq\>x+U>. As
        <math|y=x+u=x+\<infty\>=\<infty\>> it follows that
        <math|y\<in\><around*|]|\<varepsilon\>+x,\<infty\>|]>\<subseteq\>x+U>.
        Hence if we take <math|<rigid|B=<around*|]|\<varepsilon\>+x,\<infty\>|]>\<in\>\<cal-B\><rsub|-\<infty\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>>
        we have that\ 

        <\equation*>
          \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>> such
          that y\<in\>B\<subseteq\>x+U
        </equation*>
      </description>

      As <math|y\<in\>x+U> was chosen arbitrary and in all cases we found a
      <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> [the
      generating basis of <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>]
      such that <math|y\<in\>B\<subseteq\>x+U> it follows that
      <math|x+U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

      <item>If <math|y\<in\>x\<cdot\>U> then there exist a <math|u\<in\>U>
      such that <math|y=x\<cdot\>y>. For <math|u\<in\>U> we have the
      following possibilities.\ 

      <\description>
        <item*|<math|u\<in\>\<bbb-R\>>>Using \ [theorem: <reference|extended
        open set properties>] there exist a
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that

        <\equation*>
          u\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U
        </equation*>

        For <math|x\<neq\>0> we have now either:

        <\description>
          <item*|<math|0\<less\>x>>Then <math|x\<cdot\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
          so that <math|x\<cdot\>u-x\<cdot\>\<varepsilon\>\<less\>x\<cdot\>u\<less\>x\<cdot\>u+x\<cdot\>\<varepsilon\>>.
          so that\ 

          <\equation*>
            y=x\<cdot\>u\<in\><around*|]|x\<cdot\>u-x\<cdot\>\<varepsilon\>,x\<cdot\>u+x\<cdot\>\<varepsilon\>|[>
          </equation*>

          Further if <math|z\<in\><around*|]|x\<cdot\>u-x\<cdot\>\<varepsilon\>,x\<cdot\>u+x\<cdot\>\<varepsilon\>|[>>
          then <math|x\<cdot\>u-x\<cdot\>\<varepsilon\>\<less\>z\<less\>x\<cdot\>u+x\<cdot\>\<varepsilon\>>
          so, as <math|0\<less\>x>, <math|u-\<varepsilon\>\<less\><frac|z|x>\<less\>x+\<varepsilon\>>.
          Hence <math|<frac|z|x>\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
          so that <math|z=x\<cdot\><frac|z|x>\<in\>x\<cdot\>U> proving that

          <\equation*>
            y=x\<cdot\>u\<in\><around*|]|x\<cdot\>u-x\<cdot\>\<varepsilon\>,x\<cdot\>u+x\<cdot\>\<varepsilon\>|[>\<subseteq\>x\<cdot\>U
          </equation*>

          Take <math|B=]x\<cdot\>u-x\<cdot\>\<varepsilon\>,x\<cdot\>u+x\<cdot\>\<varepsilon\>[\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          then we have that\ 

          <\equation*>
            \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
            such that >y\<in\>B\<subseteq\>x\<cdot\>U
          </equation*>

          <item*|<math|x\<less\>0>>Then <math|-x\<cdot\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
          so that <math|x\<cdot\>u+x\<cdot\>\<varepsilon\>\<less\>x\<cdot\>u\<less\>x\<cdot\>u-x\<cdot\>\<varepsilon\>>,
          so that\ 

          <\equation*>
            y=x\<cdot\>u\<in\><around*|]|x\<cdot\>u+x\<cdot\>\<varepsilon\>,x\<cdot\>u-x\<cdot\>\<varepsilon\>|[>
          </equation*>

          Further if <math|z\<in\><around*|]|x\<cdot\>u+x\<cdot\>\<varepsilon\>,x\<cdot\>u-x\<cdot\>\<varepsilon\>|[>>
          then <math|x\<cdot\>u+x\<cdot\>\<varepsilon\>\<less\>z\<less\>x\<cdot\>u-x\<cdot\>\<varepsilon\>>
          or, as <math|x\<less\>0\<Rightarrow\><frac|1|x>\<less\>0> that
          <math|u-\<varepsilon\>\<less\><frac|z|x>\<less\>u+\<varepsilon\>>.
          Hence <math|<frac|z|x>\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
          so that <math|z=x\<cdot\><frac|z|x>\<in\>x\<cdot\>U> proving that\ 

          <\equation*>
            y\<in\><around*|]|x\<cdot\>u+x\<cdot\>\<varepsilon\>,x\<cdot\>u-x\<cdot\>\<varepsilon\>|[>\<subseteq\>x\<cdot\>U
          </equation*>

          Take <math|B=<around*|]|x\<cdot\>u+x\<cdot\>\<varepsilon\>,x\<cdot\>u-x\<cdot\>\<varepsilon\>|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          then we have that\ 

          <\equation*>
            \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
            such that >y\<in\>B\<subseteq\>x\<cdot\>U
          </equation*>
        </description>

        As <math|y\<in\>x\<cdot\>U> was chosen arbitrary and in all cases we
        found a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        [the generating basis of <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>]
        such that <math|y\<in\>B\<subseteq\>x\<cdot\>U> it follows that
        <math|x\<cdot\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|u=-\<infty\>>>Using \ [theorem: <reference|extended open
        set properties>] there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
        such that\ 

        <\equation*>
          -\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U
        </equation*>

        For <math|x\<neq\>0> we have either:\ 

        <\description>
          <item*|<math|0\<less\>x>>then

          <\equation*>
            y=x\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>\<in\><around*|[|-\<infty\>,-x\<cdot\>\<varepsilon\>|[><text|
            where >x\<cdot\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>
          </equation*>

          further if <math|z\<in\><around*|[|-\<infty\>,-x\<cdot\>\<varepsilon\>|[>>
          then <math|-\<infty\>\<leqslant\>z\<less\>-x\<cdot\>\<varepsilon\>>
          so that <math|-\<infty\>\<leqslant\><frac|z|x>\<less\>-\<varepsilon\>>
          proving that <math|<frac|z|x>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>
          or that <math|z=x\<cdot\><frac|z|x>\<in\>x\<cdot\>U>. Hence

          <\equation*>
            y\<in\><around*|[|-\<infty\>,-x\<cdot\>\<varepsilon\>|[>\<subset\>x\<cdot\>U
          </equation*>

          Take <math|B=<around*|[|-\<infty\>,-x\<cdot\>\<varepsilon\>|[>\<in\>\<cal-B\><rsub|-\<infty\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          then we have\ 

          <\equation*>
            \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
            such that >y\<in\>B\<subseteq\>x\<cdot\>U
          </equation*>

          <item*|<math|x\<less\>0>>then

          <\equation*>
            y=x\<cdot\><around*|(|-\<infty\>|)>=\<infty\>\<in\><around*|]|-x\<cdot\>\<varepsilon\>,\<infty\>|]><text|
            where >-x\<cdot\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>
          </equation*>

          further if <math|z\<in\><around*|]|-x\<cdot\>\<varepsilon\>,\<infty\>|]>>
          then <math|-x\<cdot\>\<varepsilon\>\<less\>z\<leqslant\>\<infty\>>
          so that <math|-\<infty\>=<frac|1|x>\<cdot\>\<infty\>\<leqslant\><frac|z|x>\<less\>-x\<cdot\>\<varepsilon\>>
          proving that <math|<frac|z|x>\<in\><around*|[|-\<infty\>,-x\<cdot\>\<varepsilon\>|[>\<subseteq\>U>
          so that <math|z=x\<cdot\><frac|z|x>\<in\>x\<cdot\>U>. Hence

          <\equation*>
            y\<in\><around*|]|-x\<cdot\>\<varepsilon\>,\<infty\>|]>\<subset\>x\<cdot\>U
          </equation*>

          Take <math|B=<around*|]|-x\<cdot\>\<varepsilon\>,\<infty\>|]>\<in\>\<cal-B\><rsub|\<infty\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          then we have\ 

          <\equation*>
            \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
            such that >y\<in\>B\<subseteq\>x\<cdot\>U
          </equation*>
        </description>

        As <math|y\<in\>x\<cdot\>U> was chosen arbitrary and in all cases we
        found a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        [the generating basis of <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>]
        such that <math|y\<in\>B\<subseteq\>x\<cdot\>U> it follows that
        <math|x\<cdot\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

        <item*|<math|u=\<infty\>>>Using \ [theorem: <reference|extended open
        set properties>] there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
        such that\ 

        <\equation*>
          \<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U
        </equation*>

        For <math|x\<neq\>0> we have either:\ 

        <\description>
          <item*|<math|0\<less\>x>>then

          <\equation*>
            y=x\<cdot\>\<infty\>=\<infty\>\<in\><around*|]|x\<cdot\>\<varepsilon\>,\<infty\>|]><text|
            where >x\<cdot\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>
          </equation*>

          further if <math|z\<in\><around*|]|x\<cdot\>\<varepsilon\>,\<infty\>|]>>
          then <math|x\<cdot\>\<varepsilon\>\<less\>z\<leqslant\>\<infty\>>
          so that <math|\<varepsilon\>\<less\><frac|z|x>\<leqslant\>\<infty\>>,
          proving that <math|<frac|z|x>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>
          or that <math|z=x\<cdot\><frac|z|x>\<in\>x\<cdot\>U>. Hence

          <\equation*>
            y\<in\><around*|]|x\<cdot\>\<varepsilon\>,\<infty\>|]>\<subset\>x\<cdot\>U
          </equation*>

          Take <math|B=<around*|]|x\<cdot\>\<varepsilon\>,\<infty\>|]>\<in\>\<cal-B\><rsub|\<infty\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          then we have\ 

          <\equation*>
            \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
            such that >y\<in\>B\<subseteq\>x\<cdot\>U
          </equation*>

          <item*|<math|x\<less\>0>>then

          <\equation*>
            y=x\<cdot\>\<infty\>=-\<infty\>\<in\><around*|[|-\<infty\>,x\<cdot\>\<varepsilon\>|[><text|
            where >-x\<cdot\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>
          </equation*>

          further if <math|z\<in\><around*|[|-\<infty\>,x\<cdot\>\<varepsilon\>|[>>
          then \ <math|-\<infty\>\<leqslant\>z\<less\>x\<cdot\>\<varepsilon\>>
          so that <math|\<varepsilon\>\<less\><frac|z|x>\<leqslant\>\<infty\>>,
          proving that <math|<frac|z|x>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>
          so that <math|z=x\<cdot\><frac|z|x>\<in\>x\<cdot\>U>. Hence

          <\equation*>
            y\<in\><around*|[|-\<infty\>,x\<cdot\>\<varepsilon\>|[>\<subset\>x\<cdot\>U
          </equation*>

          Take <math|B=<around*|[|-\<infty\>,x\<cdot\>\<varepsilon\>|[>\<in\>\<cal-B\><rsub|-\<infty\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          then we have that

          <\equation*>
            \<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text|
            such that >y\<in\>B\<subseteq\>x\<cdot\>U
          </equation*>
        </description>

        As <math|y\<in\>x\<cdot\>U> was chosen arbitrary and in all cases we
        found a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        [the generating basis of <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>]
        such that <math|y\<in\>B\<subseteq\>x\<cdot\>U> it follows that
        <math|x\<cdot\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended topology od Hsusdorff><math|\<frak-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    is Hausdorff [see definition: <reference|separation Hausdorff>].
  </theorem>

  <\proof>
    Let <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with <math|x\<neq\>y>
    then we have to check the following cases for <math|x,y>:

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Then we have as
      <math|x\<neq\>y> we have either:

      <\description>
        <item*|<math|x\<less\>y>>Take <math|\<varepsilon\>=<frac|y-x|2>\<in\>\<bbb-R\><rsup|+>>
        then <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        and <math|y\<in\><around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
        Further\ 

        <\equation*>
          <around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>=<around*|]|x-\<varepsilon\>,x+<frac|y-x|2>|[>=<around*|]|x-\<varepsilon\>,<frac|x+y|2>|[>
        </equation*>

        and

        <\equation*>
          <around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>=<around*|]|y-<frac|y-x|2>,y+\<varepsilon\>|[>=<around*|]|<frac|x+y|2>,y+\<varepsilon\>|[>
        </equation*>

        so that <math|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[><big|cap><around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>=\<varnothing\>>.

        <item*|<math|y\<less\>x>>Take <math|\<varepsilon\>=<frac|x-y|2>\<in\>\<bbb-R\><rsup|+>>
        then <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        and <math|y\<in\><around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
        Further\ 

        <\equation*>
          <around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>=<around*|]|x-<frac|x-y|2>,x+y|[>=<around*|]|<frac|x+y|2>,x+y|[>
        </equation*>

        and

        <\equation*>
          <around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>=<around*|]|y-\<varepsilon\>,y+<frac|x-y|2>|[>=<around*|]|y-\<varepsilon\>,<frac|x+y|2>|[>
        </equation*>

        so that <math|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[><big|cap><around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>=\<varnothing\>>.
      </description>

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
      <math|x=-\<infty\>\<in\><around*|[|-\<infty\>,y-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
      <math|y\<in\><around*|]|y-1,y+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <rigid|<math|<around*|[|-\<infty\>,y-1|[><big|cap><around*|]|y-1,y+1|[>=\<varnothing\>>>.

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>Then
      <math|x=\<infty\>\<in\><around*|]|y+1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
      <math|y\<in\><around*|]|y-1,y+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <rigid|<math|<around*|]|y+1,\<infty\>|[><big|cap><around*|]|y-1,y+1|[>=\<varnothing\>>>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>Then
      <math|x\<in\><around*|]|x-1,x+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
      <math|y=-\<infty\>\<in\><around*|[|-\<infty\>,x-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|<rigid|<around*|]|x-1,x+1|[><big|cap><around*|[|-\<infty\>,x-1|[>>=\<infty\>>.

      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>As <math|x\<neq\>y>
      this is not a valid case.

      <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Then
      <math|x\<in\><around*|]|1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
      <math|y\<in\><around*|[|-\<infty\>,1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|<around*|]|1,\<infty\>|]><big|cap><around*|[|-\<infty\>,1|[>=\<infty\>>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>Then
      <math|x\<in\><around*|]|x-1,x+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
      <math|y\<in\><around*|]|x+1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <rigid|<math|<around*|]|x-1,x+1|[><big|cap><around*|]|x+1,\<infty\>|]>=\<varnothing\>>.>

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>Then
      <math|x\<in\><around*|[|-\<infty\>,1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
      <math|\<in\><around*|]|1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|<around*|[|-\<infty\>,1|[><big|cap><around*|]|1,\<infty\>|]>=\<varnothing\>>.

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>As <math|x\<neq\>y> this
      is not a valid case
    </description>
  </proof>

  <subsection|Sequences in <math|<wide|\<bbb-R\>|\<wide-bar\>>>>

  We will now extend the concept of a limit of sequences in <math|\<bbb-R\>>
  to the limit of sequences in <math|<wide|\<bbb-R\>|\<wide-bar\>>> in such a
  way that the limit of increasing/decreasing sequences always exists. So if
  we have a series of non negative numbers then the limit of the partial sums
  will always have a limit, in other words series of non negative numbers
  always converges. To do this we make use of the fact that in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> every non empty subset has a supremum
  and infinum and define the limit of a sequence in terms of supremum and
  infinum.\ 

  <\theorem>
    <label|extended inf(sup) sup(inf)>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    be a sequence of extended real numbers then we have:

    <\enumerate>
      <item><math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      and <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      exists

      <item><math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      exists

      <item><math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      exists

      <item><math|\<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have\ 

      <\equation*>
        sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|\<nobracket\>>
      </equation*>

      <item><math|\<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have\ 

      <\equation*>
        inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|\<nobracket\>>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|><math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<neq\>\<varnothing\>>
      this follows from [theorem: <reference|extended sup and inf exist>].

      <item>As <math|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<neq\>\<varnothing\>>
      this this follows from [theorem: <reference|extended sup and inf
      exist>].

      <item>As <math|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<neq\>\<varnothing\>>
      this follows from [theorem: <reference|extended sup and inf exist>].

      <item>Given <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> take
      <math|S<rsub|l>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
      then we have\ 

      <\equation*>
        <around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>
      </equation*>

      so that by [theorem: <reference|order sup,inf and inclusion>]

      <\equation>
        <label|eq 20.4.155>sup<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      For the opposite inclusion, given <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      take <math|n=max<around*|(|m,l|)>> then <math|m,l\<leqslant\>n> so that\ 

      <\equation*>
        <around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>
      </equation*>

      or using \ [theorem: <reference|extended sup and inf exist>]\ 

      <\equation*>
        S<rsub|n>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>=S<rsub|l><rsub|>
      </equation*>

      Hence for every <math|S<rsub|l>\<in\><around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      we find a <math|S<rsub|n>\<in\><around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>>
      such that <math|S<rsub|n>\<leqslant\>S<rsub|l>> which by [theorem:
      <reference|order sup and inf and bigger elements>] proves that
      <math|sup<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>>.
      Combining this result with [eq: <reference|eq 20.4.155>] gives\ 

      <\equation*>
        sup<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      or\ 

      <\equation*>
        sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|\<nobracket\>>
      </equation*>

      <item>Given <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> take
      <math|S<rsub|l>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
      then we have\ 

      <\equation*>
        <around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>
      </equation*>

      so that by [theorem: <reference|order sup,inf and inclusion>]

      <\equation>
        <label|eq 20.5.155>inf<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      For the opposite inclusion, given <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      take <math|n=max<around*|(|m,l|)>> then <math|m,l\<leqslant\>n> so that\ 

      <\equation*>
        <around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>
      </equation*>

      or using \ [theorem: <reference|extended sup and inf exist>]\ 

      <\equation*>
        S<rsub|n>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=S<rsub|l><rsub|>
      </equation*>

      Hence for every <math|S<rsub|l>\<in\><around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      we find a <math|S<rsub|n>\<in\><around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>>
      such that <math|S<rsub|l>\<leqslant\>S<rsub|n>> which by [theorem:
      <reference|order sup and inf and bigger elements>] proves that
      <math|inf<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
      Combining this result with [eq: <reference|eq 20.5.155>] gives\ 

      <\equation*>
        inf<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|S<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      or\ 

      <\equation*>
        inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|\<nobracket\>>
      </equation*>
    </enumerate>
  </proof>

  Using the above theorem we can then define:

  <\definition>
    <label|extended lim inf and lim sup><index|<math|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>>><index|<math|<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    be a sequence of extended real numbers then we define:\ 

    <\equation*>
      <below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    <\equation*>
      <below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    <\note>
      <dueto|>The previous theorem [theorem: <reference|extended inf(sup)
      sup(inf)>] ensures that the above definition is well defined for every
      sequence of extended real numbers. Note also that the notations
      <math|<below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>>,
      <math|<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>> do not
      mention the starting index <math|k>, which is indeed not needed because
      of \ [theorem: <reference|extended inf(sup) sup(inf)> (4),(5)].
    </note>
  </definition>

  <\example>
    <label|extended constant sequence>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then for
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    defined by <math|x<rsub|i>=x> we have that\ 

    <\equation*>
      <below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>=x=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>
    </equation*>
  </example>

  <\proof>
    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|x\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|x|}>|)>>>|<row|<cell|>|<cell|=>|<cell|x>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|x|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|x\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
      sup|n\<rightarrow\>\<infty\>> x<rsub|n>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|extended lim inf x_i+n>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then for
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    we have <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> that\ 

    <\equation*>
      <below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i+n><text| and ><below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i+n>
    </equation*>
  </theorem>

  <\proof>
    Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|{|x<rsub|i+n>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>>|<cell|\<Leftrightarrow\>>|<cell|x=x<rsub|i+n><text|
      where >i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x=x<rsub|i><text|
      where >i\<in\><around*|{|l+n,\<ldots\>,\<infty\>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|l+n,\<ldots\>,\<infty\>|}>|}>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 20.6.155>\<forall\>l\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text|
      ><around*|{|x<rsub|i+n>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>=<around*|{|x<rsub|i>\|i\<in\><around*|{|l+n,\<ldots\>,\<infty\>|}>|}>
    </equation>

    Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and define
    <math|I<rsub|l>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
    and <math|S<rsub|l>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
    then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|{|I<rsub|l+n>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>|<cell|\<Leftrightarrow\>>|<cell|x=I<rsub|l+n><text|
      where >l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x=I<rsub|l><text|
      where >l\<in\><around*|{|k+n,\<ldots\>,\<infty\>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|I<rsub|l>\|l\<in\><around*|{|k+n,\<ldots\>,\<infty\>|}>|}>>>|<row|<cell|x\<in\><around*|{|S<rsub|l+n>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>|<cell|\<Leftrightarrow\>>|<cell|x=S<rsub|l+n><text|
      where >l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x=S<rsub|l><text|
      where >l\<in\><around*|{|k+n,\<ldots\>,\<infty\>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|S<rsub|l>\|l\<in\><around*|{|k+n,\<ldots\>,\<infty\>|}>|}>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 20.7.155><around*|{|I<rsub|l+n>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>=<around*|{|I<rsub|l>\|l\<in\><around*|{|k+n,\<ldots\>,\<infty\>|}>|}>\<wedge\><around*|{|S<rsub|l+n>\|l\<in\><around*|{|k,\<ldots\>,n|}>|}>=<around*|{|S<rsub|l>\|l\<in\><around*|{|k+n,\<ldots\>,\<infty\>|}>|}>
    </equation>

    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i+n>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i+n>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.6.155>]>>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l+n,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.7.155>]>>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k+n,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended inf(sup) sup(inf)>]>>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
    </eqnarray*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i+n>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i+n>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.6.155>]>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l+n,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.7.155>]>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k+n,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended inf(sup) sup(inf)>]>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|extended lim inf lim sup ineqality (1)>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    be such that <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    <math|x<rsub|i>\<leqslant\>y<rsub|i>> then\ 

    <\enumerate>
      <item><math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\>>
      y<rsub|i>>.

      <item><math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<leqslant\><below|lim sup|i\<rightarrow\>\<infty\>>
      y<rsub|i>>.
    </enumerate>

    \ 
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then using
      [theorem: <reference|order sup and inf and bigger elements>] we have
      that

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Applying [theorem: <reference|order sup and inf and bigger elements>]
      again we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|n\<rightarrow\>\<infty\>>
        x<rsub|n>>|<cell|\<equallim\><rsub|def>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)><around*|\||l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\|>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
        inf|n\<rightarrow\>\<infty\>> y<rsub|n>>>>>
      </eqnarray*>

      <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then using
      [theorem: <reference|order sup and inf and bigger elements>] we have
      that

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Applying [theorem: <reference|order sup and inf and bigger elements>]
      again we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|n\<rightarrow\>\<infty\>>
        x<rsub|n>>|<cell|\<equallim\><rsub|def>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)><around*|\||l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\|>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
        inf|n\<rightarrow\>\<infty\>> y<rsub|n>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended lim inf lim sup ineqality (2)>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    and <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then we have:

    <\enumerate>
      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x\<leqslant\>x<rsub|i>> then <math|x\<leqslant\><below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>> and
      <math|x\<leqslant\><below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>>.

      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x<rsub|i>\<leqslant\>x> then <math|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\>x> and
      <math|<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\>x>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
      <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|x\<leqslant\>x<rsub|i>> so that\ 

      <\equation*>
        x\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)><text|
        and >x\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      hence we have that\ 

      <\equation*>
        x\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>
      </equation*>

      and

      <\equation*>
        x\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>
      </equation*>

      <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
      <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i>\<leqslant\>x> so that\ 

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<text|
        and >sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x
      </equation*>

      hence we have that\ 

      <\equation*>
        <below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x
      </equation*>

      and

      <\equation*>
        <below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x
      </equation*>
    </enumerate>
  </proof>

  <\lemma>
    <label|extended sup of set and sum>Let
    <math|\<varnothing\>\<neq\>S\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have:\ 

    <\enumerate>
      <item>If <math|y\<in\>\<bbb-R\>> then\ 

      <\enumerate>
        <item><math|sup<around*|(|S|)>+y> is well defined then for
        <math|S+y=<around*|{|s+y=s\<in\>S|}>> we have that

        <\equation*>
          sup<around*|(|S+y|)>=sup<around*|(|S|)>+y
        </equation*>

        <item><math|inf<around*|(|S|)>+y> is well defined then for
        <math|S+y=<around*|{|s+y=s\<in\>S|}>> we have that

        <\equation*>
          inf<around*|(|S+y|)>=inf<around*|(|S|)>+y
        </equation*>
      </enumerate>

      <item>If <math|y\<in\><around*|[|0,\<infty\>|]>> and
      <math|S\<subseteq\><around*|[|0,\<infty\>|]>> we have that
      <math|sup<around*|(|S|)>+y> is well defined and for
      <math|<rigid|S+y=<around*|{|s+y\|s\<in\>S|}>>> we have that\ 

      <\equation*>
        sup<around*|(|S+y|)>=sup<around*|(|S|)>+y
      </equation*>

      <item>If <math|y\<in\><around*|[|0,\<infty\>|]>> and
      <math|S\<subseteq\><around*|[|0,\<infty\>|]>> we have that
      <math|inf<around*|(|S|)>+y> is well defined and for
      <math|<rigid|S+y=<around*|{|s+y\|s\<in\>S|}>>> we have that\ 

      <\equation*>
        inf<around*|(|S+y|)>=inf<around*|(|S|)>+y
      </equation*>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item> As <math|y\<in\>\<bbb-R\>> we have
      <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> that <math|x+y>
      is well defined, <math|sup<around*|(|S|)>> exists and
      <math|sup<around*|(|S|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>> it follows
      that <math|sup<around*|(|S+y|)>> is well defined and <math|S+y> is well
      defined.

      <\enumerate>
        <item><math|\<forall\>s\<in\>S> we have that
        <math|s\<leqslant\>sup<around*|(|S|)>> so by [theorem:
        <reference|extended x\<less\>=y then x+z\<less\>=y+z>]
        <math|s+y\<leqslant\>sup<around*|(|S|)>> so that\ 

        <\equation>
          <label|eq 20.8.155>sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>\<leqslant\>sup<around*|(|S|)>+y
        </equation>

        Assume that <math|sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>\<less\>sup<around*|(|S|)>+y>
        then by [theorem: <reference|extended x+z=y+z=\<gtr\>x-y>]\ 

        <\equation*>
          sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>-y\<less\>sup<around*|(|S|)>
        </equation*>

        so there exist a <math|s\<in\>S> such that
        <math|><math|sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>-y\<less\>s>
        so that by [theorem: <reference|extended x\<less\>=y then
        x+z\<less\>=y+z>] <math|sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>\<less\>s+y\<leqslant\>sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>>
        leading to the contradiction <math|sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>\<less\>sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>>.
        Hence the assumption is wrong and we must have
        <math|sup<around*|(|S|)>+y\<leqslant\>sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>>.
        Combining this with [eq: <reference|eq 20.8.155>] gives\ 

        <\equation*>
          sup<around*|(|S+y|)>=sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>=sup<around*|(|S|)>+y
        </equation*>

        <item><math|\<forall\>s\<in\>S> we have that
        <math|inf<around*|(|S|)>\<leqslant\>s> so by [theorem:
        <reference|extended x\<less\>=y then x+z\<less\>=y+z>]
        <math|inf<around*|(|S|)>+y\<leqslant\>s+y> so that\ 

        <\equation>
          <label|eq 20.9.155>inf<around*|(|S|)>+y\<leqslant\>inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>
        </equation>

        Assume that <math|inf<around*|(|S|)>+y\<less\>inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>>
        then by [theorem: <reference|extended x+z=y+z=\<gtr\>x-y>]\ 

        <\equation*>
          inf<around*|(|S|)>\<less\>inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>-y
        </equation*>

        so there exist a <math|s\<in\>S> such that
        <math|><math|s\<less\>inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>-y>
        so that by [theorem: <reference|extended x\<less\>=y then
        x+z\<less\>=y+z>] <math|inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>\<leqslant\>s+y\<less\>inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>>
        leading to the contradiction <math|inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>\<less\>inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>>.
        Hence the assumption is wrong and we must have
        <math|inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>\<leqslant\>inf<around*|(|S|)>+y>.
        Combining this with [eq: <reference|eq 20.9.155>] gives\ 

        <\equation*>
          inf<around*|(|S+y|)>=inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>=inf<around*|(|S|)>+y
        </equation*>
      </enumerate>

      <item>For <math|y\<in\><around*|[|0,\<infty\>|]>> we have either:

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>Then by (1.a) we have that
        <math|sup<around*|(|A|)>+y> is well defined and<space|1em>

        <\equation*>
          sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>=sup<around*|(|S|)>+y
        </equation*>

        <item*|<math|y=\<infty\>>>Then as
        <math|S\<subseteq\><around*|[|0,\<infty\>|]>> we have
        <math|\<forall\>s\<in\>S> that <math|s+y=\<infty\>> so that
        <math|<around*|{|s+y\|s\<in\>S|}>=<around*|{|\<infty\>|}>> so that
        <math|sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>=\<infty\>>.
        Further as <math|\<forall\>s\<in\>S> we have <math|0\<leqslant\>s> it
        follows that <math|-\<infty\>\<less\>0\<leqslant\>sup<around*|(|S|)>>
        so that <math|\<infty\>=sup<around*|(|S|)>+\<infty\>=sup<around*|(|S|)>+y>
        is well defined. Hence\ 

        <\equation*>
          sup<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>=\<infty\>=sup<around*|(|S|)>+\<infty\>=sup<around*|(|S|)>+y
        </equation*>
      </description>

      <item>For <math|y\<in\><around*|[|-\<infty\>,0|]>> we have either:

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>Then by (1.b) we have that
        <math|inf<around*|(|A|)>+y> is well defined and<space|1em>

        <\equation*>
          inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>=inf<around*|(|S|)>+y
        </equation*>

        <item*|<math|y=-\<infty\>>>Then as
        <math|S\<subseteq\><around*|[|-\<infty\>,0|]>> we have
        <math|\<forall\>s\<in\>S> that <math|s+y=-\<infty\>> so that
        <math|<around*|{|s+y\|s\<in\>S|}>=<around*|{|-\<infty\>|}>> so that
        <math|inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>=-\<infty\>>.
        Further as <math|\<forall\>s\<in\>S> we have <math|s\<leqslant\>0> it
        follows that <math|inf<around*|(|S|)>\<leqslant\>0\<less\>\<infty\>>
        so that <math|-\<infty\>=inf<around*|(|S|)>+<around*|(|-\<infty\>|)>=inf<around*|(|S|)>+y>
        is well defined. Hence\ 

        <\equation*>
          inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>=-\<infty\>=inf<around*|(|S|)>+<around*|(|-\<infty\>|)>=sup<around*|(|S|)>+y
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended lim inf and lim sup and sum>Let
    <math|k\<in\>\<bbb-N\><rsub|0><rsub|>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|x\<in\>\<bbb-R\>> [hence <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    we have that <math|x<rsub|i>+x> is well defined] then for
    <math|<around*|{|x<rsub|i>+x|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    we have

    <\enumerate>
      <item><math|<below|lim inf|i\<rightarrow\>\<infty\>>
      <around*|(|x<rsub|i>+x|)>=<around*|(|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>

      <item><math|<below|lim sup|i\<rightarrow\>\<infty\>>
      <around*|(|x<rsub|i>+x|)>=<around*|(|<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item> We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
        <around*|(|x<rsub|i>+x|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>+x\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended sup of set and
        sum>]>>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+x\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended sup of set and
        sum>]>>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
        <around*|(|x<rsub|i>+x|)>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>+x\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended sup of set and
        sum>]>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+x\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended sup of set and
        sum>]>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended inf sup negate>Let <math|\<varnothing\>\<neq\>S\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then\ 

    <\enumerate>
      <item><math|-sup<around*|(|S|)>=inf<around*|(|<around*|{|-s\|s\<in\>S|}>|)>>

      <item><math|-inf<around*|(|S|)>=sup<around*|(|<around*|{|-s\|s\<in\>S|}>|)>>

      <item>If <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> then
      <math|\<alpha\>\<cdot\>sup<around*|(|S|)>=sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>

      <item>If <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> then
      <math|\<alpha\>\<cdot\>inf<around*|(|S|)>=inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|s\<in\>S> then by [theorem: <reference|extended negate>
      <math|s\<leqslant\>sup<around*|(|S|)>> so that
      <math|-sup<around*|(|S|)>\<leqslant\>-s> so that\ 

      <\equation>
        <label|eq 20.10.155>-sup<around*|(|S|)>\<leqslant\>inf<around*|(|<around*|{|-s\|s\<in\>S|}>|\<nobracket\>>
      </equation>

      Assume that <math|-sup<around*|(|S|)>\<less\>inf<around*|(|<around*|{|-s\|s\<in\>S|}>|\<nobracket\>>>
      then by [corollary: <reference|extended negate inequality>]
      <math|-inf<around*|(|<around*|{|-s\|s\<in\>S|}>|)>\<less\>sup<around*|(|S|)>>
      so that there exist a <math|s\<in\>S> such that
      <math|-inf<around*|(|<around*|{|-s\|s\<in\>S|}>|)>\<less\>s> so that by
      [corollary: <reference|extended negate inequality>] again we have
      <math|-s\<less\>inf<around*|(|<around*|{|-s\|s\<in\>S|}>|)>>, hence
      <math|inf<around*|(|<around*|{|-s\|s\<in\>S|}>|)>\<less\>-s\<less\>inf<around*|(|<around*|{|-s\|s\<in\>S|}>|)>>
      a contradiction. So the assumption must be false and we have
      <math|inf<around*|(|<around*|{|-s\|s\<in\>S|}>|)>\<leqslant\>-sup<around*|(|S|)>>,
      combining this with [eq: <reference|eq 20.10.155>] proves that\ 

      <\equation*>
        -sup<around*|(|S|)>=inf<around*|(|<around*|{|-s\|s\<in\>S|}>|)>
      </equation*>

      <item>Take <math|A=<around*|{|-s\|s\<in\>S|}>> then
      <math|S=<around*|{|-s\|s\<in\>A|}>> then\ 

      <\equation*>
        -inf<around*|(|S|)>=-inf<around*|(|<around*|{|-s\|s\<in\>A|}>|)>\<equallim\><rsub|<around*|(|1|)>>-<around*|(|-sup<around*|(|A|)>|)>=sup<around*|(|<around*|{|-s\|s\<in\>S|}>|)>
      </equation*>

      <item>For <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> we have
      either:

      <\description>
        <item*|<math|\<alpha\>=0>>Then <math|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>=<around*|{|0|}>>
        so that

        <\equation*>
          sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>=sup<around*|(|<around*|{|0|}>|)>=0=0\<cdot\>sup<around*|(|S|)>=\<alpha\>\<cdot\>sup<around*|(|S|)>
        </equation*>

        proving that <math|\<alpha\>\<cdot\>sup<around*|(|S|)>=sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>.

        <item*|<math|\<alpha\>\<neq\>0>>Let <math|s\<in\>S> then
        <math|s\<leqslant\>sup<around*|(|s|)>> then, as
        <math|0\<less\>\<alpha\>>, we have by [theorem: <reference|extended
        x\<less\>=y then for 0\<less\>=s we have s.x\<less\>=s.y>] that
        <math|\<alpha\>\<cdot\>s\<leqslant\>\<alpha\>\<cdot\>sup<around*|(|S|)>>.
        Hence\ 

        <\equation>
          <label|eq 20.11.155>sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>\<leqslant\>\<alpha\>\<cdot\>sup<around*|(|S|)>
        </equation>

        Assume that <math|sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>\<less\>\<alpha\>\<cdot\>sup<around*|(|S|)>>
        then as <math|0\<less\>\<alpha\>\<in\>\<bbb-R\>> we have
        <math|0\<less\><frac|1|\<alpha\>>> so that by [theorem:
        <reference|extended x\<less\>=y then for 0\<less\>=s we have
        s.x\<less\>=s.y>] <math|<frac|1|\<alpha\>>\<cdot\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>\<less\>sup<around*|(|S|)>>.
        Hence there exist a <math|s\<in\>S> such that
        <math|<frac|1|\<alpha\>>\<cdot\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>\<less\>s>
        so that by [theorem: <reference|extended x\<less\>=y then for
        0\<less\>=s we have s.x\<less\>=s.y>] again we have
        <rigid|<math|sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>\<less\>\<alpha\>\<cdot\>s\<leqslant\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>>
        a contradiction. Hence the assumption must be false and we have that
        <math|\<alpha\>\<cdot\>sup<around*|(|S|)>\<leqslant\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>,
        combining this with [eq: <reference|eq 20.11.155>] we have\ 

        <\equation*>
          \<alpha\>\<cdot\>sup<around*|(|S|)>=sup<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>
        </equation*>
      </description>

      <item>For <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> we have
      either:

      <\description>
        <item*|<math|\<alpha\>=0>>Then <math|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>=<around*|{|0|}>>
        so that

        <\equation*>
          inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>=inf<around*|(|<around*|{|0|}>|)>=0=0\<cdot\>inf<around*|(|S|)>=\<alpha\>\<cdot\>inf<around*|(|S|)>
        </equation*>

        proving that <math|\<alpha\>\<cdot\>inf<around*|(|S|)>=inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>.

        <item*|<math|\<alpha\>\<neq\>0>>Let <math|s\<in\>S> then
        <math|inf<around*|(|s|)>\<leqslant\>s> then, as
        <math|0\<less\>\<alpha\>>, we have by [theorem: <reference|extended
        x\<less\>=y then for 0\<less\>=s we have s.x\<less\>=s.y>] that
        <rigid|<math|\<alpha\>\<cdot\>inf<around*|(|S|)>\<leqslant\>\<alpha\>\<cdot\>s>>.
        Hence\ 

        <\equation>
          <label|eq 20.12.155>\<alpha\>\<cdot\>inf<around*|(|S|)>\<leqslant\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>
        </equation>

        Assume that <math|\<alpha\>\<cdot\>inf<around*|(|S|)>\<less\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>
        then as <math|0\<less\>\<alpha\>\<in\>\<bbb-R\>> we have
        <math|0\<less\><frac|1|\<alpha\>>> so that by [theorem:
        <reference|extended x\<less\>=y then for 0\<less\>=s we have
        s.x\<less\>=s.y>] <math|inf<around*|(|S|)>\<less\><frac|1|\<alpha\>>\<cdot\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>.
        Hence there exist a <math|s\<in\>S> such that
        <math|s\<less\><frac|1|\<alpha\>>\<cdot\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>
        so that by [theorem: <reference|extended x\<less\>=y then for
        0\<less\>=s we have s.x\<less\>=s.y>] again we have
        <rigid|<math|inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>\<leqslant\>\<alpha\>\<cdot\>s\<less\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>>>
        a contradiction. Hence the assumption must be false and we have that
        <math|inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>\<leqslant\>\<alpha\>\<cdot\>inf<around*|(|S|)>>,
        combining this with [eq: <reference|eq 20.12.155>] we have\ 

        <\equation*>
          \<alpha\>\<cdot\>inf<around*|(|S|)>=inf<around*|(|<around*|{|\<alpha\>\<cdot\>s\|s\<in\>S|}>|)>
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended lim inf lim sup and negation>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have:

    <\enumerate>
      <item><math|<below|lim inf|i\<rightarrow\>\<infty\>>
      <around*|(|-x<rsub|i>|)>=-<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>>.

      <item><math|<below|lim sup|i\<rightarrow\>\<infty\>>
      <around*|(|-x<rsub|i>|)>=-<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
        <around*|(|-x<rsub|i>|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|-x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended inf sup negate>]>>>|<cell|sup<around*|(|<around*|{|-sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended inf sup negate>]>>>|<cell|-inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|-<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
        <around*|(|-x<rsub|i>|)>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|-x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended inf sup negate>]>>>|<cell|inf<around*|(|<around*|{|-inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended inf sup negate>]>>>|<cell|-sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|-<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\lemma>
    <label|extended lemma 20.62.155>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>,
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
    such that <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
    have [so that <math|x<rsub|i>+y<rsub|i>> is well defined] then we have:

    <\enumerate>
      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i>\<leqslant\>x<rsub|i+1>\<wedge\>y<rsub|i>\<leqslant\>y<rsub|i+1>>
      then\ 

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i+1>\<leqslant\>x<rsub|i>\<wedge\>y<rsub|i+1>\<leqslant\>y<rsub|i>>
      then\ 

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      and <math|y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      so that by [theorem: <reference|extended x\<less\>=y then
      x+z\<less\>=y+z>] that

      <\equation>
        <label|eq 20.13.156>x<rsub|i>+y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+y<rsub|i>
      </equation>

      By [theorem: <reference|extended sup inf of real numbers>] and the fact
      that <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>,<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<neq\>-\<infty\>>
      so that

      <\equation*>
        <around*|(|y<rsub|i>,sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
      </equation*>

      and

      <\equation*>
        <around*|(|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>,sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
      </equation*>

      Hence by [theorem: <reference|extended x\<less\>=y then
      x+z\<less\>=y+z>] we have that\ 

      <\equation*>
        y<rsub|i>+sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Using the above, [eq: <reference|eq 20.13.156>] and commutativity we
      have that\ 

      <\equation*>
        x<rsub|i>+y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <\equation>
        <label|eq 20.13.155>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Let <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then for every
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have either:\ 

      <\description>
        <item*|<math|n\<less\>m>>Then <math|x<rsub|m>+y<rsub|n>\<leqslant\>x<rsub|m>+y<rsub|m>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>>
        so that

        <\equation*>
          y<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-x<rsub|m>
        </equation*>

        <item*|<math|m\<leqslant\>n>>Then
        <math|x<rsub|m>+y<rsub|n>\<leqslant\>x<rsub|n>+y<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>>
        so that

        <\equation*>
          y<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-x<rsub|m>
        </equation*>
      </description>

      As in all cases we have <math|><math|y<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-x<rsub|m>>
      it follows that\ 

      <\equation>
        <label|eq 20.14.155>\<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text|
        >sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-x<rsub|m>
      </equation>

      As <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i>\<in\>\<bbb-R\>> we have by [theorem:
      <reference|extended sup inf of real numbers>] only the following
      possibilities for <math|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>:\ 

      <\description>
        <item*|<math|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>>Then
        by [eq: <reference|eq 20.14.155>]
        <math|sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>
        so that <math|>

        <\equation*>
          sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>=sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>

        \ hence

        <\equation*>
          sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>

        <item*|<math|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<in\>\<bbb-R\>>>Then
        by [theorems: <reference|extended x+z=y+z=\<gtr\>x-y>,
        <reference|extended x\<less\>=y then x+z\<less\>=y+z>] and [eq:
        <reference|eq 20.14.155>] we have

        <\equation*>
          x<rsub|m>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>

        so that

        <\equation*>
          sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>

        which by [theorems: <reference|extended x+z=y+z=\<gtr\>x-y>] proves
        that\ 

        <\equation*>
          sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      which combined with [eq: <reference|eq 20.13.155>] proves that\ 

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>Consider the sequences <math|<around*|{|-x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>,
      <math|<around*|{|-y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
      then as <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i+1>\<leqslant\>x<rsub|i>\<wedge\>y<rsub|i+1>\<leqslant\>y<rsub|i>>
      it follows from [theorem: <reference|extended negate inequality>] that
      <math|-x<rsub|i>\<leqslant\>-x<rsub|i+1>\<wedge\>-y<rsub|i>\<leqslant\>-y<rsub|i+1>>.
      Hence we can use (1) to get\ 

      <\equation*>
        sup<around*|(|<around*|{|-x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|-y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|-<around*|(|x<rsub|i>+y<rsub|i>|)>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Then using \ [theorem: <reference|extended inf sup negate>] on the
      above we have\ 

      <\equation*>
        -inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=-inf<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      hence

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|extended lim inf lim sup properties>Let
    <math|k\<in\>\<bbb-N\><rsub|0>> then <math|<below|lim
    inf|i\<rightarrow\>\<infty\>>> and <math|<below|lim
    sup|i\<rightarrow\>\<infty\>>> have the following properties\ 

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      is a sequence of extended reals and
      <math|0\<leqslant\>\<alpha\>\<in\>\<bbb-R\>> then

      <\enumerate>
        <item><math|<below|lim inf|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>>

        <item><math|<below|lim sup|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>>
      </enumerate>

      \ 

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      are sequences of <with|font-series|bold|real numbers> such that
      <math|<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>|)>+<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
      y<rsub|i>|)>> are well defined then\ 

      <\enumerate>
        <item><math|<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>|)>+<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
        y<rsub|i>|)>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>>

        <item><math|<below|lim sup |i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>\<leqslant\><around*|(|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+<around*|(|<below|lim
        inf|i\<rightarrow\>\<infty\>> y<rsub|i>|)>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
        <around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended inf sup negate>]>>>|<cell|sup<around*|(|<around*|{|\<alpha\>\<cdot\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended inf sup negate>]>>>|<cell|\<alpha\>\<cdot\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><below|lim
        inf|i\<rightarrow\>\<infty\>><space|1em>x<rsub|i>>>>>
      </eqnarray*>

      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
        <around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended inf sup negate>]>>>|<cell|inf<around*|(|<around*|{|\<alpha\>\<cdot\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended inf sup negate>]>>>|<cell|\<alpha\>\<cdot\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><below|lim
        inf|i\<rightarrow\>\<infty\>><space|1em>x<rsub|i>>>>>
      </eqnarray*>

      <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then we
      have that <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>>
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|i>\<in\>\<bbb-R\>>
      and <rigid|<math|><math|inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>y<rsub|i>\<in\>\<bbb-R\>>>
      so that by [theorem: <reference|extended x\<less\>=y then
      x+z\<less\>=y+z>]\ 

      <\equation>
        <label|eq 20.16.156>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+y<rsub|i>\<leqslant\>x<rsub|i>+y<rsub|i>
      </equation>

      Further by [theorem: <reference|extended sup inf of real numbers>] we
      have that <math|><math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>,<math|inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<neq\>\<infty\>>
      so that

      <\equation*>
        <around*|(|y<rsub|i>,inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
      </equation*>

      and\ 

      <\equation*>
        <around*|(|inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>,inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
      </equation*>

      Hence using \ [theorem: <reference|extended x\<less\>=y then
      x+z\<less\>=y+z>] we have that\ 

      <\equation*>
        inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>y<rsub|i>+inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Using the above, [eq: <reference|eq 20.16.156>] and commutativity we
      have that\ 

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|i>+y<rsub|i>
      </equation*>

      So that\ 

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<below|lim
        inf|i\<rightarrow\>\<infty\>> <around*|(|x<rsub|i>+y<rsub|i>|)>>|<cell|>|<cell|<eq-number><label|eq
        20.17.156>>>>>
      </eqnarray*>

      Now <math|\<forall\>l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
      that

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l+1,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      and

      <\equation*>
        inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l+1,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      so that by [theorem: <reference|extended lemma 20.62.155>]\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|sup<around*|(|<around*|{|<around*|{|x<rsub|i>\|i\<in\><around*|{|l+1,\<ldots\>,\<infty\>|}>|}>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|<around*|{|y<rsub|i>\|i\<in\><around*|{|l+1,\<ldots\>,\<infty\>|}>|}>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>+<below|lim
        inf|i\<rightarrow\>\<infty\>> y<rsub|i>>|<cell|>|<cell|>>>>
      </eqnarray*>

      Substituting the above in [eq: <reference|eq 20.17.156>] gives finally\ 

      <\equation>
        <label|eq 20.18.156>\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\><text|
        ><below|<text|>lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>+<below|lim
        inf|i\<rightarrow\>\<infty\>> y<rsub|i>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>> <around*|(|x<rsub|i>+y<rsub|i>|)>
      </equation>

      Consider <math|>the sequences <math|<around*|{|-x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,<around*|{|-y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
      then by [eq: <reference|eq 20.18.156>] we have that\ 

      <\equation*>
        <text| ><below|<text|>lim inf|i\<rightarrow\>\<infty\>>
        <around*|(|-x<rsub|i>|)>+<below|lim inf|i\<rightarrow\>\<infty\>>
        <around*|(|-y<rsub|i>|)>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|-<around*|(|x<rsub|i>+y<rsub|i>|)>|)>
      </equation*>

      Then using \ [theorem: <reference|extended inf sup negate>] on the
      above gives\ 

      <\equation*>
        <text| ><below|<text|>-lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>+<around*|(|<below|-lim sup|i\<rightarrow\>\<infty\>>
        y<rsub|i>|)>\<leqslant\><below|-lim sup|i\<rightarrow\>\<infty\>>
        <around*|(|x<rsub|i>+y<rsub|i>|)>
      </equation*>

      hence\ 

      <\equation*>
        <below|lim sup|i\<rightarrow\>\<infty\>>
        <around*|(|x<rsub|i>+y<rsub|i>|)>\<leqslant\><below|<text|>lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i><below|<text|>+lim
        sup|i\<rightarrow\>\<infty\>> y<rsub|i>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended lim inf \<less\>= lim sup>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>\<leqslant\><below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>>
  </theorem>

  <\proof>
    Fix <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
    <math|\<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    either:\ 

    <\description>
      <item*|<math|m\<in\><around*|{|k,\<ldots\>,n-1|}>>>then
      <math|m\<less\>n> so that <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i><around*|\||i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|\|>|}>>
      hence\ 

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item*|<math|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>then
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)><below|\<leqslant\>|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
    </description>

    hence we have\ 

    <\equation*>
      \<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| we have
      >inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    so we have\ 

    <\equation*>
      sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    or\ 

    <\equation*>
      \<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}> <below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    so that\ 

    <\equation*>
      <below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>
    </equation*>
  </proof>

  <\remark>
    <label|extended lim inf lim sup in the set of real numbers>If we note
    <math|\<leqslant\><rsub|\<bbb-R\>>> as the order relation on
    <math|\<bbb-R\>>, <math|sup<rsub|\<bbb-R\>>> and
    <math|inf<rsub|\<bbb-R\>>> the supremum and infinum in <math|\<bbb-R\>>
    and <math|lim<rsub|\<bbb-R\>>>the limit in
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\><rsub|\<bbb-R\>>|\<rangle\>>>
    where <math|<around*|\|||\|><rsub|\<bbb-R\>>> is the absolute value on
    <math|\<bbb-R\>> then we have in [definition: <reference|limit limsup
    liminf>] defined <math|<below|lim<rsub|\<bbb-R\>>
    inf|i\<rightarrow\>\<infty\>>> and <math|<below|lim<rsub|\<bbb-R\>>
    sup|i\<rightarrow\>\<infty\>>> defined by\ 

    <\enumerate>
      <item><math|<below|lim<rsub|\<bbb-R\>> sup|n\<rightarrow\>\<infty\>>
      x<rsub|n>> exist if\ 

      <\enumerate>
        <item><math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|sup<rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
        exist\ 

        <item><math|<below|lim<rsub|\<bbb-R\>>|n\<rightarrow\>\<infty\>>
        sup<rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
        exist
      </enumerate>

      If <math|<below|lim<rsub|\<bbb-R\>> sup|n\<rightarrow\>\<infty\>>
      x<rsub|n>> exist then <math|<below|lim<rsub|\<bbb-R\>>
      sup|n\<rightarrow\>\<infty\>> x<rsub|n>=<below|lim<rsub|\<bbb-R\>>|m\<rightarrow\>\<infty\>>
      sup<rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>

      <item><math|<below|lim<rsub|\<bbb-R\>> inf|n\<rightarrow\>\<infty\>>
      x<rsub|n>> exist if\ 

      <\enumerate>
        <item><math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|inf<rsub|R><around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
        exist\ 

        <item><math|<below|lim<rsub|\<bbb-R\>>|n\<rightarrow\>\<infty\>>
        inf<rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
        exist
      </enumerate>

      If <math|<below|lim<rsub|\<bbb-R\>> inf|n\<rightarrow\>\<infty\>>
      x<rsub|n>> exist then <math|<below|lim<rsub|\<bbb-R\>>
      inf|n\<rightarrow\>\<infty\>> x<rsub|n>=<below|lim<rsub|\<bbb-R\>>|m\<rightarrow\>\<infty\>>inf<rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
    </enumerate>

    Using [theorem: <reference|limit limsup liminf (equivalent definition)>]
    the above definition is equivalent with\ 

    <\enumerate>
      <item>\ 

      <\equation*>
        <below|<text|lim><rsub|\<bbb-R\> > sup|n\<rightarrow\>\<infty\>>
        x<rsub|n><text| exist>
      </equation*>

      <\equation*>
        \<Updownarrow\>
      </equation*>

      <\equation*>
        \<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text|
        sup><rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)><text|
        exist>
      </equation*>

      <\equation*>
        and
      </equation*>

      <\equation*>
        <text|inf><rsub|\<bbb-R\>> <around*|(|<text|sup><rsub|\<bbb-R\>><around*|\<nobracket\>|<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>.,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><text|
        exist>
      </equation*>

      Further if <math|<below|lim<rsub|\<bbb-R\>>
      sup|n\<rightarrow\>\<infty\>> x<rsub|n>> exist then\ 

      <\equation*>
        <below|<text|lim><rsub|\<bbb-R\>> sup|n\<rightarrow\>\<infty\>>
        x<rsub|n>=inf<around*|(|<around*|{|<text|sup><rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i><rsub|>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>

      <\equation*>
        <below|<text|lim><rsub|\<bbb-R\>> inf|n\<rightarrow\>\<infty\>>
        x<rsub|n><text| exist>
      </equation*>

      <\equation*>
        \<Updownarrow\>
      </equation*>

      <\equation*>
        \<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text|
        inf><rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)><text|
        exist>
      </equation*>

      <\equation*>
        and
      </equation*>

      <\equation*>
        <text|sup><rsub|\<bbb-R\>><around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>.,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><text|
        exist>
      </equation*>

      Further if <math|<below|lim<rsub|\<bbb-R\>>
      inf|n\<rightarrow\>\<infty\>> x<rsub|n>> exist then\ 

      <\equation*>
        <below|<text|lim><rsub|\<bbb-R\>> inf|n\<rightarrow\>\<infty\>>
        x<rsub|n>=<text|sup><rsub|\<bbb-R\>><around*|(|<around*|{|<text|inf><rsub|\<bbb-R\>><around*|(|<around*|{|x<rsub|i><rsub|>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>

    Using [theorem: <reference|limit limsup liminf and limit>] we have that\ 

    <\equation*>
      <below|<text|lim><rsub|\<bbb-R\>>|n\<rightarrow\>\<infty\>>x<rsub|n><text|
      exist >\<Leftrightarrow\><text| ><below|<text|lim><rsub|\<bbb-R\>>
      inf|n\<rightarrow\>\<infty\>> x<rsub|n><text| and
      ><below|<text|lim><rsub|\<bbb-R\>> \ sup|n\<rightarrow\>\<infty\>>
      x<rsub|n><text| exists and ><below|<text|lim><rsub|\<bbb-R\>>
      inf|n\<rightarrow\>\<infty\>> x<rsub|n>=<below|<text|lim><rsub|\<bbb-R\>>
      sup|n\<rightarrow\>\<infty\>> x<rsub|n>
    </equation*>

    Further if <math|<below|lim<rsub|\<bbb-R\>>|n\<rightarrow\>\<infty\>>x<rsub|i>>
    exist then\ 

    <\equation*>
      <below|<text|lim><rsub|\<bbb-R\>>|n\<rightarrow\>\<infty\>>x<rsub|n>=<below|<text|lim><rsub|\<bbb-R\>>
      inf|n\<rightarrow\>\<infty\>> x<rsub|i>=<text|lim><rsub|\<bbb-R\>><below|
      sup|n\<rightarrow\>\<infty\>> x<rsub|n>
    </equation*>

    This suggest the following extension of a limit in <math|\<bbb-R\>> to
    the limit in <math|<wide|\<bbb-R\>|\<wide-bar\>>>
  </remark>

  <\definition>
    <label|extended limit><index|limit in
    <math|<wide|\<bbb-R\>|\<wide-bar\>>>><index|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>Let
    <math|k\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    such that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>> then we say
    that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exist and we
    have by definition that\ 

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>
    </equation*>

    <\note>
      In this chapter we use <math|lim>for the <math|lim> in
      <math|<wide|\<bbb-R\>|\<wide-bar\>>> which is defined using only the
      order relation <math|\<leqslant\>>. As for <math|\<bbb-R\>>
      <math|lim<rsub|\<bbb-R\>>>represents the limit in <math|\<bbb-R\>>
      which is based on the absolute value
      <math|<around*|\|||\|><rsub|\<bbb-R\>>> in <math|\<bbb-R\>> but can be
      defined by the order relation <math|\<leqslant\><rsub|\<bbb-R\>>> in
      <math|\<bbb-R\>> where <math|\<leqslant\><rsub|\<bbb-R\>>\<subseteq\>\<leqslant\>>.
      Further <math|sup>, <math|inf>, <math|lim inf>, <math|lim sup>are all
      defined in <math|<wide|\<bbb-R\>|\<wide-bar\>>> using the order
      relation <math|\<leqslant\>> on <math|<wide|\<bbb-R\>|\<wide-bar\>>>
      and <math|sup<rsub|\<bbb-R\>>>, <math|inf<rsub|\<bbb-R\>>> are defined
      on <math|\<bbb-R\>> using the order relation
      <math|\<leqslant\><rsub|\<bbb-R\>>> on <math|\<bbb-R\>> and
      <math|lim<rsub|\<bbb-R\>> inf>, <math|lim<rsub|\<bbb-R\>> sup>are
      defined in [definition: <reference|limit limsup liminf>] or [theorem:
      <reference|limit limsup liminf (equivalent definition)>].
    </note>
  </definition>

  <\example>
    <label|extended limit constant sequence>Let
    <math|k\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    is defined by <math|x<rsub|i>=x> where
    <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>.
  </example>

  <\proof>
    This follows from the definition and [example: <reference|extended
    constant sequence>].
  </proof>

  <\example>
    <label|extended limit (-@@)^n>Let <math|k\<in\>\<bbb-N\><rsub|0>> then
    the sequence <math|<around*|{|<around*|(|-\<infty\>|)><rsup|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    has no limit
  </example>

  <\proof>
    Let <math|l\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> then we have
    <math|<around*|{|<around*|(|-\<infty\>|)><rsup|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>=<around*|{|-\<infty\>,\<infty\>|}>>
    so that\ 

    <\equation*>
      <around*|{|sup<around*|(|<around*|{|<around*|(|-\<infty\>|)><rsup|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|}>=<around*|{|\<infty\>|}><text|
      and ><around*|{|sup<around*|(|<around*|{|<around*|(|-\<infty\>|)><rsup|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|}>=<around*|{|-\<infty\>|}>
    </equation*>

    hence\ 

    <\equation*>
      <below|lim sup|i\<rightarrow\>\<infty\>>
      <around*|(|-\<infty\>|)><rsup|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|<around*|(|-\<infty\>|)><rsup|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>=\<infty\>|\<nobracket\>>
    </equation*>

    and

    <\equation*>
      <below|lim inf|i\<rightarrow\>\<infty\>>
      <around*|(|-\<infty\>|)><rsup|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|<around*|(|-\<infty\>|)><rsup|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>=-\<infty\>|\<nobracket\>>
    </equation*>

    so that\ 

    <\equation*>
      <below|lim sup|i\<rightarrow\>\<infty\>>
      <around*|(|-\<infty\>|)><rsup|i>\<neq\><below|lim
      inf|i\<rightarrow\>\<infty\>> <around*|(|-\<infty\>|)><rsup|i>
    </equation*>
  </proof>

  We have the following relation between <math|lim<rsub|\<bbb-R\>>> the limit
  in <math|\<bbb-R\>> and <math|lim> the limit in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>.

  <\theorem>
    <label|extended limit in the (extended) real numbers>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
    a sequence of <with|font-series|bold|real> numbers then we have:

    <\enumerate>
      <item>If <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
      x<rsub|i>> exists then <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>>

      <item>If <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<in\>\<bbb-R\>><math|> then
      <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>> x<rsub|i>>
      exists and <math|><math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim<rsub|\<bbb-R\>>
      x<rsub|i>|i\<rightarrow\>\<infty\>>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x=<below|lim<rsub|\<bbb-R\>>
      x<rsub|i>|i\<rightarrow\>\<infty\>>\<in\>\<bbb-R\>>. Assume that
      <math|><math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<less\>x> then as <math|x\<in\>\<bbb-R\>\<Rightarrow\>x\<less\>\<infty\>>
      we have either:\ 

      <\description>
        <item*|<math|><math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=-\<infty\>>>Then <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=-\<infty\>>
        so that by [theorem: <reference|extended infinite inf sup>] it
        follows that <math|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>=<around*|{|-\<infty\>|}>>
        hence\ 

        <\equation>
          <label|eq 20.19.156>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=-\<infty\>
        </equation>

        <\equation*>
          \;
        </equation*>

        As <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
        x<rsub|i>> exist it follows from [theorem: <reference|limit
        convergence implies bounded>] that there exists a
        <math|L\<in\>\<bbb-R\>> such that
        <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|<around*|\||x<rsub|i>|\|><rsub|\<bbb-R\>>\<leqslant\>L\<less\>L+1>.
        So if we take <math|K=L+1\<in\>\<bbb-R\>> then we have\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}> we
          have-K\<less\>x<rsub|i>\<less\>K
        </equation*>

        So <math|-\<infty\>\<less\>-K\<less\>x<rsub|i>>
        <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> hence
        <math|-\<infty\>\<less\>-K\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        contradicting [eq: <reference|eq 20.19.156>].\ 

        <item*|<math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<in\>\<bbb-R\>>>As <math|<below|\<bbb-R\>\<ni\>lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\>x\<in\>\<bbb-R\>> we
        have that <math|\<varepsilon\>=<below|x-lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<in\>\<bbb-R\><rsup|+>>. As
        <math|<rigid|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>=>x>
        there exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
        that\ 

        <\equation>
          <label|eq 20.20.156>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text|
          we have ><around*|\||x<rsub|n>-x|\|><rsub|\<bbb-R\>>\<less\><rsub|\<bbb-R\>>\<varepsilon\>
        </equation>

        Now\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|x-\<varepsilon\>>>|<row|<cell|>|<cell|\<less\>>|<cell|x-<frac|\<varepsilon\>|2>>>>>
        </eqnarray*>

        Hence by the definition of the infinum there exist a
        <math|M\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> such that
        <math|x<rsub|M>\<less\>x-<frac|\<varepsilon\>|2>\<Rightarrowlim\><rsub|x<rsub|M>,x\<in\>\<bbb-R\>>x<rsub|M>\<less\><rsub|\<bbb-R\>>x-<frac|\<varepsilon\>|2>>.
        Hence <math|<around*|\||x<rsub|M>-x|\|><rsub|\<bbb-R\>>\<geqslant\><rsub|\<bbb-R\>>x-x<rsub|M>\<gtr\><rsub|\<bbb-R\>><frac|\<varepsilon\>|2>>
        contradicting [<reference|eq 20.20.156>].
      </description>

      So in all cases we reach a a contradiction proving that the assumption
      is wrong, hence we have that\ 

      <\equation>
        <label|eq 20.21.156>x\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i><below|\<leqslant\>|<text|[theorem:
        <reference|extended lim inf \<less\>= lim sup>]>><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>
      </equation>

      Assume that <math|x\<less\><below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>>. Then as <math|-\<infty\>\<less\>x\<less\><below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>> we have for <math|<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>> either:

      <\description>
        <item*|<math|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>=\<infty\>>>Then <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>
        so that by [theorem: <reference|extended infinite inf sup>] it
        follows that <math|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>=<around*|{|\<infty\>|}>>.
        Hence\ 

        <\equation>
          <label|eq 20.22.156>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>
        </equation>

        As <math|<below|lim<rsub|\<bbb-R\>>
        x<rsub|i>|i\<rightarrow\>\<infty\>>> exist it follows from [theorem:
        <reference|limit convergence implies bounded>] that there exists a
        <math|L\<in\>\<bbb-R\>> such that
        <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|<around*|\||x<rsub|i>|\|><rsub|\<bbb-R\>>\<leqslant\>L\<less\>L+1>.
        So if we take <math|K=L+1\<in\>\<bbb-R\>> then we have\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}> we
          have-K\<less\>x<rsub|i>\<less\>K
        </equation*>

        So <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>K\<less\>\<infty\>>
        contradiction [eq: <reference|eq 20.22.156>].

        <item*|<math|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<in\>\<bbb-R\>>>As <math|\<bbb-R\>\<ni\>x\<less\><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<in\>\<bbb-R\>> we have that
        <math|\<varepsilon\>=<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>-x\<in\>\<bbb-R\><rsup|+>>. As
        <math|<below|lim<rsub|\<bbb-R\>> x<rsub|i>|i\<rightarrow\>\<infty\>>=x>
        there exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
        that

        <\equation>
          <label|eq 20.23.156>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text|
          we have ><around*|\||x<rsub|n>-x|\|><rsub|\<bbb-R\>>\<less\>\<varepsilon\>
        </equation>

        Now\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|\<geqslant\>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|x+\<varepsilon\>>>|<row|<cell|>|<cell|\<gtr\>>|<cell|x+<frac|\<varepsilon\>|2>>>>>
        </eqnarray*>

        So using the definition of the supremum there exist a
        <math|M\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> such that
        <math|x<rsub|M>\<gtr\>x+<frac|\<varepsilon\>|2>\<Rightarrowlim\><rsub|x<rsub|M>,x\<in\>\<bbb-R\>>x<rsub|M>\<gtr\><rsub|\<bbb-R\>>x+<frac|\<varepsilon\>|2>>.
        Hence <math|<around*|\||x<rsub|M>-x|\|>\<geqslant\><rsub|\<bbb-R\>>x<rsub|M>-x\<gtr\><rsub|\<bbb-R\>><frac|\<varepsilon\>|2>>
        contradicting [eq: <reference|eq 20.23.156>].
      </description>

      As in all cases we have a contradiction the assumption must be wrong so
      that

      <\equation*>
        <below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\>x.
      </equation*>

      Combining this with [eq: <reference|eq 20.21.156>] we have\ 

      <\equation*>
        <below|lim inf|i\<rightarrowlim\>\<infty\>>
        x<rsub|i><below|\<leqslant\>|<text|[theorem: <reference|extended lim
        inf \<less\>= lim sup>]>><below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<leqslant\>x\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i><below|\<leqslant\>|<text|[theorem:
        <reference|extended lim inf \<less\>= lim sup>]>><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>
      </equation*>

      so that\ 

      <\equation*>
        <below|lim inf|i\<rightarrowlim\>\<infty\>>
        x<rsub|i>=<below|<text|lim><rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>
      </equation*>

      <item>Let <math|x=<below|lim inf|i\<rightarrowlim\>\<infty\>>
      x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<in\>\<bbb-R\>>. Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then we have

      <\equation*>
        x-\<varepsilon\>\<less\>x=<below|lim inf|i\<rightarrowlim\>\<infty\>>
        x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Hence by the definition of the supremum there exist a
      <math|M<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that\ 

      <\equation*>
        x-\<varepsilon\>\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|M<rsub|1>,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Hence

      <\equation>
        <label|eq 20.24\<point\>156>\<forall\>n\<in\><around*|{|M<rsub|1>,\<ldots\>,\<infty\>|}><text|
        we have >x-\<varepsilon\>\<less\>x<rsub|n>
      </equation>

      Further as <math|x=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>>
      we have that <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=x\<less\>x+\<varepsilon\>>
      so that by the definition of the infinum there exist a
      <math|M<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that\ 

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|M<rsub|2>,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x+\<varepsilon\>
      </equation*>

      Hence\ 

      <\equation>
        <label|eq 20.25.156>\<forall\>n\<in\><around*|{|M<rsub|2>,\<ldots\>,\<infty\>|}><text|
        we have >x<rsub|n>\<less\>x+\<varepsilon\>
      </equation>

      Take <math|M=max<around*|(|M<rsub|1>,M<rsub|2>|)>> then we have by
      [eqs: <reference|eq 20.24\<point\>156>, <reference|eq 20.25.156>] that
      <math|\<forall\>n\<in\><around*|{|M,\<ldots\>,\<infty\>|}>>
      \ <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>> or
      as <math|x,\<varepsilon\>\<in\>\<bbb-R\>> that
      <math|x-\<varepsilon\>\<less\><rsub|\<bbb-R\>>x<rsub|n>\<less\><rsub|\<bbb-R\>>x+\<varepsilon\>\<Rightarrow\><around*|\||x<rsub|n>-x|\|><rsub|R>\<less\><rsub|\<bbb-R\>>\<varepsilon\>>
      proving that\ 

      <\equation*>
        <below|<text|lim><rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
        x<rsub|i><text| exists and ><below|<text|lim><rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
        x<rsub|i>=x=<below|lim inf|i\<rightarrowlim\>\<infty\>>
        x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>
      </equation*>
    </enumerate>
  </proof>

  A consequence of the above theorem is that
  <math|<below|lim|i\<rightarrow\>\<infty\>>> is a extension of
  <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>> to
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>.

  <\corollary>
    <label|extended lim inf lim sup in the set of real numbers (1)>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
    a sequence of <with|font-series|bold|real> numbers then we have\ 

    <\equation*>
      <below|<text|lim><rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>x<rsub|i><text|
      exists >\<Leftrightarrow\><text| ><below|lim|i\<rightarrow\>\<infty\>>
      x<rsub|i><text| exist and ><below|lim|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<in\>\<bbb-R\>
    </equation*>

    Further if <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
    x<rsub|i>> exists or <math|<below|lim|i\<rightarrow\>\<infty\>>
    x<rsub|i>> exists then <math|><math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
    x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [theorem: <reference|extended limit
      in the (extended) real numbers>] it follows that <math|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>> so that
      by definition <math|<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>>
      exists and <math|\<bbb-R\>\<ni\><below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>>.

      <item*|<math|\<Leftarrow\>>>If <math|><math|<below|lim|i\<rightarrow\>\<infty\>>
      x<rsub|i>><space|1em>exists and <math|<below|lim|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<in\>\<bbb-R\>> we have that <math|><math|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<in\>\<bbb-R\>>. Hence by [theorem: <reference|extended limit
      in the (extended) real numbers>] <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>
      x<rsub|i>> exists and <math|<below|lim|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>>.
    </description>
  </proof>

  <\example>
    <label|extended limit 1/n>We have\ 

    <\enumerate>
      <item>For <math|<around*|{|<frac|1|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
      we have that \ <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|i>>
      exist and <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|i>=0>

      <item>For <math|<around*|{|<frac|1|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
      we have that <math|<below|lim|i\<rightarrow\>\<infty\>><frac|<around*|(|-1|)><rsup|i>|i>>
      exist and <math|<below|lim|i\<rightarrow\>\<infty\>><frac|<around*|(|-1|)><rsup|i>|i>=0>
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>Note that <math|<around*|{|<frac|1|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
      and by [example: <reference|limit 1/(a+i)>]
      <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>><frac|1|i>=0>
      exist. Hence by the previous corollary [corollary: <reference|extended
      lim inf lim sup in the set of real numbers (1)>]
      <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|i>=0> exist.

      <item>Note that <math|<around*|{|<frac|1|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
      \ and by [example: <reference|limit (-1)^/i>]
      <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>><frac|<around*|(|-1|)><rsup|i>|i>=0>
      exist. Hence by the previous corollary [corollary: <reference|extended
      lim inf lim sup in the set of real numbers (1)>]
      <math|<below|lim|i\<rightarrow\>\<infty\>><frac|<around*|(|-1|)><rsup|i>|i>=0>
      exist.
    </enumerate>
  </proof>

  The idea of a limit in <math|\<bbb-R\>> is that the sequence approaches its
  limit the higher the index is, we show now that the limit in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>.

  <\theorem>
    <label|extended limit equivalences>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have the following equivalences.

    <\enumerate>
      <item>\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\><text|
        >\<Leftrightarrow\><text| >\<forall\>C\<in\>\<bbb-R\><rsup|+><text|
        >\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| such that
        >\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text| we have
        >C\<less\>x<rsub|n>
      </equation*>

      <item>\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\><text|
        >\<Leftrightarrow\><text| >\<forall\>C\<in\>\<bbb-R\><rsup|+><text|
        >\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| such that
        >\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text| we have
        >x<rsub|n>\<less\>-C
      </equation*>

      <item> If <math|x\<in\>\<bbb-R\>> then

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x\<in\>\<bbb-R\><text|
        >\<Leftrightarrow\><text|>\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
        >\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| such that
        <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
        ><around*|\||x<rsub|n>-x|\|>\<less\>\<varepsilon\>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>>
        then <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>=\<infty\>> so that

        <\equation*>
          sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>
        </equation*>

        Hence using [theorem: <reference|extended infinite inf sup>] we have
        that either:\ 

        <\description>
          <item*|<math|\<infty\>\<in\><around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>>Then
          there exist a <rigid|<math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
          such that <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>>.
          Using [theorem: <reference|extended infinite inf sup>] again it
          follows that <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>=<around*|{|\<infty\>|}>>
          so that <math|<rigid|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>>
          we have <math|x<rsub|n>=\<infty\>>. Hence if
          <math|C\<in\>\<bbb-R\><rsup|+>> then
          <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> then
          <math|C\<less\>\<infty\>=x<rsub|n>>.

          <item*|<math|\<forall\>u\<in\>\<bbb-R\>
          \<exists\>x\<in\><around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}><big|cap>\<bbb-R\>\<vdash\><text|>u\<less\>x>>Then
          given <math|C\<in\>\<bbb-R\><rsup|+>> there exist a
          <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
          <math|<rigid|C\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>>
          hence <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
          we have <math|C\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>>.
        </description>

        so in all cases we have that\ 

        <\equation*>
          \<forall\>C\<in\>\<bbb-R\><rsub|+> there
          \<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}> such that
          \<forall\>n\<geqslant\>N we have \ C\<less\>x<rsub|n>
        </equation*>

        <item*|<math|\<Leftarrow\>>>Assume that <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\>\<infty\>>. Take
        <math|C=max<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>,1|)>\<in\>\<bbb-R\><rsup|+>> then by the hypothesis there
        exists a <math|N\<in\><around*|{|k,\<ldots\>,n|}>> such that
        <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
        <math|C+1\<less\>x<rsub|n>>. Hence <math|C+1> is a lower bound of
        <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>>
        so that

        <\equation>
          <label|eq 20.26.156>C+1\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>
        </equation>

        So

        <\eqnarray*>
          <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
          x<rsub|i>>|<cell|\<leqslant\>>|<cell|max<around*|(|<below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>,1|)>>>|<row|<cell|>|<cell|=>|<cell|C>>|<row|<cell|>|<cell|\<less\>>|<cell|C+1>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
          <reference|eq 20.26.156>]>>>|<cell|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
        </eqnarray*>

        \ leading to the contradiction <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>>. Hence

        <\equation*>
          \<infty\>\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\> >
          x<rsub|i><below|\<leqslant\>|<text|[theorem: <reference|extended
          lim inf \<less\>= lim sup>]>><rsub|<text|>><below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\>\<infty\>
        </equation*>

        proving that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim sup |i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>>
        so that

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| exist and
          ><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>
        </equation*>
      </description>

      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>>
        then <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>=-\<infty\>> so that

        <\equation*>
          inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=-\<infty\>
        </equation*>

        Hence using [theorem: <reference|extended infinite inf sup>] we have
        that either:\ 

        <\description>
          <item*|<math|-\<infty\>\<in\><around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>>Then
          there exist a <rigid|<math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
          such that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>=-\<infty\>>>.
          Using [theorem: <reference|extended infinite inf sup>] again it
          follows that <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>=<around*|{|-\<infty\>|}>>
          so that <math|<rigid|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>>
          we have <math|x<rsub|n>=-\<infty\>>. Hence if
          <math|C\<in\>\<bbb-R\><rsup|+>> then
          <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> then
          <math|x<rsub|n>=-\<infty\>\<less\>-C>.

          <item*|<math|\<forall\>u\<in\>\<bbb-R\>
          \<exists\>x\<in\><around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}><big|cap>\<bbb-R\>\<vdash\><text|>x\<less\>u>>Then
          given <math|C\<in\>\<bbb-R\><rsup|+>> there exist a
          <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
          <math|<rigid|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>-C>>
          hence <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
          we have <rigid|<math|x<rsub|n>\<less\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>-C>>.
        </description>

        so in all cases we have that\ 

        <\equation*>
          \<forall\>C\<in\>\<bbb-R\><rsub|+> there
          \<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}> such that
          \<forall\>n\<geqslant\>N we have \ x<rsub|n>\<less\>-C
        </equation*>

        <item*|<math|\<Leftarrow\>>>Assume that
        <math|<below|-\<infty\>\<less\>lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>>. Take <math|C=-min<around*|(|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>,-1|)>\<in\>\<bbb-R\><rsup|+>>
        then by the hypothesis there exists a
        <math|N\<in\><around*|{|k,\<ldots\>,n|}>> such that
        <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
        <math|<rigid|x<rsub|n>\<less\>-<around*|(|C+1|)>>>. Hence
        <math|-<around*|(|C+1|)>> is a upper bound for
        <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>>
        so that\ 

        <\equation>
          <label|eq 20.27.156>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>-<around*|(|C+1|)>
        </equation>

        hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
          x<rsub|i>>|<cell|\<geqslant\>>|<cell|min<around*|(|<below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>,-1|)>>>|<row|<cell|>|<cell|=>|<cell|-C>>|<row|<cell|>|<cell|\<gtr\>>|<cell|-<around*|(|C+1|)>>>|<row|<cell|>|<cell|<below|\<geqslant\>|<text|[eq:
          <reference|eq 20.27.156>]>>>|<cell|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<geqslant\>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
        </eqnarray*>

        leading to the contradiction <math|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>>. Hence

        <\equation*>
          -\<infty\>\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\> >
          x<rsub|i><below|\<leqslant\>|<text|[theorem: <reference|extended
          lim inf \<less\>= lim sup>]>><rsub|<text|>><below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\>-\<infty\>
        </equation*>

        proving that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim sup |i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>>
        so that

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| exist and
          ><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>
        </equation*>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x\<in\>\<bbb-R\>>
        exist then <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>> so that\ 

        <\equation*>
          x=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>

        and

        <\equation*>
          x=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>

        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then we have
        <math|x-\<varepsilon\>\<less\>x=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        so that there exist a <math|N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          x-\<varepsilon\>\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>

        hence for <math|n\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>>
        we have that\ 

        <\equation*>
          x-\<varepsilon\>\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x<rsub|n>
        </equation*>

        Likewise, as <math|><math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=x\<less\>x+\<varepsilon\>>
        there exist a <math|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x+\<varepsilon\>>
        hence for <math|n\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}>>we
        have\ 

        <\equation*>
          x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x+\<varepsilon\>
        </equation*>

        Take <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then for
        <math|n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have\ 

        <\equation*>
          x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\><text| or
          equivalently ><around*|\||x<rsub|n>-x|\|>\<less\>\<varepsilon\>
        </equation*>

        <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
        then by the hypothesis there exist a <math|N<rsub|\<varepsilon\>>>
        such that <math|\<forall\>n\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>>
        we have <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>>.
        Hence we have that <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>>
        has a lower bound <math|x-\<varepsilon\>> and a upper bound
        <math|x+\<varepsilon\>>. Hence

        <\equation*>
          x-\<varepsilon\>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>|)><below|<text|
          and >sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x+\<varepsilon\>|>
        </equation*>

        As

        <\equation*>
          inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>
        </equation*>

        and\ 

        <\equation*>
          <below|lim sup|i\<rightarrow\>\<infty\>>
          x<rsub|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>|)>
        </equation*>

        it follows that <math|x-\<varepsilon\>\<less\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i><below|\<leqslant\>|<text|[theorem:
        <reference|extended lim inf \<less\>= lim sup>]>><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\>x+\<varepsilon\>>.
        Given that <math|x\<in\>\<bbb-R\>> we have that\ 

        <\equation*>
          x-\<varepsilon\>\<less\><rsub|\<bbb-R\>><below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i><below|\<leqslant\><rsub|\<bbb-R\>>|<text|[theorem:
          <reference|extended lim inf \<less\>= lim sup>]>><below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\><rsub|\<bbb-R\>>x+\<varepsilon\>
        </equation*>

        So as <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> was chosen
        arbitrary it follows from [theorem: <reference|complex Archimedean
        property consequence (2)>] that\ 

        <\equation*>
          x\<leqslant\><rsub|\<bbb-R\>><below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\><rsub|\<bbb-R\>><below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\><rsub|\<bbb-R\>>x
        </equation*>

        so that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>=x>
        proving that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| exists and that
          ><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x
        </equation*>
      </description>
    </enumerate>
  </proof>

  We can now derive the different properties of the limit in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> based on the properties of
  <math|<below|lim sup|i\<rightarrow\>\<infty\>>> and <math|<below|lim
  inf|i\<rightarrow\>\<infty\>>>.\ 

  <\theorem>
    <label|extended limit and index translation>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    and <math|n\<in\>\<bbb-N\><rsub|0>> then if
    <math|<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>> exists we have that
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i+n>> exists and
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i+n>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>.
  </theorem>

  <\proof>
    As <math|<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>> we have that
    <math|<below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i><rsub|>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>.
    Using [theorem: <reference|extended lim inf x_i+n>] it follows that
    <math|><math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i+n>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i+n><rsub|>>
    so that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i+n>> exists and
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i+n>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i+n>>.
  </proof>

  <\theorem>
    <label|extended limit properties>The limit in
    <math|<wide|\<bbb-R\>|\<wide-bar\>>> has the following properties where
    <math|k\<in\>\<bbb-N\><rsub|0>>

    <\enumerate>
      <item>Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      then we have

      <\enumerate>
        <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|x\<leqslant\>x<rsub|i>> then
        <math|x\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

        <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|x<rsub|i>\<leqslant\>x> then
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\>x>
      </enumerate>

      <item>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      be such that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>,
      <math|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>> exist and
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i>\<leqslant\>y<rsub|i>> then
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>>.

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      has a limit and <math|\<alpha\>\<in\>\<bbb-R\>> then
      <math|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      has a limit and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>.

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      has a limit, <math|x\<in\><below|<wide|\<bbb-R\>|\<wide-bar\>>|> > and
      we have that <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <rigid|<math|<around*|(|x<rsub|i>,x|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>>>
      then <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)>>
      exists and <rigid|<math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>+x>>.

      <item>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      be sequences with limits, <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>>
      [so that <math|><math|<rigid|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>>>
      is well defined] then there exist a
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|<rigid|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
      <rigid|<math|<around*|(|x<rsub|i>,y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>>>
      [hence <math|x<rsub|i>+y<rsub|i>> is defined] and
      <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      has a limit with\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>
      </equation*>

      <item>Let <math|><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      be sequences of extended reals with limits such that for
      <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and
      <math|y=<below|lim|i\<rightarrow\>\<infty\>>> we have

      <\equation*>
        <around*|(|x,y|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|0,-\<infty\>|)>,<around*|(|0,\<infty\>|)>,<around*|(|-\<infty\>,0|)>,<around*|(|\<infty\>,0|)>|}>
      </equation*>

      then <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

      <item>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      be sequences of extended reals with limits then we have\ 

      <\enumerate>
        <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|max<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
      </enumerate>
    </enumerate>

    <\note>
      The condition in (3) that <math|\<alpha\>\<in\>\<bbb-R\>> is required.
      For example the sequence \ <math|<around*|{|<frac|<around*|(|-1|)><rsup|i>|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
      converges to <math|0> but <math|<around*|{|\<infty\>\<cdot\><frac|<around*|(|-1|)><rsup|i>|i>|}><rsub|i>=<around*|{|<around*|(|-\<infty\>|)><rsup|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
      does not converges [see examples: <reference|extended limit (-@@)^n>,
      <reference|extended limit 1/n>].
    </note>

    <\note>
      The extra conditions in (5) are needed, for example take
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> defined
      by <math|x<rsub|i>=<frac|1|i>> and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      defined by <math|y<rsub|i>=i<rsup|2>> then
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=0> and
      <math|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>> but
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>i=\<infty\>\<neq\>\<infty\>\<cdot\>0=0>
    </note>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item>As <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|x<rsub|>\<leqslant\>x<rsub|i>> it follows from [theorem:
        <reference|extended lim inf lim sup ineqality (2)>] that
        <math|x\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>> proving, as <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>, that
        <math|x\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>.

        <item>As <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|x<rsub|i>\<leqslant\>x> it follows from [theorem:
        <reference|extended lim inf lim sup ineqality (2)>] that
        <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<leqslant\>x> proving, as <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>,
        that <math|x\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>.
      </enumerate>

      <item>As <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i>\<leqslant\>y<rsub|i>> we have by [theorem:
      <reference|extended lim inf lim sup ineqality (1)>] that
      <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\>>
      y<rsub|i>>. Hence\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<equallim\><rsub|def><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>> y<rsub|i>\<equallim\><rsub|def><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>
      </equation*>

      <item>For <math|\<alpha\>\<in\>\<bbb-R\>> we have the following cases
      to consider:

      <\description>
        <item*|<math|0\<leqslant\>\<alpha\>>>Then we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
          <around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended lim inf lim sup
          properties>]>>>|<cell|\<alpha\>\<cdot\><below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|\<alpha\>\<cdot\><below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended lim inf lim sup
          properties>]>>>|<cell|<below|lim
          sup|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>>>
        </eqnarray*>

        so that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>
        exists and <math|><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

        <item*|<math|\<alpha\>\<less\>0>>Then <math|0\<less\>-\<alpha\>> so
        that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
          <around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended lim inf lim sup and
          negation>]>>>|<cell|-<below|lim
          sup|i\<rightarrow\>\<infty\>><around*|(|<around*|(|-\<alpha\>|)>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended lim inf lim sup
          properties>]>>>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|\<alpha\>\<cdot\><below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|-\<alpha\>|)>\<cdot\><below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended lim inf lim sup
          properties>]>>>|<cell|-<below|lim
          inf|i\<rightarrow\>\<infty\>><around*|(|<around*|(|-\<alpha\>|)>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended lim inf lim sup and
          negation>]>>>|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
          <around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>>>
        </eqnarray*>

        so that <math|><math|<below|lim inf|i\<rightarrow\>\<infty\>>
        <around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<below|lim
        sup|i\<rightarrow\>\<infty\>> <around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>><math|>.
        Hence\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>
          exist<infix-and><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>
        </equation*>
      </description>

      <item>Using [theorem: <reference|extended lim inf and lim sup and sum>]
      we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell| <math|<below|lim inf
        <around*|(|x<rsub|i>+x|)>|i\<rightarrow\>\<infty\>>>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended lim inf and lim sup and
        sum>]>><rsub|<text|>>>|<cell|<around*|(|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+x>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<around*|(|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended lim inf and lim sup and
        sum>]>><rsub|<text|>>>|<cell| <math|<below|lim sup
        <around*|(|x<rsub|i>+x|)>|i\<rightarrow\>\<infty\>>>>>>>
      </eqnarray*>

      Hence\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)><text|
        exist and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+x
      </equation*>

      <item>As \ <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>>
      we have the following cases to consider:\ 

      <\description>
        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>>Let
        <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and
        <math|y=<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>> then by
        [theorem: <reference|extended limit equivalences>] there exists
        \ <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
          ><around*|\||x<rsub|i>-x|\|>\<less\>1\<Rightarrow\>-\<infty\>\<less\>x-1\<less\>x<rsub|i>\<less\>x+1\<less\>\<infty\>
        </equation*>

        and\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          ><around*|\||y<rsub|i>-y|\|>\<less\>1\<Rightarrow\>-\<infty\>\<less\>y-1\<less\>x=y<rsub|i>\<less\>y+1\<less\>\<infty\>
        </equation*>

        Hence if take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we
        have\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}><text| that
          ><around*|(|x<rsub|i>,y<rsub|i>|)>\<in\>\<bbb-R\>\<times\>\<bbb-R\>\<subseteq\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
        </equation*>

        \ Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then [theorem:
        <reference|extended limit equivalences>] there exists
        \ <math|M<rsub|1>,M<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that

        <\equation*>
          \<forall\>i\<in\><around*|{|M<rsub|1>,\<ldots\>,\<infty\>|}><text|
          ><around*|\||y<rsub|i>-y|\|>\<less\><frac|\<varepsilon\>|2>
        </equation*>

        and\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|M<rsub|1>,\<ldots\>,\<infty\>|}><text|
          ><around*|\||y<rsub|i>-y|\|>\<less\><frac|\<varepsilon\>|2>
        </equation*>

        Take <math|N=max<around*|(|M<rsub|1>,M<rsub|2>,n|)>> then
        <math|\<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
        that <math|x<rsub|i>+y<rsub|i>> is well defined and\ 

        <\equation*>
          <around*|\||x<rsub|i>+y<rsub|i>-<around*|(|x+y|)>|\|>\<leqslant\><around*|\||x<rsub|i>-x|\|>+<around*|\||y<rsub|i>-y|\|>=<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>
        </equation*>

        Hence using [theorem: <reference|extended limit equivalences>] it
        follows that <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        has a limit

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=x+y=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>>Let
        <math|y=<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>> then by
        [theorem: <reference|extended limit equivalences>] there exists
        <math|<rigid|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}> we
          have x<rsub|i>\<less\>-1\<less\>\<infty\>
        </equation*>

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          we have ><around*|\||y-1|\|>\<less\>1\<Rightarrow\>-\<infty\>\<less\>y-1\<less\>y<rsub|i>\<less\>y+1\<less\>\<infty\>
        </equation*>

        Hence if we take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we
        have that

        <\equation*>
          \<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}> that
          <around*|(|x<rsub|i>,y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
        </equation*>

        Further take <math|C\<in\>\<bbb-R\><rsup|+>> and take
        <math|C<rprime|'>=max<around*|(|C+<around*|(|y+1|)>,1|)>\<in\>\<bbb-R\><rsup|+>>
        then <math|C+<around*|(|y+1|)>\<leqslant\>C<rprime|'>> or
        <math|-C<rprime|'>\<leqslant\>-C-<around*|(|y+1|)>>. By [theorem:
        <reference|extended limit equivalences>] there exist a
        <math|N<rsub|3>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>i\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}>>
        we have that <math|x<rsub|i>\<less\>-C<rprime|'>>. Hence if
        <math|N=max<around*|(|n,N<rsub|3>|)>\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
        then we have for <math|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
        that <math|x<rsub|i>\<less\>-C<rprime|'>> and as
        <math|y<rsub|i>\<in\>\<bbb-R\>> it follows from [theorem:
        <reference|extended x\<less\>=y then x+z\<less\>=y+z>] that
        <math|x<rsub|i>+y<rsub|i>\<less\>-C<rprime|'>+y<rsub|i>>. Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x<rsub|i>+y<rsub|i>>|<cell|\<less\>>|<cell|-C<rprime|'>+y<rsub|i>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|-C-<around*|(|y+1|)>+y<rsub|i>>>|<row|<cell|>|<cell|\<less\>>|<cell|-C-<around*|(|y+1|)>+y+1>>|<row|<cell|>|<cell|=>|<cell|-C>>>>
        </eqnarray*>

        Using [theorem: <reference|extended limit equivalences>] it follows
        then that <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        has a limit and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=-\<infty\>>.
        As <math|<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>=-\<infty\>>
        and <math|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>
        it follows that <math|<rigid|<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>=-\<infty\>>>.
        So\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)><text|
          exist and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>>Let
        <math|y=<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>> then by
        [theorem: <reference|extended limit equivalences>] there exists
        <math|<rigid|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}> we
          have-\<infty\>\<less\>1\<less\>x<rsub|i>
        </equation*>

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          we have ><around*|\||y-1|\|>\<less\>1\<Rightarrow\>-\<infty\>\<less\>y-1\<less\>y<rsub|i>\<less\>y+1\<less\>\<infty\>
        </equation*>

        Hence if we take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we
        have that

        <\equation*>
          \<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}> that
          <around*|(|x<rsub|i>,y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
        </equation*>

        Further take <math|C\<in\>\<bbb-R\><rsup|+>> and take
        <math|C<rprime|'>=max<around*|(|C-<around*|(|y-1|)>,1|)>\<in\>\<bbb-R\><rsup|+>>
        then <math|C-<around*|(|y-1|)>\<leqslant\>C<rprime|'>>. By [theorem:
        <reference|extended limit equivalences>] there exist a
        <math|N<rsub|3>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>i\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}>>
        we have that <math|C<rprime|'>\<less\>x>. Hence if
        <math|N=max<around*|(|n,N<rsub|3>|)>\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
        then we have for <math|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
        that <math|C<rprime|'>\<less\>x<rsub|i>> \ and as
        <math|y<rsub|i>\<in\>\<bbb-R\>> it follows from [theorem:
        <reference|extended x\<less\>=y then x+z\<less\>=y+z>] that
        <math|C<rprime|'>+y<rsub|i>\<less\>x<rsub|i>+y<rsub|i>>. Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x<rsub|i>+y<rsub|i>>|<cell|\<gtr\>>|<cell|C<rprime|'>+y<rsub|i>>>|<row|<cell|>|<cell|\<geqslant\>>|<cell|C-<around*|(|y-1|)>+y<rsub|i>>>|<row|<cell|>|<cell|\<gtr\>>|<cell|C-<around*|(|y-1|)>+<around*|(|y-1|)>>>|<row|<cell|>|<cell|=>|<cell|C>>>>
        </eqnarray*>

        Using [theorem: <reference|extended limit equivalences>] it follows
        then that <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        has a limit and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=\<infty\>>.
        As <math|<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>=\<infty\>>
        and <math|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>
        it follows that <math|<rigid|<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>=\<infty\>>>.
        So\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)><text|
          exist and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=-\<infty\>>>Let
        <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> then by
        [theorem: <reference|extended limit equivalences>] there exists
        <math|<rigid|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}> we
          have y<rsub|i>\<less\>-1\<less\>\<infty\>
        </equation*>

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          we have ><around*|\||x-1|\|>\<less\>1\<Rightarrow\>-\<infty\>\<less\>x-1\<less\>x<rsub|i>\<less\>x+1\<less\>\<infty\>
        </equation*>

        Hence if we take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we
        have that

        <\equation*>
          \<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}> that
          <around*|(|x<rsub|i>,y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
        </equation*>

        Further take <math|C\<in\>\<bbb-R\><rsup|+>> and take
        <math|C<rprime|'>=max<around*|(|C+<around*|(|x+1|)>,1|)>\<in\>\<bbb-R\><rsup|+>>
        then <math|C+<around*|(|x+1|)>\<leqslant\>C<rprime|'>> or
        <math|-C<rprime|'>\<leqslant\>-C-<around*|(|x+1|)>>. By [theorem:
        <reference|extended limit equivalences>] there exist a
        <math|N<rsub|3>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>i\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}>>
        we have that <math|y<rsub|i>\<less\>-C<rprime|'>>. Hence if
        <math|N=max<around*|(|n,N<rsub|3>|)>\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
        then we have for <math|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
        that <math|y<rsub|i>\<less\>-C<rprime|'>> and as
        <math|y<rsub|i>\<in\>\<bbb-R\>> it follows from [theorem:
        <reference|extended x\<less\>=y then x+z\<less\>=y+z>] that
        <math|x<rsub|i>+y<rsub|i>\<less\>-C<rprime|'>+x<rsub|i>>. Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x<rsub|i>+y<rsub|i>>|<cell|\<less\>>|<cell|-C<rprime|'>+x<rsub|i>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|-C-<around*|(|x+1|)>+x<rsub|i>>>|<row|<cell|>|<cell|\<less\>>|<cell|-C-<around*|(|x+1|)>+x+1>>|<row|<cell|>|<cell|=>|<cell|-C>>>>
        </eqnarray*>

        Using [theorem: <reference|extended limit equivalences>] it follows
        then that <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        has a limit and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=-\<infty\>>.
        As <math|<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>=-\<infty\>>
        and <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>>
        it follows that <math|<rigid|<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>=-\<infty\>>>.
        So\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)><text|
          exist and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=-\<infty\>>>Using
        [theorem: <reference|extended limit equivalences>] there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
          >x<rsub|i>\<less\>-1\<less\>\<infty\><text| and
          >\<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}>
          y<rsub|i>\<less\>-1\<less\>\<infty\>
        </equation*>

        So if we take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then for
        <math|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have\ 

        <\equation*>
          <around*|(|x<rsub|i>,y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
        </equation*>

        Further if <math|C\<in\>\<bbb-R\><rsup|+>> then there exists
        <math|N<rsub|3>,N<rsub|4>\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}><text|
          >x<rsub|i>\<less\>-<frac|C|2><text| and
          >\<forall\>i\<in\><around*|{|N<rsub|4>,\<ldots\>,\<infty\>|}><text|
          >y<rsub|i>\<less\>-<frac|C|2>
        </equation*>

        Take <math|N=max<around*|(|N<rsub|3>,N<rsub|4>|)>\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
        then <math|\<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we
        have by [theorem: <reference|extended x\<less\>=y then
        x+z\<less\>=y+z>] that\ 

        <\equation*>
          x<rsub|i>+y<rsub|i>\<less\>-<frac|C|2>+<around*|(|-<frac|C|2>|)>=-C
        </equation*>

        So that by \ [theorem: <reference|extended limit equivalences>]
        <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        has a limit and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=-\<infty\>>,
        hence, as <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=-\<infty\>+<around*|(|-\<infty\>|)>=-\<infty\>>,
        it follows that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)><text|
          exist and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>>>Let
        <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> then by
        [theorem: <reference|extended limit equivalences>] there exists
        <math|<rigid|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}> we
          have-\<infty\>\<less\>1\<less\>y<rsub|i>
        </equation*>

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          we have ><around*|\||x-1|\|>\<less\>1\<Rightarrow\>-\<infty\>\<less\>x-1\<less\>x<rsub|i>\<less\>x+1\<less\>\<infty\>
        </equation*>

        Hence if we take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we
        have that

        <\equation*>
          \<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}> that
          <around*|(|x<rsub|i>,y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
        </equation*>

        Further take <math|C\<in\>\<bbb-R\><rsup|+>> and take
        <math|C<rprime|'>=max<around*|(|C-<around*|(|x-1|)>,1|)>\<in\>\<bbb-R\><rsup|+>>
        then <math|C-<around*|(|x-1|)>\<leqslant\>C<rprime|'>>. By [theorem:
        <reference|extended limit equivalences>] there exist a
        <math|N<rsub|3>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>i\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}>>
        we have that <math|C<rprime|'>\<less\>y>. Hence if
        <math|N=max<around*|(|n,N<rsub|3>|)>\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
        then we have for <math|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
        that <math|C<rprime|'>\<less\>y<rsub|i>> \ and as
        <math|x<rsub|i>\<in\>\<bbb-R\>> it follows from [theorem:
        <reference|extended x\<less\>=y then x+z\<less\>=y+z>] that
        <math|C<rprime|'>+x<rsub|i>\<less\>x<rsub|i>+y<rsub|i>>. Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x<rsub|i>+y<rsub|i>>|<cell|\<gtr\>>|<cell|C<rprime|'>+x<rsub|i>>>|<row|<cell|>|<cell|\<geqslant\>>|<cell|C-<around*|(|x-1|)>+x<rsub|i>>>|<row|<cell|>|<cell|\<gtr\>>|<cell|C-<around*|(|x-1|)>+<around*|(|x-1|)>>>|<row|<cell|>|<cell|=>|<cell|C>>>>
        </eqnarray*>

        Using [theorem: <reference|extended limit equivalences>] it follows
        then that <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        has a limit and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=\<infty\>>.
        As <math|<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>=\<infty\>>
        and <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>>
        it follows that <math|<rigid|<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>=\<infty\>>>.
        So\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)><text|
          exist and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>>>Using
        [theorem: <reference|extended limit equivalences>] there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
          >-\<infty\>\<less\>1\<less\>x<rsub|i><text| and
          >\<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          >-\<infty\>\<less\>1\<less\>y<rsub|i>
        </equation*>

        So if we take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then for
        <math|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have\ 

        <\equation*>
          <around*|(|x<rsub|i>,y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>
        </equation*>

        Further if <math|C\<in\>\<bbb-R\><rsup|+>> then there exists
        <math|N<rsub|3>,N<rsub|4>\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}><text|
          ><frac|C|2>\<less\>x<rsub|i><text| and
          >\<forall\>i\<in\><around*|{|N<rsub|4>,\<ldots\>,\<infty\>|}><text|
          ><frac|C|2>\<less\>y<rsub|i>
        </equation*>

        Take <math|N=max<around*|(|N<rsub|3>,N<rsub|4>|)>\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
        then <math|\<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we
        have by [theorem: <reference|extended x\<less\>=y then
        x+z\<less\>=y+z>] that\ 

        <\equation*>
          C=<frac|C|2>+<frac|C|2>\<less\>x<rsub|i>+y<rsub|i>
        </equation*>

        So that by \ [theorem: <reference|extended limit equivalences>]
        <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        has a limit and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=\<infty\>>,
        hence, as <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>+\<infty\>=\<infty\>>,
        it follows that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)><text|
          exist and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<below|lim|i\<rightarrowlim\>\<infty\>>x<rsub|i>+<below|lim|i\<rightarrowlim\>\<infty\>>y<rsub|i>
        </equation*>
      </description>

      <item>As <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|0,-\<infty\>|)>,<around*|(|0,\<infty\>|)>,<around*|(|-\<infty\>,0|)>,<around*|(|\<infty\>,0|)>|}>>
      we have either:

      <\description>
        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>>Let
        <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and
        <math|y=<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>>. Take
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Using [theorem:
        <reference|extended limit equivalences>] there exists a
        <math|N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
          we have ><around*|\||x-x<rsub|i>|\|>\<less\>1\<Rightarrow\><around*|\||x<rsub|i>|\|>=<around*|\||x-x<rsub|i>|\|>+<around*|\||x|\|>\<less\>1+<around*|\||x|\|><text|>
        </equation*>

        Further as <math|1+<around*|\||x|\|>\<in\>\<bbb-R\><rsup|+>> there
        exists a <math|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          ><around*|\||x<rsub|i>-x|\|>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||y|\|>|)>>\<less\>\<infty\>
        </equation*>

        and there exist a <math|N<rsub|3>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}><text|
          ><around*|\||y<rsub|i>-y|\|>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||x|\|>|)>>\<less\>\<infty\>
        </equation*>

        Let <math|N=max<around*|(|N<rsub|1>,N<rsub|2>,N<rsub|3>|)>> then we
        have for <math|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> that
        <math|<rigid|-\<infty\>\<less\>x-\<varepsilon\>\<less\>x<rsub|i>\<less\>x+\<varepsilon\>\<less\>\<infty\>>>
        and <math|-\<infty\>\<less\>y-\<varepsilon\>\<less\>y<rsub|i>\<less\>y+\<varepsilon\>\<less\>\<infty\>>
        so that <math|x<rsub|i>,y<rsub|i>\<in\>\<bbb-R\>> hence

        <\equation*>
          0\<leqslant\><around*|\||x<rsub|i>|\|>,<around*|\||y<rsub|i>|\|>,<around*|\||x|\|>,<around*|\||y|\|>\<in\>\<bbb-R\>
        </equation*>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\||x<rsub|i>\<cdot\>y<rsub|i>-x\<cdot\>y|\|>>|<cell|=>|<cell|<around*|\||x<rsub|i>\<cdot\>y<rsub|i>-x<rsub|i>\<cdot\>y+x<rsub|i>\<cdot\>y-x\<cdot\>y|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x<rsub|i>\<cdot\><around*|(|y<rsub|i>-y|)>+<around*|(|x<rsub|i>-x|)>\<cdot\>y|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||x<rsub|i>\<cdot\><around*|(|y<rsub|i>-y|)>|\|>+<around*|\||<around*|(|x<rsub|i>-x|)>\<cdot\>y|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|i>-y|\|>+<around*|\||x<rsub|i>-x|\|>\<cdot\><around*|\||y|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||x<rsub|i>|\|>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||x|\|>|)>>+<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||y|\|>|)>>\<cdot\><around*|\||y|\|>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|(|1+<around*|\||x<rsub|i>|\|>|)>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||x|\|>|)>>+<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||y|\|>|)>>\<cdot\><around*|\||y|\|>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        Using [theorem: <reference|extended limit equivalences>] again it
        follows that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)><text|
          exists and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>\\<around*|{|0|}>>>Let
        <math|C\<in\>\<bbb-R\><rsup|+>>. For
        <math|y=<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>> we have
        either:

        <\description>
          <item*|<math|0\<less\>y>>For <math|<frac|y|2>\<in\>\<bbb-R\><rsup|+>>
          we have by [theorem: <reference|extended limit equivalences>] that
          there exist a <math|N<rsub|1>> such that\ 

          <\equation>
            <label|eq 20.28.156>\<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
            we have >-\<infty\>\<less\><frac|y|2>=y-<frac|y|2>\<less\>y<rsub|i>\<less\>y+<frac|y|2>\<less\>\<infty\>
          </equation>

          Let <math|C\<in\>\<bbb-R\><rsup|+>> then
          <math|<frac|2\<cdot\><around*|(|C+1|)>|y>\<in\>\<bbb-R\><rsup|+>>
          so by [theorem: <reference|extended limit equivalences>] there
          exist a <math|<rigid|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
          such that\ 

          <\equation>
            <label|eq 20.29.156>\<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
            we have ><frac|2\<cdot\><around*|(|C+1|)>|y>\<less\>x<rsub|i>
          </equation>

          Let <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then
          <math|\<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
          as <math|<frac|2\<cdot\><around*|(|C+1|)>|y>\<in\>\<bbb-R\><rsup|+>>
          by [theorem: <reference|extended x\<less\>=y then for 0\<less\>=s
          we have s.x\<less\>=s.y>] that\ 

          <\equation*>
            C+1=<frac|y|2>\<cdot\><frac|2\<cdot\><around*|(|C+1|)>|y><below|\<leqslant\>|<text|[eq:
            <reference|eq 20.28.156>]>><frac|2\<cdot\><around*|(|C+1|)>|y>\<cdot\>y<rsub|i>
          </equation*>

          Further as by [eq: <reference|eq 20.28.156>]
          <math|0\<less\>y<rsub|i>> we have by [theorem: <reference|extended
          x\<less\>=y then for 0\<less\>=s we have s.x\<less\>=s.y>] and [eq:
          <reference|eq 20.29.156>] that\ 

          <\equation*>
            <frac|2\<cdot\><around*|(|C+1|)>|y>\<cdot\>y<rsub|i>\<less\>x<rsub|i>\<cdot\>y<rsub|i>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>
          </equation*>

          So that <math|C\<less\>C+1\<less\>x<rsub|i>\<cdot\>y<rsub|i>>
          <math|\<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>, hence
          using [theorem: <reference|extended limit equivalences>] we have
          that\ 

          <\equation*>
            <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)><text|
            exists and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=\<infty\>=\<infty\>\<cdot\>y=x\<cdot\>y
          </equation*>

          <item*|<math|y\<less\>0>>By (3) we have that
          <math|-y\<in\><below|lim|i\<rightarrow\>\<infty\>><around*|(|-y<rsub|1>|)>>.
          For <math|-<frac|y|2>\<in\>\<bbb-R\><rsup|+>> we have by [theorem:
          <reference|extended limit equivalences>] that there exist a
          <math|N<rsub|1>> such that

          <\equation>
            <label|eq 20.30.156>\<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
            we have >-\<infty\>\<less\>-<frac|y|2>=-y-<around*|(|-<frac|y|2>|)>\<less\>-y<rsub|i>\<less\>-y+<around*|(|-<frac|y|2>|)>
          </equation>

          Let <math|C\<in\>\<bbb-R\><rsup|+>> then
          <math|-<frac|2\<cdot\><around*|(|C+1|)>|y>\<in\>\<bbb-R\><rsup|+>>
          so by \ [theorem: <reference|extended limit equivalences>] there
          exist a <math|<rigid|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
          such that\ 

          <\equation>
            <label|eq 20.31.156>\<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
            we have >-<frac|2\<cdot\><around*|(|C+1|)>|y>\<less\>x<rsub|i>
          </equation>

          Let <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then
          <math|\<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
          as <math|-<frac|2\<cdot\><around*|(|C+1|)>|y>\<in\>\<bbb-R\><rsup|+>>
          by [theorem: <reference|extended x\<less\>=y then for 0\<less\>=s
          we have s.x\<less\>=s.y>] that\ 

          <\equation*>
            C+1=<around*|(|-<frac|y|2>|)>\<cdot\><around*|(|-<frac|2\<cdot\><around*|(|C+1|)>|y>|)><below|\<less\>|<text|[eq:
            <reference|eq 20.30.156>]>><around*|(|-<frac|2\<cdot\><around*|(|C+1|)>|y>|)>\<cdot\><around*|(|-y<rsub|i>|)>
          </equation*>

          Further as by [eq: <reference|eq 20.30.156>]
          <math|0\<less\>-y<rsub|i>> so that by [theorem: <reference|extended
          x\<less\>=y then for 0\<less\>=s we have s.x\<less\>=s.y>] and [eq:
          <reference|eq 20.31.156>]\ 

          <\equation*>
            -<frac|2\<cdot\><around*|(|C+1|)>|y>\<cdot\><around*|(|-y<rsub|i>|)>\<less\>x<rsub|i>\<cdot\><around*|(|-y<rsub|i>|)>=-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>
          </equation*>

          hence\ 

          <\equation*>
            C\<less\>C+1\<less\>-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>
          </equation*>

          Hence by [theorem: <reference|extended limit equivalences>]
          <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>|)>>
          exists and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>|)>=\<infty\>>,
          using (3) it follows that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>>
          exist and\ 

          <\equation*>
            <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=-<below|lim|i\<rightarrow\>\<infty\>><around*|(|-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>|)>=-\<infty\>=\<infty\>\<cdot\>y=x\<cdot\>y
          </equation*>

          or\ 

          <\equation*>
            <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)><text|
            exists and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=x\<cdot\>y=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>
          </equation*>
        </description>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>\\<around*|{|0|}>>>Define
        <math|<around*|{|x<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        by <math|x<rprime|'><rsub|i>=-x<rsub|i>> then
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rprime|'><rsub|i>\<equallim\><rsub|<around*|(|2|)>>-<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>>.
        Hence this reduces to the case <math|<rigid|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>\\<around*|{|0|}>>>
        by substituting <math|x<rsub|i>> by <math|x<rprime|'><rsub|i>>. So we
        have that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rprime|'><rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rprime|'><rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        so\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>>|<cell|\<equallim\><rsub|<around*|(|3|)>>>|<cell|-<below|lim|i\<rightarrow\>\<infty\>><around*|(|-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rprime|'><rsub|i>\<cdot\>y<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rprime|'><rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>>>>
        </eqnarray*>

        Hence\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)><text|
          exists and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>>>Define
        <math|<around*|{|x<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
        <math|<around*|{|y<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        by <math|x<rprime|'><rsub|i>=y<rsub|i>\<wedge\>y<rprime|'><rsub|i>=x<rsub|i>>.
        Then this cases reduces to the case
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>\\<around*|{|0|}>>
        hence\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rprime|'><rsub|i>\<cdot\>y<rprime|'><rsub|i>|)><text|
          exists and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i><rprime|'>\<cdot\>y<rsub|i><rprime|'>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><rprime|'>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i><rprime|'>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>
        </equation*>

        so that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|y<rsub|i>\<cdot\>x<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rprime|'><rsub|i>\<cdot\>y<rprime|'><rsub|i>|)>
          exist<infix-and> <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>
        </equation*>

        \ <math|>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>>>Let
        <math|C\<in\>\<bbb-R\><rsup|+>> then by [theorem: <reference|extended
        limit equivalences>] there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
          >1\<less\>x<rsub|i><text| and >\<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          ><around*|(|C+1|)>\<less\>y<rsub|i>
        </equation*>

        Take <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have by
        [theorem: <reference|extended x\<less\>=y then for 0\<less\>=s we
        have s.x\<less\>=s.y>] that <math|C+1\<leqslant\><around*|(|C+1|)>\<cdot\>x<rsub|i>>
        and <math|<around*|(|C+1|)>\<cdot\>x<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>>
        so that\ 

        <\equation*>
          C\<less\>C+1\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>
        </equation*>

        Hence using [theorem: <reference|extended limit equivalences>] it
        follows that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>>
        exists and\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=\<infty\>=\<infty\>\<cdot\>\<infty\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>>>Let
        <math|C\<in\>\<bbb-R\><rsup|+>> then by [theorem: <reference|extended
        limit equivalences>] there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
          >x<rsub|i>\<less\>-1\<Rightarrow\>1\<less\>-x<rsub|i><text| and
          >\<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          ><around*|(|C+1|)>\<less\>y<rsub|i>
        </equation*>

        Let <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then by [theorem:
        <reference|extended x\<less\>=y then for 0\<less\>=s we have
        s.x\<less\>=s.y>] <math|<around*|(|C+1|)>\<leqslant\><around*|(|-x<rsub|i>|)>\<cdot\><around*|(|C+1|)>>
        and <math|<rigid|<around*|(|-x<rsub|i>|)>\<cdot\><around*|(|C+1|)>\<leqslant\><around*|(|-x<rsub|i>|)>\<cdot\>y<rsub|i>=-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>>>,
        hence\ 

        <\equation*>
          C\<less\>C+1\<leqslant\>-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>
        </equation*>

        By [theorem: <reference|extended limit equivalences>] it follows that
        <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-<around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>|)>=\<infty\>>,
        hence by <math|<around*|(|3|)>> we have that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=-\<infty\>=-\<infty\>\<cdot\>\<infty\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=-\<infty\>>>Define
        <math|<around*|{|x<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
        <math|<around*|{|y<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        by <math|x<rprime|'><rsub|i>=y<rsub|i>\<wedge\>y<rprime|'><rsub|i>=x<rsub|i>>.
        Then this cases reduces to the case
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>\\<around*|{|0|}>>
        hence\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rprime|'><rsub|i>\<cdot\>y<rprime|'><rsub|i>|)><text|
          exists and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i><rprime|'>\<cdot\>y<rsub|i><rprime|'>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><rprime|'>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i><rprime|'>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>
        </equation*>

        so that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|y<rsub|i>\<cdot\>x<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rprime|'><rsub|i>\<cdot\>y<rprime|'><rsub|i>|)>
          exist<infix-and> <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=-\<infty\>>>Let
        <math|C\<in\>\<bbb-R\><rsup|+>> then by [theorem: <reference|extended
        limit equivalences>] there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
          >x<rsub|i>\<less\>-1\<Rightarrow\>1\<less\>-x<rsub|i><text| and
          >\<forall\>i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}><text|
          >y<rsub|i>\<less\>-<around*|(|C+1|)>\<Rightarrow\>C+1\<less\>-y<rsub|i>
        </equation*>

        Take <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have by
        [theorem: <reference|extended x\<less\>=y then for 0\<less\>=s we
        have s.x\<less\>=s.y>] that <math|C+1\<leqslant\><around*|(|C+1|)>\<cdot\><around*|(|-x<rsub|i>|)>>
        and <math|<around*|(|C+1|)>\<cdot\><around*|(|-x<rsub|i>|)>\<leqslant\><around*|(|-x<rsub|i>|)>\<cdot\><around*|(|-y<rsub|i>|)>=x<rsub|i>\<cdot\>y<rsub|i>>
        so that\ 

        <\equation*>
          C\<less\>C+1\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>
        </equation*>

        Hence using [theorem: <reference|extended limit equivalences>] it
        follows that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>>
        exists and\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=\<infty\>=<around*|(|-\<infty\>|)>\<cdot\><around*|(|-\<infty\>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>
        </equation*>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=-\<infty\>>>Define
        <math|<around*|{|x<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
        <math|<around*|{|y<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        by <math|x<rprime|'><rsub|i>=y<rsub|i>\<wedge\>y<rprime|'><rsub|i>=x<rsub|i>>.
        Then this cases reduces to the case
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>>
        hence\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rprime|'><rsub|i>\<cdot\>y<rprime|'><rsub|i>|)><text|
          exists and ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i><rprime|'>\<cdot\>y<rsub|i><rprime|'>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><rprime|'>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i><rprime|'>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>
        </equation*>

        so that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|y<rsub|i>\<cdot\>x<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rprime|'><rsub|i>\<cdot\>y<rprime|'><rsub|i>|)>
          exist<infix-and> <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>
        </equation*>
      </description>
    </enumerate>
  </proof>

  Next we prove that if <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
  exists then <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsup|i>>>
  exist and <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsup|i>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>.
  To do this we must first prove a little lemma.

  <\lemma>
    <label|lemma 20.78.156>Let <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>.,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    be sequence of extended real numbers such that
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    <math|x<rsub|i>\<neq\>0> and <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
    exists and <math|0\<neq\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>>
    then <math|0\<less\>inf<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
  </lemma>

  <\proof>
    Take <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and define
    <math|\<varepsilon\>=<frac|<around*|\||x|\|>|2>\<in\>\<bbb-R\><rsup|+>>.
    As <math|><math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>>
    if follows from [theorem: <reference|extended limit equivalences>] that
    there exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text| we have
      ><around*|\||x<rsub|i>-x|\|>\<less\>\<varepsilon\>
    </equation*>

    Assume that <math|\<exists\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
    such that <math|<around*|\||x<rsub|i>|\|>\<less\>\<varepsilon\>> then we
    have

    <\equation*>
      <around*|\||x|\|>=<around*|\||x-x<rsub|i>+x<rsub|i>|\|>\<leqslant\><around*|\||x-x<rsub|i>|\|>+<around*|\||x<rsub|i>|\|>\<less\>\<varepsilon\>+\<varepsilon\>=2\<cdot\>\<varepsilon\>=2\<cdot\><frac|<around*|\||x|\|>|2>=<around*|\||x|\|>
    </equation*>

    giving the contradiction <math|<around*|\||x|\|>\<less\>\|x>. Hence the
    assumption is wrong and we must have that\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>
      \<varepsilon\>\<leqslant\><around*|\||x<rsub|i>|\|>
    </equation*>

    Take <math|M<rprime|'>=min<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|k,\<ldots\>,N|}>|}>|)>>
    then as <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    <math|x<rsub|i>\<neq\>0> it follows that
    <math|M<rprime|'>\<in\>\<bbb-R\><rsup|+>>. Take
    <math|M=min<around*|(|M<rprime|'>,\<varepsilon\>|)>\<in\>\<bbb-R\><rsup|+>>
    then we have for <math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    either:\ 

    <\description>
      <item*|<math|i\<in\><around*|{|k,\<ldots\>,N|}>>>Then
      <math|<around*|\||x<rsub|i>|\|>\<geqslant\>M<rprime|'>\<geqslant\>M>

      <item*|<math|i\<in\><around*|{|N+1,\<ldots\>,\<infty\>|}>>>Then
      <math|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> so that
      <math|<around*|\||x<rsub|i>|\|>\<geqslant\>\<varepsilon\>\<geqslant\>M>
    </description>

    hence <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    <math|<around*|\||x<rsub|i>|\|>\<geqslant\>M> or <math|M> is a lower
    bound of <math|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    proving that\ 

    <\equation*>
      inf<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<geqslant\>M\<gtr\>0
    </equation*>
  </proof>

  <\theorem>
    <label|extended limit 1/(x_i)>Let <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>.,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    be sequence of extended real numbers such that
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists and
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<neq\>0> then there
    exist a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
    <math|x<rsub|i>\<neq\>0> and for <math|<around*|{|<frac|1|x<rsub|i>>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    we have that

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>><text| exists and
      ><below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> then we have
    either:\ 

    <\description>
      <item*|<math|x=\<infty\>>>Then by [theorem: <reference|extended limit
      equivalences>] there exists a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <rigid|<math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
      we have <math|0\<less\>1\<less\>x<rsub|i>> hence
      <math|<around*|{|<frac|1|x<rsub|i>>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
      is well defined. Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
      by [theorem: <reference|complex Archimedean property consequence (1)>]
      there exist a <math|C\<in\>\<bbb-N\>> such that
      <math|0\<less\><frac|1|C>\<less\>\<varepsilon\>>. As
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>> there
      exist a <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>
      <math|0\<less\>C\<less\>x<rsub|i>>. Take <math|N=max<around*|(|m,n|)>>
      then for <math|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have by
      [theorem: <reference|extended x.y>] that
      <math|0\<less\><frac|1|x<rsub|i>>\<leqslant\><frac|1|C>\<less\>\<varepsilon\>>,
      \ as <math|<frac|1|x<rsub|i>>=<around*|\||<frac|1|x<rsub|i>>-0|\|>>,
      that <math|<around*|\||<frac|1|x<rsub|i>>-0|\|>\<less\>\<varepsilon\>>.
      Hence by [theorem: <reference|extended limit equivalences>] it follows
      that

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>><text| exist
        and ><below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>>=0=<frac|1|\<infty\>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      </equation*>

      <item*|<math|x=-\<infty\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      Then by [theorem: <reference|extended limit equivalences>] there exists
      a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|<rigid|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>> we
      have <math|x<rsub|i>\<less\>-1\<less\>0> hence
      <math|<around*|{|<frac|1|x<rsub|i>>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
      is well defined. Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
      by [theorem: <reference|complex Archimedean property consequence (1)>]
      there exist a <math|C\<in\>\<bbb-N\>> such that
      <math|0\<less\><frac|1|C>\<less\>\<varepsilon\>>. As
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>> there
      exist a <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|x<rsub|i>\<less\>-C>. Take <math|N=max<around*|(|m,n|)>> then for
      <math|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have that
      <math|x<rsub|i>\<less\>0\<Rightarrow\>0\<less\>-x<rsub|i>> and
      <math|x<rsub|i>\<less\>-C\<Rightarrow\>0\<less\>C\<less\>-x<rsub|i>>.
      Applying [theorem: <reference|extended x.y>] it follows that
      <math|0\<less\>-<frac|1|x<rsub|i>>\<less\><frac|1|C>> so that
      <math|<around*|\||<frac|1|x<rsub|i>>-0|\|>=-<frac|1|x<rsub|i>>\<less\><frac|1|C>=\<varepsilon\>>.
      Hence by [theorem: <reference|extended limit equivalences>] it follows
      that

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>><text| exist
        and ><below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>>=0=<frac|1|-\<infty\>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      </equation*>

      <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>>>Let
      <math|\<delta\>=<frac|<around*|\||x|\|>|2>> then as <math|x\<neq\>0> we
      have that <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>so that by [theorem:
      <reference|extended limit equivalences>] there exist a
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
      <math|<around*|\||x-x<rsub|i>|\|>\<less\>\<delta\>=<frac|<around*|\||x|\|>|2>>.
      Assume that there exist a <math|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      such that <math|x<rsub|i>=0> then <math|<around*|\||x|\|>=<around*|\||x-0|\|>=<around*|\||x-x<rsub|i>|\|>\<less\>\<delta\>=<frac|<around*|\||x|\|>|2>>
      a contradiction. So the assumption is false and we must have that
      <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      <math|<around*|\||x<rsub|i>|\|>\<neq\>0>. By [lemma: <reference|lemma
      20.78.156>] we have that <math|I=inf<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<in\>\<bbb-R\><rsup|+>>.
      Hence

      <\equation*>
        \<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>
        <text|0\<less\>I\<less\>=\|x_i>
      </equation*>

      Take now <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by [theorem:
      <reference|extended limit equivalences>] there exist a
      <math|M\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> such that

      <\equation*>
        \<forall\>i\<in\><around*|{|M,\<ldots\>,\<infty\>|}>
        <around*|\||x<rsub|i>-x|\|>\<less\>\<varepsilon\>\<cdot\><around*|\||x|\|>\<cdot\>I
      </equation*>

      Take <math|M=max<around*|(|n,M|)>> then
      <math|\<forall\>i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
      <math|<around*|\||x<rsub|i>-x|\|>\<less\>\<varepsilon\>\<cdot\><around*|\||x|\|>\<cdot\>I\<less\>\<varepsilon\>\<cdot\><around*|\||x|\|>\<cdot\><around*|\||x<rsub|i>|\|>>
      so that

      \;

      <\equation*>
        <around*|\||<frac|1|x<rsub|i>>-<frac|1|x>|\|>=<around*|\||<frac|x-x<rsub|i>|x<rsub|i>\<cdot\>x>|\|>=<frac|<around*|\||x-x<rsub|i>|\|>|<around*|\||x|\|>\<cdot\><around*|\||x<rsub|i>|\|>>\<leqslant\><frac|<around*|\||x-x<rsub|i>|\|>|<around*|\||x|\|>\<cdot\>I>\<less\><frac|\<varepsilon\>\<cdot\><around*|\||x|\|>\<cdot\><around*|\||x<rsub|i>|\|>|<around*|\||x|\|>\<cdot\><around*|\||x<rsub|i>|\|>>=\<varepsilon\>
      </equation*>

      which by [theorem: <reference|extended limit equivalences>] proves that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>><text| exist
        and ><below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>>=<frac|1|x>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|o>>
      </equation*>
    </description>
  </proof>

  \;

  <subsection|Series of non negative sequences>

  We want to deal with series in <math| <wide|\<bbb-R\>|\<wide-bar\>>>
  however there is a complication <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,+|\<rangle\>>>
  is not a semi-group so that a partial sum
  <math|<big|sum><rsub|i=0><rsup|n>x<rsub|i><rsub|>> is not always defined.
  However by [theorem: <reference|extended abelian semi group>]
  <math|<around*|\<langle\>|\<bbb-R\><rsup|+><rsub|0>,+|\<rangle\>>> is a
  commutative semi-group so if we limit ourselves to non negative extended
  real numbers than we can use everything defined in [Section:
  <reference|section sums and products>]. If we limit ourselves to non
  negative extended real numbers then if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-R\><rsup|+><rsub|0>>
  <math|<around*|{|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
  is a increasing sequence, as series are defined as
  <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|i>>
  it makes sense to study first limits of increasing/decreasing sequences.

  \;

  <\lemma>
    <label|lemma 20.80.156>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have:

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is increasing [in other words <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i>\<leqslant\>x<rsub|i+1>>] then\ 

      <\equation*>
        \<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| we have
        >sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is decreasing [in other words <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i+1>\<leqslant\>x<rsub|i>>] then\ 

      <\equation*>
        \<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| we have
        >inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>
  </lemma>

  <\proof>
    Let <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then we have:

    <\enumerate>
      <item>As <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>we
      have by [theorem: <reference|order sup,inf and inclusion>] that\ 

      <\equation>
        <label|eq 20.32.156>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Next if <math|x\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      then there exist a <math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|x=x<rsub|i>>, for <math|i> we have either:\ 

      <\description>
        <item*|<math|i\<in\><around*|{|k,\<ldots\>,n-1|}>>>Then
        <math|x=x<rsub|i><below|\<leqslant\>|i\<leqslant\>n-1\<less\>n>x<rsub|n>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>

        <item*|<math|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>Then
        <math|x=x<rsub|i>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      </description>

      so in all cases there exist a <math|y\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      such that <math|x\<leqslant\>y>. Hence by [theorem: <reference|order
      sup and inf and bigger elements>] it follows that
      <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>.
      Combining this with [eq: <reference|eq 20.32.156>] proves that\ 

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>As <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>we
      have by [theorem: <reference|order sup,inf and inclusion>] that\ 

      <\equation>
        <label|eq 20.32.156.1>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Next if <math|x\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      then there exist a <math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|x=x<rsub|i>>, for <math|i> we have either:\ 

      <\description>
        <item*|<math|i\<in\><around*|{|k,\<ldots\>,n-1|}>>>Then
        <math|x=x<rsub|i><below|\<geqslant\>|i\<leqslant\>n-1\<less\>n>x<rsub|n>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>

        <item*|<math|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>Then
        <math|x=x<rsub|i>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      </description>

      so in all cases there exist a <math|y\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      such that <math|y\<leqslant\>x>. Hence by [theorem: <reference|order
      sup and inf and bigger elements>] it follows that
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<geqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>.
      Combining this with [eq: <reference|eq 20.32.156.1>] proves that\ 

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended limit increasing / decreasing sequence exist>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have:

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is increasing [in other words <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i>\<leqslant\>x<rsub|i+1>>] then\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| exist and
        ><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is decreasing [in other words <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i+1>\<leqslant\>x<rsub|i>>] then\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| exist and
        ><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 20.80.156>]>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><eq-number><label|eq
        20.34.156>>>>>
      </eqnarray*>

      Next as <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is increasing we have for <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      that <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> that
      <math|x<rsub|l>\<leqslant\>x<rsub|i>> so that
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|l>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
      proving that

      <\equation>
        <label|eq 20.35.156>x<rsub|l>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.35.156>]>>>|<cell|sup<around*|(|<around*|{|x<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.34.156>]>>>|<cell|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| exist and
        ><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|x<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>First\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 20.80.156>]>>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><eq-number><label|eq
        20.36.156>>>>>
      </eqnarray*>

      Next as <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is decreasing we have for <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      that <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> that
      <math|x<rsub|i>\<leqslant\>x<rsub|l>> so that
      <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|l>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
      proving that

      <\equation>
        <label|eq 20.37.156>x<rsub|l>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.37.156>]>>>|<cell|inf<around*|(|<around*|{|x<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.36.156>]>>>|<cell|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| exist and
        ><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=inf<around*|(|<around*|{|x<rsub|l>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>
  </proof>

  To be able to define the infinite sum of non negative extended we must
  prove that the partial sums area increasing. For this we extend [theorem:
  <reference|sum of real numbers and inequality>] to be valid for the
  extended real numbers.

  <\theorem>
    <label|extended finite sums>We have for families of non negative numbers
    [members of <math|<around*|[|0,\<infty\>|]>=\<bbb-R\><rsup|+><big|cup><around*|{|0|]>>
    that:

    <\enumerate>
      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      a finite family of non negative extended real numbers then\ 

      <\equation*>
        0\<leqslant\><big|sum><rsub|i=0><rsup|n>x<rsub|i>
      </equation*>

      <item>If <math|I> is a finite set and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><around*|[|0,\<infty\>|]>>
      a finite family of non negative extended real numbers then\ 

      <\equation*>
        0\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>

      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]>>,
      <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      be finite families of non negative extended real numbers such that
      <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
      <math|x<rsub|i>\<leqslant\>y<rsub|i>> then\ 

      <\equation*>
        <big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\><big|sum><rsub|i=0><rsup|n>y<rsub|i>
      </equation*>

      <item>If <math|I> is a finite set and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><around*|[|0,\<infty\>|]>>,
      <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><around*|[|0,\<infty\>|]>>
      be finite families of non negative extended real numbers such that
      <math|\<forall\>i\<in\>I> <math|x<rsub|i>\<leqslant\>y<rsub|i>> then\ 

      <\equation*>
        <big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\><big|sum><rsub|i=0><rsup|n>y<rsub|i>
      </equation*>

      <item>If <math|n,m\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>n+m>\<subseteq\><around*|[|0,\<ldots\>,\<infty\>|]>>
      then\ 

      <\equation*>
        <big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\><big|sum><rsub|i=0><rsup|n+m>x<rsub|i>
      </equation*>

      <item>If <math|I> is a finite set, <math|J\<subseteq\>I> and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><around*|[|0,\<infty\>|]>>
      a finite family of non negative extended real numbers then\ 

      <\equation*>
        <big|sum><rsub|i\<in\>J>x<rsub|i>\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction to prove this, so define

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|For every
        ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|
        we have >0\<leqslant\><big|sum><rsub|i=0><rsup|n>x<rsub|i>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S>>For <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        we have <math|0\<leqslant\>x<rsub|0>> so that
        <math|<big|sum><rsub|i=0><rsup|0>x<rsub|i>=x<rsub|0>\<geqslant\>0>
        hence <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>> Let
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        be a family of non negative numbers then we have
        <math|0\<leqslant\>x<rsub|n+1>> and, as <math|n\<in\>S>, that
        <math|0\<leqslant\><big|sum><rsub|i=0><rsup|n>x<rsub|i>>. Hence we
        have\ 

        <\equation*>
          0<below|\<leqslant\>|<text|[theorem: <reference|extended
          x\<less\>=y then x+z\<less\>=y+z>]>>x<rsub|n+1>+<big|sum><rsub|i=0><rsup|n>x<rsub|i>=<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>
        </equation*>

        proving that <math|n+1\<in\>S>.
      </description>

      <item>For <math|I> we have either\ 

      <\description>
        <item*|<math|I=\<varnothing\>>>Then by [definition: <reference|sum
        generalized sum>] <math|0=<big|sum><rsub|i\<in\>I>x<rsub|i>>.

        <item*|<math|I\<neq\>\<varnothing\>>>Then by [definition:
        <reference|sum generalized sum>] there exist a
        <math|n\<in\>\<bbb-N\>> and a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such
        that <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>>.
        As by <math|<around*|(|1|)>> we have that
        <math|0\<leqslant\><big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>>
        so that <math|0\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>>.
      </description>

      Hence in all cases we have <math|0\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>>.

      <item>We use induction to prove this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|For every
        ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|,
        ><around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|
        with >\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}><text|
        >x<rsub|i>\<leqslant\>y<rsub|i><text| we have
        ><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\><big|sum><rsub|i=0><rsup|n>y<rsub|i>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S>>For <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\><around*|[|0,\<infty\>|]>>,
        <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        we have that <math|<big|sum><rsub|i=0><rsup|0>x<rsub|i>=x<rsub|0>\<leqslant\>y<rsub|0>=<big|sum><rsub|i=0><rsup|0>y<rsub|i>>
        proving that <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As
        <math|x<rsub|n+1>\<leqslant\>y<rsub|n+1>> and
        <math|<big|sum><rsub|i=0><rsup|n>x<rsub|i><below|\<leqslant\>|n\<in\>S><big|sum><rsub|i=0><rsup|n>y<rsub|i>>
        we have\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|n+1>x<rsub|i>=x<rsub|n+1>+<big|sum><rsub|i=0><rsup|n>x<rsub|i><below|\<leqslant\>|<text|[theorem:
          <reference|extended x\<less\>=y then
          x+z\<less\>=y+z>]>>y<rsub|n+1>+<big|sum><rsub|i=0><rsup|n>y<rsub|i>=<big|sum><rsub|i=0><rsup|n+1>y<rsub|i>
        </equation*>

        proving that <math|n+1\<in\>S>.
      </description>

      <item>For <math|I> we have either\ 

      <\description>
        <item*|<math|I=\<varnothing\>>>Then by [definition: <reference|sum
        generalized sum>] <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i\<in\>I>y<rsub|i>.>

        <item*|<math|I\<neq\>\<varnothing\>>>Then by [definition:
        <reference|sum generalized sum>] there exist a
        <math|n\<in\>\<bbb-N\>> and a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such
        that <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>>
        and <math|<big|sum><rsub|i\<in\>I><rsup|>y<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>y<rsub|\<beta\><around*|(|i|)>>>
        As by <math|<around*|(|3|)>> we have that
        <math|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>\<leqslant\><big|sum><rsub|i=0><rsup|n-1>y<rsub|\<beta\><around*|(|i|)>>>
        so that <math|<big|sum><rsub|i\<in\>I>x<rsub|i>\<leqslant\><big|sum><rsub|i\<in\>I>y<rsub|i>>.
      </description>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>x<rsub|i>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<around*|(|2|)>\<wedge\><text|[theorem:
        <reference|extended x\<less\>=y then
        x+z\<less\>=y+z>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n+m|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i=0><rsup|n+m>x<rsub|i>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>J>x<rsub|i>>|<cell|<below|\<leqslant\>|<around*|(|2|)><text|
        [theorem: <reference|extended x\<less\>=y then
        x+z\<less\>=y+z>]>>>|<cell|<big|sum><rsub|i\<in\>J>x<rsub|i>+<big|sum><rsub|i\<in\>I\\J>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I>x<rsub|i>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended partial sums converges>Let
    <math|k\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    then for <math|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|k>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    we have\ 

    <\equation*>
      <around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|k>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>
    </equation*>

    and

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i><text|
      exist and ><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then we have by
    [theorem: <reference|extended finite sums>] that\ 

    <\equation*>
      0\<leqslant\><big|sum><rsub|i=0><rsup|n-k>x<rsub|i+k>\<equallim\><rsub|<text|[definition:
      <reference|sum change start index>]>><big|sum><rsub|i=k><rsup|n>x<rsub|i>
    </equation*>

    and

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n>x<rsub|i>>|<cell|\<equallim\><rsub|<text|[definition:
      <reference|sum change start index>]>>>|<cell|<big|sum><rsub|i=0><rsup|n-k>x<rsub|i+k>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended finite sums>]>>>|<cell|<big|sum><rsub|i=0><rsup|<around*|(|n-k|)>+1>x<rsub|i+k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|<around*|(|n+1|)>-k>x<rsub|i+k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|n+1>x<rsub|i>>>>>
    </eqnarray*>

    proving that <math|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    is a increasing sequence. By [theorem: <reference|extended limit
    increasing / decreasing sequence exist>] it follows then that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i><text|
      exist and ><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|n>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>
  </proof>

  The above theorem motivates the following definition for a denumerable
  sums.

  <\definition>
    <label|extended infinite sum><index|<math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i><text|
    in >\<bbb-R\>>>Let <math|k\<in\>\<bbb-N\><rsub|0>> and let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    be a family of non negative extended real numbers then
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is defined by\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i>
    </equation*>

    <\note>
      By [theorem: <reference|extended partial sums converges>]
      <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i>>
      always exist so that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
      is always defined and that\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<in\><around*|[|0,\<infty\>|]>
      </equation*>
    </note>
  </definition>

  <\example>
    <label|extended infinite sum of zero elements>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    defined by <math|x<rsub|i>=0> then <math|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>=0>
  </example>

  <\proof>
    We have\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|0|}>|)>=0
    </equation*>

    \;
  </proof>

  We prove now the usual properties for <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>,
  first we extend [theorem: <reference|sum ring product>] to the set of
  extended real numbers:\ 

  <\theorem>
    <label|extended distributitivy finite sum>Let
    <math|\<alpha\>\<in\>\<bbb-R\>> then we have:\ 

    <\enumerate>
      <item>If <math|k\<in\>\<bbb-N\><rsub|0>>,
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      then <math|<big|sum><rsub|i=k><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>

      <item>If <math|I> is a finite set, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><around*|[|0,\<infty\>|]>>
      then <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction in the proof, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|For every
        ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|
        we have ><big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n>x<rsub|i>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        then <math|<big|sum><rsub|i=0><rsup|0><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\>x<rsub|0>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|0>x<rsub|i>>
        proving that <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>x<rsub|n+1>+<big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|\<alpha\>\<cdot\>x<rsub|n+1>+\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended distributitivy>]>>>|<cell|\<alpha\>\<cdot\><around*|(|x<rsub|n+1>+<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>>>>
        </eqnarray*>
      </description>

      Hence using mathematical induction we have that\ 

      <\equation>
        <label|eq 20.38.156>\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|,
        >n\<in\>\<bbb-N\><rsub|0><text| we have
        ><big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n>x<rsub|i>
      </equation>

      Let <math|k\<in\>\<bbb-N\><rsub|0>,n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      then we have\ 

      <\equation*>
        <big|sum><rsup|n><rsub|i=k><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>\<equallim\><rsub|<text|[definition:
        <reference|sum change start index>]>><big|sum><rsub|i=0><rsup|n-k><around*|(|\<alpha\>\<cdot\>x<rsub|i+k>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.38.156>]>>\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n-k>x<rsub|i+k>\<equallim\><rsub|<text|[definition:
        <reference|sum change start index>]>>\<alpha\>\<cdot\><big|sum><rsub|i=k><rsup|n>x<rsub|i>
      </equation*>

      <item>For <math|I> we have either\ 

      <\description>
        <item*|<math|I=\<varnothing\>>>Then by [definition: <reference|sum
        generalized sum>]

        <\equation*>
          \<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>\<varnothing\>>x<rsub|i>=0=<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)><rsub|>
        </equation*>

        <item*|<math|I\<neq\>\<varnothing\>>>Then by [definition:
        <reference|sum generalized sum>] there exist a
        <math|n\<in\>\<bbb-N\>> and a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such
        that <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n-1><around*|(|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>>
        and <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>>.
        As by <math|<around*|(|1|)>> we have
        <math|<big|sum><rsub|i=0><rsup|n-1><around*|(|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>=\<alpha\>\<cdot\><big|sum><rsup|n-1><rsub|i=0>x<rsub|\<beta\><around*|(|i|)>>>
        it follows that <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>>.
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended infinite sum properties>Let
    <math|k\<in\>\<bbb-N\><rsub|0>> then we have\ 

    <\enumerate>
      <item>If <math|\<alpha\>\<in\>\<bbb-R\>> and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      then <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>,
      <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      then <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>+<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>>.

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>,
      <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      are such that <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i>\<leqslant\>y<rsub|i>> then
      <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><below||><big|sum><rsub|i=k><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended distributitivy finite
        sum>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\><below||><big|sum><rsub|i=k><rsup|n>x<rsub|i><rsub|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit properties>]>>>|<cell|\<alpha\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n><around*|(|x<rsub|i>+y<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of sums (1)>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>+<big|sum><rsub|i=k><rsup|n>y<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit properties>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>+<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>y<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>+<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>>>>>
      </eqnarray*>

      <item>Let <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then we
      have by [theorem: <reference|extended finite sums>] that
      <math|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\<leqslant\><big|sum><rsub|i=k><rsup|n>y<rsub|k>>
      so that\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i><below|\<leqslant\>|<text|[theorem:
        <reference|extended limit properties>]>><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>y<rsub|i>=<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|extended series and index translation>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    then for <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|l>x<rsub|i>+<big|sum><rsub|i=l+1><rsup|\<infty\>>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Let <math|n\<in\><around*|{|l+1,\<ldots\>,\<infty\>|}>> then by [theorem:
    <reference|sum associativity simple>]\ 

    <\equation>
      <label|eq 20.39.201><big|sum><rsub|i=k><rsup|n>x<rsub|i>=<big|sum><rsub|i=k><rsup|l>x<rsub|i>+<big|sum><rsub|i=l+1><rsup|n>x<rsub|i>
    </equation>

    Next we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended limit and index
      translation>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n+<around*|(|l+1|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.39.201>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|l>x<rsub|i>+<big|sum><rsub|i=l+1><rsup|n+<around*|(|l+1|)>>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended limit properties>
      (4)]>>>|<cell|<big|sum><rsub|i=k><rsup|l>x<rsub|i>+<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=l+1><rsup|n+<around*|(|l+1|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended limit and index
      translation>]>>>|<cell|<big|sum><rsub|i=k><rsup|l>x<rsub|i>+<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=l+1><rsup|n>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|l>x<rsub|i>+<big|sum><rsub|i=l+1><rsup|\<infty\>>x<rsub|i>>>>>
    </eqnarray*>

    \;
  </proof>

  <\theorem>
    <label|extended series and permutations>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    then if <math|\<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>>
    is a permutation then\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>
    </equation*>
  </theorem>

  <\proof>
    Let <math|\<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>>
    be a bijection. Let <math|s\<in\><around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    then there exist a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
    that

    <\equation*>
      s=<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>
    </equation*>

    Let <math|m<rsub|n>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>>
    then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>> we have
    <math|\<sigma\><around*|(|i|)>\<leqslant\>m<rsub|n>\<Rightarrow\>\<sigma\><around*|(|i|)>\<in\><around*|{|k,\<ldots\>,m<rsub|n>|}>>.
    Hence we have that\ 

    <\equation>
      <label|eq 20.39.156>\<sigma\><around*|(|<around*|{|k,\<ldots\>,n|}>|)>=<around*|{|\<sigma\><around*|(|i|)>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>\<subseteq\><around*|{|k,\<ldots\>,m<rsub|n>|}>
    </equation>

    As <math|\<sigma\>> is injective it follows that\ 

    <\equation*>
      \<sigma\><rsub|\|<around*|{|k,\<ldots\>,n|}>>:<around*|{|k,\<ldots\>,n|}>\<rightarrow\>\<sigma\><around*|(|<around*|{|k,\<ldots\>,n|}>|)><text|
      is a bijection>
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|s>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>>x<rsub|\<sigma\><rsub|\|<around*|{|k,\<ldots\>,n|}>><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\>\<sigma\><around*|(|<around*|{|x,\<ldots\>,n|}>|)>>x<rsub|i>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.39.156>]&[theorem: <reference|extended finite
      sums>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m<rsub|n>|}>>x<rsub|i>\<in\><around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>>>>
    </eqnarray*>

    So <math|\<forall\>s\<in\><around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    we found a <math|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m<rsub|n>|}>>x<rsub|i>\<in\><around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    such that\ 

    <\equation*>
      s\<leqslant\><big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m<rsub|n>|}>>x<rsub|i>
    </equation*>

    Hence using [theorem: <reference|order sup and inf and bigger elements>]
    it follows that\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>
    </equation*>

    So we have proved that\ 

    <\equation>
      <label|eq 20.40.156><text|If >\<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}><text|
      is a bijection, ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|
      we have ><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>
    </equation>

    For the opposite inequality if <math|\<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>>
    is a bijection then <math|>

    <\equation>
      <label|eq 20.41.156><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>
    </equation>

    and as <math|\<sigma\><rsup|-1>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>>
    is a bijection we have also\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><rsup|-1><around*|(|\<sigma\><around*|(|i|)>|)>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>
    </equation*>

    which combined with [eq: <reference|eq 20.41.156>] gives\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>
    </equation*>
  </proof>

  In analogy with [definition: <reference|sum generalized sum>] the above
  theorem allows us to define the sum of a denumerable set of extended non
  negative numbers.

  <\definition>
    Let <math|I> be a denumerable set and
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\>I>> then
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is defined by\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>
    </equation*>

    where\ 

    <\equation*>
      \<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I <text| is a bijection>
    </equation*>

    <\note>
      As <math|I> is denumerable there exist a bijection from
      <math|\<bbb-N\><rsub|0>> to <math|I>. Further if
      <math|\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>I> is another bijection
      then we have that <math|\<beta\><rsup|-1>\<circ\>\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>>
      is a bijection so that\ 

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
        <reference|extended series and permutations>]>><big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|<around*|(|\<beta\><rsup|-1>\<circ\>\<gamma\>|)><around*|(|i|)>|)>>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<gamma\><around*|(|i|)>>
      </equation*>

      so that this definition is independent of the chosen bijection.
    </note>
  </definition>

  The next theorem shows how we can interchange sums.

  <\theorem>
    <label|extended sum of sums>Let <math|k,l\<in\>\<bbb-N\>> then we have:\ 

    <\enumerate>
      <item>If <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,
      <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> and
      <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      then\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|i,j>|)>=<big|sum><rsub|j=k><rsup|m><around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>
      </equation*>

      <item>Let <math|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> and
      <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      then\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|n>x<rsub|i,j>|)>=<big|sum><rsub|j=k><rsup|n><around*|(|<big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|i,j>|)>
      </equation*>

      <item>Let <math|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> and
      <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|l,\<ldots\>,n|}>\<times\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      then\ 

      <\equation*>
        <big|sum><rsub|i=l><rsup|n><around*|(|<big|sum><rsub|j=k><rsup|\<infty\>>x<rsub|i,j>|)>=<big|sum><rsub|j=k><rsup|\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>
      </equation*>

      <item>Let <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>.,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
      then\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>=<big|sum><rsub|j=k><rsup|\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|i,j>|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This was already proved in [theorem: <reference|sum of finite
      sums (1)>].

      <item>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}><text|If
        ><around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|
        then ><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|n>x<rsub|i,j>|)>=<big|sum><rsub|j=k><rsup|n><around*|(|<big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|i,j>|)>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|l\<in\>S>>Let <math|><math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|l>x<rsub|i,j>|)>>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=l><rsup|l><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>>>>
        </eqnarray*>

        so that <math|l\<in\>S>.

        <item*|<math|n\<in\>S\<rightarrow\>n+1\<in\>S>>Let
        <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,n+1|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|n+1>x<rsub|i,j>|)>>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|n>x<rsub|i,j>+x<rsub|i,n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended infinite sum
          properties>]>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|n>x<rsub|i,j>|)>+<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|j=l><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>+<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,n+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j-l><rsup|n+1><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>
      </description>

      <item>Define <math|<around*|{|y<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>>
      by <math|y<rsub|<around*|(|i,j|)>>=x<rsub|<around*|(|j,i|)>>> then we
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>y<rsub|j,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>y<rsub|j,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i,j>|)>>>>>
      </eqnarray*>

      <item>Let <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<around*|(|3|)>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
        <reference|extended infinite sum properties>]>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i,j>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|extended infinite sum>]>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>>>>
      </eqnarray*>

      So <math|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>
      is a upper bound of <math|<around*|{|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      from which it follows that\ 

      <\equation>
        <label|eq 20.42.156><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>=sup<around*|(|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>\<leqslant\><big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>
      </equation>

      For the opposite inequality take <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
        <reference|extended infinite sum properties>]>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>>sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|m>x<rsub|i,j>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|extended infinite sum>]>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>>>>>
      </eqnarray*>

      So <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>>
      is a upper bound of <math|<around*|{|<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>>
      proving that\ 

      <\equation*>
        <big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>=sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>
      </equation*>

      Combining this with [eq: <reference|eq 20.42.156>] proves\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>=<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>
      </equation*>
    </enumerate>
  </proof>

  Every finite sum of denumerable sums can be written as a denumerable sum.

  <\lemma>
    <label|lemma 20.90.156>Let <math|k,l,m\<in\>\<bbb-N\><rsub|0>> and
    <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,
    <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    and\ 

    <\equation*>
      \<beta\>:<around*|{|m,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>
    </equation*>

    a bijection then\ 

    <\equation*>
      <big|sum><rsub|i=m><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i,j>|)>\<equallim\><rsub|<text|[theorem:
      <reference|extended sum of sums>]>><big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation*>

    <\note>
      By [theorem: <reference|denumerable product of finite set and a
      denumerable set is denurable>] there exist always a bijection between
      <math|<around*|{|m,\<ldots\>,\<infty\>|}>> and
      <rigid|<math|><math|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>>
      for a given <math|m\<in\>\<bbb-N\><rsub|0>>.
    </note>
  </lemma>

  <\proof>
    Let <math|r\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> and define
    <math|N<rsub|r>=max<around*|(|<around*|{|\<beta\><around*|(|i|)><rsub|2>\|i\<in\><around*|{|m,\<ldots\>,r|}>|}>|)>\<in\><around*|{|l,\<ldots\>,\<infty\>|}>>
    then if <math|i\<in\><around*|{|m,\<ldots\>,r|}>> we have that
    <math|\<beta\><around*|(|i|)><rsub|2>\<in\><around*|{|k,\<ldots\>,N<rsub|r>|}>>
    so that <math|\<beta\><around*|(|i|)>=<around*|(|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,N<rsub|r>|}>>.
    Hence\ 

    <\equation*>
      \<beta\><around*|(|<around*|{|m,\<ldots\>,r|}>|)>\<subseteq\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,N<rsub|r>|}>
    </equation*>

    Further as <math|\<beta\>> is a bijection

    <\equation*>
      \<beta\><rsub|\|<around*|{|m,\<ldots\>,r|}>>:<around*|{|m,\<ldots\>,r|}>\<rightarrow\>\<beta\><around*|(|<around*|{|m,\<ldots\>,r|}>|)><text|
      is a bijection>
    </equation*>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=m><rsup|r>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,r|}>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,r|}>>x<rsub|\<sigma\><rsub|\|<around*|{|m,\<ldots\>,r|}>><around*|(|i|)><rsub|1>,\<sigma\><rsub|\|<around*|{|m,\<ldots\>,r|}>><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|<around*|{|m,\<ldots\>,r|}>|)>>x<rsub|<around*|(|i,j|)><rsub|1>,<around*|(|i,j|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|<around*|{|m,\<ldots\>,r|}>|)>>x<rsub|i,j>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended finite sums>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,N<rsub|r>|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,N<rsub|r>|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|N<rsub|r>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended infinite sum properties>]>>>|<cell|<big|sum><rsub|i=k><rsup|n>sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|s>x<rsub|i,j>\|s\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>>>>>
    </eqnarray*>

    Hence as <math|r\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> was chosen
    arbitrary it follows that\ 

    <\equation>
      <label|eq 20.43.156><big|sum><rsub|i=m><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>=sup<around*|(|<around*|{|<big|sum><rsub|i=m><rsup|r>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>\|r\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation>

    For the opposite inequality. Let <math|r\<in\><around*|{|l,\<ldots\>,\<infty\>|}>>
    and take

    <\equation*>
      M<rsub|r>=max<around*|(|<around*|(|\<beta\><rsup|-1>|)><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,r|}>|)>|)>\<in\><around*|{|m,\<ldots\>,\<infty\>|}>
    </equation*>

    So <math|<around*|(|\<beta\><rsup|-1>|)><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,r|}>|)>\<subseteq\><around*|{|m,\<ldots\>,M<rsub|r>|}>>
    hence

    <\equation>
      <label|eq 20.44.156><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,r|}>=\<beta\><around*|(|<around*|(|\<beta\><rsup|-1>|)><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,r|}>|)>|)>\<subseteq\>\<beta\><around*|(|<around*|{|m,\<ldots\>,M<rsub|r>|}>|)>
    </equation>

    As <math|\<beta\>> is a bijection it follows that\ 

    <\equation*>
      \<beta\><rsub|\|<around*|{|m,\<ldots\>,M<rsub|r>|}>>:<around*|{|m,\<ldots\>,M<rsub|r>|}>\<rightarrow\>\<beta\><around*|(|<around*|{|m,\<ldots\>,M<rsub|r>|}>|)>
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|j=l><rsup|r><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended sum of sums>]>>>|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|r>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,r|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,r|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended infinite sum properties>]>\<wedge\><text|[eq:
      <reference|eq 20.44.156>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|m,\<ldots\>,M<rsub|r>|)>>x<rsub|i,j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|m,\<ldots\>,M<rsub|r>|)>>x<rsub|<around*|(|i,j|)><rsub|1>,<around*|(|i,j|)><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,M<rsub|r>|}>>x<rsub|\<beta\><rsub|\|<around*|{|m,\<ldots\>,M<rsub|r>|}>><around*|(|i|)><rsub|1>,\<beta\><rsub|\|<around*|{|m,\<ldots\>,M<rsub|r>|}>><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,M<rsub|r>|}>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i=m><rsup|M<rsub|r>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=m><rsup|s>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>\|s\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=m><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>>>
    </eqnarray*>

    Hence as <math|r\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> was chosen
    arbitrary we have that\ 

    <\equation*>
      <big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i,j>|)>=sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|s><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i,j>|)>\|s\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=m><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>
    </equation*>

    which combined with [eq: <reference|eq 20.43.156>] proves that\ 

    <\equation*>
      <big|sum><rsub|i=m><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>=<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i,j>|)>
    </equation*>

    \;
  </proof>

  Next we extend the above theorem for arbitrary finite sums of different
  size.\ 

  <\theorem>
    <label|extended denumerable sum of finite sums>Let
    <math|k,l\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><big|cup><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    [where <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
    have <math|n<rsub|i>\<leqslant\>m<rsub|i>>]<math|> then if

    <\equation*>
      \<beta\>:<around*|{|l,\<ldots\>,\<infty\>|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>
    </equation*>

    is a bijection then we have

    <\equation*>
      <big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=n<rsub|i>><rsup|m<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and define\ 

    <\equation*>
      \<tau\><rsub|i>:<around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>\<rightarrow\><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}><text|
      where >\<tau\><rsub|i><around*|(|j|)>=<around*|(|i,j|)><text| which is
      a bijection>
    </equation*>

    <\proof>
      \ 

      <\description>
        <item*|injectivity>If <math|\<tau\><rsub|i><around*|(|r|)>=\<tau\><rsub|i><around*|(|s|)>>
        then <math|<around*|(|i,r|)>=<around*|(|i,s|)>> so that <math|r=s>.

        <item*|surjectivity>If <math|<around*|(|r,s|)>\<in\><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>>
        then <math|s\<in\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>> and
        <math|r=i> so that <math|<rigid|\<tau\><rsub|i><around*|(|s|)>=<around*|(|i,s|)>=<around*|(|r,s|)>>>
        proving subjectivity.
      </description>
    </proof>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|k,l|)>\<in\>\<tau\><rsub|i><around*|(|<around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>|)>>x<rsub|k,l>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|j\<in\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>>x<rsub|\<tau\><rsub|i><around*|(|j|)><rsub|1>,\<tau\><rsub|i><around*|(|j|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=n<rsub|i>><rsup|m<rsub|i>>x<rsub|i,j><eq-number><label|eq
      20.45.156>>>>>
    </eqnarray*>

    Let <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> and define
    <math|N<rsub|m>=max<around*|(|\<beta\><around*|(|i|)><rsub|1>\|i\<in\><around*|{|l,\<ldots\>,m|}>|)>>.
    If <math|i\<in\><around*|{|l,\<ldots\>,m|}>> then, as
    <math|<rigid|\<beta\><around*|(|i|)>\<in\><big|cup><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|j|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>>>
    there exist a <math|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|j=\<beta\><around*|(|i|)><rsub|1>\<leqslant\>N<rsub|m>> and
    <math|\<beta\><around*|(|i|)><rsub|2>\<in\><around*|{|n<rsub|j>,\<ldots\>,m<rsub|j>|}>>
    proving that\ 

    <\equation*>
      \<beta\><around*|(|<around*|{|l,\<ldots\>,m|}>|)>\<subseteq\><big|cup><rsub|i\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>
    </equation*>

    Further if <math|i,j\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>> with
    <math|i\<neq\>j> then <math|<around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}><big|cap><around*|{|j|}>\<times\><around*|{|n<rsub|j>,\<ldots\>,m<rsub|j>|}>=\<varnothing\>>
    hence we have\ 

    <\equation*>
      \<beta\><around*|(|<around*|{|l,\<ldots\>,m|}>|)>\<subseteq\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}><text|
      a disjoint union >
    </equation*>

    and as <math|\<beta\>> is a bijection

    <\equation*>
      \<beta\><rsub|\|<around*|{|l,\<ldots\>,m|}>>:<around*|{|l,\<ldots\>,m|}>\<rightarrow\>\<beta\><around*|(|<around*|{|l,\<ldots\>,m|}>|)><text|
      is a bijection>
    </equation*>

    <\eqnarray*>
      <tformat|<cwith|4|4|3|3|cell-hyphen|n>|<table|<row|<cell|<big|sum><rsub|i=l><rsup|m>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|l,\<ldots\>,m|}>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|l,\<ldots\>,m|}>>x<rsub|\<beta\><rsub|\|<around*|{|l,\<ldots\>,m|}>><around*|(|i|)><rsub|1>,\<beta\><rsub|\|<around*|{|l,\<ldots\>,m|}>><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|<around*|{|l,\<ldots\>,m|}>|)>>x<rsub|<around*|(|i,j|)><rsub|1>,<around*|(|i,j|)><rsub|2>>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended finite sums>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>>x<rsub|<around*|(|i,j|)><rsub|1>,<around*|(|i,j|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets
      (1)>]>>>|<cell|<big|sum><rsub|r\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|r|}>\<times\><around*|{|n<rsub|r>,\<ldots\>,m<rsub|r>|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|r\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|n<rsub|r>,\<ldots\>,m<rsub|r>|}>>x<rsub|r,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|r=k><rsup|N<rsub|m>><around*|(|<big|sum><rsub|j=n<rsub|r>><rsup|m<rsub|r>>x<rsub|r,j>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended finite sums>]>>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|r=k><rsup|n><around*|(|<big|sum><rsub|j=n<rsub|r>><rsup|m<rsub|r>>x<rsub|r,j>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|r=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=n<rsub|r>><rsup|m<rsub|r>>x<rsub|r,j>|)>>>>>
    </eqnarray*>

    So <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> was chosen arbitrary
    we have that\ 

    <\equation>
      <label|eq 20.46.156><big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>=sup<around*|(|<around*|{|<big|sum><rsub|i=l><rsup|m>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|r=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=n<rsub|r>><rsup|m<rsub|r>>x<rsub|r,j>|)>
    </equation>

    For the opposite inequality take <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    and take

    <\equation*>
      M<rsub|m>=max<around*|(|<around*|{|<around*|(|\<beta\><rsup|-1>|)><around*|(|<big|cup><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>|)>|}>|)>
    </equation*>

    then <math|><math|<around*|(|\<beta\><rsup|-1>|)><around*|(|<big|cup><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>|)>\<subseteq\><around*|{|l,\<ldots\>,M<rsub|m>|}>>
    then\ 

    <\equation>
      <label|eq 20.47.156><big|cup><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>=\<beta\><around*|(|<around*|(|\<beta\><rsup|-1>|)><around*|(|<big|cup><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|n<rsub|i>,\<ldots\>,m<rsub|i>|}>|)>|)>\<subseteq\>\<beta\><around*|(|<around*|{|l,\<ldots\>,M<rsub|m>|}>|)>
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|r=k><rsup|m><around*|(|<big|sum><rsub|j=n<rsub|r>><rsup|m<rsub|r>>x<rsub|r,j>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.45.156>]>>>|<cell|<big|sum><rsub|r=k><rsup|m><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|r|}>\<times\><around*|{|n<rsub|r>,\<ldots\>,m<rsub|r>|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|r\<in\><around*|{|k,\<ldots\>,m|}>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|r|}>\<times\><around*|{|n<rsub|r>,\<ldots\>,m<rsub|r>|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets
      (1)>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|cup><rsub|r\<in\><around*|{|k,\<ldots\>,m|}>><around*|(|r|)>\<times\><around*|{|n<rsub|r>,\<ldots\>,m<rsub|r>|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended finite sums>]>\<wedge\><text|[eq: <reference|eq
      20.47.156>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|<around*|{|l,\<ldots\>,M<rsub|m>|}>|)>>x<rsub|i.j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|<around*|{|l,\<ldots\>,M<rsub|m>|}>|)>>x<rsub|<around*|(|i,j|)><rsub|1>.<around*|(|i,j|)><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|l,\<ldots\>,M<rsub|m>|}>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=l><rsup|M<rsub|m>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=l><rsup|n>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>>>
    </eqnarray*>

    As <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> was chosen arbitrary
    it follows that\ 

    <\equation*>
      <big|sum><rsub|r=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=n<rsub|r>><rsup|m<rsub|r>>x<rsub|r,j>|)>=sup<around*|(|<around*|{|<big|sum><rsub|r=k><rsup|n><around*|(|<big|sum><rsub|j=n<rsub|r>><rsup|m<rsub|r>>x<rsub|r,j>|)>\|n\<in\><around*|{|r,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>
    </equation*>

    which combined with [eq: <reference|eq 20.46.156>] proves that

    <\equation*>
      <big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>=<big|sum><rsub|r=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=n<rsub|r>><rsup|m<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>
    </equation*>
  </proof>

  <\theorem>
    <label|extended denumerable sum of denumerable sums>Let
    <math|k,l,n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    and

    <\equation*>
      \<beta\>:<around*|{|n,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}><text|
      a bijection >
    </equation*>

    then\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|>>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation*>

    <\note>
      By [theorem: <reference|denumerable product of finite set and a
      denumerable set is denurable>] there exist always a bijection between
      <math|<around*|{|n,\<ldots\>,\<infty\>|}>> and
      <rigid|<math|><math|<around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>>
      for a given <math|m\<in\>\<bbb-N\><rsub|0>>.
    </note>
  </theorem>

  <\proof>
    Let <math|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> and define
    <math|N<rsub|m>=max<around*|(|<around*|{|\<beta\><around*|(|i|)><rsub|1>\|i\<in\><around*|{|n,\<ldots\>,m|}>|}>|)>>
    and <rigid|<math|M<rsub|m>=max<around*|(|<around*|{|\<beta\><around*|(|i|)><rsub|2>\|i\<in\><around*|{|n,\<ldots\>,m|}>|}>|)>>>
    then we have that\ 

    <\equation>
      <label|eq 20.48.156>\<beta\><around*|(|<around*|{|n,\<ldots\>,m|}>|)>\<subseteq\><around*|{|k,\<ldots\>,N<rsub|m>|}>\<times\><around*|{|l,\<ldots\>,M<rsub|m>|}>
    </equation>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=n><rsup|m>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|<around*|{|n,\<ldots\>,m|}>|)>>x<rsub|<around*|(|i,j|)><rsub|1>,<around*|(|i,j|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|<around*|{|n,\<ldots\>,m|}>|)>>x<rsub|i,j>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended finite sums>]>\<wedge\><text|[eq: <reference|eq
      20.48.156>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>\<times\><around*|{|l,\<ldots\>,M<rsub|m>|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,M<rsub|m>|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsup|N<rsub|m>><rsub|i=k><around*|(|<big|sum><rsub|j=l><rsup|M<rsub|m>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended finite sums>]>>>|<cell|<big|sum><rsup|N<rsub|m>><rsub|i=k>sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|r>x<rsub|i,j>\|r\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|N<rsub|m>><rsub|i=k><around*|(|<big|sum><rsub|j=l><rsup|M<rsub|m>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsup|r><rsub|i=k><around*|(|<big|sum><rsub|j=l><rsup|M<rsub|m>>x<rsub|i,j>|)>\|r\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>>>>>
    </eqnarray*>

    As <math|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> was chosen arbitrary
    it follows that\ 

    <\equation>
      <label|eq 20.49.156><big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>=sup<around*|(|<around*|{|<big|sum><rsub|i=n><rsup|m>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>\|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation>

    For the opposite inequality let <math|r\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,
    <math|s\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> and take

    <\equation*>
      N=max<around*|(|<around*|(|\<beta\><rsup|-1>|)><around*|(|<around*|{|k,\<ldots\>,r|}>\<times\><around*|{|l,\<ldots\>,s|}>|)>|)>
    </equation*>

    then <math|<around*|(|\<beta\><rsup|-1>|)><around*|(|<around*|{|k,\<ldots\>,r|}>\<times\><around*|{|l,\<ldots\>,s|}>|)>\<subseteq\><around*|{|n,\<ldots\>,N|}>>
    so that\ 

    <\equation>
      <label|eq 20.50.156><around*|{|k,\<ldots\>,r|}>\<times\><around*|{|l,\<ldots\>,s|}>=\<beta\><around*|(|<around*|(|\<beta\><rsup|-1>|)><around*|(|<around*|{|k,\<ldots\>,r|}>\<times\><around*|{|l,\<ldots\>,s|}>|)>|)>\<subseteq\>\<beta\><around*|(|n,\<ldots\>,N|)>
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|r><around*|(|<big|sum><rsub|j=l><rsup|s>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general equivalence>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>.,r|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,s|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,r|}>\<times\><around*|{|l,\<ldots\>,s|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|extended finite sums>]>\<wedge\><text|[eq: <reference|eq
      20.50.156>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|n,\<ldots\>,N|)>>x<rsub|i,j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<beta\><around*|(|n,\<ldots\>,N|)>>x<rsub|<around*|(|i,j|)><rsub|1>,<around*|(|i,j|)><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|n,\<ldots\>,N|}>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=n><rsup|N>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=n><rsup|m>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>\|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>>>
    </eqnarray*>

    Hence as <math|r\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> was chosen
    arbitrary we have that\ 

    <\equation>
      <label|eq 20.51.156><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|s>x<rsub|i,j>|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|m><around*|(|<big|sum><rsub|j=l><rsup|s>x<rsub|i,j>|)>\|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>
    </equation>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|j=l><rsup|s><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended sum of sums>]>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|s>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.51.156>]>>>|<cell|<big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>>>
    </eqnarray*>

    So as <math|s\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> is chosen
    arbitrary we have that\ 

    <\equation*>
      <big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>=sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>
    </equation*>

    hence\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>|)>\<equallim\><rsub|<text|[theorem:
      <reference|extended sum of sums>]>><big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>\<leqslant\><big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>
    </equation*>

    which combined with [eq: <reference|eq 20.49.156>] proves that\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|>>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation*>
  </proof>

  If a series if finite then all the terms in the series are real numbers.

  <\lemma>
    <label|lemma 20.95.156>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    then we have\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|n>x<rsub|i>=\<infty\><text|
      >\<Leftrightarrow\><text| >\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>
    </equation*>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We use induction to prove this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\|<text|If
        ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|
        satisfies ><big|sum><rsub|i=k><rsup|n>x<rsub|i><text| then
        >\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|k\<in\>S>>For <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        we have <math|x<rsub|k>=<big|sum><rsub|i=k><rsup|k>x<rsub|i>=\<infty\>>
        hence <math|\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k|}>|}>>
        proving that <math|k\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n+1|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        be such that <math|<big|sum><rsub|i=k><rsup|n+1>x<rsub|i>=\<infty\>>
        then, as <math|<big|sum><rsub|i=k><rsup|n+1>x<rsub|i>=x<rsub|n+1>+<big|sum><rsub|i=k><rsup|n>x<rsub|i>>,
        we have either:

        <\description>
          <item*|<math|x<rsub|n+1=\<infty\>>>>Then
          <math|\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n+1|}>|}>>

          <item*|<math|<big|sum><rsub|i=k><rsup|n>x<rsub|i>>>Then as
          <math|n\<in\>S> <math|\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>\<subseteq\>\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n+1|}>|}>>
        </description>

        So in all possible cases we have <math|\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n+1|}>|}>>
        which proves that <math|n+1\<in\>S>
      </description>

      <item*|<math|\<Leftarrow\>>>We use also induction for this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\|<text|If
        ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|
        satisfies >\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n|}><text|
        then ><rigid|<big|sum><rsub|i=k><rsup|n>x<rsub|i>=\<infty\>>|}>|}>
      </equation*>

      the we have:\ 

      <\description>
        <item*|<math|k\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        satisfies <math|\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,k|}>|}>=<around*|{|x<rsub|i>|}>>
        then <math|x<rsub|k>=\<infty\>> so that
        <math|<big|sum><rsub|i=k><rsup|k>x<rsub|i>=x<rsub|k>=\<infty\>>.
        Hence <math|k\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n+1|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        satisfies <math|\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n+1|\<nobracket\>>|}>>
        then there exist a <math|i\<in\><around*|{|k,\<ldots\>,n+1|}>> such
        that <math|x<rsub|i>=\<infty\>>. For <math|i> we have either:

        <\description>
          <item*|<math|i=n+1>>Then <math|<big|sum><rsub|i=k><rsup|n+1>x<rsub|i>=x<rsub|n+1>+<big|sum><rsub|i=k><rsup|n>x<rsub|i>=\<infty\>+<big|sum><rsub|i=k><rsup|n>x<rsub|i>=\<infty\>>

          <item*|<math|i\<in\><around*|{|k,\<ldots\>,n|}>>>Then
          <math|<big|sum><rsub|i=k><rsup|n+1>x<rsub|i>=x<rsub|n+1>+<big|sum><rsub|i=k><rsup|n>x<rsub|i>\<equallim\><rsub|n\<in\>S>x<rsub|n+1>+\<infty\>=\<infty\>>
        </description>

        So in all cases we have <math|<big|sum><rsub|i=k><rsup|n+1>x<rsub|i>=\<infty\>>
        proving that <math|n+1\<in\>S>.
      </description>
    </description>
  </proof>

  <\theorem>
    <label|extended series is finite then all the terms are finite>Let
    <math|k\<in\>\<bbb-N\><rsub|0>> and for
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    we have <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<less\>\<infty\>>
    then <rigid|<math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    we have <math|x<rsub|i>\<less\>\<infty\>>\ 
  </theorem>

  <\proof>
    As <math|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<less\>\<infty\>>
    it follows from [theorem: <reference|extended infinite inf sup>] that
    <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have that
    <math|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\<less\>\<infty\>\<equallim\><rsub|<text|[lemma:
    <reference|lemma 20.95.156>]>>x<rsub|n>=\<infty\>>.\ 
  </proof>

  <section|Preliminaries>

  <\definition>
    <label|measure pairwise disjoint><index|pairwise disjoint family>Let
    <math|X> be a set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>,
    <math|I> a set then a family of sets <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
    is <with|font-series|bold|pairwise disjoint >if\ 

    <\equation*>
      \<forall\>i,j\<in\>I<text| with >i\<neq\>j<text| we have
      >A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>
    </equation*>
  </definition>

  <\notation>
    Let <math|X> be a set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>,
    <math|I> a set and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
    then if we write\ 

    <\equation*>
      <big|sqcup><rsub|i\<in\>I>A<rsub|i>
    </equation*>

    we mean\ 

    <\equation*>
      <big|sqcup><rsub|i\<in\>I>A<rsub|i>
    </equation*>

    and additional that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
    is pairwise disjoint.
  </notation>

  <\theorem>
    <label|measure pairwise disjoint sets and bijections>Let <math|X> be a
    set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>, <math|I,J>
    sets and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-A\>>
    be a pairwise disjoint family and <math|\<sigma\>:I\<rightarrow\>J> a
    bijection then <math|<around*|{|A<rsub|\<sigma\><around*|(|i|)>>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
    is pairwise disjoint and <math|<big|cup><rsub|i\<in\>I>A<rsub|\<sigma\><around*|(|i|)>>=<big|cup><rsub|i\<in\>J>A<rsub|i>>.
    In other words using the above theorem we have\ 

    <\equation*>
      <big|sqcup><rsub|i\<in\>J>A<rsub|i>=<big|sqcup><rsub|i\<in\>I>A<rsub|\<sigma\><around*|(|i|)>>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|family union of family set and surjections>]
    and the fact that a bijection is a surjection we have\ 

    <\equation*>
      <big|cup><rsub|i\<in\>I>A<rsub|\<sigma\><around*|(|i|)>>=<big|cup><rsub|i\<in\>J>A<rsub|i>
    </equation*>

    Let <math|i,j\<in\>I> be such that <math|i\<neq\>j> then as
    <math|\<sigma\>> is injective we have
    <math|\<sigma\><around*|(|i|)>\<neq\>\<sigma\><around*|(|j|)>> [if
    <math|\<sigma\><around*|(|i|)>=\<sigma\><around*|(|j|)>> then <math|i=j>]
    so that <math|A<rsub|\<sigma\><around*|(|i|)>><big|cap>A<rsub|\<sigma\><around*|(|j|)>>=\<varnothing\>>.
    Hence <math|<around*|{|A<rsub|\<sigma\><around*|(|i|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is pairwise disjoint.
  </proof>

  The following set based theorems and lemmas will be usefull later

  \;

  <\lemma>
    <label|lemma 20.161.201>Let be <math|N> be either <math|\<infty\>> or
    <math|N\<in\>\<bbb-N\>> <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>\<subseteq\>\<cal-A\>>
    be a sequence or finite family of sets then for

    <\equation*>
      <around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><text|
      defined by >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i><text|
      if >i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|j><text|
      if >i\<in\><around*|{|2,\<ldots\>,N|}>>>>>>
    </equation*>

    we have\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,N|}><text|
      \ >B<rsub|i>\<subseteq\>A<rsub|i>
    </equation*>

    <\equation*>
      <big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>B<rsub|i>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>A<rsub|i>
    </equation*>

    and

    <\equation*>
      \<forall\>i,j\<in\><around*|{|1,\<ldots\>,N|}><text| with
      >i\<neq\>j<text| then >B<rsub|i><big|cap>B<rsub|j>\<neq\>\<varnothing\><text|
      [in other words ><around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><text|
      is pairwise disjoint>
    </equation*>
  </lemma>

  <\proof>
    We have\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,N|}><text| that
      >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1>\<subseteq\>A<rsub|i><text|
      if >i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>\<subseteq\>A<rsub|i><text|
      if >i\<in\><around*|{|2,\<ldots\>,N|}>>>>>>\<subseteq\>A<rsub|i>
    </equation*>

    From the above it follows that\ 

    <\equation>
      <label|eq 20.112.201><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>A<rsub|i>
    </equation>

    If <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>A<rsub|i>>
    then there exist a <math|k\<in\><around*|{|1,\<ldots\>,N|}>> such that
    <math|x\<in\>A<rsub|k>>. Define <math|<rigid|M=<around*|{|i\<in\><around*|{|1,\<ldots\>,k|}>\|x\<in\>A<rsub|i>|}>\<subseteq\><around*|{|1,\<ldots\>,k|}>>>
    then <math|k\<in\>M> and <math|M> is finite so that\ 

    <\equation*>
      m=min<around*|(|M|)><text| exist>
    </equation*>

    As <math|m\<in\>M\<subseteq\><around*|{|1,\<ldots\>,k|}>> we have
    <math|x\<in\>A<rsub|m>> and for <math|m> either:

    <\description>
      <item*|<math|m=1>>Then <math|x\<in\>A<rsub|1>=B<rsub|1>> so that
      <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>B<rsub|i>>.

      <item*|<math|1\<less\>m>>Then for <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m-1|}>>
      we have <math|x\<nin\>A<rsub|j>> so that
      <math|x\<nin\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m-1|}>>A<rsub|j>>
      hence <math|x\<in\>A<rsub|m>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m-1|}>>A<rsub|j>=B<rsub|m>.>
      So <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>B<rsub|i>>.
    </description>

    As <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>A<rsub|i>>
    was chosen arbitrary it follows that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>B<rsub|i>>
    which combined with [eq: <reference|eq 20.112.201>] proves that\ 

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>B<rsub|i>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>A<rsub|i>
    </equation*>

    Let <math|i,j\<in\><around*|{|1,\<ldots\>,N|}>> with <math|i\<neq\>j>
    then we may assume that <math|i\<less\>j> [otherwise exchange <math|i>
    and <math|j>]. Assume that <math|x\<in\>B<rsub|i><big|cap>B<rsub|j>> then
    for <math|i> we have either:

    <\description>
      <item*|<math|i=1>>Then <math|x\<in\>B<rsub|1>=A<rsub|1>> and
      <math|x\<in\>B<rsub|j>=A<rsub|j>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|k>>.
      So <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,j-1|}>> we have that
      <math|x\<nin\>A<rsub|k>>, hence, as
      <math|1=i\<less\>j\<Rightarrow\>1\<in\><around*|{|1,\<ldots\>,j-1|}>>,
      it follows that <math|x\<nin\>A<rsub|1>> contradicting
      <math|x\<in\>B<rsub|1>=A<rsub|1>.>

      <item*|<math|1\<less\>j>>Then <math|x\<in\>B<rsub|j>=A<rsub|j>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|k>\<Rightarrow\>\<forall\>k\<in\><around*|{|1,\<ldots\>,j-1|}>>
      we have <math|x\<nin\>A<rsub|k><rsub|>.> As
      <math|i\<less\>j\<Rightarrow\>i\<in\><around*|{|1,\<ldots\>,j-1|}>> it
      follows that <math|x\<nin\>A<rsub|i>> contradicting
      <math|x\<in\>A<rsub|i>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|k>\<subseteq\>A<rsub|i>>.
    </description>

    As in all cases we have a contradiction the assumption is wrong and we
    must have that\ 

    <\equation*>
      B<rsub|i><big|cap>B<rsub|j>=\<varnothing\>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 20.102.202>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
    be a sequence of sets then if we define
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|<rigid|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>>>
    we have

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i><text|
      and >\<forall\>i\<in\>\<bbb-N\><text| we have
      >B<rsub|i>\<subseteq\>B<rsub|i+1>
    </equation*>
  </lemma>

  <\proof>
    First if <math|i\<in\>\<bbb-N\>> and <math|x\<in\>B<rsub|i>> then there
    exists a <math|j\<in\><around*|{|1,\<ldots\>,i|}>> such that

    <\equation*>
      x\<in\>A<rsub|j>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i+1|}>>A<rsub|j>=B<rsub|i+1>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 20.54.202>\<forall\>i\<in\>\<bbb-N\><rsub|0> <text| we have
      >B<rsub|i>\<subseteq\>B<rsub|i+1>
    </equation>

    Second if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
    then <math|\<exists\>i\<in\>\<bbb-N\>> such that <math|x\<in\>A<rsub|i>>.
    So as <math|i\<in\><around*|{|1,\<ldots\>,i|}>> we have that
    <math|<rigid|x\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>=B<rsub|i>>>
    which proves that <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>,
    or

    <\equation>
      <label|eq 20.55.202><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>
    </equation>

    Third if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    then <math|\<exists\>i\<in\>\<bbb-N\>> such that
    <math|x\<in\>B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>>,
    so there exists a <rigid|<math|j\<in\><around*|{|1,\<ldots\>,i|}>\<subseteq\>\<bbb-N\>>>
    with <math|x\<in\>A<rsub|j>>, proving that
    <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>. Hence
    <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
    which combined with [eq: <reference|eq 20.55.202>] gives

    <\equation>
      <label|eq 20.56.202><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>
    </equation>

    The theorem is then proved by [eqs: <reference|eq 20.54.202>,
    <reference|eq 20.55.202> and <reference|eq 20.56.202>].
  </proof>

  <\definition>
    Let <math|X> be a set and <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    then\ 

    <\enumerate>
      <item><math|\<cal-A\>> is <math|\<cup\>>-stable if
      <math|\<forall\>A,B\<in\>\<cal-A\>> we have
      <math|A<big|cup>B\<in\>\<cal-A\>>

      <item><math|\<cal-A\>> is <math|\<cap\>>-stable if
      <math|\<forall\>A,B\<in\>\<cal-A\>> we have
      <math|A<big|cap>B\<in\>\<cal-A\>>
    </enumerate>
  </definition>

  <\theorem>
    <label|measure union intersection stable>Let <math|X> be a set and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then we have:

    <\enumerate>
      <item><math|\<cal-A\><text| is >\<cup\>>-stable
      <math|\<Leftrightarrow\>> <math|\<forall\><around*|{|A<rsub|i>|}><rsub|\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\>> we have <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>

      <item><math|\<cal-A\><text| is >\<cap\>>-stable
      <math|\<Leftrightarrow\>> <math|\<forall\><around*|{|A<rsub|i>|}><rsub|\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\>> we have <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>
  </theorem>

  <\proof>
    \ This is easely proved by induction

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>We prove this by induction so let

        <\equation*>
          S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
          ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\><text|
          then ><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>|}>
        </equation*>

        then we have:

        <\description>
          <item*|<math|1\<in\>S>>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-A\>>
          then <math|<big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-A\>>
          so that <math|1\<in\>S>.

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
          <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-A\>>
          then <math|A<rsub|n+1>\<in\>\<cal-A\>> and, as <math|n\<in\>S>,
          <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>.
          Hence <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=A<rsub|n+1><big|cup><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<in\>\<cal-A\>>
          which proves that <math|n+1\<in\>S>
        </description>

        <item*|<math|\<Leftarrow\>>>Let <math|A,B\<in\>\<cal-A\>> and define
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>\<subseteq\>\<cal-A\>>
        by <math|A<rsub|1>=A> and <math|A<rsub|2>=B> then
        <rigid|<math|A<big|cup>B=A<rsub|1><big|cup>A<rsub|2>=<big|cup><rsub|i\<in\><around*|{|1,2|}>>A<rsub|i>\<in\>\<cal-A\>>>.
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>><item*|<math|\<Rightarrow\>>>We prove
        this by induction so let

        <\equation*>
          S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
          ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\><text|
          then ><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>|}>
        </equation*>

        then we have:

        <\description>
          <item*|<math|1\<in\>S>>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-A\>>
          then <math|<big|cap><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-A\>>
          so that <math|1\<in\>S>.

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
          <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-A\>>
          then <math|A<rsub|n+1>\<in\>\<cal-A\>> and, as <math|n\<in\>S>,
          <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>.
          Hence <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=A<rsub|n+1><big|cap><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<in\>\<cal-A\>>
          which proves that <math|n+1\<in\>S>
        </description>

        <item*|<math|\<Leftarrow\>>>Let <math|A,B\<in\>\<cal-A\>> and define
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>\<subseteq\>\<cal-A\>>
        by <math|A<rsub|1>=A> and <math|A<rsub|2>=B> then
        <rigid|<math|A<big|cap>B=A<rsub|1><big|cap>A<rsub|2>=<big|cap><rsub|i\<in\><around*|{|1,2|}>>A<rsub|i>\<in\>\<cal-A\>>>.
      </description>
    </enumerate>
  </proof>

  <\lemma>
    <label|lemma 20.109.213>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of sets such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    there exist a family <math|<around*|{|B<rsub|i,j>|}><rsub|j\<in\>I<rsub|i>>>
    such that <math|A<rsub|i>=<big|cup><rsub|j\<in\>I<rsub|i>>B<rsub|i,j>>
    then we have:\ 

    <\enumerate>
      <item><math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>><rsub|>|)>>

      <item>If <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|{|B<rsub|i,j>|}><rsub|j\<in\>I<rsub|i>>> is pairwise
      disjoint then we have that <math|<around*|{|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|}><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>>
      is pairwise disjoint. In other words

      <\equation*>
        <big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|sqcup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>><rsub|>|)>
      </equation*>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction to prove this, so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        is such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
        >\<exists\><around*|{|B<rsub|i,j>|}><rsub|j\<in\>I<rsub|i>><text|
        with >A<rsub|i>=<big|cup><rsub|j\<in\>I<rsub|i>>B<rsub|i,j><text|
        then ><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,1|}>>>
        satisfies that there exist a <math|<around*|{|B<rsub|1,j>|}><rsub|j\<in\>I<rsub|1>>>
        such that <math|A<rsub|1>=<big|cup><rsub|j\<in\>I<rsub|1>>B<rsub|1,j>>
        then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cap><rsub|i\<in\><around*|{|1|}>>A<rsub|i>>|<cell|=>|<cell|A<rsub|1>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|j\<in\>I<rsub|1>>B<rsub|1,j>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|j\<in\>I<rsub|1>><around*|(|<big|cap><rsub|k\<in\><around*|{|1|}>>B<rsub|k,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|<around*|(|j|)>\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>I<rsub|i>><around*|(|<big|cap><rsub|k\<in\><around*|{|1|}>>B<rsub|k,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>I<rsub|i>><around*|(|<big|cap><rsub|k\<in\><around*|{|1|}>>B<rsub|k,\<sigma\><rsub|k>>|)>>>>>
        </eqnarray*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><text|
        is such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}><text|
        >\<exists\><around*|{|B<rsub|i,j>|}><rsub|j\<in\>I<rsub|i>><text|
        with >A<rsub|i>=<big|cup><rsub|j\<in\>I<rsub|i>>B<rsub|i,j>>. Then as
        <math|n\<in\>\<cal-S\>> we have that\ 

        <\equation>
          <label|eq 20.57.212><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>
        </equation>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|<around*|(|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|)><big|cap>A<rsub|n+1>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|family distributivity>]>>>|<cell|>>|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)><big|cap>A<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)><big|cap><around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>>B<rsub|n+1,j>|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|family distributivity>]>>>|<cell|>>|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|)>|)>|)>>|<cell|=>|<cell|>>>>
        </eqnarray*>

        So that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|)>|)>|)>>|<cell|>|<cell|<eq-number><label|eq
          20.58.212>>>>>
        </eqnarray*>

        If <math|x\<in\><big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|)>|)>|)>>
        then there exist a <math|\<sigma\>=<around*|(|\<sigma\><rsub|1>,\<ldots\>,\<sigma\><rsub|n>|)>>
        such that <math|x\<in\>><math|<around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|)>|)>>,
        hence there exist a <math|j\<in\>I<rsub|n+1>> such that

        <\equation*>
          x\<in\>B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>
        </equation*>

        Define\ 

        <\equation*>
          \<tau\>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|i><text|
          by >\<tau\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<sigma\><rsub|i><text|
          if >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|j<text| if
          >i=n+1>>>>>
        </equation*>

        then <math|x\<in\>B<rsub|n+1,\<tau\><rsub|n+1>><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,t<rsub|k>>|)>=<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k,\<tau\><rsub|k>>>.
        Hence\ 

        <\equation*>
          x\<in\><big|cup><rsub|\<tau\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k,\<tau\><rsub|k>>|)>
        </equation*>

        whic proves that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|)>|)>|)>>|<cell|\<subseteq\>>|<cell|>>|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k,\<sigma\><rsub|k>>|)>>|<cell|>|<cell|<eq-number><label|eq
          20.59.212>>>>>
        </eqnarray*>

        If <math|x\<in\><big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k,\<sigma\><rsub|k>>|)>>
        then there exist a <math|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|i>>
        such that <math|x\<in\><big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k,\<sigma\><rsub|k>>>.
        Define <math|\<eta\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i><rsub|>
        by \<eta\><rsub|l>=\<sigma\><rsub|l>> and
        <math|<rigid|j=\<sigma\><rsub|n+1>\<in\>I<rsub|n+1>>> then

        <\equation*>
          x\<in\>B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k\<comma\>\<eta\><rsub|k>>|)>\<subseteq\><big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k\<comma\>\<eta\><rsub|k>>|)>|)>
        </equation*>

        so that <math|x\<in\><big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k\<comma\>\<eta\><rsub|k>>|)>|)>>
        or as <math|\<eta\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i><rsub|>>
        we have that <math|x\<in\><big|cup><rsub|\<eta\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k\<comma\>\<eta\><rsub|k>>|)>|)>|)>>.
        Hence

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k,\<sigma\><rsub|k>>|)>>|<cell|\<subseteq\>>|<cell|>>|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|)>|)>|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        which combined with [eq: <reference|eq 20.59.212>] proves that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<around*|(|<big|cup><rsub|j\<in\>I<rsub|n+1>><around*|(|B<rsub|n+1,j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)>|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k,\<sigma\><rsub|k>>|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        Combining the above with [eq: <reference|eq 20.58.212>] proves that\ 

        <\equation*>
          <big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n+1|}>>B<rsub|k,\<sigma\><rsub|k>>|)>
        </equation*>

        Hence we have that <math|n+1\<in\>\<cal-S\>>
      </description>

      <item>Assume that <math|\<sigma\>,\<tau\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>
      with <math|\<sigma\>\<neq\>\<tau\>> then there exist
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|\<sigma\><rsub|i>\<neq\>\<tau\><rsub|i>>. As
      <math|<around*|{|B<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,I<rsub|i>|}>>>
      is pairwise disjoint we have that <math|B<rsub|i,\<sigma\><rsub|i>><big|cap>B<rsub|i,\<tau\><rsub|i>>=\<varnothing\>>.
      Hence\ 

      <\equation*>
        <around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|)><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<tau\><rsub|k>>|)>\<subseteq\>B<rsub|i,\<sigma\><rsub|i>><big|cap>B<rsub|i,\<tau\><rsub|i>>=\<varnothing\>
      </equation*>

      proving that <math|<around*|{|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|k,\<sigma\><rsub|k>>|}><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>>
      is pairwise disjoint.

      \ 
    </enumerate>
  </proof>

  <\lemma>
    <label|lemma 20.110.214>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>>
    be a family of sets such that <math|\<forall\>i\<in\>I> there exist a
    <math|<around*|{|B<rsub|i,j>|}><rsub|j\<in\>I<rsub|i>>> such that
    <math|A<rsub|i>=<big|cup><rsub|j\<in\>I<rsub|i>>B<rsub|i,j>> then\ 

    <\enumerate>
      <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|i\<in\>I><around*|(|<big|cup><rsub|j\<in\>I<rsub|i>>B<rsub|i,j>|)>=<big|cup><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>>

      <item>If additional <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is
      pairwise disjoint and <math|\<forall\>i\<in\>I>
      <math|<around*|{|B<rsub|i,j>|}><rsub|j\<in\>I<rsub|i>>> is pairwise
      disjoint then <math|<around*|{|B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>|}><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>>
      is pairwise disjoint so that we have\ 

      <\equation*>
        <big|sqcup><rsub|i\<in\>I>A<rsub|i>=<big|sqcup><rsub|i\<in\>I><around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>>B<rsub|i,j>|)>=<big|sqcup><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>
      </equation*>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then there
      exist a <math|i\<in\>I> such that <math|x\<in\>A<rsub|i>>, hence, as
      <math|A<rsub|i>=<big|cup><rsub|j\<in\>I<rsub|i>>B<rsub|i,j><rsub|>>
      there exist a <math|j\<in\>I<rsub|i>> such that
      <math|x\<in\>B<rsub|i,j>>. As <math|\<sigma\>=<around*|(|i,j|)>\<in\><around*|{|i|}>\<times\>I<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>
      it follows <math|x\<in\>B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>>,
      hence we have that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>>.
      Further as for <math|\<sigma\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I>
      we have that <math|B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>\<subseteq\><big|cup><rsub|j\<in\>I<rsub|\<sigma\><rsub|1>>>B<rsub|\<sigma\><rsub|1>,j>=A<rsub|\<sigma\><rsub|1>>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      it follows that <math|<big|cup><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>.
      So it follows that\ 

      <\equation*>
        <big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>
      </equation*>

      <item>Let <math|\<sigma\>,\<tau\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>
      with <math|\<sigma\>\<neq\>\<tau\>> then we have either:\ 

      <\description>
        <item*|<math|\<sigma\><rsub|1>=\<tau\><rsub|1>>>Then we must have
        that <math|\<sigma\><rsub|2>\<neq\>\<tau\><rsub|2>> so that
        <math|B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>><big|cap>B<rsub|\<tau\><rsub|1>,\<tau\><rsub|2>>=B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>><big|cap>B<rsub|\<sigma\><rsub|1>,\<tau\><rsub|2>>=\<varnothing\><rsub|>>
        [because <math|<around*|{|B<rsub|\<sigma\><rsub|1>,j>|}><rsub|j\<in\>I<rsub|\<sigma\><rsub|1>>>>
        is pairwise disjoint].

        <item*|<math|\<sigma\><rsub|1>\<neq\>\<tau\><rsub|1>>>Then
        <math|B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>><big|cap>B<rsub|\<tau\><rsub|1>,\<tau\><rsub|2>>\<subseteq\><around*|(|<big|cup><rsub|j\<in\>I<rsub|\<sigma\><rsub|1>>>B<rsub|\<sigma\><rsub|1>,j>|)><big|cap><around*|(|<big|cup><rsub|j\<in\>I<rsub|\<iota\>>>B<rsub|\<tau\><rsub|1>,j>|)>=A<rsub|\<sigma\><rsub|1>><big|cap>A<rsub|\<tau\><rsub|1>>=\<varnothing\>>
        [because <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is pairwise
        disjoint.
      </description>

      Hence <math|<around*|{|B<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>|}><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\>I><around*|{|i|}>\<times\>I<rsub|i>>>
      is pairwise disjoint.
    </enumerate>
  </proof>

  <\definition>
    <label|measure monotone><dueto|Monotone set function>Let <math|X> be a
    set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then a set
    function <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is <with|font-series|bold|monotone >if
    <math|\<forall\>A,B\<in\>\<cal-A\>> then
    <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>.
  </definition>

  <\definition>
    <label|measure additive set function><index|additive set
    function><dueto|Additive set function>Let <math|X> be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then a set function
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> is
    f<with|font-series|bold|inite additive on <math|\<cal-A\>> >if
    <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
    <math|n\<in\>\<bbb-N\>> pairwise disjoint with
    <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>
    we have

    <\equation*>
      \<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>
  </definition>

  <\definition>
    <label|measure sub-additive set function><index|sub-additive sub
    function><dueto|Sub-additive set function>Let <math|>X be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then a set function
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> is
    sub-additive if <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    with <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>
    we have\ 

    <\equation*>
      \<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>
  </definition>

  <\definition>
    <label|measure countable additive set function><index|countable additive
    set function><dueto|Countable additive set function>Let <math|X> be a
    set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then a set
    function <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is <with|font-series|bold|countable additve on <math|\<cal-A\>> >if
    <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>,
    <math|n\<in\>\<bbb-N\>> pairwise disjoint with
    <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>> we have

    <\equation*>
      \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>
  </definition>

  <\definition>
    <label|measure countable sub-additive set function><index|countable
    sub-additive sub function><dueto|Countable sub-additive set function>Let
    <math|>X be a set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    then a set function <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is countable sub-additive if <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    with <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>> we
    have\ 

    <\equation*>
      \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>
  </definition>

  \;

  Countable sets are either finite or denumerable,, <math|n\<in\>\<bbb-N\>>
  so you can ask yourselve why we talk about countable additivity instead of
  denumerable additivity [because <math|\<bbb-N\>> is denumerable]. However
  the next theorem shows that countable additivity implies finite additivity
  justifying the use of the term countable additivity.\ 

  <\theorem>
    <label|measure countable additivity implies finite additivity>Let
    <math|X> be a set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    such that <math|\<varnothing\>\<in\>\<cal-A\>> and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    countable additive set function on <math|\<cal-A\>> satisfying
    <math|\<mu\><around*|(|\<varnothing\>|)>=0> is finite additive on
    <math|\<cal-A\>>.
  </theorem>

  <\note>
    The requirement that <math|\<varnothing\>\<in\>\<cal-A\>> and
    <math|\<mu\><around*|(|\<varnothing\>|)>=0> is essential for the proof to
    work.
  </note>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    be a pairwise disjoint finite family such that
    <math|<rigid|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>>.
    Define

    <\equation*>
      <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
      by >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<varnothing\><text|
      if >i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>>>>>><below|\<in\>|\<varnothing\>,A<rsub|i>\<in\>\<cal-A\>>\<cal-A\>
    </equation*>

    Let <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> then there
    exist a <math|i\<in\>\<bbb-N\>> such that <math|x\<in\>B<rsub|i>>. Assume
    that <math|i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>> then
    <math|x\<in\>B<rsub|i>=\<varnothing\>> a contradiction so we must have
    that <math|i\<in\><around*|{|1,\<ldots\>,n|}>>. Hence
    <math|x\<in\>B<rsub|i>=A<rsub|i>> proving that
    <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>,
    so\ 

    <\equation>
      <label|eq 20.57.203><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>
    </equation>

    Further if <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    then there exist a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>A<rsub|i>=B<rsub|i>> so that
    <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> proving that
    <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>.
    Combining this with [eq: <reference|eq 20.57.203>] proves that\ 

    <\equation>
      <label|eq 20.58.203><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>
    </equation>

    Let <math|i,j\<in\>\<bbb-N\><text| with <math|i\<neq\>j>>> then we have
    the following possible cases:\ 

    <\description>
      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
      <math|B<rsub|i><big|cap>B<rsub|j>=A<rsub|i><big|cap>A<rsub|j>\<equallim\><rsub|i\<neq\>j>\<varnothing\>>

      <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>\<wedge\>j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
      <math|B<rsub|i><big|cap>B<rsub|j>=\<varnothing\><big|cap>A<rsub|j>=\<varnothing\>>

      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>j\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>>>Then
      <math|B<rsub|i><big|cap>B<rsub|j>=A<rsub|i><big|cap>\<varnothing\>=\<varnothing\>>

      <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>\<wedge\>j\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>>>Then
      <math|B<rsub|i><big|cap>B<rsub|j>=\<varnothing\><big|cap>\<varnothing\>=\<varnothing\>>
    </description>

    Hence we conclude that\ 

    <\equation>
      <label|eq 20.59.203><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
      is pairwise disjoint>
    </equation>

    As by [eq: <reference|eq 20.58.203>] <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>>
    we have by the above and the countable additivity of <math|\<mu\>> that\ 

    <\equation>
      <label|eq 20.60.203>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
    </equation>

    Next we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.58.203>]>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.60.203>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended series and index
      translation>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|\<infty\>>\<mu\><around*|(|\<varnothing\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><around*|(|\<varnothing\>|)>=0\<wedge\><text|[theorem:
      <reference|extended infinite sum of zero
      elements>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>

    Hence <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
    <math|n\<in\>\<bbb-N\>> pairwise disjoint we have
    <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
    proving that <math|\<mu\>> is finite additive on <math|\<cal-A\>>.\ 
  </proof>

  <\theorem>
    <label|measure countable sub-additivity implies sub-additivity>Let
    <math|X> be a set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    such that <math|\<varnothing\>\<in\>\<cal-A\>> and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    countable sub-additive function then <math|\<mu\>> is sub-additivity.
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    be a finite family such that <math|<rigid|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>>.
    Define

    <\equation*>
      <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
      by >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<varnothing\><text|
      if >i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>>>>>><below|\<in\>|\<varnothing\>,A<rsub|i>\<in\>\<cal-A\>>\<cal-A\>
    </equation*>

    Let <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> then there
    exist a <math|i\<in\>\<bbb-N\>> such that <math|x\<in\>B<rsub|i>>. Assume
    that <math|i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>> then
    <math|x\<in\>B<rsub|i>=\<varnothing\>> a contradiction so we must have
    that <math|i\<in\><around*|{|1,\<ldots\>,n|}>>. Hence
    <math|x\<in\>B<rsub|i>=A<rsub|i>> proving that
    <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>,
    so\ 

    <\equation>
      <label|eq 20.61.204><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>
    </equation>

    Further if <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    then there exist a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>A<rsub|i>=B<rsub|i>> so that
    <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> proving that
    <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>.
    Combining this with [eq: <reference|eq 20.61.204>] proves that\ 

    <\equation>
      <label|eq 20.62.204><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>
    </equation>

    As <math|><math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>>
    and <math|\<mu\>> is countable additive it follows that\ 

    <\equation>
      <label|eq 20.63.204>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
    </equation>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.62.204>]>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.63.204>]>><rsub|>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended series and index
      translation>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|\<infty\>>\<mu\><around*|(|\<varnothing\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><around*|(|\<varnothing\>|)>=0\<wedge\><text|[theorem:
      <reference|extended infinite sum of zero
      elements>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  <section|Rings, algebras and <math|\<sigma\>>-algebras>

  <\definition>
    <label|measure ring><index|ring of sets><dueto|Ring>Let <math|X> be a set
    then <math|\<cal-R\>\<subseteq\>\<cal-P\><around*|(|X|)>> [the set of
    subsets of <math|X>] is a <with|font-series|bold|ring> on <math|X> if
    <math|\<cal-R\>> satisfies:

    <\enumerate>
      <item><math|R\<neq\>\<varnothing\>>

      <item>If <math|A,B\<in\>\<cal-R\>> then
      <math|A<big|cup>B\<in\>\<cal-R\>> [in other words <math|\<cal-R\>> is
      <math|\<cup\>>-stable]

      <item>If <math|A>, <math|B\<in\>\<cal-R\>> then
      <math|A\\B\<in\>\<cal-R\>>
    </enumerate>
  </definition>

  Rather trivial examples of rings are the following:

  <\example>
    <label|measure {empty set} is a ring>Let <math|X> be a set then
    <math|<around*|{|\<varnothing\>|}>> is a ring on <math|X>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<varnothing\>\<in\><around*|{|\<varnothing\>|}>> we
      have that <math|<around*|{|\<varnothing\>|}>\<neq\>\<varnothing\>>

      <item>If <math|A,B\<in\><around*|{|\<varnothing\>|}>> then
      <math|A=B=\<varnothing\>> so that <math|A<big|cup>B=\<varnothing\>\<in\><around*|{|\<varnothing\>|}>>

      <item>If If <math|A,B\<in\><around*|{|\<varnothing\>|}>> then
      <math|A=B=\<varnothing\>> so that <math|A\\B=\<varnothing\>\\\<varnothing\>=\<varnothing\>\<in\><around*|{|\<varnothing\>|}>>
    </enumerate>
  </proof>

  <\example>
    <label|measure P(X) is a ring>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a ring on <math|X>
  </example>

  <\proof>
    As <math|X\<subseteq\>X> <math|X\<in\>\<cal-P\><around*|(|X|)>> so that

    <\equation*>
      \<cal-P\><around*|(|X|)>\<neq\>\<varnothing\>
    </equation*>

    If <math|A,B\<in\>\<cal-P\><around*|(|X|)>> then <math|A,B\<subseteq\>X>
    so that <math|A<big|cup>B\<subseteq\>X> and <math|A\\B\<subseteq\>X> so
    that\ 

    <\equation*>
      A<big|cup>B\<in\>\<cal-P\><around*|(|X|)><text| and
      >A\\B\<in\>\<cal-P\><around*|(|X|)>
    </equation*>
  </proof>

  <\theorem>
    <label|measure ring properties>Let <math|X> be a empty set and
    <math|\<cal-R\>> a ring on <math|X> then we have\ 

    <\enumerate>
      <item><math|\<varnothing\>\<in\>\<cal-R\>>

      <item>If <math|n\<in\>\<bbb-N\>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\>>
      a finite family of sets in <math|\<cal-R\>> then
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-R\>>

      <item>If <math|A,B\<in\>\<cal-R\>> then
      <math|A<big|cap>B\<in\>\<cal-R\>> [in other words <math|\<cal-R\>> is
      <math|\<cap\>>-stable]

      <item>If <math|n\<in\>\<bbb-N\>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\>>
      a finite family of sets in <math|\<cal-R\>> then
      <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-R\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<cal-R\>\<neq\>\<varnothing\>> there exist a
      <math|A\<in\>\<cal-R\>> so that <math|\<varnothing\>=A\\A\<in\>\<cal-R\>>

      <item>This follows from [theorem: <reference|measure union intersection
      stable>].

      <item>If <math|A,B\<in\>\<cal-R\>> then <math|A\\B\<in\>\<cal-R\>> so
      that <math|A\\<around*|(|A\\B|)>\<in\>\<cal-R\>> which as
      <math|A\\<around*|(|A\\B|)>\<equallim\><rsub|<text|[theorem:
      <reference|class inclusion and union and intersection>]>>A<big|cap>B>
      proves that <math|A<big|cap>B\<in\>\<cal-R\>>.

      <item>This follows from [theorem: <reference|measure union intersection
      stable>].
    </enumerate>
  </proof>

  A algebra on <math|X> is a ring such that <math|X> is a element of the
  ring.

  <\definition>
    <label|measure algebra><index|algebra of sets><dueto|Algebra>Let <math|X>
    be a set then <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a
    <with|font-series|bold|algebra> on <math|X> if <math|\<cal-A\>> satisfies

    <\enumerate>
      <item><math|\<cal-A\>> is a ring on <math|X>

      <item><math|X\<in\>\<cal-R\>>
    </enumerate>
  </definition>

  <\example>
    <label|measure {emptyset,set} is a measure>Let
    <math|X\<neq\>\<varnothing\>> be a non empty set then
    <math|<around*|{|\<varnothing\>|}>> is a ring [see example:
    <reference|measure {empty set} is a ring>] but not a algebra because
    <math|X\<nin\><around*|{|\<varnothing\>|}>>, however
    <math|<around*|{|X,\<varnothing\>|}>> is a algebra on <math|X>.\ 
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|X,\<varnothing\>\<in\><around*|{|X,\<varnothing\>|}>>
      <math|<around*|{|X,\<varnothing\>|}>\<neq\>\<varnothing\>>

      <item>If <math|A,B\<in\><around*|{|X,\<varnothing\>|}>> then we have
      either:\ 

      <\description>
        <item*|<math|A=X\<wedge\>B=X>>Then
        <math|A<big|cup>B=X\<in\><around*|{|X,\<varnothing\>|}>> and
        <math|A\\B=X\\X=\<varnothing\>\<in\><around*|{|X,\<varnothing\>|}>>

        <item*|<math|A=\<varnothing\>\<wedge\>B=X>>Then
        <math|A<big|cup>B=X\<in\><around*|{|X,\<varnothing\>|}>> and
        <math|A\\B=\<varnothing\>\\X=\<varnothing\>\<in\><around*|{|X,\<varnothing\>|}>>

        <item*|<math|A=X\<wedge\>B=\<varnothing\>>>Then
        <math|A<big|cup>B=X\<in\><around*|{|X,\<varnothing\>|}>> and
        <math|A\\B=X\\\<varnothing\>=X\<in\><around*|{|X,\<varnothing\>|}>>

        <item*|<math|A=\<varnothing\>\<wedge\>B=\<varnothing\>>>Then
        <math|A<big|cup>B=\<varnothing\>\<in\><around*|{|X,\<varnothing\>|}>>
        and <math|A\\B=\<varnothing\>\\\<varnothing\>=\<varnothing\>\<in\><around*|{|X,\<varnothing\>|}>>
      </description>
    </enumerate>
  </proof>

  <\example>
    <label|measure P(X) is a algebra>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a ring on <math|X>
  </example>

  <\proof>
    Using [example: <reference|measure P(X) is a ring>] it follows that
    <math|\<cal-A\>> is a ring. Further as <math|X\<subset\>X> it follows
    that <math|X\<in\>\<cal-P\><around*|(|X|)>>.
  </proof>

  The following summarizes some trivial properties of a algebra.

  <\theorem>
    <label|measure algebra properties>Let <math|X> be a set and
    <math|\<cal-A\>> a algebra on <math|X> then we have:\ 

    <\enumerate>
      <item><math|\<varnothing\>\<in\>\<cal-A\>>

      <item><math|X\<in\>\<cal-A\>>

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have that
      <math|A<big|cup>B\<in\>\<cal-A\>>, <math|A<big|cap>B\<in\>\<cal-A\>>
      and <math|A\\B\<in\>\<cal-A\>>

      <item>If <math|n\<in\>\<bbb-N\>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      a finite family of sets in <math|\<cal-A\>> then
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>

      <item>If <math|n\<in\>\<bbb-N\>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      a finite family of sets in <math|\<cal-A\>> then
      <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have that
      <math|X\\A\<in\>\<cal-A\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<cal-A\>> is a ring this follows from [theorem:
      <reference|measure ring properties>].

      <item>This is stated in the definition of a algebra.

      <item>As <math|\<cal-A\>> is a ring this follows from [theorem:
      <reference|measure ring properties>] and the definition of a ring.

      <item>As <math|\<cal-A\>> is a ring this follows from [theorem:
      <reference|measure ring properties>].

      <item>As <math|\<cal-A\>> is a ring this follows from [theorem:
      <reference|measure ring properties>].

      <item>As <math|X\<in\>\<cal-A\>> and <math|A\<in\>\<cal-A\>> we have by
      (3) that <math|X\\A\<in\>\<cal-A\>>.
    </enumerate>
  </proof>

  In most books we have the following equivalent definitons of a algebra

  <\theorem>
    <label|measure algebra equavalent definition>Let <math|X> be a set and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then the following
    are equivalent:

    <\enumerate>
      <item><math|\<cal-A\>> is a algebra on <math|X>

      <item><math|\<cal-A\>> satisifes:\ 

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have
        <math|A<big|cap>B\<in\>\<cal-A\>> [in other words <math|\<cal-A\>> is
        <math|\<cap\>>-stable]
      </enumerate>

      <item><math|\<cal-A\>> satisfies:\ 

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have
        <math|A<big|cup>B\<in\>\<cal-A\>> [in other words <math|\<cal-A\>> is
        <math|\<cup\>>-stable]
      </enumerate>

      <item><math|\<cal-A\>> satisfies:\ 

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have
        <math|A\\B\<in\>\<cal-A\>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>If <math|\<cal-A\>> is a algebra then by
      definition <math|\<cal-A\>> is a ring and <math|X\<in\>\<cal-A\>> so
      that

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>>\ 

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have, as
        <math|X\<in\>\<cal-A\>>, that <math|X\\A\<in\>\<cal-A\>> [by the
        definition of a ring].

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have by the definition
        of a ring that <math|A\\B\<in\>\<cal-A\>>.
      </enumerate>

      <item*|<math|2\<Rightarrow\>3>>We have:\ 

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>> by the hypothesis.

        <item><math|X\\A> by the hypothesis.

        <item>Let <math|A,B\<in\>\<cal-A\>> then we have that
        <math|X\\A\<in\>\<cal-A\>> and <math|X\\B\<in\>\<cal-A\>> so that
        <math|<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>\<in\>\<cal-A\>>,
        hence

        <\equation*>
          X\\<around*|(|<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>|)>\<in\>\<cal-A\>
        </equation*>

        Further we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|X\\<around*|(|<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|class set difference and union ,
          intersection>]>>>|<cell|<around*|(|X\\<around*|(|X\\A|)>|)><big|cup><around*|(|X\\<around*|(|X\\B|)>|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|A,B\<subseteq\>X\<wedge\><text|[theorem:
          <reference|class inclusion and union and
          intersection>]>>>|<cell|A<big|cup>B>>>>
        </eqnarray*>

        so that <math|A<big|cup>B\<in\>\<cal-A\>>.
      </enumerate>

      <item*|<math|3\<Rightarrow\>4>>We have

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>> by the hypothesis

        <item>Let <math|A,B\<in\>\<cal-A\>> then <math|X\\A\<in\>\<cal-A\>>
        so that <math|<around*|(|X\\A|)><big|cup>B\<in\>\<cal-A\>> hence\ 

        <\equation*>
          X\\<around*|(|<around*|(|X\\A|)><big|cup>B|)>\<in\>\<cal-A\>
        </equation*>

        Further we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|X\\<around*|(|<around*|(|X\\A|)><big|cup>B|)>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|class set difference and union ,
          intersection>]>>>|<cell|<around*|(|X\\<around*|(|X\\A|)>|)><big|cap><around*|(|X\\B|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|A\<subseteq\>X\<wedge\><text|[theorem:
          <reference|class inclusion and union and
          intersection>]>>>|<cell|A<big|cap><around*|(|X\\B|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|A,B\<subseteq\>X\<wedge\><text|[theorem:
          <reference|class inclusion and union and
          intersection>]>>>|<cell|A\\B>>>>
        </eqnarray*>

        so that <math|A\\B\<in\>\<cal-A\>>
      </enumerate>

      <item*|<math|4\<Rightarrow\>1>>Then we have\ 

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>> by the hypothesis.

        <item>If <math|A,B\<in\>\<cal-A\>> then by the hypothesis
        <math|A\\B\<in\>\<cal-A\>> so that
        <math|A\\<around*|(|A\\B|)>\<in\>\<cal-A\>>, as by [theorem:
        <reference|class inclusion and union and intersection>]
        <math|A\\<around*|(|A\\B|)>=A<big|cap>B> it follows that
        <math|A<big|cap>B\<in\>\<cal-A\>> hence we have proved that\ 

        <\equation*>
          \<forall\>A,B\<in\>\<cal-A\><text| we have
          >A<big|cap>B\<in\>\<cal-A\>
        </equation*>

        Further if <math|A,B\<in\>\<cal-A\>> then as <math|X\<in\>\<cal-A\>>
        we have that <math|<around*|(|X\\A|)>,<around*|(|X\\B|)>\<in\>\<cal-A\>>
        so that <rigid|<math|<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>\<in\>\<cal-A\>>>,
        hence we have that\ 

        <\equation*>
          X\\<around*|(|<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>|)>\<in\>\<cal-A\>
        </equation*>

        Now\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|X\\<around*|(|<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|class set difference and union ,
          intersection>]>>>|<cell|<around*|(|X\\<around*|(|X\\A|)>|)><big|cup><around*|(|X\\<around*|(|X\\B|)>|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|A,B\<subseteq\>X\<wedge\><text|[theorem:
          <reference|class inclusion and union and
          intersection>]>>>|<cell|A<big|cup>B>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          \<forall\>A,B\<in\>\<cal-A\><text| we have
          >A<big|cup>B\<in\>\<cal-A\>
        </equation*>
      </enumerate>

      So as <math|X\<in\>\<cal-A\>\<Rightarrow\>\<cal-A\>\<neq\>\<varnothing\>>
      and <math|\<forall\>A,B\<in\>\<cal-A\>> we have
      <math|A<big|cup>B\<in\>\<cal-A\>> and <math|A\\B\<in\>\<cal-A\>> it
      follows that <math|\<cal-A\>> is a algebra.
    </description>
  </proof>

  We also want to deal with countable unions of sets and for this we define a
  sigma algebra.

  <\definition>
    <label|measure sigma algebra><index|sigma
    algebra><index|<math|\<sigma\>>-algebra>Let <math|X> be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then
    <math|\<cal-A\>> is a sigma algebra [noted as <math|\<sigma\>>-algebra]
    on <math|X> if\ 

    <\enumerate>
      <item><math|X\<in\>\<cal-A\>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|X\\A\<in\>\<cal-A\>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      is a countable family of sets in <math|\<cal-A\>> then
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>

    <\note>
      If <math|A,B\<in\>\<cal-A\>> then if we define
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      by <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A<text| if
      >i=1>>|<row|<cell|B<text| if >i\<in\><around*|{|,\<ldots\>,\<infty\>|}>>>>>>>
      then\ 

      <\equation*>
        A<big|cup>B=A<rsub|1><big|cup><around*|(|<big|cup><rsub|i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>A<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>
      </equation*>

      so that every <math|\<sigma\>>-algebra on <math|X> is a algebra. So we
      have\ 

      <\equation*>
        \<sigma\><text|-algebra >\<Rightarrowlim\><rsub|is a ><text| algebra
        >\<Rightarrowlim\><rsub|is a><text| ring>
      </equation*>
    </note>
  </definition>

  <\definition>
    <label|measure measurable space><index|measurable
    space><index|<math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>><dueto|Measurable
    Space>Let <math|X> be a set and <math|\<cal-A\>> a
    <math|\<sigma\>>-algebra on <math|X> then the couple
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> is called a
    <with|font-series|bold|measurable space>.
  </definition>

  We have the following equivalent definitions of a <math|\<sigma\>>-algebra

  <\theorem>
    <label|measure sigma algebra equivalences>Let <math|X> be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then we have the
    following equivalences:\ 

    <\enumerate>
      <item><math|\<cal-A\>> is a <math|\<sigma\>>-algebra on <math|X>\ 

      <item><math|\<cal-A\>> is a algebra and
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      <with|font-series|bold|pairwise disjoint >we have
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>

      <item><math|\<cal-A\>> is a algebra and
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
      we have ><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>

      <item><math|\<cal-A\>> satisfies:\ 

      <\enumerate>
        <item><math|\<varnothing\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies:\ 

      <\enumerate>
        <item><math|\<varnothing\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies:\ 

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As <math|\<cal-A\>> is a sigma-algebra
      it follows that

      <\equation*>
        \<cal-A\> <text|is a algebra>
      </equation*>

      Further if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      is pairwise disjoint then by the definition of a
      <math|\<sigma\>>-algebra it follows that

      <\equation*>
        <big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<equallim\><rsub|def><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>
      </equation*>

      <item*|<math|2\<Rightarrow\>3>>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      and define

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text| by
        >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1><text| if
        >i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j><text|
        if >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>
      </equation*>

      As <math|\<cal-A\>> is a algbra we have by [theorem: <reference|measure
      algebra properties>] it follows that <math|\<forall\>i\<in\>\<bbb-N\>>
      we have <math|B<rsub|i>\<in\>\<cal-A\>> so that\ 

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>
      </equation*>

      Further by [lemma: <reference|lemma 20.161.201>]
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is pairwise
      disjoint so that by (2)\ 

      <\equation*>
        <big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>
      </equation*>

      As further <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 20.161.201>]>><big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
      it follows that\ 

      <\equation*>
        <big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>
      </equation*>

      <item*|<math|3\<Rightarrow\>4>>As <math|\<cal-A\>> is a algebra we have
      by [theorem: <reference|measure algebra properties>] that

      <\equation*>
        \<varnothing\>\<in\>\<cal-A\>
      </equation*>

      <\equation*>
        \<forall\>A\<in\>\<cal-A\><text| we have >X\\A\<in\>\<cal-A\>
      </equation*>

      Finally by the definition of a <math|\<sigma\>>-algebra we have\ 

      <\equation*>
        \<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
        we have ><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>
      </equation*>

      <item*|<math|4\<Rightarrow\>5>>We have by (3) that\ 

      <\equation*>
        \<varnothing\>\<in\>\<cal-A\><text| and
        >\<forall\>A\<in\>\<cal-A\><text| we have >X\\A\<in\>\<cal-A\>
      </equation*>

      Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>.
      If <math|i\<in\>\<bbb-N\>> then as <math|A<rsub|i>\<in\>\<cal-A\>> it
      follows that <math|X\\A<rsub|i>\<in\>\<cal-A\>> we have by (3) that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\>>
      so that

      <\equation*>
        X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>|)>\<in\>\<cal-A\>
      </equation*>

      As\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family de Morgan>]>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|X\\<around*|(|X\\A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|A<rsub|i>\<subseteq\>X\<wedge\><text|[theorem:
        <reference|class inclusion and union and
        intersection>]>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>>>>
      </eqnarray*>

      it follows that\ 

      <\equation*>
        \<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
        we have ><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>
      </equation*>

      \ <math|>

      <item*|<math|5\<Rightarrow\>6>>By (4) we have that
      <math|\<varnothing\>\<in\>\<cal-A\>> so that by (4) again we have\ 

      <\equation*>
        X=X\\\<varnothing\>\<in\>\<cal-A\>
      </equation*>

      further by (4) we have\ 

      <\equation*>
        \<forall\>A\<in\>\<cal-A\><text| we have >X\\A\<in\>\<cal-A\><text|
        and >\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
        we have ><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>
      </equation*>

      <item*|<math|6\<Rightarrow\>1>>By (1) we have\ 

      <\equation*>
        X\<in\>\<cal-A\><text| and >\<forall\>A\<in\>\<cal-A\><text| we have
        >X\\A\<in\>\<cal-A\>
      </equation*>

      Further if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<in\>\<cal-A\>> so that
      <math|X\\A<rsub|i>\<in\>\<cal-A\>>. Hence we have\ 

      <\equation*>
        X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>|)>\<in\>\<cal-A\>
      </equation*>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family de Morgan>]>>>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|X\\<around*|(|X\\A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|A<rsub|i>\<subseteq\>X\<wedge\><text|[theorem:
        <reference|class inclusion and union and
        intersection>]>>>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        \<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
        we have ><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>
      </equation*>

      This proves that <math|\<cal-A\>> is a <math|\<sigma\>>-algebra.
    </description>

    \;
  </proof>

  <\example>
    Let <math|X\<neq\>\<varnothing\>> be a set then
    <math|<around*|{|\<varnothing\>|}>> is not a <math|\<sigma\>>-algebra on
    <math|X> [see example: <reference|measure {empty set} is a ring>] but
    <math|<around*|{|\<varnothing\>,X|}>> is a <math|\<sigma\>>-algebra on
    <math|X>.
  </example>

  <\proof>
    Using [example: <reference|measure {empty set} is a ring>] it follows
    that <math|<around*|{|\<varnothing\>,X|}>> is a algebra on <math|X> so
    that\ 

    <\equation*>
      X\<in\>\<cal-A\><text| and >\<forall\>A\<in\>\<cal-A\><text| we have
      >X\\A\<in\>\<cal-A\>
    </equation*>

    \ Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><around*|{|\<varnothing\>,X|}>>
    then we have two cases to consider:\ 

    <\description>
      <item*|<math|\<forall\>i\<in\>\<bbb-N\><text| we have
      <math|A<rsub|i>\<neq\>\<varnothing\>>>>>Then
      <math|\<forall\>i\<in\>\<bbb-N\>> <math|A<rsub|i>=X> so that
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=X\<in\>\<cal-A\>>

      <item*|<math|\<exists\>i\<in\>\<bbb-N\><text| with
      >A<rsub|i>=\<varnothing\>>>Then <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=\<varnothing\>\<in\>\<cal-A\>>
    </description>

    so that <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>.
    Applying then [theorem: <reference|measure sigma algebra equivalences>]
    proves that <math|<around*|{|\<varnothing\>,X|}>> is a
    <math|\<sigma\>>-algebra on <math|X>.
  </proof>

  <\example>
    <label|measure P(X) is a sigma algebra>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a <math|\<sigma\>>-algebra on <math|X>
  </example>

  <\proof>
    Using [example: <reference|measure P(X) is a algebra>]
    <math|\<cal-P\><around*|(|X|)>> is a algebra on <math|X>. Further for
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    we have <math|\<forall\>i\<in\>\<bbb-N\>> that
    <math|A<rsub|i>\<subseteq\>X> so that
    <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>X> proving
    that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>.
    Applying then [theorem: <reference|measure sigma algebra equivalences>]
    proves that <math|\<cal-P\><around*|(|X|)>> is a <math|\<sigma\>>-algebra
    on <math|X>.
  </proof>

  <\theorem>
    <label|measure countable union is in sigma algebra>Let <math|X> be a set,
    <math|\<cal-A\>> a <math|\<sigma\>>-algebra on <math|X>, <math|I> a
    countable set, <math|<around*|{|A<rsub|>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
    a countable family of element of <math|\<cal-A\>> then we have\ 

    <\enumerate>
      <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>

      <item><math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|I> we have either\ 

      <\description>
        <item*|<math|I> is finite>Then there exist a bijection
        <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I> where
        <math|n\<in\>\<bbb-N\><rsub|0>>. Let
        <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then there exist a
        <math|i\<in\>I> such that <math|x\<in\>A<rsub|i>>. As <math|\<beta\>>
        is a bijection hence surjective there exist a
        <math|j\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|i=\<beta\><around*|(|j|)>> so that
        <math|x\<in\>A<rsub|\<beta\><around*|(|j|)>>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|j|)>>>.
        Hence we have that\ 

        <\equation>
          <label|eq 20.52.200.1><big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|i|)>>
        </equation>

        Likewise if <math|x\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|i|)>>>
        then there exist a <math|j\<in\><around*|{|1,\<ldots\>,n|}>> such
        that <math|x\<in\>A<rsub|\<beta\><around*|(|j|)>>> which as
        <math|\<beta\><around*|(|j|)>\<in\>I> proves that
        <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>, hence
        <math|><math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|i|)>>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>.
        Combining this with [eq: <reference|eq 20.52.200.1>] proves that\ 

        <\equation*>
          <big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|i|)>>
        </equation*>

        As <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|A<rsub|\<beta\><around*|(|i|)>>\<in\>\<cal-A\>> [because
        <math|\<beta\><around*|(|i|)>\<in\>I>] it follows, as a
        <math|\<sigma\>>-algebra is a ring, from [theorem: <reference|measure
        ring properties>] that <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|i|)>>\<in\>\<cal-A\>>.
        Hence\ 

        <\equation*>
          <big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>
        </equation*>

        <item*|<math|I> is denumerable>Then there exist a bijection
        <math|\<beta\>:\<bbb-N\>\<rightarrow\>I>. Let
        <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then there exist a
        <math|i\<in\>I> such that <math|x\<in\>A<rsub|i>>. As <math|\<beta\>>
        is a bijection hence surjective there exist a <math|j\<in\>\<bbb-N\>>
        such that <math|i=\<beta\><around*|(|j|)>> so that
        <math|x\<in\>A<rsub|\<beta\><around*|(|j|)>>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|\<beta\><around*|(|j|)>>>.
        Hence we have that\ 

        <\equation>
          <label|eq 20.53.200.1><big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|\<beta\><around*|(|i|)>>
        </equation>

        Likewise if <math|x\<in\><big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|\<beta\><around*|(|i|)>>>
        then there exist a <math|j\<in\>\<bbb-N\>> such that
        <math|x\<in\>A<rsub|\<beta\><around*|(|j|)>>> which as
        <math|\<beta\><around*|(|j|)>\<in\>I> proves that
        <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>, hence
        <math|><math|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|\<beta\><around*|(|i|)>>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>.
        Combining this with [eq: <reference|eq 20.53.200.1>] proves that\ 

        <\equation*>
          <big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|\<beta\><around*|(|i|)>>
        </equation*>

        As <math|\<forall\>j\<in\>\<bbb-N\>>
        <math|A<rsub|\<beta\><around*|(|i|)>>\<in\>\<cal-A\>> [because
        <math|\<beta\><around*|(|i|)>\<in\>I>] it follows, as a
        <math|\<sigma\>>-algebra is a ring, from [theorem: <reference|measure
        ring properties>] that <math|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|\<beta\><around*|(|i|)>>\<in\>\<cal-A\>>.
        Hence\ 

        <\equation*>
          <big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>
        </equation*>
      </description>

      <item>Let <math|i\<in\>I> then <math|A<rsub|i>\<in\>\<cal-A\>> hence
      <math|X\\A<rsub|i>\<in\>\<cal-A\>> so that by (1)
      \ <math|<big|cup><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\>>
      from which it follows that\ 

      <\equation*>
        X\\<around*|(|<big|cup><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>|)>\<in\>\<cal-A\>
      </equation*>

      As we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|X\\<around*|(|<big|cup><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family de Morgan>]>>>|<cell|<big|cap><rsub|i\<in\>I><around*|(|X\\<around*|(|X\\A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|A<rsub|i>\<subseteq\>X\<wedge\><text|[theorem:
        <reference|class inclusion and union and
        intersection>]>>>|<cell|<big|cap><rsub|i\<in\>I>A<rsub|i>>>>>
      </eqnarray*>

      it follows that\ 

      <\equation*>
        <big|cap><rsub|i\<in\>I>A<rsub|n>\<in\>\<cal-A\>
      </equation*>
    </enumerate>
  </proof>

  If we have already proved that a subset of <math|\<cal-P\><around*|(|X|)>>
  is a algebra on <math|X> then the following theorem will be usefull to
  prove that this subset is actually a <math|\<sigma\>>-algebra.

  <\theorem>
    <label|measure condition for a algebra to be a sigma algebra>Let <math|X>
    be a set and let <math|\<cal-A\>> be a algebra on <math|X> then we have:\ 

    <\enumerate>
      <item>If <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> we have
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>> then
      <math|\<cal-A\>> is a <math|\<sigma\>>-algebra on <math|X>.

      <item>If <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> we have
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>> then
      <math|\<cal-A\>> is a <math|\<sigma\>>-algebra on <math|X>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>.
      Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>>
      then as <math|\<cal-A\>> is a algebra we have by [theorem:
      <reference|measure algebra properties>] that
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>.
      Further for <math|i\<in\>\<bbb-N\>> we have

      <\equation*>
        B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>B<rsub|j>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i+1|}>>B<rsub|j>=B<rsub|i+1>
      </equation*>

      hence by the hypothese we have\ 

      <\equation>
        <label|eq 20.54.200.1><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>
      </equation>

      As <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>=B<rsub|i>>
      it follows that

      <\equation>
        <label|eq 20.55.200.1><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
      </equation>

      Further if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> then
      there exist a <math|i\<in\>\<bbb-N\>> such that
      <math|x\<in\>B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>>,
      hence there exist a <math|j\<in\><around*|{|1,\<ldots\>,i|}>> such that
      <math|x\<in\>A<rsub|j>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>.
      This proves that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
      which combined with [eq: <reference|eq 20.55.200.1>] gives us
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>,
      hence using [eq: <reference|eq 20.54.200.1>] we have that\ 

      <\equation*>
        <big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>
      </equation*>

      Applying then [theorem: <reference|measure sigma algebra equivalences>]
      it follows that <math|\<cal-A\>> is a <math|\<sigma\>>-algebra.

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      be such that <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>>. Let <math|i\<in\>\<bbb-N\>>
      then as <math|\<cal-A\>> is a algebra
      <math|X\\A<rsub|i>\<in\>\<cal-A\>>, further if
      <math|x\<in\>X\\A<rsub|i+1>> then <math|x\<in\>X> and
      <math|x\<nin\>A<rsub|i>> [as <math|A<rsub|i>\<subseteq\>A<rsub|i+1>>]
      so that <math|x\<in\>X\\A<rsub|i>>. Hence
      <math|<around*|{|X\\A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      and <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|X\\A<rsub|i+1>\<subseteq\>X\\A<rsub|i>> so by the hypothesis we
      have that <math|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\>>.
      As <math|\<cal-A\>> is a algebra we have then that\ 

      <\equation*>
        X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>|)>\<in\>\<cal-A\>
      </equation*>

      Further <math|><math|X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|family de Morgan>]>><big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|X\\<around*|(|X\\A<rsub|i>|)>|)>\<equallim\><rsub|A<rsub|i>\<subseteq\>X\<wedge\><text|[theorem:
      <reference|class inclusion and union and
      intersection>]>><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> so that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>. Hence
      we have proved that <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<cal-A\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>>
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>> ao that
      by (1) <math|\<cal-A\>> is a <math|\<sigma\>>-algebra.
    </enumerate>
  </proof>

  We show now how we can generate a <math|\<sigma\>> algebra based on a
  arbitrary subset of <math|\<cal-P\><around*|(|X|)>>. First we prove that
  for a non empty collection of <math|\<sigma\>>-algebra's the intersection
  of this collection is again a <math|\<sigma\>>-algebra.\ 

  <\lemma>
    <label|measure sigma algebra intersection>Let <math|X> be a set and
    <math|\<frak-A\>> a non empty set of <math|\<sigma\>>-algebra's on
    <math|X> then <math|<big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>>
    is a <math|\<sigma\>>-algebra on <math|X>.
  </lemma>

  <\proof>
    As <math|\<frak-A\>\<neq\>\<varnothing\>> there exist a
    <math|\<cal-S\>\<in\>\<frak-A\>> with
    <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>> so that we have by
    [theorem: <reference|class general intersection>] that
    <math|<big|cap><rsub|<math-tt|>\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>\<subseteq\>\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    proving that\ 

    <\equation*>
      <big|cap><rsub|<math-tt|>\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>
    </equation*>

    \ <math|>As <math|\<forall\>\<cal-A\>\<in\>\<frak-A\>> <math|\<cal-A\>>
    is a <math|\<sigma\>>-algebra on <math|X> we have by [theorem:
    <reference|measure sigma algebra equivalences>] that
    <math|X\<in\>\<cal-A\>> hence\ 

    <\equation*>
      X\<in\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>
    </equation*>

    Let <math|A\<in\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>> then
    for <math|\<cal-A\>\<in\>\<frak-A\>> we have <math|A\<in\>\<cal-A\>> so
    that <math|X\\A\<in\>\<cal-A\>> which as <math|\<cal-A\>\<in\>\<frak-A\>>
    was chosen arbitrary proves that <math|X\\A\<in\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>>.
    Hence as <math|A\<in\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>>
    was chosen arbitrary we have that\ 

    <\equation*>
      \<forall\>A\<in\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\><text|
      we have >X\\A\<in\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>
    </equation*>

    If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>>
    then for <math|\<cal-A\>\<in\>\<frak-A\>> we have
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    so that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
    which as <math|\<cal-A\>\<in\>\<frak-A\>> was chosen arbitrary proves
    that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|>\<in\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>>.
    Hence as <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>>
    was chosen arbitrary we have that\ 

    <\equation*>
      \<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\><text|
      we have ><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|>\<in\><big|cap><rsub|\<cal-A\>\<in\>\<frak-A\>>\<cal-A\>
    </equation*>

    \ 
  </proof>

  We use now the above theorem to show how we can generate a
  <math|\<sigma\>>-algebra out of a non empty subset of
  <math|\<cal-P\><around*|(|X|)>>.

  <\theorem>
    <label|measure generated sigma algebra>Let <math|X> be a set
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then there exist a
    <with|font-series|bold|unique> algebra
    <math|\<sigma\><around*|[|\<cal-A\>|]>> on <math|X> such that:\ 

    <\enumerate>
      <item><math|\<cal-A\>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>>

      <item>If <math|\<cal-B\>> is another <math|\<sigma\>>-algebra with
      <math|\<cal-A\>\<subseteq\>\<cal-B\>> then
      <math|\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-B\>>
    </enumerate>

    This unique smallest <math|\<sigma\>>-algebra that contains
    <math|\<cal-A\>> is called the <math|\<sigma\>>-algebra generated by
    <math|\<cal-A\>>
  </theorem>

  <\proof>
    Define <math|\<frak-A\>=<around*|{|\<cal-T\>\|\<cal-T\><text| is a
    >\<sigma\><text|-algebra on >X<text| with
    >\<cal-A\>\<subseteq\>\<cal-T\>|}>>. As
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> and
    <math|\<cal-P\><around*|(|X|)>> and <math|\<cal-P\><around*|(|X|)>> is a
    <math|\<sigma\>>-algebra on <math|X> [see example: <reference|measure
    P(X) is a sigma algebra>] it follows that
    <math|\<cal-P\><around*|(|X|)>\<in\>\<frak-A\>> hence <math|\<frak-A\>>
    is not empty. Using then previous lemma [lemma: <reference|measure sigma
    algebra intersection>] it follows that

    <\equation*>
      <big|cap><rsub|\<cal-T\>\<in\>\<frak-A\>>\<cal-T\><text| is a
      >\<sigma\><text|-algebra on >X
    </equation*>

    As <math|\<forall\>\<cal-T\>\<in\>\<frak-A\>>
    <math|\<cal-A\>\<subseteq\>\<cal-T\>> it follows from [theorem:
    <reference|class general intersection>] that

    <\equation*>
      \<cal-A\>\<subseteq\><big|cap><rsub|\<cal-T\>\<in\>\<frak-A\>>\<cal-T\>
    </equation*>

    Finally assume that <math|\<cal-B\>> is another <math|\<sigma\>>-algebra
    on <math|X> such that <math|\<cal-A\>\<subseteq\>\<cal-B\>> then
    <math|\<cal-B\>\<in\>\<frak-A\>> so that by [theorem: <reference|class
    general intersection>]

    <\equation*>
      <big|cap><rsub|\<cal-T\>\<in\>\<frak-A\>>\<cal-T\>\<subseteq\>\<cal-B\>
    </equation*>

    Taking <math|\<sigma\><around*|[|\<cal-A\>|]>=<big|cap><rsub|\<cal-T\>\<in\>\<frak-A\>>\<cal-T\>>
    then proves the theorem.
  </proof>

  A special case of a <math|\<sigma\>>-algebra in the context of topological
  spaces is the Borel algebra.

  <\definition>
    <label|measure Borel algebra><index|Borel
    algebra><index|<math|\<cal-B\><around*|[|X,\<cal-T\>|]>>>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then the Borel algebra on <math|X> noted as
    <math|\<cal-B\><around*|[|X,\<cal-T\>|]>> is defined to be
    <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-T\>|]>>.
    In other words the Borel algebra on a topological space is the
    <math|\<sigma\>>algebra generated by <math|\<cal-T\>>.
  </definition>

  <\theorem>
    <label|measure Borel algebra and closure>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|<around*|{|C\<subseteq\>X\|C<text|
    is closed>|}>|]>>.
  </theorem>

  <\proof>
    If <math|C\<in\><around*|{|C\<subseteq\>X\|C<text| is closed>|}>> then
    <math|C> is closed, hence there exist a open <math|U\<in\>\<cal-T\>> such
    that <math|C=X\<setminus\>U>. As <math|U\<in\>\<cal-T\>\<in\>\<sigma\><around*|[|\<cal-T\>|]>>
    it follows that <math|C=X\\U\<in\>\<sigma\><around*|[|\<cal-T\>|]>>. So
    <math|<around*|{|C\<subseteq\>X\|C<text| is
    closed>|}>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>> a
    <math|\<sigma\>>-algebra, hence using [theorem: <reference|measure
    generated sigma algebra>[ we have\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|C\<subseteq\>X\|C<text| is
      closed>|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>
    </equation*>

    If <math|U\<in\>\<cal-T\>> then <math|X\\U> is closed hence
    <math|X\\U\<in\><around*|{|C\<subseteq\>X\|C<text| is
    closed>|}>\<in\>\<sigma\><around*|[|<around*|{|C\<subseteq\>X\|C<text| is
    closed>|}>|]>>, hence <math|U=X\\<around*|(|X\\U|)>\<in\>\<sigma\><around*|[|<around*|{|C\<subseteq\>X\|C<text|
    is closed>|}>|]>> proving that <math|\<cal-T\>\<subseteq\>\<sigma\><around*|[|<around*|{|C\<subseteq\>X\|C<text|
    is closed>|}>|]>>. So using [theorem: <reference|measure generated sigma
    algebra>[ we have\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-T\>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|C\<subseteq\>X\|C<text|
      is closed>|}>|]>
    </equation*>

    This proves that\ 

    <\equation*>
      \<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-T\>|]>=\<sigma\><around*|[|<around*|{|C\<subseteq\>X\|C<text|
      is closed>|}>|]>
    </equation*>
  </proof>

  <\theorem>
    <label|measure sub measure space>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space and <math|B\<in\>\<cal-A\>> then
    <math|<around*|\<langle\>|B,\<cal-A\><rsub|\|B>|\<rangle\>>> is a
    measurable space where <math|\<cal-A\><rsub|\|B>=<around*|{|C\<in\>\<cal-A\>\|C\<subseteq\>B|}>>
    is a <math|\<sigma\>>-algebra on <math|B>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|B\<in\>\<cal-A\>> and <math|B\<subseteq\>B> it follows
      that <math|B\<in\>\<cal-A\><rsub|\|B>>.

      <item>Let <math|A\<in\>\<cal-A\><rsub|\|B>> then
      <math|A\<in\>\<cal-A\>> and <math|A\<subseteq\>B>. As also
      <math|B\<in\>\<cal-A\>> it follows from [theorem: <reference|measure
      sigma algebra equivalences>] that <math|B<big|cap><around*|(|X\\A|)>\<in\>\<cal-A\>>.
      Further <math|B<big|cap><around*|(|X\\A|)>\<equallim\><rsub|<text|[theorem:
      <reference|class intersection, union,
      inclusion>]>><around*|(|B<big|cap>X|)>\\A\<equallim\><rsub|B\<subseteq\>X>B\\A>
      so that <math|B\\A\<in\>\<Alpha\>> which as <math|B\\A\<subseteq\>B>
      proves that

      <\equation*>
        B\\A\<in\>\<cal-A\><rsub|\|B>
      </equation*>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><rsub|\|B>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<in\>\<cal-A\>> and <math|A<rsub|i>\<subseteq\>B> so
      that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
      and <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>B>.
      Hence\ 

      <\equation*>
        <big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\><rsub|\|B>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Borel algebra on <math|\<bbb-R\>>>

  <\definition>
    <label|measure borel algebrat on R><index|<math|\<cal-B\><around*|[|\<bbb-R\>|]>>>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    be the set of real numbers with the canonical topology
    <math|\<cal-T\><rsub|<around*|\|||\|>>> based on the absolute value norm
    [see theorem: <reference|normed basis of T\|\|>] then then
    <math|\<cal-B\><around*|[|\<bbb-R\>|]>> is the Borel algebra based on
    <math|\<cal-T\><rsub|<around*|\|||\|>>>. In other words\ 

    <\equation*>
      \<cal-B\><around*|[|\<bbb-R\>|]>=\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>=\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>
    </equation*>
  </definition>

  We will now find equivalent definitions for
  <math|\<cal-B\><around*|[|\<bbb-R\>|]>> that will be usefull if we define a
  measure. First we introduce the concept of bounded intervals on
  <math|\<bbb-R\>>.

  <\definition>
    <index|<math|\<cal-I\><rsub|<around*|[||]>>>><index|<math|\<cal-I\><rsub|<around*|[||[>>>><index|<math|\<cal-I\><rsub|<around*|]||]>>>><index|<math|\<cal-I\><rsub|<around*|]||[>>>><index|<math|\<cal-I\>>>We
    define the following set of bounded intervals:

    <\enumerate>
      <item><math|\<cal-I\><rsub|<around*|[||]>>=<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\><around*|[|a,b|]>\<neq\>\<varnothing\>|}>>
      [the set of non empty closed bounded intervals]

      <item><math|\<cal-I\><rsub|<around*|[||[>>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\><around*|[|a,b|[>\<neq\>\<varnothing\>|}>>
      [the set of non empty right open bounded intervals]

      <item><math|\<cal-I\><rsub|<around*|]||]>><rsub|>=<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\><around*|]|a,b|]>\<neq\>\<varnothing\>|}>>
      [the set of non empty left open bounded intervals]

      <item><math|\<cal-I\><rsub|<around*|]||[>>=<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\><around*|]|a,b|[>\<neq\>\<varnothing\>|}>>
      [the set of non empty open bounded intervals]

      <item><math|\<cal-I\>=\<cal-I\><rsub|<around*|[||]>><big|cup>\<cal-I\><rsub|<around*|[||[>><big|cup>\<cal-I\><rsub|<around*|]||]>><big|cup>\<cal-I\><rsub|<around*|]||[>>>
    </enumerate>

    <\note>
      If <math|b=a> then <math|<around*|]|a,b|[>=<around*|[|a,b|[>=<around*|]|a,b|]>=\<varnothing\>>
      and if <math|b\<less\>a> then <math|<around*|[|a,b|]>=<around*|[|a,b|[>=<around*|]|a,b|]>=<around*|]|a,b|[>=\<varnothing\>>
      then we have valid bounded intervals but they are not elements of
      <math|\<cal-I\><rsub|<around*|[||]>>>,
      <math|\<cal-I\><rsub|<around*|[||[>>>,
      <math|\<cal-I\><rsub|<around*|]||]>>> and
      <math|\<cal-I\><rsub|<around*|]||[>>>. One reason to exclude these
      intervals is that the boundary points of these intevals are not well
      defined [for eample <math|<around*|[|1,0|[>=<around*|[|2,0|[>=<around*|[|0,0|[>>
      which is needed for defining the length of the interval based on the
      boundary points.
    </note>
  </definition>

  For case to case analysis the following lemma will be usefull.

  <\lemma>
    <label|lemma 20.119.200>We have that <math|\<cal-I\><rsub|<around*|[||]>>>,
    <math|\<cal-I\><rsub|<around*|[||[>>>,
    <math|\<cal-I\><rsub|<around*|]||]>>> and
    <math|\<cal-I\><rsub|<around*|]||[>>> are pairwise disjoint. In other
    words we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||]>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|[||]>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||]>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|[||]>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|]||[>><big|cap>\<cal-I\><rsub|<around*|[||]>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|]||[>><big|cap>\<cal-I\><rsub|<around*|[||[>>=\<varnothing\>>|<cell|>>|<row|<cell|>|<cell|\<cal-I\><rsub|<around*|]||[>><big|cap>\<cal-I\><rsub|<around*|]||]>>=\<varnothing\>>|<cell|>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      \<cal-I\>=\<cal-I\><rsub|<around*|[||]>><big|sqcup>\<cal-I\><rsub|<around*|[||[>><big|sqcup>\<cal-I\><rsub|<around*|]||]>><big|sqcup>\<cal-I\><rsub|<around*|]||[>>
    </equation*>
  </lemma>

  <\proof>
    We have to check the following cases:

    <\description>
      <item*|<math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>>
      then <math|\<varnothing\>\<neq\>I=<around*|[|a,b|]>=<around*|[|c,d|[>>.
      As <math|<around*|[|a,b|]>\<neq\>\<varnothing\>> it follows from
      [theorem: <reference|interval condition to be empty>] that
      <math|a\<leqslant\>b> so that <math|b\<in\><around*|[|a,b|]>=<around*|[|c,d|[>>
      hence <math|c\<leqslant\>b\<less\>d>. Using [theorem:
      <reference|complex densitiy theorem>] there exist a
      <math|x\<in\>\<bbb-R\>> such that <math|c\<leqslant\>b\<less\>x\<less\>d>
      proving that <math|x\<in\><around*|[|c,d|[>=<around*|[|a,b|]>> so that
      <math|b\<less\>x\<leqslant\>b> leading to the contradiction
      <math|b\<less\>b>. Hence we have\ 

      <\equation>
        <label|eq 20.52.200>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>=\<varnothing\>
      </equation>

      <item*|<math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||]>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||]>>>
      then <math|\<varnothing\>=<around*|[|a,b|]>=<around*|]|c,d|]>>. As
      <math|<around*|[|a,b|]>\<neq\>\<varnothing\>> it follows from [theorem:
      <reference|interval condition to be empty>] that <math|a\<leqslant\>b>
      so that <math|a\<in\><around*|[|a,b|]>=<around*|]|c,d|]>> hence
      <math|c\<less\>a\<leqslant\>d>. Using [theorem: <reference|complex
      densitiy theorem>] there exist a <math|x\<in\>\<bbb-R\>> such that
      <math|c\<less\>x\<less\>a\<leqslant\>d> proving that
      <math|x\<in\><around*|]|c,d|]>=<around*|[|a,b|]>> so that
      <math|a\<leqslant\>x\<less\>a> leading to the contradiction
      <math|a\<less\>a>. Hence we have\ 

      <\equation>
        <label|eq 20.53.200>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||]>>=\<varnothing\>
      </equation>

      <item*|<math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>>
      then <math|\<varnothing\>\<neq\>I=<around*|[|a,b|]>=<around*|]|c,d|[>>.
      As As <math|<around*|[|a,b|]>\<neq\>\<varnothing\>> it follows from
      [theorem: <reference|interval condition to be empty>] that
      <math|a\<leqslant\>b> so that <math|b\<in\><around*|[|a,b|]>=<around*|]|c,d|[>>
      hence <math|c\<less\>b\<less\>d>. Using [theorem: <reference|complex
      densitiy theorem>] there exist a <math|x\<in\>\<bbb-R\>> such that
      <math|c\<less\>b\<less\>x\<less\>d> proving that
      <math|x\<in\><around*|]|c,d|[>=<around*|[|a,b|]>> so that
      <math|b\<less\>x\<leqslant\>b> leading to the contradiction
      <math|b\<less\>b>. Hence we have\ 

      <\equation>
        <label|eq 20.54.200>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<varnothing\>
      </equation>

      <item*|<math|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|[||]>>>>Then
      we have\ 

      <\equation*>
        \<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|[||]>>=\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>\<equallim\><rsub|<text|[eq;
        <reference|eq 20.52.200>]>>\<varnothing\>
      </equation*>

      <item*|<math|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||]>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||]>>>
      then <math|\<varnothing\>\<neq\>I=<around*|[|a,b|[>=<around*|]|c,d|]>>.
      As \ <math|<around*|[|a,b|]>\<neq\>\<varnothing\>> it follows from
      [theorem: <reference|interval condition to be empty>] that
      <math|a\<less\>b> so that <math|a\<in\><around*|[|a,b|[>=<around*|]|c,d|]>>
      hence <math|c\<less\>a\<leqslant\>d>. Using [theorem:
      <reference|complex densitiy theorem>] there exist a
      <math|x\<in\>\<bbb-R\>> such that <math|c\<less\>x\<less\>a\<leqslant\>d>
      proving that <math|x\<in\><around*|]|c,d|]>=<around*|[|a,b|[>> so that
      <math|a\<leqslant\>x\<less\>a> leading to the contradiction
      <math|a\<less\>a>. Hence we have

      <\equation>
        <label|eq 20.55.200>\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||]>>=\<varnothing\>
      </equation>

      <item*|<math|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>>
      then <math|\<varnothing\>\<neq\>I=<around*|[|a,b|[>=<around*|]|c,d|[>>.
      As \ <math|<around*|[|a,b|]>\<neq\>\<varnothing\>> it follows from
      [theorem: <reference|interval condition to be empty>] that
      <math|a\<less\>b> so that <math|a\<in\><around*|[|a,b|[>=<around*|]|c,d|]>>
      hence <math|c\<less\>a\<less\>d>. Using [theorem: <reference|complex
      densitiy theorem>] there exist a <math|x\<in\>\<bbb-R\>> such that
      <math|c\<less\>x\<less\>a\<less\>d> proving that
      <math|x\<in\><around*|]|c,d|[>=<around*|[|a,b|[>> so that
      <math|a\<leqslant\>x\<less\>a> leading to the contradiction
      <math|a\<less\>a>. Hence we have\ 

      <\equation>
        <label|eq 20.56.200>\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<varnothing\>
      </equation>

      <item*|<math|\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|[||]>>>>Then
      we have\ 

      <\equation*>
        \<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|[||]>>=\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||]>>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.53.200>]>>\<varnothing\>
      </equation*>

      <item*|<math|\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>>
      then <math|I=<around*|]|a,b|]>=<around*|[|c,d|[>>. As
      <math|<around*|]|a,b|]>\<neq\>\<varnothing\>> we have by [theorem:
      <reference|interval condition to be empty>] that <math|a\<less\>b> so
      that <math|b\<in\><around*|]|a,b|]>=<around*|[|c,d|[>> hence
      <math|c\<leqslant\>b\<less\>d>. Using [theorem: <reference|complex
      densitiy theorem>] there exist a <math|x\<in\>\<bbb-R\>> such that
      <math|c\<leqslant\>b\<less\>x\<less\>d> proving that
      <math|x\<in\><around*|[|c,d|[>=<around*|]|a,b|]>> so that
      <math|b\<less\>x\<leqslant\>b> leading to the contradiction
      <math|b\<less\>b>. Hence we have\ 

      <\equation>
        <label|eq 20.57.200>\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>=\<varnothing\>
      </equation>

      <item*|<math|\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>>
      then <math|I=<around*|]|a,b|]>=<around*|]|c,d|[>>. As
      <math|<around*|]|a,b|]>\<neq\>\<varnothing\>> we have by [theorem:
      <reference|interval condition to be empty>] that <math|a\<less\>b> so
      that <math|b\<in\><around*|]|a,b|]>=<around*|]|c,d|[>> hence
      <math|c\<less\>b\<less\>d>. Using [theorem: <reference|complex densitiy
      theorem>] there exist a <math|x\<in\>\<bbb-R\>> such that
      <math|c\<less\>b\<less\>x\<less\>d> proving that
      <math|x\<in\><around*|]|c,d|[>=<around*|]|a,b|]>> so that
      <math|b\<less\>x\<leqslant\>b> leading to the contradiction
      <math|b\<less\>b>. Hence we have\ 

      <\equation>
        <label|eq 20.58.200>\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<varnothing\>
      </equation>

      <item*|<math|\<cal-I\><rsub|<around*|]||[>><big|cap>\<cal-I\><rsub|<around*|[||]>>>>Then
      we have\ 

      <\equation*>
        \<cal-I\><rsub|<around*|]||[>><big|cap>\<cal-I\><rsub|<around*|[||]>>=\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.54.200>]>>\<varnothing\>
      </equation*>

      <item*|<math|\<cal-I\><rsub|<around*|]||[>><big|cap>\<cal-I\><rsub|<around*|[||[>>>>Then
      we have\ 

      <\equation*>
        \<cal-I\><rsub|<around*|]||[>><big|cap>\<cal-I\><rsub|<around*|[||[>>=\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.56.200>]>>\<varnothing\>
      </equation*>

      <item*|<math|\<cal-I\><rsub|<around*|]||[>><big|cup>\<cal-I\><rsub|<around*|]||]>>>>Then
      we have\ 

      <\equation*>
        \<cal-I\><rsub|<around*|]||[>><big|cap>\<cal-I\><rsub|<around*|]||]>>=\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.58.200>]>>\<varnothing\>
      </equation*>
    </description>
  </proof>

  The following allows us to switch between the different types of non empty
  bounded intervals.

  <\lemma>
    <label|lemma 20.121.200>Let <math|a,b\<in\>\<bbb-R\>> the we have\ 

    <\enumerate>
      <item><math|<around*|]|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>>

      <item><math|<around*|[|a,b|[>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>>

      <item><math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|]>>

      <item><math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|[|a,b+<frac|1|n>|[>>

      <item><math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>>

      <item><math|<around*|]|-\<infty\>,a|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>>

      <item><math|<around*|[|a,\<infty\>|[>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,\<infty\>|[>>

      <item><math|<around*|]|a,b|]>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|]>>

      <item><math|<around*|[|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a,b-<frac|1|n>|]>>

      <item><math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>>

      <item><math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|[>>

      <item><math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b-<frac|1|n>|]>>

      <item><math|<around*|]|-\<infty\>,a|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a-<frac|1|n>|]>>

      <item><math|<around*|]|a,\<infty\>|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,\<infty\>|[>>

      <item><math|<around*|[|a,b|[>=<around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>>

      <item><math|<around*|]|a,b|]>=<around*|]|-\<infty\>,b|]>\\<around*|]|-\<infty\>,a|]>>

      <item><math|<around*|]|a,\<infty\>|[>=\<bbb-R\>\\<around*|]|-\<infty\>,a|]>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\><around*|]|a,b|]>> then
      <math|a\<less\>x\<leqslant\>b> and as <math|\<forall\>n\<in\>\<bbb-N\>>
      <math|b\<less\>b+<frac|1|n>> we have
      <math|a\<less\>x\<less\>b+<frac|1|n>> so it follows that
      <math|x\<in\><around*|]|a,b+<frac|1|n>|[>>. Hence\ 

      <\equation>
        <label|eq 18.8.020><around*|]|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>
      </equation>

      If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\>>
      <math|x\<in\><around*|]|a,b+<frac|1|n>|[>> or
      <math|a\<less\>x\<less\>b+<frac|1|n>> which by [corollary:
      <reference|complex Archimedean property consequence (2)>] proves that
      <math|a\<less\>x\<leqslant\>b> hence <math|x\<in\><around*|]|a,b|]>>.
      So it follows that <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>\<subseteq\><around*|]|a,b|]>>
      which using [eq: <reference|eq 18.8.020>] proves that\ 

      <\equation*>
        <around*|]|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|[>> then
      <math|a\<leqslant\>x\<less\>b> and as <math|\<forall\>n\<in\>\<bbb-N\>>
      we have <math|a-<frac|1|n>\<less\>a> it follows that
      <math|x\<in\><around*|]|a-<frac|1|n>,b|[>>. Hence\ 

      <\equation>
        <label|eq 18.9.020><around*|[|a,b|[>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>
      </equation>

      If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|a-<frac|1|n>\<less\>x\<less\>b\<Rightarrow\>a\<less\>x+<frac|1|n>\<wedge\>x\<less\>b>
      which by [corollary: <reference|complex Archimedean property
      consequence (2)>] proves that <math|a\<leqslant\>x\<less\>b> hence
      <math|x\<in\><around*|[|a,b|[>>. So
      <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>\<subseteq\><around*|[|a,b|[>>
      which using [eq: <reference|eq 18.9.020>] prove that

      <\equation*>
        <around*|[|a,b|[>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|]>> then
      <math|a\<leqslant\>x\<less\>b> and as <math|\<forall\>n\<in\>\<bbb-N\>>
      we have <math|a-<frac|1|n>\<less\>a\<Rightarrow\>x\<in\><around*|]|a-<frac|1|n>,b|]>>.
      Hence

      <\equation>
        <label|eq 18.10.021><around*|[|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|]>
      </equation>

      If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|]>>
      then <math|\<forall\>n\<in\>\<bbb-N\>> then
      <math|a-<frac|1|n>\<less\>x\<leqslant\>b> or
      <math|a\<less\>x+<frac|1|n>> which by [corollary: <reference|complex
      Archimedean property consequence (2)>] proves that
      <math|a\<leqslant\>x> giving <math|x\<in\><around*|[|a,b|]>>. So we
      have <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|]>\<subseteq\><around*|[|a,b|]>>
      which combined with [eq: <reference|eq 18.10.021>] gives

      <\equation*>
        <around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|]>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|]>> then
      <math|a\<leqslant\>x\<leqslant\>b> then
      <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|a\<leqslant\>x\<leqslant\>b\<less\>b+<frac|1|n>>. Which proves
      that\ 

      <\equation>
        <label|eq 18.11.021><around*|[|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|[|a,b+<frac|1|n>|[>
      </equation>

      If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|[|a,b+<frac|1|n>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|a\<leqslant\>x\<less\>b+<frac|1|n>>. Using [corollary:
      <reference|complex Archimedean property consequence (2)>] we have
      <math|x\<leqslant\>b> proving that <math|x\<in\><around*|[|a,b|]>>.
      Hence <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|[|a,b+<frac|1|n>|[>\<subseteq\><around*|[|a,b|]>>
      which combined with [eq: <reference|eq 18.11.021>] gives\ 

      <\equation*>
        <around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|[|a,b+<frac|1|n>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|]>> then
      <math|a\<leqslant\>x\<leqslant\>b> and as
      <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|a-<frac|1|n>\<less\>x\<less\>b+<frac|1|n>> it follows that
      <math|x\<in\><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>>. Hence\ 

      <\equation>
        <label|eq 18.12.021><around*|[|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>
      </equation>

      Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|a-<frac|1|n>\<less\>x\<wedge\>x\<less\>b+<frac|1|n>\<Rightarrow\>a\<less\>x+<frac|1|n>\<wedge\>x\<less\>b+<frac|1|n>>.
      Using [corollary: <reference|complex Archimedean property consequence
      (2)>] we have <math|a\<leqslant\>x\<wedge\>x\<leqslant\>b> or
      <math|x\<in\><around*|[|a,b|]>>. Hence
      <math|<rigid|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>\<subseteq\><around*|[|a,b|]>>>
      which together with [eq: <reference|eq 18.12.021>] proves\ 

      <\equation*>
        <around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|]|-\<infty\>,a|]>> then
      <math|x\<leqslant\>a> and as <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|x\<less\>a+<frac|1|n>> it follows that
      <math|x\<in\><around*|]|-\<infty\>,a+<frac|1|n>|[>>. Hence\ 

      <\equation>
        <label|eq 18.13.021><around*|]|-\<infty\>,a|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>
      </equation>

      Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|x\<less\>a+<frac|1|n>> which by [corollary: <reference|complex
      Archimedean property consequence (2)>] gives <math|x\<leqslant\>a> or
      <math|x\<in\><around*|]|-\<infty\>,a|]>>. Hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|>><around*|]|-\<infty\>,a+<frac|1|n>|[>\<subseteq\><around*|]|-\<infty\>,a|]>>
      which together with [eq: <reference|eq 18.13.021>] proves

      <\equation*>
        <big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>=<around*|]|-\<infty\>,a|]>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,\<infty\>|[>> then
      <math|a\<leqslant\>x> so that <math|\<forall\>n\<in\>\<bbb-N\><rsub|9>>
      we have <math|a-<frac|1|n>\<less\>x> giving
      <math|x\<in\><around*|]|a-<frac|1|n>,\<infty\>|[>> proving that\ 

      <\equation>
        <label|eq 18.14.021><around*|[|a,\<infty\>|[>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,\<infty\>|[>
      </equation>

      Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,\<infty\>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|a-<frac|1|n>\<less\>x\<Rightarrow\>a\<less\>x+<frac|1|n>> which
      by [corollary: <reference|complex Archimedean property consequence
      (2)>] proves that <math|x\<in\><around*|[|a,\<infty\>|[>>. Hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,\<infty\>|[>\<subseteq\><around*|[|a,\<infty\>|]>>
      which together with [eq: <reference|eq 18.14.021>] <math|>proves that

      <\equation*>
        <around*|[|a,\<infty\>|[>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,\<infty\>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|]>> then
      <math|a\<less\>x\<leqslant\>b> and using [corollary: <reference|complex
      Archimedean property consequence (1)>] there exists a
      <math|n\<in\>\<bbb-N\>> such that <math|a\<less\>a+<frac|1|n>\<less\>x\<leqslant\>b>
      proving that <math|x\<in\><around*|[|a+<frac|1|n>,b|]>>. Hence\ 

      <\equation>
        <label|eq 18.15.021><around*|]|a,b|]>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|]>
      </equation>

      Let <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|]>>
      then there exists a <math|n\<in\>\<bbb-N\>> such that
      <math|x\<in\><around*|[|a+<frac|1|n>,b|]>\<Rightarrow\>a\<less\>a+<frac|1|n>\<leqslant\>x\<leqslant\>b>.
      Hence <math|x\<in\><around*|]|a,b|]>> proving that
      <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|]>\<subseteq\><around*|]|a,b|]>>
      which by [eq: <reference|eq 18.15.021>] gives

      <\equation*>
        <around*|]|a,b|]>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|]>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|[>> then
      <math|a\<leqslant\>x\<less\>b> and using [corollary: <reference|complex
      Archimedean property consequence (1)>] there exists a
      <math|n\<in\>\<bbb-N\>> such that <math|a\<leqslant\>x\<less\>x+<frac|1|n>\<less\>b\<Rightarrow\>a\<leqslant\>x\<wedge\>x\<less\>b-<frac|1|n>>
      proving that <math|x\<in\><around*|[|a,b-<frac|1|n>|]>>. So\ 

      <\equation>
        <label|eq 18.16.021><around*|\<nobracket\>|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a,b-<frac|1|n>|]>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a,b-<frac|1|n>|]>>
      then <math|\<exists\>n\<in\>\<bbb-N\>> such that
      <math|x\<in\><around*|[|a,b-<frac|1|n>|]>\<Rightarrow\>a\<leqslant\>x\<leqslant\>b-<frac|1|n>\<less\>b>
      proving that <math|x\<in\><around*|[|a,b|[>>. Hence
      <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a,b-<frac|1|n>|]>\<subseteq\><around*|[|a,b|[>>
      which combined with <reference|eq 18.16.021> gives\ 

      <\equation*>
        <around*|[|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a,b-<frac|1|n>|]>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|[>> then
      <math|a\<less\>x\<less\>b> and using [corollary: <reference|complex
      Archimedean property consequence (1)>] there exists a
      <math|n\<in\>\<bbb-N\>> such that <math|a\<less\>x\<less\>x+<frac|1|n>\<less\>b>
      hence <math|a\<less\>x\<less\>b-<frac|1|n>> proving that
      <math|x\<in\><around*|]|a,b-<frac|1|n>|]>>. So\ 

      <\equation>
        <label|eq 18.17.021><around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>>
      then <math|\<exists\>n\<in\>\<bbb-N\>> such that
      <math|a\<less\>x\<leqslant\>b-<frac|1|n>\<less\>b\<Rightarrow\>x\<in\><around*|]|a,b|[>>
      proving that <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>\<subseteq\><around*|]|a,b|[>>.
      Combining this with [eq: <reference|eq 18.17.021>] gives\ 

      <\equation*>
        <around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|[>> then
      <math|a\<less\>x\<less\>b> and using \ [corollary: <reference|complex
      Archimedean property consequence (1)>] there exists a
      <math|n\<in\>\<bbb-N\>> such that <math|a\<less\>a+<frac|1|n>\<less\>x\<less\>b>
      proving that <math|x\<in\><around*|[|a+<frac|1|n>,b|[>>. Hence\ 

      <\equation>
        <label|eq 18.18.021><around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|[>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|[><rsub|>>
      then <math|\<exists\>n\<in\>\<bbb-N\>> such that
      <math|a\<less\>a+<frac|1|n>\<less\>x\<less\>b\<Rightarrow\>x\<in\><around*|]|a,b|[>>
      proving that <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|[>\<subseteq\><around*|]|a,b|[>>.
      Combining this with [eq: <reference|eq 18.18.021>] gives\ 

      <\equation*>
        <around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|[>> then
      <math|a\<less\>x\<less\>b> and using [corollary: <reference|complex
      Archimedean property consequence (1)>] there exists
      <math|n<rsub|1>,n<rsub|2>\<in\>\<bbb-N\>> such that
      <math|a\<less\>a+<frac|1|n<rsub|1>>\<less\>x\<less\>x+<frac|1|n<rsub|2>>\<less\>b\<Rightarrow\>a+<frac|1|n<rsub|1>>\<less\>x\<less\>b-<frac|1|n<rsub|2>>>.
      Take <math|m=max<around*|(|n<rsub|1>,n<rsub|2>|)>> then
      <math|<frac|1|m>\<leqslant\><frac|1|n<rsub|1>>,<frac|1|n<rsub|2>>> so
      that <math|a+<frac|1|m>\<leqslant\>a+<frac|1|n<rsub|1>>\<less\>x\<less\>b-<frac|1|n<rsub|2>>\<leqslant\>b-<frac|1|m>>
      proving that <math|x\<in\><around*|[|a+<frac|1|m>,b-<frac|1|m>|]>>.
      Hence\ 

      <\equation>
        <label|eq 18.19.021><around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|m>,b-<frac|1|m>|]>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b-<frac|1|n>|]>>
      then <math|\<exists\>n\<in\>\<bbb-N\>> such that
      <math|x\<in\><around*|[|a+<frac|1|n>,b-<frac|1|n>|]>\<Rightarrow\>a\<less\>a+<frac|1|n>\<leqslant\>x\<less\>b-<frac|1|n>\<less\>b>
      proving that <math|a\<less\>x\<less\>b> or
      <math|x\<in\><around*|]|a,b|[>>. So
      <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b-<frac|1|n>|]>\<subseteq\><around*|]|a,b|[>>
      which together with [eq: <reference|eq 18.19.021>] gives

      <\equation*>
        <around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|m>,b-<frac|1|m>|]>
      </equation*>

      <item>Let <math|x\<in\><around*|]|-\<infty\>,a|[>> then
      <math|x\<less\>a> and using [corollary: <reference|complex Archimedean
      property consequence (1)>] there exists a <math|n\<in\>\<bbb-N\>> such
      that <math|x+<frac|1|n>\<less\>a\<Rightarrow\>x\<less\>a-<frac|1|n>\<Rightarrow\>x\<in\><around*|]|-\<infty\>,a-<frac|1|n>|]>>
      proving that\ 

      <\equation>
        <label|eq 18.20.021><around*|]|-\<infty\>,a|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a-<frac|1|n>|]>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a-<frac|1|n>|]>>
      then <math|\<exists\>n\<in\>\<bbb-N\>> such that
      <math|x\<in\><around*|]|-\<infty\>,a-<frac|1|n>|]>\<Rightarrow\>x\<leqslant\>a-<frac|1|n>\<less\>a>
      giving <math|x\<in\><around*|]|-\<infty\>,a|[>> and proving that
      <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a|]>\<subseteq\><around*|]|-\<infty\>,a|[>>.
      Using this together with [eq: <reference|eq 18.20.021>] proves

      <\equation*>
        <around*|]|-\<infty\>,a|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a-<frac|1|n>|]>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,\<infty\>|[>> then
      <math|a\<less\>x> and using [corollary: <reference|complex Archimedean
      property consequence (1)>] there exists a <math|n\<in\>\<bbb-N\>> such
      that <math|a+<frac|1|n>\<less\>x\<Rightarrow\>x\<in\><around*|[|a+<frac|1|n>,\<infty\>|[>>.
      Hence\ 

      <\equation>
        <label|eq 18.21.021><around*|]|a,\<infty\>|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,\<infty\>|[>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,\<infty\>|[>>
      then <math|\<exists\>n\<in\>\<bbb-N\>> such that
      <math|x\<in\><around*|[|a+<frac|1|n>,\<infty\>|[>\<Rightarrow\>a\<less\>a+<frac|1|n>\<leqslant\>x>
      hence <math|x\<in\><around*|]|a,\<infty\>|[>>. This proves that
      <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,\<infty\>|[>\<subseteq\><around*|]|a,\<infty\>|[>>,
      combining this with [eq: <reference|eq 18.21.021>] gives\ 

      <\equation*>
        <around*|]|a,\<infty\>|[>=<big|cup><rsub|n\<in\>\<bbb-N\>+0><around*|[|a+<frac|1|n>,\<infty\>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|[>> then
      <math|a\<leqslant\>x\<wedge\>x\<less\>b\<Rightarrow\>a\<leqslant\>x\<wedge\>\<neg\><around*|(|b\<leqslant\>x|)>>
      so that <math|x\<in\><around*|[|a,\<infty\>|[>> and
      <math|x\<nin\><around*|[|b,\<infty\>|[>> proving that\ 

      <\equation>
        <label|eq 18.22.021><around*|[|a,b|[>\<subseteq\><around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>
      </equation>

      If <math|x\<in\><around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>>
      then <math|a\<leqslant\>x\<wedge\>\<neg\><around*|(|b\<leqslant\>x|)>>
      or <math|a\<leqslant\>x*> and <math|x\<less\>b> proving that
      <math|<around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>\<subseteq\><around*|[|a,b|[>>.
      Combining this with [eq: <reference|eq 18.22.021>] proves that

      <\equation*>
        <around*|[|a,b|[>=<around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|]>> then
      <math|a\<less\>x\<wedge\>x\<leqslant\>b> then
      <math|\<neg\><around*|(|x\<leqslant\>a|)>\<wedge\>x\<leqslant\>b> so
      that <math|x\<nin\><around*|]|-\<infty\>,a|]>\<wedge\>x\<in\><around*|]|-\<infty\>,b|]>>
      proving that <math|x\<in\><around*|]|-\<infty\>,b|[>\\<around*|]|-\<infty\>,a|]>>.
      For the opposite inclusion let <math|x\<in\><around*|]|-\<infty\>,b|]>\\<around*|]|-\<infty\>,a|]>>
      then <math|x\<leqslant\>b> and <math|\<neg\><around*|(|x\<leqslant\>a|)>>
      proving that <math|x\<leqslant\>b> and <math|a\<less\>x> or
      <math|x\<in\><around*|]|a,b|]>>. Hence\ 

      <\equation*>
        <around*|]|a,b|]>=<around*|]|-\<infty\>,b|]>\\<around*|]|-\<infty\>,a|]>
      </equation*>

      <item>If <math|x\<in\><around*|]|a,\<infty\>|[>> then
      <math|x\<in\>\<bbb-R\>\<wedge\>a\<less\>x> so that
      <math|x\<nleqslant\>a\<Rightarrow\>x\<nin\><around*|]|-\<infty\>,a|]>>
      hence <math|x\<in\>\<bbb-R\>\\<around*|]|-\<infty\>,a|]>>, further if
      <math|x\<in\>\<bbb-R\>\\<around*|]|-\<infty\>,a|]>> then
      <math|x\<in\>\<bbb-R\>\<wedge\>x\<nin\><around*|]|-\<infty\>,a|]>\<Rightarrow\>x\<nleqslant\>a\<Rightarrow\>a\<less\>x>
      or <math|x\<in\><around*|]|a,\<infty\>|[>> hence\ 

      <\equation*>
        <around*|]|a,\<infty\>|[>=\<bbb-R\>\\<around*|]|-\<infty\>,a|]>
      </equation*>
    </enumerate>

    \;
  </proof>

  We are now ready to prove alternative forms for
  <math|\<cal-B\><around*|[|\<bbb-R\>|]>>.

  <\theorem>
    <label|measure Borel algebra on R>We have the following alternative forms
    for <math|\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|<text|definition>>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\>\|C<text|
      is closed in >\<cal-T\><rsub|<around*|\|||\|>>|}>|]>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|measure Borel algebra and
      closure>]>>>|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> then by [corollary:
    <reference|normed open set as union of intervals (1)>] there exist a
    countable family <math|<around*|{|<around*|]|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\>I>\<subseteq\>\<cal-I\><rsub|<around*|]||[>>>
    such that\ 

    <\equation>
      <label|eq 20.76.200>\<forall\>i\<in\>I<text|
      ><around*|]|a<rsub|i>,\<beta\><rsub|i>|[>\<neq\>\<varnothing\><text|
      and >U=<big|cup><rsub|i\<in\>I><around*|]|a<rsub|i>,\<beta\><rsub|i>|[>
    </equation>

    As <math|\<cal-I\><rsub|<around*|]||[>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>>
    which is a <math|\<sigma\>>-algebra it follows from [theorem:
    <reference|measure countable union is in sigma algebra>] that
    <math|U=<big|cup><rsub|i\<in\>I><around*|]|a<rsub|i>,\<beta\><rsub|i>|[>\<in\>\<sigma\><around*|(|\<cal-I\><rsub|<around*|]||[>>|)>>.
    As <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> was chosen arbitrary it
    follows that <math|\<cal-T\><rsub|<around*|\|||\|>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>>.
    Using then [theorem: <reference|measure generated sigma algebra>] it
    follows that\ 

    <\equation>
      <label|eq 20.77.200>\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|def>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>
    </equation>

    If <math|<around*|]|a,b|[>\<in\>\<cal-I\><rsub|<around*|]||[>>> then by
    [lemma: <reference|lemma 20.121.200>]
    <math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>>.
    Let <math|n\<in\>\<bbb-N\>> then we have either:\ 

    <\description>
      <item*|<math|<around*|]|a,b-<frac|1|n>|]>=\<varnothing\>>>Then
      <math|><math|<around*|]|a,b-<frac|1|n>|]>=\<varnothing\>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>

      <item*|<math|<around*|]|a,b-<frac|1|n>|]>\<neq\>\<varnothing\>>>Then
      <math|><math|<around*|]|a,b-<frac|1|n>|]>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>
    </description>

    so that <math|<around*|{|<around*|]|a,b-<frac|1|n>|]>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>
    from which it follows by [lemma: <reference|measure countable union is in
    sigma algebra>] that

    <\equation*>
      <around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>
    </equation*>

    <math|>. Hence we have <math|\<cal-I\><rsub|<around*|]||[>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>
    a <math|\<sigma\>>-algebra on <math|\<bbb-R\>>. Using [theorem:
    <reference|measure generated sigma algebra>] it follows then that\ 

    <\equation>
      <label|eq 20.78.200>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>
    </equation>

    If <math|<around*|]|a,b|]>\<in\>\<cal-I\><rsub|<around*|]||]>>> then by
    [lemma: <reference|lemma 20.121.200>]
    <math|<around*|]|a,b|]>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|]>>.
    For <math|n\<in\>\<bbb-N\>> we have either:\ 

    <\description>
      <item*|<math|<around*|[|a+<frac|1|n>,b|]>=\<varnothing\>>>Then
      <math|<around*|[|a+<frac|1|n>,b|]>=\<varnothing\>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>

      <item*|<math|<around*|[|a+<frac|1|n>,b|]>\<neq\>\<varnothing\>>>Then
      <math|<around*|[|a+<frac|1|n>,b|]>\<in\>\<cal-I\><rsub|<around*|[||]>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|)><around*|[||]>>
    </description>

    so that <math|<around*|{|<around*|[|a+<frac|1|n>,b|]>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>
    from which it follows by [theorem: <reference|measure countable union is
    in sigma algebra>] that

    <\equation*>
      <around*|]|a,b|]>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|a+<frac|1|n>,b|]>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>
    </equation*>

    Hence we have <math|\<cal-I\><rsub|<around*|]||]>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>
    a <math|\<sigma\>>-algebra on <math|\<bbb-R\>> so that by [theorem:
    <reference|measure generated sigma algebra>]\ 

    <\equation>
      <label|eq 20.79.200>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>
    </equation>

    If <math|<around*|[|a,b|]>\<in\>\<cal-I\><rsub|<around*|[||]>>> then by
    [lemma: <reference|lemma 20.121.200>]
    <math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|[|a,b+<frac|1|n>|[>>.
    For <math|n\<in\>\<bbb-N\>> we have either:\ 

    <\description>
      <item*|<math|<around*|[|a,b+<frac|1|n>|[>=\<varnothing\>>>Then
      <math|<around*|[|a,b+<frac|1|n>|[>=\<varnothing\>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>

      <item*|<math|<around*|[|a,b+<frac|1|n>|[>\<neq\>\<varnothing\>>>Then
      <math|<around*|[|a,b+<frac|1|n>|[>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>
    </description>

    so that <math|<around*|{|<around*|[|a,b+<frac|1|n>|[>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>
    form which it it follows by [theorem: <reference|measure countable union
    is in sigma algebra>] that\ 

    <\equation*>
      <around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|[|a,b+<frac|1|n>|[>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>
    </equation*>

    Hence we have <math|><math|\<cal-I\><rsub|<around*|[||]>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>
    a <math|\<sigma\>>-algebra on <math|\<bbb-R\>> so that by [theorem:
    <reference|measure generated sigma algebra>]\ 

    <\equation>
      <label|eq 20.80.200>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|[||[>>|]>
    </equation>

    If <math|<around*|[|a,b|[>\<in\>\<cal-I\><rsub|<around*|[||[>>> then by
    [lemma: <reference|lemma 20.121.200>]
    <math|<around*|[|a,b|[>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>>.
    As <math|\<forall\>n\<in\>\<bbb-N\>> <math|<around*|]|a-<frac|1|n>,b|[>>
    is open it follows that <math|<around*|{|<around*|]|a-<frac|1|n>,b|[>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>>>
    so that by [theorem <reference|measure countable union is in sigma
    algebra>] <math|<around*|[|a,b|[>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>>.
    Hence we have that <math|\<cal-I\><rsub|<around*|[||[>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>>
    so that\ 

    <\equation>
      <label|eq 20.81.200>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|def>\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    Combining [eqs: <reference|eq 20.77.200>, <reference|eq 20.78.200>,
    <reference|eq 20.79.200>, <reference|eq 20.80.200> and <reference|eq
    20.81.200>] it follows that\ 

    <\equation>
      <label|eq 20.82.200>\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>=\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>=\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>=\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]><rsub|>=\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>
    </equation>

    If <math|<around*|[|a,b|[>\<in\>\<cal-I\><rsub|<around*|[||[>>> then
    using [lemma: <reference|lemma 20.121.200>] we have that

    <\equation*>
      <around*|[|a,b|]>=<around*|[|a,\<infty\>|]>\\<around*|[|b,\<infty\>|[><below|\<in\>|<text|[theorem:
      <reference|measure algebra properties>]>>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>

    proving <math|\<cal-I\><rsub|<around*|[||[>>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    a <math|\<sigma\>>-algebra. Hence using [theorem: <reference|measure
    generated sigma algebra>] we have\ 

    <\equation>
      <label|eq 20.83.200>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    If <math|<around*|[|a,\<infty\>|[>\<in\><around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>>
    then using [lemma: <reference|lemma 20.121.200>] we have that
    <math|<around*|[|a,\<infty\>|[>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,\<infty\>|[>>.
    As <math|<around*|{|<around*|]|a-<frac|1|n>,\<infty\>|[>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\><around*|{|<around*|]|a-<frac|1|n>,\<infty\>|[>\|n\<in\>\<bbb-N\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    it follows from [theorem: <reference|measure countable union is in sigma
    algebra>] that

    <\equation*>
      <around*|[|a,\<infty\>|[>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>

    Hence <math|><math|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    so that by [theorem: <reference|measure generated sigma algebra>]

    <\equation>
      <label|eq 20.84.200>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Let <math|<around*|]|a,\<infty\>|[>\<in\><around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>>
    then by [lemma: <reference|lemma 20.121.200>]
    <math|<around*|]|a,\<infty\>|[>=\<bbb-R\>\\<around*|]|-\<infty\>,a|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
    so that <math|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>.
    Using <math|>[theorem: <reference|measure generated sigma algebra>] it
    follows that\ 

    <\equation>
      <label|eq 20.85.200>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Let <math|<around*|]|-\<infty\>,a|]>\<in\><around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>>
    then by [lemma: <reference|lemma 20.121.200>]
    <math|<around*|]|-\<infty\>,a|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>>.
    As <math|<rigid|<around*|{|<around*|]|-\<infty\>,a+<frac|1|n>|[>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\><around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>>
    it follows from \ [theorem: <reference|measure countable union is in
    sigma algebra>] that <math|><math|<around*|]|-\<infty\>,a|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    Hence

    <\equation*>
      <around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>

    which by <math|>[theorem: <reference|measure generated sigma algebra>]
    proves that\ 

    <\equation>
      <label|eq 20.86.200>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Let <math|<around*|]|-\<infty\>,a|[>\<in\><around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>>
    then as <math|<around*|]|-\<infty\>,a|[>> is open it follows that
    <math|><math|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>>
    and using [theorem: <reference|measure generated sigma algebra>] it
    follows that\ 

    <\equation>
      <label|eq 20.87.200>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.82.200>]>>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>
    </equation>

    Combining [eqs: <reference|eq 20.83.200>, <reference|eq 20.84.200>,
    <reference|eq 20.85.200>, <reference|eq 20.86.200> and <reference|eq
    20.87.200>] gives\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>=\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>

    Finally combining the above with [eq: <reference|eq 20.82.200>] proves
    that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>>>>
    </eqnarray*>
  </proof>

  <subsection|Borel algebra on <math|\<bbb-R\><rsup|n>>>

  <\definition>
    <label|measure Borel algebra on R^n>Let <math|n\<in\>\<bbb-N\>> then the
    Borel algebra on <math|\<bbb-R\><rsup|n>> is noted as
    <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> so\ 

    <\equation*>
      \<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>n>|]>
    </equation*>

    where <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>> is the
    canonical topology on <math|\<bbb-R\><rsup|n>> [see example:
    <reference|normed maximum norm R^n>]
  </definition>

  First we extend the concept of generalized intervals to intervals on
  <math|\<bbb-R\><rsup|n>>

  <\definition>
    <label|measure order on R^n>Let <math|n\<in\>\<bbb-N\>> and
    <math|x,y\<in\>\<bbb-R\><rsup|n>> then <math|x\<leqslant\><rsub|n>y> if
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|x<rsub|i>\<less\>y<rsub|i>>
  </definition>

  This relation makes <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<leqslant\><rsub|n>|\<rangle\>>>
  a partial ordered set.

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>> then <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<leqslant\><rsub|n>|\<rangle\>>>
    is a partial ordered set.

    <\note>
      As for <math|<around*|(|1,2|)>>, <math|<around*|(|2,1|)>> we that
      <math|<around*|(|1,2|)>\<nleqslant\><rsub|2><around*|(|2,1|)>> and
      <math|<around*|(|2,1|)>\<nleqslant\><rsub|2><around*|(|1,2|)>>
      <math|\<leqslant\><rsub|n>> is not a total or full order.\ 
    </note>
  </theorem>

  <\proof>
    We have

    <\description>
      <item*|reflexivity>If <math|x\<in\>\<bbb-R\><rsup|n>> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|x<rsub|i>=x<rsub|i>\<Rightarrow\>x<rsub|i>\<leqslant\>x<rsub|i>>
      proving that <math|x\<leqslant\><rsub|n>x>.

      <item*|anti-symmetry>If <math|x,y\<in\>\<bbb-R\><rsup|n>> satisfies
      <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x> then we have
      <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|x<rsub|i>\<leqslant\>y<rsub|i>> and
      <math|y<rsub|i>\<leqslant\>x<rsub|i>> so that
      <math|x<rsub|i>=y<rsub|i>> from which it follows that <math|x=y>.

      <item*|transitivity>If <math|x\<leqslant\><rsub|n>y> and
      <math|y\<leqslant\><rsub|n>z> then we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|x<rsub|i>\<leqslant\>y<rsub|i>\<wedge\>y<rsub|i>\<leqslant\>z<rsub|i>\<Rightarrow\>x<rsub|i>\<leqslant\>z<rsub|i>>
      from which it follows that <math|x\<leqslant\><rsub|n>z>.
    </description>
  </proof>

  Using this order relation we can extend the conecpt of intervals to
  intervals in <math|\<bbb-R\><rsup|n>>.

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|a,b\<in\>\<bbb-R\><rsup|n>>
    such that <math|a\<leqslant\><rsub|n>b> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|a,b|]>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\><rsub|n>x\<wedge\>x\<leqslant\><rsub|n>b|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<leqslant\>x<rsub|i>\<wedge\>x<rsub|i>\<leqslant\>b<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|]>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>>>|<row|<cell|<around*|[|a,b|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\><rsub|n>x\<wedge\>x\<less\><rsub|n>b|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<leqslant\>x<rsub|i>\<wedge\>x<rsub|i>\<less\>b<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|<around*|]|a,b|]>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\><rsub|n>x\<wedge\>x\<leqslant\><rsub|n>b|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<less\>x<rsub|i>\<wedge\>x<rsub|i>\<leqslant\>b<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|]>>>|<row|<cell|<around*|]|a,b|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\><rsub|n>x\<wedge\>x\<less\><rsub|n>b|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<less\>x<rsub|i>\<wedge\>x<rsub|i>\<less\>b<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|<around*|]|-\<infty\>,a|]>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x\<leqslant\><rsub|n>a|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<leqslant\>a<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|-\<infty\>,a<rsub|i>|]>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|]>>>|<row|<cell|<around*|]|-\<infty\>,a|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x\<less\>a|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<less\>a<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|-\<infty\>,a<rsub|i>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|[>>>|<row|<cell|<around*|[|a,\<infty\>|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\><rsub|n>x|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<leqslant\>x<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|[|a<rsub|i>,\<infty\>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,\<infty\>|[>>>|<row|<cell|<around*|]|a,\<infty\>|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\><rsub|n>x|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<less\>x<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|a<rsub|i>,\<infty\>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,\<infty\>|[>>>>>
    </eqnarray*>
  </definition>

  To simply notation we have also the following definitions:

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and <math|a,b\<in\>\<bbb-R\>> then we
    define the following sets

    <\enumerate>
      <item><math|<around*|[|a,b|]><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x<rsub|i>\<leqslant\>b|}>>

      <item><math|<around*|[|a,b|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x<rsub|i>\<less\>b|}>>

      <item><math|<around*|]|a,b|]><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x<rsub|i>\<leqslant\>b|}>>

      <item><math|<around*|]|a,b|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x<rsub|i>\<less\>b|}>>

      <item><math|<around*|]|-\<infty\>,a|]><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<leqslant\>a|}>>

      <item><math|<around*|]|-\<infty\>,a|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<less\>a|}>>

      <item><math|<around*|[|a,\<infty\>|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x<rsub|i>|}>>

      <item><math|<around*|]|a,\<infty\>|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x<rsub|i>|}>>
    </enumerate>
  </definition>

  We specify now the sufficient and necessary condition for a interval in
  <math|\<bbb-R\><rsup|n>> to be empty.

  <\lemma>
    <label|lemma 20.129.200>

    Let <math|n\<in\>\<bbb-N\>> and <math|a,b\<in\>\<bbb-R\><rsup|n>> with
    <math|a\<leqslant\>b> then we have\ 

    <\enumerate>
      <item><math|<around*|[|a,b|[>=\<emptyset\>\<Leftrightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      such that <math|a<rsub|i>=b<rsub|i>>>>

      <item><math|<around*|]|a,b|]>=\<emptyset\>\<Leftrightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      such that <math|a<rsub|i>=b<rsub|i>>>>

      <item><math|<around*|]|a,b|[>=\<emptyset\>\<Leftrightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      such that <math|a<rsub|i>=b<rsub|i>>>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item> As <math|<around*|[|a,b|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
      we have

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<around*|[|a,b|[>=\<emptyset\>>
        then by [theorem <reference|choice product sets empty condition>]
        <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>. If
        <math|a<rsub|i>\<less\>b<rsub|i>> then by [theorem:
        <reference|complex densitiy theorem>] there exists a
        <math|x\<in\>\<bbb-R\>> such that
        <math|a<rsub|i>\<less\>x\<less\>b<rsub|i>\<Rightarrow\>x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>>
        contradicting <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>,
        so we must have <math|a<rsub|i>\<geqslant\>b<rsub|i>>. As further
        <math|a\<leqslant\>b\<Rightarrow\>a<rsub|i>\<leqslant\>b<rsub|i>> it
        follows that <math|a<rsub|i>=b<rsub|i>>.

        <item*|<math|\<Leftarrow\>>>If there exists a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> with
        \ <math|a<rsub|i>=b<rsub|i>> then if
        <math|x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>> we have
        <math|<rigid|a<rsub|i>\<leqslant\>x\<wedge\>x\<less\>a<rsub|i>>>
        leading to the contradiction <math|a<rsub|i>\<less\>a<rsub|i>> so
        <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>. Hence using
        [theorem <reference|choice product sets empty condition>]
        <rigid|<math|<around*|[|a,b|[>=\<varnothing\>>>.
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<around*|]|a,b|]>=\<emptyset\>>
        then by [theorem <reference|choice product sets empty condition>]
        <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|<around*|]|a<rsub|i>,b<rsub|i>|]>=\<emptyset\>>. If
        <math|a<rsub|i>\<less\>b<rsub|i>> then by [theorem:
        <reference|complex densitiy theorem>] there exists a
        <math|x\<in\>\<bbb-R\>> such that
        <math|a<rsub|i>\<less\>x\<less\>b<rsub|i>\<Rightarrow\>x\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>>
        contradicting <math|<around*|]|a<rsub|i>,b<rsub|i>|]>=\<emptyset\>>,
        so we must have <math|a<rsub|i>\<geqslant\>b<rsub|i>>. As further
        <math|a\<leqslant\>b\<Rightarrow\>a<rsub|i>\<leqslant\>b<rsub|i>> it
        follows that <math|a<rsub|i>=b<rsub|i>>.

        <item*|<math|\<Leftarrow\>>>If there exists a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> with
        \ <math|a<rsub|i>=b<rsub|i>> then if
        <math|x\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>> we have
        <math|<rigid|a<rsub|i>\<less\>x\<wedge\>x\<leqslant\>a<rsub|i>>>
        leading to the contradiction <math|a<rsub|i>\<less\>a<rsub|i>> so
        <math|<around*|]|a<rsub|i>,b<rsub|i>|]>=\<emptyset\>>. Hence using
        [theorem <reference|choice product sets empty condition>]
        <rigid|<math|<around*|]|a,b|]>=\<varnothing\>>>.
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<around*|]|a,b|[>=\<emptyset\>>
        then by [theorem <reference|choice product sets empty condition>]
        <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|<around*|]|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>. If
        <math|a<rsub|i>\<less\>b<rsub|i>> then by [theorem:
        <reference|complex densitiy theorem>] there exists a
        <math|x\<in\>\<bbb-R\>> such that
        <math|a<rsub|i>\<less\>x\<less\>b<rsub|i>\<Rightarrow\>x\<in\><around*|]|a<rsub|i>,b<rsub|i>|[>>
        contradicting <math|<around*|]|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>,
        so we must have <math|a<rsub|i>\<geqslant\>b<rsub|i>>. As further
        <math|a\<leqslant\>b\<Rightarrow\>a<rsub|i>\<leqslant\>b<rsub|i>> it
        follows that <math|a<rsub|i>=b<rsub|i>>.

        <item*|<math|\<Leftarrow\>>>If there exists a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> with
        \ <math|a<rsub|i>=b<rsub|i>> then if
        <math|x\<in\><around*|]|a<rsub|i>,b<rsub|i>|[>> we have
        <math|<rigid|a<rsub|i>\<less\>x\<wedge\>x\<leqslant\>a<rsub|i>>>
        leading to the contradiction <math|a<rsub|i>\<less\>a<rsub|i>> so
        <math|<around*|]|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>. Hence using
        [theorem <reference|choice product sets empty condition>]
        <rigid|<math|<around*|]|a,b|]>=\<varnothing\>>>.
      </description>
    </enumerate>
  </proof>

  To be able to use half open intervals in <math|\<bbb-R\><rsup|n>> of the
  form <math|<around*|[|a,b|]>> to generate the Borel algebra on
  <math|\<bbb-R\><rsup|n>> we introduce Dyadic intervals. We prove then that
  any open sets in <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\>|\<rangle\>>>
  is a countable union of Diadic intervals. First we define the set of half
  open intervals on <math|\<bbb-R\><rsup|n>>

  <\definition>
    <label|measure half open intervals in R^n>Let <math|n\<in\>\<bbb-N\>>
    then <math|\<cal-R\><rsup|n>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\><rsup|n>\<wedge\>a\<less\>b|}>>

    <\note>
      Note as <math|a\<less\>b> we have by [lemma: <reference|lemma
      20.129.200>] that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|a<rsub|i>\<less\>b<rsub|i>> so that
      <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\>\<varnothing\>>.
    </note>
  </definition>

  The following lemma allows us to define a function that maps a element of
  <math|\<cal-R\><rsup|n>> to its endpoints. Using this we can define then
  the volume of elements of <math|\<cal-R\><rsup|n>>.

  <\lemma>
    <label|lemma 20.132.200>Let <math|n\<in\>\<bbb-N\>> and
    <math|I\<in\>\<cal-R\><rsup|n>> then there exist a
    <with|font-series|bold|unique> a <math|a,b\<in\>\<bbb-R\><rsup|n>> such
    that <math|I=<around*|[|a,b|[>>
  </lemma>

  <\proof>
    If <math|I\<in\>\<cal-R\><rsup|n>> then by definition of
    <math|\<cal-R\><rsup|n>> there exist a <math|a,b\<in\>\<bbb-R\><rsup|n
    >>with <math|a\<less\>b> such that <math|I=<around*|[|a,b|[>>. Assume
    that there exists also a <math|a<rprime|'>,b<rprime|'>\<in\>\<bbb-R\><rsup|n>>
    such that <math|I=<around*|[|a<rprime|'>,b<rprime|'>|[>>. Then
    <math|<rigid|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>>>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\>\<varnothing\>>, hence
    using [theorem: <reference|choice product equality>] we have that\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| that
      >\<varnothing\>\<neq\><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>
    </equation*>

    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as
    <math|\<varnothing\>\<neq\><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>>
    it follows from [theorem: <reference|generalized intervals and
    boundaries>] that <math|a<rsub|i>=a<rprime|'><rsub|i>> and
    <math|b<rsub|i>=b<rprime|'><rsub|i>> proving uniqueness..
  </proof>

  Thanks to the above lemma the following is well defined.

  <\definition>
    <label|measure begin end><index|begin><index|end><index|<math|v<rsup|n><around*|(|I|)>>>Let
    <math|n\<in\>\<bbb-N\>> then we define:\ 

    <\enumerate>
      <item><math|begin:\<cal-R\><rsup|n>\<rightarrow\>\<bbb-R\>> by
      <math|begin<around*|(|I|)>=a> where <math|I=<around*|[|a,b|[>>

      <item><math|end:\<cal-R\><rsup|n>\<rightarrow\>\<bbb-R\>> by
      <math|end<around*|(|I|)>=b> where <math|I=<around*|[|a,b|[>>

      <item><math|v<rsup|n>:\<cal-R\><rsup|n>\<rightarrow\><around*|[|0,\<infty\>|[>>
      where <math|v<rsup|n><around*|(|I|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|begin<around*|(|I|)><rsub|i>-end<around*|(|I|)><rsub|i>|)>>
    </enumerate>
  </definition>

  We introduce now Dyadic cubes that forms a countable subset of
  <math|\<cal-R\><rsup|n>>.

  <\definition>
    <label|measure Dyadic cubes><index|Dyadic interval><dueto|Dyadic
    Cubes>Let <math|n\<in\>\<bbb-N\>>, <math|m\<in\>\<bbb-N\><rsub|0>> then
    we define <math|\<cal-D\><rsup|n><rsub|m>> by\ 

    <\equation*>
      \<cal-D\><rsup|n><rsub|m>=<around*|{|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>\|z\<in\>\<bbb-Z\><rsup|n>|}>\<subseteq\>\<cal-R\><rsup|n>
    </equation*>

    Elements of <math|\<cal-D\><rsup|n><rsub|m>> are called Dyadic cubes of
    order <math|m>. Further <math|\<cal-D\><rsup|n>> defined by\ 

    <\equation*>
      \<cal-D\><rsup|n>=<big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>>\<cal-D\><rsup|n><rsub|m>\<subseteq\>\<cal-R\><rsup|n>
    </equation*>

    is the set of all Dyadic cubes.

    <\note>
      As <math|<frac|z|2<rsup|m>>\<less\><frac|z+1|2<rsup|m>>> we have that
      <math|<frac|z|2<rsup|m>>\<in\><around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>>
      so that Dyadic cubes are not empty.
    </note>
  </definition>

  <\lemma>
    <label|lemma 20.136.200>Let <math|k,l\<in\>\<bbb-N\><rsub|0>> with
    <math|k\<leqslant\>l>, <math|r,q\<in\>\<bbb-Z\>> then for
    <math|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|]>>,
    <math|<around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>\<neq\>\<emptyset\>>|<cell|\<Rightarrow\>>|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[>\<subseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>>|<row|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>=\<emptyset\>>|<cell|\<Rightarrow\>>|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[>\<nsubseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>>>>
    </eqnarray*>

    in other words. We have either <math|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>=\<emptyset\>>
    or <math|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[>\<subseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>
    but not both.
  </lemma>

  <\proof>
    Take <math|I=<around*|[|<frac|q|2<rsup|l>>,<frac|q+1|2<rsup|l>>|[>> and
    <math|J=<around*|[|<frac|r|2<rsup|k>>,<frac|r+1|2<rsup|k>>|[>>. As
    <math|k\<leqslant\>l> we have <math|0\<leqslant\>l-k=n>. Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|J>|<cell|=>|<cell|<around*|[|<frac|r|2<rsup|k>>,<frac|r+1|2<rsup|k>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|r|2<rsup|k>>\<cdot\><frac|2<rsup|l-k>|2<rsup|l-k>>,<frac|r+1|2<rsup|k>>\<cdot\><frac|2<rsup|l-k>|2<rsup|l-k>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|r\<cdot\>2<rsup|l-k>|2<rsup|l>>,<frac|r\<cdot\>2<rsup|l-k>+2<rsup|l-k>|2<rsup|l>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|r\<cdot\>2<rsup|n>|2<rsup|l>>,<frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>|[><eq-number><label|eq
      18.39.022>>>>>
    </eqnarray*>

    Assume that <math|I<big|cap>J\<neq\>\<emptyset\>> so that
    <math|\<exists\>x\<in\>I<big|cap>J> giving\ 

    <\equation>
      <label|eq 18.40.022><frac|q|2<rsup|l>>\<leqslant\>x\<less\><frac|q+1|2<rsup|l>>\<wedge\><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\>x\<less\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>
    </equation>

    If now <math|<frac|q+1|2<rsup|l>>\<leqslant\><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>>
    then <math|x\<less\><frac|q+1|2<rsup|l>>\<leqslant\><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\>x>
    giving the contradiction <math|x\<less\>x> so we must have\ 

    <\equation>
      <label|eq 18.41.022><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<less\><frac|q+1|2<rsup|l>>
    </equation>

    Further if <math|<frac|r\<cdot\>2<rsup|<rsup|n>>+2<rsup|n>|2<rsup|l>>\<leqslant\><frac|q|2<rsup|l>>>
    then <math|x\<less\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>\<leqslant\><frac|q|2<rsup|l>>\<leqslant\>x>
    giving the contradiction <math|x\<less\>x> again so we must have that\ 

    <\equation>
      <label|eq 18.42.022><frac|q|2<rsup|l>>\<less\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>
    </equation>

    Multiplying <reference|eq 18.41.022> and <reference|eq 18.42.022> by
    <math|2<rsup|l>> gives <math|r\<cdot\>2<rsup|n>\<less\>q+1\<wedge\>q\<less\>r\<cdot\>2<rsup|n>+2<rsup|n>>.
    As <math|r\<cdot\>2<rsup|n>,q+1,r\<cdot\>2<rsup|n>+2<rsup|n>\<in\>\<bbb-Z\>>
    we have by [theorem: <reference|complex x\<less\>y=\<gtr\>x+1\<less\>=y>]
    that <math|r\<cdot\>2<rsup|n>+1\<leqslant\>q+1\<wedge\>q+1\<leqslant\>r\<cdot\>2<rsup|n>+2<rsup|n>\<Rightarrow\>r\<cdot\>2<rsup|n>\<leqslant\>q\<wedge\>q+1\<leqslant\>r\<cdot\>2<rsup|n>+2<rsup|n>>.
    Dividing by <math|2<rsup|l>> gives:

    <\equation>
      <label|eq 18.43.022><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\><frac|q|2<rsup|l>>\<wedge\><frac|q+1|2<rsup|l>>\<leqslant\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>
    </equation>

    Next if <math|x\<in\>I<big|cap>J> then
    <math|<frac|q|2<rsup|l>>\<leqslant\>x\<less\><frac|q+1|2<rsup|l>>\<Rightarrowlim\><rsub|<text|<reference|eq
    18.43.022>>><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\>x\<less\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>>
    proving using <reference|eq 18.39.022> that <math|x\<in\>J>. Hence we
    have\ 

    <\equation*>
      <text|If >I<big|cap>J\<neq\>\<emptyset\><text| then >I\<subseteq\>J
    </equation*>

    Finally if <math|I<big|cap>J=\<emptyset\>> then if <math|I\<subseteq\>J>
    we have <math|\<emptyset\>=I<big|cap>J=I> a contradiction as
    <math|<frac|q|2<rsup|l>>\<in\>I>. Hence we have either
    <math|I<big|cap>J=\<emptyset\>> or <math|I\<subseteq\>J> but not both.
  </proof>

  <\theorem>
    <label|measure Dyadic cubes properties>Let <math|n\<in\>\<bbb-N\>> then
    we have\ 

    <\enumerate>
      <item><math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> and
      <math|\<forall\>R,Q\<in\>\<cal-D\><rsup|n><rsub|m>> with
      <math|R\<neq\>Q> we have <math|R<big|cap>Q=\<varnothing\>>

      <item>Let <math|k,l\<in\>\<bbb-N\><rsub|0>> with <math|k\<leqslant\>l>
      then if <math|R\<in\>\<cal-D\><rsup|n><rsub|l>> and
      <math|R\<in\>\<cal-D\><rsup|n><rsub|k>> we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<big|cap>Q\<neq\>\<varnothing\>>|<cell|\<Rightarrow\>>|<cell|R\<subseteq\>Q>>|<row|<cell|R<big|cap>Q=\<varnothing\>>|<cell|\<Rightarrow\>>|<cell|R\<nsubseteq\>Q>>>>
      </eqnarray*>

      <item><math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> we have that
      <math|\<bbb-R\><rsup|n>=<big|sqcup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R>
      [here <math|<big|sqcup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R> is a
      disjoint union because of (1)].

      <item><math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> and
      <math|\<forall\>R\<in\>\<cal-D\><rsup|n><rsub|m>> we have that
      <math|v<rsup|n><around*|(|R|)>=<frac|1|2<rsup|n\<cdot\>m>>\<less\>1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|m\<in\>\<bbb-N\><rsub|0>> and
      <math|R,Q\<in\>\<cal-D\><rsup|n><rsub|m>> with <math|R\<neq\>Q>. Then
      there exist <math|r,z\<in\>\<bbb-Z\><rsup|n>> such that

      <\equation*>
        R=<around*|[|<frac|r|2<rsup|m>>,<frac|r+1|2<rsup|m>>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>|2<rsup|m>>|[><text|
        and >Q=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>
      </equation*>

      As <math|R\<neq\>Q> there exist a <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      such that <math|<around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[>\<neq\><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>>,
      hence we must have that <math|r<rsub|i>\<neq\>z<rsub|i>>. We can always
      assume that <math|r<rsub|i>\<less\>z<rsub|i>> [if not exchange <math|R>
      and <math|Q>] so that <math|r<rsub|i>+1\<leqslant\>z<rsub|i>> [as
      <math|r<rsub|i>,z<rsub|i>\<in\>\<bbb-Z\>> we can use \ [theorem:
      <reference|complex x\<less\>y=\<gtr\>x+1\<less\>=y>]]. Assume that
      <math|x\<in\><around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>>
      then <math|<frac|r<rsub|i>|2<rsup|m>>\<leqslant\>x\<less\><frac|r<rsub|i>+1|2<rsup|m>>\<leqslant\><frac|z<rsub|i>|2<rsup|m>>\<leqslant\>x\<less\><frac|z<rsub|i>+1|2<rsup|m>>>
      leading to the contradiction <math|x\<less\>x> hence we must have that
      <math|<around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>=\<varnothing\>>.
      Using [theorem: <reference|choice product sets empty condition>] it
      follows that <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>|2<rsup|m>>|[><big|cap><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>>
      or\ 

      <\equation*>
        R<big|cap>Q=\<varnothing\>
      </equation*>

      <item>Let <math|k,l\<in\>\<bbb-N\><rsub|0>> with <math|k\<leqslant\>l>
      and <math|R\<in\>\<cal-D\><rsup|n><rsub|l>>,
      <math|Q\<in\>\<cal-D\><rsup|n><rsub|k>> then there exists
      <math|r,q\<in\>\<bbb-Z\><rsup|n>> with
      <math|R=<around*|[|<frac|r|2<rsup|m>>,<frac|r+1|2<rsup|m>>|[>>,
      <math|Q=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>>. Assume
      that <math|R\<nsubseteq\>Q> then we have either\ 

      <\description>
        <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\><around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>=\<varnothing\>>>Then
        using [theorem: <reference|choice product sets empty condition>] we
        have <math|R<big|cap>Q=\<varnothing\>>

        <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\><around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>\<neq\>\<varnothing\>>>Then
        using [lemma: <reference|lemma 20.136.200>] we have
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
        <math|<around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[>\<subseteq\><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>>.
        Applying [theorem: <reference|choice product inclusion (1)>] proves
        that <math|R\<subseteq\>Q> contradicting <math|R\<nsubseteq\>Q>. So
        this case never applies.
      </description>

      So we conclude that if <math|R\<nsubseteq\>\<bbb-Q\>> then
      <math|R<big|cap>Q=\<varnothing\>> or using contraposition we have\ 

      <\equation*>
        <text|If <math|R<big|cap>Q\<neq\>\<varnothing\><text| then
        <math|R\<subseteq\>Q>>>>
      </equation*>

      On the other hand if <math|R<big|cap>Q=\<varnothing\>> and
      <math|R\<subseteq\>Q> then <math|\<varnothing\>\<neq\>R=R<big|cap>Q=\<varnothing\>>
      s controdiction so we have\ 

      <\equation*>
        <text|If >R<big|cap>Q=\<varnothing\><text| then >R\<nsubseteq\>Q
      </equation*>

      <item>Let <math|m\<in\>\<bbb-N\>> and <math|x\<in\>\<bbb-R\><rsup|n>>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|x<rsub|i>\<in\>\<bbb-R\>>. Using [theorem: <reference|complex
      Archimedean property consequence (1)>] there exist a
      <math|z<rsub|i>\<in\>\<bbb-Z\>> such that
      <math|z<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>2<rsup|m>\<less\>z<rsub|i>+1>,
      hence <math|<frac|z<rsub|i>|2<rsup|m>>\<leqslant\>x<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|m>>>.
      So if we take <math|z=<around*|(|z<rsub|1>,\<ldots\>,z<rsub|m>|)>> then
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>\<in\>\<cal-D\><rsup|n><rsub|m>>
      proving that <math|\<bbb-R\><rsup|n>\<subseteq\><big|cup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R>.
      As <math|\<forall\>R\<in\>\<cal-D\><rsup|n><rsub|m>>
      <math|R\<subseteq\>R<rsup|n>> we have proved that\ 

      <\equation*>
        R<rsup|n>=<big|cup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R
      </equation*>

      Finally by (1) we have that <math|\<forall\>R,R<rprime|'>\<in\>\<cal-D\><rsup|n><rsub|m>>
      with <math|R\<neq\>R<rprime|'>> we have
      <math|R<big|cap>R<rprime|'>=\<varnothing\>> so that\ 

      <\equation*>
        R<rsup|n>=<big|sqcup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R
      </equation*>

      <item>If <math|R\<in\>\<cal-R\><rsup|n><rsub|m>> then
      <math|\<exists\>z\<in\>\<bbb-Z\><rsup|n>> such that
      <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>>
      so that\ 

      <\equation*>
        v<rsup|n><around*|(|R|)>=<big|prod><rsub|i=1><rsup|n><around*|(|<frac|z<rsub|i>+1-z<rsub|i>|2<rsup|m>>|)>=<big|prod><rsub|i=1><rsup|n><frac|1|2<rsup|m>>=<frac|1|2<rsup|n\<cdot\>m>>
      </equation*>
    </enumerate>
  </proof>

  One of the reasons that we introduce the Dyadic cubes as a subset of
  <math|\<cal-R\><rsup|n>> is that <math|\<cal-D\><rsup|n><rsub|m>> is a
  denumerable set in contrast with <math|\<cal-R\><rsup|n>> which we need
  giving the definition of a <math|\<sigma\>>-algebra. This is proved in the
  next lemma.

  <\lemma>
    <label|lemma 20.138.200>Let <math|n\<in\>\<bbb-N\>> then\ 

    <\enumerate>
      <item><math|\<forall\>m\<in\>\<bbb-N\><rsub|0>>
      <math|\<cal-D\><rsup|n><rsub|m>> is denumerable.

      <item><math|\<cal-D\><rsup|n>> is denumerable
    </enumerate>
  </lemma>

  <\proof>
    \;

    <\enumerate>
      <item>Let <math|m\<in\>\<bbb-N\><rsub|0>> then as <math|\<bbb-Z\>> is
      denumerable [see theorem: <reference|complex embedding>] we have by
      [theorem: <reference|denumerable product of finite family of
      denumerable sets is denumerable (1)>] that <math|\<bbb-Z\><rsup|n>> is
      also denumerable. Define now <math|\<beta\>:\<bbb-Z\><rsup|n>\<rightarrow\>\<cal-D\><rsup|n><rsub|m>>
      by <math|\<beta\><around*|(|z|)>=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>>
      then <math|\<beta\>> is a bijection.

      <\description>
        <item*|injectivity>If <math|\<beta\><around*|(|z|)>-\<beta\><around*|(|w|)>>
        then <math|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>=<around*|[|<frac|w|2<rsup|m>>,<frac|w+1|2<rsup|m>>|[>>.
        Using the fact that a Dyadic cube is not empty together with [lemma:
        <reference|lemma 20.132.200>] gives
        <math|<frac|z|2<rsup|m>>=<frac|w|2<rsup|m>>> proving that <math|z=w>.

        <item*|surjectivity>This follows from the definition of
        <math|\<cal-D\><rsup|n><rsub|m>>
      </description>

      So <math|\<cal-D\><rsup|n><rsub|m>> is denumerable.

      <item>Using [theorem: <reference|denumerable union of a denumerable
      family of denumerable sets is denumerable>] it follows that
      <math|\<cal-D\><rsup|n>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-D\><rsup|n><rsub|m>>
      is denumerable
    </enumerate>
  </proof>

  We are now finally ready to prove that every non empty open set on
  <math|\<bbb-R\><rsup|n>> can be written as a denumerable union of pairwise
  disjoint Dyadic cubes.

  <\lemma>
    <label|lemma 20.139.200>Let <math|n\<in\>\<bbb-N\>>,
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>> the canonical
    topology on <math|\<bbb-R\>> [see example: <reference|normed maximum norm
    R^n>] then if <math|\<varnothing\>\<neq\>U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>>
    there exist a <with|font-series|bold|pairwise disjoint family
    ><math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-D\><rsup|n>>
    such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>>.
  </lemma>

  <\proof>
    Let <math|\<varnothing\>\<neq\>U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>>
    be a non empty open set in <math|\<bbb-R\><rsup|n>>. Given
    <math|m\<in\>\<bbb-N\><rsub|0>> define\ 

    <\equation>
      <label|eq 20.93.200>\<cal-S\><rsub|m>=<around*|{|D\<in\>\<cal-D\><rsup|n><rsub|m>\|D\<subseteq\>U|}>\<subseteq\>\<cal-D\><rsup|n><rsub|m>
    </equation>

    and recursively\ 

    <\equation>
      <label|eq 20.94.200>\<cal-T\><rsub|m>=<choice|<tformat|<table|<row|<cell|S<rsub|0><text|
      if >m=0>>|<row|<cell|<around*|{|D\<in\>\<cal-S\><rsub|m>\|\<forall\>i\<in\><around*|{|0,\<ldots\>,m-1|}><text|
      we have >\<forall\>R\<in\>\<cal-T\><rsub|i><text| that
      >R<big|cap>D=\<varnothing\>|}><text| if >m\<in\>\<bbb-N\>>>>>>
    </equation>

    Using the above definitions we have the following inclusions

    <\equation>
      <label|eq 20.95.200>\<forall\>m\<in\>\<bbb-N\><rsub|0><text| we have
      >\<cal-T\><rsub|m>\<subseteq\>\<cal-S\><rsub|m>\<subseteq\>\<cal-D\><rsup|n><rsub|m>\<subseteq\>\<cal-D\><rsup|n>
    </equation>

    Further we define

    <\equation>
      <label|eq 20.96.200>\<cal-T\>=<big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>>\<cal-T\><rsub|m>
    </equation>

    If <math|D\<in\>\<cal-D\>> then there exist a
    <math|i\<in\>\<bbb-N\><rsub|0>> such that
    <math|D\<in\>\<cal-T\><rsub|i>\<subseteq\>\<cal-S\><rsub|i>> proving by
    [eq: <reference|eq 20.93.200>] that <math|D\<subseteq\>U>, hence we have\ 

    <\equation>
      <label|eq 20.97.200><big|cup><rsub|D\<in\>\<cal-T\>>D\<subseteq\>U
    </equation>

    Proving the opposite inclusion is a little more difficult. Let
    <math|x\<in\>U> then there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    such that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
    Using the Archimedean property of the real numbers [see theorem:
    <reference|complex Archimedean property consequence (1)>] there exist
    <math|n<rsub|\<varepsilon\>>\<in\>\<bbb-N\>> such that

    <\equation>
      <label|eq 20.98.200>0\<less\><frac|1|n<rsub|x>>\<less\>\<varepsilon\>
    </equation>

    Using [theorem: <reference|measure Dyadic cubes properties> (3)] there
    exist a <math|D<rsub|x>\<in\>\<cal-D\><rsup|n><rsub|n<rsub|x>>> such that

    <\equation*>
      D<rsub|x>=<around*|[|<frac|z|2<rsup|n<rsub|x>>>,<frac|z+1|2<rsup|n<rsub|x>>>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>,<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>|[>\<in\>\<cal-D\><rsup|n><rsub|n<rsub|x>><text|
      such that >x\<in\>D<rsub|x>
    </equation*>

    from which it follows that\ 

    <\equation>
      <label|eq 20.99.200>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have ><frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<leqslant\>x<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>
    </equation>

    Let <math|y\<in\>D<rsub|x>> then <math|y\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>,<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>|[>>
    so that

    <\equation>
      <label|eq 20.100.200>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have ><frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<leqslant\>y<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>
    </equation>

    Hence we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<rsub|i>-x<rsub|i>>|<cell|<below|\<less\>|<text|[eq:
      <reference|eq 20.100.200>>>>|<cell|<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-x<rsub|i>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.99.200>]>>>|<cell|<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|<below|\<less\>|<text|[eq:
      <reference|eq 20.98.200>>>>|<cell|\<varepsilon\>>>|<row|<cell|x<rsub|i>-y<rsub|i>>|<cell|<below|\<less\>|<text|[eq:
      <reference|eq 20.99.200>]>>>|<cell|<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-y<rsub|i>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.100.200>>>>|<cell|<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|<below|\<less\>|<text|[eq:
      <reference|eq 20.98.200>>>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    which proves that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|\||y<rsub|i>-x<rsub|i>|\|>\<less\>\<varepsilon\>>. Hence
    <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|n>=max<around*|(|<around*|{|<around*|\||y<rsub|i>-x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<varepsilon\>>
    so that <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|x,\<varepsilon\>|)>>.
    In conclusion\ 

    <\equation*>
      x\<in\>D<rsub|x>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U
    </equation*>

    As <math|D<rsub|x>\<in\>\<cal-D\><rsup|n><rsub|n<rsub|x>>> it follows
    from the above and [eq: <reference|eq 20.93.200>] that

    <\equation>
      <label|eq 20.101.200>x\<in\>D<rsub|x>\<in\>S<rsub|n<rsub|x>>
    </equation>

    Define now\ 

    <\equation>
      <label|eq 20.102.200>\<cal-K\><rsub|x>=<around*|{|i\<in\><around*|{|0,\<ldots\>,n<rsub|x>|}>\|\<exists\>D\<in\>\<cal-S\><rsub|i>\|x\<in\>D|}>\<subseteq\><around*|{|0,\<ldots\>,n<rsub|x><rsub|>|}>
    </equation>

    Then by [eq: <reference|eq 20.101.200>]
    <math|n<rsub|x>\<in\>\<cal-K\><rsub|x>> so that
    <math|\<cal-K\><rsub|x>\<neq\>\<varnothing\>>, as further
    <math|\<cal-K\><rsub|x>> is finite it follows that\ 

    <\equation>
      <label|eq 20.103.200>m<rsub|x>=min<around*|(|\<cal-K\><rsub|x>|)><text|
      exist>
    </equation>

    For <math|m<rsub|x>\<in\>\<cal-K\><rsub|x>\<subseteq\><around*|{|0,\<ldots\>,n<rsub|x>|}>>
    we have now two possible cases:\ 

    <\description>
      <item*|<math|m<rsub|x>=0>>then <math|\<exists\>D\<in\>S<rsub|0>> such
      that <math|x\<in\>D>. As by [eqs: <reference|eq 20.94.200>,
      <reference|eq 20.96.200>] <math|S<rsub|0>=\<cal-T\><rsub|0>> and
      <math|\<cal-T\><rsub|0>\<in\>\<cal-T\>> we that
      <math|x\<in\>D\<in\>\<cal-T\>>. In other words
      <math|x\<in\><big|cup><rsub|D\<in\>\<cal-T\>>D>.

      <item*|<math|m<rsub|x>\<in\><around*|{|1,\<ldots\>,n<rsub|x>|}>>>Then
      <math|\<exists\>D\<in\>\<cal-S\><rsub|m<rsub|x>><below|\<subseteq\>|<text|[eq:
      <reference|eq 20.93.200>]>>\<cal-D\><rsup|n><rsub|m<rsub|x>>> such that
      <math|x\<in\>D> and <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,m<rsub|x>-1|}>>
      we have that <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> that
      <math|x\<nin\>R>. Let <math|i\<in\><around*|{|0,\<ldots\>,m<rsub|x>-1|}>>
      and assume that <math|\<exists\>R\<in\>\<cal-S\><rsub|i>\<subseteq\>\<cal-D\><rsup|n><rsub|i>>
      such that <math|R<big|cap>D\<neq\>\<varnothing\>> then by [theorem:
      <reference|measure Dyadic cubes properties> (2)] and the fact that
      <math|i\<leqslant\>m<rsub|x>> it follows that <math|D\<subseteq\>R>, as
      <math|x\<in\>D> it follows that <math|x\<in\>R> contradicing
      <math|x\<nin\>R> hence the assumption is wrong and we must have that
      <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> we have that
      <math|R<big|cap>D=\<varnothing\>>. As this is true
      <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,m<rsub|x>-1|}>> it
      follows from [definition: <reference|eq 20.94.200>] that
      <math|D\<in\>\<cal-T\><rsub|m<rsub|x>><below|\<subseteq\>|<text|[eq:
      <reference|eq 20.96.200>]>>\<cal-T\>>. In other words we have
      <math|x\<in\>D\<in\>\<cal-T\>> which proves that
      <math|x\<in\><big|cup><rsub|D\<in\>\<cal-T\>>D>.
    </description>

    So in all cases we have that <math|x\<in\><big|cup><rsub|D\<in\>\<cal-T\>>D>
    which as <math|x\<in\>U> was chosen arbitrary proves that
    <math|<rigid|U\<subseteq\><big|cup><rsub|D\<in\>\<cal-T\>>D>>. Combining
    this with [eq: <reference|eq 20.96.200>] proves that\ 

    <\equation>
      <label|eq 20.104.200>U=<big|cup><rsub|D\<in\>\<cal-T\>>D
    </equation>

    Next we must prove that <math|U> is a pairwise disjoint union. Let
    <math|D,E\<in\>\<cal-T\>=<big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>>\<cal-T\><rsub|m>>
    with <math|D\<neq\>E> then there exist <math|k,l\<in\>\<bbb-N\><rsub|0>>
    such that <math|D\<in\>\<cal-T\><rsub|k>\<subseteq\>\<cal-D\><rsup|n><rsub|k>>
    and <math|E\<in\>\<cal-T\><rsub|l>\<subseteq\>\<cal-D\><rsup|n><rsub|l>>.
    For <math|k,l> we have the following possible cases:

    <\description>
      <item*|<math|k=l>>Then using [theorem: <reference|measure Dyadic cubes
      properties> (1)] it follows that <math|D<big|cap>E=\<varnothing\>>.

      <item*|<math|k\<less\>l>>Then using [eq: <reference|eq 20.94.200>] that
      <math|D<big|cap>E=\<varnothing\>>.

      <item*|<math|l\<less\>k>>Then using [eq: <reference|eq 20.94.200>] that
      <math|D<big|cap>E=\<varnothing\>>.
    </description>

    combining the above with [eq: <reference|eq 20.104.200>] gives then\ 

    <\equation>
      <label|eq 20.105.200>\<forall\>D,E\<in\>\<cal-T\><text| with
      >D\<neq\>E<text| we have >D<big|cap>E=\<varnothing\>
    </equation>

    Next we prove that <math|\<cal-T\>> is denumerable, first we prove that
    <math|\<cal-T\>> is not finite (hence by definition infinite). Assume
    that <math|\<cal-T\>> is finite. As <math|U\<neq\>\<varnothing\>> we must
    have that <math|\<cal-T\>\<neq\>\<varnothing\>> [because
    <math|<big|cup><rsub|D\<in\>\<varnothing\>>D=\<varnothing\>>] so that
    <math|m=min<around*|(|<around*|{|<around*|(|begin<around*|(|D|)>|)><rsub|1>\|D\<in\>\<cal-T\>|}>|)>>
    exist. Hence there exist a <math|R=<around*|[|a,b|[>\<in\>\<cal-T\>> such
    that <math|a<rsub|1>=m>. As <math|a\<in\><around*|[|a,b|[>=R> and by [eq:
    <reference|eq 20.105.200>] <math|R\<subseteq\>U> it follows that
    <math|a\<in\>U>. Hence there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    such that <math|a\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|a,\<varepsilon\>|)>\<subseteq\>U>.
    Define <math|e> by <math|<around*|(|e|)><rsub|i>=<choice|<tformat|<table|<row|<cell|1<text|
    i=1>>>|<row|<cell|0<text| if >i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>>
    then for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have

    <\equation*>
      <around*|\||<around*|(|a-<around*|(|a-<frac|\<varepsilon\>|2>\<cdot\>e|)>|)><rsub|i>|\|>=<around*|\||<frac|\<varepsilon\>|2>\<cdot\>e<rsub|i>|\|>=<around*|\||<frac|\<varepsilon\>|2>|\|>\<cdot\><around*|\||<choice|<tformat|<table|<row|<cell|1<text|
      if >i=1>>|<row|<cell|0<text| if >i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>|\|>\<leqslant\><frac|\<varepsilon\>|2>\<less\>\<varepsilon\>
    </equation*>

    so that <math|<around*|\<\|\|\>|a-<around*|(|a-<frac|\<varepsilon\>|2>\<cdot\>e|)>|\<\|\|\>><rsub|n>\<less\>\<varepsilon\>>.
    Hence <math|a-<frac|\<varepsilon\>|2>\<cdot\>e\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|a,\<varepsilon\>|)>\<subseteq\>U>
    then by [eq: <reference|eq 20.105.200>] there exist a
    <math|D<rprime|'>\<in\>\<cal-T\>> such that
    <math|a-<frac|\<varepsilon\>|2>\<cdot\>e\<in\>D<rprime|'>>. As
    <math|D<rprime|'>=<around*|[|begin<around*|(|D<rprime|'>|)>,end<around*|(|D<rprime|'>|)>|[>>
    it follows that <math|begin<around*|(|D<rprime|'>|)>\<leqslant\>a-<frac|\<varepsilon\>|2>\<cdot\>e>
    so that <math|<around*|(|begin<around*|(|D<rprime|'>|)>|)><rsub|1>\<leqslant\><around*|(|a-<frac|\<varepsilon\>|2>\<cdot\>e|)><rsub|1>=a<rsub|1>-<frac|\<varepsilon\>|2>\<cdot\>1=m-<frac|\<varepsilon\>|2>>.
    As <math|m=min<around*|(|<around*|{|<around*|(|begin<around*|(|D|)>|)><rsub|1>\|D\<in\>\<cal-T\>|}>|)>>
    <math|<rigid|m\<leqslant\><around*|(|begin<around*|(|D<rprime|'>|)>|)><rsub|1>>>
    which leads to the contradiction <math|m\<leqslant\>m-<frac|\<varepsilon\>|2>\<less\>m>,
    so the assumption is wrong and we must have that\ 

    <\equation>
      <label|eq 20.106.200>\<cal-T\><text| is not finite or
      <math|\<cal-T\><text| is infinite>>>
    </equation>

    As <math|\<cal-D\><rsup|n>> is denumerable [see theorem: <reference|lemma
    20.138.200>] and <math|\<cal-T\><below|\<subseteq\>|<text|[eq:
    <reference|eq 20.95.200>]>>\<cal-D\><rsup|n>> it follows from the above
    and [theorem: <reference|denumerable every subset is finite
    denumerable.>] that\ 

    <\equation*>
      \<cal-T\><text| is denumerable>
    </equation*>

    So there exist a bijection <math|\<beta\>:\<bbb-N\>\<rightarrow\>\<cal-T\>>.
    define then <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\>\<subseteq\>\<cal-D\><rsup|n>>
    by <math|D<rsub|i>=\<beta\><around*|(|i|)>> then we have\ 

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|family union of family set and
      surjections>]>><big|cup><rsub|D\<in\>\<cal-T\>>D=U
    </equation*>

    Further if <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> then as
    <math|\<beta\>> is a bijection, hence injective, it follows that
    <math|D<rsub|i>\<neq\>D<rsub|j>>, so that using [eq: <reference|eq
    20.105.200>] we have <math|D<rsub|i><big|cap>D<rsub|j>=\<varnothing\>>.
    Hence\ 

    <\equation*>
      U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 20.141.200>Let <math|n\<in\>\<bbb-N\>> and
    <math|R\<in\>\<cal-R\><rsup|n>> with <math|R\<neq\>\<varnothing\>> then
    there exist a sequence <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>>
    of open sets such that <math|R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>
  </lemma>

  <\proof>
    As <math|R\<in\>\<cal-R\><rsup|n>> there exists a
    <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b> such that
    <math|R=<around*|[|a,b|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>.
    Define then <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|U<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|j>-<frac|1|j>,b<rsub|j>|[>>.
    As \ <math|<around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>
    [see theorem: <reference|normed basis of T\|\|>] and
    <math|T<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>> is the product
    topology based on <math|\<cal-T\><rsub|<around*|\|||\|>>> [see
    <reference|normed maximum norm R^n>] it follows that
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>>.
    Let <math|i\<in\>\<bbb-N\>> and <math|x\<in\>R> then we have
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|x<rsub|j>\<in\><around*|[|a<rsub|j>,b<rsub|j>|[>\<Rightarrow\>a<rsub|j>\<leqslant\>x<rsub|j>\<less\>b<rsub|j>\<Rightarrow\>a<rsub|j>-<frac|1|i>\<less\>a<rsub|j>\<leqslant\>x<rsub|j>\<less\>b<rsub|j>\<Rightarrow\>x<rsub|j>\<in\><around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>>,
    proving using [theorem: <reference|choice product inclusion (1)>] that
    <math|R\<subseteq\>U<rsub|i>>. Hence we have\ 

    <\equation>
      <label|eq 20.107.200>R\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>
    </equation>

    For the opposite inequality let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>
    then <math|\<forall\>i\<in\>\<bbb-N\>> we have <math|x\<in\>U<rsub|i>> so
    that <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<rsub|j>\<in\><around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>\<Rightarrow\>a<rsub|j>-<frac|1|i>\<less\>x<rsub|j>\<less\>b<rsub|j>>.
    Assume that <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x<rsub|j>\<less\>a<rsub|j>> then using [theorem: <reference|complex
    Archimedean property consequence (1)>] there exists a
    <math|i\<in\>\<bbb-N\>> such that <math|x<rsub|j>\<less\>x<rsub|j>+<frac|1|i>\<less\>a<rsub|j>\<Rightarrow\>x<rsub|j>\<less\>a<rsub|j>-<frac|1|i>>
    contradicting the fact that <math|a<rsub|j>-<frac|1|i>\<less\>x<rsub|j>>.
    Hence <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|a<rsub|j>\<leqslant\>x<rsub|j>\<less\>b<rsub|j>> proving that
    <math|x\<in\>R> so that <math|<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>\<subseteq\>R>.
    This together with [eq: <reference|eq 20.107.200>] proves

    <\equation*>
      R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>
    </equation*>
  </proof>

  We are ready now to prove a alternative definition for the Borel algebra on
  <math|\<bbb-R\><rsup|n>>.

  <\theorem>
    <label|measure Borel algebra on R^n (equivalences)>Let
    <math|n\<in\>\<bbb-N\>> then we have\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\><rsup|n>\|C<text|
      is close in >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|}>|]>=\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|measure Borel algebra and closure>] we have

    <\equation*>
      \<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\><rsup|n>\|C<text|
      is close in >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|}>|]>\<equallim\><rsub|<text|[theorem:
      <reference|measure Borel algebra and
      closure>]>>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>\<equallim\><rsub|def>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation*>

    so we only have to prove that <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>.
    Let <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>>
    then we have either:\ 

    <\description>
      <item*|<math|U=\<varnothing\>>>Then
      <math|U=\<varnothing\>\<in\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>.

      <item*|<math|U\<neq\>\<varnothing\>>>Then using [lemma:
      <reference|lemma 20.139.200>] there exist a sequence
      <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-D\><rsup|n>\<subseteq\>\<cal-R\><rsup|n>>
      such that <math|U=<big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>> which as
      <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>> is a
      <math|\<sigma\>>-algebra proves that
      <math|U\<in\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    </description>

    Hence we have <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    which by [theorem: <reference|measure generated sigma algebra>] gives

    <\equation>
      <label|eq 20.108.200>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>
    </equation>

    For the opposite inclusion let <math|R\<in\>\<cal-R\><rsup|n>> then by
    [lemma: <reference|lemma 20.141.200>] there exist a
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>>
    such that <math|R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>. As
    <math|\<sigma\><around*|[|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>>
    is a <math|\<sigma\>>-alebra we have by [theorem: <reference|measure
    countable union is in sigma algebra>] that
    <math|R\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>>.
    Hence <math|\<cal-R\><rsup|n>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>>
    which by [theorem: <reference|measure generated sigma algebra>] gives
    <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>>.
    Combining this with [eq: <reference|eq 20.108.200>] gives\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>\<equallim\><rsub|def>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|]>=\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation*>
  </proof>

  <section|Measures>

  <subsection|Measure definition and properties>

  For a measurable space we have some simplication in the definitions of
  additivity, sub-additivity, countable additivity and countable
  sub-additivity bexause of the extra properties of a
  <math|\<sigma\>>-algebra.

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space [see definition: <reference|measure measurable space>] and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|[>> a function
    then we say that:\ 

    <\enumerate>
      <item><math|\<mu\>> is <with|font-series|bold|finite additive
      ><math|\<Leftrightarrow\>> for every <with|font-series|bold|pairwise
      disjoint> families <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      where <math|n\<in\>\<bbb-N\>> we have\ 

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|finite sub-additive>
      <math|\<Leftrightarrow\>> for every
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\>> we have that\ 

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|countable additive
      ><math|\<Leftrightarrow\>> for all <with|font-series|bold|pairwise
      disjoint> <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have that\ 

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|countable sub-additive>
      <math|if\<Leftrightarrow\>> for all
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have\ 

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from the fact that
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      we have as <math|\<cal-A\>> is a <math|\<sigma\>>-algebra that
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>
      and the definition of additivity [see definition: <reference|measure
      additive set function>].

      <item>This follows from the fact that
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      we have as <math|\<cal-A\>> is a <math|\<sigma\>>-algebra that
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>
      and the definition of sub-additivity [see definition:
      <reference|measure sub-additive set function>].

      <item>This follows from the fact that
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have as <math|\<cal-A\>> is a <math|\<sigma\>>-algebra that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>> and the
      definition of countable additivity [see definition: <reference|measure
      countable additive set function>].

      <item>This follows from the fact that
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have as <math|\<cal-A\>> is a <math|\<sigma\>>-algebra that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>> and the
      definition of countable sub-additivity [see definition:
      <reference|measure countable sub-additive set function>].
    </enumerate>
  </proof>

  Using mathematical induction it is easy to specify a neccesary and
  sufficient condition for finite additivity and finite sub additivity.

  <\lemma>
    <label|label 20.147.200>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space and <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a function then we have

    <\enumerate>
      <item><math|\<mu\>> is finate additive <math|\<Leftrightarrow\>>
      <math|\<forall\>A,B\<in\>\<cal-A\>> with
      <math|A<big|cap>B=\<emptyset\>> we have
      <math|\<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>

      <item><math|\<mu\>> is finite sub additive <math|\<Leftrightarrow\>>
      \ <math|\<forall\>A,B\<in\>\<cal-A\>> we have
      <math|\<mu\><around*|(|A<big|cup>B|)>\<leqslant\>\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>
    </enumerate>
  </lemma>

  <\proof>
    \;

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|A,B\<in\>\<cal-A\>> with
        <math|A<big|cap>B=\<emptyset\>> then
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>>
        defined by <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if
        i=1>>|<row|<cell|B if i=2>>>>>>is pairwise disjoint and
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>\<subseteq\>\<cal-A\>>.
        So by assumption we have that\ 

        <\equation*>
          \<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|2>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>+\<mu\><around*|(|A<rsub|2>|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>
        </equation*>

        <item*|<math|\<Leftarrow\>>>Let

        <\equation*>
          \<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|<math|If
          >><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\><text|
          is a pairwise disjoint family then we have that
          ><rigid|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum>\<mu\><around*|(|A<rsub|i>|)>>|}>
        </equation*>

        then we have:

        <\description>
          <item*|<math|1\<in\>\<cal-S\>>>Let
          <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>\<cal-A\>>
          then <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|A<rsub|i>|)>>
          proving that <math|1\<in\>\<cal-S\>>

          <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
          <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-A\>>
          be pairwise disjoint. Take <math|<rigid|A=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>>
          and <math|B=A<rsub|n+1>>, then <math|A<big|cup>B=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>>
          and <rigid|<math|A<big|cap>B=<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i><big|cap>A<rsub|i+1>|)>=\<emptyset\>>>.
          Hence we have

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|A<big|cup>B|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>+\<mu\><around*|(|A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>|)>+\<mu\><around*|(|A<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>\<mu\><around*|(|A<rsub|i>|)>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>\<cal-S\>>.
        </description>

        Using mathematical induction we have that <math|\<bbb-N\>=\<cal-S\>>.
        So <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
        pairwise disjoint we have <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|A,B\<in\>\<cal-A\>> then
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>>
        defined by <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if
        i=1>>|<row|<cell|B if i=2>>>>>>satisfies
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>\<subseteq\>\<cal-A\>>.
        So by assumption we have that\ 

        <\equation*>
          \<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|2>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>+\<mu\><around*|(|A<rsub|2>|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>
        </equation*>

        <item*|<math|\<Leftarrow\>>>Let

        <\equation*>
          \<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|\<forall\>><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\><text|
          we have >\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>|}>
        </equation*>

        then:

        <\description>
          <item*|<math|1\<in\>\<cal-S\>>>Let
          <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>\<cal-A\>>
          then <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|A<rsub|i>|)>>
          proving that <math|1\<in\>\<cal-S\>>

          <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
          <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-A\>>
          pairwise disjoint. Take <math|A=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
          and <math|B=A<rsub|n+1>>, then <math|A<big|cup>B=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>>
          . Hence we have

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|A<big|cup>B|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>+\<mu\><around*|(|A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>|)>+\<mu\><around*|(|A<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>\<mu\><around*|(|A<rsub|i>|)>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>\<cal-S\>>.
        </description>

        Using mathematical induction we have that <math|\<bbb-N\>=\<cal-S\>>.
        So <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
        \ we have <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|measure countable additivity implies additivity>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    then if <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    satisfies:\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<varnothing\>|)>=0>

      <item><math|\<mu\>> is countable additive
    </enumerate>

    then <math|\<mu\>> is additive.
  </theorem>

  <\proof>
    This was actually proved in [theorem: <reference|measure countable
    additivity implies additivity>].
  </proof>

  <\definition>
    <label|measure measure definition>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    then <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> is a
    measure on <math|\<cal-A\>> if\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<varnothing\>|)>=0>

      <item>For every <with|font-series|bold|pairwise disjoint>
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have\ 

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      [in other word <math|\<mu\>> is countable additve].
    </enumerate>
  </definition>

  A trivial example of a measure is the following.

  <\example>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space then <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<mu\><around*|(|A|)>=0> is a measure on
    <math|\<cal-A\>>.
  </example>

  <\proof>
    We have\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<varnothing\>|)>=0>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      then <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>0\<equallim\><rsub|<text|[example:
      <reference|extended infinite sum of zero
      elements>]>>0=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>
    </enumerate>
  </proof>

  <\definition>
    <label|measure measure space><index|measure
    space><index|<math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>><dueto|Measure
    Space>A measure space is a triple <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    where <math|\<cal-A\>> is a <math|\<sigma\>>-algebra on <math|X> and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> is a
    measure on <math|\<cal-A\>>.
  </definition>

  <\theorem>
    <label|measure sum amd scalar product of measures>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measureable space
    then we have:\ 

    <\enumerate>
      <item>If <math|\<mu\><rsub|1>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
      and <math|\<mu\><rsub|2>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
      are measures on <math|\<cal-A\>> then

      <\equation*>
        \<mu\><rsub|1>+\<mu\><rsub|2>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]><text|
        defined by ><around*|(|\<mu\><rsub|1>+\<mu\><rsub|2>|)><around*|(|A|)>=\<mu\><rsub|1><around*|(|A|)>+\<mu\><rsub|2><around*|(|A|)>
      </equation*>

      is a measure on <math|\<cal-A\>>.

      <item>If <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
      is a measure on <math|\<cal-A\>> and
      <math|\<alpha\>\<in\><around*|[|0,\<infty\>|]>> then\ 

      <\equation*>
        \<alpha\>\<cdot\>\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]><text|
        defined by ><around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|A|)>=\<alpha\>\<cdot\>\<mu\><around*|(|A|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First we have\ 

      <\equation*>
        <around*|(|\<mu\><rsub|1>+\<mu\><rsub|2>|)><around*|(|\<emptyset\>|)>=\<mu\><rsub|1><around*|(|\<emptyset\>|)>+\<mu\><rsub|2><around*|(|\<emptyset\>|)>=0+0=0
      </equation*>

      Secondly if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      is pairwise disjoint then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<mu\><rsub|1>+\<mu\><rsub|2>|)><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><rsub|1><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>+\<mu\><rsub|2><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsub|1><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsub|2><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended infinite sum properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsub|1><around*|(|A<rsub|i>|)>+\<mu\><rsub|2><around*|(|A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsub|1>+\<mu\><rsub|2>|)><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      proving that <math|\<mu\><rsub|1>+\<mu\><rsub|2>> is a measure.

      <item>First we have\ 

      <\equation*>
        <around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|\<emptyset\>|)>=\<alpha\>\<cdot\>\<mu\><around*|(|\<emptyset\>|)>=\<alpha\>\<cdot\>0=0
      </equation*>

      Secondly if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      is pairwise disjoint then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended infinite sum properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      proving that <math|\<alpha\>\<cdot\>\<mu\>> is a measure.
    </enumerate>
  </proof>

  <\theorem>
    <label|measure on sub sigma algebra>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    and let <math|\<cal-B\>> a <math|\<sigma\>>-algebra on <math|X> such that
    <math|\<cal-B\>\<subseteq\>\<cal-A\>> then
    <math|<around*|\<langle\>|X,\<cal-B\>,\<mu\><rsub|\|\<cal-B\>>|\<rangle\>>>
    is a measure space.
  </theorem>

  <\proof>
    As <math|\<cal-B\>> is already a <math|\<sigma\>>-algebra on <math|X> we
    only have to proof that <math|\<mu\><rsub|\|\<cal-B\>>> is a measure on
    <math|\<cal-B\>>.\ 

    <\enumerate>
      <item>As <math|\<emptyset\>\<in\>\<cal-B\>\<subseteq\>\<cal-A\>> we
      have <math|\<mu\><rsub|\|\<cal-B\>><around*|(|\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|><math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\>\<subseteq\>\<cal-A\>>
      is a pairwise disjoint family then

      <\equation*>
        \<mu\><rsub|\|\<cal-B\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsub|\|\<cal-B\>><around*|(|A<rsub|i>|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|measure measure on A\|B>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and <math|B\<in\>\<cal-A\>> then
    <math|<around*|\<langle\>|B,\<cal-A\><rsub|\|B>,\<mu\><rsub|\|\<cal-A\><rsub|\|B>>|\<rangle\>>>
    is a measure space. Here <math|\<cal-A\><rsub|\|B>=<around*|{|C\<in\>\<cal-A\>\|C\<subseteq\>B|}>>
    and <math|><math|\<mu\><rsub|\|\<cal-A\><rsub|\|B>>> is <math|\<mu\>>
    restricted to <math|\<cal-A\><rsub|\|B>>.
  </theorem>

  <\proof>
    Using [theorem: <reference|measure sub measure space>]
    <math|\<cal-A\><rsub|\|B>> is a <math|\<sigma\>>-algebra on <math|X>.
    Further <math|\<cal-A\><rsub|\|B>=<around*|{|C\<in\>\<cal-A\>\|C\<subseteq\>B|}>\<subseteq\>\<cal-A\>>
    so that by the previous theorem [theorem: <reference|measure on sub sigma
    algebra>] <math|\<mu\><rsub|\|\<cal-A\><rsub|\|B>>> is a measure on
    <math|\<cal-A\><rsub|\|B>>.
  </proof>

  <\theorem>
    <label|measure measure space properties (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then\ 

    <\enumerate>
      <item><math|\<forall\>A,B\<in\>\<cal-A\>> with <math|A\<subseteq\>B> we
      have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> with <math|A\<subseteq\>B>
      and <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> we have
      <math|\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>-\<mu\><around*|(|A|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|A\<subseteq\>B> then
      <math|A<big|cap><around*|(|B\\A|)>=\<varnothing\>> and
      <math|B=A<big|cup><around*|(|B\\A|)>> so that by [theorem:
      <reference|measure countable additivity implies additivity>] we have\ 

      <\equation*>
        \<mu\><around*|(|B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>
      </equation*>

      Further as <math|0\<leqslant\>\<mu\><around*|(|B\\A|)>> we have by
      [theorem: <reference|extended 0\<less\>=y and z=x+y then x\<less\>=z>]
      that <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>.

      <item>If <math|A\<subseteq\>B> and <math|\<mu\><around*|(|A|)>\<less\>\<infty\>>
      then as <math|0\<leqslant\>\<mu\><around*|(|A|)>> we have that
      <math|\<mu\><around*|(|A|)>\<in\>\<bbb-R\>>, further by (1)

      <\equation*>
        \<mu\><around*|(|B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>
      </equation*>

      so that by [theorem: <reference|extended x+z=y+z=\<gtr\>x-y>]
      <math|\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>-\<mu\><around*|(|A|)>>.
    </enumerate>
  </proof>

  \;

  <\definition>
    <label|measure finite measure><index|finite measure>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then <math|\<mu\>> is a <with|font-series|bold|finite measure> if
    <math|\<mu\><around*|(|X|)>\<less\>\<infty\>>
  </definition>

  We have the following equivalent definition of a finite measure.

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space\ 

    <\equation*>
      \<mu\><text| is a finite measure >\<Leftrightarrow\><text|
      >\<forall\>A\<in\>\<cal-A\><text| we have
      >\<mu\><around*|(|A|)>\<less\>\<infty\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|A\<in\>\<cal-A\>> then
      <math|A\<subseteq\>X> so that by [theorem: <reference|measure measure
      space properties (1)>] <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|X|)>\<less\>\<infty\>>.

      <item*|<math|\<Leftarrow\>>>If <math|\<forall\>A\<in\>\<cal-A\>>
      <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> we have as
      <math|X\<in\>\<cal-A\>> that <math|\<mu\><around*|(|X|)>\<less\>\<infty\>>.
    </description>
  </proof>

  <\definition>
    <label|measure sigma finite measure space><index|<math|\<sigma\>>-finite
    measure space>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then <math|\<mu\>> is a
    <with|font-series|bold|<math|\<sigma\>>-><with|font-series|bold|finite
    measure> if there exist a <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    such that <math|\<forall\>i\<in\>\<bbb-N\>>
    <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> and
    <math|X=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>.
  </definition>

  Next we prove that countable additivity implies sub additivity.

  \;

  <\theorem>
    <label|measure countable additivity implies sub additivity>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    then there exist a <with|font-series|bold|pairwise disjoint family>
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    such that

    <\equation*>
      \<forall\>i\<in\>\<bbb-N\><text| we have
      >B<rsub|i>\<subseteq\>A<rsub|i>
    </equation*>

    and\ 

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Using [lemma: <reference|lemma 20.161.201>] we have for
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> defined by

    <\equation*>
      B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1><text| if
      >i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j><text|
      if >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>
    </equation*>

    that\ 

    <\equation*>
      \<forall\>i\<in\>\<bbb-N\><text| we have
      >B<rsub|i>\<subseteq\>A<rsub|i>
    </equation*>

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>
    </equation*>

    and

    <\equation*>
      \<forall\>i,j\<in\>\<bbb-N\><text| with >i\<neq\>j<text| then
      >B<rsub|i><big|cap>B<rsub|j>\<neq\>\<varnothing\>
    </equation*>

    Let <math|i\<in\>\<bbb-N\>> then we have either:

    <\description>
      <item*|<math|i=1>>Then <math|B<rsub|i>=B<rsub|1>=A<rsub|1>\<in\>\<cal-A\>>

      <item*|<math|1\<less\>i>>Then by [theorems: <reference|measure sigma
      algebra equivalences>, <reference|measure algebra properties>]
      <math|B<rsub|i>=A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>\<in\>\<cal-A\>>
    </description>

    so that\ 

    <\equation*>
      <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>
    </equation*>
  </proof>

  <\theorem>
    <label|measure measure space properties (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then for every <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    we have\ 

    <\equation*>
      \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|measure countable additivity implies sub
    additivity>] there exists a <with|font-series|bold|pairwise disjoint
    >family <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    such that\ 

    <\equation>
      <label|eq 20.113.201>\<forall\>i\<in\>\<bbb-N\><text|
      >B<rsub|i>\<subseteq\>A<rsub|i><text| and
      ><big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>
    </equation>

    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.113.201>]>>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.113.201>]>\<wedge\><text|[theorem: <reference|extended
      infinite sum properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|measure measure space properties (3)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then\ 

    <\enumerate>
      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      satisfies <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i>\<leqslant\>A<rsub|i+1>> then

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\>|}>|)>
      </equation*>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      satisfies <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<leqslant\>A<rsub|i>> and
      <math|\<exists\>k\<in\>\<bbb-N\>> such that
      <math|\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>> then\ 

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\>|}>|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Define

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text| by
        >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1><text| if
        >i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1><text| if
        >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>\<in\>\<cal-A\>
      </equation*>

      Let <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> then we may always
      assume that <math|i\<less\>j> [otherwise exchange <math|i> and
      <math|j>]. Assume that <math|x\<in\>B<rsub|i><big|cap>B<rsub|j>> then
      we have for <math|i> either:

      <\description>
        <item*|<math|i=1>>Then <math|1=i\<less\>j\<Rightarrow\>1\<leqslant\>j-1>
        so that <math|x\<in\>B<rsub|i>=B<rsub|1>=A<rsub|1>\<subseteq\>A<rsub|j-1>>.
        Further as <math|x\<in\>B<rsub|j>=A<rsub|j>\\A<rsub|j-1>> we have
        <math|x\<nin\>A<rsub|j-1>> contradicting that we have also
        <math|x\<in\>A<rsub|j-1>>.\ 

        <item*|<math|1\<less\>i>>Then <math|i\<less\>j\<Rightarrow\>i\<leqslant\>j-1>
        so that <math|A<rsub|i>\<subseteq\>A<rsub|j-1>>. As
        <math|x\<in\>B<rsub|i>=A<rsub|i>\\A<rsub|i-1>> it follows that
        <math|x\<in\>A<rsub|i>\<Rightarrow\>x\<in\>A<rsub|j-1>> but as
        <math|x\<in\>B<rsub|j>=A<rsub|j>\\A<rsub|j-1>> we have that
        <math|x\<nin\>A<rsub|j-1>> hence we have a contradiction.
      </description>

      so the assumption must be wrong proving that
      <math|B<rsub|i><big|cap>B<rsub|j>=\<varnothing\>>. Hence

      <\equation>
        <label|eq 20.114.201>\<forall\>i,j\<in\>\<bbb-N\><text| we have
        >B<rsub|i><big|cap>B<rsub|j>=\<varnothing\>
      </equation>

      Next if <math|n\<in\>\<bbb-N\>> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1>\<subseteq\>A<rsub|i><text|
      if >i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1>\<subseteq\>A<rsub|i><text|
      if >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>\<subseteq\>A<rsub|i>\<subseteq\>A<rsub|n>>
      so that\ 

      <\equation>
        <label|eq 20.115.201><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\>A<rsub|n><text|
        >
      </equation>

      Further if <math|x\<in\>A<rsub|n>> then
      <math|n\<in\><around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>A<rsub|i>|}>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      so that <rigid|<math|m=min<around*|(|<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>A<rsub|i>|}>|)>>>
      exists. We have now two cases to consider for <math|m>:

      <\description>
        <item*|<math|m=1>>then <math|x\<in\>A<rsub|1>=B<rsub|1>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>

        <item*|<math|1\<less\>m>>then <math|x\<nin\>A<rsub|m-1>> and
        <math|x\<in\>A<rsub|m>> so that <math|x\<in\>A<rsub|m>\\A<rsub|m-1>=B<rsub|m>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
      </description>

      proving that <math|A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
      which by [eq: <reference|eq 20.115.201>] gives
      <math|A<rsub|n>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>.
      Hence\ 

      <\equation>
        <label|eq 20.116.201>\<forall\>n\<in\>\<bbb-N\><text| we have
        >A<rsub|n>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>
      </equation>

      From the above it follows that <math|\<forall\>n\<in\>\<bbb-N\>>
      <math|A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
      proving that <math|<big|cup><rsub|n\<in\>\<bbb-N\>>A<rsub|n>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>>B<rsub|n>>,
      futher <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1>\<subseteq\>A<rsub|i><text|
      if >i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1>\<subseteq\>A<rsub|i><text|
      if >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>\<subseteq\>A<rsub|i>>
      so that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>.
      Hence we have taking in account [eq: <reference|eq 20.114.201>]

      <\equation>
        <label|eq 20.117.201><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
      </equation>

      Next we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><rsub|>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|measure countable additivity implies
        additivity>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        20.116.201>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>>>>>
      </eqnarray*>

      So that\ 

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>
      </equation*>

      As <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|measure measure space properties
      (1)>]>>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i+1>|)>>
      so that by [theorem: <reference|extended limit increasing / decreasing
      sequence exist>]\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|A<rsub|n>|)>\|n\<in\>\<bbb-N\>|}>|)>
      </equation*>

      <item>First we consider the cases where <math|k=1>. Then
      <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<subseteq\>A<rsub|1>> so that by [theorem:
      <reference|measure measure space properties (1)>]
      <math|\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>
      proving that\ 

      <\equation>
        <label|eq 20.118.118.201>\<forall\>i\<in\>\<bbb-N\><text| we have
        >\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>
      </equation>

      Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|B<rsub|i>=A<rsub|>\\A<rsub|i>>. Let <math|i\<in\>\<bbb-N\>> then
      for <math|x\<in\>B<rsub|i>> we have
      <math|x\<in\>A<rsub|1>\<wedge\>x\<nin\>A<rsub|i>\<supseteq\>A<rsub|i+1>>
      so that <math|x\<in\>A<rsub|1>\\A<rsub|i+1>=B<rsub|i+1>>. Hence we have\ 

      <\equation>
        <label|eq 20.119.201>\<forall\>i\<in\>\<bbb-N\><text|
        >B<rsub|i>\<subseteq\>B<rsub|i+1>
      </equation>

      So using (1) it follows that\ 

      <\equation>
        <label|eq 20.120.201>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsub|1>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family de Morgan>]>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|1>\\B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|1>\\<around*|(|A<rsub|1>\\A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A<rsub|i>\<subseteq\>A<rsub|1>\<wedge\><text|[theorem:
        <reference|family de Morgan>]>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i><eq-number><label|eq
        20.121.201>>>>>
      </eqnarray*>

      As <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|B<rsub|i>=A<rsub|1>\\A<rsub|i>\<subseteq\>A<rsub|1>> it follows
      that\ 

      <\equation>
        <label|eq 20.122.201>\<mu\><around*|(|B<rsub|i>|)><below|\<leqslant\>|<text|[theorem:
        <reference|measure measure space properties
        (1)>]>>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>
      </equation>

      and <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\>A<rsub|1>>
      so that\ 

      <\equation>
        <label|eq 20.123.201>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)><below|\<leqslant\>|<text|[theorem:
        <reference|measure measure space properties
        (1)>]>>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.121.201>]>>>|<cell|\<mu\><around*|(|A<rsub|1>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.123.201>]>\<wedge\><text|[theorem:
        <reference|measure measure space properties
        (1)>>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.120.201>]>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|1>\\A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.122.201>]>\<wedge\><text|[theorem:
        <reference|measure measure space properties
        (1)>>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-<below|lim<rsub|i\<rightarrow\>\<infty\>>|><around*|(|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|extended limit properties>, <reference|extended limit
        constant sequence>]]>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-<around*|(|\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\>*<around*|(|A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\>*<around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      hence we have that\ 

      <\equation>
        <label|eq 20.124.201>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text|
        with >\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\><text| and
        >\<forall\>i\<in\>\<bbb-N\><text|
        >A<rsub|i+1>\<subseteq\>A<rsub|><text| we have
        >\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      Next we proof the general case where <math|1\<less\>k>. Define
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      by <math|C<rsub|i>=A<rsub|i+<around*|(|k-1|)>>> then we have as
      <math|\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>> that
      <math|\<mu\><around*|(|C<rsub|1>|)>=A<rsub|1+<around*|(|k-1|)>>=A<rsub|1>\<less\>\<infty\>>.
      Further <math|\<forall\>i\<in\>\<bbb-N\>> we have that
      <math|C<rsub|i+1>=A<rsub|<around*|(|i+<around*|(|k-1|)>|)>+1>\<subseteq\>A<rsub|i+<around*|(|k-1|)>>=C<rsub|i>>.
      So all conditions of [eq: <reference|eq 20.124.201>] are satisfied and
      we have that\ 

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|i>|)>
      </equation*>

      As <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>A<rsub|i+<around*|(|k-1|)>>\<equallim\><rsub|<text|[theorem:
      <reference|extended limit and index
      translation>]>><below|lim|i\<rightarrow\>\<infty\>>A<rsub|i>> so that
      we have\ 

      <\equation>
        <label|eq 20.126.201.1>\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>|)>=<below|lim|i\<rightarrowlim\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      Let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>. Then
      <math|\<forall\>i\<in\>\<bbb-N\>> we have, as
      <math|i+<around*|(|k-1|)>\<in\>\<bbb-N\>> [because <math|1\<less\>k>],
      that <math|<rigid|x\<in\>A<rsub|i+<around*|(|k-1|)>>=C<rsub|i>>> hence\ 

      <\equation>
        <label|eq 20.126.201.2><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>
      </equation>

      Let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>>. Let
      <math|i\<in\>\<bbb-N\>> then we have for <math|i> either:\ 

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,k-1|}>>>Then
        <math|x\<in\>C<rsub|1>=A<rsub|1+<around*|(|k-1|)>>=A<rsub|k><below|\<subseteq\>|i\<leqslant\>k-1\<less\>k>A<rsub|i>>
        so that <math|x\<in\>A<rsub|i>.>

        <item*|<math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>Then
        <math|i-<around*|(|k-1|)>\<in\>\<bbb-N\>> so that
        <math|x\<in\>C<rsub|i-<around*|(|k-1|)>>=A<rsub|<around*|(|i-<around*|(|k-1|)>|)>+<around*|(|k-1|)>>=A<rsub|i>>
        hence <math|x\<in\>A<rsub|i>>
      </description>

      as <math|i\<in\>\<bbb-N\>> was choosen arbitrary it follows that
      <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>, Hence
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
      which combined with [eq: <reference|eq 20.126.201.2>] proves that

      <\equation>
        <label|eq 20.127.201.1><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>
      </equation>

      So combining [eq: <reference|eq 20.126.201.1>] and [eq: <reference|eq
      20.127.201.1>] it follows that\ 

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      which proves the case <math|1\<less\>k>.
    </enumerate>
  </proof>

  The above theorem has the following inverse which provides ways to prove if
  a set function is actually a mesure.

  <\theorem>
    <label|measure measure conditions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    and <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    funtion that satisfies:

    <\enumerate>
      <item><math|\<mu\><around*|(|\<varnothing\>|)>=0>

      <item>If <math|n\<in\>\<bbb-N\>,<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      is a <with|font-series|bold|pairwise disjoint family> then

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>
    </enumerate>

    then we have:

    <\enumerate>
      <item>If <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      that satisfies <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> we have that
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      exists and \ <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      then <math|\<mu\>> is a measure on <math|\<cal-A\>>.

      <item>If <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      that satisfies <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=\<varnothing\>> we have
      that <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      exists and \ <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=0>
      then <math|\<mu\>> is a measure on <math|\<cal-A\>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|o>>\<subseteq\>\<cal-A\>>
      be a pairwise disjoint family. Define

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text| by
        >B<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>\<in\>\<cal-A\>
      </equation*>

      then by [lemma: <reference|lemma 20.102.202>] we have that\ 

      <\equation>
        <label|eq 20.131.202><big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i><text|
        and >\<forall\>i\<in\>\<bbb-N\><text| we have
        >B<rsub|i>\<subseteq\>B<rsub|i+1>
      </equation>

      Then by the hypothesis

      <\equation>
        <label|eq 20.132.202><below|lim|i\<rightarrow\>\<infty\>>B<rsub|i><text|
        exist and >\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.131.202>]>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.132.202>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|hypothesis>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|j>|)>>>>>
      </eqnarray*>

      proving countable additivity. Hence <math|\<mu\>> is a measure on
      <math|\<cal-A\>>.

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|o>>\<subseteq\>\<cal-A\>>
      be a pairwise disjoint family. Define

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text| by
        >B<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>A<rsub|j><below|\<in\>|<text|[theorem:
        <reference|measure countable additivity implies
        additivity>]>>\<cal-A\>
      </equation*>

      Let <math|i\<in\>\<bbb-N\>> then <math|B<rsub|i+1>=<big|cup><rsub|j\<in\><around*|{|i+2,\<ldots\>,\<infty\>|}>>A<rsub|j>\<subseteq\><big|cup><rsub|j\<in\><around*|{|i+1,\<ldots\>,n|}>>A<rsub|j>=B<rsub|i>>
      so that\ 

      <\equation*>
        \<forall\>i\<in\>\<bbb-N\><text| we have
        >B<rsub|i+1>\<subseteq\>B<rsub|i>
      </equation*>

      Let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> then
      <math|x\<in\>B<rsub|1>=<big|cup><rsub|j\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>A<rsub|j><rsub|>>
      so that <math|\<exists\>k\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>
      such that <math|x\<in\>A<rsub|k>>, as
      <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> we must have
      that <math|x\<in\>B<rsub|k>=<big|cup><rsub|j\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>>A<rsub|j>>
      so that <math|\<exists\>l\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>>
      such that <math|x\<in\>A<rsub|l>>. Hence it follows that
      <math|x\<in\>A<rsub|k><big|cap>A<rsub|l>\<equallim\><rsub|k\<neq\>l>\<varnothing\>>
      leading to the contradiction <math|x\<in\>\<varnothing\>>. Hence we
      have that\ 

      <\equation*>
        <big|cap><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=\<varnothing\>
      </equation*>

      Let <math|i\<in\>\<bbb-N\>> then <math|<big|sqcup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>=<around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)><big|cup><around*|(|<big|sqcup><rsub|j\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>A<rsub|j>|)>>.
      Assume <math|<rigid|x\<in\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)><big|cap><around*|(|<big|sqcup><rsub|j\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>A<rsub|j>|)>>>
      then there exist a <math|k\<in\><around*|{|1,\<ldots\>,i|}>> and a
      <math|l<rigid|\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>> such that
      <math|x\<in\>A<rsub|k>\<wedge\>x\<in\>A<rsub|l>\<Rightarrow\>x\<in\>A<rsub|k><big|cap>A<rsub|l><below|=|k\<neq\>l>\<varnothing\>>
      leading to the contradiction <math|x\<in\>\<varnothing\>>. Hence we
      must have that <math|<around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)><big|cap><around*|(|<big|sqcup><rsub|j\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>A<rsub|j>|)>=\<varnothing\>>.
      By the hypothesis we have then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>|)>>|<cell|=>|<cell|\<mu\><around*|(|<around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)><big|sqcup><around*|(|<big|sqcup><rsub|j\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><text|
        is finite additive>>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)>+\<mu\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>A<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><text|
        is finite additive>>>|<cell|<big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>+\<mu\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>A<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>+\<mu\><around*|(|B<rsub|i>|)><eq-number><label|eq
        20.140.210.1>>>>>
      </eqnarray*>

      By [definition: <reference|extended infinite sum>]\ 

      <\equation>
        <label|eq 20.141.210.2><below|lim|i\<rightarrow\>\<infty\>><big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)><text|
        exist and ><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>
      </equation>

      and by the hypothesis\ 

      <\equation>
        <label|eq 20.142.210.3><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)><text|
        exist and ><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=0
      </equation>

      Next we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit constant
        sequence>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.140.210.1>>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>+\<mu\><around*|(|B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit properties>]>\<wedge\><text|[eqs:
        <reference|eq 20.141.210.2>, <reference|eq
        20.142.210.3>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>+<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eqs:
        <reference|eq 20.141.210.2>, <reference|eq
        20.142.210.3>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      So <math|\<mu\>> is countable additive proving that <math|\<mu\>> is a
      measure.
    </enumerate>

    \;
  </proof>

  <subsection|Carathéodory Theorem>

  The Carathéodory theorem provides a general method for constructing a
  measure. Given a set <math|X> and a non negative set function on
  <math|\<cal-P\><around*|(|X|)>> the Carathéodory theorem allows us to
  reduce <math|\<cal-P\><around*|(|X|)>> to a <math|\<sigma\>>-algebra on
  <math|X> such that the restriction of the set function to this
  <math|\<sigma\>>-algebra is a measure on this <math|\<sigma\>>-algebra. The
  idea is that <math|\<cal-P\><around*|(|X|)>> is in general to big to be
  used as a <math|\<sigma\>>-algebra on which we can define a measure. As the
  restriction of the set function is a measure it must satisfies some extra
  conditions. For example every <math|\<sigma\>>-algebra contains
  <math|\<varnothing\>> and a measure must map <math|\<varnothing\>> to
  <math|0> so the set function on <math|\<cal-P\><around*|(|X|)>> must also
  map <math|\<varnothing\>> to <math|0>. This is the idea of a outer-measure.

  \;

  <\definition>
    <label|measure outer measure><index|outer
    measure><index|<math|\<mu\><rsup|\<ast\>>>><dueto|Outer Measure>Let
    <math|X> be a set then <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a <with|font-series|bold|outer measure >on <math|X> if\ 

    <\enumerate>
      <item><math|\<mu\><rsup|\<ast\>><around*|(|\<varnothing\>|)>=0>

      <item>For <math|A,B\<in\>\<cal-P\><around*|(|X|)>> with
      <math|A\<subseteq\>B> we have <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>>
      [in other words <math|\<mu\><rsup|\<ast\>>> is monoton]

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      we have <math|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>
      [in otherwords <math|\<mu\><rsup|\<star\>>> is countable sub-additive]
    </enumerate>
  </definition>

  It is easy to prove that a outer measure is finitely sub-additive.

  <\theorem>
    <label|measure outer measure is finite subadditive>Let <math|X> be a set
    and <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a outer measure on <math|X>, <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<cal-P\><around*|(|X|)>>
    then <math|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<star\>><around*|(|A<rsub|i>|)>>
  </theorem>

  <\proof>
    Define <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    by <math|C<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i><text| if
    >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<varnothing\><text| if
    >i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>>>>>>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|\<mu\><rsup|\<ast\>><text|
      is a outer measure>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended series and index
      translation>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|C<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|\<infty\>>0>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended infinite sum of zero
      elements>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  We need now to reduce <math|\<cal-P\><around*|(|X|)>> to a
  <math|\<sigma\>>-algebra in such a way that the restriction of the
  outer-measure to this <math|\<sigma\>>-algebra becomes a measure. This is
  the idea of <math|\<mu\><rsup|\<ast\>>>-measurable sets.

  <\definition>
    <label|measure measurable sets><index|measurable
    sets><index|<math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>><dueto|<math|\<mu\><rsup|\<ast\>>>-measurable
    sets>Let <math|X> be a set and <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure on <math|X> then <math|A\<in\>\<cal-P\><around*|(|X|)>>
    is <math|\<mu\><rsup|\<ast\>>>-measurable if

    <\equation*>
      \<forall\>B\<in\>\<cal-P\><around*|(|X|)><text| we have
      >\<mu\><rsup|\<ast\>><around*|(|B|)>=\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>
    </equation*>

    The set of all <math|\<mu\><rsup|\<ast\>>>-measurable sets in
    <math|\<cal-P\><around*|(|X|)>> is noted as
    <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>, hence\ 

    <\equation*>
      \<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>B\<in\>\<cal-P\><around*|(|X|)><text|
      we have >\<mu\><rsup|\<ast\>><around*|(|B|)>=\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>|}>
    </equation*>
  </definition>

  Using the properties of a outer-measure we can simplify the above
  definition.

  <\theorem>
    <label|measure measurable set equivalences>Let <math|X> be a set and
    <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    and <math|A\<in\>\<cal-P\><around*|(|X|)>> then we have\ 

    <\equation*>
      A<text| is >\<mu\><rsup|\<ast\>><text|-measurable
      >\<Leftrightarrow\><text| >\<forall\>B\<in\>\<cal-P\><around*|(|X|)><text|
      we have >\<mu\><rsup|\<ast\>><around*|(|B|)>\<geqslant\>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>
    </equation*>

    Hence we have the following alternative definition for
    <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>

    <\equation*>
      \<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>B\<in\>\<cal-P\><around*|(|X|)><text|
      we have >\<mu\><rsup|\<ast\>><around*|(|B|)>\<geqslant\>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>|}>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This is trivial as
      <math|\<mu\><rsup|\<ast\>><around*|(|B|)>=\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>>
      implies <math|\<mu\><rsup|\<ast\>><around*|(|B|)>\<geqslant\>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>>.

      <item*|<math|\<Leftarrow\>>>Let <math|B\<in\>\<cal-P\><around*|(|X|)>>
      then as <math|B=<around*|(|B<big|cap>A|)><big|cup><around*|(|B\\A|)>>
      we have by [theorem: <reference|measure outer measure is finite
      subadditive>] that <math|<rigid|\<mu\><rsup|\<ast\>><around*|(|B|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>>>,
      combining this with the hypothesis it follows that\ 

      <\equation*>
        \<mu\><rsup|\<ast\>><around*|(|B|)>=\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>
      </equation*>
    </description>
  </proof>

  We prove now that <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>> is a
  <math|\<sigma\>>-algebra and the restriction of <math|\<mu\><rsup|\<ast\>>>
  on <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>> is a measure on
  <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>.

  <\theorem>
    <label|measure Caratheodory><dueto|Carathéodory Theorem>Let <math|X> be a
    set and <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure on <math|X> then we have:

    <\enumerate>
      <item><math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>> is a
      <math|\<sigma\>>-algebra on <math|X>.

      <item><math|<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>:\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      is a measure on <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|B\<in\>\<cal-P\><around*|(|X|)>> then\ 

      <\equation*>
        \<mu\><rsup|\<ast\>><around*|(|B|)>=\<mu\><rsup|\<ast\>><around*|(|B<big|cap>X|)>+0=\<mu\><rsup|\<ast\>><around*|(|B<big|cap>X|)>+\<mu\><rsup|\<star\>><around*|(|\<varnothing\>|)>=\<mu\><rsup|\<ast\>><around*|(|B<big|cap>X|)>+\<mu\><rsup|\<star\>><around*|(|B\\X|)>
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 20.163\<point\>202>X\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
      </equation>

      If <math|A\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>> then for
      <math|B\<in\>\<cal-P\><around*|(|X|)>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B<big|cap><around*|(|X\\A|)>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<around*|(|X\\A|)>|)>>|<cell|\<equallim\><rsub|B\<subseteq\>X\<wedge\><text|[theorem:
        <reference|class inclusion and union and intersection>
        (6)]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|B<big|cap><around*|(|X\\A|)>|)>+\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|B\<subseteq\>X\<wedge\><text|[theorem:
        <reference|class inclusion and union and intersection>
        (8)]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|B\\A|)>+\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|B|)>>>>>
      </eqnarray*>

      so that <math|X\\A\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>.
      Hence we have\ 

      <\equation>
        <label|eq 20.164.202>\<forall\>A\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]><text|
        we have >X\\A\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
      </equation>

      Let <math|A,B\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>> then
      for <math|C\<in\>\<cal-P\><around*|(|X|)>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|A<big|cup>B|)>|)>>|<cell|\<equallim\><rsub|A\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|<around*|(|C<big|cap><around*|(|A<big|cup>B|)>|)><big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|C<big|cap><around*|(|A<big|cup>B|)>|)>\\A|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|<around*|(|A<big|cup>B|)><big|cap>A|)>|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|C<big|cap><around*|(|A<big|cup>B|)>|)>\\A|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|C<big|cap><around*|(|A<big|cup>B|)>|)>\\A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class intersection, union, inclusion>
        (7)]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|<around*|(|A<big|cup>B|)>\\A|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class intersection, union, inclusion>
        (6)]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|<around*|(|A\\A|)><big|cup><around*|(|B\\A|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|B\\A|)>|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 20.165.202>\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|A<big|cup>B|)>|)>=\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|B\\A|)>|)>
      </equation>

      So we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|A<big|cup>B|)>|)>+\<mu\><rsup|\<ast\>><around*|(|C\\<around*|(|A<big|cup>B|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.165.202>]>>>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|B\\A|)>|)>+\<mu\><rsup|\<ast\>><around*|(|C\\<around*|(|A<big|cup>B|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class set difference and union ,
        intersection>(1)]>>>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|C<big|cap><around*|(|B\\A|)>|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|C\\A|)>\\B|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class intersection, union,
        inclusion>(7)]>>>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|C\\A|)><big|cap>B|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|C\\A|)>\\B|)>>|<cell|\<equallim\><rsub|B\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|C<big|cap>A|)>+\<mu\><rsup|\<star\>><around*|(|C\\A|)>>|<cell|\<equallim\><rsub|A\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|C|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|A<big|cup>B> is <math|\<mu\><rsup|\<ast\>>>-measurable.
      Hence we have\ 

      <\equation>
        <label|eq 20.166.202>\<forall\>A,B\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]><text|
        we have that >A<big|cup>B\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]><text|
        [in other words >\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]><text| is
        >\<cup\><text|-stable]>
      </equation>

      From [eqs: <reference|eq 20.163\<point\>202>, <reference|eq 20.164.202>
      and <reference|eq 20.166.202>] and [theorem: <reference|measure algebra
      equavalent definition>] it follows that\ 

      <\equation>
        <label|eq 20.167.202>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]><text|
        is a algebra>
      </equation>

      Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>
      <with|font-series|bold|pairwise disjoint> and
      <math|B\<in\>\<cal-P\><around*|(|X|)>>. We show then by mathematical
      induction that <math|\<forall\>n\<in\>\<bbb-N\>>\ 

      <\equation>
        <label|eq 20.168.202>\<mu\><rsup|\<ast\>><around*|(|B|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>
      </equation>

      <\proof>
        Define\ 

        <\equation*>
          S=<around*|{|n\<in\>\<bbb-N\>\|\<mu\><rsup|\<ast\>><around*|(|B|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|}>
        </equation*>

        then we have:\ 

        <\description>
          <item*|<math|1\<in\>S>>As <math|A<rsub|1>\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B|)>>|<cell|=>|<cell|\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|1>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|1>\<mu\><rsup|\<ast\>><around*|[|B<big|cap>A<rsub|i>|]>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>|)>>>>>
          </eqnarray*>

          which proves that <math|1\<in\>\<cal-S\>>

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
          <math|x\<in\>B<big|cap>A<rsub|n+1>> then <math|x\<in\>B> and
          <math|x\<in\>A<rsub|n+1>> then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
          we have by pairwise disjointedness <math|x\<nin\>A<rsub|i>> so that
          <math|x\<nin\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
          or <rigid|<math|x\<in\><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>>>.
          Hence <math|B<big|cap>A<rsub|n+1>\<subseteq\><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>\<subseteq\>B<big|cap>A<rsub|n+1>>.
          Summarized\ 

          <\equation>
            <label|eq 20.169.202><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>=B<big|cap>A<rsub|n+1>
          </equation>

          As <math|A<rsub|n+1>\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|<around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\\A<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 20.169.202>]>>>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|n+1>|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\\A<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|class set difference and union ,
            intersection>]>>>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|n+1>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<around*|(|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup>A<rsub|n+1>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|n+1>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<around*|(|<around*|\<nobracket\>|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>|\<nobracket\>>|)>>|<cell|>|<cell|>>>>
          </eqnarray*>

          proving that\ 

          <\equation>
            <label|eq 20.170.202>\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|n+1>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<around*|(|<around*|\<nobracket\>|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>|\<nobracket\>>|)>
          </equation>

          Finally\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B|)>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 20.170.202>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|n+1>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<around*|(|<around*|\<nobracket\>|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>|\<nobracket\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<asymp\>1><rsup|n+1>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<around*|(|<around*|\<nobracket\>|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>|\<nobracket\>>|)>>>>>
          </eqnarray*>

          which proves that <math|n+1\<in\>\<cal-S\>>.
        </description>

        Mathematical induction proves then [eq: <reference|eq 20.168.202>].
      </proof>

      Let <math|n\<in\>\<bbb-N\>> then we have
      <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\><big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
      so that <math|B\\<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>B\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      hence <math|\<mu\><rsup|\<ast\>><around*|(|B\\<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>.
      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.168.202>]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|B|)><eq-number><label|eq
        20.171.202>>>>>
      </eqnarray*>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit properties>]>>>|<cell|>>|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>|)>>|<cell|<below|\<leqslant\><text|>|<text|[theorem:
        <reference|extended limit properties>]>\<wedge\><text|[eq:
        <reference|eq 20.171.202>]>>>|<cell|>>|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>>\<mu\><rsup|\<ast\>><around*|(|B|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit constant
        sequence>]>>>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>
      and <math|B\<in\>\<cal-P\><around*|(|X|)>>

      <\equation>
        <label|eq 20.172.202><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>
      </equation>

      Hence we have for <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>
      and <math|B\<in\>\<cal-P\><around*|(|X|)>> that

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><rsub|><around*|(|B<big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|B<big|cap>A<rsub|i>|)>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|<below|\<leqslant\>|\<mu\><rsup|\<ast\>><text|
        is a outer measure>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 20.172.202>]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|B|)>>>>>
      </eqnarray*>

      So by [theorem: <reference|measure measurable set equivalences>] it
      follows that <math|><math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
      is <math|\<mu\><rsup|\<star\>>>-measureable. Hence we have proved that\ 

      <\equation>
        <label|eq 20.173.202>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]><text|
        pairwise disjoint we have ><big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
      </equation>

      As <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>> is a algebra [see
      eq: <reference|eq 20.167.202>] we can use the alternative definition
      for a <math|\<sigma\>>-algbra [see theorem: <reference|measure sigma
      algebra equivalences>] and the above to prove that\ 

      <\equation*>
        \<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]><text| is a
        >\<sigma\><text|-algebra>
      </equation*>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>
      a pairwise disjoint family then for
      <math|B=<big|sqcup><rsub|j\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>><around*|(|A<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>|)><big|cap>A<rsub|i>|)>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>|)><big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>|)>\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><rsup|\<ast\>><around*|(|B\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 20.172.202>]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|B|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>>>>
      </eqnarray*>

      As further by the sub-additivity of <math|\<mu\><rsup|\<ast\>>> we have

      <\equation*>
        <around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|*\<ast\>>|]>><around*|(|A<rsub|i>|)>
      </equation*>

      it follows that

      <\equation*>
        <around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|*\<ast\>>|]>><around*|(|A<rsub|i>|)>
      </equation*>

      which together with <math|><math|<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>><around*|(|\<varnothing\>|)>=\<mu\><rsup|\<star\>><around*|(|\<varnothing\>|)>=0>
      provest\ 

      <\equation*>
        <around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>><text|
        is a measure on >\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Uniqueness of measure extensions>

  Let <math|X> be a set, <math|\<cal-G\>\<subseteq\>\<cal-P\><around*|(|X|)>>
  and <math|\<sigma\><around*|[|\<cal-G\>|]>> is the <math|\<sigma\>>-algebra
  generated by <math|\<cal-G\>> [see theorem: <reference|measure generated
  sigma algebra>] then if we have a set function on <math|\<cal-G\>> that we
  extend to a measure on <math|\<sigma\><around*|[|\<cal-G\>|]>> we can ask
  ourselves if the extension is unique. The answer is true if
  <math|\<cal-G\>> and the set function satisfies certain conditions. To
  prove this we introduce the concept of a Dynkin system.

  <subsubsection|Dynkin systems>

  <\definition>
    <label|measure Dynkin system><index|Dynkim
    system><index|<math|\<frak-D\>>><dueto|Dynkin System>Let <math|X> be a
    set then <math|\<frak-D\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a
    <with|font-series|bold|Dynkin system >on <math|X> if\ 

    <\enumerate>
      <item><math|X\<in\>\<frak-D\>>

      <item>If <math|D\<in\>\<frak-D\>> then <math|X\\D\<in\>\<frak-D\>>

      <item>If <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<frak-D\>>
      is a <with|font-series|bold|pairwise disjoint family >then
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<in\>\<frak-D\>>
    </enumerate>

    <\note>
      Using [definition: <reference|measure sigma algebra>] every
      <math|\<sigma\>>-algebra is automatical a Dynkin system however the
      opposite is in general not true.
    </note>
  </definition>

  Some of the properties of a Dynkin system are similar to the properties of
  a <math|\<sigma\>>-algebra.

  <\theorem>
    <label|measure Dynkin system properties>Let <math|X> be a set and
    <math|\<frak-D\>> is a Dynkin system on <math|X> then we have:

    <\enumerate>
      <item><math|\<varnothing\>\<in\>\<frak-D\>>

      <item>Let <math|n\<in\>\<bbb-N\>> and
      <math|<around*|{|D<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<frak-D\>>
      pairwise disjoint then <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>\<in\>\<frak-D\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|X\<in\>\<frak-D\>> we have that
      <math|\<varnothing\>=X\\X\<in\>\<frak-D\>>

      <item>Define <math|<around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<frak-D\>>
      by <math|E<rsub|i>=<choice|<tformat|<table|<row|<cell|\<varnothing\><text|
      if >i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>>>|<row|<cell|D<rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>>. Let
      <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> then we have either

      <\description>
        <item*|<math|i\<leqslant\>n\<wedge\>j\<leqslant\>n>>Then
        <math|E<rsub|i><big|cap>E<rsub|j>=D<rsub|i><big|cap>D<rsub|j>=\<varnothing\>>

        <item*|<math|n\<less\>i\<wedge\>j\<leqslant\>n>>Then
        <math|E<rsub|i><big|cap>E<rsub|j>=\<varnothing\><big|cap>D<rsub|j>=\<varnothing\>>

        <item*|<math|i\<leqslant\>n\<wedge\>n\<less\>j>>Then
        <math|E<rsub|i><big|cap>E<rsub|j>=D<rsub|i><big|cap>D<rsub|j>=\<varnothing\>>

        <item*|<math|n\<less\>i\<wedge\>n\<less\>j>>Then
        <math|E<rsub|i><big|cap>E<rsub|j>=\<varnothing\><big|cap>\<varnothing\>=\<varnothing\>>
      </description>

      which proves that <math|<around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      is pairwise disjoint. So\ 

      <\equation*>
        <big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<frak-D\>
      </equation*>

      \ If <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>>
      then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x\<in\>D<rsub|i>=E<rsub|i>> so that
      <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>>. If
      <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>> then there
      exist a <math|i\<in\>\<bbb-N\>> such that <math|x\<in\>E<rsub|i>>, as
      <math|\<forall\>i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>>
      <math|E<rsub|i>=\<varnothing\>> we must have that
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> so that
      <math|E<rsub|i>=D<rsub|i>> proving that
      <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>>.
      Hence we have\ 

      <\equation*>
        <big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<frak-D\>
      </equation*>

      \;
    </enumerate>
  </proof>

  <\example>
    <label|measure Dynkin system P(X)>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a Dynkin system on <math|X>
  </example>

  <\proof>
    \ As <math|\<cal-P\><around*|(|X|)>> is a <math|\<sigma\>>-algebra on
    <math|X> [see example: <reference|measure P(X) is a sigma algebra>] and
    every <math|\<sigma\>>-algebra is a Dynkin system it follows that
    <math|\<cal-P\><around*|(|X|)>> is a Dynkin system on <math|X>.
  </proof>

  Given a set of subsets of <math|X> we can, just like with
  <math|\<sigma\>>-algebras, find the smallest Dynkin system that contains
  the set of subsets.

  <\lemma>
    <label|lemma 20.172.1>Let <math|X> be a set and <math|\<cal-X\>> a non
    empty set of Dynkin systems on <math|X> then
    <math|<big|cap><rsub|\<frak-D\>\<in\>\<cal-X\>>\<frak-D\>> is a Dynkin
    system on <math|X>.
  </lemma>

  <\proof>
    As <math|\<cal-X\>\<neq\>\<varnothing\>> there exist a
    <math|\<frak-D\>\<in\>\<cal-X\>> with
    <math|\<frak-D\>\<subseteq\>\<cal-P\><around*|(|X|)>> so that we have by
    [theorem: <reference|class general intersection>] that
    <math|<big|cap><rsub|<math-tt|>\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>\<subseteq\>\<frak-D\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    proving that\ 

    <\equation*>
      <big|cap><rsub|<math-tt|>\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>\<subseteq\>\<cal-P\><around*|(|X|)>
    </equation*>

    \ <math|>As <math|\<forall\>\<cal-D\>\<in\>\<frak-D\>> <math|\<cal-D\>>
    is a Dynkin system on <math|X> we have <math|X\<in\>\<cal-A\>> hence\ 

    <\equation*>
      X\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>
    </equation*>

    Let <math|A\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>> then
    for <math|\<cal-D\>\<in\>\<cal-X\>> we have <math|A\<in\>\<cal-D\>> so
    that <math|X\\A\<in\>\<cal-D\>> which as <math|\<cal-D\>\<in\>\<cal-X\>>
    was chosen arbitrary proves that <math|X\\A\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>.
    Hence as <math|A\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>
    was chosen arbitrary we have that\ 

    <\equation*>
      \<forall\>A\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\><text|
      we have >X\\A\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>
    </equation*>

    If <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>
    is pairwise disjoint then for <math|\<cal-D\>\<in\>\<cal-X\>> we have
    <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-D\>>
    so that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<in\>\<cal-D\>>
    which as <math|\<cal-D\>\<in\>\<cal-X\>> was chosen arbitrary proves that
    <math|<big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i><rsub|>\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>.
    Hence as <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>
    was chosen arbitrary we have that\ 

    <\equation*>
      <text|For every pairwise disjoint family
      ><around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\><text|
      we have ><big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>
    </equation*>

    \ 
  </proof>

  <\theorem>
    <label|measure Dynkin system generated>Let <math|X> be a set
    <math|\<cal-D\>\<subseteq\>\<cal-P\><around*|(|X|)>> then there exist a
    <with|font-series|bold|unique> Dynkin system
    <math|\<delta\><around*|[|\<cal-A\>|]>> on <math|X> such that:\ 

    <\enumerate>
      <item><math|\<cal-D\>\<subseteq\>\<delta\><around*|[|\<cal-D\>|]>>

      <item>If <math|\<frak-D\><rprime|'>> is another Dynkin system with
      <math|\<cal-D\>\<subseteq\>\<frak-D\><rprime|'>> then
      <math|\<delta\><around*|[|\<cal-D\>|]>\<subseteq\>\<frak-D\><rprime|'>>

      <item><math|\<delta\><around*|[|\<cal-D\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-D\>|]>>
    </enumerate>

    This unique smallest Dynkin system that contains <math|\<cal-D\>> is
    called the Dynkin system generated by <math|\<cal-D\>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Define <math|\<cal-X\>=<around*|{|\<frak-D\>\<subseteq\>\<cal-P\><around*|(|X|)>\|\<frak-D\><text|
      is a Dynkin system on >X<text| and >\<cal-D\>\<subseteq\>\<frak-D\>|}>>
      then as <math|\<cal-P\><around*|(|X|)>> is a Dynkin system [see
      example: <reference|measure Dynkin system P(X)>] and
      <math|\<cal-D\>\<subseteq\>\<cal-P\><around*|(|X|)>> it follows that
      <math|\<cal-X\>\<neq\>\<varnothing\>>. Hence by [lemma:
      <reference|lemma 20.172.1>] it follows that, if we take
      <math|\<delta\><around*|[|\<cal-D\>|]>=<big|cap><rsub|\<frak-D\>\<in\>\<cal-X\>>\<frak-D\>>,
      that\ 

      <\equation*>
        \<delta\><around*|[|\<cal-D\>|]><text| is a Dynkin system on >X
      </equation*>

      If <math|D\<in\>\<cal-D\>> then, as
      <math|\<forall\>\<frak-D\>\<in\>\<cal-X\>> we have by defintion of
      <math|\<cal-X\>> that <math|\<cal-D\>\<subseteq\>\<frak-D\>>, it
      follows that <math|D\<in\>\<frak-D\>>, hence
      <math|D\<in\><big|cap><rsub|\<frak-D\>\<in\>\<cal-X\>>\<frak-D\>>. So
      that\ 

      <\equation*>
        \<cal-D\>\<subseteq\><big|cap><rsub|\<frak-D\>\<in\>\<cal-X\>>\<frak-D\>=\<delta\><around*|[|\<cal-D\>|]>
      </equation*>

      <item>Assume that <math|\<frak-D\><rprime|'>> is another Dynkin system
      on <math|X> such that <math|\<cal-D\>\<subseteq\>\<frak-D\><rprime|'>>
      then <math|\<frak-D\><rprime|'>\<in\>\<cal-X\>> so that by [theorem:
      <reference|class general intersection>]

      <\equation*>
        \<delta\><around*|[|\<cal-D\>|]>=<big|cap><rsub|\<frak-D\>\<in\>\<cal-X\>>\<frak-D\>\<subseteq\>\<frak-D\><rprime|'>
      </equation*>

      <item>As <math|\<cal-D\>\<subseteq\>\<sigma\><around*|[|\<cal-D\>|]>>,
      <math|\<sigma\><around*|[|\<cal-D\>|]>> is a <math|\<sigma\>>-algebra
      hence a Dynkin system on <math|X> it follows from (2) that\ 

      <\equation*>
        \<delta\><around*|[|\<cal-D\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-D\>|]>
      </equation*>
    </enumerate>
  </proof>

  We show now the sufficient and necessary condition for a Dynkin system to
  be a <math|\<sigma\>>-algebra.

  <\theorem>
    <label|measure Dynkin system condition for sigma algebra>Let <math|X> be
    a set and <math|\<frak-D\>> a Dynkin system on <math|X> then we have\ 

    <\equation*>
      \<frak-D\><text| is a >\<sigma\><text|-algebra
      >\<Leftrightarrow\><text| >\<forall\>A,B\<in\>\<frak-D\><text| we have
      >A<big|cap>B\<in\>\<frak-D\><text| [in other words >\<frak-D\><text| is
      >\<cap\><text|-stable]>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|A,B\<in\>\<frak-D\>> then, as
      <math|\<frak-D\>> is a <math|\<sigma\>>-algebra, it follows from
      [theorems: <reference|measure sigma algebra equivalences>,
      <reference|measure algebra equavalent definition>] <math|>that
      <math|A<big|cap>B\<in\>\<cal-A\>>.

      <item*|<math|\<Leftarrow\>>>As <math|\<frak-D\>> is a Dynkin system and
      <math|\<cap\>>-stable we have already that\ 

      <\equation>
        <label|eq 20.133.202>X\<in\>\<frak-D\><text|,
        >\<forall\>D\<in\>\<frak-D\><text| we have
        >X\\D\<in\>\<frak-D\><infix-and>\<forall\>A,B\<in\>\<frak-D\><text|
        we have >A<big|cap>B\<in\>\<frak-D\>
      </equation>

      Let <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<frak-D\>>.
      Define\ 

      <\equation*>
        <around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text| by
        >E<rsub|i>=<choice|<tformat|<table|<row|<cell|D<rsub|1><text| if
        >i=1>>|<row|<cell|D<rsub|i><big|cap><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>><around*|(|X\\D<rsub|j>|)>|)><text|
        if >i\<in\><around*|{|2,\<ldots\>\<infty\>|}>>>>>><below|\<in\>|<text|[eq:
        <reference|eq 20.133.202>]>\<wedge\><text|[theorem:
        <reference|measure union intersection stable>]>>\<frak-D\>
      </equation*>

      Then <math|\<forall\>i\<in\>\<bbb-N\>> we have

      <\equation>
        <label|eq 20.134.202>E<rsub|i>=<choice|<tformat|<table|<row|<cell|D<rsub|1>\<subseteq\>D<rsub|i><text|
        if >i=1>>|<row|<cell|D<rsub|i><big|cap><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>><around*|(|X\\D<rsub|j>|)>|)>\<subseteq\>D<rsub|i><text|
        if >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>\<subseteq\>D<rsub|i>
      </equation>

      so that\ 

      <\equation>
        <label|eq 20.135.202><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>
      </equation>

      If <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>> then there
      exist a <math|k\<in\>\<bbb-N\>> such that <math|x\<in\>D<rsub|k>>.
      Define

      <\equation*>
        S=<around*|{|i\<in\><around*|{|1,\<ldots\>,k|}>\|x\<in\>D<rsub|i>|}>\<subseteq\><around*|{|1,\<ldots\>,k|}>
      </equation*>

      then <math|k\<in\>S\<Rightarrow\>S\<neq\>\<varnothing\>> and <math|S>
      is finite so that <math|m=min<around*|(|S|)>> exists. For <math|m> we
      have either:\ 

      <\description>
        <item*|<math|m=1>>Then <math|x\<in\>D<rsub|1>=E<rsub|1>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>>

        <item*|<math|1\<less\>m>>Then <math|x\<in\>D<rsub|m>> and
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m-1|}>>
        <math|x\<nin\>D<rsub|i>\<Rightarrow\>x\<in\>X\\D<rsub|i>> so that

        <\equation*>
          x\<in\>D<rsub|m><big|cap><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,m-1|}>><around*|(|X\\D<rsub|i>|)>|)>=E<rsub|m>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>
        </equation*>
      </description>

      Hence <math|<big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>>
      and we have by [eq: <reference|eq 20.135.202>] that\ 

      <\equation>
        <label|eq 20.136.202><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>
      </equation>

      Let <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> then we may always
      assume that <math|i\<less\>j> [otherwise exchange <math|i> and
      <math|j>]. Assume that <math|x\<in\>E<rsub|i><big|cap>E<rsub|j>> then
      <math|x\<in\>E<rsub|i><below|\<subseteq\>|<text|[eq: <reference|eq
      20.134.202>]>>D<rsub|i>> and \ <math|<rigid|x\<in\>E<rsub|j>=D<rsub|j><big|cap><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>><around*|(|X\\D<rsub|k>|)>|)>\<subseteq\><around*|(|X\\D<rsub|i>|)>>\<Rightarrow\>x\<nin\>D<rsub|i>>
      so that we reach the contradiction <rigid|<math|x\<in\>D<rsub|i>> and
      <math|x\<nin\>D<rsub|i>>>. Hence we have\ 

      <\equation*>
        \<forall\>i,j\<in\>\<bbb-N\><text| with >i\<neq\>j<text| we have
        >E<rsub|i><big|cap>E<rsub|j>=\<varnothing\>
      </equation*>

      So by the definition of a Dynkin system it follows that

      <\equation*>
        <big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.136.202>]>><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<frak-D\>
      </equation*>

      Finally by the above, [eq: <reference|eq 20.133.202>] and [definition:
      <reference|measure sigma algebra>] it follows that <math|\<frak-D\>> is
      a <math|\<sigma\>>-algebra on <math|X>.
    </description>
  </proof>

  <\theorem>
    <label|measure Dynkin system condition for sigma algebra (1)>If
    <math|\<cal-D\>\<subseteq\>\<cal-P\><around*|(|\<cal-A\>|)>> is such that
    <math|\<forall\>A,B\<in\>\<frak-D\>> <math|A<big|cap>B\<in\>\<cal-D\>>
    [in other words <math|\<frak-D\>> is <math|\<cap\>>-stable] then
    <math|\<delta\><around*|(|\<cal-D\>|)>=\<sigma\><around*|(|\<cal-D\>|)>>
  </theorem>

  <\proof>
    Using [theorem: <reference|measure Dynkin system generated>] it follows
    that\ 

    <\equation>
      <label|eq 20.137.202>\<delta\><around*|[|\<cal-D\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-D\>|]>
    </equation>

    For the opposite inclusion. Defiine for every
    <math|D\<in\>\<delta\><around*|[|\<cal-D\>|]>>\ 

    <\equation>
      <label|eq 20.138.202>\<frak-D\><rsub|D>=<around*|{|E\<subseteq\>X\|E<big|cap>D\<in\>\<delta\><around*|[|\<cal-D\>|]>|}>
    </equation>

    As <math|X\<subseteq\>X> and <math|X<big|cap>D=D\<in\>\<delta\><around*|[|\<cal-D\>|]>>
    it follows that\ 

    <\equation>
      <label|eq 20.139.202>X\<in\>\<frak-D\><rsub|D>
    </equation>

    Let <math|E\<in\>\<frak-D\><rsub|D>> then <math|X\\E\<subseteq\>X> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|X\\<around*|(|<around*|(|E<big|cap>D|)><big|cup><around*|(|X\\D|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|class set difference and union ,
      intersection>]>>>|<cell|<around*|(|X\\<around*|(|E<big|cap>D|)>|)><big|cap><around*|(|X\\<around*|(|X\\D|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|class inclusion and union and
      intersection>]>\<wedge\>D\<subseteq\>X>>|<cell|<around*|(|X\\<around*|(|E<big|cap>D|)>|)><big|cap>D>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|class set difference and union ,
      intersection>]>>>|<cell|<around*|(|<around*|(|X\\E|)><big|cup><around*|(|X\\D|)>|)><big|cap>D>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|class class commutative,idempotent,associative,distributivity>]>>>|<cell|<around*|(|<around*|(|X\\E|)><big|cap>D|)><big|cup><around*|(|<around*|(|X\\D|)><big|cap>D|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|X\\E|)><big|cap>D|)><big|cup>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|X\\E|)><big|cap>D>>>>
    </eqnarray*>

    Further <math|<around*|(|E<big|cap>D|)><big|cap><around*|(|X\\D|)>=\<varnothing\>>
    so that\ 

    <\equation>
      <label|eq 20.140.202><around*|(|X\\E|)><big|cap>D=X\\<around*|(|<around*|(|E<big|cap>D|)><big|sqcup><around*|(|X\\D|)>|)>
    </equation>

    As <math|E\<in\>\<frak-D\><rsub|D>> we have by [eq: <reference|eq
    20.138.202>] that <math|E<big|cap>D\<in\>\<delta\><around*|[|\<cal-D\>|]>>,
    further as <math|\<delta\><around*|[|\<cal-D\>|]>> is a Dynkin system and
    <math|D\<in\>\<delta\><around*|[|\<cal-D\>|]>> it follows that
    <math|X\\D\<in\>\<delta\><around*|[|\<cal-D\>|]>> so that
    <math|<around*|(|E<big|cap>D|)><big|sqcup><around*|(|X\\D|)>\<in\>\<delta\><around*|[|\<cal-D\>|]>>
    and finally that\ 

    <\equation*>
      X\\<around*|(|<around*|(|E<big|cap>D|)><big|sqcup><around*|(|X\\D|)>|)>\<in\>\<delta\><around*|[|\<cal-D\>|]>
    </equation*>

    Hence by [eq: <reference|eq 20.140.202>] it follows that\ 

    <\equation>
      <label|eq 20.141.202>\<forall\>E\<in\>\<frak-D\><rsub|D><text| that
      >X\\E\<in\>\<frak-D\><rsub|D>
    </equation>

    Let <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<frak-D\><rsub|D>>
    be pairwise disjoint then <math|\<forall\>i,j\<in\>\<bbb-N\>> with
    <math|i\<neq\>j> we have <rigid|<math|<around*|(|D<rsub|i><big|cap>D|)><big|cap><around*|(|D<rsub|j><big|cap>D|)>\<subseteq\>D<rsub|i><big|cap>D<rsub|j>=\<varnothing\>>>,
    further <math|\<forall\>i\<in\>\<bbb-N\>> we have by the definition of
    <math|\<frak-D\><rsub|D>> that <rigid|<math|D<rsub|i><big|cap>D\<in\>\<delta\><around*|[|\<cal-D\>|]>>>.
    Hence <math|<around*|{|D<rsub|i><big|cap>D|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<delta\><around*|[|\<cal-D\>|]>>
    is pairwise disjoint, so that, as <math|\<delta\><around*|[|\<cal-D\>|]>>
    is a Dynkin system, we have \ 

    <\equation*>
      <around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>|)><big|cap>D=<big|sqcup><rsub|i\<in\>\<bbb-N\>><around*|(|D<rsub|i><big|cap>D|)>\<in\>\<delta\><around*|[|\<cal-D\>|]>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 20.142.202><big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<in\>\<frak-D\><rsub|D>
    </equation>

    From [eqs: <reference|eq 20.139.202>. <reference|eq 20.141.202> and
    <reference|eq 20.142.202>] it follows that <math|\<frak-D\><rsub|D>> is a
    Dynkin system on <math|X>, hence\ 

    <\equation>
      <label|eq 20.143.202>\<forall\>D\<in\>\<delta\><around*|[|\<cal-D\>|]><text|
      we have that >\<frak-D\><rsub|D><text| is a Dynkin system>
    </equation>

    Let <math|G\<in\>\<cal-D\>\<subseteq\>\<delta\><around*|[|\<cal-D\>|]>>
    then by the hypothesis we have <math|\<forall\>D\<in\>\<cal-D\>> that
    <math|G<big|cap>D\<in\>\<cal-D\>\<Rightarrow\>D\<in\>\<frak-D\><rsub|G>>,
    hence <math|\<cal-D\>\<subseteq\>\<frak-D\><rsub|G>>. As
    <math|\<frak-D\><rsub|G>> is a Dynkin system and
    <math|\<delta\><around*|[|\<cal-D\>|]>> is the smallest Dynkin system
    containing <math|\<cal-D\>> it follows that
    <math|\<delta\><around*|[|\<cal-D\>|]>\<subseteq\>\<frak-D\><rsub|G>>.
    Hence we have proved that\ 

    <\equation>
      <label|eq 20.144.202>\<forall\>G\<in\>\<cal-D\><text| we have
      >\<delta\><around*|[|\<cal-D\>|]>\<subseteq\>\<frak-D\><rsub|G>
    </equation>

    Let <math|G\<in\>\<cal-D\>> and <math|D\<in\>\<delta\><around*|[|\<cal-D\>|]><below|\<subseteq\>|<text|[eq:
    <reference|eq 20.144.202>]>>\<frak-D\><rsub|G>> then by the definition of
    <math|\<frak-D\><rsub|G>> we have <math|G<big|cap>D\<in\>\<delta\><around*|[|\<cal-D\>|]>>
    so that <math|G\<in\>\<frak-D\><rsub|D>>. In other words
    <math|\<forall\>D\<in\>\<delta\><around*|[|\<cal-D\>|]>> we have
    <math|\<forall\>G\<in\>\<cal-D\>> that <math|G\<in\>\<frak-D\><rsub|D>>
    proving that

    <\equation*>
      \<forall\>D\<in\>\<delta\><around*|[|\<cal-D\>|]><text| we have
      >\<cal-D\>\<subseteq\>\<frak-D\><rsub|D>
    </equation*>

    As <math|\<delta\><around*|[|\<cal-D\>|]>> is the smallest Dynkin system
    containg <math|\<cal-D\>> and <math|\<frak-D\><rsub|D>> is a Dynkin
    system [see eq: <reference|eq 20.143.202>] it follows from the above that\ 

    <\equation*>
      \<forall\>D\<in\>\<delta\><around*|[|\<cal-D\>|]><text| that
      >\<delta\><around*|[|\<cal-D\>|]>\<subseteq\>\<frak-D\><rsub|D>
    </equation*>

    Let <math|A,B\<in\>\<delta\><around*|[|\<cal-D\>|]>> then by the above
    <math|\<delta\><around*|[|\<cal-D\>|]>\<subseteq\>\<frak-D\><rsub|B>> and
    as <math|A\<in\>\<delta\><around*|(|\<cal-D\>|)>> we have
    <math|A\<in\>\<frak-D\><rsub|B>\<Rightarrowlim\><rsub|<text|[eq:
    <reference|eq 20.138.202>]>>A<big|cap>B\<in\>\<delta\><around*|[|\<cal-D\>|]>>.
    So we have that\ 

    <\equation*>
      \<forall\>A,B\<in\>\<delta\><around*|[|\<cal-D\>|]><text| we have
      <math|A<big|cap>B\<in\>\<delta\><around*|[|\<cal-D\>|]>> where
      >\<delta\><around*|[|\<cal-D\>|]><text| is a Dynkin system>
    </equation*>

    \ Hence by [theorem: <reference|measure Dynkin system condition for sigma
    algebra>] it follows finally that\ 

    <\equation*>
      \<delta\><around*|[|\<cal-D\>|]><text| is a >\<sigma\><text|-algebra>
    </equation*>
  </proof>

  <subsubsection|Uniqueness theorem>

  We are now ready to prove that every set function on
  <math|\<cal-G\>\<subseteq\>\<cal-P\><around*|(|X|)>> has a unique extension
  to a measure on <math|\<sigma\><around*|[|\<cal-G\>|]>> if certain
  conditions are met.

  <\theorem>
    <label|measure uniqueness of extension of a measure>Let <math|X> be a
    set, <math|\<cal-G\>\<subseteq\>\<cal-P\><around*|(|X|)>> such that:\ 

    <\enumerate>
      <item><math|\<forall\>A,B\<in\>\<cal-G\>> we have
      <math|A<big|cap>B\<in\>\<cal-G\>> [in other words <math|\<cal-G\>> is
      <math|\<cap\>>-stable]

      <item><math|\<exists\><around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-G\>>
      such that <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|G<rsub|i>\<subseteq\>G<rsub|i+1><text|,
      >\<mu\><around*|(|G<rsub|i>|)>\<less\>\<infty\>> and
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>=X>\ 
    </enumerate>

    Then if <math|\<mu\>:\<sigma\><around*|[|\<cal-G\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    and <math|\<nu\>:\<sigma\><around*|[|\<cal-G\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    are two measures defined on <math|\<sigma\><around*|[|\<cal-G\>|]>> [the
    <math|\<sigma\>>-algebra generated from <math|\<cal-G\>>] such that
    <math|\<forall\>A\<in\>\<cal-G\><text| we have
    >\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>> then

    <\equation*>
      \<mu\>=\<nu\>
    </equation*>
  </theorem>

  <\proof>
    Given <math|n\<in\>\<bbb-N\>> define\ 

    <\equation>
      <label|eq 20.145.202>\<frak-D\><rsub|n>=<around*|{|A\<in\>\<sigma\><around*|[|\<cal-G\>|]>\|\<mu\><around*|(|G<rsub|n><big|cap>A|)>=\<nu\><around*|(|G<rsub|n><big|cap>A|)>|}>\<subseteq\>\<sigma\><around*|[|\<cal-G\>|]>
    </equation>

    We prove then that <math|\<frak-D\><rsub|n>> is a Dynkin system for every
    <math|n\<in\>\<bbb-N\>>. Take \ <math|G\<in\>\<cal-G\>> then
    <math|G,G<rsub|n>\<in\>\<cal-G\>> so that by (1)
    <math|G<rsub|n><big|cap>G\<in\>\<cal-G\>>, as <math|\<mu\>>,
    <math|\<nu\>> are the same on <math|\<cal-G\>> we have
    <math|\<mu\><around*|(|G<rsub|n><big|cap>G|)>=\<nu\><around*|(|G<rsub|n><big|cap>G|)>>.
    Hence we have

    <\equation>
      <label|eq 20.146.202>\<cal-G\>\<subseteq\>\<frak-D\><rsub|n>
    </equation>

    As <math|X\<in\>\<sigma\><around*|[|\<cal-G\>|]>> and
    <math|\<mu\><around*|(|G<rsub|n><big|cap>X|)>=\<mu\><around*|(|G<rsub|n>|)>\<equallim\><rsub|G<rsub|n>\<in\>\<cal-G\>>\<nu\><around*|(|G<rsub|n>|)><below|=\<nu\><around*|(|G<rsub|n><big|cap>X|)>|>>
    it follows that\ 

    <\equation>
      <label|eq 20.147.202>X\<in\>\<frak-D\><rsub|n>
    </equation>

    Let <math|A\<in\>\<frak-D\><rsub|n>> then we have
    <math|G<rsub|n>\\<around*|(|G<rsub|n><big|cap>A|)>\<equallim\><rsub|<text|[theorem:
    <reference|class set difference and union ,
    intersection>]>><around*|(|G<rsub|n>\\G<rsub|n>|)><big|cup><around*|(|G<rsub|n>\\A|)>=\<varnothing\><big|cup><around*|(|G<rsub|n>\\A|)>=G<rsub|n>\\A>
    so that\ 

    <\equation>
      <label|eq 20.148.202>G<rsub|n>\\<around*|(|G<rsub|n><big|cap>A|)>=G<rsub|n>\\A
    </equation>

    Further <math|\<mu\><around*|(|G<rsub|n><big|cap>A|)><below|\<leqslant\>|<text|[theorem:
    <reference|measure measure space properties
    (1)>]>>\<mu\><around*|(|G<rsub|n>|)><below|\<less\>|<text|(2)>>\<infty\>>
    and <math|\<nu\><around*|(|G<rsub|n><big|cap>A|)><below|\<leqslant\>|<text|[theorem:
    <reference|measure measure space properties
    (1)>]>>\<nu\><around*|(|G<rsub|n>|)><below|\<less\>|<text|(n)>>\<infty\>>
    so that by [theorem: <reference|measure measure space properties (1)>]

    <\equation>
      <label|eq 20.149.202>\<mu\><around*|(|G<rsub|n>\\<around*|(|G<rsub|n><big|cap>A|)>|)>=\<mu\><around*|(|G<rsub|n>|)>-\<mu\><around*|(|G<rsub|n><big|cap>A|)>\<wedge\>\<nu\><around*|(|G<rsub|n>\\<around*|(|G<rsub|n><big|cap>A|)>|)>=\<nu\><around*|(|G<rsub|n>|)>-\<nu\><around*|(|G<rsub|n><big|cap>A|)>
    </equation>

    hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|G<rsub|n><big|cap><around*|(|X\\A|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|class inclusion and union and
      intersection>(8)]>>>|<cell|\<mu\><around*|(|G<rsub|n>\\A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.148.202>]>>>|<cell|\<mu\><around*|(|G<rsub|n>\\<around*|(|G<rsub|n><big|cap>A|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.149.202>]>>>|<cell|\<mu\><around*|(|G<rsub|n>|)>-\<mu\><around*|(|G<rsub|n><big|cap>A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A\<in\>\<frak-D\><rsub|n>>>|<cell|\<mu\><around*|(|G<rsub|n>|)>-\<nu\>*<around*|(|G<rsub|n><big|cap>A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|G<rsub|n>\<in\>\<cal-G\>>>|<cell|\<nu\><around*|(|G<rsub|n>|)>-\<nu\><around*|(|G<rsub|n><big|cap>A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.149.202>]>>>|<cell|\<nu\><around*|(|G<rsub|n>\\<around*|(|G<rsub|n><big|cap>A|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.148.202>]>>>|<cell|\<nu\><around*|(|G<rsub|n>\\A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|class inclusion and union and
      intersection>]>>>|<cell|\<nu\><around*|(|G<rsub|n><big|cap><around*|(|X\\A|)>|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|X\\A|)>\<in\>\<frak-D\><rsub|n>>, further
    as <math|A\<in\>\<frak-D\><rsub|n>\<subseteq\>\<sigma\><around*|[|\<cal-G\>|]>>
    we have <math|X\\A\<in\>\<sigma\><around*|[|\<cal-G\>|]>>. Hence

    <\equation>
      <label|eq 20.150.202>\<forall\>A\<in\>\<frak-D\><rsub|n><text| we have
      >X\\A\<in\>\<frak-D\><rsub|n>
    </equation>

    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<frak-D\><rsub|n>>
    be a pairwise disjoint family. Then <math|\<forall\>i\<in\>\<bbb-N\>>
    with <math|i\<neq\>j> we have <math|<rigid|<around*|(|G<rsub|n><big|cap>A<rsub|i>|)><big|cap><around*|(|G<rsub|n><big|cap>A<rsub|j>|)>>\<subseteq\>A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>
    so that <math|<around*|{|G<rsub|n><big|cap>A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
    is pairwise disjoint. Hence\ 

    <\equation*>
      \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>><around*|(|G<rsub|n><big|cap>A<rsub|i>|)>|)>=<big|sum><rsub|i\<in\>\<bbb-N\>>\<mu\><around*|(|G<rsub|n><big|cap>A<rsub|i>|)>\<equallim\><rsub|A<rsub|i>\<in\>\<frak-D\><rsub|n>><big|sum><rsub|i\<in\>\<bbb-N\>>\<nu\><around*|(|G<rsub|n><big|cap>A<rsub|i>|)>=\<nu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>><around*|(|G<rsub|n><big|cap>A<rsub|i>|)>|)>
    </equation*>

    which, as <math|G<rsub|n><big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sqcup><rsub|i\<in\>\<bbb-N\>><around*|(|G<rsub|n><big|cap>A<rsub|i>|)>>
    and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<frak-D\><rsub|n>\<subseteq\>\<sigma\><around*|[|\<cal-G\>|]>>,
    proves that\ 

    <\equation>
      <label|eq 20.151.202>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<frak-D\><rsub|n><text|
      we have ><big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|>\<in\>\<frak-D\><rsub|n>
    </equation>

    By [eqs: <reference|eq 20.147.202>, <reference|eq 20.150.202> and
    <reference|eq 20.151.202>] we have\ 

    <\equation>
      <label|eq 20.152.202>\<frak-D\><rsub|n><text| is a Dynkin system>
    </equation>

    As <math|\<forall\>A,B\<in\>\<cal-G\>> we have by (1) that
    <math|A<big|cap>B\<in\>\<cal-G\>> we have by [theorem: <reference|measure
    Dynkin system condition for sigma algebra (1)>] that\ 

    <\equation>
      <label|eq 20.153.202>\<delta\><around*|[|\<cal-G\>|]>=\<sigma\><around*|[|\<cal-G\>|]>
    </equation>

    As by [eq: <reference|eq 20.146.202>]
    <math|\<cal-G\>\<subseteq\>\<frak-D\><rsub|n>> and
    <math|\<frak-D\><rsub|n>> is a Dynkin system it follows that

    <\equation*>
      \<sigma\><around*|[|\<cal-G\>|]><below|=|<text|[eq: <reference|eq
      20.153.202>]>>\<delta\><around*|[|\<cal-G\>|]>\<subseteq\>\<frak-D\><rsub|n><below|\<subseteq\>|<text|[eq:
      <reference|eq 20.145.202>]>>\<sigma\><around*|[|\<cal-G\>|]>
    </equation*>

    Hence we have <math|\<forall\>n\<in\>\<bbb-N\><text| that
    >\<sigma\><around*|[|\<cal-G\>|]>=\<frak-D\><rsub|n>> so that using the
    definition of <math|\<cal-D\><rsub|n>> [see eq: <reference|eq
    20.145.202>]

    <\equation>
      <label|eq 20.154.202>\<forall\>n\<in\>\<bbb-N\><text| we have
      >\<forall\>A\<in\>\<sigma\><around*|[|\<cal-G\>|]> that
      \<mu\><around*|(|G<rsub|n><big|cap>A|)>=\<nu\><around*|(|G<rsub|n><big|cap>A|)>
    </equation>

    Let <math|A\<in\>\<sigma\><around*|[|\<cal-G\>|]>> then
    <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|G<rsub|i><big|cap>A\<subseteq\>G<rsub|i+1><big|cap>A\<in\>\<sigma\><around*|[|\<cal-G\>|]>>
    and

    <\equation>
      <label|eq 20.173.1>A=A<big|cap>X=A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|G<rsub|i><big|cap>A|)>
    </equation>

    so that by [theorem: <reference|measure measure space properties (3)>] we
    have that\ 

    <\equation>
      <label|eq 20.155.202><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|G<rsub|i><big|cap>A|)><text|
      exists and ><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|G<rsub|i><big|cap>A|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|G<rsub|i><big|cap>A|)>|)><below|\<equallim\>|<text|[eq:
      <reference|eq 20.173.1>]>>\<mu\><around*|(|A|)>
    </equation>

    and

    <\equation>
      <label|eq 20.156.202><below|lim|i\<rightarrow\>\<infty\>>\<nu\><around*|(|G<rsub|i><big|cap>A|)><text|
      exists and ><below|lim|i\<rightarrow\>\<infty\>>\<nu\><around*|(|G<rsub|i><big|cap>A|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|G<rsub|i><big|cap>A|)>|)><below|\<equallim\>|<text|[eq:
      <reference|eq 20.173.1>]>>\<nu\><around*|(|A|)>
    </equation>

    Hence we have for <math|A\<in\>\<sigma\><around*|[|\<cal-G\>|]>> that\ 

    <\equation*>
      \<mu\><around*|(|A|)>\<equallim\><rsub|<text|[eq: <reference|eq
      20.155.202>]>><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|G<rsub|i><big|cap>A|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.154.202>]>><below|lim|i\<rightarrow\>\<infty\>>\<nu\><around*|(|G<rsub|i><big|cap>A|)><below|=|<text|[eq:
      <reference|eq 20.156.202>]>>\<nu\><around*|(|A|)>
    </equation*>

    proving that\ 

    <\equation*>
      \<mu\>=\<nu\>
    </equation*>
  </proof>

  <subsubsection|Constructing outer measures>

  Let <math|X> be a set then given <math|\<cal-G\>\<subseteq\>\<cal-P\><around*|(|X|)>>
  we want to extend a function <math|\<mu\>:\<cal-G\>\<rightarrow\><around*|[|0,\<infty\>|]>>
  to a measure on a <math|\<sigma\>>-algebra containing <math|\<cal-G\>>. To
  use the Carathéodory theorem for this task we have to construct a outer
  measure out of <math|\<mu\>>. This is the subject of this section. First we
  need some definitions that specifies the minimum requirements for this
  task.

  <\definition>
    <label|measure proto-ring><index|proto-ring><dueto|Proto-Ring>Let
    <math|X> be a set then <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is a <with|font-series|bold|proto-ring> on <math|X> if\ 

    <\equation*>
      \<varnothing\>\<subseteq\>\<cal-S\>
    </equation*>
  </definition>

  <\definition>
    <label|proto-measure><index|proto-measure><dueto|Proto-Measure>Let
    <math|X> be a set then and <math|\<cal-S\>> a proto-ring on <math|X> then
    a function <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a <with|font-series|bold|proto-measure >on <math|\<cal-S\>> if\ 

    <\equation*>
      \<mu\><around*|(|\<varnothing\>|)>=0
    </equation*>
  </definition>

  Next we shown how to construct a outer-measure from a proto-measure.

  <\theorem>
    <label|measure outer measure construction>Let <math|X> be a set,
    <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>> a proto-ring and
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    proto-measure on <math|\<cal-S\>> then\ 

    <\enumerate>
      <item>

      <\equation*>
        \<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]><text|
        defined by >\<mu\><rsup|\<ast\>><around*|(|A|)>=<choice|<tformat|<table|<row|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>|)><text|
        if >\<cal-S\><around*|[|A|]>\<neq\>\<varnothing\>>>|<row|<cell|\<infty\><text|
        if >\<cal-S\><around*|[|A|]>=\<varnothing\>>>>>>
      </equation*>

      where\ 

      <\equation*>
        \<cal-S\><around*|[|A|]>=<around*|{|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>\|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>
      </equation*>

      is a outer measure.\ 

      <item>If additional we have that\ 

      <\enumerate>
        <item><math|\<forall\>A,B\<in\>S> that
        <math|A<big|cap>B\<in\>\<cal-S\>>

        <item><math|\<forall\>A,B\<in\>\<cal-S\>> with <math|A\<subseteq\>B>
        we have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><text|
        with ><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-S\><text|
        we have <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>
      </enumerate>

      then

      <\equation*>
        \<forall\>A\<in\>\<cal-S\><text| we have
        >\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><around*|(|A|)>
      </equation*>
    </enumerate>

    <\note>
      <label|note 20.198.210>The outer measure defined in (1) is not
      neccesary a extension of <math|\<mu\>>, for that we need the extra
      conditions 2.a, 2.b, 2.c.
    </note>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Define <math|<around*|{|N<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>>
      by <math|N<rsub|i>=\<varnothing\>\<in\>\<cal-S\>> then
      <math|\<varnothing\>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>N<rsub|i>>
      so that <math|<around*|{|N<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|\<varnothing\>|]>>,
      hence <math|\<cal-S\><around*|[|\<varnothing\>|]>\<neq\>\<oslash\>>. So
      <math|0=<big|sum><rsub|I=1><rsup|\<infty\>>\<mu\><around*|(|\<varnothing\>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|N<rsub|i>|)>\<in\><around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>>,
      hence

      <\equation*>
        0\<leqslant\>inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>|)>\<leqslant\>0
      </equation*>

      proving that <math|\<mu\><rsup|\<ast\>><around*|(|\<varnothing\>|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>|)>=0>.
      Hence we have\ 

      <\equation>
        <label|eq 20.157.202>\<mu\><rsup|\<ast\>><around*|(|\<varnothing\>|)>=0
      </equation>

      Let <math|A,B\<in\>\<cal-P\><around*|(|X|)>> with
      <math|A\<subseteq\>B>. Then for <math|S<around*|[|B|]>> we have either:

      <\description>
        <item*|<math|S<around*|[|B|]>=\<varnothing\>>>Then
        <math|\<mu\><rsup|\<ast\>><around*|[|A|]>\<leqslant\>\<infty\>=\<mu\><rsup|\<ast\>><around*|[|B|]>>

        <item*|<math|\<cal-S\><around*|[|B|]>\<neq\>\<varnothing\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|B|]>>
        then <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>S>
        and <math|B\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
        hence, as <math|A\<subseteq\>B> we have
        <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> so that
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>>.
        Hence\ 

        <\equation*>
          \<varnothing\>\<neq\>\<cal-S\><around*|[|B|]>\<subseteq\>S<around*|[|A|]>
        </equation*>

        From the above it follows that

        <\equation*>
          <around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|B|]>|}>\<subseteq\><around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>,
        </equation*>

        so that by [theorem: <reference|order sup,inf and inclusion>]\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|[|A|]>>|<cell|=>|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|B|]>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><rsup|\<ast\>><around*|[|B|]>>>>>
        </eqnarray*>
      </description>

      To summarize\ 

      <\equation>
        <label|eq 20.158.202>\<forall\>A,B\<in\>\<cal-P\><around*|(|X|)><text|
        with >A\<subseteq\>B<text| we have
        >\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>
      </equation>

      Let <math|<around*|{|T<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then we have two cases to consider:\ 

      <\description>
        <item*|<math|\<exists\>i\<in\>\<bbb-N\><text| such that
        >\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>=\<infty\>>>Then
        <math|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>|)>\<leqslant\>\<infty\>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>

        <item*|<math|\<forall\>i\<in\>\<bbb-N\><text| we have
        >\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>\<less\>\<infty\>>>Then
        we must have <math|\<forall\>i\<in\>\<bbb-N\>> that
        <math|\<cal-S\><around*|[|T<rsub|i>|]>\<neq\>\<infty\>> so that

        <\equation*>
          \<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|T<rsub|i>|]>|}>|)>
        </equation*>

        Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Given
        <math|n\<in\>\<bbb-N\>> we have, as
        <math|\<mu\><rsup|\<ast\>><around*|(|T<rsub|n>|)>\<less\>\<infty\>>,
        that <math|<rigid|\<mu\><rsup|\<ast\>><around*|(|T<rsub|n>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|T<rsub|n>|)>+<frac|\<varepsilon\>|2<rsup|n>>>>,
        so as <math|\<mu\><rsup|\<ast\>><around*|(|T<rsub|n>|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|T<rsub|n>|]>|}>|)>>,
        there exist a <math|<around*|{|I<rsub|n,i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|T<rsub|n>|]><text|
        with ><rigid|T<rsub|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|n,i>>>
        such that <math|\<mu\><rsup|\<ast\>><around*|(|T<rsub|n>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|n,i>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|T<rsub|n>|)>+<frac|\<varepsilon\>|2<rsup|n>>>.
        Hence we have

        <\equation>
          <label|eq 20.159.202>\<mu\><rsup|\<ast\>><around*|(|T<rsub|n>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|n,i>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|T<rsub|n>|)>+<frac|\<varepsilon\>|2<rsup|n>><text|
          and >T<rsub|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|n,i>
        </equation>

        As <math|\<bbb-N\>\<times\>\<bbb-N\>> is denumerable [see theorem:
        <reference|denumerable product of denumerable sets is denumerable>]
        there exist a bijection <math|\<beta\>:\<bbb-N\>\<rightarrow\>\<bbb-N\>\<times\>\<bbb-N\>>.
        Let <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>> then
        <math|\<exists\>k\<in\>\<bbb-N\>> such that
        <math|x\<in\>T<rsub|k><below|\<subseteq\>|<text|[eq: <reference|eq
        20.159.202>]>><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|k,i>>, hence
        <math|\<exists\>l\<in\>\<bbb-N\>> such that
        <math|x\<in\>I<rsub|k,l>>. As <math|<around*|(|k,l|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\>>
        there exist a <math|i\<in\>\<bbb-N\>> such that
        <math|\<beta\><around*|(|i|)>=<around*|(|k,l|)>> so that
        <math|x\<in\>I<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>.
        To summarize we have proved that

        <\equation>
          <label|eq 20.160.202><big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>><text|
          so that ><around*|{|I<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|<big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>|]>
        </equation>

        Hence <math|><math|\<cal-S\><around*|[|<big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>|]>\<neq\>\<varnothing\>>
        so that

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>|)>>|<cell|=>|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|<big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>|]>|}>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
          <reference|eq 20.160.202>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|extended denumerable sum of denumerable
          sums>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|i,j>|)>|)><rsub|>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
          <reference|eq 20.159.202>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|i>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended infinite sum
          properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>><frac|\<varepsilon\>|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended infinite sum
          properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>+\<varepsilon\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>+\<varepsilon\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|extended lim inf lim sup in the set of real
          numbers>]>\<wedge\><text|[examle: <reference|series power series in
          R>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>+\<varepsilon\>\<cdot\><frac|<frac|1|2>|1-<frac|1|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>+\<varepsilon\>>>>>
        </eqnarray*>

        Hence we have\ 

        <\equation*>
          \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+> that
          \<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>+\<varepsilon\>
        </equation*>

        which, as <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> is choosen
        arbitrary, proves by [theorem: <reference|extended
        x\<less\>=x+e=\<gtr\>x\<less\>=e>] that

        <\equation*>
          \ \<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>|)>\<less\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>.
        </equation*>
      </description>

      \;

      To summarize we have in all cases that\ 

      <\equation>
        <label|eq 20.161.202>\<forall\><around*|{|T<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)><text|
        we have >\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>T<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|T<rsub|i>|)>
      </equation>

      Taking in account the definition of a outer measure and [eqs:
      <reference|eq 20.157.202>, <reference|eq 20.158.202> and <reference|eq
      20.161.202>] it follows that\ 

      <\equation*>
        \<mu\><rsup|\<ast\>><text| is a outer measure on >X
      </equation*>

      <item>If <math|A\<in\>\<cal-S\>> then for
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>>
      defined by <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A<text|
      if >i=1>>|<row|<cell|\<varnothing\><text| if
      >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>\<in\>\<cal-S\>> we
      have <math|A=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> so that
      <math|A\<in\>S<around*|[|A|]>\<Rightarrow\>\<cal-S\><around*|[|A|]>\<neq\>\<varnothing\>>
      and

      <\equation*>
        <big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<equallim\><rsub|<text|[theorem:
        <reference|extended series and index
        translation>]>><big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=2><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>+<big|sum><rsub|i=2><rsup|\<infty\>>0=\<mu\><around*|(|A|)>
      </equation*>

      so that <math|\<mu\><around*|(|A|)>\<in\><around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>S<around*|[|A|]>|}>>.
      Hence\ 

      <\equation*>
        \<mu\><rsup|\<ast\>><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>S<around*|[|A|]>|}>|)>\<leqslant\>\<mu\><around*|(|A|)>
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 20.177.204>\<forall\>A\<in\>\<cal-S\><text| we have
        >\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><around*|(|A|)>
      </equation>

      For the opposite inequality, let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><around*|[|A|]>>
      then <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> so
      that <math|<rigid|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<big|cap>A<rsub|i>|)>=A\<in\>\<cal-S\>>>.
      By (2.a) we have <math|<around*|{|A<big|cap>A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>S>
      and further

      <\equation*>
        \<mu\><around*|(|A|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<big|cap>A<rsub|i>|)>|)><below|\<leqslant\>|<around*|(|2.c|)>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<big|cap>A<rsub|i>|)><below|\<leqslant\>|<text|(2.b)>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      Hence <math|\<mu\><around*|(|A|)>> is a lower bound of
      <math|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>S<around*|[|A|]>|}>,therefore
      \<mu\><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|A|)>>.
      Combining this with [eq: <reference|eq 20.177.204>] gives finally\ 

      <\equation*>
        \<mu\><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>
      </equation*>
    </enumerate>
  </proof>

  As is mentioned in [note: <reference|note 20.198.210>] if we want that the
  above theorem extend a proto-measure to a outer measure we need extra
  conditions on the proto-ring and the proto-measure. This motivates the
  definition of a semi-ring and a pre-measure below.

  <\definition>
    <label|measure semi-ring><index|semi-ring><dueto|Semi-Ring>Let <math|X>
    be a set then <math|S\<subseteq\>\<cal-P\><around*|(|X|)>> is a
    <with|font-series|bold|semi-ring> on <math|X> if

    <\enumerate>
      <item><math|\<varnothing\>\<in\>\<cal-S\>>

      <item><math|\<forall\>A,B\<in\>\<cal-S\>> we have
      <math|A<big|cap>B\<in\>\<cal-S\>> [in other words <math|\<cal-S\>> is
      <math|<big|cap>>-stable]

      <item><math|\<forall\>A,B\<in\>\<cal-S\>> there a finite pairwise
      disjoint family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> such that

      <\equation*>
        A\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>
      </equation*>
    </enumerate>

    <\note>
      As by (2) <math|\<cal-S\>> is <math|\<cap\>>-stable it follows from
      [lemma: <reference|measure union intersection stable>] that
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> we have that
      <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-S\>>.
    </note>
  </definition>

  <\definition>
    <label|measure pre-measure><index|pre-measure><dueto|Pre-Measure>Let
    <math|X> be a set, <math|\<cal-S\>> a semi-ring on <math|X> then a set
    function <math|<rigid|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>>>
    is a pre-measure if

    <\enumerate>
      <item><math|\<mu\><around*|(|\<varnothing\>|)>=0>

      <item>For every pairwise disjoint family
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>>
      such that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-S\>>
      we have that

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      In other words <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>>
      is countable addive on <math|\<cal-A\>>]
    </enumerate>
  </definition>

  The above definitions do not exactly cover the extra conditions <math|1.a>,
  <math|2.b> and <math|2.c> in [theorem: <reference|measure outer measure
  construction>] [note: <reference|note 20.198.210>]. The next theorems will
  ensure that this will be datisfied for semi-rings and pre-measures.

  <\lemma>
    <label|lemma 20.204.217>Let <math|X> be a set, <math|\<cal-S\>> a
    semi-ring on <math|X>, <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
    and <math|A\<in\>\<cal-S\>> then there exist a pairwise disjoint family
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>>,
    <math|m\<in\>\<bbb-N\>> such that\ 

    <\equation*>
      A\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>
    </equation*>
  </lemma>

  <\proof>
    We use induction to prove this. Let <math|A\<in\>\<cal-S\>> and define

    <\equation*>
      S<rsub|A>=<around*|{|n\<in\>\<bbb-N\>\|If
      <around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\><rsub|i><text|
      then there exist a pairwise disjoiint
      ><around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>,m\<in\>\<bbb-N\><text|
      such that >A\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>|)>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S<rsub|A>>>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-S\>>
      then <math|A\\<big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=A\\A<rsub|1>>.
      As <math|\<cal-S\>> is a semi-ring it follows that there exist a
      pairwise disjoint family <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>>,
      <math|m\<in\>\<bbb-N\>> such that <math|A\\<big|cup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=A\\A<rsub|1>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>>
      which proves that <math|1\<in\>\<cal-S\>>.

      <item*|<math|n\<in\>\<cal-S\><rsub|A>\<Rightarrow\>n+1\<in\>\<cal-S\><rsub|A>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-S\>>
      then as <math|n\<in\>S> there exist a
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>>
      pairwise disjoint such that\ 

      <\equation>
        <label|eq 20.188.217>A\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>
      </equation>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>>|<cell|=>|<cell|A\\<around*|(|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup>A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class set difference and union ,
        intersection>]>>>|<cell|<around*|(|A\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>\\A<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.188.217>]>>>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>|)>\\A<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family properties (3)>]>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|B<rsub|i>\\A<rsub|n+1>|)><eq-number><label|eq
        20.189.217>>>>>
      </eqnarray*>

      If <math|i,j\<in\><around*|{|1,\<ldots\>,m|}>> with <math|i\<neq\>j>
      then we have <math|<around*|(|B<rsub|i>\\A<rsub|n+1>|)><big|cap><around*|(|B<rsub|j>\\A<rsub|n+1>|)>\<subseteq\>B<rsub|i><big|cap>B<rsub|j>=\<varnothing\>>
      proving that\ 

      <\equation>
        <label|eq 20.190.217><around*|{|B<rsub|i>\\A<rsub|n+1>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><text|
        is pairwise disjoint>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,m|}>> then as <math|\<cal-S\>>
      is a semi-ring and <math|B<rsub|i>,A<rsub|n+1>\<in\>\<cal-S\>> there
      exist a pairwise disjoint <math|<around*|{|C<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>.,n<rsub|i>|}>>\<subseteq\>\<cal-S\>>
      such that

      <\equation>
        <label|eq 20.191.217.1>B<rsub|i>\\A<rsub|n+1>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|i,j>
      </equation>

      Hence using [lemma: <reference|lemma 20.110.214>]\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<label|eq
        20.191.217><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|B<rsub|i>\\A<rsub|n+1>|)>>|<cell|=>|<cell|<big|sqcup><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>><eq-number>>>>>
      </eqnarray*>

      and\ 

      <\equation>
        <label|eq 20.192.217><around*|{|C<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>|}><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>\<subseteq\>\<cal-S\><text|
        is pairwise disjoint>
      </equation>

      As <math|><math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>
      is finite [see theorems: <reference|product of finite sets>,
      <reference|finite union of finite sets is finite>] there exist a
      bijection such that <math|\<beta\>:<around*|{|1,\<ldots\>,N|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>.
      Let <math|i,j\<in\><around*|{|1,\<ldots\>,N|}>> with <math|i\<neq\>j>
      then, as <math|\<beta\>> is injective, we have
      <math|\<beta\><around*|(|i|)>\<neq\>\<beta\><around*|(|j|)>>. For
      <math|\<beta\><around*|(|i|)><rsub|1>>,
      <math|\<beta\><around*|(|j|)><rsub|1>> we have either:\ 

      <\description>
        <item*|<math|\<beta\><around*|(|i|)><rsub|1>=\<beta\><around*|(|j|)><rsub|1>>>Then
        we must have that <math|\<beta\><around*|(|i|)><rsub|2>\<neq\>\<beta\><around*|(|j|)><rsub|2>>
        so that

        <\equation*>
          C<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>><big|cap>C<rsub|\<beta\><around*|(|j|)><rsub|1>,\<beta\><around*|(|j|)><rsub|2>>=C<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>><big|cap>C<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|j|)><rsub|2>>=\<varnothing\>
        </equation*>

        <item*|<math|\<beta\><around*|(|i|)><rsub|1>\<neq\>\<beta\><around*|(|j|)><rsub|1>>>Then
        we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|C<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>><big|cap>C<rsub|\<beta\><around*|(|j|)><rsub|1>,\<beta\><around*|(|j|)><rsub|2>>>|<cell|\<subseteq\>>|<cell|<around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|\<beta\><around*|(|i|)><rsub|1>>|}>>C<rsub|\<beta\><around*|(|i|)><rsub|1>,k>|)><big|cap><around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|\<beta\><around*|(|j|)><rsub|1>>|}>>C<rsub|\<beta\><around*|(|j|)><rsub|1>,k>|)>>>|<row|<cell|>|<cell|=>|<cell|B<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|j|)><rsub|1>>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>>>
        </eqnarray*>
      </description>

      which proves that\ 

      <\equation>
        <label|eq 20.193.217><around*|{|C<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>\<subseteq\>\<cal-S\><text|
        is pairwise disjoint>
      </equation>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.189.217>]>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|B<rsub|i>\\A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.191.217>]>>>|<cell|<big|sqcup><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|\<sigma\><rsub|1>,\<sigma\><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family union of family set and
        surjections>]>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>C<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>>>>>
      </eqnarray*>

      which proves that <math|n+1\<in\>\<cal-S\>>.
    </description>
  </proof>

  <\theorem>
    <label|measure pre-measure is additive>Let <math|X> be a set,
    <math|\<cal-S\>> a semi-ring on <math|X> and
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    pre-measure then <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>S>
    pairwise disjoint, <math|n\<in\>\<bbb-N\>> with
    <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-S\>>
    we have

    <\equation*>
      \<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>A<rsub|i>
    </equation*>

    In other words a pre-measure is additive.
  </theorem>

  <\proof>
    As for a pre-measure we have <math|\<mu\><around*|(|\<varnothing\>|)>=0>
    and <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> is
    countable additive it follows from [theorem: <reference|measure countable
    additivity implies additivity>] that <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is additive. In other words <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>S>
    pairwise disjoint, <math|n\<in\>\<bbb-N\>> with
    <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-S\>>
    we have\ 

    <\equation*>
      \<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>A<rsub|i>
    </equation*>
  </proof>

  <\theorem>
    <label|measure additive function monotone>Let <math|X> be a set,
    <math|\<cal-S\>> a semi-ring on <math|X> and
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> a additive
    set function [see definition: <reference|measure additive set function>]
    then we have:\ 

    <\enumerate>
      <item><math|\<forall\>A\<in\>\<cal-S\>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> <with|font-series|bold|pairwise disjoint> such
      that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-S\>>
      and <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\>A>
      then

      <\equation*>
        <big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A|)>
      </equation*>

      <item><math|\<forall\>A,B\<in\>\<cal-S\>> with <math|A\<subseteq\>B> we
      have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|A> and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> then by [lemma: <reference|lemma 20.204.217>]
      there exist a pairwise disjoint <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> such that\ 

      <\equation>
        <label|eq 20.195.217>A\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\>!,\<ldots\>,m>B<rsub|i>
      </equation>

      Define\ 

      <\equation*>
        <around*|{|D<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>\<subseteq\>\<cal-S\><text|
        by >D<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|B<rsub|i-n><text| if
        >i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>\<subseteq\>\<cal-S\>
      </equation*>

      Let <math|i,j\<in\><around*|{|1,\<ldots\>,n+m|}>> with <math|i\<neq\>j>
      then we can always assume that <math|i\<less\>j> [otherwise exchange
      <math|i> and <math|j>]. For <math|i> we have either:\ 

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then for <math|j> we
        have either:

        <\description>
          <item*|<math|j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
          <math|D<rsub|i><big|cap>D<rsub|j>=A<rsub|i><big|cap>A<rsub|j><below|=|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
          is pairwise disjoint>>\<varnothing\>>

          <item*|<math|j\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>Then\ 

          <\equation*>
            D<rsub|i><big|cap>D<rsub|j>=A<rsub|i><big|cap>B<rsub|j-n>\<subseteq\>A<rsub|i><big|cap><around*|(|A\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=\<varnothing\>
          </equation*>
        </description>

        <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>Then as
        <math|i\<less\>j> we have <math|j\<in\><around*|{|n+1,\<ldots\>,n+m|}>>
        so that\ 

        <\equation*>
          D<rsub|i><big|cap>D<rsub|j>=B<rsub|i-n><big|cap>B<rsub|j-n>\<equallim\><rsub|i-n\<neq\>j-n>\<varnothing\>
        </equation*>
      </description>

      hence\ 

      <\equation>
        <label|eq 20.196.217><around*|{|D<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>\<subseteq\>\<cal-S\><text|
        is pairwise disjoint>
      </equation>

      Further as <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\>A>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class disjoint unions>]>>>|<cell|<around*|(|A\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>|)><big|sqcup><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>D<rsub|i+n>|)><big|sqcup><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family union of family set and
        surjections>]>>>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>D<rsub|i>|)><big|sqcup><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family properties (2)>]>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>D<rsub|i><eq-number><label|eq
        20.197.217>>>>>
      </eqnarray*>

      So as <math|><math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>D<rsub|i>=A\<in\>\<cal-S\>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|A|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.197.217>]>>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>D<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><text|
        is additive>>>|<cell|<big|sum><rsub|i=1><rsup|n+m>\<mu\><around*|(|D<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|D<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|n+m>\<mu\><around*|(|D<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|n+m>\<mu\><around*|(|D<rsub|i>|)>>>>>
      </eqnarray*>

      so that by [theorem: <reference|extended 0\<less\>=y and z=x+y then
      x\<less\>=z>] then we have\ 

      <\equation*>
        <big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A|)>
      </equation*>

      <item>Let <math|A,B\<in\>\<cal-S\>> with <math|A\<subseteq\>B>. Take
      then <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-S\>>
      by <math|A<rsub|i>=A> then we have <math|<big|sqcup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=A\<subseteq\>B>
      such that by (1) we have <math|\<mu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|B|)>>
    </enumerate>
  </proof>

  TODO check the rest

  <\corollary>
    <label|measure pre-measure monotonity>Let <math|X> be a set,
    <math|\<cal-S\>> a semi-ring on <math|X> and
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    pre-measure on <math|\<cal-S\>> [see definition: <reference|measure
    pre-measure>] then we have:\ 

    <\enumerate>
      <item><math|\<forall\>A\<in\>\<cal-S\>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> pairwise disjoint such that
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\>A>
      then

      <\equation*>
        <big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A|)>
      </equation*>

      <item><math|\<forall\>A,B\<in\>\<cal-S\>> with <math|A\<subseteq\>B> we
      have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>
    </enumerate>
  </corollary>

  <\proof>
    As a pre-measure is additive [see theorem: <reference|measure pre-measure
    is additive>] this follows from the previous theorem [theorem:
    <reference|measure additive function monotone>].
  </proof>

  <\theorem>
    <label|measure pre-measure is countable sub-additive>Let <math|X> be a
    set, <math|\<cal-S\>> a semi-ring on <math|X> and
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    pre-measure then <math|\<mu\>> is countable sub-additive.\ 
  </theorem>

  <\proof>
    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>>
    be a sequence such that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-S\>>.
    Define\ 

    <\equation*>
      <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text| by
      >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1><text| if
      >i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j><text|
      if >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>
    </equation*>

    then by [lemma: <reference|lemma 20.161.201>]\ 

    <\equation>
      <label|eq 20.165.204><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text|
      is pairwise disjoint and ><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
    </equation>

    Let <math|i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>> then as
    <math|\<cal-S\>> is a semi-ring there exist a pairwise disjoint family
    <math|<around*|{|C<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>\<subseteq\>\<cal-S\>>
    such that <math|B<rsub|i>=A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|i,j>>.
    Define <math|n<rsub|1>=1> and <math|<around*|{|C<rsub|1,j>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<cal-S\>>
    by <math|C<rsub|1,1>=A<rsub|1>>. To summarize we have\ 

    <\equation>
      <label|eq 20.166.204>\<forall\>i\<in\>\<bbb-N\><text| there exist a
      pairwise disjoint ><around*|{|C<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>\<subseteq\>\<cal-S\><text|
      such that >B<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|i,j>
    </equation>

    By [corollary: <reference|union of {i}x{1,..,ni}>] it follows that
    <math|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>
    is denumerable, hence there exist a bijection

    <\equation*>
      \<sigma\>:\<bbb-N\>\<rightarrow\><big|cup><rsub|i\<in\>\<bbb-N\>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>
    </equation*>

    Define then the following sequence of elements of <math|\<cal-S\>>

    <\equation>
      <label|eq 20.167.204><around*|{|C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>
    </equation>

    If <math|x\<in\><big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> then there
    exist a <math|i\<in\>\<bbb-N\>> such that
    <math|x\<in\>B<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|i,j>>,
    hence there exist a <math|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>
    such that <math|x\<in\>C<rsub|i,j>>, as
    <math|<around*|(|i,j|)>\<in\><big|cup><rsub|i\<in\>\<bbb-N\>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>
    there exist a <math|k\<in\>\<bbb-N\>> such that
    <math|<around*|(|i,j|)>=\<sigma\><around*|(|k|)>>, hence
    <math|x\<in\>C<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>.
    Hence we have\ 

    <\equation>
      <label|eq 20.168.204><big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>
    </equation>

    If <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
    then there exist a <math|i\<in\>\<bbb-N\>> such that

    <\equation*>
      x\<in\>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|\<sigma\><around*|(|i|)><rsub|1>>|}>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,j>=B<rsub|\<sigma\><around*|(|i|)><rsub|1>>\<subseteq\><big|sqcup><rsub|j\<in\>\<bbb-N\>>B<rsub|j>
    </equation*>

    which proves that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|sqcup><rsub|j\<in\>\<bbb-N\>>B<rsub|j>>.
    Combining this with [eq: <reference|eq 20.168.204>] results in\ 

    <\equation>
      <label|eq 20.169.204><big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i><below|=|<text|[eq:
      <reference|eq 20.165.204>]>><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-S\>
    </equation>

    Let <math|i,j\<in\>\<bbb-N\><text| with <math|i\<neq\>j>>> then we have
    either\ 

    <\description>
      <item*|<math|\<sigma\><around*|(|i|)><rsub|1>=\<sigma\><around*|(|j|)><rsub|1>>>Then
      as <math|\<sigma\>> is injective <math|\<sigma\><around*|(|i|)>\<neq\>\<sigma\><around*|(|j|)>>
      we have <math|\<sigma\><around*|(|i|)><rsub|2>\<neq\>\<sigma\><around*|(|i|)><rsub|2>>
      so that

      <\equation*>
        C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><big|cap>C<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>=C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><big|cap>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>=\<varnothing\>
      </equation*>

      <item*|<math|\<sigma\><around*|(|i|)><rsub|1>\<neq\>\<sigma\><around*|(|j|)><rsub|1>>>Then
      <math|C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><big|cap>C<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>><below|\<subseteq\>|<text|[eq:
      <reference|eq 20.166.204>]>>B<rsub|\<sigma\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<sigma\><around*|(|j|)><rsub|1>>\<equallim\><rsub|\<sigma\><around*|(|i|)><rsub|1>\<neq\>\<sigma\><around*|(|i|)><rsub|2>>\<varnothing\>>
    </description>

    which proves that\ 

    <\equation>
      <label|eq 20.170.204><around*|{|C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><text|
      is pairwise disjoint>
    </equation>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.169.204>]>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eqs:
      <reference|eq 20.169.204>, <reference|eq 20.167.204>, <reference|eq
      20.170.204>]>\<wedge\>\<mu\><text| is a
      pre-measure>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended denumerable sum of finite
      sums>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|n<rsub|i>>\<mu\><around*|(|C<rsub|i,j>|)>|)><eq-number><label|eq
      20.171.204>>>>>
    </eqnarray*>

    As <math|\<forall\>i\<in\>\<bbb-N\>> <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|i,j><below|=|<text|[eq:
    <reference|eq 20.166.204>]>>B<rsub|i><rsub|>\<subseteq\>A<rsub|i>> it
    follows from [corollary: <reference|measure pre-measure monotonity>] and
    [eq: <reference|eq 20.170.204>] that <math|><math|<big|sum><rsub|j=1><rsup|n<rsub|i>>\<mu\><around*|(|C<rsub|i,j>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>>
    which combined with [eq: <reference|eq 20.171.204>] gives\ 

    <\equation*>
      \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>A<rsub|j>
    </equation*>

    Hence <math|\<mu\>> is countable sub-additive.
  </proof>

  We can now combine the above theorems to prove a version of [theorem:
  <reference|measure outer measure construction>] for semi-rings and
  pre-measures.

  <\theorem>
    <label|measure outer measure construction from pre-measure>Let <math|X>
    be a set, <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>> a
    semi-ring and <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a pre-measure on <math|\<cal-S\>> then\ 

    <\equation*>
      \<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      defined by >\<mu\><rsup|\<ast\>><around*|(|A|)>=<choice|<tformat|<table|<row|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>|)><text|
      if >\<cal-S\><around*|[|A|]>\<neq\>\<varnothing\>>>|<row|<cell|\<infty\><text|
      if >\<cal-S\><around*|[|A|]>=\<varnothing\>>>>>>
    </equation*>

    where\ 

    <\equation*>
      \<cal-S\><around*|[|A|]>=<around*|{|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>\|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>
    </equation*>

    is a outer measure and\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-S\><text| we have
      >\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><around*|(|A|)>
    </equation*>

    so that\ 

    <\equation*>
      \<mu\><rsup|\<ast\>><text| is a extension of >\<mu\>
    </equation*>
  </theorem>

  <\proof>
    As <math|\<mu\>> is a pre-measure [see definition: <reference|measure
    pre-measure>] we have that \ <math|\<mu\><around*|(|\<varnothing\>|)>=0>
    hence\ 

    <\equation*>
      \<mu\><text| is a proto-measure on >\<cal-S\>
    </equation*>

    Using [theorems: <reference|measure pre-measure monotonity>,
    <reference|measure pre-measure is countable sub-additive>] it follows
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|\<forall\>A,B\<in\>\<cal-S\><text|
      with >A\<subseteq\>B<text| we have >\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>|<cell|>>|<row|<cell|>|<cell|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>S<text|
      such that ><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-S\><text|
      we have >\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>|<cell|>>>>
    </eqnarray*>

    and as <math|\<cal-S\>> is a semi-ring we have\ 

    <\equation*>
      \<forall\>A,B\<in\>\<cal-S\><text| we have >A<big|cap>B\<in\>\<cal-S\>
    </equation*>

    So all conditions for [theorem: <reference|measure outer measure
    construction>] are satisfies so that\ 

    <\equation*>
      \<mu\><rsup|\<ast\>><text| is a outer measure on >S<text| and
      >\<forall\>A\<in\>\<cal-S\><text| we have
      >\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><around*|(|A|)>
    </equation*>
  </proof>

  In the above proof we use the fact that a pre-measure is countable
  sub-additive [see theorem <reference|measure pre-measure is countable
  sub-additive>] but never the countable additivity that is part of the
  definition of a pre-measure. So why do we define a measure to be countable
  additive? The answer lies in proving the existance of a unique extension of
  a pre-measure on a semi-ring <math|\<cal-S\>> to a measure on
  <math|\<sigma\><around*|[|\<cal-S\>|]>>. To extend the pre-measure
  <math|\<mu\>> on <math|\<cal-S\>> we first use [theorem: <reference|measure
  outer measure construction>] to create a outer-measure
  <math|\<mu\><rsup|\<ast\>>> that extend <math|\<mu\>> [here we need
  countable sub-additivity], next use the Carathéodory theorem [theorem:
  <reference|measure Caratheodory>] to find a measure on
  <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>. However to make sure
  that the constructed measure is also a measure on
  <math|\<sigma\><around*|[|\<cal-S\>|]>> we still have to prove that
  <math|\<sigma\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>
  and this is where we need additivity of <math|\<mu\>>. The countable
  additivity of a pre-measure ensures the additivity and countable
  sub-additivity of the pre-measure. Another way to look at this is the
  following, if <math|\<mu\>> on <math|S> is extended to a countable additive
  measure on <math|\<sigma\><around*|[|\<cal-S\>|]>> then we must have, as
  <math|\<cal-S\>\<subseteq\>\<sigma\><around*|[|\<cal-S\>|]>>, that
  <math|\<mu\>> is also countable additive.

  <\theorem>
    <label|measure extending pre-measure to a measure>Let <math|X> be a set,
    <math|\<cal-S\>> a semi-ring on <math|X> and
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    pre-measure on <math|\<cal-S\>> then\ 

    <\equation*>
      \<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>
      defined by \<mu\><rsup|\<ast\>><around*|(|A|)>=<choice|<tformat|<table|<row|<cell|\<infty\><text|
      if >\<cal-S\><around*|[|A|]>=\<infty\>>>|<row|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>|)>>>>>>
    </equation*>

    where\ 

    <\equation*>
      \<cal-S\><around*|[|A|]>=<around*|{|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>\|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>
    </equation*>

    is a outer measure on <math|X> with\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-S\><text| we have
      >\<mu\><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)><text| in
      other words >\<mu\><rsup|\<ast\>><text| is a extension of >\<mu\><text|
      to >\<cal-P\><around*|(|X|)>
    </equation*>

    Further\ 

    <\equation*>
      \<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>B\<in\>\<cal-P\><around*|(|X|)><text|
      we have >\<mu\><rsup|\<ast\>><around*|(|B|)>=\<mu\><rsup|\<star\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>|}>
    </equation*>

    is a <math|\<sigma\>>-algebra on <math|X> and\ 

    <\equation*>
      <around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>:\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      is a measure on >\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
    </equation*>

    Further

    <\equation*>
      \<cal-S\>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
    </equation*>

    so that by [theorem: <reference|measure generated sigma algebra>]\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
    </equation*>

    and by [theorem: <reference|measure on sub sigma algebra>]

    <\equation*>
      <around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>>:\<sigma\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      is a measure to >\<sigma\><around*|[|\<cal-S\>|]>
    </equation*>

    Hence

    <\equation*>
      <around*|\<langle\>|X,\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>,<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>|\<rangle\>><text|
      and ><around*|\<langle\>|X,\<sigma\><around*|[|\<cal-S\>|]>\<comma\><around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>>|\<rangle\>><text|
      are measure spaces>
    </equation*>

    where\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-S\><text| we have
      >\<mu\><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>=<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>>
    </equation*>

    If additional there exist a <math|<around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><rsub|>>
    such that <math|\<forall\>i\<in\>\<bbb-N\>>
    <math|G<rsub|i>\<subseteq\>G<rsub|i+1>\<wedge\>\<mu\><around*|(|G<rsub|i>|)>\<less\>\<infty\>>
    and <math|X=<big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>> then if
    <math|\<nu\>:\<sigma\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a another measure on <math|\<sigma\><around*|[|\<cal-S\>|]>> such that
    <math|\<forall\>A\<in\>\<cal-S\>> we have
    <math|\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>> then\ 

    <\equation*>
      \<nu\>=<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>>
    </equation*>

    In other words the extension of <math|\<mu\>> to a measure
    <math|<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>>>
    on <math|\<sigma\><around*|[|\<cal-S\>|]>> is unique.

    <\note>
      We need additivity on <math|\<mu\>> to prove that
      <math|\<cal-S\>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>
      which is essential for the last part of the theorem.
    </note>
  </theorem>

  <\proof>
    Using [theorem: <reference|measure outer measure construction from
    pre-measure>] we have\ 

    <\equation>
      <label|eq 20.190.210>\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      defined by >\<mu\><rsup|\<ast\>><around*|(|A|)>=<choice|<tformat|<table|<row|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|A|]>|}>|)><text|
      if >\<cal-S\><around*|[|A|]>\<neq\>\<varnothing\>>>|<row|<cell|\<infty\><text|
      if >\<cal-S\><around*|[|A|]>=\<varnothing\>>>>>>
    </equation>

    where\ 

    <\equation>
      <label|eq 20.191.210>\<cal-S\><around*|[|A|]>=<around*|{|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>\|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>
    </equation>

    is a outer measure and\ 

    <\equation>
      <label|eq 20.192.210>\<forall\>A\<in\>\<cal-S\><text| we have
      >\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><around*|(|A|)>
    </equation>

    As <math|\<mu\><rsup|\<ast\>>> is a outer measure we can use Carathéodory
    [theorem: <reference|measure Caratheodory>] so that\ 

    <\equation*>
      \<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>B\<in\>\<cal-P\><around*|(|X|)><text|
      we have >\<mu\><rsup|\<ast\>><around*|(|B|)>=\<mu\><rsup|\<star\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>|}>
    </equation*>

    is a <math|\<sigma\>>-algebra on <math|X> and\ 

    <\equation*>
      <around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>:\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>
    </equation*>

    is a measure on <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>> making\ 

    <\equation>
      <label|eq 20.193.210><around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>><text|
      a measure on the >\<sigma\><text|-algebra
      >\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
    </equation>

    and

    <\equation>
      <label|eq 20.194.210><around*|\<langle\>|X,\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>,<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>|\<rangle\>><text|
      a measure space>
    </equation>

    Next we have to prove that <math|\<cal-S\>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>.
    Let <math|R,T\<in\>\<cal-S\>> then as <math|\<cal-S\>> is a semi-ring
    there exist a <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|S<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>>
    pairwise disjoint such that\ 

    <\equation>
      <label|eq 20.195.210>T\\R=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>S<rsub|i><text|
      and >R<big|cap>T\<in\>\<cal-S\>
    </equation>

    Define now\ 

    <\equation*>
      <around*|{|D<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>\<subseteq\>\<cal-S\><text|
      by >D<rsub|i>=<choice|<tformat|<table|<row|<cell|S<rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,m+1|}>>>|<row|<cell|R<big|cap>T<text| if
      >i=m+1>>>>>\<in\>\<cal-S\>
    </equation*>

    Let <math|i,j\<in\><around*|{|1,\<ldots\>,m+1|}>> with <math|i\<neq\>j>
    then we may always assume that <math|i\<less\>j> [otherwise interchange
    <math|i> and <math|j>], so that we have the following possibilities for
    <math|j>:\ 

    <\description>
      <item*|<math|j=m+1>>Then, as <math|i\<less\>j>,
      <math|i\<in\><around*|{|1,\<ldots\>,m|}>> so that

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsub|i><big|cap>D<rsub|j>>|<cell|=>|<cell|S<rsub|i><big|cap><around*|(|R<big|cap>T|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>S<rsub|i>|)><big|cap><around*|(|R<big|cap>T|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.195.210>]>>>|<cell|<around*|(|T\\R|)><big|cap><around*|(|R<big|cap>T|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|<around*|(|T\\R|)><big|cap>R>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>>>
      </eqnarray*>

      henve we have <math|D<rsub|i><big|cap>D<rsub|j>=\<varnothing\>>.

      <item*|<math|j\<in\><around*|{|1,\<ldots\>,m|}>>>Then, as
      <math|i\<less\>j>, <math|i\<in\><around*|{|1,\<ldots\>,m|}>> so that
      <math|D<rsub|i><big|cap>D<rsub|j>=S<rsub|i><big|cap>S=\<varnothing\>>
    </description>

    which proves that\ 

    <\equation*>
      <around*|{|D<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>\<subseteq\>\<cal-S\><text|
      is pairwise disjoint>
    </equation*>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|T>|<cell|=>|<cell|<around*|(|T\\R|)><big|cup><around*|(|T<big|cap>R|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>S<rsub|i>|)><big|cup><around*|(|T<big|cap>R|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>D<rsub|i>|)><big|cup>D<rsub|m+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>D<rsub|i>>>>>
    </eqnarray*>

    Hence\ 

    <\equation>
      <label|eq 20.196.210><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>D<rsub|i>=T\<in\>\<cal-S\>
    </equation>

    As by [theorem: <reference|measure pre-measure is additive>]
    <math|\<mu\>> is additive on <math|S> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|T|)>>|<cell|<below|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.196.210>]>>|>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>D<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><text|
      is additive>>>|<cell|<big|sum><rsub|i=1><rsup|m+1>\<mu\><around*|(|D<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|D<rsub|m+1>|)>+<big|sum><rsub|i=1><rsup|m>\<mu\><around*|(|D<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|R<big|cap>T|)>+<big|sum><rsub|i=1><rsup|m>\<mu\><around*|(|S<rsub|i>|)>>>>>
    </eqnarray*>

    hence\ 

    <\equation>
      <label|eq 20.197.210>\<mu\><around*|(|T|)>=\<mu\><around*|(|R<big|cap>T|)>+<big|sum><rsub|i=1><rsup|m>\<mu\><around*|(|S<rsub|i>|)>
    </equation>

    Further as a outer measure is sub-additive [see definition:
    <reference|measure outer measure> and theorem: <reference|measure
    countable sub-additivity implies sub-additivity>] we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|R<big|cap>T|)>+\<mu\><rsup|\<ast\>><around*|(|T\\R|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.196.210>]>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|R<big|cap>T|)>+\<mu\><rsup|\<ast\>><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>S<rsub|i>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|sub-additivity>>|<cell|\<mu\><rsup|\<ast\>><around*|(|R<big|cap>T|)>+<big|sum><rsub|i=1><rsup|m>\<mu\><rsup|\<ast\>><around*|(|S<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.192.210>]>>>|<cell|\<mu\><around*|(|R<big|cap>T|)>+<big|sum><rsub|i=1><rsup|m>\<mu\><around*|(|S<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.197.210>]>>>|<cell|\<mu\><around*|(|T|)>>>>>
    </eqnarray*>

    To summarize we have proved the following:\ 

    <\equation>
      <label|eq 20.198.210>\<forall\>R,S\<in\>\<cal-S\><text| we have that
      >\<mu\><rsup|\<ast\>><around*|(|R<big|cap>T|)>+\<mu\><rsup|\<ast\>><around*|(|T\\R|)>\<leqslant\>\<mu\><around*|(|T|)>
    </equation>

    Let <math|A\<in\>\<cal-S\>> and take <math|B\<in\>\<cal-P\><around*|(|X|)>>.
    For <math|B> we have either:\ 

    <\description>
      <item*|<math|\<cal-S\><around*|[|B|]>=\<varnothing\>>>Then
      <math|\<mu\><rsup|\<star\>><around*|(|B\\A|)>+\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>\<leqslant\>\<infty\>=\<mu\><rsup|\<ast\>><around*|(|B|)>>

      <item*|<math|S<around*|[|B|]>\<neq\>0>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|B|]>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i><big|cap>A|)>+<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>\\A|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended infinite sum properties>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsup|\<ast\>><around*|(|A<rsub|i><big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>\\A|)>|)>>|<cell|<below|\<leqslant\>|<text|[theorem:
        <reference|extended infinite sum properties>] and [eq: <reference|eq
        20.198.210>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)><eq-number><label|eq
        20.199.210>>>>>
      </eqnarray*>

      As <math|><math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|B|]>>
      we have <math|B\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
      so that

      <\equation*>
        B\\A\<subseteq\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\\A=<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|i>\\A|)><text|
        and >B<big|cap>A\<subseteq\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)><big|cap>A=<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|i><big|cap>A|)>
      </equation*>

      As <math|\<mu\><rsup|\<ast\>>> is a outer measure hence monotone by
      definition [see definition: <reference|measure outer measure>(2)] it
      follows from the above that\ 

      <\equation>
        <label|eq 20.200.210>\<mu\><rsup|\<ast\>><around*|(|B\\A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|i>\\A|)>|)><text|
        and >\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|i><big|cap>A|)>|)>
      </equation>

      Further using the sub-additivity of a outer measure [see definition:
      <reference|measure outer measure>(3)] we have\ 

      <\equation*>
        \<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|i>\\A|)>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>\\A|)><text|
        and >\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|i><big|cap>A|)>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i><big|cap>A|)>
      </equation*>

      which combined with [eq: <reference|eq 20.200.210>] gives\ 

      <\equation*>
        \<mu\><rsup|\<ast\>><around*|(|B\\A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>\\A|)><text|
        and >\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i><big|cap>A|)>
      </equation*>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|B\\A|)>+\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>\\A|)>+<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i><big|cap>A|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 20.199.210>]>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      So <math|\<mu\><rsup|\<ast\>><around*|(|B\\A|)>+\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>>
      is a lower bound for <math|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|B|]>|}>>
      so that\ 

      <\equation*>
        \<mu\><rsup|\<ast\>><around*|(|B\\A|)>+\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>\<leqslant\>inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-S\><around*|[|B|]>|}>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.190.210>]>>\<mu\><rsup|\<ast\>><around*|(|B|)>
      </equation*>
    </description>

    So in all cases we have that <math|\<mu\><rsup|\<ast\>><around*|(|B\\A|)>+\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>>
    which by [theorem: <reference|measure measurable set equivalences>] means
    that <math|A\<in\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>. As
    <math|A\<in\>\<cal-S\>> was chosen arbitrary we conclude that

    <\equation>
      <label|eq 20.201.210>\<cal-S\>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
    </equation>

    As <math|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>> is a
    <math|\<sigma\>>-algebra it follows from [theorem: <reference|measure
    generated sigma algebra>] that\ 

    <\equation>
      <label|eq 20.202.210>\<cal-S\>\<subseteq\>\<sigma\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>
    </equation>

    From the above, [eq: <reference|eq 20.193.210>] and \ [theorem:
    <reference|measure on sub sigma algebra>] it follows that

    <\equation*>
      <around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>>\<equallim\><rsub|<text|[theorem:
      <reference|function restricted function properties>
      (3)]>><around*|(|<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>|)><rsub|\|\<sigma\><around*|(|\<cal-S\>|)>><text|
      is a measure on >\<sigma\><around*|[|\<cal-S\>|]>
    </equation*>

    making\ 

    <\equation*>
      <around*|\<langle\>|X,\<sigma\><around*|[|\<cal-S\>|]>,<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>>|\<rangle\>><text|
      a measure space>
    </equation*>

    Finally assume additional that there exist a
    <math|<around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><rsub|>>
    such that <math|\<forall\>i\<in\>\<bbb-N\>>
    <math|G<rsub|i>\<subseteq\>G<rsub|i+1>\<wedge\>\<mu\><around*|(|G<rsub|i>|)>\<less\>\<infty\>>.
    Let <math|\<nu\>:\<sigma\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    be a measure such that <math|\<forall\>A\<in\>\<cal-S\>> we have
    <math|\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>> then as
    <rigid|<math|<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>\<equallim\><rsub|<text|[eq:
    <reference|eq 20.192.210>]>>\<mu\><around*|(|A|)>>> it follows that
    <math|\<forall\>A\<in\>\<cal-S\>> <math|<around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>><around*|(|A|)>=\<nu\><around*|(|A|)>>.
    Hence by [theorem: <reference|measure uniqueness of extension of a
    measure>] it follows that\ 

    <\equation*>
      <around*|(|\<mu\><rsup|\<ast\>>|)><rsub|\|\<sigma\><around*|[|\<cal-S\>|]>>=\<nu\>
    </equation*>

    proving uniqueness.
  </proof>

  <subsubsection|Contents and pre-measures>

  So given a pre-measure <math|\<mu\>> on a semi-ring <math|\<cal-S\>> we can
  extend <math|\<mu\>> to a measure on <math|\<sigma\><around*|[|\<cal-S\>|]>>
  and from there to a measure on <math|\<cal-M\><around*|[|\<cal-S\>|]>>. In
  the next section we show a way of proving that a additive set-function on a
  ring [see definition: <reference|measure ring>]. First we show that every
  ring \ is actually a semi-ring.

  <\theorem>
    <label|measure ring is a semi-ring>Let <math|X> be a set,
    <math|\<cal-R\>\<subseteq\>\<cal-P\><around*|(|X|)>> a ring then
    <math|\<cal-R\>> is a semi-ring.
  </theorem>

  <\proof>
    As <math|\<cal-R\>> is a ring we have by [definition: <reference|measure
    ring>] and [theorem: <reference|measure ring properties>] that

    <\equation*>
      \<varnothing\>\<in\>\<cal-R\><text| and
      >\<forall\>A,B\<in\>\<cal-R\><text| we have >A<big|cap>B\<in\>\<cal-R\>
    </equation*>

    Further if <math|A,B\<in\>\<cal-R\>> then by \ [definition:
    <reference|measure ring>] \ <math|A\\B\<in\>\<cal-R\>>. So if we define
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-R\>>
    by <math|A<rsub|1>=A\\B> we have that
    <math|A\\B=<big|sqcup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>>. Hence we
    have proved that\ 

    <\equation*>
      \<forall\>A,B\<in\>\<cal-R\><text| there exist a pairwise disjoint
      ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-R\><text|
      such that >A\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>A<rsub|i>
    </equation*>
  </proof>

  Next we define what a <with|font-series|bold|content> is.

  <\definition>
    <label|measure content>Let <math|X> be a set,
    <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>> a semi-ring then
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> is a
    <with|font-series|bold|content> on <math|\<cal-S\>> if\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<varnothing\>|)>=0>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> pairwise disjoint such that
      <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-S\>>
      then <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>

    A content is <with|font-series|bold|finite > if
    <math|\<forall\>A\<in\>\<cal-S\>> we have
    <math|\<mu\><around*|(|A|)>\<less\>\<infty\>>

    <\note>
      If <math|\<cal-S\>> is a ring then (2) can be replaced by\ 

      <\equation*>
        \<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\><text|,
        >n\<in\>\<bbb-N\><text| we have >\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      because [theorem: <reference|measure ring properties>] ensures that
      \ <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-S\>>.
    </note>
  </definition>

  We have a simpler equivalent definition of a content on a ring.

  <\theorem>
    <label|measure alternative definition for a content>Let <math|X> be a
    set, <math|\<cal-R\>> a ring on <math|X> then
    <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>> a function
    such that <math|\<mu\><around*|(|\<varnothing\>|)>=0> then\ 

    <\equation*>
      \<mu\><text| is a content >\<Leftrightarrow\><text|
      >\<forall\>A,B\<in\>\<cal-R\><text| with
      >A<big|cap>B=\<varnothing\><text| we have
      >\<mu\><around*|(|A<big|sqcup>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|A,B\<in\>\<cal-R\>> with
      <math|A<big|cap>B=\<varnothing\>> and define
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>\<subseteq\>\<cal-R\>>
      by <math|A<rsub|1>=A> and <math|A<rsub|2>=B>, then
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>> is
      pairwise disjoint and <math|\<mu\><around*|(|A<big|sqcup>B|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,2|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|2>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>.

      <item*|<math|\<Leftarrow\>>>We prove this by induction so let

      <\equation*>
        \<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|>\|<text|if
        ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        is a pairwise disjoint family of sets in >\<cal-R\>|}>
      </equation*>

      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
        is a pairwise disjoint family of sets in <math|\<cal-R\>> then

        <\equation*>
          \<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|A<rsub|i>|)>
        </equation*>

        proving that <math|1\<in\>\<cal-S\>>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
        is a pairwise disjoint family of sets in <math|\<cal-R\>> then as
        <math|n\<in\>\<cal-S\>> we have <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|sqcup>A<rsub|n+1>>
        so that

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|sqcup>A<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>+\<mu\><around*|(|A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>|)>+\<mu\><around*|(|A<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>\<mu\><around*|(|A<rsub|i>|)>>>>>
        </eqnarray*>

        \ proving that <math|n+1\<in\>\<cal-S\>>.
      </description>
    </description>
  </proof>

  \;

  A content has the following properties:\ 

  <\theorem>
    <label|measure content properties>Let <math|X> be a set, <math|\<cal-R\>>
    a ring on <math|X> and <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a content on <math|\<cal-R\>> then we have:

    <\enumerate>
      <item><math|\<forall\>A,B\<in\>\<cal-R\>> we have
      <math|\<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>

      <item><math|\<forall\>A,B\<in\>\<cal-R\>> we have
      <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>
      [<math|\<mu\>> is monotone].

      <item><math|\<forall\>A,B\<in\>\<cal-R\>> with <math|A\<subseteq\>B>
      and <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> we have
      <math|\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>-\<mu\><around*|(|A|)>.>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\>>,
      <math|n\<in\>\<bbb-N\>> we have <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
      [sub-additivity]

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      pairwise disjoint such that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>>
      we have <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>.
    </enumerate>
  </theorem>

  <\proof>
    First as <math|\<cal-R\>> is a ring we have that
    <math|\<forall\>A,B\<in\>\<cal-R\>> <math|B\\A\<in\>\<cal-R\>>, further

    <\enumerate>
      <item>As <math|A<big|cup><around*|(|B\\A|)>\<equallim\><rsub|<text|[theorem:
      <reference|class disjoint unions>]>>A<big|cup>B> with
      <math|A<big|cap><around*|(|B\\A|)>\<equallim\><rsub|<text|[theorem:
      <reference|class disjoint unions>]>>\<varnothing\>> and <math|\<mu\>>
      is a content we have\ 

      <\equation>
        <label|eq 20.206.211>\<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>
      </equation>

      Further <math|B\<equallim\><rsub|<text|[theorem: <reference|class
      disjoint unions>]>><around*|(|A<big|cap>B|)><big|cup><around*|(|B\\A|)>>
      with <math|<around*|(|A<big|cap>B|)><big|cap><around*|(|B\\A|)>\<equallim\><rsub|<text|[theorem:
      <reference|class disjoint unions>]>>\<varnothing\>> do that\ 

      <\equation>
        <label|eq 20.207.211>\<mu\><around*|(|B|)>=\<mu\><around*|(|A<big|cap>B|)>+\<mu\><around*|(|B\\A|)>
      </equation>

      For <math|\<mu\><around*|(|B\\A|)>> we have either:\ 

      <\description>
        <item*|<math|\<mu\><around*|(|B\\A|)>\<less\>\<infty\>>>As
        <math|\<mu\>> is non negative we can sum [eq: <reference|eq
        20.206.211>] and [eq: <reference|eq 20.207.211>] giving

        <\equation*>
          \<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>+\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>+\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>
        </equation*>

        and we can use [theorem: <reference|extended x+z=y+z=\<gtr\>x-y>] to
        get\ 

        <\equation*>
          \<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>=\<mu\><around*|(|B|)>+\<mu\><around*|(|A|)>
        </equation*>

        <item*|<math|\<mu\><around*|(|B\\A|)>=\<infty\>>>Then

        <\equation*>
          \<mu\><around*|(|A<big|cup>B|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 20.206.211>]>>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|A|)>+\<infty\>=\<infty\>
        </equation*>

        and

        <\equation*>
          \<mu\><around*|(|B|)>\<equallim\><rsub|<text|[eq: <reference|eq
          20.207.211>]>>\<mu\><around*|(|A<big|cap>B|)>+\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|A<big|cap>B|)>+\<infty\>=\<infty\>
        </equation*>

        so that\ 

        <\equation*>
          \<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>=\<infty\>+\<mu\><around*|(|A<big|cap>B|)>=\<infty\>=\<mu\><around*|(|A|)>+\<infty\>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation*>
        \<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>=\<mu\><around*|(|B|)>+\<mu\><around*|(|A|)>
      </equation*>

      <item>If <math|A,B\<in\>\<cal-R\>> with <math|A\<subseteq\>B> then
      <math|A<big|cup>B=B> so that\ 

      <\equation>
        <label|eq 20.208.211>\<mu\>*<around*|(|B|)>=\<mu\><around*|(|A<big|cup>B|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.206.211>]>>\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>
      </equation>

      then by [theorem: <reference|extended 0\<less\>=y and z=x+y then
      x\<less\>=z>] it follows that\ 

      <\equation*>
        \<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>
      </equation*>

      <item>As <math|A\<subseteq\>B> we have by [eq: <reference|eq
      20.208.211>] that <math|\<mu\><around*|(|B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>>
      so as <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> we can safely add
      <math|-\<mu\><around*|(|A|)>> to both sides giving\ 

      <\equation*>
        \<mu\><around*|(|B|)>-\<mu\><around*|(|A|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>-\<mu\><around*|(|A|)>=\<mu\><around*|(|B\\A|)>
      </equation*>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\>>
      define then

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\><text|
        by >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1><text| if
        >i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>>>>>><below|\<in\>|\<cal-R\><text|
        is a ring and [theorem: <reference|measure ring
        properties>]>>\<cal-R\>
      </equation*>

      so that\ 

      <\equation>
        <label|eq 20.209.211><around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\><text|
        and >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
        >B<rsub|i>\<subseteq\>A<rsub|i><below|\<Rightarrow\>|<around*|(|2|)>>\<mu\><around*|(|B<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      Using [lemma: <reference|lemma 20.161.201>] we have that\ 

      <\equation>
        <label|eq 20.210.211><around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        is pairwise disjoint and ><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>
      </equation>

      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.210.211>]>>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|measure content>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 20.209.211>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      \ 

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      be a pairwise disjoint sequence of sets in <math|\<cal-R\>> such that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>>. Let
      <math|n\<in\>\<bbb-N\>> then we have
      <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\><big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
      so that\ 

      <\equation>
        <label|eq 20.211.211><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\<equallim\><rsub|<text|[definition:
        <reference|measure content>]>>\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><below|\<leqslant\>|<around*|(|2|)>>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>
      </equation>

      Hence <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>
      is a upper bound of <math|<around*|{|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\|n\<in\>\<bbb-N\>|}>>
      so that\ 

      <\equation*>
        sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\|n\<in\>\<bbb-N\>|}>|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>
      </equation*>

      Hence\ 

      <\equation*>
        <big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<equallim\><rsub|<text|[definition:
        <reference|extended infinite sum>]>>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\|n\<in\>\<bbb-N\>|}>|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>
      </equation*>
    </enumerate>

    \;
  </proof>

  Note that a pre-measure on a ring [remember a ring is also a semi-ring]

  <\theorem>
    <label|measure pre-measure is a content>Let <math|X> be a set,
    <math|\<cal-R\>\<subseteq\>\<cal-P\><around*|(|X|)>> a ring then a
    pre-measure <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    on <math|\<cal-R\>> is a content on <math|\<cal-R\>>.
  </theorem>

  <\proof>
    As <math|\<mu\>> is a pre-measure we have\ 

    <\equation*>
      \<mu\><around*|(|\<varnothing\>|)>=0
    </equation*>

    Let <math|A,B\<in\>\<cal-R\>> with <math|A<big|cap>B=\<varnothing\>>.
    Define then <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>\<subseteq\>\<cal-R\>>
    by <math|A<rsub|1>=A\<wedge\>A<rsub|2>=B> then
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>> is pairwise
    disjoint and\ 

    <\equation*>
      \<mu\><around*|(|A<big|sqcup>B|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,.2|}>>\<mu\><around*|(|A<rsub|i>|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|measure pre-measure is additive>]>><big|sum><rsub|i=1><rsup|2>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>+\<mu\><around*|(|A<rsub|2>|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>
    </equation*>
  </proof>

  The opposite is of course not always true however we have the following
  equivalent conditions for a content to be a pre-measure. This is similar to
  [theorems: <reference|measure measure space properties (3)>,
  <reference|measure measure conditions>].

  <\theorem>
    <label|measure pre-measure equivalences>Let <math|X> be a set,
    <math|\<cal-R\>\<subseteq\>X> a ring on <math|X> and
    <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>> a content
    then for the following statements:\ 

    <\enumerate>
      <item><math|\<mu\>> is a pre-measure

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      such that <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> and
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>> we have
      <math|<below|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>|>>.

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      such that <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> and
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>> we have
      <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      such that <math|\<exists\>k\<in\>\<bbb-N\>> such that
      \ <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> and
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=\<varnothing\>> we have
      \ <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=0>.
    </enumerate>

    we have <math|<around*|(|1|)>\<Leftrightarrow\><around*|(|2|)>\<Rightarrow\><around*|(|3|)>\<Leftrightarrow\><around*|(|4|)>>,
    Further if <math|\<mu\>> is finite then
    <math|<around*|(|1|)>\<Leftrightarrow\><around*|(|2|)>\<Leftrightarrow\><around*|(|3|)>\<Leftrightarrow\><around*|(|4|)>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|<around*|(|1|)>\<Rightarrow\><around*|(|2|)>>>Let<math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      be such that <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> and
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>>. Define\ 

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><text|
        by >B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1><text| if
        >i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1><text| if
        >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>><below|\<in\>|\<cal-R\><text|
        is a ring>>\<cal-R\>
      </equation*>

      Then by the above definition we have\ 

      <\equation>
        <label|eq 20.206.210>\<forall\>i\<in\>\<bbb-N\><text|
        >B<rsub|i>\<subseteq\>A<rsub|i>
      </equation>

      Let <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j>. We may always
      assume that <math|i\<less\>j> [otherwise exchange <math|i> and
      <math|j>], then for <math|i> we have either

      <\description>
        <item*|<math|i=1>>Then <math|1\<less\>j> so that
        <math|B<rsub|1>=A<rsub|1>> and <math|B<rsub|j>=A<rsub|j>\\A<rsub|j-1>>.
        As <math|1\<less\>j\<Rightarrow\>1\<leqslant\>j-1> we have
        <math|A<rsub|1>\<subseteq\>A<rsub|j-1>> so that by [theorem:
        <reference|class inclusion and union and intersection>]
        <math|B<rsub|j>=A<rsub|j>\\A<rsub|j-1>\<subseteq\>A<rsub|j>\\A<rsub|1>=A<rsub|j>\\B<rsub|1>>.
        Hence\ 

        <\equation*>
          B<rsub|i><big|cap>B<rsub|j>=B<rsub|1><big|cap><around*|(|A<rsub|j>\\B<rsub|1>|)>=\<varnothing\>.
        </equation*>

        <item*|<math|i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>Then
        <math|i,j\<in\><around*|{|2,\<ldots\>,\<infty\>|}>> so that
        <math|B<rsub|i>=A<rsub|i>\\A<rsub|i-1>\<wedge\>B<rsub|j>=A<rsub|j>\\A<rsub|j-1>>.
        As <math|i\<less\>j\<Rightarrow\>i\<leqslant\>j-1> we have
        <math|B<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>A<rsub|j-1>> so that
        \ by [theorem: <reference|class inclusion and union and
        intersection>] <math|B<rsub|j>=A<rsub|j>\\A<rsub|j-1>\<subseteq\>A<rsub|j>\\B<rsub|i>>.
        Hence

        <\equation*>
          B<rsub|j><big|cap>B<rsub|i>\<subseteq\><around*|(|A<rsub|j>\\B<rsub|i>|)><big|cap>B<rsub|i>=\<varnothing\>
        </equation*>
      </description>

      Hence it follows that

      <\equation>
        <label|eq 20.207.210><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><text|
        is pairwise disjoint>
      </equation>

      Let <math|n\<in\>\<bbb-N\>>. As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have <math|B<rsub|i><below|\<subseteq\>|<text|[eq: <reference|eq
      20.206.210>]>>A<rsub|i>\<subseteq\>A<rsub|n>> so that\ 

      <\equation>
        <label|eq 20.208.210><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\>A<rsub|n>
      </equation>

      If <math|x\<in\>A<rsub|n>> then <math|n\<in\><around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>A<rsub|n>|}>>
      a finite set so that <math|j=min<around*|(|<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>A<rsub|n>|}>|)>>
      exists/ For <math|j> we have either:\ 

      <\description>
        <item*|<math|j=1>>Then <math|x\<in\>A<rsub|1>=B<rsub|1>> so that
        <math|x\<in\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>

        <item*|<math|1\<less\>j>>Then <math|x\<in\>A<rsub|j>> and
        <math|x\<nin\>A<rsub|j-1>> so that
        <math|x\<in\>A<rsub|j>\\A<rsub|j-1>=B<rsub|j>\<subseteq\><big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
      </description>

      hence <math|A<rsub|n>\<subseteq\><big|sqcup><rsub|i\<in\>\<bbb-N\>>B>
      which combined with [eq: <reference|eq 20.208.210>] we have\ 

      <\equation>
        <label|eq 20.209.210>\<forall\>n\<in\>\<bbb-N\><text| we have
        >A<rsub|n>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|n>
      </equation>

      Let <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>>A<rsub|n>> then
      <math|\<exists\>n\<in\>\<bbb-N\>> so that <math|x\<in\>A<rsub|n>> and
      by [eq: <reference|eq 20.209.210>] <math|\<exists\>m\<in\>\<bbb-N\>>
      such that <math|x\<in\>B<rsub|m>>, hence
      <math|<big|cup><rsub|n\<in\>\<bbb-N\>>A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>.
      Als also <math|B<rsub|n><below|\<subseteq\>|<text|[eq: <reference|eq
      20.206.210>]>>A<rsub|n>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>>A<rsub|n><rsub|>>
      it follows that\ 

      <\equation>
        <label|eq 20.210.210><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
      </equation>

      As <math|\<mu\>> is a pre-measure hence countable additive we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|extended infinite sum>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem\Q
        <reference|measure pre-measure is
        additive>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|<big|cup><rsub|j=1><rsup|i>B<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.209.210>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      Hence we have\ 

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item*|<math|<around*|(|2|)>\<Rightarrow\><around*|(|1|)>>>As for a
      content <math|\<mu\><around*|(|\<varnothing\>|)>=0> we only have to
      prove countable additivity. Let <math|<rigid|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>>
      be a pairwise disjoint sequence of sets in <math|\<cal-R\>> such that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>. Define\ 

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><text|
        by >B<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>
      </equation*>

      Then we have

      <\equation>
        <label|eq 20.211.210>\<forall\>i\<in\>\<bbb-N\><text|
        >B<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>\<subseteq\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>|)><big|cup>A<rsub|i+1>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i+1|}>>A<rsub|i>=B<rsub|i+1>
      </equation>

      If <math|x\<in\><big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> then
      <math|\<exists\>x\<in\>\<bbb-N\>> such that
      <math|x\<in\>A<rsub|i>\<subseteq\><big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>=B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>,
      hence <math|<rigid|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>>.
      As also <math|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\>>B<rsub|j>>
      so that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\>>B<rsub|j>>.
      Hence\ 

      <\equation>
        <label|eq 20.212.210><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>
      </equation>

      Using (1) together with [eqs: <reference|eq 20.211.210>, <reference|eq
      20.212.210>] it follows that\ 

      <\equation>
        <label|eq 20.213.210>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)>
      </equation>

      A <math|\<mu\>> is a content hence additive we have
      <math|\<forall\>i\<in\>\<bbb-N\>> that
      <math|\<mu\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)>=<big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>>
      so that by the above\ 

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>\<equallim\><rsub|<text|[theorem:
        <reference|extended infinite sum>]>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      Finally using [eq: <reference|eq 20.212.210>] it follows that\ 

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      proving countable additivity.

      <item*|<math|<around*|(|2|)>\<Rightarrow\><around*|(|3|)>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      such that <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>,
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>>. Define\ 

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><text|
        by >B<rsub|i>=A<rsub|1>\\A<rsub|i><below|\<in\>|\<cal-R\><text| is a
        ring>>\<cal-R\>
      </equation*>

      Then we have\ 

      <\equation>
        <label|eq 20.220.212.1>\<forall\>i\<in\>\<bbb-N\><text|
        >B<rsub|i>=A<rsub|1>\\A<rsub|i><below|\<subseteq\>|<text|[theorem:
        <reference|class inclusion and union and
        intersection>]>>A<rsub|1>\\A<rsub|i+1>=B<rsub|i>
      </equation>

      and\ 

      <\equation>
        <label|eq 20.220.212>A<rsub|1>\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<equallim\><rsub|<text|[theorem:
        <reference|family de Morgan>]>><big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|1>\\A<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
      </equation>

      Using (2) we have then\ 

      <\equation>
        <label|eq 20.221.212>\<mu\><around*|(|A<rsub|1>\\<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<equallim\><rsub|<around*|(|2|)>><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|1>\\A<rsub|i>|)>
      </equation>

      Let <math|i\<in\>\<bbb-N\>> then as
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>A<rsub|i>>
      and we have by [theorem: <reference|measure content properties> (2)]
      <math|<rigid|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>>
      and <math|\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>,
      hence using [theorem: <reference|measure content properties>(3)] we
      have

      <\equation>
        <label|eq 20.222.212>\<forall\>i\<in\>\<bbb-N\><text| that
        >\<mu\><around*|(|B<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>\\A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      and

      <\equation>
        <label|eq 20.223.212>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.220.212>]>>\<mu\><around*|(|A<rsub|1>\\<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>
      </equation>

      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eqs:
        <reference|eq 20.221.212>, <reference|eq
        20.223.212>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|1>\\A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq;
        <reference|eq 20.222.212>]>>>|<cell|<below|lim<rsub|i\<rightarrow\>\<infty\>>|><around*|(|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit properties>]>>>|<cell|<below|\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>|>>>>>
      </eqnarray*>

      As <math|\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>\<Rightarrow\>\<mu\><around*|(|A<rsub|1>|)>>
      we can safely subtract <math|\<mu\><around*|(|A|)>> from both sides
      from the above equation to get <math|-\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=-<below|lim|i\<rightarrow\>\<infty\>>|\<nobracket\>>\<mu\><around*|(|A<rsub|i>|)>>
      from which it follows that\ 

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item*|<math|<around*|(|3|)>\<Rightarrow\><around*|(|4|)>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      be such that <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> and
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=\<varnothing\>> then by
      (3) we have

      <\equation*>
        0=\<mu\><around*|(|\<varnothing\>|)>=\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item*|<math|<around*|(|4|)>\<Rightarrow\><around*|(|3|)>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      be such that <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> and
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>>. Take
      <math|A=<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>> and
      define\ 

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><text|
        by >B<rsub|i>=A<rsub|i>\\A<below|\<in\>|\<cal-R\><text| is a
        ring>>\<cal-R\>
      </equation*>

      then we have\ 

      <\equation*>
        \<forall\>i\<in\>\<bbb-N\><text| that
        >B<rsub|i+1>=A<rsub|i+1>\\A\<subseteq\>A<rsub|i>\\A=B<rsub|i>
      </equation*>

      Further we have\ 

      <\equation*>
        \<varnothing\>=A\\A=<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\\A\<equallim\><rsub|<text|[theorem:
        <reference|family properties (3)>]>><big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|i>\\A|)>=<big|cap><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
      </equation*>

      Hence using (4) we have\ 

      <\equation>
        <label|eq 20.225.212>0=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|A<rsub|i>\\A|)>
      </equation>

      As <math|A=<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>A<rsub|i>>
      and by [theorem: <reference|measure content properties>(2)]
      <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>
      we have by [theorem: <reference|measure content properties>(3)] that

      <\equation>
        <label|eq 20.226.212>\<forall\>i\<in\>\<bbb-N\><text| we have
        >\<mu\><around*|(|A<rsub|i>\\A|)>=\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|A|)>
      </equation>

      Hence we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|<below|=|<text|[eq: <reference|eq
        20.226.212>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>\\A|)>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
        <reference|eq 20.226.212>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|A|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit properties>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|A|)>>>>>
      </eqnarray*>

      As <math|\<mu\><around*|(|A|)>\<less\>\<infty\>=\<mu\><around*|(|A|)>\<in\>\<bbb-R\>>
      we have\ 

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<mu\><around*|(|A|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>
    </description>

    Now for the last part we have to prove that if <math|\<mu\>> is finite
    then <math|<around*|(|4|)>\<Rightarrow\><around*|(|2|)>> [because then
    from <math|<around*|(|1|)>\<Leftrightarrow\><around*|(|2|)>\<Rightarrow\><around*|(|3|)>\<Leftrightarrow\><around*|(|4|)>>
    it follows that <math|<around*|(|1|)>\<Leftrightarrow\><around*|(|2|)>\<Leftrightarrow\><around*|(|3|)>\<Leftrightarrow\>4>].\ 

    <\description>
      <item*|<math|<around*|(|4|)>\<Rightarrow\><around*|(|2|)>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
      is such that \ <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> and
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-R\>>. Take
      <math|A=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> and define \ 

      <\equation*>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><text|
        by >B<rsub|i>=A\\A<rsub|i><below|\<in\>|\<cal-R\><text| is a
        ring>>\<cal-R\>
      </equation*>

      Then we have

      <\equation*>
        \<forall\>i\<in\>\<bbb-N\><text| that
        >B<rsub|i+1>=A\\A<rsub|i+1>\<equallim\><rsub|<text|[theorem:
        <reference|class inclusion and union and
        intersection>]>>A\\A<rsub|i>=B<rsub|i><text| and
        >\<mu\><around*|(|B<rsub|i>|)><below|\<less\>|\<mu\><text| is
        finite>>\<infty\>
      </equation*>

      Further we have\ 

      <\equation*>
        \<varnothing\>=A\\A=A\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<equallim\><rsub|<text|[theorem:
        <reference|family properties (3)>]>><big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A\\A<rsub|i>|)>=<big|cap><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
      </equation*>

      So using (4) we have that\ 

      <\equation>
        <label|eq 20.227.212><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A\\A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=0
      </equation>

      Let <math|i\<in\>\<bbb-N\>> then, as
      \ <math|A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=A>
      and <math|\<mu\><around*|(|A<rsub|i>|)><below|\<less\>|\<mu\><text| is
      finite>>\<infty\>>, it follows from [theorem: <reference|measure
      content properties>(3)] that <math|\<mu\><around*|(|A\\A<rsub|i>|)>=\<mu\><around*|(|A|)>-\<mu\><around*|(|A<rsub|i>|)>>.
      Hence we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.227.212>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A\\A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|A|)>-\<mu\><around*|(|A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended limit properties>]>>>|<cell|\<mu\><around*|(|A|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      As <math|\<mu\>> is finite it follows from the above that\ 

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<mu\><around*|(|A|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>
    </description>
  </proof>

  The above equivalences allows us to determine if a content on a ring is a
  pre-measure. However this is not always simple. If we assume a ring on a
  topological space then proving becomes easier if we make use of the
  properties of the topological space. For this we introduce approximation by
  compact classes. First recap the definition of a compact class [see
  definition: <reference|compact class>]

  <\definition>
    Let <math|X> be a set then <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is a <with|font-series|bold|compact class >if
    <math|\<forall\><around*|{|K<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-C\>>
    with <math|<big|cap><rsub|i\<in\>\<bbb-N\>>K<rsub|i>=\<varnothing\>>
    there exist a <math|N\<in\>\<bbb-N\>><space|1em>such that
    <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>K<rsub|i>=\<varnothing\>>.
  </definition>

  We have then the following theorem that can be use to determine if a
  content is a pre-measure.

  <\theorem>
    <label|measure compact class approximation>Let <math|X> be a set,
    <math|\<cal-R\>> a ring on <math|X> and
    <math|\<mu\>:X\<rightarrow\><around*|[|0,\<infty\>|]>> a
    <with|font-series|bold|finite >content. If there exist a compact class
    <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>> such that
    <math|\<forall\>A\<in\>\<cal-R\>> and
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have that
    <math|\<exists\>K<rsub|\<varepsilon\>>\<in\>\<cal-C\>> and
    <math|\<exists\>A<rsub|\<varepsilon\>>\<in\>\<cal-R\>> such that\ 

    <\equation*>
      A<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>A<text|
      and >\<mu\><around*|(|A\\A<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>
    </equation*>

    then <math|\<mu\>> is a pre-measure. In other words if we can
    'approximate' <math|\<cal-R\>> by a complex class <math|\<cal-C\>> then
    <math|\<mu\>> is a pre-measure.\ 
  </theorem>

  <\proof>
    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
    be such that

    <\equation>
      <label|eq 20.228.212>\<forall\>i\<in\>\<bbb-N\><text| we have
      >A<rsub|i+1>\<subseteq\>A<rsub|i><text| and
      ><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=\<varnothing\>
    </equation>

    \ As <math|\<mu\>> is finite we have also\ 

    <\equation>
      <label|eq 20.229.212>\<forall\>i\<in\>\<bbb-N\><text| we have
      >\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>
    </equation>

    So if we prove that \ <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=0>
    then it follows from [theorem: <reference|measure pre-measure
    equivalences>] that <math|\<mu\>> is a pre-measure. Let
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the assumption there
    exist a <math|K<rsub|n,\<varepsilon\>>\<in\>\<cal-C\>> and a
    <math|R<rsub|n,\<varepsilon\>>\<in\>\<cal-R\>> such that
    <math|R<rsub|n,\<varepsilon\>>\<subseteq\>K<rsub|n,\<varepsilon\>>\<subseteq\>A<rsub|n>>
    and <math|\<mu\><around*|(|A\\R<rsub|n,\<varepsilon\>>|)>\<less\><frac|\<varepsilon\>|2<rsup|n>>>,
    Hence there exist <math|<around*|{|K<rsub|n,\<varepsilon\>>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-C\>>
    and <math|<around*|{|R<rsub|n,e>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\>>
    such that\ 

    <\equation>
      <label|eq 20.230.212>\<forall\>n\<in\>\<bbb-N\><text| we have
      >R<rsub|n,\<varepsilon\>>\<subseteq\>K<rsub|n,\<varepsilon\>>\<subseteq\>A<rsub|n><text|
      and >\<mu\><around*|(|A\\R<rsub|n,\<varepsilon\>>|)>\<less\><frac|\<varepsilon\>|2<rsup|n>>
    </equation>

    Then we have

    <\equation*>
      <big|cap><rsub|n\<in\>\<bbb-N\>>K<rsub|n,\<varepsilon\>>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>>A<rsub|n>=\<varnothing\>
    </equation*>

    so that by the definition of a compact class there exist a
    <math|N<rsub|\<varepsilon\>>\<in\>\<bbb-N\>> such that
    <math|<big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>K<rsub|n,\<varepsilon\>>=\<varnothing\>>.
    As <math|<big|cap><rsub|n\<in\>\<bbb-N\>>R<rsub|n,\<varepsilon\>>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>>K<rsub|n,\<varepsilon\>>>
    it follows that

    <\equation>
      <label|eq 20.231.212><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>R<rsub|n,\<varepsilon\>>=<big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>K<rsub|n,\<varepsilon\>>=\<varnothing\>
    </equation>

    Let <math|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>> then
    <math|A<rsub|N<rsub|\<varepsilon\>>><below|\<subseteq\>|<text|[eq:
    <reference|eq 20.230.212>]>>A<rsub|n>> so that
    <math|A<rsub|N<rsub|\<varepsilon\>>>\<subseteq\><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>A<rsub|n>\<subseteq\>A<rsub|N<rsub|\<varepsilon\>>>>
    proving that\ 

    <\equation>
      <label|eq 20.232.212>A<rsub|N<rsub|\<varepsilon\>>>=<big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>A<rsub|n>
    </equation>

    Let <math|x\<in\><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>A<rsub|n>>.
    Assume that <math|x\<nin\><big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>><around*|(|A<rsub|n>\\R<rsub|n,\<varepsilon\>>|)>>
    then <math|\<forall\>n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>
    we have <math|x\<nin\>A<rsub|n>\\R<rsub|n,\<varepsilon\>>>, as
    <math|x\<in\><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>A<rsub|n>\<subseteq\>A<rsub|n>>,
    it follows that <math|x\<in\>R<rsub|n,\<varepsilon\>>>. So
    <math|x\<in\><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>R<rsub|n,\<varepsilon\>>>
    contradicting [eq: <reference|eq 20.231.212>]. Hence the assumption is
    wrong and we must have that <math|<rigid|x\<in\><big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>><around*|(|A<rsub|n>\\R<rsub|n,\<varepsilon\>>|)>>>
    proving

    <\equation>
      <label|eq 20.233.212>A<rsub|N<rsub|\<varepsilon\>>>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.232.212>]>><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>A<rsub|n>\<subseteq\><big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>><around*|(|A<rsub|n>\\R<rsub|n,\<varepsilon\>>|)><below|\<in\>|\<cal-R\><text|
      is a ring>>\<cal-R\>
    </equation>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|A<rsub|N<rsub|\<varepsilon\>>>|)>>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|measure content properties>(2)]>>>|<cell|\<mu\><around*|(|<big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>><around*|(|A<rsub|n>\\R<rsub|n,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
      <reference|measure content>]>>>|<cell|<big|sum><rsub|i=1><rsup|N<rsub|\<varepsilon\>>>\<mu\><around*|(|A<rsub|n>\\R<rsub|n,\<varepsilon\>>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.230.212>]>>>|<cell|<big|sum><rsub|i=1><rsup|N<rsub|\<varepsilon\>>><frac|\<varepsilon\>|2<rsup|n>>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>\<cdot\><big|sum><rsub|i=1><rsup|N><around*|(|<frac|1|2>|)><rsup|n>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|sum of powers lemma>]>>>|<cell|\<varepsilon\>\<cdot\><around*|(|<frac|1|2>|)>\<cdot\><frac|1-<around*|(|<frac|1|2>|)><rsup|n>|1-<frac|1|2>>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>\<cdot\><around*|(|1-<frac|1|2<rsup|n>>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    So we have proved that\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exist a
      <math|N<rsub|\<varepsilon\>>\<in\>\<bbb-N\><text| such that
      >\<forall\>n\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}><text|
      we have ><around*|\||\<mu\><around*|(|A<rsub|n>|)>-0|\|>=\<mu\><around*|(|A<rsub|n>|)>\<leqslant\>\<mu\><around*|(|A<rsub|N<rsub|\<varepsilon\>>>|)>\<less\>\<varepsilon\>>>
    </equation*>

    which proves that <math|<below|lim<rsub|\<bbb-R\>>|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>=0>.
    Using the fact that <math|\<mu\>> is finite and [theorem:
    <reference|extended lim inf lim sup in the set of real numbers (1)>] it
    follows that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=0
    </equation*>

    So using [theorem: <reference|measure pre-measure equivalences>] it
    follows that <math|\<mu\>> is a pre-measure.
  </proof>

  The above theorem is especially usefull if we have a ring on a topological
  Hausdorff space because every set of compact sets is a compact class [see
  theorem: <reference|compact class and sets of compact sets>]. This
  expressed in the following theorem.

  <\theorem>
    <label|measure compact class approximation (1)>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a Hausdorff
    topological space,, <math|\<cal-R\>> a ring on <math|X> and
    <math|\<mu\>:X\<rightarrow\><around*|[|0,\<infty\>|]>> a
    <with|font-series|bold|finite >content. If
    <math|\<forall\>A\<in\>\<cal-R\>> and
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have that
    <math|\<exists\>K<rsub|\<varepsilon\>>\<in\><around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text|
    is compact>|}>> and <math|\<exists\>A<rsub|\<varepsilon\>>\<in\>\<cal-R\>>
    such that\ 

    <\equation*>
      A<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>A<text|
      and >\<mu\><around*|(|A\\A<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>
    </equation*>

    then <math|\<mu\>> is a pre-measure.\ 
  </theorem>

  <\proof>
    If <math|\<cal-C\>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text| is
    compact>|}>> is the set of compact subsets of <math|X> then by [see
    theorem: <reference|compact class and sets of compact sets>]
    <math|\<cal-C\>> is a compact class. The proof follows then from
    [theorem: <reference|measure compact class approximation>].
  </proof>

  Proving that <math|\<cal-R\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a ring
  is not always possible, especially proving that
  <math|\<forall\>A,B\<in\>\<cal-R\>> we have that
  <math|A\\B\<in\>\<cal-R\>>. For example the difference of two half-open
  intervals in <math|\<cal-I\><rsub|<around*|[||[>>> is not always a
  half-open interval, hence <math|\<cal-R\><rsub|<around*|[||[>>> is not a
  ring, however it will be proved later that
  <math|\<cal-I\><rsub|<around*|[||[>>> is a semi-ring on <math|\<bbb-R\>>.
  Luckely it turns out that a semi-ring with a additive function on it can
  easely be extended to a ring with a content on it.\ 

  <\theorem>
    <label|measure semi-ring to ring>Let <math|X> be a set,
    <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>> a semi-ring on
    <math|X> then\ 

    <\equation*>
      \<cal-R\><around*|[|\<cal-S\>|]>=<around*|{|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\|n\<in\>\<bbb-N\>\<wedge\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>S<text|
      is pairwise disjoint>|}>
    </equation*>

    is a ring on <math|X> such that:\ 

    <\enumerate>
      <item><math|\<cal-S\>\<subseteq\>\<cal-R\><around*|[|S|]>>

      <item>If <math|\<cal-T\>> is another ring on <math|X> with
      <math|\<cal-S\>\<subseteq\>\<cal-T\>> then
      <math|\<cal-R\><around*|[|\<cal-S\>|]>>
    </enumerate>

    In other words the set of all disjoint finite unions of sets in
    <math|\<cal-S\>> is the smallest ring covering <math|\<cal-S\>>
  </theorem>

  <\proof>
    Let <math|A\<in\>\<cal-S\>> define then
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-S\>>
    by <math|A<rsub|1>=A> then <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>>
    is pairwise disjoint and <math|A=<big|sqcup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>>,
    hence <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> proving that\ 

    <\equation>
      <label|eq 20.234.212>\<cal-S\>\<subseteq\>\<cal-R\><around*|[|\<cal-S\>|]>
    </equation>

    As <math|\<cal-S\>> is a semi-ring we have
    <math|\<varnothing\>\<in\>\<cal-S\>> so by the above we have\ 

    <\equation>
      <label|eq 20.235.212>\<varnothing\>\<in\>\<cal-R\><around*|[|\<cal-S\>|]>
    </equation>

    Let <math|A,B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then there exists
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
    pairwise disjoint and <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>>
    pairwise disjoint such that\ 

    <\equation>
      <label|eq 20.236.212>A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<wedge\>B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>
    </equation>

    To prove that <math|\<cal-R\><around*|[|\<cal-S\>|]>> is a ring we have
    to prove that:\ 

    <\description>
      <item*|<math|A<big|cup>B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>>Define\ 

      <\equation*>
        <around*|{|D<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>><text|
        by >D<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|B<rsub|i-n>\\A<text|
        if >i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>
      </equation*>

      As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+m|}>> we have
      either:\ 

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then
        <math|D<rsub|i>=A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=A\<subseteq\>A<big|cup>B>

        <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>Then
        <math|D<rsub|i>=B<rsub|i-n>\\A\<subseteq\>B<rsub|i-n>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>=B\<subseteq\>A<big|cap>B>
      </description>

      proving that <math|D<rsub|i>\<subseteq\>A<big|cup>B> hence

      <\equation>
        <label|eq 20.237.212><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>D<rsub|i>\<subseteq\>A<big|cup>B
      </equation>

      If <math|x\<in\>A<big|cup>B> then we have either:

      <\description>
        <item*|<math|x\<in\>A>>Then there exist a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|x\<in\>A<rsub|i>=D<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>D<rsub|i>>

        <item*|<math|x\<in\>B>>Then we have for <math|x> either:

        <\description>
          <item*|<math|x\<in\>A>>Then there exist a
          <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that

          <\equation*>
            x\<in\>A<rsub|i>=D<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>D
          </equation*>

          <item*|<math|x\<nin\>A>>Then there exist a
          <math|i\<in\><around*|{|1,\<ldots\>,m|}>> such that

          <\equation*>
            x\<in\>B<rsub|i>=B<rsub|<around*|(|i+n|)>-n>\<Rightarrowlim\><rsub|x\<nin\>A>x\<in\>B<rsub|<around*|(|i+n|)>-n>\\A=D<rsub|i+n>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>D<rsub|i>
          </equation*>
        </description>
      </description>

      so in all cases we have <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>D<rsub|i>>.
      Hence <math|A<big|cup>B\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>D<rsub|i>>
      which combined with [eq: <reference|eq 20.237.212>] proves that\ 

      <\equation>
        <label|eq 20.238.212>A<big|cup>B=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>D<rsub|i>
      </equation>

      Let <math|i\<in\><around*|{|n,\<ldots\>,n+m|}>> we have as
      <math|A,B<rsub|i-n>\<in\>\<cal-S\>> and <math|\<cal-S\>> a semi-ring
      there exist a family

      <\equation>
        <label|eq 20.239.212><around*|{|C<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>\<subseteq\>\<cal-S\><rsub|><text|
        pairwise disjoint such that >D<rsub|i>=B<rsub|i-n>\\A=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|i,j><rsub|>
      </equation>

      For every <math|i\<in\><around*|{|n,\<ldots\>,n+m|}>> we have that
      <math|<around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>> is
      finite [see theorem: <reference|product of finite sets>] so that by
      [theorem: <reference|finite union of finite sets is finite>]
      <math|<big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>
      is finite. Hence there exist a <math|N\<in\>\<bbb-N\>> and a bijection\ 

      <\equation*>
        \<sigma\>:<around*|{|1,\<ldots\>,N|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>
      </equation*>

      Let <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
      then there exist a <math|i\<in\><around*|{|1,\<ldots\>,N|}>> such that

      <\equation*>
        x\<in\>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|\<sigma\><around*|(|i|)><rsub|1>>|}>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,j>\<equallim\><rsub|<text|[eq:
        <reference|eq 20.239.212>]>>D<rsub|\<sigma\><around*|(|i|)><rsub|1>>\<subseteq\><big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>>D<rsub|i>
      </equation*>

      hence\ 

      <\equation>
        <label|eq 20.240.212><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>>D<rsub|i>
      </equation>

      Let <math|x\<in\><big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>>D<rsub|i>>
      then there exists a <math|i\<in\><around*|{|n,\<ldots\>,n+m|}>> such
      that <math|x\<in\>D<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>C<rsub|i,j>>.
      Hence there exists a <math|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>\<Rightarrow\><around*|(|i,j|)>\<in\><big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>><around*|{|i|}>\<times\><around*|{|1,\<ldots\>,n<rsub|i>|}>>
      such that <math|x\<in\>C<rsub|i,j>>. As <math|\<sigma\>> is a bijection
      there exist a <math|k\<in\><around*|{|1,\<ldots\>,N|}>> such that
      <math|<around*|(|i,j|)>=\<sigma\><around*|(|k|)>>, hence
      <math|x\<in\>C<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>.
      So <math|<big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>>D<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
      which combined with [eq: <reference|eq 20.240.212>] proves that\ 

      <\equation>
        <label|eq 20.241.212><big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>>D<rsub|i>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>C<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>
      </equation>

      Define now\ 

      <\equation*>
        <around*|{|E<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+N|}>>\<subseteq\>\<cal-S\><text|
        by >E<rsub|i>=<choice|<tformat|<table|<row|<cell|D<rsub|i>\<in\>\<cal-S\><text|
        if >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|C<rsub|\<sigma\><around*|(|i-n|)><rsub|i>\<sigma\><around*|(|i-n|)><rsub|2><text|>>\<in\>\<cal-S\><text|
        if >i\<in\><around*|{|n+1,\<ldots\>,n+N|}>>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+N|}>>E<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family properties (2)>]>>>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+N|}>>E<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+N|}>>C<rsub|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.241.212>]>>>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\><around*|{|n,\<ldots\>,n+m|}>>D<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family properties (2)>]>>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+N|}>>D<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.238.212>]>>>|<cell|A<big|cup>B>>>>
      </eqnarray*>

      Hence\ 

      <\equation>
        <label|eq 20.242.212>A<big|cup>B=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+N|}>>E<rsub|i>
      </equation>

      Let <math|i,j\<in\><around*|{|1,\<ldots\>,n+N|}>> with <math|i\<neq\>j>
      then we may always assume that <math|i\<less\>j> [otherwise exchange
      <math|i> and <math|j>]. For <math|i> we have either:\ 

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then for <math|j> we
        have either:\ 

        <\description>
          <item*|<math|j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
          <math|E<rsub|i><big|cap>E<rsub|j>=D<rsub|i><big|cap>D<rsub|j>=A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>

          <item*|<math|j\<in\><around*|{|n+1,\<ldots\>,n+N|}>>>Then

          <\equation*>
            E<rsub|j>=C<rsub|\<sigma\><around*|(|j-n|)><rsub|1>,\<sigma\><around*|(|j-n|)><rsub|2>>\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,\<sigma\><around*|(|j|)><rsub|1>|}>>C<rsub|\<sigma\><around*|(|j-n|)><rsub|1>,k><below|=|<text|[eq:
            <reference|eq 20.239.212>]>>B<rsub|\<sigma\><around*|(|j-n|)><rsub|1>>\\A
          </equation*>

          so that <math|E<rsub|i><big|cap>E<rsub|j>=D<rsub|i><big|cap>E<rsub|j>=A<rsub|i><big|cap>E<rsub|j>\<subseteq\>A<big|cap>E<rsub|j>\<subseteq\>A<big|cap><around*|(|B<rsub|\<sigma\><around*|(|j-1|)><rsub|1>>\\A|)>=\<varnothing\><rsub|>>
          hence\ 

          <\equation*>
            E<rsub|i><big|cap>E<rsub|j>=\<varnothing\>
          </equation*>
        </description>

        <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,n+N|}>>>Then as
        <math|i\<less\>j> we have also <math|j\<in\><around*|{|n+1,\<ldots\>,n+N|}>>
        and

        <\eqnarray*>
          <tformat|<table|<row|<cell|E<rsub|i><big|cap>E<rsub|j>>|<cell|=>|<cell|C<rsub|\<sigma\><around*|(|i-n|)><rsub|1>,\<sigma\><around*|(|i-n|)><rsub|2>><big|cap>C<rsub|\<sigma\><around*|(|j-n|)><rsub|1>\<sigma\><around*|(|j-n|)>>>>>>
        </eqnarray*>

        As <math|\<sigma\>> is a bijection and
        <math|i\<neq\>j\<Rightarrow\>i-n\<neq\>j-n> we have that
        <math|\<sigma\><around*|(|i-n|)>\<neq\>\<sigma\><around*|(|j-n|)>>.
        For <math|\<sigma\><around*|(|i-n|)><rsub|1>>,
        <math|\<sigma\><around*|(|j-n|)><rsub|1>> we have either:\ 

        <\description>
          <item*|<math|\<sigma\><around*|(|i-n|)><rsub|1>=\<sigma\><around*|(|j-n|)><rsub|1>>>Then
          <math|\<sigma\><around*|(|i-n|)><rsub|2>\<neq\>\<sigma\><around*|(|j-n|)><rsub|2>>
          as <math|<around*|{|C<rsub|\<sigma\><around*|(|i-n|)><rsub|>,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|\<sigma\><around*|(|i|)><rsub|1>>|}>>>
          is pairwise disjoint we have

          <\equation*>
            E<rsub|i><big|cap>E<rsub|j>=C<rsub|\<sigma\><around*|(|i-n|)><rsub|1>,\<sigma\><around*|(|i-n|)><rsub|2>><big|cap>C<rsub|\<sigma\><around*|(|i-n|)><rsub|1>\<sigma\><around*|(|j-n|)>>=\<varnothing\>
          </equation*>

          <item*|<math|\<sigma\><around*|(|i-n|)><rsub|1>\<neq\>\<sigma\><around*|(|j-n|)>>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|E<rsub|i><big|cap>E<rsub|j>>|<cell|=>|<cell|C<rsub|\<sigma\><around*|(|i-n|)><rsub|1>,\<sigma\><around*|(|i-n|)><rsub|2>><big|cap>C<rsub|\<sigma\><around*|(|j-n|)><rsub|1>\<sigma\><around*|(|j-n|)>>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|\<sigma\><around*|(|i-n|)><rsub|1>>|}>>C<rsub|\<sigma\><around*|(|i-n|)><rsub|1>,j>|)><big|cap><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|\<sigma\><around*|(|j-n|)><rsub|1>>|}>>C<rsub|\<sigma\><around*|(|j-n|)><rsub|1>,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 20.239.212>>>>|<cell|<around*|(|B<rsub|\<sigma\><around*|(|i-n|)><rsub|1>-n>\\A|)><rsub|><big|cap><around*|(|B<rsub|\<sigma\><around*|(|j-n|)><rsub|2>-n>\\A|)>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>>>
          </eqnarray*>
        </description>
      </description>

      so in all cases we have <math|E<rsub|i><big|cap>E<rsub|j>=\<varnothing\>>.
      Hence\ 

      <\equation*>
        <around*|{|E<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+N|}>>\<subseteq\>\<b-S\><text|
        is pairwise disjoint and >A<big|cup>B\<equallim\><rsub|<text|[eq:
        <reference|eq 20.242.212>]>><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+N|}>>E<rsub|i>
      </equation*>

      so that\ 

      <\equation>
        <label|eq 20.246.216.1>A<big|cup>B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>
      </equation>

      <item*|<math|A\\B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\B>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.236.212>]>>>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family properties (3)>]>>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family de Morgan>]>>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i>\\B<rsub|j>|)>|)>>>>>
      </eqnarray*>

      Further <math|\<forall\>k,l\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|k\<neq\>l> we have\ 

      <\equation*>
        <around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|k>\\B<rsub|j>|)>|)><big|cap><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|l>\\B<rsub|j>|)>|)>\<subseteq\>A<rsub|k><big|cap>A<rsub|l>=\<emptyset\>
      </equation*>

      so that\ 

      <\equation>
        <label|eq 20.244.212><around*|{|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i>\\B<rsub|j>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        is pairwise disjoint >
      </equation>

      so that

      <\equation>
        <label|eq 20.245.212>A\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i>\\B<rsub|j>|)>|)>
      </equation>

      Given <math|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>j\<in\><around*|{|1,\<ldots\>,m|}>>
      we have as <math|A<rsub|i>,B<rsub|j>\<in\>\<cal-S\>> and
      <math|\<cal-S\>> is semi-ring that there exist a

      <\equation>
        <label|eq 20.246.212><around*|{|C<rsup|i,j><rsub|k>|)><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|i,j>|}>>\<subseteq\>\<cal-S\><text|
        pairwise disjoint such that >A<rsub|i>\\B<rsub|j>=<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|i,j>|}>>C<rsup|i,j><rsub|k>
      </equation>

      So we have for <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, using [lemma:
      <reference|lemma 20.109.213>], that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i>\\B<rsub|j>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sqcup><rsub|\<sigma\>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|1,\<ldots\>,n<rsub|i,j>|}>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>C<rsup|i,k><rsub|\<sigma\><rsub|k>><rsup|>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sqcup><rsub|\<sigma\>\<in\>I<rsub|i>>D<rsub|i,\<sigma\>>>|<cell|>|<cell|<eq-number><label|eq
        20.250.216>>>>>
      </eqnarray*>

      where\ 

      <\equation>
        <label|eq 20.251.216>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
        >I<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|1,\<ldots\>,n<rsub|i,j>|}><text|
        is finite by [theorem: <reference|product of a finite family of
        finite sets is is finite>]>
      </equation>

      <\equation>
        <label|eq 20.252.216><around*|{|D<rsub|i,\<sigma\>>|}><rsub|\<sigma\>\<in\>I<rsub|i>><text|
        defined by >D<rsub|i,\<sigma\>>=<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>C<rsup|i,k><rsub|\<sigma\><rsub|k>><rsup|>
        i<text| is pairwise disjoint>
      </equation>

      As a semi-ring is <math|\<sigma\>>-stable [see definition:
      <reference|measure semi-ring>] we have also that\ 

      <\equation>
        <label|eq 20.253.216>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
        we have ><around*|{|D<rsub|i,\<sigma\>>|}><rsub|\<sigma\>\<in\>I<rsub|i>>\<subseteq\>\<cal-S\>
      </equation>

      Combining [eqs: <reference|eq 20.245.212>, <reference|eq
      20.250.216>,<reference|eq 20.252.216>] with [lemma: <reference|lemma
      20.110.214>] gives\ 

      <\equation>
        <label|eq 20.254.216>A\\B=<big|sqcup><rsub|\<rho\>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|i|}>\<times\>I<rsub|i>>D<rsub|\<rho\><rsub|1>,\<rho\><rsub|2>>
      </equation>

      and\ 

      <\equation>
        <label|eq 20.255.216><around*|{|D<rsub|\<rho\><rsub|1>,\<rho\><rsub|2>>|}><rsub|\<rho\>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|i|}>\<times\>I<rsub|i>><text|
        is pairwise disjoint>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then by [eq:
      <reference|eq 20.251.216>] and [theorem: <reference|product of finite
      sets>] <math|<around*|{|i|}>\<times\>I<rsub|i>> is finite, hence using
      [theorem: <reference|finite union of finite sets is finite>]
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>> is
      finite. Hence there exist a bijection\ 

      <\equation*>
        \<beta\>:<around*|{|1,\<ldots\>,N|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i><text|,
        >N\<in\>\<bbb-N\>
      </equation*>

      Define\ 

      <\equation*>
        <around*|{|E<rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\><text|
        by >E<rsub|i>=D<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>>\<in\>\<cal-S\>
      </equation*>

      then we have\ 

      <\equation*>
        <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>E<rsub|i>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>D<rsub|\<beta\><around*|(|i|)><rsub|1>\<beta\><around*|(|i|)><rsub|2>>\<equallim\><rsub|<text|[theorem:
        <reference|family union of family set and
        surjections>]>><big|cup><rsub|\<sigma\>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|i|}>\<times\>I<rsub|i>>D<rsub|\<rho\><rsub|1>,\<rho\><rsub|2>>=A\\B
      </equation*>

      Let <math|i,j\<in\><around*|{|1,\<ldots\>,N|}>> with <math|i\<neq\>j>
      then, as <math|\<beta\>> is injective, we have
      <math|\<beta\><around*|(|i|)>\<neq\>\<beta\><around*|(|j|)>> so that we
      have <math|E<rsub|i><big|cap>E<rsub|j>=D<rsub|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>><big|cap>D<rsub|\<beta\><around*|(|j|)><rsub|1>,\<beta\><around*|(|j|)><rsub|2>>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.255.216>]>>\<varnothing\>> proving that\ 

      <\equation*>
        <around*|{|E<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><text|
        is pairwise disjoint>
      </equation*>

      Hence we have proved that

      <\equation*>
        A\\B\<equallim\><rsub|<text|[eq: <reference|eq
        20.254.216>]>><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>E<rsub|i>
      </equation*>

      so that by the definition of <math|\<cal-R\><around*|[|\<cal-S\>|]>> we
      have

      <\equation>
        <label|eq 20.256.216>A\\B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>
      </equation>
    </description>

    As we have just proved that <math|\<varnothing\>\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>,
    <math|\<cal-S\>\<subseteq\>\<cal-R\><around*|[|\<cal-S\>|]>> [see eqs:
    <reference|eq 20.235.212>, <reference|eq 20.234.212>] and
    <math|\<forall\>A,B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>
    <math|<rigid|A<big|cap>B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>> and
    <math|A\\B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> [see eqs: <reference|eq
    20.246.216.1>, <reference|eq 20.256.216>] it follows that\ 

    <\equation*>
      \<cal-R\><around*|[|\<cal-S\>|]><text| is a ring containing >\<cal-S\>
    </equation*>

    It remains to prove that <math|\<cal-R\><around*|[|\<cal-S\>|]>> is the
    smalles ring containing <math|\<cal-S\>>. So let <math|\<cal-T\>> be
    another ring such that <math|\<cal-S\>\<subseteq\>\<cal-T\>>. If
    <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then then there exist a
    pairwise disjoint finite family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<cal-S\>\<subseteq\>\<cal-T\>>
    such that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>A<rsub|i>.>
    As <math|\<cal-T\>> is a ring it follows from [theorem:
    <reference|measure ring properties>] that
    <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>A<rsub|i>\<in\>\<cal-T\>>
    which proves that

    <\equation*>
      \<cal-R\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-T\>
    </equation*>
  </proof>

  Next we want to extend a content on a semi-ring <math|\<cal-S\>> to a
  content on the ring <math|\<cal-R\><around*|[|\<cal-S\>|]>>.

  <\theorem>
    <label|measure content extension>Let <math|X> be a set, <math|\<cal-S\>>
    a semi-ring on <math|X> and <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a content on <math|\<cal-S\>> then

    <\enumerate>
      <item>There exist a content <math|\<nu\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      such that <math|\<nu\><rsub|\|\<cal-S\>>=\<mu\>> [in other words
      <math|\<nu\>> is a extension of <math|\<mu\>>]

      <item>If <math|\<omega\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      is another content such that <math|\<omega\><rsub|\|\<cal-S\>>=\<mu\>>
      then <math|\<omega\>=\<phi\>> [in other words the extension is unique].

      <item>If <math|\<mu\>> is finite then <math|\<nu\>> is finite.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First we proof existence. Let
      <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then there exist a
      pairwise disjoint finite family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> such that <math|A=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>.
      As <math|\<nu\>> is a content on <math|\<cal-R\><around*|[|\<cal-S\>|]>>
      we must have that <math|\<nu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|n>\<nu\><around*|(|A<rsub|i>|)>\<equallim\><rsub|A<rsub|i>\<in\>\<Sigma\>><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>.
      So it make sense to define\ 

      <\equation*>
        \<nu\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
        by >\<nu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)><text|>
      </equation*>

      <\equation*>
        <text|where ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\><text|,>
        n\<in\>\<bbb-N\><text| is pairwise disjoint and
        >A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>
      </equation*>

      Of course this only works if <math|\<nu\><around*|(|A|)>> is
      independent of the family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>.
      So assume that for <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> we
      have two pairwise disjoint families
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> and <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>>,
      <math|m\<in\>\<bbb-N\>> such that\ 

      <\equation*>
        A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>
      </equation*>

      Then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>|<cell|\<equallim\><rsub|A<rsub|i><big|cap>A=A<rsub|i>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i><big|cap>A|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i><big|cap><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family distributivity>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|\<nobracket\>|<around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|\<nobracket\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A<rsub|i><big|cap>B<rsub|j>\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|extended sum of sums>]>>>|<cell|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A<rsub|i><big|cap>B<rsub|j>\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family distributivity>]>>>|<cell|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|A<big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|B<rsub|j>|)>>>>>
      </eqnarray*>

      proving that <math|\<nu\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      is well defined. Next we prove that <math|\<nu\>> is a extension of
      <math|\<cal-S\>>. Let <math|A\<in\>\<cal-S\>> then if we define
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-S\>>
      by <math|A<rsub|1>=A> then <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>>
      is clearly disjoint and <math|<big|sqcup><rsub|i\<in\><around*|{|1|}>>A<rsub|i>=A<rsub|1>=A>
      so that <math|\<nu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>=\<mu\><around*|(|A|)>>
      proving that

      <\equation>
        <label|eq 20.257.216>\<nu\><rsub|\|\<cal-S\>>=\<mu\>
      </equation>

      Next we use [theorem: <reference|measure alternative definition for a
      content>] to prove that <math|\<nu\>> is a content on
      <math|\<cal-R\><around*|[|\<cal-S\>|]>>. As
      <math|\<varnothing\>\<in\>\<cal-S\>> we have by [eq: <reference|eq
      20.257.216>] that\ 

      <\equation>
        <label|eq 20.258.216>\<nu\><around*|(|\<varnothing\>|)>\<equallim\><rsub|\<varnothing\>\<in\>\<cal-S\>>\<mu\><around*|(|\<varnothing\>|)>=0
      </equation>

      Let <math|A,B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> such that
      <math|A<big|cap>B=\<varnothing\>> then there exist pairwise disjoint
      families <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> and <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-S\>>,
      <math|m\<in\>\<bbb-N\>> such that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>,
      <math|B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>. Define\ 

      <\equation*>
        <around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>\<subseteq\>\<cal-S\><text|
        by >C<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|B<rsub|i-n><text| if
        >i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>
      </equation*>

      Let <math|i,j\<in\><around*|{|1,\<ldots\>,n+m|}>> with <math|i\<neq\>j>
      then we may assume that <math|i\<less\>j> [otherwise exchange <math|i>
      and <math|j>] then for <math|i> we have either:\ 

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then for <math|j> we
        have either:

        <\description>
          <item*|<math|j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
          <math|C<rsub|i><big|cap>C<rsub|j>=A<rsub|i><big|cap>A<rsub|j>\<equallim\><rsub|i\<neq\>j>\<varnothing\>>.

          <item*|<math|j\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>Then
          <math|C<rsub|i><big|cap>C<rsub|j>=A<rsub|i-n><big|cap>B<rsub|j-n>\<subseteq\>A<big|cap>B=\<varnothing\>>.
        </description>

        <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>Then
        <math|j\<in\><around*|{|n+1,\<ldots\>,n+m|}>>
        <math|C<rsub|i><big|cap>C<rsub|j>=A<rsub|i-n><big|cap>B<rsub|j-n>\<equallim\><rsub|i-n\<neq\>j-n>\<varnothing\>>
      </description>

      proving that\ 

      <\equation>
        <label|eq 20.259.216><around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>\<subseteq\>\<cal-S\><text|
        is pairwise disjoint>
      </equation>

      Let <math|x\<in\>A<big|cup>B> then either
      <math|x\<in\>A=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<Rightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      with >x\<in\>A<rsub|i>=C<rsub|i>> or
      <math|x\<in\>B=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>\<Rightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,m|}>>
      with <math|x\<in\>B<rsub|i>=C<rsub|i+n>>, hence
      <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>C<rsub|i>>,
      proving that

      <\equation>
        <label|eq 20.260.216>A<big|cup>B\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>C<rsub|i>.
      </equation>

      For <math|i\<in\><around*|{|1,\<ldots\>,n+m|}>> we have either
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
      <math|C<rsub|i>=A\<subseteq\>A<big|cup>B> or
      <math|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>> then
      <math|C<rsub|i>=B<rsub|i-n>\<subseteq\>A<big|cup>B>, hence in all cases
      <math|>we have <math|C<rsub|i>\<subseteq\>A<big|cup>B>. This proves
      that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>C<rsub|i>\<subseteq\>A<big|cup>B>
      which combines with [eq: <reference|eq 20.260.216>] gives\ 

      <\equation>
        <label|eq 20.261.216>A<big|sqcup>B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>C<rsub|i>
      </equation>

      Hence we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<nu\><around*|(|A<big|cup>B|)>>|<cell|=>|<cell|\<nu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+m>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum associativity simple>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|C<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|n+m>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|n+m>\<mu\><around*|(|B<rsub|i-n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum change start index>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=1><rsup|m>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|A|)>+\<nu\><around*|(|B|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 20.262.216>\<forall\>A,B\<in\>\<cal-R\><around*|[|\<cal-S\>|]><text|
        with >A<big|cap>B=\<varnothing\><text| we have
        >\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>
      </equation>

      Using [eqs: <reference|eq 20.258.216>, <reference|eq 20.262.216>] we
      can apply ]theorem: <reference|measure alternative definition for a
      content>] proving that

      <\equation*>
        \<nu\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
        is a content on >\<cal-R\><around*|[|\<cal-S\>|]>
      </equation*>

      <item>Let <math|\<omega\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      be another content on <math|\<cal-R\><around*|[|S|]>> such that
      <math|\<omega\><rsub|\|\<cal-S\>>=\<mu\>>. Let
      <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then there exist a
      pairwise disjoint family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> such that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>.
      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<omega\><around*|(|A|)>>|<cell|\<equallim\>>|<cell|\<omega\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<cal-S\>\<subseteq\>\<cal-R\><around*|[|\<cal-S\>|]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<omega\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<omega\><rsub|\|\<cal-S\>>=\<mu\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|def
        of >\<nu\>>>|<cell|\<nu\><around*|(|A|)>>>>>
      </eqnarray*>

      proves that\ 

      <\equation*>
        \<omega\>=\<nu\>
      </equation*>

      <item>If <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then there
      exist a finite pairwise disjoint family
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
      <math|n\<in\>\<bbb-N\>> such that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>.
      Then <math|\<nu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A|)>\<less\>\<infty\>>
      [because <math|\<mu\>> is finite].
    </enumerate>
  </proof>

  We can now rephrase [theorem: <reference|measure compact class
  approximation>] to work with semi-rings instead of rings.

  <\theorem>
    <label|measure compact class approximation (2)>Let <math|X> be a set,
    <math|\<cal-S\>> a semi-ring on <math|X> and
    <math|\<mu\>:X\<rightarrow\><around*|[|0,\<infty\>|]>> a
    <with|font-series|bold|finite >content. If there exist a compact class
    <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>> such that

    <\enumerate>
      <item><math|\<forall\><around*|{|K<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-C\>>,
      <math|n\<in\>\<bbb-N\>> we have that
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i>\<in\>\<cal-C\>>

      <item><math|\<forall\>A\<in\>\<cal-S\>> and
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have that
      <math|\<exists\>K<rsub|\<varepsilon\>>\<in\>\<cal-C\>> and
      <math|\<exists\>A<rsub|\<varepsilon\>>\<in\>\<cal-S\>> such that\ 

      <\equation*>
        A<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>A<text|
        and >\<mu\><around*|(|A|)>-\<mu\><around*|(|A<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>
      </equation*>
    </enumerate>

    then if <math|<wide|\<mu\>|\<wide-bar\>>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is the unique extension of <math|\<mu\>> to a content on the ring
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> [see theorems: <reference|measure
    semi-ring to ring>, <reference|measure content extension>] we have that

    <\equation*>
      <wide|\<mu\>|\<wide-bar\>>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      is a pre-measure>
    </equation*>
  </theorem>

  <\proof>
    Let <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then by definition
    there exist a pairwise disjoint <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>,
    <math|n\<in\>\<bbb-N\>> such that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>.
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the hypothesis
    there exists <math|<around*|{|A<rsub|i,\<varepsilon\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
    and <math|<around*|{|K<rsub|i,\<varepsilon\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-C\>>
    such that\ 

    <\equation>
      <label|eq 20.263.216>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >A<rsub|i,\<varepsilon\>>\<subseteq\>K<rsub|i,\<varepsilon\>>\<subseteq\>A<rsub|i><text|
      and >\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|A<rsub|i,\<varepsilon\>>|)>\<less\><frac|\<varepsilon\>|2<rsup|n>>
    </equation>

    Define

    <\equation>
      <label|eq 20.264.216>K<rsub|\<varepsilon\>>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i,\<varepsilon\>>\<in\>\<cal-C\><text|
      [hypothesis]>
    </equation>

    and

    <\equation>
      <label|eq 20.265.216>A<rsub|\<varepsilon\>>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<varepsilon\>>\<in\>\<cal-R\><around*|[|\<cal-S\>|]><text|
      [because >\<cal-S\>\<subseteq\>\<cal-R\><around*|[|\<cal-S\>|]><text|
      and >\<cal-R\><around*|[|\<cal-S\>|]><text| is a ring hence
      >\<cap\><text|-stable]>
    </equation>

    then we have

    <\equation*>
      A<rsub|\<varepsilon\>>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<varepsilon\>><below|\<subseteq\>|<text|[eq:
      <reference|eq 20.263.216>]>><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i,\<varepsilon\>>=K<rsub|\<varepsilon\>>
    </equation*>

    and

    <\equation*>
      K<rsub|\<varepsilon\>>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i,\<varepsilon\>><below|\<subseteq\>|<text|[eq:
      <reference|eq 20.263.216>]>><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=A
    </equation*>

    so that we have\ 

    <\equation>
      <label|eq 20.266.216>A<rsub|\<varepsilon\>>\<in\>\<cal-R\><around*|[|\<cal-S\>|]><text|,
      >K<rsub|\<varepsilon\>>\<in\>\<cal-C\><text| and
      >A<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>A
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|A\\A<rsub|\<varepsilon\>>>|<cell|=>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|j,\<varepsilon\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|family properties (3)>]>>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|j,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|family de Morgan>]>>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\A<rsub|j,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\A<rsub|i,\<varepsilon\>>|)>>>>>
    </eqnarray*>

    Further if <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> then <math|<around*|(|A<rsub|i>\\A<rsub|i,\<varepsilon\>>|)><big|cap><around*|(|A<rsub|j>\\A<rsub|j,\<varepsilon\>>|)>\<subseteq\>A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>.
    To summarize we have that

    <\equation>
      <label|eq 20.267.216>A\\A<rsub|\<varepsilon\>>\<subseteq\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\A<rsub|i,\<varepsilon\>>|)><text|
      and ><around*|{|A<rsub|i>\\A<rsub|i,\<varepsilon\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is pairwise disjoint>
    </equation>

    As <math|<wide|\<mu\>|\<wide-bar\>>> is a <with|font-series|bold|finite>
    content on the ring <math|\<cal-R\><around*|[|\<cal-S\>|]>> [see theorem:
    <reference|measure content extension>] and
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|A<rsub|i>\\A<rsub|i,\<varepsilon\>>\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>
    [because <math|\<cal-R\><around*|[|\<cal-S\>|]>> is a ring and
    <math|A,A<rsub|\<varepsilon\>>,A<rsub|i>,A<rsub|i,\<varepsilon\>>\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>]
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|\<mu\>|\<wide-bar\>><around*|(|A\\A<rsub|\<varepsilon\>>|)>>|<cell|<below|\<leqslant\>|<text|><around*|[|theorem:<reference|measure
      content properties><around*|(|2|)>|]>>>|<cell|<wide|\<mu\>|\<wide-bar\>><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\A<rsub|i,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><wide|\<mu\>|\<wide-bar\>><around*|(|A<rsub|i>\\A<rsub|i,\<varepsilon\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|measure content properties>(3)]>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<wide|\<mu\>|\<wide-bar\>><around*|(|A<rsub|i>|)>-<wide|\<mu\>|\<wide-bar\>><around*|(|A<rsub|i,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<wide|\<mu\>|\<wide-bar\>><text|
      extends >\<mu\>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|A<rsub|i,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.263.216>]>>>|<cell|<big|sum><rsub|i=1><rsup|m><frac|\<varepsilon\>|2<rsup|i>>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>\<cdot\><big|sum><rsub|i=1><rsup|n><around*|(|<frac|1|2>|)><rsup|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|sum of powers lemma>]>>>|<cell|\<varepsilon\>\<cdot\><around*|(|<frac|1|2>|)>\<cdot\><frac|1-<around*|(|<frac|1|2>|)><rsup|n>|1-<frac|1|2>>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>\<cdot\><around*|(|1-<around*|(|<frac|1|2>|)><rsup|n>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    Hence\ 

    <\equation>
      <label|eq 20.268.216><wide|\<mu\>|\<wide-bar\>><around*|(|A\\A<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>
    </equation>

    Using [eq: <reference|eq 20.266.216>] and [eq: <reference|eq 20.268.216>]
    allows us to apply [theorem: <reference|measure compact class
    approximation>] proving that\ 

    <\equation*>
      <wide|\<mu\>|\<wide-bar\>><text| is a pre-measure on
      >\<cal-R\><around*|[|\<cal-S\>|]>
    </equation*>
  </proof>

  If we deal with topological spaces then we have a even simpler test to see
  if the extension of a content on a semi-ring <math|\<cal-S\>> to the ring
  <math|\<cal-R\><around*|[|\<cal-S\>|]>>.

  <\theorem>
    <label|measure compact class approximation (3)>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|\<cal-S\>> a semi-ring on <math|X> and
    <math|\<mu\>:X\<rightarrow\><around*|[|0,\<infty\>|]>> a
    <with|font-series|bold|finite >content. If
    <math|\<forall\>A\<in\>\<cal-S\>> and
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exists a
    <math|K<rsub|\<varepsilon\>>\<in\><around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text|
    is compact>|}>> and a <math|A<rsub|\<varepsilon\>>\<in\>\<cal-S\>> such
    that\ 

    <\equation*>
      A<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>A<text|
      and >\<mu\><around*|(|A|)>-\<mu\><around*|(|A<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>
    </equation*>

    Then if <math|<wide|\<mu\>|\<wide-bar\>>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is the unique extension of <math|\<mu\>> to a content on the ring
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> [see theorems: <reference|measure
    semi-ring to ring>, <reference|measure content extension>] we have that

    <\equation*>
      <wide|\<mu\>|\<wide-bar\>>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      is a pre-measure>
    </equation*>
  </theorem>

  <\proof>
    First using [theorem: <reference|compact class and sets of compact sets>]
    it follows that\ 

    <\equation>
      <label|eq 20.269.216>\<cal-C\>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text|
      is compact>|}><text| is a compact class>
    </equation>

    Further we have:

    <\enumerate>
      <item><math|\<forall\><around*|{|K<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-C\>>,
      <math|n\<in\>\<bbb-N\>> we have by [theorem: <reference|compact finite
      union of compact sets>] that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i>>
      is compact hence <math|><math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i>\<in\>\<cal-C\>>.

      <item><math|\<forall\>A\<in\>\<cal-S\>> and
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have by the
      hypothesis that <math|\<exists\>K<rsub|\<varepsilon\>>\<in\>\<cal-C\>>
      and <math|\<exists\>A<rsub|\<varepsilon\>>\<in\>\<cal-S\>> such that\ 

      <\equation*>
        A<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>A<text|
        and >\<mu\><around*|(|A|)>-\<mu\><around*|(|A<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>
      </equation*>
    </enumerate>

    So using the previous theorem [theorem: <reference|measure compact class
    approximation (2)>] we have that if <math|<wide|\<mu\>|\<wide-bar\>>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is the unique extension of <math|\<mu\>> to a content on the ring
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> then
    <math|<wide|\<mu\>|\<wide-bar\>>> is a pre-measure.
  </proof>

  <subsubsection|Using the Carathéodory theorem on <math|\<bbb-R\><rsup|n>>>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|19>
    <associate|item-nr|>
    <associate|last-item-nr|2>
    <associate|page-first|1237>
    <associate|section-nr|1>
    <associate|subsection-nr|7>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|20|?>>
    <associate|auto-10|<tuple|20.1.4|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>>|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>|?>>
    <associate|auto-13|<tuple|limit in <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>|?>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>|?>>
    <associate|auto-15|<tuple|20.1.5|?>>
    <associate|auto-16|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i><with|mode|<quote|text>|
    in >\<bbb-R\>>|?>>
    <associate|auto-17|<tuple|20.2|?>>
    <associate|auto-18|<tuple|pairwise disjoint family|?>>
    <associate|auto-19|<tuple|additive set function|?>>
    <associate|auto-2|<tuple|20.1|?>>
    <associate|auto-20|<tuple|sub-additive sub function|?>>
    <associate|auto-21|<tuple|countable additive set function|?>>
    <associate|auto-22|<tuple|countable sub-additive sub function|?>>
    <associate|auto-23|<tuple|20.3|?>>
    <associate|auto-24|<tuple|ring of sets|?>>
    <associate|auto-25|<tuple|algebra of sets|?>>
    <associate|auto-26|<tuple|sigma algebra|?>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|auto-28|<tuple|measurable space|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>|?>>
    <associate|auto-3|<tuple|20.1.1|?>>
    <associate|auto-30|<tuple|Borel algebra|?>>
    <associate|auto-31|<tuple|<with|mode|<quote|math>|\<cal-B\><around*|[|X,\<cal-T\>|]>>|?>>
    <associate|auto-32|<tuple|20.3.1|?>>
    <associate|auto-33|<tuple|<with|mode|<quote|math>|\<cal-B\><around*|[|\<bbb-R\>|]>>|?>>
    <associate|auto-34|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|<around*|[||]>>>|?>>
    <associate|auto-35|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|<around*|[||[>>>|?>>
    <associate|auto-36|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|<around*|]||]>>>|?>>
    <associate|auto-37|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|<around*|]||[>>>|?>>
    <associate|auto-38|<tuple|<with|mode|<quote|math>|\<cal-I\>>|?>>
    <associate|auto-39|<tuple|20.3.2|?>>
    <associate|auto-4|<tuple|20.1.2|?>>
    <associate|auto-40|<tuple|begin|?>>
    <associate|auto-41|<tuple|end|?>>
    <associate|auto-42|<tuple|<with|mode|<quote|math>|v<rsup|n><around*|(|I|)>>|?>>
    <associate|auto-43|<tuple|Dyadic interval|?>>
    <associate|auto-44|<tuple|20.4|?>>
    <associate|auto-45|<tuple|20.4.1|?>>
    <associate|auto-46|<tuple|measure space|?>>
    <associate|auto-47|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>|?>>
    <associate|auto-48|<tuple|finite measure|?>>
    <associate|auto-49|<tuple|<with|mode|<quote|math>|\<sigma\>>-finite
    measure space|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|+>>|?>>
    <associate|auto-50|<tuple|20.4.2|?>>
    <associate|auto-51|<tuple|outer measure|?>>
    <associate|auto-52|<tuple|<with|mode|<quote|math>|\<mu\><rsup|\<ast\>>>|?>>
    <associate|auto-53|<tuple|measurable sets|?>>
    <associate|auto-54|<tuple|<with|mode|<quote|math>|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>|?>>
    <associate|auto-55|<tuple|20.4.3|?>>
    <associate|auto-56|<tuple|20.4.3.1|?>>
    <associate|auto-57|<tuple|Dynkim system|?>>
    <associate|auto-58|<tuple|<with|mode|<quote|math>|\<frak-D\>>|?>>
    <associate|auto-59|<tuple|20.4.3.2|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>|?>>
    <associate|auto-60|<tuple|20.4.3.3|?>>
    <associate|auto-61|<tuple|proto-ring|?>>
    <associate|auto-62|<tuple|proto-measure|?>>
    <associate|auto-63|<tuple|semi-ring|?>>
    <associate|auto-64|<tuple|pre-measure|?>>
    <associate|auto-65|<tuple|20.4.3.4|?>>
    <associate|auto-66|<tuple|20.4.3.5|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>,+|\<rangle\>>>|?>>
    <associate|auto-8|<tuple|20.1.3|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>|?>>
    <associate|eq 18.10.021|<tuple|20.80|?>>
    <associate|eq 18.11.021|<tuple|20.81|?>>
    <associate|eq 18.12.021|<tuple|20.82|?>>
    <associate|eq 18.13.021|<tuple|20.83|?>>
    <associate|eq 18.14.021|<tuple|20.84|?>>
    <associate|eq 18.15.021|<tuple|20.85|?>>
    <associate|eq 18.16.021|<tuple|20.86|?>>
    <associate|eq 18.17.021|<tuple|20.87|?>>
    <associate|eq 18.18.021|<tuple|20.88|?>>
    <associate|eq 18.19.021|<tuple|20.89|?>>
    <associate|eq 18.20.021|<tuple|20.90|?>>
    <associate|eq 18.21.021|<tuple|20.91|?>>
    <associate|eq 18.22.021|<tuple|20.92|?>>
    <associate|eq 18.39.022|<tuple|20.105|?>>
    <associate|eq 18.40.022|<tuple|20.106|?>>
    <associate|eq 18.41.022|<tuple|20.107|?>>
    <associate|eq 18.42.022|<tuple|20.108|?>>
    <associate|eq 18.43.022|<tuple|20.109|?>>
    <associate|eq 18.8.020|<tuple|20.78|?>>
    <associate|eq 18.9.020|<tuple|20.79|?>>
    <associate|eq 20.1.155|<tuple|20.1|?>>
    <associate|eq 20.10.155|<tuple|20.10|?>>
    <associate|eq 20.100.200|<tuple|20.117|?>>
    <associate|eq 20.101.200|<tuple|20.118|?>>
    <associate|eq 20.102.200|<tuple|20.119|?>>
    <associate|eq 20.103.200|<tuple|20.120|?>>
    <associate|eq 20.104.200|<tuple|20.121|?>>
    <associate|eq 20.105.200|<tuple|20.122|?>>
    <associate|eq 20.106.200|<tuple|20.123|?>>
    <associate|eq 20.107.200|<tuple|20.124|?>>
    <associate|eq 20.108.200|<tuple|20.125|?>>
    <associate|eq 20.11.155|<tuple|20.11|?>>
    <associate|eq 20.112.201|<tuple|20.53|?>>
    <associate|eq 20.113.201|<tuple|20.126|?>>
    <associate|eq 20.114.201|<tuple|20.127|?>>
    <associate|eq 20.115.201|<tuple|20.128|?>>
    <associate|eq 20.116.201|<tuple|20.129|?>>
    <associate|eq 20.117.201|<tuple|20.130|?>>
    <associate|eq 20.118.118.201|<tuple|20.131|?>>
    <associate|eq 20.119.201|<tuple|20.132|?>>
    <associate|eq 20.12.155|<tuple|20.12|?>>
    <associate|eq 20.120.201|<tuple|20.133|?>>
    <associate|eq 20.121.201|<tuple|20.134|?>>
    <associate|eq 20.122.201|<tuple|20.135|?>>
    <associate|eq 20.123.201|<tuple|20.136|?>>
    <associate|eq 20.124.201|<tuple|20.137|?>>
    <associate|eq 20.126.201.1|<tuple|20.138|?>>
    <associate|eq 20.126.201.2|<tuple|20.139|?>>
    <associate|eq 20.127.201.1|<tuple|20.140|?>>
    <associate|eq 20.13.155|<tuple|20.14|?>>
    <associate|eq 20.13.156|<tuple|20.13|?>>
    <associate|eq 20.131.202|<tuple|20.141|?>>
    <associate|eq 20.132.202|<tuple|20.142|?>>
    <associate|eq 20.133.202|<tuple|20.157|?>>
    <associate|eq 20.134.202|<tuple|20.158|?>>
    <associate|eq 20.135.202|<tuple|20.159|?>>
    <associate|eq 20.136.202|<tuple|20.160|?>>
    <associate|eq 20.137.202|<tuple|20.161|?>>
    <associate|eq 20.138.202|<tuple|20.162|?>>
    <associate|eq 20.139.202|<tuple|20.163|?>>
    <associate|eq 20.14.155|<tuple|20.15|?>>
    <associate|eq 20.140.202|<tuple|20.164|?>>
    <associate|eq 20.140.210.1|<tuple|20.143|?>>
    <associate|eq 20.141.202|<tuple|20.165|?>>
    <associate|eq 20.141.210.2|<tuple|20.144|?>>
    <associate|eq 20.142.202|<tuple|20.166|?>>
    <associate|eq 20.142.210.3|<tuple|20.145|?>>
    <associate|eq 20.143.202|<tuple|20.167|?>>
    <associate|eq 20.144.202|<tuple|20.168|?>>
    <associate|eq 20.145.202|<tuple|20.169|?>>
    <associate|eq 20.146.202|<tuple|20.170|?>>
    <associate|eq 20.147.202|<tuple|20.171|?>>
    <associate|eq 20.148.202|<tuple|20.172|?>>
    <associate|eq 20.149.202|<tuple|20.173|?>>
    <associate|eq 20.150.202|<tuple|20.174|?>>
    <associate|eq 20.151.202|<tuple|20.175|?>>
    <associate|eq 20.152.202|<tuple|20.176|?>>
    <associate|eq 20.153.202|<tuple|20.177|?>>
    <associate|eq 20.154.202|<tuple|20.178|?>>
    <associate|eq 20.155.202|<tuple|20.180|?>>
    <associate|eq 20.156.202|<tuple|20.181|?>>
    <associate|eq 20.157.202|<tuple|20.182|?>>
    <associate|eq 20.158.202|<tuple|20.183|?>>
    <associate|eq 20.159.202|<tuple|20.184|?>>
    <associate|eq 20.16.156|<tuple|20.16|?>>
    <associate|eq 20.160.202|<tuple|20.185|?>>
    <associate|eq 20.161.202|<tuple|20.186|?>>
    <associate|eq 20.163\<point\>202|<tuple|20.146|?>>
    <associate|eq 20.164.202|<tuple|20.147|?>>
    <associate|eq 20.164.204|<tuple|20.198|?>>
    <associate|eq 20.165.202|<tuple|20.148|?>>
    <associate|eq 20.165.204|<tuple|20.198|?>>
    <associate|eq 20.166.202|<tuple|20.149|?>>
    <associate|eq 20.166.204|<tuple|20.199|?>>
    <associate|eq 20.167.202|<tuple|20.150|?>>
    <associate|eq 20.167.204|<tuple|20.200|?>>
    <associate|eq 20.168.202|<tuple|20.151|?>>
    <associate|eq 20.168.204|<tuple|20.201|?>>
    <associate|eq 20.169.202|<tuple|20.152|?>>
    <associate|eq 20.169.204|<tuple|20.202|?>>
    <associate|eq 20.17.156|<tuple|20.17|?>>
    <associate|eq 20.170.202|<tuple|20.153|?>>
    <associate|eq 20.170.204|<tuple|20.203|?>>
    <associate|eq 20.171.202|<tuple|20.154|?>>
    <associate|eq 20.171.204|<tuple|20.204|?>>
    <associate|eq 20.172.202|<tuple|20.155|?>>
    <associate|eq 20.173.1|<tuple|20.179|?>>
    <associate|eq 20.173.202|<tuple|20.156|?>>
    <associate|eq 20.177.204|<tuple|20.187|?>>
    <associate|eq 20.18.156|<tuple|20.18|?>>
    <associate|eq 20.188.217|<tuple|20.188|?>>
    <associate|eq 20.189.217|<tuple|20.189|?>>
    <associate|eq 20.19.156|<tuple|20.19|?>>
    <associate|eq 20.190.210|<tuple|20.205|?>>
    <associate|eq 20.190.217|<tuple|20.190|?>>
    <associate|eq 20.191.210|<tuple|20.206|?>>
    <associate|eq 20.191.217|<tuple|20.191|?>>
    <associate|eq 20.191.217.1|<tuple|20.191|?>>
    <associate|eq 20.192.210|<tuple|20.207|?>>
    <associate|eq 20.192.217|<tuple|20.193|?>>
    <associate|eq 20.193.210|<tuple|20.208|?>>
    <associate|eq 20.193.217|<tuple|20.194|?>>
    <associate|eq 20.194.210|<tuple|20.209|?>>
    <associate|eq 20.195.210|<tuple|20.210|?>>
    <associate|eq 20.195.217|<tuple|20.195|?>>
    <associate|eq 20.196.210|<tuple|20.211|?>>
    <associate|eq 20.196.217|<tuple|20.196|?>>
    <associate|eq 20.196\<point\>217|<tuple|20.196|?>>
    <associate|eq 20.197.210|<tuple|20.212|?>>
    <associate|eq 20.197.217|<tuple|20.197|?>>
    <associate|eq 20.198.210|<tuple|20.213|?>>
    <associate|eq 20.199.210|<tuple|20.214|?>>
    <associate|eq 20.2.155|<tuple|20.2|?>>
    <associate|eq 20.20.156|<tuple|20.20|?>>
    <associate|eq 20.200.210|<tuple|20.215|?>>
    <associate|eq 20.201.210|<tuple|20.216|?>>
    <associate|eq 20.201.217|<tuple|20.201|?>>
    <associate|eq 20.202.210|<tuple|20.217|?>>
    <associate|eq 20.206.210|<tuple|20.224|?>>
    <associate|eq 20.206.211|<tuple|20.218|?>>
    <associate|eq 20.207.210|<tuple|20.225|?>>
    <associate|eq 20.207.211|<tuple|20.219|?>>
    <associate|eq 20.208.210|<tuple|20.226|?>>
    <associate|eq 20.208.211|<tuple|20.220|?>>
    <associate|eq 20.209.210|<tuple|20.227|?>>
    <associate|eq 20.209.211|<tuple|20.221|?>>
    <associate|eq 20.21.156|<tuple|20.21|?>>
    <associate|eq 20.210.210|<tuple|20.228|?>>
    <associate|eq 20.210.211|<tuple|20.222|?>>
    <associate|eq 20.211.210|<tuple|20.229|?>>
    <associate|eq 20.211.211|<tuple|20.223|?>>
    <associate|eq 20.212.210|<tuple|20.230|?>>
    <associate|eq 20.213.210|<tuple|20.231|?>>
    <associate|eq 20.22.156|<tuple|20.22|?>>
    <associate|eq 20.220.212|<tuple|20.233|?>>
    <associate|eq 20.220.212.1|<tuple|20.232|?>>
    <associate|eq 20.221.212|<tuple|20.234|?>>
    <associate|eq 20.222.212|<tuple|20.235|?>>
    <associate|eq 20.223.212|<tuple|20.236|?>>
    <associate|eq 20.225.212|<tuple|20.237|?>>
    <associate|eq 20.226.212|<tuple|20.238|?>>
    <associate|eq 20.227.212|<tuple|20.239|?>>
    <associate|eq 20.228.212|<tuple|20.240|?>>
    <associate|eq 20.229.212|<tuple|20.241|?>>
    <associate|eq 20.23.156|<tuple|20.23|?>>
    <associate|eq 20.230.212|<tuple|20.242|?>>
    <associate|eq 20.231.212|<tuple|20.243|?>>
    <associate|eq 20.232.212|<tuple|20.244|?>>
    <associate|eq 20.233.212|<tuple|20.245|?>>
    <associate|eq 20.234.212|<tuple|20.246|?>>
    <associate|eq 20.235.212|<tuple|20.247|?>>
    <associate|eq 20.236.212|<tuple|20.248|?>>
    <associate|eq 20.237.212|<tuple|20.249|?>>
    <associate|eq 20.238.212|<tuple|20.250|?>>
    <associate|eq 20.239.212|<tuple|20.251|?>>
    <associate|eq 20.240.212|<tuple|20.252|?>>
    <associate|eq 20.241.212|<tuple|20.253|?>>
    <associate|eq 20.242.212|<tuple|20.254|?>>
    <associate|eq 20.244.212|<tuple|20.256|?>>
    <associate|eq 20.245.212|<tuple|20.257|?>>
    <associate|eq 20.246.212|<tuple|20.258|?>>
    <associate|eq 20.246.216.1|<tuple|20.255|?>>
    <associate|eq 20.24\<point\>156|<tuple|20.24|?>>
    <associate|eq 20.25.156|<tuple|20.25|?>>
    <associate|eq 20.250.216|<tuple|20.259|?>>
    <associate|eq 20.251.216|<tuple|20.260|?>>
    <associate|eq 20.252.216|<tuple|20.261|?>>
    <associate|eq 20.253.216|<tuple|20.262|?>>
    <associate|eq 20.254.216|<tuple|20.263|?>>
    <associate|eq 20.255.216|<tuple|20.264|?>>
    <associate|eq 20.256.216|<tuple|20.265|?>>
    <associate|eq 20.257.216|<tuple|20.266|?>>
    <associate|eq 20.258.216|<tuple|20.267|?>>
    <associate|eq 20.259.216|<tuple|20.268|?>>
    <associate|eq 20.26.156|<tuple|20.26|?>>
    <associate|eq 20.260.216|<tuple|20.269|?>>
    <associate|eq 20.261.216|<tuple|20.270|?>>
    <associate|eq 20.262.216|<tuple|20.271|?>>
    <associate|eq 20.263.216|<tuple|20.272|?>>
    <associate|eq 20.264.216|<tuple|20.273|?>>
    <associate|eq 20.265.216|<tuple|20.274|?>>
    <associate|eq 20.266.216|<tuple|20.275|?>>
    <associate|eq 20.267.216|<tuple|20.276|?>>
    <associate|eq 20.268.216|<tuple|20.277|?>>
    <associate|eq 20.269.216|<tuple|20.278|?>>
    <associate|eq 20.27.156|<tuple|20.27|?>>
    <associate|eq 20.28.156|<tuple|20.28|?>>
    <associate|eq 20.29.156|<tuple|20.29|?>>
    <associate|eq 20.3.155|<tuple|20.3|?>>
    <associate|eq 20.30.156|<tuple|20.30|?>>
    <associate|eq 20.31.156|<tuple|20.31|?>>
    <associate|eq 20.32.156|<tuple|20.32|?>>
    <associate|eq 20.32.156.1|<tuple|20.33|?>>
    <associate|eq 20.34.156|<tuple|20.34|?>>
    <associate|eq 20.35.156|<tuple|20.35|?>>
    <associate|eq 20.36.156|<tuple|20.36|?>>
    <associate|eq 20.37.156|<tuple|20.37|?>>
    <associate|eq 20.38.156|<tuple|20.38|?>>
    <associate|eq 20.39.156|<tuple|20.40|?>>
    <associate|eq 20.39.201|<tuple|20.39|?>>
    <associate|eq 20.4.155|<tuple|20.4|?>>
    <associate|eq 20.40.156|<tuple|20.41|?>>
    <associate|eq 20.41.156|<tuple|20.42|?>>
    <associate|eq 20.42.156|<tuple|20.43|?>>
    <associate|eq 20.43.156|<tuple|20.44|?>>
    <associate|eq 20.44.156|<tuple|20.45|?>>
    <associate|eq 20.45.156|<tuple|20.46|?>>
    <associate|eq 20.46.156|<tuple|20.47|?>>
    <associate|eq 20.47.156|<tuple|20.48|?>>
    <associate|eq 20.48.156|<tuple|20.49|?>>
    <associate|eq 20.49.156|<tuple|20.50|?>>
    <associate|eq 20.5.155|<tuple|20.5|?>>
    <associate|eq 20.50.156|<tuple|20.51|?>>
    <associate|eq 20.51.156|<tuple|20.52|?>>
    <associate|eq 20.52.200|<tuple|20.71|?>>
    <associate|eq 20.52.200.1|<tuple|20.67|?>>
    <associate|eq 20.53.200|<tuple|20.72|?>>
    <associate|eq 20.53.200.1|<tuple|20.68|?>>
    <associate|eq 20.54.200|<tuple|20.73|?>>
    <associate|eq 20.54.200.1|<tuple|20.69|?>>
    <associate|eq 20.54.202|<tuple|20.54|?>>
    <associate|eq 20.55.200|<tuple|20.74|?>>
    <associate|eq 20.55.200.1|<tuple|20.70|?>>
    <associate|eq 20.55.202|<tuple|20.55|?>>
    <associate|eq 20.56.200|<tuple|20.75|?>>
    <associate|eq 20.56.202|<tuple|20.56|?>>
    <associate|eq 20.57.200|<tuple|20.76|?>>
    <associate|eq 20.57.203|<tuple|20.60|?>>
    <associate|eq 20.57.212|<tuple|20.57|?>>
    <associate|eq 20.58.200|<tuple|20.77|?>>
    <associate|eq 20.58.203|<tuple|20.61|?>>
    <associate|eq 20.58.212|<tuple|20.58|?>>
    <associate|eq 20.59.203|<tuple|20.62|?>>
    <associate|eq 20.59.212|<tuple|20.59|?>>
    <associate|eq 20.6.155|<tuple|20.6|?>>
    <associate|eq 20.60.203|<tuple|20.63|?>>
    <associate|eq 20.61.204|<tuple|20.64|?>>
    <associate|eq 20.62.204|<tuple|20.65|?>>
    <associate|eq 20.63.204|<tuple|20.66|?>>
    <associate|eq 20.7.155|<tuple|20.7|?>>
    <associate|eq 20.76.200|<tuple|20.93|?>>
    <associate|eq 20.77.200|<tuple|20.94|?>>
    <associate|eq 20.78.200|<tuple|20.95|?>>
    <associate|eq 20.79.200|<tuple|20.96|?>>
    <associate|eq 20.8.155|<tuple|20.8|?>>
    <associate|eq 20.80.200|<tuple|20.97|?>>
    <associate|eq 20.81.200|<tuple|20.98|?>>
    <associate|eq 20.82.200|<tuple|20.99|?>>
    <associate|eq 20.83.200|<tuple|20.100|?>>
    <associate|eq 20.84.200|<tuple|20.101|?>>
    <associate|eq 20.85.200|<tuple|20.102|?>>
    <associate|eq 20.86.200|<tuple|20.103|?>>
    <associate|eq 20.87.200|<tuple|20.104|?>>
    <associate|eq 20.9.155|<tuple|20.9|?>>
    <associate|eq 20.93.200|<tuple|20.110|?>>
    <associate|eq 20.94.200|<tuple|20.111|?>>
    <associate|eq 20.95.200|<tuple|20.112|?>>
    <associate|eq 20.96.200|<tuple|20.113|?>>
    <associate|eq 20.97.200|<tuple|20.114|?>>
    <associate|eq 20.98.200|<tuple|20.115|?>>
    <associate|eq 20.99.200|<tuple|20.116|?>>
    <associate|extended -(x.y)|<tuple|20.34|?>>
    <associate|extended 0\<less\>=x and 0\<less\>=y then
    x\<less\>=x-y\<less\>=x|<tuple|20.25|?>>
    <associate|extended 0\<less\>=y and z=x+y then
    x\<less\>=z|<tuple|20.30|?>>
    <associate|extended 0\<less\>x and 0\<less\>=y then
    0\<less\>x+y|<tuple|20.29|?>>
    <associate|extended abelian semi group|<tuple|20.24|?>>
    <associate|extended abelian semi group (1)|<tuple|20.33|?>>
    <associate|extended absolute value|<tuple|20.39|?>>
    <associate|extended basis for the topology|<tuple|20.43|?>>
    <associate|extended canonical topologies on the real and extended real
    space|<tuple|20.46|?>>
    <associate|extended canonical topology|<tuple|20.45|?>>
    <associate|extended closed sets|<tuple|20.47|?>>
    <associate|extended constant sequence|<tuple|20.55|?>>
    <associate|extended continuous functions|<tuple|20.49|?>>
    <associate|extended denumerable sum of denumerable sums|<tuple|20.98|?>>
    <associate|extended denumerable sum of finite sums|<tuple|20.97|?>>
    <associate|extended distributitivy|<tuple|20.37|?>>
    <associate|extended distributitivy finite sum|<tuple|20.88|?>>
    <associate|extended finite sums|<tuple|20.83|?>>
    <associate|extended fully order|<tuple|20.9|?>>
    <associate|extended generating basis|<tuple|20.44|?>>
    <associate|extended inf sup negate|<tuple|20.61|?>>
    <associate|extended inf(sup) sup(inf)|<tuple|20.52|?>>
    <associate|extended infinite inf sup|<tuple|20.13|?>>
    <associate|extended infinite sum|<tuple|20.85|?>>
    <associate|extended infinite sum of zero elements|<tuple|20.87|?>>
    <associate|extended infinite sum properties|<tuple|20.89|?>>
    <associate|extended lemma 20.62.155|<tuple|20.63|?>>
    <associate|extended lim inf \<less\>= lim sup|<tuple|20.65|?>>
    <associate|extended lim inf and lim sup|<tuple|20.53|?>>
    <associate|extended lim inf and lim sup and sum|<tuple|20.60|?>>
    <associate|extended lim inf lim sup and negation|<tuple|20.62|?>>
    <associate|extended lim inf lim sup in the set of real
    numbers|<tuple|20.66|?>>
    <associate|extended lim inf lim sup in the set of real numbers
    (1)|<tuple|20.72|?>>
    <associate|extended lim inf lim sup ineqality (1)|<tuple|20.57|?>>
    <associate|extended lim inf lim sup ineqality (2)|<tuple|20.58|?>>
    <associate|extended lim inf lim sup properties|<tuple|20.64|?>>
    <associate|extended lim inf x_i+n|<tuple|20.56|?>>
    <associate|extended limit|<tuple|20.67|?>>
    <associate|extended limit (-@@)^n|<tuple|20.70|?>>
    <associate|extended limit 1/(x_i)|<tuple|20.80|?>>
    <associate|extended limit 1/n|<tuple|20.73|?>>
    <associate|extended limit and index translation|<tuple|20.75|?>>
    <associate|extended limit constant sequence|<tuple|20.69|?>>
    <associate|extended limit equivalences|<tuple|20.74|?>>
    <associate|extended limit in the (extended) real numbers|<tuple|20.71|?>>
    <associate|extended limit increasing / decreasing sequence
    exist|<tuple|20.82|?>>
    <associate|extended limit properties|<tuple|20.76|?>>
    <associate|extended negate|<tuple|20.32|?>>
    <associate|extended negate inequality|<tuple|20.36|?>>
    <associate|extended neutral element|<tuple|20.16|?>>
    <associate|extended open set properties|<tuple|20.48|?>>
    <associate|extended open set scaling and translation|<tuple|20.50|?>>
    <associate|extended order relation|<tuple|20.4|?>>
    <associate|extended partial sums converges|<tuple|20.84|?>>
    <associate|extended positive and non negative numbers|<tuple|20.23|?>>
    <associate|extended reals|<tuple|20.1|?>>
    <associate|extended reals finite real number|<tuple|20.3|?>>
    <associate|extended series and index translation|<tuple|20.90|?>>
    <associate|extended series and permutations|<tuple|20.91|?>>
    <associate|extended series is finite then all the terms are
    finite|<tuple|20.101|?>>
    <associate|extended sum|<tuple|20.14|?>>
    <associate|extended sum of sums|<tuple|20.94|?>>
    <associate|extended sup and inf exist|<tuple|20.11|?>>
    <associate|extended sup inf of real numbers|<tuple|20.12|?>>
    <associate|extended sup of set and sum|<tuple|20.59|?>>
    <associate|extended topology od Hsusdorff|<tuple|20.51|?>>
    <associate|extended x+z=y+z=\<gtr\>x-y|<tuple|20.26|?>>
    <associate|extended x.y|<tuple|20.31|?>>
    <associate|extended x\<less\>=x+e=\<gtr\>x\<less\>=e|<tuple|20.38|?>>
    <associate|extended x\<less\>=y then for 0\<less\>=s we have
    s.x\<less\>=s.y|<tuple|20.35|?>>
    <associate|extended x\<less\>=y then x+z\<less\>=y+z|<tuple|20.27|?>>
    <associate|label 20.147.200|<tuple|20.167|?>>
    <associate|lemma 20.102.202|<tuple|20.106|?>>
    <associate|lemma 20.109.213|<tuple|20.109|?>>
    <associate|lemma 20.110.214|<tuple|20.110|?>>
    <associate|lemma 20.119.200|<tuple|20.144|?>>
    <associate|lemma 20.121.200|<tuple|20.145|?>>
    <associate|lemma 20.129.200|<tuple|20.153|?>>
    <associate|lemma 20.132.200|<tuple|20.156|?>>
    <associate|lemma 20.136.200|<tuple|20.160|?>>
    <associate|lemma 20.138.200|<tuple|20.162|?>>
    <associate|lemma 20.139.200|<tuple|20.163|?>>
    <associate|lemma 20.141.200|<tuple|20.164|?>>
    <associate|lemma 20.161.201|<tuple|20.105|?>>
    <associate|lemma 20.172.1|<tuple|20.192|?>>
    <associate|lemma 20.204.217|<tuple|20.204|?>>
    <associate|lemma 20.78.156|<tuple|20.79|?>>
    <associate|lemma 20.80.156|<tuple|20.81|?>>
    <associate|lemma 20.90.156|<tuple|20.95|?>>
    <associate|lemma 20.95.156|<tuple|20.100|?>>
    <associate|measure Borel algebra|<tuple|20.138|?>>
    <associate|measure Borel algebra and closure|<tuple|20.139|?>>
    <associate|measure Borel algebra on R|<tuple|20.146|?>>
    <associate|measure Borel algebra on R^n|<tuple|20.147|?>>
    <associate|measure Borel algebra on R^n (equivalences)|<tuple|20.165|?>>
    <associate|measure Caratheodory|<tuple|20.187|?>>
    <associate|measure Dyadic cubes|<tuple|20.158|?>>
    <associate|measure Dyadic cubes properties|<tuple|20.161|?>>
    <associate|measure Dynkin system|<tuple|20.188|?>>
    <associate|measure Dynkin system P(X)|<tuple|20.191|?>>
    <associate|measure Dynkin system condition for sigma
    algebra|<tuple|20.194|?>>
    <associate|measure Dynkin system condition for sigma algebra
    (1)|<tuple|20.195|?>>
    <associate|measure Dynkin system generated|<tuple|20.193|?>>
    <associate|measure Dynkin system properties|<tuple|20.190|?>>
    <associate|measure P(X) is a algebra|<tuple|20.125|?>>
    <associate|measure P(X) is a ring|<tuple|20.121|?>>
    <associate|measure P(X) is a sigma algebra|<tuple|20.133|?>>
    <associate|measure additive function monotone|<tuple|20.206|?>>
    <associate|measure additive set function|<tuple|20.112|?>>
    <associate|measure algebra|<tuple|20.123|?>>
    <associate|measure algebra equavalent definition|<tuple|20.127|?>>
    <associate|measure algebra properties|<tuple|20.126|?>>
    <associate|measure alternative definition for a content|<tuple|20.215|?>>
    <associate|measure begin end|<tuple|20.157|?>>
    <associate|measure borel algebrat on R|<tuple|20.141|?>>
    <associate|measure compact class approximation|<tuple|20.220|?>>
    <associate|measure compact class approximation (1)|<tuple|20.221|?>>
    <associate|measure compact class approximation (2)|<tuple|20.224|?>>
    <associate|measure compact class approximation (3)|<tuple|20.225|?>>
    <associate|measure condition for a algebra to be a sigma
    algebra|<tuple|20.135|?>>
    <associate|measure content|<tuple|20.213|?>>
    <associate|measure content extension|<tuple|20.223|?>>
    <associate|measure content properties|<tuple|20.216|?>>
    <associate|measure countable additive set function|<tuple|20.114|?>>
    <associate|measure countable additivity implies
    additivity|<tuple|20.168|?>>
    <associate|measure countable additivity implies finite
    additivity|<tuple|20.116|?>>
    <associate|measure countable additivity implies sub
    additivity|<tuple|20.179|?>>
    <associate|measure countable sub-additive set function|<tuple|20.115|?>>
    <associate|measure countable sub-additivity implies
    sub-additivity|<tuple|20.118|?>>
    <associate|measure countable union is in sigma algebra|<tuple|20.134|?>>
    <associate|measure extending pre-measure to a measure|<tuple|20.210|?>>
    <associate|measure finite measure|<tuple|20.176|?>>
    <associate|measure generated sigma algebra|<tuple|20.137|?>>
    <associate|measure half open intervals in R^n|<tuple|20.154|?>>
    <associate|measure measurable set equivalences|<tuple|20.186|?>>
    <associate|measure measurable sets|<tuple|20.185|?>>
    <associate|measure measurable space|<tuple|20.130|?>>
    <associate|measure measure conditions|<tuple|20.182|?>>
    <associate|measure measure definition|<tuple|20.169|?>>
    <associate|measure measure on A\|B|<tuple|20.174|?>>
    <associate|measure measure space|<tuple|20.171|?>>
    <associate|measure measure space properties (1)|<tuple|20.175|?>>
    <associate|measure measure space properties (2)|<tuple|20.180|?>>
    <associate|measure measure space properties (3)|<tuple|20.181|?>>
    <associate|measure monotone|<tuple|20.111|?>>
    <associate|measure on sub sigma algebra|<tuple|20.173|?>>
    <associate|measure order on R^n|<tuple|20.148|?>>
    <associate|measure outer measure|<tuple|20.183|?>>
    <associate|measure outer measure construction|<tuple|20.199|?>>
    <associate|measure outer measure construction from
    pre-measure|<tuple|20.209|?>>
    <associate|measure outer measure is finite subadditive|<tuple|20.184|?>>
    <associate|measure pairwise disjoint|<tuple|20.102|?>>
    <associate|measure pairwise disjoint sets and
    bijections|<tuple|20.104|?>>
    <associate|measure pre-measure|<tuple|20.203|?>>
    <associate|measure pre-measure equivalences|<tuple|20.218|?>>
    <associate|measure pre-measure is a content|<tuple|20.217|?>>
    <associate|measure pre-measure is additive|<tuple|20.205|?>>
    <associate|measure pre-measure is countable
    sub-additive|<tuple|20.208|?>>
    <associate|measure pre-measure monotonity|<tuple|20.207|?>>
    <associate|measure proto-ring|<tuple|20.197|?>>
    <associate|measure ring|<tuple|20.119|?>>
    <associate|measure ring is a semi-ring|<tuple|20.212|?>>
    <associate|measure ring properties|<tuple|20.122|?>>
    <associate|measure semi-ring|<tuple|20.201|?>>
    <associate|measure semi-ring to ring|<tuple|20.222|?>>
    <associate|measure sigma algebra|<tuple|20.128|?>>
    <associate|measure sigma algebra equivalences|<tuple|20.131|?>>
    <associate|measure sigma algebra intersection|<tuple|20.136|?>>
    <associate|measure sigma finite measure space|<tuple|20.178|?>>
    <associate|measure sub measure space|<tuple|20.140|?>>
    <associate|measure sub-additive set function|<tuple|20.113|?>>
    <associate|measure sum amd scalar product of measures|<tuple|20.172|?>>
    <associate|measure union intersection stable|<tuple|20.108|?>>
    <associate|measure uniqueness of extension of a measure|<tuple|20.196|?>>
    <associate|measure {empty set} is a ring|<tuple|20.120|?>>
    <associate|measure {emptyset,set} is a measure|<tuple|20.124|?>>
    <associate|note 20.198.210|<tuple|20.200|?>>
    <associate|proto-measure|<tuple|20.198|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|+>>>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>>|<pageref|auto-6>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>,+|\<rangle\>>>>|<pageref|auto-7>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<pageref|auto-11>>

      <tuple|<tuple|<with|mode|<quote|math>|<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<pageref|auto-12>>

      <tuple|<tuple|limit in <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>>|<pageref|auto-13>>

      <tuple|<tuple|<with|mode|<quote|math>|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>|<pageref|auto-14>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i><with|mode|<quote|text>|
      in >\<bbb-R\>>>|<pageref|auto-16>>

      <tuple|<tuple|pairwise disjoint family>|<pageref|auto-18>>

      <tuple|<tuple|additive set function>|<pageref|auto-19>>

      <tuple|<tuple|sub-additive sub function>|<pageref|auto-20>>

      <tuple|<tuple|countable additive set function>|<pageref|auto-21>>

      <tuple|<tuple|countable sub-additive sub function>|<pageref|auto-22>>

      <tuple|<tuple|ring of sets>|<pageref|auto-24>>

      <tuple|<tuple|algebra of sets>|<pageref|auto-25>>

      <tuple|<tuple|sigma algebra>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra>|<pageref|auto-27>>

      <tuple|<tuple|measurable space>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>>|<pageref|auto-29>>

      <tuple|<tuple|Borel algebra>|<pageref|auto-30>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-B\><around*|[|X,\<cal-T\>|]>>>|<pageref|auto-31>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-B\><around*|[|\<bbb-R\>|]>>>|<pageref|auto-33>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|<around*|[||]>>>>|<pageref|auto-34>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|<around*|[||[>>>>|<pageref|auto-35>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|<around*|]||]>>>>|<pageref|auto-36>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|<around*|]||[>>>>|<pageref|auto-37>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-I\>>>|<pageref|auto-38>>

      <tuple|<tuple|begin>|<pageref|auto-40>>

      <tuple|<tuple|end>|<pageref|auto-41>>

      <tuple|<tuple|<with|mode|<quote|math>|v<rsup|n><around*|(|I|)>>>|<pageref|auto-42>>

      <tuple|<tuple|Dyadic interval>|<pageref|auto-43>>

      <tuple|<tuple|measure space>|<pageref|auto-46>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>>|<pageref|auto-47>>

      <tuple|<tuple|finite measure>|<pageref|auto-48>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\>>-finite measure
      space>|<pageref|auto-49>>

      <tuple|<tuple|outer measure>|<pageref|auto-51>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\><rsup|\<ast\>>>>|<pageref|auto-52>>

      <tuple|<tuple|measurable sets>|<pageref|auto-53>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-M\><around*|[|\<mu\><rsup|\<ast\>>|]>>>|<pageref|auto-54>>

      <tuple|<tuple|Dynkim system>|<pageref|auto-57>>

      <tuple|<tuple|<with|mode|<quote|math>|\<frak-D\>>>|<pageref|auto-58>>

      <tuple|<tuple|proto-ring>|<pageref|auto-61>>

      <tuple|<tuple|proto-measure>|<pageref|auto-62>>

      <tuple|<tuple|semi-ring>|<pageref|auto-63>>

      <tuple|<tuple|pre-measure>|<pageref|auto-64>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|20<space|2spc>Measures
      and Integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      20.1<space|2spc>Extended real numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|20.1.1<space|2spc>Order relation in
      <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|20.1.2<space|2spc>Arithmetic operations on
      <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|20.1.3<space|2spc>Topology on
      <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|20.1.4<space|2spc>Sequences in
      <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|20.1.5<space|2spc>Series of non negative
      sequences <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      20.2<space|2spc>Preliminaries <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>

      20.3<space|2spc>Rings, algebras and
      <with|mode|<quote|math>|\<sigma\>>-algebras
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>

      <with|par-left|<quote|1tab>|20.3.1<space|2spc>Borel algebra on
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|20.3.2<space|2spc>Borel algebra on
      <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      20.4<space|2spc>Measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      <with|par-left|<quote|1tab>|20.4.1<space|2spc>Measure definition and
      properties <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|20.4.2<space|2spc>Carathéodory Theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|20.4.3<space|2spc>Uniqueness of measure
      extensions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|2tab>|20.4.3.1<space|2spc>Dynkin systems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|2tab>|20.4.3.2<space|2spc>Uniqueness theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|2tab>|20.4.3.3<space|2spc>Constructing outer
      measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|2tab>|20.4.3.4<space|2spc>Contents and
      pre-measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|2tab>|20.4.3.5<space|2spc>Using the Carathéodory
      theorem on <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>
    </associate>
  </collection>
</auxiliary>
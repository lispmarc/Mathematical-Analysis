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
  every real number and <math|-\<infty\>> which will be snaller then every
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
        following possible subcases:

        <\description>
          <item*|<math|\<infty\>\<in\>A>>Then
          <math|sup<around*|(|A|)>=\<infty\>>

          <item*|<math|\<infty\>\<nin\>A>>Then we have the following
          subcases:\ 

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
        following possible subcases:

        <\description>
          <item*|<math|-\<infty\>\<in\>A>>Then
          <math|inf<around*|(|A|)>=-\<infty\>>

          <item*|<math|-\<infty\>\<nin\>A>>Then we have the following
          subcases:\ 

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

    So in all possibke cases of <math|A> we have found that
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
          conditional complete>] <math|A<big|cap>\<bbb-R\>> has a infinnum
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

  The next theorem shows the neccesary and sufficient contraint for the
  supremum and infinum to be not finite.

  <\corollary>
    <label|extended infinite inf sup>Let <math|\<varnothing\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then\ 

    <\enumerate>
      <item><math|sup<around*|(|A|)>=\<infty\>> <math|\<Leftrightarrow\>>
      <math|\<infty\>\<in\>A<text| or >\<forall\>u\<in\>\<bbb-R\>> there
      exist a <math|x\<in\>A<big|cap>\<bbb-R\>> with <math|x\<nleqslant\>u>.

      <item><math|inf<around*|(|A|)>=-\<infty\>\<Leftrightarrow\>-\<infty\>\<in\>A<text|
      or >\<forall\>\<in\>\<bbb-R\>> there exist a
      <math|x\<in\>A<big|cap>\<bbb-R\>> with <math|l\<leqslant\>x>.

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
    The negate operator <math|-> is defined by\ 

    <\equation*>
      <around*|(|-|)>:<wide|\<bbb-R\>|\<wide-bar\>>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      where ><around*|(|-|)><around*|(|x|)>\<equallim\><rsub|<text|notation>>-x\<equallim\><rsub|defined><around*|(|-1|)>\<cdot\>x
    </equation*>

    So as <math|<around*|(|-1|)>\<in\><around*|]|0,\<infty\>|[>> we have that\ 

    <\equation*>
      -x=<choice|<tformat|<table|<row|<cell|\<infty\><text| if
      >x=-\<infty\>>>|<row|<cell|-\<infty\><text| if
      >x=\<infty\>>>|<row|<cell|<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>><text|
      if >x\<in\>\<bbb-R\>>>>>>
    </equation*>
  </definition>

  We have to be very carefull if we do sums on elements of
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
    <math|x,y> is finite [so that <math|x-y> is well definied] then
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
        <math|\<infty\>=x+z\<leqslant\>y+z\<in\>\<bbb-R\>> whuch as
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
        <math|\<infty\>=x+z\<less\>y+z\<in\>\<bbb-R\>> whuch as
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

      <item>If <math|x\<less\>y> and <math|z\<in\>\<bbb-R\>> then
      <math|x+z\<less\>y+z>
    </enumerate>

    <\note>
      The condition <math|z\<in\>\<bbb-R\>> in <math|<around*|(|2|)>> is
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

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>Thne
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

  <\corollary>
    <label|extended 0\<less\>x and 0\<less\>=y then 0\<less\>x+y>Let
    <math|<around*|(|x,y|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>>
    with <math|0\<less\>x\<wedge\>0\<leqslant\>y> then <math|0\<less\>x+y>
  </corollary>

  <\proof>
    As <math|0\<less\>x> we have by [theorem: <reference|extended x\<less\>=y
    then x+z\<less\>=y+z>] that <math|y\<equallim\><rsub|<text|[note:
    <reference|extended neutral element>]>>0+y\<less\>x+y> which as
    <math|0\<leqslant\>y> proves that <math|0\<less\>x+y>.
  </proof>

  <\theorem>
    <label|extended 0\<less\>=y and z=x+y then x\<less\>=z>Let
    <math|<around*|(|x,y|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|-\<infty\>,\<infty\>|)>,<around*|(|\<infty\>,-\<infty\>|)>|}>>,
    <math|z\<in\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|0\<leqslant\>y\<wedge\>z=x+y> then <math|x\<leqslant\>z>.
  </theorem>

  <\proof>
    As <math|0\<leqslant\>y> it follows from [theorem: \ <reference|extended
    x\<less\>=y then x+z\<less\>=y+z>] that
    <math|x\<equallim\><rsub|<text|[note: <reference|extended neutral
    element>]>>0+x\<leqslant\>y+x=z>.
  </proof>

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

  <\definition>
    The multiplication operator <math|\<cdot\>> is defined by\ 

    <\equation*>
      <around*|(|\<cdot\>|)>:<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>
      by <around*|(|\<cdot\>|)><around*|(|x,y|)>\<equallim\><rsub|notation>x\<cdot\>y
    </equation*>

    where\ 

    <\equation*>
      x\<cdot\>y=<choice|<tformat|<table|<row|<cell|0<text| if
      >x=0\<vee\>y=0>>|<row|<cell|>>|<row|<cell|\<infty\><text| if
      >x=-\<infty\>\<wedge\>y=-\<infty\>>>|<row|<cell|-\<infty\><text| if
      >x=-\<infty\>\<wedge\>y=\<infty\>>>|<row|<cell|\<infty\><text| if
      >x=-\<infty\>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>|<row|<cell|-\<infty\><text|
      if >x=-\<infty\>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>|<row|<cell|>>|<row|<cell|-\<infty\><text|
      if >x=\<infty\>\<wedge\>y=-\<infty\>>>|<row|<cell|\<infty\><text| if
      >x=\<infty\>\<wedge\>y=\<infty\>>>|<row|<cell|-\<infty\><text| if
      >x\<in\>\<infty\>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>|<row|<cell|\<infty\><text|
      if >x=\<infty\>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>|<row|<cell|>>|<row|<cell|\<infty\><text|
      if >x\<in\><around*|]|-\<infty\>,0|[>\<wedge\>y=-\<infty\>>>|<row|<cell|-\<infty\><text|
      if >x\<in\><around*|]|-\<infty\>,0|[>\<wedge\>y=\<infty\>>>|<row|<cell|x\<cdot\><rsub|\<bbb-R\>>y<text|
      if >x\<in\><around*|]|-\<infty\>,0|[>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>|<row|<cell|x\<cdot\><rsub|\<bbb-R\>>y<text|
      if >x\<in\><around*|]|-\<infty\>,0|[>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>|<row|<cell|>>|<row|<cell|-\<infty\><text|
      if >x\<in\><around*|]|0,\<infty\>|[>\<wedge\>y=-\<infty\>>>|<row|<cell|\<infty\><text|
      if >x\<in\><around*|]|0,\<infty\>|[>\<wedge\>y=\<infty\>>>|<row|<cell|x\<cdot\><rsub|\<bbb-R\>>y<text|
      if >x\<in\><around*|]|0,\<infty\>|[>\<wedge\>y\<in\><around*|]|-\<infty\>,0|[>>>|<row|<cell|x\<cdot\><rsub|\<bbb-R\>>y<text|
      if >x\<in\><around*|]|0,\<infty\>|[>\<wedge\>y\<in\><around*|]|0,\<infty\>|[>>>>>>
    </equation*>

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
      As usualy we note <math|<around*|(|\<cdot\>|)><rsup|-1><around*|(|x|)>>
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
      <math|x\<cdot\>y\<less\>0>.

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

      <item>

      <item>

      <item>
    </enumerate>
  </proof>

  <section|Measure spaces>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|19>
    <associate|page-first|1233>
    <associate|section-nr|1>
    <associate|subsection-nr|7>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|20|?>>
    <associate|auto-2|<tuple|20.1|?>>
    <associate|auto-3|<tuple|20.1.1|?>>
    <associate|auto-4|<tuple|20.1.2|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|+>>|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>,+|\<rangle\>>>|?>>
    <associate|auto-8|<tuple|20.2|?>>
    <associate|extended 0\<less\>=x and 0\<less\>=y then
    x\<less\>=x-y\<less\>=x|<tuple|20.18|?>>
    <associate|extended 0\<less\>=y and z=x+y then
    x\<less\>=z|<tuple|20.23|?>>
    <associate|extended 0\<less\>x and 0\<less\>=y then
    0\<less\>x+y|<tuple|20.22|?>>
    <associate|extended abelian semi group|<tuple|20.25|?>>
    <associate|extended fully order|<tuple|20.9|?>>
    <associate|extended infinite inf sup|<tuple|20.13|?>>
    <associate|extended neutral element|<tuple|20.16|?>>
    <associate|extended order relation|<tuple|20.4|?>>
    <associate|extended positive and non negative numbers|<tuple|20.24|?>>
    <associate|extended reals|<tuple|20.1|?>>
    <associate|extended reals finite real number|<tuple|20.3|?>>
    <associate|extended sum|<tuple|20.14|?>>
    <associate|extended sup and inf exist|<tuple|20.11|?>>
    <associate|extended sup inf of real numbers|<tuple|20.12|?>>
    <associate|extended x+z=y+z=\<gtr\>x-y|<tuple|20.19|?>>
    <associate|extended x.y|<tuple|20.31|?>>
    <associate|extended x\<less\>=y then x+z\<less\>=y+z|<tuple|20.20|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|+>>>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>>|<pageref|auto-6>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>,+|\<rangle\>>>>|<pageref|auto-7>>
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

      20.2<space|2spc>Measure spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>
    </associate>
  </collection>
</auxiliary>
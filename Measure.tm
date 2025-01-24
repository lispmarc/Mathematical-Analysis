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

  We have to be very carefull if we combine sums and inequalities on
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

  Altough the product <math|x\<cdot\>y> is defined for every
  <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
  <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<cdot\>|\<rangle\>>>
  is not a group, for examle <math|0> has still no inverse. However
  <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<cdot\>|\<rangle\>>>
  is a abelian semi group.

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
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> but again we must be carefull. For
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

  The absolute value of the extended real numbers has simular properties as
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
  vector space [rember <math|\<infty\>+<around*|(|-\<infty\>|)>> and
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
      is the gnerating basis for <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
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
      [in other words uf <math|U> is open then <math|x\<cdot\>U> is open]
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
  and infinum and define the limit of a sequence in terms of supremums and
  infinums.\ 

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
    we haveL

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
    <math|\<bbb-R\>> then we have in [defintion: <reference|limit limsup
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

  We have the following relation beteen <math|lim<rsub|\<bbb-R\>>> the limit
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

      As in all cases we have a contradictionthe assumption must be wrong so
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

  The idea of a limit in <math|\<bbb-R\>> is that the sequence approches its
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

        So as <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> was choosen
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
      is wel defined. Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
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
      is wel defined. Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
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
  semi-group so if we limit ourselves to non negative extended real numbers
  than we can use everything defined in [Section: <reference|section sums and
  products>]. If we limit ourselves to non negative extended real numbers
  then if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-R\><rsup|+><rsub|0>>
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
        <label|eq 20.32.156>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>As <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>we
      have by [theorem: <reference|order sup,inf and inclusion>] that\ 

      <\equation>
        <label|eq 20.32.156>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
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
      Combining this with [eq: <reference|eq 20.32.156>] proves that\ 

      <\equation*>
        <label|eq 20.32.156>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
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

  \;

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
    <associate|auto-10|<tuple|20.1.4|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>>|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>|?>>
    <associate|auto-13|<tuple|limit in <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>|?>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>|?>>
    <associate|auto-15|<tuple|20.1.5|?>>
    <associate|auto-16|<tuple|20.2|?>>
    <associate|auto-17|<tuple|20.2|?>>
    <associate|auto-2|<tuple|20.1|?>>
    <associate|auto-3|<tuple|20.1.1|?>>
    <associate|auto-4|<tuple|20.1.2|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|+>>|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>>|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsup|+><rsub|0>,+|\<rangle\>>>|?>>
    <associate|auto-8|<tuple|20.1.3|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>|?>>
    <associate|eq 20.1.155|<tuple|20.1|?>>
    <associate|eq 20.10.155|<tuple|20.10|?>>
    <associate|eq 20.11.155|<tuple|20.11|?>>
    <associate|eq 20.12.155|<tuple|20.12|?>>
    <associate|eq 20.13.155|<tuple|20.14|?>>
    <associate|eq 20.13.156|<tuple|20.13|?>>
    <associate|eq 20.14.155|<tuple|20.15|?>>
    <associate|eq 20.16.156|<tuple|20.16|?>>
    <associate|eq 20.17.156|<tuple|20.17|?>>
    <associate|eq 20.18.156|<tuple|20.18|?>>
    <associate|eq 20.19.156|<tuple|20.19|?>>
    <associate|eq 20.2.155|<tuple|20.2|?>>
    <associate|eq 20.20.156|<tuple|20.20|?>>
    <associate|eq 20.21.156|<tuple|20.21|?>>
    <associate|eq 20.22.156|<tuple|20.22|?>>
    <associate|eq 20.23.156|<tuple|20.23|?>>
    <associate|eq 20.24\<point\>156|<tuple|20.24|?>>
    <associate|eq 20.25.156|<tuple|20.25|?>>
    <associate|eq 20.26.156|<tuple|20.26|?>>
    <associate|eq 20.27.156|<tuple|20.27|?>>
    <associate|eq 20.28.156|<tuple|20.28|?>>
    <associate|eq 20.29.156|<tuple|20.29|?>>
    <associate|eq 20.3.155|<tuple|20.3|?>>
    <associate|eq 20.30.156|<tuple|20.30|?>>
    <associate|eq 20.31.156|<tuple|20.31|?>>
    <associate|eq 20.32.156|<tuple|<with|mode|<quote|math>|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>|?>>
    <associate|eq 20.34.156|<tuple|20.34|?>>
    <associate|eq 20.35.156|<tuple|20.35|?>>
    <associate|eq 20.36.156|<tuple|20.36|?>>
    <associate|eq 20.37.156|<tuple|20.37|?>>
    <associate|eq 20.4.155|<tuple|20.4|?>>
    <associate|eq 20.5.155|<tuple|20.5|?>>
    <associate|eq 20.6.155|<tuple|20.6|?>>
    <associate|eq 20.7.155|<tuple|20.7|?>>
    <associate|eq 20.8.155|<tuple|20.8|?>>
    <associate|eq 20.9.155|<tuple|20.9|?>>
    <associate|extended -(x.y)|<tuple|20.34|?>>
    <associate|extended 0\<less\>=x and 0\<less\>=y then
    x\<less\>=x-y\<less\>=x|<tuple|20.25|?>>
    <associate|extended 0\<less\>=y and z=x+y then
    x\<less\>=z|<tuple|20.30|?>>
    <associate|extended 0\<less\>x and 0\<less\>=y then
    0\<less\>x+y|<tuple|20.29|?>>
    <associate|extended abelian semi group|<tuple|20.24|?>>
    <associate|extended abelian semi group (1)|<tuple|20.33|?>>
    <associate|extended absolute value|<tuple|20.38|?>>
    <associate|extended basis for the topology|<tuple|20.42|?>>
    <associate|extended canonical topologies on the real and extended real
    space|<tuple|20.45|?>>
    <associate|extended canonical topology|<tuple|20.44|?>>
    <associate|extended closed sets|<tuple|20.46|?>>
    <associate|extended constant sequence|<tuple|20.54|?>>
    <associate|extended continuous functions|<tuple|20.48|?>>
    <associate|extended distributitivy|<tuple|20.37|?>>
    <associate|extended fully order|<tuple|20.9|?>>
    <associate|extended generating basis|<tuple|20.43|?>>
    <associate|extended inf sup negate|<tuple|20.60|?>>
    <associate|extended inf(sup) sup(inf)|<tuple|20.51|?>>
    <associate|extended infinite inf sup|<tuple|20.13|?>>
    <associate|extended lemma 20.62.155|<tuple|20.62|?>>
    <associate|extended lim inf \<less\>= lim sup|<tuple|20.64|?>>
    <associate|extended lim inf and lim sup|<tuple|20.52|?>>
    <associate|extended lim inf and lim sup and sum|<tuple|20.59|?>>
    <associate|extended lim inf lim sup and negation|<tuple|20.61|?>>
    <associate|extended lim inf lim sup in the set of real
    numbers|<tuple|20.65|?>>
    <associate|extended lim inf lim sup in the set of real numbers
    (1)|<tuple|20.71|?>>
    <associate|extended lim inf lim sup ineqality (1)|<tuple|20.56|?>>
    <associate|extended lim inf lim sup ineqality (2)|<tuple|20.57|?>>
    <associate|extended lim inf lim sup properties|<tuple|20.63|?>>
    <associate|extended lim inf x_i+n|<tuple|20.55|?>>
    <associate|extended limit|<tuple|20.66|?>>
    <associate|extended limit (-@@)^n|<tuple|20.69|?>>
    <associate|extended limit 1/(x_i)|<tuple|20.79|?>>
    <associate|extended limit 1/n|<tuple|20.72|?>>
    <associate|extended limit and index translation|<tuple|20.74|?>>
    <associate|extended limit constant sequence|<tuple|20.68|?>>
    <associate|extended limit equivalences|<tuple|20.73|?>>
    <associate|extended limit in the (extended) real numbers|<tuple|20.70|?>>
    <associate|extended limit increasing / decreasing sequence
    exist|<tuple|20.81|?>>
    <associate|extended limit properties|<tuple|20.75|?>>
    <associate|extended negate|<tuple|20.32|?>>
    <associate|extended negate inequality|<tuple|20.36|?>>
    <associate|extended neutral element|<tuple|20.16|?>>
    <associate|extended open set properties|<tuple|20.47|?>>
    <associate|extended open set scaling and translation|<tuple|20.49|?>>
    <associate|extended order relation|<tuple|20.4|?>>
    <associate|extended positive and non negative numbers|<tuple|20.23|?>>
    <associate|extended reals|<tuple|20.1|?>>
    <associate|extended reals finite real number|<tuple|20.3|?>>
    <associate|extended sum|<tuple|20.14|?>>
    <associate|extended sup and inf exist|<tuple|20.11|?>>
    <associate|extended sup inf of real numbers|<tuple|20.12|?>>
    <associate|extended sup of set and sum|<tuple|20.58|?>>
    <associate|extended topology od Hsusdorff|<tuple|20.50|?>>
    <associate|extended x+z=y+z=\<gtr\>x-y|<tuple|20.26|?>>
    <associate|extended x.y|<tuple|20.31|?>>
    <associate|extended x\<less\>=y then for 0\<less\>=s we have
    s.x\<less\>=s.y|<tuple|20.35|?>>
    <associate|extended x\<less\>=y then x+z\<less\>=y+z|<tuple|20.27|?>>
    <associate|lemma 20.78.156|<tuple|20.78|?>>
    <associate|lemma 20.80.156|<tuple|20.80|?>>
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

      <with|par-left|<quote|2tab>|20.1.5.1<space|2spc>Limits of
      increasing/decreasing sequences. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      20.2<space|2spc>Measure spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>
    </associate>
  </collection>
</auxiliary>
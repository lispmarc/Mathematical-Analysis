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

  <\theorem>
    <label|extended negate inequality>If <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have\ 

    <\enumerate>
      <item>If <math|-x=-y> then <math|x=y>

      <item>If <math|x\<leqslant\>y> then <math|-y\<leqslant\>-x>

      <item>If <math|x\<less\>y> then <math|-y\<less\>-x>
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>For <math|x> we have the following cases to consider

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>Then
        <math|-x=<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>x\<in\>\<bbb-R\>> so
        that <math|-y\<in\>\<bbb-R\>>. If <math|y=\<infty\>> or
        <math|y=-\<infty\>> then <math|-y\<nin\>\<bbb-R\>>, so we must have
        that <math|y\<in\>\<bbb-R\>>, but then we have that
        <math|-y=<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>y>. Hence we have
        <math|<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>x=<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>y\<Rightarrow\>x=y>.

        <item*|<math|x=\<infty\>>>then <math|-x=-\<infty\>> so that
        <math|-y=-\<infty\>>. If <math|y\<in\>\<bbb-R\>> then
        <math|-y\<in\>\<bbb-R\>> and if <math|y=-\<infty\>> then
        <math|-y=\<infty\>>, so we must have that <math|y=\<infty\>> from
        which it follows that <math|x=y>.

        <item*|<math|x=-\<infty\>>>then <math|-x=\<infty\>> so that
        <math|-y=\<infty\>>. If <math|y\<in\>\<bbb-R\>> then
        <math|-y\<in\>\<bbb-R\>> and if <math|y=\<infty\>> then
        <math|-y=-\<infty\>>, so we must have that <math|y=-\<infty\>> from
        which it follows that <math|x=y>.
      </description>

      <item>If <math|x\<leqslant\>y> then we have to consider the following
      possibilities for <math|x>

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then as <math|x\<leqslant\>y> we have
        to consider the following possibilities for <math|y>

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then using the properties of the
          reals we have <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

          <item*|<math|y=\<infty\>>>then <math|-y=-\<infty\>\<less\>-x\<in\>\<bbb-R\>\<Rightarrow\><around*|(|-y|)>\<leqslant\><around*|(|-x|)>>
        </description>

        <item*|<math|x=\<infty\>>>then as <math|x\<leqslant\>y> we have
        <math|y=\<infty\>> so that <math|-y=-\<infty\>\<leqslant\>-\<infty\>=-x>
        proving <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

        <item*|<math|x=-\<infty\>>>then as <math|x\<leqslant\>y> we have to
        consider the following possibilities

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then <math|-x=\<infty\>> so as
          <math|-y\<in\>\<bbb-R\>> <math|-y\<leqslant\>\<infty\>=-x> proving
          <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

          <item*|<math|y=\<infty\>>>then <math|-y=-\<infty\>\<less\>\<infty\>=-x>
          proving <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

          <item*|<math|y=-\<infty\>>>then <math|-y=\<infty\>=-x> proving
          <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>
        </description>
      </description>

      <item>If <math|x\<less\>y> then <math|x\<neq\>y> and
      <math|x\<leqslant\>y>, using (2) we have then that
      <math|<around*|(|-y|)>\<leqslant\>-x> and using (1) that
      <math|-x\<neq\>-y> proving that <math|-y\<less\>-x>.
    </enumerate>
  </proof>

  TODO prove the following corollary

  <\corollary>
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
  </corollary>

  <\proof>
    \;

    <\enumerate>
      <item>For <math|0\<leqslant\>\<lambda\>> we have the following cases to
      consider for <math|\<lambda\>>\ 

      <\description>
        <item*|<math|\<lambda\>=0>>then <math|\<lambda\>\<cdot\>x=0=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

        <item*|<math|\<lambda\>\<in\>\<bbb-R\><rsub|+>>>then for <math|x> we
        have either\ 

        <\description>
          <item*|<math|x=-\<infty\>>>then
          <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<lambda\>\<cdot\>y>

          <item*|<math|x\<in\>\<bbb-R\>>>then as <math|-\<infty\>\<less\>x>
          we must have that <math|-\<infty\>\<less\>y>, so for <math|y> to
          consider either

          <\description>
            <item*|<math|y=\<infty\>>>then
            <math|\<lambda\>\<cdot\>y=\<infty\>> so that
            <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y\<in\>\<bbb-R\>>>then as
            <math|x\<leqslant\><rsub|\<bbb-R\>>y> we have using
            \ <reference|properties of positive, negative real numbers> that
            <math|\<lambda\>\<cdot\>x\<leqslant\><rsub|\<bbb-R\>>\<lambda\>\<cdot\>y>
            proving <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.
          </description>

          <item*|<math|x=\<infty\>>>then <math|y\<equallim\><rsub|x\<leqslant\>y>\<infty\>>
          hence <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
        </description>

        <item*|<math|\<lambda\>=\<infty\>>>then for <math|x> we have either

        <\description>
          <item*|<math|x=-\<infty\>>>then
          <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<lambda\>\<cdot\>y>\ 

          <item*|<math|x\<in\>\<bbb-R\><rsub|->>>then
          <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<lambda\>\<cdot\>y>

          <item*|<math|x=0>>then as <math|0=x\<leqslant\>y> we have for
          <math|y> either

          <\description>
            <item*|<math|y=0>>then <math|\<lambda\>\<cdot\>x=0=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y\<in\>\<bbb-R\><rsub|+>>>then
            <math|\<lambda\>\<cdot\>x=0\<leqslant\>\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y=\<infty\>>>then
            <math|\<lambda\>\<cdot\>x=0\<leqslant\>\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
          </description>

          <item*|<math|x\<in\>\<bbb-R\><rsub|+>>> then as
          <math|0\<less\>x\<leqslant\>y> we have either\ 

          <\description>
            <item*|<math|y\<in\>\<bbb-R\><rsub|+>>>then
            <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y=\<infty\>>>then
            <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
          </description>

          <item*|<math|x=\<infty\>>>then <math|y=\<infty\>> and
          <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
        </description>
      </description>

      <item>As <math|\<lambda\>\<leqslant\>0> we have by
      <reference|x\<less\>=y=\<gtr\>-y\<less\>=-x> that
      <math|0\<leqslant\><around*|(|-\<lambda\>|)>> then by (1)
      <math|<around*|(|-\<lambda\>|)>\<cdot\>x\<leqslant\><around*|(|-\<lambda\>|)>\<cdot\>y>,<space|1em>Using
      <reference|x\<less\>=y=\<gtr\>-y\<less\>=-x> we have that
      <math|<around*|(|-<around*|(|<around*|(|-\<lambda\>|)>\<cdot\>y|)>|)>\<leqslant\><around*|(|-<around*|(|<around*|(|-\<lambda\>|)>\<cdot\>x|)>|)>>.
      As

      <\equation*>
        <around*|(|-<around*|(|<around*|(|-\<lambda\>|)>\<cdot\>y|)>|)>\<equallim\><rsub|def><around*|(|<around*|(|-1|)>\<cdot\><around*|(|<around*|(|<around*|(|-1|)>\<cdot\>\<lambda\>|)>\<cdot\>y|)>|)>\<equallim\><rsub|<text|<reference|associativity
        of the product of extnded reals>>><around*|(|<around*|(|-1|)>\<cdot\><around*|(|-1|)>|)><around*|(|\<lambda\>\<cdot\>y|)>=\<lambda\>\<cdot\>y
      </equation*>

      and

      <\equation*>
        <around*|(|-<around*|(|<around*|(|-\<lambda\>|)>\<cdot\>x|)>|)>\<equallim\><rsub|def><around*|(|<around*|(|-1|)>\<cdot\><around*|(|<around*|(|<around*|(|-1|)>\<cdot\>\<lambda\>|)>\<cdot\>x|)>|)>\<equallim\><rsub|<text|<reference|associativity
        of the product of extnded reals>>><around*|(|<around*|(|-1|)>\<cdot\><around*|(|-1|)>|)><around*|(|\<lambda\>\<cdot\>x|)>=\<lambda\>\<cdot\>x
      </equation*>

      it follows that

      <\equation*>
        \<lambda\>\<cdot\>y\<less\>\<lambda\>\<cdot\>x
      </equation*>
    </enumerate>
  </proof>

  \;

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

        Assume that <math|<label|eq 20.9.155>inf<around*|(|S|)>+y\<less\>inf<around*|(|<around*|{|s+y\|s\<in\>S|}>|)>>
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
    <label|extended lim inf lim sup negate>Let
    <math|\<varnothing\>\<neq\>S\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
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
      then by\ 

      <item>

      <item>

      <item>
    </enumerate>

    \;
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
    <associate|auto-10|<tuple|20.1.4|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>>|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>|?>>
    <associate|auto-13|<tuple|20.2|?>>
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
    <associate|eq 20.2.155|<tuple|20.2|?>>
    <associate|eq 20.3.155|<tuple|20.3|?>>
    <associate|eq 20.4.155|<tuple|20.4|?>>
    <associate|eq 20.5.155|<tuple|20.5|?>>
    <associate|eq 20.6.155|<tuple|20.6|?>>
    <associate|eq 20.7.155|<tuple|20.7|?>>
    <associate|eq 20.8.155|<tuple|20.8|?>>
    <associate|eq 20.9.155|<tuple|20.9|?>>
    <associate|extended -(x.y)|<tuple|20.36|?>>
    <associate|extended 0\<less\>=x and 0\<less\>=y then
    x\<less\>=x-y\<less\>=x|<tuple|20.25|?>>
    <associate|extended 0\<less\>=y and z=x+y then
    x\<less\>=z|<tuple|20.30|?>>
    <associate|extended 0\<less\>x and 0\<less\>=y then
    0\<less\>x+y|<tuple|20.29|?>>
    <associate|extended abelian semi group|<tuple|20.24|?>>
    <associate|extended abelian semi group (1)|<tuple|20.35|?>>
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
    <associate|extended inf(sup) sup(inf)|<tuple|20.51|?>>
    <associate|extended infinite inf sup|<tuple|20.13|?>>
    <associate|extended lim inf and lim sup|<tuple|20.52|?>>
    <associate|extended lim inf and lim sup and sum|<tuple|20.59|?>>
    <associate|extended lim inf lim sup ineqality (1)|<tuple|20.56|?>>
    <associate|extended lim inf lim sup ineqality (2)|<tuple|20.57|?>>
    <associate|extended lim inf lim sup negate|<tuple|20.60|?>>
    <associate|extended lim inf x_i+n|<tuple|20.55|?>>
    <associate|extended negate|<tuple|20.32|?>>
    <associate|extended negate inequality|<tuple|20.33|?>>
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
    <associate|extended sup x_i+x|<tuple|20.56|?>>
    <associate|extended topology od Hsusdorff|<tuple|20.50|?>>
    <associate|extended x+z=y+z=\<gtr\>x-y|<tuple|20.26|?>>
    <associate|extended x.y|<tuple|20.31|?>>
    <associate|extended x\<less\>=y then for 0\<less\>=s we have
    s.x\<less\>=s.y|<tuple|20.34|?>>
    <associate|extended x\<less\>=y then x+z\<less\>=y+z|<tuple|20.27|?>>
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

      20.2<space|2spc>Measure spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>
    </associate>
  </collection>
</auxiliary>
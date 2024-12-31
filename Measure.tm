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
    Further we have:\ 

    <\enumerate>
      <item><math|sup<around*|(|<around*|{|-\<infty\>|}>|)>=-\<infty\>>

      <item>If <math|\<infty\>\<in\>A> then
      <math|sup<around*|(|A|)>=\<infty\>>

      <item>If <math|\<infty\>\<nin\>A> then we have:

      <\enumerate>
        <item>If <math|><math|\<exists\>u\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A
        we have x\<leqslant\>u> then <math|sup<around*|(|A|)>=sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>>

        <item>If <math|\<exists\>u\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A
        we have x\<leqslant\>u> then <math|sup<around*|(|A|)>=\<infty\>>
      </enumerate>
    </enumerate>

    where <math|sup<around*|(|A|)>> is the supremum of <math|A> using
    <math|\<leqslant\>> and <math|sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>>
    is the supremum of <math|A<big|cap>\<bbb-R\>> using
    <math|\<leqslant\><rsub|\<bbb-R\>>>.
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
          <text|If <math|\<infty\>\<in\>A> [so that
          <math|A\<neq\><around*|{|-\<infty\>|}>>] then
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
            contradicting the fact that <math|A<big|cap>\<bbb-R\>=\<varnothing\>>.
            So this case will never occur.
          </description>

          As in all valid cases <math|S\<leqslant\>U> it follows that
          <math|S> is the lowest upper bound of <math|A> or <math|S> is the
          supremum of <math|A>. So\ 

          <\equation*>
            sup<around*|(|A|)>=<text|sup><rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>
          </equation*>

          <item*|<math|\<forall\>u\<in\>\<bbb-R\>\<vdash\>\<exists\>x\<in\>A<text|
          with >x\<nleqslant\>u>>
        </description>
      </description>
    </description>

    \;
  </proof>

  \;

  <section|Measure spaces>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|19>
    <associate|page-first|1229>
    <associate|section-nr|1>
    <associate|subsection-nr|7>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|20|?>>
    <associate|auto-2|<tuple|20.1|?>>
    <associate|auto-3|<tuple|20.2|?>>
    <associate|extended fully order|<tuple|20.9|?>>
    <associate|extended order relation|<tuple|20.4|?>>
    <associate|extended reals|<tuple|20.1|?>>
    <associate|extended reals are fully ordered|<tuple|20.10|?>>
    <associate|extended reals finite real number|<tuple|20.3|?>>
    <associate|extended reals order definition|<tuple|20.8|?>>
    <associate|extended sup and inf exist|<tuple|20.11|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|20<space|2spc>Measures
      and Integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      20.1<space|2spc>Extended real numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      20.2<space|2spc>Measure spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>
    </associate>
  </collection>
</auxiliary>
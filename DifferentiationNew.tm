<TeXmacs|2.1.4>

<project|DifferentiationNewMain.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Differentiation in Normed Spaces>

  <\note>
    <label|normed space are assumed to be non trivial>We assume in this
    Chapter that all the normed spaces are non trivial, in other words we
    assume that every normed space contains at least one non zero element.\ 
  </note>

  <\note>
    Unless stated otherwise all the normed spaces in this chapter are assumed
    to be vector space over the same field <math|\<bbb-K\>>. More specific if
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are either both \ vector spaces over <math|\<bbb-R\>> or both vector
    spaces over <math|\<bbb-C\>>.
  </note>

  <\note>
    In this book we deal with differentiation of functions whose domains are
    not necessary open, this in contrast with most texts who assume that the
    domain is always open. Dropping the requirement that the domain is open
    will introduce extra complications releated to the uniqueness of the
    differentials and derivatives that are resolved using limit points and
    tangent cones. In some cases the theorems, propositions or lemmas are not
    valid for general domains and we still require that the domain is open or
    we have to work with interior points of the domain. It is the humble
    opinion of the author that the extrace complications so introduces are
    surpassed by the benefits of having more generality.\ 
  </note>

  <section|Fréchet differentiability>

  <subsection|The classical derivative>

  Let <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
  be a normed space, <math|A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> a
  function, <math|x\<in\>A> then <math|f> has a derivative
  <math|f<rprime|'><rsub|x>> at <math|x> if\ 

  <\equation*>
    <below|lim|h\<rightarrow\>0><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h><text|>
  </equation*>

  and the derivative <math|f<rprime|'><rsub|x>> is then equal to this limit\ 

  <\equation*>
    f<rprime|'><rsub|x>=<below|lim|h\<rightarrow\>0><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h><text|>
  </equation*>

  This definition that you find in many basic calculus books is very
  imprecise, for example in taking the limit, how can we ensure that
  <math|x+h> is in the domain, what if the domain is a singleton, how can we
  avoid dividing by <math|0>. For this we have to do some extra work.

  <\definition>
    <label|diff Ux><index|<math|U<rsub|x>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|A\<subseteq\>X> and <math|x\<in\>A> then\ 

    <\equation*>
      A<rsub|x>=<around*|{|h\<in\>X\|x+h\<in\>A|}>
    </equation*>

    <\note>
      Note as <math|x+0=x\<in\>A> we have\ 

      <\equation*>
        0\<in\>A<rsub|x>
      </equation*>
    </note>
  </definition>

  The following is a equivalent definition for <math|A<rsub|x>>.

  <\theorem>
    <label|diff Ux=-x+U=U-x>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|A\<subseteq\>X> and <math|x\<in\>A> then\ 

    <\equation*>
      A<rsub|x>=-x+A=A-x
    </equation*>

    where

    <\equation*>
      -x+A=<around*|{|-x+a\|a\<in\>A|}><text| and
      >A-a=<around*|{|a-x\|a\<in\>A|}>
    </equation*>
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|h\<in\>A<rsub|x>>|<cell|\<Leftrightarrow\>>|<cell|x+h\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>u\<in\>A<text|
      with >x+h=u>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>u\<in\>A<text|
      with >h=<around*|(|-x|)>+u>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\><around*|(|-x|)>+A>>|<row|<cell|h\<in\><around*|(|-x|)>+A>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>u\<in\>A<text|
      with >h=<around*|(|-x|)>+u>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>u\<in\>A<text|
      with >h=u+<around*|(|-x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\>A+<around*|(|-x|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|diff Bx(x,d)>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|x\<in\>X> and
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> then
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>=B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)><rsub|x>>.
  </theorem>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)><rsub|x>>|<cell|\<Leftrightarrow\>>|<cell|x+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\<wedge\><around*|\<\|\|\>|<around*|(|x+h|)>-x|\<\|\|\>>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\<wedge\><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>>>>>
    </eqnarray*>
  </proof>

  Next we introduce the concept of a limit where we restrict the path to the
  limit point.

  <\definition>
    <label|convergence of a function to a point><index|convergence of a
    function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|B\<subseteq\>A>,
    <math|x\<in\>X> and <math|f:A\<rightarrow\>Y> a function then we say that
    <with|font-series|bold|<math|f> converges to <math|y> if it approaches x
    by B> if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
    exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>z\<in\>B<text| with >0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>y>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
  </definition>

  <\note>
    As <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>> we have that
    <math|x\<neq\>z>, so in the above definition we never evaluate <math|f>
    at <math|x>, hence <math|x> must not be part of the domain <math|f>.
    Further <math|z\<in\>B\<subseteq\>A> ensures that
    <math|<around*|\<\|\|\>|f<around*|(|z|)>-y|\<\|\|\>><rsub|Y>> is well
    defined.
  </note>

  If we want in the above that <math|y> is unique we need a extra condition
  on <math|x>.\ 

  <\lemma>
    <label|lemma 16.7.1>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>\<bbb-R\>>, <math|B\<subseteq\>A>,
    <math|x\<in\>X> a limit point of <math|B> [see definition:
    <reference|topology limit point>] and <math|f:A\<rightarrow\>Y> a
    function such that <math|f> converges to <math|y<rsub|1>> if it
    approaches x by <math|B> and <math|f> converges to <math|y<rsub|2>> if it
    approaches x by <math|B> then we have <math|y<rsub|1>=y<rsub|2>>.
  </lemma>

  <\proof>
    Assume that <math|y<rsub|1>\<neq\>y<rsub|2>> then
    <math|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<in\>\<bbb-R\><rsup|+>>.
    As <math|f> converges to <math|y<rsub|1>,y<rsub|2>> restricted by
    <math|B> there exist <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
    such that\ 

    <\equation>
      <label|eq 16.1.1>\<forall\>z\<in\>B<text| with
      >0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
      we have ><around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|1>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>
    </equation>

    <\equation>
      <label|eq 16.2.1>\<forall\>z\<in\>B<text| with
      >0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2><text|
      we have ><around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>
    </equation>

    Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
    then as <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    a open set and <math|x> is a limit point of <math|B> there exist by
    [definition: <reference|topology limit point>] a
    <math|y\<in\><around*|(|B\\<around*|{|x|}>|)><big|cap>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    so that <math|y\<in\>B\<wedge\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|1>,\<delta\><rsub|2>>.
    Hence we have by [eqs: <reference|eq 16.1.1>,<reference|eq 16.2.1>] that\ 

    <\equation>
      <label|eq 16.3.1><around*|\<\|\|\>|f<around*|(|y|)>-y<rsub|1>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|y|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>+<frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>\<less\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>
    </equation>

    Now\ 

    <\equation*>
      <around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y<rsub|1>-f<around*|(|y|)>-<around*|(|y<rsub|2>-f<around*|(|y|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|f<around*|(|y|)>-y<rsub|1>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|y|)>-y<rsub|2>|\<\|\|\>><rsub|Y><below|\<less\>|<text|[eq:
      <reference|eq 16.3.1>]>><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>
    </equation*>

    leading to the contradiction <math|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>>.
    Hence the assumption is wrong and we must have
    <math|y<rsub|1>=y<rsub|2>>.
  </proof>

  We are now ready to define a limit of a function at a point\ 

  <\definition>
    <label|diff limit of a function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>\<bbb-R\>>, <math|B\<subseteq\>A>,
    <math|x\<in\>X> a limit point of <math|B> and <math|f:A\<rightarrow\>Y> a
    function that <math|f> converges to <math|y> if it approaches x then the
    unique value <math|y> [see lemma: <reference|lemma 16.7.1>] is noted as
    <math|<below|lim|<below|z\<rightarrow\>x|B>>f<around*|(|z|)>>. The
    following convention will be used from now on

    <\equation*>
      y=<below|lim|<below|z\<rightarrow\>x|B>>f<around*|(|z|)><text| exist >
    </equation*>

    is equivalent with <math|f> converges to <math|y> if it approaches x or
    equivalently

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>z\<in\>B<text| with >0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
      we have ><around*|\<\|\|\>|f<around*|(|z|)>-y|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>
    </equation*>
  </definition>

  The condition that <math|x> is a limit point of <math|B> is essential in
  the above definition to ensure uniqueness of <math|y> so that we can write
  this as <math|<below|lim|<below|z\<rightarrow\>x|B>>f<around*|(|z|)>>. So
  it is useful to have some indication where the limit points of a set are.

  <\theorem>
    <label|topology every element of a open set in a normed space is a limit
    point>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
    a open set in <math|X> then every element of <math|U> is a limit point of
    <math|U>
  </theorem>

  <\proof>
    Let <math|x\<in\>U> then by [theorem: <reference|normed space and open
    sets>] there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such
    that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>U>.
    Let <math|V> be a open set such that <math|x\<in\>V> then by [theorem:
    <reference|normed space and open sets>] again there exist a
    <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|2>|)>\<subseteq\>V>.
    As <math|X> is non trivial [see note <reference|normed space are assumed
    to be non trivial>] there exist a <math|x<rsub|0>\<in\>X<text| with
    >x<rsub|0>\<neq\>0>. Take <math|\<delta\>=min<around*|(|<frac|\<delta\><rsub|1>|2>,<frac|\<delta\><rsub|2>|2>|)>\<in\>\<bbb-R\><rsup|+>>
    and <math|y=x+<frac|\<delta\>|<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>>\<cdot\>x<rsub|0>>
    then <math|y\<neq\>x>\ 

    <\equation>
      <label|eq 16.4.1><around*|\<\|\|\>|y-x|\<\|\|\>>=<around*|\<\|\|\>|<frac|\<delta\>|<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>>\<cdot\>x<rsub|0>|\<\|\|\>>=<around*|\||<frac|\<delta\>|<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>>|\|>\<cdot\><around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>=<frac|\<delta\>|<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>=\<delta\>
    </equation>

    As <math|\<delta\>\<neq\>0> we have by the above that <math|x\<neq\>y>
    and <math|<around*|\<\|\|\>|y-x|\<\|\|\>>=\<delta\>\<leqslant\><frac|\<delta\><rsub|1>|2>,<frac|\<delta\><rsub|2>|2>\<leqslant\>\<delta\><rsub|1>,\<delta\><rsub|2>>
    so that <math|y\<in\>U\<wedge\>y\<in\>V>. Hence
    <math|y\<in\><around*|(|U\\<around*|{|x|}>|)><big|cap>V\<Rightarrow\><around*|(|U\\<around*|{|x|}>|)><big|cap>V\<neq\>\<varnothing\>>
    which by [definition: <reference|topology limit point>] proves that
    <math|x> is a limit point of <math|U>.
  </proof>

  <\corollary>
    <label|topology interior point is a limit point in a normed space>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space <math|A\<subseteq\>X> then if
    <math|x\<in\>A<rsup|\<circ\>>> [see definition: <reference|topology
    interior of a set>] then <math|x> is a limit point of <math|A>.
  </corollary>

  <\proof>
    As <math|x\<in\>A<rsup|0>> a open set, it follows from the previous
    theorem [theorem: <reference|topology every element of a open set in a
    normed space is a limit point>] that <math|x> is a limit point of
    <math|A<rsup|\<circ\>>>. As <math|A<rsup|0><below|\<subseteq\>|<text|[definition:
    <reference|topology interior of a set>]>>A> it follows from [theorem:
    <reference|topology limit points and subsets>] that <math|x> is a limit
    point of <math|x>.
  </proof>

  <\corollary>
    <label|topology every element of a open or closed ball is a limit
    point>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> then
    <math|\<forall\>x\<in\>X> we have

    <\enumerate>
      <item>Every element of <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
      is a limit point of <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>

      <item>Every element of <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>
      is a limit point of <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
      is open this follows trivially from [theorem: <reference|topology every
      element of a open set in a normed space is a limit point>].

      <item>Let <math|y\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>
      then we have <math|<around*|\<\|\|\>|y-x|\<\|\|\>>\<leqslant\>\<delta\>>,
      hence we have two cases to consider:\ 

      <\description>
        <item*|<math|<around*|\<\|\|\>|y-x|\<\|\|\>>\<less\>\<delta\>>>Then
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
        so that by (1) <math|y> is a limit point of
        <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>.
        As <math|<rigid|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>>
        it follows from [theorem: <reference|topology limit points and
        subsets>] that <math|x> is a limit point of
        <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>.\ 

        <item*|<math|<around*|\<\|\|\>|y-x|\<\|\|\>>=\<delta\>>>Let <math|U>
        be a open set such that <math|y\<in\>U> then by [theorem:
        <reference|normed space and open sets>] there exist a
        <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y,\<delta\><rsub|1>|)>\<subseteq\>U>.
        As <math|<around*|\<\|\|\>|y-x|\<\|\|\>>=\<delta\>\<gtr\>0> we can
        define <math|\<lambda\>=min<around*|(|<frac|1|2>,<frac|\<delta\><rsub|1>|2\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>>|)>>
        and <math|z=y+\<lambda\>\<cdot\><around*|(|x-y|)>>. Then we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|z-x|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|y+\<lambda\>\<cdot\><around*|(|x-y|)>-x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y-x-\<lambda\>\<cdot\><around*|(|y-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-\<lambda\>|)>\<cdot\><around*|(|y-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||1-\<lambda\>|\|>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-\<lambda\>|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-\<lambda\>|)>\<cdot\>\<delta\>>>>>
        </eqnarray*>

        As <math|\<lambda\>\<leqslant\><frac|1|2>> we have
        <math|<around*|(|1-\<lambda\>|)>\<in\>\<bbb-R\><rsup|+>> so that
        <math|<around*|\<\|\|\>|z-x|\<\|\|\>>\<neq\>0> hence
        <math|z\<neq\>x>. Further we have
        <math|<around*|\<\|\|\>|z-x|\<\|\|\>>=<around*|(|1-\<lambda\>|)>\<cdot\>\<delta\>\<leqslant\><around*|(|1-<frac|1|2>|)>\<cdot\>\<delta\>=<frac|\<delta\>|2>\<less\>\<delta\>>
        proving that <math|z\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>.
        To summarize we have\ 

        <\equation>
          <label|eq 16.5.1>z\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>\\<around*|{|x|}>
        </equation>

        Further we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|z-y|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|y+\<lambda\>\<cdot\><around*|(|x-y|)>-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<lambda\>\<cdot\><around*|(|x-y|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<lambda\>|\|>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<delta\><rsub|1>|2\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<delta\><rsub|1>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<lambda\><rsub|1>>>>>
        </eqnarray*>

        so that\ 

        <\equation*>
          z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y,\<delta\><rsub|1>|)>\<subseteq\>U
        </equation*>

        which combined with [eq: <reference|eq 16.5.1>] proves that\ 

        <\equation*>
          <around*|(|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>\\<around*|{|x|}>|)><big|cap>U\<neq\>\<varnothing\>
        </equation*>

        which proves that <math|x> is a limit point of
        <math|><math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|topology every element of a generalized interval is a limit
    point>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be
    the normed space of the real numbers with the absolute value norm then we
    have\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\><around*|[|a,\<infty\>|[>> where
      <math|a\<in\>\<bbb-R\>> <math|x> is a limit point of
      <math|<around*|[|a,\<infty\>|[>>.

      <item><math|\<forall\>x\<in\><around*|]|a,\<infty\>|[>> where
      <math|a\<in\>\<bbb-R\>> <math|x> is a limit point of
      <math|<around*|]|a,\<infty\>|[>>.

      <item><math|\<forall\>x\<in\><around*|]|-\<infty\>,a|]> where>
      <math|a\<in\>\<bbb-R\>> <math|x> is a limit point of
      <math|<around*|]|-\<infty\>,a|]>>.

      <item><math|\<forall\>x\<in\><around*|]|-\<infty\>,a|[> where>
      <math|a\<in\>\<bbb-R\>> <math|x> is a limit point of
      <math|<around*|]|-\<infty\>,a|[>>.

      <item><math|\<forall\>x\<in\><around*|[|a,b|]>> where
      <math|a,b\<in\>\<bbb-R\>> where <math|a\<less\>b> <math|x> is a limit
      point of <math|<around*|[|a,b|]>>.

      <item><math|\<forall\>x\<in\><around*|[|a,b|[>> where
      <math|a,b\<in\>\<bbb-R\>> where <math|a\<less\>b> <math|x> is a limit
      point of <math|<around*|[|a,b|[>>.

      <item><math|\<forall\>x\<in\><around*|]|a,b|]>> where
      <math|a,b\<in\>\<bbb-R\>> where <math|a\<less\>b> <math|x> is a limit
      point of <math|<around*|]|a,b|]>>.

      <item><math|\<forall\>x\<in\><around*|]|a,b|[>> where
      <math|a,b\<in\>\<bbb-R\>> where <math|a\<less\>b> <math|x> is a limit
      point of <math|<around*|]|a,b|[>>.
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\><around*|[|a,\<infty\>|[>> then
      <math|a\<leqslant\>x>. If <math|U> is a open set with <math|x\<in\>U>
      then there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>, then
      <math|x-\<delta\>\<less\>x\<less\>x+<frac|\<delta\>|2>\<less\>x+\<delta\>>
      and <math|a\<leqslant\>x\<less\>x+<frac|\<delta\>|2>> from which it
      follows, as <math|x+<frac|\<delta\>|2>\<neq\>x>, that
      <math|x+<frac|\<delta\>|2>\<in\><around*|(|<around*|[|a,\<infty\>|[>\\<around*|{|x|}>|)><big|cap><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\><around*|(|<around*|[|a,\<infty\>|[>\\<around*|{|x|}>|)><big|cap>U>.
      Hence <math|<around*|(|<around*|[|a,\<infty\>|[>\\<around*|{|x|}>|)><big|cap>U\<neq\>0>
      which proves that <math|x> is a limit point of
      <math|<around*|[|a,\<infty\>|[>>.

      <item>Let <math|x\<in\><around*|]|a,\<infty\>|[>>, using [theorem:
      <reference|normed generalized intervals that are open>]
      <math|<around*|]|a,\<infty\>|[>> is a open set so that by [theorem:
      <reference|topology every element of a open set in a normed space is a
      limit point>] <math|x> is a limit point of
      <math|<around*|]|a,\<infty\>|[>>.

      <item>Let <math|x\<in\><around*|]|-\<infty\>,a|]>> then
      <math|x\<leqslant\>a>. If <math|U> is a open set with <math|x\<in\>U>
      then there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>>, then
      <math|x-\<delta\>\<less\>x-<frac|\<delta\>|2>\<less\>x\<less\>x+\<delta\>>
      and <math|x-<frac|\<delta\>|2>\<less\>x\<leqslant\>a> form which it
      follows, as <math|x-<frac|\<delta\>|2>\<neq\>x>, that
      <math|x-<frac|\<delta\>|2>\<in\><around*|(|<around*|]|-\<infty\>,a|]>\\<around*|{|x|}>|)><big|cap><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\><around*|(|<around*|]|-\<infty\>,a|]>\\<around*|{|x|}>|)><big|cap>U>.
      Hence <math|<around*|(|<around*|]|-\<infty\>,a|]>\\<around*|{|x|}>|)><big|cap>U\<neq\>\<varnothing\>>
      which proves that <math|x> is a limit point of
      <math|<around*|]|-\<infty\>,a|]>>.

      <item>Let <math|x\<in\><around*|]|-\<infty\>,a|[>>, using [theorem:
      <reference|normed generalized intervals that are open>]
      <math|<around*|]|-\<infty\>,a|[>> is a open set so that by [theorem:
      <reference|topology every element of a open set in a normed space is a
      limit point>] <math|x> is a limit point of
      <math|<around*|]|-\<infty\>,a|[>>.

      <item>Let <math|x\<in\><around*|[|a,b|]>=<around*|[|<around*|(|a+<frac|b-a|2>|)>-<frac|b-a|2>,<around*|(|a+<frac|b-a|2>|)>+<frac|b-a|2>|]>=B<rsub|<around*|\|||\|>><around*|(|a+<frac|b-a|2>,<frac|b-a|2>|)>>
      so that by [theorem: <reference|topology every element of a open or
      closed ball is a limit point>] <math|x> is a limit point of
      <math|<around*|[|a,b|]>>.

      <item>Let <math|x\<in\><around*|[|a,b|[>> then
      <math|a\<leqslant\>x\<less\>b>. If <math|U> is open with
      <math|x\<in\>U> then there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|x\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>.
      Take <math|\<varepsilon\>=min<around*|(|<frac|<around*|(|b-x|)>|2>,<frac|\<delta\>|2>|)>\<in\>\<bbb-R\><rsup|+>>
      then we have <math|x\<neq\>x+\<varepsilon\>>,
      <math|<rigid|a\<leqslant\>x\<less\>x+\<varepsilon\>\<leqslant\>x+<frac|b-x|2>\<less\>x+<around*|(|b-x|)>=b>>
      and <math|x-\<delta\>\<less\>x\<less\>x+\<varepsilon\>\<less\>x+<frac|\<delta\>|2>\<less\>x+\<delta\>>
      so that <math|<rigid|x+\<varepsilon\>\<in\><around*|(|<around*|[|a,b|[>\\<around*|{|x|}>|)><big|cap><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\><around*|(|<around*|[|a,b|[>\\<around*|{|x|}>|)><big|cap>U>>.
      Hence <math|<around*|(|<around*|[|a,b|[>\\<around*|{|x|}>|)><big|cap>U\<neq\>\<varnothing\>>
      which proves that <math|x> is a limit point of
      <math|<around*|[|a,b|[>>.

      <item>Let <math|x\<in\><around*|]|a,b|]>> then
      <math|a\<less\>x\<leqslant\>b>. If <math|U> is open with
      <math|x\<in\>U> then there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|x\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>.
      Take <math|\<varepsilon\>=min<around*|(|<frac|<around*|(|x-a|)>|2>,<frac|\<delta\>|2>|)>\<in\>\<bbb-R\><rsup|+>>
      then we have <math|<rigid|x\<neq\>x-\<varepsilon\>>>,
      <math|<rigid|a=x-<around*|(|x-a|)>\<less\>x-<frac|x-a|2>\<leqslant\>x-\<varepsilon\>\<less\>x\<leqslant\>b>>
      and <math|x-\<delta\>\<less\>x-<frac|\<delta\>|2>\<less\>x\<less\>x+\<delta\>>
      so that <math|<rigid|x-\<varepsilon\>\<in\><around*|(|<around*|]|a,b|]>\\<around*|{|x|}>|)><big|cap><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\><around*|(|<around*|]|a,b|]>\\<around*|{|x|}>|)><big|cap>U>>.
      Hence <math|<around*|(|<around*|]|a,b|]>\\<around*|{|x|}>|)><big|cap>U\<neq\>\<varnothing\>>
      which proves that <math|x> is a limit point of
      <math|<around*|]|a,b|]>>.

      <item>Let <math|x\<in\><around*|]|a,b|[>>, using [theorem:
      <reference|normed generalized intervals that are open>]
      <math|<around*|]|a,b|[>> is a open set so that by [theorem:
      <reference|topology every element of a open set in a normed space is a
      limit point>] <math|x> is a limit point of <math|<around*|]|a,b|[>>.
    </enumerate>
  </proof>

  One more step before can define the derivative of a function we must ensure
  that <math|f<around*|(|x+h|)>> will be well defined and for this we need
  the following theorem.

  <\lemma>
    <label|lemma 16.12.1>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|A\<subseteq\>X> then if <math|x\<in\>A> is a
    limit point of <math|A> then <math|0\<in\>A<rsub|x>> is a limit point of
    <math|A<rsub|x>>.
  </lemma>

  <\proof>
    Let <math|U> be a open set such that <math|0\<in\>U>. As <math|0\<in\>U>
    we have <math|x=x+0\<in\>x+U>, by [theorem: <reference|normed space set
    operations>] <math|x+U> is open set. As <math|x> is a limit point of
    <math|A> we have that <math|<around*|(|A\\<around*|{|x|}>|)><big|cap><around*|(|x+U|)>\<neq\>\<varnothing\>>,
    hence there exist a <math|z\<in\><around*|(|A\\<around*|{|x|}>|)><big|cap><around*|(|x+U|)>>.
    Then <math|z-x\<in\>A<rsub|x>> [because
    <math|<around*|(|z-x|)>+x=z\<in\>A>], <math|z-x\<neq\>0> [because
    <math|z\<neq\>x>] and <math|z-x\<in\>U> [because
    <math|\<exists\>u\<in\>U<text| such that
    <math|z=x+u\<Rightarrow\>z-x\<in\>U>]>>. In other words
    <math|z-x\<in\><around*|(|A<rsub|x>\\<around*|{|0|}>|)><big|cap>U> which
    proves that <math|0> is a limit point of <math|A<rsub|x>>.
  </proof>

  We can now define the derivative of a function.

  <\definition>
    <label|diff calculus derivate (1)>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real [complex] numbers with the canonical norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A> a limit
    point of <math|A> and <math|f:A\<rightarrow\>Y> a function then
    <with|font-series|bold|<math|f> has a derivative noted as
    <math|f<rprime|'><rsub|x>>> if we have for the function\ 

    <\equation*>
      \<Delta\><rsub|x>f:A<rsub|x>\\<around*|{|0|}>\<rightarrow\>Y<text|
      defined by >\<Delta\><rsub|x>f<around*|(|h|)>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
    </equation*>

    that

    <\equation*>
      f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>>>\<Delta\><rsub|x>f<around*|(|h|)><text|
      exist>
    </equation*>

    in most books this is summarized as\ 

    <\equation*>
      f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>>><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h><text|
      exist>
    </equation*>

    <\note>
      As <math|x\<in\>A> and <math|h\<in\>A<rsub|x>\<Rightarrow\>x+h\<in\>A>
      <math|\<Delta\><rsub|x>f> is well defined. Further as <math|x> is a
      limit point of <math|A>, <math|0> is a limit point of <math|A<rsub|x>>
      [see lemma: <reference|lemma 16.12.1>] so the limit if it exist is
      unique.
    </note>

    <\note>
      In case <math|A> is open or <math|A=<wide|B<rsub|<around*|\|||\|>><around*|(|x.\<delta\>|)>|\<wide-bar\>>>
      or <math|A=<wide|B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>
      we can leave out the condition that <math|x> is a limit point of
      <math|A> [see theorem: <reference|topology every element of a open set
      in a normed space is a limit point> or corollary: <reference|topology
      every element of a open or closed ball is a limit point>].
    </note>

    <\note>
      If <math|A> is of the forms <math|<around*|[|a,b|]>>,
      <math|<around*|[|a,b|[>>, <math|<around*|]|a,b|]>>,
      <math|<around*|]|a,b|[>>, <math|<around*|[|a,\<infty\>|[>>,
      <math|<around*|]|a,\<infty\>|[>>, <math|<around*|]|-\<infty\>,a|]>> or
      <math|<around*|]|-\<infty\>,a|[>> where <math|a,b\<in\>\<bbb-R\>> with
      <math|a\<less\>b> then evere element of <math|A> is automatical a limit
      point of <math|A> [see theorem: <reference|topology every element of a
      generalized interval is a limit point>] so in those cases the conition
      that <math|x> is a limit point is automatically satisfied.
    </note>
  </definition>

  If we use the definition of <math|<below|lim|<below|h\<rightarrow\>0|U<rsub|x>>>>
  we can reformulate the definition of a derivative in the following way.

  \;

  <\theorem>
    <label|diff calculus derivate><index|<math|f<rprime|'><around*|(|x|)>>>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real or complex numbers, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|x\<in\>A> a limit point of <math|A> and
    <math|f:A\<rightarrow\>Y> a function. Then <math|f> has a derivative
    <math|f<rprime|'><rsub|z>> if and only if

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| so that
      >\<forall\>h\<in\>A<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text|
      \ ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|z>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    <\note>
      As <math|x\<in\>A> and <math|h\<in\>A<rsub|x>\<Rightarrow\>x+h\<in\>A>
      <math|\<Delta\><rsub|x>f> is well defined. Further as <math|x> is a
      limit point of <math|A>, <math|0> is a limit point of <math|A<rsub|x>>
      [see lemma: <reference|lemma 16.12.1>] so the limit if it exist is
      unique.
    </note>

    <\note>
      In case <math|A> is open or <math|A=<wide|B<rsub|<around*|\|||\|>><around*|(|x.\<delta\>|)>|\<wide-bar\>>>
      or <math|A=<wide|B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>
      we can leave out the condition that <math|x> is a limit point of
      <math|A> [see theorem: <reference|topology every element of a open set
      in a normed space is a limit point> or corollary: <reference|topology
      every element of a open or closed ball is a limit point>].
    </note>

    <\note>
      If <math|A> is of the forms <math|<around*|[|a,b|]>>,
      <math|<around*|[|a,b|[>>, <math|<around*|]|a,b|]>>,
      <math|<around*|]|a,b|[>>, <math|<around*|[|a,\<infty\>|[>>,
      <math|<around*|]|a,\<infty\>|[>>, <math|<around*|]|-\<infty\>,a|]>> or
      <math|<around*|]|-\<infty\>,a|[>> where <math|a,b\<in\>\<bbb-R\>> with
      <math|a\<less\>b> then evere element of <math|A> is automatical a limit
      point of <math|A> [see theorem: <reference|topology every element of a
      generalized interval is a limit point>] so in those cases the conition
      that <math|x> is a limit point is automatically satisfied.
    </note>
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      \<Delta\><rsub|x>f:A<rsub|x>\\<around*|{|0|}>\<rightarrow\>Y<text|
      defined by >\<Delta\><rsub|x>f<around*|(|h|)>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
    </equation*>

    then as <math|f> has a derivative at <math|x> we have that\ 

    <\equation*>
      f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>>>\<Delta\><rsub|x>f<around*|(|h|)><text|
      exist>
    </equation*>

    so that by [definition: <reference|diff limit of a function>] this is
    equivalent with <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

    <\equation*>
      \<forall\>h\<in\>A<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|z>|\<\|\|\>>=<around*|\<\|\|\>|\<Delta\><rsub|x>f<around*|(|h|)>-f<rprime|'><rsub|x>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </proof>

  <\example>
    <label|diff derivative of constant>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    pace of real or complex numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>,
    <math|y\<in\>X> then <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|C<rsub|x>:<around*|[|a,b|]>\<rightarrow\>X> has a derivative at
    <math|x> with <math|<around*|(|C<rsub|y>|)><rprime|'><rsub|x>=0>. Hence
    if we define\ 

    <\equation*>
      <around*|(|C<rsub|y>|)><rprime|'>:<around*|[|a,b|]>\<rightarrow\>X<text|
      by ><around*|(|C<rsub|y>|)><rprime|'><around*|(|x|)>=<around*|(|C<rsub|y>|)><rprime|'><rsub|x>
    </equation*>

    then\ 

    <\equation*>
      <around*|(|C<rsub|y>|)><rprime|'>=C<rsub|0>
    </equation*>
  </example>

  <\proof>
    Let <math|x\<in\><around*|[|a,b|]>> then by [theorem: <reference|topology
    every element of a generalized interval is a limit point>]\ 

    <\equation*>
      x<text| is a limit point of ><around*|[|a,b|]>
    </equation*>

    Further if <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\><around*|[|a,b|]><rsub|x>> with
    <math|0\<less\><around*|\||h|\|>\<less\>1> we have\ 

    <\equation*>
      <around*|\<\|\|\>|<frac|C<rsub|y><around*|(|x+h|)>-C<rsub|y><around*|(|x|)>|h>-0|\<\|\|\>>=<around*|\<\|\|\>|<frac|y-y|h>-0|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<less\>\<varepsilon\>
    </equation*>

    Hence using the previous theorem [theorem: <reference|diff calculus
    derivate>] <math|C<rsub|y>> has a derivative at <math|x> with
    <math|<around*|(|C<rsub|y>|)><rprime|'><rsub|x>=0>.
  </proof>

  <\example>
    <label|diff scalar product function has a derivate>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real or complex numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|x\<in\>X> then\ 

    <\equation*>
      <around*|(|\<ast\>\<cdot\>x|)>:\<bbb-K\>\<rightarrow\>X<text| defined
      by ><around*|(|\<ast\>*\<cdot\>x|)><around*|(|t|)>=t\<cdot\>x
    </equation*>

    has a derivative at every <math|t\<in\>\<bbb-R\>> with
    <math|<around*|(|\<ast\>\<cdot\>x|)><rprime|'><rsub|x>=x>
  </example>

  <\note>
    As <math|t\<in\>\<bbb-K\>> a open set <math|t> is a limit point of
    <math|\<bbb-K\>> [see <reference|topology every element of a open set in
    a normed space is a limit point>] so having a unique derivative makes
    sense.
  </note>

  <\proof>
    As \ Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|0\<less\><around*|\||h|\|>\<less\>1> we have\ 

    <\equation*>
      <around*|\<\|\|\>|<frac|<around*|(|\<ast\>,\<cdot\>x|)><around*|(|t+h|)>-<around*|(|\<ast\>,\<cdot\>x|)><around*|(|t|)>|h>-x|\<\|\|\>>=<around*|\<\|\|\>|<frac|<around*|(|t+h|)>\<cdot\>x-t\<cdot\>x|h>-x|\<\|\|\>>=<around*|\<\|\|\>|<frac|h\<cdot\>x|h>-x|\<\|\|\>>=0\<less\>\<varepsilon\>
    </equation*>

    so that <math|<around*|(|\<ast\>\<cdot\>x|)>> has <math|x> as its
    derivative at <math|t>.
  </proof>

  <\note>
    We use <math|f<rprime|'><rsub|x>> to note the derivative of <math|f> at
    <math|x>. Many books use instead the notation
    <math|f<rprime|'><rsub|\|x>> or <math|f<rprime|'><around*|(|x|)>>. The
    problem with <math|f<rprime|'><rsub|\|x>> is that it can be confused with
    the restriction of a function <math|f<rprime|'>> to <math|x> and
    <math|f<rprime|'><around*|(|x|)>> can also be confused with the value of
    a function <math|f<rprime|'>> at <math|x>. The derivative is however not
    a function but a value of <math|Y>. If <math|f> has a derivative at every
    <math|x> in <math|U> then we can define a function\ 

    <\equation*>
      f<rprime|'>:U\<rightarrow\>Y<text| by
      >f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x>
    </equation*>

    The notation convention of this book allows us to \ make a distinction
    between the derivative at a point, which is a value of <math|Y>, and the
    derivative <with|font-series|bold|function> which only exist if a
    derivative exist at every point in <math|U>. If the derivative function
    exist then by its definition <math|f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x>>.
  </note>

  <subsection|Fréchet differential of a function>

  If we want to extend the definition of a derivative of a function on
  <math|U\<subseteq\>\<bbb-K\>> to a function whose domain is a subset of a
  normed space we run in the following problem. If
  <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
  <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
  are normed spaces, <math|A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> a
  function then as <math|><math|f<around*|(|x+h|)>-f<around*|(|x|)>\<in\>Y>
  and <math|h\<in\>X> the quotient <math|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>>
  is not defined so that <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>
  is ill-defined. To solve this, note that in the case where
  <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>=<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
  we can multiply both sides of <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
  by <math|<around*|\||h|\|>> to get\ 

  <\equation*>
    <around*|\||h|\|>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
  </equation*>

  Then as\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|\||h|\|>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|h\<cdot\><around*|(|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-f<rprime|'><around*|(|x|)>\<cdot\>h|\<\|\|\>>>>>>
  </eqnarray*>

  we have\ 

  <\equation*>
    <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-f<rprime|'><around*|(|x|)>\<cdot\>h|\<\|\|\>>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
  </equation*>

  Define <math|L:\<bbb-K\>\<rightarrow\>Y> by
  <math|L<around*|(|h|)>=f<rprime|'><around*|(|x|)>\<cdot\>h> then by
  [example: <reference|continuity norm L(x)=a.x>] we have that
  <math|L\<in\>L<around*|(|\<bbb-K\>,Y|)>> hence we can rewrite the above as\ 

  <\equation*>
    <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
  </equation*>

  This can extended to more general cases where the normed spaces is
  <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
  instead of <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> if we
  change the above expression in\ 

  <\equation*>
    <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
  </equation*>

  This is the idea behind Fréchet differentiability of a function which is
  covered in the next subsection. Of course we have to ensure that <math|L>
  is unique.\ 

  <\definition>
    <label|diff Frechet approximation><dueto|Fréchet approximation>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|a\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function then <math|L> is a
    <with|font-series|bold|Fréchet approximation of >f at <math|x> if
    <math|L\<in\>L<around*|(|X,Y|)>> and <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

    <\equation*>
      <text|<math|\<forall\>h\<in\>X<text| with
      >x+h\<in\>A\<wedge\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>
    </equation*>

    <\note>
      As <math|A<rsub|x>=<around*|{|h\<in\>X\|x+h\<in\>A|}>> this is
      equivalent with\ 

      <\equation*>
        \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exist a
        >\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
        >\<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
        ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>
    </note>
  </definition>

  We want now to find the set in <math|X> where two Fréchet approximations of
  a function coincide. For this we introduce the concept of a tangent cone.

  <\definition>
    <label|diff tangent cone><dueto|Tangent Cone>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|A\<subseteq\>X> and <math|a\<in\>A> then the
    <with|font-series|bold|tangent cone of A at a noted as
    <math|T<rsub|A><around*|(|a|)>>> is defined by\ 

    <\equation*>
      T<rsub|A><around*|(|a|)>=<around*|{|x\<in\>X\|\<exists\><around*|{|\<lambda\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+>,\<exists\><around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>X<text|
      such that ><tabular*|<tformat|<table|<row|<cell|\<forall\>n\<in\>\<bbb-N\>
      <text| >\<lambda\><rsub|n+1>\<leqslant\>\<lambda\><rsub|n>\<wedge\>a+\<lambda\><rsub|n>\<cdot\>x<rsub|n>\<in\>A>>|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n><text|
      exist and ><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0>>|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n><text|
      exist and ><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>>>>>
      \ <rsub|>|}>
    </equation*>

    \ 
  </definition>

  <\definition>
    <label|diff cone>Let <math|X> be a vector space then
    <math|A\<subseteq\>X> is a cone if <math|\<forall\>v\<in\>A> we have that
    <math|\<forall\>\<lambda\>\<in\><around*|[|0,\<infty\>|[>>
    <math|\<lambda\>\<cdot\>v\<in\>A>.
  </definition>

  It turns out that the name Tangent Cone because
  <math|T<rsub|A><around*|(|a|)>> is indeed a cone as is show in the next
  theorem.

  <\theorem>
    <label|diff tangent cone is a cone>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|A\<subseteq\>X> and <math|a\<in\>A> then we have\ 

    <\equation*>
      0\<in\>T<rsub|A><around*|(|a|)>
    </equation*>

    and

    <\equation*>
      \<forall\>y\<in\>T<rsub|A><around*|(|a|)><text| we have
      >\<forall\>\<lambda\>\<in\><around*|[|0,\<infty\>|[><text| that
      >\<lambda\>\<cdot\>y\<in\>T<rsub|A><around*|(|a|)>
    </equation*>
  </theorem>

  <\proof>
    Take <math|<around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>X>
    by <math|x<rsub|n>=0>, <math|<around*|{|\<lambda\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+>>
    by <math|\<lambda\><rsub|n>=<frac|1|n>> then we have\ 

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><text| that
      >\<lambda\><rsub|n+1>=<frac|1|n+1>\<less\><frac|1|n>=\<lambda\><rsub|n><text|
      and >a+\<lambda\><rsub|n>\<cdot\>x<rsub|n>=a\<in\>A
    </equation*>

    and\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>\<equallim\><rsub|<text|[theorem:
      <reference|limit constant sequence>]>>0<text| and
      ><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>\<equallim\><rsub|<text|[theorem:
      <reference|limit 1/(a+i)>]>>0
    </equation*>

    which by [definition: <reference|diff tangent cone>] proves that\ 

    <\equation>
      <label|eq 16.15.5>0\<in\>T<rsub|A><around*|(|a|)>
    </equation>

    Let <math|y\<in\>T<rsub|A><around*|(|a|)>>. For
    <math|\<lambda\>\<in\><around*|[|0,\<infty\>|[>> we have either:\ 

    <\description>
      <item*|<math|\<lambda\>=0>>Then <math|\<lambda\>\<cdot\>y=0\<cdot\>y=0<below|\<in\>|<text|[eq:
      <reference|eq 16.15.5>]>>T<rsub|A><around*|(|a|)>>.

      <item*|<math|0\<less\>\<lambda\>>>Let
      <math|y\<in\>T<rsub|A><around*|(|a|)>> then by [definition:
      <reference|diff tangent cone>] there exist
      <math|<around*|{|y<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>X> and
      <math|<around*|{|\<alpha\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+>>
      such that\ 

      <\equation>
        <label|eq 16.16.5>\<forall\>n\<in\>\<bbb-N\><text|
        >\<alpha\><rsub|n+1>\<leqslant\>\<alpha\><rsub|n>\<wedge\>a+\<lambda\><rsub|n>\<cdot\>y<rsub|n>\<in\>A<text|
        and ><below|lim|n\<rightarrow\>\<infty\>>y<rsub|n>=y\<wedge\><below|lim|n\<rightarrow\>\<infty\>>\<alpha\><rsub|n>=0
      </equation>

      Define now\ 

      <\equation*>
        <around*|{|z<rsub|n>|}><rsub|n\<in\>\<bbb-N\>><text| by
        >z<rsub|n>=\<lambda\>\<cdot\>y<rsub|n><text| and
        ><around*|{|\<beta\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+><text|
        by >\<beta\><rsub|n>=<frac|\<alpha\><rsub|n>|\<lambda\>>
      </equation*>

      Then we have\ 

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><text| >\<beta\><rsub|n+1>=<frac|\<alpha\><rsub|n+1>|\<lambda\>>\<leqslant\><frac|\<alpha\><rsub|n>|\<lambda\>>=\<beta\><rsub|\<nu\>>\<wedge\>a+\<beta\><rsub|n>\<cdot\>z<rsub|n>=a+<frac|\<alpha\><rsub|n>|\<lambda\>>\<cdot\>\<lambda\>\<cdot\>y<rsub|n>=a+\<alpha\><rsub|n>\<cdot\>y<rsub|n><below|\<in\>|<text|[eq:
        <reference|eq 16.16.5>]>>A
      </equation*>

      and\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>z<rsub|n>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<lambda\>\<cdot\>y<rsub|n>|)>\<equallim\><rsub|<text|[eq:
        <reference|limit a.x_n>]>>\<lambda\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>>y<rsub|n>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.16.5>]>>\<lambda\>\<cdot\>y
      </equation*>

      Hence by [definition: <reference|diff tangent cone>] it follows that

      <\equation*>
        \<lambda\>\<cdot\>y\<in\>T<rsub|A><around*|(|a|)>
      </equation*>
    </description>
  </proof>

  The importance of the tangent cone is that if we have two Fréchet
  approximations of a function at <math|a> then they coincide on
  <math|<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>> where
  <math|A> is the domain of the function. Hence if
  <math|<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>=X>
  then the approximation is unique.

  <\theorem>
    <label|diff uniqueness of the Frechet aproximation>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|a\<in\>A> and
    <rigid|<math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>>> such that
    <math|L<rsub|1>> and <math|L<rsub|2>> are Fréchet approximations of
    <math|f> at <math|a> then

    <\equation*>
      \<forall\>x\<in\><wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>><text|
      we have >L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>
    </equation*>

    <\note>
      As <math|T<rsub|A><around*|(|a|)>\<subseteq\>span<around*|(|T<rsub|A><around*|(|a|)>|)>\<subseteq\><wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>>
      we have <math|\<forall\>x\<in\>T<rsub|A><around*|(|a|)>> that
      <math|L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>>
    </note>
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then, as
    <math|L<rsub|1>> and <math|L<rsub|2>> are Fréchet approximations of
    <math|f> at <math|a>, there exist <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
    such that\ 

    <\equation>
      <\text>
        <math|<label|eq 16.463.298>\<forall\>h\<in\>X<text| with
        >x+h\<in\>A\<wedge\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
        ><around*|\<\|\|\>|f<around*|(|a+h|)>-f<around*|(|a|)>-L<rsub|1><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      </text>
    </equation>

    <\equation>
      <text|<math|<label|eq 16.464.298>\<forall\>h\<in\>X<text| with
      >x+h\<in\>A\<wedge\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2><text|
      ><around*|\<\|\|\>|f<around*|(|a+h|)>-f<around*|(|a|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>
    </equation>

    Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
    then we have <math|\<forall\>h\<in\>X<text| with
    >x+h\<in\>A\<wedge\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|a+h|)>-f<around*|(|a|)>-L<rsub|2><around*|(|h|)>-<around*|(|f<around*|(|a+h|)>-f<around*|(|a|)>-L<rsub|1><around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|a+h|)>-f<around*|(|a|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|a+h|)>-f<around*|(|a|)>-L<rsub|1><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eqs:
      <reference|eq 16.463.298>, <reference|eq
      16.464.298>]>>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>

    in other words

    <\equation>
      <label|eq 16.465.298>\<forall\>h\<in\>X<text| with
      >x+h\<in\>A\<wedge\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
      we have ><around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation>

    Let <math|x\<in\>T<rsub|A><around*|(|a|)>> then <math|>there exist
    <math|<around*|{|\<lambda\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+>,\<exists\><around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>X>
    such that <math|x=<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>>,
    <math|<below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0> and
    <math|\<forall\>n\<in\>\<bbb-N\>> <math|\<lambda\><rsub|n+1>\<leqslant\>\<lambda\><rsub|n>\<wedge\>a+\<lambda\><rsub|n>\<cdot\>x<rsub|n>\<in\>A>.
    As <math|x=<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>> there exist by
    [theorem: <reference|limit convergence implies bounded>] a
    <math|M\<in\>\<bbb-R\><rsup|+>> such that\ 

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><text| ><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|X>\<leqslant\>M
    </equation*>

    From <math|<below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0>
    there exist a <math|N\<in\>\<bbb-N\>> such that
    <math|<around*|\||\<lambda\><rsub|n>|\|>=<around*|\||\<lambda\><rsub|n>-0|\|>\<less\><frac|\<delta\>|2\<cdot\>M>>
    <math|\<forall\>n\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>> hence
    we have that

    <\equation>
      \<forall\>n\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
      ><around*|\<\|\|\>|\<lambda\><rsub|n>\<cdot\>x<rsub|n>|\<\|\|\>><rsub|X>=<around*|\||\<lambda\><rsub|n>|\|>\<cdot\><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|x>\<leqslant\><around*|\||\<lambda\><rsub|n>|\|>\<cdot\>M\<less\><frac|\<delta\>|M>\<cdot\>M\<less\>\<delta\>
    </equation>

    Further as <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> there
    exist a <math|N<rsub|2>\<in\>\<bbb-N\>> such that
    <math|\<forall\>n\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>> we
    have <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>><rsub|X>\<less\>1>. So
    if we take <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have\ 

    <\equation>
      <label|eq 16.467.298>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text|
      ><around*|\||\<lambda\><rsub|n>\<cdot\>x<rsub|n>|\|>\<less\>\<delta\><text|
      and ><around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>><rsub|X>\<less\>1
    </equation>

    If <math|n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> then from the above
    and the fact that <math|\<forall\>n\<in\>\<bbb-N\>>
    <math|a+\<lambda\><rsub|n>\<cdot\>x<rsub|n>\<in\>A> it follow by [eq:
    <reference|eq 16.465.298>]\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|\<lambda\><rsub|n>\<cdot\>x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<lambda\><rsub|n>\<cdot\>x<rsub|n>|\<\|\|\>><rsub|X>\<equallim\><rsub|0\<less\>\<lambda\><rsub|n>>\<varepsilon\>\<cdot\>\<lambda\><rsub|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|n>
    </equation*>

    hence we have <math|\<lambda\><rsub|n>\<cdot\><around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<lambda\>\<cdot\><around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|\<lambda\><rsub|n>\<cdot\>x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\>\<lambda\><rsub|n>\<cdot\><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>>.
    After dividing both sides by <math|\<lambda\><rsub|n>> this gives\ 

    <\equation>
      <label|eq 16.468.298>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text|
      we have ><around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|X>=<rsub|><around*|\<\|\|\>|\<varepsilon\>\<cdot\>x<rsub|n>|\<\|\|\>><rsub|X>
    </equation>

    As <math|L<rsub|1>-L<rsub|2>\<in\>L<around*|(|X,Y|)>> hence continuous we
    have by [theorem: <reference|limit and continuity>] and the fact that
    <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> that
    <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x<rsub|n>|)>=<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>>.
    Using then [theorem: <reference|limit of norm is norm of limit>] it
    follows that\ 

    <\equation>
      <label|eq 16.469.298><below|lim|n\<rightarrow\>\<infty\>><around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>
    </equation>

    Using [theorems: <reference|sequence limit start value>, <reference|limit
    limit of sequence limited by another sequence>] on [eq: <reference|eq
    16.468.298>] it follows that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<circ\>><around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><below|lim|n\<rightarrow\>\<infty\>><around*|\<\|\|\>|\<varepsilon\>\<cdot\>x<rsub|n>|\<\|\|\>><rsub|X>=\<varepsilon\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|X>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation*>

    Combining this with [eq: <reference|eq 16.469.298>] proves that
    <math|<around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>.
    As <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> was chosen arbitrary it
    follows using [theorem: <reference|complex Archimedean property
    consequence (2)>] that <math|<around*|\<\|\|\>|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>=0>,
    hence we must have <math|<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>=0>.
    Summarized\ 

    <\equation>
      <label|eq 16.470.298>\<forall\>x\<in\>T<rsub|A><around*|(|a|)><text| we
      have ><around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>=0
    </equation>

    Let now <math|x\<in\>span<around*|(|T<rsub|A><around*|(|a|)>|)>> then
    there exists <math|n\<in\>\<bbb-N\>,<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>
    and <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>T<rsub|A><around*|(|a|)>>
    <math|>such that <math|x=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>x<rsub|i>>
    [see theorem: <reference|linear span (1)>]. Then we have

    <\equation*>
      <around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>=<around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<alpha\>\<cdot\><around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x<rsub|i>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.470.298>]>><big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>0=0
    </equation*>

    Hence we have\ 

    <\equation>
      <label|eq 16.471.298>\<forall\>x\<in\>span<around*|(|T<rsub|A><around*|(|a|)>|)><text|
      that ><around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)>=0
    </equation>

    Let <math|x\<in\><wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>>
    then by [theorem: <reference|limit and closure in a metric space>] there
    exist a sequence <math|<around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>span<around*|(|T<rsub|A><around*|(|a|)>|)>>
    such that <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>. As
    <math|L<rsub|1>-L<rsub|2>> is continuous we have by [theorem:
    <reference|limit and continuity>] that\ 

    <\equation*>
      <around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x|)><below|=|<text|[theorem:
      <reference|limit and continuity>] >><below|lim|n\<rightarrow\>\<infty\>><around*|(|L<rsub|1>-L<rsub|2>|)><around*|(|x<rsub|n>|)><below|=|<around*|[|eq:<reference|eq
      16.471.298>|]>><below|lim|n\<rightarrow\>\<infty\>>0=0
    </equation*>

    In other words we have\ 

    <\equation*>
      \<forall\>x\<in\><wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>
      we have L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>
    </equation*>
  </proof>

  <\lemma>
    <label|diff tangent cone and inclusion>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space and <math|a\<in\>A\<subseteq\>B> then
    <math|T<rsub|A><around*|(|a|)>\<subseteq\>T<rsub|B><around*|(|a|)>>
  </lemma>

  <\proof>
    If <math|x\<in\>T<rsub|A><around*|(|a|)>> then there exists
    <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+>>,
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>X> such
    that\ 

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><text| >\<lambda\><rsub|n+1>\<less\>\<lambda\><rsub|n><text|
      and >a+\<lambda\><rsub|n>\<cdot\>x<rsub|n>\<in\>A\<wedge\><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0\<wedge\><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
    </equation*>

    which as <math|A\<subseteq\>B> becomes\ 

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><text| >\<lambda\><rsub|n+1>\<less\>\<lambda\><rsub|n><text|
      and >a+\<lambda\><rsub|n>\<cdot\>x<rsub|n>\<in\>B\<wedge\><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0\<wedge\><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
    </equation*>

    so that <math|x\<in\>T<rsub|B><around*|(|a|)>>.
  </proof>

  Let's look at some examples of <math|T<rsub|A><around*|(|a|)>> that are
  important.\ 

  <\theorem>
    <label|diff tangent cone of open sets>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|U> a open set and <math|u\<in\>U> then\ 

    <\equation*>
      X=T<rsub|U><around*|(|u|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|u\<in\>U> a open set we have by [theorem: <reference|normed
    space and open sets>] that there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|u\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|u,\<delta\>|)>\<subseteq\>U>.
    Using [theorem: <reference|complex Archimedean property consequence (1)>]
    there exist a <math|N\<in\>\<bbb-N\>> such that
    <math|<frac|1|N>\<less\>\<delta\>>. Let <math|x\<in\>X> define then\ 

    <\equation*>
      <around*|{|\<lambda\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+><text|
      by >\<lambda\><rsub|n>=<frac|1|<around*|\<\|\|\>|x|\<\|\|\>>+1>\<cdot\><frac|1|n+N><text|
      and ><around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>><text| by
      >x<rsub|n>=x
    </equation*>

    then we have <math|\<forall\>n\<in\>\<bbb-N\>> that

    <\equation*>
      <around*|\<\|\|\>|u-<around*|(|u+\<lambda\><rsub|n>\<cdot\>x<rsub|n>|)>|\<\|\|\>>=<around*|\<\|\|\>|\<lambda\><rsub|n>\<cdot\>x<rsub|n>|\<\|\|\>>=<around*|\<\|\|\>|\<lambda\><rsub|n>\<cdot\>x|\<\|\|\>>=\<lambda\><rsub|n><rsub|\<cdot\>><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>=<frac|1|<around*|\<\|\|\>|x|\<\|\|\>>+1>\<cdot\><frac|1|n+N>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<less\><frac|1|n+N>\<less\><frac|1|N>\<less\>\<delta\>
    </equation*>

    so that we have\ 

    <\equation>
      <label|eq 16.15.1>\<forall\>n\<in\>\<bbb-N\><text| we have
      >u+\<lambda\><rsub|n>\<cdot\>x<rsub|n>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|u,\<delta\>|)>\<subseteq\>U
    </equation>

    Also we have trivially\ 

    <\equation>
      <label|eq 16.16.1>\<forall\>n\<in\>\<bbb-N\><text| we have
      >\<lambda\><rsub|n+1>=<frac|1|N+<around*|(|n+1|)>>\<less\><frac|1|N+n>=\<lambda\><rsub|n>
    </equation>

    Further we have\ 

    <\equation>
      <label|eq 16.17.1><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>>+1>\<cdot\><frac|1|n+N>|)>\<equallim\><rsub|<text|[theorem:
      <reference|limit a.x_n>]>><frac|1|<around*|\<\|\|\>|x|\<\|\|\>>+1>\<cdot\><below|lim|n\<rightarrow\>\<infty\>><frac|1|n+N>\<equallim\><rsub|<text|[example:
      <reference|limit 1/(a+i)>]>>0
    </equation>

    \;

    Further we have trivially\ 

    <\equation>
      <label|eq 16.18.1><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>\<equallim\><rsub|<text|[example:
      <reference|limit constant sequence>[>>x
    </equation>

    From [eqs: <reference|eq 16.15.1>, <reference|eq 16.16.1>, <reference|eq
    16.17.1> <reference|eq 16.18.1>] \ it follows by the definition of
    <math|T<rsub|U><around*|(|u|)>> [see definition: <reference|diff tangent
    cone>] that <math|x\<in\>T<rsub|U><around*|(|u|)>>. Hence we have
    <math|X\<subseteq\>T<rsub|U><around*|(|u|)>> which as trivially
    <math|T<rsub|U><around*|(|u|)>\<subseteq\>X> proves that\ 

    <\equation*>
      X=T<rsub|U><around*|(|u|)>
    </equation*>
  </proof>

  <\corollary>
    <label|diff tangent cone of inner point>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|A\<subseteq\>X> and <math|a\<in\>A<rsup|0>> [see
    definition: <reference|topology interior of a set>] then

    <\equation*>
      X=T<rsub|A><around*|(|a|)>
    </equation*>

    In other words for interior points of <math|A> the tangent cone equals
    <math|X>.
  </corollary>

  <\proof>
    As <math|a\<in\>A<rsup|0>> there exist by [definition:
    <reference|topology interior of a set>] a open set <math|U> with
    <math|a\<subseteq\>U\<subseteq\>A>. Then\ 

    <\equation*>
      X\<equallim\><rsub|<text|[theorem: <reference|diff tangent cone of open
      sets>]>>T<rsub|U><around*|(|a|)><below|\<subseteq\>|<text|[lemma:
      <reference|diff tangent cone of open
      sets>]>>T<rsub|A><around*|(|a|)>\<subseteq\>X
    </equation*>

    from which it follows that\ 

    <\equation*>
      X=T<rsub|A><around*|(|a|)>
    </equation*>
  </proof>

  <\definition>
    <label|diff SA(a) definition>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|A\<subseteq\>X> and <math|a\<in\>A> then we
    define <math|S<rsub|A><around*|(|a|)>> by\ 

    <\equation*>
      S<rsub|A><around*|(|a|)>=<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>
    </equation*>
  </definition>

  We can then summarize the above results\ 

  <\theorem>
    <label|diff SA(a)>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be normed space, <math|A\<subseteq\>X> and <math|a\<in\>A> then we have
    for <math|S<rsub|A><around*|(|a|)>> that\ 

    <\enumerate>
      <item>If A is a open set then <math|S<rsub|A><around*|(|a|)>=X>

      <item>If <math|a\<in\>A<rsup|0>> then <math|S<rsub|A><around*|(|a|)>=X>

      <item><math|S<rsub|A><around*|(|a|)>> is a sub-space of <math|X>

      <item>If <math|B\<subseteq\>A> then
      <math|S<rsub|B><around*|(|a|)>\<subseteq\>S<rsub|A><around*|(|a|)>>

      <item>If <math|f:A\<rightarrow\>Y> is a function then we have:\ 

      <\enumerate>
        <item>If <math|L<rsub|1>,L<rsub|2>> are Fréchet approximations of
        <math|f> at <math|x> then <math|\<forall\>x\<in\>S<rsub|A><around*|(|a|)>>
        we have <math|L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>>. In
        other words <math|<around*|(|L<rsub|1>|)><rsub|\|S<rsub|A><around*|(|a|)>>=<around*|(|L<rsub|2>|)><rsub|\|S<rsub|A><around*|(|a|)>>>

        <item>If <math|L> is a Fréchet approximations of <math|f> at <math|x>
        then

        <\equation*>
          L<rsub|\|S<rsub|A><around*|(|a|)>>\<in\>L<around*|(|S<rsub|A><around*|(|a|)>,Y|)>
        </equation*>

        with

        <\equation*>
          <around*|\<\|\|\>|L<rsub|\|S<rsub|A><around*|(|a|)>>|\<\|\|\>><rsub|L<around*|(|S<rsub|A><around*|(|a|)>,Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
        </equation*>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ First as <math|X> is a vector space and closed we have\ 

    <\equation>
      <label|eq 16.21.1>X<below|=|<text|[theorem: <reference|topology closed
      set and closure>]>><wide|X|\<wide-bar\>>\<equallim\><rsub|<text|[theorem:
      <reference|linear span properties>]>><wide|span<around*|(|X|)>|\<wide-bar\>>
    </equation>

    <\enumerate>
      <item>If <math|A> is open then by [theorem: <reference|diff tangent
      cone of open sets>] <math|X=T<rsub|A><around*|(|a|)>> which, after
      substituting this in [eq: <reference|eq 16.21.1>], yields\ 

      <\equation*>
        X=<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>=S<rsub|A><around*|(|a|)>
      </equation*>

      <item>If <math|a\<in\>A<rsup|0>> then by [theorem: <reference|diff
      tangent cone of inner point>] <math|X=T<rsub|A><around*|(|a|)>> which,
      after substituting this in [eq: <reference|eq 16.21.1>], yields\ 

      <\equation*>
        X=<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>=S<rsub|A><around*|(|a|)>
      </equation*>

      <item>Using [theorem: <reference|linear span is a sub-space>]
      <math|span<around*|(|T<rsub|A><around*|(|a|)>|)>> is a sub-space of
      <math|X> and by [theorem: <reference|topology closure of a sub-space>]
      <math|<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>>
      is a sub-space hence\ 

      <\equation*>
        S<rsub|A><around*|(|a|)><text| is a sub-space of >X
      </equation*>

      <item>If <math|B\<subseteq\>A> then we have by [theorem:
      <reference|diff tangent cone and inclusion>] that
      <math|T<rsub|B><around*|(|a|)>\<subseteq\>T<rsub|A><around*|(|a|)>>,
      hence using [theorem: <reference|linear span subsets>] we have that
      <math|span<around*|(|T<rsub|B><around*|(|a|)>|)>\<subseteq\>span<around*|(|T<rsub|A><around*|(|a|)>|)>>
      and finally, using [theorem: <reference|topology closure inclusion>],
      that

      <\equation*>
        S<rsub|B><around*|(|a|)>=<wide|span<around*|(|T<rsub|B><around*|(|a|)>|)>|\<wide-bar\>>\<subseteq\><wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>=S<rsub|A><around*|(|a|)>
      </equation*>

      <item>If <math|f:A\<rightarrow\>Y> is a function then we have:\ 

      <\enumerate>
        <item>If \ <math|L<rsub|1>,L<rsub|2>> are Fréchet approximations of
        <math|f> at <math|x> then we have by [theorem: <reference|diff
        uniqueness of the Frechet aproximation>] we have
        <math|\<forall\>x\<in\><wide|T<rsub|A><around*|(|a|)>|\<wide-bar\>>=S<rsub|A><around*|(|a|)>>
        that <math|L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>>.

        <item>If <math|L> is a Fréchet approximation of <math|f> at <math|x>
        we have by [definition: <reference|diff Frechet approximation>] that
        <math|<rigid|L\<in\>L<around*|(|X,Y|)>>>. As by (3)
        <math|S<rsub|A><around*|(|a|)>> is a sub-space of <math|X> it follows
        from [theorem: <reference|continuity L(X,Y) and sub space>) that
        <math|L<rsub|\|S<rsub|A><around*|(|a|)>>\<in\>L<around*|(|S<rsub|A><around*|(|a|)>,Y|)>>
        with <math|<around*|\<\|\|\>|L<rsub|\|S<rsub|A><around*|(|a|)>>|\<\|\|\>><rsub|L<around*|(|S<rsub|A><around*|(|a|)>,Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>
      </enumerate>
    </enumerate>

    \;
  </proof>

  We are now ready to define Fréchet differentiation.

  <\definition>
    <label|diff differentiability><index|differentiability><dueto|Fréchet
    differentiability>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> then the
    function <math|f:A\<rightarrow\>Y> is Fréchet differentiable at <math|x>
    if there exist a <math|L\<in\>L<around*|(|X,Y|)>> such that\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      \<exists\>>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>

    [in other words <math|L> is a Fréchet approximation of <math|f> at
    <math|x>]. The <with|font-series|bold|Fréchet differential of <math|f> at
    <math|x>> noted as <math|<with|font-series|bold|D<rsub|x>f>> is defined
    by\ 

    <\equation*>
      D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|a|)>>:S<rsub|A><around*|(|x|)>\<rightarrow\>Y
    </equation*>

    so that using [theorem: <reference|diff SA(a)>(5.b)]\ 

    <\equation*>
      D<rsub|x>f\<in\>L<around*|(|S<rsub|A><around*|(|x|)>,Y|)>
    </equation*>

    <\note>
      Of course we must prove that <math|D<rsub|x>f> is uniquely defined. So
      assume that there exist another <math|L<rprime|'>\<in\>L<around*|(|X,Y|)>>
      such that\ 

      <\equation*>
        \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
        \<exists\>>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
        >\<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
        ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<rprime|'><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      then we have by [theorem: <reference|diff SA(a)>] that
      <math|L<rsub|\|T<rsub|A><around*|(|a|)>>=L<rprime|'><rsub|\|T<rsub|A><around*|(|a|)>>>,
      hence <math|D<rsub|x>f=L<rsub|\|T<rsub|A><around*|(|a|)>>=L<rprime|'><rsub|\|T<rsub|A><around*|(|a|)>>>
      is uniquely defined.
    </note>

    <\note>
      As <math|D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>> and
      <math|S<rsub|A><around*|(|x|)>> depends on <math|x> and <math|A> the
      differential is not only dependent on <math|x> but also on the domain
      of <math|f>. As <math|A=dom<around*|(|f|)>> depends on <math|f>
      <math|D<rsub|x>f> clearly shows this two dependence's.\ 
    </note>

    <\note>
      <label|note 16.44>If <math|A> is open or <math|x\<in\>A<rsup|0>> then
      by [theorem: <reference|diff SA(a)>] <math|S<rsub|A><around*|(|x|)>=X>
      so that in that case

      <\equation*>
        D<rsub|x>f\<in\>L<around*|(|X,Y|)><text| and >D<rsub|x>f=L
      </equation*>

      which is what you find in most text about Fréchet differentiation. In
      these cases the differential <math|D<rsub|x>f> does not depend anymore
      on the domain of <math|F> as <math|S<rsub|A><around*|(|x|)>=X>.
    </note>
  </definition>

  <\definition>
    <label|diff differentiability on a set>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|B\<subseteq\>A> and
    <math|f:A\<rightarrow\>Y> a function then <math|f:A\<rightarrow\>Y> is
    <with|font-series|bold|Fréchet differentiable on <math|A>> if
    <math|\<forall\>x\<in\>A> we have that <math|f> is Fréchet differentiable
    at <math|x>.
  </definition>

  The following examples shows the problems that we can have with uniqueness
  if <math|x> is not a inner point of the domain of the function.

  <\example>
    Consider <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>,<math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>,
    <math|A=<around*|{|<around*|(|x,y|)>\|y=0|}>> and take

    <\equation*>
      f:A\<rightarrow\>\<bbb-R\><text| defined by
      >f<around*|(|<around*|(|x,y|)>|)>=0
    </equation*>

    Let

    <\equation*>
      L<rsub|1>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><text| defined by
      >L<rsub|1><around*|(|<around*|(|x,y|)>|)>=y
    </equation*>

    <\equation*>
      L<rsub|2>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><text| defined by
      >L<rsub|2><around*|(|<around*|(|x,y|)>|)>=2\<cdot\>y
    </equation*>

    then we have that\ 

    <\equation*>
      L<rsub|1>,L<rsub|2><text| are Fréchet approximations of <math|f> at
      <math|<around*|(|0.0|)>>>
    </equation*>

    but\ 

    <\equation*>
      L<rsub|1>\<neq\>L<rsub|2>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>x\<in\>A<text| we have >L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>
    </equation*>
  </example>

  <\proof>
    Assume that <math|<around*|(|0,0|)>> is a inner point of <math|A> then
    there exist a open set <math|U> with <math|<around*|(|0,0|)>\<in\>U\<subseteq\>A>,
    hence there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|<around*|(|0,0|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|<around*|(|0,0|)>,\<delta\>|)>\<subseteq\>U\<subseteq\>A>.
    Take <math|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>\<in\>\<bbb-R\><rsup|2>>
    then as <math|<frac|\<delta\>|2>\<neq\>0> we have that
    <math|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>\<nin\>A>.
    However as <math|<around*|\<\|\|\>|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>-<around*|(|0,0|)>|\<\|\|\>><rsub|2>=<around*|\<\|\|\>|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>|\<\|\|\>><rsub|2>=max<around*|(|<around*|{|<frac|\<delta\>|2>|}>|)>=<frac|\<delta\>|2>\<less\>\<delta\>>
    it follows that <math|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|<around*|(|0,0|)>,\<delta\>|)>\<subseteq\>U\<subseteq\>A>
    and we reach a contradiction. So we must conclude that\ 

    <\equation*>
      <around*|(|0,0|)><text| is not a inner point of >A
    </equation*>

    If <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>\<in\>\<bbb-R\><rsup|2>>
    and <math|\<alpha\>\<in\>\<bbb-R\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<rsub|1><around*|(|<around*|(|x,y|)>+\<alpha\>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>|)>>|<cell|=>|<cell|L<rsub|1><around*|(|<around*|(|x+\<alpha\>\<cdot\>x<rprime|'>,y+\<alpha\>\<cdot\>y<rprime|'>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|y+\<alpha\>\<cdot\>y<rprime|'>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|<around*|(|x,y|)>|)>+\<alpha\>\<cdot\>L<rsub|1><around*|(|<around*|(|x<rprime|'>,y<rprime|'>|)>|)>>>|<row|<cell|L<rsub|2><around*|(|<around*|(|x,y|)>+\<alpha\>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>|)>>|<cell|=>|<cell|L<rsub|2><around*|(|<around*|(|x+\<alpha\>\<cdot\>x<rprime|'>,y+\<alpha\>\<cdot\>y<rprime|'>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|y+\<alpha\>\<cdot\>y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\>y+\<alpha\>\<cdot\>2\<cdot\>y<rprime|'>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|2><around*|(|<around*|(|x,y|)>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|<around*|(|x<rprime|'>,y<rprime|'>|)>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      L<rsub|1>,L<rsub|2>\<in\>Hom<around*|(|\<bbb-R\><rsup|2>,\<bbb-R\>|)>
    </equation*>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||L<rsub|1><around*|(|x,y|)>|\|>>|<cell|=>|<cell|<around*|\||y|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|max<around*|(|<around*|\||x|\|>,<around*|\||y|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x,y|)>|\<\|\|\>><rsub|2>>>|<row|<cell|<around*|\||L<rsub|2><around*|(|x,y|)>|\|>>|<cell|=>|<cell|<around*|\||2\<cdot\>y|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|2\<cdot\>max<around*|(|<around*|\||x|\|>,<around*|\||y|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|\<\|\|\>|<around*|(|x,y|)>|\<\|\|\>><rsub|2>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation*>
      L<rsub|1>,L<rsub|2>\<in\>L<around*|(|\<bbb-R\><rsup|2>,\<bbb-R\>|)>
    </equation*>

    Consider differentiability at <math|<around*|(|0,0|)>>. Let
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>A<rsub|<around*|(|00|)>>>
    with <math|<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|2>\<less\>1>
    we have <math|<around*|(|h<rsub|1>,h<rsub|2>|)>=<around*|(|h<rsub|1>,h<rsub|2>|)>+<around*|(|0,0|)>\<in\>A>
    from which it follows that <math|h<rsub|2>=0>. Hence we have \ 

    <\equation*>
      <around*|\||f<around*|(|<around*|(|0,0|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-f<around*|(|<around*|(|0,0|)>|)>-L<rsub|1><around*|(|<around*|(|h<rsub|1>,h<rsub|2>|)>|)>|\|>=<around*|\||0-0-h<rsub|2>|\|>\<equallim\><rsub|h<rsub|2>=0>0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|2>
    </equation*>

    <\equation*>
      <around*|\||f<around*|(|<around*|(|0,0|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-f<around*|(|<around*|(|0,0|)>|)>-L<rsub|2><around*|(|<around*|(|h<rsub|1>,h<rsub|2>|)>|)>|\|>=<around*|\||0-0-2\<cdot\>h<rsub|2>|\|>\<equallim\><rsub|h<rsub|2>=0>0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|2>
    </equation*>

    so\ 

    <\equation*>
      L<rsub|1>,L<rsub|2><text| are Fréchet approximation of >f<text| at
      ><around*|(|0.0|)>
    </equation*>

    Further as <math|L<rsub|1><around*|(|<around*|(|1,1|)>|)>=1\<neq\>2=L<rsub|2><around*|(|<around*|(|1,1|)>|)>>
    it follows that\ 

    <\equation*>
      L<rsub|1>\<neq\>L<rsub|2>
    </equation*>

    Finally if <math|<around*|(|x,y|)>\<in\>A> then <math|y=0> so that
    <math|L<rsub|1><around*|(|x,y|)>=0=L<rsub|2><around*|(|x,y|)>> which
    proves that\ 

    <\equation*>
      \<forall\>x\<in\>A<text| we have >L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>
    </equation*>
  </proof>

  <\example>
    <label|example 16.35.1>Consider <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>,
    <math|A=<around*|{|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|2>\|y=0|}>> and\ 

    <\equation*>
      L:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><rsup|2><text| by
      >L<rsub|1><around*|(|<around*|(|x,y|)>|)>=<around*|(|x,2\<cdot\>y|)>
    </equation*>

    then <math|L> and <math|Id<rsub|X>> are Fréchet approximations of
    <math|Id<rsub|A>=<around*|(|Id<rsub|X>|)><rsub|\|A>> at
    <math|<around*|(|0,0|)>> but <math|L\<neq\>Id<rsub|X>>.
  </example>

  <\proof>
    Assume that <math|<around*|(|0,0|)>> is a inner point of <math|A> then
    there exist a open set <math|U> with <math|<around*|(|0,0|)>\<in\>U\<subseteq\>A>,
    hence there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|<around*|(|0,0|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|<around*|(|0,0|)>,\<delta\>|)>\<subseteq\>U\<subseteq\>A>.
    Take <math|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>\<in\>\<bbb-R\><rsup|2>>
    then as <math|<frac|\<delta\>|2>\<neq\>0> we have that
    <math|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>\<nin\>A>.
    However as <math|<around*|\<\|\|\>|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>-<around*|(|0,0|)>|\<\|\|\>><rsub|2>=<around*|\<\|\|\>|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>|\<\|\|\>><rsub|2>=max<around*|(|<around*|{|<frac|\<delta\>|2>|}>|)>=<frac|\<delta\>|2>\<less\>\<delta\>>
    it follows that <math|<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|<around*|(|0,0|)>,\<delta\>|)>\<subseteq\>U\<subseteq\>A>
    and we reach a contradiction. So we must conclude that\ 

    <\equation*>
      <around*|(|0,0|)><text| is not a inner point of >A
    </equation*>

    Let <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>\<in\>\<bbb-R\><rsup|2>>
    and <math|\<alpha\>\<in\>\<bbb-R\>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|Id<rsub|X><around*|(|<around*|(|x,y|)>+\<alpha\>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>|)>>|<cell|=>|<cell|<around*|(|x,y|)>+\<alpha\>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|X><around*|(|x,y|)>+\<alpha\>\<cdot\>Id<rsub|X><around*|(|x,y|)>>>|<row|<cell|L<around*|(|<around*|(|x,y|)>+\<alpha\>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>|)>>|<cell|=>|<cell|L<around*|(|<around*|(|x+\<alpha\>\<cdot\>x<rprime|'>,y+\<alpha\>\<cdot\>y<rprime|'>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+\<alpha\>\<cdot\>x<rprime|'>,2\<cdot\>y+\<alpha\>\<cdot\>2\<cdot\>y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x,2\<cdot\>y|)>+\<alpha\>\<cdot\><around*|(|x<rprime|'>,2\<exterior\>y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<around*|(|x,y|)>|)>+\<alpha\>\<cdot\>L<around*|(|<around*|(|x<rprime|'>,y<rprime|'>|)>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      Id<rsub|X>,L\<in\>Hom<around*|(|\<bbb-R\><rsup|2>,\<bbb-R\><rsup|2>|)>
    </equation*>

    Further

    <\equation*>
      <around*|\<\|\|\>|Id<rsub|X><around*|(|<around*|(|x,y|)>|)>|\<\|\|\>><rsub|2>=<around*|\<\|\|\>|<around*|(|x,y|)>|\<\|\|\>><rsub|2>
    </equation*>

    <\equation*>
      <around*|\<\|\|\>|Id<rsub|X><around*|(|<around*|(|x,y|)>|)>|\<\|\|\>><rsub|2>=<around*|\<\|\|\>|<around*|(|x,2\<cdot\>y|)>|\<\|\|\>><rsub|2>=max<around*|(|<around*|\||x|\|>,<around*|\||2\<cdot\>y|\|>|)>\<leqslant\>2\<cdot\>max<around*|(|<around*|\||x|\|>,<around*|\||y|\|>|)>\<leqslant\>2\<cdot\><around*|\<\|\|\>|<around*|(|x,y|)>|\<\|\|\>><rsub|2>
    </equation*>

    which proves that\ 

    <\equation*>
      Id<rsub|X>,L\<in\>L<around*|(|\<bbb-R\><rsup|2>,\<bbb-R\><rsup|2>|)>
    </equation*>

    Consider differentiability at <math|<around*|(|0,0|)>>. Let
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>A<rsub|<around*|(|00|)>>>
    with <math|<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|2>\<less\>1>
    we have <math|<around*|(|h<rsub|1>,h<rsub|2>|)>=<around*|(|h<rsub|1>,h<rsub|2>|)>+<around*|(|0,0|)>\<in\>A>
    from which it follows that <math|h<rsub|2>=0>. Then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|Id<rsub|A><around*|(|<around*|(|0,0|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-Id<rsub|A><around*|(|<around*|(|0,0|)>|)>-Id<rsub|X><around*|(|<around*|(|h<rsub|1>,h<rsub|2>|)>|)>|\<\|\|\>><rsub|2>>|<cell|\<equallim\><rsub|h<rsub|2>=0>>|<cell|<around*|\<\|\|\>|<around*|(|h<rsub|1>,0|)>-<around*|(|0,0|)>-<around*|(|h<rsub|1>,0|)>|\<\|\|\>><rsub|2>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|2>>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|<around*|(|0,0|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-L<around*|(|<around*|(|0,0|)>|)>-L<around*|(|<around*|(|h<rsub|1>,h<rsub|2>|)>|)>|\<\|\|\>><rsub|2>>|<cell|\<equallim\><rsub|h<rsub|2>=0>>|<cell|<around*|\<\|\|\>|<around*|(|h<rsub|1>,0|)>-L<around*|(|<around*|(|h<rsub|1>,0|)>|)>|\<\|\|\>><rsub|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|h<rsub|1>,0|)>-<around*|(|h<rsub|1>,0|)>|\<\|\|\>><rsub|2>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|2>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation*>
      Id<rsub|X>,L<text| are Fréchet approximations of >f<text| at
      ><around*|(|0,0|)>
    </equation*>

    However as <math|Id<rsub|X><around*|(|<around*|(|1,1|)>|)>=<around*|(|1,1|)>\<neq\><around*|(|1,2|)>=L<around*|(|<around*|(|1,1|)>|)>>
    which proves that\ 

    <\equation*>
      Id<rsub|X>\<neq\>L
    </equation*>
  </proof>

  <\example>
    <label|diff constant function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|y\<in\>Y>, <math|A\<subseteq\>X>, <math|x\<in\>A><space|1em>then we
    have that

    <\equation*>
      C<rsub|y>:A\<rightarrow\>Y<text| defined by >C<rsub|y><around*|(|x|)>=y
    </equation*>

    is Fréchet differentiable at <math|x> and\ 

    <\equation*>
      D<rsub|x>C<rsub|y>=<around*|(|C<rsub|0>|)><rsub|\|T<rsub|A><around*|(|x|)>>
    </equation*>

    If <math|A> is open or <math|x\<in\>A<rsup|0>> then by [theorem:
    <reference|diff tangent cone of open sets>, <reference|diff tangent cone
    of inner point>] <math|T<rsub|A><around*|(|x|)>=X> so that in this case\ 

    <\equation*>
      D<rsub|x>C<rsub|y>=C<rsub|0>
    </equation*>
  </example>

  <\proof>
    First <math|C<rsub|0>\<in\>L<around*|(|X,Y|)>> [see theorem:
    <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>]. Let
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\>A<rsub|x>> we\ 

    <\equation*>
      <around*|\<\|\|\>|C<rsub|y><around*|(|x+h|)>-C<rsub|y><around*|(|x|)>-C<rsub|0><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-y-0|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>

    so that <math|C<rsub|y>> is Fréchet differentiable at <math|x> with
    <math|D<rsub|x>C<rsub|y>=<around*|(|C<rsub|0>|)><rsub|\|T<rsub|A><around*|(|x|)>>>.
  </proof>

  <\example>
    <label|diff linear mappings are differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|L\<in\>L<around*|(|X,Y|)>> then <math|\<forall\>x\<in\>X> we have
    that

    <\equation*>
      L<text| is Fréchet differentiable at >x<text| with differential
      >D<rsub|x>L=L
    </equation*>
  </example>

  <\proof>
    Let <math|x\<in\>X>. Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    then we have\ 

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|x+h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>+L<around*|(|h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
    </equation*>

    which proves that <math|L> is Fréchet differentiable at <math|x>. Further
    using [theorem: <reference|diff tangent cone of open sets>]
    <math|T<rsub|A><around*|(|x|)>=X> so that
    <math|D<rsub|x>f=L<rsub|\|T<rsub|A><around*|(|x|)>>=L<rsub|\|X>=L>.
  </proof>

  <\example>
    <label|diff identity function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|A\<subseteq\>X> then <math|\<forall\>x\<in\>A> we
    have that <rigid|<math|Id<rsub|A>:A\<rightarrow\>X>> is Fréchet
    differentiable at <math|x> and

    <\equation*>
      D<rsub|x> Id<rsub|A>=<around*|(|Id<rsub|X>|)><rsub|\|T<rsub|A><around*|(|x|)>>=Id<rsub|T<rsub|A><around*|(|x|)>>
    </equation*>

    If <math|A> is open or <math|x\<in\>A<rsup|0>> then by [theorem:
    <reference|diff tangent cone of open sets>, <reference|diff tangent cone
    of inner point>] <math|T<rsub|A><around*|(|x|)>> so that in this case\ 

    <\equation*>
      D<rsub|x>Id<rsub|A>=Id<rsub|X>
    </equation*>
  </example>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then we have for
    <math|h\<in\>A<rsub|x>> that\ 

    <\equation*>
      <around*|\<\|\|\>|Id<rsub|U><around*|(|x+h|)>-Id<rsub|U><around*|(|x|)>-Id<rsub|X><around*|(|h|)>|\<\|\|\>>=<around*|\<\|\|\>|x+h-x-h|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
    </equation*>
  </proof>

  We show now that for equivalent norms differentiability is independent of
  the chosen norm.

  <\lemma>
    <label|lemma 16.37.1>Let <math|X> be a set and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> are two equivalent norms on
    <math|X>, <math|A\<subseteq\>X> and <math|a\<in\>A> then
    <math|S<rsub|A><around*|(|a|)>> is independent of the norm.
  </lemma>

  <\proof>
    As <math|T<rsub|A><around*|(|A|)>> is defined in terms of limits [see
    definition: <reference|diff tangent cone>] and limits are independent of
    the norm [see theorem: <reference|limit is independent of the norm>] the
    lemma follows, <math|T<rsub|A><around*|(|a|)>> is independent of the
    norm. Hence <math|S<rsub|A><around*|(|a|)>=<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>>
    is independent of the norm.
  </proof>

  <\theorem>
    <label|diff equivalent norms>Let <math|X,Y> be vector spaces over
    <math|\<bbb-K\>> with equivalent norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    on <math|X> and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> on <math|Y>,
    <math|x\<in\>A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> then we have
    if

    <\equation*>
      f:X\<rightarrow\>Y<text| is Fréchet differentiable at >x<text| using
      ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>
    </equation*>

    <\equation*>
      <text|then>
    </equation*>

    <\equation*>
      f:X\<rightarrow\>Y<text| is Fréchet differentiable function >x<text|
      using ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>
    </equation*>

    and the differentials are independent of the norms.
  </theorem>

  <\proof>
    As the norms are equivalent we have by [theorem: <reference|normed norm
    equivalence condition>] that there exists
    <math|\<alpha\><rsub|X>,\<alpha\><rsub|Y>,\<beta\><rsub|X>,\<beta\><rsub|Y>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>x\<in\>X> and <math|\<forall\>y\<in\>Y> we have

    <\equation*>
      \<alpha\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>><text|
      and >\<alpha\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>
    </equation*>

    Further by [lemma: <reference|lemma 16.37.1>]

    <\equation>
      <label|eq 16.19.3.1>T<rsub|A><around*|(|x|)><text| is the same set
      independent of the norms used>
    </equation>

    As \ the norms <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>
    are equivalent we have that\ 

    <\equation*>
      L<around*|(|X,Y|)><text| is independent of the chosen norm>
    </equation*>

    As <math|f> is Fréchet differentiable at <math|x> using
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    there exist a <math|L\<in\>L<around*|(|X,Y|)>> such that for
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>\<less\>\<delta\><rprime|'>>
    we have

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>
    </equation*>

    Take <math|\<delta\>=<frac|\<delta\><rprime|'>|\<beta\><rsub|X>>> then
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>\<less\>\<delta\>> we
    have <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>\<less\>\<delta\>\<cdot\>\<beta\><rsub|X>=\<delta\><rprime|'>>
    so that from the above we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><frac|\<varepsilon\>|\<beta\><rsub|Y>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>
    </equation*>

    Finally as <math|S<rsub|A><around*|(|x|)>> is independent of the chosen
    norms we have that <math|D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>>
    is the same for the different norms.
  </proof>

  <\theorem>
    <label|diff differentiability is a local property>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A,B\<subseteq\>X> with <math|B\<subseteq\>A>,
    <math|x\<in\>B> and \ <math|<rigid|f:A\<rightarrow\>Y>> a function then
    we have\ 

    <\enumerate>
      <item>If <math|f> is Fréchet differentiable at <math|x> then
      <math|f<rsub|\|B>> is Fréchet differentiable at <math|x> and\ 

      <\equation*>
        D<rsub|x>f<rsub|\|B>=<around*|(|D<rsub|x>f|)><rsub|\|S<rsub|B><around*|(|x|)>>
      </equation*>

      <item>If additional <math|x\<in\>B<rsup|0>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<text|f is Fréchet differentiable
        at >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<rsub|\|B><text|
        is Fréchet differentiable at >x>|<cell|>>>>
      </eqnarray*>

      and\ 

      <\equation*>
        D<rsub|x>f<rsub|\|B>=D<rsub|x>f\<in\>L<around*|(|X,Y|)>
      </equation*>

      <\note>
        If <math|B> is a open set then by [theorem: <reference|topology open
        set and interior>] <math|B=B<rsup|0>> so that <math|x\<in\>B>
        automatically implies <math|x\<in\>B<rsup|0>>.
      </note>
    </enumerate>

    \;
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f> is differentiable at <math|x> there exist a
      <math|L\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>
        f|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      and\ 

      <\equation*>
        D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>
      </equation*>

      Let <math|h\<in\>B<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then <math|x+h\<in\>B\<subseteq\>A\<Rightarrow\>x\<in\>A<rsub|x>>.
      Hence we have that\ 

      <\equation*>
        <around*|\<\|\|\>|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|x+h,x\<in\>B><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      which proves that <math|f<rsub|\|B>> is Fréchet differentiable at
      <math|x> with differential

      <\equation*>
        D<rsub|x>f<rsub|\|W>=L<rsub|\|S<rsub|B><around*|(|x|)>>
      </equation*>

      Using [theorem: <reference|diff SA(a)>] we have that
      <math|S<rsub|B><around*|(|x|)>\<subseteq\>S<rsub|A><around*|(|x|)>> so
      that\ 

      <\equation*>
        <around*|(|D<rsub|x>f|)><rsub|\|S<rsub|B><around*|(|x|)>>=<around*|(|L<rsub|\|S<rsub|A><around*|(|x|)>>|)><rsub|\|S<rsub|B><around*|(|x|)>>\<equallim\><rsub|<text|[theorem:
        <reference|function restricted function
        properties>]>>L<rsub|\|S<rsub|B><around*|(|x|)>>=D<rsub|x>f<rsub|\|W>
      </equation*>

      <item>We have:\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Using (1) it follows that
        <math|f<rsub|\|B>> is Fréchet differentiable at <math|x> with
        <math|D<rsub|x>f<rsub|\|W>=<around*|(|D<rsub|x>f|)><rsub|\|S<rsub|B><around*|(|x|)>>>.
        As <math|x\<in\>B<rsup|0>> it follows from [theorem: <reference|diff
        SA(a)>] that <math|S<rsub|B><around*|(|x|)>=X> hence

        <\equation*>
          D<rsub|x>f<rsub|\|W>=<around*|(|D<rsub|x>f|)><rsub|\|S<rsub|B><around*|(|x|)>>=<around*|(|D<rsub|x>f|)><rsub|\|X>=D<rsub|x>f
        </equation*>

        <item*|<math|\<Leftarrow\>>>As <math|x\<in\>B<rsup|0>> we have by
        [definition: <reference|topology interior of a set>] that there exist
        a open set <math|U> such that <math|x\<in\>U\<subseteq\>B>, hence,
        using [theorem: <reference|normed space and open sets>], there exist
        a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that

        <\equation*>
          x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>B
        </equation*>

        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As
        <math|f<rsub|\|W>> is Fréchet differentiable at <math|x> there exist
        a <math|L\<in\>L<around*|(|X,Y|)>> such that there exist a
        <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
        <math|\<forall\>h\<in\>B<rsub|x>> with
        <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
        we have\ 

        <\equation*>
          <around*|\<\|\|\>|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
        </equation*>

        and\ 

        <\equation*>
          D<rsub|x>f<rsub|\|B>=L<rsub|\|S<rsub|B><around*|(|x|)>>
        </equation*>

        Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
        then we have <math|\<forall\>h\<in\>A<rsub|x>> with
        <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> that

        <\equation*>
          <around*|\<\|\|\>|<around*|(|x+h|)>-x<rsub|x>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>\<Rightarrow\>x+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>U\<subseteq\>B\<Rightarrow\>x+h\<in\>B\<Rightarrow\>h\<in\>B<rsub|x>
        </equation*>

        and\ 

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|x,x+h\<in\>B><around*|\<\|\|\>|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>-L<around*|(|x|)>|\<\|\|\>><rsub|A>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
        </equation*>

        which proves that <math|f> is Fréchet differentiable at <math|x> with\ 

        <\equation*>
          D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>
        </equation*>

        As \ <math|x\<in\>B<rsup|0>> it follows from [theorem:
        <reference|diff SA(a)>] that <math|X=S<rsub|B><around*|(|x|)><below|\<subseteq\>|<text|[theorem:
        <reference|diff SA(a)>]>>S<rsub|A><around*|(|x|)>\<subseteq\>X> hence

        <\equation*>
          D<rsub|x>f<rsub|\|W>=L<rsub|\|S<rsub|B><around*|(|x|)>>=L=L<rsub|\|S<rsub|A><around*|(|x|)>>=D<rsub|x>f
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|diff differentiability is a local property (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A<rsub|1>,A<rsub|2>\<subseteq\>X>,
    \ <math|B\<subseteq\>A<rsub|1><big|cap>A<rsub|2>>,
    <math|x\<in\>B<rsup|0>> and <math|f:A<rsub|1>\<rightarrow\>Y>,
    <math|g:A<rsub|2>\<rightarrow\>Y> functions such that
    <math|\<forall\>y\<in\>B> we have <math|f<around*|(|y|)>=g<around*|(|y|)>>.
    Then if <math|f> is Fréchet differentiable at <math|x> it follows that
    <math|g> is also Fréchet differentiable at <math|x> and
    <math|D<rsub|x>f=D<rsub|x>g>.

    <\note>
      If <math|B> is a open set then by [theorem: <reference|topology open
      set and interior>] <math|B=B<rsup|0>> so that <math|x\<in\>B>
      automatically implies <math|x\<in\>B<rsup|0>>.
    </note>
  </corollary>

  <\proof>
    As <math|\<forall\>y\<in\>B> we have <math|f<around*|(|y|)>=g<around*|(|y|)>>
    it follows that <math|f<rsub|\|B>=g<rsub|\|B>>. As <math|f> is Fréchet
    differentiable at <math|x\<in\>B<rsup|0>> it follows from [theorem:
    <reference|diff differentiability is a local property>(2)] that
    <math|f<rsub|\|B>> is Fréchet differentiable at <math|x> with
    <math|<rigid|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>>. As
    <math|f<rsub|\|B>=g<rsub|\|B>> we have that <math|g<rsub|\|B>> is Fréchet
    differentiable at <math|x> with <math|D<rsub|x>g<rsub|\|B>=D<rsub|x>f>.
    Hence using [theorem: <reference|diff differentiability is a local
    property>(2)] again it follows that <math|g> is Fréchet differentiable at
    <math|x> with <math|D<rsub|x>g=D<rsub|x>g<rsub|\|B>=D<rsub|x>f>.
  </proof>

  We look now at alternative definitions of Fréchet differentiability at a
  point, first we introduce the concept of a <math|\<varepsilon\>>-mapping.

  <\definition>
    <label|diff e-mapping><index|<math|\<varepsilon\>>-mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> and <math|0\<in\>A> then a
    <with|font-series|bold|<math|\<varepsilon\>>-mapping> is a function
    <math|\<varepsilon\>:A\<rightarrow\>Y> which is continuous at
    <math|0\<in\>A> [using the subspace topology on <math|A>] and satisfies
    <math|\<varepsilon\><around*|(|0|)>=0>.
  </definition>

  <\theorem>
    <label|diff differentiability alternative definitions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> \ and
    <math|f:A\<rightarrow\>Y> a function then the following are equivalent.

    <\enumerate>
      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>> such that <math|L>
      is a Fréchet approximation of <math|f> at <math|x> [see definition:
      <reference|diff Frechet approximation>]

      <item>There exist <math|>a <math|L\<in\>L<around*|(|X,Y|)>> and a
      <math|\<varepsilon\>>-mapping <math|\<varepsilon\>:A<rsub|x>\<rightarrow\>Y>
      such that <math|\<forall\>h\<in\>A<rsub|x>> we have\ 

      <\equation*>
        f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>\<in\>\<bbb-R\><rsup|+>>
      <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>y\<in\>A\\<around*|{|x|}>> with
      <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\><around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>A<rsub|x>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|0\<less\><around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>> and
      <math|<below|lim|i\<rightarrow\>\<infty\>>h<rsub|i>=0> we have\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>=0
      </equation*>
    </enumerate>

    Hence <math|f> is Fréchet differentiable at <math|x> if either
    <math|1,2,3,4> or <math|5> is true and in that case we have that\ 

    <\equation*>
      D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|L=D<rsub|x>f\<in\>L<around*|(|X,Y|)>>
      and define

      <\equation*>
        \<varepsilon\>:A<rsub|x>\<rightarrow\>Y<text| by
        >\<varepsilon\><around*|(|h|)>=<choice|<tformat|<table|<row|<cell|0<text|
        if >h=0>>|<row|<cell|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>><text|
        if >h\<in\>A<rsub|x>\\<around*|{|0|}>>>>>>
      </equation*>

      then we have <math|\<forall\>h\<in\>A<rsub|x>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0<text|
        if >h=0>>|<row|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)><text|
        if >h\<in\>A<rsub|x>\\<around*|{|0|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|f<around*|(|x+0|)>-f<around*|(|x|)>-L<around*|(|0|)><text|
        if >h=0>>|<row|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)><text|
        if >h\<in\>A<rsub|x>\\<around*|{|0|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<forall\>h\<in\>U<rsub|x><text| we have
        >f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      Rest us to prove that <math|\<varepsilon\>> is continuous at <math|0>.
      Let <math|\<zeta\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is Fréchet
      differentiable there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<zeta\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      Hence we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>\<less\>\<zeta\>
        if h=0>>|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<zeta\>
        if h\<in\>A<rsub|x>\\<around*|{|0|}>>>>>>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<zeta\>>>>>
      </eqnarray*>

      which by [theorem: <reference|continuity in normed subspace>] proves
      that <math|\<varepsilon\>> is continuous at <math|0> in the subspace
      topology of <math|A<rsub|x>>.

      <item*|<math|2\<Rightarrow\>3>>Let <math|L\<in\>L<around*|(|X,Y|)>> and
      <math|\<varepsilon\>:A<rsub|x>\<rightarrow\>Y> a
      <math|\<varepsilon\>>-mapping such that
      <math|\<forall\>h\<in\>A<rsub|x>>\ 

      <\equation*>
        f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      Take <math|\<zeta\>\<in\>\<bbb-R\><rsup|+>>. As
      <math|\<varepsilon\>:A<rsub|x>\<rightarrow\>Y> is continuous we can use
      [theorem: <reference|continuity in normed subspace>] to find a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h-0|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|Y>\<less\>\<zeta\>>.
      Hence if <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>=<frac|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>=\<varepsilon\><around*|(|h|)>\<less\>\<zeta\>
      </equation*>

      <item*|<math|3\<Rightarrow\>1>>Let <math|L\<in\>L<around*|(|X,Y|)>> be
      such that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
      exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> so that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      Now <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      two cases to consider:

      <\description>
        <item*|<math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=0>>Then <math|h=0>
        and\ 

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<around*|(|x+0|)>-f<around*|(|x|)>-L<around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=\<varepsilon\>\<cdot\>0=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
        </equation*>

        <item*|<math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>Then\ 

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>
        </equation*>
      </description>

      so that in all cases we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      Hence <math|L> is a Fréchet approximation of <math|f> at <math|x>.

      <item*|<math|3\<Rightarrow\>4>>Let <math|L\<in\>L<around*|(|X,Y|)>> be
      such that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
      exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> so that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation>
        <label|eq 16.1.177><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation>

      Let <math|y\<in\>A\\<around*|{|x|}>\<Rightarrow\>y-x\<in\>A<rsub|x>>
      with \ <math|0\<less\><around*|\<\|\|\>|y-x|\<\|\|\>>\<less\>\<delta\><rsub|>>
      then we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>=<frac|<around*|\<\|\|\>|f<around*|(|x+<around*|(|y-x|)>|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|<around*|(|y-x|)>|\<\|\|\>><rsub|X>>\<less\><rsub|<text|[eq
        <reference|eq 16.1.177>]>>\<varepsilon\>
      </equation*>

      <item*|<math|4\<Rightarrow\>3>>Let <math|L\<in\>L<around*|(|X,Y|)>> be
      such that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>\<in\>\<bbb-R\><rsup|+>>
      <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>y\<in\>A\\<around*|{|x|}>> with
      <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      Hence if <math|h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have, if we take <math|y=x+h>, that
      <math|0\<less\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      and <math|y\<in\>A\\<around*|{|x|}>> so that\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>=<frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      <item*|<math|3\<Rightarrow\>5>>Let <math|<around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>A<rsub|x>>
      be a sequence with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|0\<less\><around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>> such that
      <math|<below|lim|i\<rightarrow\>\<infty\>>h<rsub|i>=0>. Take
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by (3) there exist a
      <math|L\<in\>L<around*|(|X,Y|)>> and a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      As <math|<below|lim|i\<rightarrow\>\<infty\>>h<rsub|i>=0> there exist a
      <math|N\<in\>\<bbb-N\>> such that <math|\<forall\>i\<geqslant\>N> we
      have that <math|0\<less\><around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h<rsub|i>-0|\<\|\|\>><rsub|X>\<less\>\<delta\>>,
      so that\ 

      <\equation*>
        <around*|\||<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>-0|\|>=<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      This proves that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>=0
      </equation*>

      <item*|<math|5\<Rightarrow\>3>>Assume that <math|<around*|(|3|)>> is
      false. Then given a <math|L\<in\>L<around*|(|X,Y|)>> there exist a
      <math|\<varepsilon\><rsub|0>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+>> there exist a
      <math|h\<in\>A<rsub|x>> with <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      such that

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<gtr\>\<varepsilon\><rsub|0>
      </equation*>

      Using [theorem: <reference|choice function generating>] it follows that
      <math|\<forall\>n\<in\>\<bbb-N\>> we have, as
      <math|<frac|1|n>\<in\>\<bbb-R\><rsup|+>>, that there exist a
      <math|h<rsub|n>\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>\<less\><frac|1|n>>
      such that\ 

      <\equation>
        <label|eq 16.2.177><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<gtr\>\<varepsilon\><rsub|0>
      </equation>

      Now using [example: <reference|limit 1/(a+i)>] together with [theorem:
      <reference|limit sequence dominated by a sequence converting to 0>] it
      follows that

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>h<rsub|n>=0
      </equation*>

      Hence by (5) we have

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>=0
      </equation*>

      So there exist a <math|N\<in\>\<bbb-N\>> such that <math|>

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|N>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|N>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|N>|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\><rsub|0>
      </equation*>

      contradicting [eq: <reference|eq 16.2.177>]. Hence the assumption is
      wrong and <math|<around*|(|3|)>> follows.
    </description>
  </proof>

  The following corollary will be used later in the proof of the inverse
  function theorem.

  <\corollary>
    <label|diff differentiability alternative definitions (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function then the following are equivalent:\ 

    <\enumerate>
      <item><math|f> is Fréchet differentiable at <math|x>

      <item>There exist <math|L\<in\>L<around*|(|X,Y|)>>, a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U>
      and a <math|\<varepsilon\>>-mapping
      <math|\<varepsilon\>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<rightarrow\>Y>
      such that\ 

      <\equation*>
        \<forall\>h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)><text|
        >f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      Further if (1) or (2) is true then <math|D<rsub|x>f=L>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As <math|U> is open there exist by
      [theorem: <reference|normed space and open sets>] a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.25.6>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U
      </equation>

      Further as <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
      is open we have by [theorem: <reference|diff SA(a)>] that\ 

      <\equation>
        <label|eq 16.26.6>S<rsub|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x|)>=X<rsub|>
      </equation>

      Using the locality theorem [theorem: <reference|diff differentiability
      is a local property>(2)] it follows that
      <math|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>>x><around*|(|x,\<delta\>|)>>>
      is Fréchet differentiable at <math|x> and

      <\equation>
        <label|eq 16.27.6>D<rsub|x>f=D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
      </equation>

      Using the previous theorem [theorem: <reference|diff differentiability
      alternative definitions>] there exist a
      <math|L\<in\>L<around*|(|X,Y|)>> and a <math|\<varepsilon\>>-mapping\ 

      <\equation*>
        \<varepsilon\>:<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<equallim\><rsub|<text|[theorem:
        <reference|diff Bx(x,d)>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<rightarrow\>Y
      </equation*>

      \ such that <math|\<forall\>h\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<equallim\><rsub|<text|[theorem:
      <reference|diff Bx(x,d)>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>>|<cell|=>|<cell|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x+h|)>-f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x.\<delta\>|)>><around*|(|x|)>-L<around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)><rsub|>>>>>
      </eqnarray*>

      and\ 

      <\equation*>
        D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>=L<rsub|\|S<rsub|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x|)>>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.26.6>]>>L<rsub|\|X>=L
      </equation*>

      which combined with [eq: <reference|eq 16.27.6>] gives\ 

      <\equation*>
        D<rsub|x>f=L
      </equation*>

      <item*|<math|2\<Rightarrow\>1>>First, as there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U>
      and <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
      is open, we have by [theorem: <reference|diff SA(a)>] that\ 

      <\equation>
        <label|eq 16.28.1>S<rsub|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x|)>=X<rsub|>
      </equation>

      As there exist a <math|L\<in\>L<around*|(|X,Y|)>> and a
      <math|\<varepsilon\>>-mapping <math|\<varepsilon\>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<equallim\><rsub|<text|[theorem:
      <reference|diff Bx(x,d)>]>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<rightarrow\>Y>
      such that for every <math|h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<equallim\><rsub|<text|[theorem:
      <reference|diff Bx(x,d)>]>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>>
      we have

      <\equation*>
        f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x+h|)>-f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x.\<delta\>|)>><around*|(|x|)>-L<around*|(|h|)>=f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      it follows from [theorem: <reference|diff differentiability alternative
      definitions>] that <math|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>>
      is Fréchet differentiable at <math|x> with
      <math|<rigid|D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>>=L<rsub|\|S<rsub|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x|)>><below|=|<text|[eq:
      <reference|eq 16.28.1>]>>L<rsub|\|X>=L>. Using the locality theorem
      [see theorem: <reference|diff differentiability is a local property>]
      it follows that <math|f> is Fréchet differentiable at <math|x> with
      <math|D<rsub|x>f=D<rsub|x>D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>=L>.
    </description>
  </proof>

  The following theorem is a important result because it shows that Fréchet
  differentiability implies continuity.

  <\theorem>
    <label|diff differentiable function is continuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function that is Fréchet differentiable at
    <math|x> then <math|f> is continuous at <math|x>.\ 

    <\note>
      So if <math|f> is Fréchet differentiable on <math|A> then
      <math|\<forall\>x\<in\>A> <math|f> is Fréchet differentiable at
      <math|x> hence continuous at <math|x> proving that in this case that
      <math|f> is a continuous function.
    </note>
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is Fréchet
    differentiable at <math|x> there exist a <math|L\<in\>L<around*|(|X,Y|)>>
    such that there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>h\<in\>A<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

    <\equation>
      <label|eq 16.3.177><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation>

    As <math|L\<in\>L<around*|(|X,Y|)>> we have [see theorem:
    <reference|continuity operator norm (1)>] that

    <\equation>
      <label|eq 16.4.177>\<forall\>h\<in\>X<text|
      <math|<around*|\<\|\|\>|L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>
    </equation>

    Define now <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,1,<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+1|)>>|)>\<in\>\<bbb-R\><rsup|+>>
    then for every <math|y\<in\>A> with <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have <math|y-x\<in\>A<rsub|x>> [as
    <math|<around*|(|y-x|)>+x=y\<in\>A>] and
    \ <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<leqslant\>\<delta\><rsub|1>,1,<frac|\<varepsilon\>|2\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+1>>.
    Using [eq: <reference|eq 16.3.177>] we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x+<around*|(|y-x|)>|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>>>>>
    </eqnarray*>

    and by [eq: <reference|eq 16.4.177>] it follows that\ 

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+1|)>>\<less\><frac|\<varepsilon\>|2>
    </equation*>

    Hence we have <math|\<forall\>y\<in\>A> with
    <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>><space|1em>that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>+L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    So by [theorem: <reference|continuity in normed subspace>] it follows
    that <math|f> is continuous at <math|x>.
  </proof>

  We look now at \ the relation between the Fréchet differential of a
  function and the derivative of a function. First we consider the uniqueness
  criteria, for derivatives we use limit points and for differentials we use
  <math|S<rsub|A><around*|(|x|)>=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>.

  <\lemma>
    <label|lemma 16.50.1>For the vector space <math|\<bbb-R\>> over
    <math|\<bbb-R\>> we have that <math|\<bbb-R\>=span<around*|(|\<bbb-R\><rsup|->|)>=span<around*|(|\<bbb-R\><rsup|+>|)>>
  </lemma>

  <\proof>
    First note that the only sub-spaces of
    <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> are
    <math|<around*|{|0|}>> and <math|\<bbb-R\>> [see theorem:
    <reference|vector space sub-space of a field>]. Second
    <math|span*<around*|(|\<bbb-R\><rsup|->|)>>,
    <math|span<around*|(|\<bbb-R\><rsup|+>|)>> are sub-spaces of
    <math|\<bbb-R\>> [see theorem: <reference|linear span is a sub-space>]
    and <math|1\<in\>span<around*|(|\<bbb-R\><rsup|+>|)>>,
    <math|-1\<in\>span<around*|(|\<bbb-R\><rsup|->|)>>. Hence we must have
    that <math|\<bbb-R\>=span<around*|(|\<bbb-R\><rsup|->|)>=span<around*|(|\<bbb-R\><rsup|+>|)>>.
  </proof>

  <\theorem>
    <label|diff tangent cone and limit point>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers with the canonical norm
    <math|<around*|\|||\|>>, <math|A\<subseteq\>\<bbb-R\>> and <math|x> a
    limit point of <math|A> then <math|\<bbb-R\>=S<rsub|A><around*|(|x|)>>.
  </theorem>

  <\proof>
    Let <math|x\<in\>\<bbb-R\>> be a limit point of <math|A> then
    <math|\<forall\>n\<in\>\<bbb-N\>>we have that
    <math|B<rsub|<around*|\|||\|>><around*|(|x,<frac|1|n>|)><big|cap><around*|(|A\\<around*|{|x|}>|)>\<neq\>\<varnothing\>>,
    hence there exist by the Axiom of Choice \ [see theorem:
    <reference|choice axiom of choice equivalences (1)>] a
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>> such that

    <\equation>
      <label|eq 16.23.1>\<forall\>n\<in\>\<bbb-N\><text|
      >x<rsub|n>\<in\>B<rsub|<around*|\|||\|>><around*|(|x,<frac|1|n>|)><big|cap><around*|(|A\\<around*|{|x|}>|)>\<Rightarrow\>x-<frac|1|n>\<less\>x<rsub|n>\<less\>x+<frac|1|n>\<wedge\>x<rsub|n>\<neq\>x
    </equation>

    Take <math|L=<around*|{|n\<in\>\<bbb-N\>\|x<rsub|n>\<less\>x|}>> and
    <math|R=<around*|{|n\<in\>\<bbb-N\>\|x\<less\>x<rsub|n>|}>> As
    <math|\<forall\>n\<in\>\<bbb-N\>> <math|x<rsub|n>\<neq\>x> we have
    <math|\<bbb-N\>=L<big|cup>R> so that we can not have that <math|L> and
    <math|R> are finite [see theorems: <reference|union of two finite sets is
    finite>, <reference|denumerable sets are infinite>] Hence we have either:

    <\description>
      <item*|L is infinite and R is infinite>Then
      <math|\<forall\>k\<in\>\<bbb-N\>> <math|A<rsub|k>=<around*|{|n\<in\>R\|n\<gtr\>k|}>\<neq\>\<varnothing\>>
      [if <math|A<rsub|k>=\<varnothing\>> then <math|\<forall\>n\<in\>R> we
      have <math|n\<leqslant\>k> so that <math|R\<subseteq\><around*|{|1,\<ldots\>,k|}>>
      a finite set from which it follows from [theorem: <reference|subset of
      finite sets>] that <math|R> is finite contradicting the fact that
      <math|R> is finite]. Using the Axiom of Choice \ [see theorem:
      <reference|choice axiom of choice equivalences (1)>] there exist a
      <math|<around*|{|n<rsub|k>|}><rsub|k\<in\>\<bbb-N\>>> such that

      <\equation>
        <label|eq 16.24.2>\<forall\>k\<in\>\<bbb-N\><text|
        >n<rsub|k>\<in\>A<rsub|k>\<subseteq\>R\<Rightarrow\>k\<less\>n<rsub|k>\<wedge\>x\<less\>x<rsub|n<rsub|k>>
      </equation>

      Define now

      <\equation>
        <label|eq 16.24.1><around*|{|y<rsub|k>|}><rsub|k\<in\>\<bbb-N\>>\<subseteq\>A\\<around*|{|x|}><text|
        by >y<rsub|k>=x<rsub|n<rsub|k>><below|\<in\>|<text|[eq: <reference|eq
        16.23.1>]>>A\\<around*|{|x|}>\ 
      </equation>

      Using [eq: <reference|eq 16.23.1>, <reference|eq 16.24.2>] it follows
      that

      <\equation>
        <label|eq 16.25.1>\<forall\>k\<in\>\<bbb-N\><text|
        >x\<less\>x<rsub|n<rsub|k>>\<less\>x+<frac|1|n<rsub|k>>\<Rightarrow\>x\<less\>y<rsub|k>\<less\>x+<frac|1|n<rsub|k>>
        <below|\<less\>|k\<less\>n<rsub|k>>x+ <frac|1|k>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist a
      <math|N\<in\>\<bbb-N\>> such that <math|<frac|1|N>\<less\>\<varepsilon\>>
      [see theorem: <reference|complex Archimedean property consequence (1)>]
      so that if <math|<rigid|k\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>>
      then <math|<around*|\||x-y<rsub|k>|\|>=y<rsub|k>-x\<less\>x+<frac|1|k>-x=<frac|1|k>\<less\><frac|1|N>\<less\>\<varepsilon\>>
      which proves that\ 

      <\equation>
        <label|eq 16.26.1>x=<below|lim|k\<rightarrow\>\<infty\>>y<rsub|n><text|
        exist >
      </equation>

      Let <math|v\<in\>\<bbb-R\><rsup|+>> and define
      <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\>>
      by <math|v<rsub|k>=v> then we have [see example: <reference|limit
      constant sequence>]

      <\equation>
        <label|eq 16.27.1>v=<below|lim|k\<rightarrow\>\<infty\>>v<rsub|n><text|
        exist>
      </equation>

      Further define

      <\equation>
        <around*|{|\<lambda\><rsub|k>|}><rsub|k\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+><text|
        by >\<lambda\><rsub|k>=min<around*|(|<around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\<gtr\>0<rsub|>
      </equation>

      \;

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist by
      [eq: <reference|eq 16.26.1>] a <math|N\<in\>\<bbb-N\>> such that
      <math|\<forall\>k\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
      <math|<rigid|<around*|\||y<rsub|k>-x|\|>\<less\>v\<cdot\>\<varepsilon\>>>,
      hence we have <math|<around*|\||\<lambda\><rsub|k>-0|\|>=<around*|\||\<lambda\><rsub|k>|\|>=\<lambda\><rsub|k>\<leqslant\><frac|<around*|\||y<rsub|k>-x|\|>|v>\<less\><frac|\<varepsilon\>\<cdot\>v|v>=\<varepsilon\>>
      which proves that\ 

      <\equation>
        <label|eq 16.29.1><below|lim|k\<rightarrow\>\<infty\>>\<lambda\><rsub|k>=0
      </equation>

      Let <math|k\<in\>\<bbb-N\>> then we have then we have\ 

      <\equation*>
        \<lambda\><rsub|k+1>=min<around*|(|<around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>|)><below|\<leqslant\>|<text|[theorem:
        <reference|order inclusion and greatest and least
        element>]>>min<around*|(|<around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>=\<lambda\><rsub|k>
      </equation*>

      Further as <math|\<lambda\><rsub|k>=min<around*|(|<around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\<Rightarrow\>\<lambda\><rsub|k>\<in\><around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>>
      there exist a <math|l\<in\><around*|{|1,\<ldots\>,k|}>> such that
      <math|\<lambda\><rsub|k>=<frac|y<rsub|l>-x<rsub|>|v>> so that
      <math|x+\<lambda\><rsub|k>\<cdot\>v<rsub|k>=x+<around*|(|<frac|y<rsub|l>-x<rsub|>|v>|)>\<cdot\>v=y<rsub|l>\<in\>A>.
      Hence \ 

      <\equation>
        <label|eq 16.30.1>\<forall\>k\<in\>\<bbb-N\><text| we have
        >\<lambda\><rsub|k+1>\<leqslant\>\<lambda\><rsub|k><text| and
        >x+\<lambda\><rsub|k>\<cdot\>v<rsub|k>\<in\>A
      </equation>

      From [eqs: <reference|eq 16.26.1>, <reference|eq 16.27.1>,
      <reference|eq 16.29.1> and <reference|eq 16.30.1>] it follows, using
      the definition of <math|T<rsub|A><around*|(|x|)>> [see definition:
      <reference|diff tangent cone>] that
      <math|v\<in\>T<rsub|A><around*|(|x|)>>. As
      <math|v\<in\>\<bbb-R\><rsup|+>> was chosen arbitrary it follows that\ 

      <\equation*>
        \<bbb-R\><rsup|+>\<subseteq\>T<rsub|A><around*|(|x|)>
      </equation*>

      Finally\ 

      <\equation*>
        \<bbb-R\><below|=|<text|[lemma: <reference|lemma
        16.50.1>]>>span<around*|(|\<bbb-R\><rsup|+>|)><below|\<subseteq\>|<text|[theorem:
        <reference|linear span subsets>]>>span<around*|(|T<rsub|A><around*|(|x|)>|)>\<subseteq\>\<bbb-R\>
      </equation*>

      from which it follows that\ 

      <\equation*>
        \<bbb-R\>=span<around*|(|\<bbb-R\><rsup|+>|)>
      </equation*>

      <item*|<math|R<text| is finite and L is infinite>>>Take then
      <math|N=max<around*|(|R<big|cup><around*|{|1|}>|)>> then we must have
      <math|\<forall\>n\<in\>\<bbb-N\>> with <math|n\<gtr\>N> that
      <math|n\<nin\>R> so as <math|\<bbb-N\>=L<big|cup>R> we have\ 

      <\equation>
        <label|eq 16.32.2>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text|
        >n\<in\>L\<Rightarrow\>x<rsub|n>\<less\>x
      </equation>

      Define

      <\equation*>
        <around*|{|y<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>A\\<around*|{|x|}><text|
        by >y<rsub|n>=x<rsub|N+n><below|\<in\>|<text|[eq: <reference|eq
        16.23.1>]>>A\\<around*|{|x|}>
      </equation*>

      Using [eq: <reference|eq 16.23.1>] and [eq: <reference|eq 16.32.2>] we
      have then\ 

      <\equation>
        <label|eq 16.31.1>\<forall\>n\<in\>\<bbb-N\> we have
        x-<frac|1|N+n>\<less\>x<rsub|n+N>\<less\>x\<Rightarrow\>x-<frac|1|N+n>\<less\>y<rsub|n>\<less\>x
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist a
      <math|K\<in\>\<bbb-N\>> such that <math|<frac|1|K>\<less\>\<varepsilon\>>.
      Now for <math|n\<in\><around*|{|K,\<ldots\>,\<infty\>|}>> we have
      <math|<around*|\||x-y<rsub|n>|\|>=x-y<rsub|n>\<less\>x+<frac|1|N+n>-x=<frac|1|N+n>\<less\><frac|1|n>\<less\><frac|1|K>\<less\>\<varepsilon\>>,
      which proves that\ 

      <\equation>
        <label|eq 16.32.1>x=<below|lim|n\<rightarrow\>\<infty\>>y<rsub|n><text|
        exist>
      </equation>

      Let <math|v\<in\>\<bbb-R\><rsup|->> [so that
      <math|<with|font-series|bold|-v\<in\>\<bbb-R\><rsup|+>>>] and define
      <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\>>
      by <math|v<rsub|k>=v> then we have [see example: <reference|limit
      constant sequence>] that

      <\equation>
        <label|eq 16.33.1>v=<below|lim|k\<rightarrow\>\<infty\>>v<rsub|n><text|
        exist>
      </equation>

      Further define\ 

      <\equation>
        <around*|{|\<lambda\><rsub|k>|}><rsub|k\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+><text|
        by >\<lambda\><rsub|k>=min<around*|(|<around*|{|<frac|x-y<rsub|i>|-v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\<gtr\>0<rsub|>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by [eq:
      <reference|eq 16.32.1>] there exist a <math|K\<in\>\<bbb-N\>> such that
      <math|\<forall\>k\<in\><around*|{|K,\<ldots\>,\<infty\>|}>> we have
      <math|x-y<rsub|k>=<around*|\||y<rsub|k>-x|\|>\<less\>\<varepsilon\>\<cdot\><around*|(|-v|)>>
      hence <math|<around*|\||\<lambda\><rsub|k>-0|\|>=\<lambda\><rsub|k>\<leqslant\><frac|x-y<rsub|k>|-v>\<less\><frac|\<varepsilon\>\<cdot\><around*|(|-v|)>|-v>=\<varepsilon\>>
      which proves that\ 

      <\equation>
        <label|eq 16.35.1><below|lim|k\<rightarrow\>\<infty\>>\<lambda\><rsub|k>=0
        exists
      </equation>

      Let <math|n\<in\>\<bbb-N\>> then we have that\ 

      <\equation*>
        \<lambda\><rsub|k+1>=min<around*|(|<around*|{|<frac|x-y<rsub|i>|-v>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>|)><below|\<leqslant\>|<text|[theorem:
        <reference|order inclusion and greatest and least
        element>]>>min<around*|(|<around*|{|<frac|x-y<rsub|i>|-v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>=\<lambda\><rsub|k>
      </equation*>

      Further as <math|\<lambda\><rsub|k>=min<around*|(|<around*|{|<frac|x-y<rsub|i>|-v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\<Rightarrow\>\<lambda\><rsub|k>\<in\><around*|{|<frac|x-y<rsub|i>|-v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>>
      there exist a <math|l\<in\><around*|{|1,\<ldots\>,k|}>> such that
      <math|\<lambda\><rsub|k>=<frac|x-y<rsub|l><rsub|>|-v>> so that
      <math|x+\<lambda\><rsub|k>\<cdot\>v<rsub|k>=x+<around*|(|<frac|x-y<rsub|l><rsub|>|-v>|)>\<cdot\>v=y<rsub|l>\<in\>A>.
      Hence we have

      <\equation>
        <label|eq 16.36.1>\<forall\>k\<in\>\<bbb-N\><text| we have
        >\<lambda\><rsub|k+1>\<leqslant\>\<lambda\><rsub|k><text| and
        >x+\<lambda\><rsub|k>\<cdot\>v<rsub|k>\<in\>A
      </equation>

      From [eqs: <reference|eq 16.32.1>,<reference|eq 16.33.1>, <reference|eq
      16.35.1>, <reference|eq 16.36.1>] it follows, using the definition of
      <math|T<rsub|A><around*|(|x|)>> [see definition: <reference|diff
      tangent cone>] that <math|v\<in\>T<rsub|A><around*|(|x|)>>. As
      <math|v\<in\>\<bbb-R\><rsup|->> was chosen arbitrary it follows that\ 

      <\equation*>
        \<bbb-R\><rsup|->\<subseteq\>T<rsub|A><around*|(|x|)>
      </equation*>

      Finally\ 

      <\equation*>
        \<bbb-R\><below|\<subseteq\>|<text|[lemma: <reference|lemma
        16.50.1>]>>span<around*|(|\<bbb-R\><rsup|->|)><below|\<subseteq\>|<text|[theorem:
        <reference|linear span subsets>]>>span<around*|(|T<rsub|A><around*|(|x|)>|)>\<subseteq\>\<bbb-R\>
      </equation*>

      from which it follows that\ 

      <\equation*>
        \<bbb-R\>=span<around*|(|\<bbb-R\><rsup|+>|)>
      </equation*>

      <item*|<math|R is infinite and L is finite>>Take then
      <math|N=max<around*|(|L<big|cup><around*|{|1|}>|)>> then we must have
      <math|\<forall\>n\<in\>\<bbb-N\>> with <math|n\<gtr\>N> that
      <math|n\<nin\>L> so as <math|\<bbb-N\>=L<big|cup>R> we have\ 

      <\equation>
        <label|eq 16.39.2>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text|
        >n\<in\>R\<Rightarrow\>x\<less\>x<rsub|n>
      </equation>

      <\equation*>
        <around*|{|y<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>A\\<around*|{|x|}><text|
        by >y<rsub|n>=x<rsub|N+n><below|\<in\>|<text|[eq: <reference|eq
        16.23.1>]>>A\\<around*|{|x|}>
      </equation*>

      Using [eq: <reference|eq 16.23.1>] and [eq: <reference|eq 16.39.2>] we
      have then\ 

      <\equation>
        <label|eq 16.37.1>\<forall\>n\<in\>\<bbb-N\> we have
        x\<less\>x<rsub|n+N>\<less\>x+<frac|1|N+n>\<Rightarrow\>x\<less\>y<rsub|n>\<less\>x+<frac|1|N+n>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist a
      <math|K\<in\>\<bbb-N\>> such that <math|<frac|1|K>\<less\>\<varepsilon\>>
      then for <math|n\<in\><around*|{|K,\<ldots\>,\<infty\>|}>> we have
      <math|<around*|\||x-y<rsub|n>|\|>=y<rsub|n>-x\<less\>x+<frac|1|N+n>-x=<frac|1|N+n>\<less\><frac|1|n>\<less\><frac|1|K>\<less\>\<varepsilon\>>,
      which proves that\ 

      <\equation>
        <label|eq 16.38.1>x=<below|lim|n\<rightarrow\>\<infty\>>y<rsub|n><text|
        exist>
      </equation>

      Let <math|v\<in\>\<bbb-R\><rsup|+>> and define
      <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\>>
      by <math|v<rsub|k>=v> then we have [see example: <reference|limit
      constant sequence>]

      <\equation>
        <label|eq 16.39.1>v=<below|lim|k\<rightarrow\>\<infty\>>v<rsub|n><text|
        exist>
      </equation>

      Further define\ 

      <\equation>
        <around*|{|\<lambda\><rsub|k>|}><rsub|k\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+><text|
        by >\<lambda\><rsub|k>=min<around*|(|<around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\<gtr\>0<rsub|>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by [eq:
      <reference|eq 16.32.1>] there exist a <math|K\<in\>\<bbb-N\>> such that
      <math|\<forall\>k\<in\><around*|{|K,\<ldots\>,\<infty\>|}>> we have
      <math|y<rsub|k>-x=<around*|\||y<rsub|k>-x|\|>\<less\>\<varepsilon\>\<cdot\>v>
      hence <math|<around*|\||\<lambda\><rsub|k>-0|\|>=\<lambda\><rsub|k>\<leqslant\><frac|y<rsub|k-x>|v>\<less\><frac|\<varepsilon\>\<cdot\>v|v>=\<varepsilon\>>
      which proves that\ 

      <\equation>
        <label|eq 16.41.1><below|lim|k\<rightarrow\>\<infty\>>\<lambda\><rsub|k>=0
        exists
      </equation>

      Let <math|n\<in\>\<bbb-N\>> then we have that\ 

      <\equation*>
        \<lambda\><rsub|k+1>=min<around*|(|<around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>|)><below|\<leqslant\>|<text|[theorem:
        <reference|order inclusion and greatest and least
        element>]>>min<around*|(|<around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>=\<lambda\><rsub|k>
      </equation*>

      Further as <math|\<lambda\><rsub|k>=min<around*|(|<around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\<Rightarrow\>\<lambda\><rsub|k>\<in\><around*|{|<frac|y<rsub|i>-x|v>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>>
      there exist a <math|l\<in\><around*|{|1,\<ldots\>,k|}>> such that
      <math|\<lambda\><rsub|k>=<frac|y<rsub|l>-x<rsub|>|v>> so that
      <math|x+\<lambda\><rsub|k>\<cdot\>v<rsub|k>=x+<around*|(|<frac|y<rsub|l>-x<rsub|>|v>|)>\<cdot\>v=y<rsub|l>\<in\>A>.
      Hence we have

      <\equation>
        <label|eq 16.42.1>\<forall\>k\<in\>\<bbb-N\><text| we have
        >\<lambda\><rsub|k+1>\<leqslant\>\<lambda\><rsub|k><text| and
        >x+\<lambda\><rsub|k>\<cdot\>v<rsub|k>\<in\>A
      </equation>

      From [eqs: <reference|eq 16.38.1>,<reference|eq 16.39.1>, <reference|eq
      16.41.1>, <reference|eq 16.42.1>] it follows, using the definition of
      <math|T<rsub|A><around*|(|x|)>> [see definition: <reference|diff
      tangent cone>], that <math|v\<in\>T<rsub|A><around*|(|x|)>>. As
      <math|v\<in\>\<bbb-R\><rsup|+>> was chosen arbitrary it follows that\ 

      <\equation*>
        \<bbb-R\><rsup|+>\<subseteq\>T<rsub|A><around*|(|x|)>
      </equation*>

      Finally\ 

      <\equation*>
        \<bbb-R\><below|\<subseteq\>|<text|[lemma: <reference|lemma
        16.50.1>]>>span<around*|(|\<bbb-R\>|)><below|\<subseteq\>|<text|[theorem:
        <reference|linear span subsets>]>>span<around*|(|T<rsub|A><around*|(|x|)>|)>\<subseteq\>\<bbb-R\>
      </equation*>

      from which it follows that\ 

      <\equation*>
        \<bbb-R\>=span<around*|(|T<rsub|A><around*|(|x|)>|)>
      </equation*>

      so that\ 

      <\equation*>
        \<bbb-R\>\<equallim\><rsub|<text|[theorem: <reference|topology closed
        set and closure>]>><wide|\<bbb-R\>|\<wide-bar\>>=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>=S<rsub|A><around*|(|x|)>
      </equation*>
    </description>

    \;
  </proof>

  Actually we have also the opposite of the above theorem.

  <\theorem>
    <label|diff tangent cone and limit point reverse>Let
    \ <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers with the canonical norm
    <math|<around*|\|||\|>>, <math|A\<subseteq\>\<bbb-R\>> and
    <math|x\<in\>A> such that <math|\<bbb-R\>=S<rsub|A><around*|(|x|)>\<equallim\><rsub|def><wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>
    then <math|x> is a limit point of <math|A>
  </theorem>

  <\proof>
    As <math|span<around*|(|T<rsub|A><around*|(|x|)>|)>> is a sub-space of
    <math|\<bbb-R\>> [see theorem: <reference|linear span is a sub-space>]
    and the only sub-spaces of <math|\<bbb-R\>> are <math|<around*|{|0|}>> or
    <math|\<bbb-R\>> [see theorem: <reference|vector space sub-space of a
    field>] it follows that we have either
    <math|span<around*|(|T<rsub|A><around*|(|x|)>|)>=<around*|{|0|}>> or
    <math|span<around*|(|T<rsub|A><around*|(|x|)>|)>=\<bbb-R\>>. Assume that
    <math|span<around*|(|T<rsub|A><around*|(|x|)>|)>=<around*|{|0|}>>. By
    [theorems: <reference|separation metric spaces are Hausdorff>,
    <reference|separation Hausdorff every finite set is closed>]
    <math|<around*|{|0|}>> is closed so that

    <\equation*>
      \<bbb-R\>=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>=<wide|<around*|{|0|}>|\<wide-bar\>>\<equallim\><rsub|<text|[theorem:
      <reference|topology closed set and closure>]>><around*|{|0|}>
    </equation*>

    which is impossible because <math|\<bbb-R\>\<neq\><around*|{|0|}>>. Hence
    we must have that <math|\<bbb-R\>=span<around*|(|T<rsub|A><around*|(|x|)>|)>>
    from which it follows that\ 

    <\equation*>
      1\<in\>span<around*|(|T<rsub|A><around*|(|x|)>|)>
    </equation*>

    Assume that <math|T<rsub|A><around*|(|x|)>=<around*|{|0|}>> then
    <math|span<around*|(|T<rsub|A><around*|(|x|)>|)>=span<around*|(|<around*|{|0|}>|)><below|=|<text|[example:
    <reference|linear span({0})>]>><around*|{|0|}>> which contradicts
    <math|<rigid|1\<in\>span<around*|(|T<rsub|A><around*|(|x|)>|)>>>. Hence
    there exist a <math|v\<in\>T<rsub|A><around*|(|x|)>> with
    <math|v\<neq\>0>. By the definition of <math|T<rsub|A><around*|(|x|)>>
    [see definition: <reference|diff tangent cone>] there exist a
    <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+>>,
    <math|<around*|{|v<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsub|>>
    such that\ 

    <\equation>
      <label|eq 16.46.3>\<forall\>n\<in\>\<bbb-N\><text|
      >\<lambda\><rsub|n+1>\<leqslant\>\<lambda\><rsub|n>\<wedge\>x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>\<in\>A<text|
      and ><below|lim|n\<rightarrow\>\<infty\>>v<rsub|n>=v\<wedge\><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0
    </equation>

    As <math|v\<neq\>0> <math|<around*|\||v|\|>\<in\>\<bbb-R\><rsup|+>> hence
    using the above there exist a <math|N<rsub|1>\<in\>\<bbb-N\>> such that
    <math|\<forall\>n\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>> we
    have <math|<around*|\||v-v<rsub|n>|\|>\<less\><around*|\||v|\|>>. For
    <math|v\<neq\>0> we have either:\ 

    <\description>
      <item*|<math|0\<less\>v>>Then <math|v-v<rsub|n>\<leqslant\><around*|\||v-v<rsub|n>|\|>\<less\><around*|\||v|\|>=v>
      so that <math|-v<rsub|n>\<less\>0> or
      <math|0\<less\>v<rsub|n>\<Rightarrow\>v<rsub|n>\<neq\>0>

      <item*|<math|v\<less\>0>>Then <math|v<rsub|n>-v\<leqslant\><around*|\||v-v<rsub|n>|\|>\<less\><around*|\||v|\|>=-v>
      so that <math|v<rsub|n>\<less\>0\<Rightarrow\>v<rsub|n>\<neq\>0>
    </description>

    hence we have\ 

    <\equation>
      <label|eq 16.47.3>\<forall\>n\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
      we have >v<rsub|n>\<neq\>0\<Rightarrowlim\><rsub|0\<less\>\<lambda\><rsub|n>>\<lambda\><rsub|n>\<cdot\>v<rsub|n>\<neq\>0<below|\<Rightarrow\>|<text|[eq:
      <reference|eq 16.46.3>]>>x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>\<in\>A\\<around*|{|x|}>
    </equation>

    As <math|<below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0> and
    <math|<below|lim|n\<rightarrow\>\<infty\>>v<rsub|n>=v> it follows from
    [theorem: <reference|limit of a product of sequences>] that

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>=<below|<around*|(|<below|lim|n\<rightarrow\>\<infty\>>t<rsub|n>|)>\<cdot\><around*|(|<below|lim|n\<rightarrow\>\<infty\>>v<rsub|n>|)>=0\<cdot\>v<rsub|n>=0|>
    </equation*>

    so that\ 

    <\equation>
      <label|eq 16.48.3><below|lim|n\<rightarrowlim\>\<infty\>><around*|(|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>\<equallim\><rsub|<text|[theorems:
      <reference|limit x_n+a>]>>x+<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>=x
    </equation>

    <\equation*>
      \;
    </equation*>

    Let <math|U> be a open set such that <math|x\<in\>U> then there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|x\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>\<subseteq\>U>
    [see theorem: <reference|normed space and open sets>]. Using [eq:
    <reference|eq 16.48.3>] there exist a <math|N<rsub|2>> such that
    <math|\<forall\>n\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}>> we
    have\ 

    <\equation>
      <label|eq 16.49.3.1><around*|\||<around*|(|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>-x|\|>\<less\>\<delta\>\<Rightarrow\>x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>\<subseteq\>U
    </equation>

    Hence if <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have
    <math|<around*|(|x+\<lambda\><rsub|N>\<cdot\>v<rsub|N>|)><below|\<in\>|<text|[eqs:
    <reference|eq 16.47.3>, <reference|eq
    16.49.3.1>]>>U<big|cap><around*|{|A\\<around*|{|X|}>|}>> which proves
    that\ 

    <\equation*>
      x<text| is a limit point of >A
    </equation*>
  </proof>

  We are ready now to prove the relation between the derivative and the
  differential.

  <\theorem>
    <label|diff derivate and frechet differential>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-R\>>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>X> a function then we have\ 

    <\equation*>
      <text|x is a limit point and >f<text| has a derivative
      >f<rprime|'><rsub|x><text| at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<bbb-R\>=S<rsub|A><around*|(|x|)><text| and >f<text| is Fréchet
      differentiable at >x<text| with Fréchet differential >D<rsub|x>f\ 
    </equation*>

    Further in either case we have

    <\equation*>
      f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>h\<in\>\<bbb-R\><text| we have
      >D<rsub|x>f<around*|(|h|)>=h\<cdot\>f<rsub|x><rprime|'>
    </equation*>

    <\note>
      If <math|x\<in\>A<rsup|\<circ\>>>, <math|A> is open or <math|A> is of
      the forms <math|<around*|[|a,b|]>>, <math|<around*|[|a,b|[>>,
      <math|<around*|]|a,b|]>>, <math|<around*|]|a,b|[>>,
      <math|<around*|[|a,\<infty\>|[>>, <math|<around*|]|a,\<infty\>|[>>,
      <math|<around*|[|a,\<infty\>|[>>, <math|<around*|]|-\<infty\>,a|]>> or
      <math|<around*|]|-\<infty\>,a|[>> then by [theorems:
      <reference|topology interior point is a limit point in a normed space>,
      <reference|topology every element of a open set in a normed space is a
      limit point>, <reference|topology every element of a generalized
      interval is a limit point>] that <math|x> is a limit point of <math|A>
      and by [theorem: <reference|diff tangent cone and limit point>]
      <math|S<rsub|A><around*|(|x|)>=\<bbb-R\>>, hence in these cases we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|f<text| has a derivative
        >f<rprime|'><rsub|x><text| at >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<text|
        is Fréchet differentiable at <math|x>>>|<cell|>>>>
      </eqnarray*>

      and

      <\equation*>
        f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>
      </equation*>

      and\ 

      <\equation*>
        \<forall\>h\<in\>\<bbb-R\><text| we have
        >D<rsub|x>f<around*|(|h|)>=h\<cdot\>f<rsub|x><rprime|'>
      </equation*>
    </note>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f:A\<rightarrow\>Y> has a
      derivative <math|f<rprime|'><rsub|x>> at <math|x> it follows from
      [theorem: <reference|diff calculus derivate>] that\ 

      <\equation>
        <label|eq 16.49.3>\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
        >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| so that
        >\<forall\>h\<in\>A<rsub|x><text| with
        >0\<less\><around*|\||h|\|>\<less\>\<delta\><text|
        \ ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|z>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      As <math|x> is a limit point of <math|A> it follows from [theorem:
      <reference|diff tangent cone and limit point>] that\ 

      <\equation>
        <label|eq 16.59.6>\<bbb-R\>=S<rsub|A><around*|(|x|)>
      </equation>

      Define <math|L:\<bbb-R\>\<rightarrow\>Y>
      <math|L<around*|(|h|)>=h\<cdot\>f<rprime|'><around*|(|x|)>> then by
      [example: <reference|continuity norm L(x)=a.x>]\ 

      <\equation*>
        L\<in\>L<around*|(|\<bbb-R\>,Y|)>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by [eq:
      <reference|eq 16.49.3>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have\ 

      <\equation>
        <label|eq 16.5.178><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      Let <math|h\<in\>U<rsub|x>> with <math|<around*|\||h|\|>\<less\>\<delta\>>
      then we have either:\ 

      <\description>
        <item*|<math|<around*|\||h|\|>=0>>Then <math|h=0> so that

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>>=<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x|)>-0\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0=\<varepsilon\>\<cdot\><around*|\||0|\|>=\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation*>

        <item*|<math|0\<less\><around*|\||h|\|>>>Then <math|h\<neq\>0> so
        that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h\<cdot\><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-h\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h\<cdot\><around*|(|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rsub|x><rprime|'>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.5.178>]>>>|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>>>>
        </eqnarray*>
      </description>

      So in all cases we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      proving that <math|f> is Fréchet differentiable at <math|x> with\ 

      <\equation*>
        D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.59.6>]>>L
      </equation*>

      \ hence <math|D<rsub|x>f> is defined by\ 

      <\equation*>
        D<rsub|x>f<around*|(|h|)>=h\<cdot\>f<rprime|'><rsub|x><text| so that
        >f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|\<bbb-R\>=S<rsub|A><around*|(|x|)>>
      it follows from [theorem: <reference|diff tangent cone and limit point
      reverse>] that\ 

      <\equation*>
        x<text| is a limit point of >A
      </equation*>

      As <math|f> is Fréchet differentiable at <math|x> with Fréchet
      differential <math|<rsub|>D<rsub|x>f> we have that there exist a
      <math|L\<in\>L<around*|(|X,Y|)>> such that

      <\equation>
        <label|eq 16.51.3>\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
        >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
        >\<forall\>x\<in\>A<rsub|x><text| with
        ><around*|\||h|\|>\<less\>\<delta\><text|
        ><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\|>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>
      </equation>

      \ and\ 

      <\equation*>
        D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>=L<rsub|\|X>=L
      </equation*>

      \ Let <math|h\<in\>U<rsub|x>> be such that
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-D<rsub|x>f<around*|(|1|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-L<around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>L<around*|(|1|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h\<cdot\>1|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\||h|\|>>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.51.3>]]>>>|<cell|<frac|1|<around*|\||h|\|>>\<cdot\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      Proving that <math|f> has a derivative
      <math|f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>>.
    </description>
  </proof>

  It is now easy to prove that \ that the existence of a derivative is a
  local property.

  <\corollary>
    <label|diff derivative is local>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A,B\<subseteq\>\<bbb-R\>> with
    <math|B\<subseteq\>A>, <math|x\<in\>B<rsup|0>> and
    <math|f:A\<rightarrow\>X> a function then we have\ 

    <\equation*>
      f<text| has a derivative at <math|x<text| >\<Leftrightarrow\><text|
      >f<rsub|\|B><text| has a derivative at >x>>
    </equation*>

    Further if either derivative exist then
    <math|f<rprime|'><rsub|x>=<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>>

    <\note>
      As <math|x\<in\>B<rsup|0><below|\<subseteq\>|<text|[theorem:
      <reference|topology interior of a set and inclusion>]>>A<rsup|0>> it
      follows from [theorem: <reference|topology interior point is a limit
      point in a normed space>] <math|x> is a limit point of <math|A> an
      <math|B> which is needed for the existence of the derivatives.
    </note>

    <\note>
      If <math|B> is a open set then <math|B<below|=|<text|[theorem:
      <reference|topology open set and interior>]>>B<rsup|\<circ\>>> so that
      in this case we have <math|\<forall\>x\<in\>B> that\ 

      <\equation*>
        <text| has a derivative at <math|x<text| >\<Leftrightarrow\><text|
        >f<rsub|\|B><text| has a derivative at >x>>
      </equation*>

      and if either derivative exist then
      <math|f<rprime|'><rsub|x>=<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>>.
    </note>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is has a derivative at
      <math|x> it follows from [theorem: <reference|diff derivate and frechet
      differential>] that <math|f> is Fréchet differentiable at <math|x> and
      <math|f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>>. Using [theorem:
      <reference|diff differentiability is a local property>] it follows that
      <math|f<rsub|\|B>> is Fréchet differentiable at <math|x> with
      <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>. Hence using [theorem:
      <reference|diff derivate and frechet differential>] again it follows
      that <math|f<rsub|\|B>> has a derivative at <math|x> with
      <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>=D<rsub|x>f<rsub|\|B><around*|(|1|)>=D<rsub|x>f<around*|(|1|)>=f<rprime|'><rsub|x>>.\ 

      <item*|<math|\<Leftarrow\>>>As <math|f<rsub|\|B>> has a derivative at
      <math|x> it follows from [theorem: <reference|diff derivate and frechet
      differential>] that <math|f<rsub|\|B>> is Fréchet differentiable at
      <math|x> and <math|<around*|(|f<rsub|B>|)><rprime|'><rsub|x>=D<rsub|x>f<rsub|\|B><around*|(|1|)>>.
      Using [theorem: <reference|diff differentiability is a local property>]
      it follows that <math|f> is Fréchet differentiable at <math|x> with
      <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>. Hence using [theorem:
      <reference|diff derivate and frechet differential>] again it follows
      that <math|f> has a derivative at <math|x> with
      <math|f<rprime|'><around*|(|x|)>=D<rsub|x>f<around*|(|1|)>=D<rsub|x>f<rsub|\|B><around*|(|1|)>=<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>>.
    </description>
  </proof>

  <\corollary>
    <label|diff derivative is local (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A<rsub|1>,A<rsub|2>\<subseteq\>X>,
    <math|B\<subseteq\>A<rsub|1><big|cap>A<rsub|2>>, <math|x\<in\>B<rsup|0>>
    and <math|f:A<rsub|1>\<rightarrow\>Y>, <math|g:A<rsub|2>\<rightarrow\>Y>
    functions such that <math|\<forall\>y\<in\>B> we have
    <math|f<around*|(|y|)>=g<around*|(|y|)>>. Then if <math|f> has a
    derivative at <math|x> it follows that <math|g> has a derivative at
    <math|x> and <math|f<rprime|'><rsub|x>=g<rprime|'><rsub|x>>
  </corollary>

  <\proof>
    As <math|\<forall\>y\<in\>B> we have <math|f<around*|(|y|)>=g<around*|(|y|)>>
    it follows that <math|f<rsub|\|B>=g<rsub|\|B>>. As <math|f> has a
    derivative at <math|x> it follows from [theorem: <reference|diff
    derivative is local>] that <math|f<rsub|\|B>> has a derivative at
    <math|x> with <math|<rigid|f<rprime|'><rsub|x>=<around*|(|f<rsub|\|B>|)><rprime|'>>>.
    As <math|f<rsub|\|B>=g<rsub|\|B>> we have that <math|g<rsub|\|B>> has a
    derivative at <math|x> with <math|<around*|(|g<rsub|\|B>|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>>.
    Hence using [theorem: <reference|diff derivative is local>] again it
    follows that <math|g> has a derivative at <math|x> with
    <math|g<rprime|'><rsub|x>=<around*|(|g<rsub|\|B>|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>>..
  </proof>

  <subsection|Properties of the Fréchet differential>

  <\theorem>
    <label|diff derivate operator is linear>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> then we have:

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>Y> is Fréchet differentiable at
      <math|x> and <math|g:A\<rightarrow\>Y> is Fréchet differentiable at
      <math|x> then\ 

      <\equation*>
        f+g:A\<rightarrow\>Y<text| is Fréchet differentiable with Fréchet
        differential >D<rsub|x><around*|(|f+g|)>=D<rsub|x>f+D<rsub|x>g
      </equation*>

      <item>If <math|f:A\<rightarrow\>Y> is Fréchet differentiable at
      <math|x> and <math|\<alpha\>\<in\>\<bbb-K\>> then

      <\equation*>
        \<alpha\>\<cdot\>f:A\<rightarrow\>Y<text| is Fréchet differentiable
        at <math|x> with Fréchet differential
        >D<rsub|x><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|x>f
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f,g> are Fréchet differentiable at <math|x> there exists
      <math|L<rsub|1>>, <math|L<rsub|2>\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exists
      <rigid|<math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>>
      such that\ 

      <\equation*>
        \<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|1><text|
        we have ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<rsub|1><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      <\equation*>
        \<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|2><text|
        we have ><around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      and\ 

      <\equation*>
        D<rsub|x>f=<around*|(|L<rsub|1>|)><rsub|\|S<rsub|A><around*|(|a|)>><text|
        and >D<rsub|x>g=<around*|(|L<rsub|2>|)><rsub|\|S<rsub|A><around*|(|a|)>>
      </equation*>

      As <math|L<rsub|1>>, <math|L<rsub|2>\<in\>L<around*|(|X,Y|)>> we have
      by [theorem: <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>]
      that <math|L<rsub|1>+L<rsub|2>\<in\>L<around*|(|X,Y|)>>. Further if
      <math|h\<in\>A<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f+g|)><around*|(|x+h|)>-<around*|(|f+g|)><around*|(|x|)>-<around*|(|L<rsub|1>+L<rsub|2>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>+g<around*|(|x+h|)>-f<around*|(|x|)>-g<around*|(|x|)>-<around*|(|L<rsub|1><around*|(|h|)>+L<rsub|2><around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<rsub|1><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|f+g> is Fréchet differentiable at <math|x> with
      Fréchet differential

      <\equation*>
        D<rsub|x><around*|(|f+g|)>=<around*|(|L<rsub|1>+L<rsub|2>|)><rsub|\|S<rsub|A><around*|(|a|)>>=<around*|(|L<rsub|1>|)><rsub|\|S<rsub|A><around*|(|a|)>>+<around*|(|L<rsub|2>|)><rsub|\|S<rsub|A><around*|(|a|)>>=D<rsub|x>f+D<rsub|x>g
      </equation*>

      <item>As <math|f> is Fréchet differentiable at <math|x> there exist a
      <math|L\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exists a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        \<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|1><text|
        we have ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      and\ 

      <\equation*>
        D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|a|)>>
      </equation*>

      As <math|D<rsub|x>f\<in\>L<around*|(|X,Y|)>> it follows from [theorem:
      <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>] that
      <math|\<alpha\>\<cdot\>D<rsub|x>f\<in\>L<around*|(|X,Y|)>>. Further if
      <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x+h|)>-<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>-<around*|(|\<alpha\>\<cdot\>L|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>f<around*|(|x+h|)>-\<alpha\>\<cdot\>f<around*|(|x|)>-\<alpha\>\<cdot\>L<around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|\<alpha\>\<cdot\>f> is Fréchet differentiable at
      <math|x> with Fréchet differential

      <\equation*>
        D<rsub|x><around*|(|\<alpha\>\<cdot\>f|)>=<around*|(|\<alpha\>\<cdot\>L|)><rsub|\|S<rsub|A><around*|(|x|)>>=\<alpha\><around*|\<nobracket\>|\<cdot\>L<rsub|\|S<rsub|A><around*|(|x|)>>=\<alpha\>\<cdot\>D<rsub|x>f|\<nobracket\>>
      </equation*>
    </enumerate>

    \;
  </proof>

  We introduce now the most important rule for Fréchet differentiation. First
  we need a little lemma concerning the tangent cones.

  <\lemma>
    <label|lemma 16.62.6>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|B\<subset\>Y> and <math|f:A\<rightarrow\>B> a function with
    <math|f<around*|(|A|)>\<subseteq\>B> then if
    <math|L\<in\>L<around*|(|X,Y|)>> satisfies

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>

    [in other words <math|L> is a Fréchet approximation of <math|f> at
    <math|x>] then we have\ 

    <\enumerate>
      <item><math|L<around*|(|T<rsub|A><around*|(|x|)>|)>\<subseteq\>T<rsub|B><around*|(|f<around*|(|x|)>|)>>

      <item><math|L<around*|(|S<rsub|A><around*|(|x|)>|)>\<subseteq\>S<rsub|B><around*|(|f<around*|(|x|)>|)>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|v\<in\>T<rsub|A><around*|(|x|)>> then by [definition:
      <reference|diff tangent cone>] there exists
      <math|<around*|{|v<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>X>,
      <math|<around*|{|\<lambda\><rsub|n><rsub|>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+>>
      such that\ 

      <\equation>
        <label|eq 16.62.6>\<forall\>n\<in\>\<bbb-N\><text|
        >\<lambda\><rsub|n+1>\<leqslant\>\<lambda\><rsub|n>\<wedge\>x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>\<in\>A<text|
        and ><below|lim|n\<rightarrow\>\<infty\>>v<rsub|n>=v\<wedge\><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0
      </equation>

      As <math|f<around*|(|A|)>\<subseteq\>B> we have that\ 

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><text| >f<around*|(|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>\<in\>A
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>\<Rightarrow\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>>
      then by the hypothesis there exist a
      <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.63.6>\<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
        we have ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation>

      Define\ 

      <\equation>
        <label|eq 16.64.6><around*|{|w<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>Y<text|
        by >w<rsub|n>=<frac|f<around*|(|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>-f<around*|(|x|)>|\<lambda\><rsub|n>>
      </equation>

      As <math|<below|lim|n\<rightarrow\>\<infty\>>v<rsub|n>=v\<wedge\><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0>
      it follows from [theorem: <reference|limit of a product of sequences>]
      that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><around*|(|\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>=<around*|(|<below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>|)>\<cdot\><around*|(|<below|lim|n\<rightarrow\>\<infty\>>v<rsub|n>|)>=0\<cdot\>v=0
      </equation*>

      so there exist a <math|N<rsub|1>\<in\>\<bbb-N\>> such that
      <math|\<forall\>n\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>>
      <math|<around*|\<\|\|\>|\<lambda\><rsub|n>\<cdot\>v<rsub|n>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<lambda\><rsub|n>\<cdot\>v<rsub|n>-0|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      so that by [eq: <reference|eq 16.63.6>]

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>-f<around*|(|x|)>-L<around*|(|\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>\<cdot\><around*|\<\|\|\>|\<lambda\><rsub|n>\<cdot\>v<rsub|n>|\<\|\|\>><rsub|X>
      </equation*>

      which after dividing by <math|0\<less\>\<lambda\><rsub|n>> gives\ 

      <\equation*>
        <around*|\<\|\|\>|w<rsub|n>-L<around*|(|v<rsub|n>|)>|\<\|\|\>><rsub|Y><below|=|<text|[eq:
        <reference|eq 16.64.6>]>><around*|\<\|\|\>|<frac|f<around*|(|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>-f<around*|(|x|)>|\<lambda\><rsub|n>>-L<around*|(|v<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>\<cdot\><around*|\<\|\|\>|v<rsub|n>|\<\|\|\>><rsub|X>
      </equation*>

      Hence we have\ 

      <\equation>
        <label|eq 16.65.6>\<forall\>n\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}><text|
        that ><around*|\<\|\|\>|w<rsub|n>-L<around*|(|v<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>\<cdot\><around*|\<\|\|\>|v<rsub|n>|\<\|\|\>><rsub|X>
      </equation>

      As <math|<below|lim|n\<rightarrow\>\<infty\>>v<rsub|n>=v> there exist a
      <math|N<rsub|2>\<in\>\<bbb-N\>> such that
      <math|\<forall\>n\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}>>
      <math|<around*|\<\|\|\>|v<rsub|n>-v|\<\|\|\>><rsub|X>\<less\>1> so that

      <\equation>
        <label|eq 16.66.6><around*|\<\|\|\>|v<rsub|n>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|v<rsub|n>-v+v|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|v<rsub|n>-v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\>1+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>
      </equation>

      Take <math|N<rsub|3>=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then if
      <math|n\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}>> we have by
      [eqs: <reference|eq 16.65.6>, <reference|eq 16.66.6>] that\ 

      <\equation*>
        <around*|\<\|\|\>|w<rsub|n>-L<around*|(|v<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>\<cdot\><around*|(|1+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>=<frac|\<varepsilon\>|2>
      </equation*>

      As <math|<below|lim|n\<rightarrow\>\<infty\>>v<rsub|n>=v> and <math|L>
      is continuous we have by [theorem: <reference|limit and continuity>]
      that <math|<below|lim|n\<rightarrow\>\<infty\>>L<around*|(|v<rsub|n>|)>=L<around*|(|v|)>>.
      Hence there exist a <math|N<rsub|4>\<in\>\<bbb-N\>> such that
      <math|\<forall\>n\<in\><around*|{|N<rsub|3>,\<ldots\>,\<infty\>|}>> we
      have <math|<around*|\<\|\|\>|L<around*|(|v<rsub|n>|)>-L<around*|(|v|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>.
      Take <math|N=max<around*|(|N<rsub|4>,N<rsub|3><rsub|>|)>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|w<rsub|n>-L<around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|w<rsub|n>-L<around*|(|v<rsub|n>|)>+L<around*|(|v<rsub|n>|)>-L<around*|(|v|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|w<rsub|n>-L<around*|(|v<rsub|n>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|v<rsub|n>|)>-L<around*|(|v|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation>
        <label|eq 16.67.6><below|lim|n\<rightarrow\>\<infty\>>w<rsub|n>=L<around*|(|v|)>
      </equation>

      Further <math|\<forall\>n\<in\>\<bbb-N\>> we have as
      <math|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>\<in\>A>

      <\equation*>
        f<around*|(|x|)>+\<lambda\><rsub|n>\<cdot\>w<rsub|n>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.64.6>]>>f<around*|(|x|)>+\<lambda\><rsub|n>\<cdot\><frac|f<around*|(|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)>-f<around*|(|x|)>|\<lambda\><rsub|n>>=f<around*|(|x+\<lambda\><rsub|n>\<cdot\>v<rsub|n>|)><below|\<in\>|f<around*|(|A|)>\<subseteq\>B>B
      </equation*>

      To summarize we found <math|<around*|{|\<lambda\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\><rsup|+><rsub|>>,
      <math|<around*|{|w<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>Y> with\ 

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><text| >\<lambda\><rsub|n+1>\<leqslant\>\<lambda\><rsub|n>\<wedge\>f<around*|(|x|)>+\<lambda\><rsub|n>\<cdot\>v<rsub|n>\<in\>B<text|
        and ><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0\<wedge\><below|lim|n\<rightarrow\>\<infty\>>w<rsub|n>=L<around*|(|v|)>
      </equation*>

      which proves that <math|L<around*|(|v|)>\<in\>T<rsub|B><around*|(|f<around*|(|x|)>|)>>.
      As <math|v\<in\>T<rsub|A><around*|(|x|)>> was chosen arbitrary it
      follows that

      <\equation*>
        L<around*|(|T<rsub|A><around*|(|x|)>|)>\<subseteq\>T<rsub|B><around*|(|f<around*|(|x|)>|)>
      </equation*>

      <item>Using [theorem: <reference|linear mapping span>] we have

      <\equation>
        <label|eq 16.68.6>L<around*|(|span<around*|(|T<rsub|A><around*|(|x|)>|)>|)><below|\<subseteq\>|>span<around*|(|L<around*|(|T<rsub|A><around*|(|x|)>|)>|\<nobracket\>>
      </equation>

      Further, as by (1) <math|L<around*|(|T<rsub|A><around*|(|x|)>|)>\<subseteq\>T<rsub|B><around*|(|f<around*|(|x|)>|)>>,
      it follows from [theorem: <reference|linear span subsets>] that
      <math|span<around*|(|L<around*|(|T<rsub|A><around*|(|x|)>|)>|)>\<subseteq\>span<around*|(|T<rsub|B><around*|(|f<around*|(|x|)>|)>|)>>
      which combined with [eq: <reference|eq 16.68.6>] proves that
      <rigid|<math|L<around*|(|span<around*|(|T<rsub|A><around*|(|x|)>|)>|)>\<subseteq\>span<around*|(|T<rsub|B><around*|(|f<around*|(|x|)>|)>|)>>>.
      Using then [theorem: <reference|topology closure inclusion>]
      gives<space|0.2spc>

      <\equation*>
        <wide|L<around*|(|span<around*|(|T<rsub|A><around*|(|x|)>|)>|)>|\<wide-bar\>>\<subseteq\><wide|span<around*|(|T<rsub|B><around*|(|f<around*|(|x|)>|)>|)>|\<wide-bar\>>
      </equation*>

      Using [theorem: <reference|continuity equivalences>] we have that
      <math|L<around*|(|<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>|)>\<subseteq\><wide|L<around*|(|span<around*|(|T<rsub|A><around*|(|x|)>|)>|)>|\<wide-bar\>>>
      which combined with the above results in\ 

      <\equation*>
        L<around*|(|<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>|)>\<subseteq\><wide|span<around*|(|T<rsub|B><around*|(|f<around*|(|x|)>|)>|)>|\<wide-bar\>>
      </equation*>

      so that [see definition: <reference|diff SA(a) definition>] we have\ 

      <\equation*>
        L<around*|(|S<rsub|A><around*|(|x|)>|)>\<subseteq\>S<rsub|B><around*|(|f<around*|(|x|)>|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|diff chain rule><index|Chain rule><dueto|Chain Rule>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|B\<subseteq\>Y>, <math|f:A\<rightarrow\>Y>,
    <math|g:B\<rightarrow\>Z> functions such that
    <math|f<around*|(|A|)>\<subseteq\>B>, <math|f> is Fréchet differentiable
    at <math|x> and <math|g> is Fréchet differentiable at
    <math|f<around*|(|x|)>> then

    <\equation*>
      g\<circ\>f:A\<rightarrow\>Z<text| is Fréchet differentiable at
      <math|x>>
    </equation*>

    and\ 

    <\equation*>
      D<rsub|x><around*|(|g\<circ\>f|)>=D
      <rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
    </equation*>
  </theorem>

  <\proof>
    As <math|f> is Fréchet differentiable at <math|x> there exists by
    [theorem: <reference|diff differentiability alternative definitions>] a
    <math|L<rsub|f>\<in\>L<around*|(|X,Y|)>>\ 

    and a <math|\<varepsilon\>>-mapping <math|\<varepsilon\><rsub|f>:A<rsub|x>\<rightarrow\>Y>
    such that\ 

    <\equation>
      <label|eq 16.7.178>\<forall\>h\<in\>A<rsub|x><text| we have
      >f<around*|(|x+h|)>-f<around*|(|x|)>-L<rsub|f><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>
    </equation>

    \ and

    <\equation>
      <label|eq 16.70.6>D<rsub|x>f=<around*|(|L<rsub|f>|)><rsub|\|S<rsub|A><around*|(|x|)>>
    </equation>

    Further as <math|g> is Fréchet differentiable at <math|f<around*|(|x|)>>
    there exists by [theorem: <reference|diff differentiability alternative
    definitions>] a <math|L<rsub|g>\<in\>L<around*|(|X,Y|)>> and a
    <math|\<varepsilon\>>-mapping <math|\<varepsilon\><rsub|g>:B<rsub|f<around*|(|x|)>>\<rightarrow\>Z>
    satisfying

    <\equation>
      <label|eq 16.8.178>\<forall\>k\<in\>B<rsub|f<around*|(|x|)>><text| we
      have >g<around*|(|f<around*|(|x|)>+k|)>-g<around*|(|f<around*|(|x|)>|)>-L<rsub|g><around*|(|k|)>=<around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|k|)>
    </equation>

    and

    <\equation>
      <label|eq 16.72.6>D<rsub|f<around*|(|x|)>>g=<around*|(|L<rsub|g>|)><rsub|\|S<rsub|B><around*|(|f<around*|(|x|)>|)>>
    </equation>

    Let <math|h\<in\>A<rsub|x>>. As <math|<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+f<around*|(|x|)>=f<around*|(|x+h|)>\<in\>f<around*|(|A|)>\<subseteq\>B>
    we have that <math|f<around*|(|x+h|)>-f<around*|(|x|)>\<in\>B<rsub|f<around*|(|x|)>>>,
    combining this with [eq: <reference|eq 16.8.178>] gives\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.8.178>]>>>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x|)>+<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|)>-g<around*|(|f<around*|(|x|)>|)>-L<rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-L<rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.7.178>]>>>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-L<rsub|g><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>+L<rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-L<rsub|g><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>-L<rsub|g><around*|(|L<rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-L<rsub|g><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>-<around*|(|L<rsub|g>\<circ\>L<rsub|f>|)><around*|(|h|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|L<rsub|g>\<circ\>L<rsub|f>|)><around*|(|h|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+L<rsub|g><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|>|<cell|<eq-number><label|eq
      16.9.178>>>>>
    </eqnarray*>

    The next logical step is to find a <math|\<varepsilon\>>-mapping
    <math|\<zeta\>:A<rsub|x>\<rightarrow\>Y> such that

    <\equation*>
      \<zeta\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>=<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>
    </equation*>

    because we can then use [theorem: <reference|diff differentiability
    alternative definitions>] to finish the proof. So define\ 

    <\equation*>
      \<zeta\>:A<rsub|x>\<rightarrow\>Z<text| by
      ><choice|<tformat|<table|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)><text|
      if >h\<in\>A<rsub|x>\\<around*|{|0|}>>>|<row|<cell|0<text| if >h=0>>>>>
    </equation*>

    Then for <math|h\<in\>A<rsub|x>> we have either:

    <\description>
      <item*|<math|h=0>>Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+0|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+0|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|0|\<\|\|\>><rsub|X>\<cdot\>L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|0|)>|)>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|=>|<cell|>>|<row|<cell|0\<cdot\>\<zeta\><around*|(|0|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item*|<math|h\<neq\>0>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><around*|(|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </description>

    Combining the above with [eq: <reference|eq 16.9.178>] gives us the
    desired

    <\equation>
      <label|eq 16.10.178><around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|L<rsub|g>\<circ\>L<rsub|f>|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>
    </equation>

    Next we must prove that <math|\<zeta\>> is continuous at <math|0>. Let
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As
    <math|\<varepsilon\><rsub|f>> is a <math|\<varepsilon\>>-mapping, it is
    continuous at 0<math|>. So by [theorem: <reference|continuity in normed
    subspace>] there exist a <math|\<delta\><rsub|f>\<in\>\<bbb-R\><rsup|+>>
    such that if <math|h\<in\>A<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|f>>
    then\ 

    <\equation>
      <label|eq 16.11.178><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>1
    </equation>

    So if additional <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>> we
    have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<around*|\<\|\|\>|f*<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>|<cell|\<equallim\><rsub|<text|
      [eq: <reference|eq 16.7.178>]>>>|<cell|<frac|<around*|\<\|\|\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>+L<rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|<around*|\<\|\|\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 16.11.178>]>>>|<cell|1+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>>>
    </eqnarray*>

    hence\ 

    <\equation>
      <label|eq 16.12.178>\<forall\>h\<in\>A<rsub|x><text| with
      >0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|f><text|
      we have that ><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)><rsub|>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>1+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
    </equation>

    <math|> As <math|\<varepsilon\><rsub|g>> is a
    <math|\<varepsilon\>>-mapping it is continuous at <math|0>. So by
    [theorem: <reference|continuity in normed subspace>] there exist a
    <math|\<delta\><rsub|g>\<in\>\<bbb-R\><rsup|+>> such that

    <\equation>
      <label|eq 16.13.178>\<forall\>k\<in\>B<rsub|f<around*|(|x|)>><text|
      with ><around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g><text|
      we have ><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|k|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>
    </equation>

    As <math|f> is Fréchet differentiable at <math|x> we have by [theorem:
    <reference|diff differentiable function is continuous>] that <math|f> is
    continuous at <math|x>, hence there exist by [theorem:
    <reference|continuity in normed subspace>] a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>y\<in\>A> with <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|<rigid|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g>>>.
    So if <math|h\<in\>A<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    then we have <math|x+h\<in\>A> and <math|<rigid|<around*|\<\|\|\>|<around*|(|x+h|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>>
    so that <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g>>
    which by [eq: <reference|eq 16.13.178>] results in <math|>

    <\equation*>
      <around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>
    </equation*>

    Summarized\ 

    <\equation*>
      \<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
      we have ><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>
    </equation*>

    Combining this with [eq: <reference|eq 16.12.178>] we have
    <math|\<forall\>h\<in\>A<rsub|x>> with
    <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|f>|)>>
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)><rsub|>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|(|1+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<less\>>|<cell|>>|<row|<cell|<around*|(|1+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|L<rsub|f>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>>|<cell|>|<cell|>>>>
    </eqnarray*>

    or

    <\equation>
      <label|eq 16.14.178>\<forall\>h\<in\>A<rsub|x><text| with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|f>|)><text|
      >>><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)><rsub|>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\><frac|\<varepsilon\>|2>
    </equation>

    As <math|\<varepsilon\><rsub|f>:A<rsub|x>\<rightarrow\>Y> is a
    <math|\<varepsilon\>>-mapping it is continuous at <math|0>, so by
    [theorem: <reference|continuity in normed subspace>] there exist a
    <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>A<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>> we
    have <math|<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|L<rsub|g>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>|)>>>.
    Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L<rsub|g>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L<rsub|g>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|L<rsub|g>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>>>>>
    </eqnarray*>

    In other words\ 

    <\equation>
      <label|eq 16.15.178>\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2><text|
      we have ><around*|\<\|\|\>|L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2>
    </equation>

    Take now <math|\<delta\>=min<around*|(|\<delta\><rsub|f>,\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
    and <math|h\<in\>A<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h-0|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    then we have either:

    <\description>
      <item*|<math|h=0>>Then <math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|\<zeta\><around*|(|0|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Z>\<less\>\<varepsilon\>>

      <item*|<math|h\<neq\>0>>Then <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|f>,\<delta\><rsub|1>,\<delta\><rsub|2>>
      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>>|<cell|=>|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|><rsub|X>>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.14.178>]>>>|<cell|<frac|\<varepsilon\>|2>+<around*|\<\|\|\>|L<rsub|g><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.15.178>]>>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>
    </description>

    So we have in all cases that <math|><math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>\<less\>\<varepsilon\>>
    which as <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> was chosen
    arbitrary proves that <math|\<zeta\>> is continuous at <math|0>. As also
    <math|\<zeta\><around*|(|0|)>=0> it follows by definition that
    <math|\<zeta\>:A<rsub|x>\<rightarrow\>Z> is a
    <math|\<varepsilon\>>-mapping. Hence as by [eq: <reference|eq 16.10.178>]
    <math|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|L<rsub|g>\<circ\>L<rsub|f>|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>
    it follows from [theorem: <reference|diff differentiability alternative
    definitions>] that\ 

    <\equation*>
      g\<circ\>f<text| is Fréchet differentiable with differential
      <math|D<rsub|x><around*|(|g\<circ\>f|)>=<around*|(|L<rsub|g>\<circ\>L<rsub|f>|)><rsub|\|S<rsub|A><around*|(|x|)>>>>
    </equation*>

    As <math|L<rsub|f>> is a Fréchet approximation of <math|f> at <math|x>
    [see eq: <reference|eq 16.7.178>] we can use [lemma: <reference|lemma
    16.62.6>] to get <math|L<rsub|f><around*|(|S<rsub|A><around*|(|x|)>|)>\<subset\>S<rsub|B><around*|(|f<around*|(|x|)>|)>>,
    hence

    <\equation*>
      D<rsub|x>f<below|=|<text|[eq: <reference|eq
      16.70.6>]>><around*|(|L<rsub|f>|)><rsub|\|S<rsub|A><around*|(|x|)>>\<subseteq\>S<rsub|B><around*|(|f<around*|(|x|)>|)>=dom<around*|(|<around*|(|L<rsub|g>|)><rsub|\|S<rsub|B><around*|(|f<around*|(|x|)>|)>>|)><below|=|<text|[eq:
      <reference|eq 16.72.6>]>>dom<around*|(|D<rsub|f<around*|(|x|)>>g|)>.
    </equation*>

    Hence by [theorem: <reference|function composition of functions is a
    fucntion>]\ 

    <\equation*>
      D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f:S<rsub|A><around*|(|x|)>\<rightarrow\>Z
    </equation*>

    is well defined. Further <math|\<forall\>y\<in\>S<rsub|A><around*|(|x|)>>
    we have\ 

    <\equation*>
      <around*|(|D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f|)><around*|(|y|)>=<around*|(|L<rsub|g>|)><rsub|\|S<rsub|B><around*|(|f<around*|(|x|)>|)>><around*|(|<around*|(|L<rsub|f>|)><rsub|\|S<rsub|A><around*|(|x|)>><around*|(|y|)>|)>=<around*|(|L<rsub|g><around*|(|L<rsub|f><around*|(|y|)>|)>|)>=<around*|(|L<rsub|g>\<circ\>L<rsub|f>|)><around*|(|y|)>=<around*|(|L<rsub|g>\<circ\>L<rsub|f>|)><rsub|\|S<rsub|A><around*|(|x|)>><around*|(|y|)>
    </equation*>

    from which it follows that <math|<around*|(|L<rsub|g>\<circ\>L<rsub|f>|)><rsub|\|S<rsub|A><around*|(|x|)>>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f>.
    Hence we have

    <\equation*>
      D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x><around*|(|g|)>
    </equation*>
  </proof>

  The following variation of the above theorem will be used to extend the
  chain rule to higher order differentials.

  <\corollary>
    <label|diff chain rule (1)>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X,B\<subseteq\>A>,
    <math|x\<in\>B<rsup|0>>, <math|C\<subseteq\>Y>,
    <math|f:A\<rightarrow\>Y>, <math|g:C\<rightarrow\>Z> functions such that
    <math|f<around*|(|B|)>\<subseteq\>C>, <math|f> is Fréchet differentiable
    at <math|x> and <math|g> is Fréchet differentiable at
    <math|f<around*|(|x|)>> then

    <\equation*>
      g\<circ\>f:A\<rightarrow\>Z<text| is Fréchet differentiable at
      <math|x>>
    </equation*>

    and\ 

    <\equation*>
      D<rsub|x><around*|(|g\<circ\>f|)>=D
      <rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
    </equation*>

    <\note>
      If <math|B> is a open set in <math|X> then
      <math|B\<equallim\><rsub|<text|[theorem: <reference|topology open set
      and interior>]>>B<rsup|0>> so that <math|x\<in\>B> implies
      <math|x\<in\>B<rsup|0>>.
    </note>
  </corollary>

  <\proof>
    As <math|x\<in\>B<rsup|0>> and <math|f> is Frétchet differentiable at
    <math|x> it follows from [theorem: <reference|diff differentiability is a
    local property>] that <math|f<rsub|\|B>> is Frétchet differentiable at
    <math|x> with <math|D<rsub|x>f<rsub|\|B>=D<rsub|x>f>. As
    <math|f<rsub|\|B><around*|(|B|)>=f<around*|(|B|)>\<subseteq\>C> it
    follows from the chain rule [theorem: <reference|diff chain rule>] that
    <math|g\<circ\>f<rsub|\|B>> is Fréchet differentiable at <math|x> with

    <\equation*>
      D<rsub|x><around*|(|g\<circ\>f<rsub|\|B>|)>=D<rsub|f<rsub|\|B><around*|(|x|)>>g\<circ\>D<rsub|x>f<rsub|\|B>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
    </equation*>

    As <math|g\<circ\>f<rsub|\|B>\<equallim\><rsub|<text|[theorem:
    <reference|function composition and restriction>]>><around*|(|g\<circ\>f|)><rsub|\|B>>
    it follows that <math|<around*|(|g\<circ\>f|)><rsub|\|B>> is Fréchet
    differentiable at <math|x> with <math|<rigid|D<rsub|x><around*|(|g\<circ\>f|)><rsub|\|B>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f>>.
    Finally using [theorem: <reference|diff differentiability is a local
    property>] again it follows that\ 

    <\equation*>
      g\<circ\>f<text| is Fréchet differentiable at >x<text| with
      >D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|x><around*|(|g\<circ\>f|)><rsub|\|B>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
    </equation*>
  </proof>

  We can use the Chain Rule based on differentials to state the Chain Rule
  for derivatives.

  <\corollary>
    <label|diff chain rule calculus>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    the normed space of real numbers, <math|A\<subseteq\>\<bbb-K\>>,
    <math|x\<in\>A> a limit point of <math|A>, <math|B\<subseteq\>\<bbb-R\>>
    and <math|f:A\<rightarrow\>\<bbb-K\>>, <math|g:B\<rightarrow\>X>
    functions such that <math|f<around*|(|A|)>\<subseteq\>B>, <math|f> has a
    derivative <math|f<rprime|'><rsub|x>> at <math|x> and <math|g> has a
    derivative <math|g<rprime|'><rsub|f<around*|(|x|)>>> at
    <math|f<around*|(|x|)>>. Then <math|g\<circ\>f:U\<rightarrow\>Y> has a
    derivative at <math|x> and

    <\equation*>
      <around*|(|g\<circ\>f|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>\<cdot\>g<rprime|'><rsub|f<around*|(|x|)>>
    </equation*>
  </corollary>

  <\proof>
    Using [theorem: <reference|diff derivate and frechet differential>] it
    follows that <math|f> is Fréchet differentiable at <math|x>,
    <math|\<bbb-R\>=S<rsub|A><around*|(|x|)>> and <math|g> is Fréchet
    differentiable at <math|f<around*|(|x|)>>. Using the Chain Rule [theorem:
    <reference|diff chain rule>] we have that <math|g\<circ\>f> is Fréchet
    differentiable at <math|x>. Hence, using \ [theorem: <reference|diff
    derivate and frechet differential>], we have that <math|g\<circ\>f> has a
    derivative at <math|x>. Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><rprime|'><rsub|x>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate and frechet differential>]
      >>>|<cell|D<rsub|x><around*|(|g\<circ\>f|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|<around*|(|D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|x|)>>g<around*|(|D<rsub|x>f<around*|(|1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate and frechet differential>]
      >>>|<cell|D<rsub|f<around*|(|x|)>>g<around*|(|f<rprime|'><rsub|x>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate and frechet differential>]
      >>>|<cell|f<rprime|'><rsub|x>\<cdot\>g<rprime|'><rsub|f<around*|(|x|)>>>>>>
    </eqnarray*>
  </proof>

  <\corollary>
    <label|diff composition with a linear mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|f:A\<rightarrow\>Y> a function that is Fréchet differentiable at
    <math|x> and <math|L\<in\>L<around*|(|Y,Z|)>> then

    <\equation*>
      L\<circ\>f:U\<rightarrow\>X<text| is Fréchet differentiable at
      <math|x>>
    </equation*>

    and\ 

    <\equation*>
      D<rsub|x><around*|(|L\<circ\>f|)>=L\<circ\>D<rsub|x>f
    </equation*>
  </corollary>

  <\proof>
    Using [example: <reference|diff linear mappings are differentiable>]
    <math|L> is Fréchet differentiable at <math|f<around*|(|x|)>> and
    <math|D<rsub|f<around*|(|x|)>>L=L>. Hence using the chain rule [see
    theorem: <reference|diff chain rule>] <math|L\<circ\>f> is Fréchet
    differentiable at <math|x> and

    <\equation*>
      D<rsub|x><around*|(|L\<circ\>f|)>=D<rsub|f<around*|(|x|)>>L\<circ\>D<rsub|x>f=L\<circ\>D<rsub|x>f
    </equation*>
  </proof>

  <subsection|Partial differentials>

  <\definition>
    <label|diff unprojection><index|<math|I<rsup|<around*|[|i,x|]>>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|[|1,\<ldots\>,n|]>>> a
    finite family of sets, <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
    <math|I<rsup|<around*|[|i,x|]>>:X<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    is defined by\ 

    <\equation*>
      I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>
    </equation*>

    or more formally

    <\equation*>
      <around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|t<text|
      if >j=i>>|<row|<cell|x<rsub|j><text| if
      >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>
    </equation*>
  </definition>

  <\lemma>
    <label|lemma 16.24.178>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|[|1,\<ldots\>,n|]>>>
    be a finite family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>] then we have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that:

    <\enumerate>
      <item>Then <math|I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>
      and <math|\<forall\>t\<in\>X<rsub|i>> we have
      <math|<around*|\<\|\|\>|t|\<\|\|\>><rsub|i>=<around*|\<\|\|\>|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|\<\|\|\>><rsub|max>>

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>=x>

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|x=<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>>

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
      <math|A\<subseteq\>X<rsub|i>>, <math|t\<in\>A<rsup|0>> then we have
      that <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|A>> is
      Fréchet differentiable at <math|t> with
      <math|D<rsub|t><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|A>=I<rsup|<around*|[|i,0|]>>>.

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
      <math|U> a open set in <math|X<rsub|i>> then
      <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|U>> is continuous.\ 

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then for every open set <math|U> in
      <math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>> we
      have that <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>
      is open in <math|X<rsub|i>>.

      <item><math|\<forall\>i,k\<in\><around*|{|1,\<ldots\>,n|}>>,
      <math|\<forall\>t\<in\>X<rsub|i>> we have
      <math|<around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)><rsub|k>=\<delta\><rsub|i,k>\<cdot\>t>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|r,s\<in\>X<rsub|i>>, <math|\<alpha\>\<in\>\<bbb-K\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|I<rsup|<around*|[|i,0|]>><around*|(|r+\<alpha\>\<cdot\>s|)>>|<cell|=>|<cell|<around*|(|0\<ldots\><wide*|r+\<alpha\>\<cdot\>s|\<wide-underbrace\>><rsub|i>\<ldots\>0|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i>\<ldots\>0|)>+\<alpha\>\<cdot\><around*|(|0\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>0|)>>>|<row|<cell|>|<cell|=>|<cell|I<rsup|<around*|[|i,0|]>><around*|(|r|)>+\<alpha\>\<cdot\>I<rsup|<around*|[|i,0|]>><around*|(|s|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|r|)>+\<alpha\>\<cdot\>L<around*|(|s|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        L\<in\>Hom<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>|)>
      </equation*>

      Further if <math|t\<in\>X<rsub|i>> then for
      <math|j\<in\><around*|{|1,\<ldots\>,n|}>> we have

      <\equation*>
        \<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>=\<pi\><rsub|j><around*|(|<around*|(|0,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|j>\<ldots\>,0|)>|)>=<choice|<tformat|<table|<row|<cell|t<text|
        if >j=i>>|<row|<cell|0<rsub|j><text| if
        >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>
      </equation*>

      so that\ 

      <\equation>
        <around*|\<\|\|\>|<label|eq 16.16.178>\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>|\<\|\|\>><rsub|j>=<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|t|\<\|\|\>><rsub|i><text|
        if >j=i>>|<row|<cell|0<text| if >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>
      </equation>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>|\<\|\|\>><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>|\<\|\|\>><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>|}><big|cup><around*|{|<around*|\<\|\|\>|\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>|\<\|\|\>><rsub|j>\|j\<in\><around*|{|i|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|0|}><big|cup><around*|{|<around*|\<\|\|\>|t|\<\|\|\>><rsub|i>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|0,<around*|\<\|\|\>|t|\<\|\|\>><rsub|i>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t|\<\|\|\>><rsub|i>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <around*|\<\|\|\>|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|\<\|\|\>><rsub|max>=<around*|\<\|\|\>|t|\<\|\|\>><rsub|i>=1\<cdot\><around*|\<\|\|\>|t|\<\|\|\>><rsub|i>
      </equation*>

      Hence by [theorem: <reference|continuity linear mapping (1)>] it
      follows that\ 

      <\equation*>
        I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>|)>
      </equation*>

      <item>This follows from <math|I<rsup|<around*|[|x,i|]>><around*|(|x<rsub|i>|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|x<rsub|i>|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>=x>

      <item>Let <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      and <math|j\<in\><around*|{|1,\<ldots\>,n|}>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)><rsub|j>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|j><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|<below|=|<text|[theorem:
        <reference|linear mapping projection
        mapping>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>>\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)>+<big|sum><rsub|i\<in\><around*|{|j|}>>\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|<below|=|<around*|(|2|)>>>|<cell|0+x<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|j>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        x=<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>
      </equation*>

      <item>Let <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|t\<in\>A<rsup|\<circ\>>\<subseteq\>X<rsub|i>>. By [theorem:
      <reference|diff SA(a)>(2)] we have that

      <\equation>
        <label|eq 16.64.3>X<rsub|i>=S<rsub|A><around*|(|t|)>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then we have
      <math|\<forall\>h\<in\>A<rsub|t>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|A><around*|(|t+h|)>-<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|A><around*|(|t|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t+h|)>-I<rsup|<around*|[|i,x|]>><around*|(|t|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t+h,x<rsub|i>,\<ldots\>,x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,h,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,h,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>-<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,h,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|i>>|<cell|>|<cell|>>>>
      </eqnarray*>

      which together with (1) and (eq: <reference|eq 16.64.3>] proves that\ 

      <\equation*>
        <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|A><text| is Fréchet
        differentiable at <math|t> with differential
        >D<rsub|t>I<rsup|<around*|[|i,x|]>>=<around*|(|I<rsup|<around*|[|i,0|]>>|)><rsub|S<rsub|A><around*|(|t|)>><below|=|<text|[eq:
        <reference|eq 16.64.3>]>>I<rsup|<around*|[|i,0|]>>
      </equation*>

      <item>Let <math|t\<in\>X<rsub|i>> then
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have for
      <math|<around*|\<\|\|\>|t-s|\<\|\|\>><rsub|i>\<less\>\<varepsilon\>> we
      have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t|)>-I<rsup|<around*|[|i,x|]>><around*|(|s|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\><wide*|<rsub|>t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n><rsub|i>|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>>\<ldots\>,x<rsub|n><rsub|i>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|0,\<ldots\><wide*|t-s|\<wide-underbrace\>>\<ldots\>,0<rsub|i>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t-s|\<\|\|\>><rsub|i>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      which proves that <math|I<rsup|<around*|[|i,x|]>>> is continuous.

      <item>Let <math|U> be a open set in
      <math|><math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>.
      As by (5) <rigid|<math|I<rsup|<around*|[|i,x|]>>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>>
      is continuous it follows that <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>
      is open.

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|t\<in\>X<rsub|i>> then we have for
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>>\ 

      <\equation*>
        <around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)><rsub|k>=<around*|(|0,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>0|)><rsub|k>=\<delta\><rsub|i,k>\<cdot\>t
      </equation*>
    </enumerate>

    \;
  </proof>

  <\definition>
    <label|diff multiparameter function to one parameter function>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|[|1,\<ldots\>,n|]>>>
    be a finite family of sets, <math|<rigid|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>>,
    <math|x\<in\>A>, <math|Y> a set, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|f:A\<rightarrow\>Y> a function then, as
    <math|<rigid|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>=X<rsub|i><big|cap><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>>,
    we can use [theorem: <reference|function composition of functions is a
    fucntion>] to define the function\ 

    <\equation*>
      f<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<rightarrow\>Y<text|
      by >f<rsup|<around*|[|i,x|]>>=f\<circ\>I<rsup|<around*|[|i,x|]>>
    </equation*>

    So <math|\<forall\>t\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>
    we have

    <\equation*>
      f<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|t|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=f<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>
    </equation*>
  </definition>

  We are now ready to define the partial differential of a multi-parameter
  function.

  <\definition>
    <label|diff partial differential definition>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|x\<in\>A>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and\ 

    <\equation*>
      f:A\<rightarrow\>Y<text| a function>
    </equation*>

    then\ 

    <\equation*>
      f<text| is >i<text|-partial differentiable at >x<text| with
      <math|i>-partial differential >D<rsub|x,i>f
    </equation*>

    if\ 

    <\equation*>
      f<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<rightarrow\>Y<text|
      is Fréchet differentiable at >x<rsub|i><text| and
      >D<rsub|x,i>f=D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>\<in\>X<rsub|i>
    </equation*>

    where

    <\equation*>
      f<rsup|<around*|[|i,x|]>>=f\<circ\>I<rsup|<around*|[|i,x|]>>
    </equation*>

    <\note>
      As <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)><below|=|<text|[lemma:
      <reference|lemma 16.24.178>(2)]>>x\<in\>A> it follows that
      <math|x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>
      which is needed for the definition to make sense.
    </note>

    <\note>
      <label|diff partial differential definition (1)>As
      <math|X<rsub|i><big|cap><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>=<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>
      it follows from [theorem: <reference|function restriction and
      composition>] that

      <\equation*>
        f<rsup|<around*|[|i,x|]>>=f\<circ\>I<rsup|<around*|[|i,x|]>>=f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>
      </equation*>

      so that we can rephrase the condition for <math|i>-partial
      differentiability as follows:

      <\equation*>
        f<text| is >i<text|-partial differentiable at <math|x> with
        >i<text|-partial differential >D<rsub|x,i>f
      </equation*>

      if we have\ 

      <\equation*>
        f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<rightarrow\>Y<text|
        is Fréchet differentiable at >x
      </equation*>

      with\ 

      <\equation*>
        D<rsub|x,i>f=D<rsub|x<rsub|i>><around*|(|f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>|)>
      </equation*>
    </note>
  </definition>

  It turns out that partial differentiation is local.

  <\theorem>
    <label|diff partial differentiation is local>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>B<rsup|\<circ\>>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and\ 

    <\equation*>
      f:A\<rightarrow\>Y<text| a function>
    </equation*>

    then we have\ 

    <\equation*>
      f<text| is >i<text|-partial differentiable at <math|x>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<rsub|\|A><text| is >i<text|-partial differentiable at >x
    </equation*>

    Further if <math|f> or <math|f<rsub|\|B>> is <math|i>-partial
    differentiable at <math|x> then <math|D<rsub|x,i>f=D<rsub|x,i>f<rsub|\|B>>.
  </theorem>

  <\proof>
    As <math|x\<in\>B<rsup|0>> there exist a open set <math|V> with
    <math|x\<in\>V\<subseteq\>B>, using [lemma: <reference|lemma 16.24.178>
    (6)] we have that\ 

    <\equation*>
      <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)><text|
      is a open set in <math|X<rsub|i>>>
    </equation*>

    As further <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>\<equallim\><rsub|<text|[lemma:
    <reference|lemma 16.24.178> (6)]>>x\<in\>V\<subseteq\>B> we have

    <\equation>
      <label|eq 16.82.6>x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>\<Rightarrow\>x\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>|)><rsup|\<circ\>>
    </equation>

    For <math|t\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>\<Rightarrow\>I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|f<rsub|\|B>|)><rsup|<around*|[|i,x|]>><around*|(|t|)>>|<cell|=>|<cell|<around*|(|f<rsub|\|B>\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|t|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsub|\|B><around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>>>|<row|<cell|>|<cell|<below|=|I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B>>|<cell|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x<rsub|1>\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|[|i,x|]>><around*|(|t|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 16.18.212><around*|(|f<rsub|\|B>|)><rsup|<around*|[|i,x|]>>=<around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>
    </equation>

    Hence we have:\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f> is <math|i>-partial
      differentiable at <math|x> with <math|i>-partial differential
      <math|D<rsub|x,i>f> then by [definition: <reference|diff partial
      differential definition>] <math|f<rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> and

      <\equation>
        <label|eq 16.67.3>D<rsub|x,i>f=D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>
      </equation>

      As <math|x<rsub|i><below|\<in\>|<text|[eq: <reference|eq
      16.82.6>]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>|)><rsup|0>>
      we have using [theorem: <reference|diff differentiability is a local
      property>(2)] that <math|<around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>>
      is Fréchet differentiable at <math|x<rsub|i>> and

      <\equation>
        <label|eq 16.68.3>D<rsub|x<rsub|i>><around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>=D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>
      </equation>

      Hence by [eq: <reference|eq 16.18.212>]
      <math|<around*|(|f<rsub|\|B>|)><rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> with
      <math|D<rsub|x<rsub|i>><around*|(|f<rsub|\|B>|)><rsup|<around*|[|i,x|]>><below|=|<text|[eq:
      <reference|eq 16.68.3>]>>D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>> or
      using the definition of partial differentiation

      <\equation*>
        f<rsub|\|B><text| is >i<text|-partial differentiable at >x<text| and
        >D<rsub|x,i>f<rsub|\|B>=D<rsub|x,i>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>If <math|f<rsub|\|B>> is <math|i>-partial
      differentiable at <math|x> with <math|i>-partial differential
      <math|D<rsub|x,i>f<rsub|\|B>> it follows by [definition:
      <reference|diff partial differential definition>]
      <math|<around*|(|f<rsub|\|B>|)><rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> and
      <math|D<rsub|x,i><around*|(|f<rsub|\|B>|)>=D<rsub|x<rsub|i>><around*|(|f<rsub|\|B>|)><rsup|<around*|[|i,x|]>>>.
      Using [eq: <reference|eq 16.18.212>] we have then that
      <math|<around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>>
      is Fréchet differentiable at <math|x<rsub|i>> and <math|>

      <\equation*>
        D<rsub|x,i>f<rsub|\|B>=D<rsub|x<rsub|i>><around*|(|f<rsub|\|B>|)><rsup|<around*|[|i,x|]>>=D<rsub|x<rsub|i>><around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>
      </equation*>

      As <math|x<rsub|i><below|\<in\>|<text|[eq: <reference|eq
      16.82.6>]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>|)><rsup|0><text|
      >> we have by [theorem: <reference|diff differentiability is a local
      property>] that <math|f<rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> with
      <math|D<rsub|x<rsub|i>><around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>=D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>>.
      Hence by definition\ 

      <\equation*>
        f<text| is partial differentiable at >x<text| and
        >D<rsub|x,i>f<rsub|\|B>=D<rsub|x,i>f
      </equation*>
    </description>
  </proof>

  <\corollary>
    <label|diff partial differentiation is local (1)>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A,B\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|f:A\<rightarrow\>Y>, <math|g:B\<rightarrow\>Y> two functions such
    that there exist a <math|W> with <math|W\<subseteq\>A<big|cap>B> and
    <math|f<rsub|\|W>=g<rsub|\|W>>, <math|x\<in\>W<rsup|0>> and
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then if <math|f> is
    <math|i>-partial differentiable at <math|x> we have that <math|g> is
    <math|i>-partial differentiable at <math|x> and
    <math|D<rsub|x,i>f=D<rsub|x,i>g>.
  </corollary>

  <\proof>
    As <math|f> is <math|i>-partial differentiable at <math|x> it follows
    from [theorem: <reference|diff partial differentiation is local>] that
    <math|f<rsub|\|W>> is <math|i>-partial differentiable at <math|x> with
    <math|D<rsub|x,i>f=D<rsub|x,i>f<rsub|\|W>>, hence as
    <math|f<rsub|\|W>=g<rsub|\|W>> we have that <math|g<rsub|\|W>> is
    <math|i>-partial differentiable at <math|x> with
    <math|D<rsub|x,i>f=D<rsub|x,i>g<rsub|\|W>>. Using [theorem:
    <reference|diff partial differentiation is local>] again it follows that
    <math|g> is <math|i>-partial differentiable at <math|x> with
    <math|D<rsub|x,i>g=D<rsub|x,i>g<rsub|\|W>=D<rsub|x,i>f>.
  </proof>

  Fréchet differentiable implies partial differentiability on interior
  points.

  <\theorem>
    <label|diff Frechet differentation implies partial differentiability >Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|x\<in\>A<rsup|\<circ\>>> and <math|f:A\<rightarrow\>Y> a function
    that is Fréchet differentiable at <math|x> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> is
    <math|i>-partial differentiable at <math|x> with <math|i>-partial
    differential

    <\equation*>
      D<rsub|x,i>f=D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation*>

    Further we have

    <\equation*>
      D<rsub|x>f=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x,i><rsup|>f\<circ\>\<pi\><rsub|i>|)>
    </equation*>

    In other words <math|\<forall\>h\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have\ 

    <\equation*>
      D<rsub|x>f<around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|x,i>f<around*|(|h<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|x\<in\>A<rsup|0>> there exist a open set <math|V> with
    <math|x\<in\>V\<subseteq\>A>, using [lemma: <reference|lemma 16.24.178>
    (6)] we have that\ 

    <\equation*>
      <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)><text|
      is a open set in <math|X<rsub|i>>>
    </equation*>

    As further <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>\<equallim\><rsub|<text|[lemma:
    <reference|lemma 16.24.178> (6)]>>x\<in\>V\<subseteq\>A> we have \ 

    <\equation>
      <label|eq 16.76.6>x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<Rightarrow\>x\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>
    </equation>

    By \ [lemma: <reference|lemma 16.24.178> (4)]

    <\equation*>
      <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j><text|
      is Fréchet differentiable at >x<rsub|i>
    </equation*>

    with\ 

    <\equation>
      <label|eq 16.19.136>D<rsub|x<rsub|i>><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>(4)]>>I<rsup|<around*|[|i,0|]>>
    </equation>

    Further, as <math|f:A\<rightarrow\>Y> is Fréchet differentiable at
    <math|x=I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>> and\ 

    <\equation*>
      I<rsup|<around*|[|i,x|]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)>\<subseteq\><rsub|<text|[theorem:
      <reference|function preimage of image (1)>]>>A
    </equation*>

    we can use the Chain Rule [theorem: <reference|diff chain rule>] so that

    <\equation*>
      f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>><text|
      is differentiable at >x<rsub|i>
    </equation*>

    with\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x<rsub|i>><around*|(|f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>|)>>|<cell|=>|<cell|D<rsub|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>><around*|(|x<rsub|i>|)>>f\<circ\>D<rsub|x<rsub|i>><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>>f\<circ\>D<rsub|x<rsub|i>><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>(2)]>>>|<cell|D<rsub|x>f\<circ\>D<rsub|x<rsub|i>><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.19.136>]>>>|<cell|D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>>>>>
    </eqnarray*>

    Hence by [definition: <reference|diff partial differential definition>]
    it follows that\ 

    <\equation>
      <label|eq 16.17.178>f<text| is >i<text|-partial differentiable at
      >x<text| with >D<rsub|x,i>f=D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation>

    Further if <math|h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x>f<around*|(|h|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>(3)]>>>|<cell|D<rsub|x>f<around*|(|<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|x>f<around*|(|I<rsup|<around*|[|i,0|]>><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.17.178>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|x,i><rsup|>f<around*|(|h<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|x,i>f<around*|(|\<pi\><rsub|i><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x,i>f\<circ\>\<pi\><rsub|i>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x,i>f\<circ\>\<pi\><rsub|i>|)>|)><around*|(|h|)>>>>>
    </eqnarray*>

    so that we have\ 

    <\equation*>
      D<rsub|x>f=<big|sum><rsub|j=1><rsup|n><around*|(|D<rsub|x,i><rsup|>f\<circ\>\<pi\><rsub|i>|)>
    </equation*>
  </proof>

  <\example>
    <label|diff constant function and partial differentiation>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    a open set, <math|x\<in\>A<rsup|0>> and <math|y\<in\>Y> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that the
    constant function

    <\equation*>
      C<rsub|y>:A\<rightarrow\>Y<text| defined by >C<rsub|y><around*|(|x|)>=y
    </equation*>

    has a <math|i>-partial differential at <math|x> with

    <\equation*>
      D<rsub|y,i>C<rsub|i>=C<rsub|0>
    </equation*>

    where\ 

    <\equation*>
      C<rsub|0>:X<rsub|i>\<rightarrow\>Y<text|is defined by
      >C<rsub|0><around*|(|h|)>=0
    </equation*>
  </example>

  <\proof>
    By [example: <reference|diff constant function is differentiable>]
    <math|C<rsub|y>> is Fréchet differentiable at <math|x> with
    <math|D<rsub|x>C<rsub|y>=C<rsub|0>> where\ 

    <\equation*>
      C<rsub|0>:X\<rightarrow\>Y<text| is defined by
      >C<rsub|0><around*|(|x|)>=0
    </equation*>

    Hence using [theorem: <reference|diff Frechet differentation implies
    partial differentiability >] we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    that <math|C<rsub|y>> has a <math|i>-partial derivative with

    <\equation*>
      D<rsub|x,i>C<rsub|y>=C<rsub|0>\<circ\>I<rsup|<around*|[|i,0|]>>=C<rsub|0>
    </equation*>

    [because <math|\<forall\>h\<in\>X<rsub|i>>
    <math|<around*|(|C<rsub|0>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h|)>=C<rsub|0><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|h|)>|)>=0>].
  </proof>

  <\note>
    Although Fréchet differentiability of a multi parameter function implies
    that all the partial differentials exist the opposite is not true as the
    following example proves.
  </note>

  <\example>
    <label|diff partial differentiability does not mean
    differentiaility>Define\ 

    <\equation*>
      f:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><text| by
      >f<around*|(|x,y|)>=<choice|<tformat|<table|<row|<cell|<frac|x\<cdot\>y|x<rsup|2>+y<rsup|2>><text|
      if ><around*|(|x,y|)>\<in\>\<bbb-R\><rsup|2>\\<around*|{|<around*|(|0,0|)>|}>>>|<row|<cell|0<text|
      if ><around*|(|x,y|)>=<around*|(|0,0|)>>>>>>
    </equation*>

    then <math|f> is not Fréchet differentiable at <math|<around*|(|0,0|)>>
    however <math|f> is <math|1>-partial and <math|2>-partial differentiable
    at <math|<around*|(|0,0|)>>
  </example>

  <\proof>
    Let <math|\<varepsilon\>=<frac|1|4>>,
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> and consider
    <math|z=<around*|(|<frac|\<delta\>|2>,<frac|\<delta\>|2>|)>> then we have\ 

    <\equation*>
      <around*|\<\|\|\>|z|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\||<frac|\<delta\>|2>|\|>,<around*|\||<frac|\<delta\>|2>|\|>|}>|)>=<frac|\<delta\>|2>\<less\>\<delta\>
    </equation*>

    However\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||f<around*|(|z|)>-f<around*|(|0,0|)>|\|>>|<cell|\<equallim\><rsub|<around*|(|\<delta\>,\<delta\>|)>\<neq\><around*|(|0,0|)>>>|<cell|<around*|\||<frac|<frac|\<delta\>|2>\<cdot\><frac|\<delta\>|2>|<around*|(|<frac|\<delta\>|2>|)><rsup|2>+<around*|(|<frac|\<delta\>|2>|)><rsup|2>>-0|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||<frac|1|2>|\|>>>|<row|<cell|>|<cell|\<gtr\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    which proves that <math|f> is not continuous at <math|<around*|(|0,0|)>>.
    So <math|f> can not be Fréchet differentiable at <math|<around*|(|0,0|)>>
    because Fréchet differentiable functions are continuous [see theorem:
    <reference|diff differentiable function is continuous>]. However we have
    that\ 

    <\equation*>
      f<rsup|<around*|[|1,<around*|(|0,0|)>|]>><around*|(|t|)>=f<around*|(|t,0|)>=<choice|<tformat|<table|<row|<cell|<frac|t\<cdot\>0|t<rsup|2>+0<rsup|2>><text|
      if ><around*|(|t,0|)>\<neq\><around*|(|0,0|)>>>|<row|<cell|0<text| if
      ><around*|(|t,0|)>=0>>>>>=0=C<rsub|0><around*|(|t|)>
    </equation*>

    <\equation*>
      f<rsup|<around*|[|2,<around*|(|0,0|)>|]>><around*|(|t|)>=f<around*|(|t,0|)>=<choice|<tformat|<table|<row|<cell|<frac|0\<cdot\>t|0<rsup|2>+t<rsup|2>><text|
      if ><around*|(|t,0|)>\<neq\><around*|(|0,0|)>>>|<row|<cell|0<text| if
      ><around*|(|t,0|)>=0>>>>>=0=C<rsub|0><around*|(|t|)>
    </equation*>

    proving that\ 

    <\equation*>
      f<rsup|<around*|[|1,<around*|[|<around*|(|0,0|)>|]>|]>>=C<rsub|0>=f<rsup|<around*|[|2,<around*|[|<around*|(|0,0|)>|]>|]>>
    </equation*>

    By [example: <reference|diff constant function is differentiable>]
    <math|><math|f<rsup|<around*|[|1,<around*|[|<around*|(|0,0|)>|]>|]>>>,
    <math|f<rsup|<around*|[|2,<around*|[|<around*|(|0,0|)>|]>|]>>> are
    Fréchet differentiable at <math|0> with
    <math|D<rsub|0>f<rsup|<around*|[|1,<around*|[|<around*|(|0,0|)>|]>|]>>=C<rsub|0>=D<rsub|0>f<rsup|<around*|[|2,<around*|[|<around*|(|0,0|)>|]>|]>>>.
    Hence <math|f> is is <math|1>-partial and <math|2>-partial differentiable
    at <math|<around*|(|0,0|)>> with\ 

    <\equation*>
      D<rsub|<around*|(|0,0|)>,1>f=C<rsub|0>=D<rsub|<around*|(|0,0|)>,2>f
    </equation*>
  </proof>

  As the partial differential is based on the Fréchet differential of
  <math|f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>>
  many properties of the Fréchet differential also applies for the partial
  differential.

  <\theorem>
    <label|diff partial differential properties>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|><math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|x\<in\>A> and <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we
    have:

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>Y> and <math|g:A\<rightarrow\>Y> are
      functions that are <math|i>-partial differentiable at <math|x> then\ 

      <\equation*>
        f+g:A\<rightarrow\>Y
      </equation*>

      is <math|i>-partial differentiable at <math|x> with\ 

      <\equation*>
        D<rsub|x,i><rsup|><around*|(|f+g|)>=D<rsub|x,i>f+D<rsub|x,i>g
      </equation*>

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>> and <math|f:A\<rightarrow\>Y>
      is a function that is <math|i>-partial differentiable at <math|x> then\ 

      <\equation*>
        \<alpha\>\<cdot\>f:A\<rightarrow\>Y
      </equation*>

      is <math|i>-partial differentiable at <math|x> with\ 

      <\equation*>
        D<rsub|x,i><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|x,i>f
      </equation*>

      <item>If <math|f:X\<rightarrow\>Y> is such that
      <math|f\<circ\>I<rsup|<around*|[|i,x|]>>\<in\>L<around*|(|X<rsub|i>,Y|)>>
      then <math|f> is <math|i>-partial differentiable and\ 

      <\equation*>
        D<rsub|x,i>f=f\<circ\>I<rsup|<around*|[|i,x|]>>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f,g> are <math|i>-partial differentiable at <math|x> we
      have by definition that <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> and
      <math|g\<circ\>I<rsup|<around*|[|i,x|]>>> are Fréchet differentiable at
      <math|x<rsub|i>> with

      <\equation>
        <label|eq 16.18.179>D<rsub|x,i><rsup|>f=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><text|
        and >D<rsub|x,i><rsup|>g=D<rsub|x<rsub|i>><around*|(|g\<circ\>I<rsup|<around*|[|i,x|]>>|)>
      </equation>

      Using [theorem: <reference|diff derivate operator is linear>] we have
      that

      <\equation*>
        f\<circ\>I<rsup|<around*|[|i,x|]>>+g\<circ\>I<rsup|<around*|[|i,x|]>><text|
        is Fréchet differentiable at <math|x<rsub|i>>>
      </equation*>

      with\ 

      <\equation*>
        D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>+g\<circ\>I<rsup|<around*|[|i,x|]>>|)>=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>+D<rsub|x<rsub|i>><around*|(|g\<circ\><around*|\<nobracket\>|I<rsup|<around*|[|i,x|]>>|)><rsub|>|\<nobracket\>>
      </equation*>

      As <math|<around*|(|f+g|)>\<circ\>I<rsup|<around*|[|i,x|]>>=f\<circ\>I<rsup|<around*|[|i,x|]>>+g\<circ\>I<rsup|<around*|[|i,x|]>>>
      it follows that <math|f+g> is Fréchet differentiable at
      <math|x<rsub|i>> with\ 

      <\equation*>
        D<rsub|x<rsub|i>><around*|(|<around*|(|f+g|)>\<circ\><around*|\<nobracket\>|I<rsup|<around*|[|i,x|]>>|)><rsub|>|\<nobracket\>>=D<rsub|x<rsub|i>><around*|(|f\<circ\><around*|\<nobracket\>|I<rsup|<around*|[|i,x|]>>|)>|\<nobracket\>>+D<rsub|x<rsub|i>><around*|(|g\<circ\>I<rsup|<around*|[|i,x|]>>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.18.179>]>>D<rsub|x,i><rsup|>f+D<rsub|x,i><rsup|>g
      </equation*>

      Hence by definition\ 

      <\equation*>
        f+g <text| is >i<text|-partial differentiable with
        >D<rsub|x,i><rsup|><around*|(|f+g|)>=D<rsub|x,i><rsup|>f+D<rsub|x,i><rsup|>g
      </equation*>

      <item>As <math|f> is <math|i>-partial differentiable we have by
      definition that <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> with

      <\equation>
        <label|eq 16.19.179>D<rsub|x,i><rsup|>f=D<rsub|x<rsub|i>><around*|(|f\<circ\><around*|\<nobracket\>|I<rsup|<around*|[|i,x|]>>|)>|\<nobracket\>>
      </equation>

      Using [theorem: <reference|diff derivate operator is linear>] we have
      that

      <\equation*>
        \<alpha\>\<cdot\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><text|
        is Fréchet differentiable at <math|x<rsub|i>>>
      </equation*>

      with\ 

      <\equation*>
        D<rsub|x<rsub|i>><around*|(|\<alpha\>\<cdot\><around*|(|f\<circ\><around*|\<nobracket\>|I<rsup|<around*|[|i,x|]>>|)>|)>|\<nobracket\>>=\<alpha\>\<cdot\>D<rsub|x<rsub|i>><around*|(|f\<circ\><around*|\<nobracket\>|I<rsup|<around*|[|i,x|]>>|)>|\<nobracket\>>
      </equation*>

      As <math|<around*|(|\<alpha\>\<cdot\>f|)>\<circ\>I<rsup|<around*|[|i,x|]>>=\<alpha\>\<cdot\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>>
      it follows that <math|\<alpha\>\<cdot\>f> is Fréchet differentiable at
      <math|x<rsub|i>> with\ 

      <\equation*>
        D<rsub|x<rsub|i>><around*|(|<around*|(|\<alpha\>f|)>\<circ\>I<rsup|<around*|[|i,x|]>>|)>=\<alpha\>\<cdot\>D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.19.179>]>>\<alpha\>\<cdot\>D<rsub|x,i><rsup|>f
      </equation*>

      Hence by definition\ 

      <\equation*>
        \<alpha\>\<cdot\>f <text| is >i<text|-partial differentiable with
        >D<rsub|x,i><rsup|><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|x,i><rsup|>f
      </equation*>

      <item>As <math|f\<circ\>I<rsup|<around*|[|i,x|]>>\<in\>L<around*|(|X<rsub|i>,Y|)>>
      we have by [example: <reference|diff linear mappings are
      differentiable>] that <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is
      Fréchet differentiable at <math|x<rsub|i>> with
      <math|D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>=f\<circ\>I<rsup|<around*|[|i,x|]>>>.
      Hence by definition we have that\ 

      <\equation*>
        f<text| is >i<text|-partial differentiable at >x<text| with
        >D<rsub|x,i><rsup|>f<around*|(|x|)>=f\<circ\>I<rsup|<around*|[|i,x|]>>
      </equation*>
    </enumerate>
  </proof>

  We have the following version of the chain rule for partial
  differentiation.

  <\theorem>
    <label|diff chain rule and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|><math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|B\<subseteq\>Y>, <math|x\<in\>X>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,

    <\equation*>
      f:A\<rightarrow\>Y<text| a function that is \ >i<text|-partial
      differentiable at >x<text| such that >f<around*|(|A|)>\<subseteq\>B
    </equation*>

    and

    <\equation*>
      g:B\<rightarrow\>Z<text| a function that is Fréchet differentiable at
      >f<around*|(|x|)>
    </equation*>

    then\ 

    <\equation*>
      g\<circ\>f:A\<rightarrow\>Z<text| is >i<text|-partial differentiable at
      >x<text| and >D<rsub|x,i><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x,i>f
    </equation*>
  </theorem>

  <\proof>
    As <math|f> is <math|i>-partial differentiable at <math|x> we have by
    [definition: <reference|diff partial differential definition>] that\ 

    <\equation*>
      f\<circ\>I<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<rightarrow\>Y<text|
      is Fréchet differentiable at >x<rsub|i>
    </equation*>

    and\ 

    <\equation>
      <label|eq 16.73.3>D<rsub|x,i>f=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>
    </equation>

    As <math|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)>\<equallim\><rsub|<text|[theorem:
    <reference|partial function image preimage of
    compositions>]>>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)>|)><below|\<subseteq\>|<text|[theorem:
    <reference|function preimage of image
    (1)>]>>f<around*|(|A|)>\<subseteq\>B> and <math|g:B\<rightarrow\>Z> is
    Fréchet differentiable at <math|f<around*|(|x|)>> it follows from the
    chain rule [theorem: <reference|diff chain rule>] that\ 

    <\equation>
      <label|eq 16.74.3>g\<circ\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><text|
      is Fréchet differentiable at >x<rsub|i><text|>
    </equation>

    with\ 

    <\equation>
      <label|eq 16.75.3>D<rsub|x<rsub|i>><around*|(|g\<circ\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>|)>=D<rsub|g<around*|(|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>|)>>g\<circ\>D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.73.3>]>>D<rsub|g<around*|(|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>|)>>g\<circ\>D<rsub|x,i>f
    </equation>

    As

    <\equation*>
      <around*|(|g\<circ\>f|)>\<circ\>I<rsup|<around*|[|i,x|]>><below|=|<text|[theorem:
      <reference|partial function associativity>]>>g\<circ\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>
    </equation*>

    and

    <\equation*>
      g<around*|(|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>|)>=g<around*|(|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>|)>|)>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>]>>g<around*|(|f<around*|(|x|)>|)>
    </equation*>

    [eqs: <reference|eq 16.74.3>, <reference|eq 16.75.3>] becomes\ 

    <\equation*>
      <around*|(|g\<circ\>f|)>\<circ\>I<rsup|<around*|[|i,x|]>><text| is
      Fréchet differentiable at <math|x<rsub|i>> and
      >D<rsub|x<rsub|i>><around*|(|<around*|(|g\<circ\>f|)>\<circ\>I<rsup|<around*|[|i,x|]>>|)>=D<rsub|g<around*|(|f<around*|(|x|)>|)>>\<circ\>D<rsub|x,i>f
    </equation*>

    Hence we have by [definition: <reference|diff partial differential
    definition>] that\ 

    <\equation*>
      g\<circ\>f<text| is partial differentiable at <math|x<text| and
      >D<rsub|x,i><around*|(|g\<circ\>f|)>=D<rsub|g<around*|(|f<around*|(|x|)>|)>>\<circ\>D<rsub|x,i>f>>
    </equation*>
  </proof>

  <subsection|Partial derivatives>

  <\definition>
    <label|diff partial derivate definition><index|partial
    derivate><index|<math|\<partial\><rsub|i>f<around*|(|x|)>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-R\><rsup|n>> equipped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-R\><rsup|n>>, <math|x\<in\>A> a
    limit point of <math|A>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and

    <\equation*>
      f:A\<rightarrow\>X<text| a function >
    </equation*>

    then <math|f> has a <with|font-series|bold|<math|i>-partial derivative at
    <math|x>> noted by <math|\<partial\><rsub|x,i><rsup|>f<around*|(|x|)>\<in\>X>
    if

    <\equation*>
      f\<circ\>I<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<rightarrow\>X
    </equation*>

    has a derivative at <math|x<rsub|i>>, the
    <with|font-series|bold|<math|i>-partial derivative at <math|x>> is
    defined by

    <\equation*>
      \<partial\><rsub|x,i>f<around*|(|x|)>=<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|x<rsub|i>><rprime|'>\<in\>X
    </equation*>

    Using [definitions: <reference|diff unprojection> and <reference|diff
    calculus derivate>] this is equivalent with

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exist a
      >\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsub|x<rsub|i>><text|
      with >0\<less\><around*|\||h|\|>\<less\>\<delta\><text| we have >
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x<rsub|1>,\<ldots\><wide*|x<rsub|i>+h|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>-f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|h>-\<partial\><rsub|x,i>f|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>+h|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>|)>|>-\<partial\><rsub|x,i>f|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>+h|)>-<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>|h>-\<partial\><rsub|x,i>f<around*|(|x|)>|\<\|\|\>>>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>
  </definition>

  <\note>
    As <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)><below|=|<text|[lemma:
    <reference|lemma 16.24.178>(2)]>>x\<in\>A> it follows that
    <math|x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>
    which is needed for the definition to make sense.
  </note>

  We have the following equivalent definition for the partial derivative of a
  function at a interior point of the domain of the function.

  <\theorem>
    <label|diff partial derivate and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-R\><rsup|n>> equipped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-R\><rsup|n>>,
    <math|x\<in\>A<rsup|\<circ\>>>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and

    <\equation*>
      f:A\<rightarrow\>X<text| a function >
    </equation*>

    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has a >i<text|-partial
      derivative at >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<text|
      has a >i<text|-partial differential at >x>|<cell|>>>>
    </eqnarray*>

    Further in either case we have\ 

    <\equation*>
      \<partial\><rsub|x,><rsup|>f<around*|(|x|)>=D<rsup|><rsub|x,i>f<around*|(|1|)>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>h\<in\>\<bbb-R\><text| we have
      >D<rsup|><rsub|x,i>f<around*|(|h|)>=h\<cdot\>\<partial\><rsub|x,i>f
    </equation*>
  </theorem>

  <\proof>
    \ As <math|x\<in\>A*<rsup|0>> there exist a open set <math|V> with
    <math|x\<in\>V\<subseteq\>A> hence by [lemma: <reference|lemma
    16.24.178>(6)] <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>>
    is open in <math|\<bbb-R\>>. As further
    <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>=x\<in\>V\<subseteq\>A>
    we have that <math|x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>
    it follows that\ 

    <\equation>
      <label|eq 16.94.6>x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>
    </equation>

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> has a <math|i>-partial
      derivative at <math|x> <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> has a
      derivative at <math|x<rsub|i>>, further, as
      <math|<rigid|x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>>>,
      we have by [theorem: <reference|topology interior point is a limit
      point in a normed space>] that <math|x<rsub|i>> is a limit point of
      <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>><math|>.
      Hence using [theorem: <reference|diff derivate and frechet
      differential>] it follows that

      <\equation*>
        f\<circ\>I<rsup|<around*|[|i,x|]>><text| is Fréchet differentiable at
        >x<rsub|i>
      </equation*>

      <\equation*>
        <around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><rsub|x<rsub|i>>=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|1|)>
      </equation*>

      <\equation*>
        \<forall\>h\<in\>\<bbb-R\><text| >D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|h|)>=h\<cdot\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|x<rsub|i>><rprime|'>
      </equation*>

      \ 

      So by [definition: <reference|diff partial differential definition>]\ 

      <\equation*>
        f<text| is >i<text|-partial differentiable at >x
      </equation*>

      As <math|\<partial\><rsub|x,i>f\<equallim\><rsub|<text|[definition:
      <reference|diff partial derivate definition>]>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><rsub|x<rsub|i>>>
      and <math|D<rsup|><rsub|x,i>f\<equallim\><rsub|<text|[definition:
      <reference|diff partial differential
      definition>]>>D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>>
      we have\ 

      <\equation*>
        \<partial\><rsub|x,i>f=D<rsup|><rsub|x,i>f<around*|(|1|)><text| and
        >\<forall\>h\<in\>\<bbb-R\><text| that
        >D<rsup|><rsub|x,i>f<around*|(|h|)>=h\<cdot\>\<partial\><rsub|x,i>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>Given that
      <math|x<rsub|i><below|\<in\>|<text|[eq: <reference|eq
      16.94.6>]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>>
      it follows from [theorem: <reference|diff SA(a)>] that
      <math|\<bbb-R\>=<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>.
      Further, as <math|f> has a <math|i>-partial differential at <math|x>,
      <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is Fréchet differentiable at
      <math|x<rsub|i>>. Using [theorem: <reference|diff derivate and frechet
      differential>] it follows that <math|f\<circ\>I<rsup|<around*|[|i,x|]>>>
      has a derivative at <math|x<rsub|i>> and thus by definition that
      <math|f> has a <math|i>-partial derivative at <math|x>.
    </description>
  </proof>

  Using the above theorem it is easy to prove that partial derivating is
  local on interior point.

  <\corollary>
    <label|diff partial derivation is local>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-R\><rsup|n>> equipped with the maximum norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A,B\<subseteq\>\<bbb-R\><rsup|n>>,
    <math|f:A\<rightarrow\>Y>, <math|g:B\<rightarrow\>Y> two functions such
    that there exist a <math|W\<subseteq\>\<bbb-R\><rsup|n>> with
    <math|W\<subseteq\>A<big|cap>B> and <math|f<rsub|\|W>=g<rsub|\|W>>,
    <math|x\<in\>W<rsup|\<circ\>>> and <math|i\<in\><around*|{|1,\<ldots\>,n|}>>.
    Then if <math|f> has a <math|i>-partial derivative at <math|x> then
    <math|g> has a partial derivative at <math|x> and
    <math|\<partial\><rsub|x,i>f=\<partial\><rsub|x,i>g>.
  </corollary>

  <\proof>
    As <math|f> has a <math|i>-partial derivative at <math|x> it follows from
    [theorem: <reference|diff partial derivate and partial differential>]
    that <math|f> has a <math|i>-partial differential at <math|x> and
    <math|\<partial\><rsub|x,i>f=D<rsub|x,i>f<around*|(|1|)>>. As partial
    differentiation is local [see theorem: <reference|diff partial
    differentiation is local (1)>] it follows that <math|g> has a
    <math|i>-partial differential at <math|x> and
    <math|D<rsub|x,i>f=D<rsub|x,i>g>. Hence using \ [theorem: <reference|diff
    partial derivate and partial differential>] again <math|g> has a
    <math|i>-partial derivative at <math|x> and
    <math|\<partial\><rsub|x,i>g=D<rsub|x,i>g<around*|(|1|)>=D<rsub|x,i>f<around*|(|1|)>=\<partial\><rsub|x,i>g>.
  </proof>

  We can rephrase [theorem: <reference|diff Frechet differentation implies
  partial differentiability >] as follows for partial derivatives.

  <\theorem>
    <label|diff differentiability and K^n>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-R\><rsup|n>> equipped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-R\><rsup|n>>,
    <math|x\<in\>A<rsup|\<circ\>>> and

    <\equation*>
      f:A\<rightarrow\>X<text| a function that is Fréchet differentiable at
      >x
    </equation*>

    then we have:

    <\enumerate>
      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> has
      a <math|i>-partial derivative <math|\<partial\><rsub|x,i>f> at <math|x>
      and a <math|i>-partial differential
      <math|<rigid|D<rsup|><rsub|x,i>f\<in\>L<around*|(|\<bbb-K\>,X|)>>>
      which is defined by

      <\equation*>
        D<rsup|><rsub|x,i>f<around*|(|h|)>=h\<cdot\>\<partial\><rsub|x,i>f
      </equation*>

      so that\ 

      <\equation*>
        \<partial\><rsub|x,i>f=D<rsup|><rsub|x,i>f<around*|(|1|)>
      </equation*>

      <item>Let <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> be the
      canonical basis on <math|\<bbb-R\><rsup|n>> defined by
      <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>> [see
      theorem: <reference|basis F^n>] then\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|we have
        >\<partial\><rsub|x,i>f=D<rsub|x>f<around*|(|e<rsub|i>|)>
      </equation*>

      and\ 

      <\equation*>
        \<forall\>h\<in\>\<bbb-R\><rsup|n><text| we have
        >D<rsub|x>f<around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|x,i>f
      </equation*>

      If we use matrix notation where

      <\equation*>
        h=<matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|h<rsub|n>>>>>>\<in\>\<cal-M\><rsub|n,1><around*|(|\<bbb-R\>|)><text|
        is a column vector>
      </equation*>

      and

      <\equation*>
        \<partial\><rsub|x>f<around*|(|x|)>=<matrix|<tformat|<table|<row|<cell|\<partial\><rsup|><rsub|x,1>f>|<cell|\<ldots\>>|<cell|\<partial\><rsup|><rsub|x,n>f>>>>><text|
        is a row vector>
      </equation*>

      then it follows that we can write this using matrix notation as

      <\equation*>
        D<rsub|x>f<around*|(|h|)>=\<partial\><rsub|x>f\<cdot\>h
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f> is Fréchet differentiable at <math|x> it follows from
      [theorem: <reference|diff Frechet differentation implies partial
      differentiability >] that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|f> is <math|i>-partial differentiable at <math|x>. Using
      [theorem: <reference|diff partial derivate and partial differential>]
      we conclude that <math|f> has a <math|i>-partial derivative with

      <\equation>
        <label|eq 16.78.3>D<rsup|><rsub|x,i>f<around*|(|h|)>=h\<cdot\>\<partial\><rsub|x,i>f
      </equation>

      and\ 

      <\equation>
        <label|eq 16.79.3>\<partial\><rsub|x,i>f=D<rsup|><rsub|x,i>f<around*|(|1|)>
      </equation>

      <item>We have for <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> that\ 

      <\equation*>
        <around*|(|I<rsup|<around*|[|i,0|]>><around*|(|1|)>|)><rsub|j>=<around*|(|0,\<ldots\>,0,<wide*|1|\<wide-underbrace\>><rsub|i>,0,\<ldots\>,0|)><rsub|j>=\<delta\><rsub|i,j>=<around*|(|e<rsub|i>|)><rsub|j>
      </equation*>

      or\ 

      <\equation>
        <label|eq 16.20.178>I<rsup|<around*|[|i,0|]>><around*|(|1|)>=e<rsub|i>
      </equation>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<partial\><rsub|x,i>f>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.79.3>]>>>|<cell|D<rsup|><rsub|x,i>f<around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff Frechet differentation implies partial
        differentiability >]>>>|<cell|<around*|(|D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x>f<around*|(|I<rsup|<around*|[|i,0|]>><around*|(|1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.20.178>]>>>|<cell|D<rsub|x>f<around*|(|e<rsub|i>|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
        >\<partial\><rsub|x,i>f=D<rsup|><rsub|x>f<around*|(|e<rsub|i>|)>
      </equation*>

      Further give <math|h\<in\>\<bbb-R\><rsup|n>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsub|x>f<around*|(|h|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff Frechet differentation implies partial
        differentiability >]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsup|><rsub|x,i>f<around*|(|h<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.78.3>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|x,i>f>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <subsection|Differentiation of vector valued functions>

  After examining the differentiation of a multi-parameter function we look
  now at differentiation of vector functions [functions that maps to a
  product of normed spaces].

  <\definition>
    <label|diff vector functions><index|<math|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|X> a set,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of sets and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family such that <math|f<rsub|i>\<in\>X<rsub|i><rsup|X>> then we define
    the following function

    <\equation*>
      <around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)><rsub|\<ast\>>:X\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><text|
      by ><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>=<around*|(|f<rsub|1><around*|(|x|)>,\<ldots\>,f<rsub|n><around*|(|x|)>|)>
    </equation*>
  </definition>

  <\note>
    We use the notation <math|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)><rsub|\<ast\>>>
    so that we don't confuse the above function with the tuple
    <math|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>> which is a element of
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><rsup|X>>
    and not a function from <math|X> to <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>.
  </note>

  <\theorem>
    <label|diff vector functions and linearity>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, \ <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>] and <math|<around*|{|L<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|L<rsub|i>\<in\>L<around*|(|X,X<rsub|i>|)>> then\ 

    <\equation*>
      <around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>
    </equation*>

    and\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>>|\<\|\|\>><rsub|L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,X<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x+\<alpha\>\<cdot\>y|)>|)><rsub|i>>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x+\<alpha\>\<cdot\>y|)>,\<ldots\>,L<rsub|i><around*|(|x+\<alpha\>\<cdot\>y|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|i><around*|(|x+\<alpha\>\<cdot\>y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L<rsub|i>\<in\>L<around*|(|X,X<rsub|i>|)>>>|<cell|L<rsub|i><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|i><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x|)>,\<ldots\>,L<rsub|n><around*|(|x|)>|)><rsub|i>+\<alpha\>\<cdot\><around*|(|L<rsub|1><around*|(|y|)>,\<ldots\>,L<rsub|n><around*|(|y|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>|)><rsub|i>+<around*|(|\<alpha\>\<cdot\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|y|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>+\<alpha\>\<cdot\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|y|)>|)><rsub|i>>>>>
    </eqnarray*>

    proving that <math|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x+\<alpha\>\<cdot\>y|)>=><math|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>+\<alpha\>\<cdot\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|y|)>>.
    Hence\ 

    <\equation*>
      <around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>>\<in\>Hom<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>
    </equation*>

    Further if <math|x\<in\>X> then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1><around*|(|x|)>,\<ldots\>,L<rsub|n><around*|(|x|)>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|order maximum of class with bigger
      elements>[>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,X<rsub|i>|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|complex max(a.x) 0\<less\>=a>]>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,X<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity linear mapping (1)>] that\ 

    <\equation*>
      <around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<star\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>
    </equation*>

    and by [theorem: <reference|continuity norm on L(X,Y)>]\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>>|\<\|\|\>><rsub|L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,X<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>
    </equation*>
  </proof>

  <\theorem>
    <label|diff vector functions (1)>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|X> a set and <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of sets and\ 

    <\equation*>
      f:X\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><text|
      a function >
    </equation*>

    then\ 

    <\equation*>
      f=<around*|(|\<pi\><rsub|1>\<circ\>f,\<ldots\>,\<pi\><rsub|n>\<circ\>f|)><rsub|\<ast\>>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x\<in\>X> then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    that\ 

    <\equation*>
      <around*|(|f<around*|(|x|)>|)><rsub|i>=\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>=<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>
    </equation*>

    so that\ 

    <\equation*>
      f<around*|(|x|)>=<around*|(|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>,\<ldots\>,<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)>=<around*|(|\<pi\><rsub|1>\<circ\>f,\<ldots\>,\<pi\><rsub|n>\<circ\>f|)><rsub|\<ast\>><around*|(|x|)>
    </equation*>

    proving that\ 

    <\equation*>
      f=<around*|(|\<pi\><rsub|1>\<circ\>f,\<ldots\>,\<pi\><rsub|n>\<circ\>f|)><rsub|\<ast\>>
    </equation*>
  </proof>

  <\theorem>
    <label|diff differential of a vector valued function>Let
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\>X>, <math|x\<in\>A>
    and\ 

    <\equation*>
      f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><text|
      a function >
    </equation*>

    then we have\ 

    <\equation*>
      f<text| is Fréchet differentiable at >x<text| >\<Leftrightarrow\><text|
      >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >\<pi\><rsub|i>\<circ\>f<text| is Fréchet differentiable at >x
    </equation*>

    Further if <math|f> is Fréchet differentiable at <math|x> then\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      \<pi\><rsub|i>\<circ\>D<rsub|x>f=D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>
    </equation*>

    or in other words

    <\equation*>
      D<rsub|x>f=<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><rsub|\<ast\>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is differentiable at <math|x>
      there exist a <math|L\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>
      such that\ 

      <\equation>
        <label|eq 16.98.6>\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
        >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| so that
        >\<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><text|
        \ ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>=L<around*|(|h|)>|\<\|\|\>><rsub|max>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
      </equation>

      <\equation>
        <label|eq 16.99.6>D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-<around*|(|\<pi\><rsub|i>\<circ\>L|)><around*|(|h|)>|\<\|\|\>><rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|L<around*|(|h|)>|)>|\<\|\|\>><rsub|i><rsub|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|)>|\<\|\|\>><rsub|i>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<equallim\><rsub|def>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.98.6>>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      Further, using [example: <reference|continuity norm of projection
      operator>] and [theorem: <reference|continuity composition of
      continuous linear mapping>], it follows that\ 

      <\equation*>
        \<pi\><rsub|i>\<circ\>L\<in\>L<around*|(|X,X<rsub|i>|)>
      </equation*>

      Hence we have by [definition: <reference|diff differentiability>] that
      <math|\<pi\><rsub|i>\<circ\>f> is Fréchet differentiable at <math|x>
      with\ 

      <\equation*>
        D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>=<around*|(|\<pi\><rsub|i>\<circ\>L|)><rsub|\|S<rsub|A><around*|(|x|)>>\<equallim\><rsub|<text|[theorem:
        <reference|function composition and
        restriction>]>>\<pi\><rsub|i>\<circ\>L<rsub|\|S<rsub|A><around*|(|x|)>><below|=|<text|[eq:
        <reference|eq 16.99.6>]>>\<pi\><rsub|i>\<circ\>D<rsub|x>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have, as <math|\<pi\><rsub|i>\<circ\>f> is Fréchet differentiable at
      <math|x>, that there exist a <math|<rigid|L<rsub|i>\<in\>L<around*|(|X,X<rsub|i>|)>>>
      such that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
      exist a <math|\<delta\><rsub|i,\<varepsilon\>>> such that

      <\equation>
        <label|eq 16.100.6>\<forall\>h\<in\>A<rsub|x><text| with
        <math|<around*|\<\|\|\>|x|\<\|\|\>>\<less\>\<delta\><rsub|i,\<varepsilon\>><text|
        ><around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-L<rsub|i><around*|(|h|)>|\<\|\|\>><rsub|i>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>
      </equation>

      <\equation>
        <label|eq 16.101.6>D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>=L<rsub|\|S<rsub|A><around*|(|x|)>>
      </equation>

      Using [theorem: <reference|diff vector functions and linearity>]

      <\equation>
        <label|eq 16.102.6>L=<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and take
      <math|\<delta\>=min<around*|(|<around*|{|\<delta\><rsub|i,\<varepsilon\>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|1><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|1><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|1><around*|(|L<around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|\<\|\|\>|<around*|{|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-L<rsub|i><around*|(|h|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|\<\|\|\>>|)>>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.100.6>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      hence\ 

      <\equation*>
        f<text| is Fréchet differentiable at >x
      </equation*>

      and\ 

      <\equation*>
        D<rsub|x>f=L<rsub|\|S<rsub|A><around*|(|x|)>>
      </equation*>

      Let <math|y\<in\>S<rsub|A><around*|(|x|)>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsub|x>f<around*|(|y|)>>|<cell|=>|<cell|L<rsub|\|S<rsub|A><around*|(|x|)>><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|y|)>,\<ldots\>,L<rsub|n><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>|)><rsub|\|S<rsub|A><around*|(|x|)>><around*|(|y|)>,\<ldots\>,<around*|(|L<rsub|n>|)><rsub|\|S<rsub|A><around*|(|x|)>><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.101.6>]>>>|<cell|<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,<around*|(|\<pi\><rsub|n>\<circ\>f|)><rsub|><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|x>\<circ\>f|)>|)><rsub|\<star\>><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation*>
        D<rsub|x>f=<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|x>\<circ\>f|)>|)><rsub|\<star\>>
      </equation*>
    </description>
  </proof>

  \;

  We have the following chain rule for the differential of vector valued
  functions

  <\corollary>
    <label|diff vector functions (2)>Let <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed spaces equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>X><math|>, <math|x\<in\>A>,
    <math|B\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    and\ 

    <\equation*>
      f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i><text|
      and >g:B\<rightarrow\>Z
    </equation*>

    functions such that\ 

    <\equation*>
      f<around*|(|x|)>\<in\>B<rsup|\<circ\>><text|,
      >f<around*|(|A|)>\<subseteq\>B<text|, >f<text| Fréchet differentiable
      at >x<text| and >g<text| Fréchet differentiable at >f<around*|(|x|)>
    </equation*>

    [so that by the Chain Rule [see theorem: <reference|diff chain rule>]
    <math|g\<circ\>f> is differentiable at <math|x>] then we have\ 

    <\equation*>
      D<rsub|x><around*|(|g\<circ\>f|)>=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsup|><rsub|f<around*|(|x|)>,i>g\<circ\>D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)>
    </equation*>
  </corollary>

  <\proof>
    Let <math|h\<in\>X> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x><around*|(|g\<circ\>f|)><around*|(|h|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|<around*|(|D<rsub|f<around*|(|x|)>>
      g\<circ\>D<rsub|x> f|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|x|)>>
      g<around*|(|D<rsub|x>f<around*|(|h|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff Frechet differentation implies partial
      differentiability >]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsup|><rsub|f<around*|(|x|)>,i>g<around*|(|<around*|(|D<rsub|x>
      f<around*|(|h|)>|)><rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsup|><rsub|f<around*|(|x|)>,i>g<around*|(|\<pi\><rsub|i><around*|(|D<rsub|x>f<around*|(|h|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsup|><rsub|f<around*|(|x|)>,i>g<around*|(|<around*|(|\<pi\><rsub|i>\<circ\>D<rsub|x>f|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff differential of a vector valued
      function>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsup|><rsub|f<around*|(|x|)>,i>g<around*|(|<around*|(|D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsup|><rsub|f<around*|(|x|)>,i>g\<circ\>D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><rsub|><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsup|><rsub|f<around*|(|x|)>,i>g\<circ\>D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)>|)><around*|(|h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      D<rsub|x><around*|(|g\<circ\>f|)>=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsup|><rsub|f<around*|(|x|)>,i>g\<circ\>D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)>
    </equation*>
  </proof>

  We can now look at the differentiability of functions between
  <math|\<bbb-R\><rsup|n>> and <math|\<bbb-R\><rsup|m>>.

  <\theorem>
    <label|diff Jacobian matrix><dueto|Jacobian matrix>Let
    <math|n,m\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    two normed spaces [based on the maximum norms) over the field
    <math|\<bbb-R\>>, <math|A\<subseteq\>\<bbb-R\><rsup|n>>,
    <math|x\<in\>A<rsup|0>> and

    <\equation*>
      f:A\<rightarrow\>\<bbb-R\><rsup|m><text| a function that is Fréchet
      differentiable at <math|x>>
    </equation*>

    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> we have that
    <math|\<pi\><rsub|j>\<circ\>f:A\<rightarrow\>\<bbb-R\>> has a
    <math|i>-partial derivative and\ 

    <\equation*>
      \<forall\>h\<in\>\<bbb-R\><rsup|n><text| we have
      ><around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|j>\<equallim\><rsub|def>\<pi\><rsub|j><around*|(|D<rsub|x>f<around*|(|h|)>|)>=<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<cdot\>h<rsub|i>
    </equation*>

    If we define the following matrices

    <\equation*>
      h=<matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|h<rsub|n>>>>>>\<in\>\<cal-M\><rsub|n,1><around*|(|\<bbb-R\>|)>
    </equation*>

    and

    <\equation*>
      D<rsub|x>f<around*|(|h|)>=<matrix|<tformat|<table|<row|<cell|<around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|<around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|m>>>>>>\<in\>\<cal-M\><rsub|m,1><around*|(|\<bbb-R\>|)>
    </equation*>

    and\ 

    <\equation*>
      <bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>=<matrix|<tformat|<table|<row|<cell|\<partial\><rsup|><rsub|x,1><around*|(|\<pi\><rsub|1>\<circ\>f|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsup|><rsub|x,n><around*|(|\<pi\><rsub|1>\<circ\>f|)>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|\<partial\><rsup|><rsub|x,1><around*|(|\<pi\><rsub|m>\<circ\>f|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsup|><rsub|x,n><around*|(|\<pi\><rsub|m>\<circ\>f|)>>>>>>\<in\>\<cal-M\><rsub|m,n><around*|(|\<bbb-R\>|)>
    </equation*>

    or

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|,>
      \<forall\>j\<in\><around*|{|1,\<ldots\>,n|}><text| we have
      ><around*|(|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>|)><rsub|i,j>=\<partial\><rsub|x,j><around*|(|\<pi\><rsub|i>\<circ\>f|)>
    </equation*>

    then we can express the Fréchet differential of <math|f> at <math|x> as
    the following matrix product

    <\equation*>
      D<rsub|x>f<around*|(|h|)>=<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>\<cdot\>h
    </equation*>

    The matrix <math|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>>
    is called the <with|font-series|bold|Jacobian matrix of <math|f> at
    <math|x>>. Further if <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    defined by <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>> is
    the canonical basis of <math|\<bbb-R\><rsup|n>> and
    <math|E<rprime|'>=<around*|{|e<rprime|'><rsub|1>,\<ldots\>,e<rprime|'><rsub|m>|}>>
    defined by <math|<around*|(|e<rprime|'><rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>>
    is the canonical basis of <math|\<bbb-R\><rsup|m>> then\ 

    <\equation*>
      <bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>=\<cal-M\><around*|(|D<rsub|x>f;E,E<rprime|'>|)>
      <text|[see definition: <reference|matrix linear mapping>]>
    </equation*>
  </theorem>

  <\proof>
    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|j\<in\><around*|{|1,\<ldots\>,m|}>>. As <math|f> is Fréchet
    differentiable at <math|x> it follows from [theorem: <reference|diff
    differential of a vector valued function>] that
    <math|\<pi\><rsub|j>\<circ\>f:A\<rightarrow\>\<bbb-R\>> is Fréchet
    differentiable at <math|x> with\ 

    <\equation>
      <label|eq 16.23.178>D<rsub|x><around*|(|\<pi\><rsub|j>\<circ\>f|)>=\<pi\><rsub|j>\<circ\>D<rsub|x>f
    </equation>

    As also <math|x\<in\>A<rsup|\<circ\>>> it follows from [theorem:
    <reference|diff differentiability and K^n>] that
    <math|\<pi\><rsub|j>\<circ\>f> has a <math|i>-partial derivative at
    <math|x> with\ 

    <\equation>
      <label|eq 16.24.178>D<rsub|x><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>
    </equation>

    Further for <math|h\<in\>\<bbb-R\><rsup|n>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|j>>|<cell|=>|<cell|\<pi\><rsub|j><around*|(|D<rsub|x>f<around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<pi\><rsub|j>\<circ\>D<rsub|x>f|)><around*|(|h|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.23.178>]>>>|<cell|D<rsub|x><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|h|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.24.178>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<in\>\<bbb-R\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<cdot\>h<rsub|i>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.25.178><around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|j>=<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<cdot\>h<rsub|i>
    </equation>

    Next for the matrix notation we have for
    <math|j\<in\><around*|{|1,\<ldots\>,m|}>> that \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>\<cdot\>h|)><rsub|j>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|\<partial\><rsup|><rsub|x,1><around*|(|\<pi\><rsub|1>\<circ\>f|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsup|><rsub|x,n><around*|(|\<pi\><rsub|1>\<circ\>f|)>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|\<partial\><rsup|><rsub|x,1><around*|(|\<pi\><rsub|m>\<circ\>f|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsup|><rsub|x,n><around*|(|\<pi\><rsub|m>\<circ\>f|)>>>>>>\<cdot\><matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|h<rsub|n>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x><rsub|>|)><rsub|j,i>\<cdot\>h<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<cdot\>h<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.25.178>]>>>|<cell|<around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|<around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|<around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|m>>>>>><rsub|j>>>>>
    </eqnarray*>

    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>\<cdot\>h>|<cell|=>|<cell|D<rsub|x>f<around*|(|h|)>>>>>
    </eqnarray*>

    Finally if <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|j\<in\><around*|{|1,\<ldots\>,m|}>> that we have by [definition:
    <reference|matrix linear mapping>] that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsub|x>f<around*|(|e<rsub|i>|)>|)><rsub|j>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|k=1><rsup|m>\<cal-M\><around*|(|D<rsub|x>f;E,E<rprime|'>|)>*<rsub|k,i>\<cdot\>e<rprime|'><rsub|k>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|m>\<cal-M\><around*|(|D<rsub|x>f;E,E<rprime|'>|)>*<rsub|k,i>\<cdot\><around*|(|e<rprime|'><rsub|k>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|m>\<cal-M\><around*|(|D<rsub|x>f;E,E<rprime|'>|)>*<rsub|k,i>\<cdot\>\<delta\><rsub|k,j>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|D<rsub|x>f;E,F|)><rsub|j,i>>>>>
    </eqnarray*>

    Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsub|x>f<around*|(|e<rsub|i>|)>|)><rsub|j>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.25.178>]>>>|<cell|<big|sum><rsub|k=1><rsup|n>\<partial\><rsub|x,k><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<cdot\><around*|(|e<rsub|i>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n>\<partial\><rsub|x,k><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<cdot\>\<delta\><rsub|i,k>>>|<row|<cell|>|<cell|=>|<cell|\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>|)><rsub|j,i>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      \<cal-M\><around*|(|D<rsub|x>f;E,E<rprime|'>|)><rsub|j,i>=<around*|(|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>|)><rsub|j,i>
    </equation*>

    or\ 

    <\equation*>
      \<cal-M\><around*|(|D<rsub|x>f;E,E<rprime|'>|)>=<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|x>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.23.181>Let <math|<around*|\<langle\>|X<rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|<around*|\<langle\>|X<rsub|1>\<cdot\>X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space of the product <math|X<rsub|1>\<cdot\>X<rsub|2>> with
    the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>,
    <math|L\<in\>L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>> [a bi-linear
    continuous mapping], <math|x=<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
    then <math|L> is differentiable at <math|x> and\ 

    <\equation*>
      D<rsub|x>L=D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>>L=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
    </equation*>

    where\ 

    <\equation*>
      L<around*|(|x<rsub|1>,\<ast\>|)>:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>Y<text|
      is defined by >L<around*|(|x<rsub|1>,\<star\>|)><around*|(|h|)>=L<around*|(|x<rsub|1>,\<ast\>|)><around*|(|h<rsub|1>,h<rsub|2>|)>=L<around*|(|x<rsub|1>,h<rsub|2>|)>
    </equation*>

    and\ 

    <\equation*>
      L<around*|(|\<ast\>,x<rsub|2>|)>:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>Y<text|
      is defined by >L<around*|(|\<star\>,x<rsub|2>|)><around*|(|h|)>=L<around*|(|\<ast\>,x<rsub|2>|)><around*|(|h<rsub|1>,h<rsub|2>|)>=L<around*|(|h<rsub|1>,x<rsub|2>|)>
    </equation*>
  </lemma>

  <\proof>
    First we prove that <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is linear. So let <math|<around*|(|h<rsub|1>,h<rsub|2>|)>,<around*|(|g<rsub|1>,g<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
    and <math|\<alpha\>\<in\>\<bbb-K\>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|<around*|(|h<rsub|1>,h<rsub|2>|)>+\<alpha\>\<cdot\><around*|(|g<rsub|1>,g<rsub|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>+\<alpha\>\<cdot\>g<rsub|1>,h<rsub|2>+\<alpha\>\<cdot\>g<rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,h<rsub|2>+\<alpha\>\<cdot\>g<rsub|2>|)>+L<around*|(|h<rsub|1>+\<alpha\>\<cdot\>g<rsub|1>,x<rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,h<rsub|2>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,g<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>+\<alpha\>\<cdot\>L<around*|(|g<rsub|1>,x<rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>+\<alpha\>*\<cdot\><around*|(|L<around*|(|x<rsub|1>,g<rsub|2>|)>+L<around*|(|g<rsub|1>,x<rsub|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>+\<alpha\>\<cdot\><around*|(|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|g<rsub|1>,g<rsub|2>|)>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    Hence we have that\ 

    <\equation>
      <label|eq 16.16.180>L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>\<in\>Hom<around*|(|X<rsub|1>\<cdot\>X<rsub|2>,Y|)>
    </equation>

    Next we prove that <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is continuous. So let <math|<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
    with

    <\equation>
      <label|eq 16.17.180><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>=1=<around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>
    </equation>

    then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|1>>|<cell|=<rsub|<text|[eq:
      <reference|eq 16.17.180>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity linear mapping (1)>] that
    <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is continuous, combining this with [eq: <reference|eq 16.16.180>] results
    in\ 

    <\equation>
      <label|eq 16.18.180>L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>\<in\>L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>,Y|)>
    </equation>

    Finally Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and take
    <math|\<delta\>=<frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>+1>\<in\>\<bbb-R\><rsup|+>>
    then, if <math|<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>=<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|x>>
    and <math|<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>\<less\>\<delta\>>,
    we have\ 

    <\equation>
      <label|eq 16.19.180><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,2|}>|}>|)>=<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>\<less\>\<delta\>
    </equation>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>+h<rsub|1>,x<rsub|2>+h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,x<rsub|2>+h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>+h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<wide*|L<around*|(|x<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|1>+<wide*|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<wide-underbrace\>><rsub|2>+<wide*|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|3>+L<around*|(|h<rsub|1>,h<rsub|2>|)>-<wide*|L<around*|(|x<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|1>-<wide*|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<wide-underbrace\>><rsub|2>-<wide*|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|3>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 16.19.180>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>+1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 16.19.180>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is a Fréchet approximation of <math|L> at <math|x>. Further, as
    <math|X<rsub|1>\<cdot\>X<rsub|2>> is open, it follows from [theorem:
    <reference|diff SA(a)>] that <math|X<rsub|1>\<cdot\>X<rsub|2>=S<rsub|X<rsub|1>\<cdot\>X<rsub|2>><around*|(|x|)>>.
    Hence we have by definition that

    <\equation*>
      L<text| is Fréchet differentiable at >x<text| with
      >D<rsub|x>L=<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><rsub|\|X<rsub|1>\<cdot\>X<rsub|2>>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
    </equation*>
  </proof>

  We use the above lemma to prove that the product of differentiable
  functions is differentiable.

  <\corollary>
    <label|diff differential of product of functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>,
    <math|A\<subseteq\>X> open with <math|x\<in\>A> and\ 

    <\equation*>
      f:A\<rightarrow\>\<bbb-K\><text| and >g:A\<rightarrow\>\<bbb-K\><text|
      functions that are Fréchet differentiable at >x
    </equation*>

    then\ 

    <\equation*>
      g\<cdot\>f:A\<rightarrow\>\<bbb-K\><text| defined by
      ><around*|(|g\<cdot\>f|)><around*|(|x|)>=g<around*|(|x|)>\<cdot\>f<around*|(|x|)>
    </equation*>

    is Fréchet differentiable at <math|x> with\ 

    <\equation*>
      D<rsub|x><around*|(|g\<cdot\>f|)>=f<around*|(|x|)>\<cdot\>D<rsub|x>g+g<around*|(|x|)>\<cdot\>D<rsub|x>f
    </equation*>

    where <math|f<around*|(|x|)>\<cdot\>D<rsub|x>g+g<around*|(|x|)>\<cdot\>D<rsub|x>f:X\<rightarrow\>\<bbb-K\>>
    is defined by

    <\equation*>
      <around*|(|f<around*|(|x|)>\<cdot\>D<rsub|x>g+g<around*|(|x|)>\<cdot\>D<rsub|x>f|)><around*|(|k|)>=f<around*|(|x|)>\<cdot\>D<rsub|x>
      g<around*|(|k|)>+g<around*|(|x|)>\<cdot\>D<rsub|x>g<around*|(|k|)>
    </equation*>
  </corollary>

  <\proof>
    Define the function\ 

    <\equation*>
      L:\<bbb-K\><rsup|2>\<rightarrow\>\<bbb-K\><text| by
      >L<around*|(|x,y|)>=x\<cdot\>y
    </equation*>

    Let <math|x,y,z,\<alpha\>\<in\>\<bbb-K\>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x,y+\<alpha\>\<cdot\>z|)>>|<cell|=>|<cell|x\<cdot\><around*|(|y+\<alpha\>\<cdot\>z|)>=x\<cdot\>y+\<alpha\>\<cdot\><around*|(|y\<cdot\>z|)>=L<around*|(|x,y|)>+\<alpha\>\<cdot\>L<around*|(|y,z|)>>>|<row|<cell|L<around*|(|x+\<alpha\>\<cdot\>y,z|)>>|<cell|=>|<cell|<around*|(|x+\<alpha\>\<cdot\>y|)>\<cdot\>z=x\<cdot\>z+\<alpha\>\<cdot\><around*|(|y\<cdot\>z|)>=L<around*|(|x,z|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|y,z|)>|)>>>>>
    </eqnarray*>

    proving that <math|L> is multilinear or\ 

    <\equation>
      <label|eq 16.20.181>L\<in\>Hom<around*|(|<wide*|\<bbb-K\>,\<ldots\>,\<bbb-K\>|\<wide-underbrace\>><rsub|2>;Y|)>
    </equation>

    Further if <math|h=<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>\<bbb-K\><rsup|2>>
    with <math|<around*|\||h<rsub|1>|\|>=<around*|\||h<rsub|2>|\|>=1> then we
    have\ 

    <\equation*>
      <around*|\||L<around*|(|h|)>|\|>=<around*|\||L<around*|(|h<rsub|1>,h<rsub|2>|)>|\|>=<around*|\||h<rsub|1>\<cdot\>h<rsub|2>|\|>=<around*|\||h<rsub|1>|\|>\<cdot\><around*|\||h<rsub|2>|\|>=1
    </equation*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that
    <math|L> is continuous, hence combined with [eq: <reference|eq
    16.20.181>] it follows that <math|L\<in\>L<around*|(|<wide*|\<bbb-K\>,\<ldots\>,\<bbb-K\>|\<wide-underbrace\>><rsub|2>;Y|)>>.
    Using the previous lemma [lemma: <reference|lemma 16.23.181>] it follows
    that\ 

    <\equation>
      <label|eq 16.33.181>\<forall\>y=<around*|(|y<rsub|1>,y<rsub|2>|)>\<in\>\<bbb-K\><rsup|2><text|
      <math|L> is differentiable at <math|y> with
      >D<rsub|<around*|(|y<rsub|1>,y<rsub|2>|)>>L=L<around*|(|y<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,y<rsub|2>|)>
    </equation>

    Define

    <\equation*>
      h:A\<rightarrow\>\<bbb-K\><rsup|2><text| by
      >h<around*|(|x|)>=<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)>
    </equation*>

    then <math|\<pi\><rsub|1>\<circ\>h=g> and
    <math|\<pi\><rsub|2>\<circ\>h=g>. As <math|f>, <math|g> are Fréchet
    differentiable at <math|x> it follows that
    <math|\<pi\><rsub|1>\<circ\>h>, <math|\<pi\><rsub|2>\<circ\>h> are
    Fréchet differentiable at <math|x> with
    <math|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>h|)>=D<rsub|x>g> and
    <math|D<rsub|x><around*|(|\<pi\><rsub|2>\<circ\>h|)>=D<rsub|x>f>. So we
    can use [theorem: <reference|diff differential of a vector valued
    function>] giving\ 

    <\equation>
      <label|eq 16.34.181>h<text| is Fréchet differentiable at <math|x> with
      >\<pi\><rsub|1>\<circ\>D<rsub|x>h=D<rsub|x>g<text| and
      >\<pi\><rsub|2>\<circ\>D<rsub|x>h=D<rsub|x>f<text|>
    </equation>

    Now <math|\<forall\>y\<in\>U> we have

    <\equation*>
      <around*|(|L\<circ\>h|)><around*|(|x|)>=<around*|(|L<around*|(|h<around*|(|x|)>|)>|)>=L<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)>=g<around*|(|x|)>\<cdot\>f<around*|(|x|)>=<around*|(|g\<cdot\>f|)><around*|(|x|)>
    </equation*>

    proving that\ 

    <\equation*>
      L\<circ\>h=g\<cdot\>f
    </equation*>

    Using the Chain Rule [see theorem: <reference|diff chain rule>] with
    [eqs: <reference|eq 16.33.181> and <reference|eq 16.34.181>] we have that
    <math|L\<circ\>h> is Fréchet differentiable at <math|x> so that

    <\equation*>
      g\<cdot\>f<text| is Fréchet differentiable at >x<text|>
    </equation*>

    and <math|\<forall\>k\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x><around*|(|g\<cdot\>f|)><around*|(|k|)>>|<cell|=>|<cell|D<rsub|x><around*|(|L\<circ\>h|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
      <rsub|h<around*|(|x|)>>L\<circ\>D<rsub|x>h|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|h<around*|(|x|)>>L<around*|(|D<rsub|x>h<around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)>>L<around*|(|D<rsub|x>h<around*|(|k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff differential of a vector valued
      function>]>>>|<cell|D<rsub|<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)>>L<around*|(|<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>h|)>,D<rsub|x><around*|(|\<pi\><rsub|2>\<circ\>h|)>|)><rsub|\<ast\>><around*|(|k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.34.181>]>>>|<cell|D<rsub|<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)>>L<around*|(|<around*|(|D<rsub|x>g,D<rsub|x>f|)><rsub|\<ast\>><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)>>L<around*|(|D<rsub|x>g<around*|(|k|)>,D<rsub|x>f<around*|(|k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.33.181>]>>>|<cell|<around*|(|L<around*|(|g<around*|(|x|)>,\<ast\>|)>+L<around*|(|\<ast\>,f<around*|(|x|)>|)>|)><around*|(|D<rsub|x>g<around*|(|k|)>,D<rsub|x>f<around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|g<around*|(|x|)>,D<rsub|x>f<around*|(|k|)>|)>+L<around*|(|D<rsub|x>g<around*|(|k|)>,f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<cdot\>D<rsub|x>f<around*|(|k|)>+<around*|(|D<rsub|x>g<around*|(|k|)>|)>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<cdot\>D<rsub|x>f<around*|(|k|)>+f<around*|(|x|)>\<cdot\>D<rsub|x>g<around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g<around*|(|x|)>\<cdot\>D<rsub|x>f|)><around*|(|k|)>+<around*|(|f<around*|(|x|)>\<cdot\>D<rsub|x>g|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g<around*|(|x|)>\<cdot\>D<rsub|x>f+f<around*|(|x|)>\<cdot\>D<rsub|x>g|)><around*|(|k|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      D<rsub|x><around*|(|g\<cdot\>f|)>=g<around*|(|x|)>\<cdot\>D<rsub|x>f+f<around*|(|x|)>\<cdot\>D<rsub|x>g
    </equation*>
  </proof>

  If we apply the above for <math|X=\<bbb-K\>> we retrieve the calculus
  product rule of derivatives.

  <\corollary>
    <label|diff derivate of a product of functions>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers,
    <math|A\<subseteq\>\<bbb-R\>>, <math|x\<in\>A<rsup|\<circ\>>> and
    <math|f:A\<rightarrow\>\<bbb-K\>> and <math|g:A\<rightarrow\>\<bbb-K\>>
    functions that have a derivative at <math|x> then <math|g\<cdot\>f> has a
    derivative at <math|x> and\ 

    <\equation*>
      <around*|(|g\<cdot\>f|)><rprime|'><rsub|x>=g<around*|(|x|)>\<cdot\>f<rprime|'><rsub|x>+f<around*|(|x|)>\<cdot\>g<rprime|'><rsub|x>
    </equation*>
  </corollary>

  <\proof>
    As <math|x\<in\>A<rsup|\<circ\>>> it follows from [theorem:
    <reference|diff SA(a)>] that <math|\<bbb-R\>=S<rsub|A><around*|(|x|)>>,
    so using [theorem: <reference|diff derivate and frechet differential>] we
    have that <math|f,g> are Fréchet differentiable at <math|x> and\ 

    <\equation*>
      f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)><text| and
      >g<rprime|'><rsub|x>=D<rsub|x>g<around*|(|1|)>
    </equation*>

    By the previous corollary [corollary: <reference|diff differential of
    product of functions>] it follows that\ 

    <\equation>
      <label|eq 16.35.181>g\<cdot\>f<text| is Fréchet differentiable at
      >x<text| and >D<rsub|x><around*|(|g\<cdot\>f|)>=g<around*|(|x|)>\<cdot\>D<rsub|x>f+f<around*|(|x|)>\<cdot\>D<rsub|x>g
    </equation>

    As <math|x\<in\>A<rsup|\<circ\>>> we have by [theorem:
    <reference|topology interior point is a limit point in a normed space>]
    that <math|x> is a limit point of <math|A>, hence we can use [theorem:
    <reference|diff derivate and frechet differential>] again, giving that

    <\equation*>
      g\<cdot\>f<text| has a derivative at >x
    </equation*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g\<cdot\>f|)><rprime|'><rsub|x>>|<cell|=>|<cell|D<rsub|x><around*|(|g\<cdot\>f|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.35.181>]>>>|<cell|<around*|(|g<around*|(|x|)>\<cdot\>D<rsub|x>f+f<around*|(|x|)>\<cdot\>D<rsub|x>g|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<cdot\>D<rsub|x>f<around*|(|1|)>+f<around*|(|x|)>\<cdot\>D<rsub|x>g<around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<cdot\>f<rprime|'><rsub|x>+f<around*|(|x|)>\<cdot\>g<rprime|'><rsub|x>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|diff derivate of inverse function>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|x\<in\>\<bbb-R\>\\<around*|{|0|}>> then we
    have that\ 

    <\equation*>
      <around*|(|<frac|1|\<ast\>>|)>:\<bbb-R\>\\<around*|{|0|}>\<rightarrow\>\<bbb-R\><text|
      defined by ><around*|(|<frac|1|\<ast\>>|)><around*|(|x|)>=<frac|1|x>
    </equation*>

    has a derivative at <math|x> with\ 

    <\equation*>
      <around*|(|<frac|1|\<ast\>>|)><rprime|'><rsub|x>=-<frac|1|x<rsup|2>>
    </equation*>
  </theorem>

  <\proof>
    As <math|<around*|{|0|}>> is a closed set [see theorems:
    <reference|separation metric spaces are Hausdorff>, <reference|separation
    Hausdorff every finite set is closed>] it follows that
    <math|\<bbb-R\>\\<around*|{|0|}>> is a open set, hence, as
    <math|x\<in\>\<bbb-R\>\\<around*|{|0|}>>, we have from [theorem:
    <reference|topology every element of a open set in a normed space is a
    limit point>] that \ 

    <\equation>
      <label|eq 16.99.4>x<text| is a limit point of
      >\<bbb-R\>\\<around*|{|0|}>
    </equation>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Then we have for
    <math|h\<in\><around*|(|\<bbb-R\>\\<around*|{|0|}>|)><rsub|x>> with\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<frac|1|x+h>-<frac|1|x>|h>-<around*|(|-<frac|1|x<rsup|2>>|)>>|<cell|=>|<cell|<frac|<frac|1|x+h>-<frac|1|x>|h>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<frac|x-x-h|<around*|(|x+h|)>\<cdot\>x>|h>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<frac|-h|<around*|(|x+h|)>\<cdot\>x>|h>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|-1|<around*|(|x+h|)>\<cdot\>x>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|-x+<around*|(|x+h|)>|<around*|(|x+h|)>\<cdot\>x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>><eq-number><label|eq
      16.36.182>>>>>
    </eqnarray*>

    Take now <math|\<delta\>=min<around*|(|<frac|\<varepsilon\>|2>\<cdot\><around*|\||x|\|><rsup|3>,<frac|<around*|\||x|\|>|2>|)>\<in\>\<bbb-R\><rsup|+>>
    [as <math|x\<neq\>0>] then we have for
    <math|h\<in\><around*|(|\<bbb-K\>\\<around*|{|0|}>|)><rsub|x>> with
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> that

    <\equation>
      <label|eq 16.37.182><around*|\||h|\|>\<less\><frac|<around*|\||x|\|>|2>\<less\><around*|\||x|\|>\<Rightarrow\>0\<less\><around*|\||x|\|>-<around*|\||h|\|><text|
      and ><frac|<around*|\||x|\|>|2>=<around*|\||x|\|>-<frac|<around*|\||x|\|>|2>\<less\><around*|\||x|\|>-<around*|\||h|\|>\<Rightarrow\><frac|1|<around*|\||x|\|>-<around*|\||h|\|>>\<less\><frac|2|<around*|\||x|\|>>
    </equation>

    so that

    <\equation>
      <label|eq 16.38.182><around*|\||x|\|>=<around*|\||x+h-h|\|>\<leqslant\><around*|\||x+h|\|>+<around*|\||h|\|>\<Rightarrow\><around*|\||x|\|>-<around*|\||h|\|>\<less\><around*|\||x+h|\|>\<Rightarrowlim\><rsub|<text|[eq:
      <reference|eq 16.37.182>]>><frac|1|<around*|\||x+h|\|>>\<less\><frac|1|<around*|\||x|\|>-<around*|\||h|\|>>\<less\><frac|2|<around*|\||x|\|>>
    </equation>

    and\ 

    <\equation>
      <label|eq 16.39.182><around*|\||h|\|>\<less\><frac|\<varepsilon\>|2>\<cdot\><around*|\||x|\|><rsup|3>
    </equation>

    Hence we have\ 

    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<frac|<frac|1|x+h>-<frac|1|x>|h>-<around*|(|-<frac|1|x<rsup|2>>|)>|\|>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.36.182>]>>>|<cell|<around*|\||<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>>|\|>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\||h|\|>|<around*|\||x|\|><rsup|2>\<cdot\><around*|\||x+h|\|>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 16.38.182>]>>>|<cell|<frac|<around*|\||h|\|>\<cdot\>2|<around*|\||x|\|><rsup|2>\<cdot\><around*|\||x|\|>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\||h|\|>\<cdot\>2|<around*|\||x|\|><rsup|3>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 16.39.182>]>>>|<cell|<frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|2\<cdot\><around*|\||x|\|><rsup|3>>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation*>
      <around*|(|<frac|1|\<ast\>>|)><text| has a derivative at >x<text| and
      ><around*|(|<frac|1|\<ast\>>|)><rprime|'><rsub|x>=-<frac|1|x<rsup|2>>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|diff power>We have

    <\enumerate>
      <item>If <math|n\<in\>\<bbb-N\>> then <math|\<forall\>x\<in\>\<bbb-R\>>

      <\equation*>
        <around*|(|\<cdot\>|)><rsup|n>:\<bbb-R\>\<rightarrow\>\<bbb-R\><text|
        defined by ><around*|(|\<cdot\>|)><rsup|n><around*|(|x|)>=x<rsup|n>
      </equation*>

      has a derivative at <math|x> and\ 

      <\equation*>
        <around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>=n\<cdot\><around*|(|\<cdot\>|)><rsup|n-1><around*|(|x|)>
      </equation*>

      or in a shorter notation

      <\equation*>
        <around*|(|x<rsup|n>|)><rsub|x><rprime|'>=n\<cdot\>x<rsup|n-1>
      </equation*>

      <item>If <math|z\<in\><around*|{|-n\|n\<in\>\<bbb-N\>|}>> then
      <math|\<forall\>x\<in\>\<bbb-R\>\\<around*|{|0|}>> [a open subset of
      <math|\<bbb-R\>>] then\ 

      <\equation*>
        <around*|(|\<cdot\>|)>:\<bbb-R\>\\<around*|{|0|}>\<rightarrow\>\<bbb-R\><text|
        defined by ><around*|(|\<cdot\>|)><rsup|z><around*|(|x|)>=<frac|1|x<rsup|<around*|(|-z|)>>>
      </equation*>

      has a derivative at <math|x> and\ 

      <\equation*>
        <around*|(|<around*|(|\<cdot\>|)><rsup|z>|)><rprime|'><rsub|x>=z\<cdot\><around*|(|\<cdot\>|)><rsup|z-1>
      </equation*>

      or in a shorter notation\ 

      <\equation*>
        <around*|(|x<rsup|-n>|)><rprime|'><rsub|x>=-n\<cdot\>x<rsup|-<around*|(|n+1|)>>=-n\<cdot\>x<rsup|-n-1>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ \ 

    <\enumerate>
      <item>We use induction to prove that
      <math|<around*|(|\<cdot\>|)><rsup|n>> has a derivative at <math|x>

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<around*|(|\<cdot\>|)><rsup|n><text|
        has a derivative at >x<text| and ><around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rsub|x><rprime|'>=n\<cdot\><around*|(|\<cdot\>|)><rsup|n-1><around*|(|x|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|n=1> then
        <math|<around*|(|\<cdot\>|)><rsup|n>=<around*|(|\<cdot\>|)><rsup|1>=Id<rsub|\<bbb-R\>>>
        so that by [theorem: <reference|diff identity function is
        differentiable>] <math|<around*|(|\<cdot\>|)><rsup|1>> is Fréchet
        differentiable at <math|x> with <math|D<around*|(|\<cdot\>|)><rsup|1><around*|(|x|)>=Id<rsub|\<bbb-R\>>>.
        Using [theorem: <reference|diff derivate and frechet differential>]
        it follows that

        <\equation*>
          <around*|(|\<cdot\>|)><rsup|1><text| has a derivative at >x<text|
          and >
        </equation*>

        and

        <\equation*>
          <around*|(|<around*|(|\<cdot\>|)><rsup|1>|)><rprime|'><rsub|x>=D<rsub|x><around*|(|\<cdot\>|)><rsup|1><around*|(|1|)>=Id<rsub|\<bbb-R\>><around*|(|1|)>=1=1\<cdot\><around*|(|\<cdot\>|)><rsup|0><around*|(|x|)>=1\<cdot\><around*|(|\<cdot\>|)><rsup|1-1><around*|(|x|)>
        </equation*>

        \ proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Given <math|y\<in\>X>
        we have

        <\equation*>
          <around*|(|\<cdot\>|)><rsup|n+1><around*|(|x|)>=x<rsup|n+1>=x\<cdot\>x<rsup|n>=Id<rsub|X><around*|(|x|)>\<cdot\><around*|(|\<cdot\>|)><rsup|n><around*|(|x|)>
        </equation*>

        so that\ 

        <\equation*>
          <around*|(|\<cdot\>|)><rsup|n+1>=Id<rsub|\<bbb-R\>>\<cdot\><around*|(|\<cdot\>|)><rsup|n>
        </equation*>

        As <math|n\<in\>S> we have that <math|<around*|(|\<cdot\>|)><rsup|n>>
        has a derivative at <math|x> with

        <\equation*>
          <around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>=n\<cdot\><around*|(|\<cdot\>|)><rsup|n-1><around*|(|x|)>.
        </equation*>

        So <math|><math|<around*|(|\<cdot\>|)><rsup|n+1>> is the product of
        two functions that have a derivative at <math|x>, hence by
        [corollary: <reference|diff derivate of a product of functions>] we
        have that

        <\equation*>
          <around*|(|\<cdot\>|)><rsup|n+1><text| has a derivative at >x
        </equation*>

        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<cdot\>|)><rsup|n+1>|)><rprime|'><rsub|x>>|<cell|=>|<cell|<around*|(|Id<rsub|\<bbb-R\>>\<cdot\><around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|\<bbb-R\>><around*|(|x|)>\<cdot\><around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>+<around*|(|\<cdot\>|)><rsup|n><around*|(|x|)>\<cdot\><around*|(|Id<rsub|\<bbb-R\>>|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|x\<cdot\>n\<cdot\>x<rsup|n-1>+x<rsup|n>\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|n\<cdot\>x<rsup|n>+1\<cdot\>x<rsup|n>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\>x<rsup|n>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\>x<rsup|<around*|(|n+1|)>-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\><around*|(|*\<cdot\>|)><rsup|<around*|(|n+1|)>-1><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>

      <item>Let <math|z=-n\<in\><around*|{|-n\|n\<in\>\<bbb-N\>|}>> then for
      every <math|y\<in\>\<bbb-R\>\\<around*|{|0|}>> we have\ 

      <\equation>
        <around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\><around*|(|\<cdot\>|)><rsup|n>|)><around*|(|y|)>=<around*|(|<frac|1|\<ast\>>|)><around*|(|<around*|(|\<cdot\>|)><rsup|n><around*|(|y|)>|)>=<around*|(|<frac|1|\<ast\>>|)><around*|(|y<rsup|n>|)>=<frac|1|y<rsup|n>>=<frac|1|y<rsup|-z>>=<around*|(|\<cdot\>|)><rsup|z><around*|(|y|)>
      </equation>

      So <math|<around*|(|\<cdot\>|)><rsup|z>> is the composition of
      <math|<around*|(|<frac|1|\<ast\>>|)>> and
      <math|<around*|(|\<cdot\>|)><rsup|n>> where these functions have a
      derivative at <math|x> and

      <\equation>
        <label|eq 16.41.182><around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>=n\<cdot\>x<rsup|n-1><text|
        and ><around*|(|<frac|1|\<cdot\>>|)><rprime|'><rsub|x>\<equallim\><rsub|<text|[eq:
        <reference|diff derivate of inverse function>]>>-<frac|1|x<rsup|2>>
      </equation>

      As <math|<around*|{|0|}>> is a closed set [see theorems:
      <reference|separation metric spaces are Hausdorff>,
      <reference|separation Hausdorff every finite set is closed>] it follows
      that <math|\<bbb-R\>\\<around*|{|0|}>> is a open set, hence, as
      <math|x\<in\>\<bbb-R\>\\<around*|{|0|}>>, we have from [theorem:
      <reference|topology every element of a open set in a normed space is a
      limit point>] that \ 

      <\equation>
        <label|eq 16.121.6>x<text| is a limit point of
        >\<bbb-R\>\\<around*|{|0|}>
      </equation>

      Hence using [theorem: <reference|diff chain rule calculus>] we have
      that <math|<around*|(|\<cdot\>|)><rsup|z>> has a derivative at <math|x>
      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<cdot\>|)><rsup|z>|)><rprime|'><rsub|x>>|<cell|=>|<cell|<around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\><around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff chain rule calculus>]>>>|<cell|<around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>\<cdot\><around*|(|<frac|1|\<ast\>>|)><rprime|'><rsub|<around*|(|\<cdot\>|)><rsup|n><around*|(|x|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.41.182>]>>>|<cell|n\<cdot\>x<rsup|n-1>\<cdot\><frac|-1|<around*|(|<around*|(|\<cdot\>|)><rsup|n><around*|(|x|)>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|n\<cdot\>x<rsup|n-1>\<cdot\>-<frac|1|x<rsup|2\<cdot\>n>>>>|<row|<cell|>|<cell|=>|<cell|-n\<cdot\>x<rsup|n-1>\<cdot\><frac|1|x<rsup|n-1>\<cdot\>x<rsup|2\<cdot\>n-<around*|(|n-1|)>>>>>|<row|<cell|>|<cell|=>|<cell|-n\<cdot\><frac|1|x<rsup|n+1>>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><frac|1|x<rsup|n+1>>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><around*|(|\<cdot\>|)><rsup|-<around*|(|n+1|)>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><around*|(|\<cdot\>|)><rsup|z-1><around*|(|x|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|diff derivative of f/g>Let Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real (complex) numbers, <math|A\<subseteq\>\<bbb-R\>>,
    <math|x\<in\>A> a limit point of <math|A> and
    <math|f:A\<rightarrow\>\<bbb-K\>> and <math|g:A\<rightarrow\>\<bbb-K\>>
    are functions such that <math|g<around*|(|A|)>\<subseteq\>\<bbb-L\>\\<around*|{|0|}>>,
    <math|f> has a derivative at <math|x> and <math|g> has a derivative at
    <math|f<around*|(|x|)>> then the function\ 

    <\equation*>
      <frac|f|g>:A\<rightarrow\>\<bbb-R\><text| defined by
      <math|<frac|f|g><around*|(|x|)>=<frac|f<around*|(|x|)>|g<around*|(|x|)>>>>
    </equation*>

    has a derivative at <math|x> and\ 

    <\equation*>
      <around*|(|<frac|f|g>|)><rprime|'>=<frac|f<rprime|'><rsub|x>\<cdot\>g<around*|(|x|)>-g<rprime|'><rsub|x>\<cdot\>f<around*|(|x|)>|<around*|(|g<around*|(|x|)>|)><rsup|2>>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x\<in\>A>. As <math|g:A\<rightarrow\>\<bbb-K\>> has a
    derivative <math|g<rprime|'><rsub|x>> at <math|x>,
    <math|g<around*|(|A|)>\<subseteq\>\<bbb-R\>\\<around*|{|0|}>> and
    <math|<around*|(|<frac|1|\<star\>>|)>:\<bbb-R\>\\<around*|{|0|}>\<rightarrow\>\<bbb-R\>>
    has a derivative at <math|g<around*|(|x|)>> [see theorem: <reference|diff
    derivate of inverse function>] it follows from the chain rule [see
    theorem: <reference|diff chain rule calculus>] that\ 

    <\equation*>
      <around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\>g|)>:\<bbb-R\>\<rightarrow\>\<bbb-R\>
    </equation*>

    has a derivative at <math|x> with\ 

    <\equation>
      <label|eq 16.45.153><around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\>g|)><rprime|'><rsub|x>=<around*|(|<frac|1|\<ast\>>|)><rprime|'><rsub|g<around*|(|x|)>>\<cdot\>g<rprime|'><rsub|x>\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate of inverse
      function>]>>-<frac|1|<around*|(|g<around*|(|x|)>|)><rsup|2>>\<cdot\>g<rprime|'><rsub|x>
    </equation>

    Using the above and the fact that <math|f> has also a derivative at
    <math|x> it follow from the product rule [theorem: <reference|diff
    derivate of a product of functions>] that
    <math|f\<cdot\><around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\>g|)>> has
    a derivative at <math|x> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|f\<cdot\><around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\>g|)>|)><rprime|'><rsub|x>>|<cell|=>|<cell|f<rprime|'><rsub|x>\<cdot\><around*|(|<around*|(|<frac|1|\<ast\>>\<circ\>g|)><around*|(|x|)>|)>+f<around*|(|x|)>\<cdot\><around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\>g|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|f<rprime|'><rsub|x>\<cdot\><frac|1|g<around*|(|x|)>>+f<around*|(|x|)>\<cdot\><around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\>g|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.45.153>]>>>|<cell|f<rprime|'><rsub|x>\<cdot\><frac|1|g<around*|(|x|)>>+f<around*|(|x|)>\<cdot\><around*|(|-<frac|1|<around*|(|g<around*|(|x|)>|)><rsup|2>>|)>\<cdot\>g<rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<rprime|'><rsub|x>|g<around*|(|x|)>>-f<around*|(|x|)>\<cdot\><frac|g<rprime|'><rsub|x>|<around*|(|g<around*|(|x|)>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<rprime|'><rsub|x>\<cdot\>g<around*|(|x|)>-f<around*|(|x|)>\<cdot\>g<rprime|'><rsub|x>|<around*|(|g<around*|(|x|)>|)><rsup|2>>>>>>
    </eqnarray*>

    Finally we have <math|\<forall\>t\<in\>\<bbb-R\>> that
    <math|<around*|(|f\<cdot\><around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\>g|)>|)><around*|(|t|)>=f<around*|(|t|)>\<cdot\><around*|(|<frac|1|\<ast\>>|)><around*|(|g<around*|(|t|)>|)>=f<around*|(|t|)>\<cdot\><frac|1|g<around*|(|t|)>>=<around*|(|<frac|f|g>|)><around*|(|t|)>>
    proving that <math|<frac|f|g>=f\<cdot\><around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\>g|)>>,
    hence\ 

    <\equation*>
      <around*|(|<frac|f|g>|)><rprime|'><rsub|x>=<frac|f<rprime|'><rsub|x>\<cdot\>g<around*|(|x|)>-f<around*|(|x|)>\<cdot\>g<rprime|'><rsub|x>|<around*|(|g<around*|(|x|)>|)><rsup|2>>
    </equation*>

    \;
  </proof>

  <section|Higher order differentials>

  <subsection|Linear mappings and multi-linear mappings>

  The idea of higher order differentiation looks simple, just differentiate
  the function that maps a point to it's differential, but it actually rather
  complex. If a function <math|f:A\<rightarrow\>Y> is Fréchet differentiable
  on <math|A> then <math|\<forall\>x\<in\>A>
  <math|D<rsub|x>f\<in\>L<around*|(|X,Y|)>> exist so that we can define the
  function

  <\equation*>
    D f:A\<rightarrow\>L<around*|(|X,Y|)><text| by ><around*|(|D
    f|)><around*|(|x|)>=D<rsub|x>f
  </equation*>

  and ask if that function is Fréchet differentiable at <math|x\<in\>U>. If
  so then <math|D<rsub|x><around*|(|D f|)>\<in\>L<around*|(|X,L<around*|(|X,Y|)>|)>>
  is defined to be the second order differential of <math|f> noted as
  <math|D<rsub|x><rsup|2>f>. Proceeding in this way we can define the third
  order differential <math|D<rsub|x><rsup|3>f>at <math|x> and so on. There is
  however a problem, if we look at the types of the differentials we have\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|D<rsub|x>f>|<cell|\<in\>>|<cell|L<around*|(|X,Y|)>>>|<row|<cell|D<rsup|2><rsub|x>f>|<cell|\<in\>>|<cell|L<around*|(|X,L<around*|(|X,Y|)>|)>>>|<row|<cell|D<rsup|3><rsub|x>f>|<cell|\<in\>>|<cell|L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
  </eqnarray*>

  So we have to learn to work with sets like
  <math|L<around*|(|X,L<around*|(|X,Y|)>|)>>,
  <math|L<around*|(|X,L<around*|(|X,Y|)>|)>><text-dots> . Evaluating the
  higher order differentials is rather elaborated because we have to use

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|D
    f<around*|(|x|)>|)><around*|(|y|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|<around*|(|<around*|(|D<rsup|2>f<around*|(|x|)>|)><around*|(|y<rsub|1>|)>|)><around*|(|y<rsub|2>|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|<around*|(|<around*|(|<around*|(|D<rsup|3>f<around*|(|x|)>|)><around*|(|y<rsub|1>|)>|)><around*|(|y<rsub|2>|)>|)><around*|(|y<rsub|3>|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
  </eqnarray*>

  It would be nicer if the higher order differentials are multi-linear
  functions so that we have\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|D<rsub|x>f<around*|(|y|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|D
    <rsub|x><rsup|2>f<around*|(|y<rsub|1>,y<rsub|2>|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|D<rsub|x><rsup|3>f<around*|(|y<rsub|1>,y<rsub|2>,y<rsub|3>|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|D<rsub|x><rsup|n>f<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>>|<cell|\<in\>>|<cell|Y>>>>
  </eqnarray*>

  To be able to do this we must do the following identifications

  <\eqnarray*>
    <tformat|<table|<row|<cell|L<around*|(|X,L<around*|(|X,Y|)>|)>>|<cell|is
    identified with>|<cell|L<rsup|2><around*|(|X;Y|)>>>|<row|<cell|L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>>|<cell|is
    identified with>|<cell|L<rsup|3><around*|(|X;Y|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
  </eqnarray*>

  where the identification maintains linearity, continuity and the norm. This
  is the focus of this section. First we need some recursive definitions.

  <\definition>
    <label|diff L_n(X;Y)><index|<math|L<rsub|n><around*|(|X;Y|)>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces then we define <math|L<rsub|n><around*|(|X;Y|)>>
    recursively as follows.

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<rsub|n><around*|(|X;Y|)>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|L<around*|(|X,Y|)><text|
      if >n=1>>|<row|<cell|L<around*|(|X,L<rsub|n-1><around*|(|X;Y|)>|)><text|
      if >1\<less\>n>>>>>>>>>
    </eqnarray*>
  </definition>

  <\example>
    Using the above definition we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<rsub|1><around*|(|X;Y|)>>|<cell|=>|<cell|L<around*|(|X,Y|)>>>|<row|<cell|L<rsub|2><around*|(|X;Y|)>>|<cell|=>|<cell|L<around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|X,L<around*|(|X,Y|)>|)>>>|<row|<cell|L<rsub|3><around*|(|X;Y|)>>|<cell|=>|<cell|L<around*|(|X,L<rsub|2><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|L<rsub|n><around*|(|X;Y|)>>|<cell|=>|<cell|L<around*|(|X,L<around*|(|X,\<ldots\>,<around*|(|L<around*|(|X,Y|)>|)>|)>|)>>>>>
    </eqnarray*>
  </example>

  <\lemma>
    <label|lemma 16.61.207>Let <math|n,m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces then

    <\equation*>
      L<rsub|n+m><around*|(|X;Y|)>=L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>
    </equation*>
  </lemma>

  <\proof>
    We prove this by induction, so define\ 

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|<text|If
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
      is a normed space then >L<rsub|n+m><around*|(|X;Y|)>=<rigid|L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S<rsub|n>>>As <math|L<rsub|n+1><around*|(|X;Y|)>\<equallim\><rsub|def>L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>\<equallim\><rsub|def>L<rsub|1><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>>
      it follows that <math|1\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<rsub|n+<around*|(|m+1|)>><around*|(|X;Y|)>>|<cell|=>|<cell|L<rsub|<around*|(|n+m|)>+1><around*|(|X;Y|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|X,L<rsub|n+m><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|m\<in\>S<rsub|n>>>|<cell|L<around*|(|X,L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|L<rsub|m+1><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>>>>>
      </eqnarray*>

      proving that <math|m+1\<in\>S>.
    </description>
  </proof>

  <\corollary>
    <label|corollary 16.50.192>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces then

    <\equation*>
      L<rsub|n><around*|(|X;Y|)>=L<rsub|n-1><around*|(|X;L<rsub|1><around*|(|X;Y|)>|)>\<equallim\><rsub|L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>L<rsub|n-1><around*|(|X;L<around*|(|X,Y|)>|)>
    </equation*>
  </corollary>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<rsub|n><around*|(|X;Y|)>>|<cell|\<equallim\>>|<cell|L<rsub|<around*|(|n-1|)>+1><around*|(|X;Y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n-1\<in\>\<bbb-N\>\<wedge\><text|[lemma:
      <reference|lemma 16.61.207>]>>>|<cell|L<rsub|n-1><around*|(|X;L<rsub|1><around*|(|X;Y|)>|)>>>>>
    </eqnarray*>
  </proof>

  We want now to show that <math|L<rsub|n><around*|(|X;Y|)>> is isometric to
  <math|L<rsup|n><around*|(|X;Y|)>>, first we show how elements of
  <math|L<rsub|n><around*|(|X;Y|)>> can act on tuples of elements of
  <math|X>.

  <\definition>
    <label|diff L(x1:..xn)><index|<math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|L\<in\>L<rsub|n><around*|(|X;Y|)>>,
    <math|m\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\>X<rsup|m>> then
    we define <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>> recursively
    as\ 

    <\equation*>
      L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=<choice|<tformat|<table|<row|<cell|L<around*|(|x<rsub|1>|)><text|
      if >m=1>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)><text|
      if >1\<less\>m\<leqslant\>n>>>>>
    </equation*>

    <\note>
      This is well defined as for <math|1\<less\>m\<leqslant\>n> we have that
      <math|1\<less\>n> so that

      <\equation*>
        L\<in\>L<rsub|n><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n-1><around*|(|X;Y|)>|)><text|
        hence >L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n-1><around*|(|X;Y|)>
      </equation*>
    </note>
  </definition>

  <\example>
    Let <math|n=4> then for <math|L\<in\>L<rsub|4><around*|(|X;Y|)>=L<around*|(|X,L<rsub|3><around*|(|X;Y|)>|)>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|4>|)>>|<cell|=>|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>x<rsub|4>|)><text|
      where >L<around*|(|x<rsub|1>|)>\<in\>L<rsub|3><around*|(|X;Y<rsub|>|)>=L<around*|(|X,L<rsub|2><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>:\<ldots\>:x<rsub|4>|)><text|
      where ><around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>\<in\>L<rsub|2><around*|(|X;Y|)>=L<around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>|)>|)><around*|(|x<rsub|4>:\<ldots\>:x<rsub|4>|)><text|
      where ><around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>|)>\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>|)>|)><around*|(|x<rsub|4>|)>\<in\>Y>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|3>|)>>|<cell|=>|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|3>|)><text|
      where >L<around*|(|x<rsub|1>|)>\<in\>L<rsub|3><around*|(|X;Y|)>=L<around*|(|x,L<rsub|2><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>:\<ldots\>:x<rsub|3>|)><text|
      where ><around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>\<in\>L<rsub|2><around*|(|X;Y|)>=L<around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>|)>\<in\>L<rsub|1><around*|(|X;Y|)>>>>>
    </eqnarray*>
  </example>

  The above example suggests the following theorem that also ensures that
  [definition: <reference|diff L(x1:..xn)>] is valid.

  <\lemma>
    <label|lemma 16.51.186>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|L\<in\>L<rsub|n><around*|(|X;Y|)>>,
    <math|m\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\>X<rsup|m>> then
    we have\ 

    <\equation*>
      L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
      if >m=n>>|<row|<cell|L<rsub|n-m><around*|(|X;Y|)><text| if
      >m\<less\>n>>>>>
    </equation*>
  </lemma>

  <\proof>
    We use induction to prove this so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >m\<in\><around*|{|1,\<ldots\>,n|}><text| then
      >\<forall\>L\<in\>L<rsub|n><around*|(|X;Y|)><text| we have
      >\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\>X<rsup|m><text|
      that ><rigid|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
      if >m=n>>|<row|<cell|L<rsub|n-m><around*|(|X;Y|)><text| if
      >m\<less\>n>>>>>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>If <math|m\<in\><around*|{|1,\<ldots\>,1|}>=<around*|{|1|}>>
      then <math|m=1=n>. Let <math|L\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      then we have for every <math|<around*|(|x<rsub|1>|)>\<in\>X<rsup|1>>
      that <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>\<in\>Y>.
      Hence as <math|m=n> we have\ 

      <\equation*>
        L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
        if >m=n>>|<row|<cell|L<rsub|n-m><around*|(|X;Y|)><text| if
        >m\<less\>n>>>>>
      </equation*>

      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsub|n+1><around*|(|X;Y|)>> then for
      <math|m\<in\><around*|{|1,\<ldots\>,n+1|}>> we have for <math|m>
      either:\ 

      <\description>
        <item*|<math|m=1>>As <math|L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>
        and <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>>
        it follows that\ 

        <\equation*>
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsub|n><around*|(|X;Y|)>=L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)>
        </equation*>

        proving as <math|m=1\<less\>n+1> that\ 

        <\equation*>
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
          if >m=n+1>>|<row|<cell|L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)><text|
          if >m\<less\>n+1>>>>>
        </equation*>

        <item*|<math|m=n+1>>Given <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|m>=X<rsup|n+1>>
        we have, as <math|L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|x,L<rsub|n><around*|(|X;Y|)>|)>>,
        that <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>.
        As <math|n\<in\>S>, <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n>>
        it follows that\ 

        <\equation*>
          <around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>\<in\>Y
        </equation*>

        hence\ 

        <\equation*>
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<equallim\><rsub|m=n+1>L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>\<in\>Y
        </equation*>

        proving as <math|m\<nless\>n+1> that\ 

        <\equation*>
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
          if >m=n+1>>|<row|<cell|L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)><text|
          if >m\<less\>n+1>>>>>
        </equation*>

        \;

        <item*|<math|m\<in\><around*|{|2,\<ldots\>,n|}>>>Given
        <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\>X<rsup|m>> we
        have, \ as <math|L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>,
        that <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>.
        As <math|n\<in\>S>, <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|m>|)>\<in\>X<rsup|m-1>>
        and <math|1\<leqslant\>m-1\<less\>n> it follows that

        <\equation*>
          <around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsub|n-<around*|(|m-1|)>><around*|(|X;Y|)>=L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)>
        </equation*>

        hence\ 

        <\equation*>
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsub|<around*|(|n+1|)>-m<around*|(|X;Y|)>>
        </equation*>

        proving as <math|1\<less\>m\<less\>n+1>

        <\equation*>
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
          if >m=n+1>>|<row|<cell|L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)><text|
          if >m\<less\>n+1>>>>>
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation*>
        \<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)><text| that
        >L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
        if >m=n+1>>|<row|<cell|L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)><text|
        if >m\<less\>n+1>>>>>
      </equation*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  In case <math|X=\<bbb-K\>> we have a simpler expression for
  <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>.

  <\theorem>
    <label|diff L(x1:..xn)=L(1:..:1). product>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|L\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)>> and
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
    then we have\ 

    <\equation*>
      L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=<around*|(|<big|prod><rsub|i=1><rsup|n>x<rsub|i>|)>\<cdot\>L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)><text| and
      ><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n><text|
      then >L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=<around*|(|<big|prod><rsub|i=1><rsup|n>x<rsub|i>|)>\<cdot\>L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|L\<in\>L<rsub|1><around*|(|\<bbb-K\>;X|)>=L<around*|(|\<bbb-K\>,X|)>>
      then for <math|<around*|(|x<rsub|1>|)>\<in\>\<bbb-K\><rsup|1>> we have\ 

      <\equation*>
        L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>=L<around*|(|x<rsub|1>\<cdot\>1|)>\<equallim\><rsub|L\<in\>L<around*|(|\<bbb-K\>,X|)>>x<rsub|1>\<cdot\>L<around*|(|1|)>=<around*|(|<big|prod><rsub|i=1><rsup|1>x<rsub|i>|)>\<cdot\>L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>
      </equation*>

      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
      <math|L\<in\>L<rsub|n+1><around*|(|\<bbb-K\>;X|)>=L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>>
      then we have for <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>\<bbb-K\><rsup|n>>
      that <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)>>.
      So as <math|n\<in\>S> and <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>\<in\>\<bbb-K\><rsup|n>>
      we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=2><rsup|n+1>x<rsub|i>|)>\<cdot\><around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>>>|<cell|<around*|(|<big|prod><rsub|i=2><rsup|n+1>x<rsub|i>|)>\<cdot\>x<rsub|1>\<cdot\><around*|(|L<around*|(|1|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|I=1><rsup|n+1>x<rsub|i>|)>\<cdot\><around*|(|L<around*|(|1|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n+1>x<rsub|i>|)>\<cdot\>L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>=L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i>
      </equation*>

      hence\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.53.186>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces and <math|L\<in\>L<rsub|n><around*|(|X;Y|)>> then for
    <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>> we have

    <\equation*>
      L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-1>|)>|)><around*|(|x<rsub|n>|)>
    </equation*>
  </lemma>

  <\proof>
    We use induction to prove this, so define

    <\equation*>
      S=<around*|{|n\<in\><around*|{|2,\<ldots\>,n|}>\|<text|If
      >L\<in\>L<rsub|n><around*|(|X;Y|)><text| then for
      ><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n><text| we
      have >L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=<rigid|<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-1>|)>|)><around*|(|x<rsub|n>|)>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|2\<in\>S>>If <math|L\<in\>L<rsub|2><around*|(|X;Y|)>=L<around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>=L<around*|(|X,L<around*|(|X,Y|)>|)>>
      then for <math|<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsup|2>> we
      have\ 

      <\equation*>
        L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|2>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|2>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>=<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>=<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|2-1>|)>|)><around*|(|x<rsub|2>|)>
      </equation*>

      proving that <math|2\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsub|n+1><around*|(|X;Y|)>> then for
      <math|*<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n+1>>
      we have, as <math|<rigid|L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n>*<around*|(|X;Y|)>|)>>>,
      that <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>.
      As <math|n\<in\>S> and <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n>>
      we have that\ 

      <\equation*>
        <around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)><below|=|n\<in\>S><around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>|)><around*|(|x<rsub|n+1>|)>=<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|)><around*|(|x<rsub|n+1>|)>
      </equation*>

      so that\ 

      <\equation*>
        L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>=<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|)><around*|(|x<rsub|n+1>|)>
      </equation*>

      proving that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.54.187>Let \ <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|\<alpha\>\<in\>\<bbb-K\>>, <math|L<rsub|1>>,
    <math|L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)>> then
    <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
    we have\ 

    <\equation*>
      <around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
    </equation*>
  </lemma>

  <\proof>
    \ The proof is by induction, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|\<forall\>\<alpha\>\<in\>\<bbb-K\><text|,
      >\<forall\>L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)><text| we
      have >\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n><text|
      that ><rigid|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>=L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>Take <math|\<alpha\>\<in\>\<bbb-K\>>,
      <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      then we have for <math|<around*|(|x<rsub|1>|)>\<in\>X<rsup|1>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|pointwise
        definition>>>|<cell|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>>>>>
      </eqnarray*>

      proving that <math|1\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Take
      <math|\<alpha\>\<in\>\<bbb-K\>>, <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>
      then we have

      <\equation*>
        <around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>|)>\<equallim\><rsub|<text|pointwise
        definition>>L<rsub|1><around*|(|x<rsub|1>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>|)><text|>
      </equation*>

      hence

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x<rsub|1>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)><eq-number><label|eq
        16.42.187>>>>>
      </eqnarray*>

      As <math|L<rsub|1><around*|(|x<rsub|1>|)>,L<rsub|2><around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>
      and <math|n\<in\>S> it follows that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L<rsub|1><around*|(|x<rsub|1>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>>|<cell|<below|=|n\<in\>S>>|<cell|<around*|(|L<rsub|1><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|L<rsub|2><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>>>
      </eqnarray*>

      which combined with [eq: <reference|eq 16.42.187>] proves that\ 

      <\equation*>
        <around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
      </equation*>

      Hence we have that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.55.187>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces and <math|L\<in\>L<rsub|n><around*|(|X;Y|)>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then for
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have for
    <math|<around*|(|x<rsub|1>,\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
    that\ 

    <\equation*>
      L<around*|(|x<rsub|1>:\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>
    </equation*>
  </lemma>

  <\proof>
    We use mathematical induction for the proof, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L\<in\>L<rsub|n><around*|(|X;Y|)><text| then
      >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have for
      <math|<around*|(|x<rsub|1>,\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n><text|
      that >L<around*|(|x<rsub|1>:\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>Let <math|L\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      then if <math|i\<in\><around*|{|1,\<ldots\>,1|}>=<around*|{|1|}>> we
      have <math|i=1> and given\ 

      <\equation*>
        <around*|(|r+\<alpha\>\<cdot\>t|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|1>\<ldots\>,x<rsub|1>|)>\<in\>X<rsup|1>
      </equation*>

      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|r+\<alpha\>\<cdot\>t|)>>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,Y|)>>>|<cell|>>|<row|<cell|L<around*|(|r|)>+\<alpha\>\<cdot\>L<around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\><wide*|r|\<wide-underbrace\>><rsub|1>\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\><wide*|t|\<wide-underbrace\>><rsub|1>\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>>>
      </eqnarray*>

      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>
      and take <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>> then we have
      either:\ 

      <\description>
        <item*|<math|i=1>>Then for <math|<around*|(|x<rsub|1>:\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|1>\<ldots\>:x<rsub|n+1>|)>\<in\>X<rsup|n+1>>
        we have \ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|1>\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|r+\<alpha\>\<cdot\>t:x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|r+\<alpha\>\<cdot\>t|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|>L\<in\>L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>>|<cell|>>|<row|<cell|<around*|(|L<around*|(|r|)>+\<alpha\>\<cdot\>L<around*|(|t|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|<around*|(|L<around*|(|r|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>+\<alpha\>\<cdot\>L<around*|(|t|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|r:x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>+\<alpha\>\<cdot\>L<around*|(|t:x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n+1>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n+1>|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that in this case that

        <\equation*>
          n+1\<in\>S
        </equation*>

        <item*|<math|i\<in\><around*|{|2,\<ldots\>,n+1|}>>>Then for
        <math|<around*|(|x<rsub|1>\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|1>\<ldots\>x<rsub|n+1>|)>\<in\>X<rsup|n+1>>
        we have <math|<rigid|<around*|(|x<rsub|2>\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i-1>\<ldots\>x<rsub|n+1>|)>\<in\>X<rsup|n>>>
        which as <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>
        and <math|n\<in\>S> results in

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i-1>\<ldots\>:x<rsub|n>|)>>|<cell|>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i-1>\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i-1>\<ldots\>:x<rsub|n>|)>>|<cell|<below|=|n\<in\>S>>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:|\<nobracket\>><around*|\<nobracket\>|\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>>>
        </eqnarray*>

        so that in this case we have also

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.56.187>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|L\<in\>L<rsub|n><around*|(|X;Y|)>> and
    <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>> [so
    that by [lemma: <reference|lemma 16.51.186>]
    <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>\<in\>Y>] then\ 

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>
    </equation*>
  </lemma>

  <\proof>
    We prove this by induction, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L\<in\>L<rsub|n><around*|(|X;Y|)><text| then
      >\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n><text|
      we have <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><rigid|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>If <math|L\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      then <math|\<forall\><around*|(|x<rsub|1>|)>\<in\>X<rsup|1>> we have

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|1><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>
      </equation*>

      \ proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>
      and <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n>>
      then, as <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>,
      <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n>> and
      <math|n\<in\>S>, it follows that

      <\equation>
        <label|eq 16.43.187><around*|\<\|\|\>|L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i+1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>
      </equation>

      Next we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.43.187>]>><rsub|>>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|<below|\<leqslant\>|L\<in\>L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.57.187>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)>>
    such that <math|<rigid|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>>
    we have <math|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>
    then <math|L<rsub|1>=L<rsub|2>>.
  </lemma>

  <\proof>
    We use induction to prove this, so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)><text| satisfies
      >\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><text|
      >L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
      <text|then >L<rsub|1>=L<rsub|2>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>Let <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      be such that <math|\<forall\><around*|(|x<rsub|1>|)>\<in\>X<rsup|1>> we
      have <math|<rigid|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>>>.
      Then <math|\<forall\>x\<in\>X> we have for
      <math|y=<around*|(|x|)>\<in\>X<rsup|1>> [so that <math|y<rsub|1>=x>]
      that

      <\equation*>
        L<rsub|1><around*|(|x|)>=L<rsub|1><around*|(|y<rsub|1>|)>=L<rsub|1><around*|(|y<rsub|1>:\<ldots\>:y<rsub|1>|)>=L<rsub|2><around*|(|y<rsub|1>:\<ldots\>:y<rsub|1>|)>=L<rsub|2><around*|(|y<rsub|1>|)>=L<rsub|2><around*|(|x|)>
      </equation*>

      proving that <math|L<rsub|1>=L<rsub|2>>, hence <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>
      such that

      <\equation*>
        \<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n+1><text|
        >L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>
      </equation*>

      Let <math|y\<in\>X> then <math|L<rsub|1><around*|(|y|)>,L<rsub|2><around*|(|y|)>\<in\>L<rsub|n><around*|(|X;Y|)>>
      and <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      we have\ 

      <\equation*>
        L<rsub|1><around*|(|y|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|1><around*|(|y:x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|2><around*|(|y:x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|2><around*|(|y|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
      </equation*>

      which as <math|n\<in\>S> proves that
      <math|L<rsub|1><around*|(|y|)>=L<rsub|2><around*|(|y|)>>. As <math|y>
      is chosen arbitrary we conclude that <math|L<rsub|1>=L<rsub|2>> proving\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.58.188>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces an <math|L\<in\>L<rsub|n><around*|(|X;Y|)>>. If
    <math|<rigid|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>>
    we have that <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>
    then it follows that\ 

    <\equation*>
      <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<leqslant\>M
    </equation*>
  </lemma>

  <\proof>
    We prove this by induction, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      <math|L\<in\>L<rsub|n><around*|(|X;Y|)><text| satisfies
      >\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n><text|
      ><around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>
      then ><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<leqslant\>M|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Let <math|L\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      such that <math|\<forall\><around*|(|x<rsub|1>|)>\<in\>X<rsup|n>> we
      have <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>|\<\|\|\>><rsub|Y>\<leqslant\><rigid|M\<cdot\><big|prod><rsub|i=1><rsup|1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>.
      Then given <math|y\<in\>X> we have for
      <math|x=<around*|(|y|)>\<in\>X<rsup|1>> that

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i=1><rsup|1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>=M\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|X>
      </equation*>

      so that by [definition: <reference|continuity operator norm>]
      <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|1><around*|(|X;Y|)>>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>M>
      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>
      such that <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n+1>>
      we have

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i=1><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>
      </equation*>

      Fix <math|x\<in\>X> then <math|\<forall\><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<in\>X<rsup|n>>
      we have\ 

      <\equation*>
        <around*|\<\|\|\>|<around*|(|L<around*|(|x|)>|)><around*|(|y<rsub|1>:\<ldots\>:y<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x:y<rsub|1>:\<ldots\>:y<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>=<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>
      </equation*>

      As <math|n\<in\>S> and <math|L<around*|(|x|)>\<in\>L<rsub|n><around*|(|X;Y|)>>
      it follows that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>.
      Hence by [definition: <reference|continuity operator norm>] it follows
      that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|X;Y|)>>\<leqslant\>M>
      proving\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.59.188>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces and <math|L\<in\>L<rsup|n><around*|(|X;Y|)>> [see
    definition: <reference|continuity L^n(X;Y)>]] then there exist a
    <math|K\<in\>L<rsub|n><around*|(|X;Y|)>> such that
    <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
    we have <math|K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
  </lemma>

  <\proof>
    We use induction to prove this so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L\<in\>L<rsup|n><around*|(|X;Y|)><text| then there exist a
      >K\<in\>L<rsub|n><around*|(|X;Y|)><text| such that
      >\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n><text|
      we have >K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>If <math|L\<in\>L<rsup|1><around*|(|X;Y|)>> then
      as <math|L<rsup|1><around*|(|X;Y|)><below|=|<text|[definition:
      <reference|continuity L^n(X;Y)>]>>L<around*|(|X,Y|)>=L<rsub|1><around*|(|X;Y|)>>
      we have that <math|<rigid|L\<in\>L<rsub|1><around*|(|X;Y|)>>> so if we
      take <math|K=L> then we have <math|K\<in\>L<rsub|1><around*|(|X;Y|)>>
      and for <math|<around*|(|x<rsub|1>|)>\<in\>X<rsup|1>> we have
      <math|K<rigid|<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|1>|)>>>.
      So we have that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsup|n+1><around*|(|X;Y|)>>. Take <math|x\<in\>X> and
      define

      <\equation*>
        L<rsub|x>:X<rsup|n>\<rightarrow\>Y<text| by
        >L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|n>|)>
      </equation*>

      If <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|<around*|(|x<rsub|1>,\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<rsub|x><around*|(|x<rsub|1>,\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x,x<rsub|1>,\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i+1>\<ldots\>,x<rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.55.187>]>>>|<cell|>>|<row|<cell|L<around*|(|x,x<rsub|1>,\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i+1>\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x,x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i+1>\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<rsub|x><around*|(|x<rsub|1>,\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|x><around*|(|x<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      which proves that

      <\equation>
        <label|eq 16.44.188>L<rsub|x>\<in\>Hom<rsup|n><around*|(|X;Y|)>
      </equation>

      Let <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      then for <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n+1>|)>> defined
      by <math|y<rsub|i>=<choice|<tformat|<table|<row|<cell|x<text| if
      >i=1>>|<row|<cell|x<rsub|i-1><text| if
      >i\<in\><around*|{|2,\<ldots\>,n+1|}>>>>>>>we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n+1>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|L\<in\>L<rsup|n+1><around*|(|X;Y|)>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n+1><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|y<rsub|1>|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|>|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|x<rsub|i-1>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>

      proving by [theorem: <reference|continuity multilinear mapping (1)>]
      and \ [eq: <reference|eq 16.44.188>] that <math|L<rsub|x>> is
      continuous. Hence\ 

      <\equation>
        <label|eq 16.45.188>L<rsub|x>\<in\>L<rsup|n><around*|(|X;Y|)><text|>
      </equation>

      As <math|n\<in\>S> there exist a <math|K<rsub|x>\<in\>L<rsub|n><around*|(|X;Y|)>>
      such that <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      we have\ 

      <\equation>
        <label|eq 16.46.188>K<rsub|x><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|n>|)>
      </equation>

      This allows us to define

      <\equation*>
        K:X\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text| where
        >K<around*|(|x|)>=K<rsub|x>
      </equation*>

      then \ we have for <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n+1>>

      <\equation>
        <label|eq 16.47.188>K<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>=K<rsub|x<rsub|1>><around*|(|x<rsub|2>:\<ldots\>:x<rsub|1>|)><below|=|<text|[eq:
        <reference|eq 16.46.188>]>>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>
      </equation>

      If <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> then we have
      <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|K<around*|(|x+\<alpha\>\<cdot\>y|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.47.188>]>>>|<cell|L<around*|(|x+\<alpha\>\<cdot\>y,x<rsub|1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L\<in\>L<rsup|n+1><around*|(|X;Y|)>>>|<cell|L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|y,x<rsub|1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.47.188>]>>>|<cell|K<around*|(|x|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>K<around*|(|y|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.54.187>]>>>|<cell|<around*|(|K<around*|(|x|)>+\<alpha\>\<cdot\>K<around*|(|y|)>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>>>
      </eqnarray*>

      which by [lemma: <reference|lemma 16.57.187>] proves that\ 

      <\equation*>
        K<around*|(|x+\<alpha\>\<cdot\>y|)>=K<around*|(|x|)>+\<alpha\>\<cdot\>K<around*|(|y|)>
      </equation*>

      Hence we have that\ 

      <\equation>
        <label|eq 16.48.188>K\<in\>Hom<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>
      </equation>

      Let <math|x\<in\>X >then we have for
      <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<in\>X<rsup|n>> that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|K<around*|(|x|)><around*|(|y<rsub|1>:\<ldots\>:y<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|K<rsub|x><around*|(|y<rsub|1>:\<ldots\>:y<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.47.188>]>>>|<cell|<around*|\<\|\|\>|L<around*|(|x,y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|<below|\<leqslant\>|L\<in\>L<rsup|n><around*|(|X;Y|)>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>

      which as <math|K<around*|(|x|)>\<in\>L<rsub|n><around*|(|X;Y|)>> proves
      using [lemma: <reference|lemma 16.58.188>] that

      <\equation*>
        <around*|\<\|\|\>|K<around*|(|x|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation*>

      Hence using [eq: <reference|eq 16.48.188>] together with [theorem:
      <reference|continuity linear mapping (1)>] proves that <math|K> is
      continuous or\ 

      <\equation*>
        K\<in\>L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>=L<rsub|n+1><around*|(|X;Y|)>
      </equation*>

      further

      <\equation*>
        K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=K<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.47.188>]>>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>
      </equation*>

      The above proves that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>

    \;
  </proof>

  We are now ready to define the identification mapping between
  <math|L<rsub|n><around*|(|X;Y|)>> and <math|L<rsup|n><around*|(|X;Y|)>>.

  <\theorem>
    <label|diff linear to multilinear>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, then\ 

    <\equation*>
      \<cal-I\><rsub|n,X,Y>:L<rsub|n><around*|(|X;Y|)>\<rightarrow\>L<rsup|n><around*|(|X;Y|)><text|where
      >\<cal-I\><rsub|n,X,Y><around*|(|L|)>:X<rsup|n>\<rightarrow\>Y<text| is
      defined by>
    </equation*>

    <\equation*>
      <around*|(|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
    </equation*>

    is a linear isometric isomorphism. In other words\ 

    <\enumerate>
      <item><math|\<forall\>L\<in\>L<rsub|n><around*|(|X;Y|)>>
      <math|\<cal-I\><rsub|n,X,Y><around*|(|L|)>\<in\>L<rsup|n><around*|(|X;Y|)>>
      so that <math|\<cal-I\><rsub|n,X,Y>:L<rsub|n><around*|(|X;Y|)>\<rightarrow\>L<rsup|n><around*|(|X;Y|)>>
      is indeed a function

      <item><math|\<cal-I\><rsub|n,X,Y>:L<rsub|n><around*|(|X;Y|)>\<rightarrow\>L<rsup|n><around*|(|X;Y|)>>
      is a bijection.

      <item><math|\<forall\>L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)>>
      and <math|\<alpha\>\<in\>\<bbb-K\>> we have
      <math|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>=\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)>+\<alpha\>\<cdot\>\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)>>

      <item><math|\<forall\>L\<in\>L<rsub|n><around*|(|X:Y|)>> we have
      <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>=<around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>>
    </enumerate>

    <\note>
      If <math|n=1> then as <math|\<forall\><around*|(|x<rsub|1>|)>\<in\>X<rsup|1>>
      we have <math|\<cal-I\><rsub|1,X,Y><around*|(|L|)><around*|(|x<rsub|1>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>>
      and <math|L<rsup|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>=L<rsub|1><around*|(|X;Y|)>>
      it follows that\ 

      <\equation*>
        \<cal-I\><rsub|1,X,Y>=Id<rsub|L<around*|(|X,Y|)>>
      </equation*>
    </note>

    <\note>
      If <math|K\<in\>L<rsup|n><around*|(|X;Y|)>> then we have, as
      <math|\<cal-I\><rsub|n,X,Y>> is a bijection, that
      <math|<rigid|K=\<cal-I\><rsub|n,X,Y><around*|(|<around*|(|\<cal-I\><rsub|n,X,Y>|)><rsup|-1><around*|(|K|)>|)>>>
      so that for <math|x\<in\>X<rsup|n>> we have\ 

      <\equation*>
        K<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<cal-I\><rsub|n,X,Y><around*|(|<around*|(|\<cal-I\><rsub|n,X,Y>|)><rsup|-1><around*|(|K|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<around*|(|\<cal-I\><rsub|n,X,Y>|)><rsup|-1><around*|(|K|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
      </equation*>

      proving that\ 

      <\equation*>
        \<forall\>x\<in\>X<rsup|n><text| ><around*|(|\<cal-I\><rsub|n,X,Y>|)><rsup|-1><around*|(|K|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=K<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>
      </equation*>
    </note>
  </theorem>

  <\proof>
    We have\ 

    <\enumerate>
      <item>Let <math|L\<in\>L<rsub|n><around*|(|X;Y|)>> then for
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|<around*|(|x<rsub|1>,\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\><wide*|r+\<alpha\>\<cdot\>t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.55.187>]>>>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\><wide*|r|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 16.49.189>\<cal-I\><rsub|n,X,Y><around*|(|L|)>\<in\>Hom<rsup|n><around*|(|X;Y|)>
        <around*|[|<text|see definition: <reference|multi n-linear
        function>>|]>
      </equation>

      Further if <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      then we have:

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[lemma:
        <reference|lemma 16.56.187>]>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>>>>
      </eqnarray*>

      Using then [theorems: <reference|continuity multilinear mapping (1)>
      and <reference|continuity operator norm of multilinear mappings (1)>]
      together with \ [eq: <reference|eq 16.49.189>] it follows that\ 

      <\equation>
        <label|eq 16.50.189>\<cal-I\><rsub|n,X,Y><around*|(|L|)>\<in\>L<rsup|n><around*|(|X;Y|)><text|
        and ><around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>
      </equation>

      so that\ 

      <\equation*>
        \<cal-I\><rsub|n,X,Y>:L<rsub|n><around*|(|X;Y|)>\<rightarrow\>L<rsup|n><around*|(|X;Y|)><text|
        is a well defined function>
      </equation*>

      <item>To prove bijectivity we have to prove:

      <\description>
        <item*|injectivity>Let <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)>>be
        such that <math|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)>=\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)><rsub|>>.
        Then <math|<rigid|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>>
        we have\ 

        <\equation*>
          L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
        </equation*>

        Using [lemma: <reference|lemma 16.57.187>] it follows then that
        <math|L<rsub|1>=L<rsub|2>> which proves injectivity.

        <item*|surjectivity>Let <math|L\<in\>L<rsup|n><around*|(|X;Y|)>> then
        using [lemma: <reference|lemma 16.59.188>] there exist a
        <math|K\<in\>L<rsub|n><around*|(|X;Y|)>> such that
        <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
        we have <math|K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>.
        Hence\ 

        <\equation*>
          \<cal-I\><rsub|n,X,Y><around*|(|K|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>
        </equation*>

        from which it follows that that <math|\<cal-I\><rsub|n,X,Y><around*|(|K|)>=L>
        and thus surjectivity.
      </description>

      <item>Let <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)>>
      and <math|\<alpha\>\<in\>\<bbb-K\>> then
      <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)>+\<alpha\>\<cdot\>\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>=\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)>+\<alpha\>\<cdot\>\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)>
      </equation*>

      <item>Let <math|L\<in\>L<rsub|n><around*|(|X;Y|)>> then by [eq:
      <reference|eq 16.50.189>] we have that\ 

      <\equation>
        <label|eq 16.51\<point\>189><around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>
      </equation>

      For the opposite inequality, let <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      then\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y><below|\<leqslant\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>\<in\>L<rsup|n><around*|(|X,Y|)>><around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i\<in\>1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>
      </equation*>

      so that by [lemma: <reference|lemma 16.58.188>] it follows that\ 

      <\equation*>
        <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<leqslant\><around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>
      </equation*>

      which combined with [eq: <reference|eq 16.51\<point\>189>] proves that\ 

      <\equation*>
        <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>=<around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Higher order Fréchet differentiation>

  <subsubsection|Definition of higher order differentials>

  The idea of higher order differentiability is the following. Let
  <math|><math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
  and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
  be normed spaces, <math|A\<subseteq\>X> and <math|x\<in\>A> and
  <math|f:A-Y> a function such that there exist a <math|B\<subseteq\>A> with
  <math|x\<in\>B> such that <math|\<forall\>y\<in\>B> <math|f> is
  differentiable at <math|y>. Then we can define a function <math|D f> with
  domain <math|B> defined by <math|D f<around*|(|y|)>=D<rsub|y>f> and ask our
  self if this function is differentiable at <math|x>, if so we say that
  <math|f> is twice differentiable at <math|x> with <math|2>-th differential
  <math|D<rsub|x><around*|(|D f|)>>. Continuing in this way we can define
  <math|3>-times differentiability and so on. There is however a problem,
  what is the codomain of <math|D f>? Let <math|y\<in\>B> then by the
  definition of the differential at <math|y> [see definition: <reference|diff
  differentiability>] we have that <math|D<rsub|y>f\<in\>L<around*|(|S<rsub|A><around*|(|y|)>,Y|)>>
  which is dependent on <math|y>. One solution is to take as codomain
  <math|<big|cup><rsub|y\<in\>B>L<around*|(|S<rsub|A><around*|(|y|)>,Y|)>>
  and define <math|D f> as\ 

  <\equation*>
    D f:B\<rightarrow\><big|cup><rsub|y\<in\>B>L<around*|(|S<rsub|A><around*|(|y|)>,Y|)>
  </equation*>

  The problem with this solution is that <math|<big|cup><rsub|y\<in\>B>L<around*|(|S<rsub|A><around*|(|y|)>,Y|)>>
  is not a vector space, so certainly not a normed space, hence we can not
  define differentiability on <math|D<rsub|x>f>. One solution is to restrict
  the domain <math|A> of <math|f> to sets where
  <math|S<rsub|A><around*|(|y|)>> is the same independent of <math|y>. The
  solution that we use in this book is to assume that <math|B> is a open set
  because in that case we have by [theorem: <reference|diff SA(a)>] that
  <math|S<rsub|B><around*|(|y|)>=X> so that we have that
  <math|\<forall\>y\<in\>B> we have <math|D
  f<around*|(|y|)>\<in\>L<around*|(|X,Y|)>> and we can define the function\ 

  <\equation*>
    D f:B\<rightarrow\>L<around*|(|X,Y|)><rsub|>
  </equation*>

  that is a function whose codomain is a normed space so that differentiation
  is possible. It is\ 

  <\definition>
    <label|diff higher order differentiation><index|<math|n>-times
    differentiability><index|<math|D<rsup|<around*|[|n|]>>f*<around*|(|x|)>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|<rigid|f:A\<rightarrow\>Y>> a function then <math|f> is
    <with|font-series|bold|<math|n>-times Fréchet differentiable at <math|x>>
    with differential <math|<rigid|D<rsub|x><rsup|<around*|[|n|]>>f\<in\>L<rsub|n><around*|(|X;Y|)>>>
    if we have for <math|n> either

    <\description>
      <item*|<math|n=1>>Then <math|f> must be Fréchet differentiable at
      <math|x> and <math|D<rsup|<around*|[|1|]>><rsub|x>f> is defined by

      <\equation*>
        D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f\<in\>L<around*|(|X,Y|)>=L<rsub|1><around*|(|X;Y|)>
      </equation*>

      <item*|<math|1\<less\>n>>Then there must exist a
      <with|font-series|bold|open> set <math|V> in <math|X> with
      <math|x\<in\>V\<subseteq\>A> such that <math|\<forall\>y\<in\>V>
      <math|f> is <math|<around*|(|n-1|)>>-times differentiable at <math|y>
      and the function

      <\equation*>
        D<rsup|<around*|[|n-1|]>><rsub|V>f:V\<rightarrow\>L<rsub|n-1><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n-1|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n-1|]>>f
      </equation*>

      is Fréchet differentiable at <math|x> and
      <math|D<rsup|<around*|[|n|]>><rsub|x>f> is defined by

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>\<in\>L<around*|(|X,L<rsub|n-1><around*|(|X;Y|)>|)>=L<rsub|n><around*|(|X;Y|)>
      </equation*>
    </description>

    <\note>
      <label|note 16.65.191>In the case <math|1\<less\>n> we must ensure that
      <math|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>> does not
      depended on the choice of <math|V> otherwise this is not a valid
      definition for <math|D<rsup|<around*|[|n|]>><rsub|x>f>. So assume that
      there exist another open <math|W> with <math|x\<in\>W> such that
      <math|\<forall\>y\<in\>W> <math|f> is <math|<around*|(|n-1|)>>-times
      differentiable at <math|y>. Then for\ 

      <\equation*>
        D<rsup|<around*|[|n-1|]>><rsub|W>f:W\<rightarrow\>L<rsub|n-1><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|n-1|]>><rsub|W>f<around*|(|y|)>=D<rsup|<around*|[|n-1|]>><rsub|y>f
      </equation*>

      then we have <math|\<forall\>y\<in\>W<big|cap>V> that
      <math|D<rsub|W><rsup|<around*|[|n|]>>f<around*|(|y|)>=D<rsup|<around*|[|n-1|]>><rsub|y>f=D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>>
      or in other words we have\ 

      <\equation*>
        <around*|(|D<rsub|W><rsup|<around*|[|n-1|]>>f|)><rsub|\|W<big|cap>V>=<around*|(|D<rsup|<around*|[|n-1|]>><rsub|V>f|)><rsub|\|W<big|cap>V>
      </equation*>

      From the above and the fact that <math|x\<in\>W<big|cap>V<below|=|W<big|cap>V<text|
      is open and [theorem: <reference|topology open set and
      interior>]>><around*|(|W<big|cap>V|)><rsup|\<circ\>>> it follows from
      [corollary: <reference|diff differentiability is a local property (1)>]
      that <math|D<rsub|x><around*|(|D<rsub|W><rsup|<around*|[|n-1|]>>f|)>=D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>><rsub|V>f|)>>
    </note>
  </definition>

  <\remark>
    In most books on Fréchet differentiation the notation\ 

    <\equation*>
      D<rsup|<around*|[|n-1|]>>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|n-1|]>>f<around*|(|x|)>=D<rsup|<around*|[|n-1|]>><rsub|x>f
    </equation*>

    is used instead of\ 

    <\equation*>
      D<rsup|<around*|[|n-1|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|n-1|]>><rsub|V>f<around*|(|x|)>=D<rsub|x><rsup|<around*|[|n-1|]>>f
    </equation*>

    Both notations define the same function, the only difference is in the
    name of the graph used. The benefit of the second notation is that the
    graph name includes the domain name of the function. Consider the proof
    in [note: <reference|note 16.65.191>] if we would use the common notation
    we have two functions\ 

    <\equation*>
      D<rsup|<around*|[|n-1|]>>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      defined by >D<rsup|<around*|[|n-1|]>>f<around*|(|y|)>=D<rsup|<around*|[|n-1|]>><rsub|y>f
    </equation*>

    <\equation*>
      D<rsup|<around*|[|n-1|]>>f:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      defined by >D<rsup|<around*|[|n-1|]>>f<around*|(|y|)>=D<rsup|<around*|[|n-1|]>><rsub|y>f
    </equation*>

    which are different if the domains are different. As the graph of a
    function is a subset of the cartesian product of the domain and the
    codomain the graphs must be different for different domains, however we
    use the same name for these graphs which is confusing. To solve this the
    domain name is included in the graph name.\ 
  </remark>

  Just as the Fréchet differentiation is local [see theorem: <reference|diff
  differentiability is a local property>] higher order Fréchet
  differentiation is local.

  <\theorem>
    <label|diff higher order differentiation is local>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A,B\<subseteq\>X>,
    <math|x\<in\>B<rsup|\<circ\>>\<subseteq\>B\<subseteq\>A> and
    <math|f:A\<rightarrow\>Y> a function then we have\ 

    <\equation*>
      f<text| is n-times differentiable at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<rsub|\|B><text| is >n<text|-times differentiable at >x
    </equation*>

    Further if <math|f> or <math|f<rsub|\|B>> is <math|n>-times
    differentiable at <math|x> then <math|D<rsub|x><rsup|<around*|[|n|]>>f<rsub|\|B>=D<rsub|x><rsup|<around*|[|n|]>>f>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|If f<text| is >n<text|-times
        differentiable at >y\<in\>B<rsup|\<circ\>><text| then
        >f<rsub|\|B><text| is >n<text|-times differentiable at y and
        >D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|B>=D<rsup|<around*|[|n|]>><rsub|y>f|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|f> is <math|1>-times differentiable
        at <math|y\<in\>B<rsup|0>> then by definition <math|f> is Fréchet
        differentiable at <math|y\<in\>B<rsup|0>> and
        <math|D<rsup|<around*|[|1|]>><rsub|y>f=D<rsub|y>f>. Using [theorem:
        <reference|diff differentiability is a local property>]
        <math|f<rsub|\|B>> is Fréchet differentiable at <math|y> and
        <math|D<rsub|y>f<rsub|\|B>=D<rsub|y>f>, hence by definition
        <math|f<rsub|\|B>> is <math|1>-times differentiable and
        <math|<rigid|D<rsup|<around*|[|1|]>><rsub|y>f<rsub|\|B>=D<rsub|y>f<rsub|\|B>=D<rsub|y>f=D<rsup|<around*|[|1|]>><rsub|y>f>>.
        So it follows that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Assume that <math|f>
        is <math|<around*|(|n+1|)>>-times differentiable at <math|y> then by
        definition there exist a open set <math|V> with
        <math|y\<in\>V\<subseteq\>B> such that

        <\equation>
          <label|eq 16.133.7>\<forall\>z\<in\>V<text| >f<text| is
          >n<text|-times differentiable at >z
        </equation>

        and\ 

        <\equation>
          <label|eq 16.134.7>D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|z|)>=D<rsup|<around*|[|n|]>><rsub|z>f<text|
          is differentiable at >y
        </equation>

        with\ 

        <\equation>
          <label|eq 16.135.7>D<rsup|<around*|[|n+1|]>><rsub|y>f=D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>
        </equation>

        As <math|V\<subseteq\>B> it follows from [theorem:
        <reference|topology biggest open subset>] that
        <math|V\<subseteq\>B<rsup|0>>. Hence <math|\<forall\>z\<in\>V> we
        have <math|z\<in\>B<rsup|\<circ\>>> and <math|f> is <math|n>\Utimes
        differentiable at <math|z>, so, as <math|n\<in\>S>,
        <math|f<rsub|\|B>> is <math|n>-times differentiable at <math|z> and
        <math|D<rsup|<around*|[|n|]>><rsub|z>f<rsub|\|B>=D<rsup|<around*|[|n|]>><rsub|y>f>.
        So we can define the function

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          >D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B><around*|(|z|)>=D<rsup|<around*|[|n|]>><rsub|z>f<rsub|\|B>=D<rsup|<around*|[|n|]>><rsub|z>f
        </equation*>

        Hence <math|\<forall\>z\<in\>V\<subseteq\>B<rsup|\<circ\>>> we have
        <math|D<rsup|<around*|[|n|]>>f<rsub|\|B><around*|(|z|)>=D<rsup|<around*|[|n|]>><rsub|z>f<below|=|<text|[eq:
        <reference|eq 16.134.7>]>>D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|z|)>>
        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B>=D<rsup|<around*|[|n|]>><rsub|V>f
        </equation*>

        Using [eq: <reference|eq 16.134.7>] it follows that
        <math|D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B>> is Fréchet
        differentiable at <math|y> and

        <\equation*>
          D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B>|)>=D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.135.7>]>>D<rsup|<around*|[|n+1|]>><rsub|y>f
        </equation*>

        Hence using [definition: <reference|diff higher order
        differentiation>] <math|f<rsub|\|B>> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|y> with

        <\equation*>
          D<rsup|<around*|[|n+1|]>><rsub|y>f<rsub|\|B>=D<rsub|y><rsup|<around*|[|n+1|]>>f<rsub|>
        </equation*>

        which proves that <math|n+1\<in\>S>.
      </description>

      By mathematical induction we have that <math|S=\<bbb-N\>>. So as
      <math|f> is <math|n>-times differentiable at <math|x\<in\>B<rsup|0>>
      where <math|n\<in\>\<bbb-N\>=S> it follows that <math|f<rsub|\|B>> is
      <math|n>-times differentiable at <math|x> with
      <math|D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|B>=D<rsup|<around*|[|n|]>><rsub|x>f>.

      <item*|<math|\<Leftarrow\>>>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f<rsub|\|B><text| is
        >n<text|-times differentiable at >y\<in\>B<rsup|0><text| then
        >f<text| is >n<text|-times differentiable at <math|y<text| with
        >D<rsup|<around*|[|n|]>><rsub|y>f=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|B>>>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|f<rsub|\|B>> is <math|1>-times
        differentiable at <math|y\<in\>B<rsup|\<circ\>>> then by definition
        <math|f<rsub|\|B>> is Fréchet differentiable at <math|y> with
        <math|D<rsup|<around*|[|1|]>><rsub|y>f<rsub|\|B>=D<rsub|y>f<rsub|\|B>>.
        Hence using \ [theorem: <reference|diff differentiability is a local
        property>] <math|f> is Fréchet differentiable at <math|y> with
        <math|D<rsub|y>f=D<rsub|y>f<rsub|\|B>>. So by definition we have
        <math|f> is <math|1>-times differentiable at <math|y> with
        <math|D<rsup|<around*|[|1|]>><rsub|y>f=D<rsub|y>f=D<rsup|<around*|[|1|]>>f<rsub|\|B>>
        which proves that\ 

        <\equation*>
          1\<in\>S
        </equation*>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Assume that
        <math|f<rsub|\|B>> is <math|<around*|(|n+1|)>>-times differentiable
        at <math|y\<in\>B<rsup|\<circ\>>>. Then there exist a open set
        <math|V> such that <math|y\<in\>V\<subseteq\>B> and\ 

        <\equation>
          <label|eq 16.136.7>\<forall\>z\<in\>V<text| >f<rsub|\|B><text| is
          >n<text|-times differentiable at >z
        </equation>

        and\ 

        <\equation>
          <label|eq 16.137.7>D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B><around*|(|z|)>=D<rsup|<around*|[|n|]>><rsub|z>f<rsub|\|B><text|
          is differentiable at >y
        </equation>

        with\ 

        <\equation>
          <label|eq 16.138.7>D<rsup|<around*|[|n+1|]>><rsub|y>f<rsub|\|B>=D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B>|)>
        </equation>

        As <math|V\<subseteq\>B> it follows from [theorem:
        <reference|topology biggest open subset>] that
        <math|V\<subseteq\>B<rsup|0>>. Hence <math|\<forall\>z\<in\>V> we
        have <math|z\<in\>B<rsup|\<circ\>>> and <math|f<rsub|\|B>> is
        <math|n>\Utimes differentiable at <math|z>, so, as <math|n\<in\>S>,
        <math|f> is <math|n>-times differentiable at <math|z> and
        <math|D<rsup|<around*|[|n|]>><rsub|z>f=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|B>>.
        So we can define the function

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|z|)>=D<rsup|<around*|[|n|]>><rsub|z>f=D<rsup|<around*|[|n|]>><rsub|z>f<rsub|\|B>
        </equation*>

        Hence <math|\<forall\>z\<in\>V> we have
        <math|><math|D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|z|)>=D<rsup|<around*|[|n|]>><rsub|z>f<rsub|\|B><below|=|<text|[eq:
        <reference|eq 16.137.7>]>>D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B><around*|(|z|)>>
        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f=D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B>
        </equation*>

        Using ]eq: <reference|eq 16.137.7>] on the above it follows that
        <math|D<rsup|<around*|[|n|]>><rsub|V>f> is Fréchet differentiable at
        <math|y> with <math|D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><below|=|>D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|B>|)><below|=|<text|[theorem:
        <reference|eq 16.138.7>]>>D<rsup|<around*|[|n+1|]>><rsub|y>f<rsub|\|B>>.
        Hence using [definition: <reference|diff higher order
        differentiation>] it follows that <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|y> with

        <\equation*>
          D<rsup|<around*|[|n+1|]>><rsub|y>f=D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>=D<rsup|<around*|[|n+1|]>><rsub|y>f<rsub|\|B>
        </equation*>

        which proves that <math|n+1\<in\>S>.
      </description>

      By mathematical induction we have that <math|S=\<bbb-N\>>. So as
      <math|f<rsub|\|B>> is <math|n>-times differentiable at
      <math|x\<in\>B<rsup|0>> where <math|n\<in\>\<bbb-N\>=S> it follows that
      <math|f> is <math|n>-times differentiable at <math|x> with
      <math|D<rsup|<around*|[|n|]>><rsub|x>f=D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|B>>.
    </description>
  </proof>

  <\definition>
    <label|diff higher order differentiation on a open set>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,<math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|B\<subseteq\>A\<subseteq\>X> then a function
    <math|f:A\<rightarrow\>Y> is <with|font-series|bold|<math|n>-times
    differentiable on <math|B>> if <math|\<forall\>x\<in\>B> we have that
    <math|f> is <math|n>-times differentiable at <math|x>.
  </definition>

  The next theorem will be usefull in induction arguments

  <\theorem>
    <label|diff higher order differentiation on a open set (1)>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|U> open with
    <math|U\<subseteq\>A> and\ 

    <\equation*>
      f:A\<rightarrow\>X
    </equation*>

    a function then we have the following equivalences:

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is >n<text|-times Fréchet
      differentiable on >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<text|
      is ><around*|(|n-1|)><text|-times differentiable on
      >U>|<cell|>>|<row|<cell|>|<cell|and the
      function>|<cell|>>|<row|<cell|>|<cell|D<rsup|<around*|[|n-1|]>><rsub|U>f:U\<rightarrow\>L<rsub|<around*|(|n-1|)>><around*|(|X;Y|)><text|
      where >D<rsub|U><rsup|<around*|[|n-1|]>>f<around*|(|x|)>=D<rsup|<around*|[|n-1|]>><rsub|x>f>|<cell|>>|<row|<cell|>|<cell|<text|is
      Fréchet differentiable on >U>|<cell|>>>>
    </eqnarray*>

    Further if <math|f> is <math|n>-times differentiable on <math|U> then
    <math|\<forall\>x\<in\>U> we have that
    <math|D<rsub|x><rsup|<around*|[|n|]>>f=D<rsub|x><around*|(|D<rsub|U><rsup|<around*|[|n-1|]>>f|)>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>U> then as <math|f> is
      <math|n>-times Fréchet differentiable on <math|U> and <math|1\<less\>n>
      there exist a open set <math|V<rsub|x>> with
      <math|x\<in\>V<rsub|x>\<subseteq\>U> such that

      <\equation>
        <label|eq 16.139.7>\<forall\>y\<in\>V<rsub|x><text| >f<text| is
        ><around*|(|n-1|)><text|-times differentiable>
      </equation>

      and the function

      <\equation>
        <label|eq 16.140.7>D<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>f:V<rsub|x>\<rightarrow\>L<rsub|n-1><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n-1|]>>f<text|
        is differentiable at >x
      </equation>

      with\ 

      <\equation>
        <label|eq 16.141.8>D<rsup|<around*|[|n|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>f|)>
      </equation>

      As <math|x\<in\>V<rsub|x>> we have by [eq: <reference|eq 16.139.7>]
      that <math|f> is <math|<around*|(|n-1|)>>-times differentiable at
      <math|x> which as <math|x\<in\>U> was chosen arbitrary proves that\ 

      <\equation>
        <label|eq 16.14.7>f<text| is ><around*|(|n-1|)><text|-times
        differentiable on >U
      </equation>

      so that we can define the following function\ 

      <\equation>
        <label|eq 16.142.7>D<rsup|<around*|[|n-1|]>><rsub|U>f:U\<rightarrow\>L<rsub|n-1><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|n-1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n-1|]>><rsub|x>f<text|>
      </equation>

      Let <math|x\<in\>U> then we have <math|\<forall\>y\<in\>V<rsub|x>\<subseteq\>U\<Rightarrow\>y\<in\>U>
      that

      <\equation*>
        D<rsup|<around*|[|n-1|]>><rsub|U>f<around*|(|y|)><below|=|<text|[eq:
        <reference|eq 16.142.7>]>>D<rsup|<around*|[|n-1|]>><rsub|y>f\<equallim\><rsub|<text|[eq:
        <reference|eq 16.140.7>]>>D<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>f<around*|(|y|)>
      </equation*>

      which proves that

      <\equation>
        <label|eq 16.143.7>D<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>f=<around*|(|D<rsup|<around*|[|n-1|]>><rsub|U>f|)><rsub|\|V<rsub|x>>
      </equation>

      As by [eq: <reference|eq 16.140.7>]
      <math|D<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>f> is Fréchet
      differentiable at <math|x\<in\>V<rsub|x>\<equallim\><rsub|<text|[theorem:
      <reference|topology open set and interior>]>><around*|(|V<rsub|x>|)><rsup|\<circ\>>\<subseteq\>U>
      it follows from the above and [theorem: <reference|diff
      differentiability is a local property>] that
      <math|D<rsup|<around*|[|n-1|]>><rsub|U>f> is Fréchet differentiable at
      <math|x> with

      <\equation*>
        D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>><rsub|U>f|)>=D<rsub|x><around*|(|<around*|(|D<rsup|<around*|[|n-1|]>><rsub|U>f|)><rsub|\|V<rsub|x>>|)><below|=|<text|[eq:
        <reference|eq 16.143.7>]>>D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>f|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.141.8>]>>D<rsup|<around*|[|n|]>><rsub|x>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>By the hypotheses <math|f> is
      <math|<around*|(|n-1|)>>-times Fréchet differentiable on <math|U> and
      the function\ 

      <\equation*>
        D<rsup|<around*|[|n-1|]>><rsub|U>f:U\<rightarrow\>L<rsub|<around*|(|n-1|)>><around*|(|X;Y|)><text|
        where >D<rsub|U><rsup|<around*|[|n-1|]>>f<around*|(|x|)>=D<rsup|<around*|[|n-1|]>><rsub|x>f<text|
        is Fréchet differentiable on >U
      </equation*>

      Let <math|x\<in\>U> then as <math|U\<subseteq\>U> and <math|U> is open
      it follows from [definition: <reference|diff higher order
      differentiation>] that <math|f> is <math|n>-times differentiable at
      <math|x>. As <math|x\<in\>U> was choosen arbitrary it follows that\ 

      <\equation*>
        f<text| is >n<text|-times differentiable on >U
      </equation*>
    </description>
  </proof>

  We extend now <math|n>-times differentiability to <math|\<infty\>>-times
  differentiability.

  <\definition>
    <label|diff inifint=ite differentiable><index|<math|\<infty\>>-times
    differentibility>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> then\ 

    <\equation*>
      f:A\<rightarrow\>Y<text| is >\<infty\><text|-times differentiable at
      <math|x\<in\>A> if >\<forall\>n\<in\>\<bbb-N\><text| f is
      >n<text|-times differentiable at >x
    </equation*>

    and if <math|B\<subseteq\>A>

    <\equation*>
      f:A\<rightarrow\>Y<text| is >\<infty\><text|-times differentiable on
      >B<text| if >\<forall\>n\<in\>\<bbb-N\><text| f> is n<text|-times
      differentiable on >A
    </equation*>
  </definition>

  <subsection|Higher order differentials as multi-linear mappings>

  The problem with <math|D<rsub|x><rsup|<around*|[|n|]>>f> is that it is a
  element of <math|L<rsub|n><around*|(|X;Y|)>> so that for example

  <\equation*>
    D<rsub|x><rsup|<around*|[|3|]>>f\<in\>L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>
  </equation*>

  and we have to deal with expressions like
  <math|<around*|(|<around*|(|D<rsub|x><rsup|<around*|[|3|]>>f<around*|(|h<rsub|1>|)>|)><around*|(|h<rsub|2>|)>|)><around*|(|h<rsub|3>|)>>.
  Lucky we can use [theorem: <reference|diff linear to multilinear>] to turn
  <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>> in a a multilinear mapping.\ 

  <\definition>
    <label|diff higher order differentiation
    (1)><index|<math|D<rsup|n>f<around*|(|x|)>>>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <rigid|<math|f:A\<rightarrow\>Y>> a function that is <math|n>-times
    differentiable at <math|x> then

    <\equation*>
      D<rsub|x><rsup|n>f=\<cal-I\><rsub|n,X,Y><around*|(|D<rsub|x><rsup|<around*|[|n|]>>f|)>\<in\>L<rsup|n><around*|(|X;Y|)>
    </equation*>
  </definition>

  <\note>
    Using [theorem: <reference|diff linear to multilinear>] we have that
    <math|D<rsub|x><rsup|1>f=D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f> and
    for <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>

    <\equation*>
      D<rsub|x><rsup|n>f<around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>=D<rsub|x><rsup|<around*|[|n|]>>f<around*|[|h<rsub|1>:\<ldots\>:h<rsub|n>|]>.
    </equation*>
  </note>

  We use in general <math|D<rsub|x><rsup|<around*|[|n|]>>f> because the
  proofs are simpler, however if we have to calculate the <math|n>-the
  differential we can use <math|D<rsub|x><rsup|n>f>.

  <subsection|Functions that are <math|C<rsup|n>> at a point or
  <math|C<rsup|n>> on a set>

  <\definition>
    <label|diff class C^n><index|<math|C<rsup|n>>><index|<math|C<rsup|0>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function then <math|f> is <math|C<rsup|n>> at
    <math|x> if for <math|n> we have

    <\description>
      <item*|<math|n=0>><math|f:A\<rightarrow\>Y> is continuous at <math|x>.

      <item*|<math|n\<in\>\<bbb-N\>>>There exist a open set <math|V> with
      <math|x\<in\>V\<subseteq\>A> such that <math|f> is <math|n>-times
      differentiable on <math|V> and the function\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
      </equation*>

      is continuous at <math|x>.
    </description>

    <\note>
      <label|note 16.103.180>As <math|x\<in\>V> it follows from the above
      that if <math|f> is <math|C<rsup|n>> at <math|x> then <math|f> is
      <math|n>-times differentiable at <math|x>.
    </note>
  </definition>

  <\definition>
    <label|diff class C^@@><index|<math|C<rsup|\<infty\>>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function then <math|f> is
    <math|C<rsup|\<infty\>>> at <math|x> if
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> <math|f> is <math|C<rsup|n>> at
    <math|x>.
  </definition>

  Just as with <math|n>-times differentiability <math|C<rsup|n>> is a local
  property.

  <\theorem>
    <label|diff restriction of a function of class C^n>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>, <math|U> a
    <with|font-series|bold|open> set with <math|x\<in\>U\<subseteq\>A>,
    <math|<rigid|f:A\<rightarrow\>Y>> a function then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is >C<rsup|n><text| at
      <math|x>>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<rsub|\|U><text|
      is >C<rsup|n><text| at >x>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>For <math|n\<in\>\<bbb-N\><rsub|0>> we
      have either:\ 

      <\description>
        <item*|<math|n=0>>Then by definition<math|f:A\<rightarrow\>Y> is
        continuous at <math|x> and using [theorem: <reference|continuity and
        subspace topology (5)>] we have that
        <math|f<rsub|\|U>:U\<rightarrow\>Y> is continuous at <math|x>. Hence
        by definition <math|f<rsub|\|U>> is <math|C<rsup|0>> at <math|x>.

        <item*|<math|n\<in\>\<bbb-N\>>>Then there exist a open set <math|V>
        with <math|x\<in\>V\<subseteq\>A> such that <math|f> is
        <math|n>-times differentiable on <math|V> and the function\ 

        <\equation>
          <label|eq 16.145.6>D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V><around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
        </equation>

        is continuous at <math|x>. Take <math|W=U<big|cap>V> then for
        <math|y\<in\>W> we have <math|y\<in\>V> so that <math|f> is
        <math|n>-times differentiable at <math|y>. As
        <math|y\<in\>W<rsup|\<circ\>><below|=|<text|[theorem:
        <reference|topology open set and interior>]>>W\<subseteq\>U\<subseteq\>A>
        we can use \ <math|>[theorem: <reference|diff higher order
        differentiation is local>] to prove that <math|f<rsub|\|U>> is
        <math|n>-times differentiable at <math|y> with
        <math|<rigid|D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|U>=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|>>>.
        As <math|y\<in\>W> was aribtrary chosen we have that

        <\equation>
          <label|eq 16.146.6>f<rsub|\|U><text| is >n<text|-times
          differentiable on >W<text| and >\<forall\>y\<in\>W<text|
          >D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|U>=D<rsup|<around*|[|n|]>><rsub|y>f
        </equation>

        So we can define the function\ 

        <\equation>
          <label|eq 16.147.6>D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|U>:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|U><around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|U>
        </equation>

        Now <math|\<forall\>y\<in\>W> we have
        <math|D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|U><around*|(|y|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.147.6>]>>D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|U>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.146.6>]>>D<rsup|<around*|[|n|]>><rsub|y>f\<equallim\><rsub|<text|[eq:
        <reference|eq 16.145.6>]>>D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>>
        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|U>=<around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><rsub|\|W>
        </equation*>

        As <math|D<rsup|<around*|[|n|]>><rsub|V>f> is continuous at <math|x>
        it follows from [theorem: <reference|continuity and subspace topology
        (5)>] that <math|<around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><rsub|\|W>>
        is continuous at <math|x> so that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|U><text| is continuous at
          >x
        </equation*>

        The above together with [eq: <reference|eq 16.146.6>] means by
        definition that\ 

        <\equation*>
          f<rsub|\|U><text| is >C<rsup|n><text| at >x
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>For <math|n> we have either:\ 

      <\description>
        <item*|<math|n=0>>As <math|f<rsub|\|U>> is <math|C<rsup|0>> it is
        continuous at <math|x>, as further <math|U> is open it follows from
        [theorem: <reference|continuity and subspace topology (6)>] that
        <math|f> is continuous at <math|x>, hence <math|f> is
        <math|C<rsup|0>> at <math|x>.

        <item*|<math|n\<in\>\<bbb-N\>>>As <math|f<rsub|\|U>> is
        <math|C<rsup|n>> at <math|x> there exist a open set <math|V> with
        <math|x\<in\>V\<subseteq\>U> such that <math|f<rsub|\|U>> is
        <math|n>-times differentiable at <math|x> and the function\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|U>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|U><around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|U>
        </equation*>

        is continuous at <math|x>. Let <math|y\<in\>V> then
        <math|f<rsub|\|U>> is <math|n>-times differentiable at <math|y> and
        <math|<rigid|y\<in\>V\<subseteq\>U<below|=|<text|[theorem:
        <reference|topology open set and interior>]>>U<rsup|\<circ\>>=U\<subseteq\>A>>.
        So using [theorem: <reference|diff higher order differentiation is
        local>] <math|f> is <math|n>-times differentiable at <math|y> with
        <math|D<rsup|<around*|[|n|]>><rsub|y>f=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|U>>.
        Hence\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f<text| is differentiable on >V
        </equation*>

        Define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
        </equation*>

        then <math|\<forall\>y\<in\>V> we gave
        <math|D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|U>=D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|U><around*|(|y|)>>
        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f=D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|U>
        </equation*>

        Hence as <math|D<rsup|<around*|[|n|]>><rsub|V>f<rsub|\|U>> is
        continuous at <math|x> <math|D<rsup|<around*|[|n|]>><rsub|V>f> is
        continuous at <math|x> from which it follows that

        <\equation*>
          f<text| is >C<rsup|<around*|[|n|]>><text| at >x
        </equation*>
      </description>
    </description>
  </proof>

  Every <math|\<infty\>>-times differentiable function is
  <math|C<rsup|\<infty\>>> as is proved in the following theorem.

  <\theorem>
    <label|diff C-infinity condition>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f<rigid|:A\<rightarrow\>Y>> a function then\ 

    <\equation*>
      <text|>f<text| is >\<infty\><text|-times Fréchet differentiable at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<text| is >C<rsup|\<infty\>><text| at >x
    </equation*>
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is <math|1>-times
      differentiable at <math|x> <math|f> is Fréchet differentiable at
      <math|x>, hence it follows from [theorem: <reference|diff
      differentiable function is continuous>] that <math|f> is continuous at
      <math|x> proving that\ 

      <\equation*>
        f<text| is >C<rsup|0><text| at >x
      </equation*>

      Let <math|n\<in\>\<bbb-N\>> then as <math|f> is <math|\<infty\>>-times
      Fréchet differentiable at <math|x> <math|f> is
      <math|<around*|(|n+1|)>>-times Fréchet differentiable at <math|x>.
      Hence there exist a open set <math|V> with <math|x\<in\>V\<subseteq\>U>
      such that <math|\<forall\>y\<in\>V> <math|f> is <math|n>-times
      differentiable at <math|y> [hence <math|f> is <math|n>-times
      differentiable on <math|V>] and

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
      </equation*>

      is Fréchet differentiable at <math|x>. Using [theorem: <reference|diff
      differentiable function is continuous>] it follows that
      <math|D<rsup|<around*|[|n|]>><rsub|V>f> is continuous at <math|x>.
      Hence we have by definition that

      <\equation*>
        f<text| is >C<rsup|n><text| at >x
      </equation*>

      So <math|\<forall\>n\<in\>\<bbb-N\>> we have that <math|f> is
      <math|C<rsup|n>> at <math|x> proving that <math|f> is
      <math|C<rsup|\<infty\>>> at <math|x>.

      <item*|<math|\<Leftarrow\>>>Let <math|n\<in\>\<bbb-N\>> then as
      <math|f> is <math|C<rsup|\<infty\>>> at <math|x> <math|f> is
      <math|C<rsup|n>> at <math|x>. Hence by definition there exist a open
      set <math|V> with <math|V\<subseteq\>U> such that
      <math|\<forall\>y\<in\>V> <math|f> is <math|n>-times differentiable at
      <math|y>. As <math|x\<in\>V> it follows that <math|f> is <math|n>-times
      differentiable at <math|x>. As <math|n\<in\>\<bbb-N\>> was chosen
      arbitrary it follows that <math|f> is <math|\<infty\>>-times
      differentiable at <math|x>.
    </description>
  </proof>

  <\definition>
    <label|diff C^n on a set>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|n\<in\>\<bbb-N\><rsub|0><big|cup><around*|{|\<infty\>|}>>,
    <math|A\<subseteq\>X>, <math|B\<subseteq\>A> and
    <math|f:A\<rightarrow\>Y> a function then <with|font-series|bold|<math|f>
    is <math|C<rsup|n>> on <math|B>> if <math|\<forall\>y\<in\>B> <math|f> is
    <math|C<rsup|n>> at <math|y>.
  </definition>

  We can restate the above definition as is show in the following theorem.

  <\theorem>
    <label|diff C^n on a set condition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|n\<in\>\<bbb-N\>>, <math|A\<subseteq\>X> and
    <math|f:A\<rightarrow\>Y> a function then\ 

    <\enumerate>
      <item>If <math|B\<subseteq\>A> and <math|f> is <math|C<rsup|n>> on
      <math|B> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|f<text| is n><text|-times
        differentiable on >B>|<cell|>>|<row|<cell|>|<cell|and>|<cell|>>|<row|<cell|>|<cell|D<rsup|<around*|[|n|]>><rsub|B>f:B\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|n|]>><rsub|B>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f<text|
        is continuous>>|<cell|>>>>
      </eqnarray*>

      <item>If <math|U> is a open set with <math|U\<subseteq\>A> then we have
      \ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|f<text| is >C<rsup|n><text| on
        >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<text|
        is n><text|-times differentiable on
        >U>|<cell|>>|<row|<cell|>|<cell|and>|<cell|>>|<row|<cell|>|<cell|D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f<text|
        is continuous>>|<cell|>>>>
      </eqnarray*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>B> then as <math|f> is <math|C<rsup|n>> on
      <math|B> <math|f> is <math|C<rsup|n>> at <math|x>. Hence by
      [definition: <reference|diff class C^n>] there exist a open set
      <math|V<rsub|x>> with <math|x\<in\>V<rsub|x>\<subseteq\>A> such that
      <math|f> is <math|n>-times differentiable on <math|V<rsub|x>> and\ 

      <\equation>
        <label|eq 16.148.7>D<rsup|<around*|[|n|]>><rsub|V<rsub|x>>f:V<rsub|x>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|V<rsub|x>>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f<text|
        is continuous at >x
      </equation>

      As <math|\<forall\>x\<in\>B> <math|x\<in\>V<rsub|x>\<subseteq\>B> we
      have that <math|f> is <math|n>-times differentiable at <math|x> hence\ 

      <\equation>
        <label|eq 16.149.7>f<text| is differentiable on >B
      </equation>

      and we can define\ 

      <\equation>
        <label|eq 16.150.8>D<rsup|<around*|[|n|]>><rsub|B>f:B\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|n|]>><rsub|B>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
      </equation>

      Let <math|x\<in\>B> then <math|\<forall\>y\<in\>V<rsub|x>\<subseteq\>B>
      we have <math|D<rsup|<around*|[|n|]>><rsub|B>f<around*|(|y|)><below|=|<text|[eq:
      <reference|eq 16.150.8>]>>D<rsub|y><rsup|<around*|[|n|]>>f\<equallim\><rsub|<text|[eq:
      <reference|eq 16.148.7>]>>D<rsup|<around*|[|n|]>><rsub|V<rsub|x>>f<around*|(|y|)>>
      which proves that <math|D<rsup|<around*|[|n|]>><rsub|V<rsub|x>>f=<around*|(|D<rsup|<around*|[|n|]>><rsub|B>f|)><rsub|\|V<rsub|x>>>.
      Hence as <math|D<rsup|<around*|[|n|]>><rsub|V<rsub|x>>f> is continuous
      at <math|x> [see eq: <reference|eq 16.148.7>] it follows that
      <math|<around*|(|D<rsup|<around*|[|n|]>><rsub|B>f|)><rsub|\|V<rsub|x>>>
      is continuous at <math|x>. As <math|V<rsub|x>> is open and
      <math|x\<in\>V<rsub|x>\<subseteq\>B> it follows from [theorem:
      <reference|continuity and subspace topology (6)>] that

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|B>f<text| is continuous at >x
      </equation*>

      <item>We have:\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>This follows from (1).

        <item*|<math|\<Leftarrow\>>>If <math|x\<in\>U> then by the hypothesis
        <math|f> is <math|n>-times differentiable on <math|U> and
        <math|D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)>>
        defined by <math|D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f>
        is continuous hence continuous at <math|x>. So by [definition:
        <reference|diff class C^n>] <math|f> is <math|C<rsup|n>> at <math|x>.
        As <math|x\<in\>U> was chosen arbitrary we have that <math|f> is
        <math|C<rsup|n>> on <math|B>.
      </description>
    </enumerate>
  </proof>

  Next we examine the relation between functions that are <math|C<rsup|1>> at
  a point and derivatives at a point, first we need a little lemma.

  <\lemma>
    <label|lemma 16.83.197>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real (complex) numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space over <math|\<bbb-K\>>, <math|A\<subseteq\>\<bbb-K\>>,
    <math|x\<in\>A> and

    <\equation*>
      f:A\<rightarrow\>L<around*|(|\<bbb-K\>,X|)><text| a function>
    </equation*>

    and define

    <\equation*>
      f<around*|(|\<ast\>|)><around*|(|1|)>:A\<rightarrow\>X<text| by
      ><around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>=f<around*|(|y|)><around*|(|1|)>
    </equation*>

    then we have\ 

    <\equation*>
      f<text| is continuous at >x<text| >\<Leftrightarrow\><text|
      >f<around*|(|\<ast\>|)><around*|(|1|)><text| is continuous at >x
    </equation*>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>A> and
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is continuous
      at <math|x> there exist by [corollary: <reference|continuity in normed
      subspace>] a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that if
      <math|y\<in\>A> with <math|<around*|\||y-x|\|>\<less\>\<delta\>> then
      we have <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,X|)>>\<less\>\<varepsilon\>>.
      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>-<around*|(|f<around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|y|)><around*|(|1|)>-f<around*|(|x|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,X|)>>\<cdot\><around*|\||1|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,X|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      Applying then [corollary: <reference|continuity in normed subspace>]
      proves that <math|f<around*|(|\<ast\>|)><around*|(|1|)>> is continuous
      at <math|x>.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>A> and
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then, as
      <math|f<around*|(|\<ast\>|)><around*|(|1|)>> is continuous at <math|x>,
      we have by [corollary: <reference|continuity in normed subspace>] that
      there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for
      <math|y\<in\>A> with <math|<around*|\||y-x|\|>\<less\>\<delta\>>\ 

      <\equation>
        <label|eq 16.150.7><around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>-<around*|(|f<around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      Hence we have <math|\<forall\>t\<in\>\<bbb-K\>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|t|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|t\<cdot\>1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t\<cdot\><around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|y|)><around*|(|1|)>-f<around*|(|x|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>-<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.150.7>]>>>|<cell|\<varepsilon\>\<cdot\><around*|\||t|\|>>>>>
      </eqnarray*>

      so that by [theorem: <reference|continuity norm on L(X,Y)>] we have
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|\<nobracket\>|<around*|(|\<bbb-K\>,X|)>|\|>>\<less\>\<varepsilon\>>,
      hence <math|f> is continuous at <math|x> [see corollary:
      <reference|continuity in normed subspace>].
    </description>
  </proof>

  <\theorem>
    <label|diff C^1 and derivates>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-R\>>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>X> a function then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is >C<rsup|1><text| at
      >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\>U<text|
      open in >X<text| with >x\<in\>U\<subseteq\>A<text| such that
      >\<forall\>y\<in\>U<text| >f<rprime|'><rsub|y><text|
      exist>>|<cell|>>|<row|<cell|>|<cell|and>|<cell|>>|<row|<cell|>|<cell|f<rprime|'>:U\<rightarrow\>X<text|
      defined by >f<rprime|'><around*|(|y|)>=f<rprime|'><rsub|y>>|<cell|>>|<row|<cell|>|<cell|<text|is
      continous at <math|x>>>|<cell|>>|<row|<cell|>|<cell|Further<space|1em>f<rprime|'>=<around*|(|D<rsup|<around*|[|1|]>><rsub|U>f|)><around*|(|\<ast\>|)><around*|(|1|)><text|>>|<cell|>>|<row|<cell|>|<cell|where
      >|<cell|>>|<row|<cell|>|<cell|D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<around*|(|\<bbb-R\>,Y|)><text|
      is defined by >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f=D<rsub|y>f>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is <math|C<rsup|1>> at
      <math|x> there exist by definition a open set <math|U> with
      <math|x\<in\>U\<subseteq\>A> such that <math|f> is <math|1>-times
      [hence Fréchet differentiable on <math|U>] differentiable on <math|U>
      and\ 

      <\equation>
        <label|eq 16.152.9>D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<rsub|1><around*|(|\<bbb-R\>;X|)>=L<around*|(|\<bbb-R\>,X|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<below|=|def>D<rsub|y>f
      </equation>

      is continuous at <math|x>. Let <math|y\<in\>U<below|\<subseteq\>|<text|[theorem:
      <reference|topology biggest open subset>]>>A<rsup|\<circ\>>> then, as
      <math|f> is Fréchet differentiable at <math|y>, it follows from
      [theorem: <reference|diff derivate and frechet differential>] that
      <math|f> has a derivative at <math|y> and
      <math|f<rprime|'><rsub|y>=D<rsub|y>f<around*|(|1|)>>. Hence we can
      define\ 

      <\equation>
        <label|eq 16.153.9>f<rprime|'>:U\<rightarrow\>X<text| by
        >f<rprime|'><around*|(|y|)>=f<rprime|'><rsub|y>=D<rsub|y>f<around*|(|1|)>
      </equation>

      Further if <math|y\<in\>U> then <math|f<rprime|'><around*|(|y|)>=D<rsub|y>f<around*|(|1|)><below|=|<text|[eq:
      <reference|eq 16.152.9>]>>D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|y|)><around*|(|1|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>>
      which proves that\ 

      <\equation*>
        f<rprime|'>=D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<ast\>|)><around*|(|1|)>
      </equation*>

      As <math|D<rsup|<around*|[|1|]>><rsub|U>f> is continuous at <math|x> it
      follows from [lemma: <reference|lemma 16.83.197>] that
      <math|><math|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>>
      is continuous at <math|x> or using the above that <math|f<rprime|'>> is
      continuous at <math|x>.

      <item*|<math|\<Leftarrow\>>>By the hypothesis there exist a open set
      <math|U> with <math|x\<in\>U\<subseteq\>A> such that
      <math|\<forall\>y\<in\>U> <math|f<rprime|'><rsub|y>> exist and the
      function\ 

      <\equation*>
        f:U\<rightarrow\>X<text| defined by
        >f<rprime|'><around*|(|y|)>=f<rprime|'><rsub|y><text| is continuous
        at >x
      </equation*>

      Let <math|y\<in\>U<below|\<subseteq\>|<text|[theorem:
      <reference|topology biggest open subset>]>>A<rsup|\<circ\>>> then using
      [theorem: <reference|diff derivate and frechet differential>] <math|f>
      is Frétchet differentiable at <math|y> [hence <math|1>-times
      differentiable at <math|y>] with <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|y>f|)><around*|(|1|)>=<around*|(|D<rsup|><rsub|y>f|)><around*|(|1|)>=f<rprime|'><rsub|y>=f<rprime|'><around*|(|y|)>>.
      So we can define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<rsub|1><around*|(|\<bbb-R\>;X|)>=L<around*|(|\<bbb-R\>,X|)><text|
        by >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f\<equallim\><rsub|def>D<rsup|1><rsub|y>f
      </equation*>

      Let <math|y\<in\>U> then <math|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|U>f|)><around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|y|)>|)><around*|(|1|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|y>f|)><around*|(|1|)>=f<rprime|'><around*|(|y|)>>
      so that\ 

      <\equation*>
        <around*|(|D<rsup|<around*|[|1|]>><rsub|U>f|)><around*|(|\<ast\>|)><around*|(|1|)>=f<rprime|'>
      </equation*>

      As <math|f<rprime|'>> is continuous at <math|x> it follows from the
      above that <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|U>f|)><around*|(|\<ast\>|)><around*|(|1|)>>
      is continuous at <math|x> and using \ [lemma: <reference|lemma
      16.83.197>] that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|U>f<text| is continuous at >x
      </equation*>
    </description>
  </proof>

  We have the following extension of the above theorem about sets that are
  <math|C<rsup|1>> on a set.

  <\theorem>
    <label|diff C^1 and derivates (1)>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-R\>> and
    <math|f:A\<rightarrow\>X> a function then we have:

    <\enumerate>
      <item>If <math|B\<subseteq\>A> and <math|B> is either a open set or of
      the the forms <math|<around*|[|a,b|]>,<around*|[|a,b|[>,<around*|]|a,b|]>,<around*|]|a,b|[>,<around*|[|a,\<infty\>|[>,<around*|]|a,\<infty\>|[>,<around*|[|-\<infty\>,a|[>,<around*|]|-\<infty\>,a|[>>
      wehere <math|a,b\<in\>\<bbb-R\><text| with >a\<less\>b> and <math|f> is
      <math|C<rsup|1>> on <math|B> then\ 

      <\equation*>
        \<forall\>x\<in\>B<text| >f<rsub|x><rprime|'><text| exists and
        >f<rprime|'>:B\<rightarrow\>X<text| defined by
        >f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x><text| is a continuous
        function>
      </equation*>

      <item>If <math|U> is a open set with <math|U\<subseteq\>A> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|f<text| is >C<rsup|1><text| on
        >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>x\<in\>U<text|
        >f<rsub|x><rprime|'><text| exists and
        >f<rprime|'>:U\<rightarrow\>X<text| defined by
        >f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x><text| is a continuous
        function>>|<cell|>>>>
      </eqnarray*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using [theorem: <reference|diff C^n on a set condition>] it
      follows that <math|f> is <math|1>-times differentiable on <math|B> and
      the function defined by\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|B>f:B\<rightarrow\>L<rsub|1><around*|(|\<bbb-K\>;X|)>=L<around*|(|\<bbb-K\>,X|)><text|
        where >D<rsup|<around*|[|1|]>><rsub|B>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f<text|
        is continuous>
      </equation*>

      If <math|x\<in\>B> then <math|f> is <math|1>-times differentiable at
      <math|x> [hence Fréchet differentiable at <math|x>] so that by
      [theorem: <reference|diff derivate and frechet differential>]
      <math|f<rprime|'><rsub|x>> exists and
      <math|f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>>. So we can define
      the function\ 

      <\equation*>
        f<rprime|'>:U\<rightarrow\>X<text| by
        >f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x>
      </equation*>

      If <math|x\<in\>B> then <math|><math|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|B>f|)><around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>=<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|B>f|)><around*|(|x|)>|)><around*|(|1|)>=D<rsub|x><rsup|<around*|[|1|]>>f<around*|(|1|)>=f<rprime|'><rsub|x>=f<rprime|'><around*|(|x|)>>
      so that\ 

      <\equation*>
        f<rprime|'>=<around*|(|D<rsup|<around*|[|1|]>><rsub|B>f|)><around*|(|\<star\>|)>
      </equation*>

      As <math|><math|D<rsup|<around*|[|1|]>><rsub|B>f> is a continuous
      function hence continuous at every <math|x\<in\>B> it follows from
      [lemma: <reference|lemma 16.83.197>] that
      <math|D<rsup|<around*|[|1|]>><rsub|U>f> is continuous at every
      <math|x\<in\>A> hence <math|f<rprime|'>> is continuous at every
      <math|x\<in\>A>

      which proves that\ 

      <\equation*>
        f<rprime|'><text| is a continuous function>
      </equation*>

      <item>We have\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>This follows from (1).

        <item*|<math|\<Leftarrow\>>>By the hypothesis we have that
        <math|\<forall\>x\<in\>U> that <math|f<rprime|'><rsub|x>> exists and
        that the function defined by\ 

        <\equation*>
          f<rprime|'>:U\<rightarrow\>X<text| where
          >f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x><text| is a
          continuous function>
        </equation*>

        Let <math|x\<in\>U> then as <math|f<rprime|'><rsub|x>> exists it
        follows from [theorem: <reference|diff derivate and frechet
        differential>] that <math|f> is Fréchet differentiable at <math|x>,
        hence <math|1>-times differentiable at <math|x> with
        <math|f<rprime|'><rsub|x>=D<rsub|x>f=D<rsup|<around*|[|1|]>><rsub|x>f>.
        So we can define\ 

        <\equation*>
          D<rsub|U><rsup|<around*|[|1|]>>f:U\<rightarrow\>L<rsub|1><around*|(|\<bbb-K\>;X|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f
        </equation*>

        Further given <math|x\<in\>U> we have\ 

        <\equation*>
          <around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|U>f|)><around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>=<around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<rsub|U>|)><around*|(|x|)>|)><around*|(|1|)>=D<rsub|x><rsup|<around*|[|1|]>>f<around*|(|1|)>=f<rprime|'><rsub|x>=f<rprime|'><around*|(|x|)>
        </equation*>

        proving that\ 

        <\equation*>
          f<rprime|'>=<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|\<star\>|)>
        </equation*>

        As <math|f<rprime|'>> is continuous
        <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|U>f|)><around*|(|\<star\>|)>>
        is continuous and using [lemma: <reference|lemma 16.83.197>] it
        follows that <math|D<rsup|<around*|[|1|]>><rsub|U>f> is continuous at
        every <math|x\<in\>U>. So <math|D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<rsub|1><around*|(|X;X|)>>
        is a continuous function. Applying then [theorem: <reference|diff C^n
        on a set condition>] proves that\ 

        <\equation*>
          f<text| is >C<rsup|1><text| on >U
        </equation*>
      </description>
    </enumerate>
  </proof>

  <subsection|Higher order derivatives>

  Just as we have higher order differentiation we have also higher order
  derivating.

  <\definition>
    <label|diff higher order derivate>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers based on the norm <math|<around*|\|||\|>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>X>, <math|x\<in\>A> a limit point of
    <math|A> and <math|f:A\<rightarrow\>X> a function then <math|f> has a
    <rigid|<math|n>-the> derivative <math|f<rsup|<around*|(|n|)>>\<in\>X> at
    <math|x> if for\ 

    <\description>
      <item*|<math|n=1>><math|f> has a derivative at <math|x> and we define
      <math|f<rsup|<around*|(|1|)>><rsub|x>> by
      <math|f<rsup|<around*|(|1|)>><rsub|x>=f<rprime|'><rsub|x>>.

      <item*|<math|1\<less\>n>>There exist a open set <math|V> with
      <math|x\<in\>V\<subseteq\>A> such that <math|\<forall\>y\<in\>V> we
      have that <math|f> has a <rigid|<math|<around*|(|n-1|)>>-the>
      derivative <math|f<rsub|y><rsup|<around*|(|n-1|)>>> at <math|y> and the
      function\ 

      <\equation*>
        f<rsup|<around*|(|n-1|)>><rsub|V>:V\<rightarrow\>X<text| defined by
        >f<rsup|<around*|(|n-1|)>><rsub|V><around*|(|y|)>=f<rsub|y><rsup|<around*|(|n-1|)>>
      </equation*>

      has a derivative at <math|x>. Then the <math|n>-the derivative
      <math|f<rsub|x><rsup|<around*|(|n|)>>> at <math|x> is then defined to
      be\ 

      <\equation*>
        f<rsub|x><rsup|<around*|(|n|)>>=<around*|(|f<rsup|<around*|(|n-1|)>><rsub|V>|)><rsub|x><rprime|'>
      </equation*>
    </description>

    <\note>
      In the case that <math|1\<less\>n> we have to ensure that
      <math|f<rsup|<around*|(|n|)>><rsub|x>> is independent of the <math|V>
      chosen. So assume that there exist another open set <math|W> such that
      <math|\<forall\>y\<in\>W> we have that <math|f> has a
      <math|<around*|(|n-1|)>>-the derivative
      <math|f<rsup|<around*|(|n-1|)>><rsub|y>> at <math|y> and the function\ 

      <\equation*>
        f<rsup|<around*|(|n-1|)>><rsub|W>:W\<rightarrow\>X<text| defined by
        >f<rsup|<around*|(|n-1|)>><around*|(|y|)>=f<rsub|y><rsup|<around*|(|n-1|)>>
      </equation*>

      has a derivative at <math|x>. Then by [theorem: <reference|diff
      derivative is local (1)>] <math|><math|<around*|(|f<rsup|<around*|(|n-1|)>><rsub|V>|)><rsub|x><rprime|'>=<around*|(|f<rsup|<around*|(|n-1|)>><rsub|W>|)><rsub|x><rprime|'>>
      which ensures uniqueness of the definition.
    </note>

    <\note>
      If <math|x\<in\>A<rsup|\<circ\>>>, <math|A> is open or <math|A> is of
      the forms <math|<around*|[|a,b|]>>, <math|<around*|[|a,b|[>>,
      <math|<around*|]|a,b|]>>, <math|<around*|]|a,b|[>>,
      <math|<around*|[|a,\<infty\>|[>>, <math|<around*|]|a,\<infty\>|[>>,
      <math|<around*|[|a,\<infty\>|[>>, <math|<around*|]|-\<infty\>,a|]>> or
      <math|<around*|]|-\<infty\>,a|[>> then by [theorems:
      <reference|topology interior point is a limit point in a normed space>,
      <reference|topology every element of a open set in a normed space is a
      limit point>, <reference|topology every element of a generalized
      interval is a limit point>] that <math|x> is a limit point of <math|A>
      automatically, hence in these cases we can leave out the extra
      condition that <math|x> must be a limit point of <math|x>.
    </note>
  </definition>

  Let's examine now the relation between <math|n>-times differentiability and
  the existence of the <math|n>-the derivative. First we need a little lemma.

  <\lemma>
    <label|lemma 16.72.189>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    the normed space of real (complex) numbers based on the canonical norm
    <math|<around*|\|||\|>> and <math|L\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)>>
    then\ 

    <\equation*>
      <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>\<leqslant\><around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>><rsub|>
    </equation*>
  </lemma>

  <\proof>
    As usually we prove this by induction on <math|n>, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)><text| then
      ><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;Y|)>>\<leqslant\><around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>If <math|L\<in\>L<rsub|1><around*|(|\<bbb-K\>;X|)>=L<around*|(|\<bbb-K\>,X|)>>
      then if <math|x\<in\>X<rsup|1>> satisfies <math|<around*|\||x|\|>=1> we
      have\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|x\<cdot\>1|)>|\<\|\|\>>=<around*|\<\|\|\>|x\<cdot\>L<around*|(|1|)>|\<\|\|\>>=<around*|\||x|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>|\<\|\|\>>
      </equation*>

      so that by [theorem: <reference|continuity norm on L(X,Y)>]
      <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|1><around*|(|\<bbb-K\>;X|)>>\<leqslant\><around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>|\<\|\|\>>>,
      hence <math|1\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
      <math|L\<in\>L<rsub|n+1><around*|(|\<bbb-K\>;X|)>=L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>>
      then <math|L<around*|(|1|)>\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)>>.
      As <math|n\<in\>S> we have that

      <\equation>
        <label|eq 16.52.190><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>\<leqslant\><around*|\<\|\|\>|L<around*|(|1|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>
      </equation>

      If <math|x\<in\>\<bbb-K\>> such that <math|<around*|\||x|\|>=1> then as
      <math|L\<in\>L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>>
      we have <math|L<around*|(|x|)>\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)>>
      so that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x\<cdot\>1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x\<cdot\>L<around*|(|1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.52.190>]>>>|<cell|<around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>><eq-number><label|eq
        16.67.140>>>>>
      </eqnarray*>

      Hence using [theorem: <reference|continuity norm on L(X,Y)>]
      <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|\<bbb-K\>;X|)>>\<leqslant\><around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>>
      which proves that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\theorem>
    <label|diff higher order derivate and differential>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real numbers based on the norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-R\>>, <math|x\<in\>A> where
    <math|x> is a limit point of <math|A> and <math|f:A\<rightarrow\>X> a
    function then\ 

    <\equation*>
      f<text| is >n<text|-times differentiable at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<text| has a >n<text|-the derivative at >x
    </equation*>

    Further if <math|f> is <math|n>-times differentiable at <math|x> or
    <math|f> has a <math|n>-the derivative at <math|x> then

    <\equation*>
      f<rsup|<around*|(|n|)>><rsub|x>=D<rsub|x><rsup|<around*|[|n|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>\<equallim\><rsub|<text|[definition:
      <reference|diff higher order differentiation
      (1)>]>>D<rsub|x><rsup|n>f<around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>
    </equation*>

    <\note>
      If <math|x\<in\>A<rsup|\<circ\>>>, <math|A> is open or <math|A> is of
      the forms <math|<around*|[|a,b|]>>, <math|<around*|[|a,b|[>>,
      <math|<around*|]|a,b|]>>, <math|<around*|]|a,b|[>>,
      <math|<around*|[|a,\<infty\>|[>>, <math|<around*|]|a,\<infty\>|[>>,
      <math|<around*|[|a,\<infty\>|[>>, <math|<around*|]|-\<infty\>,a|]>> or
      <math|<around*|]|-\<infty\>,a|[>> then by [theorems:
      <reference|topology interior point is a limit point in a normed space>,
      <reference|topology every element of a open set in a normed space is a
      limit point>, <reference|topology every element of a generalized
      interval is a limit point>] that <math|x> is a limit point of <math|A>
      automatically, hence in these cases we can leave out the extra
      condition that <math|x> must be a limit point of <math|x>.
    </note>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by induction, so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >y\<in\>A<text| is a limit
        point of >A<text| and >f<text| is >n<text|-times differentiable at
        >y<text| then >f<text| has a >n<text|-the derivative at >y<text| and
        >f<rsup|<around*|(|n|)>><rsub|y>=D<rsup|<around*|[|n|]>><rsub|y>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|n=1>>If <math|y> is a limit point of <math|A> and
        <math|f> is <math|1>-times differentiable at <math|y> then by
        definition <math|f> is Fréchet differentiable at <math|y> with
        <math|D<rsup|<around*|[|1|]>><rsub|y>f=D<rsub|y>f>. As <math|y> is a
        limit point we have by [theorem: <reference|diff tangent cone and
        limit point>] that <math|S<rsub|A><around*|(|y|)>=\<bbb-R\>> so that
        by [theorem: <reference|diff derivate and frechet differential>]
        <math|f> has a derivative at <math|y> with
        <math|f<rprime|'><rsub|y>=D<rsub|y>f<around*|(|1|)>>. Hence by
        definition <math|f> has a <math|1>-the derivative with

        <\equation*>
          f<rsup|<around*|(|1|)>><rsub|y>=D<rsub|y>f<around*|(|1|)>=D<rsup|<around*|[|1|]>><rsub|y>f<around*|(|1|)>=D<rsup|<around*|[|1|]>><rsub|y>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>
        </equation*>

        which proves that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let <math|y> be a
        limit point of <math|A> and assume that <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|y>. Then there
        exist a open set <math|V> with <math|y\<in\>V\<subseteq\>A> such that
        <math|\<forall\>z\<in\>V> <math|f> is <math|n>-times differentiable
        at <math|z> and the function\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|\<bbb-R\>,X|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|z|)>=D<rsup|<around*|[|n|]>><rsub|z>f
        </equation*>

        is Fréchet differentiable at <math|y> with\ 

        <\equation>
          <label|eq 16.156.9>D<rsup|<around*|[|n+1|]>><rsub|y>f=D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>\<in\>L<around*|(|\<bbb-R\>,L<rsub|n><around*|(|\<bbb-R\>,X|)>|)>=L<rsub|n+1><around*|(|\<bbb-R\>;X|)>
        </equation>

        \ As <math|y> is a limit point of <math|A> we have by [theorem:
        <reference|diff tangent cone and limit point>] that
        <math|\<bbb-R\>=S<rsub|A><around*|(|y|)>>, so that by the definition
        of Fréchet differentiability [see definition: <reference|diff
        differentiability>] we have, given
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>, that there exist a
        <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
        <math|\<forall\>h\<in\>V<rsub|y>> with
        <math|<around*|\||h|\|>\<less\>\<delta\>> we have\ 

        <\equation>
          <label|eq 16.157.9><around*|\<\|\|\>|D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y+h|)>-D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>-D<rsub|y><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><around*|(|h|)>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>
        </equation>

        Let <math|z\<in\>V> a open set. Then we have by [theorems:
        <reference|topology biggest open subset>, <reference|topology
        interior point is a limit point in a normed space>] that <math|z> is
        a limit point of <math|A>, as also <math|f> is <math|n>-times
        differentiable at <math|z> and <math|n\<in\>S> it follows that

        <\equation>
          <label|eq 16.158.9>f<text| has a >n<text|-the derivative at
          >z<text| with >f<rsup|<around*|(|n|)>><rsub|z>=D<rsup|<around*|[|n|]>><rsub|z>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>
        </equation>

        Hence we can define the function\ 

        <\equation>
          <label|eq 16.159.9>f<rsup|<around*|(|n|)>>:V\<rightarrow\>X<text|
          by >f<rsup|<around*|(|n|)>><around*|(|z|)>=f<rsup|<around*|(|n|)>><rsub|z>
        </equation>

        Then for <math|h\<in\>V<rsub|y>> with
        <math|0\<less\><around*|\<nobracket\>|<around*|\||h|\|>\<less\>\<delta\>|\|>
        we have >

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|y+h|)>-f<rsup|<around*|(|n|)>><around*|(|y|)>-h\<cdot\>D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|y+h|)>-f<rsup|<around*|(|n|)>><around*|(|y|)>-h\<cdot\><around*|(|D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|1|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|y+h|)>-f<rsup|<around*|(|n|)>><around*|(|y|)>-<around*|(|D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsub|y+h><rsup|<around*|(|n|)>>-f<rsub|y><rsup|<around*|(|n|)>>-<around*|(|D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.158.9>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsub|y+h><rsup|n>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsub|y><rsup|n>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsub|y+h><rsup|n>f-D<rsub|y><rsup|n>f-D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|<below|\<leqslant\>|<text|[lemma:
          <reference|lemma 16.56.187>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsub|y+h><rsup|n>f-D<rsub|y><rsup|n>f-D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-R\>;X|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\||1|\|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsub|y+h><rsup|n>f-D<rsub|y><rsup|n>f-D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-R\>;X|)>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n><rsub|V>f<around*|(|y+h|)>-D<rsup|n><rsub|V>f<around*|(|y|)>-D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-R\>;X|)>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.156.9>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n><rsub|V>f<around*|(|y+h|)>-D<rsup|n><rsub|V>f<around*|(|y|)>-D<rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|<below|\<leqslant\>|<text|[eq:
          <reference|eq 16.157.9>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>>|<cell|<below|\<less\>|<around*|\||h|\|>\<neq\>0>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
        </eqnarray*>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|y+h|)>-f<rsup|<around*|(|n|)>><around*|(|y|)>|h>-D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|y+h|)>-f<rsup|<around*|(|n|)>><around*|(|y|)>-h\<cdot\>D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|h>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|y+h|)>-f<rsup|<around*|(|n|)>><around*|(|y|)>-h\<cdot\>D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>|<around*|\||h|\|>>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
        </eqnarray*>

        which proves that <math|f<rsup|<around*|(|n|)>>> has a derivative at
        <math|y> with\ 

        <\equation*>
          <around*|(|f<rsup|<around*|(|n|)>>|)><rprime|'><rsub|y>=D<rsup|<around*|[|n+1|]>><rsub|y>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>
        </equation*>

        So by definition <math|f> has a <math|<around*|(|n+1|)>>-the
        derivative <math|f<rsup|<around*|(|n+1|)>><rsub|y>=<around*|(|f<rsup|<around*|(|n|)>>|)><rprime|'><rsub|y>=D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>
        at <math|y> which proves that

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>We use induction to prove this, so define

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >y\<in\>A<text| is a limit
        point of >A<text| and >f<text| has a >n<text|-the derivative at
        <math|y> then <math|f> is >n<text|-times differentiable at >y<text|
        with >f<rsup|<around*|(|n|)>><rsub|y>=D<rsup|<around*|[|n|]>><rsub|y>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>Let <math|y\<in\>A> be a limit point of
        <math|A> and assume that <math|f> has a <math|1>-the derivative then
        by [theorem: <reference|diff derivate and frechet differential>]
        <math|f> is Fréchet differentiable at <math|y> [hence <math|1>-times
        differentiable at <math|y>] and

        <\equation*>
          f<rsub|y><rsup|<around*|(|1|)>>=f<rsub|y><rprime|'>=D<rsub|y>f<around*|(|1|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|<wide*|1:,\<ldots\>,:1|\<wide-underbrace\>><rsub|1>|)>
        </equation*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let <math|y\<in\>A> be
        a limit point of <math|A> and assume that <math|f> has a <math|n>-the
        derivative. Then, as <math|1\<less\>n+1>, there exist a open set
        <math|V> with <math|y\<in\>V\<subseteq\>A> such that
        <math|\<forall\>z\<in\>V> <math|f> has a <math|n>-the derivative at
        <math|z> and the function\ 

        <\equation*>
          f<rsup|<around*|(|n|)>><rsub|V>:V\<rightarrow\>Y<text| defined by
          >f<rsup|<around*|(|n|)>><around*|(|z|)>=f<rsup|<around*|(|n|)>><rsub|z>
        </equation*>

        has a derivative at <math|y> and\ 

        <\equation>
          <label|eq 16.160.9>f<rsup|<around*|(|n+1|)>><rsub|y>=<around*|(|f<rsup|<around*|(|n|)>><rsub|V>|)><rprime|'><rsub|y>
        </equation>

        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the above
        there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
        <math|\<forall\>h\<in\>V<rsub|y>> with
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have\ 

        <\equation>
          <label|eq 16.161.9><around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|y+h|)>-f<rsup|<around*|(|n|)>><around*|(|y|)>|h>-f<rsup|<around*|(|n+1|)>><rsub|y>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation>

        Let <math|z\<in\>V> a open set. Then we have by [theorems:
        <reference|topology biggest open subset>, <reference|topology
        interior point is a limit point in a normed space>] that <math|z> is
        a limit point of <math|A>, as also <math|f> has a <math|n>-the
        derivative at <math|z> and <math|n\<in\>S> it follows that <math|f>
        is <math|n>-times differentiable at <math|z> and
        <math|f<rsup|<around*|(|n|)>><rsub|z>=D<rsup|<around*|[|n|]>><rsub|y>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>.
        Hence we can define the function

        <\equation>
          <label|eq 16.162.9>D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|z|)>=D<rsup|<around*|[|n|]>><rsub|z>f
        </equation>

        and\ 

        <\equation>
          <label|eq 16.163.9>\<forall\>z\<in\>V<text| we have
          >f<rsup|<around*|(|n|)>><rsub|z>=D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|z|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>
        </equation>

        Hence we have Hence

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><rsub|y>|h>|\<\|\|\>>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.163.9>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|y+h|)>-f<rsup|<around*|(|n|)>><around*|(|y|)>|h>-f<rsup|<around*|(|n+1|)>><rsub|y>|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.161.9>]>>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        After multiplying by <math|<around*|\||h|\|>> and taking in account
        that

        <\equation*>
          <around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|y+0|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|y|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-0\<cdot\>f<rsup|<around*|(|n+1|)>><rsub|y>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\||0|\|>
        </equation*>

        it follows that <math|\<forall\>h\<in\>V<rsub|x>> with
        <math|<around*|\||h|\|>\<less\>\<delta\>> we have

        <\equation>
          <label|eq 16.164.9><around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|y+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><rsub|y>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Define\ 

        <\equation*>
          L<rprime|'><rsub|y>:\<bbb-R\><rsup|n>\<rightarrow\>X<text| by
          >L<rprime|'><rsub|y><around*|(|h|)>=f<rsup|<around*|(|n+1|)>><rsub|y>\<cdot\><big|prod><rsub|i=1><rsup|n>h<rsub|i>
        </equation*>

        then\ 

        <\equation>
          <label|eq 16.165.9>L<rprime|'><rsub|y><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>=f<rsup|<around*|(|n+1|)>><rsub|y>
        </equation>

        and by \ [example: <reference|continuity K^n>] we have that
        <math|L<rprime|'><rsub|y>\<in\>L<rsup|n><around*|(|\<bbb-R\>;X|)>>,
        define

        <\equation*>
          L<rsub|y>=\<cal-I\><rsub|n,\<bbb-K\>,X><rsup|-1><around*|(|L<rprime|'><rsub|y>|)>\<in\>L<rsub|n><around*|(|\<bbb-R\>;X|)><text|
          so that >h\<cdot\>L<rsub|y>\<in\>L<rsub|n><around*|(|\<bbb-R\>;X|)>
        </equation*>

        then we have by [theorem: <reference|diff linear to multilinear>]
        that

        <\equation>
          <label|eq 16.60.189>L<rsub|y><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>=L<rprime|'><rsub|y><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.165.9>]>>f<rsup|<around*|[|n+1|]>><rsub|y>
        </equation>

        Define

        <\equation>
          <label|eq 16.168.9>K<rsub|y>:\<bbb-R\>\<rightarrow\>L<rsub|n><around*|(|\<bbb-R\>;X|)><text|
          by >K<rsub|y><around*|(|h|)>=h\<cdot\>L<rsub|y>
        </equation>

        then by [example: <reference|continuity norm L(x)=a.x>]\ 

        <\equation*>
          K<rsub|y>\<in\>L<around*|(|\<bbb-R\>,L<rsub|n><around*|(|\<bbb-R\>;X|)>|)>=L<rsub|n+1><around*|(|\<bbb-R\>;X|)>
        </equation*>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|y+h|)>-D<rsup|<around*|[|n|]>>f<around*|(|y|)>-K<rsub|y><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-R\>;X|)>>>|<cell|\<leqslant\><rsub|<text|[lemma:
          <reference|lemma 16.72.189>]]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|<around*|[|n|]>>f<around*|(|y+h|)>-D<rsup|<around*|[|n|]>>f<around*|(|y|)>-K<rsub|y><around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|y+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-K<rsub|y><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>|\<nobracket\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.168.9>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|y+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>L<rsub|y><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>|\<nobracket\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.60.189>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|y+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsub|y><rsup|<around*|[|n+1|]>>|\<\|\|\>>|\<nobracket\>>>|<cell|<below|\<leqslant\>|<text|[eq:
          <reference|eq 16.164.9>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|D<rsup|<around*|[|n|]>>f> is Fréchet
        differentiable at <math|y> and that
        <math|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>=<around*|(|K<rsub|y>|)><rsub|\|S<rsub|A><around*|(|y|)>>>.
        As <math|y> is a limit point we have by [theorem: <reference|diff
        tangent cone and limit point>] that
        <math|\<bbb-R\>=S<rsub|A><around*|(|y|)>>. Hence\ 

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable at
          >y<text| with >D<rsub|y><rsup|<around*|[|n+1|]>>f=K<rsub|y>
        </equation*>

        Further we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsub|y><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>|<cell|=>|<cell|K<rsub|y><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|K<rsub|y><around*|(|1|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.168.9>]>>>|<cell|1\<cdot\>L<rsub|y><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|y><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.60.189>]>>>|<cell|f<rsub|y><rsup|<around*|(|n+1|)>>>>>>
        </eqnarray*>

        so that we have

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  We define now higher order derivating on a set.

  <\definition>
    <label|diff higher order derivate on a open set>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real numbers based on the norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-R\>>,
    <math|B\<subseteq\>A<big|cap>A<rprime|'>> [so that every element of
    <math|B> is a limit point of <math|A>] then <math|f:B\<rightarrow\>X> has
    <math|n>-the derivatives on <math|B> if <math|\<forall\>x\<in\>B>
    <math|f> has a <math|n>-the derivative at <math|x>.

    <\note>
      The condition <math|B\<subseteq\>A<big|cap>A<rprime|'>> is needed
      because higher order derivatives at a point are only defined for limit
      points.
    </note>
  </definition>

  If the domain of a function is a open set we have the following
  simplification of the above definition.

  <\theorem>
    <label|diff higher order derivate on a open set (1)>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers based on the norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U> a open set in <math|X>,
    <math|f:U\<rightarrow\>X> a function then the following are equivalent:\ 

    <\enumerate>
      <item><math|f> has <math|n>-the derivatives on <math|U>.

      <item>For <math|n> we have:\ 

      <\description>
        <item*|<math|n=1>><math|\<forall\>x\<in\>U> <math|f> has a derivative
        at <math|x> and <math|f<rsup|<around*|(|1|)>>*<around*|(|x|)>=f<rprime|'><rsub|x>>.

        <item*|<math|1\<less\>n>><math|\<forall\>x\<in\>U> <math|f> has a
        <math|<around*|(|n-1|)>>-the derivative at <math|x> and the function\ 

        <\equation*>
          f<rsup|<around*|(|n-1|)>><rsub|U>:U\<rightarrow\>Y<text| defined by
          ><around*|(|f<rsup|<around*|(|n-1|)>><rsub|U>|)><around*|(|x|)>=f<rsup|<around*|(|n-1|)>><rsub|x>
        </equation*>

        has a derivative at <math|x> with
        <math|f<rsup|<around*|(|n|)>><rsub|x>=<around*|(|f<rsup|<around*|(|n-1|)>>|)><rprime|'><rsub|x>>
        for every <math|x\<in\>U>.
      </description>
    </enumerate>

    <\note>
      As <math|U> is open we have by [theorem: <reference|topology every
      element of a open or closed ball is a limit point>] that
      <math|U\<subseteq\>U<rprime|'>\<Rightarrow\>U=U<rprime|'><big|cap>U>.
    </note>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|n\<in\>\<bbb-N\>> then we have
      two cases to consider:

      <\description>
        <item*|<math|n=1>>Then, as <math|\<forall\>x\<in\>U> <math|f> has a
        <math|1>-the derivative at <math|x>, it follows from [definition:
        <reference|diff higher order derivate>] that <math|f> has a
        derivative at <math|x> with <math|f<rsup|<around*|(|1|)>><rsub|x>=f<rprime|'><rsub|x>>.

        <item*|<math|1\<less\>n>>Let <math|x\<in\>U> then as <math|f> has a
        <math|n>-the derivative at <math|x> there exist by \ [definition:
        <reference|diff higher order derivate>] a open set <math|V<rsub|x>>
        with <math|x\<in\>V<rsub|x>\<subseteq\>U> such that
        <math|\<forall\>y\<in\>V<rsub|x>> has a <math|f> has a
        <math|<around*|(|n-1|)>>-the derivative at <math|x> and the function

        <\equation>
          <label|eq 16.169.9>f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>:V<rsub|x>\<rightarrow\>X<text|
          defined by >f<rsup|<around*|(|n-1|)>><around*|(|y|)>=f<rsup|<around*|(|n-1|)>><rsub|y>
        </equation>

        has a derivative at <math|x> with

        <\equation>
          <label|eq 16.170.9>f<rsup|<around*|(|n|)>><rsub|x>=<around*|(|f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>|)><rprime|'><rsub|x>
        </equation>

        As <math|x\<in\>V<rsub|x>> it follows that <math|f> has a
        <math|<around*|(|n-1|)>>-the derivative at <math|x> which as
        <math|x\<in\>U> was chosen arbitrary allows us to define

        <\equation>
          <label|eq 16.171.9>f<rsup|<around*|(|n-1|)>><rsub|U>:U\<rightarrow\>X<text|
          by >f<rsup|<around*|(|n-1|)>><rsub|U><around*|(|x|)>=f<rsup|<around*|(|n-1|)>><rsub|x>
        </equation>

        Let <math|x\<in\>U> then <math|\<forall\>y\<in\>V<rsub|x>> we have
        <math|f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>><around*|(|y|)><below|=|<text|[eq:
        <reference|eq 16.169.9>]>>f<rsup|<around*|(|n-1|)>><rsub|y><below|=|<text|[eq:
        <reference|eq 16.171.9>]>>f<rsup|<around*|(|n-1|)>><rsub|U><around*|(|y|)>>
        which proves that\ 

        <\equation*>
          f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>=<around*|(|f<rsup|<around*|(|n-1|)>><rsub|U>|)><rsub|\|U>
        </equation*>

        Hence as <math|><math|f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>> has
        a derivative at <math|x> it follows that
        <math|<around*|(|f<rsup|<around*|(|n-1|)>><rsub|U>|)><rsub|\|U>> has
        a derivative at <math|x> with <math|<around*|(|<around*|(|f<rsup|<around*|(|n-1|)>><rsub|U>|)><rsub|\|U>|)><rprime|'><rsub|x>=<around*|(|f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>|)><rprime|'><rsub|x>>.
        So by [theorem: <reference|diff derivative is local>]
        <math|f<rsup|<around*|(|n-1|)>><rsub|U>> has a derivative at <math|x>
        with <math|<around*|(|f<rsup|<around*|(|n-1|)>><rsub|U>|)><rprime|'><rsub|x>=<around*|(|<around*|(|f<rsup|<around*|(|n-1|)>><rsub|U>|)><rsub|\|U>|)><rprime|'><rsub|x>=<around*|(|f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>|)><rprime|'><rsub|x><below|=|<text|[eq:
        <reference|eq 16.170.9>]>>f<rsup|<around*|(|n|)>><rsub|x>>. Hence\ 

        <\equation*>
          \<forall\>x\<in\>U<text| we have that
          <math|f<rsup|<around*|(|n-1|)>><rsub|U>> has a derivative at x with
          ><around*|(|f<rsup|<around*|(|n-1|)>><rsub|U>|)><rprime|'><rsub|x>=f<rsup|<around*|(|n|)>><rsub|x>
        </equation*>
      </description>

      <item*|<math|2\<Rightarrow\>1>>For <math|n\<in\>\<bbb-N\>> we must
      consider two cases:

      <\description>
        <item*|<math|n=1>>As <math|\<forall\>x\<in\>U> <math|f> has a
        derivative at <math|x> it follows by [definition: <reference|diff
        higher order derivate>] that <math|f> has a <math|1>-the derivative
        at <math|x>. Hence <math|f> has a <math|1>-the derivative on
        <math|U>.

        <item*|<math|1\<less\>n>>Let <math|x\<in\>U\<subseteq\>U> we have by
        the hypothesis combined with [definition: <reference|diff higher
        order derivate>] that <math|f> has a <math|n>-the derivative at
        <math|x>. Hence as <math|x\<in\>U> was chosen arbitrary <math|f> has
        a <math|n>-the derivative on <math|U>.
      </description>
    </description>
  </proof>

  <subsection|Properties of higher order differentiation>

  <\theorem>
    <label|diff n-times and m-times differentiability>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and\ 

    <\equation*>
      f:A\<rightarrow\>Y
    </equation*>

    a function that is <math|n>-times differentiable at <math|x> then
    <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> is
    <math|m>-times differentiable at <math|x>.
  </theorem>

  <\proof>
    We proceed by induction so define

    <\equation*>
      S<rsub|n>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|<text|If
      >k\<less\>n<text| then >f<text| is ><around*|(|n-k|)><text|-times
      Fréchet differentiable at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>Then <math|n-k=n-0=n> which as <math|f>
      is <math|n>-times Fréchet differentiable at <math|x> prove that
      <math|0\<in\>S<rsub|n>>.

      <item*|<math|k\<in\>S<rsub|n>\<Rightarrow\>k+1\<in\>S<rsub|n>>>If
      <math|k+1\<less\>n> we have <math|k\<less\>n> so as
      <math|k\<in\>S<rsub|n>> it follows that <math|f> is
      <math|<around*|(|n-k|)>>-times differentiable at <math|x>. As
      <math|k+1\<less\>n\<Rightarrow\>1\<less\>n-k> there exist a open
      <math|V> such that <math|x\<in\>V\<subseteq\>U> and
      <math|\<forall\>y\<in\>V> <math|f> is
      <math|<around*|(|<around*|(|n-k|)>-1|)>>-times differentiable at
      <math|y>, in particular <math|f> is
      <math|<around*|(|<around*|(|n-k|)>-1|)>>-times differentiable at
      <math|x>. As <math|n-<around*|(|k+1|)>=<around*|(|n-k|)>-1> it follows
      that <math|k+1\<in\>S<rsub|n>>.
    </description>

    By mathematical induction it follows that
    <math|S<rsub|n>=\<bbb-N\><rsub|0>>, hence if
    <math|m\<in\><around*|{|1,\<ldots\>,n|}>> then
    <math|k=n-m\<in\>\<bbb-N\><rsub|0>=S<rsub|n>> and <math|k=n-m\<less\>n>
    so that <math|f> is <math|<around*|(|n-k|)>>-times differentiable at
    <math|x> or as <math|n-k=n-<around*|(|n-m|)>=m> <math|f> is
    <math|m>-times differentiable at <math|x>.
  </proof>

  <\corollary>
    <label|diff n-times and m-times derivating>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> where <math|x> is a
    limit point of <math|a> and\ 

    <\equation*>
      f:A\<rightarrow\>Y
    </equation*>

    a function that has a <math|n>-the derivative at <math|x> then
    <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> has a
    <math|m>-the derivative of <math|x>
  </corollary>

  <\proof>
    If <math|f> has a <math|n>-the derivative at <math|x> then by ]theorem:
    <reference|diff higher order derivate and differential>] <math|f> is
    <math|n>-times differentiable at <math|x>, hence by the previous theorem
    [theorem: <reference|diff n-times and m-times differentiability>]
    <math|f> is <math|m>-times differentiable at <math|x>. Hence using
    ]theorem: <reference|diff higher order derivate and differential>] it
    follows that <math|f> has a <math|m>-the derivative at <math|x>.
  </proof>

  We have a similar theorem for functions that are <math|C<rsup|n>> at a
  point.

  <\theorem>
    <label|diff C^n and C^m>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|n\<in\>\<bbb-N\><rsub|0>> and

    <\equation*>
      f:A\<rightarrow\>Y<text| a function that is >C<rsup|n> at x
    </equation*>

    then <math|\<forall\>m\<in\><around*|{|0,\<ldots\>,n|}>> we have that
    <math|f> is <math|C<rsup|m>> at <math|x>.
  </theorem>

  <\proof>
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have either:\ 

    <\description>
      <item*|<math|n=0>>Then for <math|m\<in\><around*|{|0,\<ldots\>,n|}>=<around*|{|0,\<ldots\>,0|}>=<around*|{|0|}>>
      we have <math|m=n=0> which as <math|f> is <math|C<rsup|n>> at <math|x >
      proves that <math|f> is <math|C<rsup|m>> at <math|x>.

      <item*|<math|0\<less\>n>>Then for <math|m\<in\><around*|{|0,\<ldots\>,n|}>>
      we have either:\ 

      <\description>
        <item*|<math|m=n>>Than as <math|f> is <math|C<rsup|n>> at <math|x>
        <math|f> is <math|C<rsup|m>> at <math|x>.

        <item*|<math|m\<less\>n>>Then for <math|m> we have either:

        <\description>
          <item*|<math|m=0>>As <math|f> is <math|C<rsup|n>> at <math|x> it
          follows that <math|f> is <math|n>-times differentiable at <math|x>
          [see definition: <reference|diff class C^n>]. From
          <math|0\<less\>n\<Rightarrow\>1\<leqslant\>n> it follows using
          [theorem: <reference|diff n-times and m-times differentiability>]
          that <math|f> is <math|1>-times differentiable at <math|x>. Hence
          <math|f> is Fréchet differentiable at <math|x> so that by [theorem:
          <reference|diff differentiable function is continuous>] <math|f> is
          continuous at <math|x> or <math|f> is <math|C<rsup|0>> at <math|x>.

          <item*|<math|1\<leqslant\>m>>As <math|f> is <math|C<rsup|n>> at
          <math|x> it follows that <math|f> is <math|n>-times differentiable
          at <math|x> [see definition: <reference|diff class C^n>]. Further
          from <math|1\<leqslant\>m\<less\>n> it follows that
          <math|m+1\<in\><around*|{|1,\<ldots\>,n|}>>. Hence by [theorem:
          <reference|diff n-times and m-times differentiability>] <math|f> is
          <math|<around*|(|m+1|)>>-times differentiable at <math|x>. So there
          exist a open set <math|V> with <math|x\<in\>V\<subseteq\>A> such
          that <math|\<forall\>y\<in\>V> <math|f> is <math|m>-times
          differentiable at <math|y> and the function\ 

          <\equation*>
            D<rsup|<around*|[|m|]>><rsub|V>f:V\<rightarrow\>L<rsub|m><around*|(|X;Y|)><text|
            defined by >D<rsup|<around*|[|m|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|m|]>><rsub|y>f<text|>
          </equation*>

          is Fréchet differentiable at <math|x>. Using theorem [theorem:
          <reference|diff differentiable function is continuous>] it follows
          that <math|D<rsup|<around*|[|m|]>><rsub|V>f> is continuous at
          <math|x>. Hence we have that <math|f> is <math|C<rsup|m>> at
          <math|x>.
        </description>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|diff C^(n+m)>Let <math|n,m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|A\<subseteq\>X>, <math|U >a open set in <math|X> with
    <math|V\<subseteq\>A> and <math|<rigid|f:A\<rightarrow\>Y>> a function
    that is <math|C<rsup|n+m>> on <math|V> [hence by [theorem:
    <reference|diff C^n and C^m>] is also <math|C<rsup|n>> on <math|V>] so
    that the following functions are well defined [see \ [theorem:
    \ <reference|diff C^n on a set condition>]]

    <\equation*>
      D<rsup|<around*|[|n+m|]>><rsub|V>f:V\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|n+m|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f
    </equation*>

    <\equation*>
      D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f
    </equation*>

    then <math|D<rsup|<around*|[|n|]>><rsub|V>f> is <math|C<rsup|m>> on
    <math|V> and for\ 

    <\equation*>
      D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>:V\<rightarrow\>L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)><text|
      defined by >D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><around*|(|x|)>=D<rsub|x><rsup|<around*|[|m|]>><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>
    </equation*>

    we have

    <\equation*>
      D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>=D<rsup|<around*|[|n+m|]>><rsub|V>f
    </equation*>
  </theorem>

  <\note>
    <math|L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|[lemma:
    <reference|lemma 16.61.207>]>>L<rsub|n+m><around*|(|X;Y|)>>
  </note>

  <\proof>
    We prove this by induction on <math|m>, so let <math|n\<in\>\<bbb-N\>>\ 

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|<text|If >f<text| is
      >C<rsup|n+m><text| on <math|V> then
      >D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      defined by ><rigid|D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f><text|
      is <math|C<rsup|m><text| on <math|V> and for
      >D<rsup|<around*|[|n+m|]>><rsub|V>f:V\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)>>>
      defined by D<rsup|<around*|[|n+m|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f<text|
      we have ><rigid|D<rsup|<around*|[|n+m|]>><rsub|V>f=D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>><text|
      where >D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>:V\<rightarrow\>L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.61.207>]>>L<rsub|n+m><around*|(|X;Y|)><text| is
      defined by >D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S<rsub|n>>>If <math|f> is <math|C<rsup|n+1>> on
      <math|V> then by [theorem: \ <reference|diff C^n on a set condition>]
      <math|f> is <math|<around*|(|n+1|)>>-times differentiable \ on <math|V>
      and\ 

      <\equation>
        <label|eq 16.85.181>D<rsup|<around*|[|n+1|]>><rsub|V>f:V\<rightarrow\>L<rsub|n+1><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n+1|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|n+1|]>><rsub|x>f<text|
        is continuous>
      </equation>

      Using [theorem: <reference|diff higher order differentiation on a open
      set (1)>] it follows that <math|f> is <math|n>-times differentiable on
      <math|V> and\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f
      </equation*>

      is Fréchet differentiable on <math|V>, hence\ 

      <\equation>
        <label|eq 16.172.10>D<rsup|<around*|[|n|]>><rsub|V>f<text| is
        >1<text|-times differentiable on >V
      </equation>

      and <math|\<forall\>x\<in\>V> we have

      <\equation>
        <label|eq 16.86.181>D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>\<equallim\><rsub|def>D<rsup|><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>=D<rsup|<around*|[|n+1|]>><rsub|x>f<below|=|<text|[eq:
        <reference|eq 16.85.181>]>>D<rsup|<around*|[|n+1|]>><rsub|V>f<around*|(|x|)>
      </equation>

      Hence if we define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>
      </equation*>

      then <math|\<forall\>x\<in\>V> we have
      <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><below|=|<text|[eq:
      <reference|eq 16.86.181>]>>D<rsup|<around*|[|n+1|]>><rsub|V>f<around*|(|x|)>>
      proving that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>=D<rsup|<around*|[|n+1|]>><rsub|V>f
      </equation*>

      As <math|D<rsup|<around*|[|n+1|]>><rsub|V>f> is continuous [see eq:
      <reference|eq 16.85.181>] it follows that
      <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>>
      is continuous, combining this with [eq: <reference|eq 16.172.10>]
      allows us to use [theorem: \ <reference|diff C^n on a set condition>]
      from which it follows that

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|V>f<text| is >C<rsup|1><text| on >V
      </equation*>

      which proves that <math|1\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>If
      <math|f> is <math|C<rsup|n+<around*|(|m+1|)>>> on <math|V> then by
      [theorem: \ <reference|diff C^n on a set condition>] <math|f> is
      <math|<around*|(|n+m|)>+1> differentiable on <math|V> and\ 

      <\equation>
        <label|eq 16.87.181>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|V>f:V\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|x>f<text|
        is continuous>
      </equation>

      Using [theorem: <reference|diff higher order differentiation on a open
      set (1)>] it follows that <math|f> is <math|<around*|(|n+m|)>>-times
      differentiable on <math|V> and\ 

      <\equation*>
        D<rsup|<around*|[|n+m|]>><rsub|V>f:V\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|n+m|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f
      </equation*>

      is Fréchet differentiable on <math|V>, hence\ 

      <\equation>
        <label|eq 16.175.10>D<rsup|<around*|[|n+m|]>><rsub|V>f<text| is
        >1<text|-times differentiable on >V
      </equation>

      and <math|\<forall\>x\<in\>V>

      <\equation>
        <label|eq 16.88.181>D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)>\<equallim\><rsub|def>D<rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)>=D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|x>f<below|=|<text|[eq:
        <reference|eq 16.87.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|V>f<around*|(|x|)>
      </equation>

      Hence if we define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)>:V\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)>
      </equation*>

      then we have <math|\<forall\>x\<in\>V> that
      <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.88.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|V>f<around*|(|x|)>>
      proving that\ 

      <\equation>
        <label|eq 16.89.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)>=D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|V>f
      </equation>

      As <math|f> is <math|C<rsup|n+m>> on <math|V> and
      <math|m\<in\>S<rsub|n>> it follow that\ 

      <\equation>
        <label|eq 16.178.11>D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f<text|
        is >C<rsup|m><text| on >V
      </equation>

      and for\ 

      <\equation*>
        D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>:V\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>
      </equation*>

      we have\ 

      <\equation>
        <label|eq 16.90.181>D<rsup|<around*|[|n+m|]>><rsub|V>f=D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>
      </equation>

      As <math|D<rsup|<around*|[|n+m|]>><rsub|V>f> is <math|1>-times
      differentiable on <math|V>[see eq: <reference|eq 16.175.10>] it follows
      from the above that <math|D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>>
      is <math|1>-times differentiable on <math|V>. In other words
      <math|\<forall\>x\<in\>V> <math|><math|D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>>
      is Fréchet differentiable at <math|x>, hence by definition we have that
      <math|D<rsup|<around*|[|n|]>><rsub|V>f> is
      <math|<around*|(|m+1|)>>-times differentiable with

      <\equation>
        <label|eq 16.179.10><rigid|D<rsup|<around*|[|m+1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>=D<rsub|x><around*|(|D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>|)>>
      </equation>

      So if we define

      <\equation>
        <label|eq 16.180.10>D<rsup|<around*|[|m+1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>:V\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|m+1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><around*|(|x|)>=D<rsup|<around*|[|m+1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>
      </equation>

      then <math|\<forall\>x\<in\>V> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|<around*|[|m+1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><around*|(|x|)>>|<cell|<below|=|<text|[eq:
        <reference|eq 16.179.10>]>>>|<cell|D<rsub|x><around*|(|D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x><rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|m|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.90.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)><around*|(|x|)>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        D<rsup|<around*|[|m+1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|D<rsup|<around*|[|n+m|]>><rsub|V>f|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.89.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|V>f
      </equation*>

      As <math|D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|V>f> is
      continuous [see eq: <reference|eq 16.87.181>] it follows that
      <math|D<rsup|<around*|[|m+1|]>><rsub|V><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>>
      is continuous. As also <math|D<rsup|<around*|[|n|]>><rsub|V>f> is
      <math|m>-times differentiable [see eq: <reference|eq 16.178.11>] we
      have by [theorem: \ <reference|diff C^n on a set condition>] that\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|V>f<text| is >C<rsup|m+1><text| on >V
      </equation*>

      \ So we have proved that <math|D<rsup|<around*|[|n|]>>f> is
      <math|C<rsup|m+1>> on <math|V> and <math|D<rsup|<around*|[|m+1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+<around*|(|m+1|)>|]>>f>
      which proves that\ 

      <\equation*>
        n+1\<in\>S<rsub|n>
      </equation*>
    </description>
  </proof>

  The following theorem will be essential in proofs by induction.

  <\theorem>
    <label|diff D^f=D^(n-1)D^1f>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> then the following are
    equivalent:

    <\enumerate>
      <item><math|f> is <math|n>-times differentiable at <math|x>

      <item>There exit a open set <math|V> with <math|x\<in\>V\<subseteq\>A>
      such that <math|\<forall\>y\<in\>V> <math|f> is <math|1>-times
      differentiable at <math|y> and\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
      </equation*>

      is <math|<around*|(|n-1|)>>-times differentiable at <math|x>. Further
      we have <math|D<rsup|<around*|[|n|]>><rsub|x>f=D<rsub|x><rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>>.
    </enumerate>

    <\note>
      As <math|\<forall\>y\<in\>V> <math|D<rsup|<around*|[|1|]>><rsub|y>f=D<rsub|y>f>
      we can say that the following are equivalent\ 

      <\enumerate>
        <item><math|f> is <math|n>-times Fréchet differentiable at <math|x>

        <item>There exit a open set <math|V> with
        <math|x\<in\>V\<subseteq\>A> such that <math|\<forall\>y\<in\>V>
        <math|f> is Fréchet differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
          defined by >D<rsup|><rsub|V>f<around*|(|y|)>=D<rsub|y>f
        </equation*>

        is <math|<around*|(|n-1|)>>-times Fréchet differentiable at <math|x>.
        Further we have <math|D<rsup|<around*|[|n|]>><rsub|x>f=D<rsub|x><rsup|<around*|[|n-1|]>><around*|(|D<rsub|V><rsup|>f|)>>.
      </enumerate>
    </note>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>We prove this by induction on <math|n>,
      so define

      <\equation*>
        S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|<text|If
        >f<text| is >n<text|-times Fréchet differentiable at >x\<in\>A<text|
        then there exist a open set V with >x\<in\>V\<subseteq\>A<text| such
        that >\<forall\>y\<in\>V<text| >f<text| is >1<text|-times Fréchet
        differentiable at >y<text| and ><rigid|D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>><text|
        defined by ><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>=D<rsup|><rsub|y><rsup|<around*|[|1|]>>f<text|
        is ><around*|(|n-1|)><text|-times Fréchet differentiable at >x<text|.
        Further we have >D<rsub|x><rsup|<around*|[|n|]>>f=D<rsub|x><rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|2\<in\>S>>If <math|f:U\<rightarrow\>Y> is <math|2>-times
        Fréchet differentiable at <math|x\<in\>A> then there exist a open set
        <math|V> with <math|x\<in\>V\<subseteq\>A> such that
        <math|\<forall\>y\<in\>V> <math|f> is <math|1>-times Fréchet
        differentiable at <math|y> and

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by <math|D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f>>
        </equation*>

        is Fréchet differentiable at <math|x> and

        <\equation*>
          D<rsub|x><rsup|<around*|[|2|]>>f=D<rsub|x><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation*>

        Hence we have by definition that <math|><math|D<rsup|<around*|[|1|]>><rsub|V>f>
        is <math|1>-times differentiable at <math|x> and that
        <math|<rigid|D<rsup|<around*|[|2|]>><rsub|x>f=D<rsub|x><rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>>>
        proving that <math|2\<in\>S>.

        \ <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> is
        <math|<around*|(|n+1|)>>-times Fréchet differentiable at <math|x> it
        follows that there exist a open set <math|V> in <math|X> with
        <math|x\<in\>V\<subseteq\>A> such that <math|\<forall\>y\<in\>V>
        <math|f> is <math|n>-times Fréchet differentiable and the function\ 

        <\equation>
          <label|eq 16.69.191>D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          where >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>>f<text|
          is Fréchet differentiable at >x
        </equation>

        and

        <\equation>
          <label|eq 16.70.191>D<rsub|x><rsup|<around*|[|n+1|]>>f=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>
        </equation>

        Let <math|y\<in\>V\<subseteq\>A> then as <math|f> is <math|n>-times
        differentiable at <math|y> we have, as <math|n\<in\>S>, that there
        exist a open set <math|V<rsub|y>> with
        <math|y\<in\>V<rsub|y>\<subseteq\>A> such that
        <math|\<forall\>z\<in\>V<rsub|y>> <math|f> is <math|1>-times
        differentiable at <math|z> and the function\ 

        <\equation>
          <label|eq 16.184.11>D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f:V<rsub|y>\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f<around*|(|z|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation>

        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> and\ 

        <\equation>
          <label|eq 16.185.11>D<rsup|<around*|[|n|]>><rsub|y>f=D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f|)>
        </equation>

        Take <math|W<rsub|y>=V<rsub|y><big|cap>V> then
        <math|y\<in\>W<rsub|y>\<subseteq\>V,V<rsub|y>\<subseteq\>A> and we
        have <math|\<forall\>z\<in\>W<rsub|y>> that <math|f> is
        <math|1>-times differentiable at <math|z>. Hence we can define\ 

        <\equation>
          <label|eq 16.71.193>D<rsub|W<rsub|y>><rsup|<around*|[|1|]>>f:W<rsub|y>\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by >D<rsub|W<rsub|y>><rsup|<around*|[|1|]>>f<around*|(|z|)>=D<rsub|z><rsup|<around*|[|1|]>>f
        </equation>

        As <math|\<forall\>z\<in\>W<rsub|y>\<subseteq\>V<rsub|y>> we have
        <math|><math|D<rsub|W<rsub|y>><rsup|<around*|[|1|]>>f<around*|(|z|)><below|=|<text|[eq:
        <reference|eq 16.71.193>]>>D<rsub|z><rsup|<around*|[|1|]>>f<below|=|<text|[eq:
        <reference|eq 16.184.11>]>>D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f<around*|(|z|)>>
        we have that\ 

        <\equation>
          <label|eq 16.187.11>D<rsup|<around*|[|1|]>><rsub|W<rsub|y>>f=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f|)><rsub|\|W<rsub|y>>
        </equation>

        Using locality [see theorem: <reference|diff higher order
        differentiation is local>] we have, as
        <math|D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f> is
        <math|<around*|(|n-1|)>>-times differentiable, that\ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f|)><rsub|\|W<rsub|y>><text|
          is ><around*|(|n-1|)><text|-times differentiable at >y<text| with >
        </equation*>

        with\ 

        <\equation>
          <label|eq 16.188.11>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f|)><rsub|\|W<rsub|y>>|)>=D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f|)>
        </equation>

        Hence using [eq: <reference|eq 16.187.11>] we have that\ 

        <\equation>
          <label|eq 16.189.11>D<rsup|<around*|[|1|]>><rsub|W<rsub|y>>f<text|
          is ><around*|(|n-1|)><text|-times differentiable at >y<text|>
        </equation>

        with\ 

        <\equation*>
          D<rsub|y><rsup|<around*|[|n|]>>f<below|=|<text|[eq: <reference|eq
          16.185.11>]>>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f|)><below|=|<text|[eq:
          <reference|eq 16.188.11>]>>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|y>>f|)><rsub|\|W<rsub|y>>|)><below|=|<text|[eq:
          <reference|eq 16.187.11>]>>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|y>>f|)>
        </equation*>

        so that\ 

        <\equation>
          <label|eq 16.72.193>D<rsub|y><rsup|<around*|[|n|]>>f=D<rsub|y><rsup|<around*|[|n-1|]>><around*|(|D<rsub|W<rsub|y>><rsup|<around*|[|1|]>>f|)>
        </equation>

        \;

        As <math|\<forall\>y\<in\>V> we have <math|y\<in\>W<rsub|y>> it
        follows that <math|f> is <math|1>-times differentiable at <math|y>
        and we can define the function

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          where >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f
        </equation*>

        Then, as <math|\<forall\>z\<in\>W<rsub|y>\<subseteq\>V> we have
        <math|><math|D<rsub|W<rsub|y>><rsup|<around*|[|1|]>>f<around*|(|z|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.71.193>]>>D<rsub|z><rsup|<around*|[|1|]>>f=D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|z|)>>,
        it follows that\ 

        <\equation>
          <label|eq 16.95.181>\<forall\>y\<in\>V<text|
          >D<rsub|W<rsub|y>><rsup|<around*|[|1|]>>f=<around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><rsub|\|W<rsub|y>>
        </equation>

        Hence, as <math|D<rsub|W<rsub|y>><rsup|<around*|[|1|]>>f> is
        <math|<around*|(|n-1|)>>-times differentiable at <math|y> with
        <math|D<rsub|y><rsup|<around*|[|n-1|]>><around*|(|D<rsub|W<rsub|y>><rsup|<around*|[|1|]>>f|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.72.193>]>>D<rsub|y><rsup|<around*|[|n|]>>f>, it
        follows that <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><rsub|\|W<rsub|y>>>
        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> and

        <\equation>
          <label|eq 16.192.11>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><rsub|\|W<rsub|y>>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.95.181>]>>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|y>>f|)>=D<rsub|y><rsup|<around*|[|n|]>>f
        </equation>

        Using the locality of higher order differentiation [see theorem:
        <reference|diff higher order differentiation is local>] it follows
        that <math|\<forall\>y\<in\>V> <math|D<rsup|<around*|[|1|]>><rsub|V>f<text|
        is ><around*|(|n-1|)>>-times differentiable at <math|y> and

        <\equation>
          <label|eq 16.193.11>D<rsub|y><rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsub|y><rsup|<around*|[|n|]>>f<below|<below|=|<text|[eq:
          <reference|eq 16.69.191>]>>D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>|>
        </equation>

        Hence if we define\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>:V\<rightarrow\>L<rsub|n-1><around*|(|X;L<rsub|1><around*|(|X;Y|)>|)><text|
          by ><around*|(|D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation*>

        we have <math|\<forall\>y\<in\>V> that
        <math|D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><below|=|<text|[eq:
        <reference|eq 16.193.11>]>>D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>>
        and it follows that <math|D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsup|<around*|[|n|]>><rsub|V>f>.
        So using [eqs: <reference|eq 16.69.191> and <reference|eq 16.70.191>]
        it follows that <math|D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>>
        is Fréchet differentiable at <math|x> and

        <\equation*>
          D<rsup|<around*|[|n+1|]>><rsub|x>f<below|=|<text|[eq; <reference|eq
          16.70.191>]>>D<rsub|x><around*|(|<around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>|)>=D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>|)>
        </equation*>

        Hence we have by definition that <math|D<rsup|<around*|[|1|]>><rsub|V>f>
        is <math|n>-times differentiable at <math|x> with
        <math|<rigid|D<rsub|x><rsup|n+1>f=D<rsub|x><rsup|<around*|[|n|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>>>.
        This proves as <math|<around*|(|n+1|)>-1=n> that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item*|<math|2\<Rightarrow\>1>>We use recursion to prove this. So
      define:

      <\equation*>
        S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|<text|If for
        >f<text| there exist a open >V<text| with
        <math|x\<in\>V\<subseteq\>A<text| such that >\<forall\>y\<in\>V<text|
        >f<text| is >1<text|-times differentiable at >y<text| and
        <math|D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f<text|
        is ><around*|(|n-1|)><text|-times differentiable at >x<text| then
        <math|f> is >n<text|-times differentiable at >x<text| and
        >D<rsub|x><rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsub|x><rsup|<around*|[|n|]>>f>>>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|2\<in\>S>>Let <math|V> be a open set with
        <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V> we
        have that <math|f> is <math|1>-times differentiable at <math|y> and

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f
        </equation*>

        is <math|2-1=1>-times differentiable at <math|x>. Then
        <math|D<rsup|<around*|[|1|]>><rsub|V>f> is Fréchet differentiable at
        <math|x> so that by definition <math|f<text|>> is <math|2>-times
        differentiable at <math|x> with\ 

        <\equation*>
          D<rsup|<around*|[|2|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation*>

        which proves that <math|2\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>First as
        <math|n\<in\>S\<subseteq\><around*|{|2,\<ldots\>,\<infty\>|}>> it
        follows that <math|1\<less\>n>. Let <math|V> be a open set such that
        <math|x\<in\>V\<subseteq\>U> and <math|\<forall\>y\<in\>V> <math|f>
        is <math|1>-times differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>
        </equation*>

        is <math|<around*|(|<around*|(|n+1|)>-1|)>>-times differentiable at
        <math|x>. Then <math|D<rsup|<around*|[|1|]>><rsub|V>f> is
        <math|n>-times differentiable at <math|x> so, as <math|1\<less\>n>,
        there exist a open <math|W> with <math|x\<in\>W\<subseteq\>V> such
        that <math|\<forall\>y\<in\>W> <math|D<rsup|<around*|[|1|]>><rsub|V>f>
        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>:W\<rightarrow\>L<around*|(|X,L<rsub|n-1><around*|(|X;Y|)>|)><text|
          defined by >D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation*>

        is Fréchet differentiable at <math|x> and

        <\equation>
          <label|eq 16.74.193>D<rsup|<around*|[|n|]>><rsub|x><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>|)>
        </equation>

        As <math|\<forall\>y\<in\>W\<subseteq\>V> <math|f> is <math|1>-times
        differentiable and <math|D<rsup|<around*|[|1|]>><rsub|V>f> is
        <math|<around*|(|n-1|)>>-times differentiable at <math|x> [because
        <math|x\<in\>W>] we have, as <math|n\<in\>S>, that <math|f> is
        <math|n>-times differentiable at <math|x> and

        <\equation>
          <label|eq 16.77.198>D<rsub|y><rsup|<around*|[|n|]>>f=D<rsub|y><rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation>

        Hence we have for\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|W>f:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|W>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>>f
        </equation*>

        that <math|\<forall\>y\<in\>W> <math|D<rsup|<around*|[|n|]>><rsub|W>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f\<equallim\><rsub|<text|[eq:
        <reference|eq 16.77.198>]>>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>>
        proving that

        <\equation>
          <label|eq 16.76.193>D<rsup|<around*|[|n|]>><rsub|W>f=D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation>

        so that <math|D<rsup|<around*|[|n|]>><rsub|W>f> is Fréchet
        differentiable at <math|x> [because
        <math|D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>>
        is Fréchet differentiable at <math|x>] and

        <\equation*>
          D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|W>f|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.76.193>]>>D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.74.193>]>>D<rsub|x><rsup|<around*|[|n|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation*>

        Hence we have by definition that <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> with

        <\equation*>
          D<rsub|x><rsup|<around*|[|n+1|]>>f=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|W>f|)>=D<rsub|x><rsup|<around*|[|n|]>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation*>

        which proves that <math|n+1\<in\>S>.
      </description>
    </description>
  </proof>

  <\corollary>
    <label|diff f is of class C^n if D^1f u=is of class C^n-1>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, a open set <math|A\<subseteq\>X>, <math|x\<in\>A>
    and <math|f:A\<rightarrow\>Y> a function then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is >C<rsup|n><text| at
      >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\>V<text|
      open with >x\<in\>V\<subseteq\>A<text| such that >f<text| is
      >1<text|-times differentiable on >V>|<cell|>>|<row|<cell|>|<cell|<text|and
      >D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
      defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f>|<cell|>>|<row|<cell|>|<cell|<text|is
      >C<rsup|<around*|[|n-1|]>><text| at >x>|<cell|>>>>
    </eqnarray*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>For <math|n> we have the following cases
      to consider:

      <\description>
        <item*|<math|n=1>>As <math|f> is <math|C<rsup|1>> at <math|x> there
        exist a open set <math|V> with <math|x\<in\>V\<subseteq\>A> such that
        <math|f> is <math|>1-times differentiable on <math|V> and the
        function\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|>
        </equation*>

        is continuous at <math|x>. Hence <math|D<rsup|<around*|[|1|]>><rsub|V>f>
        is <math|C<rsup|0>> at <math|x>.

        <item*|<math|1\<less\>n>>As <math|f> is \ <math|C<rsup|n>> at
        <math|x> there exist a open set <math|V> with
        <math|x\<in\>V\<subseteq\>A> such that <math|\<forall\>y\<in\>V>
        <math|f> is <math|n>-times differentiable at <math|y> and the
        function\ 

        <\equation>
          <label|eq 16.91.158>D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f<text|
          is continuous at >x
        </equation>

        Let <math|y\<in\>V> then by the previous theorem [theorem:
        <reference|diff D^f=D^(n-1)D^1f>] there exist a open <math|U<rsub|y>>
        with <math|y\<in\>U<rsub|y>\<subseteq\>A> such that
        <math|\<forall\>z\<in\>U<rsub|y>> we have that <math|f> is
        <math|1>-times differentiable at <math|z> and the function\ 

        <\equation>
          <label|eq 16.100.181>D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f:U<rsub|y>\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f<around*|(|z|)>=D<rsup|<around*|[|1|]>><rsub|z>f
        </equation>

        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> with

        <\equation>
          <label|eq 16.199.11>D<rsup|<around*|[|n|]>><rsub|y>f=D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f|)>
        </equation>

        Let <math|y\<in\>V> then as <math|y\<in\>U<rsub|y>> we have that
        <math|f> is <math|1>-times differentiable at <math|y> so we can
        define the function\ 

        <\equation>
          <label|eq 16.101.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
          where >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation>

        For <math|y\<in\>V> take <math|V<rsub|y>=U<rsub|y><big|cap>V\<subseteq\>V>
        then by [theorem: <reference|diff higher order differentiation is
        local>] <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f|)><rsub|\|V<rsub|y>>>
        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> and\ 

        <\equation>
          <rigid|<label|eq 16.102.181>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f|)><rsub|\|V<rsub|y>>=D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f|)><below|=|<text|[eq:
          <reference|eq 16.199.11>]>>D<rsup|<around*|[|n|]>><rsub|y>f>
        </equation>

        Let <math|z\<in\>V<rsub|y>> then

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f|)><rsub|\|V<rsub|y>><around*|(|z|)>=D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f<around*|(|z|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.100.181>]>>D<rsup|<around*|[|1|]>><rsub|z>f\<equallim\><rsub|<text|[eq:
          <reference|eq 16.101.181>]>>D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|z|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><rsub|\|V<rsub|y>><around*|(|z|)>
        </equation*>

        proving that\ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><rsub|\|V<rsub|y>>=<around*|(|D<rsup|<around*|[|1|]>><rsub|U<rsub|y>>f|)><rsub|\|V<rsub|y>>
        </equation*>

        Hence <math|<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|\|V<rsub|y>>>
        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><rsub|\|V<rsub|y>>|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.102.181>]>>D<rsup|<around*|[|n|]>><rsub|y>f
        </equation*>

        Using [theorem: <reference|diff higher order differentiation is
        local>] again it follows that <math|D<rsup|<around*|[|1|]>><rsub|V>f>
        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> with
        <math|><math|D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsub|y><rsup|<around*|[|n|]>>f>.
        So for\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>:V\<rightarrow\>L<rsub|n>*<around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>=D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation*>

        we have that <math|D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>=D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsub|y><rsup|<around*|[|n|]>>f\<equallim\><rsub|<text|[eq:
        <reference|eq 16.91.158>]>>D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>>
        or as <math|y\<in\>V> was chosen arbitrary that\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>=D<rsup|<around*|[|n|]>><rsub|V>f
        </equation*>

        As <math|D<rsup|<around*|[|n|]>><rsub|V>f> is continuous at <math|x>
        it follows from the above that <math|D<rsup|<around*|[|n-1|]>><rsub|V><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>>
        is continuous at <math|x>. From this we conclude that
        <math|D<rsup|<around*|[|1|]>><rsub|V>f> is <math|C<rsup|n-1>> at
        <math|x>.
      </description>

      <item*|<math|\<Leftarrow\>>>For <math|n\<in\>\<bbb-N\>> we have two
      possible cases:

      <\description>
        <item*|<math|n=1>>By the hypothesis there exist a open set <math|V>
        with <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
        <math|f> is <math|1>-times differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation*>

        is <math|C<rsup|0>> at <math|x>. Hence
        <math|D<rsup|<around*|[|1|]>><rsub|V>f> is continuous at <math|x>
        which by definition means that<math|f> is <math|C<rsup|1>> at
        <math|x>.

        <item*|<math|1\<less\>n>>By the hypothesis there exist a open set
        <math|V> with <math|x\<in\>V\<subseteq\>A> such that
        <math|\<forall\>y\<in\>V> <math|f> is <math|1>-times differentiable
        at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
          is >C<rsup|n-1><text| at >x
        </equation*>

        Hence there exist a open set <math|W> with
        <math|x\<in\>W\<subseteq\>V> such that
        <math|D<rsup|<around*|[|1|]>><rsub|V>f> is
        <math|<around*|(|n-1|)>>-times differentiable on <math|W> and the
        function\ 

        <\equation>
          <label|eq 16.103.181>D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>=D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation>

        is continuous at <math|x>. Let <math|y\<in\>W> then, as
        <math|D<rsup|<around*|[|1|]>><rsub|V>f> is
        <math|<around*|(|n-1|)>>-times differentiable at <math|y>, it follows
        from [theorem: <reference|diff D^f=D^(n-1)D^1f>] that <math|f> is
        <math|n>-times differentiable at <math|y> and\ 

        <\equation>
          <label|eq 16.104.181>D<rsup|<around*|[|n|]>><rsub|y>f=D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation>

        So if we define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|W>f:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>><rsub|W>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
        </equation*>

        then we have for <math|y\<in\>W> that

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|W>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f\<equallim\><rsub|<text|[eq:
          <reference|eq 16.104.181>]>>D<rsup|<around*|[|n-1|]>><rsub|y><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.103.181>]>>D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>
        </equation*>

        proving that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|W>f=D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>
        </equation*>

        Hence as <math|><math|D<rsup|<around*|[|n-1|]>><rsub|W><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)>>
        is continuous at <math|x> it follows that
        <math|D<rsup|<around*|[|n|]>><rsub|W>f> is continuous at <math|x>.
        \ So we conclude that <math|f> is <math|C<rsup|n>> at <math|x>.
      </description>
    </description>
  </proof>

  <\corollary>
    <label|diff f is of class C^n if D^1f u=is of class C^n-1 (1)>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, <math|A\<subseteq\>X>, <math|V> a open set in
    <math|X> with <math|x\<in\>V\<subseteq\>A> and <math|f:A\<rightarrow\>Y>
    a function then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is >C<rsup|n><text| on
      >V>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<text|
      is >1<text|-times differentiable on >V<text| and
      >>|<cell|>>|<row|<cell|>|<cell|D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
      defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f<text|
      is >C<rsup|n-1><text| on >V>|<cell|>>>>
    </eqnarray*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>V> then <math|f> is
      <math|C<rsup|n>> at <math|x> and by the previous corollary [corollary:
      <reference|diff f is of class C^n if D^1f u=is of class C^n-1>] there
      exist a open <math|V<rsub|x>> with <math|x\<in\>V<rsub|x>\<subseteq\>A>
      such that <math|f> is <math|1>-times differentiable on <math|V<rsub|x>>
      and\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|V<rsub|x>>f:V<rsub|x>\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|V<rsub|x>>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f<text|
        is >C<rsup|n-1><text| at >x
      </equation*>

      Hence <math|f> is <math|1>-times differentiable on <math|V> [as
      <math|\<forall\>x\<in\>V> <math|x\<in\>V<rsub|x>>] and we can define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
        by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
      </equation*>

      Let <math|x\<in\>V> and take <math|y\<in\>V<rsub|x>> then
      <math|D<rsup|<around*|[|1|]>><rsub|V<rsub|X>>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f=D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|x|)>\<equallim\><rsub|y\<in\>V<rsub|x>><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><rsub|\|V<rsub|x>><around*|(|y|)>>
      proving that\ 

      <\equation*>
        <around*|(|D<rsup|<around*|[|1|]>><rsub|V>f|)><rsub|\|V<rsub|x>>=D<rsup|<around*|[|1|]>><rsub|V<rsub|X>>f
      </equation*>

      hence as <math|D<rsup|<around*|[|1|]>><rsub|V<rsub|x>>f> is
      <math|C<rsup|n-1>> at <math|x> it follows that
      <math|<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|\|V<rsub|x>>> is
      <math|C<rsup|n-1>> at <math|x>. Using locality [see theorem:
      <reference|diff restriction of a function of class C^n>] that
      <math|D<rsup|<around*|[|1|]>><rsub|V>f> is <math|C<rsup|n-1>> at
      <math|x>. As <math|x\<in\>V> was chosen arbitrary it follows that
      <math|D<rsup|<around*|[|1|]>><rsub|V>f> is <math|C<rsup|n-1>> on
      <math|V>.

      <item*|<math|\<Leftarrow\>>>By the hypothesis <math|f> is
      <math|1>-times differentiable on <math|V> and

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
        is >C<rsup|n-1><text| on >V
      </equation*>

      Hence if <math|x\<in\>V> then by [corollary: <reference|diff f is of
      class C^n if D^1f u=is of class C^n-1>] <math|f> is <math|C<rsup|n>> at
      <math|x>. As <math|x\<in\>V> was chosen arbitrary it follows that
      <math|f> is <math|C<rsup|n>> on <math|V>.
    </description>
  </proof>

  Just as the Fréchet differential is linear [see theorem: <reference|diff
  derivate operator is linear>] we have the same for higher order
  differentials and derivatives.

  <\theorem>
    <label|diff higher order differential is linear>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> then we have:

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>Y>, <math|g:A\<rightarrow\>Y> are
      functions such that <math|f,g> are <math|n>-times differentiable at
      <math|x\<in\>A> then <math|f+g> is <math|n>-times differentiable at
      <math|x> and <math|D<rsub|x><rsup|<around*|[|n|]>><around*|(|f+g|)>=D<rsub|x><rsup|<around*|[|n|]>>f+D<rsub|x><rsup|<around*|[|n|]>>g>.

      <item>If <math|k\<in\>\<bbb-N\>> and
      <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
      is a family of functions such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|f<rsub|i>> is <math|n>-times differentiable at <math|x\<in\>A>
      then <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i>> is <math|n>-times
      differentiable at <math|x> and\ 

      <\equation*>
        D<rsub|x><rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>=<big|sum><rsub|i=1><rsup|k>D<rsub|x><rsup|<around*|[|n|]>>f
      </equation*>

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>>, <math|f:A\<rightarrow\>Y> is
      a function that is <math|n>-times differentiable at <math|x> then
      <math|\<alpha\>\<cdot\>f> is <math|n>-times differentiable at <math|x>
      and <math|D<rsub|x><rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|n|]>>f>.

      <item>If <math|f:A\<rightarrow\>Y>, <math|g:A\<rightarrow\>Y> are
      functions that are <math|C<rsup|n>> at <math|x> then <math|f+g> is
      <math|C<rsup|n>> at <math|x>.

      <item>If <math|k\<in\>\<bbb-N\>> and
      <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
      is a family of functions such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|f<rsup|i>> is is <math|C<rsup|n>> at <math|x> then
      <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i>> is <math|C<rsup|n>> at
      <math|x>

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>>, <math|f:A\<rightarrow\>Y> is
      <math|C<rsup|n>> at <math|x> then <math|\<alpha\>\<cdot\>f> is
      <math|C<rsup|n>> at <math|x>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction on <math|n> to prove this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f,g:A\<rightarrow\>Y<text|
        are >n<text|-times differentiable at >x\<in\>A<text| then
        <math|f+g<text| is >n<text|-times differentiable at >x<text| and
        >D<rsub|x><rsup|<around*|[|n|]>><around*|(|f+g|)>=D<rsub|x><rsup|<around*|[|n|]>>f+D<rsub|x><rsup|<around*|[|n|]>>g>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f>, <math|g:A\<rightarrow\>Y> are
        <math|1>-times differentiable at <math|x> then <math|f,g> are Fréchet
        differentiable at <math|x\<in\>A> and
        <math|D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f>,
        <math|D<rsub|x><rsup|<around*|[|1|]>>g=D<rsub|x>g>. Using [theorem:
        <reference|diff derivate operator is linear>] it follows that
        <math|f+g> is Fréchet differentiable at <math|x> [hence
        <math|1>-times differentiable at <math|x>] and

        <\equation*>
          D<rsub|x><rsup|<around*|[|1|]>><around*|(|f+g|)>=D<rsub|x><around*|(|f+g|)>=D<rsub|x>f+D<rsub|x>g=D<rsub|x><rsup|<around*|[|1|]>>f+D<rsub|x><rsup|<around*|[|1|]>>g
        </equation*>

        Hence we have <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f>,<math|g>
        are <math| <around*|(|n+1|)>>-times differentiable at <math|x> and
        <math|1\<less\>n+1> then there exist open sets <math|V<rsub|f>>,
        <math|V<rsub|g>> with <math|x\<in\>V<rsub|f>\<subseteq\>A>,
        <math|x\<in\>V<rsub|g>\<subseteq\>A> such that
        <math|\<forall\>y\<in\>V<rsub|f>> <math|f> is <math|n>-times
        differentiable at <math|y> and <math|\<forall\>y\<in\>V<rsub|g>>
        <math|g> is <math|n>-times differentiable at <math|x>. Further we
        have that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f:V<rsub|f>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>>f
        </equation*>

        and\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g:V<rsub|g>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g<around*|(|y|)>=D<rsub|y><rsup|n>g
        </equation*>

        are differentiable at <math|x> with
        <math|D<rsub|x><rsup|<around*|[|n+1|]>>f=D<rsub|x><rsup|><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)>>
        and <math|D<rsub|x><rsup|<around*|[|n+1|]>>g=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)>>.
        Take <math|V=V<rsub|f><big|cap>V<rsub|g>> then if
        <math|y\<in\>V\<subseteq\>A> we have
        <math|\<forall\>y\<in\>V<rsub|1><big|cap>V<rsub|2>> that <math|f>,
        <math|g> are <math|n>-times differentiable at <math|y>. As
        <math|n\<in\>S> it follows that <math|f+g> is <math|n>-times
        differentiable at <math|y> and <rigid|<math|D<rsub|y><rsup|<around*|[|n|]>><around*|(|f+g|)>=D<rsup|<around*|[|n|]>><rsub|y>f+D<rsub|y><rsup|<around*|[|n|]>>g>>.
        This allows us to define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          where >D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>><around*|(|f+g|)>
        </equation*>

        and <math|\<forall\>y\<in\>V\<subseteq\>V<rsub|f>,V<rsub|g>> we have
        that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>|)><around*|(|y|)>>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><rsub|y><around*|(|f+g|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|y><rsup|<around*|[|n|]>>f+D<rsub|y><rsup|<around*|[|n|]>>g>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f<around*|(|y|)>+D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g<around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V><around*|(|y|)>+<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V><around*|(|y|)><rsub|>>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.77.193.1>D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>=<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V>
        </equation>

        As <math|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f>,
        <math|D<rsub|V<rsub|g>><rsup|<around*|[|n|]>>g> are Fréchet
        differentiable at <math|x> and <math|x\<in\>V<rsub|1><big|cap>V<rsub|2>=V>
        it follows from [theorem: <reference|diff differentiability is a
        local property>] that <math|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>>,
        <math|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V>>
        are Fréchet differentiable at <math|x> with\ 

        <\equation*>
          D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><text|
          and >D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V>=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)>
        </equation*>

        Using <math|<around*|[|theorem:<reference|diff derivate operator is
        linear>|]>> <math|><math|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+<around*|(|D<rsup|n><rsub|V<rsub|g>>g|)><rsub|\|V>>
        is Fréchet differentiable at <math|x> with\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsub|x><around*|(|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+<around*|(|D<rsup|n><rsub|V<rsub|g>>g|)><rsub|\|V>|)>>|<cell|=>|<cell|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)>+D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>f|)><eq-number><label|eq
          16.78.193>>>>>
        </eqnarray*>

        Which as <math|D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>\<equallim\><rsub|<text|[eq
        <reference|eq 16.77.193.1>]>><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+<around*|(|D<rsup|n><rsub|V<rsub|g>>g|)><rsub|\|V>>
        proves that <math|D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>>
        is Fréchet differentiable at <math|x>, hence by definition <math|f+g>
        is <math|<around*|(|n+1|)>>-times differentiable at <math|x>. Further
        we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsub|x><rsup|<around*|[|n+1|]>><around*|(|f+g|)>>|<cell|\<equallim\><rsub|def>>|<cell|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x><around*|(|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+<around*|(|D<rsup|n><rsub|V<rsub|g>>g|)><rsub|\|V>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)>+D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x><rsup|<around*|[|n+1|]>>f+D<rsub|x><rsup|<around*|[|n+1|]>>g>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item>We prove this by induction on <math|k>, so define\ 

      <\equation*>
        S=<around*|{|k\<in\>\<bbb-N\>\|<text|If
        ><around*|{|f<rsub|i>\|A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        is a family of >n<text|-times differentiable functions at >x<text|
        then ><big|sum><rsub|i=1><rsup|k>f<rsub|i><text| is >n<text|-times
        differentiable at >x<text| with >D<rsub|x><rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>=<big|sum><rsub|i=1><rsup|k>D<rsub|x><rsup|<around*|[|n|]>>f|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|<around*|{|f<rsub|i>\|A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1|}>>>
        is a family of <math|n>-times differentiable at <math|x> then as
        <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>=f<rsub|1>> and it follows
        that <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>> is <math|n>-times
        differentiable at <math|x>, further\ 

        <\equation*>
          D<rsub|z><rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|1>f<rsub|i>|)>=D<rsub|x><rsup|<around*|[|n|]>>f<rsub|1>=<big|sum><rsub|i=1><rsup|1>D<rsub|x><rsup|<around*|[|n|]>>f<rsub|i>
        </equation*>

        So it follows that <math|1\<in\>S>.

        <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>Let
        <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>>
        be a family of <math|n>-times differentiable functions at <math|x>
        then we have as <math|k\<in\>S> that
        <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i><rsup|>> is <math|n>-times
        differentiable at <math|x> with <math|D<rsub|x><rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>=<big|sum><rsub|i=1><rsup|k>D<rsub|x><rsup|<around*|[|n|]>>f<rsub|i>>.
        As also <math|f<rsub|k+1>> is <math|n>-times differentiable at
        <math|x> it follows from (1) that
        <math|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>=<around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>+f<rsub|k+1>>
        is <math|n>-times differentiable at <math|x> with\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsub|x><rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>|)>>|<cell|=>|<cell|D<rsub|x><rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>+f<rsub|k+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|D<rsub|x><rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>+D<rsub|x><rsup|<around*|[|n|]>>f<rsub|k+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i=1><rsup|k>D<rsub|x><rsup|<around*|[|n|]>>f<rsub|i>+D<rsub|x><rsup|<around*|[|n|]>>f<rsub|k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|k+1>D<rsub|x><rsup|<around*|[|n|]>>f<rsub|i>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item>We use induction on <math|n>, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f:A\<rightarrow\>Y<text| is
        >n<text|-times differentiable at <math|x\<in\>A<text| then
        >\<alpha\>\<cdot\>f<text| is >n<text|-times differentiable at
        >x<text| and >D<rsub|x><rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|n|]>>f>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f:A\<rightarrow\>Y> is <math|1>-times
        differentiable at <math|x> then <math|f> is Fréchet differentiable at
        <math|x> and <math|D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f>.
        Using [theorem: <reference|diff derivate operator is linear>] it
        follows that <math|\<alpha\>\<cdot\>f> is Fréchet differentiable at
        <math|x> and <math|D<rsub|x><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|x>f>.
        Hence <math|\<alpha\>\<cdot\>f> is <math|1>-times differentiable and

        <\equation*>
          D<rsub|x><rsup|<around*|[|1|]>><around*|(|\<alpha\>\<cdot\>f|)>=D<rsub|x><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|x>f=\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|1|]>>f
        </equation*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S=n+1\<in\>S>>If <math|f:A\<rightarrow\>Y> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> then, as
        <math|1\<less\>n+1>, there exist a open set <math|V> with
        <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
        <math|f> is <math|n>-times differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|n><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>>f
        </equation*>

        is Fréchet differentiable at <math|x>, further
        <math|D<rsub|x><rsup|<around*|[|n+1|]>>f> is defined to be
        <math|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>>. As
        <math|n\<in\>S> it follows that <math|\<forall\>y\<in\>V>
        <math|\<alpha\>\<cdot\>f> is <math|n>-times differentiable at
        <math|y> and\ 

        <\equation>
          <label|eq 16.79.193>D<rsub|y><rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|y><rsup|<around*|[|n|]>>f
        </equation>

        So if we define

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V><around*|(|\<alpha\>\<cdot\>f|)>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>><rsub|V><around*|(|\<alpha\>\<cdot\>f|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><rsup|>
        </equation*>

        we have <math|\<forall\>y\<in\>V> that
        <math|D<rsup|n><rsub|V><around*|(|\<alpha\>\<cdot\>f|)><around*|(|y|)>\<equallim\>D<rsup|<around*|[|n|]>><rsub|y><around*|(|\<alpha\>\<cdot\>f|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.79.193>]>>\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>><rsub|y>f=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>>
        proving

        <\equation>
          <label|eq 16.83.199>D<rsup|<around*|[|n|]>><rsub|V><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|V><rsup|<around*|[|n|]>>f
        </equation>

        As <math|D<rsup|<around*|[|n|]>><rsub|V>f> is Fréchet differentiable
        at <math|x> it follows form [theorem: <reference|diff derivate
        operator is linear>] that <math|\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>><rsub|V>f>
        is Fréchet differentiable at <math|x> with
        <math|D<rsub|x><around*|(|\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>><rsub|V>f|)>=\<alpha\>\<cdot\>D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>=\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|n+1|]>>f>.
        Hence by [eq: <reference|eq 16.83.199>]
        <math|D<rsup|<around*|[|n|]>><rsub|V><around*|(|\<alpha\>\<cdot\>f|)>>
        is Fréchet differentiable at <math|x> with

        <\equation*>
          D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V><around*|(|\<alpha\>\<cdot\>f|)>|)>=\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|n+1|]>>f
        </equation*>

        proving that <math|\<alpha\>\<cdot\>f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> with

        <\equation*>
          D<rsub|x><rsup|<around*|[|n+1|]>><around*|(|\<alpha\>\<cdot\>f|)>\<equallim\><rsub|def>D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>|)>=\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|n+1|]>>f
        </equation*>

        So we conclude that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item>If <math|f:A\<rightarrow\>Y> and <math|g:A\<rightarrow\>Y> are
      <math|C<rsup|n>> at <math|x\<in\>A> then we have two cases to consider
      for <math|n>:

      <\description>
        <item*|<math|n=0>>Then <math|f,g> continuous at <math|x>, and
        applying [theorem: <reference|continuity of sum of continuous
        functions>] proves that <math|f+g> is continuous at <math|x>. Hence
        <math|f+g> is <math|C<rsup|0>> at <math|x>.

        <item*|<math|1\<less\>n>>Then there exists open sets
        <math|V<rsub|f>>, <math|V<rsub|g>> with
        <math|x\<in\>V<rsub|f>,V<rsub|g>\<subseteq\>A> such that
        <math|\<forall\>y\<in\>V<rsub|y>> <math|f> is <math|n>-times
        differentiable at <math|y>, <math|\<forall\>y\<in\>V<rsub|g>>
        <math|g> is <math|n>-times differentiable at <math|y> and

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f:V<rsub|f>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|f>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>>f
        </equation*>

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g:V<rsub|g>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>>g
        </equation*>

        are continuous at <math|x>. Take <math|V=V<rsub|f><big|cap>V<rsub|g>>
        then <math|\<forall\>y\<in\>V\<subseteq\>V<rsub|f>,V<rsub|g>> we have
        by (1) that <math|\<forall\>y\<in\>V> <math|f+g> is <math|n>-times
        differentiable at <math|y> and that
        <math|D<rsub|y><rsup|<around*|[|n|]>><around*|(|f+g|)>=D<rsub|y><rsup|<around*|[|n|]>>f+D<rsub|y><rsup|<around*|[|n|]>>g>.
        So if we define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>><around*|(|f+g|)>
        </equation*>

        it follows that <math|\<forall\>y\<in\>V>

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)><around*|(|y|)>>|<cell|=>|<cell|D<rsub|y><rsup|<around*|[|n|]>><around*|(|f+g|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|y><rsup|<around*|[|n|]>>f+D<rsub|y><rsup|<around*|[|n|]>>g>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f<around*|(|y|)>+D<rsup|<around*|[|n|]><rsub|>><rsub|V<rsub|g>>g<around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>V>>|<cell|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V><around*|(|y|)>+<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V>|)><around*|(|y|)>>>>>
        </eqnarray*>

        so that

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>=<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V>
        </equation*>

        By [theorems: <reference|continuity of sum of continuous functions>,
        <reference|continuity and subspace topology (6)>]
        <math|<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|f>>f|)><rsub|\|V>+<around*|(|D<rsup|<around*|[|n|]>><rsub|V<rsub|g>>g|)><rsub|\|V>>
        is continuous at <math|x>, so that
        <math|D<rsup|<around*|[|n|]>><rsub|V><around*|(|f+g|)>> is continuous
        at <math|x>. Hence <math|f+g> is <math|C<rsup|n>> at <math|x>.
      </description>

      <item>We use induction to prove this. So let\ 

      <\equation*>
        S=<around*|{|k\<in\>\<bbb-N\>\|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        are function that are <math|C<rsup|n>> at <math|x> then
        ><big|sum><rsub|i=1><rsup|k>f<rsub|i><text| is >C<rsup|n><text| at
        >x|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>As <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i>=f<rsub|1>>
        and <math|f<rsub|1>> is <math|C<rsup|n>> at <math|x> it follows that
        <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>> is <math|C<rsup|n>> at
        <math|x>.

        <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>Let
        <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
        be a family of functions that are <math|C<rsup|n> at x>. As
        <math|k\<in\>S> <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i>> is
        <math|C<rsup|n>> at <math|x> and clearly <math|f<rsub|k+1>> is
        <math|C<rsup|n>> at <math|x> so by (4)
        <math|f<rsub|k+1>+<big|sum><rsub|i=1><rsup|k>f<rsub|i>> is
        <math|C<rsup|n>> at <math|x>. Finally as
        <math|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>=f<rsub|k+1>+<big|sum><rsub|i=1><rsup|k>f<rsub|i>>
        it follows that <math|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>> is
        <math|C<rsup|n>> at <math|x> which prove that <math|k+1\<in\>S>.
      </description>

      <item>As <math|f> is <math|C<rsup|n>> at <math|x> there exist a open
      <math|V> with <math|x\<in\>V\<subseteq\>A> such that
      <math|\<forall\>y\<in\>V> <math|f> is <math|n>-times differentiable at
      <math|y> and that the function\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>>f
      </equation*>

      is continuous at <math|x>. Using (3) we have that
      <math|\<forall\>y\<in\>V> <math|<around*|(|\<alpha\>\<cdot\>f|)>> is
      <math|n>-times differentiable at <math|y> and
      <math|D<rsup|<around*|[|n|]>><rsub|y><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>><rsub|y>f>.
      Hence if we define\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|V><around*|(|\<alpha\>\<cdot\>f|)>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|n|]>><rsub|V><around*|(|\<alpha\>\<cdot\>f|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>
      </equation*>

      then \ 

      <\equation*>
        D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f
      </equation*>

      Hence, as by [theorem: <reference|continuity of sum of continuous
      functions>] <math|\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f> is
      continuous at <math|x>, it follows that
      <math|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>> is
      continuous, proving that <math|\<alpha\>\<cdot\>f> is <math|C<rsup|n>>
      at <math|x>.
    </enumerate>
  </proof>

  We have a similar result for derivatives

  <\corollary>
    <label|diff higher order derivate is linear>Let <math|n\<in\>\<bbb-N\>>
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> the normed
    space of real (complex) numbers using the norm <math|<around*|\|||\|>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\>> and <math|x\<in\>A> where
    <math|x> is a limit point of <math|A> then we have:

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>Y,g:A\<rightarrow\>Y> have a
      <math|n>-the derivative at <math|x> then <math|f+g> has a <math|n>-the
      derivative at <math|x> and

      <\equation*>
        <around*|(|f+g|)><rsup|<around*|(|n|)>><rsub|x>=f<rsup|<around*|(|n|)>><rsub|x>+g<rsup|<around*|(|n|)>><rsub|x>
      </equation*>

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>> and <math|f:A\<rightarrow\>Y>
      has a <math|n>-the derivative at <math|x> then
      <math|\<alpha\>\<cdot\>f> has a <math|n>-the derivative <math|x> and
      <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|<around*|(|n|)>><rsub|x>=\<alpha\>\<cdot\>f<rsup|<around*|(|n|)>><rsub|x>>.
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>Y,g:A\<rightarrow\>Y> have a
      <math|n>-the derivative at <math|x> then by [theorem: <reference|diff
      higher order derivate and differential>] <math|f,g> are <math|n>-times
      differentiable at <math|x> and <math|f<rsup|<around*|(|n|)>><rsub|x>=D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>1|\<wide-underbrace\>><rsub|n>|)>>,
      <math|g<rsup|<around*|(|n|)>><rsub|x>=D<rsup|<around*|[|n|]>>g<around*|(|x|)><around*|(|<wide*|1:\<ldots\>1|\<wide-underbrace\>><rsub|n>|)>>.
      Using [theorem: <reference|diff higher order differential is linear>]
      <math|f+g> is <math|n>-times differentiable at <math|x> with
      <math|D<rsub|x><rsup|<around*|[|n|]>><around*|(|f+g|)>=D<rsub|x><rsup|<around*|[|n|]>>f+D<rsub|x><rsup|<around*|[|n|]>>g>.
      Hence by [theorem: <reference|diff higher order derivate and
      differential>] <math|f+g> has a <math|n>-the derivative at <math|x>
      with\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f+g|)><rsup|<around*|(|n|)>><rsub|x>>|<cell|=>|<cell|D<rsub|x><rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsub|x><rsup|<around*|[|n|]>>f+D<rsub|x><rsup|<around*|[|n|]>>g|)><around*|(|1:\<ldots\>:1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.54.187>]>>>|<cell|D<rsub|x><rsup|<around*|[|n|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>+D<rsub|x><rsup|<around*|[|n|]>>g<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|[|n|]>><rsub|x>+g<rsup|<around*|[|n|]>><rsub|x>>>>>
      </eqnarray*>

      <item>As <math|f> has a <math|n>-the derivative at <math|x> it follows
      by [theorem: <reference|diff higher order derivate and differential>]
      that <math|f> is <math|n>-times differentiable at <math|x> and that
      <math|f<rsup|<around*|(|n|)>><rsub|x>=D<rsub|x><rsup|<around*|[|n|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>.
      Using [theorem: <reference|diff higher order differential is linear>]
      it follows that <math|\<alpha\>\<cdot\>f> is <math|n>-times
      differentiable at <math|x> with <math|D<rsub|x><rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|n|]>>f>.
      Hence using [theorem: <reference|diff higher order derivate and
      differential>] again <math|\<alpha\>\<cdot\>f> has a <math|n>-the
      derivative at <math|x> with\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|<around*|(|n|)>><rsub|x>>|<cell|=>|<cell|D<rsub|x><rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|n|]>>f|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.54.187>]>>>|<cell|\<alpha\>\<cdot\>D<rsub|x><rsup|<around*|[|n|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<rsup|<around*|[|n|]>><rsub|x>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <subsection|Examples of <math|\<infty\>>-times differentiable functions>

  We show now some example of <math|\<infty\>>-times differentiable functions
  or equivalent functions that are <math|C<rsup|\<infty\>>> [see theorem:
  <reference|diff C-infinity condition>].\ 

  <\example>
    <label|diff constant function is infinitely times differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X> and <math|y\<in\>Y>
    then the constant function <math|C<rsub|y>:U\<rightarrow\>Y> defined by
    <math|C<rsub|y><around*|(|x|)>=y> is <math|\<infty\>>-times
    differentiable for every <math|x\<in\>U> [hence by [theorem:
    <reference|diff C-infinity condition>] <math|C<rsub|y>> is
    <math|C<rsup|\<infty\>>> on <math|A>]. \ Furthermore
    <math|\<forall\>n\<in\>\<bbb-N\>>, <math|\<forall\>x\<in\>A> we have that
    <math|D<rsub|x><rsup|<around*|[|n|]>>C<rsub|y>=0<rsub|n>> where
    <math|0<rsub|n>\<in\>L<rsub|n><around*|(|X;Y|)>> is the neutral element
    in <math|L<rsub|n><around*|(|X;Y|)>>.\ 
  </example>

  <\proof>
    We prove this by induction on <math|n>, so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|C<rsub|y>:U\<rightarrow\>Y<text| is
      >n<text|-times differentiable with >\<forall\>x\<in\>U<text|
      >D<rsub|x><rsup|<around*|[|n|]>>C<rsub|y>=0<rsub|n>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Using [example: <reference|diff constant
      function is differentiable>] <math|C<rsub|y>> if Fréchet differentiable
      for every <math|x\<in\>U> with <math|D<rsub|x>C<rsub|y>=0<rsub|1>>,
      hence by definition <math|C<rsub|y>> is <math|1>-times differentiable
      at <math|x> with <math|D<rsup|<around*|[|1|]>><rsub|x>C<rsub|y>=0<rsub|1>>
      which proves that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> it
      follows that <math|\<forall\>x\<in\>U> <math|C<rsub|y>> is
      <math|n>-times differentiable with

      <\equation>
        <label|eq 16.81.193>D<rsub|x><rsup|<around*|[|n|]>>C<rsub|y>=0<rsub|1>\<in\>L<rsub|n><around*|(|X;Y|)>.
      </equation>

      Allowing us to define

      <\equation*>
        D<rsup|<around*|[|n|]>>C<rsub|y>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|n|]>>C<rsub|y><around*|(|x|)>=D<rsub|x><rsup|<around*|[|n|]>>C<rsub|y>=0<rsub|n>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
      <math|h\<in\>U<rsub|x>> with <math|<around*|\||h|\|>\<less\>1> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|<around*|[|n|]>>C<rsub|y>|)><around*|(|x+h|)>-<around*|(|D<rsup|<around*|[|n|]>>C<rsub|n>|)><around*|(|x|)>-0<rsub|n+1><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.81.193>]>>>|<cell|<around*|\<\|\|\>|0<rsub|n>-0<rsub|n>-0<rsub|n+1><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|0<rsub|n>-0<rsub|n>-0<rsub|n>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|0<rsub|n>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;y|)>>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>>>>>
      </eqnarray*>

      proving that <math|D<rsup|<around*|[|n|]>>C<rsub|y>> is Fréchet
      differentiable at <math|x> with

      <\equation*>
        D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>C<rsub|y>|)>=<around*|(|0<rsub|n+1>|)><rsub|\|S<rsub|U><around*|(|x|)>><below|=|<text|U
        is open and ><around*|[|theorem:<text|<reference|diff
        SA(a)>>|]>>0<rsub|n+1>
      </equation*>

      Hence <math|f> is <math|<around*|(|n+1|)>>-times differentiable at
      <math|x> with <math|D<rsub|x><rsup|<around*|[|n+1|]>>C<rsub|y>=0<rsub|n+1>>.
    </description>
  </proof>

  <\example>
    <label|diff linear mapping is infinite times differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|L\<in\>L<around*|(|X,Y|)>> then we have:

    <\enumerate>
      <item><math|L> is <math|\<infty\>>-times differentiable on <math|X>
      [hence by [theorem: <reference|diff C-infinity condition>] <math|L> is
      <math|C<rsup|\<infty\>>> on <math|X>]

      <item><math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|\<forall\>x\<in\>X> that\ 

      <\equation*>
        D<rsub|x><rsup|<around*|[|n|]>>L=<choice|<tformat|<table|<row|<cell|L<text|
        if >n=1>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
      </equation*>
    </enumerate>
  </example>

  <\proof>
    For <math|n\<in\>\<bbb-N\>> we have either:\ 

    <\description>
      <item*|<math|n=1>>Then by [example: <reference|diff linear mappings are
      differentiable>] we have that <math|L> is Fréchet differentiable at
      <math|x\<in\>X> with <math|D<rsub|x>f=L>. So by definition <math|L> is
      <math|1>-times differentiable at <math|x> and
      <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=L>.

      <item*|<math|1\<less\>n>>We proceed by induction, so let

      <\equation*>
        S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|L<text| is
        n-times differentiable at >x\<in\>X<text| with
        \ >D<rsub|x><rsup|<around*|[|n|]>>L=0<rsub|n>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|2\<in\>S>>As <math|L> is <math|1>-times differentiable
        with <math|D<rsup|<around*|[|1|]>>L<around*|(|x|)>=L> for every
        <math|x\<in\>X> it follows that for\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>L:X\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|1|]>>L<around*|(|x|)>=D<rsub|x><rsup|<around*|[|1|]>>L=D<rsub|x>L=L
        </equation*>

        we have <math|D<rsup|<around*|[|1|]>>L=C<rsub|L>>. Hence using
        [example: <reference|diff constant function is infinitely times
        differentiable>] it follows that <math|D<rsup|<around*|[|1|]>>L> is
        <math|1>-times differentiable (hence Fréchet differentiable) at
        <math|x> where <math|D<rsub|x><around*|(|D<rsup|<around*|[|1|]>>L|)>=D<rsub|x><rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>L|)>>
        is the neutral element in <math|L<rsub|1><around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>=L<rsub|2><around*|(|X;Y|)>>,
        or in other words <math|D<rsub|x><around*|(|D<rsup|<around*|[|1|]>>L|)>=0<rsub|2>>.
        So <math|L> is <math|2>-times differentiable at <math|x> with
        <math|D<rsup|<around*|[|2|]>>L<around*|(|x|)>=0<rsub|2>> proving that
        <math|2\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> it
        follows that <math|\<forall\>x\<in\>X> <math|L> is <math|n>-times
        differentiable at <math|x> and that
        <math|D<rsub|x><rsup|<around*|[|n|]>>L=0<rsub|n>>. Hence if we define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>L:X\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>>L<around*|(|x|)>=D<rsub|x><rsup|<around*|[|n|]>>L=0<rsub|n>
        </equation*>

        it follows that <math|D<rsup|<around*|[|n|]>>L=C<rsub|0<rsub|n>>>.
        Using [example: <reference|diff constant function is infinitely times
        differentiable>] it follows then that <math|\<forall\>x\<in\>X>
        <math|D<rsup|<around*|[|n|]>>L> is <math|1>-times differentiable
        (hence Fréchet differentiable) at <math|x> and that
        <math|<rigid|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>L|)>=D<rsub|x><rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>L|)>>>
        is the neutral element of <math|L<rsub|1><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>=L<rsub|n+1><around*|(|X;Y|)>>.
        Hence <math|L> is <math|<around*|(|n+1|)>>-times differentiable at
        <math|x> and <math|D<rsub|x><rsup|<around*|[|n+1|]>>L=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>L|)>=0<rsub|n+1>>
        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\example>
    <label|diff identity function is infinite times differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|U> a open set in <math|X> then
    <math|Id<rsub|U>:U\<rightarrow\>X> is <math|C<rsup|\<infty\>>> on
    <math|X>. \ 

    <\proof>
      Using [theorem: <reference|continuity identity function norm>]
      <math|Id<rsub|X>\<in\>L<around*|(|X,X|)>> so that by [theorem:
      <reference|diff linear mapping is infinite times differentiable>]
      <math|Id<rsub|X>> is <math|C<rsup|\<infty\>>> on <math|X>. Finally from
      [theorem: <reference|diff restriction of a function of class C^n>] it
      follows that <math|Id<rsub|U>> is <math|C<rsup|\<infty\>>> on <math|X>.
    </proof>
  </example>

  <\example>
    <label|diff f(t)=a.x+y is infinite differentiable>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real (complex) numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space over <math|\<bbb-K\>>, <math|U> a open set in
    <math|\<bbb-K\>>, <math|x,y\<in\>X> then for\ 

    <\equation*>
      \<varphi\>:U\<rightarrow\>X<text| where
      >\<varphi\><around*|(|t|)>=t\<cdot\>x+y
    </equation*>

    we have that <math|\<varphi\>> is <math|C<rsup|\<infty\>>> on <math|U>
    and <math|\<forall\>t\<in\>U> we have that
    <math|D<rsup|<around*|[|1|]>><rsub|t>f=L> where <math|L:U\<rightarrow\>X>
    is defined by <math|L<around*|(|r|)>=r\<cdot\>x>. So by [theorem:
    <reference|diff higher order derivate and differential>] we have that
    <math|\<varphi\>> has a derivative for every <math|t\<in\>U> with
    <math|\<varphi\><rprime|'><rsub|t>=D<rsup|<around*|[|1|]>><rsub|t><around*|(|1|)>=L<around*|(|1|)>=x>.
  </example>

  <\proof>
    Define <math|L:\<bbb-K\>\<rightarrow\>X> by
    <math|L<around*|(|r|)>=r\<cdot\>x> then by [example:
    <reference|continuity norm L(x)=a.x>] it follows that
    <math|L\<in\>L<around*|(|\<bbb-K\>,X|)>>. Let <math|t\<in\>U> then given
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have for
    <math|h\<in\>U<rsub|x>> with <math|<around*|\||h|\|>\<less\>1> that\ 

    <\equation*>
      <around*|\<\|\|\>|\<varphi\><around*|(|t+h|)>-\<varphi\><around*|(|t|)>-L<around*|(|h|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|t+h|)>\<cdot\>x+y-<around*|(|t\<cdot\>x+y|)>-h\<cdot\>x|\<\|\|\>>=<around*|\<\|\|\>|h\<cdot\>x-h\<cdot\>x|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
    </equation*>

    proving that <math|\<varphi\>> is Fréchet differentiable at <math|t> with
    <math|D<rsub|t>\<varphi\>=L<rsub|\|S<rsub|U><around*|(|t|)>><below|=|<text|U
    is open and ><around*|[|theorem:<text|<reference|diff SA(a)>>|]>>L>.
    Hence <math|\<varphi\>> is <math|1>-times differentiable on <math|U> with
    <math|D<rsup|<around*|[|1|]>><rsub|1>\<varphi\>=L>. So if we define\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>\<varphi\>:U\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
      by >D<rsup|<around*|[|1|]>>\<varphi\><around*|(|t|)>=D<rsup|<around*|[|1|]>><rsub|t>\<varphi\>=L
    </equation*>

    then <math|D<rsup|<around*|[|1|]>>\<varphi\>=C<rsub|L>> a constant
    function. As a constant function is continuous it follows that
    <math|\<varphi\>> is <math|C<rsup|1>> on <math|U>. Further as a constant
    function is of <math|C<rsup|\<infty\>>> on <math|U> [see example:
    <reference|diff constant function is infinitely times differentiable>] if
    follows that <math|D<rsup|1>\<varphi\>> is \ <math|C<rsup|\<infty\>>> on
    <math|U> hence by [theorem: <reference|diff f is of class C^n if D^1f
    u=is of class C^n-1 (1)>] it follows that <math|\<varphi\>> is
    <math|C<rsup|\<infty\>>> on <math|U>.
  </proof>

  <\example>
    <label|diff unprojection is infinite times differentiable>Let
    <math|k\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|i\<in\><around*|{|1,\<ldots\>,k|}>>,
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>>
    then

    <\equation*>
      I<rsup|<around*|[|i,x|]>>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j><text|
      defined by >I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)><text|
      [see definition: <reference|diff unprojection>]>
    </equation*>

    is <math|\<infty\>>-times differentiable at <math|t\<in\>X<rsub|i>>
    [hence <math|C<rsup|\<infty\>>> at <math|t>]. \ Further
    <math|\<forall\>n\<in\>\<bbb-N\>>

    <\equation*>
      D<rsub|x><rsup|<around*|[|n|]>>I<rsup|<around*|[|i,x|]>><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|I<rsup|<around*|[|i,0|]>><text|
      if n=1>>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
    </equation*>
  </example>

  <\proof>
    Let <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>>
    and <math|i\<in\><around*|{|1,\<ldots\>,k|}>>. If <math|t\<in\>X<rsub|i>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|I<rsup|<around*|[|i,0|]>>+C<rsub|<around*|(|x<rsub|1>,\<ldots\><wide*|0|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>><rsub|>|)><around*|(|t|)>>|<cell|=>|<cell|I<rsup|<around*|[|i,0|]>><around*|(|t|)>+C<rsub|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>><rsub|><around*|(|t|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0,\<ldots\>,<wide*|t|\<wide-underbrace\>><rsub|i>,\<ldots\>,0<rsub|i>|)>+<around*|(|x<rsub|1>,\<ldots\><wide*|0|\<wide-underbrace\>>\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|I<rsup|<around*|[|i,x|]>><around*|(|t|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      I<rsup|<around*|[|i,x|]>>=I<rsup|<around*|[|i,0|]>>+C<rsub|<around*|(|x<rsub|1>,\<ldots\><wide*|0|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>><rsub|>
    </equation*>

    By [lemma: <reference|lemma 16.24.178>]
    <math|I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>|)>>
    so that by [examples: <reference|diff linear mapping is infinite times
    differentiable> and <reference|diff constant function is infinitely times
    differentiable>] <math|I<rsup|<around*|[|i,0|]>>> and
    <math|C<rsub|<around*|(|x<rsub|1>,\<ldots\><wide*|0|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>><rsub|>>
    are <math|\<infty\>>-times differentiable at <math|t\<in\>X<rsub|i>>.
    Hence using [theorem: <reference|diff higher order differential is
    linear>] it follows that

    <\equation*>
      I<rsup|<around*|[|i,x|]>><text| is >\<infty\><text|-times
      differentiable at >t<text|>
    </equation*>

    and <math|\<forall\>n\<in\>\<bbb-N\>> we have

    <\equation>
      <label|eq 16.82.193>D<rsub|t><rsup|<around*|[|n|]>>I<rsup|<around*|[|i,x|]>>=D<rsub|t><rsup|<around*|[|n|]>>I<rsup|<around*|[|i,0|]>>+D<rsub|t><rsup|<around*|[|n|]>>C<rsub|<around*|(|x<rsub|1>,\<ldots\><wide*|0|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>><rsub|>\<equallim\><rsub|<text|[example:
      <reference|diff constant function is infinitely times
      differentiable>]>>D<rsub|t><rsup|<around*|[|n|]>>I<rsup|<around*|[|i,0|]>>
    </equation>

    If <math|n\<in\>\<bbb-N\>> then we have either:\ 

    <\description>
      <item*|<math|n=1>>Then by [example: <reference|diff linear mapping is
      infinite times differentiable>] and
      <math|I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>|)>>
      <math|D<rsup|<around*|[|1|]>>I<rsup|<around*|[|i,0|]>><around*|(|t|)>=I<rsup|<around*|[|i,0|]>>>

      <item*|<math|1\<less\>n>>Then by [example: <reference|diff linear
      mapping is infinite times differentiable>] and
      <math|I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>|)>>
      <math|D<rsup|<around*|[|1|]>>I<rsup|<around*|[|i,0|]>><around*|(|t|)>=0<rsub|n>>
    </description>
  </proof>

  <\example>
    <label|diff translation is infinite differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|x\<in\>X> then for the translation function
    <math|\<tau\><rsub|x>> defined by\ 

    <\equation*>
      \<tau\><rsub|x>:X\<rightarrow\>X<text| where
      >\<tau\><rsub|x><around*|(|y|)>=x+y
    </equation*>

    we have that:

    <\enumerate>
      <item><math|\<tau\><rsub|x>> is <math|\<infty\>>-times differentiable
      at <math|y\<in\>Y> [hence <math|C<rsup|\<infty\>>> at <math|y>]

      <item><math|\<forall\>n\<in\>\<bbb-N\>>, <math|\<forall\>y\<in\>X> we
      have\ 

      <\equation*>
        D<rsub|y><rsup|<around*|[|n|]>>\<tau\><rsub|x>=<choice|<tformat|<table|<row|<cell|Id<rsub|X><text|
        if >n=1>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
      </equation*>
    </enumerate>
  </example>

  <\proof>
    Let <math|x\<in\>X> then <math|\<forall\>y\<in\>X> we have
    \ <math|<around*|(|Id<rsub|X>+C<rsub|x>|)><around*|(|y|)>=Id<rsub|X><around*|(|y|)>+C<rsub|x><around*|(|y|)>=y+x=\<tau\><rsub|x><around*|(|y|)>>
    proving that\ 

    <\equation*>
      \<tau\><rsub|x>=Id<rsub|X>+C<rsub|x>
    </equation*>

    As <math|Id<rsub|X>\<in\>L<around*|(|X,X|)>> [see example:
    <reference|continuity identity map is linear and continuous>] we have by
    [example: <reference|diff linear mapping is infinite times
    differentiable>] that <math|Id<rsub|X>> is <math|\<infty\>>-times
    differentiable, further by [example: <reference|diff constant function is
    infinitely times differentiable>] we have that <math|C<rsub|x>> is
    <math|\<infty\>>-times differentiable. Using [theorem: <reference|diff
    higher order differential is linear>] it follows that
    <math|\<tau\><rsub|x>> is <math|\<infty\>>-times differentiable and\ 

    <\equation*>
      D<rsub|y><rsup|<around*|[|n|]>>\<tau\><rsub|x>=D<rsub|y><rsup|<around*|[|n|]>>Id<rsub|X>+D<rsub|y><rsup|<around*|[|n|]>>C<rsub|x>\<equallim\><rsub|<text|[example:
      <reference|diff constant function is infinitely times
      differentiable>]>>D<rsub|y><rsup|<around*|[|n|]>>Id<rsub|X>+0<rsub|n>=D<rsub|y><rsup|<around*|[|n|]>>Id<rsub|X>
    </equation*>

    Hence using [example: <reference|diff linear mapping is infinite times
    differentiable>] it follows that\ 

    <\equation*>
      D<rsub|y><rsup|<around*|[|n|]>>\<tau\><rsub|x>=<choice|<tformat|<table|<row|<cell|Id<rsub|X><text|
      if >n=1>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
    </equation*>
  </proof>

  <\example>
    <label|diff projection functon is infinite times differentiable>Let
    <math|k\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    be a finite family of normed spaces, <math|i\<in\><around*|{|1,\<ldots\>,k|}>>
    then the projection map <math|\<pi\><rsub|i>:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>\<rightarrow\>X<rsub|i>>
    is <math|\<infty\>>-times differentiable at
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>>
    [hence \ <math|C<rsup|\<infty\>>> at <math|x>] and
    <math|\<forall\>n\<in\>\<bbb-N\>> we have

    <\equation*>
      D<rsub|t><rsup|<around*|[|n|]>>\<pi\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<pi\><rsub|i><text|
      if >n=1>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
    </equation*>
  </example>

  <\proof>
    As by [theorem: <reference|continuity norm of projection operator>]
    <math|\<pi\><rsub|i>\<in\>L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>,X<rsub|i>|)>>
    the proof follows from [example: <reference|diff linear mapping is
    infinite times differentiable>].
  </proof>

  <\theorem>
    <label|diff bilinear mappings are infinite times differentiable>Let
    <math|<around*|\<langle\>|X<rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>><space|1em>and
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    normed spaces, <math|<around*|\<langle\>|X<rsub|1>\<cdot\>X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space based on <math|X<rsub|1>\<cdot\>X<rsub|2>> using the
    maximum norm and <math|L\<in\>L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>> be a
    bi-linear mapping then <math|\<forall\>x=<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
    we have

    <\enumerate>
      <item><math|L> is <math|\<infty\>>-times differentiable at <math|x>
      [hence <math|L> is <math|C<rsup|\<infty\>>> at <math|x>]

      <item><math|D<rsub|x><rsup|<around*|[|1|]>>L\<equallim\><rsub|x=<around*|(|x<rsub|1>,x<rsub|2>|)>>D<rsup|<around*|[|1|]>><rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>>L=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
      where\ 

      <\equation*>
        L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>Y<text|
        is defined by ><around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|r,s|)>=L<rsub|1><around*|(|x<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>|)>
      </equation*>

      <item><math|D<rsup|<around*|[|2|]>><rsub|x>L\<equallim\><rsub|x=<around*|(|x<rsub|1>,x<rsub|2>|)>>D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|2|]>>L=D<rsup|<around*|[|1|]>>L>
      where\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>L:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>L<rsub|2><around*|(|X<rsub|1>\<cdot\>X<rsub|2>,L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)>|)><text|
        is defined by ><around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|1|]>>L
      </equation*>

      <item>If <math|n\<in\><around*|{|3,\<ldots\>.\<infty\>|}>> then
      <math|D<rsup|<around*|[|n|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=0<rsub|n>>
    </enumerate>

    <\note>
      As <math|L> is <math|\<infty\>>-times differentiable at <math|x> and
      <math|C<rsup|\<infty\>>> at <math|x> for every <math|x> in
      <math|X<rsub|1>\<cdot\>X<rsub|2>> it follows that <math|L> is
      <math|\<infty\>>-times differentiable on
      <math|X<rsub|1>\<cdot\>X<rsub|2>> and <math|C<rsup|\<infty\>>> on
      <math|X<rsub|1>\<cdot\>X<rsub|2>>.
    </note>
  </theorem>

  <\proof>
    For <math|n\<in\>\<bbb-N\>> we have either:\ 

    <\description>
      <item*|<math|n=1>>Using [lemma: <reference|lemma 16.23.181>] <math|L>
      is Fréchet differentiable at <math|<around*|(|x<rsub|1>,x<rsub|2>|)>>
      with

      <\equation*>
        D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>>
        L=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
      </equation*>

      hence <math|L> is <math|1>-times differentiable and
      <math|D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|1|]>>L=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>

      <item*|<math|n=2>>Define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>L:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>,Y|)><text|
        by >D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|1|]>>L=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
      </equation*>

      If <math|<around*|(|x<rsub|1>,x<rsub|2>|)>,<around*|(|y<rsub|1>,y<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>,,
      <math|\<alpha\>\<in\>\<bbb-K\>> then for every
      <math|<around*|(|r,s|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|<around*|[|1|]>>L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>+\<beta\>\<cdot\><around*|(|y<rsub|1>,y<rsub|2>|)>|)><around*|(|r,s|)>>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>+\<beta\>\<cdot\>y<rsub|1>,x<rsub|2>+\<beta\>\<cdot\>y<rsub|2>|)><around*|(|r,s|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|x<rsub|1>+\<beta\>\<cdot\>y<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>+\<beta\>\<cdot\>y<rsub|2>|)>|)><around*|(|r,s|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>+\<beta\>\<cdot\>y<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>+\<beta\>\<cdot\>y<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>,s|)>+\<beta\>\<cdot\>L<around*|(|y<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>|)>+\<beta\>\<cdot\>L<around*|(|r,y<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|x<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>|)>|)>+\<beta\>\<cdot\><around*|(|L<around*|(|y<rsub|1>,s|)>+L<around*|(|r,y<rsub|2>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)><around*|(|r,s|)>+\<beta\>\<cdot\>D<rsup|<around*|[|1|]>>L<around*|(|y<rsub|1>,y<rsub|2>|)><around*|(|r,s|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>+D<rsup|<around*|[|1|]>>L<around*|(|y<rsub|1>,Y<rsub|2>|)>|)><around*|(|r,s|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>+\<beta\>\<cdot\><around*|(|y<rsub|1>,y<rsub|2>|)>|)>=D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>+D<rsup|<around*|[|1|]>>L<around*|(|y<rsub|1>,Y<rsub|2>|)>
      </equation*>

      Hence we have that\ 

      <\equation>
        <label|eq 16.83>D<rsup|<around*|[|1|]>>L<text| is linear>
      </equation>

      Further we have that <math|\<forall\><around*|(|x<rsub|1>,x<rsub|2>|)>,<around*|(|r,s|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)><around*|(|r,s|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,s|)>|\<\|\|\>>+<around*|\<\|\|\>|L<around*|(|r,x<rsub|2>|)>|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|[theorem:
        <reference|continuity multilinear mapping
        (1)>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|s|\<\|\|\>><rsub|2>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|s|\<\|\|\>><rsub|2>+<around*|\<\|\|\>|r|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>max<around*|(|<around*|\<\|\|\>|r|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|s|\<\|\|\>><rsub|2>|)>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>>\<cdot\>max<around*|(|<around*|\<\|\|\>|r|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|s|\<\|\|\>><rsub|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>\<cdot\>max<around*|(|<around*|\<\|\|\>|r|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|s|\<\|\|\>><rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|max>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|max*<around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>+max*<around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\>2\<cdot\>max<around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|2\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|<around*|(|x<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|max>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|max>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving, as <math|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>,Y|)>>,
      by [definition: <reference|continuity operator norm>] that\ 

      <\equation*>
        <around*|\<\|\|\>|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>,Y|)>>\<leqslant\>2\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|<around*|(|x<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|max>
      </equation*>

      so that by [theorem: <reference|continuity multilinear mapping (1)>] it
      follows that\ 

      <\equation>
        <label|eq 16.84.193>D<rsup|<around*|[|1|]>>L\<in\>L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>,L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>,Y|)>|)>=L<rsub|2><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)>
      </equation>

      Using [example: <reference|diff linear mappings are differentiable>] it
      follows that <math|D<rsup|<around*|[|1|]>>L> is differentiable at
      <math|<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
      with <math|D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><around*|(|D<rsup|<around*|[|1|]>>L|)>=D<rsup|<around*|[|1|]>>L>,
      hence it follows that

      <\equation>
        <label|eq 16.85.193>L<text| is >2<text|-times differentiable at
        ><around*|(|x<rsub|1>,x<rsub|2>|)><text| and
        >D<rsup|<around*|[|2<rsub|>|]>><rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>>L=D<rsup|<around*|[|1|]>>L
      </equation>

      <item*|<math|n\<in\><around*|{|3,\<ldots\>,n|}>>>We use induction on
      <math|n> to proceed, so define<space|1em>

      <\equation*>
        S=<around*|{|n\<in\><around*|{|3,\<ldots\>,\<infty\>|}>\|L<text| is
        >n<text|-times differentiable at ><around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2><text|
        and >D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|n|]>>L=0<rsub|n>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|3\<in\>S>>Define\ 

        <\equation*>
          D<rsup|<around*|[|2|]>>f:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>L<rsub|2><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)><text|
          by >D<rsup|<around*|[|2|]>>f<around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|2|]>>f
        </equation*>

        \ then by [eq: <reference|eq 16.85.193>]
        <math|D<rsup|<around*|[|2|]>>f=C<rsub|D<rsup|<around*|[|1|]>>f>>.
        Hence using [example: <reference|diff constant function is
        differentiable>] it follows that <math|D<rsup|<around*|[|2|]>>f> is
        differentiable at <math|<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
        with <math|D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><around*|(|D<rsup|<around*|[|2|]>>f|)>=0<rsub|3>>.
        So by definition <math|L> is <math|3>-times differentiable at
        <math|<around*|(|x<rsub|1>,x<rsub|2>|)> with
        D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|3|]>>L=0<rsub|3>>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> it
        follows that <math|\<forall\><around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
        <math|L> is <math|n>-times differentiable at <math|x> and that
        <math|D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|n|]>>L<around*|(|x|)>=0<rsub|n>>.
        Hence if we define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>L:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>L<rsub|n><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)><text|
          by ><around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|n|]>>L=0<rsub|n>
        </equation*>

        it follows that <math|D<rsup|<around*|[|n|]>>L=C<rsub|0<rsub|n>>>.
        Using [example: <reference|diff constant function is infinitely times
        differentiable>] it follows then that
        <math|\<forall\><around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
        <math|D<rsup|<around*|[|n|]>>L> is <math|1>-times differentiable
        (hence Fréchet differentiable) at <math|x> and that
        <math|D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><around*|(|D<rsup|<around*|[|n|]>>L|)>=D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>L|)>>
        is the neutral element of <math|<rigid|L<rsub|1><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;L<rsub|n><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)>|)>=L<rsub|n+1><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)>>>.
        Hence <math|L> is <math|<around*|(|n+1|)>>-times differentiable at
        <math|x> and <math|D<rsub|<around*|(|x<rsub|1>,x<rsub|n>|)>><rsup|<around*|[|n+1|]>>L=D<rsub|<around*|(|x<rsub|1>,x<rsub|2>|)>><around*|(|D<rsup|<around*|[|n|]>>L|)>=0<rsub|n+1>>
        proving that \ <math|n+1\<in\>S>.
      </description>
    </description>
  </proof>

  <subsection|The chain rule for higher order derivatives>

  The purpose of this section is to prove that the composition of
  <math|n>-times differentiable functions is again <math|n>-times
  differentiable. As a preparation for this goal we need to prove and state
  some supporting lemma's.

  <\lemma>
    <label|lemma 16.93.193>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|L\<in\>L<around*|(|Y,Z|)>> then if we define

    <\equation*>
      <around*|(|L\<circ\>\<ast\>|)>:L<around*|(|X,Y|)>\<rightarrow\>L<around*|(|X,Z|)><text|
      by ><around*|(|L\<circ\>\<ast\>|)><around*|(|T|)>=L\<circ\>T
    </equation*>
  </lemma>

  we have that\ 

  <\equation*>
    <around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>
  </equation*>

  <\proof>
    First note that if <math|L\<in\>L<around*|(|Y,Z|)>> and
    <math|T\<in\>L<around*|(|X,Y|)>> then by [theorem: <reference|continuity
    composition of continuous linear mapping>]
    <math|L\<circ\>T\<in\>L<around*|(|X,Z|)>> so that
    <math|<around*|(|\<ast\>\<circ\>L|)>> is indeed a function between
    <math|L*<around*|(|X,Y|)>> and <math|L<around*|(|X,Z|)>>. Next we need to
    prove linearity. Let <math|T<rsub|1>,T<rsub|2>\<in\>L<around*|(|X,Y|)>>,
    <math|\<alpha\>\<in\>\<bbb-K\>> then for <math|z\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|<around*|\<nobracket\>|L\<circ\>\<ast\>|)><around*|(|T<rsub|1>+\<alpha\>\<cdot\>T<rsub|2>|\<nobracket\>>|)>|)><around*|(|z|)>>|<cell|=>|<cell|<around*|(|L\<circ\><around*|(|T<rsub|1>+\<alpha\>\<cdot\>T<rsub|2>|)>|)><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<around*|(|T<rsub|1>+\<alpha\>\<cdot\>T<rsub|2>|)><around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|T<rsub|1><around*|(|z|)>+\<alpha\>\<cdot\>T<rsub|2><around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|T<rsub|1><around*|(|z|)>|)>+\<alpha\>\<cdot\>L<around*|(|T<rsub|2><around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L\<circ\>T<rsub|1>|)><around*|(|z|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>T<rsub|2>|)><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L\<circ\>T<rsub|1>|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>T<rsub|2>|)>|)><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)><around*|(|T<rsub|1>|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>\<ast\>|)><around*|(|T<rsub|2>|)>|)><around*|(|z|)>>>>>
    </eqnarray*>

    proving that <math|><math|<around*|(|L\<circ\>\<ast\>|)><around*|(|T<rsub|1>+\<alpha\>\<cdot\>T<rsub|2>|)>=<around*|(|L\<circ\>\<ast\>|)><around*|(|T<rsub|1>|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>\<ast\>|)><around*|(|T<rsub|2>|)>>
    or\ 

    <\equation*>
      <around*|(|L\<circ\>\<ast\>|)>\<in\>Hom<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>
    </equation*>

    As for continuity. Let <math|T\<in\>L<around*|(|X,Y|)>> then as
    <math|L\<in\>L<around*|(|Y,Z|)>> we have by [theorem:
    <reference|continuity composition of continuous linear mapping>] that\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|L\<circ\>\<ast\>|)><around*|(|T|)>|\<\|\|\>><rsub|L<around*|(|X,Z|)>>=<around*|\<\|\|\>|L\<circ\>T|\<\|\|\>><rsub|L<around*|(|X,Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|T|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
    </equation*>

    which proves by [theorem: <reference|continuity linear mapping (1)>] that\ 

    <\equation*>
      <around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.96.193>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>
    <math|f:A\<rightarrow\>Y> is a function that is <math|n>-times
    differentiable at <math|x> then <math|L\<circ\>f> is <math|n>-times
    differentiable at <math|x>.
  </lemma>

  <\proof>
    We use induction to prove this, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
      are normed spaces, >A\<subseteq\>X<text| >x\<in\>A<text|,
      >f:A\<rightarrow\>Y<text| is \ n-times differentiable at >x<text| and
      <math|L\<in\>L<around*|(|Y,Z|)>> then >L\<circ\>f<text| is
      >n<text|-times differentiable at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|f> is <math|1>-times differentiable at
      <math|x> then <math|f> is Fréchet differentiable at <math|x>. Hence if
      <math|<rigid|L\<in\>L<around*|(|Y,Z|)>>> we have by [corollary:
      <reference|diff composition with a linear mapping>] that
      <math|L\<circ\>f> is Fréchet differentiable at <math|x>, hence by
      definition <math|1>-times differentiable at <math|x>, which proves that
      <math|1\<in\>S>.\ 

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|f:A\<rightarrow\>Y> be <math|<around*|(|n+1|)>> differentiable at
      <math|x> and let <math|L\<in\>L<around*|(|Y,Z|)>>. Using the fact that
      <math|1\<less\>n+1> together with [theorem: <reference|diff
      D^f=D^(n-1)D^1f>] there exist a open set <math|V> with
      <math|x\<in\>V\<subseteq\>A> such that <math|\<forall\>y\<in\>V>
      <math|f> is <math|1>-times differentiable at <math|y> [hence Fréchet
      differentiable at <math|y>] and\ 

      <\equation>
        <label|eq 16.86.193>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|V><rsup|>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f\<equallim\><rsub|def>D<rsub|y>f
      </equation>

      is <math|n>-times differentiable at <math|x>. As <math|f> is Fréchet
      differentiable at <math|y\<in\>V> we can use [corollary:
      <reference|diff composition with a linear mapping>] to prove that
      <math|L\<circ\>f> is Fréchet differentiable at <math|y> and
      <math|D<rsub|y><around*|(|L\<circ\>f|)>=L\<circ\>D<rsub|y> f>, so by
      definition

      <\equation>
        <label|eq 16.87.193>L\<circ\> f<text| is <math|1>-times
        differentiable at >y\<in\>V \ <text|and
        >D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>=L\<circ\>D<rsup|<around*|[|1|]>><rsub|y>f
      </equation>

      So we can define

      <\equation>
        <label|eq 16.91.199>D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,L<around*|(|X,Z|)>|)><text|
        by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>
      </equation>

      Take now <math|<around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>>
      defined by <math|<around*|(|L\<circ\>\<ast\>|)><around*|(|T|)>=L\<circ\>T>
      [see lemma: <reference|lemma 16.93.193>]. Let <math|y\<in\>V> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|D
        <rsup|<around*|[|1|]>>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.87.193>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.91.199>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation>
        <label|eq 16.89.193><around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|V>f=D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>
      </equation>

      As <math|D<rsup|<around*|[|1|]>><rsub|V>f> is <math|n>-times
      differentiable at <math|x>, <math|<around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>>
      and <math|n\<in\>S> it follows that
      <math|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D
      <rsup|<around*|[|1|]>><rsub|V>f> is <math|n>-times differentiable at
      <math|x>, hence, using [eq: <reference|eq 16.89.193>], it follows that
      <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>> is
      <math|n>-times differentiable at <math|x>. Using [eq: <reference|eq
      16.87.193>] together with [theorem: <reference|diff D^f=D^(n-1)D^1f>]
      proves that <math|L\<circ\>f> is <math|<around*|(|n+1|)>>-times
      differentiable at <math|x>. So\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  We use a similar proof for functions of class <math|C<rsup|n>>.

  <\lemma>
    <label|lemma 16.97.193>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|<rigid|f:A\<rightarrow\>Y>> is a function that is <math|C<rsup|n>>
    at <math|x> and <math|L\<in\>L<around*|(|Y,Z|)>> then <math|L\<circ\>f>
    is <math|C<rsup|n>> at <math|x>.
  </lemma>

  <\proof>
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have either:

    <\description>
      <item*|<math|n=0>>As <math|f> is \ <math|C<rsup|0>> at <math|x>,
      <math|f> is continuous at <math|x>, hence, as <math|L> is continuous,
      <math|L\<circ\>f> is continuous at <math|x> [see theorem
      <reference|continuity composition>], so it follows that
      <math|L\<circ\>f> is <math|C<rsup|0>> at <math|x>.

      <item*|<math|n\<in\>\<bbb-N\>>>We use induction to prove this, so
      define

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
        are normed spaces, >A\<subseteq\>X<text| <math|x\<in\>A>,
        ><rigid|f:A\<rightarrow\>Y><text| is >C<rsup|n><text| at <math|x> and
        <math|L\<in\>L<around*|(|Y,Z|)>> then >L\<circ\>f<text| is
        >C<rsup|n><text| at >x|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f> is <math|C<rsup|1>> at <math|x>
        there exist a open set <math|V> with <math|x\<in\>V\<subseteq\>U>
        such that <math|f> is <math|n>-times differentiable on <math|V>
        [hence Fréchet differentiable at <math|x>] and the function\ 

        <\equation>
          <label|eq 16.118.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation>

        is continuous at <math|x>. Let <math|y\<in\>V> then as <math|f> is
        Fréchet differentiable at <math|y> it follows from [corollary:
        <reference|diff composition with a linear mapping>] that
        <math|L\<circ\>f> is Fréchet differentiable at <math|y> [hence
        <math|1>-times differentiable at <math|y>] and

        <\equation>
          <label|eq 16.119.181>D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>=D<rsub|y><around*|(|L\<circ\>f|)>=L\<circ\>D
          <rsub|y>f=L\<circ\>D<rsup|<around*|[|1|]>><rsub|y>f
        </equation>

        So <math|L\<circ\>f> is <math|1>-times differentiable on <math|V> and
        we can define the function\ 

        <\equation>
          <label|eq 16.120.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Z|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>
        </equation>

        Let <math|y\<in\>V>then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.118.181>]>>>|<cell|L\<circ\>D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.119.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.120.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)><around*|(|y|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          <around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|V>f=D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>
        </equation*>

        As <math|D<rsup|<around*|[|1|]>><rsub|V>f> is continuous at <math|x>
        and <math|<around*|(|L\<circ\>\<ast\>|)>> is continuous by [lemma:
        <reference|lemma 16.93.193>] it follows that
        <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>> is
        continuous at <math|x>. So <math|L\<circ\>f> is <math|C<rsup|1>> at
        <math|x> which proves that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> is
        <math|C<rsup|n+1>> at <math|x> then by \ [theorem: <reference|diff f
        is of class C^n if D^1f u=is of class C^n-1>] there exist a open set
        <math|V> with <math|x\<in\>V\<subseteq\>U> such that <math|f> is
        <math|1>-times differentiable on <math|V> [hence Fréchet
        differentiable on <math|V>] and the function\ 

        <\equation>
          <label|eq 16.121.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
          is >C<rsup|n><text| on >V
        </equation>

        Let <math|y\<in\>V> then as <math|f> is Fréchet differentiable at
        <math|y> it follows from [corollary: <reference|diff composition with
        a linear mapping>] that <math|L\<circ\>f> is Fréchet differentiable
        at <math|y> [hence <math|1>-times differentiable at <math|y>] and

        <\equation>
          <label|eq 16.122.181>D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>=D<rsub|y><around*|(|L\<circ\>f|)>=L\<circ\>D
          <rsub|y>f=L\<circ\>D<rsup|<around*|[|1|]>><rsub|y>f
        </equation>

        Define

        <\equation>
          <label|eq 16.123.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Z|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>
        </equation>

        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|V>f|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.121.181>]>>>|<cell|L\<circ\>D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.122.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|y><around*|(|L\<circ\>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.123.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)><around*|(|y|)>>>>>
        </eqnarray*>

        proving that

        <\equation>
          <label|eq 16.124.181><around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|V>f=D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>
        </equation>

        As <math|D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,Y|)>>
        is <math|C<rsup|n>> at <math|x> and
        <math|<around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>>
        [see lemma: <reference|lemma 16.93.193>] and <math|n\<in\>S> it
        follows that <math|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|V>f>
        is <math|C<rsup|n>> at <math|x>. Combining this with the above [eq:
        <reference|eq 16.124.181>] proves that
        <math|D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>> is
        <math|C<rsup|n>> at <math|x>. Applying then [theorem: <reference|diff
        f is of class C^n if D^1f u=is of class C^n-1>] it follows that
        <math|L\<circ\>f> is <math|C<rsup|n+1>> at <math|x> proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.98.194>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces then if we define [see lemma:
    <reference|diff vector functions and linearity>]

    <\equation*>
      \<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>|)><text|
      by >\<cal-K\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>=<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><rsub|>
    </equation*>

    \ we have

    <\equation*>
      \<cal-K\>\<in\>L<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<around*|(|X,Y<rsub|i>|)>,L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>|)>|)>
    </equation*>

    where <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<around*|(|X,Y<rsub|i>|)>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    is the normed space with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> defined to be
    <math|<around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,Y<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
  </lemma>

  <\proof>
    Let <math|\<alpha\>\<in\>\<bbb-K\>>, <math|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>>,
    <math|<around*|(|K<rsub|1>,\<ldots\>,K<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<around*|(|X,Y<rsub|i>|)>>
    then we have for <math|x\<in\>X> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|K<rsub|1>\<ldots\>,K<rsub|n>|)>|)><around*|(|x|)>>|<cell|=>|<cell|\<cal-K\><around*|(|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>K<rsub|1>,\<ldots\>,L<rsub|n>+\<alpha\>\<cdot\>K<rsub|n>|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>K<rsub|1>,\<ldots\>,L<rsub|n>+\<alpha\>\<cdot\>K<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>K<rsub|1>|)><around*|(|x|)>,\<ldots\>,<around*|(|L<rsub|n>+\<alpha\>\<cdot\>K<rsub|n>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>K<rsub|1><around*|(|x|)>,\<ldots\>,L<rsub|n><around*|(|x|)>+\<alpha\>\<cdot\>K<rsub|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x|)>,\<ldots\>,L<rsub|n><around*|(|x|)>|)>+\<alpha\>\<cdot\><around*|(|K<rsub|1><around*|(|x|)>,\<ldots\>,K<rsub|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>+\<alpha\>\<cdot\><around*|(|K<rsub|1>,\<ldots\>,K<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-K\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><around*|(|x|)>+\<alpha\>\<cdot\>\<cal-K\><around*|(|K<rsub|1>,\<ldots\>,K<rsub|n>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<cal-K\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>+\<alpha\>\<cdot\>\<cal-K\><around*|(|<around*|\<nobracket\>|K<rsub|1>,\<ldots\>,K<rsub|n>|)>|\<nobracket\>>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that <math|\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|K<rsub|1>\<ldots\>,K<rsub|n>|)>|)>=\<cal-K\><around*|\<nobracket\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|\<nobracket\>>|)>+\<alpha\>\<cdot\>\<cal-K\><around*|(|K<rsub|1>,\<ldots\>,K<rsub|n>|)>>.
    So we have\ 

    <\equation*>
      \<cal-K\>\<in\>Hom<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<around*|(|X,Y<rsub|i>|)>,L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>|)>|)>
    </equation*>

    Let <math|><math|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<around*|(|X,Y<rsub|i>|)>>
    then we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>|)>|\<\|\|\>><rsub|L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>>|\<\|\|\>><rsub|L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[lemma:
      <reference|diff vector functions and
      linearity>]>><rsub|<text|>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,Y<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>|\<\|\|\>><rsub|max>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<cal-K\>\<in\>L<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<around*|(|X,Y<rsub|i>|)>,L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>|)>|)>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|diff higher order differentiation and vector functions>Let
    <math|n\<in\>\<bbb-N\>>, <math|k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>
    and <math|f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    then we have\ 

    <\equation*>
      f<text| is >n<text|-times differentiable at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,k|}><text| we have
      >\<pi\><rsub|i>\<circ\>f<text| is >n<text|-times differentiable at >x
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [example: <reference|continuity norm
      of projection operator>] it follows that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<in\>L<around*|(|X,Y<rsub|i>|)>>. So, as <math|f>
      is <math|n>-times differentiable at <math|x>, it follows from [lemma:
      <reference|lemma 16.96.193>] that <math|\<pi\><rsub|i>\<circ\>f> is
      <math|n>-times differentiable at <math|x>.

      <item*|<math|\<Leftarrow\>>>We use induction to prove this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|Let
        <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
        be a normed space, ><around*|{|<around*|\<langle\>|Y<rsub|i>|\<rangle\>>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        be normed spaces,<math|<text| >A\<subseteq\>X<text| ,>x\<in\>A<text|
        and >f:A\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|j><text|
        a function such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        >\<pi\><rsub|i>\<circ\>f<text| is >n<text|-times differentiable at
        >x<text| then >f<text| is >n<text|-times differentiable at
        >x>}>|\<nobracket\>>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable at
        <math|x> it follows that <math|\<pi\><rsub|i>\<circ\>f> is Fréchet
        differentiable at <math|x>. Hence using [theorem: <reference|diff
        differential of a vector valued function>] <math|f> is Fréchet
        differentiable at <math|x> proving that <math|f> is <math|1>-times
        differentiable at <math|x>. So we conclude that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then as
        <math|\<pi\><rsub|i>\<circ\>f> is <math|<around*|(|n+1|)>>-times
        differentiable it follows from [theorem: <reference|diff
        D^f=D^(n-1)D^1f>] that there exist a open set <math|V<rsub|i>> with
        <math|x\<in\>V<rsub|i>\<subseteq\>A> such that
        <math|\<forall\>y\<in\>V<rsub|i>> <math|\<pi\><rsub|i>\<circ\>f> is
        <math|1>-times differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V<rsub|i>><around*|(|\<pi\><rsub|i>\<circ\>f|)><rsub|>:V<rsub|i>\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by >D<rsub|V<rsub|i>><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><text|>
        </equation*>

        is <math|n>-times differentiable at <math|x>. Take
        <math|V=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|j>>
        then <math|x\<in\>V\<subseteq\>A>. As <math|\<forall\>y\<in\>V>
        <math|y\<in\>V<rsub|i>> so that <math|\<pi\><rsub|i>\<circ\>f> is
        <math|1>-times differentiable we can define\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,X<rsub|i>|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|i>\<circ\>f|)>=D<rsub|V<rsub|i>><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>
        </equation*>

        so that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|i>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><rsub|\|V>
        </equation*>

        As <math|V> is open we can then use [see theorem: <reference|diff
        higher order differentiation is local>] to prove that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><text|
          is >n<text|-tmes differentiable at >x
        </equation*>

        Now for\ 

        <\equation>
          <label|eq 16.90.194><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:V\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)><text|><rsub|>
        </equation>

        defined by [see definition: <reference|diff vector functions>]

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>
        </equation*>

        we have for <math|y\<in\>V>, <math|i\<in\><around*|{|1,\<ldots\>,k|}>>
        that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>|)><around*|(|y|)>,\<ldots\>,<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|\<pi\><rsub|i>\<circ\>><math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>>.
        Hence, as <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is <math|n>-times differentiable at <math|x>, we have proved that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>\ 

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)>
        </equation*>

        is <math|n>-times differentiable at <math|x>. As <math|n\<in\>S> it
        follows that\ 

        <\equation>
          <label|eq 16.91.194><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
          is >n<text|-times differentiable at >x
        </equation>

        As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable at
        <math|y\<in\>V> it follows that <math|\<pi\><rsub|i>\<circ\>f> is
        Fréchet differentiable at <math|y>, hence using [theorem:
        <reference|diff differential of a vector valued function>] <math|f>
        is Fréchet differentiable at <math|y> and

        <\equation>
          <label|eq 16.92.194>D<rsub|y><rsup|<around*|[|1|]>>f=D<rsub|y>f=<around*|(|D<rsup|><rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>
        </equation>

        allowing us to define\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
          by >D <rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation*>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have that for
        <math|y\<in\>V>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\>*<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)><rsub|\<ast\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.92.194>>>>|<cell|*>>|<row|<cell|D
          <rsub|y><rsup|<around*|[|1|]>>f>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D
          <rsup|<around*|[|1|]>>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>> f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation*>

        As <math|><math|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|n>-times differentiable at <math|x> by [eq: <reference|eq
        16.91.194>], it follows from [lemmas: <reference|lemma 16.98.194>,
        <reference|lemma 16.97.193>] that <math|D<rsup|<around*|[|1|]>>f> is
        <math|n>-times differentiable at <math|x>. Hence using [theorem:
        <reference|diff D^f=D^(n-1)D^1f>] it follows that\ 

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable at >x
        </equation*>

        proving that

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  We can use a similar proof for <math|C<rsup|n>> functions. \ To simplify
  this proof we first prove the following lemma:

  <\lemma>
    <label|lemma 16.139.181>Let <math|n,k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|><math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>
    and <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of functions that are <math|C<rsup|n>> at <math|x> then there
    exist a open set <math|V> with <math|x\<in\>V\<subseteq\>A> such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f<rsub|i>> is
    <math|1>-times differentiable on <math|V> and
    <math|D<rsup|<around*|[|1|]>><rsub|V>f<rsub|i>\<of\>V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)>>
    defined by <math|D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
    is <math|C<rsup|n-1>> at <math|x>>>.
  </lemma>

  <\proof>
    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as <math|f<rsub|i>> is
    <math|C<rsup|n>> it follows from [theorem: <reference|diff f is of class
    C^n if D^1f u=is of class C^n-1>] that there exist a open set
    <math|V<rsub|i>> with <math|x\<in\>V<rsub|i>\<subseteq\>U> such that
    <math|f<rsub|i>> is <math|1>-times differentiable on <math|V<rsub|i>> and
    the function\ 

    <\equation*>
      D<rsub|V<rsub|i>><rsup|<around*|[|1|]>>f<rsub|i>:V<rsub|i>\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
      defined by >D<rsub|V<rsub|i>><rsup|<around*|[|1|]>>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
      is >C<rsup|n-1><text| at >x
    </equation*>

    Take <math|V=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    then <math|x\<in\>V\<subseteq\>A>. Let
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then <math|\<forall\>y\<in\>V>
    we have <math|y\<in\>V<rsub|i>> so that <math|f<rsub|i>> is
    <math|1>-times differentiable at <math|y>. Define then the function\ 

    <\equation*>
      D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
      by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
    </equation*>

    Then <math|\<forall\>y\<in\>V\<subseteq\>V<rsub|i>> we have
    <math|D<rsup|<around*|[|1|]>>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f=D<rsup|<around*|[|1|]>><rsub|V<rsub|i>>f<around*|(|y|)>>
    which proves that\ 

    <\equation*>
      D<rsup|<around*|[|1|]>><rsub|V>f=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|i>>f|)><rsub|\|V>
    </equation*>

    As <math|><math|D<rsup|<around*|[|1|]>><rsub|V<rsub|i>>f> is
    <math|C<rsup|n-1>> at <math|x> and <math|V> is open it follows from
    [theorem: <reference|diff restriction of a function of class C^n>] that
    <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|i>>f|)><rsub|\|V>>
    is <math|C<rsup|n-1>> at <math|x>, hence <math|D<rsup|<around*|[|1|]>>f>
    is <math|C<rsup|n-1 >> at <math|x>.
  </proof>

  <\theorem>
    <label|diff higher order differentiation classes>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>
    and <math|f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    a function then we have\ 

    <\equation*>
      f<text| is ><text|>C<rsup|n><text| at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,k|}><text| we have
      >\<pi\><rsub|i>\<circ\>f<text| is >C<rsup|n><text| at >x
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [example: <reference|continuity norm
      of projection operator>] it follows that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<in\>L<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,Y<rsub|i>|)>>.
      So, as <math|f> is <math|C<rsup|n>> at <math|x>, it follows from
      [lemma: <reference|lemma 16.97.193>] that
      <math|\<pi\><rsub|1>\<circ\>f> is <math|C<rsup|n>> at <math|x>.

      <item*|<math|\<Leftarrow\>>>If <math|n=0> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|0>> at <math|x> so that
      <math|\<pi\><rsub|i>\<circ\>f> is continuous at <math|x>, using
      \ [theorem: <reference|continuity product and continuous functions>] it
      follows that <math|f> is continuous at <math|x> proving that <math|f>
      is <math|C<rsup|0>> at <math|x>. Hence we just have to prove the
      remaining case where <math|n\<in\>\<bbb-N\>>. For this we will use
      induction so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        \ <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
        is a normed space, ><around*|{|<around*|\<langle\>|Y<rsub|i>|\<rangle\>>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        a family of normed spaces, <math|A\<subseteq\>X<text|,
        <math|x\<in\>A> and >f:A\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|j><text|
        a function such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        >\<pi\><rsub|i>\<circ\>f<text| is >C<rsup|n><text| at <math|x> then
        >f<text| is >C<rsup|n><text| at >x>}>|\<nobracket\>>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>Using [lemma: <reference|lemma 16.139.181>]
        there exist a open set <math|V> with <math|x\<in\>V\<subseteq\>U>
        such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable on
        <math|V> [hence Fréchet differentiable on <math|V>] and the function
        \ 

        <\equation>
          <label|eq 16.128.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation>

        is <math|C<rsup|0>> at <math|x> hence continuous at <math|x>. Let
        <math|y\<in\>V> then using [theorem <reference|diff differential of a
        vector valued function>] it follows that <math|f> is Fréchet
        differentiable at <math|f> [hence <math|f> is <math|1>-times
        differentiable at <math|y>] and <math|<rigid|D<rsup|><rsub|y>f=<around*|(|D<rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><around*|(|\<pi\><rsub|k>\<circ\>f|)><rsup|>|)><rsub|\<ast\>>>>
        allowing us to define the function

        <\equation>
          <label|eq 16.129.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|y>|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f\<equallim\><rsub|def>D<rsub|y>f
        </equation>

        that satisfies\ 

        <\equation>
          <label|eq 16.130.181>\<forall\>y\<in\>V<text|
          >D<rsup|<around*|[|1|]>><rsup|><rsub|y>f=<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><rsup|>|)><rsub|\<ast\>>
        </equation>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have for
        <math|y\<in\>V> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.128.181>]>>>|<cell|>>|<row|<cell|\<cal-K\><around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.130.181>]>>>|<cell|>>|<row|<cell|D<rsub|y><rsup|<around*|[|1|]>>f>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.129.181>]>>>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.131.181>D<rsup|<around*|[|1|]>><rsub|V>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
        <math|\<forall\>y\<in\>V> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation*>

        As <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is continuous at <math|x> it follows that
        <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous at <math|x>, hence using [theorem:
        <reference|continuity product and continuous functions>]
        <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous at <math|x>. As <math|\<cal-K\>> is continuous [see
        lemma: <reference|lemma 16.98.194>] we conclude from [eq:
        <reference|eq 16.131.181>] that <math|D<rsup|<around*|[|1|]>><rsub|V>f>
        is continuous at <math|x>. So <math|f> is <math|C<rsup|1>> at
        <math|x>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then as
        <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|n+1>> at <math|x> it
        follows from [lemma: <reference|lemma 16.139.181>] that there exist a
        open set <math|V> with <math|x\<in\>V\<subseteq\>U> such that
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable on
        <math|V> and the function\ 

        <\equation>
          <label|eq 16.132.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|i>\<circ\>f|)><text|
          is >C<rsup|n><text| at >x
        </equation>

        Consider now the function [see definition: <reference|diff vector
        functions>] \ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:V\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>
        </equation*>

        defined by\ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|z|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|z|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|z|)>|)>
        </equation*>

        then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>> that
        <math|\<forall\>z\<in\>V>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i>*<around*|(|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>,\<ldots\>,<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation*>

        So, as <math|D<rsup|<around*|[|1|]>><rsub|C><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is <math|C<rsup|n>> at <math|x>, we have that
        <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x>. As <math|n\<in\>S> it follows that\ 

        <\equation>
          <label|eq 16.133.181><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
          is >C<rsup|n><text| at >x
        </equation>

        Let <math|y\<in\>V> then as <math|\<pi\><rsub|i>\<circ\>f> is
        <math|1>-time differentiable at <math|y> it is Fréchet differentiable
        at <math|y> and it follows from [theorem: <reference|diff
        differential of a vector valued function>] that <math|f> if Fréchet
        differentiable at <math|y> with <math|<rigid|D<rsub|y>f=<around*|(|D<rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>>.
        Hence we have that <math|f> is <math|1>-times differentiable on
        <math|V> and for the function\ 

        <\equation>
          <label|eq 16.134.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
          where >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation>

        we have\ 

        <\equation>
          <label|eq 16.135.181>\<forall\>y\<in\>V<text| that
          >D<rsup|<around*|[|1|]>><rsub|Y>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f=<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have that for
        <math|y\<in\>V> \ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)><rsub|\<ast\>>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.132.181>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.135.181>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsub|V><rsup|<around*|[|1|]>>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.136.181>D<rsup|<around*|[|1|]>><rsub|V>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        As by [eq: <reference|eq 16.133.181>]
        <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x> we have by [lemmas: <reference|lemma
        16.97.193>, <reference|lemma 16.98.194>] that
        <math|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x>, hence
        <math|D<rsup|<around*|[|1|]>><rsub|V>f> is
        <math|C<rsup|<around*|[|n|]>>> at <math|x>. Applying then [theorem:
        <reference|diff f is of class C^n if D^1f u=is of class C^n-1>]
        proves that <math|f> is <math|C<rsup|n+1>> at <math|x>, hence\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.101.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces then\ 

    <\equation*>
      <around*|(|\<circ\>|)>:L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>\<rightarrow\>L<around*|(|X,Z|)><text|
      defined by ><around*|(|\<circ\>|)><around*|(|L,K|)>=L\<circ\>K
    </equation*>

    is <math|\<infty\>>-times differentiable on
    <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>>. Further using
    [theorem: <reference|diff C-infinity condition>]
    <math|<around*|(|\<circ\>|)>> is <math|C<rsup|\<infty\>>>on
    <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>>.
  </lemma>

  <\proof>
    Using [theorem: <reference|continuity composition is multilinear>] we
    have that <math|<around*|(|\<circ\>|)>\<in\>L<around*|(|<around*|(|Y,Z|)>,L<around*|(|X,Y|)>;L<around*|(|X,Z|)>|)>>
    so that by [lemma: <reference|diff bilinear mappings are infinite times
    differentiable>] <math|<around*|(|\<circ\>|)>> is <math|\<infty\>>-times
    differentiable at every element on <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>>.
    Hence <math|<around*|(|\<circ\>|)>> is <math|\<infty\>>-times
    differentiable on <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>>
  </proof>

  <\theorem>
    <label|diff chain rule higher order><index|chain rule higher order
    differentiation><index|higher order differentiation chain
    rule><dueto|General Chain Rule>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|B\<subseteq\>Y> and <math|f:A\<rightarrow\>Y>,
    <math|g:B\<rightarrow\>Z> functions such that
    <math|f<around*|(|A|)>\<subseteq\>B>, <math|f> is <math|n>-times
    differentiable on <math|x> and <math|g> is <math|n>-times differentiable
    on <math|f<around*|(|x|)>> then\ 

    <\equation*>
      g\<circ\>f:A\<rightarrow\>Y<text| is >n<text|-times differentiable at
      >x
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction on <math|n>, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
      are normed spaces,><text| <math|A\<subseteq\>X>,
      >x\<in\>A<text|,><text| >B\<subseteq\>Y<text|,
      >f:A\<rightarrow\>Y<text|, ><rigid|g:B\<rightarrow\>Z><text| such that
      \ >f<around*|(|A|)>\<subseteq\>B<text|, >f<text| is >n<text|-times
      differentiable at >x<text| and >g<text| is >n<text|-times
      differentiable at >f<around*|(|x|)><text| then >g\<circ\>f<text| is
      >n<text|-times differentiable at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>As <math|f> is <math|1>-times differentiable at
      <math|x> and <math|g> is <math|1>-times differentiable at
      <math|f<around*|(|x|)>> we have by definition that <math|f> is Fréchet
      differentiable at <math|x> and <math|g> is Fréchet differentiable at
      <math|f<around*|(|x|)>>. So using the chain rule [theorem:
      <reference|diff chain rule>] it follows that <math|g\<circ\>f> is
      Fréchet differentiable at <math|x>. Hence <math|g\<circ\>f> is
      <math|1>-times differentiable at <math|x> which proves that
      <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|f> is
      <math|<around*|(|n+1|)>>-times differentiable at <math|x>, it follows
      from [theorem: <reference|diff n-times and m-times differentiability>]
      that

      <\equation>
        <label|eq 16.101.194>f<text| is >n<text|-times differentiable at >x
      </equation>

      and using [theorem: <reference|diff D^f=D^(n-1)D^1f>] that there exist
      a open <math|V<rsub|1>> in <math|X> with
      <math|x\<in\>V<rsub|1>\<subseteq\>A> such that
      <math|\<forall\>y\<in\>V<rsub|1>> we have that <math|f> is
      <math|1>-times differentiable at <math|y> and that the function

      <\equation*>
        D<rsub|V<rsub|1>><rsup|<around*|[|1|]>>f:V<rsub|1>\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsub|V<rsub|1>><rsup|<around*|[|1|]>>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f\<equallim\><rsub|def>D<rsub|y>f<text|
        is >n<text|-times differentiable at >x
      </equation*>

      Likewise, as <math|g> is <math|<around*|(|n+1|)>>-times differentiable
      at <math|f<around*|(|x|)>> there exist a open set <math|V<rsub|2>> with
      <rigid|<math|f<around*|(|x|)>\<in\>V<rsub|2>\<subseteq\>B>> such that
      <math|\<forall\>z\<in\>V<rsub|2>> <math|g> is <math|1>-times
      differentiable at <math|z> and that the function\ 

      <\equation>
        <label|eq 16.102.194>D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g:V<rsub|2>\<rightarrow\>L<around*|(|Y,Z|)><text|
        where >D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g<around*|(|z|)>=D<rsub|z><rsup|<around*|[|1|]>>g\<equallim\><rsub|def>D<rsub|x>g<text|
        is >n<text|-times differentiable at >f<around*|(|x|)>
      </equation>

      As <math|f> is Fréchet differentiable at <math|x> [because <math|f> is
      <math|1>-times differentiable at <math|x\<in\>V<rsub|1>>] <math|f> is
      by [theorem: <reference|diff differentiable function is continuous>]
      continuous at <math|x>, hence as <math|f<around*|(|x|)>\<in\>V<rsub|2>>
      there exist a open <math|U<rprime|'>> with <math|x\<in\>U<rprime|'>>
      such that <math|f<around*|(|U<rprime|'>|)>\<subseteq\>V<rsub|2>>. Take
      <math|W=V<rsub|1><big|cap>U<rprime|'>> then
      <math|x\<in\>W\<subseteq\>A> and <math|f<around*|(|W|)>\<subseteq\>f<around*|(|U<rprime|'>|)>\<subseteq\>V<rsub|2>\<subseteq\>B>.
      For the function

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|W>f:W\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f=D<rsub|y>f
      </equation*>

      we have that <math|D<rsup|<around*|[|1|]>><rsub|W>f=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|1>>f|)><rsub|\|W>>
      so that by [theorem: <reference|diff higher order differentiation is
      local>]\ 

      <\equation>
        <label|eq 16.103.194>D<rsup|<around*|[|1|]>><rsub|W>f<text| is
        >n<text|-times differentiable at >x
      </equation>

      As <math|\<forall\>y\<in\>W> <math|y\<in\>V<rsub|1>>,
      <math|f<around*|(|y|)>\<in\>f<around*|(|W|)>\<subseteq\>V<rsub|2>>,
      <math|f> is <math|1>-times differentiable at <math|y> [hence Fréchet
      differentiable at <math|y>] and <math|g> is <math|1>-times
      differentiable at <math|f<around*|(|y|)>> [hence Fréchet differentiable
      at <math|f<around*|(|y|)>>] it follows from [theorem: <reference|diff
      chain rule (1)>] that <math|g\<circ\>f> is Fréchet differentiable at
      <math|y> [hence <math|1>-times differentiable at <math|y>] with

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|y><around*|(|g\<circ\>f|)>=D<rsub|y><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f=D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g\<circ\>D<rsub|y><rsup|<around*|[|1|]>>f
      </equation*>

      This allows us to define\ 

      <\equation>
        <label|eq 16.104.194>D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>:W\<rightarrow\>L<around*|(|X,Z|)><text|
        by >D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g\<circ\>D<rsub|y><rsup|<around*|[|1|]>>f
      </equation>

      Define

      <\equation*>
        h:W\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
        by >h<around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>
      </equation*>

      then we have for <math|y\<in\>W> that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.102.194>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g<around*|(|f<rsub|\|W><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g|)>\<circ\>f<rsub|\|W>|)><around*|(|y|)>>>>>
      </eqnarray*>

      and

      <\equation*>
        <around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|y|)>=\<pi\><rsub|2><around*|(|h<around*|(|y|)>|)>=\<pi\><rsub|2><around*|(|<around*|(|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>|)>=D<rsub|y><rsup|<around*|[|1|]>>f=D<rsup|<around*|[|1|]>><rsub|W>f<around*|(|y|)>
      </equation*>

      proving that\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g|)>\<circ\>f<rsub|\|W><text|
        and >\<pi\><rsub|2>\<circ\>h=D<rsup|<around*|[|1|]>><rsub|W>f
      </equation*>

      By [eq: <reference|eq 16.101.194>] <math|f> is <math|n>-times
      differentiable at <math|x> so that, using [theorem: <reference|diff
      higher order differentiation is local>], <math|f<rsub|\|W>> is
      <math|n>-times differentiable at <math|x>, further by [eq:
      <reference|eq 16.102.194>] <math|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g>
      is <math|n>-times differentiable at <math|f<around*|(|x|)>>. So using
      the fact that <math|n\<in\>S> it follows that
      <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g|)>\<circ\>f<rsub|\|W>>
      is <math|n>-times differentiable at <math|x> which proves that
      \ <math|\<pi\><rsub|1>\<circ\>h<text| is >n<text|-times differentiable
      at >x>. As by [eq: <reference|eq 16.103.194>]
      <math|D<rsup|<around*|[|1|]>><rsub|W>f=\<pi\><rsub|2>\<circ\>h> is
      <math|n>-times differentiable at <math|x> it follows that
      <math|\<pi\><rsub|1>\<circ\>h> and <math|\<pi\><rsub|2>\<circ\>h> are
      <math|n>-times differentiable at <math|x>. Combining this with
      [theorem: <reference|diff higher order differentiation and vector
      functions>] proves that

      <\equation>
        <label|eq 16.105.194>h<text| is <math|n>-times differentiable at >x
      </equation>

      Let <math|y\<in\>W> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|<around*|\<nobracket\>|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>|\<nobracket\>>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|y|)>><rsup|1>g\<circ\>D<rsub|y><rsup|<around*|[|1|]>>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.104.194>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h
      </equation*>

      As by [lemma: <reference|lemma 16.101.194>]
      <math|<around*|(|\<circ\>|)>> is <math|n>-times differentiable on
      <math|><math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>> and <math|h>
      is <math|n>-times differentiable on <math|x> and
      <math|h<around*|(|W|)>\<subseteq\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>>
      it follows from <math|n\<in\>S> that
      <math|<around*|(|\<circ\>|)>\<circ\>h> is <math|n>-times differentiable
      at <math|x>. Hence <math|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>>
      is <math|n>-times differentiable at <math|x>. Using then [theorem:
      <reference|diff D^f=D^(n-1)D^1f>] proves that <math|g\<circ\>f> is
      <math|<around*|(|n+1|)>>-times differentiable at <math|x> so that

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  As a application of the General Chain Rule we prove that the product of
  functions that are <math|n>-times differentiable are <math|n>-times
  differentiable.

  <\theorem>
    <label|diff higher order differential of a product>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers, <math|A\<subseteq\>X>,
    <math|x\<in\>A> and <math|f:A\<rightarrow\>\<bbb-K\>>,
    <math|g:A\<rightarrow\>\<bbb-K\>> functions that are <math|n>-times
    differentiable at <math|x> then\ 

    <\equation*>
      f\<cdot\>g:A\<rightarrow\>\<bbb-K\>
    </equation*>

    is <math|n>-times differentiable at <math|x>.
  </theorem>

  <\proof>
    Define

    <\equation*>
      \<varphi\>:A\<rightarrow\>\<bbb-K\>\<cdot\>\<bbb-K\><text| by
      >\<varphi\><around*|(|x|)>=<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>
    </equation*>

    then we have for <math|x\<in\>A> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<pi\><rsub|1>\<circ\>\<varphi\>=f<text| and
      >\<pi\><rsub|2>\<circ\>\<varphi\>=g
    </equation*>

    Using [theorem: <reference|diff higher order differentiation and vector
    functions>] and the fact <math|f,g> are <math|n>-times differentiable it
    follows that\ 

    <\equation*>
      \<varphi\><text| is >n<text|-times differentiable at >x
    </equation*>

    Consider the function

    <\equation*>
      <around*|(|\<cdot\>|)>:\<bbb-K\>\<cdot\>\<bbb-K\>\<rightarrow\>\<bbb-K\><text|
      by ><around*|(|\<cdot\>|)><around*|(|r,s|)>=r\<cdot\>s
    </equation*>

    then we have for <math|r,s,t,\<alpha\>\<in\>\<bbb-K\>> that\ 

    <\equation*>
      <around*|(|\<cdot\>|)><around*|(|r+\<alpha\>\<cdot\>s,t|)>=<around*|(|r+\<alpha\>\<cdot\>s|)>\<cdot\>t=r\<cdot\>t+\<alpha\>\<cdot\><around*|(|s\<cdot\>t|)>=<around*|(|\<cdot\>|)><around*|(|r,t|)>+\<alpha\>\<cdot\><around*|(|\<cdot\>|)><around*|(|s,t|)>
    </equation*>

    and\ 

    <\equation*>
      <around*|(|\<cdot\>|)><around*|(|r,s+\<alpha\>\<cdot\>t|)>=r\<cdot\><around*|(|s+\<alpha\>\<cdot\>t|)>=r\<cdot\>s+\<alpha\>\<cdot\><around*|(|r\<cdot\>t|)>=<around*|(|\<cdot\>|)><around*|(|r,s|)>+\<alpha\>\<cdot\><around*|(|\<cdot\>|)><around*|(|r,t|)>
    </equation*>

    proving that

    <\equation*>
      <around*|(|\<cdot\>|)>\<in\>Hom<around*|(|\<bbb-K\>,\<bbb-K\>;\<bbb-K\>|)>
    </equation*>

    Further we have for <math|r,s\<in\>\<bbb-K\>> that\ 

    <\equation*>
      <around*|\||<around*|(|\<cdot\>|)><around*|(|r,s|)>|\|>=<around*|\||r\<cdot\>s|\|>=<around*|\||r|\|>\<cdot\><around*|\||t|\|>
    </equation*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that
    <math|<around*|(|\<cdot\>|)>\<in\>L<around*|(|\<bbb-K\>,\<bbb-K\>;\<bbb-K\>|)>>.
    Hence by [theorem: <reference|diff bilinear mappings are infinite times
    differentiable>]

    <\equation*>
      <around*|(|\<cdot\>|)><text| is >\<infty\><text|-times differentiable
      on >\<bbb-K\>
    </equation*>

    Let <math|x\<in\>A> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<cdot\>|)><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<cdot\>|)><around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<cdot\>g|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>=f\<cdot\>g>.
    So using the generalized chain rule [theorem: <reference|diff chain rule
    higher order>] it follows that\ 

    <\equation*>
      f\<cdot\>g<text| is >n<text|-times differentiable at <math|x>>
    </equation*>
  </proof>

  We can use the same proof technique as is used in the General Chain Rule to
  prove that the composition of functions that are <math|C<rsup|n>> is
  <math|C<rsup|n>>.

  <\theorem>
    <label|diff chain rule higher order class>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|B\<subseteq\>Y> and <math|f:A\<rightarrow\>Y>,
    <math|g:B\<rightarrow\>Z> functions such that
    <math|f<around*|(|A|)>\<subseteq\>B>, <math|f> is <math|C<rsup|n>> at
    <math|x> and <math|g> is <math|C<rsup|n>> at <math|f<around*|(|x|)>> then
    <math|g\<circ\>f> is <math|C<rsup|n>> at <math|x>.
  </theorem>

  <\proof>
    If <math|n=0> then, as <math|f> is <math|C<rsup|0>> at <math|x> and
    <math|g> is <math|C<rsup|0>> at <math|f<around*|(|x|)>>, we have that
    <math|f> is continuous at <math|x> and <math|g> is continuous at
    <math|f<around*|(|x|)>>. Using \ [theorem: <reference|continuity
    composition>] it follows that <math|g\<circ\>f> is continuous at
    <math|x>, hence <math|C<rsup|0>> at <math|x>. This proves the theorem for
    the case <math|n=0> and we are left with proving the theorem for the case
    <math|n\<in\>\<bbb-N\>>. We do this by induction so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
      are normed spaces, ><text|<math|A\<subseteq\>X>,> x\<in\>A<text|,
      >B\<subseteq\>Y<text|, >f:A\<rightarrow\>Y<text|,
      ><rigid|g:B\<rightarrow\>Z><text| such that
      \ >f<around*|(|A|)>\<subseteq\>B<text|, >f<text| is >C<rsup|n><text| at
      >x<text| and g is >C<rsup|n><text| at >f<around*|(|x|)><text| then
      >g\<circ\>f<text| is >C<rsup|n><text| at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>As <math|f> is <math|C<rsup|1>> at <math|x>
      there exist a open set <math|W<rsub|1>> with
      <math|x\<in\>W<rsub|1>\<subseteq\>A> such that <math|f> is
      <math|1>-times differentiable on <math|W<rsub|1>> [hence Fréchet
      differentiable on <math|W<rsub|1>>] and the function\ 

      <\equation>
        <label|eq 16.142.181>D<rsup|<around*|[|1|]>><rsub|W>f:W<rsub|1>\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
        is continuous at >x
      </equation>

      As <math|g> is <math|C<rsup|1>> at <math|f<around*|(|x|)>> there exist
      a open set <math|W<rsub|2>> with <math|f<around*|(|x|)>\<in\>W<rsub|2>\<subseteq\>B>
      such that <math|g> is <math|1>-times differentiable on <math|W<rsub|2>>
      [hence Fréchet differentiable on <math|W<rsub|2>>] and the function\ 

      <\equation>
        <label|eq 16.143.181>D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g:W<rsub|2>\<rightarrow\>L<around*|(|Y,Z|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>g<text|
        is continuous at >f<around*|(|x|)>
      </equation>

      As <math|f> is <math|C<rsup|1>> at <math|x> we have by [theorem:
      <reference|diff C^n and C^m>] that <math|f> is <math|C<rsup|0>> at
      <math|x> hence

      <\equation>
        <label|eq 16.144.181.1>f<text| is continuous at <math|x>>
      </equation>

      So there exist a open set <math|W<rsub|3>> such that
      <math|x\<in\>W<rsub|3>> and <math|f<around*|(|W<rsub|3>|)>\<subseteq\>W<rsub|2>>.
      Take <math|W=W<rsub|1><big|cap>W<rsub|3>> then <math|x\<in\>W> and
      <math|f<around*|(|W|)>\<subseteq\>W<rsub|2>>. \ Let <math|y\<in\>W>
      then, as <math|f> is Fréchet differentiable at <math|y> [because
      <math|W\<subseteq\>W<rsub|1>>] and <math|g> is Fréchet differentiable
      at <math|f<around*|(|y|)>> [because
      <math|f<around*|(|y|)>\<in\>W<rsub|2>>], it follows from [theorem:
      <reference|diff chain rule (1)>] that <math|g\<circ\>f> is Fréchet
      differentiable at <math|y> with <math|D<rsub|y><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f>.
      So <math|g\<circ\>f> is Fréchet differentiable on <math|W> hence
      <math|1>-times differentiable on <math|W> and for the function\ 

      <\equation>
        <label|eq 16.144.181>D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>:W\<rightarrow\>L<around*|(|X,Z|)><text|
        defined by <math|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|y><around*|(|g\<circ\>f|)>>>
      </equation>

      we have\ 

      <\equation>
        <label|eq 16.145.181>\<forall\>y\<in\>W<text| that
        >D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f
      </equation>

      Define the function\ 

      <\equation*>
        h:W\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
        by >h<around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>
      </equation*>

      then we have for <math|y\<in\>W> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.143.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|\|W<rsub|2>>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|f<rsub|\|W><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W>|)><around*|(|y|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.142.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f<around*|(|y|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|y\<in\>W\<subseteq\>W<rsub|1>>>|<cell|<around*|(|D<rsup|<around*|[|1|)>><rsub|W<rsub|1>>f|)><rsub|\|W><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>h=<around*|\<nobracket\>|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W>|)>\<equallim\><rsub|><text|
        and >\<pi\><rsub|2>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f|)><rsub|\|W>
      </equation*>

      As <math|f> is continuous at <math|x> [see eq: <reference|eq
      16.144.181.1>] it follows from [theorem: <reference|continuity and
      subspace topology (5)>] that <math|f<rsub|\|W>> is continuous at
      <math|x>, further using [eq: <reference|eq 16.143.181>]
      <math|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g> is continuous at
      <math|f<around*|(|x|)>> so it follows from [theorem:
      <reference|continuity composition>] that
      <math|><math|<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f<rsub|\|W>>
      is continuous at <math|x>, hence <math|\<pi\><rsub|1>\<circ\>h> is
      continuous at <math|x>. Further by [eq: <reference|eq 16.142.181>]
      <math|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f> is continuous at
      <math|x> hence <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f|)><rsub|\|W>>
      is continuous at <math|x> proving that <math|\<pi\><rsub|2>\<circ\>h>
      is continuous at <math|x>. So using [theorem: <reference|continuity
      product and continuous functions>] we conclude that\ 

      <\equation>
        <label|eq 16.147.181>h<text| is continuous at >x
      </equation>

      Let <math|y\<in\>W> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g\<circ\>D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.145.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>|)><rsub|\|W><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation*>
        <around*|(|\<circ\>|)>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>|)><rsub|\|W>
      </equation*>

      <\equation*>
        \;
      </equation*>

      By [lemma: <reference|lemma 16.101.194>] <math|<around*|(|\<circ\>|)>>
      is continuous and by [eq: <reference|eq 16.147.181>] <math|h> is
      continuous at <math|x> so that <math|<around*|(|\<circ\>|)>\<circ\>h>
      is continuous at <math|x> or using the above that
      <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>|)><rsub|\|W>>
      is continuous at <math|x>. Applying then [theorem:
      <reference|continuity and subspace topology (6)>] it follows that
      <math|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>> is
      continuous at <math|x>. Hence <math|g\<circ\>f> is <math|C<rsup|1>> at
      <math|x> which proves that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|f> is
      <math|C<rsup|n+1>> at <math|x> it follows from [theorem:
      <reference|diff f is of class C^n if D^1f u=is of class C^n-1>] that
      there exist a open set <math|W<rsub|1>\<subseteq\>A> such that <math|f>
      is <math|1>-times differentiable on <math|W<rsub|1>> [hence Fréchet
      differentiable on <math|W<rsub|1>>] and\ 

      <\equation>
        <label|eq 16.148.181>D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f:W<rsub|1>\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
        is >C<rsup|n><text| at >x
      </equation>

      Likewise as <math|g> is <math|C<rsup|n+1>> at <math|f<around*|(|x|)>>
      it follows that there exist a open set <math|W<rsub|2>> with
      <math|f<around*|(|x|)>\<in\>W<rsub|2>\<subseteq\>B> such that <math|g>
      is <math|1>-times differentiable on <math|W<rsub|2>> and\ 

      <\equation>
        <label|eq 16.149.181>D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g:W<rsub|2>\<rightarrow\>L<around*|(|Y,Z|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>g<text|
        is >C<rsup|n><text| at >x
      </equation>

      As <math|f> is <math|C<rsup|n+1>> at <math|x> <math|f> is
      <math|C<rsup|0>> at <math|x> [see theorem: <reference|diff C^n and
      C^m>] hence\ 

      <\equation>
        <label|eq 16.150.181>f<text| is continuous at >x
      </equation>

      So there exist a open set <math|W<rsub|3>> with <math|x\<in\>W<rsub|3>>
      such that <math|f<around*|(|W<rsub|3>|)>\<subseteq\>W<rsub|2>>. Take
      <math|W=W<rsub|3><big|cap>W<rsub|1>> then <math|x\<in\>W<text| and
      >f<around*|(|W|)>\<subseteq\>W<rsub|2>>. Let <math|y\<in\>W> then, as
      <math|f> is Fréchet differentiable at <math|y> [because
      <math|W\<subseteq\>W<rsub|1>>] and <math|g> is Fréchet differentiable
      at <math|f<around*|(|y|)>> [because
      <math|f<around*|(|y|)>\<in\>f<around*|(|W|)>\<subseteq\>W<rsub|2>>], it
      follows from [theorem: <reference|diff chain rule (1)>] that
      <math|g\<circ\>f> is Fréchet differentiable at <math|y> with
      <math|D<rsub|y><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f>.
      So <math|g\<circ\>f> is <math|1>-times differentiable on <math|W> and
      for the function\ 

      <\equation>
        <label|eq 16.151.181>D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>:W\<rightarrow\>L<around*|(|X,Z|)><text|
        defined by <math|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|y><around*|(|g\<circ\>f|)>>>
      </equation>

      we have\ 

      <\equation>
        <label|eq 16.152.181>\<forall\>y\<in\>W<text| that
        >D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f
      </equation>

      Define\ 

      <\equation*>
        h:W\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
        by >h<around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>
      </equation*>

      then we have for <math|y\<in\>W> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:<space|1em><reference|eq
        16.149.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|f<rsub|\|W><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W>|)><around*|(|y|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.148.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f<around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f|)><rsub|\|W><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation>
        <around*|(|\<pi\><rsub|1>\<circ\>h|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W><text|
        and >\<pi\><rsub|2>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f|)><rsub|\|W>
      </equation>

      As <math|f> is <math|C<rsup|n+1>> at <math|x> we have by [theorem:
      <reference|diff C^n and C^m>] that<math|f> is <math|C<rsup|n>> at
      <math|x>. Next using [theorem: <reference|diff restriction of a
      function of class C^n>] it follows that <math|f<rsub|\|W>> is
      <math|C<rsup|n>> at <math|x>. Further by \ [eq: <reference|eq
      16.149.181>] <math|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g> is
      <math|C<rsup|n>> at <math|x>. Hence using the fact that <math|n\<in\>S>
      we conclude that <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W><text|
      is >C<rsup|n> at x> proving that\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>h<text| is >C<rsup|n><text| at >x
      </equation*>

      By [eq: <reference|eq 16.148.181>] <math|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f>
      is <math|C<rsup|n>> at <math|x> therefore, using [theorem:
      <reference|diff restriction of a function of class C^n>] it follows
      that <math|<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|\|W>> is
      <math|C<rsup|n>> at <math|x> which proves that\ 

      <\equation*>
        \<pi\><rsub|2>\<circ\>h<text| is <math|C<rsup|n>> at <math|x>>
      </equation*>

      Using the above together with [lemma: <reference|diff higher order
      differentiation classes>] it follows that\ 

      <\equation>
        <label|eq 16.154.181>h<text| is >C<rsup|n><text| at >x
      </equation>

      Let <math|y\<in\>W> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|<around*|(|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g<rsub|>\<circ\>D<rsub|y><rsup|<around*|[|1|]>>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.152.181>]>>>|<cell|D<rsub|y><rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.151.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>|)><rsub|\|W><around*|(|y|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><rsub|\|W>=<around*|(|\<circ\>|)>\<circ\>h
      </equation*>

      Now using [lemma: <reference|lemma 16.101.194>]
      <math|<around*|(|\<circ\>|)>> is <math|C<rsup|n>> on
      <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>> and by [eq:
      <reference|eq 16.154.181>] <math|h> is <math|C<rsup|n>> at <math|x>.
      Using <math|n\<in\>S> again it follows that
      <math|<around*|(|\<circ\>|)>\<circ\>h> is <math|C<rsup|n>> at <math|x>,
      hence <math|<around*|(|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>|)><rsub|\|W>>
      is <math|C<rsup|n>> at <math|x>. Applying then [theorem:
      <reference|diff restriction of a function of class C^n>] proves that
      <math|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>> is
      <math|C<rsup|n>> at <math|x> which by [theorem: <reference|diff f is of
      class C^n if D^1f u=is of class C^n-1>] proves that <math|g\<circ\>f>
      is <math|C<rsup|n+1>> at <math|x> so that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  As a application of the General Chain Rule we prove that the product of
  functions that are <math|C<rsup|n>> is <math|C<rsup|n>>.

  <\theorem>
    <label|diff higher order differential of a product (1)>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers, <math|A\<subseteq\>X>,
    <math|x\<in\>A> and <math|f:A\<rightarrow\>X>, <math|g:A\<rightarrow\>X>
    functions that are <math|C<rsup|n>> at <math|x> then\ 

    <\equation*>
      f\<cdot\>g:A\<rightarrow\>\<bbb-K\>
    </equation*>

    is <math|C<rsup|n>> at <math|x>.
  </theorem>

  <\proof>
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have two cases to consider:

    <\description>
      <item*|<math|n=0>>Then <math|f>, <math|g> are continuous at <math|x> so
      that by [theorem: <reference|continuity product of continuous
      functions>] <math|f\<cdot\>g> is continuous at <math|x>, hence
      <math|C<rsup|0>> at <math|x>.

      <item*|<math|n\<in\>\<bbb-N\>>>Define

      <\equation*>
        \<varphi\>:A\<rightarrow\>\<bbb-K\>\<cdot\>\<bbb-K\><text| by
        >\<varphi\><around*|(|x|)>=<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>
      </equation*>

      then we have for <math|x\<in\>A> that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>\<varphi\>=f<text| and
        >\<pi\><rsub|2>\<circ\>\<varphi\>=g
      </equation*>

      Using \ [lemma: <reference|diff higher order differentiation classes>]
      and the fact <math|f,g> are <math|C<rsup|n>> at <math|x> it follows
      that\ 

      <\equation*>
        \<varphi\><text| is >C<rsup|n><text| at >x
      </equation*>

      Consider the function

      <\equation*>
        <around*|(|\<cdot\>|)>:\<bbb-K\>\<cdot\>\<bbb-K\>\<rightarrow\>\<bbb-K\><text|
        by ><around*|(|\<cdot\>|)><around*|(|r,s|)>=r\<cdot\>s
      </equation*>

      then we have for <math|r,s,t,\<alpha\>\<in\>\<bbb-K\>> that\ 

      <\equation*>
        <around*|(|\<cdot\>|)><around*|(|r+\<alpha\>\<cdot\>s,t|)>=<around*|(|r+\<alpha\>\<cdot\>s|)>\<cdot\>t=r\<cdot\>t+\<alpha\>\<cdot\><around*|(|s\<cdot\>t|)>=<around*|(|\<cdot\>|)><around*|(|r,t|)>+\<alpha\>\<cdot\><around*|(|\<cdot\>|)><around*|(|s,t|)>
      </equation*>

      and\ 

      <\equation*>
        <around*|(|\<cdot\>|)><around*|(|r,s+\<alpha\>\<cdot\>t|)>=r\<cdot\><around*|(|s+\<alpha\>\<cdot\>t|)>=r\<cdot\>s+\<alpha\>\<cdot\><around*|(|r\<cdot\>t|)>=<around*|(|\<cdot\>|)><around*|(|r,s|)>+\<alpha\>\<cdot\><around*|(|\<cdot\>|)><around*|(|r,t|)>
      </equation*>

      proving that

      <\equation*>
        <around*|(|\<cdot\>|)>\<in\>Hom<around*|(|\<bbb-K\>,\<bbb-K\>;\<bbb-K\>|)>
      </equation*>

      Further we have for <math|r,s\<in\>\<bbb-K\>> that\ 

      <\equation*>
        <around*|\||<around*|(|\<cdot\>|)><around*|(|r,s|)>|\|>=<around*|\||r\<cdot\>s|\|>=<around*|\||r|\|>\<cdot\><around*|\||t|\|>
      </equation*>

      proving by [theorem: <reference|continuity multilinear mapping (1)>]
      that <math|<around*|(|\<cdot\>|)>\<in\>L<around*|(|\<bbb-K\>,\<bbb-K\>;\<bbb-K\>|)>>.
      Hence by [theorem: <reference|diff bilinear mappings are infinite times
      differentiable>]

      <\equation*>
        <around*|(|\<cdot\>|)><text| is >C<rsup|\<infty\>><text| on
        >\<bbb-K\>
      </equation*>

      Let <math|x\<in\>U> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<cdot\>|)><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<cdot\>|)><around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<cdot\>g|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>=f\<cdot\>g>.
      So using the chain rule [see theorem: <reference|diff chain rule higher
      order class>] it follows that\ 

      <\equation*>
        f\<cdot\>g<text| is >C<rsup|n><text| at >x
      </equation*>
    </description>
  </proof>

  <section|Intermediate value and main value theorems>

  <subsection|Derivatives, extremums, concavity, and convexity>

  <\definition>
    <label|diff minimum maximum><index|local weak minimum><index|local weak
    maximum><index|local extremum>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real numbers, <math|A\<subseteq\>X> and
    <math|f:A\<rightarrow\>\<bbb-R\>> then\ 

    <\enumerate>
      <item><math|x\<in\>A> is a <with|font-series|bold|local weak minimum of
      <math|f> >if there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such
      that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>A>
      and <math|\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
      <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>.

      <item><math|x\<in\>A> s a <with|font-series|bold|local weak maximum of
      <math|f> >if there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such
      that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>A>
      and <math|\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
      <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>.
    </enumerate>

    A <with|font-series|bold|local weak minimum> or
    <with|font-series|bold|local weak maximum> of <math|f> is called a
    <with|font-series|bold|local extremum>.

    <\note>
      As <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
      is a open set and <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>\<subseteq\>A>
      it follows from [theorem: <reference|topology biggest open subset>]
      that <math|x\<in\>A<rsup|\<circ\>>> hence a local weak extremum is
      automatical a interior point of <math|A>.
    </note>
  </definition>

  <\theorem>
    <label|diff derivate and local extremum>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|A\<subseteq\>\<bbb-R\>> and

    <\equation*>
      f:A\<rightarrow\>\<bbb-R\>
    </equation*>

    a function with a local extremum <math|x> then if <math|f> has a
    derivative at <math|x> it follows that
    <math|f<rprime|'><around*|(|x|)>=0>.

    <\note>
      As <math|x> is a local extremum of <math|f> it follows from
      [definition: <reference|diff minimum maximum>] and [theorem:
      <reference|topology interior point is a limit point in a normed space>]
      that <math|x> is a limit point of <math|A> which is a prerequisite for
      the existance of a <with|font-series|bold|unique> derivative at
      <math|x> [see definition: <reference|diff calculus derivate>].
    </note>
  </theorem>

  <\proof>
    If <math|x> is a local extremum of <math|f> then we have either:

    <\description>
      <item*|<math|x<text|> >is a local weak minimum>Then there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|<around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>A> and
      <math|\<forall\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> we have
      <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>. Assume that
      <math|f<rprime|'><around*|(|x|)>\<neq\>0> then we have either:

      <\description>
        <item*|<math|0\<less\>f<rprime|'><around*|(|x|)>>>As
        <math|f<rprime|'><around*|(|x|)>\<in\>\<bbb-R\><rsup|+>> there exist
        a <math|\<delta\><rsub|f<rprime|'><around*|(|x|)>>\<in\>\<bbb-R\><rsup|+>>
        such that

        <\equation>
          <label|eq 16.123.195>\<forall\>h\<in\>A<rsub|x><text| with
          >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|f<rprime|'><around*|(|x|)>><text|
          we have ><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|z|)>
        </equation>

        Let <math|k=<frac|min<around*|(|\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>|)>|2>\<in\>\<bbb-R\><rsup|+>>
        then <math|0\<less\><around*|\||-k|\|>=k\<less\>\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>>
        so that <math|x-\<delta\>\<less\>x-k\<less\>x+\<delta\>> or
        <math|x-k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> so that

        <\equation>
          <label|eq 16.124.195>f<around*|(|x|)>\<leqslant\>f<around*|(|x-k|)>\<Rightarrow\>0\<leqslant\>f<around*|(|x-k|)>-f<around*|(|x|)>\<Rightarrow\>0\<leqslant\>-<around*|(|<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>|)>
        </equation>

        As <math|x-k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>A>
        we have that <math|-k\<in\>A<rsub|x>> so that by [eq: <reference|eq
        16.123.195>] \ 

        <\equation*>
          <around*|\||<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|x|)>
        </equation*>

        combining this with [eq: <reference|eq 16.124.195>]

        <\equation*>
          f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>\<leqslant\><around*|\||<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|x|)>
        </equation*>

        leading to the contradiction <math|f<rprime|'><around*|(|x|)>\<less\>f<rprime|'><around*|(|x|)>>.\ 

        <item*|<math|f<rprime|'><around*|(|x|)>\<less\>0>>As
        <math|-f<rprime|'><around*|(|x|)>\<in\>\<bbb-R\><rsup|+>> there exist
        <math|\<delta\><rsub|-f<rprime|'><around*|(|x|)>>\<in\>\<bbb-R\><rsup|+>>
        such that we have

        <\equation>
          <label|eq 16.125.195>\<forall\>h\<in\>A<rsub|x><text| with
          >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|-f<rprime|'><around*|(|x|)>>
          we have <around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation>

        Let <math|k=<frac|min<around*|(|\<delta\>,\<delta\><rsub|-f<rprime|'><around*|(|x|)>>|)>|2>\<in\>\<bbb-R\><rsup|+>>
        then <math|0\<less\><around*|\||k|\|>=k\<less\>\<delta\>,\<delta\><rsub|-f<rprime|'><around*|(|x|)>>>
        so that <math|x-\<delta\>\<less\>x\<less\>x+k\<less\>x+\<delta\>> or
        <math|x+k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> so that\ 

        <\equation>
          <label|eq 16.126.195>f<around*|(|x|)>\<leqslant\>f<around*|(|x+k|)>\<Rightarrow\>0\<leqslant\>f<around*|(|x+k|)>-f<around*|(|x|)>\<Rightarrow\>0\<leqslant\><frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>
        </equation>

        As <math|x+k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>A>
        we have that <math|k\<in\>A<rsub|x>> so that by [eq: <reference|eq
        16.125.195>]\ 

        <\equation*>
          <around*|\||<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation*>

        Hence using [eq: <reference|eq 16.126.195>]\ 

        <\equation*>
          -f<rprime|'><around*|(|x|)>\<leqslant\>-f<rprime|'><around*|(|x|)>+<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>\<leqslant\><around*|\||<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation*>

        leading to the contradiction <math|-f<rprime|'><around*|(|x|)>\<less\>-f<rprime|'><around*|(|x|)>>.
      </description>

      As in all case we have a contradiction the assumption is wrong, hence
      we must have that

      <\equation*>
        f<rprime|'><around*|(|x|)>=0.
      </equation*>

      <item*|<math|x> is a local weak maximum>Then there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      \ <math|<around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>A> and
      <math|\<forall\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> we have
      <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>. Assume that
      <math|f<rprime|'><around*|(|x|)>\<neq\>0> then we have either:

      <\description>
        <item*|<math|0\<less\>f<rprime|'><around*|(|x|)>>>As
        <math|f<rprime|'><around*|(|x|)>\<in\>\<bbb-R\><rsup|+>> there exist
        by [theorem: <reference|diff calculus derivate>] a
        <math|\<delta\><rsub|f<rprime|'><around*|(|x|)>>\<in\>\<bbb-R\><rsup|+>>
        such that\ 

        <\equation>
          <label|eq 16.127.195>\<forall\>h\<in\>A<rsub|x><text| with
          >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|f<rprime|'><around*|(|x|)>><text|
          we have ><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|x|)>
        </equation>

        Let <math|k=<frac|min<around*|(|\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>|)>|2>\<in\>\<bbb-R\><rsup|+>>
        then <math|0\<less\><around*|\||k|\|>=k\<less\>\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>>
        so that <math|x-\<delta\>\<less\>x\<less\>x+k\<less\>x+\<delta\>> or
        <math|x+k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> so that\ 

        <\equation>
          <label|eq 16.128.195>f<around*|(|x+k|)>\<leqslant\>f<around*|(|x|)>\<Rightarrow\>0\<leqslant\>-<around*|(|f<around*|(|x+k|)>-f<around*|(|x|)>|)>\<Rightarrow\>0\<leqslant\>-<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>
        </equation>

        As <math|x+k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>A>
        we have that <math|k\<in\>A<rsub|x>> so that by [eq: <reference|eq
        16.127.195>]\ 

        <\equation*>
          <around*|\||<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|x|)>
        </equation*>

        Hence using [eq: <reference|eq 16.128.195>]\ 

        <\equation*>
          f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>\<leqslant\><around*|\||<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|x|)>
        </equation*>

        leading to the contradiction <math|f<rprime|'><around*|(|x|)>\<less\>f<rprime|'><around*|(|x|)>>.

        <item*|<math|f<rprime|'><around*|(|x|)>\<less\>0>>As
        <math|-f<rprime|'><around*|(|x|)>\<in\>\<bbb-R\><rsup|+>> \ there
        exist a <math|\<delta\><rsub|-f<rprime|'><around*|(|x|)>>\<in\>\<bbb-R\><rsup|+>>
        such that\ 

        <\equation>
          <label|eq 16.129.195>\<forall\>h\<in\>A<rsub|x><text| with
          >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|-f<rprime|'><around*|(|x|)>><text|
          so that ><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation>

        Let <math|k=<frac|min<around*|(|\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>|)>|2>>
        then <math|0\<less\><around*|\||-k|\|>=k\<less\>\<delta\>,\<delta\><rsub|-f<rprime|'><around*|(|x|)>>>
        so that <math|x-\<delta\>\<less\>x-k\<less\>x\<less\>x+\<delta\>> or
        <math|x-k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> so that

        <\equation>
          <label|eq 16.130.195>f<around*|(|x-k|)>\<leqslant\>f<around*|(|x|)>\<Rightarrow\>0\<leqslant\>-<around*|(|f<around*|(|x-k|)>-f<around*|(|x|)>|)>\<Rightarrow\>0\<leqslant\><frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>
        </equation>

        As <math|x-k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>A>
        we have that <math|-k\<in\>A<rsub|x>> so that by [eq: <reference|eq
        16.129.195>]

        <\equation*>
          <around*|\||<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation*>

        Hence using [eq: <reference|eq 16.130.195>]\ 

        <\equation*>
          -f<rprime|'><around*|(|x|)>\<leqslant\>-f<rprime|'><around*|(|x|)>+<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>\<leqslant\><around*|\||<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation*>

        leading to the contradiction that
        <math|-f<rprime|'><around*|(|x|)>\<less\>-f<rprime|'><around*|(|x|)>>
      </description>

      As in all case we have a contradiction the assumption is wrong, hence
      we must have that

      <\equation*>
        f<rprime|'><around*|(|x|)>=0.
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|diff Rolle's theorem><dueto|Rolle's theorem>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>
    and <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>>, the
    set of continuous functions between <math|<around*|[|a,b|]>> and
    <math|\<bbb-R\>> [see definition: <reference|continuity continuous
    function>], such that <math|f<around*|(|a|)>=f<around*|(|b|)>> and
    <math|f> has a derivative at every <math|x\<in\><around*|]|a,b|[>> [or
    equivalent <math|f> is Fréchet differentiable on <math|<around*|]|a,b|[>>
    [see theorem: <reference|diff derivate and frechet differential>]] then
    there exist a <math|\<zeta\>\<in\><around*|]|a,b|[>> such that
    <math|f<rprime|'><rsub|\<zeta\>>=0>.
  </theorem>

  <\note>
    As <math|<around*|]|a,b|[>> is a open set and
    <math|x\<in\><around*|]|a,b|[>\<subseteq\><around*|[|a,b|]>> it follows
    from [theorem: <reference|topology biggest open subset>] that \ <math|x>
    is a limit point of <math|<around*|[|a,b|]>> which is a prerequisite for
    the existance of a <with|font-series|bold|unique> derivative at <math|x>
    [see theorem: <reference|diff calculus derivate>].
  </note>

  <small-figure|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|0.140034gw|0.44gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|gr-dash-style|11100|gr-auto-crop|true|<graphics||<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|0|0>|<point|0.0|4.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|0|0>|<point|7.0|0.0>>>|<text-at|<math|a>|<point|2|-0.3>>|<text-at|b|<point|6|-0.3>>|<text-at|<math|>|<point|-1|1>>|<text-at|<math|f<around*|(|a|)>=f<around*|(|b|)>>|<point|-1.7|1>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|line-width|2ln|<spline|<point|2|1>|<point|4.0|3.0>|<point|6.0|1.0>>>|<with|color|red|line-width|2ln|<spline|<point|1|3>|<point|7.0|3.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><rsub|\<zeta\>>>|<point|3.8|3.5>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|dash-style|11100|<line|<point|4|0>|<point|4.0|3.0>>>>>|>

  <\proof>
    Take <math|k=f<around*|(|a|)>=f<around*|(|b|)>>. As <math|f> is
    continuous on <math|<around*|[|a,b|]>> we can use [theorem:
    <reference|connected image by a real continuous function of a closed
    interval is a closed interval>] to find <math|c,d\<in\>\<bbb-R\>> such
    that\ 

    <\equation*>
      f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>
    </equation*>

    Hence as <math|a\<in\><around*|[|a,b|]>> it follows that
    <math|k=f<around*|(|a|)>\<in\><around*|[|c,d|]>> so that
    <math|c\<leqslant\>k\<leqslant\>d> and we have the following cases to
    consider:

    <\description>
      <item*|<math|c=d=k>>Then <math|\<forall\>x\<in\><around*|[|a,b|]>> we
      have <math|f<around*|(|x|)>\<in\>f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>=<around*|{|k|}>>
      so that <math|f=C<rsub|k>>. As <math|a\<less\>b> there exist a
      <math|\<zeta\>\<in\><around*|]|a,b|[>> and we have for <math|\<zeta\>>
      that <math|C<rsub|k>> is Fréchet diferentiable at <math|\<zeta\>> [see
      theorem: <reference|diff constant function is differentiable>] with
      <math|D<rsub|\<zeta\>>f=D<rsub|\<zeta\>>C<rsub|k>=C<rsub|0>> so that by
      [theorem: <reference|diff derivate and frechet differential>]\ 

      <\equation*>
        f<rprime|'><rsub|\<zeta\>>=D<rsub|\<zeta\>>C<rsub|k><around*|(|1|)>=C<rsub|0><around*|(|1|)>=0
      </equation*>

      <item*|<math|c\<less\>k>>As <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>>
      there exist a <math|\<zeta\>\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|\<zeta\>|)>=c\<less\>k=f<around*|(|a|)>=f<around*|(|b|)>>
      so that <math|\<zeta\>\<neq\>a,b>, from which it follows that
      <math|\<zeta\>\<in\><around*|]|a,b|[>>. As <math|<around*|]|a,b|[>> is
      open there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<zeta\>\<in\>B<rsub|<around*|\|||\|>><around*|(|\<zeta\>,\<delta\>|)>\<subseteq\><around*|]|a,b|[>>.
      Further <math|\<forall\>x\<in\>B<rsub|<around*|\|||\|>><around*|(|\<zeta\>,\<delta\>|)>>
      we have <math|f<around*|(|x|)>\<in\>f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>>
      so that <math|f<around*|(|\<zeta\>|)>=c\<leqslant\>f<around*|(|x|)>>
      which proves that <math|\<zeta\>> is a local weak minimum of <math|f>.
      Hence using [theorem: <reference|diff derivate and local extremum>] it
      follows that <math|f<rsup|<rprime|'>><rsub|\<zeta\>>=0>. <math|>

      <item*|<math|k\<less\>d>>As <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>>
      there exist a <math|\<zeta\>\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|\<zeta\>|)>=d\<gtr\>k=f<around*|(|a|)>=f<around*|(|b|)>>
      so that <math|\<zeta\>\<neq\>a,b> from which it follows that
      <math|\<zeta\>\<in\><around*|]|a,b|[>>. As <math|<around*|]|a,b|[>> is
      open there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<zeta\>\<in\>B<rsub|<around*|\|||\|>><around*|(|\<zeta\>,\<delta\>|)>\<subseteq\><around*|]|a,b|[>>.
      Further <math|\<forall\>x\<in\>B<rsub|<around*|\|||\|>><around*|(|\<zeta\>,\<delta\>|)>>
      we have <math|f<around*|(|x|)>\<in\>f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>>
      so that <math|f<around*|(|x|)>\<leqslant\>d=f<around*|(|\<zeta\>|)>>
      which proves that <math|\<zeta\>> is a local weak maximum of
      <math|f<rsub|\|<around*|]|a,b|[>>>. Hence using [theorem:
      <reference|diff derivate and local extremum>] it follows that
      <math|f<rsup|<rprime|'>><rsub|\<zeta\>>=0>. <math|>
    </description>
  </proof>

  <\theorem>
    <label|diff Lagrange theorem><dueto|Lagrange's Mean Value theorem>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>
    and <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>> such
    that <math|f> has a derivative at every <math|x\<in\><around*|]|a,b|[>>
    [or equivalent <math|f> is Fréchet differentiable on
    <math|<around*|]|a,b|[>> \ [see theorem: <reference|diff derivate and
    frechet differential>]] then there exist a
    <math|\<xi\>\<in\><around*|]|a,b|[>> such that\ 

    <\equation*>
      f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|b-a|)>
    </equation*>

    <\note>
      As <math|<around*|]|a,b|[>> is a open set and
      <math|x\<in\><around*|]|a,b|[>\<subseteq\><around*|[|a,b|]>> it follows
      from [theorem: <reference|topology biggest open subset>] that
      \ <math|x> is a limit point of <math|<around*|[|a,b|]>> which is a
      prerequisite for the existance of a <with|font-series|bold|unique>
      derivative at <math|x> [see theorem: <reference|diff calculus
      derivate>].
    </note>
  </theorem>

  <small-figure|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|0.270022gw|0.470003gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-color|red|gr-dash-style-unit|2ln|gr-auto-crop|true|<graphics||<with|dash-style-unit|2ln|<line|<point|-3|0>|<point|5.0|3.0>>>|<with|color|red|dash-style-unit|2ln|<line|<point|-3|1>|<point|5.0|4.0>>>|<with|line-width|2ln|dash-style-unit|2ln|<spline|<point|-3|0>|<point|-1.0|1.75>|<point|1.6|1.0>|<point|3.7|2.0>|<point|5.0|3.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|dash-style-unit|2ln|<line|<point|-3|0>|<point|5.0|0.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|line-width|2ln|dash-style-unit|2ln|arrow-end|\<gtr\>|<line|<point|5|0>|<point|5.0|3.0>>>|<with|color|red|<line|<point|-3|1>|<point|6.0|1.0>>>|<with|color|red|line-width|2ln|dash-style-unit|2ln|arrow-end|\<gtr\>|<line|<point|6|1>|<point|6.0|4.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|a>|<point|-3|-0.3>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|b>|<point|5|-0.3>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|f<around*|(|b|)>-f<around*|(|a|)>>|<point|4|1.5>>>|<with|color|red|<text-at|<math|f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|b-a|)>>|<point|6.2|2.4>>>|<with|color|red|dash-style-unit|2ln|<line|<point|5|3>|<point|5.0|4.0>>>|<with|color|red|dash-style-unit|2ln|<line|<point|5.0|4.0>|<point|6.0|4.0>>>>>|>

  \;

  <\proof>
    As <math|a\<less\>b> we can define\ 

    <\equation*>
      g:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\><text| by
      >g<around*|(|x|)>=f<around*|(|x|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>|)>
    </equation*>

    then by [examples: <reference|continuity constant function>,
    <reference|continuity identity function>] and [theorems:
    <reference|continuity of sum of continuous functions>,
    <reference|continuity and subspace topology (1)>] it follows that

    <\equation*>
      g\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>
    </equation*>

    Further using [examples: <reference|diff constant function is
    differentiable>, <reference|diff identity function is differentiable>]
    and [theorems: <reference|diff derivate and frechet differential>,
    <reference|diff derivate operator is linear>, <reference|diff
    differentiability is a local property>] it follows that\ 

    <\equation*>
      \<forall\>x\<in\><around*|]|a,b|[><text| >g<text| is Fréchet
      differentiable at >x<text| with >g<rprime|'><rsub|x>=f<rprime|'><rsub|x>-<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>
    </equation*>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<around*|(|a|)>>|<cell|=>|<cell|f<around*|(|a|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|a-a|)>|)>=f<around*|(|a|)>-f<around*|(|a|)>=0>>|<row|<cell|g<around*|(|b|)>>|<cell|=>|<cell|f<around*|(|b|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|b-a|)>|)>=f<around*|(|b|)>-f<around*|(|a|)>+f<around*|(|b|)>-f<around*|(|a|)>=0>>>>
    </eqnarray*>

    so we can apply Rolle's theorem [theorem: <reference|diff Rolle's
    theorem>] to find a <math|\<zeta\>\<in\><around*|]|a,b|[>> such that

    <\equation*>
      g<rprime|'><rsub|\<zeta\>>=0
    </equation*>

    As\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<rprime|'><rsub|\<zeta\>>>|<cell|=>|<cell|f<rprime|'><rsub|\<zeta\>>-<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>>>>>
    </eqnarray*>

    it follows that\ 

    <\equation*>
      f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|b-a|)>
    </equation*>
  </proof>

  <\corollary>
    <label|diff Lagrange theorem (1)>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real numbers, \ <math|A\<subseteq\>\<bbb-R\>>,
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> such that
    <math|<around*|[|a,b|]>\<subseteq\>A> and
    <math|f:A\<rightarrow\>\<bbb-R\>> a function that has a derivative at
    every <math|x\<in\><around*|[|a,b|]>> [or equivalently is Fréchet
    differentiable at every <math|x\<in\><around*|[|a,b|]>> [see theorem:
    <reference|diff derivate and frechet differential>]] then there exist a
    <math|\<xi\>\<in\><around*|]|a,b|[>> such that\ 

    <\equation*>
      f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|b-a|)>
    </equation*>

    <\note>
      Let <math|x\<in\><around*|[|a,b|]>> then by [theorem:
      <reference|topology every element of a generalized interval is a limit
      point>] <math|x> is a limit point of <math|<around*|[|a,b|]>>, hence
      <math|x\<in\><around*|[|a,b|]><rprime|'>>. As
      <math|<around*|[|a,b|]>\<subseteq\>A> we have by [theorem:
      <reference|topology limit points and subsets>] that
      <math|<around*|[|a,b|]><rprime|'>\<subseteq\>A<rprime|'>> so that
      <math|x> is a limit point of <math|A> which is needed for the
      derivatieve at <math|x> to even exist.
    </note>
  </corollary>

  <\proof>
    Let <math|x\<in\><around*|[|a,b|]>> then by the hypothesis <math|f> has a
    derivative at <math|x>, hence, using [theorem: <reference|diff derivate
    and frechet differential>] <math|f> is Fréchet differentiable at
    <math|x>. By [theorem: <reference|diff differentiable function is
    continuous>] it follows that <math|f> is continuous at <math|x>, hence by
    [theorem: <reference|continuity and subspace topology (1)>] we have that
    <math|f<rsub|\|<around*|[|A,b|]>>> is continuous at <math|x>. So we have
    proved that\ 

    <\equation>
      <label|eq 16.262.12>f<rsub|\|<around*|[|a,b|]>>\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>
    </equation>

    Further if <math|x\<in\><around*|]|a,b|[>> then, as
    <math|<around*|]|a,b|[>\<subseteq\><around*|[|a,b|]>>, <math|f> has a
    derivative at <math|x>. As <math|<around*|]|a,b|[>> is open it follows
    from [theorem: <reference|diff derivative is local>] that
    <math|f<rsub|\|<around*|[|a,b|]>>> has a derivative at <math|x> with
    <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>>.
    Summarized we have\ 

    <\equation>
      <label|eq 16.263.12>\<forall\>x\<in\><around*|]|a,b|[><text|
      >f<rsub|\|<around*|[|a,b|]>><text| has a derivative at >z<text| with
      ><around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>
    </equation>

    The conditions for Lagrange's theorem [theorem: <reference|diff Lagrange
    theorem>] are satisfiedl by [eqs: <reference|eq 16.262.12>, <reference|eq
    16.263.12>] so that there exist a <math|\<zeta\>\<in\><around*|]|a,b|[>>
    such that\ 

    <\equation>
      <label|eq 16.264.12>f<rsub|\|<around*|[|a,b|]>><around*|(|b|)>-f<rsub|\|<around*|[|a,b|]>><around*|(|a|)>=<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|x>\<cdot\><around*|(|b-a|)>
    </equation>

    So we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|b|)>-f<around*|(|a|)>>|<cell|\<equallim\><rsub|a,b\<in\><around*|[|a,b|]>>>|<cell|f<rsub|\|<around*|[|a,b|]>><around*|(|b|)>-f<rsub|\|<around*|[|a,b|]>><around*|(|a|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.264.12>]>>>|<cell|<around*|(|f<rsub|\|<around*|[|a.b|]>>|)><rprime|'><rsub|x>\<cdot\><around*|(|b-a|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.264.12>]>>>|<cell|f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|b-a|)>>>>>
    </eqnarray*>
  </proof>

  <\corollary>
    <label|diff increasing decreasing function>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers, <math|A\<subseteq\>\<bbb-R\>>,
    <math|I\<subseteq\>A>

    <\equation*>
      I<text| of the forms ><around*|[|a,b|]>,<around*|[|a,b|[>,<around*|]|a,b|]>,<around*|]|a,b|[>,<around*|[|a,\<infty\>|[>,<around*|]|a,\<infty\>|[>,<around*|]|-\<infty\>,a|]>,<around*|]|-\<infty\>,a|[><text|
      where >a,b\<in\>\<bbb-R\><text| and >a\<less\>b
    </equation*>

    and

    <\equation*>
      f:A\<rightarrow\>\<bbb-R\>
    </equation*>

    a function that has a derivative <math|f<rprime|'><rsub|x>> at every
    point <math|x\<in\>I> [or equivalently is Fréchet differentiable on
    <math|I> [see theorem: <reference|diff derivate and frechet
    differential>] then we have:

    <\enumerate>
      <item>If <math|\<forall\>t\<in\>I> <math|0\<less\>f<rprime|'><rsub|t>>
      then <math|f> is strictly increasing on <math|I>

      <item>If <math|\<forall\>t\<in\>I> <math|0\<leqslant\>f<rprime|'><rsub|t>>
      then <math|f> is increasing on <math|I>.

      <item>If <math|\<forall\>t\<in\>I> <math|f<rprime|'><rsub|t>\<less\>0>
      then <math|f> is strictly decreasing on <math|I>.

      <item>If <math|\<forall\>t\<in\>I> <math|f<rprime|'><rsub|t>\<leqslant\>0>
      then <math|f> is decreasing on <math|I>.
    </enumerate>

    <\note>
      Let <math|x\<in\>I> then by [theorem: <reference|topology every element
      of a generalized interval is a limit point>] <math|x> is a limit point
      of <math|I>, hence <math|x\<in\>I<rprime|'>>. As <math|I\<subseteq\>A>
      we have by [theorem: <reference|topology limit points and subsets>]
      that <math|I<rprime|'>\<subseteq\>A<rprime|'>> so that <math|x> is a
      limit point of <math|A> which is needed for the derivatieve at <math|x>
      to even exist.
    </note>
  </corollary>

  <\proof>
    \ Let <math|x,y\<in\>I> with <math|x\<less\>y> then as <math|I> is a
    generalized interval [see theorem: <reference|interval generalized
    condition (1)>] it follows that <math|<around*|[|x,y|]>\<subseteq\>I\<subseteq\>A>,
    hence by the previous corollary [corollary: <reference|diff Lagrange
    theorem (1)>] there exist a <math|\<zeta\>\<in\><around*|]|x,y|[>> such
    that <math|f<around*|(|y|)>-f<around*|(|x|)>=f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|x-y|)>>.
    Summarized we have\ 

    <\equation>
      <label|eq 16.131.195>\<forall\>x,y\<in\>I<text| with >x\<less\>y<text|
      there exist a >\<zeta\>\<in\><around*|]|x,y|[><text| such that
      >f<around*|(|y|)>-f<around*|(|x|)>=f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|y-x|)>
    </equation>

    So we have that

    <\enumerate>
      <item>If <math|\<forall\>t\<in\>I> <math|0\<less\>f<rprime|'><rsub|t>>
      it follows that <math|0\<less\>f<rprime|'><rsub|\<zeta\>>> so that, as
      <math|x\<less\>y>, <math|0\<less\>f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|y-x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.131.195>]>>f<around*|(|y|)>-f<around*|(|x|)>> so that
      <math|f<around*|(|x|)>\<less\>f<around*|(|y|)>>. Hence <math|f> is
      strictly increasing.

      <item>If <math|\<forall\>t\<in\>I> <math|0\<leqslant\>f<rprime|'><rsub|t>>
      it follows that <math|0\<leqslant\>f<rprime|'><rsub|\<zeta\>>> so that,
      as <math|x\<less\>y>, <math|0\<leqslant\>f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|y-x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.131.195>]>>f<around*|(|y|)>-f<around*|(|x|)>> so that
      <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>. Hence <math|f> is
      increasing.

      <item>If <math|\<forall\>t\<in\>I> <math|f<rprime|'><rsub|t>\<less\>0>
      it follows that <math|f<rprime|'><rsub|\<zeta\>>\<less\>0> so that, as
      <math|x\<less\>y>, <math|0\<gtr\>f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|y-x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.131.195>]>>f<around*|(|y|)>-f<around*|(|x|)>> so that
      <math|f<around*|(|x|)>\<gtr\>f<around*|(|y|)>>. Hence <math|f> is
      strictly decreasing.

      <item>If <math|\<forall\>t\<in\>I> <math|f<rprime|'><rsub|t>\<leqslant\>0>
      it follows that <math|f<rprime|'><rsub|\<zeta\>>\<leqslant\>0> so that,
      as <math|x\<less\>y>, <math|0\<geqslant\>f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|y-x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.131.195>]>>f<around*|(|y|)>-f<around*|(|x|)>> so that
      <math|f<around*|(|x|)>\<geqslant\>f<around*|(|y|)>>. Hence <math|f> is
      decreasing.
    </enumerate>
  </proof>

  <\definition>
    <label|diff convex concave><index|concave function><index|convex
    function>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be
    the normed space of the real numbers,
    <math|A\<subseteq\>><math|\<bbb-R\>>, <math|<rigid|a,b\<in\>\<bbb-R\>>>
    with <math|a\<less\>b> and <math|<around*|[|a,b|]>\<subseteq\>A> and\ 

    <\equation*>
      f:A\<rightarrow\>\<bbb-R\>
    </equation*>

    a function then we say:

    <\enumerate>
      <item><math|f> is convex on <math|<around*|[|a,b|]>> if
      <math|\<forall\>x\<in\><around*|[|a,b|]>> we have

      <\equation*>
        f<around*|(|x|)>\<leqslant\><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>
      </equation*>

      <item><math|f> is concave on <math|<around*|[|a,b|]>> if
      <math|\<forall\>x\<in\><around*|[|a,b|]>> we have

      <\equation*>
        f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>=<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)>
      </equation*>
    </enumerate>

    In other words a function is concave on a interval if the function curve
    lies below the line connecting <math|<around*|(|a,f<around*|(|a|)>|)>>
    and <math|<around*|(|b,f<around*|(|b|)>|)>> and convex on a interval \ if
    the function curve lies above the line connecting
    <math|<around*|(|a,f<around*|(|a|)>|)>> and
    <math|<around*|(|b,f<around*|(|b|)>|)>>.
  </definition>

  <small-figure|<with|gr-mode|<tuple|edit|text-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.200045gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-dash-style-unit|2ln|gr-line-width|2ln|gr-color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|gr-auto-crop|true|<graphics||<with|arrow-end|\<gtr\>|line-width|2ln|dash-style-unit|2ln|<line|<point|-6|0>|<point|-1.0|0.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|dash-style-unit|2ln|<line|<point|-6|0>|<point|-6.0|5.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|dash-style-unit|2ln|<line|<point|1|0>|<point|6.0|0.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|dash-style-unit|2ln|<line|<point|1|0>|<point|1.0|5.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|line-width|2ln|dash-style-unit|2ln|<spline|<point|-5|1>|<point|-3.0|3.0>|<point|-1.0|2.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|line-width|2ln|dash-style-unit|2ln|<spline|<point|2|3>|<point|4.0|1.0>|<point|6.0|2.0>>>|<with|color|red|line-width|2ln|dash-style-unit|2ln|<line|<point|-5|1>|<point|-1.0|2.0>>>|<with|color|red|line-width|2ln|dash-style-unit|2ln|<line|<point|2|3>|<point|6.0|2.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|<around*|(|a,f<around*|(|a|)>|)>>|<point|-5|0.7>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|<around*|(|b,f<around*|(|b|)>|)>>|<point|-1|1.7>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|<around*|(|a,f<around*|(|a|)>|)>>|<point|2|3.3>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|<around*|(|b,f<around*|(|b|)>|)>>|<point|6|2.4>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|concave
  function|<point|-4|4>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|convex
  function|<point|3|4>>>>>|>

  \;

  <\theorem>
    <label|diff convex/concave alternative>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers, <math|A\<subseteq\>><math|\<bbb-R\>>,
    <math|<rigid|a,b\<in\>\<bbb-R\>>> with <math|a\<less\>b> and
    <math|<around*|[|a,b|]>\<subseteq\>A> and
    <math|f:A\<rightarrow\>\<bbb-R\>> a function then we have:\ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|f<text| is convex on
        ><around*|[|a,b|]>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>\<alpha\>,\<beta\>\<in\><around*|[|0,\<infty\>|[><text|
        with >\<alpha\>+\<beta\>=1<text| we have
        >f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<leqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>|<cell|>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|f<text| is concave on
        ><around*|[|a,b|]>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\><rsup|+><text|
        with >\<alpha\>+\<beta\>=1<text| we have
        >\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>\<leqslant\>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>|<cell|>>>>
      </eqnarray*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|x=\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x>|<cell|=>|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>a+<around*|(|1-\<alpha\>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|a-b|)>+b>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|(|a-b|)>\<less\>0\<wedge\>0\<leqslant\>\<alpha\>\<Rightarrow\>\<alpha\>\<cdot\><around*|(|a-b|)>\<leqslant\>0>>|<cell|0+b>>|<row|<cell|>|<cell|=>|<cell|b>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|x>|<cell|=>|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-\<beta\>|)>\<cdot\>a+\<beta\>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|a+\<beta\>\<cdot\><around*|(|b-a|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|0\<less\>b-a\<wedge\>0\<leqslant\>\<beta\>\<Rightarrow\>\<beta\>\<cdot\><around*|(|b-a|)>\<geqslant\>0>>|<cell|a+0>>|<row|<cell|>|<cell|=>|<cell|a>>>>
        </eqnarray*>

        So that\ 

        <\equation*>
          x\<in\><around*|[|a,b|]>
        </equation*>

        As <math|f> is convex on <math|<around*|[|a,b|]>> we have that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>|<cell|=>|<cell|f<around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-\<alpha\>\<cdot\>a-\<beta\>\<cdot\>b|)>+f<around*|(|b|)>\<cdot\><around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|<around*|(|1-\<beta\>|)>\<cdot\>b-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)>\<cdot\><around*|(|<around*|(|\<alpha\>-1|)>\<cdot\>a+\<beta\>\<cdot\>b|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|\<alpha\>\<cdot\>b-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)>\<cdot\><around*|(|-\<beta\>\<cdot\>a+\<beta\>\<cdot\>b|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\>\<alpha\>\<cdot\><around*|(|b-a|)>+f<around*|(|b|)>\<cdot\>\<beta\>\<cdot\><around*|(|b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>>>>
        </eqnarray*>

        <item*|<math|\<Leftarrow\>>>Let <math|x\<in\><around*|[|a,b|]>> then
        <math|\<alpha\>=<frac|b-x|b-a>\<in\><around*|[|0,\<ldots\>,\<infty\>|[>>
        and <math|\<beta\>=<frac|x-a|b-a>\<in\><around*|[|0,\<ldots\>,\<infty\>|[>>
        and

        <\equation*>
          \<alpha\>+\<beta\>=<frac|b-x|b-a>+<frac|x-a|b-a>=<frac|b-a|b-a>=1
        </equation*>

        so that\ 

        <\equation>
          <label|eq 16.150.152>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<leqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>
        </equation>

        Further

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>|<cell|=>|<cell|<frac|b-x|b-a>\<cdot\>a+<frac|x-a|b-a>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|b-x|)>\<cdot\>a+<around*|(|x-a|)>\<cdot\>b|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|b\<cdot\>a-x\<cdot\>a+x\<cdot\>b-a\<cdot\>b|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|x\<cdot\><around*|(|b-a|)>|b-a>=x>>|<row|<cell|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>>>>
        </eqnarray*>

        So substituting the above in [eq: <reference|eq 16.150.152>] proves
        that <math|f<around*|(|x|)>\<leqslant\><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>
        so that <math|f> is convex.
      </description>

      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|x=\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x>|<cell|=>|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>a+<around*|(|1-\<alpha\>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|a-b|)>+b>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|(|a-b|)>\<less\>0\<wedge\>0\<leqslant\>\<alpha\>\<Rightarrow\>\<alpha\>\<cdot\><around*|(|a-b|)>\<leqslant\>0>>|<cell|0+b>>|<row|<cell|>|<cell|=>|<cell|b>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|x>|<cell|=>|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-\<beta\>|)>\<cdot\>a+\<beta\>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|a+\<beta\>\<cdot\><around*|(|b-a|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|0\<less\>b-a\<wedge\>0\<leqslant\>\<beta\>\<Rightarrow\>\<beta\>\<cdot\><around*|(|b-a|)>\<geqslant\>0>>|<cell|a+0>>|<row|<cell|>|<cell|=>|<cell|a>>>>
        </eqnarray*>

        So that\ 

        <\equation*>
          x\<in\><around*|[|a,b|]>
        </equation*>

        As <math|f> is concave on <math|<around*|[|a,b|]>> we have that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>|<cell|=>|<cell|f<around*|(|x|)>>>|<row|<cell|>|<cell|\<geqslant\>>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-\<alpha\>\<cdot\>a-\<beta\>\<cdot\>b|)>+f<around*|(|b|)>\<cdot\><around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|<around*|(|1-\<beta\>|)>\<cdot\>b-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)>\<cdot\><around*|(|<around*|(|\<alpha\>-1|)>\<cdot\>a+\<beta\>\<cdot\>b|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|\<alpha\>\<cdot\>b-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)>\<cdot\><around*|(|-\<beta\>\<cdot\>a+\<beta\>\<cdot\>b|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\>\<alpha\>\<cdot\><around*|(|b-a|)>+f<around*|(|b|)>\<cdot\>\<beta\>\<cdot\><around*|(|b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>>>>
        </eqnarray*>

        <item*|<math|\<Leftarrow\>>>Let <math|x\<in\><around*|[|a,b|]>> then
        <math|\<alpha\>=<frac|b-x|b-a>\<in\><around*|[|0,\<ldots\>,\<infty\>|[>>
        and <math|\<beta\>=<frac|x-a|b-a>\<in\><around*|[|0,\<ldots\>,\<infty\>|[>>
        and

        <\equation*>
          \<alpha\>+\<beta\>=<frac|b-x|b-a>+<frac|x-a|b-a>=<frac|b-a|b-a>=1
        </equation*>

        so that\ 

        <\equation>
          <label|eq 16.151.152>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<geqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>
        </equation>

        Further

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>|<cell|=>|<cell|<frac|b-x|b-a>\<cdot\>a+<frac|x-a|b-a>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|b-x|)>\<cdot\>a+<around*|(|x-a|)>\<cdot\>b|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|b\<cdot\>a-x\<cdot\>a+x\<cdot\>b-a\<cdot\>b|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|x\<cdot\><around*|(|b-a|)>|b-a>=x>>|<row|<cell|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>>>>
        </eqnarray*>

        So substituting the above in [eq: <reference|eq 16.151.152>] proves
        that <math|f<around*|(|x|)>\<geqslant\><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>
        so that <math|f> is concave.
      </description>
    </enumerate>
  </proof>

  The next theorem shows the relation between the second derivative and
  convexity and concavity.

  <\theorem>
    <label|diff second derivate convex concave>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|A\<subseteq\>\<bbb-R\>>,
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> and
    <math|<around*|[|a,b|]>\<subseteq\>A>, <math|f:A\<rightarrow\>\<bbb-R\>>
    a function such that <math|f> has a <math|2>-the derivative on
    <math|<around*|[|a,b|]>> then

    <\enumerate>
      <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
      <math|0\<leqslant\>f<rsup|<around*|(|2|)>><rsub|x>> then <math|f> is
      convex on <math|<around*|[|a,b|]>>.

      <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
      <math|f<rsup|<around*|(|2|)>><rsub|x>\<leqslant\>0> then <math|f> is
      concave on <math|<around*|[|a,b|]>>.
    </enumerate>

    <\note>
      Let <math|x\<in\><around*|[|a,b|]>> then by [theorem:
      <reference|topology every element of a generalized interval is a limit
      point>] <math|x> is a limit point of <math|<around*|[|a,b|]>>, hence
      <math|x\<in\><around*|[|a,b|]><rprime|'>>. As
      <math|<around*|[|a,b|]>\<subseteq\>A> we have by [theorem:
      <reference|topology limit points and subsets>] that
      <math|<around*|[|a,b|]><rprime|'>\<subseteq\>A<rprime|'>> so that
      <math|x> is a limit point of <math|A> which is needed for the
      derivatieve at <math|x> to even exist.
    </note>
  </theorem>

  <\proof>
    Let <math|x\<in\><around*|[|a,b|]>> then we have either

    <\description>
      <item*|<math|x=a>>Then <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|a|)>=f<around*|(|x|)>>.
      As this result is independent of the sign of
      <math|f<rsup|<around*|(|2|)>><around*|(|x|)>> we have\ 

      <\equation*>
        <choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
        if >\<forall\>x\<in\><around*|]|a,b|[>
        f<rsup|<around*|(|2|)>>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
        if <math|\<forall\>x\<in\><around*|]|a,b|[>
        >>f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0>>>>>
      </equation*>

      <item*|<math|x=b>>Then <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|b|)>=f<around*|(|x|)>>.
      As this result is independent of the sign of
      <math|f<rsup|<around*|(|2|)>><around*|(|x|)>> we have\ 

      <\equation*>
        <choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
        if >f<rsup|<around*|(|2|)>><around*|(|x|)>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
        if >f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0>>>>>
      </equation*>

      <item*|<math|x\<in\><around*|]|a,b|[>>>Then\ 

      <\equation*>
        <frac|x-a|b-a>+<frac|b-x|b-a>=<frac|x-a+b-x|b-a>=1
      </equation*>

      so by multiplying both sides by <math|f<around*|(|x|)>> we have
      <math|f<around*|(|x|)>=<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>+<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>
      so that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>-<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>|<cell|>|<cell|>>|<row|<cell|<frac|b-x|b-a>\<cdot\>f<around*|(|a|)>+<frac|x-a|b-a>\<cdot\>f<around*|(|b|)>-<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>-<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>|b-a>\<cdot\><around*|(|f<around*|(|b|)>-f<around*|(|x|)>|)>-<frac|b-x|b-a>\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|a|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|<around*|(|b-x|)>\<cdot\><around*|(|x-a|)>|b-a>\<cdot\><frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|<frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>|)>>|<cell|>|<cell|<eq-number><label|eq
        16.134.195>>>>>
      </eqnarray*>

      As <math|\<forall\>x\<in\>A<rsup|\<circ\>>> [a open set] <math|f> has a
      <math|2>-the derivative it follows from [theorem: <reference|diff
      higher order derivate on a open set (1)>] that <math|f> has a
      derivative at every <math|x\<in\>A<rsup|\<circ\>>> and the function

      <\equation>
        <label|eq 16.143.200>f<rprime|'>:A<rsup|\<circ\>>\<rightarrow\>\<bbb-R\><text|
        where >f<rprime|'><rsub|><around*|(|x|)>=f<rprime|'><rsub|x><text|
        has >\<forall\>x\<in\>A<rsup|\<circ\>><text| a derivate at >x<text|
        with <math|f<rsup|<around*|(|2|)>><rsub|x>=<around*|(|f<rprime|'>|)><rprime|'><rsub|x>>>
      </equation>

      <math|>As <math|<around*|[|a,x|]>,<around*|[|x,b|]>\<subseteq\><around*|[|a,b|]>\<subseteq\>A<rsup|\<circ\>>>
      we can apply Lagrange's theorem [corollary: <reference|diff Lagrange
      theorem (1)>] on to find <math|y<rsub|1>\<in\><around*|]|a,x|[>>,
      <math|y<rsub|2>\<in\><around*|]|x,b|[>> such that\ 

      <\equation>
        <label|eq 16.135.195>f<around*|(|x|)>-f<around*|(|a|)>=f<rprime|'><rsub|y<rsub|1>>\<cdot\><around*|(|x-a|)><text|
        and >f<around*|(|b|)>-f<around*|(|x|)>=f<rprime|'><rsub|y<rsub|2>>\<cdot\><around*|(|b-x|)>
      </equation>

      Combining [eq: <reference|eq 16.134.195>] and [eq: <reference|eq
      16.135.195>] gives\ 

      <\equation>
        <label|eq 16.136.195><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|f<rprime|'><around*|(|y<rsub|2>|)>-f<rprime|'><around*|(|y<rsub|1>|)>|)>
      </equation>

      As <math|y<rsub|1>\<in\><around*|]|a,x|[>>,
      <math|y<rsub|2>\<in\><around*|]|x,b|[>> we have
      <math|a\<less\>y<rsub|1>\<less\>x\<less\>y<rsub|2>\<less\>b> so that
      <math|y<rsub|1>\<less\>y<rsub|2>> and
      <math|<around*|[|y<rsub|1>,y<rsub|2>|]>\<subseteq\><around*|[|a,b|]>\<subseteq\>A<rsup|\<circ\>>>.
      Hence using [eq: <reference|eq 16.143.200>] we can apply Lagrange's
      theorem [theorem: <reference|diff Lagrange theorem (1)>] on
      <math|f<rprime|'>> to find a <math|z\<in\><around*|]|y<rsub|1>,y<rsub|2>|[>>
      such that\ 

      <\equation*>
        f<rprime|'><around*|(|y<rsub|2>|)>-f<rprime|'><around*|(|y<rsub|1>|)>=<around*|(|f<rsup|<around*|(|1|)>>|)><rprime|'><rsub|z>\<cdot\><around*|(|y<rsub|2>-y<rsub|1>|)>=f<rsub|z><rsup|<around*|(|2|)>>\<cdot\><around*|(|y<rsub|2>-y<rsub|1>|)>
      </equation*>

      substituting this in [eq: <reference|eq 16.136.195>] gives

      <\equation*>
        <frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\>f<rsup|<around*|(|2|)>><around*|(|z|)>
      </equation*>

      Now as <math|x\<in\><around*|[|a,b|]>> we have that
      <math|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<geqslant\>0>
      so that\ 

      <\equation*>
        <choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
        if >\<forall\>x\<in\><around*|]|a,b|[>
        f<rsup|<around*|(|2|)>><around*|(|x|)>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
        if <math|\<forall\>x\<in\><around*|]|a,b|[>
        >>f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0>>>>>
      </equation*>
    </description>

    So in all cases we have <math|<choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
    if >\<forall\>x\<in\><around*|]|a,b|[>
    f<rsup|<around*|(|2|)>><around*|(|x|)>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
    if <math|\<forall\>x\<in\><around*|]|a,b|[>
    >>f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0>>>>>> proving that\ 

    <\enumerate>
      <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
      <math|0\<leqslant\>f<rsup|<around*|(|2|)>><rsup|><around*|(|x|)>> then
      <math|f> is convex on <math|<around*|[|a,b|]>>

      <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
      <math|f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0> then
      <math|f> is concave on <math|<around*|[|a,b|]>>
    </enumerate>
  </proof>

  <subsection|Fundamental theorem of Calculus for the Riemann Integral>

  We examine now the relation between the Riemann integral and the derivative
  of a function.

  <\theorem>
    <label|diff fundamental theorem of calculus (1)><dueto|Fundamental
    Theorem of Calculus (I)>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a <with|font-series|bold|Banach space>, <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b> and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    continuous function [so that by [theorem: <reference|riemann integral
    over [a,b] to [a,c] [c,b]>] <math|\<forall\>x\<in\><around*|[|a,b|]><text|
    ><big|int><rsub|a><rsup|x>f<rsub|\|<around*|[|a,x|]>>> exist] then for
    the function

    <\equation*>
      F:<around*|[|a,b|]>\<rightarrow\>X<text| defined by
      >F<around*|(|x|)>=<big|int><rsub|a><rsup|x>f<rsub|\|<around*|[|a,x|]>>
    </equation*>

    we have that <math|F> has a derivative on <math|<around*|[|a,b|]>> and
    <math|F<rprime|'>=f> where\ 

    <\equation*>
      F<rprime|'>:<around*|[|a,b|]>\<rightarrow\>X<text| is defined by
      >F<rprime|'><around*|(|x|)>=F<rprime|'><rsub|x>
    </equation*>

    <\note>
      Let <math|x\<in\><around*|[|a,b|]>> then by [theorem:
      <reference|topology every element of a generalized interval is a limit
      point>] <math|x> is a limit point of <math|<around*|[|a,b|]>>, hence
      <math|x\<in\><around*|[|a,b|]><rprime|'>>. As
      <math|<around*|[|a,b|]>\<subseteq\>A> we have by [theorem:
      <reference|topology limit points and subsets>] that
      <math|<around*|[|a,b|]><rprime|'>\<subseteq\>A<rprime|'>> so that
      <math|x> is a limit point of <math|A> which is needed for the
      derivatieve at <math|x> to even exist.
    </note>
  </theorem>

  <\proof>
    Let <math|x\<in\><around*|[|a,b|]>> then by [theorem: <reference|topology
    every element of a generalized interval is a limit point>]\ 

    <\equation*>
      x<text| is a limit point of ><around*|[|a,b|]>
    </equation*>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is
    continuous at <math|x> there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
    such that for <math|y\<in\><around*|[|a,b|]>> with
    <math|<around*|\||y-x|\|>\<less\>\<delta\>> it follows that
    <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
    Let <math|h\<in\><around*|[|a,b|]><rsub|x>\<Rightarrow\>x+h\<in\><around*|[|a,b|]>>
    with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then we have for
    <math|h> either:\ 

    <\description>
      <item*|<math|0\<less\>h>>If <math|y\<in\><around*|[|x,x+h|]>> then
      <math|<around*|\||y-x|\|>=y-x\<leqslant\>x+h-x=h=<around*|\||h|\|>\<less\>\<delta\>>
      so that <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
      Hence, as <math|f<around*|(|y|)>-f<around*|(|x|)>=f<around*|(|y|)>-C<rsub|f<around*|(|x|)>><around*|(|y|)>=<around*|(|f-C<rsub|f<around*|(|x|)>><around*|(|y|)>|)>>
      it follows that\ 

      <\equation>
        <label|eq 16.272.12>\<forall\>y\<in\><around*|[|x,x+h|]><text| we
        have ><around*|\<\|\|\>|<around*|(|f-C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x,x+h|]>>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|f-C<rsub|f<around*|(|x|)>>|)><around*|(|y|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|F<around*|(|x+h|)>-F<around*|(|x|)>|h>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|a><rsup|x+h>f<rsub|\|<around*|[|a,x+h|]>>|)>-<around*|(|<big|int><rsub|a><rsup|x>f<rsub|\|<around*|[|a,x|]>>|)>|h>-f<around*|(|x|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|riemann integral over [a,b] to [a,c]
        [c,b]>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|a><rsup|x>f<rsub|\|<around*|[|a,x|]>>|)>+<around*|(|<big|int><rsub|x><rsup|x+h>f<rsub|\|<around*|[|x,x+h|]>>|)>-<around*|(|<big|int><rsup|x><rsub|a>f<rsub|\|<around*|[|a,x|]>>|)>|h>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x><rsup|x+h>f<rsub|\|<around*|[|x,x+h|]>>|h>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|x><rsup|x+h>f<rsub|\|<around*|[|x,x+h|]>>|)>-h\<cdot\>f<around*|(|x|)>|h>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[example:
        <reference|riemann constant function>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|x><rsup|x+h>f<rsub|\|<around*|[|x,x+h|]>>|)>-<big|int><rsub|x><rsup|x+h><around*|(|C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x,x+h|]>>|h>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|riemann riemann integral is
        linear>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x><rsup|x+h><around*|(|f<rsub|\|<around*|[|x,x+h|]>>-<around*|(|C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x,x+h|]>>|)>|h>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x><rsup|x+h><around*|(|f-C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x,x+h|]>>|h>|\<\|\|\>>>|<cell|\<equallim\><rsub|0\<less\>h>>|<cell|>>|<row|<cell|<frac|<around*|\<\|\|\>|<big|int><rsub|x><rsup|x+h><around*|(|f-C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x,x+h|]>>|\<\|\|\>>|h>>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.272.12>]>\<wedge\><text|[theorem: <reference|rieman
        integral properties>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|x+h-x|h>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item*|<math|h\<less\>0>>Then <math|h=-<around*|\||h|\|>>. If
      <math|y\<in\><around*|[|x+h,x|]>=<around*|[|x-<around*|\||h|\|>,x|]>>
      then <math|<around*|\||y-x|\|>=x-y\<leqslant\>x-<around*|(|x-<around*|\||h|\|>|)>\<less\>\<delta\>>
      and thus <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
      Hence as <math|f<around*|(|y|)>-f<around*|(|x|)>=f<around*|(|y|)>-C<rsub|f<around*|(|x|)>><around*|(|y|)>=<around*|(|f-C<rsub|f<around*|(|x|)>>|)><around*|(|h|)>>
      it follows that\ 

      <\equation>
        <label|eq 16.273.12>\<forall\>y\<in\><around*|[|x+h,x|]><text| we
        have ><around*|\<\|\|\>|<around*|(|f-C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x,x+h|]>>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|f-C<rsub|f<around*|(|x|)>>|)><around*|(|y|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|F<around*|(|x+h|)>-F<around*|(|x|)>|h>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|F<around*|(|x-<around*|\||h|\|>|)>-F<around*|(|x|)>|-<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|a><rsup|x-<around*|\||h|\|>>f<rsub|\|<around*|[|a,x-<around*|\||h|\|>|]>>|)>-<around*|(|<big|int><rsub|a><rsup|x>f<rsub|\|<around*|[|a,x|]>>|)>|-<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|riemann integral over [a,b] to [a,c]
        [c,b]>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|a><rsup|x-<around*|\||h|\|>>f<rsub|\|<around*|[|a,x-<around*|\||h|\|>|]>>|)>-<around*|(|<big|int><rsub|a><rsup|x-<around*|\||h|\|>>f<rsub|\|<around*|[|a,x-<around*|\||h|\|>|]>>|)>-<around*|(|<big|int><rsub|x-<around*|\||h|\|>><rsup|x>f<rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>|)>|-<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|-<around*|(|<big|int><rsub|x-<around*|\||h|\|>><rsup|x>f<rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>|)>|-<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|x-<around*|\||h|\|>><rsup|x>f<rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>|)>-h\<cdot\>f<around*|(|x|)>|<around*|\||h|\|>>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[example:
        <reference|riemann constant function>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|x-<around*|\||h|\|>><rsup|x>f<rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>|)>-<around*|(|<big|int><rsub|x-<around*|\||h|\|>><rsup|x><around*|(|C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>|)>|<around*|\||h|\|>>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|riemann riemann integral is
        linear>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x-<around*|\||h|\|>><rsup|x><around*|(|f<rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>-<around*|(|C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>|)>|<around*|\||h|\|>>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x-<around*|\||h|\|>><rsup|x><around*|(|f-C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>|<around*|\||h|\|>>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|\<\|\|\>|<big|int><rsub|x-<around*|\||h|\|>><rsup|x><around*|(|f-C<rsub|f<around*|(|x|)>>|)><rsub|\|<around*|[|x-<around*|\||h|\|>,x|]>>|\<\|\|\>>|<around*|\||h|\|>>>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.273.12>]>\<wedge\><text|[theorem: <reference|rieman
        integral properties>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|<around*|(|x-<around*|(|x-<around*|\||h|\|>|)>|)>|<around*|\||h|\|>>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </description>

    Hence we have in all cases that <math|<around*|\<\|\|\>|<frac|F<around*|(|x+h|)>-F<around*|(|x|)>|h>-f<around*|(|x|)>|\<\|\|\>>>
    which by definition [theorem: <reference|diff calculus derivate>] proves
    that <math|F> has a derivative at <math|x> with\ 

    <\equation*>
      F<rprime|'><rsub|x>=f<around*|(|x|)>
    </equation*>

    As this is true for every <math|x> in <math|<around*|[|a,b|]>> we have if
    we define <math|F<rprime|'>:<around*|[|a,b|]>\<rightarrow\>X> by
    <math|F<rprime|'><around*|(|x|)>=F<rprime|'><rsub|x>> that\ 

    <\equation*>
      F<rprime|'>=f
    </equation*>
  </proof>

  We use now the above theorem to prove the Fundamental Theorem of Calculus.

  <\theorem>
    <label|diff fundamental theorem of calculus (2)><dueto|Fundamental
    Theorem of Calculus (II)>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> and
    <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function such that <math|f>
    has derivatives on <math|<around*|[|a,b|]>> and
    <with|font-series|bold|<math|f<rprime|'>> is continuous> then\ 

    <\equation*>
      f<around*|(|b|)>-f<around*|(|a|)>=<big|int><rsub|a><rsup|b>f<rprime|'>
    </equation*>

    <\note>
      Let <math|x\<in\><around*|[|a,b|]>> then by [theorem:
      <reference|topology every element of a generalized interval is a limit
      point>] <math|x> is a limit point of <math|<around*|[|a,b|]>>, hence
      <math|x\<in\><around*|[|a,b|]><rprime|'>>. As
      <math|<around*|[|a,b|]>\<subseteq\>A> we have by [theorem:
      <reference|topology limit points and subsets>] that
      <math|<around*|[|a,b|]><rprime|'>\<subseteq\>A<rprime|'>> so that
      <math|x> is a limit point of <math|A> which is needed for the
      derivatieve at <math|x> to even exist.
    </note>
  </theorem>

  <\proof>
    Given that <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a Banach space, <math|f> has a derivative on <math|<around*|[|a,b|]>>
    and <math|f<rprime|'>:<around*|[|a,b|]>\<rightarrow\>X> is continuous, it
    follows from [theorem: <reference|riemann integral over [a,b] to [a,c]
    [c,b]>] <math|>that <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|<big|int><rsub|a><rsup|x>f<rprime|'>> is well defined. This allows
    us to define\ 

    <\equation*>
      g:<around*|[|a,b|]>\<rightarrow\>X<text| by
      >g<around*|(|x|)>=f<around*|(|a|)>+<big|int><rsub|a><rsup|x>f<rprime|'>
    </equation*>

    So if we define\ 

    <\equation*>
      F:<around*|[|a,b|]>\<rightarrow\>X<text| by
      >F<around*|(|x|)>=<big|int><rsub|a><rsup|x>f<rprime|'>
    </equation*>

    then we have that\ 

    <\equation*>
      g=C<rsub|f<around*|(|a|)>>+F
    </equation*>

    Let <math|x\<in\><around*|[|a,b|]>>. By [example: <reference|diff
    derivative of constant>] <math|C<rsub|f<around*|(|a|)>>> has derivates on
    <math|<around*|[|a,b|]>> with <math|<around*|(|C<rsub|f<around*|(|a|)>>|)><rprime|'>=C<rsub|0>>
    and using [theorem: <reference|diff fundamental theorem of calculus (1)>]
    <math|F> has derivatives on <math|<around*|[|a,b|]>> with
    <math|F<rprime|'>=f<rprime|'>>. Using then the linearity of derivation
    [see theorem: <reference|diff derivate operator is linear>] it follows
    that <math|g> has derivatives on <math|<around*|[|a,b|]>> with\ 

    <\equation>
      <label|eq 16.179.200>g<rprime|'>=<around*|(|C<rsub|f<around*|(|a|)>>|)><rprime|'>+F<rprime|'>=C<rsub|0>+f<rprime|'>=f<rprime|'>
    </equation>

    Note also that <math|g<around*|(|a|)>=C<rsub|f<around*|(|a|)>>+F<around*|(|a|)>=f<around*|(|a|)>+<big|int><rsub|a><rsup|a>f<rprime|'>\<equallim\><rsub|<text|[definition:
    <reference|riemann integral (1)>]>>f<around*|(|a|)>+0=f<around*|(|a|)>>
    or\ 

    <\equation>
      <label|eq 16.180.200>f<around*|(|a|)>=g<around*|(|a|)>
    </equation>

    Define now the function <math|\<varphi\>> by\ 

    <\equation*>
      \<varphi\>:<around*|[|a,b|]>\<rightarrow\>X<text| where
      >\<varphi\><around*|(|x|)>=<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>
    </equation*>

    Let <math|x\<in\><around*|[|a,b|]>> <math|f> and <math|g> has a
    derivative at <math|x> we have that <math|f-g> has a derivative at
    <math|x> [see theorem: <reference|diff derivate operator is linear>] so
    that by [theorem: <reference|diff differentiable function is continuous>]
    <math|f-g> is continuous at <math|x>. Hence
    <math|f-g:<around*|[|a,b|]>\<rightarrow\>X> is a continuous function.
    Further by [theorem: <reference|continuity norm is uniform continuous>]
    <math|<around*|\<\|\|\>||\<\|\|\>>:X\<rightarrow\>\<bbb-R\><text|>>
    defined by <math|<around*|\<\|\|\>||\<\|\|\>><around*|(|x|)>=<around*|\<\|\|\>||\<\|\|\>>>
    is a continuous function. Hence, using <reference|continuity
    composition>]\ 

    <\equation*>
      <around*|\<\|\|\>||\<\|\|\>>\<circ\><around*|(|f-g|)>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\><text|
      is a continuous function>
    </equation*>

    As <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|<around*|(|<around*|\<\|\|\>||\<\|\|\>>\<circ\><around*|(|f-g|)>|)><around*|(|x|)>=<around*|\<\|\|\>||\<\|\|\>><around*|(|<around*|(|f-g|)><around*|(|x|)>|)>=<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>=\<varphi\><around*|(|x|)>>
    it follows that <math|\<varphi\>=<around*|\<\|\|\>||\<\|\|\>>\<circ\><around*|(|f-g|)>>,
    hence we have

    <\equation*>
      \<varphi\>\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>
    </equation*>

    Let <math|x\<in\><around*|]|a,b|[>> then as <math|<around*|]|a,b|[>> is
    open there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>\<subseteq\><around*|]|a,b|[>>.
    If <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then
    <math|<around*|\||x+h-x|\|>=<around*|\||h|\|>\<less\>\<delta\>> so that
    <math|x+h\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>\<subseteq\><around*|]|a,b|[>>.
    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<frac|\<varphi\><around*|(|x+h|)>-\<varphi\><around*|(|x|)>|h>|\|>>|<cell|=>|<cell|<around*|\||<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-g<around*|(|x+h|)>|\<\|\|\>>-<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>|h>|\|>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\||<around*|\<\|\|\>|f<around*|(|x+h|)>-g<around*|(|x+h|)>|\<\|\|\>>-<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>|\|>|<around*|\||h|\|>>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|normed absolute value norm
      differences>]>>>|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-g<around*|(|x+h|)>+<around*|(|g<around*|(|x|)>-f<around*|(|x|)>|)>|\<\|\|\>>|<around*|\||h|\|>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|(|f<around*|(|x+h|)>|)>-f<around*|(|x|)>-<around*|(|g<around*|(|x+h|)>-g<around*|(|x|)>|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|
      <around*|[|eq: <with|mode|text|<reference|eq
      16.179.200>>|]>\<Rightarrow\>f<rprime|'>=g<rprime|'>>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>-<around*|(|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>>>>>
    </eqnarray*>

    Summarized, if <math|<text|>0\<less\><around*|\||h|\|>\<less\>\<delta\><text|
    then >>

    <\equation>
      <label|eq 16.181.200><around*|\||<frac|\<varphi\><around*|(|x+h|)>-\<varphi\><around*|(|x|)>|h>|\|>\<leqslant\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>
    </equation>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> has
    derivatives on <math|<around*|[|a,b|]>> we have that <math|f> has a
    derivative at <math|x>. Hence there exist a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that if
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|1>> and
    <math|h\<in\><around*|]|a,b|[><rsub|x>\<Rightarrow\>x,x+h\<in\><around*|]|a,b|[>>
    that

    <\equation*>
      <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
    </equation*>

    Likewise as <math|g> has derivatives on <math|<around*|[|a,b|]>> we have
    by definition that <math|g> has a derivative at <math|x>. Hence there
    exist a <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that if
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|2>> and
    <math|h\<in\><around*|]|a,b|[><rsub|x>\<Rightarrow\>x,x+h\<in\><around*|]|a,b|[>>
    that

    <\equation*>
      <around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
    </equation*>

    So if <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\>,\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
    and <math|h\<in\><around*|]|a,b|[><rsub|x>> we have using the above and
    [eq: <reference|eq 16.181.200>] that\ 

    <\equation*>
      <around*|\||<frac|\<varphi\><around*|(|x+h|)>-\<varphi\><around*|(|x|)>|h>-0|\|>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>
    </equation*>

    Hence\ 

    <\equation*>
      \<forall\>x\<in\><around*|]|a,b|[><text| >\<varphi\><text| has a
      derivative at >x<text| and <math|>>\<varphi\><rprime|'><rsub|x>=0
    </equation*>

    Let <math|x,y\<in\><around*|[|a,b|]>> then we can use Lagrange's theorem
    [see theorem: <reference|diff Lagrange theorem>] to find a
    <math|\<zeta\>\<in\><around*|]|a,b|[>> with\ 

    <\equation*>
      \<varphi\><around*|(|x|)>-\<varphi\><around*|(|y|)>=\<varphi\><rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|x-y|)>=0\<cdot\><around*|(|x-y|)>=0
    </equation*>

    This prove that <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|\<varphi\><around*|(|x|)>=\<varphi\><around*|(|a|)>=<around*|\<\|\|\>|f<around*|(|a|)>-g<around*|(|a|)>|\<\|\|\>>\<equallim\><rsub|<text|[eq:
    <reference|eq 16.180.200>]>>0>. Hence
    <math|\<forall\>x\<in\><around*|[|a,b|]>> we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>=\<varphi\><around*|(|x|)>=0
    </equation*>

    proving that <math|f<around*|(|x|)>=g<around*|(|x|)>> so that
    <math|f<around*|(|b|)>=g<around*|(|b|)>=f<around*|(|a|)>+<big|int><rsub|a><rsup|b>f<rprime|'>>.
    Hence\ 

    <\equation*>
      f<around*|(|b|)>-f<around*|(|a|)>=<big|int><rsub|a><rsup|b>f<rprime|'>
    </equation*>
  </proof>

  <subsection|Mean Value Theorems>

  The mean value theorems shows how the function values varies based on the
  variation of the function arguments. In essence they specify for a function
  <math|f:X\<rightarrow\>Y> a relation between
  <math|f<around*|(|x|)>-f<around*|(|y|)>> and <math|x-y>. A example that is
  already proved is the Lagrange's Mean Value Theorem [see theorem:
  <reference|diff Lagrange theorem>] that states that
  <math|f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|b-a|)>>
  where <math|\<zeta\>\<in\><around*|[|a,b|]>>. For these new Mean Value
  Theorems we first need a little lemma that says that translating and
  scaling is <math|C<rsup|1>>.

  <\lemma>
    <label|lemma 16.135.200>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed vector space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    the normed spaces of real numbers, <math|x,y\<in\>X> and <math|a,b> with
    <math|a\<less\>b> then we have that the function

    <\equation*>
      \<sigma\>:<around*|[|a,b|]>\<rightarrow\>X<text| defined by
      >\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>
    </equation*>

    is <math|C<rsup|1>> on <math|<around*|[|a,b|]>>. Further
    <math|\<forall\>t\<in\><around*|[|a,b|]>>
    <math|D<rsub|t>\<sigma\>\<in\>L<around*|(|\<bbb-R\>,X|)>> is defined by

    <\equation*>
      D<rsub|t>\<sigma\>:\<bbb-R\>\<rightarrow\>X<text| where
      <math|D<rsub|t>\<sigma\><around*|(|h|)>=h\<cdot\><around*|(|y-x|)>>>
    </equation*>

    so that by [theorem: <reference|diff derivate and frechet differential>]
    <math|\<sigma\><rprime|'><rsub|t>> exist and

    <\equation*>
      \<sigma\><rprime|'><rsub|t>\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate and frechet
      differential>]>>D<rsub|t>\<sigma\><around*|(|1|)>=y-x
    </equation*>
  </lemma>

  <\proof>
    First by [theorem: <reference|topology every element of a generalized
    interval is a limit point>] we have <math|\<forall\>t\<in\><around*|[|a,b|]>>
    that <math|t> is a limit point of <math|<around*|[|a,b|]>>, so, using
    [theorem: <reference|diff tangent cone and limit point>],
    <math|S<rsub|<around*|[|a,b|]>><around*|(|t|)>=\<bbb-R\>>. In other words

    <\equation>
      <label|eq 16.277.12>\<forall\>t\<in\>\<bbb-R\><text| we have
      >S<rsub|<around*|[|a,b|]>><around*|(|t|)>=\<bbb-R\>
    </equation>

    Define

    <\equation*>
      L:\<bbb-R\>\<rightarrow\>X<text| by
      >L<around*|(|h|)>=h\<cdot\><around*|(|y-x|)>
    </equation*>

    then by [theorem: <reference|continuity norm L(x)=a.x>]
    <math|L\<in\>L<around*|(|X,\<bbb-R\>|)>>. Let
    <math|t\<in\><around*|[|a,b|]>>, <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    then if <math|h\<in\>\<bbb-R\><rsub|x>> with
    <math|<around*|\||h|\|>\<less\>1> we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<sigma\><around*|(|t+h|)>-\<sigma\><around*|(|t|)>-L<around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|x+<around*|(|t+h|)>\<cdot\><around*|(|y-x|)>-<around*|(|x+t\<cdot\><around*|(|y-x|)>|)>-h\<cdot\><around*|(|y-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h\<cdot\><around*|(|y-x|)>-h\<cdot\><around*|(|y-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>>>>
    </eqnarray*>

    proving that <math|\<sigma\>> is Fréchet differentiable at <math|t> with

    <\equation*>
      D<rsup|<around*|[|1|]>><rsub|t>\<sigma\>=D<rsub|t>\<sigma\>=L<rsub|\|S<rsub|<around*|[|a,b|]>><around*|(|t|)>>\<equallim\><rsub|<text|[eq:<reference|eq
      16.277.12>]>>L
    </equation*>

    Hence we have that <math|\<sigma\>> is <math|1>-times differentiable on
    <math|\<bbb-R\>> and the function\ 

    <\equation*>
      D<rsup|<around*|[|1|]>> \<sigma\>:<around*|[|a,b|]>\<rightarrow\>L<around*|(|X,\<bbb-R\>|)><text|
      defined by >D<rsup|<around*|[|1|]>>\<sigma\><around*|(|t|)>=D<rsup|<around*|[|1|]>><rsub|t>\<sigma\>=L
    </equation*>

    is equal to the constant function <math|C<rsub|L>>. As by [theorem:
    <reference|continuity constant function>] <math|C<rsub|L>> is continuous
    it follows that <math|D<rsup|<around*|[|1|]>>\<sigma\>> is continuous,
    hence <math|\<sigma\>> is <math|C<rsup|1>> on <math|<around*|[|a,b|]>>.
  </proof>

  <\theorem>
    <label|diff mean value theorem (1)><dueto|Mean Value Theorem (I>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed vector space, <math|A\<subseteq\>X>,
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> the normed
    spaces of real numbers, <math|x,y\<in\>A> such that
    <math|<around*|{|<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y\|t\<in\><around*|[|0,1|]>|}>>
    and <math|<rigid|f:A\<rightarrow\>\<bbb-R\>>> a function such that
    <math|\<forall\>t\<in\><around*|[|0,1|]>> <math|f> is Fréchet
    differentiable at <math|<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y> then there
    exists a <math|\<zeta\>\<in\><around*|]|0,1|[>> such that\ 

    <\equation*>
      f<around*|(|y|)>-f<around*|(|x|)>=D<rsub|z>f<around*|(|y-x|)><text|
      where >z=x+\<zeta\>\<cdot\><around*|(|y-x|)>
    </equation*>
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      \<sigma\>:<around*|[|0,1|]>\<rightarrow\>X<text| by
      >\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>=<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y
    </equation*>

    then we have by the hypothesis that

    <\equation*>
      \<sigma\><around*|(|<around*|[|0,1|]>|)>=<around*|{|x+t\<cdot\><around*|(|y-x|)>\|t\<in\><around*|[|0,1|]>|}>\<subseteq\>A
    </equation*>

    and we can define\ 

    <\equation*>
      f\<circ\>\<sigma\>:<around*|[|0,1|]>\<rightarrow\>\<bbb-R\>
    </equation*>

    Let <math|t\<in\><around*|[|0,1|]>> then <math|f> is Fréchet
    differentiable at <math|<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y=\<sigma\><around*|(|t|)>>
    and by [lemma: <reference|lemma 16.135.200>] <math|\<sigma\>> is Fréchet
    differentiable at <math|t>. So using [theorem: <reference|diff chain
    rule>] we have that\ 

    <\equation>
      <label|eq 16.278.12>f\<circ\>\<sigma\><text| is Fréchet differentiable
      at >t<text| with >D<rsub|t><around*|(|f\<circ\>\<sigma\>|)>=D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>
    </equation>

    where by [lemma: <reference|lemma 16.135.200>]\ 

    <\equation>
      <label|eq 16.279.12>\<forall\>h\<in\>\<bbb-R\><text|
      >D<rsub|t>\<sigma\><around*|(|h|)>=h\<cdot\><around*|(|y-x|)>
    </equation>

    So that by [theorem: <reference|diff derivate and frechet differential>]
    <math|<around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t>> exist and

    <\equation*>
      <around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t><below|=|<text|[eq:
      <reference|eq 16.278.12>]>><around*|(|D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>|)><around*|(|1|)>=D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|D<rsub|t>\<sigma\><around*|(|1|)>|)><below|=|<text|[eq:
      <reference|eq 16.279.12>]>>D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|1\<cdot\><around*|(|y-x|)>|)>=D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|y-x|)>
    </equation*>

    hence we have\ 

    <\equation>
      <label|eq 16.280.12>\<forall\>t\<in\><around*|[|0,1|]><text|
      ><around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t><text| exist where
      ><around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t>=D<rsub|z>f<around*|(|y-x|)><text|
      where >z=\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>
    </equation>

    Using [theorem: <reference|diff differentiable function is continuous>]
    on [eq: <reference|eq 16.278.12>] it follows that
    <math|f\<circ\>\<sigma\>> is continuous at <math|t> so that\ 

    <\equation>
      <label|eq 16.281.12>f\<circ\>\<sigma\>\<in\>\<cal-C\><around*|[|<around*|[|0,1|]>,\<bbb-R\>|]>
    </equation>

    The above allows us to use Lagrange's theorem [theorem: <reference|diff
    Lagrange theorem>] so that there exist a
    <math|\<zeta\>\<in\><around*|]|0,1|[>> such that\ 

    <\equation>
      <label|eq 16.282.12><around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>-<around*|(|f\<circ\>\<sigma\>|)><around*|(|0|)>=<around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|1-0|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.280.12>]>>D<rsub|z>f<around*|(|y-x|)><text| where
      >z=x+t\<cdot\><around*|(|y-x|)>
    </equation>

    Finally

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|y|)>-f<around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x+1\<cdot\><around*|(|y-x|)>|)>-f<around*|(|x+0\<cdot\><around*|(|y-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<sigma\><around*|(|1|)>|)>-f<around*|(|\<sigma\><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>-<around*|(|f\<circ\>\<sigma\>|)><around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.282.12>]>>>|<cell|D<rsub|z>f<around*|(|y-x|)><text|
      where >z=x+t\<cdot\><around*|(|y-x|)>>>>>
    </eqnarray*>
  </proof>

  We generalize now the Mean Value Theorem to functions where the codomain of
  the function is a arbitrary normed space. To do this we need the concept of
  convex sets.

  <\definition>
    <label|diff convex set><dueto|Convex Sets>Let <math|X> be a vector space
    over <math|\<bbb-K\>> then <math|C\<subseteq\>X> is
    <with|font-series|bold|convex> if <math|\<forall\>x,y\<in\>C> we have
    <math|\<forall\>t\<in\><around*|[|0,1|]>> that
    <math|x+t\<cdot\><around*|(|y-x|)>=<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y\<in\>C>.
  </definition>

  Best examples of complex sets are open and closes balls in a normed space
  as is proved in the next theorems.

  <\theorem>
    <label|diff balls are convex>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|x\<in\>X> and
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> then
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>> and
    <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>
    are convex.
  </theorem>

  <\proof>
    Let <math|x\<in\>X>, <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>,
    <math|y,z\<in\>X> and <math|t\<in\><around*|[|0,1|]>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>y+t\<cdot\>z-x|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>y+t\<cdot\>z-x+t\<cdot\>x-t\<cdot\>x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>y-x\<cdot\><around*|(|1-t|)>+t\<cdot\>z-t\<cdot\>x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\><around*|(|y-x|)>+t\<cdot\><around*|(|z-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\><around*|(|y-x|)>|\<\|\|\>>+<around*|\<\|\|\>|t\<cdot\><around*|(|z-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||1-t|\|>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|0\<leqslant\>1-t,t>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>><eq-number><label|eq
      16.187.200>>>>>
    </eqnarray*>

    Hence if <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>y+t\<cdot\>z-x|\<\|\|\>>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.187.200>]>>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|(|1-t|)>\<cdot\>\<delta\>+t\<cdot\>\<delta\>>>|<row|<cell|>|<cell|=>|<cell|\<delta\>>>>>
    </eqnarray*>

    proving that <math|>

    <\equation*>
      <around*|(|1-t|)>\<cdot\>y+t\<cdot\>z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>
    </equation*>

    Further if <math|y,z\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>y+t\<cdot\>z-x|\<\|\|\>>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.187.200>]>>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|1-t|)>\<cdot\>\<delta\>+t\<cdot\>\<delta\>>>|<row|<cell|>|<cell|=>|<cell|\<delta\>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      <around*|(|1-t|)>\<cdot\>y+t\<cdot\>z\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>|\<wide-bar\>>
    </equation*>
  </proof>

  <\theorem>
    <label|diff mean value theorem (2)><dueto|Mean Value Theorem
    (II><label|diff mean value theorem (0)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> a
    function. Assume that there is a <with|font-series|bold|convex subset
    ><math|C\<subseteq\>A> such that <math|f> is <math|C<rsup|1>> on <math|C>
    and there exist a <math|k\<in\>\<bbb-R\>> such that
    <math|\<forall\>x\<in\>C> <math|<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>k>
    then\ 

    <\equation*>
      \<forall\>x,y\<in\>C<text| we have ><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>
    </equation*>
  </theorem>

  <\proof>
    Take <math|x,y\<in\>C>. Define the function\ 

    <\equation*>
      \<sigma\>:<around*|[|0,1|]>\<rightarrow\>X<text| by
      >\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>
    </equation*>

    then by [lemma: <reference|lemma 16.135.200>]\ 

    <\equation>
      <label|eq 16.284.12>\<sigma\><text| is >C<rsup|1><text| on
      ><around*|[|0,1|]><text| and >\<forall\>t\<in\><around*|[|0,1|]><text|
      >D<rsub|t>\<sigma\>=L<text| where >L:\<bbb-R\>\<rightarrow\>X<text| is
      defined by >L<around*|(|h|)>=h\<cdot\>*<around*|(|y-x|)>
    </equation>

    Let <math|t\<in\><around*|[|0,1|]>> then as <math|x,y\<in\>C> and
    <math|C> is convex we have that <math|\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>\<in\>C>
    so that\ 

    <\equation>
      <label|eq 16.285.12>\<sigma\><around*|(|<around*|[|0,1|]>|)>\<subseteq\>C\<subseteq\>A
    </equation>

    As <math|f> is <math|C<rsup|1>> on <math|C> and <math|\<sigma\>> is
    <math|C<rsup|1>> on <math|<around*|[|0,1|]>> we have by [theorem:
    <reference|diff chain rule higher order class>] that\ 

    <\equation>
      <label|eq 16.286.12>f\<circ\>\<sigma\>:<around*|[|0,1|]>\<rightarrow\>Y<text|
      is >C<rsup|1><text| on ><around*|[|0,1|]>
    </equation>

    and <math|\<forall\>t\<in\><around*|[|0,1|]>> that <math|\<sigma\>> is
    Fréchet differentiable at <math|t> and <math|f> is differentiable at
    <math|\<sigma\><around*|(|t|)>> so that by the chain rule [theorem:
    <reference|diff chain rule>]

    <\equation>
      <label|eq 16.287.12>\<forall\>t\<in\><around*|[|0,1|]><text|
      >f\<circ\>\<sigma\><text| is Fréchet differentiable at >t<text| with
      >D<rsub|t><around*|(|f\<circ\>\<sigma\>|)>=D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>
    </equation>

    Let <math|t\<in\><around*|[|0,1|]>> then by the above and [theorem:
    <reference|diff derivate and frechet differential>]
    <math|f\<circ\>\<sigma\>> has a derivative at <math|t> and\ 

    <\equation*>
      <around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t>=D<rsub|t><around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.287.12>]>><around*|(|D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>|)><around*|(|1|)>=D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|D<rsub|\<sigma\>><around*|(|1|)>|)><below|=|<text|[eq:
      <reference|eq 16.284.12>]>>D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|y-x|)>
    </equation*>

    hence\ 

    <\equation>
      <label|eq 16.288.12>\<forall\>t\<in\><around*|[|0,1|]><text| we have
      ><around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t>=D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|y-x|)>
    </equation>

    As <math|f\<circ\>\<sigma\>> is <math|C<rsup|1>> on
    <math|<around*|[|0,1|]>> it follows from [theorem: <reference|diff C^1
    and derivates (1)>] that\ 

    <\equation*>
      <around*|(|f\<circ\>\<sigma\>|)><rprime|'>:<around*|[|0,1|]>\<rightarrow\>Y<text|
      defined by ><around*|(|f\<circ\>\<sigma\>|)><rprime|'><around*|(|t|)>=<around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t><text|
      is continuous>
    </equation*>

    Using then the fundamental theorem of calculus [theorem: <reference|diff
    fundamental theorem of calculus (2)>] that

    <\equation*>
      <around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>-<around*|(|f\<circ\>\<sigma\>|)><around*|(|0|)>=<big|int><rsub|0><rsup|1><around*|(|f\<circ\>\<sigma\>|)><rprime|'>
    </equation*>

    which as <math|f<around*|(|x|)>=f<around*|(|x+0\<cdot\><around*|(|y-x|)>|)>=f<around*|(|\<sigma\><around*|(|0|)>|)>=<around*|(|f\<circ\>\<sigma\>|)><around*|(|0|)>>
    and <math|f<around*|(|y|)>=f<around*|(|x+1\<cdot\><around*|(|y-x|)>|)>=f<around*|(|\<sigma\><around*|(|1|)>|)>=<around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>>
    results in\ 

    <\equation>
      <label|eq 16.289.12>f<around*|(|x|)>-f<around*|(|y|)>=<big|int><rsub|0><rsup|1><around*|(|f\<circ\>\<sigma\>|)><rprime|'>
    </equation>

    Now <math|\<forall\>t\<in\><around*|[|0,1|]>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f\<circ\>\<sigma\>|)><rprime|'><around*|(|t|)>|\<\|\|\>><rsub|Y>>|<cell|<below|=|<text|[eq:
      <reference|eq 16.288.12>]>>>|<cell|<around*|\<\|\|\>|D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D<rsub|\<sigma\><around*|(|t|)>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|<below|\<leqslant\>|t\<in\><around*|[|0,1|]>\<subseteq\>C\<wedge\>hypothesis>>|<cell|k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>

    Using then [theorem: <reference|rieman integral properties> (4)] on the
    above gives <math|<big|int><rsub|0><rsup|1><around*|(|f\<circ\>\<sigma\>|)><rprime|'>\<leqslant\><around*|(|k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>|)>\<cdot\><around*|(|1-0|)>=k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>
    which combined with [eq: <reference|eq 16.289.12>] proves finally that\ 

    <\equation*>
      f<around*|(|x|)>-f<around*|(|y|)>\<leqslant\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>
    </equation*>
  </proof>

  For the next Mean Value theorem we introduce the concept of line segements.

  <\definition>
    <label|diff linesegement>Let <math|X> be a vector space,
    <math|a,b\<in\>X> then the <with|font-series|bold|line segment connecting
    a to b> noted as <math|L<rsub|a,b>> is defined to be the set

    <\equation*>
      L<rsub|a,b>=<around*|{|<around*|(|1-t|)>\<cdot\>a+t\<cdot\>b\|t\<in\><around*|[|0,1|]>|}>=<around*|{|a+t\<cdot\><around*|(|b-a|)>\|t\<in\><around*|[|0,1|]>|}>\<subseteq\>X
    </equation*>

    <\note>
      By taking <math|t=0,1> it follows that <math|a,b\<in\>L<rsub|a,b>>
    </note>
  </definition>

  <\example>
    <label|diff line segment [0,1]><math|<around*|[|0,1|]>=L<rsub|0,1>> in
    <math|\<bbb-R\>>
  </example>

  <\proof>
    If <math|x\<in\>L<rsub|0,1>> then there exist a
    <math|t\<in\><around*|[|0,1|]>> such that
    <math|x=<around*|(|1-t|)>\<cdot\>0+t\<cdot\>1=t\<in\><around*|[|0,1|]>>
    so that\ 

    <\equation*>
      L<rsub|0,1>\<subseteq\><around*|[|0,1|]>
    </equation*>

    On the other hand if <math|x\<in\><around*|[|0,1|]>> then if we take
    <math|t=x> we have <math|x=t=<around*|(|1-t|)>\<cdot\>0+t\<cdot\>1\<in\>L<rsub|0,1>>
    which proves that <math|<around*|[|0,1|]>\<subseteq\>L<rsub|0,1>>. Hence
    we have

    <\equation*>
      L<rsub|0,1>=<around*|[|0,1|]>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.144.201>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|a,b\<in\>X> then <math|L<rsub|a,b>> is
    convex, compact and bounded.
  </lemma>

  <\proof>
    Let <math|x,y\<in\>L<rsub|a,b>> then there exists
    <math|t<rsub|x>,t<rsub|y>\<in\><around*|[|0,1|]>> such that\ 

    <\equation*>
      x=<around*|(|1-t<rsub|x>|)>\<cdot\>a+t<rsub|x>\<cdot\>b<text| and
      >y=<around*|(|1-t<rsub|y>|)>\<cdot\>a+t<rsub|y>\<cdot\>b
    </equation*>

    Let <math|t\<in\><around*|[|0,1|]>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y>|<cell|=>|<cell|<around*|(|1-t|)>\<cdot\><around*|(|<around*|(|1-t<rsub|x>|)>\<cdot\>a+t<rsub|x>\<cdot\>b|)>+t\<cdot\><around*|(|<around*|(|1-t<rsub|y>|)>\<cdot\>a+t<rsub|y>\<cdot\>b|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-t|)>\<cdot\><around*|(|1-t<rsub|x>|)>\<cdot\>a+<around*|(|1-t|)>\<cdot\>t<rsub|x>\<cdot\>b+t\<cdot\><around*|(|1-t<rsub|y>|)>\<cdot\>a+t\<cdot\>t<rsub|y>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|1-t|)>\<cdot\><around*|(|1-t<rsub|x>|)>+t\<cdot\><around*|(|1-t<rsub|y>|)>|)>\<cdot\>a+<around*|(|<around*|(|1-t|)>\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-t<rsub|x>-t+t\<cdot\>t<rsub|x>+t-t\<cdot\>t<rsub|y>|)>\<cdot\>a+<around*|(|t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-<around*|(|t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>|\<nobracket\>>|)>\<cdot\>a+<around*|(|t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-s|)>\<cdot\>a+s\<cdot\>b<text|
      where >s=t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>>>>>
    </eqnarray*>

    where <math|s=t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>>. In other
    words\ 

    <\equation*>
      <around*|(|1-t|)>\<cdot\>a+t\<cdot\>b<text| where
      >s=t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>=<around*|(|1-t|)>\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>
    </equation*>

    Now as <math|0\<leqslant\>t,t<rsub|x>,t<rsub|y>\<leqslant\>1>
    <math|0\<leqslant\>1-t<below|\<Rightarrow\>|t<rsub|x>\<leqslant\>1>0\<leqslant\><around*|(|1-t|)>\<cdot\>t<rsub|x>\<leqslant\><around*|(|1-t|)>>
    and <math|t\<cdot\>t<rsub|x>\<leqslant\>t> so that
    <math|<rigid|0\<leqslant\><around*|(|1-t|)>\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>\<leqslant\><around*|(|1-t|)>+t=1>>
    hence we have\ 

    <\equation*>
      <around*|(|1-t|)>\<cdot\>a+t\<cdot\>b<text| where
      >s\<in\><around*|[|0,1|]>
    </equation*>

    which prove that <math|<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y\<in\>L<rsub|a,b>>.
    Hence we have that\ 

    <\equation*>
      L<rsub|a,b><text| is onvex>
    </equation*>

    Define\ 

    <\equation*>
      \<sigma\>:\<bbb-R\>\<rightarrow\>X by
      \<sigma\><around*|(|t|)>=<around*|(|1-t|)>\<cdot\>a+t\<cdot\>b
    </equation*>

    then trivially

    <\equation*>
      \<sigma\><around*|(|<around*|[|0,1|]>|)>=L<rsub|a,b>
    </equation*>

    Further given <math|s\<in\>\<bbb-R\>> let
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then if we take
    <math|\<delta\>=<frac|\<varepsilon\>|<around*|\<\|\|\>|a-b|\<\|\|\>><rsub|X>+1>>
    then we have for <math|t\<in\>\<bbb-R\>> with
    <math|<around*|\||t-s|\|>\<less\>\<delta\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<sigma\><around*|(|s|)>-\<sigma\><around*|(|t|)>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-s|)>\<cdot\>a+s\<cdot\>b-<around*|(|<around*|(|1-t|)>\<cdot\>a+t\<cdot\>b|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-s|)>\<cdot\>a-<around*|(|1-t|)>\<cdot\>a+s\<cdot\>b-t\<cdot\>b|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-s-1+t|)>\<cdot\>a+<around*|(|s-t|)>\<cdot\>b|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|s-t|)>\<cdot\><around*|(|b-a|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||s-t|\|>\<cdot\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|<around*|\<\|\|\>|a-b|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    proving that <math|\<sigma\>> is continuous at <math|s>. As
    <math|s\<in\>\<bbb-R\>> was chosen arbitrary it follows that
    <math|\<sigma\>> is continuous. As <math|<around*|[|0,1|]>> is compact
    [see theorem: <reference|compact Heine Borel (1)>] and <math|\<sigma\>>
    is continuous it follows from [theorem: <reference|compact and continuous
    functions>] that

    <\equation*>
      L<rsub|a,b>=\<sigma\><around*|(|<around*|[|0,1|]>|)><text| is compact>
    </equation*>

    Applying then [theorem: <reference|compact and bounded>] proves that\ 

    <\equation*>
      L<rsub|a,b><text| is bounded>
    </equation*>
  </proof>

  Using the above we have the following corollary to the Mean Value Theorem
  (II) [see theorem: <reference|diff mean value theorem (2)>].

  <\corollary>
    <label|diff mean value theorem (2.1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> a
    function that is <math|C<rsup|1>> on <math|A>. Assume that there exists
    <math|x,y\<in\>X> such that <math|<rigid|L<rsub|x,y>=<around*|{|t\<cdot\>x+<around*|(|1-t|)>\<cdot\>y\|t\<in\><around*|[|0,1|]>|}>\<subseteq\>>A>
    and there exist a <math|k\<in\>\<bbb-R\>> such that
    <math|\<forall\>x\<in\>L<rsub|x,y>> <math|<rigid|<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>k>>
    then\ 

    <\equation*>
      \<forall\>x,y\<in\>L<rsub|x,y><text| we have
      ><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>
    </equation*>
  </corollary>

  <\proof>
    Using [lemma: <reference|lemma 16.144.201>] <math|L<rsub|x,y>> is convex,
    further as <math|L<rsub|x,y>\<subseteq\>A> and <math|f> is
    <math|C<rsup|1>> on <math|A> <math|f> is <math|C<rsup|1>> on
    <math|L<rsub|x,y>>. Hence we can use the Mean Value Theorem (II) [see
    theorem: <reference|diff mean value theorem (2)>] to get the required
    result.
  </proof>

  <\theorem>
    <label|diff mean value theorem (3)><dueto|Mean Value Theorem (III)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|A\<subseteq\>X>, <math|x,y\<in\>X> such that
    <math|L<rsub|x,y>\<subseteq\>A> and <math|f:A\<rightarrow\>Y> a function
    that is <math|C<rsup|1>> on <math|A> then\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)><text|>
    </equation*>

    exists and

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>
    </equation*>
  </theorem>

  <\proof>
    As <math|f> is <math|C<rsup|1>> on <math|A> we have by [theorem:
    <reference|diff C^n on a set condition>] that <math|f> is <math|1>-times
    differentiable on <math|A> and that <math|D<rsup|<around*|[|1|]>>f:A\<rightarrow\>L<rsub|1><around*|[|X;Y|]>=L<around*|(|X,Y|)>>
    defined by <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f<below|=|def>D<rsub|x>f>.
    Hence we have that\ 

    <\equation*>
      f<text| is >1<text|-times differentiable on >A
    </equation*>

    and\ 

    <\equation*>
      D f:A\<rightarrow\>L<around*|(|X,Y|)><text| defined by >D
      f<around*|(|x|)>=D<rsub|x>f<text| is continuous.>
    </equation*>

    Further by \ [lemma: <reference|lemma 16.144.201>] <math|L<rsub|x,y>> is
    compact so that by [theorem: <reference|compact and continuous
    functions>] <math|D f<around*|(|L<rsub|x,y>|)>> is compact. Applying then
    [theorem: <reference|compact and bounded>] proves that <math|D
    f<around*|(|L<rsub|x,y>|)>> is bounded, hence there exist a
    <math|M\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>L<rsub|1>,L<rsub|2>\<in\>D f<around*|(|L<rsub|x,y>|)>> we
    have \ <math|<around*|\<\|\|\>|L<rsub|1>-L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>M>.
    Let <math|\<zeta\>\<in\>L<rsub|x,y>\<subseteq\>A> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|\<zeta\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|D
      f<around*|(|\<zeta\>|)>-D f<around*|(|x|)>+D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D
      f<around*|(|\<zeta\>|)>-D f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|<below|\<leqslant\>|\<zeta\>,x\<in\>L<rsub|x,y>\<Rightarrow\>D
      f<around*|(|x|)>,D f<around*|(|\<zeta\>|)>\<in\>D
      f<around*|(|L<rsub|x,y>|)>>>|<cell|M+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>>>
    </eqnarray*>

    proving that <math|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>=<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<zeta\>|)>|\<\|\|\>>\|\<zeta\>\<in\>L<rsub|x,y>|}>> is
    bounded above by <math|><math|<rigid|M+<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>. As
    <math|\<bbb-R\>> is conditionally complete [see theorem:
    <reference|complex RC is conditional complete>] and
    <math|<rigid|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>\<neq\>\<varnothing\>>>
    [because <math|x\<in\>L<rsub|x,y>\<Rightarrow\>L<rsub|x,y>\<neq\>\<varnothing\>>]
    it follows that\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)><text|
      exist>
    </equation*>

    As <math|L<rsub|x,y>> is convex [see lemma: <reference|lemma
    16.144.201>], <math|x,y\<in\>L<rsub|x,y>>,
    <math|L<rsub|x,y>\<subseteq\>A> and <math|\<forall\>\<zeta\>\<in\>L<rsub|x,y>>

    <\equation*>
      <around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)><rsub|>
    </equation*>

    it follows from [theorem: <reference|diff mean value theorem (2)>] that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>
    </equation*>
  </proof>

  <\corollary>
    <label|diff mean value theorem (3.1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>A>,
    <math|f:A\<rightarrow\>Y> a function that is <math|C<rsup|1>> on <math|A>
    then <math|\<forall\>y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    we have that\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|y+t\<cdot\><around*|(|z-y|)>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>

    exist and\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|y+t\<cdot\><around*|(|z-y|)>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|X>
    </equation*>
  </corollary>

  <\proof>
    Let <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    then as open balls are convex [see theorem: <reference|diff balls are
    convex>] we have by [definition: <reference|diff convex set>] that
    <math|L<rsub|z,y>=<around*|{|y+t\<cdot\><around*|(|z-y|)>\|t\<in\><around*|[|0,1|]>|}>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>A>.
    So by the previous theorem [theorem: <reference|diff mean value theorem
    (3)>]\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|z,y>|}>|)>
    </equation*>

    exists and\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|X>
    </equation*>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|r\<in\><around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|z,y>|}>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>\<zeta\>\<in\>L<rsub|z,y><text|
      with >r=<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>><rsub|>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>t\<in\><around*|[|0,1|]><text|
      with >\<zeta\>=y+t\<cdot\><around*|(|z-y|)>\<wedge\>r=<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>><rsub|>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>t\<in\><around*|[|0,1|]><text|
      with >r=<around*|\<\|\|\>|D<rsub|y+t\<cdot\><around*|(|z-y|)>>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|r\<in\><around*|{|<around*|\<\|\|\>|D<rsub|y+t\<cdot\><around*|(|z-y|)>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>>>>>
    </eqnarray*>

    So <math|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|z,y>|}>=<around*|{|<around*|\<\|\|\>|D<rsub|y+t\<cdot\><around*|(|z-y|)>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>>
    proving that\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|y+t\<cdot\><around*|(|z-y|)>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>

    exist and\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|y+t\<cdot\><around*|(|z-y|)>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>>
    </equation*>
  </proof>

  <\theorem>
    <label|diff mean value theorem (4)><dueto|Mean Value Theorem (IV)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|A\<subseteq\>X>, <math|a,b\<in\>X> such that
    <math|L<rsub|a,b>\<subseteq\>A> and <math|f:A\<rightarrow\>Y> a function
    that is <math|C<rsup|1>> on <math|A> then <math|\<forall\>x\<in\>A> we
    have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|a|)>-f<around*|(|b|)>-D<rsub|x>f<around*|(|a-b|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f-D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|a,b>|}>|)>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|X>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x\<in\>A> and define\ 

    <\equation>
      <label|eq 16.194.201>g:A\<rightarrow\>Y<text| by
      >g<around*|(|\<zeta\>|)>=f<around*|(|\<zeta\>|)>-D<rsub|x>f<around*|(|\<zeta\>|)>
    </equation>

    Then, as <math|f> is <math|C<rsup|1>> on <math|A> [so Fréchet
    differentiable on <math|x>] and <math|D<rsub|x>f\<in\>L<around*|(|X,Y|)>>
    is <math|C<rsup|\<infty\>>> on <math|X> [see example: <reference|diff
    linear mapping is infinite times differentiable>], it follows from
    [theorem: <reference|diff higher order differential is linear>] that
    <math|g> is <math|C<rsup|1>> on <math|A>. Hence we have
    <math|\<forall\>\<zeta\>\<in\>A> that <math|g> is differentiable at
    <math|\<zeta\>\<in\>A> with

    <\equation>
      <label|eq 16.195.201>D<rsub|\<zeta\>>g=D<rsub|\<zeta\>>f-D<rsub|\<zeta\>><around*|(|D<rsub|x>f|)>\<equallim\><rsub|<text|[example:
      <reference|diff linear mappings are
      differentiable>]>>D<rsub|\<zeta\>>f-D<rsub|x>f
    </equation>

    By the Mean Value Theorem (III) [theorem: <reference|diff mean value
    theorem (3)>] it follows that\ 

    <\equation*>
      <around*|\<\|\|\>|g<around*|(|a|)>-g<around*|(|b|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>g|\<\|\|\>><rsub|\|L<around*|(|X,Y|)>><around*|\||\<zeta\>\<in\>L<rsub|a,b>|\|>|}>|)>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|X>
    </equation*>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|a|)>-f<around*|(|b|)>-D<rsub|x>f<around*|(|a-b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|a|)>-f<around*|(|b|)>-<around*|(|D<rsub|x>f<around*|(|a|)>-D<rsub|x>f<around*|(|b|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|<rsub|<text|[eq:
      <reference|eq 16.194.201>]>>>|<cell|<around*|\<\|\|\>|g<around*|(|a|)>-g<around*|(|b|)>|\<\|\|\>><rsub|<around*|\||Y|\|>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>g|\<\|\|\>><rsub|\|L<around*|(|X,Y|)>><around*|\||\<zeta\>\<in\>L<rsub|a,b>|\|>|}>|)>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.195.201>]>>>|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<varsigma\>>f-D<rsub|x>f|\<\|\|\>><rsub|\|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|a,b>|}>|)>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>
  </proof>

  <section|Symmetry of Higher Order Differentials>

  We set out now to prove that <math|D<rsup|<around*|[|n|]>><rsub|x>f<around*|(|h<rsub|1>:\<ldots\>:h<rsub|n>|)>=D<rsup|<around*|[|n|]>><rsub|x>f<around*|(|h<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:h<rsub|\<sigma\><around*|(|n|)>>|)>>
  where <math|\<sigma\>\<in\>P<rsub|n>> or, using the multilinear
  representation of the higher order differential, that
  <math|<rigid|D<rsup|n><rsub|x>f<around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>=D<rsup|n><rsub|x>f<around*|(|h<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,h<rsub|\<sigma\><around*|(|n|)>>|)>>>.
  In other words <math|D<rsup|n><rsub|x>f> is a symmetric multilinear
  function. The proof is rather elaborated, so to simplify it we divide the
  proof in different lemma'a. First we prove symmetry for the case
  <math|n=2>.

  <\lemma>
    <label|lemma 16.155.203>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|U> a open set in <math|X> and
    <math|f:U\<rightarrow\>Y> a function that is <math|C<rsup|2>> on <math|U>
    then <math|\<forall\>x\<in\>U> we have <math|\<forall\>u,v\<in\>X> that

    <\equation*>
      <around*|(|D<rsup|<around*|[|2|]>><rsub|x>f|)><around*|(|v|)><around*|(|w|)>=<around*|(|D<rsup|<around*|[|2|]>><rsub|x>f|)><around*|(|w|)><around*|(|v|)>
    </equation*>

    or for the function defined by

    <\equation*>
      D<rsup|<around*|[|2|]>>f:U\<rightarrow\>L<rsub|2><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|2|]>>f<around*|(|x|)>=D<rsup|<around*|[|2|]>><rsub|x>f
    </equation*>

    we have

    <\equation*>
      <around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>|)><around*|(|v|)><around*|(|w|)>=<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>|)><around*|(|w|)><around*|(|v|)>
    </equation*>

    <\note>
      The proof of this lemma makes explicit use of the fact that <math|U> is
      open.
    </note>
  </lemma>

  <\proof>
    Let <math|x\<in\>U> then as <math|U> is open there exist a
    <math|r\<in\>\<bbb-R\><rsup|+>> such that\ 

    <\equation*>
      x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,r|)>\<subseteq\>U
    </equation*>

    Let <math|v,w\<in\>X> be such that <math|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\><frac|r|4>,<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\><frac|r|4>>
    and define\ 

    <\equation>
      <label|eq 16.212.203>\<varphi\><rsub|v,w>:<around*|]|-2,2|[>\<rightarrow\>X<text|
      by >\<varphi\><rsub|v,w><around*|(|t|)>=x+t\<cdot\>v<text| and
      >\<psi\><rsub|v,w>:<around*|]|-2,2|[>\<rightarrow\>X<text| by
      >\<psi\><rsub|v,w><around*|(|t|)>=x+w+t\<cdot\>v
    </equation>

    If <math|t\<in\><around*|]|-2,2|[>> then we have

    <\equation*>
      <around*|\<\|\|\>|\<varphi\><rsub|v,w><around*|(|t|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|t\<cdot\>v|\<\|\|\>><rsub|X>=<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|x>\<less\>2\<cdot\><frac|r|4>\<less\>r
    </equation*>

    and

    <\equation*>
      <around*|\<\|\|\>|\<psi\><rsub|v,w><around*|(|t|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|w+t\<cdot\>v|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\><frac|r|4>+2\<cdot\><frac|r|4>\<less\>r
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 16.213.203>\<varphi\><rsub|v,w><around*|(|<around*|]|-2,2|[>|)>\<subseteq\>U\<wedge\>\<psi\><rsub|v,w><around*|(|<around*|]|-2,2|[>|)>\<subseteq\>U
    </equation>

    The above allows us to define

    <\equation>
      <label|eq 16.214.203>g<rsub|v,w>:<around*|]|-2,2|[>\<rightarrow\>Y<text|
      by >g<rsub|v,w>=f\<circ\>\<psi\><rsub|v,w>-f\<circ\>\<varphi\><rsub|v,w>
    </equation>

    As by [example: <reference|diff f(t)=a.x+y is infinite differentiable>]
    <math|\<psi\><rsub|v,w>,\<varphi\><rsub|v,w>> are
    <math|C<rsup|\<infty\>>> on <math|U> and <math|f> is \ <math|C<rsup|2>>
    on <math|U> it follows from [theorems: <reference|diff chain rule higher
    order class>, <reference|diff higher order differential is linear>] that
    <math|g<rsub|v,w>> is <math|C<rsup|2>> on <math|<around*|]|-2,2|[>>.
    Hence by [theorem: <reference|diff C^n and C^m>] <math|g<rsub|v,w>> is
    <math|C<rsup|1>> on <math|<around*|]|-2,2|[>>. So, as
    <math|L<rsub|0,1>\<equallim\><rsub|<text|[example: <reference|diff line
    segment [0,1]>]>><around*|[|0,1|]>\<subseteq\><around*|]|-2,2|[>> and
    <math|0\<in\><around*|]|-2,2|[>>, we can use the second mean value
    theorem (IV) [see theorem: <reference|diff mean value theorem (4)>] to
    get\ 

    <\equation*>
      <around*|\<\|\|\>|g<rsub|v,w><around*|(|0|)>-g<rsub|v,w><around*|(|1|)>-D<rsub|0>g<rsub|v,w><around*|(|0-1|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>g<rsub|v,w>-D<rsub|0>g<rsub|v,w>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,Y|)>>\|\<zeta\>\<in\>L<rsub|0,1>|}>|)>\<cdot\><around*|\||0-1|\|>
    </equation*>

    As <math|L<rsub|0,1>=<around*|[|0,1|]>> and <math|0-1=-1> we have\ 

    <\equation>
      <label|eq 16.215.203><around*|\<\|\|\>|g<rsub|v,w><around*|(|0|)>-g<rsub|v,w><around*|(|1|)>-D<rsub|0>g<rsub|v,w><around*|(|-1|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>g<rsub|v,w>-D<rsub|0>g<rsub|v,w>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,Y|)>>\|\<zeta\>\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    As <math|D<rsub|0>g<rsub|v,w><around*|(|1|)>\<equallim\><rsub|<text|[theorem:
    <reference|diff derivate and frechet differential>]>><around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>>
    we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|0|)>-g<rsub|v,w><around*|(|1|)>-D<rsub|0>g<rsub|v,w><around*|(|-1|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|0|)>-g<rsub|v,w><around*|(|1|)>+D<rsub|0>g<rsub|v,w><around*|(|1|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsub|0>g<rsub|v,w><around*|(|1|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>>>>>
    </eqnarray*>

    so that by [eq: <reference|eq 16.215.203>]

    <\equation>
      <label|eq 16.216.203><around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>g<rsub|v,w>-D<rsub|0>g<rsub|v,w>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,Y|)>>\|\<zeta\>\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Now given <math|h\<in\>\<bbb-R\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsub|\<zeta\>>g<rsub|v,w>-D<rsub|0>g<rsub|v,w>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|D<rsub|\<zeta\>>g<rsub|v,w><around*|(|h|)>-D<rsub|0>g<rsub|v,w><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate and frechet
      differential>]>>>|<cell|<around*|\<\|\|\>|h\<cdot\><around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>-h\<cdot\><around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>\<cdot\><around*|\||h|\|>>>>>
    </eqnarray*>

    proving by the definition of the norm of a linear continuous mapping [see
    theorem: <reference|continuity norm on L(X,Y)>] that
    <math|<around*|\<\|\|\>|D<rsub|\<zeta\>>g<rsub|v,w>-D<rsub|0>g<rsub|v,w>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,Y|)>>\<leqslant\><around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>>,
    hence by [eq: <reference|eq 16.216.203>] it follows that\ 

    <\equation>
      <label|eq 16.217.204><around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>\|\<zeta\>\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Let <math|\<zeta\>\<in\><around*|[|0,1|]>> then we have using the chain
    rule that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate and frechet
      differential>]>>>|<cell|D<rsub|\<zeta\>>g<rsub|v,w><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|\<zeta\>><around*|(|f\<circ\>\<psi\><rsub|v,w>-f\<circ\>\<varphi\><rsub|v,w>|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate operator is
      linear>]>>>|<cell|D<rsub|\<zeta\>><around*|(|f\<circ\>\<psi\><rsub|v,w>|)><around*|(|1|)>-D<rsub|\<zeta\>><around*|(|f\<circ\>\<varphi\><rsub|v,w>|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|<around*|(|D<rsub|\<psi\><rsub|v,w><around*|(|\<zeta\>|)>>f\<circ\>D<rsub|\<zeta\>>\<psi\><rsub|v,w>|)><around*|(|1|)>-<around*|(|D<rsub|\<varphi\><rsub|v,w><around*|(|\<zeta\>|)>>f\<circ\>D<rsub|\<zeta\>>\<varphi\><rsub|v,w>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|\<psi\><rsub|v,w><around*|(|\<zeta\>|)>>f<around*|(|D<rsub|\<zeta\>>\<psi\><rsub|v,w><around*|(|1|)>|)>-D<rsub|\<varphi\><rsub|v,w><around*|(|\<zeta\>|)>>f<around*|(|D<rsub|\<zeta\>>\<varphi\><rsub|v,w><around*|(|1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
      <reference|diff f(t)=a.x+y is infinite
      differentiable>]>>>|<cell|D<rsub|\<psi\><rsub|v,w><around*|(|\<zeta\>|)>>f<around*|(|v|)>-D<rsub|\<varphi\><rsub|v,w><around*|(|\<zeta\>|)>>f<around*|(|v|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x+\<zeta\>\<cdot\>v+w>f<around*|(|v|)>-D<rsub|x+\<zeta\>\<cdot\>v>f<around*|(|v|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 16.217.203>\<forall\>\<zeta\>\<in\><around*|[|0,1|]><text|
      ><around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>=D<rsub|x+\<zeta\>\<cdot\>v+w>f<around*|(|v|)>-D<rsub|x+\<zeta\>\<cdot\>v>f<around*|(|v|)>
    </equation>

    As <math|f> is <math|C<rsup|2>> on <math|U> we have that the function

    <\equation*>
      D f:U\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)> <text|
      defined by >D f<around*|(|x|)>=D<rsub|x>f
    </equation*>

    is Fréchet differentiable on every <math|x\<in\>U> and
    <math|D<rsub|x><around*|(|D f|)>=D<rsup|<around*|[|2|]>><rsub|x>f>. Then
    by [theorem: <reference|diff differentiability> (note: <reference|note
    16.44>)] given <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that if
    <math|h\<in\>U<rsub|x>> and <math|<around*|\<\|\|\>|x|\<\|\|\>>\<less\>\<delta\>>
    then

    <\equation>
      <label|eq 16.218.203><around*|\<\|\|\>|D f<around*|(|x+h|)>-D
      f<around*|(|x|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation>

    Let <math|v,w\<in\>X> with <math|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>>,
    <math|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<leqslant\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>>
    then <math|\<forall\>\<zeta\>\<in\><around*|[|0,1|]>> we have\ 

    <\equation*>
      <around*|\<\|\|\>|\<zeta\>\<cdot\>v+w|\<\|\|\>><rsub|X>\<leqslant\><around*|\||\<zeta\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<leqslant\>1\<cdot\><frac|\<delta\>|4>+<frac|\<delta\>|4>=<frac|\<delta\>|2>\<less\>\<delta\><text|
      and ><around*|\<\|\|\>|\<zeta\>\<cdot\>v|\<\|\|\>><rsub|X>=<around*|\||\<zeta\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<leqslant\><frac|\<delta\>|4>\<less\>\<delta\>
    </equation*>

    As <math|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>>,<math|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\><frac|r|4>>
    and <math|\<zeta\>\<leqslant\>1> we have that

    <\equation*>
      <around*|\<\|\|\>|x+\<zeta\>\<cdot\>v+w-x|\<\|\|\>><rsub|X>\<leqslant\><around*|\||\<zeta\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<leqslant\><frac|r|4>+<frac|r|4>\<less\>r<text|
      and ><around*|\<\|\|\>|x+\<zeta\>\<cdot\>v-x|\<\|\|\>><rsub|X>\<leqslant\><around*|\||\<zeta\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\>r
    </equation*>

    so that <math|x+\<zeta\>\<cdot\>v+w,x+\<zeta\>\<cdot\>v\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,r|)>\<subseteq\>U>
    or\ 

    <\equation*>
      \<zeta\>\<cdot\>v+w,\<zeta\>\<cdot\>v\<in\>U<rsub|x>
    </equation*>

    Using the above we have that\ 

    <\equation>
      <label|eq 16.219.203><around*|\<\|\|\>|D
      f<around*|(|x+\<zeta\>\<cdot\>v+w|)>-D
      f<around*|(|x|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v+w|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<zeta\>\<cdot\>v+w|\<\|\|\>><rsub|X>
    </equation>

    <\equation>
      <label|eq 16.220.203><around*|\<\|\|\>|D
      f<around*|(|x+\<zeta\>\<cdot\>v|)>-D
      f<around*|(|x|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<zeta\>\<cdot\>v|\<\|\|\>><rsub|X>
    </equation>

    Also\ 

    <\equation>
      <label|eq 16.221.203>D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v+w|)><around*|(|v|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v|)><around*|(|v|)>\<equallim\><rsub|D<rsup|2><rsub|x>f\<in\>L<around*|(|X,L<around*|(|X,Y|)>|)>>D<rsup|<around*|[|2|]>><rsub|x><around*|(|w|)><around*|(|v|)>
    </equation>

    Now for <math|\<zeta\>\<in\><around*|[|0,1|]>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.217.203>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsub|x+\<zeta\>\<cdot\>v+w>f<around*|(|v|)>-D<rsub|x+\<zeta\>\<cdot\>v>f<around*|(|v|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|def
      of >D f>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|x+\<zeta\>\<cdot\>v+w|)><around*|(|v|)>-D
      f<around*|(|x+\<zeta\>\<cdot\>v|)><around*|(|v|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.221.203>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<wide*|D
      f<around*|(|x+\<zeta\>\<cdot\>v+w|)><around*|(|v|)>|\<wide-underbrace\>><rsub|1>-<wide*|D
      f<around*|(|x+\<zeta\>\<cdot\>v|)><around*|(|v|)>|\<wide-underbrace\>><rsub|2>-<around*|(|<wide*|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v+w|)><around*|(|v|)>|\<wide-underbrace\>><rsub|3>-<wide*|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v|)><around*|(|v|)>|\<wide-underbrace\>><rsub|4>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<wide*|D
      f<around*|(|x+\<zeta\>\<cdot\>v+w|)><around*|(|v|)>|\<wide-underbrace\>><rsub|1>-D
      f<around*|(|x|)><around*|(|v|)>-<wide*|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v+w|)><around*|(|v|)>|\<wide-underbrace\>><rsub|3>-<around*|(|<wide*|D
      f<around*|(|x+\<zeta\>\<cdot\>v|)><around*|(|v|)>|\<wide-underbrace\>><rsub|2>-D
      f<around*|(|x|)><around*|(|v|)>-<wide*|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v|)><around*|(|v|)>|\<wide-underbrace\>><rsub|4>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|x+\<zeta\>\<cdot\>v+w|)><around*|(|v|)>-D
      f<around*|(|x|)><around*|(|v|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v+w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D
      f<around*|(|x+\<zeta\>\<cdot\>v|)><around*|(|v|)>-D
      f<around*|(|x|)><around*|(|v|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|x+\<zeta\>\<cdot\>v+w|)>-D
      f<around*|(|x|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v+w|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|D
      f<around*|(|x+\<zeta\>\<cdot\>v|)>-D
      f<around*|(|x|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|\<zeta\>\<cdot\>v|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>>|<cell|\<leqslant\><rsub|<text|[eqs:
      <reference|eq 16.219.203>, <reference|eq
      16.220.203>>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|(|<around*|\<\|\|\>|\<zeta\>\<cdot\>v+w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|\<zeta\>\<cdot\>v|\<\|\|\>><rsub|X>|)>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\||\<zeta\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\||\<zeta\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>|<cell|<below|\<leqslant\>|\<zeta\>\<in\><around*|[|0,1|]>><rsub|>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X+><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>|<cell|<below|\<leqslant\>|0\<leqslant\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.223.204>\<forall\>\<zeta\>\<in\><around*|[|0,1|]><text| we
      have ><around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\>2\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    Further for \ <math|t\<in\><around*|[|0,1|]>> we have:

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|t>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|t>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>-<around*|(|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|t>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|<below|\<leqslant\>|<text|<math|t,0\<in\><around*|[|0,1|]>\<wedge\><text|[eq:
      <reference|eq 16.223.204>]>>>><rsub|>>|<cell|>>|<row|<cell|2\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+2\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|=>|<cell|>>|<row|<cell|4\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving\ 

    <\equation>
      <label|eq 16.224.204><around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|t>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>\<leqslant\>4\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    As <math|g<rsub|v,w>> is <math|C<rsup|1>> on <math|<around*|]|-2,2|[>>,
    it follows from [theorem: <reference|diff C^1 and derivates (1)>] that
    the function

    <\equation*>
      g<rprime|'><rsub|v,w>:<around*|]|-2,2|[>\<rightarrow\>Y<text| defined
      by >g<rprime|'><rsub|v,w><around*|(|\<zeta\>|)>=<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>
    </equation*>

    is continuous. Define\ 

    <\equation*>
      h:<around*|]|-2,2|[>\<rightarrow\>\<bbb-R\><text| by
      >h<around*|(|\<zeta\>|)>=<around*|\<\|\|\>|g<rprime|'><rsub|v,w><around*|(|\<zeta\>|)>-g<rprime|'><rsub|v,w><around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|(|<around*|\<\|\|\>||\<\|\|\>>\<circ\><around*|(|g<rprime|'><rsub|v,w>-C<rsub|g<rprime|'><rsub|v,w><around*|(|0|)>>|)>|)><around*|(|\<zeta\>|)>
    </equation*>

    then as <math|g<rprime|'><rsub|v,w>> is continuous we have by [example:
    <reference|continuity constant function>] and [theorems:
    <reference|continuity norm is continuous>, <reference|continuity
    composition>] that <math|h> is continuous. Then as
    <math|<around*|[|0,1|]>> is compact and
    <math|<around*|[|0,1|]>\<subseteq\><around*|]|-2,2|[>> it follows from
    the extreme value theorem [theorem: <reference|compact extreme value
    theorem>] that there exist a <math|\<xi\><rsub|0>\<in\><around*|[|0,1|]>>
    such that <math|\<forall\>t\<in\><around*|[|0,1|]>>
    <math|h<around*|(|t|)>\<leqslant\>h<around*|(|\<xi\><rsub|0>|)>>. Hence
    we have \ <math|h<around*|(|\<xi\><rsub|0>|)>\<leqslant\>sup<around*|(|h<around*|[|0,1|]>|)>\<leqslant\>h<around*|(|\<xi\><rsub|0>|)>>
    or\ 

    <\equation>
      <label|eq 16.225.205><around*|\<\|\|\>|g<rprime|'><rsub|v,w><around*|(|\<xi\><rsub|0>|)>-g<rprime|'><rsub|v,w><around*|(|0|)>|\<\|\|\>><rsub|Y>=h<around*|(|\<xi\><rsub|0>|)>=sup<around*|(|h<around*|(|<around*|[|0,1|]>|)>|)>
    </equation>

    As <math|h<around*|(|<around*|[|0,1|]>|)>=<around*|{|h<around*|(|\<zeta\>|)>\|\<zeta\>\<in\><around*|[|0,1|]>|}>=<around*|{|<around*|\<\|\|\>|g<rprime|'><rsub|v,w><around*|(|\<zeta\>|)>-g<rprime|'><rsub|v,w><around*|(|0|)>|\<\|\|\>><rsub|Y>\|\<zeta\>\<in\><around*|[|0,1|]>|}>>
    it follows that\ 

    <\equation>
      <label|eq 16.225.204>h<around*|(|\<zeta\><rsub|0>|)>=sup<around*|(|<around*|{|<around*|\<\|\|\>|g<rprime|'><rsub|v,w><around*|(|\<zeta\>|)>-g<rprime|'><rsub|v,w><around*|(|0|)>|\<\|\|\>><rsub|Y>\|\<zeta\>\<in\><around*|[|0,1|]>|}>|)>=sup<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>\|\<zeta\>\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>+<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>+<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.217.204>]>><rsub|>>|<cell|>>|<row|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<zeta\>>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>\|\<zeta\>\<in\><around*|[|0,1|]>|}>|)>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.225.204>,<reference|eq
      16.225.205>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rprime|'><rsub|v,w><around*|(|\<xi\><rsub|0>|)>-g<rprime|'><rsub|v,w><around*|(|0|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|9>>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>><rsub|>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>-<around*|(|g<rsub|v,w>|)><rprime|'><rsub|0>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.224.204>]>>>|<cell|>>|<row|<cell|8\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w>|)><rprime|'><rsub|\<xi\><rsub|0>>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.223.204>]>><rsub|>>|<cell|>>|<row|<cell|8\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+2\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|=>|<cell|>>|<row|<cell|10\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that <math|\<forall\>v,w\<in\>X<text| with
    <math|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>,<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)><text|
    we have >>>>

    <\equation>
      <label|eq 16.226.204><around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\>10\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    As for <math|v<rprime|'>=w> and <math|w<rprime|'>=v<rprime|'>> we have
    also <math|<around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>,<around*|\<\|\|\>|w<rprime|'>|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>>
    it follows that

    <\equation*>
      <around*|\<\|\|\>|g<rsub|v<rprime|'>,w<rprime|'>><around*|(|1|)>-g<rsub|v<rprime|'>,w<rprime|'>><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w<rprime|'>|)><around*|(|v<rprime|'>|)>|\<\|\|\>><rsub|Y>\<leqslant\>10\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w<rprime|'>|\<\|\|\>><rsub|X>|)>
    </equation*>

    or\ 

    <\equation>
      <label|eq 16.227.204><around*|\<\|\|\>|g<rsub|w,v><around*|(|1|)>-g<rsub|w,v><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>|\<\|\|\>><rsub|Y>\<leqslant\>10\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>>|<cell|=>|<cell|<around*|(|f\<circ\>\<psi\><rsub|v,w>|)><around*|(|1|)>-<around*|(|f\<circ\>\<varphi\><rsub|v,w>|)><around*|(|1|)>-<around*|(|<around*|(|f\<circ\>\<psi\><rsub|v,w>|)><around*|(|0|)>-<around*|(|f\<circ\>\<varphi\><rsub|v,w>|)><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<psi\><rsub|v,w><around*|(|1|)>|)>-f<around*|(|\<varphi\><rsub|v,w><around*|(|1|)>|)>-f<around*|(|\<psi\><rsub|v,w><around*|(|0|)>|)>+f<around*|(|\<varphi\><rsub|v,w><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+v\<cdot\>1+w|)>-f<around*|(|x+v\<cdot\>1|)>-f<around*|(|x+v\<cdot\>0+w|)>+f<around*|(|x+v\<cdot\>0|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+v+w|)>-f<around*|(|x+v|)>-f<around*|(|x+w|)>+f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+w+v|)>-f<around*|(|x+w|)>-f<around*|(|x+v|)>+f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+w\<cdot\>1+v|)>-f<around*|(|x+w\<cdot\>1|)>-f<around*|(|x+w\<cdot\>0+v|)>+f<around*|(|x+w\<cdot\>0|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<psi\><rsub|w,v><around*|(|1|)>|)>-f<around*|(|\<varphi\><rsub|w,v><around*|(|1|)>|)>-f<around*|(|\<psi\><rsub|w,v><around*|(|0|)>|)>+f<around*|(|\<varphi\><rsub|w,v><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<circ\>\<psi\><rsub|w,v>|)><around*|(|1|)>-<around*|(|f\<circ\>\<varphi\><rsub|w,v>|)><around*|(|1|)>-<around*|(|<around*|(|f\<circ\>\<psi\><rsub|w,v>|)><around*|(|0|)>-<around*|(|f\<circ\>\<varphi\><rsub|w,v>|)><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<rsub|w.v><around*|(|1|)>-g<rsub|w,v><around*|(|0|)>>>>>
    </eqnarray*>

    substituting in [eq: <reference|eq 16.227.204>] gives\ 

    <\equation>
      <label|eq 16.228.204><around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>|\<\|\|\>><rsub|Y>\<leqslant\>10\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>-<around*|(|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>|\<\|\|\>><rsub|Y>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.226.204>,<reference|eq
      16.228.204>]>><rsub|>>|<cell|>>|<row|<cell|10\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+10\<cdot\>\<varepsilon\>*\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|[|10\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+10\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>|]>>|<cell|>|<cell|>>>>
    </eqnarray*>

    As <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> was chosen arbitrary and
    <math|v,w> do not depend on <math|\<varepsilon\>> it follows from
    [theorem: <reference|complex Archimedean property consequence (2)>] that
    <math|<around*|\<\|\|\>|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\>0>
    so that <math|<around*|\<\|\|\>|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>-D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>=0>
    proving that <math|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>=D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>>.
    Hence

    <\equation>
      <label|eq 16.310\<point\>200>\<forall\>v,w\<in\>X<text| with
      ><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>,<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)><text|
      >D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>=D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>
    </equation>

    Let <math|u,v\<in\>X> then for <math|v<rprime|'>=<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1>\<cdot\>v>,
    \ <math|w<rprime|'>=<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+1>\<cdot\>w>
    we have <math|<text|><around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>,<rigid|<around*|\<\|\|\>|w<rprime|'>|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>>>
    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1>\<cdot\><frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+1>\<cdot\>D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>>|<cell|=>|<cell|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1>\<cdot\>v|)><around*|(|<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+1>\<cdot\>w|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v<rprime|'>|)><around*|(|w<rprime|'>|)>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
      <reference|eq 16.310\<point\>200>]>>>|<cell|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w<rprime|'>|)><around*|(|v<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+1>\<cdot\>w|)><around*|(|<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1>\<cdot\>v|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1>\<cdot\><frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+1>\<cdot\>D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)>>>>>
    </eqnarray*>

    proving, as \ <math|<frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1>\<cdot\><frac|min<around*|(|<frac|\<delta\>|4>,<frac|r|4>|)>|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+1>\<neq\>0>,
    that

    <\equation*>
      D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|v|)><around*|(|w|)>=D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|w|)><around*|(|v|)><text|
      for any >v,w\<in\>X.
    </equation*>
  </proof>

  The following lemma show that to prove that
  <math|D<rsup|<around*|[|n|]>><rsub|x>f<around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>=D<rsup|<around*|[|n|]>><rsub|x>f<around*|(|v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:v<rsub|\<sigma\><around*|(|n|)>>|)>>
  we only have to prove this for transpositions [see definition:
  <reference|permutation transposition 1>].

  <\lemma>
    <label|lemma 16.157.205>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|L\<in\>L<rsub|n><around*|(|X;Y|)>> and
    <math|<rigid|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>>
    then if <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>>
    <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|<around*|(|i\<leftrightarrowlim\><rsub|n>i+1|)><around*|(|1|)>>:\<ldots\>:x<rsub|<around*|(|i\<leftrightarrowlim\><rsub|n>i+1|)><around*|(|n|)>>|)>>
    it follows that <math|\<forall\>\<sigma\>\<in\>P<rsub|n>>
    <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:x<rsub|\<sigma\><around*|(|n|)>>|)>>
  </lemma>

  <\proof>
    Using [theorem: <reference|diff linear to multilinear>] there exist a
    linear isometric isomorphism

    <\equation*>
      \<cal-I\><rsub|n,X,Y>:L<rsub|n><around*|(|X;Y|)>\<rightarrow\>L<rsup|n><around*|(|X;Y|)>
    </equation*>

    such that <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<subseteq\>X<rsup|n>>
    <math|<around*|(|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>.
    Take <math|K=\<cal-I\><rsub|n,X,Y><around*|(|L|)>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|i<long-arrow|\<rubber-leftrightarrow\>||n>i+1|)>K|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|<around*|(|K<around*|(|x<rsub|<around*|(|i\<leftrightarrowlim\><rsub|n>i+1|)><around*|(|1|)>>,\<ldots\>,x<rsub|<around*|(|i\<leftrightarrowlim\><rsub|n>i+1|)><around*|(|n|)>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|<around*|(|i\<leftrightarrowlim\><rsub|n>i+1|)><around*|(|1|)>>:\<ldots\>:x<rsub|<around*|(|i\<leftrightarrowlim\><rsub|n>i+1|)><around*|(|n|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|K<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>>>>
    </eqnarray*>

    proving that <math|><math|<around*|(|i<long-arrow|\<rubber-leftrightarrow\>||n>i+1|)>K=K>.
    Hence if <math|\<sigma\>\<in\>P<rsub|n>> we have by [corollary:
    <reference|permutation transposition symmetry (2)>] that
    <math|\<sigma\>K=K>. Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:x<rsub|\<sigma\><around*|(|n|)>>|)>>|<cell|=>|<cell|K<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<sigma\>K|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|K<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>>>
    </eqnarray*>
  </proof>

  Next we define the evaluation operator and prove that is linear and
  continuous hence \ <math|C<rsup|\<infty\>>> on its domain.

  <\definition>
    <label|diff evaluation operator><index|<math|ev<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>>><index|evaluation
    operator>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
    then the evaluation operator <math|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>>
    is defined by\ 

    <\equation*>
      ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>:L<rsub|n><around*|(|X;Y|)>\<rightarrow\>Y<text|
      where >ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|L|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
    </equation*>
  </definition>

  <\lemma>
    <label|lemma 16.159.206>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
    then\ 

    <\equation*>
      ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<in\>L<around*|(|L<rsub|n><around*|(|X;Y|)>,Y|)>
    </equation*>

    Hence by [theorem: <reference|diff linear mapping is infinite times
    differentiable>] <math|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>> is
    <math|C<rsup|\<infty\>>> on <math|L<rsub|n><around*|(|X;Y|)>>and
    <math|\<forall\>L\<in\>L<rsub|n><around*|(|X;Y|)>>

    <\equation*>
      D<rsub|L><rsup|<around*|[|n|]>>ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>=<choice|<tformat|<table|<row|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><text|
      if >n=1<rsub|>>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
    </equation*>
  </lemma>

  <\proof>
    Let <math|\<beta\>\<in\>\<bbb-K\>>, <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|lemma 16.54.187>]>>>|<cell|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|L<rsub|2>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<in\>Hom<around*|(|L<rsub|n><around*|(|X;Y|)>,Y|)>
    </equation*>

    Further if <math|L\<in\>L<rsub|n><around*|(|X;Y|)>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|L|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[lemma:
      <reference|lemma 16.56.187>]>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>|)>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity linear mapping (1)>] that
    <math|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>> is continuous hence\ 

    <\equation*>
      ev<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>\<in\>L<around*|(|L<rsub|n><around*|(|X;Y|)>,Y|)>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.160.206>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>,
    <rigid|<math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>>
    and <math|f:U\<rightarrow\>Y> a function that is <math|C<rsup|n+1>> on
    <math|U> [so that <math|\<forall\>y\<subset\>U>
    <math|D<rsub|y><rsup|<around*|[|n|]>>f> exists] then for the function

    <\equation*>
      g:U\<rightarrow\>Y<text| defined by
      >g<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
    </equation*>

    we have that <math|g> is <math|C<rsup|1>> on <math|U> and
    <math|\<forall\>y\<in\>U> we have <math|\<forall\>h\<in\>X> that
    <math|D<rsub|y>g<around*|(|h|)>=D<rsup|<around*|[|n+1|]>><rsub|y>f<around*|(|h:x<rsub|1>:\<ldots\>:x<rsub|n>|)>>
  </lemma>

  <\proof>
    <dueto|>As <math|f> is <math|C<rsup|n+1>> on <math|U> it follows from
    [theorem: <reference|diff C^n on a set condition>] that <math|f> is
    <math|<around*|(|n+1|)>>-times differentiable on <math|U> and the
    function

    <\equation*>
      D<rsup|<around*|[|n+1|]>>f:U\<rightarrow\>L<rsub|n+1><around*|(|X;Y|)><text|
      defined by >D<rsup|<around*|[|n+1|]>>f<around*|(|y|)>=D<rsup|<around*|[|n+1|]>><rsub|y>f<text|
      is continuous>
    </equation*>

    Further using [theorem: <reference|diff higher order differentiation on a
    open set (1)>] it follows that <math|f> is <math|n>-times differentiable
    on <math|U> and the function\ 

    <\equation*>
      D<rsup|<around*|[|n|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      defined by >D<rsup|<around*|[|n|]>>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f
    </equation*>

    is Fréchet differentiable on <math|U> with <math|\<forall\>y\<in\>U>
    <math|D<rsup|<around*|[|n+1|]>><rsub|y>f=D<rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)>>.
    Hence <math|D<rsup|<around*|[|n|]>>f> is <math|1>-times differentiable
    and <math|D<rsup|<around*|[|1|]>><rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+1|]>><rsub|y>f>
    so that <math|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+1|]>>f>
    which is continuous. So by [theorem: <reference|diff C^n on a set
    condition>] it follows that\ 

    <\equation*>
      D<rsup|<around*|[|n|]>>f<text| is >C<rsup|1><text| on >U
    </equation*>

    Let <math|y\<in\>U> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<around*|(|y|)>>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><rsub|y>f<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>x<rsub|n>><around*|(|D<rsup|<around*|[|n|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|D<rsup|<around*|[|n|]>>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      g=<around*|(|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n|]>>f|)>
    </equation*>

    By [lemma: <reference|lemma 16.159.206>]
    <math|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>> is <math|C<rsup|\<infty\>>>
    on <math|L<rsub|n><around*|(|X;Y|)>> so that, as
    <math|D<rsup|<around*|[|n|]>>f> is <math|C<rsup|1>> on <math|U>, it
    follows from the chain rule \ [theorem: <reference|diff chain rule higher
    order class>] that\ 

    <\equation>
      <label|eq 16.230.206>g=ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n|]>>f<text|
      is >C<rsup|1><text| on >U
    </equation>

    and <math|\<forall\>y\<in\>U>

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|y>g>|<cell|=>|<cell|D<rsub|y><around*|(|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n|]>>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|D<rsub|D<rsup|<around*|[|n|]>>f<around*|(|y|)>>ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.159.206>]>>>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n+1|]>><rsub|y>f>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      D<rsub|y>g=ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n+1|]>><rsub|y>f
    </equation*>

    Hence if <math|h\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|y>g<around*|(|h|)>>|<cell|=>|<cell|<around*|(|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n+1|]>><rsub|y>f|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|D<rsup|<around*|[|n+1|]>><rsub|y>f<around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|n+1|]>><rsub|y>f<around*|(|h|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|n+1|]>><rsub|y>f<around*|(|h:x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>>>
    </eqnarray*>

    The lemma is then proved by the above and [eq: <reference|eq
    16.230.206>].
  </proof>

  TODO

  <\lemma>
    <label|lemma 16.104.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then

    <\equation*>
      ev:L<around*|(|X,Y|)>\<cdot\>X\<rightarrow\>Y<text| defined by
      >ev<around*|(|L,x|)>=L<around*|(|x|)>
    </equation*>

    is <math|C<rsup|\<infty\>>> on <math|L<around*|(|X,Y|)>\<cdot\>X>.
    Further <math|\<forall\>L\<in\>L<around*|(|X,Y|)>> and <math|x\<in\>X> we
    have\ 

    <\equation*>
      D<rsup|<around*|[|1|]>><rsub|<around*|(|L,x|)>>ev=D<rsub|<around*|(|L,x|)>>ev=ev<around*|(|L,\<ast\>|)>+ev<around*|(|\<ast\>,x|)>
    </equation*>

    [see theorem: <reference|diff bilinear mappings are infinite times
    differentiable>].
  </lemma>

  <\proof>
    Using [theorem: <reference|diff bilinear mappings are infinite times
    differentiable>] it is enough to prove that <math|ev> is a bi-linear
    continuous function or in other words
    <math|ev\<in\>L<around*|(|L<around*|(|X,Y|)>,X;Y|)>>. Let
    <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>>, <math|x\<in\>X> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|ev<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>,x|)>>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|L<rsub|1>,x|)>+\<alpha\>\<cdot\>ev<around*|(|L<rsub|2>,x|)>>>>>
    </eqnarray*>

    and for <math|L\<in\>L<around*|(|X,Y|)>>, <math|x,y\<in\>X> and
    <math|\<alpha\>\<in\>\<bbb-K\>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|ev<around*|(|L,x+\<alpha\>\<cdot\>y|)>>|<cell|=>|<cell|L<around*|(|x+\<alpha\>\<cdot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x|)>+\<alpha\>\<cdot\>L<around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|L,x|)>+\<alpha\>\<cdot\>ev<around*|(|L,y|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      ev\<in\>Hom<around*|(|L<around*|(|X,Y|)>,X;Y|)>
    </equation*>

    Let <math|<around*|(|L,x|)>\<in\>L<around*|(|X,Y|)>\<cdot\>X> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|ev<around*|(|L,x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that\ 

    <\equation*>
      ev\<in\>L<around*|(|L<around*|(|X,Y|)>,X;Y|)>
    </equation*>
  </proof>

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|15>
    <associate|page-first|895>
    <associate|par-first|0tab>
    <associate|par-mode|justify>
    <associate|preamble|false>
    <associate|section-nr|0>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|16|?>>
    <associate|auto-10|<tuple|16.1.3|?>>
    <associate|auto-11|<tuple|Chain rule|?>>
    <associate|auto-12|<tuple|16.1.4|?>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|I<rsup|<around*|[|i,x|]>>>|?>>
    <associate|auto-14|<tuple|16.1.5|?>>
    <associate|auto-15|<tuple|partial derivate|?>>
    <associate|auto-16|<tuple|<with|mode|<quote|math>|\<partial\><rsub|i>f<around*|(|x|)>>|?>>
    <associate|auto-17|<tuple|16.1.6|?>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>>|?>>
    <associate|auto-19|<tuple|16.2|?>>
    <associate|auto-2|<tuple|16.1|?>>
    <associate|auto-20|<tuple|16.2.1|?>>
    <associate|auto-21|<tuple|<with|mode|<quote|math>|L<rsub|n><around*|(|X;Y|)>>|?>>
    <associate|auto-22|<tuple|<with|mode|<quote|math>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|?>>
    <associate|auto-23|<tuple|16.2.2|?>>
    <associate|auto-24|<tuple|16.2.2.1|?>>
    <associate|auto-25|<tuple|<with|mode|<quote|math>|n>-times
    differentiability|?>>
    <associate|auto-26|<tuple|<with|mode|<quote|math>|D<rsup|<around*|[|n|]>>f*<around*|(|x|)>>|?>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|\<infty\>>-times
    differentibility|?>>
    <associate|auto-28|<tuple|16.2.3|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|D<rsup|n>f<around*|(|x|)>>|?>>
    <associate|auto-3|<tuple|16.1.1|?>>
    <associate|auto-30|<tuple|16.2.4|?>>
    <associate|auto-31|<tuple|<with|mode|<quote|math>|C<rsup|n>>|?>>
    <associate|auto-32|<tuple|<with|mode|<quote|math>|C<rsup|0>>|?>>
    <associate|auto-33|<tuple|<with|mode|<quote|math>|C<rsup|\<infty\>>>|?>>
    <associate|auto-34|<tuple|16.2.5|?>>
    <associate|auto-35|<tuple|16.2.6|?>>
    <associate|auto-36|<tuple|16.2.7|?>>
    <associate|auto-37|<tuple|16.2.8|?>>
    <associate|auto-38|<tuple|chain rule higher order differentiation|?>>
    <associate|auto-39|<tuple|higher order differentiation chain rule|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-40|<tuple|16.3|?>>
    <associate|auto-41|<tuple|16.3.1|?>>
    <associate|auto-42|<tuple|local weak minimum|?>>
    <associate|auto-43|<tuple|local weak maximum|?>>
    <associate|auto-44|<tuple|local extremum|?>>
    <associate|auto-45|<tuple|16.1|?>>
    <associate|auto-46|<tuple|16.2|?>>
    <associate|auto-47|<tuple|concave function|?>>
    <associate|auto-48|<tuple|convex function|?>>
    <associate|auto-49|<tuple|16.3|?>>
    <associate|auto-5|<tuple|convergence of a function|?>>
    <associate|auto-50|<tuple|16.3.2|?>>
    <associate|auto-51|<tuple|16.3.3|?>>
    <associate|auto-52|<tuple|16.4|?>>
    <associate|auto-53|<tuple|<with|mode|<quote|math>|ev<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>>|?>>
    <associate|auto-54|<tuple|evaluation operator|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>|?>>
    <associate|auto-7|<tuple|16.1.2|?>>
    <associate|auto-8|<tuple|differentiability|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping|?>>
    <associate|convergence of a function to a point|<tuple|16.8|?>>
    <associate|corollary 16.50.192|<tuple|16.113|?>>
    <associate|diff Bx(x,d)|<tuple|16.7|?>>
    <associate|diff C-infinity condition|<tuple|16.142|?>>
    <associate|diff C^(n+m)|<tuple|16.161|?>>
    <associate|diff C^1 and derivates|<tuple|16.146|?>>
    <associate|diff C^1 and derivates (1)|<tuple|16.147|?>>
    <associate|diff C^n and C^m|<tuple|16.160|?>>
    <associate|diff C^n on a set|<tuple|16.143|?>>
    <associate|diff C^n on a set condition|<tuple|16.144|?>>
    <associate|diff D^f=D^(n-1)D^1f|<tuple|16.163|?>>
    <associate|diff Frechet approximation|<tuple|16.29|?>>
    <associate|diff Frechet differentation implies partial differentiability
    |<tuple|16.86|?>>
    <associate|diff Jacobian matrix|<tuple|16.103|?>>
    <associate|diff L(x1:..xn)|<tuple|16.114|?>>
    <associate|diff L(x1:..xn)=L(1:..:1). product|<tuple|16.118|?>>
    <associate|diff L_n(X;Y)|<tuple|16.110|?>>
    <associate|diff Lagrange theorem|<tuple|16.196|?>>
    <associate|diff Lagrange theorem (1)|<tuple|16.198|?>>
    <associate|diff Rolle's theorem|<tuple|16.194|?>>
    <associate|diff SA(a)|<tuple|16.40|?>>
    <associate|diff SA(a) definition|<tuple|16.39|?>>
    <associate|diff Ux|<tuple|16.4|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.6|?>>
    <associate|diff balls are convex|<tuple|16.213|?>>
    <associate|diff bilinear mappings are infinite times
    differentiable|<tuple|16.176|?>>
    <associate|diff calculus derivate|<tuple|16.21|?>>
    <associate|diff calculus derivate (1)|<tuple|16.17|?>>
    <associate|diff chain rule|<tuple|16.73|?>>
    <associate|diff chain rule (1)|<tuple|16.74|?>>
    <associate|diff chain rule and partial differential|<tuple|16.91|?>>
    <associate|diff chain rule calculus|<tuple|16.76|?>>
    <associate|diff chain rule higher order|<tuple|16.186|?>>
    <associate|diff chain rule higher order class|<tuple|16.188|?>>
    <associate|diff class C^@@|<tuple|16.140|?>>
    <associate|diff class C^n|<tuple|16.138|?>>
    <associate|diff composition with a linear mapping|<tuple|16.77|?>>
    <associate|diff cone|<tuple|16.32|?>>
    <associate|diff constant function and partial
    differentiation|<tuple|16.87|?>>
    <associate|diff constant function is differentiable|<tuple|16.48|?>>
    <associate|diff constant function is infinitely times
    differentiable|<tuple|16.169|?>>
    <associate|diff convex concave|<tuple|16.202|?>>
    <associate|diff convex set|<tuple|16.212|?>>
    <associate|diff convex/concave alternative|<tuple|16.203|?>>
    <associate|diff derivate and frechet differential|<tuple|16.65|?>>
    <associate|diff derivate and local extremum|<tuple|16.192|?>>
    <associate|diff derivate of a product of functions|<tuple|16.106|?>>
    <associate|diff derivate of inverse function|<tuple|16.107|?>>
    <associate|diff derivate operator is linear|<tuple|16.71|?>>
    <associate|diff derivative is local|<tuple|16.67|?>>
    <associate|diff derivative is local (1)|<tuple|16.70|?>>
    <associate|diff derivative of constant|<tuple|16.25|?>>
    <associate|diff derivative of f/g|<tuple|16.109|?>>
    <associate|diff differentiability|<tuple|16.41|?>>
    <associate|diff differentiability alternative
    definitions|<tuple|16.58|?>>
    <associate|diff differentiability alternative definitions
    (1)|<tuple|16.59|?>>
    <associate|diff differentiability and K^n|<tuple|16.96|?>>
    <associate|diff differentiability is a local property|<tuple|16.53|?>>
    <associate|diff differentiability is a local property
    (1)|<tuple|16.55|?>>
    <associate|diff differentiability on a set|<tuple|16.45|?>>
    <associate|diff differentiable function is continuous|<tuple|16.60|?>>
    <associate|diff differential of a vector valued
    function|<tuple|16.101|?>>
    <associate|diff differential of product of functions|<tuple|16.105|?>>
    <associate|diff e-mapping|<tuple|16.57|?>>
    <associate|diff equivalent norms|<tuple|16.52|?>>
    <associate|diff evaluation operator|<tuple|16.226|?>>
    <associate|diff f is of class C^n if D^1f u=is of class
    C^n-1|<tuple|16.165|?>>
    <associate|diff f is of class C^n if D^1f u=is of class C^n-1
    (1)|<tuple|16.166|?>>
    <associate|diff f(t)=a.x+y is infinite differentiable|<tuple|16.172|?>>
    <associate|diff fundamental theorem of calculus (1)|<tuple|16.206|?>>
    <associate|diff fundamental theorem of calculus (2)|<tuple|16.208|?>>
    <associate|diff higher order derivate|<tuple|16.148|?>>
    <associate|diff higher order derivate and differential|<tuple|16.152|?>>
    <associate|diff higher order derivate is linear|<tuple|16.168|?>>
    <associate|diff higher order derivate on a open set|<tuple|16.154|?>>
    <associate|diff higher order derivate on a open set (1)|<tuple|16.156|?>>
    <associate|diff higher order differential is linear|<tuple|16.167|?>>
    <associate|diff higher order differential of a product|<tuple|16.187|?>>
    <associate|diff higher order differential of a product
    (1)|<tuple|16.189|?>>
    <associate|diff higher order differentiation|<tuple|16.129|?>>
    <associate|diff higher order differentiation (1)|<tuple|16.136|?>>
    <associate|diff higher order differentiation and vector
    functions|<tuple|16.182|?>>
    <associate|diff higher order differentiation classes|<tuple|16.184|?>>
    <associate|diff higher order differentiation is local|<tuple|16.132|?>>
    <associate|diff higher order differentiation on a open
    set|<tuple|16.133|?>>
    <associate|diff higher order differentiation on a open set
    (1)|<tuple|16.134|?>>
    <associate|diff identity function is differentiable|<tuple|16.50|?>>
    <associate|diff identity function is infinite times
    differentiable|<tuple|16.171|?>>
    <associate|diff increasing decreasing function|<tuple|16.200|?>>
    <associate|diff inifint=ite differentiable|<tuple|16.135|?>>
    <associate|diff limit of a function|<tuple|16.11|?>>
    <associate|diff line segment [0,1]|<tuple|16.217|?>>
    <associate|diff linear mapping is infinite times
    differentiable|<tuple|16.170|?>>
    <associate|diff linear mappings are differentiable|<tuple|16.49|?>>
    <associate|diff linear to multilinear|<tuple|16.126|?>>
    <associate|diff linesegement|<tuple|16.215|?>>
    <associate|diff mean value theorem (0)|<tuple|16.214|?>>
    <associate|diff mean value theorem (1)|<tuple|16.211|?>>
    <associate|diff mean value theorem (2)|<tuple|16.214|?>>
    <associate|diff mean value theorem (2.1)|<tuple|16.219|?>>
    <associate|diff mean value theorem (3)|<tuple|16.220|?>>
    <associate|diff mean value theorem (3.1)|<tuple|16.221|?>>
    <associate|diff mean value theorem (4)|<tuple|16.222|?>>
    <associate|diff minimum maximum|<tuple|16.190|?>>
    <associate|diff multiparameter function to one parameter
    function|<tuple|16.80|?>>
    <associate|diff n-times and m-times derivating|<tuple|16.159|?>>
    <associate|diff n-times and m-times differentiability|<tuple|16.158|?>>
    <associate|diff partial derivate and partial
    differential|<tuple|16.94|?>>
    <associate|diff partial derivate definition|<tuple|16.92|?>>
    <associate|diff partial derivation is local|<tuple|16.95|?>>
    <associate|diff partial differentiability does not mean
    differentiaility|<tuple|16.89|?>>
    <associate|diff partial differential definition|<tuple|16.81|?>>
    <associate|diff partial differential definition (1)|<tuple|16.83|?>>
    <associate|diff partial differential properties|<tuple|16.90|?>>
    <associate|diff partial differentiation is local|<tuple|16.84|?>>
    <associate|diff partial differentiation is local (1)|<tuple|16.85|?>>
    <associate|diff power|<tuple|16.108|?>>
    <associate|diff projection functon is infinite times
    differentiable|<tuple|16.175|?>>
    <associate|diff restriction of a function of class C^n|<tuple|16.141|?>>
    <associate|diff scalar product function has a derivate|<tuple|16.26|?>>
    <associate|diff second derivate convex concave|<tuple|16.204|?>>
    <associate|diff tangent cone|<tuple|16.31|?>>
    <associate|diff tangent cone and inclusion|<tuple|16.36|?>>
    <associate|diff tangent cone and limit point|<tuple|16.63|?>>
    <associate|diff tangent cone and limit point reverse|<tuple|16.64|?>>
    <associate|diff tangent cone is a cone|<tuple|16.33|?>>
    <associate|diff tangent cone of inner point|<tuple|16.38|?>>
    <associate|diff tangent cone of open sets|<tuple|16.37|?>>
    <associate|diff translation is infinite differentiable|<tuple|16.174|?>>
    <associate|diff uniqueness of the Frechet aproximation|<tuple|16.34|?>>
    <associate|diff unprojection|<tuple|16.78|?>>
    <associate|diff unprojection is infinite times
    differentiable|<tuple|16.173|?>>
    <associate|diff vector functions|<tuple|16.97|?>>
    <associate|diff vector functions (1)|<tuple|16.100|?>>
    <associate|diff vector functions (2)|<tuple|16.102|?>>
    <associate|diff vector functions and linearity|<tuple|16.99|?>>
    <associate|eq 16.1.1|<tuple|16.1|?>>
    <associate|eq 16.1.177|<tuple|16.23|?>>
    <associate|eq 16.10.178|<tuple|16.74|?>>
    <associate|eq 16.100.181|<tuple|16.198|?>>
    <associate|eq 16.100.6|<tuple|16.100|?>>
    <associate|eq 16.101.181|<tuple|16.200|?>>
    <associate|eq 16.101.194|<tuple|16.236|?>>
    <associate|eq 16.101.6|<tuple|16.101|?>>
    <associate|eq 16.102.181|<tuple|16.201|?>>
    <associate|eq 16.102.194|<tuple|16.237|?>>
    <associate|eq 16.102.6|<tuple|16.102|?>>
    <associate|eq 16.103.181|<tuple|16.202|?>>
    <associate|eq 16.103.194|<tuple|16.238|?>>
    <associate|eq 16.104.181|<tuple|16.203|?>>
    <associate|eq 16.104.194|<tuple|16.239|?>>
    <associate|eq 16.105.194|<tuple|16.240|?>>
    <associate|eq 16.11.178|<tuple|16.75|?>>
    <associate|eq 16.118.181|<tuple|16.217|?>>
    <associate|eq 16.119.181|<tuple|16.218|?>>
    <associate|eq 16.12.178|<tuple|16.76|?>>
    <associate|eq 16.120.181|<tuple|16.219|?>>
    <associate|eq 16.121.181|<tuple|16.220|?>>
    <associate|eq 16.121.6|<tuple|16.121|?>>
    <associate|eq 16.122.181|<tuple|16.221|?>>
    <associate|eq 16.123.181|<tuple|16.222|?>>
    <associate|eq 16.123.195|<tuple|16.254|?>>
    <associate|eq 16.124.181|<tuple|16.223|?>>
    <associate|eq 16.124.195|<tuple|16.255|?>>
    <associate|eq 16.125.195|<tuple|16.256|?>>
    <associate|eq 16.126.195|<tuple|16.257|?>>
    <associate|eq 16.127.195|<tuple|16.258|?>>
    <associate|eq 16.128.181|<tuple|16.227|?>>
    <associate|eq 16.128.195|<tuple|16.259|?>>
    <associate|eq 16.129.181|<tuple|16.228|?>>
    <associate|eq 16.129.195|<tuple|16.260|?>>
    <associate|eq 16.13.178|<tuple|16.77|?>>
    <associate|eq 16.130.181|<tuple|16.229|?>>
    <associate|eq 16.130.195|<tuple|16.261|?>>
    <associate|eq 16.131.181|<tuple|16.230|?>>
    <associate|eq 16.131.195|<tuple|16.265|?>>
    <associate|eq 16.132.181|<tuple|16.231|?>>
    <associate|eq 16.133.181|<tuple|16.232|?>>
    <associate|eq 16.133.7|<tuple|16.133|?>>
    <associate|eq 16.134.181|<tuple|16.233|?>>
    <associate|eq 16.134.195|<tuple|16.268|?>>
    <associate|eq 16.134.7|<tuple|16.134|?>>
    <associate|eq 16.135.181|<tuple|16.234|?>>
    <associate|eq 16.135.195|<tuple|16.270|?>>
    <associate|eq 16.135.7|<tuple|16.135|?>>
    <associate|eq 16.136.181|<tuple|16.235|?>>
    <associate|eq 16.136.195|<tuple|16.271|?>>
    <associate|eq 16.136.7|<tuple|16.136|?>>
    <associate|eq 16.137.7|<tuple|16.137|?>>
    <associate|eq 16.138.7|<tuple|16.138|?>>
    <associate|eq 16.139.7|<tuple|16.139|?>>
    <associate|eq 16.14.178|<tuple|16.78|?>>
    <associate|eq 16.14.7|<tuple|16.142|?>>
    <associate|eq 16.140.7|<tuple|16.140|?>>
    <associate|eq 16.141.8|<tuple|16.141|?>>
    <associate|eq 16.142.181|<tuple|16.241|?>>
    <associate|eq 16.142.7|<tuple|16.143|?>>
    <associate|eq 16.143.181|<tuple|16.242|?>>
    <associate|eq 16.143.200|<tuple|16.269|?>>
    <associate|eq 16.143.7|<tuple|16.144|?>>
    <associate|eq 16.144.181|<tuple|16.244|?>>
    <associate|eq 16.144.181.1|<tuple|16.243|?>>
    <associate|eq 16.145.181|<tuple|16.245|?>>
    <associate|eq 16.145.6|<tuple|16.145|?>>
    <associate|eq 16.146.6|<tuple|16.146|?>>
    <associate|eq 16.147.181|<tuple|16.246|?>>
    <associate|eq 16.147.6|<tuple|16.147|?>>
    <associate|eq 16.148.181|<tuple|16.247|?>>
    <associate|eq 16.148.7|<tuple|16.148|?>>
    <associate|eq 16.149.181|<tuple|16.248|?>>
    <associate|eq 16.149.7|<tuple|16.149|?>>
    <associate|eq 16.15.1|<tuple|16.17|?>>
    <associate|eq 16.15.178|<tuple|16.79|?>>
    <associate|eq 16.15.5|<tuple|16.6|?>>
    <associate|eq 16.150.152|<tuple|16.266|?>>
    <associate|eq 16.150.181|<tuple|16.249|?>>
    <associate|eq 16.150.7|<tuple|16.151|?>>
    <associate|eq 16.150.8|<tuple|16.150|?>>
    <associate|eq 16.151.152|<tuple|16.267|?>>
    <associate|eq 16.151.181|<tuple|16.250|?>>
    <associate|eq 16.152.181|<tuple|16.251|?>>
    <associate|eq 16.152.9|<tuple|16.152|?>>
    <associate|eq 16.153.9|<tuple|16.153|?>>
    <associate|eq 16.154.181|<tuple|16.253|?>>
    <associate|eq 16.156.9|<tuple|16.156|?>>
    <associate|eq 16.157.9|<tuple|16.157|?>>
    <associate|eq 16.158.9|<tuple|16.158|?>>
    <associate|eq 16.159.9|<tuple|16.159|?>>
    <associate|eq 16.16.1|<tuple|16.18|?>>
    <associate|eq 16.16.178|<tuple|16.80|?>>
    <associate|eq 16.16.180|<tuple|16.106|?>>
    <associate|eq 16.16.5|<tuple|16.7|?>>
    <associate|eq 16.160.9|<tuple|16.160|?>>
    <associate|eq 16.161.9|<tuple|16.161|?>>
    <associate|eq 16.162.9|<tuple|16.162|?>>
    <associate|eq 16.163.9|<tuple|16.163|?>>
    <associate|eq 16.164.9|<tuple|16.164|?>>
    <associate|eq 16.165.9|<tuple|16.165|?>>
    <associate|eq 16.168.9|<tuple|16.167|?>>
    <associate|eq 16.169.9|<tuple|16.168|?>>
    <associate|eq 16.17.1|<tuple|16.19|?>>
    <associate|eq 16.17.178|<tuple|16.88|?>>
    <associate|eq 16.17.180|<tuple|16.107|?>>
    <associate|eq 16.170.9|<tuple|16.169|?>>
    <associate|eq 16.171.9|<tuple|16.170|?>>
    <associate|eq 16.172.10|<tuple|16.172|?>>
    <associate|eq 16.175.10|<tuple|16.175|?>>
    <associate|eq 16.178.11|<tuple|16.178|?>>
    <associate|eq 16.179.10|<tuple|16.180|?>>
    <associate|eq 16.179.200|<tuple|16.274|?>>
    <associate|eq 16.18.1|<tuple|16.20|?>>
    <associate|eq 16.18.179|<tuple|16.89|?>>
    <associate|eq 16.18.180|<tuple|16.108|?>>
    <associate|eq 16.18.212|<tuple|16.83|?>>
    <associate|eq 16.180.10|<tuple|16.181|?>>
    <associate|eq 16.180.200|<tuple|16.275|?>>
    <associate|eq 16.181.200|<tuple|16.276|?>>
    <associate|eq 16.184.11|<tuple|16.184|?>>
    <associate|eq 16.185.11|<tuple|16.185|?>>
    <associate|eq 16.187.11|<tuple|16.187|?>>
    <associate|eq 16.187.200|<tuple|16.283|?>>
    <associate|eq 16.188.11|<tuple|16.188|?>>
    <associate|eq 16.189.11|<tuple|16.189|?>>
    <associate|eq 16.19.136|<tuple|16.87|?>>
    <associate|eq 16.19.179|<tuple|16.90|?>>
    <associate|eq 16.19.180|<tuple|16.109|?>>
    <associate|eq 16.19.3.1|<tuple|16.22|?>>
    <associate|eq 16.192.11|<tuple|16.192|?>>
    <associate|eq 16.193.11|<tuple|16.193|?>>
    <associate|eq 16.194.201|<tuple|16.290|?>>
    <associate|eq 16.195.201|<tuple|16.291|?>>
    <associate|eq 16.199.11|<tuple|16.199|?>>
    <associate|eq 16.2.1|<tuple|16.2|?>>
    <associate|eq 16.2.177|<tuple|16.24|?>>
    <associate|eq 16.20.178|<tuple|16.97|?>>
    <associate|eq 16.20.181|<tuple|16.110|?>>
    <associate|eq 16.21.1|<tuple|16.21|?>>
    <associate|eq 16.212.203|<tuple|16.292|?>>
    <associate|eq 16.213.203|<tuple|16.293|?>>
    <associate|eq 16.214.203|<tuple|16.294|?>>
    <associate|eq 16.215.203|<tuple|16.295|?>>
    <associate|eq 16.216.203|<tuple|16.296|?>>
    <associate|eq 16.217.203|<tuple|16.298|?>>
    <associate|eq 16.217.204|<tuple|16.297|?>>
    <associate|eq 16.218.203|<tuple|16.299|?>>
    <associate|eq 16.219.203|<tuple|16.300|?>>
    <associate|eq 16.220.203|<tuple|16.301|?>>
    <associate|eq 16.221.203|<tuple|16.302|?>>
    <associate|eq 16.223.204|<tuple|16.303|?>>
    <associate|eq 16.224.204|<tuple|16.304|?>>
    <associate|eq 16.225.204|<tuple|16.306|?>>
    <associate|eq 16.225.205|<tuple|16.305|?>>
    <associate|eq 16.226.204|<tuple|16.307|?>>
    <associate|eq 16.227.204|<tuple|16.308|?>>
    <associate|eq 16.228.204|<tuple|16.309|?>>
    <associate|eq 16.23.1|<tuple|16.31|?>>
    <associate|eq 16.23.178|<tuple|16.103|?>>
    <associate|eq 16.230.206|<tuple|16.311|?>>
    <associate|eq 16.24.1|<tuple|16.33|?>>
    <associate|eq 16.24.178|<tuple|16.104|?>>
    <associate|eq 16.24.2|<tuple|16.32|?>>
    <associate|eq 16.25.1|<tuple|16.34|?>>
    <associate|eq 16.25.178|<tuple|16.105|?>>
    <associate|eq 16.25.6|<tuple|16.25|?>>
    <associate|eq 16.26.1|<tuple|16.35|?>>
    <associate|eq 16.26.6|<tuple|16.26|?>>
    <associate|eq 16.262.12|<tuple|16.262|?>>
    <associate|eq 16.263.12|<tuple|16.263|?>>
    <associate|eq 16.264.12|<tuple|16.264|?>>
    <associate|eq 16.27.1|<tuple|16.36|?>>
    <associate|eq 16.27.6|<tuple|16.27|?>>
    <associate|eq 16.272.12|<tuple|16.272|?>>
    <associate|eq 16.273.12|<tuple|16.273|?>>
    <associate|eq 16.277.12|<tuple|16.277|?>>
    <associate|eq 16.278.12|<tuple|16.278|?>>
    <associate|eq 16.279.12|<tuple|16.279|?>>
    <associate|eq 16.28.1|<tuple|16.28|?>>
    <associate|eq 16.280.12|<tuple|16.280|?>>
    <associate|eq 16.281.12|<tuple|16.281|?>>
    <associate|eq 16.282.12|<tuple|16.282|?>>
    <associate|eq 16.284.12|<tuple|16.284|?>>
    <associate|eq 16.285.12|<tuple|16.285|?>>
    <associate|eq 16.286.12|<tuple|16.286|?>>
    <associate|eq 16.287.12|<tuple|16.287|?>>
    <associate|eq 16.288.12|<tuple|16.288|?>>
    <associate|eq 16.289.12|<tuple|16.289|?>>
    <associate|eq 16.29.1|<tuple|16.38|?>>
    <associate|eq 16.3.1|<tuple|16.3|?>>
    <associate|eq 16.3.177|<tuple|16.29|?>>
    <associate|eq 16.30.1|<tuple|16.39|?>>
    <associate|eq 16.31.1|<tuple|16.41|?>>
    <associate|eq 16.310\<point\>200|<tuple|16.310|?>>
    <associate|eq 16.32.1|<tuple|16.42|?>>
    <associate|eq 16.32.2|<tuple|16.40|?>>
    <associate|eq 16.33.1|<tuple|16.43|?>>
    <associate|eq 16.33.181|<tuple|16.111|?>>
    <associate|eq 16.34.181|<tuple|16.112|?>>
    <associate|eq 16.35.1|<tuple|16.45|?>>
    <associate|eq 16.35.181|<tuple|16.113|?>>
    <associate|eq 16.36.1|<tuple|16.46|?>>
    <associate|eq 16.36.182|<tuple|16.115|?>>
    <associate|eq 16.37.1|<tuple|16.48|?>>
    <associate|eq 16.37.182|<tuple|16.116|?>>
    <associate|eq 16.38.1|<tuple|16.49|?>>
    <associate|eq 16.38.182|<tuple|16.117|?>>
    <associate|eq 16.39.1|<tuple|16.50|?>>
    <associate|eq 16.39.182|<tuple|16.118|?>>
    <associate|eq 16.39.2|<tuple|16.47|?>>
    <associate|eq 16.4.1|<tuple|16.4|?>>
    <associate|eq 16.4.177|<tuple|16.30|?>>
    <associate|eq 16.41.1|<tuple|16.52|?>>
    <associate|eq 16.41.182|<tuple|16.120|?>>
    <associate|eq 16.42.1|<tuple|16.53|?>>
    <associate|eq 16.42.187|<tuple|16.123|?>>
    <associate|eq 16.43.187|<tuple|16.124|?>>
    <associate|eq 16.44.188|<tuple|16.125|?>>
    <associate|eq 16.45.153|<tuple|16.122|?>>
    <associate|eq 16.45.188|<tuple|16.126|?>>
    <associate|eq 16.46.188|<tuple|16.127|?>>
    <associate|eq 16.46.3|<tuple|16.54|?>>
    <associate|eq 16.463.298|<tuple|16.8|?>>
    <associate|eq 16.464.298|<tuple|16.9|?>>
    <associate|eq 16.465.298|<tuple|16.10|?>>
    <associate|eq 16.467.298|<tuple|16.12|?>>
    <associate|eq 16.468.298|<tuple|16.13|?>>
    <associate|eq 16.469.298|<tuple|16.14|?>>
    <associate|eq 16.47.188|<tuple|16.128|?>>
    <associate|eq 16.47.3|<tuple|16.55|?>>
    <associate|eq 16.470.298|<tuple|16.15|?>>
    <associate|eq 16.471.298|<tuple|16.16|?>>
    <associate|eq 16.48.188|<tuple|16.129|?>>
    <associate|eq 16.48.3|<tuple|16.56|?>>
    <associate|eq 16.49.189|<tuple|16.130|?>>
    <associate|eq 16.49.3|<tuple|16.58|?>>
    <associate|eq 16.49.3.1|<tuple|16.57|?>>
    <associate|eq 16.5.1|<tuple|16.5|?>>
    <associate|eq 16.5.178|<tuple|16.60|?>>
    <associate|eq 16.50.189|<tuple|16.131|?>>
    <associate|eq 16.51.3|<tuple|16.61|?>>
    <associate|eq 16.51\<point\>189|<tuple|16.132|?>>
    <associate|eq 16.52.190|<tuple|16.154|?>>
    <associate|eq 16.59.6|<tuple|16.59|?>>
    <associate|eq 16.60.189|<tuple|16.166|?>>
    <associate|eq 16.62.6|<tuple|16.62|?>>
    <associate|eq 16.63.6|<tuple|16.63|?>>
    <associate|eq 16.64.3|<tuple|16.81|?>>
    <associate|eq 16.64.6|<tuple|16.64|?>>
    <associate|eq 16.65.6|<tuple|16.65|?>>
    <associate|eq 16.66.6|<tuple|16.66|?>>
    <associate|eq 16.67.140|<tuple|16.155|?>>
    <associate|eq 16.67.3|<tuple|16.84|?>>
    <associate|eq 16.67.6|<tuple|16.67|?>>
    <associate|eq 16.68.3|<tuple|16.85|?>>
    <associate|eq 16.68.6|<tuple|16.68|?>>
    <associate|eq 16.69.191|<tuple|16.182|?>>
    <associate|eq 16.7.178|<tuple|16.69|?>>
    <associate|eq 16.70.191|<tuple|16.183|?>>
    <associate|eq 16.70.6|<tuple|16.70|?>>
    <associate|eq 16.71.193|<tuple|16.186|?>>
    <associate|eq 16.72.193|<tuple|16.190|?>>
    <associate|eq 16.72.6|<tuple|16.72|?>>
    <associate|eq 16.73.3|<tuple|16.91|?>>
    <associate|eq 16.74.193|<tuple|16.194|?>>
    <associate|eq 16.74.3|<tuple|16.92|?>>
    <associate|eq 16.75.3|<tuple|16.93|?>>
    <associate|eq 16.76.193|<tuple|16.196|?>>
    <associate|eq 16.76.6|<tuple|16.86|?>>
    <associate|eq 16.77.193.1|<tuple|16.204|?>>
    <associate|eq 16.77.198|<tuple|16.195|?>>
    <associate|eq 16.78.193|<tuple|16.205|?>>
    <associate|eq 16.78.3|<tuple|16.95|?>>
    <associate|eq 16.79.193|<tuple|16.206|?>>
    <associate|eq 16.79.3|<tuple|16.96|?>>
    <associate|eq 16.8.178|<tuple|16.71|?>>
    <associate|eq 16.81.193|<tuple|16.208|?>>
    <associate|eq 16.82.193|<tuple|16.209|?>>
    <associate|eq 16.82.6|<tuple|16.82|?>>
    <associate|eq 16.83|<tuple|16.210|?>>
    <associate|eq 16.83.199|<tuple|16.207|?>>
    <associate|eq 16.84.193|<tuple|16.211|?>>
    <associate|eq 16.85.181|<tuple|16.171|?>>
    <associate|eq 16.85.193|<tuple|16.212|?>>
    <associate|eq 16.86.181|<tuple|16.173|?>>
    <associate|eq 16.86.193|<tuple|16.213|?>>
    <associate|eq 16.87.181|<tuple|16.174|?>>
    <associate|eq 16.87.193|<tuple|16.214|?>>
    <associate|eq 16.88.181|<tuple|16.176|?>>
    <associate|eq 16.89.181|<tuple|16.177|?>>
    <associate|eq 16.89.193|<tuple|16.216|?>>
    <associate|eq 16.9.178|<tuple|16.73|?>>
    <associate|eq 16.90.181|<tuple|16.179|?>>
    <associate|eq 16.90.194|<tuple|16.224|?>>
    <associate|eq 16.91.158|<tuple|16.197|?>>
    <associate|eq 16.91.194|<tuple|16.225|?>>
    <associate|eq 16.91.199|<tuple|16.215|?>>
    <associate|eq 16.92.194|<tuple|16.226|?>>
    <associate|eq 16.94.6|<tuple|16.94|?>>
    <associate|eq 16.95.181|<tuple|16.191|?>>
    <associate|eq 16.98.6|<tuple|16.98|?>>
    <associate|eq 16.99.4|<tuple|16.114|?>>
    <associate|eq 16.99.6|<tuple|16.99|?>>
    <associate|example 16.35.1|<tuple|16.47|?>>
    <associate|lemma 16.101.194|<tuple|16.185|?>>
    <associate|lemma 16.104.194|<tuple|16.229|?>>
    <associate|lemma 16.12.1|<tuple|16.16|?>>
    <associate|lemma 16.135.200|<tuple|16.210|?>>
    <associate|lemma 16.139.181|<tuple|16.183|?>>
    <associate|lemma 16.144.201|<tuple|16.218|?>>
    <associate|lemma 16.155.203|<tuple|16.223|?>>
    <associate|lemma 16.157.205|<tuple|16.225|?>>
    <associate|lemma 16.159.206|<tuple|16.227|?>>
    <associate|lemma 16.160.206|<tuple|16.228|?>>
    <associate|lemma 16.23.181|<tuple|16.104|?>>
    <associate|lemma 16.24.178|<tuple|16.79|?>>
    <associate|lemma 16.37.1|<tuple|16.51|?>>
    <associate|lemma 16.50.1|<tuple|16.62|?>>
    <associate|lemma 16.51.186|<tuple|16.117|?>>
    <associate|lemma 16.53.186|<tuple|16.119|?>>
    <associate|lemma 16.54.187|<tuple|16.120|?>>
    <associate|lemma 16.55.187|<tuple|16.121|?>>
    <associate|lemma 16.56.187|<tuple|16.122|?>>
    <associate|lemma 16.57.187|<tuple|16.123|?>>
    <associate|lemma 16.58.188|<tuple|16.124|?>>
    <associate|lemma 16.59.188|<tuple|16.125|?>>
    <associate|lemma 16.61.207|<tuple|16.112|?>>
    <associate|lemma 16.62.6|<tuple|16.72|?>>
    <associate|lemma 16.7.1|<tuple|16.10|?>>
    <associate|lemma 16.72.189|<tuple|16.151|?>>
    <associate|lemma 16.83.197|<tuple|16.145|?>>
    <associate|lemma 16.93.193|<tuple|16.178|?>>
    <associate|lemma 16.96.193|<tuple|16.179|?>>
    <associate|lemma 16.97.193|<tuple|16.180|?>>
    <associate|lemma 16.98.194|<tuple|16.181|?>>
    <associate|normed space are assumed to be non trivial|<tuple|16.1|?>>
    <associate|note 16.103.180|<tuple|16.139|?>>
    <associate|note 16.44|<tuple|16.44|?>>
    <associate|note 16.65.191|<tuple|16.130|?>>
    <associate|topology every element of a generalized interval is a limit
    point|<tuple|16.15|?>>
    <associate|topology every element of a open or closed ball is a limit
    point|<tuple|16.14|?>>
    <associate|topology every element of a open set in a normed space is a
    limit point|<tuple|16.12|?>>
    <associate|topology interior point is a limit point in a normed
    space|<tuple|16.13|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|16.1>||>|<pageref|auto-45>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|16.2>||>|<pageref|auto-46>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|16.3>||>|<pageref|auto-49>>
    </associate>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|U<rsub|x>>>|<pageref|auto-4>>

      <tuple|<tuple|convergence of a function>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>>|<pageref|auto-6>>

      <tuple|<tuple|differentiability>|<pageref|auto-8>>

      <tuple|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping>|<pageref|auto-9>>

      <tuple|<tuple|Chain rule>|<pageref|auto-11>>

      <tuple|<tuple|<with|mode|<quote|math>|I<rsup|<around*|[|i,x|]>>>>|<pageref|auto-13>>

      <tuple|<tuple|partial derivate>|<pageref|auto-15>>

      <tuple|<tuple|<with|mode|<quote|math>|\<partial\><rsub|i>f<around*|(|x|)>>>|<pageref|auto-16>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>>>|<pageref|auto-18>>

      <tuple|<tuple|<with|mode|<quote|math>|L<rsub|n><around*|(|X;Y|)>>>|<pageref|auto-21>>

      <tuple|<tuple|<with|mode|<quote|math>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<pageref|auto-22>>

      <tuple|<tuple|<with|mode|<quote|math>|n>-times
      differentiability>|<pageref|auto-25>>

      <tuple|<tuple|<with|mode|<quote|math>|D<rsup|<around*|[|n|]>>f*<around*|(|x|)>>>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|\<infty\>>-times
      differentibility>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|D<rsup|n>f<around*|(|x|)>>>|<pageref|auto-29>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|n>>>|<pageref|auto-31>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|0>>>|<pageref|auto-32>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|\<infty\>>>>|<pageref|auto-33>>

      <tuple|<tuple|chain rule higher order
      differentiation>|<pageref|auto-38>>

      <tuple|<tuple|higher order differentiation chain
      rule>|<pageref|auto-39>>

      <tuple|<tuple|local weak minimum>|<pageref|auto-42>>

      <tuple|<tuple|local weak maximum>|<pageref|auto-43>>

      <tuple|<tuple|local extremum>|<pageref|auto-44>>

      <tuple|<tuple|concave function>|<pageref|auto-47>>

      <tuple|<tuple|convex function>|<pageref|auto-48>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Differentiation
      in Normed Spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      16.1<space|2spc>Fréchet differentiability
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|16.1.1<space|2spc>The classical derivative
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|16.1.2<space|2spc>Fréchet differential of a
      function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|16.1.3<space|2spc>Properties of the Fréchet
      differential <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|16.1.4<space|2spc>Partial differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|16.1.5<space|2spc>Partial derivatives
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|16.1.6<space|2spc>Differentiation of vector
      valued functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      16.2<space|2spc>Higher order differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      <with|par-left|<quote|1tab>|16.2.1<space|2spc>Linear mappings and
      multi-linear mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|16.2.2<space|2spc>Higher order Fréchet
      differentiation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|16.2.2.1<space|2spc>Definition of higher
      order differentials <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|16.2.3<space|2spc>Higher order
      differentials as multi-linear mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|16.2.4<space|2spc>Functions that are
      <with|mode|<quote|math>|C<rsup|n>> at a point or
      <with|mode|<quote|math>|C<rsup|n>> on a set
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|16.2.5<space|2spc>Higher order derivatives
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|16.2.6<space|2spc>Properties of higher
      order differentiation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1tab>|16.2.7<space|2spc>Examples of
      <with|mode|<quote|math>|\<infty\>>-times differentiable functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|16.2.8<space|2spc>The chain rule for higher
      order derivatives <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      16.3<space|2spc>Intermediate value and main value theorems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>

      <with|par-left|<quote|1tab>|16.3.1<space|2spc>Derivatives, extremums,
      concavity, and convexity <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|16.3.2<space|2spc>Fundamental theorem of
      Calculus for the Riemann Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|16.3.3<space|2spc>Mean Value Theorems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      16.4<space|2spc>Symmetry of Higher Order Differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>
    </associate>
  </collection>
</auxiliary>
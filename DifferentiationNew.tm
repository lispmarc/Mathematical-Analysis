<TeXmacs|2.1.4>

<project|DifferentiationNewMain.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Differentiation in Normed Spaces>

  <\note>
    Unless stated otherwise all the normed spaces in this chapter are assumed
    to be vector space over the same field <math|\<bbb-K\>>. More specific if
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are either both \ vector spaces over <math|\<bbb-R\>> or both vector
    spaces over <math|\<bbb-C\>>.
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
  it is usefull to have some indication where the limit points of a set are.

  <\theorem>
    <label|topology every element of a open set in a normed space is a limit
    point>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a non trivial normed space [meaning <math|X\<neq\><around*|{|0|}>>]
    and <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> a open set
    in <math|X> then every element of <math|U> is a limit point of <math|U>
  </theorem>

  <\proof>
    Let <math|x\<in\>U> then by [theorem: <reference|normed space and open
    sets>] there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such
    that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>U>.
    Let <math|V> be a open set such that <math|x\<in\>V> then by [theorem:
    <reference|normed space and open sets>] again there exist a
    <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|2>|)>\<subseteq\>V>.
    As <math|X> is non trivial there exist a <math|x<rsub|0>\<in\>X<text|
    with >x<rsub|0>\<neq\>0>. Take <math|\<delta\>=min<around*|(|<frac|\<delta\><rsub|1>|2>,<frac|\<delta\><rsub|2>|2>|)>\<in\>\<bbb-R\><rsup|+>>
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
    a non trivial normed space <math|A\<subseteq\>X> then if
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
    be a non trivial normed space and <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
    then <math|\<forall\>x\<in\>X> we have

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
  apprimations of a function at <math|a> then they coincide on
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
    <math|L<rsub|1>-L<rsub|2>> is continous we have by [theorem:
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
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
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
      differential is clearly dependend not only dependent <math|x> but also
      on the domain of <math|f>. As <math|A=dom<around*|(|f|)>> depends on
      <math|f> <math|D<rsub|x>f> clearly shows this two dependends.\ 
    </note>

    <\note>
      If <math|A> is open or <math|x\<in\>A<rsup|0>> then by [theorem:
      <reference|diff SA(a)>] <math|S<rsub|A><around*|(|x|)>=X> so that in
      that case

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

    snd\ 

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
      C<rsub|y>:X\<rightarrow\>Y<text| defined by >C<rsub|y><around*|(|x|)>=y
    </equation*>

    is Fréchet differentiable at <math|x> and\ 

    <\equation*>
      D<rsub|x>C<rsub|y>=<around*|(|C<rsub|0>|)><rsub|\|T<rsub|A><around*|(|x|)>>
    </equation*>

    If <math|A> is open or <math|x\<in\>A<rsup|0>> then by [theorem:
    <reference|diff tangent cone of open sets>, <reference|diff tangent cone
    of inner point>] <math|T<rsub|A><around*|(|x|)>> so that in this case\ 

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
      <math|\<varepsilon\>>-maping <math|\<varepsilon\>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<equallim\><rsub|<text|[theorem:
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

      Usng [eq: <reference|eq 16.23.1>, <reference|eq 16.24.2>] it follows
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

      Usng [eq: <reference|eq 16.23.1>] and [eq: <reference|eq 16.32.2>] we
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

      Usng [eq: <reference|eq 16.23.1>] and [eq: <reference|eq 16.39.2>] we
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
  </corollary>

  <\note>
    As <math|x\<in\>B<rsup|0><below|\<subseteq\>|<text|[theorem:
    <reference|topology interior of a set and inclusion>]>>A<rsup|0>> it
    follows from [theorem: <reference|topology interior point is a limit
    point in a normed space>] <math|x> is a limit point of <math|A> an
    <math|B> which is needed for the existence of the derivatives.
  </note>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is has a derivative at
      <math|x> it follows from [theorem: <reference|diff derivate and frechet
      differential>] that <math|f> is Fréchet differentiable at <math|x> and
      <math|f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>>. Using [theorem:
      <reference|diff differentiability is a local property>] it follows that
      <math|f<rsub|\|B>> is Fréchet differentiable at <math|x> with
      <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>. Hense using [theorem:
      <reference|diff derivate and frechet differential>] again it follows
      that <math|f<rsub|\|B>> has a derivate at <math|x> with
      <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>=D<rsub|x>f<rsub|\|B><around*|(|1|)>=D<rsub|x>f<around*|(|1|)>=f<rprime|'><rsub|x>>.\ 

      <item*|<math|\<Leftarrow\>>>As <math|f<rsub|\|B>> has a derivative at
      <math|x> it follows from [theorem: <reference|diff derivate and frechet
      differential>] that <math|f<rsub|\|B>> is Fréchet differentiable at
      <math|x> and <math|<around*|(|f<rsub|B>|)><rprime|'><rsub|x>=D<rsub|x>f<rsub|\|B><around*|(|1|)>>.
      Using [theorem: <reference|diff differentiability is a local property>]
      it follows that <math|f> is Fréchet differentiable at <math|x> with
      <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>. Hense using [theorem:
      <reference|diff derivate and frechet differential>] again it follows
      that <math|f> has a derivate at <math|x> with
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

  TODO

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

      <item>
    </enumerate>

    \;
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

    <\equation*>
      D<rsub|x>f=<around*|(|L<rsub|f>|)><rsub|\|S<rsub|A><around*|(|x|)>>
    </equation*>

    Further as <math|g> is Fréchet differentiable at <math|f<around*|(|x|)>>
    we have using [theorem: <reference|diff differentiability alternative
    definitions>] that there exist a <math|L<rsub|g>\<in\>L<around*|(|X,Y|)>>
    such that there exist <math|\<varepsilon\>>-mapping
    <math|\<varepsilon\><rsub|g>:B<rsub|f<around*|(|x|)>>\<rightarrow\>Z>
    satisfying

    <\equation>
      <label|eq 16.8.178>\<forall\>k\<in\>B<rsub|f<around*|(|x|)>><text| we
      have >g<around*|(|f<around*|(|x|)>+k|)>-g<around*|(|f<around*|(|x|)>|)>-L<rsub|g><around*|(|k|)>=<around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|k|)>
    </equation>

    Let <math|h\<in\>A<rsub|x>>. As <math|<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+f<around*|(|x|)>=f<around*|(|x+h|)>\<in\>f<around*|(|A|)>\<subseteq\>B>
    we have that <math|f<around*|(|x+h|)>-f<around*|(|x|)>\<in\>B<rsub|f<around*|(|x|)>>>,
    combining this with [eq: <reference|eq 16.8.178>] gives\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.8.178>]>>>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x|)>+<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      <rsub|f<around*|(|x|)>>g<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D<rsub|f<around*|(|x|)>>g<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.7.178>]>>>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      <rsub|f<around*|(|x|)>>g<around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>+D<rsub|x>f<around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      <rsub|f<around*|(|x|)>>g<around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>-D<rsub|f<around*|(|x|)>>
      g<around*|(|D<rsub|x>f<around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-D
      <rsub|f<around*|(|x|)>>g<around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>-<around*|(|D<rsub|f<around*|(|x|)>>
      g\<circ\>D<rsub|x>f|)><around*|(|h|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D<rsub|f<around*|(|x|)>>
      g\<circ\>D <rsub|x>f|)><around*|(|h|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+D<rsub|f<around*|(|x|)>>
      g<around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|>|<cell|<eq-number><label|eq
      16.9.178>>>>>
    </eqnarray*>

    The next logical step is to find a <math|\<varepsilon\>>-mapping
    <math|\<zeta\>:A<rsub|x>\<rightarrow\>Y> such that

    <\equation*>
      \<zeta\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>=<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>
    </equation*>

    because we can then use [theorem: <reference|diff differentiability
    alternative definitions>] to finish the proof. So define\ 

    <\equation*>
      \<zeta\>:A<rsub|x>\<rightarrow\>Y<text| by
      ><choice|<tformat|<table|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)><text|
      if >h\<in\>A<rsub|x>\\<around*|{|0|}>>>|<row|<cell|0<text| if >h=0>>>>>
    </equation*>

    Then for <math|h\<in\>A<rsub|x>> we have either:

    <\description>
      <item*|<math|h=0>>Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+0|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+0|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|0|\<\|\|\>><rsub|X>\<cdot\>D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|0|)>|)>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|=>|<cell|>>|<row|<cell|0\<cdot\>\<zeta\><around*|(|0|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item*|<math|h\<neq\>0>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><around*|(|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </description>

    Combining the above with [eq: <reference|eq 16.9.178>] gives us the
    desired

    <\equation>
      <label|eq 16.10.178><around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>
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
      [eq: <reference|eq 16.7.178>]>>>|<cell|<frac|<around*|\<\|\|\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>+D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|<around*|\<\|\|\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 16.11.178>]>>>|<cell|1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>>>
    </eqnarray*>

    hence\ 

    <\equation>
      <label|eq 16.12.178>\<forall\>h\<in\>A<rsub|x><text| with
      >0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|f><text|
      we have that ><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)><rsub|>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
    </equation>

    <math|> As <math|\<varepsilon\><rsub|g>> is a
    <math|\<varepsilon\>>-mapping it is continuous at <math|0>. So by
    [theorem: <reference|continuity in normed subspace>] there exist a
    <math|\<delta\><rsub|g>\<in\>\<bbb-R\><rsup|+>> such that

    <\equation>
      <label|eq 16.13.178>\<forall\>k\<in\>B<rsub|f<around*|(|x|)>><text|
      with ><around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g><text|
      we have ><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|k|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>
    </equation>

    As <math|f> is Fréchet differentiable at <math|x> we have by [theorem:
    <reference|diff differentiable function is continuous>] that <math|f> is
    continuous at <math|x>, hence there exist by \ [theorem:
    <reference|continuity in normed subspace>] a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>y\<in\>A> with <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|<rigid|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g>>>.
    So if <math|h\<in\>A<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|x+h\<in\>A> and <math|<rigid|<around*|\<\|\|\>|<around*|(|x+h|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>>
    so that <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g>>
    which by [eq: <reference|eq 16.13.178>] results in <math|>

    <\equation*>
      <around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>
    </equation*>

    Summarized\ 

    <\equation*>
      \<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
      we have ><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>
    </equation*>

    Combining this with [eq: <reference|eq 16.12.178>] we have
    <math|\<forall\>h\<in\>A<rsub|x>> with
    <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|f>|)>>
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)><rsub|>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|(|1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<less\>>|<cell|>>|<row|<cell|<around*|(|1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>>|<cell|>|<cell|>>>>
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
    have <math|<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|<rsub|f<around*|(|x|)>>
    g|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>|)>>>. Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>>>>>
    </eqnarray*>

    In other words\ 

    <\equation>
      <label|eq 16.15.178>\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2><text|
      we have ><around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2>
    </equation>

    Take now <math|\<delta\>=min<around*|(|\<delta\><rsub|f>,\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
    and <math|h\<in\>A<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h-0|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    then we have either:

    <\description>
      <item*|<math|h=0>>Then <math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|\<zeta\><around*|(|0|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Z>\<less\>\<varepsilon\>>

      <item*|<math|h\<neq\>0>>Then <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|f>,\<delta\><rsub|1>,\<delta\><rsub|2>>
      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>>|<cell|=>|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|><rsub|X>>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.14.178>]>>>|<cell|<frac|\<varepsilon\>|2>+<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.15.178>]>>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>
    </description>

    So we have in all cases that <math|><math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>\<less\>\<varepsilon\>>
    which as <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> was chosen
    arbitrary proves that <math|\<zeta\>> is continuous at <math|0>. As also
    <math|\<zeta\><around*|(|0|)>=0> it follows by definition that
    <math|\<zeta\>:A<rsub|x>\<rightarrow\>Z> is a
    <math|\<varepsilon\>>-mapping. Hence as by [eq: <reference|eq 16.10.178>]
    <math|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>
    it follows from [theorem: <reference|diff differentiability alternative
    definitions>] together with <math|X<below|=|<text|[eq: <reference|eq
    16.52.3>]>><wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>
    that

    <\equation*>
      g\<circ\>f<text| is Fréchet differentiable with differential
      >D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
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

  <\corollary>
    <label|diff chain rule calculus>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    the normed space of real or complex numbers,
    <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A> where
    <math|B\<subseteq\>\<bbb-K\>> \ and <math|f:A\<rightarrow\>\<bbb-K\>>,
    <math|g:B\<rightarrow\>X> functions such that
    <math|f<around*|(|A|)>\<subseteq\>B>, <math|f> has a derivative
    <math|f<rprime|'><rsub|x>> at <math|x> and <math|g> has a derivative
    <math|g<rprime|'><rsub|f<around*|(|x|)>>> at <math|f<around*|(|x|)>>.
    Then <math|g\<circ\>f:U\<rightarrow\>Y> has a derivative at <math|x> and

    <\equation*>
      <around*|(|g\<circ\>f|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>\<cdot\>g<rprime|'><rsub|f<around*|(|x|)>>
    </equation*>
  </corollary>

  <\proof>
    Using [theorem: <reference|diff derivate and frechet differential>] it
    follows that <math|f> is Fréchet differentiable at <math|x> and <math|g>
    is Fréchet differentiable at <math|f<around*|(|x|)>>. Using the Chain
    Rule [theorem: <reference|diff chain rule>] we have that
    <math|g\<circ\>f> is Fréchet differentiable at <math|x>. Hence, using
    \ [theorem: <reference|diff derivate and frechet differential>], we have
    that <math|g\<circ\>f> has a derivative at <math|x>. Further we have\ 

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
    <math|D<rsub|f<around*|(|x|)>>L=L>. Hence using [theorem: <reference|diff
    chain rule>] <math|L\<circ\>f> is Fréchet differentiable at <math|x> and

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
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, <math|U> a open set in
      <math|X<rsub|i>> then we have that <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|U>>
      is Fréchet differentiable on <math|U> with <math|\<forall\>t\<in\>U>
      <math|D<rsub|t><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|U>=I<rsup|<around*|[|i,0|]>>>.

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
        \<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>=\<pi\><rsub|j><around*|(|<around*|(|0,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|j>|)>\<ldots\>,0|)>=<choice|<tformat|<table|<row|<cell|t<text|
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
      <math|t\<in\>U\<subseteq\>X<rsub|i>>. As <math|U> is open we have by
      [theorem: <reference|diff tangent cone of open sets>] that

      <\equation>
        <label|eq 16.64.3>X<rsub|i>=<wide|span<around*|(|T<rsub|U><around*|(|t|)>|)>|\<wide-bar\>>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then we have
      <math|\<forall\>h\<in\>U<rsub|t>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|U><around*|(|t+h|)>-<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|U><around*|(|t|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t+h|)>-I<rsup|<around*|[|i,x|]>><around*|(|t|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t+h,x<rsub|i>,\<ldots\>,x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,h,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,h,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>-<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,h,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|i>>|<cell|>|<cell|>>>>
      </eqnarray*>

      which together with (1) and (eq: <reference|eq 16.64.3>] proves that\ 

      <\equation*>
        <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|U><text| is Fréchet
        differentiable at <math|t> with differential
        >D<rsub|t>I<rsup|<around*|[|i,x|]>>=I<rsup|<around*|[|i,0|]>>
      </equation*>

      <item>Let <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then by (4) we have that <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|X>>
      is Fréchet differentiable on <math|U.> Using [theorem: <reference|diff
      differentiable function is continuous>] it follows then that
      <math|I<rsup|<around*|[|i,x|]>>> is continuous.

      <item>Let <math|U> be a open set in
      <math|><math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>.
      As <math|I<rsup|<around*|[|i,x|]>>=<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|X<rsub|i>>>
      it follows from (5) that <rigid|<math|I<rsup|<around*|[|i,x|]>>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>>
      is continuous. Hence as <math|U> is open we conclude that
      <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>
      is open.

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|t\<in\>X<rsub|i>> then we have for
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>>\ 

      <\equation*>
        <around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)><rsub|k>=<around*|(|0,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>0|)><rsub|k>=\<delta\><rsub|i,k>\<cdot\>t
      </equation*>
    </enumerate>
  </proof>

  <\definition>
    <label|diff multiparameter function to one parameter function>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|[|1,\<ldots\>,n|]>>>
    be a finite family of sets, <math|<rigid|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>>,
    <math|x\<in\>A>, <math|Y> a set, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|f:A\<rightarrow\>Y> a function then, as
    <math|<rigid|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>=X<big|cap><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>>,
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

  It turns out that partial differentiability is a local property.

  <\theorem>
    <label|diff partial differentiation is local>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|V\<subseteq\>A<text| with >V> a open set,
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>V>,
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
      f<rsub|\|V><text| is >i<text|-partial differentiable at >x
    </equation*>

    Further if <math|f> or <math|f<rsub|\|V>> is <math|i>-partial
    differentiable at <math|x> then <math|D<rsub|x,i>f=D<rsub|x,i>f<rsub|\|V>>.
  </theorem>

  <\proof>
    \ Using [lemma: <reference|lemma 16.24.178> (6)] \ and the fact that
    <math|V> is open we have that

    <\equation>
      <label|eq 16.66.3><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)><text|
      is a open set>
    </equation>

    For <math|t\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|f<rsub|\|V>|)><rsup|<around*|[|i,x|]>><around*|(|t|)>>|<cell|=>|<cell|<around*|(|f<rsub|\|V>\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|t|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsub|\|V><around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsub|\|V><around*|(|x<rsub|1>\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x<rsub|1>\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|[|i,x|]>><around*|(|t|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 16.18.212><around*|(|f<rsub|\|V>|)><rsup|<around*|[|i,x|]>>=<around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>>
    </equation>

    Further we have by [lemma: <reference|lemma 16.24.178> (2)]
    <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>=x\<in\>V> so that

    <\equation>
      <label|eq 16.69.3.3>x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>=A<rsub|<around*|[|i,x|]>><below|=|<text|[eq:
      <reference|eq 16.66.3>]>\<wedge\><text|[theorem: <reference|topology
      open set and interior>]>>x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>|)><rsup|0>
    </equation>

    Hence we have:\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f> is <math|i>-partial
      differentiable at <math|x> with <math|i>-partial differential
      <math|D<rsub|x,i>f> then by definition <math|f<rsup|<around*|[|i,x|]>>>
      is Fréchet differentiable at <math|x<rsub|i>> and

      <\equation>
        <label|eq 16.67.3>D<rsub|x,i>f=D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>
      </equation>

      As <math|x<below|\<in\>|<text|[eq: <reference|eq
      16.69.3.3>]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>|)><rsup|0>>
      we have using [theorem: <reference|diff differentiability is a local
      property>] that <math|<around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>>>
      is Fréchet differentiable at <math|x<rsub|i>> and

      <\equation>
        <label|eq 16.68.3>D<rsub|x<rsub|i>><around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>>=D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>
      </equation>

      Hence by [eq: <reference|eq 16.18.212>]
      <math|<around*|(|f<rsub|\|V>|)><rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> with
      <math|D<rsub|x<rsub|i>><around*|(|f<rsub|\|V>|)><rsup|<around*|[|i,x|]>><below|=|<text|[eq:
      <reference|eq 16.68.3>]>>D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>> or
      using the definition of partial differentiation

      <\equation*>
        f<rsub|\|V><text| is >i<text|-partial differentiable at >x<text| and
        >D<rsub|x,i>f<rsub|\|V>=D<rsub|x,i>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>If <math|f<rsub|\|V>> is <math|i>-partial
      differentiable at <math|x> with <math|i>-partial differential
      <math|D<rsub|x,i>f<rsub|\|V>> then by definition
      <math|<around*|(|f<rsub|\|V>|)><rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> and
      <math|D<rsub|x,i><around*|(|f<rsub|\|V>|)>=D<rsub|x<rsub|i>><around*|(|f<rsub|\|V>|)><rsup|<around*|[|i,x|]>>>.
      Using [eq: <reference|eq 16.18.212>] we have that
      <math|<around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>>>
      is Fréchet differentiable at <math|x<rsub|i>> and <math|>

      <\equation*>
        D<rsub|x,i>f<rsub|\|V>=D<rsub|x<rsub|i>><around*|(|f<rsub|\|V>|)><rsup|<around*|[|i,x|]>>=D<rsub|x<rsub|i>><around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>>
      </equation*>

      As <math|x<rsub|i><below|\<in\>|<text|[eq: <reference|eq
      16.69.3.3>]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|V|)>|)><rsup|0><text|
      >> we have by [theorem: <reference|diff differentiability is a local
      property>] that <math|f<rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> with
      <math|D<rsub|x<rsub|i>><around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|V<rsub|<around*|[|i,x|]>>>=D<rsub|x<rsub|i>>f<rsup|<around*|[|i,x|]>>>.
      Hence by definition\ 

      <\equation*>
        f<text| is partial differentiable at >x<text| and
        >D<rsub|x,i>f<rsub|\|V>=D<rsub|x,i>f
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
    that there exist a open set <math|W> with <math|W\<subseteq\>A<big|cap>B>
    and <math|f<rsub|\|W>=g<rsub|\|W>>, <math|x\<in\>W> and
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

  If the domain of a function is open Fréchet differentiable implies partial
  differentiability.

  <\theorem>
    <label|diff Frechet differentation implies partial differentiability >Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|U\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    a <with|font-series|bold|open> set, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function that is Fréchet differentiable at
    <math|x> then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|f> is <math|i>-partial differentiable at <math|x> with
    <math|i>-partial differential

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

    <\note>
      The proof uses the fact that the domain of <math|f> is open.
    </note>
  </theorem>

  <\proof>
    By [lemma: <reference|lemma 16.24.178> (6)] it follows that\ 

    <\equation*>
      <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)><text|
      is open>
    </equation*>

    so that by \ [lemma: <reference|lemma 16.24.178> (4)]

    <\equation*>
      <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j><text|
      is Fréchet differentiable at >x<rsub|i>
    </equation*>

    with\ 

    <\equation>
      <label|eq 16.19.136>D<rsub|x<rsub|i>><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>(4)]>>I<rsup|<around*|[|i,0|]>>
    </equation>

    Further, as <math|f:U\<rightarrow\>Y> is Fréchet differentiable at
    <math|x=I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>> and\ 

    <\equation*>
      I<rsup|<around*|[|i,x|]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>|)>\<subseteq\><rsub|<text|[theorem:
      <reference|function preimage of image (1)>]>>U
    </equation*>

    we can use the Chain Rule [theorem: <reference|diff chain rule>] so that

    <\equation*>
      f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>><text|
      is differentiable at >x<rsub|i>
    </equation*>

    with\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x<rsub|i>><around*|(|f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>|)>>|<cell|=>|<cell|D<rsub|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>>f\<circ\>D<rsub|x<rsub|i>><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>>f\<circ\>D<rsub|x<rsub|i>><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>(2)]>>>|<cell|D<rsub|x>f\<circ\>D<rsub|x<rsub|i>><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.19.136>]>>>|<cell|D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>>>>>
    </eqnarray*>

    Hence by [defintion: <reference|diff partial differential definition>] it
    follows that\ 

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
    <reference|normed maximum norm>], <math|U\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    a open set, <math|x\<in\>U> and <math|y\<in\>Y> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that the
    constant function

    <\equation*>
      C<rsub|y>:U\<rightarrow\>Y<text| defined by >C<rsub|y><around*|(|x|)>=y
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
  <math|f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>>
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
        f+g:U\<rightarrow\>Y
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
    <label|diff chain rule and partial differential (1)>Let
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
      f:A\<rightarrow\>Y<text| a function >i<text|-partial differentiable at
      >x<text| such that >f<around*|(|A|)>\<subseteq\>B
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
    compositions>]>>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)>|)><below|=|<text|[theorem:
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

  As for functions whose domain is open Fréchet differentiability implies
  partial differentiability.

  <\theorem>
    <label|diff chain rule and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|><math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed spaces, <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    a open set in <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|V\<subseteq\>Y> a open set in <math|Y>, <math|x\<in\>X>,\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| a function differentiable at <math|x> such
      that >f<around*|(|U|)>\<subseteq\>V
    </equation*>

    and\ 

    <\equation*>
      g:V\<rightarrow\>Z<text| a function differentiable at
      <math|f<around*|(|x|)>>>
    </equation*>

    then\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| >g\<circ\>f<text| is
      >i<text|-partial differentiable at >x
    </equation*>

    and

    <\equation*>
      D<rsub|x,i><rsup|><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x,i><rsup|>f
    </equation*>
  </theorem>

  <\proof>
    Using the Chain Rule [theorem: <reference|diff chain rule>] it follows
    that\ 

    <\equation*>
      g\<circ\>f:U\<rightarrow\>Z
    </equation*>

    is differentiable at <math|x> with\ 

    <\equation>
      <label|eq 16.18.178>D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
    </equation>

    Hence, using [theorem: <reference|diff Frechet differentation implies
    partial differentiability >] it follows that <math|g\<circ\>f> is
    <math|i>-partial differentiable at <math|x> with <math|i>-partial
    differential

    <\equation*>
      D<rsub|x,i><rsup|><around*|(|g\<circ\>f|)>=D<rsub|x><around*|(|g\<circ\>f|)>\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation*>

    Substituting [eq: <reference|eq 16.18.178>] in the above gives\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x,i><rsup|><around*|(|g\<circ\>f|)>>|<cell|=>|<cell|<around*|(|D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f|)>\<circ\>I<rsup|<around*|[|i,0|]>>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|x|)>>g\<circ\><around*|(|D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff Frechet differentation implies partial
      differentiability >]>>>|<cell|D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x,i><rsup|>f>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.19.178>D<rsub|x,i><rsup|><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x,i><rsup|>f
    </equation>
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
    normed space, <math|A\<subseteq\>\<bbb-R\><rsup|n>>, <math|x\<in\>A>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and

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
      x<rsub|i><text| is a limit point of
      ><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>
    </equation*>

    and

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exist a
      >\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsub|x<rsub|i>><text|
      with >0\<less\><around*|\||h|\|>\<less\>\<delta\><text| we have >
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x<rsub|1>,\<ldots\><wide*|x<rsub|i>+h|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>-f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|h>-\<partial\><rsub|x,i>f|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|x+h|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|x|)>|)>|>-\<partial\><rsub|x,i>f|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x+h|)>-<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x|)>|h>-\<partial\><rsub|x,i>f<around*|(|x|)>|\<\|\|\>>>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>
  </definition>

  <\note>
    As <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)><below|=|<text|[lemma:
    <reference|lemma 16.24.178>(2)]>>x\<in\>A> it follows that
    <math|x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>
    which is needed for the definition to make sense.
  </note>

  We have the following equivalent definition for the partial derivative of a
  function.

  <\theorem>
    <label|diff partial derivate and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-R\><rsup|n>> equipped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>> a open set in
    <math|\<bbb-R\><rsup|n>>, <math|x\<in\>A>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and

    <\equation*>
      f:A\<rightarrow\>X<text| a function >
    </equation*>

    then\ 

    <\equation*>
      f<text| has a >i<text|-partial derivative at >x<text|
      >\<Leftrightarrow\><text| >f<text| has a >i<text|-partial differential
      at >x
    </equation*>

    Further if <math|f> has a <math|i>-partial derivative or differential at
    <math|x> then\ 

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
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> has a <math|i>-partial
      derivative at <math|x> <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> has a
      derivative at <math|x<rsub|i>>. Using [theorem: <reference|diff
      derivate and frechet differential>] it follows that
      <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is Fréchet differentiable at
      <math|x<rsub|i>>, hence by definition

      <\equation*>
        f<text| is >i<text|-partial differentiable at >x
      </equation*>

      \ Further by [theorem: <reference|diff derivate and frechet
      differential>] we have also

      <\equation*>
        <around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><rsub|x<rsub|i>>=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|1|)>
      </equation*>

      and\ 

      <\equation*>
        \<forall\>h\<in\>\<bbb-R\><text| >D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>=h\<cdot\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|x<rsub|i>><rprime|'>
      </equation*>

      As <math|\<partial\><rsub|x,i>f\<equallim\><rsub|<text|def>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><rsub|x<rsub|i>>>
      and <math|D<rsup|><rsub|x,i>f\<equallim\><rsub|<text|def>>D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>>
      we have\ 

      <\equation*>
        \<partial\><rsub|x,i>f=D<rsup|><rsub|x,i>f<around*|(|1|)><text| and
        >\<forall\>h\<in\>\<bbb-R\><text| that
        >D<rsup|><rsub|x,i>f<around*|(|h|)>=h\<cdot\>\<partial\><rsub|x,i>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|f> has a <math|i>-partial
      differential at <math|x> <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is
      Fréchet differentiable at <math|x<rsub|i>>. Using [theorem:
      <reference|diff derivate and frechet differential>] it follows that
      <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> has a derivative at
      <math|x<rsub|i>> and thus by definition that <math|f> has a
      <math|i>-partial derivative at <math|x>.
    </description>
  </proof>

  Using the above theorem it is easy to prove that partial derivating is
  local.

  <\corollary>
    <label|diff partial derivation is local>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-R\><rsup|n>> equiped with the maximum norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A,B\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|f:A\<rightarrow\>Y>, <math|g:B\<rightarrow\>Y> two functions such
    that there exist a open set <math|W> with <math|W\<subseteq\>A<big|cap>B>
    and <math|f<rsub|\|W>=g<rsub|\|W>>, <math|x\<in\>W> and
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>. Then if <math|f> has a
    <math|i>-partial derivative at <math|x> then <math|g> has a partial
    derivative at <math|x> and <math|\<partial\><rsub|x,i>f=\<partial\><rsub|x,i>g>.
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
    normed space, <math|U\<subseteq\>\<bbb-R\><rsup|n>> a open set in
    <math|\<bbb-R\><rsup|n>>, <math|x\<in\>U> and\ 

    <\equation*>
      f:U\<rightarrow\>X<text| a function that is Fréchet differentiable at
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

      Further give <math|h\<in\>\<bbb-K\><rsup|n>> we have\ 

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
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f> is differentiable at <math|x> we have\ 

      <\equation>
        <label|eq 16.81.3>X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>
      </equation>

      and there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>> we have\ 

      <\equation>
        <label|eq 16.21.178><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|max>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-<around*|(|\<pi\><rsub|i>\<circ\>D<rsub|x>f|)><around*|(|h|)>|\<\|\|\>><rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|D<rsub|x>f<around*|(|h|)>|)>|\<\|\|\>><rsub|i><rsub|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|)>|\<\|\|\>><rsub|i>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<equallim\><rsub|def>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.21.178>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving together with [eq: <reference|eq 16.81.3>] that

      <\equation*>
        \<pi\><rsub|i>\<circ\>f<text| is differentiable at >x<text| with
        >D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>=\<pi\><rsub|i>\<circ\>D<rsub|x>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as
      <math|\<pi\><rsub|i>\<circ\>f> is differentiable at <math|x> we have\ 

      <\equation>
        <label|eq 16.83.3>X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>
      </equation>

      and there exist a <math|\<delta\><rsub|i>\<in\>\<bbb-R\><rsup|+>> so
      that <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><rsub|i>> we have

      <\equation*>
        <around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|h|)>|\<\|\|\>><rsub|i>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
      </equation*>

      so that

      <\equation>
        <label|eq 16.22.178>max<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|h|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
      </equation>

      If <math|h\<in\>A<rsub|x>> satisfies
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>max<around*|(|<around*|{|\<delta\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|h|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|h|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|h|)>|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|h|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|h|)>|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|h|)>i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|h|)>i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving, as by [theorem: <reference|diff vector functions and
      linearity>] <math|<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>
      and <math|X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>
      [see eq: <reference|eq 16.83.3>] that

      <\equation*>
        f<text| is Fréchet differentiable at <math|x> with
        >D<rsub|x>f=<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><rsub|\<ast\>>
      </equation*>
    </description>
  </proof>

  We have the following chain rule for the differential of vector valued
  functions

  <\corollary>
    <label|diff vector functions (2)>Let <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed spaces equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>X><math|>, <math|x\<in\>B>,
    <math|B\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    and\ 

    <\equation*>
      f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i><text|
      and >g:B\<rightarrow\>Z
    </equation*>

    functions such that\ 

    <\equation*>
      f<around*|(|A|)>\<subseteq\>B<text|, >f<text| Fréchet differentiable at
      >x<text| and >g<text| Fréchet differentiable at >f<around*|(|x|)>
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

  \;

  <\theorem>
    <label|diff Jacobian matrix><dueto|Jacobian matrix>Let
    <math|n,m\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    two normed spaces [based on the maximum norms) over the field
    <math|\<bbb-R\>>, <math|U\<subseteq\>\<bbb-R\><rsup|n>> a open set in
    <math|\<bbb-R\><rsup|n>>, <math|x\<in\>U> and

    <\equation*>
      f:U\<rightarrow\>\<bbb-R\><rsup|m><text| a function that is Fréchet
      differentiable at <math|x>>
    </equation*>

    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> we have that
    <math|\<pi\><rsub|j>\<circ\>f:U\<rightarrow\>\<bbb-R\>> has a
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
    <math|\<pi\><rsub|j>\<circ\>f:U\<rightarrow\>\<bbb-R\>> is Fréchet
    differentiable at <math|x> with\ 

    <\equation>
      <label|eq 16.23.178>D<rsub|x><around*|(|\<pi\><rsub|j>\<circ\>f|)>=\<pi\><rsub|j>\<circ\>D<rsub|x>f
    </equation>

    Hence using [theorem: <reference|diff differentiability and K^n>]
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
    <reference|diff tangent cone of open sets>] that
    <math|X<rsub|1>\<cdot\>X<rsub|2>=<wide|span<around*|(|T<rsub|X<rsub|1>\<cdot\>X<rsub|2>><around*|(|x|)>|)>|\<wide-bar\>>>.
    Hence we have by definition that

    <\equation*>
      L<text| is Fréchet differentiable at >x<text| with
      >D<rsub|x>L=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
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

    Using the Chain Rule [see theorem: <reference|diff chain rule>] on [eqs:
    <reference|eq 16.33.181> and <reference|eq 16.34.181>] we have that
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
    <math|A\<subseteq\>\<bbb-R\>>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>\<bbb-K\>> and <math|g:A\<rightarrow\>\<bbb-K\>>
    functions that have a derivative at <math|x> then <math|g\<cdot\>f> has a
    derivative at <math|x> and\ 

    <\equation*>
      <around*|(|g\<cdot\>f|)><rprime|'><rsub|x>=g<around*|(|x|)>\<cdot\>f<rprime|'><rsub|x>+f<around*|(|x|)>\<cdot\>g<rprime|'><rsub|x>
    </equation*>
  </corollary>

  <\proof>
    Using [theorem: <reference|diff derivate and frechet differential>] we
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

    We can use [theorem: <reference|diff derivate and frechet differential>]
    again, giving that

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
    <math|x\<in\>A> and <math|f:A\<rightarrow\>\<bbb-K\>> and
    <math|g:A\<rightarrow\>\<bbb-K\>> are functions such that
    <math|\<forall\>x\<in\>A> <math|g<around*|(|x|)>\<neq\>0>, <math|f> has a
    derivative at <math|x> and <math|g> has a derivative at <math|x> then the
    function\ 

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

  We are now ready to define higher order Fréchet differentiation and higher
  order derivation.

  <\definition>
    <label|diff higher order differentiation><index|<math|n>-times
    differentiability><index|<math|D<rsup|<around*|[|n|]>>f*<around*|(|x|)>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|<rigid|f:U\<rightarrow\>Y>> a function then <math|f> is
    <with|font-series|bold|<math|n>-times Fréchet differentiable at <math|x>>
    with differential <math|<rigid|D<rsub|x><rsup|<around*|[|n|]>>f<around*|(|x|)>\<in\>L<rsub|n><around*|(|X;Y|)>>>
    if we have for <math|n> either

    <\description>
      <item*|<math|n=1>>Then <math|f> must be Fréchet differentiable at
      <math|x> and <math|D<rsup|<around*|[|1|]>>f> is defined by

      <\equation*>
        D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f\<in\>L<around*|(|X,Y|)>=L<rsub|1><around*|(|X;Y|)>
      </equation*>

      <item*|<math|1\<less\>n>>Then there must exist a open set <math|V> in
      <math|X> with <math|x\<in\>V\<subseteq\>U> such that
      <math|\<forall\>y\<in\>V> <math|f> is <math|<around*|(|n-1|)>>-times
      differentiable at <math|y> and the function

      <\equation*>
        D<rsup|<around*|[|n-1|]>>f:V\<rightarrow\>L<rsub|n-1><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n-1|]>>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n-1|]>>f
      </equation*>

      is Fréchet differentiable at <math|x> and
      <math|D<rsup|<around*|[|n|]>><rsub|x>f> is defined by

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>>f|)>\<in\>L<around*|(|X,L<rsub|n-1><around*|(|X;Y|)>|)>=L<rsub|n><around*|(|X;Y|)>
      </equation*>
    </description>

    <\note>
      <label|note 16.65.191>In the case <math|1\<less\>n> we must ensure that
      <math|D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>>|)>> does not
      depended on the choice of <math|V> otherwise this is not a valid
      definition. This is ensured by the locality of differentials [see
      corollary: <reference|diff differentiability is a local property (1)>].
    </note>
  </definition>

  Just as the Fréchet differentiation is local [see theorem: <reference|diff
  differentiability is a local property>] higher order Fréchet
  differentiation is local.

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

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|15>
    <associate|page-first|889>
    <associate|par-first|0tab>
    <associate|par-mode|justify>
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
    <associate|auto-3|<tuple|16.1.1|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-5|<tuple|convergence of a function|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>|?>>
    <associate|auto-7|<tuple|16.1.2|?>>
    <associate|auto-8|<tuple|differentiability|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping|?>>
    <associate|convergence of a function to a point|<tuple|16.6|?>>
    <associate|corollary 16.50.192|<tuple|16.105|?>>
    <associate|diff Bx(x,d)|<tuple|16.5|?>>
    <associate|diff Frechet approximation|<tuple|16.21|?>>
    <associate|diff Frechet differentation implies partial differentiability
    |<tuple|16.76|?>>
    <associate|diff Jacobian matrix|<tuple|16.95|?>>
    <associate|diff L(x1:..xn)|<tuple|16.106|?>>
    <associate|diff L(x1:..xn)=L(1:..:1). product|<tuple|16.110|?>>
    <associate|diff L_n(X;Y)|<tuple|16.102|?>>
    <associate|diff SA(a)|<tuple|16.32|?>>
    <associate|diff Ux|<tuple|16.2|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.4|?>>
    <associate|diff calculus derivate|<tuple|16.17|?>>
    <associate|diff calculus derivate (1)|<tuple|16.14|?>>
    <associate|diff chain rule|<tuple|16.63|?>>
    <associate|diff chain rule (1)|<tuple|16.64|?>>
    <associate|diff chain rule and partial differential|<tuple|16.83|?>>
    <associate|diff chain rule and partial differential (1)|<tuple|16.82|?>>
    <associate|diff chain rule calculus|<tuple|16.66|?>>
    <associate|diff composition with a linear mapping|<tuple|16.67|?>>
    <associate|diff cone|<tuple|16.24|?>>
    <associate|diff constant function and partial
    differentiation|<tuple|16.78|?>>
    <associate|diff constant function is differentiable|<tuple|16.40|?>>
    <associate|diff derivate and frechet differential|<tuple|16.57|?>>
    <associate|diff derivate of a product of functions|<tuple|16.98|?>>
    <associate|diff derivate of inverse function|<tuple|16.99|?>>
    <associate|diff derivate operator is linear|<tuple|16.61|?>>
    <associate|diff derivative is local|<tuple|16.58|?>>
    <associate|diff derivative is local (1)|<tuple|16.60|?>>
    <associate|diff derivative of f/g|<tuple|16.101|?>>
    <associate|diff differentiability|<tuple|16.33|?>>
    <associate|diff differentiability alternative
    definitions|<tuple|16.50|?>>
    <associate|diff differentiability alternative definitions
    (1)|<tuple|16.51|?>>
    <associate|diff differentiability and K^n|<tuple|16.88|?>>
    <associate|diff differentiability is a local property|<tuple|16.45|?>>
    <associate|diff differentiability is a local property
    (1)|<tuple|16.47|?>>
    <associate|diff differentiability on a set|<tuple|16.37|?>>
    <associate|diff differentiable function is continuous|<tuple|16.52|?>>
    <associate|diff differential of a vector valued function|<tuple|16.93|?>>
    <associate|diff differential of product of functions|<tuple|16.97|?>>
    <associate|diff e-mapping|<tuple|16.49|?>>
    <associate|diff equivalent norms|<tuple|16.44|?>>
    <associate|diff higher order differentiation|<tuple|16.121|?>>
    <associate|diff identity function is differentiable|<tuple|16.42|?>>
    <associate|diff limit of a function|<tuple|16.9|?>>
    <associate|diff linear mappings are differentiable|<tuple|16.41|?>>
    <associate|diff linear to multilinear|<tuple|16.118|?>>
    <associate|diff multiparameter function to one parameter
    function|<tuple|16.70|?>>
    <associate|diff partial derivate and partial
    differential|<tuple|16.86|?>>
    <associate|diff partial derivate definition|<tuple|16.84|?>>
    <associate|diff partial derivation is local|<tuple|16.87|?>>
    <associate|diff partial differentiability does not mean
    differentiaility|<tuple|16.80|?>>
    <associate|diff partial differential definition|<tuple|16.71|?>>
    <associate|diff partial differential definition (1)|<tuple|16.73|?>>
    <associate|diff partial differential properties|<tuple|16.81|?>>
    <associate|diff partial differentiation is local|<tuple|16.74|?>>
    <associate|diff partial differentiation is local (1)|<tuple|16.75|?>>
    <associate|diff power|<tuple|16.100|?>>
    <associate|diff scalar product function has a derivate|<tuple|16.18|?>>
    <associate|diff tangent cone|<tuple|16.23|?>>
    <associate|diff tangent cone and inclusion|<tuple|16.28|?>>
    <associate|diff tangent cone and limit point|<tuple|16.55|?>>
    <associate|diff tangent cone and limit point reverse|<tuple|16.56|?>>
    <associate|diff tangent cone is a cone|<tuple|16.25|?>>
    <associate|diff tangent cone of inner point|<tuple|16.30|?>>
    <associate|diff tangent cone of open sets|<tuple|16.29|?>>
    <associate|diff uniqueness of the Frechet aproximation|<tuple|16.26|?>>
    <associate|diff unprojection|<tuple|16.68|?>>
    <associate|diff vector functions|<tuple|16.89|?>>
    <associate|diff vector functions (1)|<tuple|16.92|?>>
    <associate|diff vector functions (2)|<tuple|16.94|?>>
    <associate|diff vector functions and linearity|<tuple|16.91|?>>
    <associate|eq 16.1.1|<tuple|16.1|?>>
    <associate|eq 16.1.177|<tuple|16.23|?>>
    <associate|eq 16.10.178|<tuple|16.71|?>>
    <associate|eq 16.11.178|<tuple|16.72|?>>
    <associate|eq 16.12.178|<tuple|16.73|?>>
    <associate|eq 16.13.178|<tuple|16.74|?>>
    <associate|eq 16.14.178|<tuple|16.75|?>>
    <associate|eq 16.15.1|<tuple|16.17|?>>
    <associate|eq 16.15.178|<tuple|16.76|?>>
    <associate|eq 16.15.5|<tuple|16.6|?>>
    <associate|eq 16.16.1|<tuple|16.18|?>>
    <associate|eq 16.16.178|<tuple|16.77|?>>
    <associate|eq 16.16.180|<tuple|16.103|?>>
    <associate|eq 16.16.5|<tuple|16.7|?>>
    <associate|eq 16.17.1|<tuple|16.19|?>>
    <associate|eq 16.17.178|<tuple|16.85|?>>
    <associate|eq 16.17.180|<tuple|16.104|?>>
    <associate|eq 16.18.1|<tuple|16.20|?>>
    <associate|eq 16.18.178|<tuple|16.91|?>>
    <associate|eq 16.18.179|<tuple|16.86|?>>
    <associate|eq 16.18.180|<tuple|16.105|?>>
    <associate|eq 16.18.212|<tuple|16.80|?>>
    <associate|eq 16.19.136|<tuple|16.84|?>>
    <associate|eq 16.19.178|<tuple|16.92|?>>
    <associate|eq 16.19.179|<tuple|16.87|?>>
    <associate|eq 16.19.180|<tuple|16.106|?>>
    <associate|eq 16.19.3.1|<tuple|16.22|?>>
    <associate|eq 16.2.1|<tuple|16.2|?>>
    <associate|eq 16.2.177|<tuple|16.24|?>>
    <associate|eq 16.20.178|<tuple|16.95|?>>
    <associate|eq 16.20.181|<tuple|16.107|?>>
    <associate|eq 16.21.1|<tuple|16.21|?>>
    <associate|eq 16.21.178|<tuple|16.97|?>>
    <associate|eq 16.22.178|<tuple|16.99|?>>
    <associate|eq 16.23.1|<tuple|16.31|?>>
    <associate|eq 16.23.178|<tuple|16.100|?>>
    <associate|eq 16.24.1|<tuple|16.33|?>>
    <associate|eq 16.24.178|<tuple|16.101|?>>
    <associate|eq 16.24.2|<tuple|16.32|?>>
    <associate|eq 16.25.1|<tuple|16.34|?>>
    <associate|eq 16.25.178|<tuple|16.102|?>>
    <associate|eq 16.25.6|<tuple|16.25|?>>
    <associate|eq 16.26.1|<tuple|16.35|?>>
    <associate|eq 16.26.6|<tuple|16.26|?>>
    <associate|eq 16.27.1|<tuple|16.36|?>>
    <associate|eq 16.27.6|<tuple|16.27|?>>
    <associate|eq 16.28.1|<tuple|16.28|?>>
    <associate|eq 16.29.1|<tuple|16.38|?>>
    <associate|eq 16.3.1|<tuple|16.3|?>>
    <associate|eq 16.3.177|<tuple|16.29|?>>
    <associate|eq 16.30.1|<tuple|16.39|?>>
    <associate|eq 16.31.1|<tuple|16.41|?>>
    <associate|eq 16.32.1|<tuple|16.42|?>>
    <associate|eq 16.32.2|<tuple|16.40|?>>
    <associate|eq 16.33.1|<tuple|16.43|?>>
    <associate|eq 16.33.181|<tuple|16.108|?>>
    <associate|eq 16.34.181|<tuple|16.109|?>>
    <associate|eq 16.35.1|<tuple|16.45|?>>
    <associate|eq 16.35.181|<tuple|16.110|?>>
    <associate|eq 16.36.1|<tuple|16.46|?>>
    <associate|eq 16.36.182|<tuple|16.112|?>>
    <associate|eq 16.37.1|<tuple|16.48|?>>
    <associate|eq 16.37.182|<tuple|16.113|?>>
    <associate|eq 16.38.1|<tuple|16.49|?>>
    <associate|eq 16.38.182|<tuple|16.114|?>>
    <associate|eq 16.39.1|<tuple|16.50|?>>
    <associate|eq 16.39.182|<tuple|16.115|?>>
    <associate|eq 16.39.2|<tuple|16.47|?>>
    <associate|eq 16.4.1|<tuple|16.4|?>>
    <associate|eq 16.4.177|<tuple|16.30|?>>
    <associate|eq 16.41.1|<tuple|16.52|?>>
    <associate|eq 16.41.182|<tuple|16.117|?>>
    <associate|eq 16.42.1|<tuple|16.53|?>>
    <associate|eq 16.42.187|<tuple|16.119|?>>
    <associate|eq 16.43.187|<tuple|16.120|?>>
    <associate|eq 16.44.188|<tuple|16.121|?>>
    <associate|eq 16.45.153|<tuple|16.118|?>>
    <associate|eq 16.45.188|<tuple|16.122|?>>
    <associate|eq 16.46.188|<tuple|16.123|?>>
    <associate|eq 16.46.3|<tuple|16.54|?>>
    <associate|eq 16.463.298|<tuple|16.8|?>>
    <associate|eq 16.464.298|<tuple|16.9|?>>
    <associate|eq 16.465.298|<tuple|16.10|?>>
    <associate|eq 16.467.298|<tuple|16.12|?>>
    <associate|eq 16.468.298|<tuple|16.13|?>>
    <associate|eq 16.469.298|<tuple|16.14|?>>
    <associate|eq 16.47.188|<tuple|16.124|?>>
    <associate|eq 16.47.3|<tuple|16.55|?>>
    <associate|eq 16.470.298|<tuple|16.15|?>>
    <associate|eq 16.471.298|<tuple|16.16|?>>
    <associate|eq 16.48.188|<tuple|16.125|?>>
    <associate|eq 16.48.3|<tuple|16.56|?>>
    <associate|eq 16.49.189|<tuple|16.126|?>>
    <associate|eq 16.49.3|<tuple|16.58|?>>
    <associate|eq 16.49.3.1|<tuple|16.57|?>>
    <associate|eq 16.5.1|<tuple|16.5|?>>
    <associate|eq 16.5.178|<tuple|16.60|?>>
    <associate|eq 16.50.189|<tuple|16.127|?>>
    <associate|eq 16.51.3|<tuple|16.61|?>>
    <associate|eq 16.51\<point\>189|<tuple|16.128|?>>
    <associate|eq 16.52.3|<tuple|16.62|?>>
    <associate|eq 16.59.6|<tuple|16.59|?>>
    <associate|eq 16.62.6|<tuple|16.62|?>>
    <associate|eq 16.63.6|<tuple|16.63|?>>
    <associate|eq 16.64.3|<tuple|16.78|?>>
    <associate|eq 16.64.6|<tuple|16.64|?>>
    <associate|eq 16.65.6|<tuple|16.65|?>>
    <associate|eq 16.66.3|<tuple|16.79|?>>
    <associate|eq 16.66.6|<tuple|16.66|?>>
    <associate|eq 16.67.3|<tuple|16.82|?>>
    <associate|eq 16.67.6|<tuple|16.67|?>>
    <associate|eq 16.68.3|<tuple|16.83|?>>
    <associate|eq 16.69.3.3|<tuple|16.81|?>>
    <associate|eq 16.7.178|<tuple|16.68|?>>
    <associate|eq 16.73.3|<tuple|16.88|?>>
    <associate|eq 16.74.3|<tuple|16.89|?>>
    <associate|eq 16.75.3|<tuple|16.90|?>>
    <associate|eq 16.78.3|<tuple|16.93|?>>
    <associate|eq 16.79.3|<tuple|16.94|?>>
    <associate|eq 16.8.178|<tuple|16.69|?>>
    <associate|eq 16.81.3|<tuple|16.96|?>>
    <associate|eq 16.83.3|<tuple|16.98|?>>
    <associate|eq 16.9.178|<tuple|16.70|?>>
    <associate|eq 16.99.4|<tuple|16.111|?>>
    <associate|eq 16365.6|<tuple|16.65|?>>
    <associate|example 16.35.1|<tuple|16.39|?>>
    <associate|lemma 16.12.1|<tuple|16.13|?>>
    <associate|lemma 16.23.181|<tuple|16.96|?>>
    <associate|lemma 16.24.178|<tuple|16.69|?>>
    <associate|lemma 16.37.1|<tuple|16.43|?>>
    <associate|lemma 16.50.1|<tuple|16.54|?>>
    <associate|lemma 16.51.186|<tuple|16.109|?>>
    <associate|lemma 16.53.186|<tuple|16.111|?>>
    <associate|lemma 16.54.187|<tuple|16.112|?>>
    <associate|lemma 16.55.187|<tuple|16.113|?>>
    <associate|lemma 16.56.187|<tuple|16.114|?>>
    <associate|lemma 16.57.187|<tuple|16.115|?>>
    <associate|lemma 16.58.188|<tuple|16.116|?>>
    <associate|lemma 16.59.188|<tuple|16.117|?>>
    <associate|lemma 16.61.207|<tuple|16.104|?>>
    <associate|lemma 16.62.6|<tuple|16.62|?>>
    <associate|lemma 16.7.1|<tuple|16.8|?>>
    <associate|note 16.65.191|<tuple|16.122|?>>
    <associate|topology every element of a open or closed ball is a limit
    point|<tuple|16.12|?>>
    <associate|topology every element of a open set in a normed space is a
    limit point|<tuple|16.10|?>>
    <associate|topology interior point is a limit point in a normed
    space|<tuple|16.11|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
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
    </associate>
  </collection>
</auxiliary>
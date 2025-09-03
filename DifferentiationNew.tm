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
    <math|A<rsup|0>>. As <math|A<rsup|0><below|\<subseteq\>|<text|[definition:
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
    <math|f<rprime|'><rsub|x>>> if\ 

    <\enumerate>
      <item><math|x> is a limit point of <math|A>

      <item>For the function\ 

      <\equation*>
        \<Delta\><rsub|x>f:A<rsub|x>\\<around*|{|0|}>\<rightarrow\>Y<text|
        defined by >\<Delta\><rsub|x>f<around*|(|h|)>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
      </equation*>

      <\equation*>
        f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>>>\<Delta\><rsub|x>f<around*|(|h|)><text|
        exist>
      </equation*>

      in most books this is summarized as\ 

      <\equation*>
        f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>>><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h><text|
        exist>
      </equation*>
    </enumerate>

    <\note>
      As <math|x\<in\>A> and <math|h\<in\>A<rsub|x>\<Rightarrow\>x+h\<in\>A>
      <math|\<Delta\><rsub|x>f> is well defined. Further as <math|x> is a
      limit point of <math|A> <math|0>, is a limit point of <math|A<rsub|x>>
      by [lemma: <reference|lemma 16.12.1>] so the limit if it exist is
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
    a normed space, <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A> a limit
    point of <math|A>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:A\<rightarrow\>Y> a function. Then <math|f>
    has a derivative <math|f<rprime|'><rsub|z>> if\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| so that
      >\<forall\>h\<in\><rsub|x><text| with
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

    so that by [definition: <reference|diff limit of a function>] we have
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

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
    be normed spaces, <math|A\<subseteq\>X>, <math|a\<in\>A>,
    <math|L\<in\>L<around*|(|X,Y|)>> and <math|f:A\<rightarrow\>Y> a function
    then <math|L> is a <with|font-series|bold|Fréchet approximation of >f at
    <math|x> if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
    exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

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
    <math|f> at <math|a> then <math|\<forall\>x\<in\><wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>>
    we have <math|L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>>.
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

  <\theorem>
    <label|diff Frechet unique condition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|a\<in\>A> such that
    <math|X=<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>>
    then for every <rigid|<math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>>>
    such that <math|L<rsub|1>> and <math|L<rsub|2>> are Fréchet
    approximations of <math|f> at <math|a> we have that
    <math|L<rsub|1>=L<rsub|2>>
  </theorem>

  <\proof>
    By [theorem: <reference|diff uniqueness of the Frechet aproximation>] we
    have <math|\<forall\>x\<in\><wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>>
    that <math|L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>> which as
    <math|X=<wide|span<around*|(|T<rsub|A><around*|(|a|)>|)>|\<wide-bar\>>>
    proves that <math|\<forall\>x\<in\>X> we have
    <math|L<rsub|1><around*|(|x|)>=L<rsub|2><around*|(|x|)>> from which it
    follows that <math|L<rsub|1>=L<rsub|2>>.
  </proof>

  <\lemma>
    <label|diff tangent code and inclusion>Let
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

    <\note>
      <math|X\<equallim\><rsub|<text|[theorem: <reference|topology closed set
      and closure>]>><wide|X|\<wide-bar\>><below|=|<text|[theorem:
      <reference|linear span properties>]>><wide|span<around*|(|X|)>|\<wide-bar\>>=<wide|span<around*|(|T<rsub|\|U><around*|(|u|)>|)>|\<wide-bar\>>>.
    </note>
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

    <\note>
      <math|X\<equallim\><rsub|<text|[theorem: <reference|topology closed set
      and closure>]>><wide|X|\<wide-bar\>><below|=|<text|[theorem:
      <reference|linear span properties>]>><wide|span<around*|(|X|)>|\<wide-bar\>>=<wide|span<around*|(|T<rsub|\|A><around*|(|a|)>|)>|\<wide-bar\>>>.
    </note>
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

  We are now ready to define Fréchet differentiation

  <\definition>
    <label|diff differentiability><index|differentiability><dueto|Fréchet
    differentiability>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> and <math|x\<in\>A> such that
    <math|X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>
    then a function

    <\equation*>
      f:U\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|x> if\ 

    <\enumerate>
      <item><math|><math|X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>

      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>> such that <math|L>
      is a Fréchet approxmation of <math|f> at <math|x> or using [definition:
      <reference|diff Frechet approximation>]\ 

      <\equation*>
        \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
        \<exists\>>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
        >\<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
        ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>
    </enumerate>

    The unique <math|L> [see theorem: <reference|diff Frechet unique
    condition>] is called the <with|font-series|bold|Fréchet differential of
    f at <math|x>> and noted by <math|D<rsub|x> f>.

    <\note>
      If <math|A> is a open set or <math|x\<in\>A<rsup|0>> then by [theorem:
      <reference|diff tangent cone of open sets> or corollary:
      <reference|diff tangent cone of inner point>]
      <math|X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>
      so that the definition becomes in those cases.\ 

      <\equation*>
        f<text| is Fréchet differentiable at >x<text| with differential
        <math|D<rsub|x>f\<in\>L<around*|(|X,Y|)>> if>
      </equation*>

      <\equation*>
        \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
        \<exists\>>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
        >\<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
        ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>
    </note>
  </definition>

  \;

  The following examples shows the problems that we can have with uniqueness
  if the domain of the function is not open.

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

  The following are some examples of Fréchet differentiable functions on a
  open domain

  <\example>
    <label|diff constant function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|y\<in\>Y> \ <math|U> a open set in <math|X> then
    <math|\<forall\>x\<in\>U> we have that

    <\equation*>
      C<rsub|y>:U\<rightarrow\>Y<text| defined by >C<rsub|y><around*|(|x|)>=y
    </equation*>

    is Fréchet differentiable at <math|x> and
    <math|D<rsub|x>C<rsub|y>=C<rsub|0>> where
    <math|C<rsub|0>:X\<rightarrow\>Y> is defined by
    <math|C<rsub|0><around*|(|z|)>=0>. AS <math|C<rsub|0>> is the neutral
    element in <math|L<around*|(|X,Y|)>> we can also note <math|C<rsub|0>> as
    <math|0> [not to be confused with <math|0\<in\>Y> or <math|0\<in\>X>]
  </example>

  <\proof>
    Let <math|x\<in\>U> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
    for <math|h\<in\>U<rsub|x>>

    <\equation*>
      <around*|\<\|\|\>|C<rsub|y><around*|(|x+h|)>-C<rsub|y><around*|(|x|)>-C<rsub|0><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-y-0|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>
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
    Let <math|x\<in\>X> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
    we have\ 

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|x+h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>+L<around*|(|h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
    </equation*>
  </proof>

  <\example>
    <label|diff identity function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|U> a open set then <math|\<forall\>x\<in\>U> we
    have that <rigid|<math|Id<rsub|U>:U\<rightarrow\>X>> is Fréchet
    differentiable at <math|x> and <math|D<rsub|x> Id<rsub|U>=Id<rsub|X>>. So
    if we define\ 

    <\equation*>
      D Id<rsub|X>:X\<rightarrow\>L<around*|(|X,X|)><text| by >D
      Id<rsub|U><around*|(|x|)>=D <rsub|x>Id<rsub|U>
    </equation*>

    then\ 

    <\equation*>
      D Id<rsub|U>=C<rsub|Id<rsub|x>>
    </equation*>
  </example>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then we have for
    <math|h\<in\>U<rsub|x>> that\ 

    <\equation*>
      <around*|\<\|\|\>|Id<rsub|U><around*|(|x+h|)>-Id<rsub|U><around*|(|x|)>-Id<rsub|X><around*|(|h|)>|\<\|\|\>>=<around*|\<\|\|\>|x+h-x-h|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
    </equation*>
  </proof>

  The fact that <math|U> is open in the above is essential as is illustraded
  in the following example.

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
      Id<rsub|X>=L
    </equation*>
  </proof>

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

  <\lemma>
    <label|lemma 16.37.1>Let <math|X> be a set and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> are two equivalent norms on
    <math|X>, <math|A\<subseteq\>X> and <math|a\<in\>A> then
    <math|T<rsub|A><around*|(|a|)>> is independent of the norm.
  </lemma>

  <\proof>
    As <math|T<rsub|A><around*|(|A|)>> is defined in terms of limits [see
    definition: <reference|diff tangent cone>] and limits are independent of
    the norm [see theorem: <reference|limit is independent of the norm>] the
    lemma follows..
  </proof>

  <\theorem>
    <label|diff equivalent norms>Let <math|X,Y> be vector spaces over
    <math|\<bbb-K\>> with equivalent norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    on <math|X> and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> on <math|Y>,
    <math|a\<in\>A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> and
    <math|X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>
    [by lemma: <reference|lemma 16.37.1> this is independent of the norm]
    then we have \ 

    <\equation*>
      f:X\<rightarrow\>Y<text| is a Fréchet differentiable function with
      differential >D<rsub|x>f<text| using
      ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>
    </equation*>

    <\equation*>
      <text|then>
    </equation*>

    <\equation*>
      f:X\<rightarrow\>Y<text| is a Fréchet differentiable function with
      differential >D<rsub|x>f<text| using
      ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>
    </equation*>
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

    <\equation*>
      X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>
      independent of the norm
    </equation*>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist a
    <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>\<less\>\<delta\><rprime|'>>
    we have

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      <rsub|x>f|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>
    </equation*>

    Take <math|\<delta\>=<frac|\<delta\><rprime|'>|\<beta\><rsub|X>>> then
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>\<less\>\<delta\>> we
    have <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>\<less\>\<delta\>\<cdot\>\<beta\><rsub|X>=\<delta\><rprime|'>>
    so that from the above we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      <rsub|x>f|\<\|\|\>><rsub|Y<rsub|1>>>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      <rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      <rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><frac|\<varepsilon\>|\<beta\><rsub|Y>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>
    </equation*>

    This together with the fact <math|D<rsub|x> f> is also a continuous
    linear function between <math|X> and <math|Y> using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> [because the norms
    are equivalent] proves that <math|f> is Fréchet differentiable at
    <math|x> with differential <math|D<rsub|x> f> using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>.
  </proof>

  If the domain of a function is a <with|font-series|bold|open> set then
  differentiability of a function at a point is a local property, it only
  depends on the function values for a arbitrary open neighborhood of this
  point.

  <\theorem>
    <label|diff differentiability is a local property>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>,
    <math|x\<in\>V\<subseteq\>A> where <math|V> is open and
    \ <math|f:A\<rightarrow\>Y> a function, <math|V\<subseteq\>U> then we
    have\ 

    <\equation*>
      f<text| is Fréchet differentiable at <math|x> with differential
      >D<rsub|x> f
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<rsub|\|V><text| is Fréchet differentiable at <math|x> with
      differential >D<rsub|x> f<rsub|\|V>
    </equation*>

    further if <math|f> or <math|f<rsub|\|V>> is Fréchet differentiable at
    <math|x> then <math|D<rsub|x>f=D<rsub|x>f<rsub|\|V>>.

    <\note>
      Be carefull this is not necessary true if <math|V> is a non open set
      [see example: <reference|example 16.35.1>]
    </note>
  </theorem>

  <\proof>
    \ First note that <math|X<below|=|<text|[theorem<reference|diff tangent
    cone of open sets>[>>T<rsub|V><around*|(|x|)><below|\<subseteq\>|<text|[theorem:
    <reference|diff tangent code and inclusion>]>\<wedge\>V\<subseteq\>A>T<rsub|A><around*|(|x|)>\<subseteq\>X>
    so that <math|X=<wide|span<around*|(|T<rsub|V><around*|(|x|)>|)>|\<wide-bar\>>=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>.
    Hence using [theorem: <reference|diff Frechet unique condition>] it
    follows that every Fréchet approximation of <math|f> at <math|x> is
    unique and every Fréchet approximation of <math|f<rsub|\|V>> is unique.

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f> is Fréchet differentiable at <math|x> with differential
      <math|D<rsub|x>f> there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>
      f|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      Let <math|h\<in\>V<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then <math|x+h\<in\>V\<subseteq\>A>, so that <math|h\<in\>A<rsub|x>>.
      Hence we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<rsub|\|V><around*|(|x+h|)>-f<rsub|\|V><around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|x+h,x\<in\>V><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        <rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      proving <math|D<rsub|x>f> is a Fréchet approximation of
      <math|f<rsub|\|V>> at <math|x>, hence <math|f<rsub|\|V>> is Fréchet
      differentiable with differential <math|D<rsub|x>f<rsub|\|V>=D<rsub|x>f>.

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|x+0=x\<in\>V> we have that
      <math|0\<in\>V<rsub|x>\<equallim\><rsub|<text|[theorem: <reference|diff
      Ux=-x+U=U-x>]>>-x+V> which is open [see theorem: <reference|normed
      space set operations>] so that there exists a
      <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
      <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|1>|)>\<subseteq\>V<rsub|x>>.
      Further, as <math|f<rsub|\|V>> is Fréchet differentiable at <math|x>
      with differential <math|D<rsub|x>f<rsub|\|V>>, there exist a
      <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>V<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
      we have <math|<around*|\<\|\|\>|f<rsub|\|V><around*|(|x+h|)>-f<rsub|\|V><around*|(|x|)>-D<rsub|x>f<rsub|\|V><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|\|X>>.
      Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then if <math|h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
      so that <math|h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|1>|)>\<subseteq\>V<rsub|x>>
      and <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>,
      hence we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<rsub|\|V><around*|(|h|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|x,x+h\<in\>V><around*|\<\|\|\>|f<rsub|\|V><around*|(|x+h|)>-f<rsub|\|V><around*|(|x|)>-D<rsub|x>f<rsub|\|V><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      This proves that <math|f> is Fréchet differentiable with differential
      <math|D<rsub|x>f=D<rsub|x>f<rsub|\|V>>.
    </description>
  </proof>

  <\corollary>
    <label|diff differentiability is a local property (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A<rsub|1>,A<rsub|2>\<subseteq\>X>,
    <math|x\<in\>A<rsub|1><big|cap>A<rsub|2>> such that there exist a open
    set such that <math|x\<in\>W\<subseteq\>A<rsub|1><big|cap>A<rsub|2>> and
    <math|f:A<rsub|1>\<rightarrow\>Y>, <math|g:A<rsub|2>\<rightarrow\>Y>
    functions such that <math|\<forall\>y\<in\>W> we have
    <math|f<around*|(|y|)>=g<around*|(|y|)>>. Then if <math|f> is Fréchet
    differentiable at <math|x> it follows that <math|g> is also Fréchet
    differentiable at <math|x> and <math|D<rsub|x>f=D<rsub|x>g>.
  </corollary>

  <\proof>
    As <math|\<forall\>y\<in\>W> we have <math|f<around*|(|y|)>=g<around*|(|y|)>>
    it follows that <math|f<rsub|\|W>=g<rsub|\|W>>. As <math|f> is Fréchet
    differentiable at <math|x> it follows from [theorem: <reference|diff
    differentiability is a local property>] that <math|f<rsub|\|W>> is
    Fréchet differentiable at <math|x> with
    <math|<rigid|D<rsub|x>f=D<rsub|x>f<rsub|\|W>>>. As
    <math|f<rsub|\|W>=g<rsub|\|W>> <math|g<rsub|\|W>> is Fréchet
    differentiable at <math|x> with <math|D<rsub|x>g<rsub|\|W>=D<rsub|x>f>.
    Hence using [theorem: <reference|diff differentiability is a local
    property>] again it follows that <math|g> is Fréchet differentiable at
    <math|x> with <math|D<rsub|x>g=D<rsub|x>g<rsub|\|W>=D<rsub|x>f>.
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

    Hence if <math|X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>
    then if either \ 1,2,3,4,5 is true then <math|f> is Fréchet
    differentiable at <math|x> and \ <math|L=D<rsub|x>f>.\ 
  </theorem>

  <\note>
    If <math|A> is a open set or <math|x\<in\>A<rsup|0>> then we have by
    [theorem: <reference|diff tangent cone of open sets> or corollary:
    <reference|diff tangent cone of inner point>] that
    <math|X=<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>>
    is satisfied automatically. Hence if <math|A> is open or
    <math|x\<in\>A<rsup|0>> then if either \ 1,2,3,4,5 is true then <math|f>
    is Fréchet differentiable at <math|x> and \ <math|L=D<rsub|x>f>.\ 
  </note>

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

  If the domain of the function is open we can use the locality of
  differentiation giving the following equivalences of differentiability.

  \;

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
    \;

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As <math|U> is open and <math|x\<in\>U>
      there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U>.
      Using the locality of differentiability [see theorem: <reference|diff
      differentiability is a local property>] it follows that
      <math|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>>x><around*|(|x,\<delta\>|)>>>
      is Fréchet differentiable at <math|x> and
      <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>>.
      Using the previous theorem [theorem: <reference|diff differentiability
      alternative definitions>] there exist a <math|\<varepsilon\>>-mapping\ 

      <\equation*>
        \<varepsilon\>:<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<equallim\><rsub|<text|[theorem:
        <reference|diff Bx(x,d)>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<rightarrow\>Y
      </equation*>

      \ such that <math|\<forall\>h\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<equallim\><rsub|<text|[theorem:
      <reference|diff Bx(x,d)>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>>|<cell|=>|<cell|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x+h|)>-f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x.\<delta\>|)>><around*|(|x|)>-D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)><rsub|>>>>>
      </eqnarray*>

      <item*|<math|2\<Rightarrow\>1>>As <math|\<varepsilon\>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<equallim\><rsub|<text|[theorem:
      <reference|diff Bx(x,d)>]>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<rightarrow\>Y>
      is a <math|\<varepsilon\>>-mapping such that

      <\equation*>
        \<forall\>h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<equallim\><rsub|<text|[theorem:
        <reference|diff Bx(x,d)>]>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>
      </equation*>

      we have

      <\equation*>
        f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x+h|)>-f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x.\<delta\>|)>><around*|(|x|)>-L<around*|(|h|)>=f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      it follows from [theorem: <reference|diff differentiability alternative
      definitions>] that <math|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>>
      is Fréchet differentiable at <math|x> with
      <math|L=D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>>.
      Using the locality of differentiability [see theorem: <reference|diff
      differentiability is a local property>] it follows that <math|f> is
      differentiable at <math|x> with <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>=L>.
    </description>
  </proof>

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
    As <math|f> is Fréchet differentiable at <math|x> there exist a Fréchet
    approximation <math|L\<in\><around*|{|<around*|(|X,Y|)>|}>> of <math|f>
    at <math|x>. Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there
    exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>A<rsub|x>> with
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
  tangent cones.

  <\theorem>
    <label|diff tangent cone and limit point>If <math|A\<subseteq\>\<bbb-R\>>
    and <math|x> is a limit point of <math|A> then
    <math|<wide|span<around*|(|T<rsub|A><around*|(|x|)>|)>|\<wide-bar\>>=X>
  </theorem>

  <\proof>
    Let <math|x\<in\>\<bbb-R\>> is a limit point of <math|A> then we have for
    <math|\<forall\>n\<in\>\<bbb-N\>> that
    <math|B<rsub|<around*|\|||\|>><around*|(|x,<frac|1|n>|)><big|cap><around*|(|A\\<around*|{|x|}>|)>\<neq\>\<varnothing\>>
    hence there exist by the Axiom of Choice \ [see theorem:
    <reference|choice axiom of choice equivalences (1)>] a
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>A> such
    that

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><text| >x<rsub|n>\<in\>B<rsub|<around*|\|||\|>><around*|(|x,<frac|1|n>|)><big|cap><around*|(|A\\<around*|{|x|}>|)>\<Rightarrow\>x-<frac|1|n>\<less\>x<rsub|n>\<less\>x+<frac|1|n>\<wedge\>x<rsub|n>\<neq\>x
    </equation*>

    Take <math|L=<around*|{|n\<in\>\<bbb-N\>\|x<rsub|n>\<less\>x|}>> and
    <math|R=<around*|{|n\<in\>\<bbb-N\>\|x\<less\>x<rsub|n>|}>> As
    <math|\<forall\>n\<in\>\<bbb-N\>> <math|x<rsub|n>\<neq\>x> we have
    <math|\<bbb-N\>=L<big|cup>R> and we can not have that <math|L> and
    <math|R> are finite: Hence we have either:

    <\description>
      <item*|L is finite and R is infinite>Take then
      <math|N=max<around*|(|L<big|cup><around*|{|1|}>|)>> and define
      <math|<around*|{|y<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>> by
      <math|y<rsub|n>=x<rsub|N+n>> then

      <item*|<math|R<text| is finite and L is infinite>>>

      <item*|<math|L<infix-and>R are finite>>
    </description>

    \;
  </proof>

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
    <associate|page-first|887>
    <associate|par-first|0tab>
    <associate|par-mode|justify>
    <associate|section-nr|0>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|16|?>>
    <associate|auto-2|<tuple|16.1|?>>
    <associate|auto-3|<tuple|16.1.1|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-5|<tuple|convergence of a function|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>|?>>
    <associate|auto-7|<tuple|16.1.2|?>>
    <associate|auto-8|<tuple|differentiability|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping|?>>
    <associate|convergence of a function to a point|<tuple|16.6|?>>
    <associate|diff Bx(x,d)|<tuple|16.5|?>>
    <associate|diff Frechet approximation|<tuple|16.21|?>>
    <associate|diff Frechet unique condition|<tuple|16.25|?>>
    <associate|diff Ux|<tuple|16.2|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.4|?>>
    <associate|diff calculus derivate|<tuple|16.17|?>>
    <associate|diff calculus derivate (1)|<tuple|16.14|?>>
    <associate|diff constant function is differentiable|<tuple|16.34|?>>
    <associate|diff differentiability|<tuple|16.31|?>>
    <associate|diff differentiability alternative
    definitions|<tuple|16.45|?>>
    <associate|diff differentiability alternative definitions
    (1)|<tuple|16.47|?>>
    <associate|diff differentiability is a local property|<tuple|16.41|?>>
    <associate|diff differentiability is a local property
    (1)|<tuple|16.43|?>>
    <associate|diff differentiability on a set|<tuple|16.38|?>>
    <associate|diff differentiable function is continuous|<tuple|16.48|?>>
    <associate|diff e-mapping|<tuple|16.44|?>>
    <associate|diff equivalent norms|<tuple|16.40|?>>
    <associate|diff identity function is differentiable|<tuple|16.36|?>>
    <associate|diff limit of a function|<tuple|16.9|?>>
    <associate|diff linear mappings are differentiable|<tuple|16.35|?>>
    <associate|diff scalar product function has a derivate|<tuple|16.18|?>>
    <associate|diff tangent code and inclusion|<tuple|16.26|?>>
    <associate|diff tangent cone|<tuple|16.23|?>>
    <associate|diff tangent cone and limit point|<tuple|16.50|?>>
    <associate|diff tangent cone of inner point|<tuple|16.29|?>>
    <associate|diff tangent cone of open sets|<tuple|16.27|?>>
    <associate|diff uniqueness of the Frechet aproximation|<tuple|16.24|?>>
    <associate|eq 16.1.1|<tuple|16.1|?>>
    <associate|eq 16.1.177|<tuple|16.19|?>>
    <associate|eq 16.15.1|<tuple|16.15|?>>
    <associate|eq 16.16.1|<tuple|16.16|?>>
    <associate|eq 16.17.1|<tuple|16.17|?>>
    <associate|eq 16.18.1|<tuple|16.18|?>>
    <associate|eq 16.2.1|<tuple|16.2|?>>
    <associate|eq 16.2.177|<tuple|16.20|?>>
    <associate|eq 16.3.1|<tuple|16.3|?>>
    <associate|eq 16.3.177|<tuple|16.21|?>>
    <associate|eq 16.4.1|<tuple|16.4|?>>
    <associate|eq 16.4.177|<tuple|16.22|?>>
    <associate|eq 16.463.298|<tuple|16.6|?>>
    <associate|eq 16.464.298|<tuple|16.7|?>>
    <associate|eq 16.465.298|<tuple|16.8|?>>
    <associate|eq 16.467.298|<tuple|16.10|?>>
    <associate|eq 16.468.298|<tuple|16.11|?>>
    <associate|eq 16.469.298|<tuple|16.12|?>>
    <associate|eq 16.470.298|<tuple|16.13|?>>
    <associate|eq 16.471.298|<tuple|16.14|?>>
    <associate|eq 16.5.1|<tuple|16.5|?>>
    <associate|example 16.35.1|<tuple|16.37|?>>
    <associate|lemma 16.12.1|<tuple|16.13|?>>
    <associate|lemma 16.37.1|<tuple|16.39|?>>
    <associate|lemma 16.7.1|<tuple|16.8|?>>
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
    </associate>
  </collection>
</auxiliary>
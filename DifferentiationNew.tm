<TeXmacs|2.1.4>

<project|DifferentiationNewMain.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Differentiation in Normed Spaces>

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
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
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
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
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
    <math|f<rprime|'><rsub|x>>> if for that function\ 

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

    <\note>
      As <math|x\<in\>A> and <math|h\<in\>A<rsub|x>\<Rightarrow\>x+h\<in\>A>
      <math|\<Delta\><rsub|x>f> is well defined. Further as <math|x> is a
      limit point of <math|A> <math|0> is a limit point of <math|A<rsub|x>>
      by [theorem: <reference|lemma 16.12.1>] so the limit is unique that the
      derivative if it exist is unique.
    </note>
  </definition>

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
    <associate|convergence of a function to a point|<tuple|16.5|?>>
    <associate|diff Bx(x,d)|<tuple|16.4|?>>
    <associate|diff Ux|<tuple|16.1|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.3|?>>
    <associate|diff calculus derivate (1)|<tuple|16.13|?>>
    <associate|eq 16.1.1|<tuple|16.1|?>>
    <associate|eq 16.2.1|<tuple|16.2|?>>
    <associate|eq 16.3.1|<tuple|16.3|?>>
    <associate|eq 16.4.1|<tuple|16.4|?>>
    <associate|eq 16.5.1|<tuple|16.5|?>>
    <associate|eq 18.5.1|<tuple|16.6|?>>
    <associate|lemma 16.12.1|<tuple|16.12|?>>
    <associate|lemma 16.7.1|<tuple|16.7|?>>
    <associate|topology every element of a open set in a normed space is a
    limit point|<tuple|16.9|?>>
    <associate|topology interior point is a limit point in a normed
    space|<tuple|16.10|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|U<rsub|x>>>|<pageref|auto-4>>

      <tuple|<tuple|convergence of a function>|<pageref|auto-5>>
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
    </associate>
  </collection>
</auxiliary>
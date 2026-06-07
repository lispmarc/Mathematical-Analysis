<TeXmacs|2.1.5>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Differentiation in Normed Spaces>

  <\note>
    <label|normed space are assumed to be non trivial>We assume from now on
    that all the normed spaces are non trivial, in other words we assume that
    every normed space contains at least one non zero element.\ 
  </note>

  <\note>
    Unless stated otherwise all the normed spaces in this chapter are assumed
    to be vector space over the same field <math|\<bbb-K\>>. For example if
    we say that <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are normed spaces then we assume that either <math|X> and <math|Y> are
    both vector spaces over the field <math|\<bbb-R\>> or they are both
    vector spaces over the field <math|\<bbb-C\>>.
  </note>

  <section|Fréchet differentiation>

  <subsection|The classical derivative>

  First look at the definition of the derivative that you find in most basic
  calculus books. Let <math|A\<subseteq\>\<bbb-R\>>, <math|x\<in\>A> then a
  function <math|f:A\<rightarrow\>X> has a derivative
  <math|f<rprime|'><rsub|x>> at <math|x> if\ 

  <\equation*>
    <below|lim|n\<rightarrow\>0><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
  </equation*>

  exist and the derivative is then define by\ 

  <\equation*>
    f<rprime|'><rsub|x>=<below|lim|n\<rightarrow\>0><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
  </equation*>

  The above definition that you find in many basic calculus books is very
  imprecise, for example in taking the limit, how can we ensure that
  <math|x+h> is in the domain, how can we avoid dividing by <math|0>. For
  this we have to do some extra work in defining the limit operation
  <math|<below|lim|h\<rightarrow\>0>>. First we introduce the concept of the
  convergence of a function to a value when it approaches a point its domain.

  We introduce now convergence of a function to a point.\ 

  <\definition>
    <label|convergence of a function to a point><index|convergence of a
    function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>X> and
    <math|f:A\<rightarrow\>Y> a function then we say that
    <with|font-series|bold|<math|f> converges to <math|y> at <math|x><math|>>
    if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>z\<in\>A> with <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.

    <\note>
      As <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>> we have that
      <math|x\<neq\>z>, so in the above definition we never evaluate <math|f>
      at <math|x>, hence <with|font-series|bold|<math|x> must not be in the
      domain of <math|f>>.
    </note>
  </definition>

  There is a problem with the above definition because it is possible that
  <math|f> converges to two different values at x as the following example
  shows.\ 

  <\example>
    Consider the normed space <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    and take the function

    <\equation*>
      f:<around*|{|1|}>\<rightarrow\>\<bbb-R\><text| defined by
      >f<around*|(|x|)>=<around*|\||x|\|>
    </equation*>

    Let <math|y\<in\>\<bbb-R\>> and take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    then for <math|\<delta\>=1> we have <math|\<forall\>z\<in\><around*|{|1|}>>
    such that <math|0\<less\><around*|\||1-z|\|>\<less\>1> that, as
    <math|z\<in\><around*|{|1|}>\<Rightarrow\>z=1\<Rightarrow\>0\<less\><around*|\||0|\|>\<less\>1\<Rightarrow\>0\<less\>0>,
    we reach a contradiction hence we have vacuously that
    <math|<around*|\||f<around*|(|z|)>-f<around*|(|1|)>|\|>\<less\>\<varepsilon\>>.
    Hence we have <math|\<forall\>y\<in\>\<bbb-R\>> that <math|f> converges
    to <math|y> at <math|x> by <math|<around*|{|1|}>>.
  </example>

  To avoid this problem we require a extra condition on the point <math|x>
  namely that <math|x> is a limit point of the domain of <math|A>. The
  following lemma shows then that in that case we have uniqueness.

  <\lemma>
    <label|lemma 16.11.500>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>,
    <math|x\<in\>A<big|cap>A<rprime|'>> where <math|A<rprime|'>> is the set
    of limit points of <math|A> [see definition: <reference|topology limit
    point>] and <math|f:A\<rightarrow\>Y> a function such that\ 

    <\equation*>
      f<text| converges to >y<rsub|1><text| at >x<text| by >A<text| and
      >f<text| converges to >y<rsub|2><text| at >x<text| by >A
    </equation*>

    then we have that\ 

    <\equation*>
      y<rsub|1>=y<rsub|2>
    </equation*>
  </lemma>

  <\proof>
    Assume that <math|y<rsub|1>\<neq\>y<rsub|2>> then
    <math|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<in\>\<bbb-R\><rsup|+>>.
    As <math|f> converges to <math|y<rsub|1>> at <math|x> and <math|f>
    converges to <math|y<rsub|2>> at <math|x> there exists
    <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such
    that\ 

    <\equation>
      <label|eq 16.1.2>\<forall\>z\<in\>A<text| with
      >0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
      we have ><around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|1>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>
    </equation>

    <\equation>
      <label|eq 16.2.2>\<forall\>z\<in\>A<text| with
      >0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
      we have ><around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>
    </equation>

    Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>\<in\>\<bbb-R\><rsup|+>>
    then, as <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    a open set and <math|x> is a limit point of <math|A>, there exist by
    [definition: <reference|topology limit point>] a
    <math|z\<in\><around*|(|A\\<around*|{|x|}>|)><big|cap>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>.
    Hence <math|z\<in\>A> and <math|<around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|1>,\<delta\><rsub|2>>
    so that by [eqs: <reference|eq 16.1.2>, <reference|eq 16.2.2>]\ 

    <\equation>
      <label|eq 16.3.2><around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|1>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>+<frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>=<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>
    </equation>

    Now\ 

    <\equation*>
      <around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y<rsub|1>-f<around*|(|z|)>+f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|1>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y><below|\<less\>|<text|[eq:
      <reference|eq 16.3.2>]>><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>
    </equation*>

    leading to the contradiction <math|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>>>.
    Hence the assumption is wrong and we must have that
    <math|y<rsub|1>=y<rsub|2>>.
  </proof>

  From the above it follows that it is usefull to find cases where <math|x>
  is a limit point of a set.

  <\theorem>
    <label|topology every element of a open set in a normed space is a limit
    point>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
    a open set in <math|X> then every element of <math|U> is a limit point of
    <math|U>. In other words <math|U\<subseteq\>U<rprime|'>>.
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
    a normed space <math|A\<subseteq\>X>. If <math|x\<in\>A<rsup|\<circ\>>>
    [see definition: <reference|topology interior of a set>] then <math|x> is
    a limit point of <math|A>. In other words every interior point of a set
    is a limit point or <math|A<rsup|\<circ\>>\<subseteq\>A<rprime|'>>.
  </corollary>

  <\proof>
    As <math|x\<in\>A<rsup|0>> a open set, it follows from the previous
    theorem [theorem: <reference|topology every element of a open set in a
    normed space is a limit point>] that <math|x> is a limit point of
    <math|A<rsup|\<circ\>>>. As <math|A<rsup|0><below|\<subseteq\>|<text|[definition:
    <reference|topology interior of a set>]>>A> it follows from [theorem:
    <reference|topology limit points and subsets>] that <math|x> is a limit
    point of <math|A>.
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
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|z-y|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|y+\<lambda\>\<cdot\><around*|(|x-y|)>-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<lambda\>\<cdot\><around*|(|x-y|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<lambda\>|\|>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<delta\><rsub|1>|2\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<delta\><rsub|1>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\><rsub|1>>>>>
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
      <math|<around*|[|a,\<infty\>|[>> in other words
      <math|<around*|[|a,\<infty\>|[>\<subseteq\><around*|(|<around*|[|a,\<infty\>|[>|)><rprime|'>>.

      <item><math|\<forall\>x\<in\><around*|]|a,\<infty\>|[>> where
      <math|a\<in\>\<bbb-R\>> <math|x> is a limit point of
      <math|<around*|]|a,\<infty\>|[>> in other words
      <math|<around*|]|a,\<infty\>|[>\<subseteq\><around*|(|<around*|]|a,\<infty\>|[>|)><rprime|'>>.

      <item><math|\<forall\>x\<in\><around*|]|-\<infty\>,a|]> where>
      <math|a\<in\>\<bbb-R\>> <math|x> is a limit point of
      <math|<around*|]|-\<infty\>,a|]>> in other words
      <math|<around*|]|-\<infty\>,a|]>\<subseteq\><around*|(|<around*|]|-\<infty\>,a|]>|)><rprime|'>>.

      <item><math|\<forall\>x\<in\><around*|]|-\<infty\>,a|[> where>
      <math|a\<in\>\<bbb-R\>> <math|x> is a limit point of
      <math|<around*|]|-\<infty\>,a|[>> in other words
      <math|<around*|]|-\<infty\>,a|[>\<subseteq\><around*|(|<around*|]|-\<infty\>,a|[>|)><rprime|'>>.

      <item><math|\<forall\>x\<in\><around*|[|a,b|]>> where
      <math|a,b\<in\>\<bbb-R\>> where <math|a\<less\>b> <math|x> is a limit
      point of <math|<around*|[|a,b|]>> in other words
      <math|<around*|[|a,b|]>\<subseteq\><around*|(|<around*|[|a,b|]>|)><rprime|'>.>

      <item><math|\<forall\>x\<in\><around*|[|a,b|[>> where
      <math|a,b\<in\>\<bbb-R\>> where <math|a\<less\>b> <math|x> is a limit
      point of <math|<around*|[|a,b|[>> in other words
      <math|<around*|[|a,b|[>\<subseteq\><around*|(|<around*|[|a,b|[>|)><rprime|'>.>

      <item><math|\<forall\>x\<in\><around*|]|a,b|]>> where
      <math|a,b\<in\>\<bbb-R\>> where <math|a\<less\>b> <math|x> is a limit
      point of <math|<around*|]|a,b|]>> in other words
      <math|<around*|]|a,b|]>\<subseteq\><around*|(|<around*|]|a,b|]>|)><rprime|'>.>

      <item><math|\<forall\>x\<in\><around*|]|a,b|[>> where
      <math|a,b\<in\>\<bbb-R\>> where <math|a\<less\>b> <math|x> is a limit
      point of <math|<around*|]|a,b|[>> in other words
      <math|<around*|]|a,b|[>\<subseteq\><around*|(|<around*|]|a,b|[>|)><rprime|'>.>
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

  We can now define the limit of a function at a point.

  <\definition>
    <label|diff limit of a function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>,
    <math|x\<in\>A<big|cap>A<rprime|'>> where <math|A<rprime|'>> is the set
    of limit points of <math|A> [see definition: <reference|topology limit
    point>] and <math|f:A\<rightarrow\>Y> a function that converges to
    <math|y> at <math|x> by <math|A> then this <with|font-series|bold|unique>
    <math|y> [by lemma: <reference|lemma 16.11.500>] is noted as\ 

    <\equation*>
      <below|lim|z<below|\<rightarrow\>|A>x>f<around*|(|z|)>
    </equation*>

    If we say that\ 

    <\equation*>
      y=<below|lim|z<below|\<rightarrow\>|A>x>f<around*|(|z|)><text| exist >
    </equation*>

    then this is equivalent with saying that <math|f> converges to <math|y>
    at <math|x> by <math|A> or equivalently\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>z\<in\>A<text| with >0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><text|
      we have ><around*|\<\|\|\>|f<around*|(|x|)>-y|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>
    </equation*>

    <\note>
      Using [theorem: <reference|topology every element of a open set in a
      normed space is a limit point>], [corollary: <reference|topology
      interior point is a limit point in a normed space>], [corollary:
      <reference|topology every element of a open or closed ball is a limit
      point>] and [corollary: <reference|topology every element of a
      generalized interval is a limit point>] it follows that this definition
      is valid in the following cases:

      <\enumerate>
        <item><math|A> is a open set in <math|X> or
        <math|A=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|z,\<delta\>|)>>
        or <math|A=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|z,\<delta\>|)>|\<wide-bar\>>>

        <item><math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
        and <math|A> is of the form

        <\enumerate>
          <item><math|<around*|[|a,\<infty\>|[>>

          <item><math|<around*|]|a,\<infty\>|[>>

          <item><math|<around*|]|-\<infty\>,a|]>>

          <item><math|<around*|]|-\<infty\>,a|[>>

          <item><math|<around*|[|a,b|]>>

          <item><math|<around*|[|a,b|[>>

          <item><math|<around*|]|a,b|]>>

          <item><math|<around*|]|a,b|[>>
        </enumerate>

        <item><math|x\<in\>A<rsup|\<circ\>>>
      </enumerate>
    </note>
  </definition>

  We are now almost ready to define the derivative of a function. As we want
  to define <math|f<rprime|'><rsub|x>> as
  <math|<below|lim|h\<rightarrow\>0><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>>,
  we have to look at the domain D of the function defined by
  <math|h\<rightarrow\><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>> . To
  ensure that <math|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>> is well
  defined we have to assume that <math|0\<nin\>D> and
  <math|\<forall\>h\<in\>D> that <math|<rigid|x+h\<in\>dom<around*|(|f|)>>>.
  This is done in the following.

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

  <\corollary>
    <label|diff Ux is open if U is open>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|x\<in\>X> and <math|U> a open set in <math|X> then
    <math|U<rsub|x>> is open in <math|X>
  </corollary>

  <\proof>
    By [theorem: <reference|diff Ux=-x+U=U-x>] <math|U<rsub|x>=-x+U> hence
    using [theorem: <reference|normed space set operations>] <math|U<rsub|x>>
    is open.
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

  <\lemma>
    <label|lemma 16.18.2>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space, <math|A\<subseteq\>X> and
    <math|x\<in\>A<rprime|'>> a limit point of <math|A> then <math|x> is a
    limit point of <math|A\\<around*|{|x|}>>. In other words we have
    <math|A<rprime|'>\<subseteq\><around*|(|A\\<around*|{|x|}>|)><rprime|'>>.
  </lemma>

  <\proof>
    Let <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> then by [definition:
    <reference|topology limit point>] we have that
    <math|<around*|(|A\\<around*|{|x|}>|)><big|cap>U\<neq\>\<varnothing\>>.
    As <math|<around*|(|A\\<around*|{|x|}>|)>\\<around*|{|x|}><below|=|<text|[theorem:
    <reference|class set difference and union ,
    intersection>]>>A\\<around*|(|<around*|{|x|}><big|cup><around*|{|x|}>|)>=A\\<around*|{|x|}>>
    we have that <math|<around*|(|<around*|(|A\\<around*|{|x|}>|)>\\<around*|{|x|}>|)><big|cap>U\<neq\>\<varnothing\>>.
    As <math|U\<in\>\<cal-T\>> has been chosen arbitrary it follows by
    [definition: <reference|topology limit point>] that <math|x> is a limit
    point of <math|A\\<around*|{|x|}>>.
  </proof>

  <\lemma>
    <label|lemma 16.19.2>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|A\<subseteq\>X> then if <math|x\<in\>A> is a
    limit point of <math|A> then <math|0\<in\>A<rsub|x>> is a limit point of
    <math|A<rsub|x>> so that by the previous lemma [lemma: <reference|lemma
    16.18.2>] <math|0> is a limit point of
    <math|A<rsub|x>\<setminus\><around*|{|0|}>>.
  </lemma>

  <\proof>
    Let <math|U> be a open set such that <math|0\<in\>U>. Then
    <math|x=x+0\<in\>x+U> which by [theorem: <reference|normed space set
    operations>] is a open set in <math|X>. As <math|x> is a limit point of
    <math|A> we have that <math|<around*|(|A\\<around*|{|x|}>|)><big|cap><around*|(|x+U|)>\<neq\>\<varnothing\>>
    so that there exist a <math|z\<in\><around*|(|A\\<around*|{|x|}>|)><big|cap><around*|(|x+U|)>>.
    As <math|<around*|(|z-x|)>+x=z<below|\<in\>|z\<in\>A\\<around*|{|x|}>>A>
    we have <math|<around*|(|z-x|)>\<in\>A<rsub|x>>, further
    <math|z-x\<neq\>0> [as <math|x\<in\>A\\<around*|{|x|}>>] and
    <math|z\<in\>x+U\<Rightarrow\>z-x\<in\>U> it follows that
    <math|z-x\<in\><around*|(|A<rsub|x>\\<around*|{|0|}>|)><big|cap>U> so
    that <math|<around*|(|A<rsub|x>\\<around*|{|0|}>|)><big|cap>U=\<varnothing\>>.
    Hence <math|0> is a limit point of <math|A<rsub|x>>.
  </proof>

  <\definition>
    <label|diff calculus derivate (1)>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real [or complex] numbers with the canonical norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-K\>>,
    <math|x\<in\>A<big|cap>A<rprime|'>> where <math|A<rprime|'>> is the set
    of limit points of <math|A> [see definition: <reference|topology limit
    point>] and <rigid|<math|f:A\<rightarrow\>Y>> a function then
    <with|font-series|bold|<math|f> has a derivative at <math|x> noted as
    <math|f<rprime|'><rsub|x>>> if we have for the function\ 

    <\equation*>
      \<Delta\><rsub|x>f:A<rsub|x>\\<around*|{|0|}>\<rightarrow\>Y<text|
      defined by >\<Delta\><rsub|x>f<around*|(|h|)>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
    </equation*>

    that

    <\equation*>
      f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>\\<around*|{|0|}>>>\<Delta\><rsub|x>f<around*|(|h|)><text|
      exist>
    </equation*>

    in most books this is summarized as\ 

    <\equation*>
      f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>\\<around*|{|0|}>>><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h><text|
      exist>
    </equation*>

    <\note>
      Using [theorem: <reference|topology every element of a open set in a
      normed space is a limit point>], [corollary: <reference|topology
      interior point is a limit point in a normed space>], [corollary:
      <reference|topology every element of a open or closed ball is a limit
      point>] and [corollary: <reference|topology every element of a
      generalized interval is a limit point>] it follows that this definition
      is valid in the following cases:

      <\enumerate>
        <item><math|A> is a open set in <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
        or <math|A=B<rsub|<around*|\|||\|>><around*|(|z,\<delta\>|)>=<around*|]|z-\<delta\>,z+\<delta\>|[>>
        or <math|A=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|z,\<delta\>|)>|\<wide-bar\>>=<around*|[|z-\<delta\>,z+\<delta\>|]>>

        <item><math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
        and <math|A> is of the form

        <\enumerate>
          <item><math|<around*|[|a,\<infty\>|[>>

          <item><math|<around*|]|a,\<infty\>|[>>

          <item><math|<around*|]|-\<infty\>,a|]>>

          <item><math|<around*|]|-\<infty\>,a|[>>

          <item><math|<around*|[|a,b|]>>

          <item><math|<around*|[|a,b|[>>

          <item><math|<around*|]|a,b|]>>

          <item><math|<around*|]|a,b|[>>
        </enumerate>

        <item><math|x\<in\>A<rsup|\<circ\>>>
      </enumerate>
    </note>
  </definition>

  We can reformulate the above definition using the definition of the
  <math|<below|lim|<below|h\<rightarrow\>0|A<rsub|x>\\<around*|{|0|}>>>>.

  <\theorem>
    <label|diff calculus derivate><index|<math|f<rprime|'><around*|(|x|)>>>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real or complex numbers, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|x\<in\>A<big|cap>A<rprime|'>> where
    <math|A<rprime|'>> is the set of limit points of <math|A> [see
    definition: <reference|topology limit point>] and
    <math|f:A\<rightarrow\>Y> a function. Then <math|f> has a derivative
    <math|f<rprime|'><rsub|z>> if and only if

    <\equation*>
      f<text| has a derivative <math|f<rprime|'><rsub|x><text| at >x> >
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| so that
      >\<forall\>h\<in\>A<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text|
      \ ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|z>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </theorem>

  <\proof>
    \ Define\ 

    <\equation*>
      \<Delta\><rsub|x>f:A<rsub|x>\\<around*|{|0|}>\<rightarrow\>Y<text|
      where >\<Delta\><rsub|x>f<around*|(|h|)>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
    </equation*>

    As <math|f<text| has a derivative <math|f<rprime|'><rsub|x><text| at >x>
    >> we have that\ 

    <\equation*>
      f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>\\<around*|{|0|}>>>\<Delta\><rsub|x>f<around*|(|h|)><text|
      exist>
    </equation*>

    which by [definition: <reference|diff limit of a function>] means that\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| we have
      >\<forall\>h\<in\>A<rsub|x>\\<around*|{|0|}><text| with
      >0\<less\><around*|\||h-0|\|>\<less\>\<delta\><text|
      ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>
    </equation*>

    which, as <math|h\<in\>A<rsub|x>\\<around*|{|0|}>> with
    <math|0\<less\><around*|\||h-0|\|>\<less\>\<delta\>> is equivalent with
    <math|h\<in\>A<rsub|x>> with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>,
    is equivalent with

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| we have
      >\<forall\>h\<in\>A<rsub|x>\\<around*|{|0|}><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text|
      ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>
    </equation*>

    \;
  </proof>

  Another equivalent definition of derivating is the following.

  <\theorem>
    <label|diff calculus derivate (2)>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real or complex numbers, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|x\<in\>A<big|cap>A<rprime|'>> where
    <math|A<rprime|'>> is the set of limit points of <math|A> [see
    definition: <reference|topology limit point>] and
    <math|f:A\<rightarrow\>Y> a function. Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has a derivative
      <math|f<rprime|'><rsub|x>> at >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\||h|\|>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then as <math|f<rprime|'><rsub|x>> exists it follows from the previous
      theorem [theorem: <reference|diff calculus derivate>] that
      <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.6.301>\<forall\>h\<in\>A<rsub|x><text| with
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><text| we have
        >>><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      Let now <math|h\<in\>A<rsub|x>> with
      <math|<around*|\||h|\|>\<less\>\<delta\>> then we have either:\ 

      <\description>
        <item*|<math|h=0>>Then

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|X>|\<\|\|\>>=<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x|)>-0\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0=\<varepsilon\>\<cdot\>0=\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation*>

        <item*|<math|h\<neq\>0>>Then <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|X>|\<\|\|\>>>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>|<around*|\||h|\|>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|\<\|\|\>>>>|<row|<cell|>|<cell|<below|\<less\>|<text|[eq:
          <reference|eq 16.6.301>]>>>|<cell|<around*|\||h|\|>\<cdot\>\<varepsilon\>>>>>
        </eqnarray*>
      </description>

      hence in all cases we have that\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|X>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then by the hypothesis there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.7.301>\<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\||h|\|>\<less\>\<delta\><text|
        ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|X>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>
      </equation>

      Let now <math|h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then
      <math|h\<neq\>0> and we can divide <math|h> giving

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-h\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\||h|\|>>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.7.301>]>>>|<cell|<frac|1|<around*|\||h|\|>>\<cdot\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      which prove by [theorem: <reference|diff calculus derivate>] that
      <math|f<rprime|'><rsub|x>> exist.
    </description>
  </proof>

  Up to know we have looked at the derivative <math|f<rprime|'><rsub|x>> at a
  single limit point in the domain of a function which is a element of the
  co-domain of <math|f>. Now we define the derivative function
  <math|f<rprime|'>>.

  <\definition>
    <label|diff derivative function><dueto|Derivative>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex numbers], <math|A\<subseteq\>\<bbb-K\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and <math|f:A\<rightarrow\>X> a function. The set of all
    limit points of <math|A> for which <math|f> has a derivative at <math|x>
    is noted as <math|\<cal-D\><rsub|f>> in other words\ 

    <\equation*>
      \<cal-D\><rsub|f>=<around*|{|x\<in\>A<big|cap>A<rprime|'>\|f<text| has
      a derivative at >x|}>\<subseteq\>A.A<rprime|'>
    </equation*>

    The derivative <math|f<rprime|'>> of <math|f> is then defined by\ 

    <\equation*>
      f<rprime|'>:\<cal-D\><rsub|f>\<rightarrow\>Y<text| where
      >f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x>
    </equation*>

    <\note>
      If <math|\<cal-D\><rsub|f>=\<varnothing\>> then
      <math|f<rprime|'>\<subseteq\>\<cal-D\><rsub|f>\<times\>Y=\<varnothing\>>
      and <math|f<rprime|'>:\<cal-D\><rsub|f>\<rightarrow\>Y> is the empty
      function <math|\<varnothing\>:\<varnothing\>\<rightarrow\>Y> [see
      example: <reference|function empty function>].
    </note>

    <\note>
      The benefit of this definition is that

      <\enumerate>
        <item><math|f<rprime|'>:\<cal-D\><rsub|f>\<rightarrow\>X> is always
        defined even if <math|f> has never a derivative.

        <item><math|\<cal-D\><rsub|f>> is the set of all elements of the
        domain of <math|f> for which the derivative exists so its the most
        natural definition of <math|f<rprime|'>>
      </enumerate>
    </note>

    <math|f<rprime|'>> will be used later to define recursively higher order
    derivates.
  </definition>

  <\definition>
    <label|diff derivative on a open set>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex numbers], <math|A\<subseteq\>\<bbb-K\>>,
    <math|B\<subseteq\>A<big|cap>A<rprime|'>>
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and <math|f:A\<rightarrow\>X> a function then we say that

    <\equation*>
      f<text| has derivatives on >B
    </equation*>

    iff

    <\equation*>
      \<forall\>x\<in\>B<text| f has a derivative at> x
    </equation*>

    <\note>
      As <math|B\<subseteq\>A<big|cap>A<rprime|'>> every element of <math|B>
      is a limit point of <math|A> so that derivates are well defined on
      <math|A>.
    </note>

    <\note>
      If <math|B\<subset\>A> is either open or of the form
      <math|<around*|[|a,\<infty\>|[>>, <math|<around*|]|a,\<infty\>|[>>,
      <math|<around*|]|-\<infty\>,a|]>>, <math|<around*|]|-\<infty\>,a|[>>,
      <math|<around*|[|a,b|]>>, <math|<around*|[|a,b|[>>,
      <math|<around*|]|a,b|]>>, <math|<around*|]|a,b|[>> then by [theorems:
      <reference|topology every element of a open set in a normed space is a
      limit point>, <reference|topology every element of a generalized
      interval is a limit point>] it follows that
      <math|B\<subseteq\>B<rprime|'>>. As <math|B\<subseteq\>A> it follows
      from [theorem: <reference|topology limit points and subsets>] that
      <math|B<rprime|'>\<subseteq\>A<rprime|'>>. Hence the condition
      <math|B\<subseteq\>A<big|cap>A<rprime|'>> is satisfied automatical in
      this cases.
    </note>
  </definition>

  Combining [definition: <reference|diff derivative function>] and
  [definition: <reference|diff derivative on a open set>] we have the
  following trivial equivalences.

  <\theorem>
    <label|diff derivative on a open set (1)>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex numbers], <math|A\<subseteq\>\<bbb-K\>>,
    <math|B\<subseteq\>A<big|cap>A<rprime|'>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and <math|f:A\<rightarrow\>X> a function then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has derivatives on
      >B>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|B\<subseteq\>\<cal-D\><rsub|f>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>B\<subseteq\>A<big|cap>A<rprime|'>>
      then as <math|f> has derivates on <math|B> it follows also that
      <math|f> has a derivative at <math|x>. Hence we have by [definition:
      <reference|diff derivative function>] that
      <math|x\<in\>\<cal-D\><rsub|f>> which proves that\ 

      <\equation*>
        B\<subseteq\>\<cal-D\><rsub|f>
      </equation*>

      <item*|<math|\<Leftarrow\>>>If <math|x\<in\>B\<subseteq\>\<cal-D\><rsup|f>
      then >by [definition: <reference|diff derivative function>] <math|f>
      has a derivative at <math|x> which by [definition: <reference|diff
      derivative on a open set>] that\ 

      <\equation*>
        f<text| has derivatives on >B
      </equation*>
    </description>
  </proof>

  <\example>
    <label|diff derivative of the empty function>Let Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex numbers] and
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space then for <math|f:\<varnothing\>\<rightarrow\>Y> we have that
    <math|\<cal-D\><rsub|f>=\<varnothing\>> so that
    <math|f<rprime|'>:\<cal-D\><rsub|f>\<rightarrow\>Y> is again the empty
    function.
  </example>

  <\example>
    <label|diff derivative of constant>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex] numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, \ <math|y\<in\>X> and <math|A\<subset\>X> either a open
    set or of the form <math|<around*|[|a,\<infty\>|[>>,
    <math|<around*|]|a,\<infty\>|[>>, <math|<around*|]|-\<infty\>,a|]>>,
    <math|<around*|]|-\<infty\>,a|[>>, <math|<around*|[|a,b|]>>,
    <math|<around*|[|a,b|[>>, <math|<around*|]|a,b|]>>,
    <math|<around*|]|a,b|[>>. Let

    <\equation*>
      C<rsub|y>:A\<rightarrow\>X<text| defined by >C<rsub|y><around*|(|x|)>=y
    </equation*>

    then\ 

    <\equation*>
      \<cal-D\><rsub|C<rsub|y>>=A
    </equation*>

    and for\ 

    <\equation*>
      <around*|(|C<rsub|y>|)><rprime|'>:A\<rightarrow\>X<text| defined by
      ><around*|(|C<rsub|y>|)><rprime|'><around*|(|x|)>=<around*|(|C<rsub|y>|)><rprime|'><rsub|x>
    </equation*>

    we have that\ 

    <\equation*>
      <around*|(|C<rsub|y>|)><rprime|'>=C<rsub|0>
    </equation*>
  </example>

  <\proof>
    Using [theorems: <reference|topology every element of a open set in a
    normed space is a limit point>, <reference|topology every element of a
    generalized interval is a limit point>] it follows that
    <math|A\<subseteq\>A<rprime|'>>. Let <math|x\<in\>A> then
    <math|x\<in\>A<rprime|'>>, further if
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\>A<rsub|x>> with <math|0\<less\><around*|\||h|\|>\<less\>1>
    we have\ 

    <\equation*>
      <around*|\<\|\|\>|<frac|C<rsub|y><around*|(|x+h|)>-C<rsub|y><around*|(|x|)>|h>-0|\<\|\|\>>=<around*|\<\|\|\>|<frac|y-y|h>-0|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<less\>\<varepsilon\>
    </equation*>

    so that by [theorem: <reference|diff calculus derivate>] <math|C<rsub|y>>
    has a derivative at <math|x> with <math|<around*|(|C<rsub|y>|)><rprime|'><rsub|x>=0>.
    Hence <math|x\<in\>\<cal-D\><rsub|C<rsub|y>>> which proves that
    <math|A\<subseteq\>\<cal-D\><rsub|C<rsub|y>>\<subseteq\>A> or\ 

    <\equation*>
      \<cal-D\><rsub|C<rsub|y>>=A
    </equation*>

    Further we have <math|\<forall\>x\<in\>A> that
    <math|<around*|(|C<rsub|y>|)><rprime|'><around*|(|x|)>=<around*|(|C<rsub|y>|)><rprime|'><rsub|x>=0=C<rsub|0><around*|(|x|)>>
    which proves that\ 

    <\equation*>
      <around*|(|C<rsub|y>|)><rprime|'>=C<rsub|0>
    </equation*>
  </proof>

  <\example>
    <label|diff derivative of identity function>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> the \ normed
    space of real [or complex] numbers and <math|A\<subset\>X> either a open
    set or of the form <math|<around*|[|a,\<infty\>|[>>,
    <math|<around*|]|a,\<infty\>|[>>, <math|<around*|]|-\<infty\>,a|]>>,
    <math|<around*|]|-\<infty\>,a|[>>, <math|<around*|[|a,b|]>>,
    <math|<around*|[|a,b|[>>, <math|<around*|]|a,b|]>>,
    <math|<around*|]|a,b|[>>. Let\ 

    <\equation*>
      Id<rsub|A>:A\<rightarrow\>\<bbb-K\><text| defined by
      >Id<rsub|A><around*|(|x|)>=x
    </equation*>

    then we have\ 

    <\equation*>
      \<cal-D\><rsub|Id<rsub|A>>=A
    </equation*>

    and for\ 

    <\equation*>
      <around*|(|Id<rsub|A>|)><rprime|'>:\<cal-D\><rsub|Id<rsub|A>>\<rightarrow\>Y<text|
      defined by ><around*|(|Id<rsub|A>|)><rprime|'><rsub|><around*|(|x|)>=<around*|(|Id<rsub|A>|)><rprime|'><rsub|x>
    </equation*>

    we have\ 

    <\equation*>
      <around*|(|Id<rsub|A>|)><rprime|'>=C<rsub|1>
    </equation*>
  </example>

  <\proof>
    Using [theorems: <reference|topology every element of a open set in a
    normed space is a limit point>, <reference|topology every element of a
    generalized interval is a limit point>] it follows that
    <math|A\<subseteq\>A<rprime|'>>. Let <math|x\<in\>A> then
    <math|x\<in\>A<rprime|'>>, further if
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\>A<rsub|x>> with <math|0\<less\><around*|\||h|\|>\<less\>1>
    we have

    <\equation*>
      <around*|\||<frac|Id<rsub|A><around*|(|x+h|)>-Id<rsub|A><around*|(|x|)>|h>-1|\|>=<around*|\||<frac|x+h-x|h>-1|\|>=<around*|\||0|\|>=0\<less\>\<varepsilon\>
    </equation*>

    So that by [theorem: <reference|diff calculus derivate>]
    <math|Id<rsub|A>> has a derivative \ <math|<around*|(|Id<rsub|A>|)><rprime|'><rsub|x>>
    at <math|x> with <math|<around*|(|Id<rsub|A>|)><rprime|'><rsub|x>=1>.
    Hence <math|x\<in\>\<cal-D\><rsub|C<rsub|y>>> which proves that
    <math|A\<subseteq\>\<cal-D\><rsub|C<rsub|y>>\<subseteq\>A> or\ 

    <\equation*>
      \<cal-D\><rsub|C<rsub|y>>=A
    </equation*>

    Further we have <math|\<forall\>x\<in\>A> that
    <math|<around*|(|C<rsub|y>|)><rprime|'><around*|(|x|)>=<around*|(|C<rsub|y>|)><rprime|'><rsub|x>=1=C<rsub|1><around*|(|x|)>>
    which proves that\ 

    <\equation*>
      <around*|(|C<rsub|y>|)><rprime|'>=C<rsub|1>
    </equation*>
  </proof>

  <\example>
    <label|diff scalar product function has a derivate>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> the \ normed
    space of real [or complex] numbers and <math|A\<subset\>X> either a open
    set or of the form <math|<around*|[|a,\<infty\>|[>>,
    <math|<around*|]|a,\<infty\>|[>>, <math|<around*|]|-\<infty\>,a|]>>,
    <math|<around*|]|-\<infty\>,a|[>>, <math|<around*|[|a,b|]>>,
    <math|<around*|[|a,b|[>>, <math|<around*|]|a,b|]>>,
    <math|<around*|]|a,b|[>>. <math|A\<subseteq\>K>. Let <math|x\<in\>X> and
    define\ 

    <\equation*>
      f:A\<rightarrow\>\<bbb-K\><text| defined by
      >f<around*|(|t|)>=t\<cdot\>x
    </equation*>

    then we have\ 

    <\equation*>
      \<cal-D\><rsub|f>=A
    </equation*>

    and for\ 

    <\equation*>
      f<rprime|'>:\<cal-D\><rsub|Id<rsub|A>>\<rightarrow\>Y<text| defined by
      >f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x>
    </equation*>

    we have\ 

    <\equation*>
      f<rprime|'>=C<rsub|x>
    </equation*>
  </example>

  <\proof>
    Using [theorems: <reference|topology every element of a open set in a
    normed space is a limit point>, <reference|topology every element of a
    generalized interval is a limit point>] it follows that
    <math|A\<subseteq\>A<rprime|'>>. Let <math|t\<in\>A> then
    <math|t\<in\>A<rprime|'>>, further if
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\>A<rsub|x>> with <math|0\<less\><around*|\||h|\|>\<less\>1>
    we have

    <\equation*>
      <around*|\||<frac|f<around*|(|t+h|)>-f<around*|(|t|)>|h>-x|\|>=<around*|\||<frac|<around*|(|t+h|)>\<cdot\>x-t\<cdot\>x|h>-x|\|>=<around*|\||<frac|h\<cdot\>x|h>-x|\|>=0\<less\>\<varepsilon\>
    </equation*>

    So that by [theorem: <reference|diff calculus derivate>] <math|f> has a
    derivative \ <math|f<rprime|'><rsub|t>> at <math|t> with
    <math|f<rprime|'><rsub|t>=x>. Hence <math|t\<in\>\<cal-D\><rsub|f>> which
    proves that <math|A\<subseteq\>\<cal-D\><rsub|f>\<subseteq\>A> or\ 

    <\equation*>
      \<cal-D\><rsub|f>=A
    </equation*>

    Further we have <math|\<forall\>x\<in\>A> that
    <math|f<rprime|'><around*|(|t|)>=f<rprime|'><rsub|t>=x=C<rsub|x><around*|(|t|)>>
    which proves that\ 

    <\equation*>
      f<rprime|'>=C<rsub|x>
    </equation*>
  </proof>

  <subsection|Properties of the derivative>

  The existence of a derivative implies continuity

  <\theorem>
    <label|diff derivatives and continuity><math|>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex numbers], <math|A\<subseteq\>\<bbb-K\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|x\<in\>A> a limit point of <math|A> and
    <math|f:A\<rightarrow\>Y> a function that has a derivative
    <math|f<rprime|'><rsub|x>> at <math|x> then <math|f> is continuous at
    <math|x>.
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> has a
    derivative <math|f<rprime|'><rsub|x>> at <math|x> it follows from
    [theorem: <reference|diff calculus derivate (2)>] that there exist a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>A<rsub|x>> with
    <math|<around*|\||h|\|>\<less\>\<delta\><rsub|1>> we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>
    </equation*>

    Let <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,1,<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>|)>>|)>\<in\>\<bbb-R\><rsup|+>>
    then we have for <math|y\<in\>A> with
    <math|<around*|\||y-x|\|>\<less\>\<delta\>> that
    <math|y-x\<in\>A<rsub|x>> [as <math|<around*|(|y-x|)>+x=y\<in\>A>] and
    <math|<around*|\||y-x|\|>\<less\>\<delta\><rsub|1>,1,<frac|\<varepsilon\>|1+<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>>>
    then we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-<around*|(|y-x|)>\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>=<around*|\<\|\|\>|f<around*|(|x+<around*|(|y-x|)>|)>-f<around*|(|x|)>-<around*|(|y-x|)>\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\||y-x|\|>\<leqslant\><frac|\<varepsilon\>|2>
    </equation*>

    and\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|y-x|)>\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>=<around*|\||y-x|\|>\<cdot\><around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>|)>>\<cdot\><around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
    </equation*>

    So that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-<around*|(|y-x|)>\<cdot\>f<rprime|'><rsub|x>+<around*|(|y-x|)>\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-<around*|(|y-x|)>\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>+<around*|\<\|\|\>|<around*|(|y-x|)>\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    So by [theorem: <reference|continuity in normed subspace>] it follows
    that <math|f> is continuous at <math|x>.
  </proof>

  We look now at the dependency of the derivative of a function on the domain
  of the function.

  <\theorem>
    <label|diff derivative and restriction>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex] numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A,B\<subseteq\>\<bbb-K\>> with
    <math|B\<subseteq\>A>, <math|x\<in\>B> such that <math|x> is a limit
    point of <math|B> and <math|f:A\<rightarrow\>X> a function such that
    <math|f> has a derivative <math|f<rprime|'><rsub|x>> at <math|x> then
    <math|f<rsub|\|B>> has a derivative <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>>
    at <math|x> with <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>>.

    <\note>
      As <math|x> is a limit point and <math|B\<subseteq\>A> it follows from
      [theorem: <reference|topology limit points and subsets>] that <math|x>
      is a limit point of <math|A> which is necessary for the existance of
      <math|f<rprime|'><rsub|x>>.\ 
    </note>
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
    <math|f<rprime|'><rsub|x>> exist we have by [theorem: <reference|diff
    calculus derivate>] that there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>A<rsub|x>> with
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have that\ 

    <\equation*>
      <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    Let <math|h\<in\>B<rsub|x>> with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>
    then <math|x+h\<in\>B\<subseteq\>A\<Rightarrow\>h\<in\>A<rsub|x>> so that

    <\equation*>
      <around*|\<\|\|\>|<frac|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    which proves that <math|f<rsub|\|B>> has a derivative at <math|x> and
    <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>>.
  </proof>

  If we restrict ourselves to interior points in <math|B> then the opposite
  of the above theorem is also true so that the existence of a derivative at
  a inner point depends only on the values of the functions in a neighborhood
  of this point. This is the so called <with|font-series|bold|locally>
  principle.

  <\theorem>
    <label|diff derivative is local>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real [or complex] numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>X>, <math|B\<subseteq\>A>,
    <math|x\<in\>B<rsup|\<circ\>>> and <math|f:A\<rightarrow\>X> a function
    then we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has a derivative
      <math|f<rprime|'><rsub|x><text| at >x>>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<rsub|\|B><text|
      has a derivative <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>> at
      >x>|<cell|>>>>
    </eqnarray*>

    Further if either <math|f<rprime|'><rsub|x>> exist or
    <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>> exist then
    <math|f<rprime|'><rsub|x>=<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>>.
  </theorem>

  <\note>
    As <math|x\<in\>B<rsup|\<circ\>><below|\<subseteq\>|B\<subseteq\>A>A<rsup|\<circ\>>>
    it follows using [theorem: <reference|topology interior point is a limit
    point in a normed space>] that <math|x\<in\>B<rprime|'>\<wedge\>x\<in\>A<rprime|'>>
    which is needed for the definition of the derivatives.
  </note>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This follows from the previous theorem
      [theorem: <reference|diff derivative and restriction>].

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f<rsub|\|B>> has a derivative at <math|x> there exist a
      <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>B<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|1>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|<frac|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>|h>-<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      As <math|x\<in\>B<rsup|\<circ\>>> there exist by [definition:
      <reference|topology interior of a set>] there exist a
      <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> such that
      <math|x\<in\>U\<subseteq\>B>. Hence there exist a
      <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\><rsub|2>|)>\<subseteq\>U\<subseteq\>B\<subseteq\>A>.
      Take then <math|<rigid|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>>
      then if we have <math|h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have that
      <math|<around*|\||x+h-x|\|>=<around*|\||h|\|>\<less\>\<delta\><rsub|2>>
      so that <math|<rigid|x+h\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\><rsub|2>|)>\<subseteq\>B\<Rightarrow\>h\<in\>B<rsub|x>>>.
      Hence we have, as also <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|1>>,
      that

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>|\<\|\|\>>\<equallim\><rsub|x\<in\>B,x+h\<in\>B><around*|\<\|\|\>|<frac|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>|h>-<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      which proves that <math|f> has a derivative at <math|x> and
      <math|f<rprime|'><rsub|x>=<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>>.
    </description>
  </proof>

  The following example shows that the requirement of inner points is
  essential.

  <\example>
    Consider the normed space <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    and define\ 

    <\equation*>
      B=<around*|{|0|}><big|cup><around*|{|<frac|1|n>\|n\<in\>\<bbb-N\>|}>\<subseteq\>\<bbb-R\><text|
      and >A=B<big|cup><around*|{|<frac|1|n>+<frac|1|n<rsup|2>>:n\<in\>\<bbb-N\>|}>\<subseteq\>\<bbb-R\>
    </equation*>

    and\ 

    <\equation*>
      f:A\<rightarrow\>\<bbb-R\><text| defined by
      >f<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|0<text| if
      >x=0>>|<row|<cell|0<text| if >x\<in\>B>>|<row|<cell|1<text| if
      >x\<in\>A\\B>>>>>
    </equation*>

    then\ 

    <\enumerate>
      <item><math|0\<in\>B\<subseteq\>A>

      <item><math|0<text| is a limit point of >B>

      <item><math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|0>> exist with
      <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|0>=0>

      <item><math|f> has no derivatives at <math|0>
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows trivially from the definition of <math|A,B>.

      <item>If <math|U> is open set with <math|0> then there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|0\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<delta\>|)>\<subseteq\>U>.
      As <math|0\<less\>\<delta\>> there exist a <math|n\<in\>\<bbb-N\>> such
      that <math|0\<less\><frac|1|n>\<less\>\<delta\>> [see theorem:
      <reference|complex Archimedean property consequence (1)>] hence
      <math|<frac|1|n>\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<delta\>|)>\<subseteq\>U>
      as <math|0\<neq\><frac|1|n>\<in\>B> it follows that
      <math|<frac|1|n>\<in\><around*|(|\<Beta\>\\<around*|{|0|}>|)><big|cup>U\<Rightarrow\><around*|(|B\\<around*|{|0|}>|)><big|cap>U\<neq\>\<varnothing\>>.

      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and take
      <math|\<delta\>=1> then <math|\<forall\>h\<in\>B<rsub|0>> with
      <math|0\<less\><around*|\||h|\|>\<less\>1> we have that
      <math|h=0+h\<in\>B\<Rightarrow\>h\<in\>B> so that\ 

      <\equation*>
        <around*|\||<frac|f<around*|(|0+h|)>-f<around*|(|0|)>|h>-0\<cdot\>h|\|>=<around*|\||<frac|f<around*|(|h|)>-f<around*|(|0|)>|h>|\|>=<around*|\||<frac|0-0|h>|\|>=0
      </equation*>

      which proves that <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|0>>
      exist with <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|0>=0>.

      <item>First we prove that <math|\<forall\>n\<in\>\<bbb-N\>> we have
      that <math|<frac|1|n>+<frac|1|n<rsup|2>>\<nin\><around*|{|<frac|1|m>\|m\<in\>\<bbb-N\>|}>>.
      Assume that there exist \ <math|<rigid|n,m\<in\>\<bbb-N\>>> such that\ 

      <\equation*>
        <frac|1|n>+<frac|1|n<rsup|2>>=<frac|1|m>
      </equation*>

      them <math|<frac|1|m>=<frac|n+1|n<rsup|2>>> so that\ 

      <\equation*>
        m=<frac|n<rsup|2>|n+1>
      </equation*>

      Now as <math|<around*|(|n+1|)>\<cdot\><around*|(|n-1|)>+1=n<rsup|2>-1+1=n<rsup|2>>
      so that\ 

      <\equation*>
        <frac|n<rsup|2>|n+1>=<frac|<around*|(|n+1|)>\<cdot\><around*|(|n-1|)>+1|n+1>=<around*|(|n-1|)>+<frac|1|n+1>
      </equation*>

      hence <math|<frac|n<rsup|2>|n+1>\<nin\>\<bbb-N\>> and the assumption
      must be false. Hence we have that\ 

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><text| that
        ><frac|1|n>+<frac|1|n<rsup|2>>\<nin\><around*|{|<frac|1|m>\|m\<in\>\<bbb-N\>|}><text|>
      </equation*>

      Take <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> then as
      <math|0\<less\>\<delta\>> there exist by [theorem: <reference|complex
      Archimedean property consequence (1)>] a <math|n\<in\>\<bbb-N\>> such
      that <math|0\<less\><frac|1|n>\<less\><frac|\<delta\>|2>\<less\>\<delta\>>
      and as <math|<frac|1|n>\<less\>1\<Rightarrow\><frac|1|n<rsup|2>>\<less\><frac|1|n>\<less\><frac|\<delta\>|2>>
      we have that <math|0\<less\><frac|1|n>+<frac|1|n<rsup|2>>\<less\>\<delta\>>
      and <math|0\<less\><frac|1|n>\<less\>\<delta\>>. Hence
      <math|\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+>> there exist a
      <math|n\<in\>\<bbb-N\>> such that <math|<frac|1|n>\<in\>B\<subseteq\>A=A<rsub|0>\<wedge\>0\<less\><around*|\||<frac|1|n>|\|>\<less\>\<delta\>>
      and a <math|<frac|1|n>+<frac|1|n<rsup|2>>\<in\>A\\B\<wedge\>0\<less\><around*|\||<frac|1|n>+<frac|1|n<rsup|2>>|\|>\<less\>\<delta\>>.
      As

      <\equation*>
        <frac|f<around*|(|0+<frac|1|n>|)>-f<around*|(|0|)>|<frac|1|n>><below|=|<frac|1|n>\<in\>B><frac|0-0|<frac|1|n>>=0
      </equation*>

      and\ 

      <\equation*>
        <frac|f<around*|(|0+<frac|1|n>+<frac|1|n<rsup|2>>|)>-f<around*|(|0|)>|<frac|1|n>+<frac|1|n<rsup|2>>><below|=|<frac|1|n>+<frac|1|n<rsup|2>>\<in\>A\\B><frac|1-0|<frac|1|n>+<frac|1|n<rsup|2>>>\<gtr\>0
      </equation*>

      Hence we can never find a single <math|v\<in\>\<bbb-R\>> such that
      given a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|0>=A> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have\ 

      <\equation*>
        <around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>v|h>|\|>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      So <math|f> has no derivative at <math|0>.
    </enumerate>
  </proof>

  Using the locally principle we have another equivalence for the existence
  of derivatives on a open sets.

  <\corollary>
    <label|diff derivative on a open set (2)>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex numbers], <math|A\<subseteq\>\<bbb-K\>>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> with
    <math|U\<subseteq\>A>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:A\<rightarrow\>X> a function then we have the
    following equivalences:

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has derivatives on
      >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>x\<in\>U<text|
      there exist a >V\<in\>\<cal-T\><rsub|<around*|\|||\|>><text| with
      >x\<in\>V\<subseteq\>U<text| such that >f<rsub|\|V><text| has a
      derivative at >x>|<cell|>>>>
    </eqnarray*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>U> then as <math|f> has
      derivatives on <math|U> it follows that <math|f> has a derivative at
      <math|x>, further by ]theorem: <reference|topology every element of a
      open set in a normed space is a limit point>]
      <math|x\<in\>U<rprime|'>>. Hence by [theorem: <reference|diff
      derivative and restriction>] we must conclude that <math|f<rsub|\|U>>
      has a derivative \ at <math|x>. So by taking <math|V=U> we found a
      <math|V\<in\>\<cal-T\><rsub|<around*|\|||\|>>> with <math|x\<in\>V>
      such that <math|f<rsub|\|U>> has a derivative at <math|x>.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>U> then by the hypothesis
      there exist a <math|V\<in\>\<cal-T\><rsub|<around*|\|||\|>>> with
      <math|x\<in\>V\<subseteq\>U> such that <math|f<rsub|\|V>> has a
      derivative at <math|x>. As <math|V> is open it follows from [theorem:
      <reference|topology open set and interior>] that
      <math|V=V<rsup|\<circ\>>> so that <math|x\<in\>V<rsup|\<circ\>>>. Using
      [theorem: <reference|diff derivative is local>] it follows then that
      <math|f> has a derivative at <math|x>. As <math|x\<in\>U> has been
      choosen arbitrary it follows that\ 

      <\equation*>
        f<text| has derivatives on >U
      </equation*>
    </description>
  </proof>

  Differentiating a function is a linear operation as is show in the
  following theorem.

  <\theorem>
    <label|diff (f+g)'=f'+g'>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real or complex numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\>>,
    <math|x\<in\>A<big|cap>A<rprime|'>> then we have:\ 

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>X> and <math|g:A\<rightarrow\>X> are
      functions that have derivatives at <math|x> then <math|f+g> has a
      derivative at <math|x> and <math|<around*|(|f+g|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>+g<rprime|'><rsub|x>>.

      <item>If <math|k\<in\>\<bbb-N\>>, <math|<around*|{|f<rsub|i>:A\<rightarrow\>X|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
      be a family of functions that has a derivative at <math|x> then
      <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> has a derivative at
      <math|x> with <math|<around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)><rprime|'><rsub|x>=<big|sum><rsub|i=1><rsup|k><around*|(|f<rsub|i>|)><rprime|'><rsub|x>>

      <item>If <math|f:A\<rightarrow\>X> has a derivative
      <math|f<rprime|'><rsub|x>> at <math|x> and
      <math|\<alpha\>\<in\>\<bbb-K\>> then <math|\<alpha\>\<cdot\>f> has a
      derivative at <math|x> and <math|<rigid|<around*|(|\<alpha\>\<cdot\>f|)><rprime|'><rsub|x>=\<alpha\>\<cdot\>f<rprime|'><rsub|x>>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> and
      <math|g> has a derivative at <math|x> it follows from [theorem:
      <reference|diff calculus derivate>] that there exists
      <math|\<delta\><rsub|f>,\<delta\><rsub|g>\<in\>\<bbb-R\><rsup|+>> such
      that\ 

      <\equation*>
        \<forall\>h\<in\>A<rsub|x><text| with
        >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|f><text| we have
        ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation*>

      <\equation*>
        \<forall\>h\<in\>A<rsub|x><text| with
        >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|g><text| we have
        ><around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><rsub|x>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation*>

      Let <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then we have <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|f+g|)><around*|(|x+h|)>-<around*|(|f+g|)><around*|(|x|)>|h>-<around*|(|f<rprime|'><rsub|x>+g<rprime|'><rsub|x>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>+<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|\<\|\|\>>+<around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>>|<cell|\<less\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
      </eqnarray*>

      which proves by [theorem: <reference|diff calculus derivate>] that
      <math|f+g> has a derivative <math|<around*|(|f+g|)><rprime|'><rsub|x>>
      with\ 

      <\equation*>
        <around*|(|f+g|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>+g<rprime|'><rsub|x>
      </equation*>

      <item>We prove this by induction so define\ 

      <\equation*>
        S=<around*|{|k\<in\>\<bbb-N\>\|<text|If
        ><around*|{|f<rsub|i>:A\<rightarrow\>X|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        satisfies that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}><text|
        >f<rsub|i><text| has a derivative
        ><around*|(|f<rsub|i>|)><rsub|x><rprime|'><text| at >x<text| then
        ><big|sum><rsub|i=1><rsup|k>f<rsub|i><text| has a <math|>derivative
        at >x<text| with ><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)><rprime|'><rsup|><rsub|x>=<big|sum><rsub|i=1><rsup|k><around*|(|f<rsub|i>|)><rsup|<rprime|'>><rsub|x>|}>
      </equation*>

      then we have

      <\description>
        <item*|<math|1\<in\>S>>If <math|<around*|{|f<rsub|i>\|A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1|}>>>
        is a family of functions with a <math|n>-the derivative at <math|x>
        then as <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>=f<rsub|1>> and it
        follows that <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>> has a
        <math|n>-the derivative at <math|x>, further\ 

        <\equation*>
          <around*|(|<big|sum><rsub|i=1><rsup|1>f<rsub|i>|)><rprime|'><rsub|x>=<around*|(|f<rsub|1>|)><rsup|<around*|(|n|)>><rsub|x>=<big|sum><rsub|i=1><rsup|1><around*|(|f<rsub|i>|)><rprime|'><rsub|x>
        </equation*>

        So it follows that <math|1\<in\>S>.

        <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>Let
        <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>>
        be a family of functions that have a <math|>derivative at <math|x>
        then we have as <math|k\<in\>S> that
        <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i><rsup|>> has a derivative
        at <math|x> with <math|<around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)><rprime|'><rsub|x>=<big|sum><rsub|i=1><rsup|k><around*|(|f<rsub|i>|)><rprime|'><rsup|><rsub|x>>.
        As also <math|f<rsub|k+1>> is has a <math|n>-the derivative at
        <math|x> it follows from (1) that
        <math|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>=<around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>+f<rsub|k+1>>
        has a <math|n>-the derivative at <math|x> with\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>|)><rprime|'><rsub|x>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>+f<rsub|k+1>|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)><rprime|'><rsup|><rsub|x>+<around*|(|f<rsub|k+1>|)><rprime|'><rsup|><rsub|x>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i=1><rsup|k><around*|(|f<rsub|i>|)><rprime|'><rsub|x>+<around*|(|f<rsub|k+1>|)><rprime|'><rsup|><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|k+1><around*|(|f<rsub|i>|)><rprime|'><rsub|x>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> has
      a derivative <math|f<rprime|'><rsub|x>> at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>
      </equation*>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x+h|)>-<around*|(|\<alpha\>\<cdot\>f|)>|h>-\<alpha\>\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      which proves by [theorem: <reference|diff calculus derivate>] that
      <math|\<alpha\>\<cdot\>f> has a derivative
      <math|<around*|(|\<alpha\>\<cdot\>f|)><rprime|'><rsub|x>> with\ 

      <\equation*>
        <around*|(|\<alpha\>\<cdot\>f|)><rprime|'><rsub|x>=\<alpha\>\<cdot\>f<rprime|'><rsub|x>
      </equation*>
    </enumerate>
  </proof>

  For the case where the domain of <math|f> is a closed interval
  <math|<around*|[|a,b|]>> we have\ 

  If <math|f:<around*|[|a,b|]>> and <math|\<forall\>x\<in\><around*|[|a,b|]>>
  <math|f<rprime|'><rsub|x>> exist then if we define <math|f<rprime|'>> by\ 

  <\equation*>
    f<rprime|'>:<around*|(|a,b|)>\<rightarrow\>X
  </equation*>

  then

  <\equation*>
    f<rprime|'><rsub|a>=<below|lim|x<below|\<rightarrow\>|<around*|]|a,b|[>>a>f<rprime|'><around*|(|x|)><text|
    and >f<rprime|'><rsub|b>=<below|lim|x<below|\<rightarrow\>|<around*|]|a,b|[>>b>f<rprime|'><around*|(|x|)>
  </equation*>

  <subsection|Fréchet differential of a function>

  We wan now extend the definition of a derivative of a function
  <math|f:A\<rightarrow\>X> where <math|A\<subseteq\>K> to the general case
  where <math|A\<subseteq\>X> a normed space. As you can not divide by a
  <math|h\<in\>X> we can not define the extended derivative based on a limit
  of <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|x>|\<\|\|\>><rsub|Y>>.
  Hence we base our extension on the equivalent definition [theorem:
  <reference|diff calculus derivate (2)>] of the derivative where we do not
  use division by <math|h>.

  <\definition>
    <label|diff Frechet approximation><dueto|Fréchet approximation>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|a\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function then <math|L> is a
    <with|font-series|bold|Fréchet approximation of ><with|font-series|bold|f
    at <math|x>> if <math|L\<in\>L<around*|(|X,Y|)>> and
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

    <\equation*>
      <text|<math|\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>
    </equation*>
  </definition>

  Next we have to ensure that the <with|font-series|bold|Fréchet
  approximation> of a function is unique. Unfourtunately this is not as
  siimple as requiring that <math|x> is a limit point as the following
  example shows.

  <\example>
    Consider <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>,<math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>,
    <math|A=<around*|{|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|2>\|y=0|}>> and
    take

    <\equation*>
      f:A\<rightarrow\>\<bbb-R\><text| defined by
      >f<around*|(|<around*|(|x,y|)>|)>=0
    </equation*>

    then

    <\equation*>
      <around*|(|0,0|)><text| is a limit point of >A
    </equation*>

    Further for\ 

    <\equation*>
      L<rsub|1>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><text| defined by
      >L<rsub|1><around*|(|<around*|(|x,y|)>|)>=y
    </equation*>

    <\equation*>
      L<rsub|2>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><text| defined by
      >L<rsub|2><around*|(|<around*|(|x,y|)>|)>=2\<cdot\>y
    </equation*>

    we have that\ 

    <\equation*>
      L<rsub|1>,L<rsub|2><text| are Fréchet approximations of <math|f> at
      <math|<around*|(|0.0|)>>>
    </equation*>

    but\ 

    <\equation*>
      L<rsub|1>\<neq\>L<rsub|2>
    </equation*>

    Note that\ 

    <\equation*>
      \<forall\>x\<in\>A<text| we have that
      >L<rsub|1><around*|(|x|)>=0=L<rsub|2><around*|(|x|)>
    </equation*>
  </example>

  <\proof>
    Let <math|U> be a open set such that <math|<around*|(|0,0|)>\<in\>U> then
    there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|<rigid|<around*|(|0,0|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|<around*|(|0,0|)>,\<delta\>|)>\<subseteq\>U>>.
    Take <math|y=<around*|(|<frac|\<delta\>|2>,0|)>> then <math|y\<in\>A> and
    <math|y\<neq\><around*|(|0,0|)>>. Further

    <\equation*>
      <around*|\<\|\|\>|y-<around*|(|0,0|)>|\<\|\|\>><rsub|2>=<around*|\<\|\|\>|<around*|(|\<delta\>/2,0-<around*|(|0,0|)>|)>|\<\|\|\>><rsub|2>=<around*|\<\|\|\>|<around*|(|f/2.0|)>|\<\|\|\>><rsub|2>=\<delta\>/2\<less\>\<delta\>
    </equation*>

    so that <math|y\<in\><around*|(|A\\<around*|{|<around*|(|0,0|)>|}>|)><big|cap>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|<around*|(|0,0|)>,\<delta\>|)>\<subseteq\><around*|(|A\\<around*|{|<around*|(|0,0|)>|}>|)><big|cap>U>
    which proves that\ 

    <\equation*>
      <around*|(|0,0|)><text| is a limit point of >U
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

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
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
  </proof>

  In books about optimization this problem is solved by the concept of a
  tangent cone. The basic idea is to find given the domain of the function
  and the point to differentiate at and find the set of points in <math|X>
  where the Fréchet approximations are the same and define then the
  differential to be the restriction of a Fréchet approximation to this set.
  In the above example we have that <math|<around*|(|L<rsub|1>|)><rsub|\|A>=<around*|(|L<rsub|2>|)><rsub|\|A>>.
  The problem with this approach is that it is extremely complex and is not
  easy to extend to higher order differentiation. So the approach used in
  this book is to limit differentiability to interior points [see definition:
  <reference|topology interior of a set>] of the domain of a function.

  <\lemma>
    <label|lemma 16.37.4>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A<rsup|\<circ\>>>
    and <math|f:A\<rightarrow\>Y> a function then if
    <math|L<rsub|1>,L<rsub|2>\<in\>\<cal-L\><around*|[|X;Y|]>> two Fréchet
    approximations of <math|f> at <math|x> then <math|L<rsub|1>=L<rsub|2>>.
  </lemma>

  <\proof>
    Assume that <math|L<rsub|1>\<neq\>L<rsub|2>> then there exist a
    <math|h<rsub|0>\<in\>X> such that <math|L<rsub|1><around*|(|h<rsub|0>|)>\<neq\>L<rsub|2><around*|(|h<rsub|0>|)>>
    hence we have that

    <\equation*>
      \<varepsilon\>=<around*|\<\|\|\>|L<rsub|1><around*|(|h<rsub|0>|)>-L<rsub|2><around*|(|h<rsub|0>|)>|\<\|\|\>><rsub|Y>\<in\>\<bbb-R\><rsup|+>
    </equation*>

    Now using the hypothesis there exists
    <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such
    that

    <\equation>
      <label|eq 16.8.4>\<forall\>k\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
      we have ><around*|\<\|\|\>|f<around*|(|x+k|)>-f<around*|(|x|)>-L<rsub|1><around*|(|k|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>>
    </equation>

    and

    <\equation>
      <label|eq 16.9.4>\<forall\>k\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2><text|
      we have ><around*|\<\|\|\>|f<around*|(|x+k|)>-f<around*|(|x|)>-L<rsub|2><around*|(|k|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>>
    </equation>

    As <math|x\<in\>A<rsup|\<circ\>>> there exist by [definition:
    <reference|topology interior of a set>] there exist a open set <math|U>
    such that <math|x\<in\>U\<subseteq\>A> hence there exist a
    <math|\<delta\><rsub|3>\<in\>\<bbb-R\><rsup|+>> so that
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|3>|)>\<subseteq\>U\<subseteq\>A>.
    Let <math|k\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|3>|)>>
    then <math|<around*|\<\|\|\>|<around*|(|x+k|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|k|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|3>>
    so that <math|x+k\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|3>|)>\<subseteq\>A>
    which proves that\ 

    <\equation*>
      0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|3>|)>\<subseteq\>A<rsub|x>
    </equation*>

    Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>|)>>
    and define <math|h<rsub|1>=<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\>h<rsub|0>>
    then\ 

    <\equation>
      <label|eq 16.10.4><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\>h<rsub|0>|\<\|\|\>><rsub|X>=\<delta\>\<cdot\><frac|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>
    </equation>

    so that <math|h<rsub|1>\<in\>A<rsub|x>> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|\<delta\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|L<rsub|1><around*|(|h<rsub|0>|)>-L<rsub|2><around*|(|h<rsub|0>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|\<delta\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\>L<rsub|1><around*|(|h<rsub|0>|)>-<frac|\<delta\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\>L<rsub|2><around*|(|h<rsub|0>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|<frac|\<delta\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\>h<rsub|0>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|2><around*|(|<frac|\<delta\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\>h<rsub|0>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|h<rsub|1>|)>-L<rsub|2><around*|(|h<rsub|1>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h<rsub|1>|)>-f<around*|(|x|)>-L<rsub|2><around*|(|h<rsub|1>|)>-<around*|(|f<around*|(|x+h<rsub|1>|)>-f<around*|(|x|)>-L<rsub|1><around*|(|h<rsub|1>|)>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h<rsub|1>|)>-f<around*|(|x|)>-L<rsub|2><around*|(|h<rsub|1>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|x+h<rsub|1>|)>-f<around*|(|x|)>-L<rsub|1><around*|(|h<rsub|1>|)>|\<\|\|\>><rsub|Y>>|<cell|<below|\<leqslant\>|<text|[eqs:
      <reference|eq 16.8.4>,<reference|eq 16.9.4>,<reference|eq
      16.10.4>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|X>+<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\>h<rsub|0>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\><frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>>|<cell|>|<cell|>>>>
    </eqnarray*>

    so that after dividing both sides by <math|<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<gtr\>0>

    <\equation*>
      <around*|\<\|\|\>|L<rsub|1><around*|(|h<rsub|0>|)>-L<rsub|2><around*|(|h<rsub|0>|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>=<around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>
    </equation*>

    a contradiction. So we must have

    <\equation*>
      L<rsub|1>=L<rsub|2>
    </equation*>
  </proof>

  We can now define the Fréchet differential of a function at a point.

  <\definition>
    <label|diff differentiability><index|differentiability><dueto|Fréchet
    differentiability>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> and
    <math|x\<in\>A<rsup|\<circ\>>> then a function

    <\equation*>
      f:A\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|x> if there exist a
    <math|L\<in\>L<around*|(|X,Y|)>> such that <math|L> is a Fréchet
    approximation of <math|f> at <math|x>. Using [definition: <reference|diff
    Frechet approximation>] this is equivalent with\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>

    The unique <math|L> [seee lemma: <reference|lemma 16.37.4>] is called the
    \ <with|font-series|bold|Fréchet differential of f at <math|x>> and noted
    as <math|D<rsub|x> f>.\ 
  </definition>

  Note that the Fréchet differential <math|D<rsub|x>f> at
  <math|x\<in\>A<rsup|0>> is a element of <math|L<around*|(|X,Y|)>> hence
  <math|D<rsub|x>f> is a continuous linear function. However we can also look
  at a different function who maps <math|x> to <math|D<rsub|x>f> which is the
  differentia; of <math|f>.

  <\definition>
    <label|diff differential><dueto|Differential>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> a
    function. Then we define

    <\equation*>
      \<frak-D\><rsub|f>=<around*|{|x\<in\>A<rsup|\<circ\>>\|f<text| is
      Fréchet differentiable at >x|}>\<subseteq\>A<rsup|\<circ\>>
    </equation*>

    and\ 

    <\equation*>
      D f:\<frak-D\><rsub|f>\<rightarrow\>L<around*|(|X,Y|)><text| where >D
      f<around*|(|x|)>=D<rsub|x>f
    </equation*>

    <math|D f> is called the differential of <math|f>.

    <\note>
      If <math|\<frak-D\><rsub|f>=\<varnothing\>> then <math|D<rsub|>f> is
      the empty function [see example: <reference|function empty function>].
    </note>
  </definition>

  <\definition>
    <label|diff differentiability on a set>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>|X|\<\|\|\>>>> with
    <math|U\<subseteq\>A> and <math|f:A\<rightarrow\>Y> a function then we
    say\ 

    <\equation*>
      f<text| is Fréchet differentiable on >U
    </equation*>

    iff

    <\equation*>
      \<forall\>x\<in\>U<text| we have that >f<text| is Fréchet
      differentiable at >x
    </equation*>

    In the special case where <math|f> is Fréchet differentiable on its
    domain we say that\ 

    <\equation*>
      f<text| is Fréchet differentiable>
    </equation*>
  </definition>

  <\theorem>
    <label|diff differentiability on a set (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>|X|\<\|\|\>>>> with
    <math|U\<subseteq\>A> and <math|f:A\<rightarrow\>Y> a function then we
    have the following equivalences.

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is Fréchet differentiable on
      >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|U\<subseteq\>\<frak-D\><rsub|f>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>U> then as <math|f> is
      Fréchet differentiable on <math|U> <math|f> is Fréchet differentiable
      at <math|x>, further <math|x\<in\>U\<subseteq\>A> implies
      <math|x\<in\>A<rsup|\<circ\>>>. Hence it follows that
      <math|x\<in\>\<frak-D\><rsub|f>> which proves that\ 

      <\equation*>
        U\<subseteq\>\<frak-D\><rsub|f>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>U> then as
      <math|U\<subseteq\>\<frak-D\><rsub|f>> it follows that
      <math|x\<in\>\<frak-D\><rsub|f>> so that <math|f> is Fréchet
      differentiable at <math|x> which proves that\ 

      <\equation*>
        f<text| is Fréchet differentiable on >U
      </equation*>
    </description>
  </proof>

  <\example>
    <label|diff identity function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|U> a open set in <math|X> and\ 

    <\equation*>
      Id<rsub|U>:U\<rightarrow\>X<text| defined by
      >Id<rsub|U><around*|(|x|)>=x
    </equation*>

    then

    <\equation*>
      \<frak-D\><rsub|Id<rsub|U>>=U<text| in other words >Id<rsub|U><text| is
      Fréchet differentiable>
    </equation*>

    and for\ 

    <\equation*>
      D Id<rsub|U>:\<frak-D\><rsub|Id<rsub|U>>\<rightarrow\>L<around*|(|X,Y|)><text|
      where >D Id<rsub|U><around*|(|x|)>=D<rsub|x>Id<rsub|\|U><rsub|>
    </equation*>

    we have\ 

    <\equation*>
      D Id<rsub|U>=C<rsub|Id<rsub|X>>
    </equation*>
  </example>

  <\proof>
    Using [example: <reference|continuity identity function norm>] it follows
    that\ 

    <\equation*>
      Id<rsub|X>\<in\>L<around*|(|X,Y|)>
    </equation*>

    As <math|U> is open we have by [theorem: <reference|topology open set and
    interior>] that <math|U=U<rsup|\<circ\>>>. Let <math|x\<in\>U> and take
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>1>
    we have\ 

    <\equation*>
      <around*|\<\|\|\>|Id<rsub|U><around*|(|x+h|)>-Id<rsub|U><around*|(|x|)>-Id<rsub|X><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|x=h-x-h|\<\|\|\>><rsub|Y>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>
    </equation*>

    so that <math|D<rsub|x>Id<rsub|U>=Id<rsub|X>>. Hence\ 

    <\equation*>
      \<frak-D\><rsub|Id<rsub|U>>=U
    </equation*>

    and <math|\<forall\>x\<in\>U> we have
    <math|D<around*|(|Id<rsub|U>|)><around*|(|x|)>=D<rsub|x>Id<rsub|U>=Id<rsub|X>=C<rsub|Id<rsub|x>><around*|(|x|)>>
    which proves that\ 

    <\equation*>
      D<around*|(|Id<rsub|U>|)>=C<rsub|Id<rsub|X>>
    </equation*>
  </proof>

  <\example>
    <label|diff constant function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a normed space, <math|U> a open set in <math|X>, <math|y\<in\>Y>\ 

    <\equation*>
      C<rsub|y>:U\<rightarrow\>X<text| defined by >C<rsub|y><around*|(|x|)>=y
    </equation*>

    then

    <\equation*>
      \<frak-D\><rsub|C<rsub|y>>=U <text|in other words >Id<rsub|U><text| is
      Fréchet differentiable>
    </equation*>

    and for\ 

    <\equation*>
      D C<rsub|y>:\<frak-D\><rsub|Id<rsub|U>>\<rightarrow\>L<around*|(|X,Y|)><text|
      where >D<around*|(| C<rsub|y>|)><around*|(|x|)>=D<rsub|x>C<rsub|y>
    </equation*>

    we have\ 

    <\equation*>
      D C<rsub|y>=C<rsub|0>
    </equation*>
  </example>

  <\proof>
    Using [example: <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>]
    it follows that\ 

    <\equation*>
      C<rsub|0>\<in\>L<around*|(|X,Y|)>
    </equation*>

    As <math|U> is open we have by [theorem: <reference|topology open set and
    interior>] that <math|U=U<rsup|\<circ\>>>. Let <math|x\<in\>U> and take
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>1>
    we have\ 

    <\equation*>
      <around*|\<\|\|\>|C<rsub|y><around*|(|x+h|)>-C<rsub|y><around*|(|x|)>-C<rsub|0><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-y-0|\<\|\|\>><rsub|Y>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>
    </equation*>

    so that <math|D<rsub|x>C<rsub|y>=C<rsub|0>>. Hence\ 

    <\equation*>
      \<frak-D\><rsub|C<rsub|y>>=U
    </equation*>

    and <math|\<forall\>x\<in\>U> we have
    <math|D<around*|(|C<rsub|y>|)><around*|(|x|)>=D<rsub|x>C<rsub|y>=C<rsub|0>=C<rsub|C<rsub|0>><around*|(|x|)>>
    which proves that\ 

    <\equation*>
      D<around*|(|C<rsub|y>|)>=C<rsub|C<rsub|0>>
    </equation*>
  </proof>

  <\example>
    <label|diff linear mappings are differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|L\<in\>L<around*|(|X,Y|)>> then we have\ 

    <\equation*>
      \<frak-D\><rsub|L>=X <text|in other words >L<text| is Fréchet
      differentiable>
    </equation*>

    and for

    <\equation*>
      D L:X\<rightarrow\>X<text| defined by >D L<around*|(|x|)>=D<rsub|x>L
    </equation*>

    that\ 

    <\equation*>
      D L=C<rsub|L>
    </equation*>
  </example>

  <\proof>
    As <math|X> is open we have by [theorem: <reference|topology open set and
    interior>] that <math|X=X<rsup|\<circ\>>>. Let <math|x\<in\>X> and take
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\>X<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>1>
    we have\ 

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|x+h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>+L<around*|(|h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>
    </equation*>

    so that <math|D<rsub|x>L=C<rsub|0>>. Hence\ 

    <\equation*>
      \<frak-D\><rsub|C<rsub|y>>=X
    </equation*>

    and <math|\<forall\>x\<in\>X> we have <math|D
    L<around*|(|x|)>=D<rsub|x>L=L=C<rsub|L><around*|(|x|)>> which proves that\ 

    <\equation*>
      D L=C<rsub|L>
    </equation*>
  </proof>

  \;

  Although Fréchet differentiability and the differential is defined using
  norms, the definition is actually dependent on the topology generated by
  the norms. So if two norms generate the same topology Fréchet
  differentiability is independent of the choosen norm.

  <\theorem>
    <label|diff equivalent norms>Let <math|X,Y> be vector spaces over
    <math|\<bbb-K\>> with equivalent norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    on <math|X> and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> on <math|Y>,
    <math|A\<subseteq\>X>, <math|x\<in\>A<rsup|\<circ\>>> [using the topology
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>\<equallim\><rsub|<text|norms
    are equivalent >>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>>]
    and <math|f:A\<rightarrow\>X> a function then we have that if

    <\equation*>
      f<text| is Fréchet differentiable function at <math|x> with
      differential >D<rsub|x>f<text| at <math|x> using
      ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>
    </equation*>

    then\ 

    <\equation*>
      f<text| is Fréchet differentiable function at <math|x> with
      differential >D<rsub|x>f<text| at <math|x> using
      ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>
    </equation*>
  </theorem>

  <\proof>
    As the norms are equivalent we have by [theorem: <reference|normed norm
    equivalence condition>] there exists <math|\<alpha\><rsub|X>,\<alpha\><rsub|Y>,\<beta\><rsub|X>,\<beta\><rsub|Y>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>x\<in\>X> and <math|\<forall\>y\<in\>Y> we have

    <\equation*>
      \<alpha\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>><text|
      and >\<alpha\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>
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

  Differentiability of a function at a point is a local property it only
  depends on the function values for a arbitrary small open neighborhood of
  this point not on the domain of the function.

  <\theorem>
    <label|diff differentiability is a local property>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|B\<subseteq\>A>,
    <math|x\<in\>B<rsup|\<circ\>>> and <rigid|<math|f:A\<rightarrow\>Y>> is a
    function then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is Fréchet differentiable at
      >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<rsub|\|B><text|
      is Fréchet differentiable at >x>|<cell|>>>>
    </eqnarray*>

    Further if <math|f> or <math|f<rsub|\|B>> is Fréchet differentiable at
    <math|x> then <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      Then, as <math|f> is Fréchet differentiable at <math|x> with
      differential <math|D<rsub|x>f\<in\>L<around*|(|X,Y|)>>, there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>y\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      Let <math|h\<in\>B<rsub|x>\<Rightarrow\>x+h\<in\>B\<subseteq\>A\<Rightarrow\>h\<in\>B<rsub|x>>
      so if <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\>> we
      have\ 

      <\equation*>
        <around*|\<\|\|\>|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y><below|=|x,x+h\<in\>B><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      which proves that <math|f<rsub|\|B>> is Fréchet differentiable at
      <math|x> with <math|D<rsub|x>f<rsub|\|B>=D<rsub|x>f>.

      <item*|<math|\<Leftarrow\>>>As <math|x\<in\>B<rsup|\<circ\>>> there
      exist a <math|U> open such that <math|x\<in\>U\<subseteq\>B> hence
      there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>B\<subseteq\>A
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f<rsub|\|B>>
      is Fréchet differentiable at <math|x> with differential
      <math|D<rsub|x>f<rsub|\|B>> there exist a
      <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>B<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>-D<rsub|x>f<rsub|\|B>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>\<in\>\<bbb-R\><rsup|+>>
      then we have <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<leqslant\>\<delta\>> that\ 

      <\equation*>
        <around*|\<\|\|\>|<around*|(|x+h|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|1>\<Rightarrow\>x+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>B\<Rightarrow\>h\<in\>B<rsub|x>
      </equation*>

      so as also <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|2>>
      we have that\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<rsub|V><around*|(|x|)>|\<\|\|\>><rsub|Y><below|=|x,x+h\<in\>B><around*|\<\|\|\>|f<rsub|\|B><around*|(|x+h|)>-f<rsub|\|B><around*|(|x|)>=D<rsub|x>f<rsub|\|B>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      which proves that <math|f> is Fréchet differentiable at <math|x> with
      <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>.
    </description>
  </proof>

  Using the locally principle we have aother way to specify that a function
  is differentiable on a set.

  <\theorem>
    <label|diff differentiability on a set (2)>Let
    \ <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|U\<in\>\<cal-T\><rsub|X>>
    with <math|U\<subseteq\>A> and <math|<rigid|f:A\<rightarrow\>Y>> a
    function then we have the following equivalences

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is Fréchet differemtiable on
      >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>x\<in\>U<text|
      there exist a >V\<in\>\<cal-T\><rsub|X><text| with
      >x\<in\>V\<subseteq\>U<text| such that >f<rsub|\|V><text| is Fréchet
      differentiable at >x>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>U> then as <math|f> is
      Fréchet differentiable on <math|U> it follows that <math|f> is Fréchet
      differentiable at <math|x>. As <math|U> is open we have by [theorem:
      <reference|topology open set and interior>] that
      <math|U=U<rsup|\<circ\>>> so that <math|x\<in\>U<rsup|\<circ\>>\<subseteq\>A>.
      Hence using [theorem: <reference|diff differentiability is a local
      property>] it follows that <math|f<rsub|\|U>> is Fréchet differentiable
      at <math|x>. Taking <math|V=U> we have that
      <math|x\<in\>V\<subseteq\>U> such that <math|f<rsub|\|V>> is Fréchet
      differentiable at <math|x>.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>U> then by the hypothesis
      there exist a <math|V\<in\>\<cal-T\><rsub|X>> with
      <math|x\<in\>V\<subseteq\>U> such that <math|f<rsub|\|V>> is Fréchet
      differentiable at <math|x>. As <math|V> is open have by [theorem:
      <reference|topology open set and interior>] that
      <math|V=V<rsup|\<circ\>>> so that <math|x\<in\>V<rsup|\<circ\>>\<subseteq\>A>.
      Hence using [theorem: <reference|diff differentiability is a local
      property>] it follows that <math|f> is Fréchet differentiable at
      <math|x> which, as <math|x\<in\>U> has been chosen arbitrary, proves
      that\ 

      <\equation*>
        f<text| is Fréchet differentiable on >U
      </equation*>
    </description>
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
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A<rsup|\<circ\>>>
    \ and <math|f:A\<rightarrow\>Y> a function then the following are
    equivalent for <math|L\<in\>L<around*|(|X,Y|)>>

    <\enumerate>
      <item><math|L> is a Fréchet approximation of <math|f> at <math|x> [see
      definition: <reference|diff Frechet approximation>]

      <item>There exist a <math|\<varepsilon\>>-mapping
      <math|\<varepsilon\>:A<rsub|x>\<rightarrow\>Y> such that
      <math|\<forall\>h\<in\>A<rsub|x>> we have\ 

      <\equation*>
        f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      <item><math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      <item><math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>\<in\>\<bbb-R\><rsup|+>>
      <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>y\<in\>A\\<around*|{|x|}>> with
      <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      <item><math|\<forall\><around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>A<rsub|x>>
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
      D<rsub|x>f=L
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Define\ 

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
      Let <math|\<zeta\>\<in\>\<bbb-R\><rsup|+>>. As <math|L> is a Fréchet
      differentiable approximation of <math|f> at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<zeta\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
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

      <item*|<math|2\<Rightarrow\>3>>Let <math|\<varepsilon\>:A<rsub|x>\<rightarrow\>Y>
      be a <math|\<varepsilon\>>-mapping such that
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

      <item*|<math|3\<Rightarrow\>1>>Assume that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> so that
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
          <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>
        </equation*>
      </description>

      so that in all cases we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      Hence <math|L> is a Fréchet approximation of <math|f> at <math|x>.

      <item*|<math|3\<Rightarrow\>4>>Assume that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> so that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation>
        <label|eq 16.1.177><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation>

      Let <math|y\<in\>A\\<around*|{|x|}>\<Rightarrow\>y-x\<in\>A<rsub|x>>
      [as <math|<around*|(|y-x|)>+x=y\<in\>A>] such that
      \ <math|0\<less\><around*|\<\|\|\>|y-x|\<\|\|\>>\<less\>\<delta\><rsub|>>
      then we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>=<frac|<around*|\<\|\|\>|f<around*|(|x+<around*|(|y-x|)>|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|<around*|(|y-x|)>|\<\|\|\>><rsub|X>><below|\<less\>|<text|[eq
        <reference|eq 16.1.177>]>><rsub|>\<varepsilon\>
      </equation*>

      <item*|<math|4\<Rightarrow\>3>>Assume that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
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
      false. Then there exist a <math|\<varepsilon\><rsub|0>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+>> there exist
      a <math|h\<in\>A<rsub|x>> with <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
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

      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>>, a
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
    <space|1em>

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As <math|x\<in\>U> and <math|U> is open
      we have that there exists a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that

      <\equation*>
        x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U
      </equation*>

      As <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
      is open it follows from [theorem: <reference|topology open set and
      interior>] that\ 

      <\equation*>
        x\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsup|\<circ\>>\<subseteq\>U
      </equation*>

      so that by [theorem: <reference|diff differentiability is a local
      property>] and the fact that <math|f> is Fréchet differentiability at
      <math|x> we have

      <\equation*>
        f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><text|
        is Fréchet differentiable at >x<text| with
        >D<rsub|x>f<rsub|<mid|\|>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>=D<rsub|x>f
      </equation*>

      Using the previous theorem [theorem: <reference|diff differentiability
      alternative definitions>(2)] there exist a
      <math|\<varepsilon\>>-mapping\ 

      <\equation*>
        \<varepsilon\>:<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<equallim\><rsub|<text|[theorem:
        <reference|diff Bx(x,d)>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<rightarrow\>Y
      </equation*>

      \ such that <math|\<forall\>h\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<equallim\><rsub|<text|[theorem:
      <reference|diff Bx(x,d)>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>>
      we have

      <\equation*>
        f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x+h|)>-f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x|)>-D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      As <math|x,x+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
      and <math|D<rsub|x>f<rsub|<mid|\|>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>=D<rsub|x>f>
      we have\ 

      <\equation*>
        f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      Hence <math|L=D<rsub|x>f> is the required
      <math|L\<in\>L<around*|(|X,Y|)>>.

      <item*|<math|2\<Rightarrow\>1>>By (2) there exist a
      <math|L\<in\>L<around*|(|X,Y|)>> and a <math|\<varepsilon\>>-mapping\ 

      <\equation*>
        \<varepsilon\>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<equallim\><rsub|<text|[theorem:
        <reference|diff Bx(x,d)>]>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>\<rightarrow\>Y
      </equation*>

      such that\ 

      <\equation*>
        \<forall\>h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<equallim\><rsub|<text|[theorem:
        <reference|diff Bx(x,d)>]>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsub|x>
      </equation*>

      we have\ 

      <\equation*>
        f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>><around*|(|x+h|)>-f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x.\<delta\>|)>><around*|(|x|)>-L<around*|(|h|)>=f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      so that by [theorem: <reference|diff differentiability alternative
      definitions>(2)] <math|><math|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>>
      is Fréchet differentiable with\ 

      <\equation*>
        L=D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
      </equation*>

      As <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
      is open it follows from [theorem: <reference|topology open set and
      interior>] that\ 

      <\equation*>
        x\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)><rsup|\<circ\>>\<subseteq\>U
      </equation*>

      Using then \ [theorem: <reference|diff differentiability is a local
      property>] it follows that <math|f> is differentiable at <math|x> with

      <\equation*>
        L=D<rsub|x>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>=D<rsub|x>f
      </equation*>
    </description>
  </proof>

  Differentiability implies continuity as the following theorem proves.

  <\theorem>
    <label|diff differentiable function is continuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A<rsup|\<circ\>>>
    and <math|f:A\<rightarrow\>Y> a function that is Fréchet differentiable
    at <math|x> then <math|f> is continuous at <math|x>.\ 
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is Fréchet
    differentiable at <math|x> there exist a <math|L\<in\>L<around*|(|X,Y|)>>
    and a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>A<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

    <\equation>
      <label|eq 16.3.177><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
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
  function and the derivative of a function.

  <\theorem>
    <label|diff derivate and frechet differential>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real [or complex ] numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\>>,
    <math|x\<in\>A<rsup|\<circ\>>> and <math|f:A\<rightarrow\>X> a function
    then we have\ 

    <\equation*>
      <text|>f<text| has a derivative >f<rprime|'><rsub|x><text| at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<text| is Fréchet differentiable at >x<text| with Fréchet differential
      >D<rsub|x>f\ 
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
      As <math|x\<in\>A<rsup|\<circ\>>> it follows from [theorem:
      <reference|topology interior point is a limit point in a normed space>]
      it follows that <math|x\<in\>A<rprime|'>> so that the derivative and
      differential are well defined.
    </note>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Define\ 

      <\equation*>
        L:\<bbb-K\>\<rightarrow\>X<text| by
        >L<around*|(|h|)>=h\<cdot\>f<rprime|'><rsub|x>
      </equation*>

      then we have by [example: <reference|continuity norm L(x)=a.x>] that\ 

      <\equation*>
        L\<in\>L<around*|(|\<bbb-K\>,X|)>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> has a
      derivative <math|f<rprime|'><rsub|x>> at <math|x> it follows from
      [theorem: <reference|diff calculus derivate (2)>] that there exists a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\||h|\|>\<less\>\<delta\>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|z>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      Hence\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>>=<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\>h
      </equation*>

      which proves that <math|f> is Fréchet differentiable at <math|x> with
      <math|D<rsub|x>f=L>. Hence\ 

      <\equation*>
        \<forall\>h\<in\>\<bbb-K\><text| we have
        >D<rsub|x>f=h\<cdot\>f<rprime|'><rsub|x><text| and
        >D<rsub|x>f<around*|(|1|)>=f<rprime|'><rsub|x>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f> is Fréchet differentiable at <math|x> with differential
      there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>\<delta\>\<in\>A<rsub|x>> with
      <math|<around*|\||h|\|>\<less\>\<delta\>> we have that\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      Hence we have that\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>D<rsub|x>f<around*|(|1|)>|\<\|\|\>>=<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|z|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      which proves by [theorem: <reference|diff calculus derivate (2)>] that
      <math|f> has a derivative <math|f<rprime|'><rsub|x>> at <math|x> with
      <math|f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>>.
    </description>
  </proof>

  <subsection|Properties of the Fréchet differential.>

  <\theorem>
    <label|diff derivate operator is linear>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A<rsup|0>> then we
    have:

    <\enumerate>
      <item>If <math|f:A\<rightarrow\>Y> is Fréchet differentiable at
      <math|x> and <math|g:A\<rightarrow\>Y> is Fréchet differentiable at
      <math|x> then\ 

      <\equation*>
        f+g:A\<rightarrow\>Y<text| is Fréchet differentiable with
        >D<rsub|x><around*|(|f+g|)>=D<rsub|x>f+D<rsub|x>g
      </equation*>

      <item>If <math|n\<in\>\<bbb-N\>>, <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}>>
      be a family that are Fréchet differentiable at <math|x> then
      <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> is Fréchet differentiable
      at <math|x> with\ 

      <\equation*>
        D<rsub|x><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|x>f<rsub|i>
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
      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f,g>
      are Fréchet differentiable at <math|x> there exist
      <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such
      that\ 

      <\equation*>
        \<forall\>h\<in\>U<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|1><text|
        we have ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      <\equation*>
        \<forall\>h\<in\>U<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|2><text|
        we have ><around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-D<rsub|x>g<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      As <math|D<rsub|x>f>, <math|D<rsub|x>g\<in\>L<around*|(|X,Y|)>> we have
      by [theorem: <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>]
      that <math|D<rsub|x>f+D<rsub|x>g\<in\>L<around*|(|X,Y|)>>. Further if
      <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f+g|)><around*|(|x+h|)>-<around*|(|f+g|)><around*|(|x|)>-<around*|(|D<rsub|x>f+D<rsub|X>g|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>+g<around*|(|x+h|)>-f<around*|(|x|)>-g<around*|(|x|)>-<around*|(|D<rsub|x>f<around*|(|h|)>+D<rsub|x>g<around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>
        f<around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-D<rsub|x>g<around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|f+g> is Fréchet differentiable at <math|x> with
      Fréchet differential

      <\equation*>
        D<rsub|x><around*|(|f+g|)>=D<rsub|x>f+D<rsub|x>g
      </equation*>

      <item>This is easely proved by induction, let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        ><around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        is a family of functions that are Fréchet differentiable at >x<text|
        then ><big|sum><rsub|i=1><rsup|n>f<rsub|i><text| is Fréchet
        differentiable at >x<text| with >D<rsub|x><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|x>f<rsub|i>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1|}>>>
        is a family of Fréchet differentiable at <math|x> then we have that
        <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>=f<rsub|1>> is Fréchet
        differentiable at <math|x> with <math|D<rsub|x><around*|(|<big|sum><rsub|i=1><rsup|1>f<rsub|i>|)>=D<rsub|x>f<rsub|1>=<big|sum><rsub|i=1><rsup|1>D<rsub|x>f<rsub|i>>.
        Hence <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
        <math|<around*|{|f<rsub|i>:A\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
        is a family of Fréchet differentiable at <math|x> then, as
        <math|n\<in\>S>, <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> is
        Fréchet differentiable at <math|x> with
        <math|D<rsub|x><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|x>f<rsub|i>>.
        As also <math|f<rsub|n+1>> is Fréchet differentiable at <math|x> we
        have by (1) that

        <\equation*>
          <big|sum><rsub|i=1><rsup|n+1>f<rsub|i>=f<rsub|n+1>+<big|sum><rsub|i=1><rsup|n>f<rsub|i><rsub|>
        </equation*>

        that\ 

        <\equation*>
          D<rsub|x><around*|(|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i>|)>=D<rsub|x>f<rsub|n+1>+D<rsub|x><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i><rsub|>|)>=D<rsub|x>f<rsub|n+1>+<big|sum><rsub|i=1><rsup|n>D<rsub|x>f<rsub|i>=<big|sum><rsub|i=1><rsup|n+1>D<rsub|x>f<rsub|i>
        </equation*>

        which proves that

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is
      Fréchet differentiable at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        \<forall\>h\<in\>U<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|1><text|
        we have ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      As <math|D<rsub|x>f\<in\>L<around*|(|X,Y|)>> it follows from [theorem:
      <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>] that
      <math|\<alpha\>\<cdot\>D<rsub|x>f\<in\>L<around*|(|X,Y|)>>. Further if
      <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x+h|)>-<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>-<around*|(|\<alpha\>\<cdot\>D<rsub|x>f|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>f<around*|(|x+h|)>-\<alpha\>\<cdot\>f<around*|(|x|)>-\<alpha\>\<cdot\>D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|\<alpha\>\<cdot\>f> is Fréchet differentiable at
      <math|x> with Fréchet differential <math|\<alpha\>\<cdot\>D<rsub|x>f>.
    </enumerate>
  </proof>

  We introduce now the most import rule for Fréchet differentiable the Chain
  Rule.

  <\theorem>
    <label|diff chain rule><index|Chain rule><dueto|Chain Rule>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A<rsub|0>>,
    <math|B\<subseteq\>Y>, <math|f:A\<rightarrow\>Y>,
    <math|g:B\<rightarrow\>Z> functions such that
    <math|f<around*|(|A|)>\<subseteq\>B> and
    <math|f<around*|(|x|)>\<in\>B<rsup|\<circ\>>>, <math|f> is Fréchet
    differentiable at <math|x> and <math|g> is Fréchet differentiable at
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
    As <math|f> is Fréchet differentiable at <math|x> we have by [theorem:
    <reference|diff differentiability alternative definitions>] that there
    exist a <math|\<varepsilon\>>-mapping
    <math|\<varepsilon\><rsub|f>:A<rsub|x>\<rightarrow\>Y> such that\ 

    <\equation>
      <label|eq 16.7.178>\<forall\>h\<in\>A<rsub|x><text| we have
      >f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>
    </equation>

    Further as <math|g> is Fréchet differentiable at <math|f<around*|(|x|)>>
    we can use [theorem: <reference|diff differentiability alternative
    definitions>] again, giving a <math|\<varepsilon\>>-mapping
    <math|\<varepsilon\><rsub|g>:B<rsub|f<around*|(|x|)>>\<rightarrow\>Z>
    satisfying

    <\equation>
      <label|eq 16.8.178>\<forall\>k\<in\>B<rsub|f<around*|(|x|)>><text| we
      have >g<around*|(|f<around*|(|x|)>+k|)>-g<around*|(|f<around*|(|x|)>|)>-D
      <rsub|f<around*|(|x|)>>g<around*|(|k|)>=<around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|k|)>
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
      <label|eq 16.11.178><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>-0|\<\|\|\>><rsub|Y>\<less\>1
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
    which by [eq: <reference|eq 16.13.178>] results in
    <math|><math|<around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D<rsub|x>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>>.
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
    have <math|<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>
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
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>>|<cell|=>|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|><rsub|X>>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|<below|\<less\>|<text|[eq:
        <reference|eq 16.14.178>]>><rsub|<text|>>>|<cell|<frac|\<varepsilon\>|2>+<around*|\<\|\|\>|D<rsub|f<around*|(|x|)>>g<around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|<below|\<less\>|<text|[eq:
        <reference|eq 16.15.178>]>><rsub|>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
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
    definitions>] that\ 

    <\equation*>
      g\<circ\>f<text| is Fréchet differentiable with differential
      >D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
    </equation*>
  </proof>

  <\corollary>
    <label|diff chain rule calculus>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    the normed space of real [or complex] numbers,
    <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A<rsup|\<circ\>>>,
    <math|B\<subseteq\>\<bbb-K\>> and <math|f:A\<rightarrow\>\<bbb-K\>>,
    <math|g:B\<rightarrow\>X> functions such that
    <math|f<around*|(|A|)>\<subseteq\>B> and
    <math|f<around*|(|x|)>\<in\>B<rsup|\<circ\>>>, <math|f> has a derivative
    <math|f<rprime|'><rsub|x>> at <math|x> and <math|g> has a derivative
    <math|g<rprime|'><rsub|f<around*|(|x|)>>> at <math|f<around*|(|x|)>>.
    Then <math|g\<circ\>f:A\<rightarrow\>Y> has a derivative at <math|x> and

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
    [theorem: <reference|diff derivate and frechet differential>], we have
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
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A<rsup|\<circ\>>>,
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
    As <math|X> is open <math|f<around*|(|x|)>\<in\>X<below|=|<text|[theorem:
    <reference|topology open set and interior>]>>X<rsup|\<circ\>>>. Using
    [example: <reference|diff linear mappings are differentiable>] <math|L>
    is Fréchet differentiable at <math|f<around*|(|x|)>> and
    <math|D<rsub|f<around*|(|x|)>>L=L>. Hence using the chain rule [see
    theorem: <reference|diff chain rule>] <math|L\<circ\>f> is Fréchet
    differentiable at <math|x> and

    <\equation*>
      D<rsub|x><around*|(|L\<circ\>f|)>=D<rsub|f<around*|(|x|)>>L\<circ\>D<rsub|x>f=L\<circ\>D<rsub|x>f
    </equation*>
  </proof>

  <subsection|Partial differentials>

  The partial differential of a function of several variable is the
  differential with respect to one of these variables while keeping the other
  variables constant. In essence given a function
  <math|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> we create a new
  function defined by <math|t\<rightarrow\>f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>
  and calculate the differential of this new function at <math|x<rsub|i>>. To
  do this we write this new function as the composition of <math|f> and a
  differentiable function an apply the chain rule.

  <\definition>
    <label|diff unprojection><index|<math|I<rsup|<around*|[|i,x|]>>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of sets, <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, <math|t\<in\>X<rsub|i>> then
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

  The following lemma show now the important properties of this function.

  <\lemma>
    <label|lemma 16.24.178>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>] then we have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that:

    <\enumerate>
      <item><math|I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>
      and <math|\<forall\>t\<in\>X<rsub|i>> we have
      <math|<around*|\<\|\|\>|t|\<\|\|\>><rsub|i>=<around*|\<\|\|\>|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|\<\|\|\>><rsub|max>>.

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>=x>.

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|x=<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>>.

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|\<forall\>t\<in\>X<rsub|i>> <math|I<rsup|<around*|[|i,x|]>>>
      is Fréchet differentiable at <math|x> with
      <math|D<rsub|t>I<rsup|<around*|[|i,x|]>>=I<rsup|<around*|[|i,0|]>>>

      <\note>
        As <math|X<rsub|j>> is open we have by [theorem: <reference|topology
        open set and interior>] that <math|t\<in\><around*|(|X<rsub|j>|)><rsup|\<circ\>>>
        which is required for the differentiability.
      </note>

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|I<rsup|<around*|[|i,x|]>>> is continuous.

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
      <math|A\<subseteq\>X<rsub|i>> and <math|t\<in\>A<rsup|\<circ\>>> then
      <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|A>> is Fréchet
      differentiable at <math|t> with <math|D<rsub|t><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|A>=I<rsup|<around*|[|i,0|]>>>.

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
      <math|A\<subseteq\>X<rsub|j>> then then
      <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|A>> is continuous.

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

      <\equation*>
        <around*|\<\|\|\>|\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>|\<\|\|\>><rsub|j>=<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|t|\<\|\|\>><rsub|i><text|
        if >j=i>>|<row|<cell|0<text| if >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>
      </equation*>

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

      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then we have
      <math|\<forall\>h\<in\>A<rsub|t>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t+h|)>-I<rsup|<around*|[|i,x|]>><around*|(|t|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\><wide*|<rsub|t+h>|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\><wide*|h|\<wide-underbrace\>><rsub|i>\<ldots\>,0<rsub|n>|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\><wide*|h|\<wide-underbrace\>><rsub|i>\<ldots\>,0<rsub|n>|)>-<around*|(|0<rsub|1>,\<ldots\><rsub|<wide*|h|\<wide-underbrace\>><rsub|i>>\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|i>>|<cell|<below|=|<around*|(|1|)>>>|<cell|>>>>
      </eqnarray*>

      which, as by (1) <math|I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|j>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>|)>>
      proves that\ 

      <\equation*>
        I<rsup|<around*|[|i,k|]>><text| is Fréchet differentiable at >t<text|
        with >D<rsub|t>I<rsup|<around*|[|i,x|]>>=I<rsup|<around*|[|i,0|]>>
      </equation*>

      <item>Let <math|t\<in\>X<rsub|i>> then by (4)
      <math|I<rsup|<around*|[|i,k|]>>> is Fréchet differentiable at <math|t>
      which by [theorem: <reference|diff differentiable function is
      continuous>] proves that <math|I<rsup|<around*|[|i,x|]>>> is continuous
      at <math|t>. As <math|t> has been chosen arbitrary it follows that
      <math|I<rsup|<around*|[|i,x|]>>> is a continous function.

      <item>This follows from [theorem: <reference|diff differentiability is
      a local property>] and (4).

      <item>This follows from [theorem: <reference|continuity and subspace
      topology (1)>].

      <item>Let <math|U> be a open set in
      <math|><math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      and by (5) <rigid|<math|I<rsup|<around*|[|i,x|]>>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>>
      is continuous it follows that <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>
      is open.

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|t\<in\>X<rsub|i>> then we have for
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>>\ 

      <\equation*>
        <around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)><rsub|k>=<around*|(|0,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>0|)><rsub|k>=\<delta\><rsub|i,k>\<cdot\>t
      </equation*>
    </enumerate>
  </proof>

  <\lemma>
    <label|lemma 16.69.4>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>] and <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    and <math|x\<in\>A<rsup|\<circ\>>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>>.
  </lemma>

  <\proof>
    Let As <math|x\<in\>A<rsup|\<circ\>>> there exist a open set
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>> with
    <math|x\<in\>U\<subseteq\>A>. As by [lemma: <reference|lemma 16.24.178>]
    <math|I<rsup|<around*|[|i,x|]>>> is continuous it follows that
    <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<in\>\<cal-T\><rsub|i>>.
    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as
    <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)><below|=|<text|[lemma:
    <reference|lemma 16.24.178>]>>x\<in\>U\<subseteq\>A> hence

    <\equation*>
      x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)><text|
      where ><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<in\>\<cal-T\><rsub|i>
    </equation*>

    which proves that\ 

    <\equation*>
      x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>
    </equation*>
  </proof>

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

    if the function

    <\equation*>
      f\<circ\>I<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|x<rsub|i>> and <math|D<rsub|x,i>f> is
    then defined to be\ 

    <\equation*>
      D<rsub|x,i>f=D<rsub|x><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>
    </equation*>

    <\note>
      The previous lemma [see lemma: <reference|lemma 16.69.4>] ensures
      <math|x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>>
      so this definition makes sense.\ 
    </note>
  </definition>

  Just as we have introduced the derivative of a function and the
  differential of a function we can define the partial differential of a
  function.

  <\definition>
    <label|diff partial differential>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|x\<in\>A<rsup|\<circ\>>>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|f:A\<rightarrow\>Y> a function. Then we define

    <\equation*>
      \<frak-D\><rsub|i,f>=<around*|{|x\<in\>A<rsup|\<circ\>>\|f<text| is
      >i<text|-partial differentiable at >x|}>\<subseteq\>A<rsup|\<circ\>>
    </equation*>

    and\ 

    <\equation*>
      D<rsub|i>f:\<frak-D\><rsub|i,f>\<rightarrow\>L<around*|(|X,Y|)><text|
      where >D<rsub|i>f<around*|(|x|)>=D<rsub|x,i>f
    </equation*>

    <math|D<rsub|i>f> is called the <math|i>-partial differential of
    <math|f>.

    <\note>
      If <math|\<frak-D\><rsub|i,f>=\<varnothing\>> then <math|D<rsub|i>f> is
      the empty function [see example: <reference|function empty function>].
    </note>
  </definition>

  <\definition>
    <label|diff partial differential on a set>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>> with
    <math|U\<subseteq\>A>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|f:A\<rightarrow\>Y> a function. Then we say that
    <with|font-series|bold|<math|f> is <math|i>-partial differentiable on
    <math|U>> iff\ 

    <\equation*>
      \<forall\>x\<in\>U f<text| is >i<text|-partial differentiable at >x
    </equation*>
  </definition>

  <\theorem>
    <label|diff partial differentiability on a set>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>> with
    <math|U\<subseteq\>A>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|f:A\<rightarrow\>Y> a function we have the following equivalences.

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is Fréchet differentiable on
      >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|U\<subseteq\>\<frak-D\><rsub|i,f>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>U> then as <math|f> is
      <math|i>-partial differentiable on <math|U> <math|f> is
      <math|i>-partial differentiable at <math|x>, further
      <math|x\<in\>U\<subseteq\>A> implies <math|x\<in\>A<rsup|\<circ\>>>.
      Hence it follows that <math|x\<in\>\<frak-D\><rsub|i,f>> which proves
      that\ 

      <\equation*>
        U\<subseteq\>\<frak-D\><rsub|i,f>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>U> then as
      <math|U\<subseteq\>\<frak-D\><rsub|i,f>> it follows that
      <math|x\<in\>\<frak-D\><rsub|i,f>> so that <math|f> is <math|i>-partial
      differentiable at <math|x> which proves that\ 

      <\equation*>
        f<text| is >i<text|-partial differentiable on >U
      </equation*>
    </description>
  </proof>

  Just as differentiability is a local property [see theorem: <reference|diff
  differentiability is a local property>] is a local property.

  <\theorem>
    <label|diff partial differentiation is local>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|B\<subseteq\>A>, <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>B<rsup|\<circ\>>>,
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
      f<rsub|\|B><text| is >i<text|-partial differentiable at >x
    </equation*>

    Further if <math|f> or <math|f<rsub|\|B>> is <math|i>-partial
    differentiable at <math|x> then <math|D<rsub|x,i>f=D<rsub|x,i>f<rsub|\|B>>.
  </theorem>

  <\proof>
    As <math|x\<in\>B<rsup|\<circ\>>> it follows from \ [lemma:
    <reference|lemma 16.69.4>] that

    <\equation>
      <label|eq 16.24.4>x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>|)><rsup|\<circ\>>
    </equation>

    Let <math|t\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>\<Rightarrow\>I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B>
    it follows that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|f<rsub|\|B>\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|t|)>>|<cell|=>|<cell|f<rsub|\|B><around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>>>|<row|<cell|>|<cell|<below|=|I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B>>|<cell|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|t|)>>>|<row|<cell|>|<cell|<below|=|t\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>>|<cell|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation>
      <label|eq 16.25.4>f<rsub|\|B>\<circ\>I<rsup|<around*|[|i,x|]>>=<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>
    </equation>

    Hence we have\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f> is <math|i>-partial
      differentiable at <math|x> with <math|i>-partial differential
      <math|D<rsub|x,i>f> then by [definition: <reference|diff partial
      differential definition>] <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is
      Fréchet differentiable at <math|x<rsub|i>> with\ 

      <\equation>
        <label|eq 16.26.4>D<rsub|x,i>f=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>
      </equation>

      As by [eq: <reference|eq 16.24.4>] <math|x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>|)><rsup|\<circ\>>>
      it follows from [theorem: <reference|diff differentiability is a local
      property>] that <rigid|<math|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>>>
      is Fréchet differentiable at <math|x<rsub|i>> with\ 

      <\equation*>
        D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>
      </equation*>

      Using [eq: <reference|eq 16.25.4>] on the above we have that
      <math|f<rsub|\|B>\<circ\>I<rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> and\ 

      <\equation*>
        D<rsub|x<rsub|i>><around*|(|f<rsub|\|B>\<circ\>I<rsup|<around*|[|i,x|]>>|)>=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><below|=|<text|[eq:
        <reference|eq 16.26.4>]>>D<rsub|x,i>f
      </equation*>

      so that by applying [definition: <reference|diff partial differential
      definition>] we have

      <\equation*>
        f<rsub|\|B><text| is >i<text|-partial differentiable at >x<text| with
        >D<rsub|x.i>f<rsub|\|B>=D<rsub|x,i>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>If <math|f<rsub|\|B>> is <math|i>-partial
      differentiable at <math|x> with <math|i>-partial differential
      <math|D<rsub|x,i>f<rsub|\|B>> then by [definition: <reference|diff
      partial differential definition>] <math|f<rsub|\|B>\<circ\>I<rsup|<around*|[|i,x|]>>>
      is Fréchet differentiable at <math|x<rsub|i>> with\ 

      <\equation>
        <label|eq 16.27.4>D<rsub|x,i>f<rsub|\|B>=D<rsub|x<rsub|i>><around*|(|f<rsub|\|B>\<circ\>I<rsup|<around*|[|i,x|]>>|)>
      </equation>

      By [eq: <reference|eq 16.25.4>] it follows that
      <math|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>>
      is Fréchet differentiable at <math|x<rsub|i>> with\ 

      <\equation>
        <label|eq 16.28.4>D<rsub|x<rsub|i>><around*|(|f<rsub|\|B>\<circ\>I<rsup|<around*|[|i,x|]>>|)>=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>>
      </equation>

      As by [eq: <reference|eq 16.24.4>] <math|x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>|)><rsup|\<circ\>>>
      it follows from [theorem: <reference|diff differentiability is a local
      property>] that <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is Fréchet
      differentiable at <math|x<rsub|i>> with\ 

      <\equation*>
        D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B|)>><below|=|<text|[eqs:
        <reference|eq 16.27.4>, <reference|eq
        16.28.4>]>>D<rsub|x,i>f<rsub|\|B>
      </equation*>

      Hence using [definition: <reference|diff partial differential
      definition>] we have that\ 

      <\equation*>
        f<text| is >i<text|-partial differentiable at >x<text| with
        >D<rsub|x,i>f=D<rsub|x,i>f<rsub|\|B>
      </equation*>
    </description>
  </proof>

  We show now that Fréchet differentiability of a function with many
  variables ensures that all the partial derivatives exist.

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

    <\note>
      If <math|A> is open then by [theorem: <reference|topology open set and
      interior>] <math|A=A<rsup|\<circ\>>> so that <math|x\<in\>A> so the
      condition <math|x\<in\>A<rsup|\<circ\>>> can be replaced by
      <math|x\<in\>A>.
    </note>
  </theorem>

  <\proof>
    As <math|x\<in\>A<rsup|0>> we have by [lemma: <reference|lemma 16.69.4>]
    that\ 

    <\equation*>
      x\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>
    </equation*>

    Using [lemma: <reference|lemma 16.24.178>(4)] it follows that\ 

    <\equation*>
      I<rsup|<around*|[|i,x|]>>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j><text|
      is Fréchet differentiable at >x<rsub|i>
    </equation*>

    As <math|f:A\<rightarrow\>Y> is Fréchet differentiable at
    <math|x=I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>> and
    \ <math|I<rsup|<around*|[|i,x|]>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><below|\<subseteq\>|<text|[theorem:
    <reference|function preimage of image (1)>]>><rsub|<text|>>A> it follows
    from the Chain Rule [theorem: <reference|diff chain rule>] that\ 

    <\equation*>
      f\<circ\>I<rsup|<around*|[|i,x|]>><text| is Fréchet differentiable at
      >x<rsub|i>
    </equation*>

    with\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>>|<cell|=>|<cell|D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>>f\<circ\>D<rsub|x<rsub|i>>I<rsup|<around*|[|i,x|]>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>(2)]>>>|<cell|D<rsub|x>f\<circ\>D<rsub|x<rsub|i>>I<rsup|<around*|[|i,x|]>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>(4)]>>>|<cell|D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>>>>>
    </eqnarray*>

    Using then [definition: <reference|diff partial differential definition>]
    we have that\ 

    <\equation>
      <label|eq 16.29.4>f<text| is Fréchet differentiable at >x<text| with
      >D<rsub|x,i>f=D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation>

    Further if <math|h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x>f<around*|(|h|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>(3)]>>>|<cell|D<rsub|x>f<around*|(|<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|x>f<around*|(|I<rsup|<around*|[|i,0|]>><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.29.4>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|x,i><rsup|>f<around*|(|h<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|x,i>f<around*|(|\<pi\><rsub|i><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x,i>f\<circ\>\<pi\><rsub|i>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x,i>f\<circ\>\<pi\><rsub|i>|)>|)><around*|(|h|)>>>>>
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
    <reference|normed maximum norm>], <math|A\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|x\<in\>A<rsup|0>> and <math|y\<in\>Y> then
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
    that <math|C<rsub|y>> has a <math|i>-partial differential with

    <\equation*>
      D<rsub|x,i>C<rsub|y>=C<rsub|0>\<circ\>I<rsup|<around*|[|i,0|]>>=C<rsub|0>
    </equation*>

    [because <math|\<forall\>h\<in\>X<rsub|i>>
    <math|<around*|(|C<rsub|0>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h|)>=C<rsub|0><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|h|)>|)>=0>].
  </proof>

  Although Fréchet differentiability of a multi parameter function implies
  that all the partial differentials exist the opposite is not true as the
  following example proves.

  <\example>
    <label|diff partial differentiability does not mean
    differentiaility>Define the function

    <\equation*>
      f:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><text| by
      >f<around*|(|x,y|)>=<choice|<tformat|<table|<row|<cell|<frac|x\<cdot\>y|x<rsup|2>+y<rsup|2>><text|
      if ><around*|(|x,y|)>\<in\>\<bbb-R\><rsup|2>\\<around*|{|<around*|(|0,0|)>|}>>>|<row|<cell|0<text|
      if ><around*|(|x,y|)>=<around*|(|0,0|)>>>>>>
    </equation*>

    <\equation*>
      \;
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
      <around*|(|f\<circ\>I<rsup|<around*|[|1,0|]>>|)><around*|(|t|)>=f<around*|(|t,0|)>=<choice|<tformat|<table|<row|<cell|<frac|t\<cdot\>0|t<rsup|2>+0<rsup|2>><text|
      if ><around*|(|t,0|)>\<neq\><around*|(|0,0|)>>>|<row|<cell|0<text| if
      ><around*|(|t,0|)>=0>>>>>=0=C<rsub|0><around*|(|t|)>
    </equation*>

    <\equation*>
      <around*|(|f\<circ\>I<rsup|<around*|[|2,0|]>>|)><around*|(|t|)>=f<around*|(|0,t|)>=<choice|<tformat|<table|<row|<cell|<frac|0\<cdot\>t|0<rsup|2>+t<rsup|2>><text|
      if ><around*|(|t,0|)>\<neq\><around*|(|0,0|)>>>|<row|<cell|0<text| if
      ><around*|(|t,0|)>=0>>>>>=0=C<rsub|0><around*|(|t|)>
    </equation*>

    proving that\ 

    <\equation*>
      f<rsup|<around*|[|1,<around*|[|<around*|(|0,0|)>|]>|]>>=C<rsub|0>=f<rsup|<around*|[|2,<around*|[|<around*|(|0,0|)>|]>|]>>
    </equation*>

    By [example: <reference|diff constant function is differentiable>]
    <math|><math|f\<circ\>I<rsup|<around*|[|1,0|]>>>,
    <math|f\<circ\>I<rsup|<around*|[|2,0|]>>> are Fréchet differentiable at
    <math|0> with

    <\equation*>
      D<rsub|0><around*|(|f\<circ\>I<rsup|<around*|[|1,0|]>>|)>=C<rsub|0>=D<rsub|0>f\<circ\>I<rsup|<around*|[|2,0|]>>
    </equation*>

    Hence <math|f> is is <math|1>-partial and <math|2>-partial differentiable
    at <math|<around*|(|0,0|)>> with\ 

    <\equation*>
      D<rsub|<around*|(|0,0|)>,1>f=C<rsub|0>=D<rsub|<around*|(|0,0|)>,2>f
    </equation*>
  </proof>

  As the partial differential is based on the Fréchet differential of
  <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> many properties of the Fréchet
  differential also applies for the partial differential.

  <\theorem>
    <label|diff partial differential properties>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|><math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|x\<in\>A<rsup|\<circ\>>> and <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    then we have:

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

  We have a special version of the Chain rule for partial differentiation.

  <\theorem>
    <label|diff chain rule and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|><math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|B\<subseteq\>Y>, <math|x\<in\>A<rsup|\<circ\>>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,

    <\equation*>
      f:A\<rightarrow\>Y<text| a function that is \ >i<text|-partial
      differentiable at >x<text| such that
      >f<around*|(|A|)>\<subseteq\>B<text| and
      >f<around*|(|x|)>\<in\>B<rsup|\<circ\>>
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

  <subsection|Partial Derivates>

  If we want to define partial derivatives of <math|f:A\<rightarrow\>X> in a
  similar fashion as partial differentials [see definition: <reference|diff
  partial differential definition>] we would define the partial derivative at
  <math|x> as the derivative of <rigid|<math|f\<circ\>I<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1>\<rightarrow\>X>>
  at <math|x<rsub|i>>. There is however a problem, <math|x<rsub|i>> has then
  to be a limit point of <math|I<rsup|<around*|[|i,x|]>-1>> for the
  derivative to be well defined and it is not true in general that if
  <math|x\<in\>A> is a limit point of <math|A> that then <math|x<rsub|i>> is
  a limit point of <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>>
  as the following example shows.

  <\example>
    Consider the normed space <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>
    <math|A=<around*|{|<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>\<bbb-R\><rsup|2>\|x<rsub|1>=0|}>>
    then <math|<around*|(|0,0|)>\<in\>A> is a limit point of <math|A> but
    <math|0> is not a limit point of <math|<around*|(|I<rsup|<around*|[|1,<around*|(|0,0|)>|]>>|)><rsup|-1><around*|(|A|)>>
  </example>

  <\proof>
    Let <math|U> be a open set in <math|\<bbb-R\><rsup|2>> such that
    <math|<around*|(|0,0|)>\<in\>U> then there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|<around*|(|0,0|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|<around*|(|0,0|)>,\<delta\>|)>\<subseteq\>U>
    take <math|x=<around*|(|0,<frac|\<delta\>|2>|)>> then
    <math|x\<neq\><around*|(|0,0|)>>, <math|x\<in\>A>,

    <\equation*>
      <around*|\<\|\|\>|x-<around*|(|0,0|)>|\<\|\|\>><rsub|2>=max<around*|(|<around*|{|<around*|\||0-0|\|>,<around*|\||<frac|\<delta\>|2>-0|\|>|}>|)>=<frac|\<delta\>|2>\<less\>\<delta\>
    </equation*>

    so that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|<around*|(|0,0|)>,\<delta\>|)>\<subseteq\>U>.
    Hence <math|x\<in\>U<big|cap><around*|(|A\\<around*|{|<around*|(|0,0|)>|}>|)>>
    which proves that

    <\equation*>
      x<text| is a limit point of >A
    </equation*>

    Further we have <math|t\<in\><around*|(|I<rsup|<around*|[|1,<around*|(|0,0|)>|]>>|)><rsup|-1><around*|(|A|)>\<Leftrightarrow\><around*|(|t,0|)>=I<rsup|<around*|[|1,<around*|(|0,0|)>|]>><around*|(|t|)>\<in\>A\<Leftrightarrow\>t=0>
    so that

    <\equation*>
      <around*|(|I<rsup|<around*|[|1,<around*|(|0,0|)>|]>>|)><rsup|-1><around*|(|A|)>=<around*|{|0|}>
    </equation*>

    Now for the open set <math|B<rsub|<around*|\|||\|>><around*|(|0,1|)>> we
    have \ <math|0\<in\>B<rsub|<around*|\|||\|>><around*|(|0,1|)>> but also

    <\equation*>
      <around*|(|<around*|(|I<rsup|<around*|[|1,<around*|(|0,0|)>|]>>|)><rsup|-1><around*|(|A|)>\\<around*|{|0|}>|)><big|cap>U=<around*|(|<around*|{|0|}>\\<around*|{|0|}>|)><big|cap>U=\<varnothing\>
    </equation*>

    <math|> so that <math|0> is not a limit point of
    <math|<around*|(|I<rsup|<around*|[|1,<around*|(|0,0|)>|]>>|)><rsup|-1><around*|(|A|)>>.
  </proof>

  However interior points are limit points [see theorem: <reference|topology
  interior point is a limit point in a normed space>] and
  <math|x\<in\>A<rsup|\<circ\>>> implies <math|x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>>
  [see lemma: <reference|lemma 16.69.4>]. This suggest that we define partial
  derivatives for interior points of <math|A>.

  <\definition>
    <label|diff partial derivate definition><index|partial
    derivate><index|<math|\<partial\><rsub|i>f<around*|(|x|)>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    where <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-R\>> equipped with the
    maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>>,
    <math|x\<in\>A<rsup|0>>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and

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
  </definition>

  Using the above definition we can define the partial derivate of a
  function.

  <\definition>
    <label|diff partial derivate>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    equipped with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and <math|f:A\<rightarrow\>X>
    then we define:\ 

    <\equation*>
      \<cal-D\><rsub|i,f>=<around*|{|x\<in\>A<rsup|\<circ\>>\|f<text| has a
      >i<text|-partial derivastive at >x|}>\<subseteq\>A<rsup|\<circ\>>
    </equation*>

    and\ 

    <\equation*>
      \<partial\><rsub|i>f:\<cal-D\><rsub|i,f>\<rightarrow\>X<text| where
      >\<partial\><rsub|f>f<around*|(|x|)>=\<partial\><rsub|x,i>f
    </equation*>

    <\note>
      If <math|\<cal-D\><rsub|i,f>=\<varnothing\>> then
      <math|\<partial\><rsub|i>f> is the empty function [see example:
      <reference|function empty function>].
    </note>
  </definition>

  <\definition>
    <label|diff partial derivative on a set>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    equipped with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>> with
    <math|U\<subseteq\>A> and <math|f:A\<rightarrow\>X> then we say that\ 

    <\equation*>
      f<text| has a >i<text|-partial derivative on >U
    </equation*>

    iff\ 

    <\equation*>
      \<forall\>x\<in\>U<text| >f<text| has a >i<text|-partial derivative at
      >x
    </equation*>
  </definition>

  <\theorem>
    <label|diff partial derivative on a set (1)>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    equipped with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>> with
    <math|U\<subseteq\>A> and <math|f:A\<rightarrow\>X> then we have the
    following equivalence.

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has a >i<text|-partial
      derivative on >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|U\<subseteq\>\<cal-D\><rsub|i,f>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>U> then as <math|f> has a
      <math|i>-partial derivative on <math|U> <math|f> has a <math|i>-partial
      derivative at <math|x>, further <math|x\<in\>U\<subseteq\>A> implies
      <math|x\<in\>A<rsup|\<circ\>>>. Hence it follows that
      <math|x\<in\>\<cal-D\><rsub|i,f>> which proves that\ 

      <\equation*>
        U\<subseteq\>\<cal-D\><rsub|i,f>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>U> then as
      <math|U\<subseteq\>\<cal-D\><rsub|i,f>> it follows that
      <math|x\<in\>\<cal-D\><rsub|i,f>> so that <math|f> is <math|i>-partial
      differentiable at <math|x> which proves that\ 

      <\equation*>
        f<text| has a >i<text|-partial derivative on >U
      </equation*>
    </description>
  </proof>

  We show now that partial derivatives are actual partial differentials in
  the special case where <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>=\<bbb-K\><rsup|n>>.\ 

  <\theorem>
    <label|diff partial derivate and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-K\><rsup|n>> equipped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>>,
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
      \<partial\><rsub|x,i><rsup|>f<around*|(|x|)>=D<rsup|><rsub|x,i>f<around*|(|1|)>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>h\<in\>\<bbb-R\><text| we have
      >D<rsup|><rsub|x,i>f<around*|(|h|)>=h\<cdot\>\<partial\><rsub|x,i>f
    </equation*>
  </theorem>

  <\proof>
    \ As <math|x\<in\>A*<rsup|0>> we have by [lemma: <reference|lemma
    16.69.4>]

    <\equation>
      <label|eq 16.94.6>x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>
    </equation>

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> has a <math|i>-partial
      derivative at <math|x> <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> has a
      derivative at <math|x<rsub|i>>, hence using [theorem: <reference|diff
      derivate and frechet differential>] it follows that

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

      By [definition: <reference|diff partial differential definition>] this
      translate to

      <\equation*>
        f<text| is >i<text|-partial differentiable at >x<text| and
        >D<rsup|><rsub|x,i>f=D<rsub|x<rsub|i>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>
      </equation*>

      As <math|\<partial\><rsub|x,i>f\<equallim\><rsub|<text|[definition:
      <reference|diff partial derivate definition>]>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><rsub|x<rsub|i>>>
      we have then using the above

      <\equation*>
        \<partial\><rsub|x,i>f=D<rsup|><rsub|x,i>f<around*|(|1|)><text| and
        >\<forall\>h\<in\>\<bbb-R\><text| that
        >D<rsup|><rsub|x,i>f<around*|(|h|)>=h\<cdot\>\<partial\><rsub|x,i>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|f> has a <math|i>-partial
      differential at <math|x>, <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is
      Fréchet differentiable at <math|x<rsub|i>>. Using [theorem:
      <reference|diff derivate and frechet differential>] it follows that
      <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> has a derivative at
      <math|x<rsub|i>> and thus by definition that <math|f> has a
      <math|i>-partial derivative at <math|x>.
    </description>
  </proof>

  We can rephrase [theorem: <reference|diff Frechet differentation implies
  partial differentiability >] as follows for partial derivatives.

  <\theorem>
    <label|diff differentiability and K^n>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-K\><rsup|n>> equipped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>>,
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
      <math|<rigid|D<rsup|><rsub|x,i>f\<in\>L<around*|(|\<bbb-R\>,X|)>>>
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

  After examine the differentiation of a function of many variables we look
  now at the differentiability of vector valued function [functions whose
  values live in a finite product of normed spaces].

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

    <\note>
      We use the notation <math|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)><rsub|\<ast\>>>
      so that we don't confuse the above function with the tuple
      <math|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>> which is a element
      of <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><rsup|X>>
      and not a function from <math|X> to
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>.
    </note>
  </definition>

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
    <reference|normed maximum norm>], <math|A\<subseteq\>X>,
    <math|x\<in\>A<rsup|\<circ\>>> and\ 

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
      As <math|f> is differentiable at <math|x> we have for
      <math|D<rsub|x>f\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>
      that\ 

      <\equation>
        <label|eq 16.98.6>\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text|
        such that >\<forall\>h\<in\>A<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><text|
        \ ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>=D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|max>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have
      <math|\<forall\>h\<in\>A<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-<around*|(|\<pi\><rsub|i>\<circ\>D<rsub|x>f|)><around*|(|h|)>|\<\|\|\>><rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|D<rsub|x>f<around*|(|h|)>|)>|\<\|\|\>><rsub|i><rsub|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|)>|\<\|\|\>><rsub|i>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<equallim\><rsub|def>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.98.6>>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      Further, using [example: <reference|continuity norm of projection
      operator>] and [theorem: <reference|continuity composition of
      continuous linear mapping>], it follows that\ 

      <\equation*>
        \<pi\><rsub|i>\<circ\>D<rsub|x>f\<in\>L<around*|(|X,X<rsub|i>|)>
      </equation*>

      Hence we have by [definition: <reference|diff differentiability>] that
      <math|\<pi\><rsub|i>\<circ\>f> is Fréchet differentiable at <math|x>
      with\ 

      <\equation*>
        D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>=\<pi\><rsub|i>\<circ\>D<rsub|x>f
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have, as <math|\<pi\><rsub|i>\<circ\>f> is Fréchet differentiable at
      <math|x>, that there exist a <math|<rigid|D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>\<in\>L<around*|(|X,X<rsub|i>|)>>>
      such that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
      exist a <math|\<delta\><rsub|i,\<varepsilon\>>> such that

      <\equation>
        <label|eq 16.100.6>\<forall\>h\<in\>A<rsub|x><text| with
        <math|<around*|\<\|\|\>|x|\<\|\|\>>\<less\>\<delta\><rsub|i,\<varepsilon\>><text|
        ><around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|h|)>|\<\|\|\>><rsub|i>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>
      </equation>

      Using [theorem: <reference|diff vector functions and linearity>]

      <\equation>
        <label|eq 16.102.6>L=<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and take
      <math|\<delta\>=min<around*|(|<around*|{|\<delta\><rsub|i,\<varepsilon\>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|L<around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|\<\|\|\>|<around*|{|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|h|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|\<\|\|\>>|)>>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.100.6>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      hence\ 

      <\equation*>
        f<text| is Fréchet differentiable at >x
      </equation*>

      and\ 

      <\equation*>
        D<rsub|x>f=L=<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><rsub|\<ast\>>
      </equation*>
    </description>
  </proof>

  Using the above we have the following chain rule for the differential of
  vector valued functions.

  <\theorem>
    <label|diff vector functions (2)>Let <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed spaces equipped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>X><math|>,
    <math|x\<in\>A<rsup|\<circ\>>>, <math|B\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
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

    then\ 

    <\equation*>
      g\<circ\>f<text| is Fréchet differentiable at >x
    </equation*>

    and

    <\equation*>
      D<rsub|x><around*|(|g\<circ\>f|)>=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsup|><rsub|f<around*|(|x|)>,i>g\<circ\>D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)>
    </equation*>
  </theorem>

  <\proof>
    First using the Chain Rule [see theorem: <reference|diff chain rule>] it
    follows that\ 

    <\equation*>
      g\<circ\>f<text| is Fréchet differentiable at >x<text| with
      >D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
    </equation*>

    \ \ Let <math|h\<in\>X> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x><around*|(|g\<circ\>f|)><around*|(|h|)>>|<cell|=>|<cell|<around*|(|D<rsub|f<around*|(|x|)>>
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

  TODO

  We can now look at the differentiability of functions between
  <math|\<bbb-K\><rsup|n>> and <math|\<bbb-K\><rsup|m>>.

  <\theorem>
    <label|diff Jacobian matrix><dueto|Jacobian matrix>Let
    <math|n,m\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    two normed spaces [based on the maximum norms) over the field
    <math|\<bbb-K\>>, <math|A\<subseteq\>\<bbb-K\><rsup|n>>,
    <math|x\<in\>A<rsup|0>> and

    <\equation*>
      f:A\<rightarrow\>\<bbb-K\><rsup|m><text| a function that is Fréchet
      differentiable at <math|x>>
    </equation*>

    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> we have that
    <math|\<pi\><rsub|j>\<circ\>f:A\<rightarrow\>\<bbb-K\>> has a
    <math|i>-partial derivative and\ 

    <\equation*>
      \<forall\>h\<in\>\<bbb-K\><rsup|n><text| we have
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
    <associate|page-first|915>
    <associate|par-first|0>
    <associate|section-nr|0>
    <associate|subsection-nr|2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|16|?>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping|?>>
    <associate|auto-11|<tuple|16.1.4|?>>
    <associate|auto-12|<tuple|Chain rule|?>>
    <associate|auto-13|<tuple|16.1.5|?>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|I<rsup|<around*|[|i,x|]>>>|?>>
    <associate|auto-15|<tuple|16.1.6|?>>
    <associate|auto-16|<tuple|partial derivate|?>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|\<partial\><rsub|i>f<around*|(|x|)>>|?>>
    <associate|auto-18|<tuple|16.1.7|?>>
    <associate|auto-19|<tuple|<with|mode|<quote|math>|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>>|?>>
    <associate|auto-2|<tuple|16.1|?>>
    <associate|auto-3|<tuple|16.1.1|?>>
    <associate|auto-4|<tuple|convergence of a function|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>|?>>
    <associate|auto-7|<tuple|16.1.2|?>>
    <associate|auto-8|<tuple|16.1.3|?>>
    <associate|auto-9|<tuple|differentiability|?>>
    <associate|convergence of a function to a point|<tuple|16.3|?>>
    <associate|diff (f+g)'=f'+g'|<tuple|16.42|?>>
    <associate|diff Bx(x,d)|<tuple|16.17|?>>
    <associate|diff Frechet approximation|<tuple|16.43|?>>
    <associate|diff Frechet differentation implies partial differentiability
    |<tuple|16.78|?>>
    <associate|diff Jacobian matrix|<tuple|16.98|?>>
    <associate|diff Ux|<tuple|16.13|?>>
    <associate|diff Ux is open if U is open|<tuple|16.16|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.15|?>>
    <associate|diff calculus derivate|<tuple|16.22|?>>
    <associate|diff calculus derivate (1)|<tuple|16.20|?>>
    <associate|diff calculus derivate (2)|<tuple|16.23|?>>
    <associate|diff chain rule|<tuple|16.64|?>>
    <associate|diff chain rule and partial differential|<tuple|16.83|?>>
    <associate|diff chain rule calculus|<tuple|16.65|?>>
    <associate|diff composition with a linear mapping|<tuple|16.66|?>>
    <associate|diff constant function and partial
    differentiation|<tuple|16.80|?>>
    <associate|diff constant function is differentiable|<tuple|16.52|?>>
    <associate|diff derivate and frechet differential|<tuple|16.61|?>>
    <associate|diff derivate operator is linear|<tuple|16.63|?>>
    <associate|diff derivative and restriction|<tuple|16.36|?>>
    <associate|diff derivative function|<tuple|16.24|?>>
    <associate|diff derivative is local|<tuple|16.38|?>>
    <associate|diff derivative of constant|<tuple|16.32|?>>
    <associate|diff derivative of identity function|<tuple|16.33|?>>
    <associate|diff derivative of the empty function|<tuple|16.31|?>>
    <associate|diff derivative on a open set|<tuple|16.27|?>>
    <associate|diff derivative on a open set (1)|<tuple|16.30|?>>
    <associate|diff derivative on a open set (2)|<tuple|16.41|?>>
    <associate|diff derivatives and continuity|<tuple|16.35|?>>
    <associate|diff differentiability|<tuple|16.46|?>>
    <associate|diff differentiability alternative
    definitions|<tuple|16.58|?>>
    <associate|diff differentiability alternative definitions
    (1)|<tuple|16.59|?>>
    <associate|diff differentiability and K^n|<tuple|16.91|?>>
    <associate|diff differentiability is a local property|<tuple|16.55|?>>
    <associate|diff differentiability on a set|<tuple|16.49|?>>
    <associate|diff differentiability on a set (1)|<tuple|16.50|?>>
    <associate|diff differentiability on a set (2)|<tuple|16.56|?>>
    <associate|diff differentiable function is continuous|<tuple|16.60|?>>
    <associate|diff differential|<tuple|16.47|?>>
    <associate|diff differential of a vector valued function|<tuple|16.96|?>>
    <associate|diff e-mapping|<tuple|16.57|?>>
    <associate|diff equivalent norms|<tuple|16.54|?>>
    <associate|diff identity function is differentiable|<tuple|16.51|?>>
    <associate|diff limit of a function|<tuple|16.11|?>>
    <associate|diff linear mappings are differentiable|<tuple|16.53|?>>
    <associate|diff partial derivate|<tuple|16.86|?>>
    <associate|diff partial derivate and partial
    differential|<tuple|16.90|?>>
    <associate|diff partial derivate definition|<tuple|16.85|?>>
    <associate|diff partial derivation is local|<tuple|16.91|?>>
    <associate|diff partial derivative on a set|<tuple|16.88|?>>
    <associate|diff partial derivative on a set (1)|<tuple|16.89|?>>
    <associate|diff partial differentiability does not mean
    differentiaility|<tuple|16.81|?>>
    <associate|diff partial differentiability on a set|<tuple|16.76|?>>
    <associate|diff partial differential|<tuple|16.73|?>>
    <associate|diff partial differential definition|<tuple|16.71|?>>
    <associate|diff partial differential on a set|<tuple|16.75|?>>
    <associate|diff partial differential properties|<tuple|16.82|?>>
    <associate|diff partial differentiation is local|<tuple|16.77|?>>
    <associate|diff scalar product function has a derivate|<tuple|16.34|?>>
    <associate|diff unprojection|<tuple|16.67|?>>
    <associate|diff vector functions|<tuple|16.92|?>>
    <associate|diff vector functions (1)|<tuple|16.95|?>>
    <associate|diff vector functions (2)|<tuple|16.97|?>>
    <associate|diff vector functions and linearity|<tuple|16.94|?>>
    <associate|eq 16.1.177|<tuple|16.11|?>>
    <associate|eq 16.1.2|<tuple|16.1|?>>
    <associate|eq 16.10.178|<tuple|16.18|?>>
    <associate|eq 16.10.4|<tuple|16.10|?>>
    <associate|eq 16.100.6|<tuple|16.40|?>>
    <associate|eq 16.101.6|<tuple|16.41|?>>
    <associate|eq 16.102.6|<tuple|16.41|?>>
    <associate|eq 16.11.178|<tuple|16.19|?>>
    <associate|eq 16.12.178|<tuple|16.20|?>>
    <associate|eq 16.13.178|<tuple|16.21|?>>
    <associate|eq 16.14.178|<tuple|16.22|?>>
    <associate|eq 16.15.178|<tuple|16.23|?>>
    <associate|eq 16.18.179|<tuple|16.30|?>>
    <associate|eq 16.19.179|<tuple|16.31|?>>
    <associate|eq 16.2.177|<tuple|16.12|?>>
    <associate|eq 16.2.2|<tuple|16.2|?>>
    <associate|eq 16.20.178|<tuple|16.38|?>>
    <associate|eq 16.23.178|<tuple|16.42|?>>
    <associate|eq 16.24.178|<tuple|16.43|?>>
    <associate|eq 16.24.4|<tuple|16.24|?>>
    <associate|eq 16.25.178|<tuple|16.44|?>>
    <associate|eq 16.25.4|<tuple|16.25|?>>
    <associate|eq 16.26.4|<tuple|16.26|?>>
    <associate|eq 16.27.4|<tuple|16.27|?>>
    <associate|eq 16.28.4|<tuple|16.28|?>>
    <associate|eq 16.29.4|<tuple|16.29|?>>
    <associate|eq 16.3.177|<tuple|16.13|?>>
    <associate|eq 16.3.2|<tuple|16.3|?>>
    <associate|eq 16.4.1|<tuple|16.4|?>>
    <associate|eq 16.4.177|<tuple|16.14|?>>
    <associate|eq 16.5.1|<tuple|16.5|?>>
    <associate|eq 16.6.301|<tuple|16.6|?>>
    <associate|eq 16.7.178|<tuple|16.15|?>>
    <associate|eq 16.7.301|<tuple|16.7|?>>
    <associate|eq 16.73.3|<tuple|16.32|?>>
    <associate|eq 16.74.3|<tuple|16.33|?>>
    <associate|eq 16.75.3|<tuple|16.34|?>>
    <associate|eq 16.78.3|<tuple|16.36|?>>
    <associate|eq 16.79.3|<tuple|16.37|?>>
    <associate|eq 16.8.178|<tuple|16.16|?>>
    <associate|eq 16.8.4|<tuple|16.8|?>>
    <associate|eq 16.9.178|<tuple|16.17|?>>
    <associate|eq 16.9.4|<tuple|16.9|?>>
    <associate|eq 16.94.6|<tuple|16.35|?>>
    <associate|eq 16.97.310.1|<tuple|16.36|?>>
    <associate|eq 16.98.6|<tuple|16.39|?>>
    <associate|eq 16.99.6|<tuple|16.40|?>>
    <associate|lemma 16.11.500|<tuple|16.6|?>>
    <associate|lemma 16.18.2|<tuple|16.18|?>>
    <associate|lemma 16.19.2|<tuple|16.19|?>>
    <associate|lemma 16.24.178|<tuple|16.68|?>>
    <associate|lemma 16.37.4|<tuple|16.45|?>>
    <associate|lemma 16.69.4|<tuple|16.70|?>>
    <associate|normed space are assumed to be non trivial|<tuple|16.1|?>>
    <associate|topology every element of a generalized interval is a limit
    point|<tuple|16.10|?>>
    <associate|topology every element of a open or closed ball is a limit
    point|<tuple|16.9|?>>
    <associate|topology every element of a open set in a normed space is a
    limit point|<tuple|16.7|?>>
    <associate|topology interior point is a limit point in a normed
    space|<tuple|16.8|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|convergence of a function>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|U<rsub|x>>>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>>|<pageref|auto-6>>

      <tuple|<tuple|differentiability>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping>|<pageref|auto-10>>

      <tuple|<tuple|Chain rule>|<pageref|auto-12>>

      <tuple|<tuple|<with|mode|<quote|math>|I<rsup|<around*|[|i,x|]>>>>|<pageref|auto-14>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Differentiation
      in Normed Spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      16.1<space|2spc>Fréchet differentiation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|16.1.1<space|2spc>The classical derivative
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|16.1.2<space|2spc>Properties of the
      derivative <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|16.1.3<space|2spc>Fréchet differential of a
      function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|16.1.4<space|2spc>Properties of the Fréchet
      differential. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|16.1.5<space|2spc>Partial differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|16.1.6<space|2spc>Partial Derivates
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>
    </associate>
  </collection>
</auxiliary>
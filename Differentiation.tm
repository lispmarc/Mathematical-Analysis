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
    a normed space, <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A> and
    <rigid|<math|f:A\<rightarrow\>Y>> a function then
    <with|font-series|bold|<math|f> has a derivative at <math|x> noted as
    <math|f<rprime|'><rsub|x>>> if we have

    <\enumerate>
      <item><math|x\<in\>A<rprime|'>> where<math|A<rprime|'>> is the set of
      limit points of <math|A> [see definition: <reference|topology limit
      point>].

      <item>we have for the function

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
    </enumerate>

    <\note>
      Using [theorem: <reference|topology every element of a open set in a
      normed space is a limit point>], [corollary: <reference|topology
      interior point is a limit point in a normed space>], [corollary:
      <reference|topology every element of a open or closed ball is a limit
      point>] and [corollary: <reference|topology every element of a
      generalized interval is a limit point>] it follows that (1) is
      satisfied automatical in the following cases

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
    a normed space, <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and <math|f:A\<rightarrow\>Y> a function. Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has a derivative
      <math|f<rprime|'><rsub|x><text| at >x>
      >>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|x\<in\>A<rprime|'>>|<cell|>>|<row|<cell|>|<cell|and>|<cell|>>|<row|<cell|>|<cell|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| so that
      >\<forall\>h\<in\>A<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text|
      \ ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|z>|\<\|\|\>>\<less\>\<varepsilon\>>|<cell|>>>>
    </eqnarray*>
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
      x\<in\>A<rprime|'><text| and >f<rprime|'><rsub|x>=<below|lim|<below|h\<rightarrow\>0|A<rsub|x>\\<around*|{|0|}>>>\<Delta\><rsub|x>f<around*|(|h|)><text|
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
  </proof>

  Another equivalent definition of derivating is the following.

  <\theorem>
    <label|diff calculus derivate (2)>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real or complex numbers, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|x\<in\>A> and <math|f:A\<rightarrow\>Y> a function.
    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has a derivative
      <math|f<rprime|'><rsub|x>> at >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|x\<in\>A<rprime|'>>|<cell|>>|<row|<cell|>|<cell|and>|<cell|>>|<row|<cell|>|<cell|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\||h|\|>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f<rprime|'><rsub|x>> exist we
      have that\ 

      <\equation*>
        x\<in\>A<rprime|'>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
      <math|f<rprime|'><rsub|x>> exists it follows from the previous theorem
      [theorem: <reference|diff calculus derivate>] that
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

      <item*|<math|\<Leftarrow\>>>By the hypothesis we have that\ 

      <\equation*>
        x\<in\>A<rprime|'>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the hypothesis
      there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

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

    \;
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
    points of <math|A> for which <math|f> has a derivative at <math|x> is
    noted as <math|\<cal-D\><rsub|f>> in other words\ 

    <\equation*>
      \<cal-D\><rsub|f>=<around*|{|x\<in\>A\|f<text| has a derivative at
      >x|}>\<subseteq\>A
    </equation*>

    The derivative <math|f<rprime|'>> of <math|f> is then defined by\ 

    <\equation*>
      f<rprime|'>:\<cal-D\><rsub|f>\<rightarrow\>Y<text| where
      >f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x>
    </equation*>

    <\note>
      As the existence of a derivate at <math|x> implies that
      <math|x\<in\>A<rprime|'>> [see definition: <reference|diff calculus
      derivate>] it follows that\ 

      <\equation*>
        \<cal-D\><rsub|f>\<subseteq\>A<big|cap>A<rprime|'>\<subseteq\>A,A<rprime|'>
      </equation*>
    </note>

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
    <math|B\<subseteq\>A> <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:A\<rightarrow\>X> a function then we say that

    <\equation*>
      f<text| has derivatives on >B
    </equation*>

    iff

    <\equation*>
      \<forall\>x\<in\>B<text| f has a derivative at> x
    </equation*>
  </definition>

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
    <math|<around*|]|a,b|[>>. <math|A\<subseteq\>K>. Let
    <rigid|<math|x,y\<in\>X>> and define\ 

    <\equation*>
      f:A\<rightarrow\>\<bbb-K\><text| defined by
      >f<around*|(|t|)>=t\<cdot\>x+y
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
      <around*|\||<frac|f<around*|(|t+h|)>-f<around*|(|t|)>|h>-x|\|>=<around*|\||<frac|<around*|(|t+h|)>\<cdot\>x+y-t\<cdot\>x-y|h>-x|\|>=<around*|\||<frac|h\<cdot\>x|h>-x|\|>=0\<less\>\<varepsilon\>
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
    normed space, <math|x\<in\>A> and <math|f:A\<rightarrow\>Y> a function
    that has a derivative <math|f<rprime|'><rsub|x>> at <math|x> then
    <math|f> is continuous at <math|x>.
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
      The requirement that <math|x> is a limit point is needed, the existance
      of <math|f<rprime|'><rsub|x>> ensures that <math|x> is a limit point of
      <math|A> but in general this does not ensure that <math|x> is a limit
      point of <math|B>.
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

    which proves, as <math|x\<in\>B<rprime|'>>, that <math|f<rsub|\|B>> has a
    derivative at <math|x> and <math|<around*|(|f<rsub|\|B>|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>>.
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
      <reference|topology interior of a set>] a
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
    normed space, <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A> then we
    have:\ 

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
      <item>As <math|f> has a derivative at <math|x> it follows that\ 

      <\equation*>
        x\<in\>A<rprime|'>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> and
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

      <item>As <math|f> has a derivative at <math|x> it follows that\ 

      <\equation*>
        x\<in\>A<rprime|'>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> has a
      derivative <math|f<rprime|'><rsub|x>> at <math|x> there exist a
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

    \;
  </proof>

  <\theorem>
    <label|diff derivative of a scalar product>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|<around*|\<langle\>|X,\<\|\|\>|\<rangle\>>>
    a normed space over <math|\<bbb-K\>>, <math|A\<subseteq\>\<bbb-K\>>,
    <math|x\<in\>A> and <math|f:A\<rightarrow\>\<bbb-K\>> and
    <math|g:A\<rightarrow\>X> functions that have a derivative at <math|x>
    then <math|f\<cdot\>g> has a derivative at <math|x> and\ 

    <\equation*>
      <around*|(|f\<cdot\>g|)><rprime|'><rsub|x>=f<around*|(|x|)>\<cdot\>g<rprime|'><rsub|x>+f<rprime|'><rsub|x>\<cdot\>g<around*|(|x|)>
    </equation*>

    <\note>
      The multiplication operator is the scalar product
      <math|\<cdot\>:\<bbb-K\>\<times\>Y\<rightarrow\>Y>. If
      <math|Y=\<bbb-K\>> then this reduce to the product operator in the
      field <math|\<bbb-K\>>.
    </note>
  </theorem>

  <\proof>
    As <math|f> has a derivative at <math|x> it follows that\ 

    <\equation*>
      x\<in\>A<rprime|'>
    </equation*>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then we have by
    [theorem: <reference|diff calculus derivate (2)>] that there exists
    <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such
    that\ 

    <\equation>
      <label|eq 16.8.5>\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\||h|\|>\<less\>\<delta\><rsub|1><text| we have
      ><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\|>\<leqslant\><frac|\<varepsilon\>|3\<cdot\><around*|(|1+<around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>|)>>\<cdot\><around*|\||h|\|>
    </equation>

    <\equation>
      <label|eq 16.9.5>\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\||h|\|>\<less\>\<delta\><rsub|2><text| we have
      ><around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-h\<cdot\>g<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|3\<cdot\><around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>>\<cdot\><around*|\||h|\|>
    </equation>

    Further we have by [theorem: <reference|diff derivatives and continuity>]
    that\ 

    <\equation>
      <label|eq 16.10.5>f<text| is><text| continuous at >x
    </equation>

    By continuity of <math|f> at <math|x> there exist a
    <math|\<delta\><rsub|3>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>y\<in\>A> with <math|<around*|\||x-y|\|>\<less\>\<delta\><rsub|3>>
    we have that <math|<around*|\||f<around*|(|y|)>-f<around*|(|x|)>|\|>\<less\>min<around*|(|1,<frac|1|1+<around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>>|)>\<in\>\<bbb-R\><rsup|+>>.
    If <math|h\<in\>A<rsub|x>> with <math|<around*|\||h|\|><rsub|3>\<less\>\<delta\>>
    then <math|x+h\<in\>A> and <math|<around*|\||<around*|(|x+h|)>-x|\|>\<less\>\<delta\><rsub|3>>

    so that we have \ 

    <\equation>
      <label|eq 16.11.5>\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\||h|\|>\<less\>\<delta\><rsub|3><text| we have
      ><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>|\|>\<less\><frac|\<varepsilon\>|3\<cdot\><around*|(|1+<around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>|)>>
    </equation>

    and\ 

    <\equation>
      <label|eq 16.12.5>\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\||h|\|>\<less\>\<delta\><rsub|3><text| we have
      ><around*|\||f<around*|(|x+h|)>|\|>\<leqslant\><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>|\|>+<around*|\||f<around*|(|x|)>|\|>\<less\>1+<around*|\||f<around*|(|x|)>|\|>
    </equation>

    Let now <math|h\<in\>A<rsub|x>> with <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>|)>>
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f\<cdot\>g|)><around*|(|x+h|)>-<around*|(|f\<cdot\>g|)><around*|(|x|)>-h\<cdot\><around*|(|f<rprime|'><rsub|x>\<cdot\>g<around*|(|x|)>+f<around*|(|x|)>\<cdot\>g<rprime|'><rsub|x>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<wide*|f<around*|(|x+h|)>\<cdot\>g<around*|(|x+h|)>|\<wide-underbrace\>><rsub|1>-<wide*|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|\<wide-underbrace\>><rsub|2>-<wide*|<around*|(|h\<cdot\>f<rprime|'><rsub|x>|)>\<cdot\>g*<around*|(|x|)>|\<wide-underbrace\>><rsub|3>-<wide*|<around*|(|h\<cdot\>f<around*|(|x|)>|)>\<cdot\>g<rprime|'><rsub|x>|\<wide-underbrace\>><rsub|4>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<wide*|f<around*|(|x+h|)>\<cdot\>g<around*|(|x+h|)>|\<wide-underbrace\>><rsub|1>-<wide*|f<around*|(|x+h|)>\<cdot\>g<around*|(|x|)>|\<wide-underbrace\>><rsub|5>-<wide*|<around*|(|h\<cdot\>f<around*|(|x+h|)>|)>\<cdot\>g<rprime|'><rsub|x>|\<wide-underbrace\>><rsub|6>+<wide*|f<around*|(|x+h|)>\<cdot\>g<around*|(|x|)>|\<wide-underbrace\>><rsub|5>+<wide*|<around*|(|h\<cdot\>f<around*|(|x+h|)>|)>\<cdot\>g<rprime|'><rsub|x>|\<wide-underbrace\>><rsub|6>-<wide*|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|\<wide-underbrace\>><rsub|2>-<wide*|<around*|(|h\<cdot\>f<rprime|'><rsub|x>|)>\<cdot\>g*<around*|(|x|)>|\<wide-underbrace\>><rsub|3>-<wide*|<around*|(|h\<cdot\>f<around*|(|x|)>|)>\<cdot\>g<rprime|'><rsub|x>|\<wide-underbrace\>><rsub|4>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<wide*|f<around*|(|x+h|)>\<cdot\><around*|(|g<around*|(|x+h|)>-g<around*|(|x|)>-h\<cdot\>g<rprime|'><rsub|x>|)>|\<wide-underbrace\>><rsub|1,5,6>+<wide*|<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|)>\<cdot\>g<around*|(|x|)>|\<wide-underbrace\>><rsub|5,2,3>+<wide*|h\<cdot\><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\>g<rprime|'><rsub|x>|\<wide-underbrace\>><rsub|6,4>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\||f<around*|(|x+h|)>|\|>\<cdot\><around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-h\<cdot\>g<rprime|'><rsub|x>|\<\|\|\>>+<around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\|>\<cdot\><around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>+<rigid|<around*|\||h|\|>\<cdot\><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>|\|>\<cdot\><around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.12.5>]>>>|<cell|>>|<row|<cell|<around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>\<cdot\><around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-h\<cdot\>g<rprime|'><rsub|x>|\<\|\|\>>+<around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\|>\<cdot\><around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>+<rigid|<around*|\||h|\|>\<cdot\><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>|\|>\<cdot\><around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.9.5>]>>>|<cell|>>|<row|<cell|<around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>\<cdot\><frac|\<varepsilon\>|3\<cdot\><around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>>\<cdot\><around*|\||h|\|>+<around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\|>\<cdot\><around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>+<rigid|<around*|\||h|\|>\<cdot\><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>|\|>\<cdot\><around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>+<around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><rsub|x>|\|>\<cdot\><around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>+<rigid|<around*|\||h|\|>\<cdot\><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>|\|>\<cdot\><around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.8.5>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>+<frac|\<varepsilon\>|3\<cdot\><around*|(|1+<around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>|)>>\<cdot\><around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\||h|\|>+<rigid|<around*|\||h|\|>\<cdot\><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>|\|>\<cdot\><around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>+<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>+<rigid|<around*|\||h|\|>\<cdot\><around*|\||f<around*|(|x+h|)>-f<around*|(|x|)>|\|>\<cdot\><around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>>>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 16.11.5>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>+<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>+<rigid|<around*|\||h|\|>\<cdot\><frac|1|3\<cdot\><around*|(|1+<around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>|)>>\<cdot\><around*|\<\|\|\>|g<rprime|'><rsub|x>|\<\|\|\>>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>+<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>+<frac|\<varepsilon\>|3>\<cdot\><around*|\||h|\|>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
    </eqnarray*>

    Hence we have that\ 

    <\equation*>
      f\<cdot\>g<text| has a derivative at >x<text| with
      ><around*|(|f\<cdot\>g|)><rprime|'><rsub|x>=f<rprime|'><rsub|x>\<cdot\>g<around*|(|x|)>+f<around*|(|x|)>\<cdot\>g<rprime|'><rsub|x>
    </equation*>
  </proof>

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
  simple as requiring that <math|x> is a limit point as the following example
  shows.

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
    be normed spaces, <math|A\<subseteq\>X> and <math|x\<in\>A> then a
    function

    <\equation*>
      f:A\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|x> if <math|x\<in\>A<rsup|\<circ\>>>
    and there exist a <math|L\<in\>L<around*|(|X,Y|)>> such that <math|L> is
    a Fréchet approximation of <math|f> at <math|x>. Using [definition:
    <reference|diff Frechet approximation>] this is equivalent with\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|x\<in\>A<rsup|\<circ\>>>|<cell|>>|<row|<cell|>|<cell|and>|<cell|>>|<row|<cell|>|<cell|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|>>>>
    </eqnarray*>

    The unique <math|L> [seee lemma: <reference|lemma 16.37.4>] is called the
    \ <with|font-series|bold|Fréchet differential of f at <math|x>> and noted
    as <math|D<rsub|x> f>.\ 

    <\note>
      The requirement <math|x\<in\>A<rsup|\<circ\>>> is needed to ensure that
      <math|D<rsub|x>f> is well defined.
    </note>
  </definition>

  Note that the Fréchet differential <math|D<rsub|x>f> at
  <math|x\<in\>A<rsup|0>> is a element of <math|L<around*|(|X,Y|)>> hence
  <math|D<rsub|x>f> is a continuous linear function. However we can also look
  at a different function who maps <math|x> to <math|D<rsub|x>f> which is the
  differential of <math|f>.

  <\definition>
    <label|diff differential><dueto|Differential>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> a
    function. Then we define

    <\equation*>
      \<frak-D\><rsub|f>=<around*|{|x\<in\>A\|f<text| is Fréchet
      differentiable at >x|}>\<subseteq\>A
    </equation*>

    and\ 

    <\equation*>
      D f:\<frak-D\><rsub|f>\<rightarrow\>L<around*|(|X,Y|)><text| where >D
      f<around*|(|x|)>=D<rsub|x>f
    </equation*>

    <math|D f> is called the differential of <math|f>.

    <\note>
      As the differentiability of <math|f> at <math|x> implies by definition
      that <math|x\<in\>A<rsup|0>> it follows that\ 

      <\equation*>
        \<frak-D\><rsub|f>\<subseteq\>A<rsup|\<circ\>>\<subseteq\>A
      </equation*>
    </note>

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
    <math|A\<subseteq\>X>, <math|x\<in\>A> [using the topology
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

    As <math|f> is Fréchet differentiable at <math|x> using
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>> it follows that
    <math|x\<in\>A<rsup|\<circ\>>> [using
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>>], as
    the norms are equivalent we have that
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>>
    so that\ 

    <\equation*>
      x\<in\>A<rsup|\<circ\>> <text|[using
      <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>>]>
    </equation*>

    \ Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist a
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
    <math|x\<in\>B> and <rigid|<math|f:A\<rightarrow\>Y>> is a function then
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|x\<in\>B<rsup|\<circ\>><text| and
      >f<text| is Fréchet differentiable at
      >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<rsub|\|B><text|
      is Fréchet differentiable at >x>|<cell|>>>>
    </eqnarray*>

    Further for either of the above cases we have
    <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>.

    <\note>
      If <math|B> is open in <math|X> then <math|B<below|=|<text|[theorem:
      <reference|topology open set and interior>]>>B<rsup|\<circ\>>> so that
      <math|x\<in\>B<rsup|\<circ\>>> in the above is automatical satsfied and
      can be removed.
    </note>
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

      which proves, as <math|x\<in\>B<rsup|\<circ\>>>, that
      <math|f<rsub|\|B>> is Fréchet differentiable at <math|x> with
      <math|D<rsub|x>f<rsub|\|B>=D<rsub|x>f>.

      <item*|<math|\<Leftarrow\>>>As <math|f<rsub|\|B>> is Fréchet
      differentiable at <math|x> we have by [definition: <reference|diff
      differentiability>] that\ 

      <\equation*>
        x\<in\>B<rsup|\<circ\>>
      </equation*>

      As <math|x\<in\>B<rsup|\<circ\>>> there exist a <math|U> open such that
      <math|x\<in\>U\<subseteq\>B> hence there exist a
      <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that\ 

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

      which proves, as <math|x\<in\>B<rsup|\<circ\>><below|\<subseteq\>|<text|[theorem:
      <reference|topology interior of a set and
      inclusion>]>>A<rsup|\<circ\>>>, that <math|f> is Fréchet differentiable
      at <math|x> with <math|<rigid|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>>.
    </description>

    \;
  </proof>

  Using the locally principle we have another way to specify that a function
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
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A<rsup|>> \ and
    <math|f:A\<rightarrow\>Y> a function then the following are equivalent
    for <math|L\<in\>L<around*|(|X,Y|)>>

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

    Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is Fréchet differentiable at
      >x<text|>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|x\<in\>A<rsup|\<circ\>><text|
      and either >1,2,3,4<text| or >5<text| is true with
      >L=D<rsub|x>f>|<cell|>>>>
    </eqnarray*>
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

    To summarize we have\ 

    <\equation>
      <label|eq 16.18.5>1\<Leftrightarrow\>2\<Leftrightarrow\>3\<Leftrightarrow\>4\<Leftrightarrow\>5
    </equation>

    Finally we have:\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f> is Fréchet differentiable at
      <math|x> then <math|x\<in\>A<rsup|\<circ\>>> and (1) is true hence by
      [eq: <reference|eq 16.18.5>] <math|x\<in\>A<rsup|\<circ\>>> and either
      1,2\R3,4 or 5 is true with <math|L=D<rsub|x>f>.

      <item*|<math|\<Leftarrow\>>>If <math|x\<in\>A<rsup|\<circ\>>> and
      either 1,2,3,4,5 is true then by [eq: <reference|eq 16.18.5>]
      <math|x\<in\>A<rsup|\<circ\>>> and 1 is true
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
      <rigid|<math|\<varepsilon\>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>\<rightarrow\>Y>>
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
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function that is Fréchet differentiable at
    <math|x> then <math|f> is continuous at <math|x>.\ 
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
    normed space, <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>X> a function then we have\ 

    <\equation*>
      x\<in\>A<rsup|\<circ\>><text| and >f<text| has a derivative
      >f<rprime|'><rsub|x><text| at >x
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
      If <math|f> has a derivative at <math|x> we have by definition that
      <math|x\<in\>A<rprime|'>> but this does not mean that
      <math|x\<in\>A<rsup|\<circ\>>> which is a requirement for the
      differentiability of <math|f> at <math|x>. Hence the condition
      <math|x\<in\>A<rsup|\<circ\>>> is required.\ 
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

      which proves, as <math|x\<in\>A<rsup|\<circ\>>,> that <math|f> is
      Fréchet differentiable at <math|x> with <math|D<rsub|x>f=L>. Hence\ 

      <\equation*>
        \<forall\>h\<in\>\<bbb-K\><text| we have
        >D<rsub|x>f=h\<cdot\>f<rprime|'><rsub|x><text| and
        >D<rsub|x>f<around*|(|1|)>=f<rprime|'><rsub|x>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f> is Fréchet differentiable at <math|x> with differential
      <math|D<rsub|x>f>

      <\equation*>
        x\<in\>A<rsup|\<circ\>>
      </equation*>

      and there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>\<delta\>\<in\>A<rsub|x>> with
      <math|<around*|\||h|\|>\<less\>\<delta\>> we have that\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      Hence we have that\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>D<rsub|x>f<around*|(|1|)>|\<\|\|\>>=<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|z|)>-D<rsub|x>f<around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      Further as <math|x\<in\>A<rsup|\<circ\>>> we have by [theorem:
      <reference|topology interior point is a limit point in a normed space>]
      that

      <\equation*>
        x\<in\>A<rprime|'>
      </equation*>

      So by [theorem: <reference|diff calculus derivate (2)>] that <math|f>
      has a derivative <math|f<rprime|'><rsub|x>> at <math|x> with
      <math|f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>>.
    </description>
  </proof>

  <subsection|Properties of the Fréchet differential.>

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
      are Fréchet differentiable at <math|x>\ 

      <\equation*>
        x\<in\>A<rsup|\<circ\>>
      </equation*>

      and there exist <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
      such that\ 

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
      Fréchet differentiable at <math|x>\ 

      <\equation*>
        x\<in\>A<rsup|\<circ\>>
      </equation*>

      and there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

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

    \;
  </proof>

  We introduce now the most import rule for Fréchet differentiable the Chain
  Rule.

  <\theorem>
    <label|diff chain rule><index|Chain rule><dueto|Chain Rule>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <rigid|<math|x\<in\>A>,>
    <math|B\<subseteq\>Y>, <math|f:A\<rightarrow\>Y>,
    <math|g:B\<rightarrow\>Z> functions such that
    <math|f<around*|(|A|)>\<subseteq\>B> and <math|f<around*|(|x|)>\<in\>B>,
    <math|f> is Fréchet differentiable at <math|x> and <math|g> is Fréchet
    differentiable at <math|f<around*|(|x|)>> then

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
    <reference|diff differentiability alternative definitions>] that\ 

    <\equation>
      <label|eq 16.21.5>x\<in\>A<rsup|\<circ\>>
    </equation>

    and there exist a <math|\<varepsilon\>>-mapping
    <math|\<varepsilon\><rsub|f>:A<rsub|x>\<rightarrow\>Y> such that\ 

    <\equation>
      <label|eq 16.7.178>\<forall\>h\<in\>A<rsub|x><text| we have
      >f<around*|(|x+h|)>-f<around*|(|x|)>-D<rsub|x>f<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>
    </equation>

    Further as <math|g> is Fréchet differentiable at <math|f<around*|(|x|)>>
    we can use [theorem: <reference|diff differentiability alternative
    definitions>] again, giving\ 

    <\equation*>
      f<around*|(|x|)>\<in\>B<rsup|\<circ\>>
    </equation*>

    and the existence of a <math|\<varepsilon\>>-mapping
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
    <math|\<varepsilon\>>-mapping. Hence as, by [eq: <reference|eq
    16.10.178>] <math|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>
    and by [eq: <reference|eq 16.21.5>] <math|x\<in\>A<rsup|\<circ\>>>,it
    follows from [theorem: <reference|diff differentiability alternative
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
      amd <math|t\<in\>X<rsub|j><below|=|<text|[theorem: <reference|topology
      open set and interior>]>><around*|(|X<rsub|j>|)><rsup|\<circ\>>> proves
      that\ 

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
      As <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is Fréchet
      differentiability at <math|x<rsub|i>> it follows by [definition:
      <reference|diff differentiability>] that
      <math|x<rsub|i>\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rsup|\<circ\>>>.
      \ 
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
    <math|x\<in\>A>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|f:A\<rightarrow\>Y> a function. Then we define

    <\equation*>
      \<frak-D\><rsub|i,f>=<around*|{|x\<in\>A<rsup|>\|f<text| is
      >i<text|-partial differentiable at >x|}>
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

  Just as differentiability is a local property [see theorem: <reference|diff
  differentiability is a local property>] partial is a local property.

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
    <math|x\<in\>A> and <math|f:A\<rightarrow\>Y> a function that is Fréchet
    differentiable at <math|x> then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
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
  </theorem>

  <\proof>
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
      <label|eq 16.29.4>f<text| is <math|i>-partial differentiable at
      >x<text| with >D<rsub|x,i>f=D<rsub|x>f\<circ\>I<rsup|<around*|[|i,0|]>>
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
    <math|B\<subseteq\>Y>, <math|x\<in\>A>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,

    <\equation*>
      f:A\<rightarrow\>Y<text| a function that is \ >i<text|-partial
      differentiable at >x<text| such that
      >f<around*|(|A|)>\<subseteq\>B<text| and >f<around*|(|x|)>
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

  <\definition>
    <label|diff partial derivate definition><index|partial
    derivate><index|<math|\<partial\><rsub|i>f<around*|(|x|)>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    where <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-R\>> equipped with the
    maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>>, <math|x\<in\>A>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and

    <\equation*>
      f:A\<rightarrow\>X<text| a function >
    </equation*>

    then <math|f> has a <with|font-series|bold|<math|i>-partial derivative at
    <math|x>> noted by <math|\<partial\><rsub|x,i><rsup|>f<around*|(|x|)>\<in\>X>
    iff

    <\equation*>
      <text|>f\<circ\>I<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>\<rightarrow\>X
    </equation*>

    has a derivative at <math|x<rsub|i>>, the
    <with|font-series|bold|<math|i>-partial derivative at <math|x>> is
    defined by

    <\equation*>
      \<partial\><rsub|x,i>f<around*|(|x|)>=<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rsub|x<rsub|i>><rprime|'>\<in\>X
    </equation*>

    <\note>
      The existence of the derivative of <math|f\<circ\>I<rsup|<around*|[|i,x|]>>>
      at <math|x<rsub|i>> implies by [definition: <reference|diff calculus
      derivate>] that\ 

      <\equation*>
        x\<in\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|A|)>|)><rprime|'>
      </equation*>
    </note>
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
      \<cal-D\><rsub|i,f>=<around*|{|x\<in\>A\|f<text| has a >i<text|-partial
      derivastive at >x|}>
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
    normed space, <math|A\<subseteq\>\<bbb-K\><rsup|n>>, <math|x\<in\>A> and

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
      [definition: <reference|diff differentiability>] that\ 

      <\equation*>
        x\<in\>A<rsup|\<circ\>>
      </equation*>

      and by [theorem: <reference|diff Frechet differentation implies partial
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

    \;
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
      As <math|f> is Fréchet differentiable at <math|x> we have

      <\equation*>
        x\<in\>A<rsup|\<circ\>>
      </equation*>

      \ and for <math|D<rsub|x>f\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>
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

      <item*|<math|\<Leftarrow\>>>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      then as <math|\<pi\><rsub|i>\<circ\>f> is Fréchet differentiable at
      <math|x> we have that\ 

      <\equation*>
        x\<in\>A<rsup|\<circ\>>
      </equation*>

      \ and there exist a <math|<rigid|D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>\<in\>L<around*|(|X,X<rsub|i>|)>>>
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

      with\ 

      <\equation*>
        D<rsub|x>f=L=<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><rsub|\<ast\>>
      </equation*>
    </description>

    \;
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
    a normed space, <math|A\<subseteq\>X><math|>, <math|x\<in\>A>,
    <math|B\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    and\ 

    <\equation*>
      f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i><text|
      and >g:B\<rightarrow\>Z
    </equation*>

    functions such that\ 

    <\equation*>
      f<around*|(|A|)>\<subseteq\>B<text|, >f<text| is Fréchet differentiable
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

  We can now look at the differentiability of functions between
  <math|\<bbb-K\><rsup|n>> and <math|\<bbb-K\><rsup|m>>.

  <\theorem>
    <label|diff Jacobian matrix><dueto|Jacobian matrix>Let
    <math|n,m\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    two normed spaces [based on the maximum norms) over the field
    <math|\<bbb-K\>>, <math|A\<subseteq\>\<bbb-K\><rsup|n>>, <math|x\<in\>A>
    and

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

    Using [theorem: <reference|diff differentiability and K^n>] it follows
    that <math|\<pi\><rsub|j>\<circ\>f> has a <math|i>-partial derivative at
    <math|x> with\ 

    <\equation>
      <label|eq 16.24.178>D<rsub|x><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>
    </equation>

    Further for <math|h\<in\>\<bbb-R\><rsup|n>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsub|x>f<around*|(|h|)>|)><rsub|j>>|<cell|=>|<cell|\<pi\><rsub|j><around*|(|D<rsub|x>f<around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<pi\><rsub|j>\<circ\>D<rsub|x>f|)><around*|(|h|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.23.178>]>>>|<cell|D<rsub|x><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|h|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.24.178>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<in\>\<bbb-K\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|x,i><around*|(|\<pi\><rsub|j>\<circ\>f|)>\<cdot\>h<rsub|i>>>>>
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

  We turn our attention now to the differentiability of the scalar product of
  differentiable functions. For this we look at the differentiability of
  bilinear functions.

  <\theorem>
    <label|diff bilinear functions>Let <math|<around*|\<langle\>|X<rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|<around*|\<langle\>|X<rsub|1>\<cdot\>X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space of the product space <math|X<rsub|1>\<cdot\>X<rsub|2>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>,
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
  </theorem>

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
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>><rsub|>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|1>>|<cell|<below|=|<text|[eq:
      <reference|eq 16.17.180>]>><rsub|>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that
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
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>+h<rsub|1>,x<rsub|2>+h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,x<rsub|2>+h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>+h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<wide*|L<around*|(|x<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|1>+<wide*|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<wide-underbrace\>><rsub|2>+<wide*|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|3>+L<around*|(|h<rsub|1>,h<rsub|2>|)>-<wide*|L<around*|(|x<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|1>-<wide*|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<wide-underbrace\>><rsub|2>-<wide*|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|3>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>><rsub|<text|>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|<below|\<less\>|<text|[eq:
      <reference|eq 16.19.180>]>><rsub|>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>+1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|<below|\<leqslant\><rsub|<text|>>|<text|[eq:
      <reference|eq 16.19.180>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>>|<cell|>|<cell|>>>>
    </eqnarray*>

    which proves that <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is a Fréchet approximation of <math|L> at <math|x>, further
    <math|<rigid|x\<in\>X<rsub|1>\<cdot\>X<rsub|2><below|=|<text|[theore,:
    <reference|topology open set and interior>]>><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsup|\<circ\>>>>.
    Hence we have by [definition: <reference|diff differentiability>] that

    <\equation*>
      L<text| is Fréchet differentiable at >x<text| with
      >D<rsub|x>L=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
    </equation*>
  </proof>

  We return now to the differentiability of the scalar product of
  differentiable real or complex valued functions which is a extension of
  [theorem: <reference|diff derivative of a scalar product>]

  <\theorem>
    <label|diff differential of product of functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    \ <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space over <math|\<bbb-K\>>,
    \ <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>,
    <math|A\<subseteq\>X> open with <math|x\<in\>A<rsup|>> and

    <\equation*>
      f:A\<rightarrow\>\<bbb-K\><text| a function that is Fréchet
      differentiable at >x
    </equation*>

    <\equation*>
      g:A\<rightarrow\>Y<text| a function that is Fréchet differentiable at
      >x
    </equation*>

    then\ 

    <\equation*>
      f\<cdot\>g:A\<rightarrow\>X<text| defined by
      ><around*|(|f\<cdot\>g|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>
    </equation*>

    is Fréchet differentiable at <math|x> with\ 

    <\equation*>
      D<rsub|x><around*|(|f\<cdot\>g|)>=f<around*|(|x|)>\<cdot\>D<rsub|x>g+D<rsub|x>f\<cdot\>g<around*|(|x|)>
    </equation*>

    where <math|f<around*|(|x|)>\<cdot\>D<rsub|x>g+D<rsub|x>f\<cdot\>g<around*|(|x|)>:X\<rightarrow\>Y>
    is defined by

    <\equation*>
      <around*|(|f<around*|(|x|)>\<cdot\>D<rsub|x>g+D<rsub|x>f\<cdot\>g<around*|(|x|)>|)><around*|(|t|)>=f<around*|(|x|)>\<cdot\>D<rsub|x>
      g<around*|(|t|)>+D<rsub|x>f<around*|(|t|)>\<cdot\>g<around*|(|x|)>
    </equation*>

    <\note>
      The multiplication operator is the scalar product
      <math|\<cdot\>:\<bbb-K\>\<cdot\>Y\<rightarrow\>Y>. If
      <math|Y=\<bbb-K\>> then this reduce to the product operator in the
      field <math|\<bbb-K\>>.
    </note>
  </theorem>

  <\proof>
    Define the function\ 

    <\equation*>
      L:\<bbb-K\>\<cdot\>Y\<rightarrow\>Y<text| by
      >L<around*|(|x,y|)>=x\<cdot\>y
    </equation*>

    Let <math|y,z\<in\>Y,\<alpha\>,x\<in\>\<bbb-K\>> then we have\ 

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|L<around*|(|x,y+\<alpha\>\<cdot\>z|)>>|<cell|=>|<cell|x\<cdot\><around*|(|y+\<alpha\>\<cdot\>z|)>=x\<cdot\>y+\<alpha\>\<cdot\><around*|(|x\<cdot\>z|)>=L<around*|(|x,y|)>+\<alpha\>\<cdot\>L<around*|(|y,z|)>>>>>>
    </equation*>

    and for <math|\<alpha\>,x,y\<in\>\<bbb-K\>> and <math|z\<in\>Y> we have\ 

    <\equation*>
      L<around*|(|x+\<alpha\>\<cdot\>y,z|)>=<around*|(|x+\<alpha\>\<cdot\>y|)>\<cdot\>z=<around*|(|x\<cdot\>z|)>+\<alpha\>\<cdot\><around*|(|y\<cdot\>z|)>=L<around*|(|x,z|)>+\<alpha\>\<cdot\>L<around*|(|y,z|)>
    </equation*>

    proving that <math|L> is bilinear or\ 

    <\equation>
      <label|eq 16.20.181>L\<in\>Hom<around*|(|\<bbb-K\>,Y;Y|)>
    </equation>

    Further if <math|h=<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>\<bbb-K\>\<cdot\>Y>
    with <math|<around*|\||h<rsub|1>|\|>=<around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|Y>=1>
    then we have\ 

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|h<rsub|1>\<cdot\>h<rsub|2>|\<\|\|\>><rsub|Y>=<around*|\||h<rsub|1>|\|>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>>=1
    </equation*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that
    <math|L> is continuous. Combining this with [eq: <reference|eq
    16.20.181>] proves that <math|L\<in\>L<around*|(|\<bbb-K\>,Y;Y|)>>. Using
    the previous theorem [see theorem: <reference|diff bilinear functions>]
    it follows that\ 

    <\equation>
      <label|eq 16.33.181>\<forall\>y=<around*|(|y<rsub|1>,y<rsub|2>|)>\<in\>\<bbb-K\>\<cdot\>Y<text|
      <math|L> is differentiable at <math|y> with
      >D<rsub|<around*|(|y<rsub|1>,y<rsub|2>|)>>L=L<around*|(|y<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,y<rsub|2>|)>
    </equation>

    Define

    <\equation*>
      h:A\<rightarrow\>\<bbb-K\>\<cdot\>Y<text| by
      >h<around*|(|x|)>=<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>
    </equation*>

    then <math|\<pi\><rsub|1>\<circ\>h=f> and
    <math|\<pi\><rsub|2>\<circ\>h=g>. As <math|f>, <math|g> are Fréchet
    differentiable at <math|x> it follows that
    <math|\<pi\><rsub|1>\<circ\>h>, <math|\<pi\><rsub|2>\<circ\>h> are
    Fréchet differentiable at <math|x> with
    <math|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>h|)>=D<rsub|x>f> and
    <math|D<rsub|x><around*|(|\<pi\><rsub|2>\<circ\>h|)>=D<rsub|x>g> . So we
    can use [theorem: <reference|diff differential of a vector valued
    function>] giving\ 

    <\equation>
      <label|eq 16.34.181>h<text| is Fréchet differentiable at <math|x> with
      >\<pi\><rsub|1>\<circ\>D<rsub|x>h=D<rsub|x>f<text| and
      >\<pi\><rsub|2>\<circ\>D<rsub|x>h=D<rsub|x>g<text|>
    </equation>

    Now <math|\<forall\>y\<in\>A> we have

    <\equation*>
      <around*|(|L\<circ\>h|)><around*|(|y|)>=<around*|(|L<around*|(|h<around*|(|y|)>|)>|)>=L<around*|(|f<around*|(|y|)>,g<around*|(|y|)>|)>=f<around*|(|y|)>\<cdot\>g<around*|(|y|)>=<around*|(|f\<cdot\>g|)><around*|(|y|)>
    </equation*>

    proving that\ 

    <\equation*>
      L\<circ\>h=f\<cdot\>g
    </equation*>

    Using the Chain Rule [see theorem: <reference|diff chain rule>] with
    [eqs: <reference|eq 16.33.181> and <reference|eq 16.34.181>] we have that
    <math|L\<circ\>h> is Fréchet differentiable at <math|x> so that

    <\equation*>
      f\<cdot\>g<text| is Fréchet differentiable at >x<text|>
    </equation*>

    and <math|\<forall\>y\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|x><around*|(|g\<cdot\>f|)><around*|(|y|)>>|<cell|=>|<cell|D<rsub|x><around*|(|L\<circ\>h|)><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
      <rsub|h<around*|(|x|)>>L\<circ\>D<rsub|x>h|)><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|h<around*|(|x|)>>L<around*|(|D<rsub|x>h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>L<around*|(|D<rsub|x>h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff differential of a vector valued
      function>]>>>|<cell|D<rsub|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>L<around*|(|<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>h|)>,D<rsub|x><around*|(|\<pi\><rsub|2>\<circ\>h|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.34.181>]>>>|<cell|D<rsub|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>L<around*|(|<around*|(|D<rsub|x>f,D<rsub|x>g|)><rsub|\<ast\>><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>L<around*|(|D<rsub|x>f<around*|(|y|)>,D<rsub|x>g<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.33.181>]>>>|<cell|<around*|(|L<around*|(|f<around*|(|x|)>,\<ast\>|)>+L<around*|(|\<ast\>,g<around*|(|x|)>|)>|)><around*|(|D<rsub|x>f<around*|(|y|)>,D<rsub|x>g<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|f<around*|(|x|)>,D<rsub|x>g<around*|(|y|)>|)>+L<around*|(|D<rsub|x>f<around*|(|y|)>,g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>D<rsub|x>g<around*|(|y|)>+<around*|(|D<rsub|x>f<around*|(|y|)>|)>\<cdot\>g<around*|(|x|)><eq-number><label|eq
      16.116.313>>>>>
    </eqnarray*>

    So if we define <math|f<around*|(|x|)>\<cdot\>D<rsub|x>g+D<rsub|x>f\<cdot\>g<around*|(|x|)>:X\<rightarrow\>Y>
    is by

    <\equation*>
      <around*|(|f<around*|(|x|)>\<cdot\>D<rsub|x>g+D<rsub|x>f\<cdot\>g<around*|(|x|)>|)><around*|(|y|)>=f<around*|(|x|)>\<cdot\>D<rsub|x>
      g<around*|(|y|)>+D<rsub|x>f<around*|(|y|)>\<cdot\>g<around*|(|x|)>
    </equation*>

    then we have by [eq: <reference|eq 16.116.313>]

    <\equation*>
      D<rsub|x><around*|(|g\<cdot\>f|)>=f<around*|(|x|)>\<cdot\>D<rsub|x>g+D<rsub|x>f\<cdot\>g<around*|(|x|)>
    </equation*>
  </proof>

  <subsection|Usefull derivatives >

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
      <item>First note that\ 

      <\equation*>
        x\<in\>\<bbb-R\><below|=|<text|[theorem: <reference|topology open set
        and interior>]>>\<bbb-R\><rsup|\<circ\>><rsup|>
      </equation*>

      We use induction to prove that <math|<around*|(|\<cdot\>|)><rsup|n>>
      has a derivative at <math|x>

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<around*|(|\<cdot\>|)><rsup|n><text|
        has a derivative at >x<text| and ><around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rsub|x><rprime|'>=n\<cdot\><around*|(|\<cdot\>|)><rsup|n-1><around*|(|x|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|n=1> then
        <math|<around*|(|\<cdot\>|)><rsup|n>=<around*|(|\<cdot\>|)><rsup|1>=Id<rsub|\<bbb-R\>>>
        so that by [example: <reference|diff derivative of identity
        function>] and the fact that <math|\<bbb-R\>>

        \ is open

        <\equation*>
          <around*|(|\<cdot\>|)><rsup|1><text| has a derivative at >x<text|
          and >
        </equation*>

        and

        <\equation*>
          <around*|(|<around*|(|\<cdot\>|)><rsup|1>|)><rprime|'><rsub|x>=<around*|(|Id<rsub|\<bbb-R\>>|)><rprime|'><rsub|x>=1=1\<cdot\><around*|(|\<cdot\>|)><rsup|0><around*|(|x|)>=1\<cdot\><around*|(|\<cdot\>|)><rsup|1-1><around*|(|x|)>
        </equation*>

        \ proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Given <math|x\<in\>X>
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
          <around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>=n\<cdot\><around*|(|\<cdot\>|)><rsup|n-1><around*|(|x|)>
        </equation*>

        So <math|><math|<around*|(|\<cdot\>|)><rsup|n+1>> is the product of
        two functions that have a derivative at <math|x>, hence by [theorem:
        <reference|diff derivative of a scalar product>] we have that

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
      that <math|\<bbb-R\>\\<around*|{|0|}>> is a open set, hence by
      [theorem: <reference|topology open set and interior>] we have\ 

      <\equation>
        <label|eq 16.121.6><text|>x\<in\><around*|(|\<bbb-R\>\\<around*|{|0|}>|)><rsup|\<circ\>>
      </equation>

      Hence using [theorem: <reference|diff chain rule calculus>] we have
      that <math|<around*|(|\<cdot\>|)><rsup|z>> has a derivative at <math|x>
      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<cdot\>|)><rsup|z>|)><rprime|'><rsub|x>>|<cell|=>|<cell|<around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\><around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff chain rule calculus>]>>>|<cell|<around*|(|<around*|(|\<cdot\>|)><rsup|n>|)><rprime|'><rsub|x>\<cdot\><around*|(|<frac|1|\<ast\>>|)><rprime|'><rsub|<around*|(|\<cdot\>|)><rsup|n><around*|(|x|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.41.182>]>>>|<cell|n\<cdot\>x<rsup|n-1>\<cdot\><frac|-1|<around*|(|<around*|(|\<cdot\>|)><rsup|n><around*|(|x|)>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|n\<cdot\>x<rsup|n-1>\<cdot\><frac|-1|x<rsup|2\<cdot\>n>>>>|<row|<cell|>|<cell|=>|<cell|-n\<cdot\>x<rsup|n-1>\<cdot\><frac|1|x<rsup|n-1>\<cdot\>x<rsup|2\<cdot\>n-<around*|(|n-1|)>>>>>|<row|<cell|>|<cell|=>|<cell|-n\<cdot\><frac|1|x<rsup|n+1>>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><frac|1|x<rsup|n+1>>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><around*|(|\<cdot\>|)><rsup|-<around*|(|n+1|)>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><around*|(|\<cdot\>|)><rsup|z-1><around*|(|x|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|diff derivative of f/g>Let Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real (complex) numbers, <math|A\<subseteq\>\<bbb-R\>>,
    <math|x\<in\>A<rsup|\<circ\>>> and <math|f:A\<rightarrow\>\<bbb-K\>> and
    <math|g:A\<rightarrow\>\<bbb-K\>> are functions such that
    <math|g<around*|(|A|)>\<subseteq\>\<bbb-R\>\\<around*|{|0|}>>, <math|f>
    has a derivative at <math|x> and <math|g> has a derivative at <math|x>
    then the function\ 

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
    Let <math|x\<in\>A<rsup|\<circ\>>>. As <math|g:A\<rightarrow\>\<bbb-K\>>
    has a derivative <math|g<rprime|'><rsub|x>> at <math|x>,
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
    derivative of a scalar product>] that
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

  <subsection|Higher order Fréchet differentiation.>

  <\definition>
    <label|diff higher order differential>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> a
    function then the <math|n>-times differential
    <math|D<rsup|<around*|[|n|]>>f:\<frak-D\><rsub|f><rsup|n>\<rightarrow\>L<rsub|n><around*|(|X;Y|)>>
    is recursively defined by\ 

    <\description>
      <item*|n=1>Then

      <\equation*>
        \<frak-D\><rsup|1><rsub|f>=\<frak-D\><rsub|f>
      </equation*>

      and

      <\equation*>
        D<rsup|<around*|[|1|]>>f:\<frak-D\><rsup|1><rsub|f>\<rightarrow\>L<rsup|><around*|(|X;Y|)><below|=|<text|[definition:
        <reference|diff L_n(X;Y)>]>>L<rsub|1><around*|(|X;Y|)>
      </equation*>

      is defined by\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>f=D f
      </equation*>

      See [definition: <reference|diff differential>] for the definition of
      <math|\<frak-D\><rsub|f>> and <math|D f>.

      <item*|<math|1\<less\>n>>Then\ 

      <\equation*>
        \<frak-D\><rsup|n><rsub|f>=\<frak-D\><rsub|D<rsup|<around*|[|n-1|]>>f><around*|(|\<frak-D\><rsup|n-1><rsub|f>|)>
      </equation*>

      and

      <\equation*>
        D<rsup|<around*|[|n|]>>f:\<frak-D\><rsup|n><rsub|f>\<rightarrow\>L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)><below|=|<text|[definition:
        <reference|diff L_n(X;Y)>]>>L<rsub|n><around*|(|X;Y|)>
      </equation*>

      is defined by\ 

      <\equation*>
        D<rsup|<around*|[|n|]>>f=D<around*|(|D<rsup|<around*|[|n-1|]>>f|)>
      </equation*>

      See [definition: <reference|diff differential>] for the definition of
      <math|\<frak-D\><rsub|f>> and <math|D f>
    </description>

    <\note>
      It is always possible that <math|\<frak-D\><rsup|n><rsub|f>=\<varnothing\>>
      so that <math|D<rsup|n>f> is the empty function [see example:
      <reference|function empty function>].
    </note>

    <\note>
      If <math|\<frak-D\><rsup|n><rsub|f>=\<varnothing\>> then

      <\equation*>
        \<frak-D\><rsup|n+1><rsub|f>=\<frak-D\><rsub|D<rsup|<around*|[|n|]>>f><around*|(|\<frak-D\><rsup|n><rsub|f>|)><below|=|<text|def>><around*|{|x\<in\>\<frak-D\><rsup|n>=\<varnothing\>\|D<rsup|<around*|[|n|]>>f<text|
        is Fréchet differentiable at >x|}>=\<varnothing\>
      </equation*>

      <\convention>
        For simplicity we refer to the function
        <math|D<rsup|<around*|[|n|]>>f:\<frak-D\><rsup|n><rsub|f>\<rightarrow\>L<rsub|n><around*|(|X;Y|)>>
        just by the name of its graph <math|D<rsup|<around*|[|n|]>>f>. We
        always assume that the domain of <math|D<rsup|<around*|[|n|]>>f> is
        <math|\<frak-D\><rsup|n><rsub|f>> and the codomain is
        <math|L<rsub|n><around*|(|X;Y|)>>. Likewise if
        <math|U\<subseteq\>\<frak-D\><rsup|n><rsub|f>> then
        <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>> will refer to
        the function <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)>>.
      </convention>
    </note>
  </definition>

  The domains <math|\<cal-D\><rsup|n><rsub|f>> of the differential
  <math|D<rsup|<around*|[|n|]>>f> is decreasing with <math|n>.

  <\theorem>
    <label|diff higher order differential domains>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function then we have
    <math|\<forall\>n,m\<in\>\<bbb-N\>> with <math|n\<leqslant\>m> that\ 

    <\equation*>
      \<frak-D\><rsup|<around*|[|n|]>><rsub|f>\<subseteq\>\<frak-D\><rsup|<around*|[|m|]>><rsub|f>\<subseteq\>\<frak-D\><rsub|f>\<subseteq\>A<rsup|\<circ\>>\<subseteq\>A
    </equation*>
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>> then by [definition: <reference|diff higher
    order differential>] we have that

    <\equation*>
      \<frak-D\><rsup|n+1><rsub|f>=\<frak-D\><rsub|D<rsup|<around*|[|n|]>>f><around*|(|\<frak-D\><rsup|n><rsub|f>|)><below|=|<text|[theorem:
      <reference|diff differential>]>><around*|{|x\<in\>\<frak-D\><rsup|n><rsub|f>\|D<rsup|<around*|[|n|]>><rsub|f><text|
      is Fréchet differentiable at >x|}>\<subseteq\>\<frak-D\><rsup|n><rsub|f>
    </equation*>

    As <math|m\<leqslant\>n> implies <math|m\<in\><around*|{|1,\<ldots\>,n|}>>
    it follows from the above and [theorem: <reference|recursion order>] that\ 

    <\equation*>
      \<frak-D\><rsup|n><rsub|f>\<subseteq\>\<frak-D\><rsup|m><rsub|f>\<subseteq\>\<frak-D\><rsup|1><rsub|f><below|=|<text|[definition:
      <reference|diff higher order differential>]>>\<frak-D\><rsub|f><below|\<subseteq\>|<text|[theorem:
      <reference|diff differential>]>>A<rsup|\<circ\>>\<subseteq\>A
    </equation*>
  </proof>

  Once the <math|n>-times differential is defined we can define
  <math|n>-times differentiability at a point and the <math|n>-times
  differential at a point.

  <\definition>
    <label|diff higher order differentiation>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function then we say that

    <\equation*>
      f<text| is >n<text|-times differentiable at >x<text| iff
      >x\<in\>\<frak-D\><rsup|n><rsub|f>
    </equation*>

    The <math|n>-times differential of <math|f> at <math|x> noted as
    <math|D<rsup|<around*|[|n|]>><rsub|x>f> is then defined to be\ 

    <\equation*>
      D<rsup|<around*|[|n|]>><rsub|x>f=D<rsup|<around*|[|n|]>>f<around*|(|x|)>\<in\>L<rsub|n><around*|(|X;Y|)>
    </equation*>

    <\convention>
      If we say that\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|x>f<text| exist>
      </equation*>

      then we mean that\ 

      <\equation*>
        f<text| is >n<text|-times differentiable at >x<text| with
        differential >D<rsup|<around*|[|n|]>><rsub|x>f=D<rsup|<around*|[|n|]>>f<around*|(|x|)><text|
        at >x
      </equation*>
    </convention>
  </definition>

  <\theorem>
    <label|diff n-times and m-times differentiability>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>, <math|x<rsub|>\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function that is <math|n>-times
    differentiable at <math|x> then <math|f> is Fréchet differentiable at
    <math|x> and <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}>> we have
    that <math|f> is <math|m>-times differentiable at <math|x>.
  </theorem>

  <\proof>
    Using [theorem: <reference|diff higher order differential domains>] we
    have that

    <\equation*>
      \<frak-D\><rsup|n><rsub|f>\<subseteq\>\<frak-D\><rsup|m><rsub|f>\<subseteq\>\<frak-D\><rsub|f>
    </equation*>

    If <math|f> is <math|n>-times differentiable at <math|x> we have by
    [definition: <reference|diff higher order differentiation>] that
    <math|x\<in\>\<frak-D\><rsup|n><rsub|f>> which, as
    <math|\<frak-D\><rsup|n><rsub|f>\<subseteq\>\<frak-D\><rsup|m><rsub|f>>,
    proves that <math|x\<in\>\<frak-D\><rsup|m><rsub|f>>, Hence using
    [definition: <reference|diff higher order differentiation>] <math|f> is
    <math|m>-times differentiable at <math|x>. Further, as
    <math|x\<in\>\<frak-D\><rsup|1><rsub|f>\<subseteq\>\<frak-D\><rsub|f>=<around*|{|x\<in\>A\|f<text|
    is Fréchet differentiable at >x|}>>, <math|f> is Fréchet differentiable
    at <math|x>.
  </proof>

  <\definition>
    <label|diff higher order differentiation on a open set>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,<math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X,> <math|f:A\<rightarrow\>Y> a
    function and a open set <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>
    then we say that\ 

    <\equation*>
      f<text| is >n<text|-times differentiable on >U
    </equation*>

    iff\ 

    <\equation*>
      \<forall\>x\<in\>U<text| we have that >f<text| is >n<text|-times
      differentiable at x>
    </equation*>

    As <math|f> is <math|n>-times differentiable at <math|x> iff
    <math|x\<in\>\<frak-D\><rsup|n><rsub|f>> it follows that\ 

    <\equation*>
      f<text| is >n<text|-times differentiable on >U<text|
      >\<Leftrightarrow\><text| >U\<subseteq\>\<frak-D\><rsup|n><rsub|f>
    </equation*>

    <\note>
      If <math|dom<around*|(|f|)>=A=U> then we say that <math|f> is
      <math|n>-times differentiable.
    </note>
  </definition>

  We consider now <math|\<infty\>>-times differentiability.

  <\definition>
    <label|diff inifint=ite differentiable><index|<math|\<infty\>>-times
    differentibility>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, a differential domain set <math|A\<subseteq\>X> and
    <math|f:A\<rightarrow\>Y> a function then\ 

    <\equation*>
      f<text| is >\<infty\><text|-times differentiable at
      <math|x\<in\>A<rsup|>> iff >\<forall\>n\<in\>\<bbb-N\><text| f is
      >n<text|-times differentiable at >x
    </equation*>

    Further if <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>
    is a open set in <math|X> \ then

    <\equation*>
      f<text| is >\<infty\><text|-times differentiable on >U<text| iff
      >\<forall\>n\<in\>\<bbb-N\><text| f> is n<text|-times differentiable on
      >U
    </equation*>
  </definition>

  We have now the following equivalences for differentiability at a point and
  differentiability on a open set.

  <\theorem>
    <label|diff higher order differentiation (1)>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> and <math|f:A\<rightarrow\>Y> a
    function then we have the following equivalences:\ 

    <\enumerate>
      <item><math|f> is <math|n>-times differentiable at <math|x>

      <item>We have for <math|n> either:

      <\description>
        <item*|<math|n=1>><math|f> is Fréchet differentiable at <math|x> and
        <math|D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f<rsub|>>

        <item*|<math|1\<less\>n>><math|D<rsup|<around*|[|n-1|]>>f> is Fréchet
        differentiable at <math|x> and <math|D<rsup|<around*|[|n|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|n-1|]>>f|)>>
      </description>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As <math|f> is <math|n>-times
      differentiable at <math|x> we have by [definition: <reference|diff
      higher order differentiation>]\ 

      <\equation>
        <label|eq 16.79.5>x\<in\>\<frak-D\><rsup|n>f<text| and
        >D<rsup|<around*|[|n|]>><rsub|x>f=D<rsup|<around*|[|n|]>>f<around*|(|x|)>\<in\>L<rsub|n><around*|(|X;Y|)>
      </equation>

      for <math|n\<in\>\<bbb-N\>> we have either:\ 

      <\description>
        <item*|<math|n=1>>Then by [definition: <reference|diff higher order
        differential>] <math|\<frak-D\><rsup|1><rsub|f>=\<frak-D\><rsub|f>=<around*|{|x\<in\>A\|f<text|
        is Fréchet differentiable at >x|}>> Hence as by [eq: <reference|eq
        16.79.5>] <math|x\<in\>\<frak-D\><rsup|1><rsub|f>>

        <\equation*>
          f<text| is Fréchet differentiable at >x
        </equation*>

        and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|x>f<below|=|<text|[eq: <reference|eq
          16.79.5>]>>D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
          f<around*|(|x|)><below|=|<text|[definition: <reference|diff
          differential>] >>D<rsub|x>f
        </equation*>

        <item*|<math|1\<less\>n>>Then by [definition: <reference|diff higher
        order differential>]

        <\equation*>
          \<frak-D\><rsup|<around*|[|n|]>><rsub|f>=D<rsub|D<rsup|<around*|[|n-1|]>>f><around*|(|\<frak-D\><rsup|<around*|[|n-1|]>><rsub|f>|)>=<around*|{|x\<in\>\<frak-D\><rsup|<around*|[|n-1|]>>f\|D<rsup|<around*|[|n-1|]>>f<text|
          is Fréchet differentiable at >x|}>
        </equation*>

        and\ 

        <\equation>
          <label|eq 16.80.5>D<rsup|<around*|[|n|]>>f=D<around*|(|D<rsup|n-1>f|)>
        </equation>

        Hence <math|>as by [eq: <reference|eq 16.79.5>]
        <math|x\<in\>\<frak-D\><rsup|n>f> we have that\ 

        <\equation>
          <label|eq 16.81.5>D<rsup|<around*|[|n-1|]>>f<text| is Fréchet
          differentiable at >x
        </equation>

        and\ 

        <\equation>
          <label|eq 16.82.5>D<rsup|<around*|[|n|]>><rsub|x>f<below|=|<text|[eq:
          <reference|eq 16.79.5>]>>D<rsup|<around*|[|n|]>>f<around*|(|x|)><below|=|<text|[eq:
          <reference|eq 16.80.5>]>><around*|(|D<around*|(|D<rsup|n-1>f|)>|)><around*|(|x|)>=D<rsub|x><around*|(|D<rsup|n-1>f|)>
        </equation>
      </description>

      <item*|<math|2\<Rightarrow\>1>>For <math|n\<in\>\<bbb-N\>> we have
      either:\ 

      <\description>
        <item*|<math|n=1>>As <math|f> is Fréchet differentiable at <math|x>
        it follows by [definition: <reference|diff differential>] that\ 

        <\equation*>
          x\<in\>\<frak-D\><rsub|f><below|=|<text|[definition:
          <reference|diff higher order differential>]>>\<frak-D\><rsup|1><rsub|f>
        </equation*>

        which by [definition: <reference|diff higher order differentiation>]
        means that\ 

        <\equation*>
          f<text| is 1-times differentible at >x
        </equation*>

        <item*|<math|1\<less\>n>>By the hypothesis

        <\equation*>
          D<rsup|<around*|[|n-1|]>>f<text| is Fréchet differentiable at >x
        </equation*>

        So that <math|x\<in\>\<frak-D\><rsup|><rsub|D<rsup|<around*|[|n-1|]>>f><around*|(|\<frak-D\><rsup|n-1><rsub|f>|)><below|=|<text|[definition:
        <reference|diff higher order differential>]>>\<frak-D\><rsup|n><rsub|f>>
        which by [definition: <reference|diff higher order differentiation>]
        proves that\ 

        <\equation*>
          f<text| is >n<text|-times differentiable at >x
        </equation*>
      </description>
    </description>
  </proof>

  The problem with <math|D<rsub|x><rsup|<around*|[|n|]>>f> is that it is a
  element of <math|L<rsub|n><around*|(|X;Y|)>> so that for example

  <\equation*>
    D<rsub|x><rsup|<around*|[|3|]>>f\<in\>L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>
  </equation*>

  and we have to deal with expressions like
  <math|<around*|(|<around*|(|D<rsub|x><rsup|<around*|[|3|]>>f<around*|(|h<rsub|1>|)>|)><around*|(|h<rsub|2>|)>|)><around*|(|h<rsub|3>|)>>
  which we note as <math|D<rsup|<around*|[|3|]>><rsub|x>f<around*|(|h<rsub|1>:\<ldots\>:h<rsub|3>|)>>.
  Lucky we can use [theorem: <reference|diff linear to multilinear>] to turn
  <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>> in a a multilinear mapping.\ 

  <\definition>
    <label|diff higher order differentiation
    (2)><index|<math|D<rsup|n>f<around*|(|x|)>>>Let <math|n\<in\>\<bbb-N\>>,
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
    <math|D<rsub|x><rsup|1>f=D<rsub|x><rsup|<around*|[|1|]>>f<below|=|<text|[theorem:
    <reference|diff higher order differentiation (1)>]>>D<rsub|x>f> and for
    <math|<rigid|n\<in\>\<bbb-N\>\\<around*|{|1|}>>>

    <\equation*>
      D<rsub|x><rsup|n>f<around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>=D<rsub|x><rsup|<around*|[|n|]>>f<around*|[|h<rsub|1>:\<ldots\>:h<rsub|n>|]>.
    </equation*>
  </note>

  We use in general <math|D<rsub|x><rsup|<around*|[|n|]>>f> because the
  proofs are simpler, however if we have to calculate the <math|n>-the
  differential we can use the multi-linear version <math|D<rsub|x><rsup|n>f>.

  <\theorem>
    <label|diff higher order differentiability condition>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>> with
    <math|U\<subseteq\>A> and <math|f:A\<rightarrow\>Y> a function then we
    have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is >n<text|-times
      differentiable on >U>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<rsub|\|U><text|
      is >n<text|-times differentiable on >U>|<cell|>>>>
    </eqnarray*>

    Further if <math|f> or <math|f<rsub|\|U>> is <math|n>-times
    differentiable on <math|U> then we havw\ 

    <\equation*>
      \<forall\>x\<in\>U<text| we have that
      >D<rsup|<around*|[|n|]>><rsub|x>f=D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|U>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We use induction to prove this, so let

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f<text| is >n<text|-times
        differentiable on >U<text| then >f<rsub|\|U><text| is >n<text|-times
        differentiable on >U<text| with >\<forall\>x\<in\>U<text|
        >D<rsup|<around*|[|n|]>><rsub|x>f=D<rsup|;n><rsub|x>f<rsub|\|U>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>Let <math|x\<in\>U> then, as <math|f> is
        <math|1>-times differentiable on <math|U>, <math|f> is <math|1>-times
        differentiable at <math|x>, which by [theorem: <reference|diff higher
        order differentiation (1)>] proves that\ 

        <\equation*>
          f<text| is Fréchet differentiable at >x<text| with
          >D<rsup|<around*|[|1|]>><rsub|x>f=D<rsub|x>f
        </equation*>

        As \ <math|x\<in\>U<rsup|\<circ\>><below|=|<text|[theorem:
        <reference|topology open set and interior>]>>U\<subseteq\>A> it
        follows from [theorem: <reference|diff differentiability is a local
        property>] that

        <\equation*>
          f<rsub|\|U><text| is Fréchet differentiable at >x<text| with
          >D<rsub|x>f=D<rsub|x>f<rsub|\|U>
        </equation*>

        Using [theorem: <reference|diff higher order differentiation (1)>]
        again it follows that\ 

        <\equation*>
          f<rsub|\|U><text| is >1<text|-times differentiable at >x<text| with
          >D<rsub|x><rsup|<around*|[|1|]>>f<rsub|\|U>=D<rsub|x>f<rsub|\|>
        </equation*>

        To summarize the above we have that\ 

        <\equation*>
          f<rsub|\|U><text| is >1<text|-times differentiable on >U<text| with
          >\<forall\>x\<in\>U<text| >D<rsup|<around*|[|1|]>><rsub|x>f<rsub|\|U>=D<rsup|<around*|[|1|]>><rsub|x>f
        </equation*>

        which proves that\ 

        <\equation*>
          1\<in\>S
        </equation*>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable on <math|U> we have
        that\ 

        <\equation>
          <label|eq 16.83.6>U\<subseteq\>\<frak-D\><rsup|n+1><rsub|f><below|\<subseteq\>|<text|[theorem:
          <reference|diff higher order differential
          domains>]>>\<frak-D\><rsup|n><rsub|f><below||>
        </equation>

        so that <math|f> is <math|n>-times differentiable at <math|U>. As
        <math|n\<in\>S> it follows that\ 

        <\equation>
          <label|eq 16.84.6>f<rsub|\|U><text| is <math|n<text|-times
          differentiable on >U> [or <math|U\<subseteq\>\<frak-D\><rsup|n><rsub|f<rsub|\|U>>>]
          with >\<forall\>x\<in\>U<text| >D<rsub|x><rsup|<around*|[|n|]>>f=D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|U>
        </equation>

        Further as <math|dom<around*|(|f<rsub|\|U>|)>=U> we have that
        <math|\<frak-D\><rsup|n><rsub|f<rsub|\|U>>\<subseteq\>U<rsup|\<circ\>><below|=|<text|[theorem:
        <reference|topology open set and interior>]>>U> which combined with
        [eq: <reference|eq 16.84.6>] proves that\ 

        <\equation>
          <label|eq 16.85.6>dom<around*|(|D<rsup|<around*|[|n|]>><rsub|>f<rsub|\|U>|)>=\<frak-D\><rsup|n><rsub|f<rsub|\|U>>=U
        </equation>

        Further <math|\<forall\>x\<in\>X> we have that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f<rsub|\|U><around*|(|x|)><below|=|<text|[definition:
          <reference|diff higher order differentiation>]>>D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|U><below|=|<text|[eq:
          <reference|eq 16.84.6>]>>D<rsup|<around*|[|n|]>><rsub|x>f<below|=|<text|[definition:
          <reference|diff higher order differentiation>]>>D<rsup|<around*|[|n|]>>f<around*|(|x|)>
        </equation*>

        which proves that\ 

        <\equation>
          <label|eq 16.86.6>D<rsup|<around*|[|n|]>>f<rsub|\|U>=<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>
        </equation>

        Let <math|x\<in\>U> then, as <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> [because
        <math|f> is <math|<around*|(|n+1|)>>-times differentiable on
        <math|U>], it follows from [theorem: <reference|diff higher order
        differentiation (1)>] that\ 

        <\equation>
          <label|eq 16.87.6>D<rsup|<around*|[|n|]>>f<text| is Fréchet
          differentiable at >x<text| with
          >D<rsup|<around*|[|n+1|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>
        </equation>

        As <math|x\<in\>U<rsup|\<circ\>><below|=|<text|[theorem:
        <reference|topology open set and interior>]>>U\<subseteq\>A> it
        follows from the above by [theorem: <reference|diff differentiability
        is a local property>] that\ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U><text| is Fréchet
          differentiable at >x<text| with
          >D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f<rsub|>|)>
        </equation*>

        which combined with [eq: <reference|eq 16.86.6>] proves that\ 

        <\equation>
          <label|eq 16.88.6>D<rsup|<around*|[|n|]>>f<rsub|\|U><text| is
          Fréchet differentiable at >x<text| with
          >D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f<rsub|\|U>|)>=D<rsub|x><around*|(|D<rsup|n>f|)>
        </equation>

        so that by [theorem: <reference|diff higher order differentiation
        (1)>] we have\ 

        <\equation*>
          f<rsub|\|U><text| is ><around*|(|n+1|)><text|-times differentiable
          at >x<text| >
        </equation*>

        with

        <\equation*>
          D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|U>=D<rsub|x><rsup|><around*|(|D<rsup|<around*|[|n|]>>f<rsub|\|U>|)><below|=|<text|[eq:
          <reference|eq 16.88.6>]>>D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)><below|=|<text|[eq:
          <reference|eq 16.87.6>]>>D<rsup|<around*|[|n+1|]>><rsub|x>f
        </equation*>

        As <math|x\<in\>U> has been chosen arbitrary if follows that\ 

        <\equation*>
          f<rsub|\|U><text| is ><around*|(|n+1|)><text|-times differentiable
          at >x<text| with >\<forall\>x\<in\>U<text|
          >D<rsup|<around*|[|n+1|]>><rsub|x>f=D<rsup|<around*|[|n+1|]>><rsub|x>f
        </equation*>

        which proves that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>We use induction to prove this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|If f<rsub|\|U><text| is >n<text|-times
        differentiable on >U<text| then >f<text| is >n<text|-times
        differentiable on >U<text| with >\<forall\>x\<in\>U<text|
        >D<rsup|<around*|[|n|]>><rsub|x>f=D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|U>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>Let <math|x\<in\>U> then as <math|f<rsub|\|U>>
        is <math|1>-times differentiable on <math|U> we have that
        <math|f<rsub|\|U>> is <math|1>-times differentiable at <math|x>,
        which by [theorem: <reference|diff higher order differentiation (1)>]
        proves that

        <\equation*>
          f<rsub|\|U><text| is Fréchet differentiable at >x<text| with
          >D<rsup|<around*|[|1|]>><rsub|x>f<rsub|\|U>=D<rsub|x>f<rsub|\|U>
        </equation*>

        As <math|x\<in\>U<rsup|\<circ\>><below|=|<text|[theorem:
        <reference|topology open set and interior>]>>U\<subseteq\>A> it
        follows then from [theorem: <reference|diff differentiability is a
        local property>] that

        <\equation*>
          f<text| is Fréchet differentiable at >x<text| with
          >D<rsub|x>f=D<rsub|x>f<rsub|\|U>
        </equation*>

        Using [theorem: <reference|diff higher order differentiation (1)>]
        again it follows then that

        <\equation*>
          f<text| is >1<text|-times differentiable at >x<text| with
          >D<rsup|<around*|[|1|]>><rsub|x>f=D<rsub|x>f
        </equation*>

        To summarize the above we have that\ 

        <\equation*>
          f<text| is >1<text|-times differentiable on >U<text| with
          >\<forall\>x\<in\>U<text| >D<rsup|<around*|[|1|]>><rsub|x>f=D<rsup|<around*|[|1|]>><rsub|x>f<rsub|\|U><rsup|>
        </equation*>

        which proves that\ 

        <\equation*>
          1\<in\>S
        </equation*>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1>>If <math|f<rsub|\|U>>
        is <math|<around*|(|n+1|)>>-times differentiable on <math|U> we have
        that\ 

        <\equation>
          <label|eq 16.83.5>U\<subseteq\>\<frak-D\><rsup|n+1><rsub|f<rsub|\|U>><below|\<subseteq\>|<text|[theorem:
          <reference|diff higher order differential
          domains>]>>\<frak-D\><rsup|n><rsub|f<rsub|\|U>><below||>
        </equation>

        so that <math|f<rsub|\|U>> is <math|n>-times differentiable at
        <math|U>. As <math|n\<in\>S> it follows that\ 

        <\equation>
          <label|eq 16.84.5>f<text| is <math|n<text|-times differentiable on
          >U> [or <math|U\<subseteq\>\<frak-D\><rsup|n><rsub|f>>] with
          >\<forall\>x\<in\>U<text| >D<rsub|x><rsup|<around*|[|n|]>>f=D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|U>
        </equation>

        Further as <math|dom<around*|(|f<rsub|\|U>|)>=U> we have that
        <math|\<frak-D\><rsup|n><rsub|f<rsub|\|U>>\<subseteq\>U<rsup|\<circ\>><below|=|<text|[theorem:
        <reference|topology open set and interior>]>>U> which combined with
        [eq: <reference|eq 16.83.5>] proves that\ 

        <\equation>
          <label|eq 16.85.5>dom<around*|(|D<rsup|<around*|[|n|]>><rsub|>f<rsub|\|U>|)>=\<frak-D\><rsup|n><rsub|f<rsub|\|U>>=U
        </equation>

        Further <math|\<forall\>x\<in\>X> we have that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f<around*|(|x|)><below|=|<text|[definition:
          <reference|diff higher order differentiation>]>>D<rsup|<around*|[|n|]>><rsub|x>f<below|=|<text|[eq:
          <reference|eq 16.84.5>]>>D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|U><below|=|<text|[definition:
          <reference|diff higher order differentiation>]>>D<rsup|<around*|[|n|]>>f<rsub|\|U><around*|(|x|)>
        </equation*>

        which proves that\ 

        <\equation>
          <label|eq 16.86.5>D<rsup|<around*|[|n|]>>f<rsub|\|U>=<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>
        </equation>

        Let <math|x\<in\>U> then, as <math|f<rsub|\|U>> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> [because
        <math|f> is <math|<around*|(|n+1|)>>-times differentiable on
        <math|U>], it follows from [theorem: <reference|diff higher order
        differentiation (1)>] that

        <\equation>
          <label|eq 16.87.5>D<rsup|<around*|[|n|]>>f<rsub|\|U><text| is
          Fréchet differentiable at >x<text| with
          >D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|U>=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f<rsub|\|U>|)>
        </equation>

        Hence we have by [eq: <reference|eq 16.86.5>] that

        <\equation>
          <label|eq 16.94.7><around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U><text|
          is Fréchet differentiable at >x<text| with
          >D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|U>=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>
        </equation>

        As <math|<rigid|x\<in\>U<rsup|\<circ\>><below|=|<text|[theorem:
        <reference|topology open set and interior>]>>U\<subseteq\>A>> it
        follows then from the above by [theorem: <reference|diff
        differentiability is a local property>] that

        <\equation*>
          D<rsup|<around*|[|n|]>>f<text| is Fréchet differentiable at
          >x<text| >
        </equation*>

        with\ 

        <\equation*>
          D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U><below|=|<text|[eq:
          <reference|eq 16.94.7>]>>D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|U>
        </equation*>

        Using then [theorem: <reference|diff higher order differentiation
        (1)>] on the above it follows that

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable at >x
        </equation*>

        with

        <\equation*>
          D<rsup|<around*|[|n+1|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+1|]>>f<rsub|\|U>
        </equation*>

        As <math|x\<in\>U> has been chosen arbitrary if follows that\ 

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable on
          >U<text| and >\<forall\>x\<in\>U<text| we have
          >D<rsup|<around*|[|n+1|]>><rsub|x>f=D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|U>
        </equation*>

        which proves that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  We can use the above theorem to specify a condition for a function to be
  <math|n>-times differentiable.

  <\theorem>
    <label|diff higher order differentiation (3)>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>
    be normed spaces,A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f:A\<rightarrow\>Y> a function such that
    <math|\<exists\>U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>
    with <math|x\<in\>U\<subseteq\>A> such that <math|f<rsub|\|U>> is
    <math|n>-times differentiable on <math|U> then <math|f> is <math|n>-times
    differentiable at <math|x>.
  </theorem>

  <\proof>
    As <math|f<rsub|\|U>> is <math|n>-times differentiable on <math|U> it
    follows from [theorem: <reference|diff higher order differentiability
    condition>] that <math|f> is <math|n>-times differentiable on <math|U>.
    As <math|x\<in\>U> it follows that <math|f> is <math|n>-times
    differentiable on <math|x>
  </proof>

  We define now the concept of a function of class <math|C<rsup|n>> on a open
  set.

  <\definition>
    <label|diff class C^n><index|<math|C<rsup|n>>><index|<math|C<rsup|0>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>.
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>> a open
    set in <math|X> and <math|f:A\<rightarrow\>Y> a function then we say that
    <math|f> is of class \ <math|C<rsup|n>> on <math|U> iff for the following
    cases of <math|n> we have:

    <\description>
      <item*|<math|n=0>>Then <math|f<rsub|\|U>> is continuous

      <item*|<math|n\<in\>\<bbb-N\>>><math|>Then <math|f> is <math|n>-times
      differentiable on <math|U> and <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>>
      is continuous\ 
    </description>
  </definition>

  We can extend the above definition to functions of class
  <math|C<rsup|\<infty\>>> on a open set.

  <\definition>
    <label|diff class C^@@><index|<math|C<rsup|\<infty\>>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|A\<subseteq\>X>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>> a open
    set in <math|X> and <math|f:A\<rightarrow\>Y> a function then <math|f> is
    of class \ <math|C<rsup|\<infty\>>> on <math|U> iff
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> <math|f> is of class
    <math|C<rsup|n>>.
  </definition>

  In the special case where the open set is the domain of the function we say
  that the function is of class <math|C<rsup|n>> as is show in the following
  definition.

  <\definition>
    <label|diff class C^n (1)>Let <math|n\<in\>\<bbb-N\><rsub|0><big|cup><around*|{|\<infty\>|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>
    a open set in <math|X> and <math|f:U\<rightarrow\>Y> a function then we
    say that <math|f> is of class \ <math|C<rsup|n>> iff <math|f> is of class
    <math|C<rsup|n>> on <math|U>
  </definition>

  In the above cases the definition of a function of class <math|C<rsup|n>>
  becomese simpler as we don't have to work with restricted functions as is
  shown in the following theorem.

  <\theorem>
    <label|diff class C^n (2)>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>
    a open set in <math|X> and <math|f:U\<rightarrow\>Y> a function then we
    have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is of class
      >C<rsup|n>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|n=0<text|
      and >f<text| is continuous>>|<cell|>>|<row|<cell|>|<cell|or>|<cell|>>|<row|<cell|>|<cell|n\<in\>\<bbb-N\><text|
      and >U=\<frak-D\><rsub|f><rsup|n><text| and
      >D<rsup|<around*|[|n|]>>f<text| is continuous>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>For <math|n> we have either\ 

      <\description>
        <item*|<math|n=0>>Then, as <math|f> is of class <math|C<rsup|0>> on
        <math|U>, <math|f<rsub|\|U>> is continuous. As
        <math|U=dom<around*|(|f|)>> we have that <math|f=f<rsub|\|U>> so that
        <math|f> is continuous.

        <item*|<math|n\<in\>\<bbb-N\>>>Then, as <math|f> is of class
        <math|C<rsup|n>> on <math|U>, <math|f> is <math|n>-times
        differentiable on <math|U> and <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>>
        is continuous. Hence we have that
        <math|U\<subseteq\>\<frak-D\><rsup|<around*|[|n|]>><rsub|f><below|\<subseteq\>|<text|[theorem:
        <reference|diff higher order differential
        domains>]>>U<rsup|0>\<subseteq\>U> which proves that\ 

        <\equation*>
          U=\<frak-D\><rsup|n><rsub|f>=dom<around*|(|D<rsup|<around*|[|n|]>>f|)>
        </equation*>

        Hence <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>=D<rsup|<around*|[|n|]>>f>
        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f<text| is continuous>
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>For <math|n> we have either\ 

      <\description>
        <item*|<math|n=0>>Then, as <math|U=dom<around*|(|f|)>> we have that
        <math|f=f<rsub|\|U>> so that, as <math|f> is continuous,
        <math|f<rsub|\|U>> is continuous. Hence\ 

        <\equation*>
          f<text| is of class >C<rsup|0> on U
        </equation*>

        <item*|<math|n\<in\>\<bbb-N\>>>As <math|U=\<frak-D\><rsup|n><rsub|f>>
        it follows that\ 

        <\equation*>
          f<text| is >n<text|-times differentiable on >U
        </equation*>

        and

        <\equation*>
          <around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>=D<rsup|<around*|[|n|]>>f
        </equation*>

        which, as <math|D<rsup|<around*|[|n|]>>f> is continuous proves that\ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U><text| is
          continuous>
        </equation*>

        Hence\ 

        <\equation*>
          f<text| is of class >C<rsup|n>
        </equation*>
      </description>
    </description>
  </proof>

  Every <math|\<infty\>>-times differentiable function on a open set is
  <math|C<rsup|\<infty\>>> on this set as is proved in the following theorem.

  <\theorem>
    <label|diff C-infinity condition>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, a tengential spanning set <math|A\<subseteq\>X>,
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>> a open
    set in <math|X> and <math|f<rigid|:A\<rightarrow\>Y>> a function then we
    have \ 

    <\equation*>
      <text|>f<text| is >\<infty\><text|-times differentiable on >U
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<text| is of class >C<rsup|\<infty\>><text| on >U
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>> Let <math|n\<in\>\<bbb-N\><rsub|0>> then
      we have either:\ 

      <\description>
        <item*|<math|n=0>>Let <math|x\<in\>U> then, as <math|f> is
        <math|\<infty\>>-times differentiable on <math|U>, <math|f> is
        <math|1>-times differentiable on <math|U>, hence <math|1>-times
        differentiable at <math|x>. Using [theorem: <reference|diff higher
        order differentiation (1)>] it follows that <math|f> is Fréchet
        differentiable at <math|x>. Using [theorem: <reference|diff
        differentiable function is continuous>] it follows that <math|f> is
        continuous at <math|x>. By [theorem: <reference|continuity and
        subspace topology (1)>] it follows that <math|f<rsub|\|U>> is
        continuous at <math|x>. As this is valued for every <math|x\<in\>U>
        it follows that\ 

        <\equation*>
          f<rsub|\|U><text| is a continuous function>
        </equation*>

        or that\ 

        <\equation*>
          f<text| is of class >C<rsup|0><text| on >U
        </equation*>

        <item*|<math|n\<in\>\<bbb-N\>>>As <math|f> is <math|\<infty\>>-times
        differentiable on <math|U> it follows that

        <\equation>
          <label|eq 16.95.6>f<text| is >n<text|-times differentiable on
          >U<text| or equivalently >U\<subseteq\>\<frak-D\><rsup|n><rsub|f>
        </equation>

        Further as <math|f> if <math|\<infty\>>-times differentiable on
        <math|U> it follows that\ 

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable on >U
        </equation*>

        Let <math|x\<in\>U> then by the above <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x.> Hence
        using [theorem: <reference|diff higher order differentiation (1)>] it
        follows that <math|D<rsup|<around*|[|n|]>>f> is differentiable at
        <math|x> so that by [theorem: <reference|diff differentiable function
        is continuous>] <math|D<rsup|<around*|[|n|]>>f> is continuous at
        <math|x>. Hence using [theorem: <reference|continuity and subspace
        topology (1)>] it follows that <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U>>
        is continuous at <math|x>. As this is valued for every
        <math|x\<in\>U> it follows that\ 

        <\equation>
          <label|eq 16.96.6><around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|U><text|
          is a continuous function>
        </equation>

        From [eqs: <reference|eq 16.95.6>, <reference|eq 16.96.6>] it follows
        that\ 

        <\equation*>
          f<text| is of class >C<rsup|n><text| on >U
        </equation*>
      </description>

      As <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> <math|f> is of class
      <math|C<rsup|n>> on <math|U> we have that\ 

      <\equation*>
        f<text| is of class >C<rsup|\<infty\>><text| on >U
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|n\<in\>\<bbb-N\>> then as
      <math|f> is of class <math|C<rsup|n>> on <math|U> we have by definition
      that <math|f> is <math|n>-times differentiable on <math|U>.
    </description>
  </proof>

  There is a interesting relation between functions of class <math|C<rsup|1>>
  on a open set and the derivative of a function. First we need a little
  lemma.

  <subsection|Higher order derivatives>

  <\lemma>
    <label|lemma 16.83.197>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real [or complex] numbers,
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
      Hence\ 

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
        <label|eq 16.150.7><around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>-<around*|(|f<around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Hence we have <math|\<forall\>t\<in\>\<bbb-K\>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|t|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|t\<cdot\>1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t\<cdot\><around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|y|)><around*|(|1|)>-f<around*|(|x|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>-<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
        <reference|eq 16.150.7>]>>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\||t|\|>>>>>
      </eqnarray*>

      so that by [theorem: <reference|continuity norm on L(X,Y)>] we have
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|\<nobracket\>|<around*|(|\<bbb-K\>,X|)>|\|>>\<leqslant\><frac|\<varepsilon\>|2>\<less\>\<varepsilon\>>,
      hence <math|f> is continuous at <math|x> [see corollary:
      <reference|continuity in normed subspace>].
    </description>
  </proof>

  <\theorem>
    <label|diff C^1 and derivatives>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real [or complex] numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U> a open set in <math|\<bbb-K\>>,
    <math|f:U\<rightarrow\>X> a function then

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is of class
      >C<rsup|1><text|>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>x\<in\>U<text|
      >f<text| has a derivative at >x>|<cell|>>|<row|<cell|>|<cell|f<rprime|'><text|
      is continuous>>|<cell|>>>>
    </eqnarray*>

    Further if <math|f> is <math|C<rsup|1>> on <math|U> then\ 

    <\equation*>
      f<rprime|'>=<around*|\<nobracket\>|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>
    </equation*>

    where\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|1|)>:U\<rightarrow\>X<text|
      is defined by ><around*|\<nobracket\>|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is of class <math|C<rsup|1>>
      we have by [theorem: <reference|diff class C^n (2)>] that\ 

      <\equation>
        <label|eq 16.98.8>U=\<frak-D\><rsup|<around*|[|1|]>><rsub|f><text|
        and >D<rsup|<around*|[|1|]>><rsub|>f<text| is continuous>
      </equation>

      Let <math|x\<in\>U> then by the above and [definition: <reference|diff
      higher order differentiation>] <math|f> is <math|1>-times
      differentiable at <math|x> or using [theorem: <reference|diff higher
      order differentiation (1)>] <math|f> is Fréchet differentiable at
      <math|x> with <math|D<rsup|<around*|[|1|]>><rsub|x>f=D<rsub|x>f>. Using
      [theorem: <reference|diff derivate and frechet differential>] it
      follows then that <math|f> has a derivative <math|f<rprime|'><rsub|x>>
      at <math|x> with <math|f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|1|)>>.
      Summarized we have\ 

      <\equation>
        <label|eq 16.98.6>\<forall\>x\<in\>U<text| >f<text| has a derivative
        at >x<text| [so that <math|U=\<cal-D\><rsub|f>>] with
        >f<rprime|'><rsub|x>=D<rsup|<around*|[|1|]>><rsub|x>f<around*|(|1|)>
      </equation>

      Define now [see lemma: <reference|lemma 16.83.197>]

      <\equation>
        <label|eq 16.100.7>D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|1|)>:U\<rightarrow\>X<text|
        by ><around*|(|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>
      </equation>

      then we have <math|\<forall\>x\<in\>U> that

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<rprime|'><around*|(|x|)>>|<cell|<below|=|<text|[eq:
        <reference|eq 16.98.6>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|x>f<around*|(|1|)>>>|<row|<cell|>|<cell|<below|=|<text|[definition:
        <reference|diff higher order differentiation>]>>>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
        <reference|eq 16.100.7>]>>>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>>>>>
      </eqnarray*>

      from which it follows that\ 

      <\equation>
        <label|eq 16.102.8>f<rprime|'>=D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|1|)>
      </equation>

      As <math|><math|D<rsup|<around*|[|1|]>>f> is continuous [see eq:
      <reference|eq 16.98.8>] it follows from [lemma: <reference|lemma
      16.83.197>] that <math|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|1|)>>
      is continuous. Combining this with [eq: <reference|eq 16.102.8>] proves
      that\ 

      <\equation*>
        f<rprime|'><text| is continuous>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>U> then by the hypothesis
      <math|f> has a derivative at <math|x> and the function
      <math|f<rprime|'>> is continuous. As
      <math|x\<in\>U<below|=|<text|[theorem: <reference|topology open set and
      interior>]>>U> it follows from [theorem: <reference|diff derivate and
      frechet differential>] that <math|f> is Fréchet differentiable at
      <math|x> with <math|f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>>.
      Using then [theorem: <reference|diff higher order differentiation (1)>]
      we have that <math|f> is <math|1>-times differentiable at <math|x> and
      <math|f<rprime|'><rsub|x>=D<rsup|<around*|[|1|]>><rsub|x>f<below|=|<text|[definition:
      <reference|diff higher order differentiation>]>>D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>>.
      To summarize\ 

      <\equation>
        <label|eq 16.102.9>\<forall\>x\<in\>U<text| >f<text| is
        >1<text|-times differentiable at >x<text| [hence
        <math|U=\<frak-D\><rsup|<around*|[|1|]>><rsub|f><text|] with
        >f<rprime|'><rsub|x>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>>>
      </equation>

      Define now\ 

      <\equation>
        <label|eq 16.103.9>D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|1|)>:U\<rightarrow\>X<text|
        by ><around*|(|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>
      </equation>

      then we have for <math|x\<in\>U> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>>|<cell|<below|=|<text|[eq:
        <reference|eq 16.103.9>]>>>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
        <reference|eq 16.102.9>]>>>|<cell|f<rprime|'><rsub|x>>>|<row|<cell|>|<cell|<below|=|<text|[definition:
        <reference|diff derivative function>]>>>|<cell|f<rprime|'><around*|(|x|)>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        f<rprime|'>=<around*|\<nobracket\>|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>
      </equation*>

      As <math|f<rprime|'>> is continuous it follows from the above that
      <math|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>>
      is continuous. Using then [lemma: <reference|lemma 16.83.197>] it
      follows that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>f<text| is continuous>
      </equation*>

      Combing this result with [eq: <reference|eq 16.102.9>] proves, using
      \ [theorem: <reference|diff class C^n (2)>], that\ 

      <\equation*>
        f<text| is of class >C<rsup|1>
      </equation*>
    </description>
  </proof>

  We use now recursion to define higher order derivatives.

  <\definition>
    <label|diff higher order derivative>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real (complex) numbers based on the norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|A\<subseteq\>\<bbb-K\>> and
    <math|f:A\<rightarrow\>X> a function then we define
    <math|f<rsup|<around*|(|n|)>>:\<cal-D\><rsup|n><rsub|f>\<rightarrow\>X>
    recursively as follows

    <\description>
      <item*|<math|n=1>>Then

      <\equation*>
        \<cal-D\><rsup|1><rsub|f>=\<cal-D\><rsub|f>=<around*|{|x\<in\>A\|f<text|
        has a derivative at >x|}>
      </equation*>

      and\ 

      <\equation*>
        f<rsup|<around*|(|1|)>>=f<rprime|'>:\<cal-D\><rsub|f>\<rightarrow\>X
      </equation*>

      See [definition: <reference|diff derivative function>] for the
      definition of <math|f<rprime|'>> and <math|\<cal-D\><rsub|f>>

      <item*|<math|1\<less\>n>>Then

      <\equation*>
        \<cal-D\><rsup|n><rsub|f>=\<cal-D\><rsub|f<rsup|<around*|(|n-1|)>>><around*|(|\<cal-D\><rsup|<around*|(|n-1|)>><rsub|f>|)>=<around*|{|x\<in\>A\|f<rsup|<around*|(|n-1|)>><text|
        has a derivative at >x|}>
      </equation*>

      and

      <\equation*>
        f<rsup|<around*|(|n-1|)>>=<around*|(|f<rsup|<around*|(|n|)>>|)><rprime|'>:\<cal-D\><rsup|n><rsub|f>\<rightarrow\>X
      </equation*>
    </description>
  </definition>

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
    <associate|page-first|921>
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
    <associate|auto-20|<tuple|16.1.8|?>>
    <associate|auto-21|<tuple|16.2|?>>
    <associate|auto-22|<tuple|16.2.1|?>>
    <associate|auto-23|<tuple|<with|mode|<quote|math>|L<rsub|n><around*|(|X;Y|)>>|?>>
    <associate|auto-24|<tuple|<with|mode|<quote|math>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|?>>
    <associate|auto-25|<tuple|16.2.2|?>>
    <associate|auto-26|<tuple|<with|mode|<quote|math>|\<infty\>>-times
    differentibility|?>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|D<rsup|n>f<around*|(|x|)>>|?>>
    <associate|auto-28|<tuple|<with|mode|<quote|math>|C<rsup|n>>|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|C<rsup|0>>|?>>
    <associate|auto-3|<tuple|16.1.1|?>>
    <associate|auto-30|<tuple|<with|mode|<quote|math>|C<rsup|\<infty\>>>|?>>
    <associate|auto-31|<tuple|16.2.3|?>>
    <associate|auto-4|<tuple|convergence of a function|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>|?>>
    <associate|auto-7|<tuple|16.1.2|?>>
    <associate|auto-8|<tuple|16.1.3|?>>
    <associate|auto-9|<tuple|differentiability|?>>
    <associate|convergence of a function to a point|<tuple|16.3|?>>
    <associate|corollary 16.50.192|<tuple|16.107|?>>
    <associate|diff (f+g)'=f'+g'|<tuple|16.40|?>>
    <associate|diff Bx(x,d)|<tuple|16.17|?>>
    <associate|diff C-infinity condition|<tuple|16.143|?>>
    <associate|diff C^1 and derivatives|<tuple|16.145|?>>
    <associate|diff Frechet approximation|<tuple|16.43|?>>
    <associate|diff Frechet differentation implies partial differentiability
    |<tuple|16.79|?>>
    <associate|diff Jacobian matrix|<tuple|16.97|?>>
    <associate|diff L(x1:..xn)|<tuple|16.108|?>>
    <associate|diff L(x1:..xn)=L(1:..:1). product|<tuple|16.112|?>>
    <associate|diff L_n(X;Y)|<tuple|16.104|?>>
    <associate|diff Ux|<tuple|16.13|?>>
    <associate|diff Ux is open if U is open|<tuple|16.16|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.15|?>>
    <associate|diff bilinear functions|<tuple|16.98|?>>
    <associate|diff calculus derivate|<tuple|16.22|?>>
    <associate|diff calculus derivate (1)|<tuple|16.20|?>>
    <associate|diff calculus derivate (2)|<tuple|16.23|?>>
    <associate|diff chain rule|<tuple|16.66|?>>
    <associate|diff chain rule and partial differential|<tuple|16.83|?>>
    <associate|diff chain rule calculus|<tuple|16.67|?>>
    <associate|diff class C^@@|<tuple|16.140|?>>
    <associate|diff class C^n|<tuple|16.139|?>>
    <associate|diff class C^n (1)|<tuple|16.141|?>>
    <associate|diff class C^n (2)|<tuple|16.142|?>>
    <associate|diff composition with a linear mapping|<tuple|16.68|?>>
    <associate|diff constant function and partial
    differentiation|<tuple|16.80|?>>
    <associate|diff constant function is differentiable|<tuple|16.53|?>>
    <associate|diff derivate and frechet differential|<tuple|16.63|?>>
    <associate|diff derivate of inverse function|<tuple|16.101|?>>
    <associate|diff derivate operator is linear|<tuple|16.65|?>>
    <associate|diff derivative and restriction|<tuple|16.34|?>>
    <associate|diff derivative function|<tuple|16.24|?>>
    <associate|diff derivative is local|<tuple|16.36|?>>
    <associate|diff derivative of a scalar product|<tuple|16.41|?>>
    <associate|diff derivative of constant|<tuple|16.30|?>>
    <associate|diff derivative of f/g|<tuple|16.103|?>>
    <associate|diff derivative of identity function|<tuple|16.31|?>>
    <associate|diff derivative of the empty function|<tuple|16.29|?>>
    <associate|diff derivative on a open set|<tuple|16.28|?>>
    <associate|diff derivative on a open set (2)|<tuple|16.39|?>>
    <associate|diff derivatives and continuity|<tuple|16.33|?>>
    <associate|diff differentiability|<tuple|16.46|?>>
    <associate|diff differentiability alternative
    definitions|<tuple|16.60|?>>
    <associate|diff differentiability alternative definitions
    (1)|<tuple|16.61|?>>
    <associate|diff differentiability and K^n|<tuple|16.90|?>>
    <associate|diff differentiability is a local property|<tuple|16.56|?>>
    <associate|diff differentiability on a set|<tuple|16.51|?>>
    <associate|diff differentiability on a set (2)|<tuple|16.58|?>>
    <associate|diff differentiable function is continuous|<tuple|16.62|?>>
    <associate|diff differential|<tuple|16.48|?>>
    <associate|diff differential of a vector valued function|<tuple|16.95|?>>
    <associate|diff differential of product of functions|<tuple|16.99|?>>
    <associate|diff e-mapping|<tuple|16.59|?>>
    <associate|diff equivalent norms|<tuple|16.55|?>>
    <associate|diff higher order derivative|<tuple|16.146|?>>
    <associate|diff higher order differentiability
    condition|<tuple|16.137|?>>
    <associate|diff higher order differential|<tuple|16.123|?>>
    <associate|diff higher order differential domains|<tuple|16.127|?>>
    <associate|diff higher order differentiation|<tuple|16.128|?>>
    <associate|diff higher order differentiation (1)|<tuple|16.134|?>>
    <associate|diff higher order differentiation (2)|<tuple|16.135|?>>
    <associate|diff higher order differentiation (3)|<tuple|16.138|?>>
    <associate|diff higher order differentiation on a open
    set|<tuple|16.131|?>>
    <associate|diff identity function is differentiable|<tuple|16.52|?>>
    <associate|diff inifint=ite differentiable|<tuple|16.133|?>>
    <associate|diff limit of a function|<tuple|16.11|?>>
    <associate|diff linear mappings are differentiable|<tuple|16.54|?>>
    <associate|diff linear to multilinear|<tuple|16.120|?>>
    <associate|diff n-times and m-times differentiability|<tuple|16.130|?>>
    <associate|diff partial derivate|<tuple|16.86|?>>
    <associate|diff partial derivate and partial
    differential|<tuple|16.89|?>>
    <associate|diff partial derivate definition|<tuple|16.84|?>>
    <associate|diff partial derivative on a set|<tuple|16.88|?>>
    <associate|diff partial differentiability does not mean
    differentiaility|<tuple|16.81|?>>
    <associate|diff partial differential|<tuple|16.75|?>>
    <associate|diff partial differential definition|<tuple|16.73|?>>
    <associate|diff partial differential on a set|<tuple|16.77|?>>
    <associate|diff partial differential properties|<tuple|16.82|?>>
    <associate|diff partial differentiation is local|<tuple|16.78|?>>
    <associate|diff power|<tuple|16.102|?>>
    <associate|diff scalar product function has a derivate|<tuple|16.32|?>>
    <associate|diff unprojection|<tuple|16.69|?>>
    <associate|diff vector functions|<tuple|16.91|?>>
    <associate|diff vector functions (1)|<tuple|16.94|?>>
    <associate|diff vector functions (2)|<tuple|16.96|?>>
    <associate|diff vector functions and linearity|<tuple|16.93|?>>
    <associate|eq 16.1.177|<tuple|16.16|?>>
    <associate|eq 16.1.2|<tuple|16.1|?>>
    <associate|eq 16.10.178|<tuple|16.25|?>>
    <associate|eq 16.10.4|<tuple|16.15|?>>
    <associate|eq 16.10.5|<tuple|16.10|?>>
    <associate|eq 16.100.6|<tuple|16.100|?>>
    <associate|eq 16.100.7|<tuple|16.100|?>>
    <associate|eq 16.102.6|<tuple|16.48|?>>
    <associate|eq 16.102.8|<tuple|16.101|?>>
    <associate|eq 16.102.9|<tuple|16.102|?>>
    <associate|eq 16.103.9|<tuple|16.103|?>>
    <associate|eq 16.11.178|<tuple|16.26|?>>
    <associate|eq 16.11.5|<tuple|16.11|?>>
    <associate|eq 16.116.313|<tuple|16.59|?>>
    <associate|eq 16.12.178|<tuple|16.27|?>>
    <associate|eq 16.12.5|<tuple|16.12|?>>
    <associate|eq 16.121.6|<tuple|16.67|?>>
    <associate|eq 16.13.178|<tuple|16.28|?>>
    <associate|eq 16.14.178|<tuple|16.29|?>>
    <associate|eq 16.15.178|<tuple|16.30|?>>
    <associate|eq 16.150.7|<tuple|16.97|?>>
    <associate|eq 16.16.180|<tuple|16.52|?>>
    <associate|eq 16.17.180|<tuple|16.53|?>>
    <associate|eq 16.18.179|<tuple|16.37|?>>
    <associate|eq 16.18.180|<tuple|16.54|?>>
    <associate|eq 16.18.5|<tuple|16.18|?>>
    <associate|eq 16.19.179|<tuple|16.38|?>>
    <associate|eq 16.19.180|<tuple|16.55|?>>
    <associate|eq 16.2.177|<tuple|16.17|?>>
    <associate|eq 16.2.2|<tuple|16.2|?>>
    <associate|eq 16.20.178|<tuple|16.45|?>>
    <associate|eq 16.20.181|<tuple|16.56|?>>
    <associate|eq 16.21.5|<tuple|16.21|?>>
    <associate|eq 16.23.178|<tuple|16.49|?>>
    <associate|eq 16.24.178|<tuple|16.50|?>>
    <associate|eq 16.24.4|<tuple|16.31|?>>
    <associate|eq 16.25.178|<tuple|16.51|?>>
    <associate|eq 16.25.4|<tuple|16.32|?>>
    <associate|eq 16.26.4|<tuple|16.33|?>>
    <associate|eq 16.27.4|<tuple|16.34|?>>
    <associate|eq 16.28.4|<tuple|16.35|?>>
    <associate|eq 16.29.4|<tuple|16.36|?>>
    <associate|eq 16.3.177|<tuple|16.19|?>>
    <associate|eq 16.3.2|<tuple|16.3|?>>
    <associate|eq 16.33.181|<tuple|16.57|?>>
    <associate|eq 16.34.181|<tuple|16.58|?>>
    <associate|eq 16.36.182|<tuple|16.61|?>>
    <associate|eq 16.37.182|<tuple|16.62|?>>
    <associate|eq 16.38.182|<tuple|16.63|?>>
    <associate|eq 16.39.182|<tuple|16.64|?>>
    <associate|eq 16.4.1|<tuple|16.4|?>>
    <associate|eq 16.4.177|<tuple|16.20|?>>
    <associate|eq 16.41.182|<tuple|16.66|?>>
    <associate|eq 16.42.187|<tuple|16.69|?>>
    <associate|eq 16.43.187|<tuple|16.70|?>>
    <associate|eq 16.44.188|<tuple|16.71|?>>
    <associate|eq 16.45.153|<tuple|16.68|?>>
    <associate|eq 16.45.188|<tuple|16.72|?>>
    <associate|eq 16.46.188|<tuple|16.73|?>>
    <associate|eq 16.47.188|<tuple|16.74|?>>
    <associate|eq 16.48.188|<tuple|16.75|?>>
    <associate|eq 16.49.189|<tuple|16.76|?>>
    <associate|eq 16.5.1|<tuple|16.5|?>>
    <associate|eq 16.50.189|<tuple|16.77|?>>
    <associate|eq 16.51\<point\>189|<tuple|16.78|?>>
    <associate|eq 16.6.301|<tuple|16.6|?>>
    <associate|eq 16.7.178|<tuple|16.22|?>>
    <associate|eq 16.7.301|<tuple|16.7|?>>
    <associate|eq 16.73.3|<tuple|16.39|?>>
    <associate|eq 16.74.3|<tuple|16.40|?>>
    <associate|eq 16.75.3|<tuple|16.41|?>>
    <associate|eq 16.78.3|<tuple|16.43|?>>
    <associate|eq 16.79.3|<tuple|16.44|?>>
    <associate|eq 16.79.5|<tuple|16.79|?>>
    <associate|eq 16.8.178|<tuple|16.23|?>>
    <associate|eq 16.8.4|<tuple|16.13|?>>
    <associate|eq 16.8.5|<tuple|16.8|?>>
    <associate|eq 16.80.5|<tuple|16.80|?>>
    <associate|eq 16.81.5|<tuple|16.81|?>>
    <associate|eq 16.82.5|<tuple|16.82|?>>
    <associate|eq 16.83.5|<tuple|16.89|?>>
    <associate|eq 16.83.6|<tuple|16.83|?>>
    <associate|eq 16.84.5|<tuple|16.90|?>>
    <associate|eq 16.84.6|<tuple|16.84|?>>
    <associate|eq 16.85.5|<tuple|16.91|?>>
    <associate|eq 16.85.6|<tuple|16.85|?>>
    <associate|eq 16.86.5|<tuple|16.92|?>>
    <associate|eq 16.86.6|<tuple|16.86|?>>
    <associate|eq 16.87.5|<tuple|16.93|?>>
    <associate|eq 16.87.6|<tuple|16.87|?>>
    <associate|eq 16.88.6|<tuple|16.88|?>>
    <associate|eq 16.9.178|<tuple|16.24|?>>
    <associate|eq 16.9.4|<tuple|16.14|?>>
    <associate|eq 16.9.5|<tuple|16.9|?>>
    <associate|eq 16.94.6|<tuple|16.42|?>>
    <associate|eq 16.94.7|<tuple|16.94|?>>
    <associate|eq 16.95.6|<tuple|16.95|?>>
    <associate|eq 16.96.6|<tuple|16.96|?>>
    <associate|eq 16.98.6|<tuple|16.99|?>>
    <associate|eq 16.98.8|<tuple|16.98|?>>
    <associate|eq 16.99.4|<tuple|16.60|?>>
    <associate|eq 16.99.6|<tuple|16.100|?>>
    <associate|lemma 16.11.500|<tuple|16.6|?>>
    <associate|lemma 16.18.2|<tuple|16.18|?>>
    <associate|lemma 16.19.2|<tuple|16.19|?>>
    <associate|lemma 16.24.178|<tuple|16.70|?>>
    <associate|lemma 16.37.4|<tuple|16.45|?>>
    <associate|lemma 16.51.186|<tuple|16.111|?>>
    <associate|lemma 16.53.186|<tuple|16.113|?>>
    <associate|lemma 16.54.187|<tuple|16.114|?>>
    <associate|lemma 16.55.187|<tuple|16.115|?>>
    <associate|lemma 16.56.187|<tuple|16.116|?>>
    <associate|lemma 16.57.187|<tuple|16.117|?>>
    <associate|lemma 16.58.188|<tuple|16.118|?>>
    <associate|lemma 16.59.188|<tuple|16.119|?>>
    <associate|lemma 16.61.207|<tuple|16.106|?>>
    <associate|lemma 16.69.4|<tuple|16.72|?>>
    <associate|lemma 16.83.197|<tuple|16.144|?>>
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

      <tuple|<tuple|partial derivate>|<pageref|auto-16>>

      <tuple|<tuple|<with|mode|<quote|math>|\<partial\><rsub|i>f<around*|(|x|)>>>|<pageref|auto-17>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>>>|<pageref|auto-19>>

      <tuple|<tuple|<with|mode|<quote|math>|L<rsub|n><around*|(|X;Y|)>>>|<pageref|auto-23>>

      <tuple|<tuple|<with|mode|<quote|math>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<pageref|auto-24>>

      <tuple|<tuple|<with|mode|<quote|math>|\<infty\>>-times
      differentibility>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|D<rsup|n>f<around*|(|x|)>>>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|n>>>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|0>>>|<pageref|auto-29>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|\<infty\>>>>|<pageref|auto-30>>
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

      <with|par-left|<quote|1tab>|16.1.7<space|2spc>Differentiation of vector
      valued functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|16.1.8<space|2spc>Usefull derivatives
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      16.2<space|2spc>Higher order differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>

      <with|par-left|<quote|1tab>|16.2.1<space|2spc>Linear mappings and
      multi-linear mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|16.2.2<space|2spc>Higher order Fréchet
      differentiation. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|16.2.3<space|2spc>Higher order derivatives
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>
    </associate>
  </collection>
</auxiliary>
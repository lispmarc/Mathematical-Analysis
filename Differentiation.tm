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
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>X> a
    <with|font-series|bold|limit point of A> and <math|f:A\<rightarrow\>Y> a
    function such that\ 

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
    a normed space <math|A\<subseteq\>X>. If <math|x\<in\>A<rsup|\<circ\>>>
    [see definition: <reference|topology interior of a set>] then <math|x> is
    a limit point of <math|A>. In other words every interior point of a set
    is a limit point.
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

  We can now define the limit of a function at a point.

  <\definition>
    <label|diff limit of a function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> a limit point of
    <math|A> and <math|f:A\<rightarrow\>Y> a function that converges to
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
    be a topological space, <math|A\<subseteq\>X> and <math|x> a limit point
    of <math|A> then <math|x> is a limit point of <math|A\\<around*|{|x|}>>.
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
    16.18.2>].
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
    a normed space, <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A> a limit
    point of <math|A> and <math|f:A\<rightarrow\>Y> a function then
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
    normed space, <math|x\<in\>A> a limit point of <math|A> and
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
    normed space, <math|x\<in\>A> a limit point of <math|A> and
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

  <\example>
    <label|diff derivative of constant>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real [or complex] numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, \ <math|y\<in\>X> then
    <math|C<rsub|y>:<around*|[|a,b|]>\<rightarrow\>X> defined by
    <math|C<rsub|y><around*|(|t|)>=y> has a derivative
    <math|<around*|(|C<rsub|y>|)><rprime|'><rsub|x>> at <math|x> with
    <math|<around*|(|C<rsub|y>|)><rprime|'><rsub|x>=0>. Hence if we define\ 

    <\equation*>
      <around*|(|C<rsub|y>|)><rprime|'>:A\<rightarrow\>X<text| by
      ><around*|(|C<rsub|y>|)><rprime|'><around*|(|x|)>=<around*|(|C<rsub|y>|)><rprime|'><rsub|x>
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

    Hence using [theorem: <reference|diff calculus derivate>]
    <math|C<rsub|y>> has a derivative at <math|x> with
    <math|<around*|(|C<rsub|y>|)><rprime|'><rsub|x>=0>.
  </proof>

  <\example>
    <label|diff derivative of identity function>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> the \ normed
    space of real [or complex] numbers, <math|A\<subseteq\>K> and
    <math|x\<in\>A> a limit point of <math|A> then <math|Id<rsub|A>> has a
    derivative <math|<around*|(|Id<rsub|A>|)><rprime|'><rsub|x>> at <math|x>
    with <math|<around*|(|Id<rsub|A>|)><rprime|'><rsub|x>=1>.
  </example>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
    <math|h\<in\>A<rsub|y>> with <math|0\<less\><around*|\||h|\|>\<less\>1>
    we have that\ 

    <\equation*>
      <around*|\||<frac|Id<rsub|A><around*|(|x+h|)>-Id<rsub|A><around*|(|x|)>|h>-1|\|>=<around*|\||<frac|x+h-x|h>-1|\|>=<around*|\||0|\|>=0\<less\>\<varepsilon\>
    </equation*>

    Hence using [theorem: <reference|diff calculus derivate>]
    <math|Id<rsub|A>> has a derivative \ <math|<around*|(|Id<rsub|A>|)><rprime|'><rsub|x>>
    at <math|x> with <math|<around*|(|Id<rsub|A>|)><rprime|'><rsub|x>=1>.
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
    a normed space is a limit point>] so having a derivative makes sense.
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

  We use <math|f<rprime|'><rsub|x>> to note the derivative of <math|f> at
  <math|x>. Many books use instead the notation <math|f<rprime|'><rsub|\|x>>
  or <math|f<rprime|'><around*|(|x|)>>. The problem with
  <math|f<rprime|'><rsub|\|x>> is that it can be confused with the
  restriction of a function <math|f<rprime|'>> to <math|x> and
  <math|f<rprime|'><around*|(|x|)>> can also be confused with the value of a
  function <math|f<rprime|'>> at <math|x>. The derivative is however not a
  function but a value of <math|Y>. If <math|f> has a derivative at every
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

  We look now at the depending of the derivative of a function on the domain
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

  If we restrict ourselves to open sets then the opposite of the above
  theorem is also true so that the existence of a derivative at a point
  depends only on the values of the functions in a neighborhood of this
  point. This is the so called <with|font-series|bold|locally> principal.

  <\theorem>
    <label|diff derivative is local>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real [or complex] numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, \ <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> a open set
    in <math|\<bbb-K\>>, <math|x\<in\>U> and <math|f:U\<rightarrow\>X> a
    function then <math|\<forall\>V\<in\>\<cal-T\><rsub|<around*|\|||\|>>>
    with <math|x\<in\>V\<subseteq\>U> we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| has a derivative
      <math|f<rprime|'><rsub|x><text| at >x>>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<rsub|\|V><text|
      has a derivative <math|<around*|(|f<rsub|\|V>|)><rprime|'><rsub|x>> at
      >x>|<cell|>>>>
    </eqnarray*>

    Further if either <math|f<rprime|'><rsub|x>> exist or
    <math|<around*|(|f<rsub|\|V>|)><rprime|'><rsub|x>> exist then
    <math|f<rprime|'><rsub|x>=<around*|(|f<rsub|\|V>|)><rprime|'><rsub|x>>.
  </theorem>

  <\note>
    Using [theorem: <reference|topology every element of a open set in a
    normed space is a limit point>] we have as <math|U,V> are open and
    <math|x\<in\>V\<subseteq\>U> that <math|x> is a limit poing of <math|U>
    and <math|V> which is needed for the definition of the derivative.
  </note>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This follows from the previous theorem
      [theorem: <reference|diff derivative and restriction>].

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f<rsub|\|V>> has a derivative at <math|x> there exist a
      <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|1>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|<frac|f<rsub|\|V><around*|(|x+h|)>-f<rsub|\|V><around*|(|x|)>|h>-<around*|(|f<rsub|\|V>|)><rprime|'><rsub|x>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      As <math|x\<in\>V> a open set there exist a
      <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\><rsub|2>|)>\<subseteq\>U>.
      Take then <math|<rigid|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>>
      then if we have <math|h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have that
      <math|<around*|\||x+h-x|\|>=<around*|\||h|\|>\<less\>\<delta\><rsub|2>>
      so that <math|<rigid|x+h\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\><rsub|2>|)>\<subseteq\>V\<Rightarrow\>h\<in\>V<rsub|x>>>.
      Hence we have, as also <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|1>>,

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|V>|)><rprime|'><rsub|x>|\<\|\|\>>\<equallim\><rsub|x\<in\>V,x+h\<in\>V><around*|\<\|\|\>|<frac|f<rsub|\|V><around*|(|x+h|)>-f<rsub|\|V><around*|(|x|)>|h>-<around*|(|f<rsub|\|V>|)><rprime|'><rsub|x>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      which proves that <math|f> has a derivative at <math|x> and
      <math|f<rprime|'><rsub|x>=<around*|(|f<rsub|\|V>|)><rprime|'><rsub|x>>.
    </description>
  </proof>

  The following example shows that the requirement that <math|U,V> are open
  is neccesary.

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

  Differentiating a function is a linear operation as is show in the
  following theorem.

  <\theorem>
    <label|diff (f+g)'=f'+g'>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real or complex numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|A\<subseteq\>\<bbb-K\>>, <math|x\<in\>A> a limit
    point of <math|A> then we have:\ 

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
  The problem with this approach is that this extremely complex and is not
  easy to extend to higher order differentiation. So the approach that is
  used in this book like almost every book about differentiation is to
  restrict ourself to functions whose domain is open. The following lemma
  will then be essential.

  <\lemma>
    <label|lemma 16.37.4>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>
    a open set in <math|X>, <math|x\<in\>U> and <math|f:U\<rightarrow\>Y> a
    function then if <math|L<rsub|1>,L<rsub|2>\<in\>\<cal-L\><around*|[|X;Y|]>>
    two Fréchet approximations of <math|f> at <math|x> then
    <math|L<rsub|1>=L<rsub|2>>.
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

    As <math|U<rsub|x>\<equallim\><rsub|<text|[eq: <reference|diff
    Ux=-x+U=U-x>]>><around*|(|-x|)>+U> is open [see theorem:
    <reference|normed space set operations>] and <math|0\<in\>U<rsub|x>>
    there exist a <math|\<delta\><rsub|3>\<in\>\<bbb-R\><rsup|+>> such that
    <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|3>|)>\<subseteq\>U<rsub|x>>.
    Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>|)>>
    and define <math|h<rsub|1>=<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\>h<rsub|0>>
    then\ 

    <\equation>
      <label|eq 16.10.4><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1|)>>\<cdot\>h<rsub|0>|\<\|\|\>><rsub|X>=\<delta\>\<cdot\><frac|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h<rsub|0>|\<\|\|\>><rsub|X>+1>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>
    </equation>

    so that <math|h<rsub|1>\<in\>U<rsub|x>> and\ 

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
    be normed spaces, a open set in <math|X>
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|x>>> and
    <math|x\<in\>U> then a function

    <\equation*>
      f:U\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|x> if there exist a
    <math|L\<in\>L<around*|(|X,Y|)>> such that <math|L> is a Fréchet
    approximation of <math|f> at <math|x>. Using [definition: <reference|diff
    Frechet approximation>] this equivalent with

    \ <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>A<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>

    The unique <math|L> [seee lemma: <reference|lemma 16.37.4>] in
    \ <with|font-series|bold|Fréchet differential of f at <math|x>> and noted
    as <math|D<rsub|x> f>. In other words <math|f> is Fréchet differentiable
    at <math|x> if there exist a\ 

    <\equation*>
      D <rsub|x>f\<in\>L<around*|(|X,Y|)><text|>
    </equation*>

    such that\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      <rsub|x>f<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>
  </definition>

  <\definition>
    <label|diff differentiability on a set>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|A\<subseteq\>U>
    then a function <math|f:U\<rightarrow\>Y> is
    <with|font-series|bold|Fréchet differentiable on <math|A>> if
    <math|\<forall\>x\<in\>A> we have that <math|f> is Fréchet differentiable
    at <math|x>.
  </definition>

  First note that <math|D<rsub|x>f> is a element of <math|L<around*|(|X,Y|)>>
  hence a continuous linear function from <math|X> to <math|Y> so that for
  <math|h\<in\>X> we have that <math|D<rsub|x>f<around*|(|h|)>\<in\>Y>. In
  many texts about differentiation the notation <math|D f<around*|(|x|)>> is
  used for the Fréchet differential at <math|x>. This suggest that the
  differential at <math|x> is the value of a function <math|D f> that is not
  yet defined. If however <math|f> is differentiable on a subset <math|A> of
  <math|U> then we can define the function\ 

  <\equation*>
    D f:A\<rightarrow\>L<around*|(|X,Y|)><text| by >D
    f<around*|(|x|)>=D<rsub|x>f
  </equation*>

  that maps every point of <math|A> to a continuous linear mapping between
  <math|X> and <math|Y>. In this book we want to keep these two things
  separate by notation. Hence we use <math|D f<around*|(|x|)>> only if
  <math|f> is Fréchet differentiable on a set and not if <math|f> is Fréchet
  Differentiable at a single point. If <math|D f> is defined on <math|A> and
  <math|x\<in\>A> then <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> so
  that given a <math|h\<in\>X> we have that <math|<around*|(|D
  f<around*|(|x|)>|)><around*|(|h|)>\<in\>Y>, to simplify notation we note
  this as <math|D f<around*|(|x|)><around*|(|h|)>>. This is part of a more
  general notation convention used where the function application associates
  to the left for example <math|<around*|(|<around*|(|f<around*|(|x|)>|)><around*|(|y|)>|)><around*|(|z|)>>
  is noted as <math|f<around*|(|x|)><around*|(|y|)><around*|(|z|)>>.

  <\example>
    <label|diff identity function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|U> a open set then <math|\<forall\>x\<in\>U> we
    have that <math|Id<rsub|U>:U\<rightarrow\>X> is Fréchet differentiable at
    <math|x> and <math|D<rsub|x> Id<rsub|U>=Id<rsub|X>>. So if we define\ 

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

  Although Fréchet differentiability and the differential is defined using
  norms, the definition is actually dependent on the topology generated by
  the norms. This is expressed in the following theorem.

  <\theorem>
    <label|diff equivalent norms>Let <math|X,Y> be vector spaces over
    <math|\<bbb-K\>> with equivalent norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    on <math|X> and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> on <math|Y>,
    <math|U\<subseteq\>X> a open set [using the topology
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>\<equallim\><rsub|<text|norms
    are equivalent >>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>>],
    <math|x\<in\>U> and

    <\equation*>
      f:X\<rightarrow\>Y<text| is Fréchet differentiable function at <math|x>
      with differential >D<rsub|x>f<text| using
      ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>
    </equation*>

    then\ 

    <\equation*>
      f:X\<rightarrow\>Y<text| is Fréchet differentiable function at <math|x>
      with differential >D<rsub|x>f<text| using
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
  depends on the function \ values for a arbitrary open neighborhood of this
  point not on the domain of the function.

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
    <associate|auto-2|<tuple|16.1|?>>
    <associate|auto-3|<tuple|16.1.1|?>>
    <associate|auto-4|<tuple|convergence of a function|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>|?>>
    <associate|auto-7|<tuple|16.1.2|?>>
    <associate|auto-8|<tuple|16.1.3|?>>
    <associate|auto-9|<tuple|differentiability|?>>
    <associate|convergence of a function to a point|<tuple|16.3|?>>
    <associate|diff (f+g)'=f'+g'|<tuple|16.34|?>>
    <associate|diff Bx(x,d)|<tuple|16.17|?>>
    <associate|diff Frechet approximation|<tuple|16.35|?>>
    <associate|diff Ux|<tuple|16.13|?>>
    <associate|diff Ux is open if U is open|<tuple|16.16|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.15|?>>
    <associate|diff calculus derivate|<tuple|16.22|?>>
    <associate|diff calculus derivate (1)|<tuple|16.20|?>>
    <associate|diff calculus derivate (2)|<tuple|16.23|?>>
    <associate|diff derivative and restriction|<tuple|16.29|?>>
    <associate|diff derivative is local|<tuple|16.31|?>>
    <associate|diff derivative of constant|<tuple|16.24|?>>
    <associate|diff derivative of identity function|<tuple|16.25|?>>
    <associate|diff derivatives and continuity|<tuple|16.28|?>>
    <associate|diff differentiability|<tuple|16.38|?>>
    <associate|diff differentiability on a set|<tuple|16.39|?>>
    <associate|diff equivalent norms|<tuple|16.41|?>>
    <associate|diff identity function is differentiable|<tuple|16.40|?>>
    <associate|diff limit of a function|<tuple|16.11|?>>
    <associate|diff scalar product function has a derivate|<tuple|16.26|?>>
    <associate|eq 16.1.2|<tuple|16.1|?>>
    <associate|eq 16.10.4|<tuple|16.10|?>>
    <associate|eq 16.2.2|<tuple|16.2|?>>
    <associate|eq 16.3.2|<tuple|16.3|?>>
    <associate|eq 16.4.1|<tuple|16.4|?>>
    <associate|eq 16.5.1|<tuple|16.5|?>>
    <associate|eq 16.6.301|<tuple|16.6|?>>
    <associate|eq 16.7.301|<tuple|16.7|?>>
    <associate|eq 16.8.4|<tuple|16.8|?>>
    <associate|eq 16.9.4|<tuple|16.9|?>>
    <associate|lemma 13.37.4|<tuple|16.37|?>>
    <associate|lemma 16.11.500|<tuple|16.6|?>>
    <associate|lemma 16.18.2|<tuple|16.18|?>>
    <associate|lemma 16.19.2|<tuple|16.19|?>>
    <associate|lemma 16.37.4|<tuple|16.37|?>>
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
    </associate>
  </collection>
</auxiliary>
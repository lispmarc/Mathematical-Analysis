<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Differentation in Normed spaces>

  <section|Frèchet differentiability>

  In this subsection we introduce the Frèchet derivate of a function which is
  a extension of the calculus differential of function. To avoid evaluating a
  function outside it's domain we introduce the following definition.

  <\definition>
    <label|diff Ux><index|<math|U<rsub|x>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|U\<subseteq\>X> and <math|x\<in\>U> then\ 

    <\equation*>
      U<rsub|x>=<around*|{|h\<in\>X\|x+h\<in\>U|}>
    </equation*>

    Note as <math|x+0=x\<in\>U> we have\ 

    <\equation*>
      0\<in\>U<rsub|x>
    </equation*>
  </definition>

  We have a equivalent definition for <math|U<rsub|x>>.

  <\theorem>
    <label|diff Ux=-x+U=U-x>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|U\<subseteq\>X> and <math|x\<in\>U> then\ 

    <\equation*>
      U<rsub|x>=-x+U=U-x
    </equation*>

    where

    <\equation*>
      -x+U=<around*|{|-x+u\|i\<in\>U|}><text| and
      >U-x=<around*|{|u-x\|u\<in\>U|}>
    </equation*>
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|h\<in\>U<rsub|x>>|<cell|\<Leftrightarrow\>>|<cell|x+h\<in\>U>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>u\<in\>U<text|
      with >x+h=u>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>u\<in\>U<text|
      with >h=<around*|(|-x|)>+u>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\><around*|(|-x|)>+U>>|<row|<cell|h\<in\><around*|(|-x|)>+U>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>u\<in\>U<text|
      with >h=<around*|(|-x|)>+u>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>u\<in\>U<text|
      with >h=u+<around*|(|-x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\>U+<around*|(|-x|)>>>>>
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

  <subsection|Limit of a function>

  First we introduce the concept of limit of a function at a point.\ 

  <\definition>
    <label|convergence of a function to a point><index|convergence of a
    function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>X> and
    <math|f:U\<rightarrow\>Y> a function then we say that
    <with|font-series|bold|<math|f> converges to <math|y> at <math|x>> if
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>z\<in\>U> with <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
  </definition>

  <\note>
    In the above definition <math|x> should not be a part of the domain of
    <math|x> because we have do not evaluate at <math|x> because we require
    <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>>> so that
    <math|x\<neq\>z\<in\>U>.
  </note>

  We show now that the the <math|y> in the above is unique.

  <\lemma>
    <label|lemma 16.2.177>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>X> and
    <math|f:U\<rightarrow\>Y> a function such that <math|f> converges to
    <math|y<rsub|1>> and <math|y<rsub|2>> at <math|x> then
    <math|y<rsub|1>=y<rsub|2>>.
  </lemma>

  <\proof>
    Assume that <math|y<rsub|1>\<neq\>y<rsub|2>> then
    <math|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<in\>\<bbb-R\><rsup|+>>.
    As <math|f> converges to <math|y<rsub|1>> and <math|y<rsub|2>> at
    <math|x> there exist <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>z\<in\>U> with
    <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|1>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>>
    and <math|\<forall\>z\<in\>U> with <math|<around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>>.
    So if <math|z\<in\>U> satisfies <math|<around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
    then\ 

    <\equation*>
      <around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|y<rsub|1>-f<around*|(|z|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>+<frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>=<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>
    </equation*>

    giving the contradiction <math|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>>.
  </proof>

  The above lemma ensure that the following definition is well defined.

  <\definition>
    <label|limit of a function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>X> and
    <math|f:U\<rightarrow\>Y> a function such that <math|there exist a
    <math|y\<in\>Y<text| so that >> f> converges to <math|y\<in\>Y> at
    <math|x> then this <with|font-series|bold|unique> <math|y> [see lemma:
    <reference|lemma 16.2.177>] is noted as\ 

    <\equation*>
      <below|lim|<below|z\<rightarrow\>x|U>>f<around*|(|z|)>
    </equation*>

    In other words if we say that\ 

    <\equation*>
      <below|lim|<below|z\<rightarrow\>x|U>>f<around*|(|x|)>=y<text| exists >
    </equation*>

    then <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>z\<in\>U> with <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
  </definition>

  We have the following characterization for continuity
  <with|font-series|bold|at a point in its domain>.

  <\theorem>
    <label|continuity of a function and convergence of the function>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function then

    <\equation*>
      f<text| is continuous at >x<text| >\<Leftrightarrow\><text|
      ><below|lim|<below|z\<rightarrow\>x|U>>f<around*|(|z|)>=f<around*|(|x|)>
    </equation*>
  </theorem>

  <\proof>
    \ This follows from [definition: <reference|limit of a function>] and
    [theorem: <reference|continuity in normed subspace>]
  </proof>

  <subsection|Classical derivate of a function>

  In this subsection we introduce the calculus concepts of differentiability
  and derivate. First we need a little lemma to ensure uniquencess of the
  derivate.

  <\lemma>
    <label|lemma 16.5.178>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real or complex numbers,
    <math|U\<subseteq\>\<bbb-K\>> a open set, <math|x\<in\>U>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and <math|f:U\<rightarrow\>Y> a function. Assume that there
    exists <math|y<rsub|1>>, <math|y<rsub|2>> such that\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|1><text| we have
      ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y<rsub|1>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|2><text| we have
      ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y<rsub|2>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    then\ 

    <\equation*>
      y<rsub|1>=y<rsub|2>
    </equation*>
  </lemma>

  <\proof>
    As <math|U<rsub|x>\<equallim\><rsub|<text|[eq: <reference|diff
    Ux=-x+U=U-x>]>><around*|(|-x|)>+U> is open [see theorem:
    <reference|normed space set operations>] and <math|0\<in\>U<rsub|x>>
    there exist a <math|\<rho\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>\<subseteq\>U<rsub|x>>.
    Assume that <math|y<rsub|1>\<neq\>y<rsub|2>> then
    <math|<around*|\<\|\|\>|y<rsub|2>-y<rsub|1>|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>.
    Using the hypotheses there exist <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\>>
    such that <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|1>> we have
    <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y<rsub|1>|\<\|\|\>>\<less\><frac|<around*|\<\|\|\>|y<rsub|2>-y<rsub|1>|\<\|\|\>>|2>>
    and <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|2>> we have
    <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y<rsub|2>|\<\|\|\>>\<less\><frac|<around*|\<\|\|\>|y<rsub|2>-y<rsub|1>|\<\|\|\>>|2>>.
    So if we take <math|h=min<around*|(|\<delta\>,<frac|\<delta\><rsub|1>|2>,<frac|\<delta\><rsub|2>|2>|)>>
    then <math|h\<in\>U<rsub|x>> and <math|<around*|\||h|\|>\<less\>\<delta\><rsub|1>,\<delta\><rsub|2>>
    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y<rsub|2>-<around*|(|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y<rsub|1>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y<rsub|2>|\<\|\|\>>+<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y<rsub|1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|<around*|\<\|\|\>|y<rsub|2>-y<rsub|1>|\<\|\|\>>|2>+<frac|<around*|\<\|\|\>|y<rsub|2>-y<rsub|1>|\<\|\|\>>|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y<rsub|2>-y<rsub|1>|\<\|\|\>>>>>>
    </eqnarray*>

    which is a contradiction. Hence the assumption
    <math|y<rsub|1>\<neq\>y<rsub|2>> is false and we must have that
    <math|y<rsub|1>=y<rsub|2>>.
  </proof>

  Now we can define differentiability and the derivate used in calculus.

  <\definition>
    <label|diff calculus derivate><index|<math|f<rprime|'><around*|(|x|)>>>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real or complex numbers, <math|U\<subseteq\>\<bbb-K\>> a open
    set, <math|x\<in\>U>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:U\<rightarrow\>Y> a function. Then <math|f> is
    calculus differentiable at <math|x> if there exist a <math|y\<in\>Y> such
    that\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| so that
      >\<forall\>h\<in\>U<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text|
      \ ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    Using [lemma: <reference|lemma 16.5.178>] this <math|y> is unique and it
    is called the <with|font-series|bold|derivate of <math|f> at <math|x>>
    and noted by <math|f<rprime|'><around*|(|x|)>\<in\>Y>. In other words if
    <math|f> is calculus differentiable at <math|x> with derivate
    <math|f<rprime|'><around*|(|x|)>> then we have\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </definition>

  <\note>
    Instead of saying that <math|f> is calculus differentiable at <math|x> we
    use sometimes say that <math|f> has a derivate at <math|x>.
  </note>

  The above is what is called the <math|\<varepsilon\>-\<delta\>> definition
  of the derivate of a function. I use this because it is easier to construct
  exact proofs about derivatives without having to rely on proves of limits.
  However there is a equivalent definition (used in many books) based on
  limits.

  <\theorem>
    <label|diff calculus derivate (1)>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real or complex numbers, <math|U\<subseteq\>\<bbb-K\>> a open
    set, <math|x\<in\>U>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:U\<rightarrow\>Y> a function then we have\ 

    <\equation*>
      f<text| is calculate differentiable at >x<text| with derivate
      >f<rprime|'><around*|(|x|)>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      <below|lim|h\<rightarrowlim\><rsub|U<rsub|x>>0><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>=f<rprime|'><around*|(|x|)><text|
      exist>
    </equation*>

    <\note>
      <math|<below|lim|h\<rightarrowlim\><rsub|U<rsub|x>\\<around*|{|0|}>>0><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>>
      is a shorthand for <math|<below|lim|h\<rightarrowlim\><rsub|Ux>>\<Delta\><around*|(|h|)>>
      where\ 

      <\equation*>
        \<Delta\><around*|(|h|)>:U<rsub|x>\\<around*|{|0|}>\<rightarrow\>Y<text|
        is defined by >\<Delta\><around*|(|h|)>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
      </equation*>
    </note>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f> is calculate differentiable at <math|x> with derivate
      <math|f<rprime|'><around*|(|x|)>> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have <math|>

      <\equation>
        <label|eq 16.1.194><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      Define now\ 

      <\equation*>
        \<Delta\>:U<rsub|x>\\<around*|{|0|}>\<rightarrow\>Y<text| by
        >\<Delta\><around*|(|h|)>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
      </equation*>

      then if <math|h\<in\>U<rsub|x>\\<around*|{|0|}>> and
      \ <math|0\<less\><around*|\||0-h|\|>\<less\>\<delta\>> we have

      <\equation*>
        <around*|\<\|\|\>|\<Delta\><around*|(|h|)>-f<rprime|'><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><rsub|<text|[eq:
        <reference|eq 16.1.194>]>>\<varepsilon\>
      </equation*>

      proving that\ 

      <\equation*>
        <below|lim|h\<rightarrowlim\><rsub|U<rsub|x>\\<around*|{|0|}>>>\<Delta\><around*|(|h|)>=f<rprime|'><around*|(|x|)>
      </equation*>

      \ 

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|>for\ 

      <\equation*>
        \<Delta\>:U<rsub|x>\\<around*|{|0|}>\<rightarrow\>Y<text| by
        >\<Delta\><around*|(|h|)>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
      </equation*>

      we have that\ 

      <\equation*>
        <below|lim<rsub|h\<rightarrowlim\><rsub|U<rsub|x>\\<around*|{|0|}>>>\<Delta\><around*|(|h|)>=L|><text|
        exists>
      </equation*>

      there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that if
      <math|h\<in\>U<rsub|x>> and <math|0\<less\><around*|\||0-h|\|>\<less\>\<delta\>>
      that\ 

      <\equation*>
        <around*|\<\|\|\>|\<Delta\><around*|(|h|)>-L|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-L|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      hence if <math|h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have that
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-L|\<\|\|\>>\<less\>\<varepsilon\>>
      proving that <math|f> is calculus differentiable with
      <math|f<rprime|'><around*|(|x|)>=L=lim<rsub|h\<rightarrowlim\><rsub|U<rsub|x>\\<around*|{|0|}>>>\<Delta\><around*|(|h|)>>.
    </description>
  </proof>

  If we want to extend the above definition to a function whose domain is a
  subset of a normed space we run in problems. If
  <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
  <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
  are normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U> and
  <math|f:U\<rightarrow\>Y> a function then as
  <math|><math|f<around*|(|x+h|)>-f<around*|(|x|)>\<in\>Y> and
  <math|h\<in\>X> the quotient <math|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>>
  is not defined so that also <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>
  is ill-defined. To solve this note that in the case where
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
  <math|L\<in\>L<around*|(|\<bbb-K\>,Y|)>> hence we can rewrtie the above as\ 

  <\equation*>
    <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
  </equation*>

  This can extended to the more general cases where the normed spaces are
  <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
  if we use

  <\equation*>
    <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
  </equation*>

  This is the idea behing Frèchet differentiability and the Frèchet
  differential which is covered in next subsection.

  <subsection|Frèchet differential of a function>

  We are now ready to define the differentiability of a function. First we
  need a lemma that ensures that the differential of a function [if it exist]
  is unique.

  <\lemma>
    <label|diff differential is unique>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>U> a open set,
    <math|f:U\<rightarrow\>Y> a function and
    <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>> such that\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<rsub|1><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>

    and

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>

    then we have that\ 

    <\equation*>
      L<rsub|1>=L<rsub|2>
    </equation*>
  </lemma>

  <\proof>
    Assume that <math|L<rsub|1>\<neq\>L<rsub|2>> then there exist a
    <math|h\<in\>X> such that <math|L<rsub|1><around*|(|h|)>\<neq\>L<rsub|2><around*|(|h|)>>
    hence we have that

    <\equation*>
      \<varepsilon\>=<around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>\<in\>\<bbb-R\><rsup|+>
    </equation*>

    Now using the hypothesis there exists
    <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such
    that

    <\equation*>
      \<forall\>k\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
      we have ><around*|\<\|\|\>|f<around*|(|x+k|)>-f<around*|(|x|)>-L<rsub|1><around*|(|k|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>>
    </equation*>

    and

    <\equation*>
      \<forall\>k\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2><text|
      we have ><around*|\<\|\|\>|f<around*|(|x+k|)>-f<around*|(|x|)>-L<rsub|2><around*|(|k|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>>
    </equation*>

    As <math|U<rsub|x>\<equallim\><rsub|<text|[eq: <reference|diff
    Ux=-x+U=U-x>]>><around*|(|-x|)>+U> is open [see theorem:
    <reference|normed space set operations>] and <math|0\<in\>U<rsub|x>>
    there exist a <math|\<delta\><rsub|3>\<in\>\<bbb-R\><rsup|+>> such that
    <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|3>|)>\<subseteq\>U<rsub|x>>.
    Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>|)>>
    and define <math|h<rprime|'>=<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1|)>>\<cdot\>h>
    then\ 

    <\equation*>
      <around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1|)>>\<cdot\>h|\<\|\|\>><rsub|X>=\<delta\>\<cdot\><frac|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>
    </equation*>

    so that <math|h<rprime|'>\<in\>U<rsub|x>> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|\<delta\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|\<delta\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\>L<rsub|1><around*|(|h|)>-<frac|\<delta\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\>L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|<frac|\<delta\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\>h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|2><around*|(|<frac|\<delta\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\>h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|h<rprime|'>|)>-L<rsub|2><around*|(|h<rprime|'>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x+h<rprime|'>|)>-f<around*|(|x|)>-L<rsub|2><around*|(|h<rprime|'>|)>-<around*|(|f<around*|(|x+h<rprime|'>|)>-f<around*|(|x|)>-L<rsub|1><around*|(|h<rprime|'>|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x+h<rprime|'>|)>-f<around*|(|x|)>-L<rsub|2><around*|(|h<rprime|'>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|x+h<rprime|'>|)>-f<around*|(|x|)>-L<rsub|1><around*|(|h<rprime|'>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X>+<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|<frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1|)>>\<cdot\>h|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\><frac|\<delta\>|<around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>

    so that

    <\equation*>
      <around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>=<around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>
    </equation*>

    a contradiction. So we must have

    <\equation*>
      L<rsub|1>=L<rsub|2>
    </equation*>
  </proof>

  <\definition>
    <label|diff differentiability><index|differentiability><dueto|Frèchet
    differentiabily>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> and <math|x\<in\>U> a open set
    then a function

    <\equation*>
      f:U\<rightarrow\>Y
    </equation*>

    is Frèchet differentiable at <math|x> if there exist a
    <math|L\<in\>L<around*|(|X,Y|)>> such that
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>

    If <math|f> is Frèchet differentiable then by [lemma: <reference|diff
    differential is unique>] the above <math|L> is
    <with|font-series|bold|unique> and is called the
    <with|font-series|bold|Frèchet differential of f at <math|x>> and noted
    by <math|D f<around*|(|x|)>>. In other words <math|f> is Frechet
    differentiable at <math|x> if

    <\equation*>
      D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)><text| exist>
    </equation*>

    where\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X><text| we have
      ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>
  </definition>

  <\note>
    There is a slight misleading notation used here. <math|D
    f*<around*|(|x|)>> suggest that <math|D f> is a function applied to
    <math|x> or that <math|D> is a operator that acts on the value
    <math|f<around*|(|x|)>>. This is wrong, <math|D f<around*|(|x|)>> is a
    element of <math|L<around*|(|X;Y|)>> such that <with|font-series|bold|at>
    <math|x> we can approximate <math|f<around*|(|x+h|)>-f<around*|(|x|)>> by
    <math|D f<around*|(|x|)>> if we make <math|h> small enough.
  </note>

  <\definition>
    <label|diff differentiability on a set>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|A\<subseteq\>U>
    then a function <math|f:U\<rightarrow\>Y> is Frèchet differentiable
    <with|font-series|bold|on ><math|A> if <math|\<forall\>x\<in\>A> we have
    that <math|f> is Frèchet differentiable at <math|x>.
  </definition>

  <\example>
    <label|diff identity function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space then <math|\<forall\>x\<in\>X> we have that
    <math|Id<rsub|X>:X\<rightarrow\>X> is Frèchet differentiable at <math|x>
    and <math|D Id<rsub|X><around*|(|x|)>=Id<rsub|X>>
  </example>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then we have for
    <math|h\<in\>X=X<rsub|x>> that\ 

    <\equation*>
      <around*|\<\|\|\>|Id<rsub|X><around*|(|x+h|)>-Id<rsub|X><around*|(|x|)>-Id<rsub|X><around*|(|h|)>|\<\|\|\>>=<around*|\<\|\|\>|x+h-x-h|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
    </equation*>
  </proof>

  Although the Frèchet differentiability and differential is defined using
  norms it is actually dependent on the topology generated by the norms. This
  is expressed in the following theorem.

  \;

  <\theorem>
    <label|diff equivalent norms>Let <math|X,Y> be vector spaces over
    <math|\<bbb-K\>> with equivalent norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    on <math|X> and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> on <math|Y>,
    <math|U\<subseteq\>X> a open set [using the topology
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>\<equallim\><rsub|<text|norms
    are equivalent >>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>>],
    <math|x\<in\>X> and

    <\equation*>
      f:X\<rightarrow\>Y<text| is a Frèchet differentiable function with
      differential >D f<around*|(|x|)><text| using
      ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>
    </equation*>

    then\ 

    <\equation*>
      f:X\<rightarrow\>Y<text| is a Frèchet differentiable function with
      differential >D f<around*|(|x|)><text| using
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
      f<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>
    </equation*>

    Take <math|\<delta\>=<frac|\<delta\><rprime|'>|\<beta\><rsub|X>>> then
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>\<less\>\<delta\>>
    then <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>\<less\>\<delta\>\<cdot\>\<beta\><rsub|X>=\<delta\><rprime|'>>
    so that from the above we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|1>>>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|\<beta\><rsub|Y>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><frac|\<varepsilon\>|\<beta\><rsub|Y>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>
    </equation*>

    This together with the fact <math|D f<around*|(|x|)>> is also a
    continuous linear function between <math|X> and <math|Y> using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> [because the norms
    are equivalent] proves that <math|f> is Frèchet differentiable at
    <math|x> with differential <math|D f<around*|(|x|)>> using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>.
  </proof>

  Differentiability of a function at a point is a local property it only
  depends on the function graph values for a arbitrary neighborhood of this
  point.

  <\theorem>
    <label|diff differentiability is a local property>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function, <math|V\<subseteq\>U> a open subset
    of <math|U> such that <math|x\<in\>V> then we have\ 

    <\equation*>
      f<text| is Frèchet differentiable at <math|x> with differential >D
      f<around*|(|x|)>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<rsub|\|V><text| is Frèchet differentiable at <math|x> with
      differential >D f<rsub|\|V><around*|(|x|)>
    </equation*>

    further if <math|f> or <math|f<rsub|\|V>> is Frèchet differentiable then
    <math|D f<around*|(|x|)>=D f<rsub|\|V><around*|(|x|)>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f> is Frèchet differentiable at <math|x> with differential
      <math|D f<around*|(|x|)>> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      Let <math|h\<in\>V<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then <math|x+h\<in\>V\<subseteq\>U>, so that <math|h\<in\>U<rsub|x>>.
      Hence we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<rsub|\|V><around*|(|x+h|)>-f<rsub|\|V><around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|x+h,x\<in\>V><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      proving that <math|f<rsub|\|V>> is Frèchet differentiable with
      differential <math|D f<around*|(|x|)>>. Hence <math|D
      f<around*|(|x|)>=D f<rsub|\|V><around*|(|x|)>.>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|x+0=x\<in\>V> we have that <math|0\<in\>V<rsub|x>> which is
      open [see theorem: <reference|normed space set operations>] so that
      there exists a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such
      that <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|1>|)>\<subseteq\>V<rsub|x>>.
      Further, as <math|f<rsub|\|V>> is Frèchet differentiable at <math|x>
      with differential <math|D f<rsub|V><around*|(|x|)>>, there exist a
      <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>V<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
      we have <math|<around*|\<\|\|\>|f<rsub|\|V><around*|(|x+h|)>-f<rsub|\|V><around*|(|x|)>-D
      f<rsub|\|V><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|\|X>>.
      Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then if <math|h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
      so that <math|h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|1>|)>\<subseteq\>V<rsub|x>>
      and <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>,
      hence we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<rsub|\|V><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|x,x+h\<in\>V><around*|\<\|\|\>|f<rsub|\|V><around*|(|x+h|)>-f<rsub|\|V><around*|(|x|)>-D
        f<rsub|\|V><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      This proves that <math|f> is Frèchet differentiable with differential
      <math|D f<rsub|\|V><around*|(|x|)>>. Hence <math|D f<around*|(|x|)>=D
      f<rsub|\|V><around*|(|x|)>.>
    </description>
  </proof>

  <\corollary>
    <label|diff differentiability is a local property (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|V<rsub|1>,V<rsub|2>> open sets in <math|X>,
    <math|x\<in\>V<rsub|1><big|cap>V<rsub|2>>,
    <math|f:V<rsub|1>\<rightarrow\>Y>, <math|g:V<rsub|2>\<rightarrow\>Y> such
    that there exist a open set <math|W> with
    <math|x\<in\>W\<subseteq\>V<rsub|1><big|cap>V<rsub|2>> and
    <math|\<forall\>y\<in\>W> we have <math|f<around*|(|y|)>=g<around*|(|y|)>>.
    Then if <math|f> is Frèchet differentiable at <math|x> it follows that
    <math|g> is also Frèchet differentiable at <math|x> and <math|D
    f<around*|(|x|)>=D g<around*|(|x|)>>.
  </corollary>

  <\proof>
    As <math|\<forall\>y\<in\>W> we have that
    <math|f<around*|(|y|)>=g<around*|(|y|)>> it follows that
    <math|f<rsub|\|W>=g<rsub|\|W>>. As <math|f> is Frèchet differentiable at
    <math|x> it follows from [theorem: <reference|diff differentiability is a
    local property>] it follows that <math|f<rsub|\|W>=g<rsub|\|W>> is
    Frèchet differentiable at <math|x> with <math|D f<around*|(|x|)>=D
    f<rsub|\|W><around*|(|x|)>\<equallim\><rsub|f<rsub|\|W>=g<rsub|\|W>>D
    g<rsub|\|W><around*|(|x|)>>. Hence using [theorem: <reference|diff
    differentiability is a local property>] again it follows that <math|g> is
    Frèchet differentiable at <math|x> with <math|D g<around*|(|x|)>=D
    g<rsub|\|W><around*|(|x|)>=D f<around*|(|x|)>>.
  </proof>

  <\example>
    <label|diff constant function is differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|y\<in\>Y> then <math|\<forall\>x\<in\>X> we have that

    <\equation*>
      C<rsub|y>:X\<rightarrow\>Y<text| defined by >C<rsub|y><around*|(|x|)>=y
    </equation*>

    is Frèchet differentiable at <math|x> and <math|D
    C<rsub|y><around*|(|x|)>=C<rsub|0>> where
    <math|C<rsub|0>:X\<rightarrow\>Y> is defined by
    <math|C<rsub|0><around*|(|z|)>=0>.
  </example>

  <\proof>
    Let <math|x\<in\>X> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
    for <math|h\<in\>X<rsub|x>=X>

    <\equation*>
      <around*|\<\|\|\>|C<rsub|y><around*|(|x+h|)>-C<rsub|y><around*|(|x|)>-C<rsub|0><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-y-0|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation*>
  </proof>

  <\example>
    <label|diff linear mappings are differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|L\<in\>L<around*|(|X,Y|)>> then <math|\<forall\>x\<in\>X> we have
    that\ 

    <\equation*>
      L<text| is Frèchet differentiable at >x<text| with differential >D
      L<around*|(|x|)>=L
    </equation*>
  </example>

  <\proof>
    Let <math|x\<in\>X> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
    we have\ 

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|x+h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>+L<around*|(|h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
    </equation*>
  </proof>

  We look now at some alternative definitions of Frèchet differentiability.
  First we need a definition of a <math|\<varepsilon\>>-mapping.

  <\definition>
    <label|diff e-mapping><index|<math|\<varepsilon\>>-mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set and <math|x\<in\>U>
    then a <with|font-series|bold|<math|\<varepsilon\>>-mapping at <math|x>>
    is a function <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y> which is
    continuous at <math|0\<in\>U<rsub|x>> [using the subspace topology on
    <math|U<rsub|x>>] and satisfies <math|\<varepsilon\><around*|(|0|)>=0>.
  </definition>

  <\theorem>
    <label|diff differentiability alternative definitions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function then the following are equivalent.

    <\enumerate>
      <item><math|f> is Frèchet differentiable at <math|x>

      <item>There exist <math|>a <math|L\<in\>L<around*|(|X,Y|)>> and a
      <math|\<varepsilon\>>-mapping <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y>
      such that <math|\<forall\>h\<in\>U<rsub|x>> we have\ 

      <\equation*>
        f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>> such that\ 

      <\equation*>
        <below|lim|<below|y\<rightarrow\>x|U>><frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>=0
      </equation*>

      <item>There exist a <math|L\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\><around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>U<rsub|x>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|0\<less\><around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>> and
      <math|<below|lim|i\<rightarrow\>\<infty\>>h<rsub|i>=0> we have\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>=0
      </equation*>
    </enumerate>

    further if either 1,2,3,4,5 is true then <math|L=D f<around*|(|x|)>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|L=D
      f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> and define

      <\equation*>
        \<varepsilon\>:U<rsub|x>\<rightarrow\>Y<text| by
        >\<varepsilon\><around*|(|h|)>=<choice|<tformat|<table|<row|<cell|0<text|
        if >h=0>>|<row|<cell|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>><text|
        if >h\<in\>U<rsub|x>\\<around*|{|0|}>>>>>>
      </equation*>

      then we have <math|\<forall\>h\<in\>U<rsub|x>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0<text|
        if >h=0>>|<row|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)><text|
        if >h\<in\>U<rsub|x>\\<around*|{|0|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|f<around*|(|x+0|)>-f<around*|(|x|)>-L<around*|(|0|)><text|
        if >h=0>>|<row|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)><text|
        if >h\<in\>U<rsub|x>\\<around*|{|0|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<forall\>h\<in\>U<rsub|x><text| we have
        >f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      Rest us to prove that <math|\<varepsilon\>> is continuous at <math|0>.
      Let <math|\<zeta\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is Frèchet
      differentiable there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<zeta\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      Hence we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>\<less\>\<zeta\>
        if h=0>>|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<zeta\>
        if h\<neq\>0>>>>>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<zeta\>>>>>
      </eqnarray*>

      which by [theorem: <reference|continuity in normed subspace>] proves
      that <math|\<varepsilon\>> is continuous at <math|0> in the subspace
      topology of <math|U<rsub|x>>.

      <item*|<math|2\<Rightarrow\>3>>Let <math|L\<in\>L<around*|(|X,Y|)>> and
      <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y> a
      <math|\<varepsilon\>>-mapping such that
      <math|\<forall\>h\<in\>U<rsub|x>>\ 

      <\equation*>
        f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><around*|(|h|)>
      </equation*>

      Take <math|\<zeta\>\<in\>\<bbb-R\><rsup|+>>. As
      <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y> is continuous we can use
      [theorem: <reference|continuity in normed subspace>] to find a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
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
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      Now <math|\<forall\>h\<in\>U<rsub|x>> with
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

      Hence <math|f> is Frèchet differentiable at <math|x> with differential
      <math|L> hence <math|L=D f<around*|(|x|)>>.

      <item*|<math|3\<Rightarrow\>4>>Let <math|L\<in\>L<around*|(|X,Y|)>> be
      such that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
      exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> so that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have\ 

      <\equation>
        <label|eq 16.1.177><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation>

      Define then\ 

      <\equation*>
        F:U\\<around*|{|0|}>\<rightarrow\>\<bbb-R\><text| by
        >F<around*|(|y|)>=<frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>
      </equation*>

      So if <math|y\<in\>U\<Rightarrow\>y-x\<in\>U<rsub|x>> with
      \ <math|0\<less\><around*|\<\|\|\>|y-x|\<\|\|\>>\<less\>\<delta\><rsub|>>
      we have\ 

      <\equation*>
        <around*|\||F<around*|(|y|)>-0|\|>=<frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>=<frac|<around*|\<\|\|\>|f<around*|(|x+<around*|(|y-x|)>|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|<around*|(|y-x|)>|\<\|\|\>><rsub|X>>\<less\><rsub|<text|[eq
        <reference|eq 16.1.177>]>>\<varepsilon\>
      </equation*>

      proving that\ 

      <\equation*>
        <below|lim|<below|y\<rightarrow\>x|U<rsub|x>>>F<around*|(|y|)>=<below|lim|<below|y\<rightarrow\>x|U<rsub|x>>><frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>=0
      </equation*>

      <item*|<math|4\<Rightarrow\>3>>Let <math|L\<in\>L<around*|(|X,Y|)>> be
      such that for <math|F:U\\<around*|{|0|}>\<rightarrow\>Y> defined by
      <math|F<around*|(|y|)>=<frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>
      we have\ 

      <\equation*>
        <below|lim|<below|y\<rightarrow\>x|U<rsub|x>>>F<around*|(|y|)>=0
      </equation*>

      Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
      <math|<below|lim|<below|y\<rightarrow\>x|U<rsub|x>>>F<around*|(|y|)>=0>
      there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>y\<in\>U> with <math|0\<less\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have that\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>=<around*|\||F<around*|(|y|)>-0|\|>\<less\>\<varepsilon\>
      </equation*>

      Hence if <math|h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have, if we take <math|y=x+h>, that
      <math|0\<less\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      and <math|y\<in\>U> so that\ 

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>=<frac|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-L<around*|(|y-x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      <item*|<math|3\<Rightarrow\>5>>Let <math|<around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>U<rsub|x>>
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
      <math|N\<in\>\<bbb-N\>> such that <math|\<forall\>n\<geqslant\>N> we
      have that <math|0\<less\><around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h-0|\<\|\|\>><rsub|X>\<less\>\<delta\>>,
      so that\ 

      <\equation*>
        <around*|\||<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>-0|\|>=<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>
      </equation*>

      This proves that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>=0
      </equation*>

      <item*|<math|5\<Rightarrow\>3>>Assume that <math|<around*|(|3|)>> is
      false. Then given a <math|L\<in\>L<around*|(|X,Y|)>> there exist a
      <math|\<varepsilon\><rsub|0>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+>> there exist a
      <math|h\<in\>U<rsub|x>> with <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      such that

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<gtr\>\<varepsilon\><rsub|0>
      </equation*>

      Using [theorem: <reference|choice function generating>] it follows that
      <math|\<forall\>n\<in\>\<bbb-N\>> we have, as
      <math|<frac|1|n>\<in\>\<bbb-R\><rsup|+>>, that there exist a
      <math|h<rsub|n>\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>\<less\><frac|1|n>>
      such that\ 

      <\equation>
        <label|eq 16.2.177><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<gtr\>\<varepsilon\><rsub|0>
      </equation>

      Now by [example: <reference|limit 1/(a+i)>] together with [theorem:
      <reference|limit sequence dominated by a sequence converting to 0>]
      proves that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>h<rsub|n>=0
      </equation*>

      Hence by (5) we have that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>=0
      </equation*>

      So there exist a <math|N\<in\>\<bbb-N\>> such that <math|>

      <\equation*>
        <frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|N>|)>-f<around*|(|x|)>-L<around*|(|h<rsub|N>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|N>|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\><rsub|n>
      </equation*>

      contradicting [eq: <reference|eq 16.2.177>]. Hence the assumption is
      wrong and <math|<around*|(|3|)>> follows.
    </description>
  </proof>

  The reason why we require the differential to be continuous in addition to
  be linear is to ensure that a function that is Frèchet differentiable at a
  point is also continuous at this point. This is the subject of the next
  theorem.\ 

  <\theorem>
    <label|diff differentiable function is continuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U> and
    <math|f:X\<rightarrow\>Y> a function that is Frèchet differentiable at
    <math|x> then <math|f> is continuous at <math|x>.
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is Frèchet
    differentiable at <math|x> there exist a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have\ 

    <\equation>
      <label|eq 16.3.177><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation>

    As <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> we have also [see
    theorem: <reference|continuity operator norm (1)>]

    <\equation>
      <label|eq 16.4.177>\<forall\>h\<in\>X<text| that
      <math|<around*|\<\|\|\>|D f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>
    </equation>

    Define now <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,1,<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+1|)>>|)>> then for
    every <math|y\<in\>U> with <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have <math|y-x\<in\>U<rsub|x>> [as
    <math|<around*|(|y-x|)>+x=y\<in\>U>) and
    \ <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<leqslant\>\<delta\><rsub|1>,1,<frac|\<varepsilon\>|<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+1>>. Using [eq:
    <reference|eq 16.3.177>] we have then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x+<around*|(|y-x|)>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>>>>>
    </eqnarray*>

    and by [eq: <reference|eq 16.4.177>] it follows that\ 

    <\equation*>
      <around*|\<\|\|\>|D f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+1|)>>\<less\><frac|\<varepsilon\>|2>
    </equation*>

    Hence we have that <math|\<forall\>y\<in\>U> with
    <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>><space|1em>that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|y-x|)>+D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    So by [theorem: <reference|continuity in normed subspace>] it follows
    that <math|f> is continuous at <math|x>.
  </proof>

  In the previous subsection we talked about differentiability calculus to
  motivate the Frèchet definitions. We look now at the relation between the
  two definitions.

  <\theorem>
    <label|diff derivate and frechet differential>Given
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real or complect numbers, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\>> a open set, <math|x\<in\>U>
    and <math|f:U\<rightarrow\>X> af function then we have\ 

    <\equation*>
      f<text| is calculus differentiable at <math|x> with derivate
      >f<rprime|'><around*|(|x|)>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<text| is Frèchet differentiable at >x<text| with Frèchet differential
      >D f<around*|(|x|)>\ 
    </equation*>

    Further if <math|f<rprime|'><around*|(|x|)>> or <math|D f<around*|(|x|)>>
    exist then\ 

    <\equation*>
      f<rprime|'><around*|(|x|)>=D f<around*|(|x|)><around*|(|1|)>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>h\<in\>\<bbb-K\><text| we have >D
      f<around*|(|x|)><around*|(|h|)>=h\<cdot\>f<rprime|'><around*|(|x|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Define <math|D
      f<around*|(|x|)>:\<bbb-K\>\<rightarrow\>Y> by <math|D
      f<around*|(|x|)><around*|(|h|)>=h\<cdot\>f<rprime|'><around*|(|x|)>>
      then by [example: <reference|continuity norm L(x)=a.x>]\ 

      <\equation*>
        D f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,Y|)>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by [definition:
      <reference|diff calculus derivate>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have\ 

      <\equation>
        <label|eq 16.5.178><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      Let <math|h\<in\>U<rsub|x>> with <math|<around*|\||h|\|>\<less\>\<delta\>>
      then we have either:\ 

      <\description>
        <item*|<math|<around*|\||h|\|>=0>>Then <math|h=0> so that

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
          f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>=<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x|)>-0\<cdot\>f<rprime|'><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=\<varepsilon\>\<cdot\><around*|\||0|\|>=\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation*>

        <item*|<math|0\<less\><around*|\||h|\|>>>Then <math|h\<neq\>0> so
        that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
          f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>f<rprime|'><around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h\<cdot\><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-h\<cdot\>f<rprime|'><around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h\<cdot\><around*|(|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.5.178>]>>>|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>>>>
        </eqnarray*>
      </description>

      So in all cases we have\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation*>

      proving that <math|f> is Frèchet differentiable with the Frèchet
      differential defined by

      <\equation*>
        D f<around*|(|x|)><around*|(|h|)>=h\<cdot\>f<rprime|'><around*|(|x|)><text|
        so that >f<rprime|'><around*|(|x|)>=D f<around*|(|x|)><around*|(|1|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Take <math|f<rprime|'><around*|(|x|)>=D
      f<around*|(|x|)><around*|(|1|)>> and let
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Then as <math|f> is
      Frèchet differentiable with Frèchet differential <math|D
      f<around*|(|x|)>> we have that there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.6.178><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>
      </equation>

      Let <math|h\<in\>U<rsub|x>> be such that
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-D
        f<around*|(|x|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-h\<cdot\>D
        f*<around*|(|x|)><around*|(|1|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f*<around*|(|x|)><around*|(|h\<cdot\>1|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\||h|\|>>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f*<around*|(|x|)><around*|(|h|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.6.178>]>>>|<cell|<frac|1|<around*|\||h|\|>>\<cdot\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      Proving that <math|f> is differentiable at <math|x> in the calculus way
      with derivate <math|f<rprime|'><around*|(|x|)>=D
      f<around*|(|x|)><around*|(|1|)>>.
    </description>
  </proof>

  We prove now that calculus differentiation is a local property.

  <\corollary>
    <label|diff derivative is local>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (or complex numbers) with canonical norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a fomred space, <math|V<rsub|1>,V<rsub|2>> two open sets in
    <math|\<bbb-K\>>, <math|x\<in\>V<rsub|1><big|cap>V<rsub|2>> and
    <math|f:V<rsub|1>\<rightarrow\>X>, <math|g:V<rsub|2>\<rightarrow\>X> two
    functions such that there exist a open set <math|W> with
    <math|x\<in\>W\<subseteq\>V<rsub|1><big|cap>V<rsub|2>> and
    <math|\<forall\>y\<in\>W> <math|f<around*|(|y|)>=g<around*|(|y|)>>. Then
    if <math|f> is calculus differentiable at <math|x> <math|g> is also
    calculus differentiable at <math|x> and
    <math|f<rprime|'><around*|(|x|)>=g<rprime|'><around*|(|x|)>>.\ 
  </corollary>

  <\proof>
    As <math|f> is calculus differentiable at <math|x> it follows from
    [theorem: <reference|diff derivate and frechet differential>] that
    <math|f> is Frèchet differentiable at <math|x> and
    <math|f<rprime|'><around*|(|x|)>=D f<around*|(|x|)><around*|(|1|)>>.
    Using [corollary: <reference|diff differentiability is a local property
    (1)>] it follows that <math|g> is Frèchet differentiable at <math|x> and
    <math|D g<around*|(|x|)>=D f*<around*|(|x|)>>. Hence using [theorem:
    <reference|diff derivate and frechet differential>] again it follows that
    <math|g> is calculus differentiable at <math|x> and
    <math|g<rprime|'><around*|(|x|)>=D g<around*|(|x|)><around*|(|1|)>=D
    f<around*|(|x|)><around*|(|1|)>=f<rprime|'><around*|(|x|)>>.
  </proof>

  <subsection|Properties of the Frèchet differential>

  <\theorem>
    <label|diff derivate operator is linear>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U> then
    we have:

    <\enumerate>
      <item>If <math|f:U\<rightarrow\>Y> is Frèchet differentiable at
      <math|x> and <math|g:U\<rightarrow\>Y> is Frèchet differentiable at
      <math|x> then\ 

      <\equation*>
        f+g:U\<rightarrow\>Y<text| is Frèchet differentiable with Frèchet
        differential >D<around*|(|f+g|)><around*|(|x|)>=D f<around*|(|x|)>+D
        g<around*|(|x|)>
      </equation*>

      <item>If <math|f:U\<rightarrow\>Y> is Frèchet differentiable at
      <math|x> and <math|\<alpha\>\<in\>\<bbb-K\>> then

      <\equation*>
        \<alpha\>\<cdot\>f:U\<rightarrow\>Y<text| is Frèchet differentiable
        at <math|x> with Frèchet differential
        >D<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D
        f<around*|(|x|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f,g>
      are Frèchet differentiable at <math|x> there exist
      <math|\<delta\><rsub|1>,\<delta\><rsub|2>> such that\ 

      <\equation*>
        \<forall\>h\<in\>U<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|1><text|
        we have ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      <\equation*>
        h\<in\>U<rsub|x><text| with ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|2><text|
        we have ><around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-D
        g<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      As <math|D f<around*|(|x|)>>, <math|D
      g<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> we have by [theorem:
      <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>] that <math|D
      f<around*|(|x|)>+D g<around*|(|x|)>>. Further if
      <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f+g|)><around*|(|x+h|)>-<around*|(|f+g|)><around*|(|x|)>-<around*|(|D
        f<around*|(|x|)>+D g<around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>+g<around*|(|x+h|)>-f<around*|(|x|)>-g<around*|(|x|)>-<around*|(|D
        f<around*|(|x|)><around*|(|h|)>+D
        g<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|x+h|)>-g<around*|(|x|)>-D
        g<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|f+g> is Frèchet differentiable at <math|x> with
      Frèchet differential <math|D f<around*|(|x|)>D f<around*|(|x|)>>.

      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is
      Frèchet differentiable at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        \<forall\>h\<in\>U<rsub|x><text| with
        ><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\><rsub|1><text|
        we have ><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      As <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> it follows from
      [theorem: <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>] that
      <math|\<alpha\>\<cdot\>D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>>.
      Further if <math|h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x+h|)>-<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>-<around*|(|\<alpha\>\<cdot\>D
        f<around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>f<around*|(|x+h|)>-\<alpha\>\<cdot\>f<around*|(|x|)>-\<alpha\>\<cdot\>D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|\<alpha\>\<cdot\>f> is Frèchet differentiable at
      <math|x> with Frèchet differential <math|\<alpha\>\<cdot\>D
      f<around*|(|x|)>>.
    </enumerate>
  </proof>

  We introduce now the most important rule for differentials.

  <\theorem>
    <label|diff chain rule><index|Chain rule><dueto|Chain Rule>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set in <math|X>,
    <math|V\<subseteq\>Y> a open set in <math|Y>, <math|f:U\<rightarrow\>Y>,
    <math|g:V\<rightarrow\>Z> functions such that
    <math|f<around*|(|U|)>\<subseteq\>V>, <math|x\<in\>U> such that <math|f>
    is Frèchet differentiable at <math|x> and <math|g> is Frèchet
    differentiable at <math|f<around*|(|x|)>> then

    <\equation*>
      g\<circ\>f:U\<rightarrow\>Z<text| is Frèchet differentiable at
      <math|x>>
    </equation*>

    and\ 

    <\equation*>
      D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|f> is Frèchet differentiable at <math|x> we have by [theorem:
    <reference|diff differentiability alternative definitions>] that there
    exist a <math|\<varepsilon\>>-mapping
    <math|\<varepsilon\><rsub|f>:U<rsub|x>\<rightarrow\>Y> such that\ 

    <\equation>
      <label|eq 16.7.178>\<forall\>h\<in\>U<rsub|x><text| we have
      >f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>
    </equation>

    Further as <math|g> is Frèchet differentiable at <math|f<around*|(|x|)>>
    we can use [theorem: <reference|diff differentiability alternative
    definitions>] again giving a <math|\<varepsilon\>>-mapping
    <math|\<varepsilon\><rsub|g>:V<rsub|f<around*|(|x|)>>\<rightarrow\>Z>
    satisfying

    <\equation>
      <label|eq 16.8.178>\<forall\>k\<in\>V<rsub|f<around*|(|x|)>><text| we
      have >g<around*|(|f<around*|(|x|)>+k|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|k|)>=<around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|k|)>
    </equation>

    Let <math|h\<in\>U<rsub|x>>. As <math|<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+f<around*|(|x|)>=f<around*|(|x+h|)>\<in\>f<around*|(|U|)>\<subseteq\>V>
    we have that <math|f<around*|(|x+h|)>-f<around*|(|x|)>\<in\>V<rsub|f<around*|(|x|)>>>,
    combining this with [eq: <reference|eq 16.8.178>] that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x|)>+<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.7.178>]>>>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>+D
      f<around*|(|x|)><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>-<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)>|)><around*|(|h|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)>|)><around*|(|h|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+D
      g<around*|(|f<around*|(|x|)>|)><around*|(|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|>|<cell|<eq-number><label|eq
      16.9.178>>>>>
    </eqnarray*>

    The next logical step is to fund a <math|\<varepsilon\>>-mapping
    <math|\<zeta\>:U<rsub|x>\<rightarrow\>Y> such that

    <\equation*>
      \<zeta\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>=<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>
    </equation*>

    because we can then use [theorem: <reference|diff differentiability
    alternative definitions>]. So define\ 

    <\equation*>
      \<zeta\>:U<rsub|x>\<rightarrow\>Y<text| by
      ><choice|<tformat|<table|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)><text|
      if >h\<in\>U<rsub|x>\\<around*|{|0|}>>>|<row|<cell|0<text| if >h=0>>>>>
    </equation*>

    Then for <math|h\<in\>U<rsub|x>> we have either:

    <\description>
      <item*|<math|h=0>>Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+0|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+0|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|0|\<\|\|\>><rsub|X>\<cdot\>D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|0|)>|)>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|=>|<cell|>>|<row|<cell|0\<cdot\>\<zeta\><around*|(|0|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item*|<math|h\<neq\>0>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><around*|(|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </description>

    Combining the above with [eq: <reference|eq 16.9.178>] gives us\ 

    <\equation>
      <label|eq 16.10.178><around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)>|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>
    </equation>

    Next we must prove that <math|\<xi\>> is continuous at <math|0>. Let
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As
    <math|\<varepsilon\><rsub|f>> is a <math|\<varepsilon\>>-mapping it is
    continuous at 0<math|>. So by [theorem: <reference|continuity in normed
    subspace>] there exist a <math|\<delta\><rsub|f>\<in\>\<bbb-R\><rsup|+>>
    such that if <math|h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|f>>
    then\ 

    <\equation>
      <label|eq 16.11.178><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>1
    </equation>

    So if additional <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>> we
    have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<around*|\<\|\|\>|f*<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>|<cell|\<equallim\><rsub|<text|
      [eq: <reference|eq 16.7.178>]>>>|<cell|<frac|<around*|\<\|\|\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>+D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|<around*|\<\|\|\>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|e<rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 16.11.178>]>>>|<cell|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>>>
    </eqnarray*>

    hence we have\ 

    <\equation>
      <label|eq 16.12.178>\<forall\>h\<in\>U<rsub|x><text| with
      >0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|f><text|
      we have ><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)><rsub|>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
    </equation>

    \;

    \;

    <math|> As <math|\<varepsilon\><rsub|g>> is a
    <math|\<varepsilon\>>-mapping it is continuous at <math|0>. So by
    [theorem: <reference|continuity in normed subspace>] there exist a
    <math|\<delta\><rsub|g>\<in\>\<bbb-R\><rsup|+>> such that

    <\equation>
      <label|eq 16.13.178>\<forall\>k\<in\>V<rsub|f<around*|(|x|)>><text|
      with ><around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g><text|
      we have ><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|k|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>
    </equation>

    As <math|f> is Frèchet differentiable at <math|x> we have by [theorem:
    <reference|diff differentiable function is continuous>] that <math|f> is
    continuous at <math|x>, hence there exist by \ [theorem:
    <reference|continuity in normed subspace>] a
    <math|\<delta\>+1\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>y\<in\>U> with <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g>>.
    So if <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|x+h\<in\>U> and <math|<around*|\<\|\|\>|<around*|(|x+h|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    so that <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|g>>
    which by [eq: <reference|eq 16.13.178>] results in
    <math|><math|<around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>>. Summarized\ 

    <\equation*>
      \<forall\>h\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1><text|
      we have ><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>
    </equation*>

    Combining this with [eq: <reference|eq 16.12.178>] we have
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|f>|)>>
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)><rsub|>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<less\>>|<cell|>>|<row|<cell|<around*|(|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<less\>>|<cell|>>|<row|<cell|<around*|(|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>><around*|(|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>>|<cell|>|<cell|>>>>
    </eqnarray*>

    or

    <\equation>
      <label|eq 16.14.178>\<forall\>h\<in\>U<rsub|x><text| with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|f>|)><text|
      >>><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)><rsub|>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\><frac|\<varepsilon\>|2>
    </equation>

    As <math|\<varepsilon\><rsub|f>:U<rsub|x>\<rightarrow\>Y> is a
    <math|\<varepsilon\>>-mapping is is continuous at <math|0>, so by
    [theorem: <reference|continuity in normed subspace>] there exist a
    <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|4>> we
    have <math|<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
    g<around*|(|f<around*|(|x|)>|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>|)>>>.
    Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D
      g<around*|(|f<around*|(|x|)>|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|\<\|\|\>|D
      g<around*|(|f<around*|(|x|)>|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
      g<around*|(|f<around*|(|x|)>|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>>>>>
    </eqnarray*>

    In other words\ 

    <\equation>
      <label|eq 16.15.178>\<forall\>h\<in\>U<rsub|x><text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2><text|
      we have ><around*|\<\|\|\>|D g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2>
    </equation>

    Take now <math|\<delta\>=min<around*|(|\<delta\><rsub|f>,\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
    and <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h-0|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    then we have either:

    <\description>
      <item*|<math|h=0>>Then <math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|\<xi\><around*|(|0|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Z>\<less\>\<varepsilon\>>

      <item*|<math|h\<neq\>0>>Then <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|Z>\<less\>\<delta\><rsub|f>,\<delta\><rsub|1>,\<delta\><rsub|2>>
      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>>|<cell|=>|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<cdot\>\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|><rsub|X>>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.14.178>]>>>|<cell|<frac|\<varepsilon\>|2>+<around*|\<\|\|\>|D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.15.178>]>>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>
    </description>

    So we have in all cases that <math|><math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>\<less\>\<varepsilon\>>
    which as by <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> was chosen
    arbitrary proves that <math|\<zeta\>> is continuous at <math|0>. As also
    <math|\<zeta\><around*|(|0|)>=0> it follows by definition that
    <math|\<zeta\>:U<rsub|x>\<rightarrow\>Z> is a
    <math|\<varepsilon\>>-mapping. Hence as by [eq: <reference|eq 16.10.178>]
    <math|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D
    f<around*|(|x|)>|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<cdot\>\<zeta\><around*|(|h|)>>
    it follows from [theorem: <reference|diff differentiability alternative
    definitions>] that\ 

    <\equation*>
      g\<circ\>f<text| is Frèchet differentiable with differential >D
      <around*|(|g\<circ\>f|)><around*|(|x|)>=D
      f<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>
    </equation*>
  </proof>

  <\corollary>
    <label|diff chain rule calculus>Let <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    the normed space of real or complex numbers,
    <math|U\<subseteq\>\<bbb-K\>> a open set in <math|\<bbb-K\>>,
    <math|V\<subseteq\>\<bbb-K\>> a open set in <math|\<bbb-K\>>,
    <math|f:U\<rightarrow\>\<bbb-K\>> a function so that
    <math|f<around*|(|U|)>\<subseteq\>V>, <math|g:V\<rightarrow\>Y> a
    function and <math|x\<in\>\<bbb-K\>> such that <math|f> is differentiable
    [in the calculust sense] at <math|x> and <math|g> is differentiable [in
    the calculus sense] at <math|f<around*|(|x|)>>. Then
    <math|g\<circ\>f:U\<rightarrow\>Y> is differentiable [in the calculus
    sense] at <math|x> and

    <\equation*>
      <around*|(|g\<circ\>f|)><rprime|'><around*|(|x|)>=f<rprime|'><around*|(|x|)>\<cdot\>g<rprime|'><around*|(|f<around*|(|x|)>|)>
    </equation*>
  </corollary>

  <\proof>
    Using [theorem: <reference|diff derivate and frechet differential>] it
    follows that <math|f> is Frèchet differentiable at <math|x> and <math|g>
    is Frèchet differentiable at <math|f<around*|(|x|)>>. Using the Chain
    Rule [theorem: <reference|diff chain rule>] we have that
    <math|g\<circ\>f> is Frèchet differentiable at <math|x>. Hence, using
    \ [theorem: <reference|diff derivate and frechet differential>], we have
    that <math|g\<circ\>f> is differentiable [in the calculus sense] at
    <math|x>. Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><rprime|'><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[[theorem:
      <reference|diff derivate and frechet differential>]
      >>>|<cell|<around*|(|D <around*|(|g\<circ\>f|)><around*|(|x|)>\<circ\>D
      f<around*|(|x|)>|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|D
      g<around*|(|f<around*|(|x|)>|)><around*|(|D
      f<around*|(|x|)><around*|(|1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[[theorem:
      <reference|diff derivate and frechet differential>] >>>|<cell|D
      g<around*|(|f<around*|(|x|)>|)><around*|(|f<rprime|'><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[[theorem:
      <reference|diff derivate and frechet differential>]
      >>>|<cell|f<rprime|'><around*|(|x|)>\<cdot\>g<rprime|'><around*|(|f<around*|(|x|)>|)>>>>>
    </eqnarray*>
  </proof>

  <\corollary>
    <label|diff composition with a linear mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set in <math|X>,
    <math|x\<in\>U>, <math|f:U\<rightarrow\>Y> a function that is Frèchet
    differentiable at <math|x> and <math|L\<in\>L<around*|(|Y,Z|)>> then

    <\equation*>
      L\<circ\>f:U\<rightarrow\>X<text| is Frèchet differentiable at
      <math|x>>
    </equation*>

    and\ 

    <\equation*>
      D<around*|(|L\<circ\>f|)><around*|(|x|)>=L\<circ\>D f<around*|(|x|)>
    </equation*>
  </corollary>

  <\proof>
    Using [example: <reference|diff linear mappings are differentiable>]
    <math|L> is Frèchet differentiable at <math|f<around*|(|x|)>> and <math|D
    L<around*|(|f<around*|(|x|)>|)>=L>. Hence using [theorem: <reference|diff
    chain rule>] <math|L\<circ\>f> is Frèchet differentiable at <math|x> and

    <\equation*>
      D<around*|(|L\<circ\>f|)><around*|(|x|)>=D
      L<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>=L\<circ\>D
      f<around*|(|x|)>
    </equation*>
  </proof>

  <subsection|Partial differentials>

  <\definition>
    <label|diff unprojection><index|<math|I<rsup|<around*|[|i,x|]>>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|[|1,\<ldots\>,n|]>>>
    be a finite family of sets, <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
    <math|I<rsup|<around*|[|i,x|]>>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    is defined by\ 

    <\equation*>
      I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,dd\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
    </equation*>
  </definition>

  <\lemma>
    <label|lemma 16.24.178>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|[|1,\<ldots\>,n|]>>>
    be a finitie family of normed spaces,
    <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equiped with the maximum norm [see theorem:
    <reference|normed maximum norm>] then we have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that\ 

    <\enumerate>
      <item><math|I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>=x>

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|x=<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>>

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|\<forall\>t\<in\>X<rsub|i>> <math|I<rsup|<around*|[|i,x|]>>>
      is Frèchet differentiable with Frèchet differential <math|D
      I<rsup|<around*|[|i,x|]>><around*|(|t|)>=I<rsup|<around*|[|i,0|]>>>

      <item>If <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then <math|I<rsup|<around*|[|i,x|]>>> is continuous
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|r,s\<in\>X<rsub|i>>, <math|\<alpha\>\<in\>\<bbb-K\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|I<rsup|<around*|[|i,0|]>><around*|(|r+\<alpha\>\<cdot\>s|)>>|<cell|=>|<cell|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,r+\<alpha\>\<cdot\>s,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,rs,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<alpha\>\<cdot\>s,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,rs,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>+<around*|(|\<alpha\>\<cdot\>0<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>0<rsub|i-1>,\<alpha\>\<cdot\>s,\<alpha\>\<cdot\>0<rsub|i+1>,\<ldots\>,\<alpha\>\<cdot\>0<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,rs,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,s,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|I<rsup|<around*|[|i,0|]>><around*|(|r|)>+\<alpha\>\<cdot\>I<rsup|<around*|[|i,0|]>><around*|(|s|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        I<rsup|<around*|[|i,0|]>>\<in\>Hom<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>|)>
      </equation*>

      Further if <math|t\<in\>X<rsub|i>> then we have for
      <math|j\<in\><around*|{|1,\<ldots\>,n|}>> we have

      <\equation>
        <label|eq 16.16.178>\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>=\<pi\><rsub|j><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,t,0<rsub|i+1>,\<ldots\>,n|)>|)>=<choice|<tformat|<table|<row|<cell|t<text|
        if >j=i>>|<row|<cell|0<rsub|j><text| if
        >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>
      </equation>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>|\<\|\|\>><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>|\<\|\|\>><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>|}><big|cup><around*|{|<around*|\<\|\|\>|\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|t|)>|)>|\<\|\|\>><rsub|j>\|j\<in\><around*|{|i|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|0<rsub|j>|\<\|\|\>><rsub|j>|}><big|cup><around*|{|<around*|\<\|\|\>|t|\<\|\|\>><rsub|j>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|0,<around*|\<\|\|\>|t|\<\|\|\>><rsub|j>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t|\<\|\|\>><rsub|j>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|1\<cdot\><around*|\<\|\|\>|t|\<\|\|\>><rsub|j>>>>>
      </eqnarray*>

      Hence by [theorem: <reference|continuity linear mapping (1)>] it
      follows that\ 

      <\equation*>
        I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>|)>
      </equation*>

      <item>This follows from <math|I<rsup|<around*|[|x,0|]>><around*|(|x|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>=x>

      <item>Let <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      and <math|j\<in\><around*|{|1,\<ldots\>,n|}>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)><rsub|j>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|j><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>>\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)>+<big|sum><rsub|i\<in\><around*|{|j|}>>\<pi\><rsub|j><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|0+x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|i>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|x<rsub|i>|)>
      </equation*>

      <item>Let <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      and <math|t\<in\>X<rsub|i>>. Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      we have <math|\<forall\>h\<in\>X<rsub|i>=<around*|(|X<rsub|i>|)><rsub|x>>
      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t+h|)>-I<rsup|<around*|[|i,x|]>><around*|(|t|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t+h,x<rsub|i>,\<ldots\>,x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,h,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>-I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,h,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,h,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|i>>|<cell|>|<cell|>>>>
      </eqnarray*>

      which together with (1) proves that\ 

      <\equation*>
        I<rsup|<around*|[|i,x|]>><text| is Frèchet differentiable at <math|t>
        with differential >D I<rsup|<around*|[|i,x|]>><around*|(|t|)>=I<rsup|<around*|[|i,0|]>>
      </equation*>

      <item>Let <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      then by (4) we have that <math|I<rsup|<around*|[|i,x|]>>> is Frèchet
      differentiable at <math|t>, using [theorem: <reference|diff
      differentiable function is continuous>] it follows then that
      <math|I<rsup|<around*|[|i,x|]>>> is continuous <math|t>. Hence
      <math|I<rsup|<around*|[|i,x|]>>> is continuous mapping between
      <math|X<rsub|i>> and <math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>.
    </enumerate>
  </proof>

  <\definition>
    <label|diff multiparameter function to one parameter function>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|[|1,\<ldots\>,n|]>>>
    be a finite family of sets, <math|U\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|x\<in\>U>, <math|Y> a set, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|f:U\<rightarrow\>Y> a function then we define\ 

    <\equation*>
      f<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y<text|
      by >f<rsup|<around*|[|i,x|]>>=f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>
    </equation*>

    As <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>=<around*|{|t\<in\>X<rsub|i>\|I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>U|}>=<around*|{|t\<in\>X<rsub|i>\|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\>U|}>>
    and

    <\equation*>
      f<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|t|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
    </equation*>

    we can state this definition as\ 

    <\equation*>
      f<rsup|<around*|[|i,x|]>>:<around*|{|t\<in\>X<rsub|i>\|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\>U|}>\<rightarrow\>Y<text|
      where >f<rsup|<around*|[|i,x|]>><around*|(|t|)>=f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
    </equation*>
  </definition>

  We are now ready to define the partial differential of a multiparameter
  function.

  <\definition>
    <label|diff partial differential definition>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equiped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|U\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    a open set, <math|x\<in\>U>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| a function>
    </equation*>

    then\ 

    <\equation*>
      f<text| is >i<text|-partial differentiable at >x<text| with
      <math|i>-partial differential >D<rsub|i>f<around*|(|x|)>
    </equation*>

    if\ 

    <\equation*>
      f<rsup|<around*|[|i,x|]>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y<text|
      is Frèchet differentiable at >x<rsub|i><text| and
      >D<rsub|i>f<around*|(|x|)>=D f<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>
    </equation*>

    <\note>
      Using [lemma: <reference|lemma 16.24.178>]
      <math|><math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>
      is open and <math|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>=x\<in\>U>
      so that <math|x<rsub|i>\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>
      which is required for the Frèchet differentiability.
    </note>
  </definition>

  Frèchet differentiability of a multiparameter function implies partial
  differentiability.

  <\theorem>
    <label|diff Frechet differentation implies partial differentiability >Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equiped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|U\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    a open set, <math|x\<in\>U> and <math|f:U\<rightarrow\>Y> a function that
    is Frèchet differentiable at <math|x> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> is
    <math|i>-partial differentiable at <math|x> with <math|i>-partial
    differential

    <\equation*>
      D<rsub|i>f<around*|(|x|)>=D f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation*>

    Further we have

    <\equation*>
      D f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>|)>
    </equation*>

    In other words <math|\<forall\>h\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have\ 

    <\equation*>
      D f*<around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    Using [lemma: <reference|lemma 16.24.178>] together with [theorem:
    <reference|diff differentiability is a local property>] we have that\ 

    <\equation*>
      <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j><text|
      is Frèchet differentiable at >x<rsub|i><text|>\ 
    </equation*>

    with\ 

    <\equation*>
      D<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>=D
      I<rsup|<around*|[|i,x|]>>f<around*|(|x<rsub|i>|)>=
      I<rsup|<around*|[|i,0|]>>
    </equation*>

    Further, as <math|f:U\<rightarrow\>Y> is Frèchet differentiable at
    <math|x=I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>=<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>>
    and\ 

    <\equation*>
      <around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>|)>\<subseteq\>U
    </equation*>

    we can use the Chain Rule [theorem: <reference|diff chain rule>]
    resulting in\ 

    <\equation*>
      f<rsup|<around*|[|i,x|]>>=f\<circ\><around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>|)><text|
      is differentiable at >x<rsub|i>
    </equation*>

    with\ 

    <\equation*>
      D f<rsup|<around*|[|i,x|]>><around*|(|x<rsub|i>|)>=D
      f<around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>|)>\<circ\>I<rsup|<around*|[|i,0|]>>=D
      f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation*>

    So that by definition\ 

    <\equation>
      <label|eq 16.17.178>f<text| is >i<text|-partial differentiable at
      >x<text| with >D<rsub|i>f<around*|(|x|)>=D
      f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation>

    Further if <math|h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D f<around*|(|x|)><around*|(|h|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>]>>>|<cell|D
      f<around*|(|x|)><around*|(|<big|sum><rsub|i=1><rsup|n>I<rsup|<around*|[|i,0|]>><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D
      f<around*|(|x|)><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D
      f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.17.178>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|\<pi\><rsub|i><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|o>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>|)>|)><around*|(|h|)>>>>>
    </eqnarray*>

    so that we have\ 

    <\equation*>
      D f<around*|(|x|)>=<big|sum><rsub|j=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>|)>
    </equation*>
  </proof>

  As the partial differential is based on the Frèchet differential of
  <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> many properties of the Frèchet
  differential also applies.

  <\theorem>
    <label|diff partial differential properties>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|><math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equiped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    a open set, <math|x\<in\>U> and <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    then we have:

    <\enumerate>
      <item>If <math|f:U\<rightarrow\>Y> and <math|g:U\<rightarrow\>Y> are
      functions that are <math|i>-partial differentiable at <math|x> then\ 

      <\equation*>
        f+g:U\<rightarrow\>Y
      </equation*>

      is <math|i>-partial differentiable at <math|x> with\ 

      <\equation*>
        D<rsub|i><around*|(|f+g|)><around*|(|x|)>=D<rsub|i>f<around*|(|x|)>+D<rsub|i>g<around*|(|x|)>
      </equation*>

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>> and <math|f:U\<rightarrow\>Y>
      is a function that is <math|i>-partial differentiable at <math|x> then\ 

      <\equation*>
        \<alpha\>\<cdot\>f:U\<rightarrow\>Y
      </equation*>

      is <math|i>-partial differentiable at <math|x> with\ 

      <\equation*>
        D<rsub|i><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)>
      </equation*>

      <item>If <math|y\<in\>Y> then for \ <math|C<rsub|U,Y,y>:U\<rightarrow\>Y>
      defined by <math|C<rsub|U,y><around*|(|z|)>=y> we have that
      <math|C<rsub|U,Y,y>> is <math|i>-partial differentiable with
      <math|D<rsub|i>C<rsub|U,Y,y><around*|(|x|)>=C<rsub|X,Y,0>> where
      <math|C<rsub|X,Y,0>:X\<rightarrow\>Y> is defined by
      <math|C<rsub|X,Y,y><around*|(|z|)>=0>.

      <item>If <math|f:U\<rightarrow\>Y> is such that
      <math|f\<circ\>I<rsup|<around*|[|i,x|]>>\<in\>L<around*|(|X<rsub|i>,Y|)>>
      then <math|f> is <math|i>-partial differentiable and\ 

      <\equation*>
        D<rsub|i>f<around*|(|x|)>=f\<circ\>I<rsup|<around*|[|i,x|]>>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f,g> are <math|i>-partial differentiable we have by
      definition that <math|f\<circ\>I<rsup|<around*|[|i,x|]>>>,
      <math|g\<circ\>I<rsup|<around*|[|i,x|]>>> are Frèchet differentiable at
      <math|x<rsub|i>> with

      <\equation>
        <label|eq 16.18.179>D<rsub|i>f<around*|(|x|)>=D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)><text|
        and >D<rsub|i>g<around*|(|x|)>=D<around*|(|g\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>
      </equation>

      Using [theorem: <reference|diff derivate operator is linear>] we have
      that

      <\equation*>
        <around*|\<nobracket\>|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>+g\<circ\>I<rsup|<around*|[|i,x|]>><text|
        is Frèchet differentiable at <math|x<rsub|i>>>
      </equation*>

      with\ 

      <\equation*>
        D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>+g\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>=D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>+D<around*|(|g\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>
      </equation*>

      As <math|<around*|(|f+g|)>\<circ\>I<rsup|<around*|[|i,x|]>>=f\<circ\>I<rsup|<around*|[|i,x|]>>+g\<circ\>I<rsup|<around*|[|i,x|]>>>
      it follows that is it Frèchet differentiable at <math|x<rsub|i>> with\ 

      <\equation*>
        D<around*|(|<around*|(|f+g|)>\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>=D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>+D<around*|(|g\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.18.179>]>>D<rsub|i>f<around*|(|x|)>+D<rsub|i>g<around*|(|x|)>
      </equation*>

      Hence by definition\ 

      <\equation*>
        f+g <text| is >i<text|-partial differentiable with
        >D<rsub|i><around*|(|f+g|)><around*|(|x|)>=D<rsub|i>f<around*|(|x|)>+D<rsub|i>g<around*|(|x|)>
      </equation*>

      <item>As <math|f> is <math|i>-partial differentiable we have by
      definition that <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is Frèchet
      differentiable at <math|x<rsub|i>> with

      <\equation>
        <label|eq 16.19.179>D<rsub|i>f<around*|(|x|)>=D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>
      </equation>

      Using [theorem: <reference|diff derivate operator is linear>] we have
      that

      <\equation*>
        \<alpha\>\<cdot\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><text|
        is Frèchet differentiable at <math|x<rsub|i>>>
      </equation*>

      with\ 

      <\equation*>
        D<around*|(|\<alpha\>\<cdot\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>|)><around*|(|x<rsub|i>|)>=\<alpha\>\<cdot\>D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>
      </equation*>

      As <math|<around*|(|\<alpha\>\<cdot\>f|)>\<circ\>I<rsup|<around*|[|i,x|]>>=\<alpha\>\<cdot\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)>>
      it follows that it is Frèchet differentiable at <math|x<rsub|i>> with\ 

      <\equation*>
        D<around*|(|<around*|(|\<alpha\>f|)>\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>=\<alpha\>\<cdot\>D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.19.179>]>>\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)>
      </equation*>

      Hence by definition\ 

      <\equation*>
        \<alpha\>\<cdot\>f <text| is >i<text|-partial differentiable with
        >D<rsub|i><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)>
      </equation*>

      <item>As <math|\<forall\>z\<in\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>
      we have that <math|<around*|(|C<rsub|U,Y,y>\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|z|)>=C<rsub|U,Y,y><around*|(|I<rsup|<around*|[|i,x|]>><around*|(|z|)>|)>=y>
      proving that <math|C<rsub|U,Y,y>\<circ\>I<rsup|<around*|[|i,x|]>>> is a
      constant function. Applying then [example: <reference|diff constant
      function is differentiable>] proves that

      <\equation*>
        C<rsub|U,Y,y>\<circ\>I<rsup|<around*|[|i,x|]>><text| is Frèchet
        differentiable at >x<rsub|i><text| with
        >D<around*|(|C<rsub|U,Y,y>\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>=C<rsub|X,Y,0>
      </equation*>

      Hence by definition\ 

      <\equation*>
        C<rsub|U,Y,y><text| is >i<text|-partial differentiable with
        >D<rsub|i>C<rsub|U,Y,y><around*|(|x|)>=C<rsub|X,Y,0>
      </equation*>

      <item>As <math|f\<circ\>I<rsup|<around*|[|i,x|]>>\<in\>L<around*|(|X<rsub|i>,Y|)>>
      we have by [example: <reference|diff linear mappings are
      differentiable>] that <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is
      Frèchet differentiable at <math|x<rsub|i>> with
      <math|D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>=f\<circ\>I<rsup|<around*|[|i,x|]>>>.
      Hence by definition we have that\ 

      <\equation*>
        f<text| is >i<text|-partial differentiable at >x<text| with
        >D<rsub|i>f<around*|(|x|)>=f\<circ\>I<rsup|<around*|[|i,x|]>>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|diff chain rule and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|><math|<around*|\<langle\>|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equiped with the maximum norm [see theorem:
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
      g:V\<rightarrow\>Z<text| is a function differentiable at
      <math|f<around*|(|x|)>>>
    </equation*>

    then\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| >g\<circ\>f<text| is
      >i<text|-partial differentiable at >x
    </equation*>

    and

    <\equation*>
      D<rsub|i><around*|(|g\<circ\>f|)><around*|(|x|)>=D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsub|i>f<around*|(|x|)>
    </equation*>

    Further we have\ 
  </theorem>

  <\proof>
    Using the Chain Rule [theorem: <reference|diff chain rule>] it follows
    that\ 

    <\equation*>
      g\<circ\>f:U\<rightarrow\>Z
    </equation*>

    is differentiable at <math|x> with\ 

    <\equation>
      <label|eq 16.18.178>D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>
    </equation>

    Hence, using [theorem: <reference|diff Frechet differentation implies
    partial differentiability >] it follows that <math|g\<circ\>f> is
    <math|i>-partial differentiable at <math|x> with <math|i>-partial
    differential

    <\equation*>
      D<rsub|i><around*|(|g\<circ\>f|)><around*|(|x|)>=D<around*|(|g\<circ\>f|)><around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation*>

    Substituting [eq: <reference|eq 16.18.178>] in the above gives\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|i><around*|(|g\<circ\>f|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)>|)>\<circ\>I<rsup|<around*|[|i,0|]>>>>|<row|<cell|>|<cell|=>|<cell|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\><around*|(|D
      f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff Frechet differentation implies partial
      differentiability >]>>>|<cell|D g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsub|i>f<around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.19.178>D<rsub|i><around*|(|g\<circ\>f|)><around*|(|x|)>=D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsub|i>f<around*|(|x|)>
    </equation>
  </proof>

  Next we define the classical partial derivate of a multi parameter
  function.

  <\definition>
    <label|diff partial derivate definition><index|partial
    derivate><index|<math|\<partial\><rsub|i>f<around*|(|x|)>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-K\><rsup|n>> equiped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set in
    <math|\<bbb-K\><rsup|n>>, <math|x\<in\>U>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and

    <\equation*>
      f:U\<rightarrow\>X<text| a function >
    </equation*>

    then <math|f> has a <with|font-series|bold|<math|i>-partial derivate at
    <math|x>> noted by <math|\<partial\><rsub|i>f<around*|(|x|)>\<in\>X> if
    <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is calculus differentiable at
    <math|x<rsub|i>>, the <with|font-series|bold|<math|i>-partial derivate at
    <math|x>> is defined to be <math|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><around*|(|x<rsub|i>|)>>,
    hence <math|\<partial\><rsub|i>f<around*|(|x|)>=<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><around*|(|x<rsub|i>|)>\<in\>X>.
    Using [definitions: <reference|diff unprojection> and <reference|diff
    calculus derivate>] this is equivalent with\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exist a
      >\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text| we have >
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i>+h,x<rsub|i+1,\<ldots\>,>x<rsub|n>|)>-f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|x+h|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|x|)>|)>|>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x+h|)>-<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>>>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>
  </definition>

  We have the following equivalent definition for the partial derivate of a
  function.

  <\theorem>
    <label|diff partial derivate and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-K\><rsup|n>> equiped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set in
    <math|\<bbb-K\><rsup|n>>, <math|x\<in\>U>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and

    <\equation*>
      f:U\<rightarrow\>X<text| a function >
    </equation*>

    then we have\ 

    <\equation*>
      f<text| has a >i<text|-partial derivate at >x<text|
      >\<Leftrightarrow\><text| >f<text| has a >i<text|-partial differential
      at >x
    </equation*>

    Further if <math|f> has a <math|i>-partial derivate or differential at
    <math|x> then\ 

    <\equation*>
      \<partial\><rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)><around*|(|1|)>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>h\<in\>\<bbb-K\><rsup|><text| we have
      >D<rsub|i>f<around*|(|x|)><around*|(|h|)>=h\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> has a <math|i>-partial
      derivate at <math|x> <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is
      calculus differentiable at <math|x<rsub|i>>. Using [theorem:
      <reference|diff derivate and frechet differential>] it follows that
      <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is Frèchet differentiable at
      <math|x<rsub|i>>, hence by definition

      <\equation*>
        f<text| is >i<text|-partial differentiable at >x
      </equation*>

      \ Further by [theorem: <reference|diff derivate and frechet
      differential>] we have also

      <\equation*>
        <around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><around*|(|x<rsub|i>|)>=D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)><around*|(|1|)>
      </equation*>

      and\ 

      <\equation*>
        \<forall\>h\<in\>\<bbb-K\><text| >D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>=h\<cdot\><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><around*|(|x<rsub|i>|)>
      </equation*>

      As <math|\<partial\><rsub|i>f<around*|(|x|)>\<equallim\><rsub|<text|def>><around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><rprime|'><around*|(|x<rsub|i>|)>>
      and <math|D<rsub|i>f<around*|(|x|)>\<equallim\><rsub|<text|def>>D<around*|(|f\<circ\>I<rsup|<around*|[|i,x|]>>|)><around*|(|x<rsub|i>|)>>
      we have\ 

      <\equation*>
        \<partial\><rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)><around*|(|1|)><text|
        and >\<forall\>h\<in\>\<bbb-K\><text| that
        >D<rsub|i>f<around*|(|x|)><around*|(|h|)>=h\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|f> has a <math|i>-partial
      differential at <math|x> <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is
      Frèchet differentiable at <math|x<rsub|i>>. Using [theorem:
      <reference|diff derivate and frechet differential>] it follows that
      <math|f\<circ\>I<rsup|<around*|[|i,x|]>>> is calculus differentiable at
      <math|x<rsub|i>> and thus by defintion that <math|f> has a
      <math|i>-partial derivate at <math|x>.
    </description>
  </proof>

  Combining the above allows us to rephrase [theorem: <reference|diff Frechet
  differentation implies partial differentiability >] as follows:

  <\theorem>
    <label|diff differentiability and K^n>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    the vector space <math|\<bbb-K\><rsup|n>> equiped with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set in
    <math|\<bbb-K\><rsup|n>>, <math|x\<in\>U> and\ 

    <\equation*>
      f:U\<rightarrow\>X<text| a function that is Frèchet differentiable at
      >x
    </equation*>

    then we have:

    <\enumerate>
      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> has
      a <math|i>-partial derivate <math|\<partial\><rsub|i>f<around*|(|x|)>>
      at <math|x> and <math|D<rsub|i>f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,X|)>>
      is defined by

      <\equation*>
        D<rsub|i>f<around*|(|x|)><around*|(|h|)>=h\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>
      </equation*>

      so that\ 

      <\equation*>
        \<partial\><rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)><around*|(|1|)>
      </equation*>

      <item>Let <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> be the
      canonical basis on <math|\<bbb-K\><rsup|n>> defined by
      <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>> [see
      theorem: <reference|basis F^n>] then\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|we have
        >\<partial\><rsub|i>f<around*|(|x|)>=D
        f<around*|(|x|)><around*|(|e<rsub|i>|)>
      </equation*>

      and\ 

      <\equation*>
        \<forall\>h\<in\>\<bbb-K\><rsup|n><text| we have >D
        f<around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>
      </equation*>

      If we use matrix notation where

      <\equation*>
        h=<matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|h<rsub|n>>>>>>\<in\>\<cal-M\><rsub|n,1><text|
        is a column vector>
      </equation*>

      and

      <\equation*>
        \<partial\>f<around*|(|x|)>=<matrix|<tformat|<table|<row|<cell|\<partial\><rsub|1>f<around*|(|x|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsub|n>f<around*|(|x|)>>>>>><text|
        is a row vector>
      </equation*>

      then it follows that we can write this using matrix notation as

      <\equation*>
        D f<around*|(|x|)><around*|(|h|)>=\<partial\>f<around*|(|x|)>\<cdot\>h
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f> is Frèchet differentiable at <math|x> it follows from
      [theorem: <reference|diff Frechet differentation implies partial
      differentiability >] that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      is <math|i>-partial differentiable at <math|x>. Using the previous
      theorem [theorem: <reference|diff partial derivate and partial
      differential>] we conclude that <math|f> has a <math|i>-partial
      derivate and\ 

      <\equation*>
        D<rsub|i>f<around*|(|x|)><around*|(|h|)>=h\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>
      </equation*>

      so that\ 

      <\equation*>
        \<partial\><rsub|f>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)><around*|(|1|)>
      </equation*>

      <item>We have for <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> that\ 

      <\equation*>
        <around*|(|I<rsup|<around*|[|i,0|]>><around*|(|1|)>|)><rsub|j>=<around*|(|0,\<ldots\>,0,<wide*|1|\<wide-underbrace\>><rsub|i>,0,\<ldots\>,0|)><rsub|j>=\<delta\><rsub|i,j>=<around*|(|e<rsub|i>|)><rsub|j>
      </equation*>

      or\ 

      <\equation>
        <label|eq 16.20.178>I<rsup|<around*|[|i,0|]>>=e<rsub|i>
      </equation>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<partial\><rsub|i>f<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff partial derivate and partial
        differential>]>>>|<cell|D<rsub|i>f<around*|(|x|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff Frechet differentation implies partial
        differentiability >]>>>|<cell|<around*|(|D
        f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|x|)><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|x|)><around*|(|e<rsub|i>|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
        >\<partial\><rsub|i>f<around*|(|x|)>=D
        f<around*|(|x|)><around*|(|e<rsub|i>|)>
      </equation*>

      Further give <math|h\<in\>\<bbb-K\><rsup|n>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D f<around*|(|x|)><around*|(|h|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff Frechet differentation implies partial
        differentiability >]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  After examing the differentation of a multiparamter function we look now at
  differentation of vector functions [functions that maps to a product of
  normed spaces.

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
    to not confuse the above function with the tupple
    <math|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>> which is a element of
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><rsup|X>>
    which is not a function from <math|X> to
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>.
  </note>

  <\theorem>
    <label|diff vector functions and linearity>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, \ <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space equiped with the maximum norm [see theorem:
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
      <tformat|<table|<row|<cell|<around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x+\<alpha\>\<cdot\>y|)>|)><rsub|i>>|<cell|=>|<cell|L<rsub|i><around*|(|x+\<alpha\>\<cdot\>y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L<rsub|i>\<in\>L<around*|(|X,X<rsub|i>|)>>>|<cell|L<rsub|i><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|i><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>|)><rsub|i>+<around*|(|\<alpha\>\<cdot\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>+\<alpha\>\<cdot\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>|)><rsub|i>>>>>
    </eqnarray*>

    proving that <math|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x+\<alpha\>\<cdot\>y|)>=><math|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>+\<alpha\>\<cdot\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>>>.
    Hence\ 

    <\equation*>
      <around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>>\<in\>Hom<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>
    </equation*>

    Further if <math|x\<in\>X> then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<ast\>><around*|(|x|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1><around*|(|x|)>,\<ldots\>,L<rsub|n><around*|(|x|)>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i><around*|(|x|)>|\<\|\|\>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,X<rsub|i>|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|complex max(a.x) 0\<less\>=a>]>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,X<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity linear mapping (1)>] that\ 

    <\equation*>
      <around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)><rsub|\<star\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>
    </equation*>

    and by definition [theorem: <reference|continuity norm on L(X,Y)>]\ 

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
    the normed spaces equiped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|U\<subseteq\>X> a open set in
    <math|X>, <math|x\<in\>U> and\ 

    <\equation*>
      f:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><text|
      a function >
    </equation*>

    then we have\ 

    <\equation*>
      f<text| is Frèchet differentiable at >x<text| >\<Leftrightarrow\><text|
      >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >\<pi\><rsub|i>\<circ\>f<text| is Frèchet differentiable at >x
    </equation*>

    Further if <math|f> is Frèchet differentiable at <math|x> then\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> \<pi\><rsub|i>\<circ\>D
      f<around*|(|x|)>=D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>
    </equation*>

    or in other words

    <\equation*>
      D f<around*|(|x|)>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f> is differentiable at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>> we have\ 

      <\equation>
        <label|eq 16.21.178><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|max>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-<around*|(|\<pi\><rsub|i>\<circ\>D
        f<around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|D
        f<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|i><rsub|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|i>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<equallim\><rsub|def>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.21.178>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that

      <\equation*>
        \<pi\><rsub|i>\<circ\>f<text| is differentiable at >x<text| with
        >D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>=\<pi\><rsub|i>\<circ\>D
        f<around*|(|x|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as
      <math|\<pi\><rsub|i>\<circ\>f> is differentiable at <math|x> there
      exist a <math|\<delta\><rsub|i>\<in\>\<bbb-R\><rsup|+>> so that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><rsub|i>> we have\ 

      <\equation>
        <label|eq 16.22.178><around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|h|)>|\<\|\|\>><rsub|i>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
      </equation>

      If <math|h\<in\>U<rsub|x>> satisfies
      <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>max<around*|(|<around*|{|\<delta\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>><around*|(|h|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|h|)>|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|h|)>|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)><around*|(|h|)>i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)><around*|(|h|)>i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving, as by [theorem: <reference|diff vector functions and
      linearity>] <math|<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>,
      that

      <\equation*>
        f<text| is Frèchet differentiable at <math|x> with >D
        f<around*|(|x|)>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>>
      </equation*>
    </description>
  </proof>

  <\corollary>
    <label|diff vector functions (2)>Let <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed spaces equiped with the maximum norm [see theorem:
    <reference|normed maximum norm>], <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>X> a open set in <math|X>,
    <math|x\<in\>U>, <math|V\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    a open set in <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    and\ 

    <\equation*>
      f:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i><text|
      and >g:V\<rightarrow\>Z
    </equation*>

    functions such that\ 

    <\equation*>
      f<around*|(|U|)>\<subseteq\>V<text|, >f<text| Frèchet differentiable at
      >x<text| and >g<text| Frèchet differentiable at >f<around*|(|x|)>
    </equation*>

    [so that by the Chain Rule [see theorem: <reference|diff chain rule>]
    <math|g\<circ\>f> is differentiable at <math|x>] then we have\ 

    <\equation*>
      D<around*|(|g\<circ\>f|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i><around*|(|g<around*|(|f<around*|(|x|)>|)>|)>\<circ\>D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>|)>
    </equation*>
  </corollary>

  <\proof>
    Let <math|h\<in\>X> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<around*|(|g\<circ\>f|)><around*|(|x|)><around*|(|h|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|D
      g<around*|(|f<around*|(|x|)>|)><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff Frechet differentation implies partial
      differentiability >]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>g<around*|(|f<around*|(|x|)>|)><around*|(|<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>g<around*|(|f<around*|(|x|)>|)><around*|(|\<pi\><rsub|i><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>g<around*|(|f<around*|(|x|)>|)><around*|(|<around*|(|\<pi\><rsub|i>\<circ\>D
      f<around*|(|x|)>|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff differential of a vector valued
      function>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>g<around*|(|f<around*|(|x|)>|)><around*|(|<around*|(|D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>|)><rsub|><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>|)>|)><around*|(|h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      D<around*|(|g\<circ\>f|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>|)><around*|(|h|)>
    </equation*>

    \;
  </proof>

  We can now look at the differentiability of functions between
  <math|\<bbb-K\><rsup|n>> and <math|\<bbb-K\><rsup|m>>.

  <\theorem>
    <label|diff Jacobian matrix><dueto|Jacobian matrix>Let
    <math|n,m\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    two normed spaces [based on the maximum norms),
    <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set in
    <math|\<bbb-K\><rsup|n>>, <math|x\<in\>U> and

    <\equation*>
      f:U\<rightarrow\>\<bbb-K\><rsup|m><text| a function that is Frèchet
      differentiable at <math|x>>
    </equation*>

    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> we have that
    <math|\<pi\><rsub|j>\<circ\>f:U\<rightarrow\>\<bbb-K\>> has a
    <math|i>-partial derivate and\ 

    <\equation*>
      \<forall\>h\<in\>\<bbb-K\><rsup|n><text| we have ><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|j>\<equallim\><rsub|def>\<pi\><rsub|j><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>=<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>\<cdot\>h<rsub|i>
    </equation*>

    If we define the following matrices

    <\equation*>
      h=<matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|h<rsub|n>>>>>>\<in\>\<cal-M\><rsub|n,1><around*|(|\<bbb-K\>|)>
    </equation*>

    and

    <\equation*>
      D f<around*|(|x|)><around*|(|h|)>=<matrix|<tformat|<table|<row|<cell|<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|m>>>>>>\<in\>\<cal-M\><rsub|m,1><around*|(|\<bbb-K\>|)>
    </equation*>

    and\ 

    <\equation*>
      <bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>>=<matrix|<tformat|<table|<row|<cell|\<partial\><rsub|1><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsub|n><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|\<partial\><rsub|1><around*|(|\<pi\><rsub|m>\<circ\>f|)><around*|(|x|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsub|n><around*|(|\<pi\><rsub|m>\<circ\>f|)><around*|(|x|)>>>>>>\<in\>\<cal-M\><rsub|m,n><around*|(|\<bbb-K\>|)>
    </equation*>

    then we can express the Frèchet differential of <math|f> at <math|x> as
    the following matrix product

    <\equation*>
      D f<around*|(|x|)><around*|(|h|)>=<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>>\<cdot\>h
    </equation*>

    The matrix <math|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>>>
    is called the <with|font-series|bold|Jacobian matrix of <math|f> at
    <math|x>>.
  </theorem>

  <\proof>
    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|j\<in\><around*|{|1,\<ldots\>,m|}>>. As <math|f> is Frèchet
    differentiable at <math|x> it follows from [theorem: <reference|diff
    differential of a vector valued function>] that
    <math|\<pi\><rsub|j>\<circ\>f:U\<rightarrow\>\<bbb-K\>> is Frèchet
    differentiable at <math|x> with\ 

    <\equation>
      <label|eq 16.23.178>D<around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>=\<pi\><rsub|j>\<circ\>D
      f<around*|(|x|)>
    </equation>

    Hence using [theorem: <reference|diff differentiability and K^n>]
    <math|\<pi\><rsub|j>\<circ\>f> has a partial derivate at <math|x> with\ 

    <\equation>
      <label|eq 16.24.178>D<around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>
    </equation>

    Further for <math|h\<in\>\<bbb-K\><rsup|n>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|j>>|<cell|=>|<cell|\<pi\><rsub|j><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<pi\><rsub|j>\<circ\>D
      f<around*|(|x|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.23.178>]>>>|<cell|D<around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.24.178>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>\<in\>\<bbb-K\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>\<cdot\>h<rsub|i>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.25.178><around*|(|D f<around*|(|x|)><around*|(|h|)>|)><rsub|j>=<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>\<cdot\>h<rsub|i>
    </equation>

    Finally for the matrix notation we have for
    <math|j\<in\><around*|{|1,\<ldots\>,m|}>> that \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>>\<cdot\>h|)><rsub|j>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|\<partial\><rsub|1><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsub|n><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|\<partial\><rsub|1><around*|(|\<pi\><rsub|m>\<circ\>f|)><around*|(|x|)>>|<cell|\<ldots\>>|<cell|\<partial\><rsub|n><around*|(|\<pi\><rsub|m>\<circ\>f|)><around*|(|x|)>>>>>>\<cdot\><matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|h<rsub|n>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>><rsub|j,i>\<cdot\>h<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>\<cdot\>h<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.25.178>]>>>|<cell|<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|m>>>>>><rsub|j>>>>>
    </eqnarray*>

    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>>>>>\<cdot\>h>|<cell|=>|<cell|D
      f<around*|(|x|)><around*|(|h|)>>>>>
    </eqnarray*>
  </proof>

  <\lemma>
    <label|lemma 16.23.181>Let <math|<around*|\<langle\>|X<rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|<around*|\<langle\>|X<rsub|1>\<cdot\>X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space of the product <math|X<rsub|1>\<cdot\>X<rsub|2>> with
    the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>,
    <math|L\<in\>L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>> [a bilinear continuous
    mapping], <math|x=<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
    then <math|L> is differentiable at <math|x> and\ 

    <\equation*>
      D L<around*|(|x|)>=D L<around*|(|x<rsub|1>,x<rsub|2>|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
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
      <tformat|<table|<row|<cell|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|<around*|(|h<rsub|1>,h<rsub|2>|)>+\<alpha\>\<cdot\><around*|(|g<rsub|1>,g<rsub|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>+\<alpha\>\<cdot\>g<rsub|1>,h<rsub|2>+\<alpha\>\<cdot\>g<rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,h<rsub|2>+\<alpha\>\<cdot\>g<rsub|2>|)>+L<around*|(|h<rsub|1>+\<alpha\>\<cdot\>g<rsub|1>,x<rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,h<rsub|2>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,g<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>+\<alpha\>\<cdot\>L<around*|(|g<rsub|1>,x<rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>+\<alpha\>*\<cdot\><around*|(|L<around*|(|x<rsub|1>,g<rsub|2>|)>+L<around*|(|g<rsub|1>,x<rsub|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>+\<alpha\>\<cdot\><around*|(|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|)>>|<cell|=>|<cell|>>>>
    </eqnarray*>

    Hence we have that\ 

    <\equation>
      <label|eq 16.16.180>L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>\<in\>Hom<around*|(|X<rsub|1>,X<rsub|2>;Y|)>
    </equation>

    Next we prove that <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is continuous. So let <math|<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
    with <math|<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>=1>
    then we have\ 

    <\equation>
      <label|eq 16.17.180><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,2|}>|}>|)>=<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>=1
    </equation>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|1>>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 16.17.180>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that
    <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is coninuous, combining this with [eq: <reference|eq 16.16.180>] results
    in\ 

    <\equation>
      <label|eq 16.18.180>L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>\<in\>L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>
    </equation>

    Finally Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and take
    <math|\<delta\>=<frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>+1>\<in\>\<bbb-R\><rsup|+>>
    then if <math|<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>=<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|x>>
    with <math|<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>\<less\>\<delta\>>
    then\ 

    <\equation>
      <label|eq 16.19.180><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,2|}>|}>|)>=<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>\<less\>\<delta\>
    </equation>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>+h<rsub|1>,x<rsub|2>+h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,x<rsub|2>+h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>+h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<wide*|L<around*|(|x<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|1>+<wide*|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<wide-underbrace\>><rsub|2>+<wide*|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|3>+L<around*|(|h<rsub|1>,h<rsub|2>|)>-<wide*|L<around*|(|x<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|1>-<wide*|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<wide-underbrace\>><rsub|2>-<wide*|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<wide-underbrace\>><rsub|3>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 16.19.180>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,x<rsub|2>;Y|)>>+1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 16.19.180>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|max>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      L<text| is Frèchet differentiable at >x<text| with >D
      L<around*|(|x|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
    </equation*>
  </proof>

  The above lemma is used to prove that the product of functions is
  differentiable.

  <\corollary>
    <label|diff differential of product of functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>,
    <math|U\<subseteq\>\<bbb-K\>> open with <math|x\<in\>U> and\ 

    <\equation*>
      f:U\<rightarrow\>\<bbb-K\><text| and >g:U\<rightarrow\>\<bbb-K\><text|
      functions that are Frèchet differentiable at >x
    </equation*>

    then\ 

    <\equation*>
      g\<cdot\>f:U\<rightarrow\>\<bbb-K\><text| defined by
      ><around*|(|g\<cdot\>f|)><around*|(|x|)>=g<around*|(|x|)>\<cdot\>f<around*|(|x|)>
    </equation*>

    is Frèchet differentiable at <math|x> with\ 

    <\equation*>
      D<around*|(|g\<cdot\>f|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)>+g<around*|(|x|)>\<cdot\>D f<around*|(|x|)>
    </equation*>

    where <math|f<around*|(|x|)>\<cdot\>D
    g<around*|(|x|)>+g<around*|(|x|)>\<cdot\>D f<around*|(|x|)>> is defined
    by

    <\equation*>
      <around*|(|f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)>+g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)>|)><around*|(|k|)>=f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)><around*|(|k|)>+g<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)><around*|(|k|)>
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
    with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|max>=1>, so that\ 

    <\equation*>
      <around*|\||h<rsub|1>|\|>,<around*|\||h<rsub|2>|\|>\<leqslant\>max<around*|(|<around*|{|<around*|\||h<rsub|i>|\|>\|i\<in\><around*|{|1,2|}>|}>|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|max>=1
    </equation*>

    Then we have\ 

    <\equation*>
      <around*|\||L<around*|(|h|)>|\|>=<around*|\||L<around*|(|h<rsub|1>,h<rsub|2>|)>|\|>=<around*|\||h<rsub|1>\<cdot\>h<rsub|2>|\|>=<around*|\||h<rsub|1>|\|>\<cdot\><around*|\||h<rsub|2>|\|>\<leqslant\>1
    </equation*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that
    <math|L> is continuous, hence combined with [eq: <reference|eq
    16.20.181>] it follows that <math|<around*|(|\<cdot\>|)>\<in\>L<around*|(|<wide*|\<bbb-K\>,\<ldots\>,\<bbb-K\>|\<wide-underbrace\>><rsub|2>;Y|)>>.
    Using the previous lemma [lemma: <reference|lemma 16.23.181>] it follows
    that\ 

    <\equation>
      <label|eq 16.33.181>\<forall\>y=<around*|(|y<rsub|1>,y<rsub|2>|)>\<in\>\<bbb-K\><rsup|2><text|
      <math|<around*|(|\<cdot\>|)>> is diffeentiable at <math|y> with >D
      L<around*|(|y|)>=L<around*|(|y<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,y<rsub|2>|)>
    </equation>

    Define

    <\equation*>
      h:U\<rightarrow\>\<bbb-K\><rsup|2><text| by
      >h<around*|(|x|)>=<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)>
    </equation*>

    then <math|\<pi\><rsub|1>\<circ\>h=g> and
    <math|\<pi\><rsub|2>\<circ\>h=g>. As <math|f>, <math|g> are Frèchet
    differentiable at <math|x> it follows that
    <math|\<pi\><rsub|1>\<circ\>h>, <math|\<pi\><rsub|2>\<circ\>h> are
    Frèchet differentiable at <math|x> with <math|D
    <around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|x|)>=D g<around*|(|x|)>>
    and <math|D <around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|x|)>=D
    f<around*|(|x|)>>. So we can use [theorem: <reference|diff differential
    of a vector valued function>] it follows that\ 

    <\equation>
      <label|eq 16.34.181>h<text| is Frèchet differentiable at <math|x> with
      >\<pi\><rsub|1>\<circ\>D h<around*|(|x|)>=D g<around*|(|x|)><text| and
      >\<pi\><rsub|2>\<circ\>D h<around*|(|x|)>=D f<around*|(|x|)>
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
    <reference|eq 16.33.181> and <reference|eq 16.34.181>] we have that\ 

    <\equation*>
      g\<cdot\>f<text| is Frèchet differentiable at >x<text|>
    </equation*>

    and <math|\<forall\>k\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<around*|(|g\<cdot\>f|)><around*|(|x|)><around*|(|k|)>>|<cell|=>|<cell|<around*|(|D
      L<around*|(|h<around*|(|x|)>|)>\<circ\>D
      h<around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|D
      L<around*|(|h<around*|(|x|)>|)><around*|(|D
      h<around*|(|x|)><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D
      L<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)><around*|(|D
      h<around*|(|x|)><around*|(|k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.34.181>]>>>|<cell|D
      L<around*|(|g<around*|(|x|)>,f<around*|(|x|)>|)><around*|(|D
      g<around*|(|x|)><around*|(|k|)>,D f<around*|(|x|)><around*|(|k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.33.181>]>>>|<cell|L<around*|(|g<around*|(|x|)>,D
      f<around*|(|x|)><around*|(|k|)>|)>+L<around*|(|D
      g<around*|(|x|)><around*|(|k|)>,f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)><around*|(|k|)>+<around*|(|D
      g<around*|(|x|)><around*|(|k|)>|)>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)><around*|(|k|)>+f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)>|)><around*|(|k|)>+<around*|(|f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)>+f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)>|)><around*|(|k|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      D<around*|(|g\<cdot\>f|)><around*|(|x|)>=g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)>+f<around*|(|x|)>\<cdot\>D g<around*|(|x|)>
    </equation*>
  </proof>

  Using the above on the case where <math|X=\<bbb-K\>> we retrieve the
  calculus product rule of derivating.

  <\corollary>
    <label|diff derivate of a product of functions>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real (complex) numbers, <math|U\<subseteq\>\<bbb-K\>> a open
    set, <math|x\<in\>U> and <math|f:U\<rightarrow\>\<bbb-K\>> and
    <math|g:U\<rightarrow\>\<bbb-K\>> are functions that are calculus
    differentiable at <math|x> then <math|g\<cdot\>f> is calculus
    differentiable at <math|x> and\ 

    <\equation*>
      <around*|(|g\<cdot\>f|)><rprime|'><around*|(|x|)>=g<around*|(|x|)>\<cdot\>f<rprime|'><around*|(|x|)>+f<around*|(|x|)>\<cdot\>g<rprime|'><around*|(|x|)>
    </equation*>
  </corollary>

  <\proof>
    Using [theorem: <reference|diff derivate and frechet differential>] we
    have that <math|f,g> are Frèchet differentiable at <math|x> and\ 

    <\equation*>
      f<rprime|'><around*|(|x|)>=D f<around*|(|x|)><around*|(|1|)><text| and
      >g<rprime|'><around*|(|x|)>=D g<around*|(|x|)><around*|(|1|)>
    </equation*>

    By the previous corollary [corollary: <reference|diff differential of
    product of functions>] it follows that\ 

    <\equation>
      <label|eq 16.35.181>g\<cdot\>f<text| is Frèchet differentiable at
      >x<text| and >D<around*|(|g\<cdot\>f|)><around*|(|x|)>=g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)>+f<around*|(|x|)>\<cdot\>D g<around*|(|x|)>
    </equation>

    We can use [theorem: <reference|diff derivate and frechet differential>]
    again giving us that\ 

    <\equation*>
      g\<cdot\>f<text| is calculus differentiable at >x
    </equation*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g\<cdot\>f|)><rprime|'><around*|(|x|)>>|<cell|=>|<cell|D
      <around*|(|g\<cdot\>f|)><around*|(|x|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.35.181>]>>>|<cell|<around*|(|g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)>+f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)><around*|(|1|)>+f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<cdot\>f<rprime|'><around*|(|x|)>+f<around*|(|x|)>\<cdot\>g<rprime|'><around*|(|x|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|diff derivate of inverse function>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real (complex) numbers, <math|x\<in\>\<bbb-K\>\\<around*|{|0|}>>
    [a open set] we have that\ 

    <\equation*>
      <around*|(|<frac|1|\<ast\>>|)>:\<bbb-K\>\\<around*|{|0|}>\<rightarrow\>\<bbb-K\><text|
      defined by ><around*|(|<frac|1|\<ast\>>|)><around*|(|x|)>=<frac|1|x>
    </equation*>

    is calculus differentiable at <math|x> with\ 

    <\equation*>
      <around*|(|<frac|1|\<ast\>>|)><rprime|'><around*|(|x|)>=-<frac|1|x<rsup|2>>
    </equation*>
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Then we have for
    <math|h\<in\><around*|(|\<bbb-K\>\\<around*|{|0|}>|)><rsub|x>> with\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<frac|1|x+h>-<frac|1|x>|h>-<around*|(|-<frac|1|x<rsup|2>>|)>>|<cell|=>|<cell|<frac|<frac|x-<around*|(|x+h|)>|x\<cdot\><around*|(|x+h|)>>|h>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<frac|-h|x\<cdot\><around*|(|x+h|)>>|h>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|-1|x\<cdot\><around*|(|x+h|)>>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|x>\<cdot\><around*|(|<frac|1|x>-<frac|1|x+h>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|x>\<cdot\><frac|x+h-x|x\<ast\><around*|(|x+h|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>><eq-number><label|eq
      16.36.182>>>>>
    </eqnarray*>

    Take now <math|\<delta\>=min<around*|(|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>,<frac|<around*|\||x|\|>|2>|)>\<in\>\<bbb-R\><rsup|+>>
    [as <math|x\<neq\>0>] then we have for
    <math|h\<in\><around*|(|\<bbb-K\>\\<around*|{|0|}>|)><rsub|x>> with
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> that

    <\equation>
      <label|eq 16.37.182><around*|\||h|\|>\<less\><frac|<around*|\||x|\|>|2>\<less\><around*|\||x|\|>\<Rightarrow\>0\<less\><around*|\||x|\|>-<around*|\||h|\|>
    </equation>

    <\equation>
      <label|eq 16.38.182><around*|\||x|\|>\<leqslant\><around*|\||x+h|\|>+<around*|\||h|\|>\<Rightarrow\><around*|\||x|\|>-<around*|\||h|\|>\<less\><around*|\||x+h|\|>\<Rightarrowlim\><rsub|<text|[eq:
      <reference|eq 16.37.182>]>><frac|-1|<around*|\||x+h|\|>>\<less\><frac|1|<around*|\||x|\|>-<around*|\||h|\|>>\<less\><frac|1|<around*|\||x|\|>>
    </equation>

    and\ 

    <\equation>
      <label|eq 16.39.182><around*|\||h|\|>\<less\>\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>
    </equation>

    Hence we have\ 

    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<frac|<frac|1|x+h>-<frac|1|x>|h>-<around*|(|-<frac|1|x<rsup|2>>|)>|\|>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.36.182>]>>>|<cell|<around*|\||<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>>|\|>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\||h|\|>|<around*|\||x|\|><rsup|2>\<cdot\><around*|\||x+h|\|>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 16.38.182>]>>>|<cell|<frac|<around*|\||h|\|>|<around*|\||x|\|><rsup|2>\<cdot\><around*|\||x|\|>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\||h|\|>|<around*|\||x|\|><rsup|3>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 16.39.182>]>>>|<cell|<frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|<around*|\||x|\|><rsup|3>>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation*>
      <around*|(|<frac|1|\<ast\>>|)><text| is calculus differentiable at
      >x<text| and ><around*|(|<frac|1|\<ast\>>|)><rprime|'><around*|(|x|)>=-<frac|1|x<rsup|2>>
    </equation*>

    \;
  </proof>

  <\theorem>
    We have

    <\enumerate>
      <item>If <math|n\<in\>\<bbb-N\>> then <math|\<forall\>x\<in\>\<bbb-K\>>

      <\equation*>
        <around*|(|\<ast\>|)><rsup|n>:\<bbb-K\>\<rightarrow\>\<bbb-K\><text|
        defined by ><around*|(|\<ast\>|)><rsup|n><around*|(|x|)>=x<rsup|n>
      </equation*>

      is calculus differentiable at <math|x> and\ 

      <\equation*>
        <around*|(|<around*|(|\<ast\>|)><rsup|n>|)><rprime|'><around*|(|x|)>=n\<cdot\><around*|(|\<ast\>|)><rsup|n-1><around*|(|x|)>
      </equation*>

      or in a shorter notation

      <\equation*>
        <around*|(|x<rsup|n>|)><rprime|'>=n\<cdot\>x<rsup|n-1>
      </equation*>

      <item>If <math|z\<in\><around*|{|-n\|n\<in\>\<bbb-N\>|}>> then
      <math|\<forall\>x\<in\>\<bbb-K\>\\<around*|{|0|}>> [a open subset of
      <math|\<bbb-K\>>] then\ 

      <\equation*>
        <around*|(|\<ast\>|)>:\<bbb-K\>\\<around*|{|0|}>\<rightarrow\>\<bbb-K\><text|
        defined by ><around*|(|\<ast\>|)><rsup|z><around*|(|x|)>=<frac|1|x<rsup|<around*|(|-z|)>>>
      </equation*>

      is calculus differentiable at <math|x> and\ 

      <\equation*>
        <around*|(|<around*|(|\<ast\>|)><rsup|z>|)><rprime|'>=z\<cdot\><around*|(|\<ast\>|)><rsup|z+1>
      </equation*>

      or in a shorter notation\ 

      <\equation*>
        <around*|(|x<rsup|-n>|)><rprime|'>=-n\<cdot\>x<rsup|-<around*|(|n+1|)>>=-n\<cdot\>x<rsup|-n-1>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction to prove this by induction so given
      <math|x\<in\>\<bbb-K\>> define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<around*|(|\<ast\>|)><rsup|n><text| is
        calculus differentiable at >x<text| and
        ><around*|(|<around*|(|\<ast\>|)><rsup|n>|)><rprime|'><around*|(|x|)>=n\<cdot\><around*|(|\<ast\>|)><rsup|n-1><around*|(|x|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|z=1> then
        <math|<around*|(|\<ast\>|)><rsup|z>=<around*|(|\<ast\>|)><rsup|1>=Id<rsub|\<bbb-K\>>>
        so that by [theorem: <reference|diff identity function is
        differentiable>] <math|<around*|(|\<ast\>|)><rsup|1>> is Frèchet
        differentiable at <math|x> with <math|D<around*|(|\<ast\>|)><rsup|1><around*|(|x|)>=Id<rsub|\<bbb-K\>>>.
        Using [theorem: <reference|diff derivate and frechet differential>]
        it follows that

        <\equation*>
          <around*|(|\<ast\>|)><rsup|1><text| is calculus differentiable at
          >x<text| and >
        </equation*>

        and

        <\equation*>
          <around*|(|<around*|(|\<ast\>|)><rsup|1>|)><rprime|'><around*|(|x|)>=D<around*|(|\<ast\>|)><rsup|1><around*|(|x|)><around*|(|1|)>=Id<rsub|\<bbb-K\>><around*|(|1|)>=1=1\<cdot\><around*|(|\<ast\>|)><rsup|0><around*|(|x|)>=1\<cdot\><around*|(|\<ast\>|)><rsup|1-1><around*|(|x|)>
        </equation*>

        \ proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Given <math|y\<in\>X>
        we have

        <\equation*>
          <around*|(|\<ast\>|)><rsup|n+1><around*|(|x|)>=x<rsup|n+1>=x\<cdot\>x<rsup|n>=Id<rsub|X><around*|(|x|)>\<cdot\><around*|(|\<ast\>|)><rsup|n><around*|(|x|)>
        </equation*>

        so that\ 

        <\equation*>
          <around*|(|\<ast\>|)><rsup|n+1>=Id<rsub|\<bbb-K\>>\<cdot\><around*|(|\<ast\>|)><rsup|n>
        </equation*>

        As <math|n\<in\>S> we have that <math|<around*|(|\<ast\>|)><rsup|n>>
        is calculus differentiable at <math|x> with

        <\equation*>
          <around*|(|<around*|(|\<ast\>|)><rsup|n>|)><rprime|'><around*|(|x|)>=n\<cdot\><around*|(|\<ast\>|)><rsup|n-1><around*|(|x|)>.
        </equation*>

        So <math|><math|<around*|(|\<ast\>|)><rsup|n+1>> is the product of
        two functions that are calculus differentiable at <math|x>, hence by
        [corollary: <reference|diff derivate of a product of functions>] we
        have that\ 

        <\equation*>
          <around*|(|\<ast\>|)><rsup|n+1><text| is calculus differentiable at
          >x
        </equation*>

        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<ast\>|)><rsup|n+1>|)><rprime|'><around*|(|x|)>>|<cell|=>|<cell|<around*|(|Id<rsub|\<bbb-K\>>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><rprime|'><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|\<bbb-K\>><around*|(|x|)>\<cdot\><around*|(|<around*|(|\<ast\>|)><rsup|n>|)><rprime|'><around*|(|x|)>+<around*|(|\<ast\>|)><rsup|n><around*|(|x|)>\<cdot\><around*|(|Id<rsub|\<bbb-K\>>|)><rprime|'><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|x\<cdot\>n\<cdot\>x<rsup|n-1>+x<rsup|n>\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|n\<cdot\>x<rsup|n>+1\<cdot\>x<rsup|n>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\>x<rsup|n>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\>x<rsup|<around*|(|n+1|)>-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\><around*|(|*\<ast\>|)><rsup|<around*|(|n+1|)>-1><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>

      <item>Let <math|z=-n\<in\><around*|{|-n\|n\<in\>\<bbb-N\>|}>> then for
      every <math|y\<in\>\<bbb-K\>\\<around*|{|0|}>> we have\ 

      <\equation>
        <around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\><around*|(|\<ast\>|)><rsup|n>|)><around*|(|y|)>=<around*|(|<frac|1|\<ast\>>|)><around*|(|<around*|(|\<ast\>|)><around*|(|y|)>|)>=<around*|(|<frac|1|\<ast\>>|)><around*|(|y<rsup|n>|)>=<frac|1|y<rsup|n>>=<frac|1|y<rsup|-z>>=<around*|(|\<ast\>|)><rsup|z>
      </equation>

      So <math|<around*|(|\<ast\>|)><rsup|z>> is the composition of
      <math|<around*|(|<frac|1|\<ast\>>|)>> and
      <math|<around*|(|\<ast\>|)><rsup|n>> where these function are calculus
      differentiable at <math|x> and

      <\equation>
        <label|eq 16.41.182><around*|(|<around*|(|\<ast\>|)><rsup|n>|)><rprime|'><around*|(|x|)>=n\<cdot\>x<rsup|n-1><text|
        and ><around*|(|<frac|1|\<ast\>>|)><rprime|'><around*|(|x|)>\<equallim\><rsub|<text|[eq:
        <reference|diff derivate of inverse function>]>>-<frac|1|x<rsup|2>>
      </equation>

      Hence using [theorem: <reference|diff chain rule calculus>] we have
      that <math|<around*|(|\<ast\>|)><rsup|z>> is calculus differentiable at
      <math|x> and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<ast\>|)><rsup|z>|)><rprime|'><around*|(|x|)>>|<cell|=>|<cell|<around*|(|<around*|(|<frac|1|\<ast\>>|)>\<circ\><around*|(|\<ast\>|)><rsup|n>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff chain rule calculus>]>>>|<cell|<around*|(|<around*|(|\<ast\>|)><rsup|n>|)><rprime|'><around*|(|x|)>\<cdot\><around*|(|<around*|(|<frac|1|\<ast\>>|)><rprime|'>|)><around*|(|<around*|(|\<ast\>|)><rsup|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.41.182>]>>>|<cell|n\<cdot\>x<rsup|n-1>\<cdot\><frac|-1|<around*|(|<around*|(|\<star\>|)><rsup|n><around*|(|x|)>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|n\<cdot\>x<rsup|n-1>\<cdot\>-<frac|1|x<rsup|2\<cdot\>n>>>>|<row|<cell|>|<cell|=>|<cell|-n\<cdot\>x<rsup|n-1>\<cdot\><frac|1|x<rsup|n-1>\<cdot\>x<rsup|2\<cdot\>n-<around*|(|n-1|)>>>>>|<row|<cell|>|<cell|=>|<cell|-n\<cdot\><frac|1|x<rsup|n+1>>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><frac|1|x<rsup|n+1>>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><around*|(|\<ast\>|)><rsup|-<around*|(|n+1|)>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|z\<cdot\><around*|(|\<ast\>|)><rsup|z+1><around*|(|x|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <section|Higher order differentials>

  <subsection|Linear mappings to linear mappings>

  The idea of higher order derivates is simple. If a function
  <math|f:U\<rightarrow\>Y> is Frèchet differentiable on <math|U> then
  <math|\<forall\>x\<in\>U> <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>>
  exist so that we can define the function <math|D
  f:U\<rightarrow\>L<around*|(|X,Y|)>> where <math|<around*|(|D
  f|)><around*|(|x|)>=D f<around*|(|x|)>> and ask if that function is Frèchet
  differentiable at <math|x\<in\>U>. If so then <math|D f> has a differential
  <math|D<around*|(|D f|)><around*|(|x|)>\<in\>L<around*|(|X,L<around*|(|X,Y|)>|)>>
  which is the second order differential of <math|f> noted as
  <math|D<rsup|2>f<around*|(|x|)>>. Proceeding in this way we can define the
  third order differential <math|D<rsup|3>f<around*|(|x|)>> and so on. There
  is however a problem, if we look at the types of the differentials we have\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|D f<around*|(|x|)>>|<cell|\<in\>>|<cell|L<around*|(|X,Y|)>>>|<row|<cell|D<rsup|2>f<around*|(|x|)>>|<cell|\<in\>>|<cell|L<around*|(|X,L<around*|(|X,Y|)>|)>>>|<row|<cell|D<rsup|3>f<around*|(|x|)>>|<cell|\<in\>>|<cell|L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
  </eqnarray*>

  Evaluting the higher order differentials is rather elaborated because we
  have\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|D
    f<around*|(|x|)>|)><around*|(|y|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|<around*|(|D<rsup|2>f<around*|(|x|)>|)><around*|(|y<rsub|1>|)><around*|(|y<rsub|2>|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|<around*|(|<around*|(|<around*|(|D<rsup|3>f<around*|(|x|)>|)><around*|(|y<rsub|1>|)>|)><around*|(|y<rsub|2>|)>|)><around*|(|y<rsub|3>|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
  </eqnarray*>

  It would be nicer if the higher order differentials are multi linear
  functions so that we have\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|D f<around*|(|x|)><around*|(|y|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|D
    <rsup|2>f<around*|(|x|)><around*|(|y<rsub|1>,y<rsub|2>|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|D<rsup|3>f<around*|(|x|)><around*|(|y<rsub|1>,y<rsub|2>,y<rsub|3>|)>>|<cell|\<in\>>|<cell|Y>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|D<rsup|n>f<around*|(|x|)><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>>|<cell|\<in\>>|<cell|Y>>>>
  </eqnarray*>

  To be able to do this we must do the following identifications

  <\eqnarray*>
    <tformat|<table|<row|<cell|L<around*|(|X,L<around*|(|X,Y|)>|)>>|<cell|is
    identified with>|<cell|L<rsup|2><around*|(|X;Y|)>>>|<row|<cell|L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>>|<cell|is
    identified with>|<cell|L<rsup|3><around*|(|X;Y|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
  </eqnarray*>

  where the identifaction maintains linearity, continuity and the norm. This
  is the focus of this section. First we need some recursive definitions to
  define <math|L<around*|(|X,L<around*|(|X,\<ldots\>.,L<around*|(|X,Y|)>|)>|)>>.

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
      <tformat|<table|<row|<cell|L<rsub|1><around*|(|X,Y|)>>|<cell|=>|<cell|L<around*|(|X,Y|)>>>|<row|<cell|L<rsub|2><around*|(|X,Y|)>>|<cell|=>|<cell|L<around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|X,L<around*|(|X,Y|)>|)>>>|<row|<cell|L<rsub|3><around*|(|X,Y|)>>|<cell|=>|<cell|L<around*|(|X,L<rsub|2><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|L<rsub|n><around*|(|X,Y|)>>|<cell|=>|<cell|L<around*|(|X,L<around*|(|X,\<ldots\><around*|(|L<around*|(|X,Y|)>|)>|)>|)>>>>>
    </eqnarray*>
  </example>

  <\lemma>
    <label|lemma 16.50.192>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces then

    <\equation*>
      L<rsub|n><around*|(|X;Y|)>=L<rsub|n-1><around*|(|X;L<around*|(|X,Y|)>|)>\<equallim\><rsub|L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>L<rsub|n-1><around*|(|X;L<rsub|1><around*|(|X;Y|)>|)>
    </equation*>
  </lemma>

  <\proof>
    We use induction to prove this, so let\ 

    <\equation*>
      S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|L<rsub|n><around*|(|X;Y|)>=L<rsub|n-1><around*|(|X;L<around*|(|X,Y|)>|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|2\<in\>S>>Then <math|L<rsub|2><around*|(|X;Y|)>=L<around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>=L<around*|(|X,L<around*|(|X,Y|)>|)>=L<rsub|1><around*|(|X;L<around*|(|X,Y|)>|)>>
      proving that <math|2\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<rsub|n+1><around*|(|X;Y|)>>|<cell|=>|<cell|L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|L<around*|(|X,L<rsub|n-1><around*|(|X,L<around*|(|X,Y|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|n><around*|(|X;L<around*|(|X,Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|<around*|(|<around*|(|n+1|)>-1|)>><around*|(|X;L<around*|(|X,Y|)>|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>

    \;
  </proof>

  We want now to show that <math|L<rsub|n><around*|(|X;Y|)>> is isometric to
  <math|L<rsup|n><around*|(|X;Y|)>>, first we show how elements of
  <math|L<rsub|n><around*|(|X;Y|)>> can act on tupples of elements of
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
      where >L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>|)>\<in\>L<rsub|2><around*|(|X;Y|)>=L<around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>|)>|)><around*|(|x<rsub|4>:\<ldots\>:x<rsub|4>|)><text|
      where >L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>|)><around*|(|x<rsub|3>|)>\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>|)>|)><around*|(|x<rsub|4>|)>\<in\>Y>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|3>|)>>|<cell|=>|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|3>|)><text|
      where >L<around*|(|x<rsub|1>|)>\<in\>L<rsub|3><around*|(|X;Y|)>=L<around*|(|x,L<rsub|2><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>:\<ldots\>:x<rsub|3>|)><text|
      where >L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>|)>\<in\>L<rsub|2><around*|(|X;Y|)>=L<around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>|)><around*|(|x<rsub|3>|)>\<in\>L<rsub|1><around*|(|X;Y|)>>>>>
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
      that >L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
      if >m=1>>|<row|<cell|L<rsub|n-m><around*|(|X;Y|)><text| if
      >m\<less\>n>>>>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>If <math|m\<in\><around*|{|1,\<ldots\>,n|}>=<around*|{|1|}>>
      then <math|m=1=n>. If <math|L\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      then we have for every <math|<around*|(|x<rsub|1>|)>\<in\>X<rsup|1>>
      that <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>\<in\>Y>.
      Proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsub|n+1><around*|(|X;Y|)>> then for
      <math|m\<in\><around*|{|1,\<ldots\>,n+1|}>> we have for <math|m>
      either:\ 

      <\description>
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
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>\<in\>Y
        </equation*>

        proving that\ 

        <\equation*>
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>\<in\><choice|<tformat|<table|<row|<cell|Y<text|
          if >n+1=n+1>>|<row|<cell|L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)><text|
          if >n+1\<less\>n+1>>>>>=<choice|<tformat|<table|<row|<cell|Y<text|
          if >m=1>>|<row|<cell|L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)><text|
          if >m\<less\>n>>>>>
        </equation*>

        <item*|<math|m\<in\><around*|{|1,\<ldots\>,n|}>>>Given
        <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\>X<rsup|m>> we
        have, \ as <math|L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>,
        that <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>.
        As <math|n\<in\>S>, <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|m>|)>\<in\>X<rsup|m-1>>
        and <math|m-1\<less\>n> that\ 

        <\equation*>
          <around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsub|n-<around*|(|m-1|)>><around*|(|X;Y|)>=L<rsub|<around*|(|n+1|)>-m><around*|(|X;Y|)>
        </equation*>

        hence\ 

        <\equation*>
          L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsub|<around*|(|n+1|)>-m<around*|(|X;Y|)>>
        </equation*>

        proving as <math|m\<less\>n+1>

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
      L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)><text| and
      ><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n><text|
      then >L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|L\<in\>L<rsub|1><around*|(|\<bbb-K\>;X|)>=L<around*|(|\<bbb-K\>;X|)>>
      then for <math|<around*|(|x<rsub|1>|)>\<in\>\<bbb-K\><rsup|1>> we have\ 

      <\equation*>
        L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>=L<around*|(|x<rsub|1>\<cdot\>1|)>\<equallim\><rsub|L\<in\>L<around*|(|\<bbb-K\>,X|)>>x<rsub|1>\<cdot\>L<around*|(|1|)>=L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>\<cdot\><big|prod><rsub|i=1><rsup|1>x<rsub|i>
      </equation*>

      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
      <math|L\<in\>L<rsub|n+1><around*|(|\<bbb-K\>;X|)>=L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>>
      then we have for <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>\<bbb-K\><rsup|n>>
      that <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)>>.
      So as <math|n\<in\>S> and <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>\<in\>\<bbb-K\><rsup|n>>
      we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>>>|<cell|x<rsub|1>\<cdot\><around*|(|L<around*|(|1|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i+1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|1|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i>>>>>
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
      have >L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-1>|)>|)><around*|(|x<rsub|n>|)>|}>
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
      we have, as <math|L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n>*<around*|(|X;Y|)>|)>>,
      that <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>.
      As <math|n\<in\>S> and <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      we have that\ 

      <\equation*>
        <around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>=<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>|)><around*|(|x<rsub|n+1>|)>=<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|)><around*|(|x<rsub|n+1>|)>
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
      we have ><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|}>
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
      then

      <\equation*>
        L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>\<in\>L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>
      </equation*>

      so that

      <\equation*>
        <around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>|)>\<equallim\><rsub|<text|pointwise
        defnition>>L<rsub|1><around*|(|x<rsub|1>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>|)><text|>
      </equation*>

      hence

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x<rsub|1>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)><eq-number><label|eq
        16.42.187>>>>>
      </eqnarray*>

      Using [lemma: <reference|lemma 16.51.186>]
      <math|L<rsub|1><around*|(|x<rsub|1>|)>,L<rsub|2><around*|(|x<rsub|2>|)>\<in\>L<rsub|<around*|(|n+1|)>-1><around*|(|X;Y|)>=L<rsub|n><around*|(|X;Y|)>>
      so as <math|n\<in\>S> it follows that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L<rsub|1><around*|(|x<rsub|1>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|L<rsub|2><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>>>
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
    <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
    that\ 

    <\equation*>
      L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:r+\<alpha\>\<cdot\>t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:r:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>
    </equation*>
  </lemma>

  <\proof>
    We use mathematical induction the proof, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L\<in\>L<rsub|n><around*|(|X;Y|)><text| then
      >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have for
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><text|
      that >L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:r+\<alpha\>\<cdot\>t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:r:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>Let <math|L\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      then if <math|i\<in\><around*|{|1,\<ldots\>,1|}>=<around*|{|1|}>> we
      have <math|i=1> and given\ 

      <\equation*>
        <around*|(|r+\<alpha\>\<cdot\>t|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|1>
      </equation*>

      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>:r+\<alpha\>\<cdot\>t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|r+\<alpha\>\<cdot\>t|)>>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,Y|)>>>|<cell|>>|<row|<cell|L<around*|(|y|)>+\<alpha\>\<cdot\>L<around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>:r:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>:t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>
      and take <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>> then we have
      either:\ 

      <\description>
        <item*|<math|i=1>>Then for <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>=<around*|(|r+\<alpha\>\<cdot\>t,x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>
        we have \ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>:r+\<alpha\>\<cdot\>t:x<rsub|i+1>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|r+\<alpha\>\<cdot\>t:x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|r+\<alpha\>\<cdot\>t|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|>L\<in\>L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>>|<cell|>>|<row|<cell|<around*|(|L<around*|(|r|)>+\<alpha\>\<cdot\>L<around*|(|t|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|<around*|(|L<around*|(|r|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>+\<alpha\>\<cdot\>L<around*|(|t|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|r:x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>+\<alpha\>\<cdot\>L<around*|(|t:x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:r:x<rsub|i+1>:\<ldots\>:x<rsub|n+1>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:t:x<rsub|i+1>:\<ldots\>:x<rsub|n+1>|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that in this case\ 

        <\equation*>
          n+1\<in\>S
        </equation*>

        <item*|<math|i\<in\><around*|{|2,\<ldots\>,n+1|}>>>Then
        <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n+1>>
        we have <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n>>
        which as <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>
        and <math|n\<in\>S> resuls in

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|i-1>:r+\<alpha\>\<cdot\>t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|i-1>:r:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|i-1>:t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:x<rsub|2>:\<ldots\>:x<rsub|i-1>:r:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:|\<nobracket\>><around*|\<nobracket\>|x<rsub|2>:\<ldots\>:x<rsub|i-1>:t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:r:x<rsub|i+1>:\<ldots\>:x<rsub|n+1>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:t:x<rsub|i+1>:\<ldots\>:x<rsub|n+1>|)>>|<cell|>|<cell|>>>>
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
      we have <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>|}>
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
      then as <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsub|n><around*|(|X;Y|)>>,
      <math|<around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n>> and
      <math|n\<in\>S> then\ 

      <\equation>
        <label|eq 16.43.187><around*|\<\|\|\>|L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<around*|(|x<rsub|i>|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i+1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|L<around*|(|x<rsub|i>|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>
      </equation>

      Next we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.43.187>]>>>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|i>|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>>>
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
    such that <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
    we have <math|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>
    then <math|L<rsub|1>=L<rsub|2>>
  </lemma>

  <\proof>
    We use induction to prove this, so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      >L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)><text| satisifes
      >\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><text|
      >L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
      <text|then >L<rsub|1>=L<rsub|2>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>Let <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>
      satisfies that <math|\<forall\><around*|(|x<rsub|1>|)>\<in\>X<rsup|1>>
      we have that <math|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>>.
      Then <math|\<forall\>x\<in\>X> we have for
      <math|y=<around*|(|x|)>\<in\>X<rsup|1>> [so that <math|y<rsub|1>=x>] we
      have

      <\equation*>
        L<rsub|1><around*|(|x|)>=L<rsub|1><around*|(|y<rsub|1>|)>=L<rsub|1><around*|(|y<rsub|1>:\<ldots\>:y<rsub|1>|)>=L<rsub|2><around*|(|y<rsub|1>:\<ldots\>:y<rsub|1>|)>=L<rsub|2><around*|(|y<rsub|1>|)>=L<rsub|2><around*|(|x|)>
      </equation*>

      proving that <math|L<rsub|1>=L<rsub|2>>. Hence <math|1\<in\>S>.

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
      is choosen arbitrary we conclude that <math|L<rsub|1>=L+2>. This proves
      that\ 

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
    <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
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
      have <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i=1><rsup|1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>.
      Then given <math|y\<in\>X> we have for
      <math|x=<around*|(|y|)>\<in\>X<rsup|1>> that

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i=1><rsup|1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>=M\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|X>
      </equation*>

      so that by [definition: <reference|continuity operator norm>]
      <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|1><around*|(|X;Y|)>>\<leqslant\>M>
      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsub|n+1><around*|(|X;Y|)>=L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>>
      such that <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n>>
      we have

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i=1><rsup|n+1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>
      </equation*>

      Fix <math|x\<in\>X> then <math|\<forall\><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<in\>X<rsup|n>>
      we have\ 

      <\equation*>
        <around*|\<\|\|\>|<around*|(|L<around*|(|x|)>|)><around*|(|y<rsub|1>:\<ldots\>:y<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x:y<rsub|1>:\<ldots\>:y<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>=<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>
      </equation*>

      As <math|n\<in\>S> and <math|L<around*|(|x|)>\<in\>L<rsub|n><around*|(|X;Y|)>>
      it follows that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>.
      Hence by \ [definition: <reference|continuity operator norm>] it
      follows that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|X;Y|)>>\<leqslant\>M>
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
    normed spaces and <math|L\<in\>L<rsup|n><around*|(|X;Y|)>> then there
    exist a <math|K\<in\>L<rsub|n><around*|(|X;Y|)>> such that
    <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> we have
    <math|K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
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
      <item*|<math|1\<in\>S>>If <math|L\<in\>L<rsub|1><around*|(|X;Y|)>> then
      as <math|L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>n we have that
      <math|L\<in\>L<around*|(|X,Y|)>> so if we take <math|K=L> then we have
      <math|K\<in\>L<around*|(|X,Y|)>\<equallim\><rsub|<text|[definition:
      <reference|continuity L^n(X;Y)>]>>L<rsup|1><around*|(|X;Y|)>> and for
      <math|<around*|(|x<rsub|1>|)>\<in\>X<rsup|1>> we have
      <math|K<around*|(|x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>>.
      So we have that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|L\<in\>L<rsup|n+1><around*|(|X;Y|)>>. Take <math|x\<in\>X> and
      define

      <\equation*>
        L<rsub|x>:X<rsup|n>\<rightarrow\>Y<text| by
        >L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|n>|)>
      </equation*>

      If <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|\<equallim\><rsub|L\<in\>L<rsup|n+1><around*|(|X;Y|)>>>|<cell|>>|<row|<cell|L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|i-1>,r,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 16.44.188>L<rsub|x>\<in\>Hom<rsup|n><around*|(|X;Y|)>
      </equation>

      Let <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      then for <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n+1>|)>> defined
      by <math|y<rsub|i>=<choice|<tformat|<table|<row|<cell|x<text| if
      >i=1>>|<row|<cell|x<rsub|i-1><text| if
      >i\<in\><around*|{|1,\<ldots\>,n+1|}>>>>>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n+1><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|y<rsub|1>|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x<rsub|>|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=2><rsup|n+1><around*|\<\|\|\>|x<rsub|i-1>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>>>
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

      then by [eq: <reference|eq 16.46.188>] we have that for
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n+1>>

      <\equation>
        <label|eq 16.47.188>K<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>
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
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|K<around*|(|x|)><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|K<rsub|x><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.47.188>]>>>|<cell|<around*|\<\|\|\>|L<around*|(|x,y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|L\<in\>L<rsup|n><around*|(|X;Y|)>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>>>
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

      The above together with [eq: <reference|eq 16.47.188>] proves that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
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
      is a function

      <item><math|\<forall\>\<cal-I\><rsub|n,X,Y>:L<rsub|n><around*|(|X;Y|)>\<rightarrow\>L<rsup|n><around*|(|X;Y|)>>
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
  </theorem>

  <\proof>
    We have\ 

    <\enumerate>
      <item>Let <math|L\<in\>L<rsub|n><around*|(|X;Y|)>> then for
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:r+\<alpha\>\<cdot\>t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.55.187>]>>>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:r:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|i-1>:t:x<rsub|i+1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
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
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[lemma:
        <reference|lemma 16.56.187>]>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>>>>
      </eqnarray*>

      Using then [theorems: <reference|continuity multilinear mapping (1)>
      and <reference|continuity operator norm of multilinear mappings (1)>]
      it follows that\ 

      <\equation>
        <label|eq 16.50.189>\<cal-I\><rsub|n,X,Y><around*|(|L|)>:X<rsup|n>\<rightarrow\>Y<text|
        is continuous and ><around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>
      </equation>

      Combining the above with [eq: <reference|eq 16.49.189>] proves that\ 

      <\equation*>
        \<cal-I\><rsub|n,X,Y><around*|(|L|)>\<in\>L<rsup|n><around*|(|X;Y|)>
      </equation*>

      so that\ 

      <\equation*>
        \<cal-I\><rsub|n,X,Y>:L<rsub|n><around*|(|X;Y|)>\<rightarrow\>L<rsup|n><around*|(|X;Y|)><text|
        is a function>
      </equation*>

      <item>To prove bijectivity we have to prove:

      <\description>
        <item*|injectivity>If <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)>>
        is such that <math|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)>=\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)><rsub|>>.
        So <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
        we have\ 

        <\equation*>
          L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>
        </equation*>

        Using [lemma: <reference|lemma 16.57.187>] it follows that
        <math|L<rsub|1>=L<rsub|2>> proving injectivity.

        <item*|surjectivity>Let <math|L\<in\>L<rsup|n><around*|(|X;Y|)>> then
        using [lemma: <reference|lemma 16.59.188>] there exist a
        <math|K\<in\>L<rsup|n><around*|(|X;Y|)>> such that
        <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
        we have <math|K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>.
        Hence\ 

        <\equation*>
          \<cal-I\><rsub|n,X,Y><around*|(|K|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>
        </equation*>

        proving that <math|\<cal-I\><rsub|n,X,Y><around*|(|K|)>=L> and thus
        surjectivity.
      </description>

      <item>Let <math|L<rsub|1>,L<rsub|2>\<in\>L<rsub|n><around*|(|X;Y|)>>
      and <math|\<alpha\>\<in\>\<bbb-K\>> then
      <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|1>|)>+\<alpha\>\<cdot\>\<cal-I\><rsub|n,X,Y><around*|(|L<rsub|2>|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>>>
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
        <around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|\<cal-I\><rsub|n,X,Y><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i\<in\>1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>
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

  <subsection|Higher order Frèchet differentation>

  We are now ready to define higher order differentiation. Actually we will
  define two higher order differentials one a element of
  <math|L<rsub|n><around*|(|X;Y|)>> and another one a element of
  <math|L<rsup|n><around*|(|X;Y|)>>. Let's first define
  <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>\<in\>L<rsub|n><around*|(|X;Y|)>>
  recursively.

  <\definition>
    <label|diff higher order differentiation><index|<math|n>-times
    differentiability><index|<math|D<rsup|<around*|[|n|]>>f*<around*|(|x|)>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function then <math|f> is <math|n>-times
    Frèchet differentiable at <math|x> with differential
    <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>\<in\>L<rsub|n><around*|(|X;Y|)>>
    if we have for\ 

    <\description>
      <item*|<math|n=1>>that <math|f> is Frèchet differentiable at <math|x>
      and in this case <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
      f<around*|(|x|)>>

      <item*|<math|1\<less\>n>>that there exist a open set <math|V> in
      <math|X> with <math|x\<in\>V\<subseteq\>U> such that
      <math|\<forall\>y\<in\>V> <math|f> is <math|<around*|(|n-1|)>>-times
      differentiable at <math|y> such that the functon

      <\equation*>
        D<rsup|<around*|[|n-1|]>>f:V\<rightarrow\>L<rsub|n-1><around*|(|X;Y|)><text|
        by ><around*|(|D<rsup|<around*|[|n-1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n-1|]>>f<around*|(|y|)>
      </equation*>

      is Frèchet differentiable at <math|x> and in this case

      <\equation*>
        D<rsup|<around*|[|n|]>>f<around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n-1|]>>f|)><around*|(|x|)>\<in\>L<around*|(|X,L<rsub|n-1><around*|(|X;Y|)>|)>=L<rsub|n><around*|(|X;Y|)>
      </equation*>
    </description>

    <\note>
      <label|note 16.65.191>In the case <math|1\<less\>n> we must ensure that
      <math|D<around*|(|D<rsup|<around*|[|n-1|]>>|)><around*|(|x|)>> does not
      dependend on the choice of <math|V>. This is ensured by [corollary:
      <reference|diff differentiability is a local property (1)>].
    </note>
  </definition>

  Just as the Frèchet differentiation is local [see theorem: <reference|diff
  differentiability is a local property>] higher order Frèchet
  differentiation is local.\ 

  <\theorem>
    <label|diff higher order differentiation is local>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U> ,
    <math|V> a open set with <math|x\<in\>V\<subseteq\>U> and
    <math|f:U\<rightarrow\>Y> a function then we have\ 

    <\equation*>
      f<text| is n-times differentiable at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<rsub|\|V><text| is >n<text|-times differentiable at >x
    </equation*>

    Further if <math|f> or <math|f<rsub|\|V>> is <math|n>-times
    differentiable at <math|x> then <math|D<rsup|<around*|[|n|]>>f<rsub|\|V><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>>.
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by induction so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f<text| is >n<text|-times
        differentiable at <math|x\<in\>U<text| then for every open
        <math|V<text| with >x\<in\>V\<subseteq\>U<text| we have that
        >f<rsub|\|V>> is >n<text|-times differentiable at >x<text| and
        >D<rsup|<around*|[|n|]>>f<rsub|\|V><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f> is <math|1>-times differentiable
        at <math|x\<in\>U> and <math|V> a open set with
        <math|x\<in\>V\<subseteq\>U> then by definition <math|f> is Frèchet
        differentiable at <math|x> and <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
        f<around*|(|x|)>>. Using [theorem: <reference|diff differentiability
        is a local property>] <math|f<rsub|\|V>> is Frèchet differentiable at
        <math|x> and <math|D f<rsub|\|V><around*|(|x|)>=D f<around*|(|x|)>>.
        Hence <math|f<rsub|\|V>> is <math|1>-times differentiable at <math|x>
        and <math|D<rsup|<around*|[|1|]>>f<rsub|\|V><around*|(|x|)>=D
        f<rsub|\|V><around*|(|x|)>=D f<around*|(|x|)>=D<rsup|1>f<around*|(|x|)>>.
        From this it follows that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> and
        <math|V> is a open set with <math|x\<in\>V\<subseteq\>U>. Then there
        exist a open set <math|W> with <math|x\<in\>W\<subseteq\>U> such that
        <math|\<forall\>y\<in\>W> we have that <math|f> is <math|n>-times
        differentiable at <math|y> and the function\ 

        <\equation>
          <label|eq 16.52.191>D<rsup|<around*|[|n|]>>f:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>
        </equation>

        is Frèchet differentiable at <math|x> and\ 

        <\equation>
          <label|eq 16.53.191>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>=D
          <around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>
        </equation>

        Take <math|V<rprime|'>=W<big|cap>V> then <math|V<rprime|'>> is open,
        <math|x\<in\>V<rprime|'>\<subseteq\>V\<subseteq\>U> and
        <math|\<forall\>y\<in\>V<rprime|'>\<subseteq\>V\<subseteq\>U> we
        have, as <math|y\<in\>W>, that <math|f> is <math|n>-times
        differentiable at <math|y>. As <math|n\<in\>S> it follows that
        <math|f<rsub|\|V>> is <math|n>-times differentiable at <math|y> with
        <math|D<rsup|<around*|[|n|]>>f<rsub|\|V><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>>
        definining\ 

        <\equation>
          <label|eq 16.54.191>D<rsup|<around*|[|n|]>>f<rsub|\|V>:V<rprime|'>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          where <math|<around*|(|D<rsup|<around*|[|n|]>>f<rsub|\|V>|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<rsub|\|V><around*|(|y|)>>>
        </equation>

        which, as <math|\<forall\>y\<in\>V<rprime|'>> we have
        <math|D<rsup|<around*|[|n|]>>f<rsub|\|V><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>\<equallim\><rsub|y\<in\>V<rprime|'>><around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V<rprime|'>><around*|(|y|)>>,
        proves that\ 

        <\equation>
          <label|eq 16.55.191>D<rsup|<around*|[|n|]>>f<rsub|\|V>=<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V<rprime|'>>
        </equation>

        As <math|D<rsup|<around*|[|n|]>>f> is Frèchet differentiable at
        <math|x> it follows from [theorem: <reference|diff differentiability
        is a local property>] that <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V<rprime|'>>>
        is Frèchet differentiable at <math|x> and

        <\equation>
          <label|eq 16.56.191>D<around*|(|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V<rprime|'>>|)><around*|(|x|)>\<equallim\><rsub|<text|[theorem:
          <reference|diff differentiability is a local
          property>]>>D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.53.191>]>>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>
        </equation>

        So, as <math|D<rsup|<around*|[|n|]>>f<rsub|\|V>=<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V<rprime|'>>>,
        it followss that <math|D<rsup|<around*|[|n|]>>f<rsub|\|V>> is Frèchet
        differentiable at <math|x> and

        <\equation*>
          D<around*|(|D<rsup|<around*|[|n|]>>f<rsub|\|V>|)><around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V<rprime|'>><around*|(|x|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.56.191>]>>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>
        </equation*>

        Hence by definition we have that\ 

        <\equation*>
          f<rsub|\|V><text| is ><around*|(|n+1|)><text|-times differentiable
          at >x<text| with >D<rsup|<around*|[|n+1|]>>f<rsub|\|V><around*|(|x|)>=D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>
        </equation*>

        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>We prove this by induction on <math|n>, so
      let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f:U\<rightarrow\>Y<text| is
        a function and there exist a open <math|V> with
        >x\<in\>V\<subseteq\>U<text| such that
        >f<rsub|\|V>:V\<rightarrow\>Y<text| is >n<text|-times differentiable
        at <math|x<text| then <math|f:U\<rightarrow\>Y> is >n<text|-times
        differentiable at <math|x>>>><infix-and>D<rsup|<around*|[|n|]>>f<around*|(|x|)>=D<rsup|<around*|[|n|]>>f<rsub|\|V><around*|(|X|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f<rsub|\|V>> is <math|1>-times
        differentiable at <math|x\<in\>V\<subseteq\>U> then by definition
        <math|f<rsub|\|V>> is Frèchet differentiable at <math|x> and
        <math|D<rsup|<around*|[|1|]>>f<rsub|\|V><around*|(|x|)>=D
        f<rsub|\|V><around*|(|x|)>>. Using \ [theorem: <reference|diff
        differentiability is a local property>] it follows that <math|f> is
        Frèchet differentiable at <math|x> and <math|D f<around*|(|x|)>=D
        f<rsub|\|V><around*|(|x|)>>. Hence <math|f> is <math|1>-times
        differentiable at <math|x> and <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D<rsup|<around*|[|1|]>>f<rsub|\|V><around*|(|x|)>>.
        This proves that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|V> is a open
        set with <math|x\<in\>V\<subseteq\>U> such that
        <math|f<rsub|\|V>:V\<rightarrow\>Y> is <math|<around*|[|n+1|]>>-times
        differentiable at <math|x> then there exist a open set <math|W> with
        <math|x\<in\>W\<subseteq\>V> such that
        <math|\<forall\>y\<in\>W\<subseteq\>V> <math|f<rsub|\|V>> is
        <math|n>-times differentiable at <math|x> and that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f<rsub|\|V>:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f<rsub|\|V>|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<rsub|\|V><around*|(|x|)><text|>
        </equation*>

        is Frèchet differentiable at <math|x> and\ 

        <\equation>
          <label|eq 16.57.191>D<rsup|<around*|[|n+1|]>>f<rsub|\|V><around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>f<rsub|\|V>|)><around*|(|x|)>
        </equation>

        \ As <math|n\<in\>S> we have <math|\<forall\>y\<in\>W> that <math|f>
        is <math|n>-times differentiable at <math|y> and that

        <\equation>
          <label|eq 16.58.191>D<rsup|<around*|[|n|]>>f<around*|(|y|)>=D<rsup|<around*|[|n|]>>f<rsub|\|V><around*|(|y|)>
        </equation>

        Hence for the function defined by\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|<space|1em>where
          ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>
        </equation*>

        we have by [eq: <reference|eq 16.58.191>] that
        <math|D<rsup|<around*|[|n|]>>f=D<rsup|<around*|[|n|]>>f<rsub|\|V>>.
        Hence <math|D<rsup|n>f> is Frèchet differentiable at <math|x> and
        <math|D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>\<equallim\><rsub|def>D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>f<rsub|\|V>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.57.191>]>>D<rsup|<around*|[|n+1|]>>f<rsub|\|V><around*|(|x|)>>.
        This proves that

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\definition>
    <label|diff higher order differentiation on a open set>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,<math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X> then a function
    <math|f:U\<rightarrow\>X> is <with|font-series|bold|<math|n>-times
    differentiable on <math|U>> if <math|\<forall\>x\<in\>U> we have that
    <math|f> is <math|n>-times differentiable at <math|x>.
  </definition>

  <\theorem>
    <label|diff higher order differentiation on a open set (1)>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X> then we have the
    following equivalences:

    <\enumerate>
      <item><math|f> is <math|n<text|-times Frèchet differentiable on
      <math|U>>>

      <item>For <math|n> we have\ 

      <\description>
        <item*|n=1>Then <math|\<forall\>x\<in\>U> is Frèchet differentiable
        at <math|x> with <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
        f<around*|(|x|)>>

        <item*|<math|1\<less\>n>>Then <math|\<forall\>x\<in\>U> <math|f> is
        <math|<around*|(|n-1|)>>-times Frèchet differentiable at <math|x> and
        the function\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by ><around*|(|D<rsup|<around*|[|n-1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n-1|]>>f<around*|(|x|)>
        </equation*>

        and <math|\<forall\>x\<in\>U> <math|D<rsup|<around*|[|n-1|]>>f> is
        Frèchet differentiable at <math|x> and
        <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>=D
        <around*|(|D<rsup|<around*|[|n-1|]>>f|)><around*|(|x|)>>
      </description>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>For <math|n\<in\>\<bbb-N\>> we must
      consider two cases:\ 

      <\description>
        <item*|<math|n=1>>Then as <math|\<forall\>x\<in\>U> is <math|f>
        <math|1>-times differentiable at <math|x> it follows from
        [definition: <reference|diff higher order differentiation>] that
        <math|f> is Frèchet differentiable at <math|x> and
        <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D f<around*|(|x|)>>.

        <item*|<math|1\<less\>n>>Let <math|x\<in\>U> then there exist by
        [definition: <reference|diff higher order differentiation>] a open
        set <math|V<rsub|x>> with <math|x\<in\>V<rsub|x>\<subseteq\>U> such
        that <math|\<forall\>y\<in\>V<rsub|x>> <math|f> is
        <math|<around*|(|n-1|)>>-times differentiable at <math|y> and the
        function\ 

        <\equation*>
          D f<rsub|V<rsub|x>><rsup|<around*|[|n-1|]>>:V<rsub|x>\<rightarrow\>L<rsub|n-1><around*|(|X;Y|)><text|
          defined by ><around*|(|D f<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>|)><around*|(|x|)>=D<rsup|<around*|[|n-1|]>>f<around*|(|x|)>
        </equation*>

        is Frèchet differentiable at <math|x> with
        <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>=D <around*|(|D
        f<rsub|V<rsub|x>><rsup|<around*|[|n-1|]>>|)><around*|(|x|)>>. As
        <math|x\<in\>V<rsub|x>> it follows that <math|f> is
        <math|<around*|(|n-1|)>>-times differentiable at <math|x> and as
        <math|x\<in\>U> was choosen arbitrary we can define\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>>f:U\<rightarrow\>L<rsub|n-1><around*|(|X;Y|)><text|
          by ><around*|(|D<rsup|<around*|[|n-1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n-1|]>>f<around*|(|x|)>
        </equation*>

        Let <math|x\<in\>U> then <math|<around*|(|D<rsup|n-1>f|)><rsub|\|V<rsub|x>>=<around*|(|D
        f<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>|)>> so that
        <math|<around*|(|D<rsup|n-1>f|)><rsub|\|V<rsub|x>>> is Frèchet
        differentiable at <math|x>, hence by [theorem: <reference|diff
        differentiability is a local property>]
        <math|D<rsup|<around*|[|n-1|]>>f> is Frèchet differentiable at
        <math|x> with <math|D<around*|(|D<rsup|<around*|[|n-1|]>>f|)><around*|(|x|)>=D<around*|(|<around*|(|D<rsup|n-1>f|)><rsub|\|V<rsub|x>>|)><around*|(|x|)>=D<around*|(|D
        f<rsup|<around*|[|n-1|]>><rsub|V<rsub|x>>|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>>.
      </description>

      <item*|<math|2\<Rightarrow\>1>>For <math|n\<in\>\<bbb-N\>> we must
      consider two cases:

      <\description>
        <item*|<math|n=1>>As <math|\<forall\>x\<in\>U> <math|f> is Frèchet
        differentiable at <math|x> it follows that by [definition:
        <reference|diff higher order differentiation>] that <math|f> is
        <math|1>-times differentiable at <math|x>, hence <math|f> is
        <math|1>-times differentiable on <math|U>.

        <item*|<math|1\<less\>n>>Let <math|x\<in\>U> then by taking
        <math|V=U> so that <math|x\<in\>V\<subseteq\>U> we have by the
        hypothesis combined with [definition: <reference|diff higher order
        differentiation>] that <math|f> is <math|n>-times differentiable at
        <math|x>. Hence as <math|x\<in\>U> was choosen arbitrary <math|f> is
        <math|n>-times differentiable on <math|U>.
      </description>
    </description>
  </proof>

  <\definition>
    <label|diff inifint=ite differentiable><index|<math|\<infty\>>-times
    differentibility>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X> then\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| is >\<infty\><text|-times differentiable at
      <math|x\<in\>U> if >\<forall\>n\<in\>\<bbb-N\><text| f is
      >n<text|-times differentiable at >x
    </equation*>

    and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| is >\<infty\><text|-times differentiable on
      >U<text| if >\<forall\>n\<in\>\<bbb-N\><text| f> is n<text|-times
      differentiable on >U
    </equation*>
  </definition>

  The problem with <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>> is that it
  is a element of <math|L<rsub|n><around*|(|X;Y|)>> so that for example

  <\equation*>
    D<rsup|<around*|[|3|]>>f<around*|(|x|)>\<in\>L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>
  </equation*>

  and we have to deal with expressions like
  <math|<around*|(|<around*|(|<around*|(|D<rsup|<around*|[|3|]>>f<around*|(|x|)>|)><around*|(|h<rsub|1>|)>|)><around*|(|h<rsub|2>|)>|)><around*|(|h<rsub|3>|)>>.
  Lucky we can use [theorem: <reference|diff linear to multilinear>] to turn
  <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>> in a a multilinear mapping.\ 

  <\definition>
    <label|diff higher order differentiation
    (1)><index|<math|D<rsup|n>f<around*|(|x|)>>>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function that is <math|n>-times
    differentiable at <math|x> then

    <\equation*>
      D<rsup|n>f<around*|(|x|)>=\<cal-I\><rsub|n,X,Y><around*|(|D<rsup|<around*|[|n|]>>f<around*|(|x|)>|)>\<in\>L<rsup|n><around*|(|X;Y|)>
    </equation*>
  </definition>

  <\note>
    Using [theorem: <reference|diff linear to multilinear>] we have that
    <math|D<rsup|1>f<around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
    f<around*|(|x|)>> and for <math|n\<in\>\<bbb-N\>>
    <math|D<rsup|n>f<around*|(|x|)><around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|[|h<rsub|1>:\<ldots\>:h<rsub|n>|]>>.
  </note>

  We introduce now differential classes.

  <\definition>
    <label|diff class C^n><index|<math|C<rsup|n>>><index|<math|C<rsup|0>>><index|<math|C<rsup|\<infty\>>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0><big|cup><around*|{|\<infty\>|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|U> a open set in <math|X> and
    <math|f:U\<rightarrow\>Y> a funcion then <math|f> is of class
    <math|C<rsup|n>> if for\ 

    <\description>
      <item*|<math|n=0>><math|f:U\<rightarrow\>Y> is a continuous function.

      <item*|<math|n\<in\>\<bbb-N\>>><math|\<forall\>x\<in\>U> <math|f> is
      <math|n>-times differentiable at <math|x> and
      <math|D<rsup|<around*|[|n|]>>f:U\<rightarrow\>Y> defined by
      <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>>
      is a continuous function.

      <item*|<math|n=\<infty\>>>If <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      we have that <math|f> is of class <math|C<rsup|n>>
    </description>
  </definition>

  Every <math|\<infty\>>-times differentiable function is of class
  <math|C<rsup|\<infty\>>> as is proved in the folowing theorem.

  <\theorem>
    <label|diff C-infinity condition>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X> and
    <math|f:U\<rightarrow\>Y> a funcion then\ 

    <\equation*>
      \<forall\>x\<in\>U<text| >f<text| is >\<infty\><text|-times
      differentiable at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<text| is of class >C<rsup|\<infty\>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|\<forall\>x\<in\>U> <math|f> is
      <math|\<infty\>>-times differentiable it is <math|1>-times
      differentiable at <math|x>, hence by definition it is Frèchet
      differentiable at <math|x>, applying [theorem: <reference|diff
      differentiable function is continuous>] proves that <math|f> is
      continuous at <math|x>. Hence <math|f> is a continuous function so that\ 

      <\equation*>
        f<text| is of class >C<rsup|0>
      </equation*>

      Let <math|n\<in\>\<bbb-N\>> then as <math|\<forall\>x\<in\>U> <math|f>
      is <math|\<infty\>>-times differentiable at <math|x> it is
      <math|n>-times and <math|<around*|(|n+1|)>>-times differentiable at
      <math|x>, from the <math|<around*|(|n+1|)>>-times differentiability it
      follows that <math|D<rsup|<around*|[|n|]>>f:U\<rightarrow\>Y> is
      Frèchet differentiable at <math|x>, hence by [theorem: <reference|diff
      differentiable function is continuous>] it follows that
      <math|D<rsup|<around*|[|n|]>>f> is continuous at <math|x>. So
      <math|D<rsup|<around*|[|n|]>>f> is a continuous function which proves
      that\ 

      <\equation*>
        f<text| is of class >C<rsup|n>
      </equation*>

      <item*|<math|\<Leftarrow\>>>This follows from the definition from
      <math|C<rsup|\<infty\>>>.
    </description>
  </proof>

  Next we eamine the relation between function of class <math|C<rsup|1>> and
  there derivates, first we need a little lemma.

  <\lemma>
    <label|lemma 16.83.197>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real (complext) numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U> a open set in <math|\<bbb-K\>> and

    <\equation*>
      f:U\<rightarrow\>L<around*|(|\<bbb-K\>,X|)><text| a function>
    </equation*>

    then if we define

    <\equation*>
      f<around*|(|\<ast\>|)><around*|(|1|)>:U\<rightarrow\>X<text| by
      ><around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>=f<around*|(|x|)><around*|(|1|)>
    </equation*>

    we have\ 

    <\equation*>
      f<text| is continuous >\<Leftrightarrow\><text|
      >f<around*|(|\<ast\>|)><around*|(|1|)><text| is continuous>
    </equation*>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>U> and
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is continuous
      it is continuous at <math|x>, hence there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that if <math|y\<in\>U>
      with <math|<around*|\||y-x|\|>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,X|)>>\<less\>\<varepsilon\>>.
      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>-<around*|(|f<around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|y|)><around*|(|1|)>-f<around*|(|x|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,X|)>>\<cdot\><around*|\||1|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,X|)>>>>|<row|<cell|>|<cell|\<less\>\<varepsilon\>>|<cell|>>>>
      </eqnarray*>

      proving continuity of <math|f<around*|(|\<ast\>|)><around*|(|1|)>> at
      <math|x>. As <math|x> was choosen arbitrary it follows that
      <math|f<around*|(|\<ast\>|)><around*|(|1|)>> is continuous.\ 

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>U> and
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
      <math|f<around*|(|\<star\>|)><around*|(|1|)>> is continuous we have
      that <math|f<around*|(|\<ast\>|)><around*|(|1|)>> is continuous at
      <math|x> there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such
      that for <math|y\<in\>U> with <math|<around*|\||y-x|\|>\<less\>\<delta\>>
      we have

      <\equation*>
        <around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>-<around*|(|f<around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      then we have for <math|r\<in\>\<bbb-K\>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|r|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|r\<cdot\>1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|r\<cdot\><around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||r|\|>\<cdot\><around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||r|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|y|)><around*|(|1|)>-f<around*|(|x|)><around*|(|1|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||r|\|>\<cdot\><around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>-<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>\<cdot\><around*|\||r|\|>>>>>
      </eqnarray*>

      so that by [definition: <reference|continuity norm on L(X,Y)>] we have
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|\<nobracket\>|<around*|(|\<bbb-K\>,X|)>|\|>>\<less\>\<varepsilon\>>,
      hence <math|f> is continuous. As <math|x> was choosen arbitrary it
      follows that <math|f<around*|(|\<ast\>|)><around*|(|1|)>> is
      continuous.\ 
    </description>
  </proof>

  <\theorem>
    <label|diff C^1 and derivates>Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real (complext) numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U> a open set in <math|\<bbb-K\>> and
    <math|f:U\<rightarrow\>X> a function then the following are equivalent:

    <\enumerate>
      <item><math|f> is of class <math|C<rsup|1>>

      <item><math|\<forall\>t\<in\>U> <math|f<rprime|'><around*|(|t|)>> exist
      [in other words <math|f> is calculus differentiable at <math|x>] and
      the function\ 

      <\equation*>
        f<rprime|'>:U\<rightarrow\>X<text| defined by
        ><around*|(|f<rprime|'>|)><around*|(|x|)>=f<rprime|'><around*|(|x|)>
      </equation*>

      is continuous.
    </enumerate>

    Further if (1) or (2) is true then <math|f<rprime|'>=<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|\<star\>|)><around*|(|1|)>>
    where\ 

    <\equation*>
      D<rsup|<around*|[|1|]>> f:U\<rightarrow\>L<around*|(|\<bbb-K\>,X|)><text|
      is defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
      f<around*|(|x|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As <math|f> is of class <math|C<rsup|1>>
      we have <math|\<forall\>x\<in\>U> that <math|f> is <math|1>-times
      differentiable at <math|x> and the function\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|\<bbb-K\>,X|)><text|
        defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
        f<around*|(|x|)>
      </equation*>

      is continuous. Let <math|x\<in\>U> then as <math|f> is <math|1>-times
      differentiable at <math|x> <math|f> is Frèchet differentiable at
      <math|x>. Using [theorem: <reference|diff derivate and frechet
      differential>] it follows that <math|f> is calculus differentiable at
      <math|x> with <math|D f<around*|(|x|)><around*|(|1|)>=f<rprime|'><around*|(|x|)>>.
      Hence if we define\ 

      <\equation*>
        f<rprime|'>:U\<rightarrow\>X<text| by
        ><around*|(|f<rprime|'>|)><around*|(|x|)>=f<rprime|'><around*|(|x|)>
      </equation*>

      then we have for <math|x\<in\>U> that

      <\equation*>
        <around*|(|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)><around*|(|1|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>=D
        f<around*|(|x|)><around*|(|1|)>=f<rprime|'><around*|(|x|)>
      </equation*>

      so that <math|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>=f<rprime|'>>.
      Hence as <math|D<rsup|<around*|[|1|]>>f> is continuous it follows from
      [lemma: <reference|lemma 16.83.197>] that <math|f<rprime|'>> is
      continuous.

      <item*|<math|2\<Rightarrow\>1>>Let <math|x\<in\>U> then as <math|f> is
      calculus differentiable at <math|x> it follows from [theorem:
      <reference|diff derivate and frechet differential>] that <math|f> is
      Frèchet differentiable at <math|x> with <math|D
      f<around*|(|x|)><around*|(|1|)>=f<rprime|'><around*|(|x|)>>. Hence
      <math|f> is <math|1>-times differentiable at <math|x> with
      <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>=f<rprime|'><around*|(|x|)>>.
      So we can define the function\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>f:U\<rightarrow\>X<text| by
        ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>
      </equation*>

      As for <math|x\<in\>U> <math|<around*|(|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)><around*|(|1|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1|)>=f<rprime|'><around*|(|x|)>>
      it follows that <math|f<rprime|'>=<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|\<ast\>|)><around*|(|1|)>>
      so that by [lemma: <reference|lemma 16.83.197>] and the fact that
      <math|f> is continuous <math|D<rsup|<around*|[|1|]>>f> is continuous.
      Hence we conclude that <math|f> is of class <math|C<rsup|1>>.
    </description>

    \;
  </proof>

  TODO

  Next we introduce higher order derivatives.

  <\definition>
    <label|diff higher order derivate>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real (complex) numbers based on the norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U> a open set in <math|X>, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>X> a function then <math|f> has a <math|n>-th
    derivate <math|f<rsup|<around*|(|n|)>>\<in\>Y> at <math|x> if for\ 

    <\description>
      <item*|<math|n=1>><math|f> is calculus differentiable at <math|x> and
      <math|f<rsup|<around*|(|n|)>><around*|(|x|)>=f<rprime|'><around*|(|x|)>>

      <item*|<math|1\<less\>n>>there exist a open set <math|V> with
      <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V> we
      have that <math|f> has a <math|<around*|(|n-1|)>>-th derivate
      <math|f<rsup|<around*|(|n-1|)>><around*|(|y|)>> and the function\ 

      <\equation*>
        f<rsup|<around*|(|n-1|)>>:V\<rightarrow\>X<text| defined by
        ><around*|(|f<rsup|<around*|(|n-1|)>>|)><around*|(|y|)>=f<rsup|<around*|(|n-1|)>><around*|(|y|)>
      </equation*>

      is calculus differentiable at <math|x>. Then <math|n>-th derivate
      <math|f<rsup|<around*|(|n|)>><around*|(|x|)>> at <math|x> is then
      defined to be\ 

      <\equation*>
        f<rsup|<around*|(|n|)>><around*|(|x|)>=<around*|(|f<rsup|<around*|(|n-1|)>>|)><rprime|'><around*|(|x|)>
      </equation*>
    </description>
  </definition>

  Let's examine now the relation between <math|n>-times differentiability and
  the existence of the <math|n>-th derivate. First we need a little lemma.

  <\lemma>
    <label|lemma 16.72.189>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
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
      have that\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|x\<cdot\>1|)>|\<\|\|\>>=<around*|\<\|\|\>|x\<cdot\>L<around*|(|1|)>|\<\|\|\>>=<around*|\||x|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>|\<\|\|\>>
      </equation*>

      So we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|1><around*|(|\<bbb-K\>;X|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,X|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|continuity norm on L(X,Y)>]>>>|<cell|inf<around*|(|<around*|{|M\<in\>\<bbb-R\><rsup|+>\|\<forall\>x\<in\>\<bbb-K\><text|
        with ><around*|\||x|\|>=1<text| we have
        ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>\<leqslant\>M|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>|\<\|\|\>>>>>>
      </eqnarray*>

      proving that <math|1\<in\>S>.

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

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>=<around*|\<\|\|\>|L<around*|(|x\<cdot\>1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>=<around*|\<\|\|\>|x\<cdot\>L<around*|(|1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>=<around*|\||x|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>=<around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>
      </equation*>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|\<bbb-K\>;X|)>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|continuity norm on L(X,Y)>]>>>|<cell|>>|<row|<cell|inf<around*|(|<around*|{|M\<in\>\<bbb-R\><rsup|+>\|\<forall\>x\<in\>\<bbb-K\><text|
        with ><around*|\||x|\|>=1<text| we have
        ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>\<leqslant\>M|}>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      Combining this with [eq: <reference|eq 16.52.190>] proves that
      <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsub|n+1><around*|(|\<bbb-K\>;X|)>>\<leqslant\><around*|\<\|\|\>|L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>>,
      hence we have\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|diff higher order derivate and differential>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers based on the norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U> a open set in <math|\<bbb-K\>>, <math|x\<in\>U>
    and <math|f:U\<rightarrow\>X> a function then\ 

    <\equation*>
      f<text| is >n<text|-times differentiable at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<text| has a >n<text|-th derivate at >x
    </equation*>

    Further <math|f> is <math|n>-times differentiable at <math|x> or <math|f>
    has a<math|>-th derivate at <math|x> then

    <\equation*>
      f<rsup|<around*|(|n|)>><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>\<equallim\><rsub|<text|[definition:
      <reference|diff higher order differentiation
      (1)>]>>D<rsup|n>f<around*|(|x|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by induction so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f<text| is >n<text|-times
        differentiable at <math|x<text| then >f<text| has a >n<text|-th
        derivate at >x<text| and >f<rsup|<around*|(|n|)>><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<around*|\||1:\<ldots\>1<rsub|n>|\|>|)>>>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|n=1>>If <math|f> is <math|1>-times differentiable at
        <math|x> then by definition is Frèchet differentiable at <math|x> and
        <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D f<around*|(|x|)>>.
        Using \ [theorem: <reference|diff derivate and frechet
        differential>], <math|f> is calculus differentiable at <math|x> and
        <math|f<rprime|'><around*|(|x|)>=D f<around*|(|x|)><around*|(|1|)>=D
        f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>*<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>.
        Hence by definition <math|f> has a <math|1>-th derivate at <math|x>
        with <math|f<rsup|<around*|(|1|)>><around*|(|x|)>=f<rprime|'><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>*<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>
        proving that <math|1\<in\>S>.

        <item*|<math|1\<less\>n>>If <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> then there
        exist a open set <math|V> with <math|x\<in\>V\<subseteq\>U> such that
        <math|\<forall\>y\<in\>V> <math|f> is <math|n>-times differentiable
        at <math|x> and the function\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f:V\<rightarrow\>L<rsub|n><around*|(|\<bbb-K\>;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>
        </equation*>

        is Frèchet differentiable at <math|x>. Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by Frèchet
        differentiability at <math|x> there exist a
        <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
        <math|\<forall\>h\<in\>V<rsub|x>> with
        <math|<around*|\||h|\|>\<less\>\<delta\>> we have\ 

        <\equation>
          <label|eq 16.52.189><around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)>-D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Further we have\ 

        <\equation>
          <label|eq 16.53.189>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>,X|)>|)>=L<rsub|n+1><around*|(|\<bbb-K\>;X|)>
        </equation>

        As <math|n\<in\>S> we have as <math|\<forall\>y\<in\>V> is <math|f>
        <math|n>-times differentiable that <math|\<forall\>y\<in\>V>\ 

        <\equation>
          <label|eq 16.54.189>f<text| has a >n<text|-th derivate at >y<text|
          with >f<rsup|<around*|(|n|)>><around*|(|y|)>=D<rsup|n>f<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>
        </equation>

        Then for <math|h\<in\>V<rsub|x>> with
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|1|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.54.189>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|n>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\||1|\|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.53.189>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.52.189>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
        </eqnarray*>

        hence we have by deviding by <math|<around*|\||h|\|>> that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>|h>-D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|h>|\<\|\|\>>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
        </eqnarray*>
      </description>

      proving that <math|f<rsup|<around*|(|n|)>>:V\<rightarrow\>Y> is
      Calculus differentiable at <math|x> with\ 

      <\equation*>
        <around*|(|f<rsup|<around*|(|n|)>>|)><rprime|'><around*|(|x|)>=D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>
      </equation*>

      So by definition <math|f> has a <math|<around*|(|n+1|)>>-th derivate
      <math|f<rsup|<around*|(|n+1|)>><around*|(|x|)>=D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>
      proving that

      <\equation*>
        n+1\<in\>S
      </equation*>

      <item*|<math|\<Leftarrow\>>>We use induction to prove this, so define

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f<text| has a >n<text|-th
        derivate at >x<text| then >f<text| is >n<text|-times >differentiable
        at x<text| with >f<rsup|<around*|(|n|)>><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f> has a <math|1>-th derivate at
        <math|x> then <math|f> is calculus differentiable at <math|x> with

        <\equation*>
          f<rsup|<around*|(|1|)>><around*|(|x|)>=f<rprime|'><around*|(|x|)>=D
          f<around*|(|x|)><around*|(|1|)>.
        </equation*>

        Hence <math|f> is <math|1>-times differentiable at <math|x> and
        <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>=D
        f<around*|(|x|)><around*|(|1|)>=f<rsup|<around*|(|1|)>><around*|(|x|)>>
        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> has a
        <math|<around*|(|n+1|)>>-th derivate
        <math|f<rsup|<around*|(|n+1|)>><around*|(|x|)>> at <math|x>. As
        <math|1\<less\>n+1> there exist a open set <math|V> with
        <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
        <math|f> has a <math|n>-th derivate
        <math|f<rsup|<around*|(|n|)>><around*|(|y|)>> at <math|y> and that\ 

        <\equation*>
          f<rsup|<around*|(|n|)>>:V\<rightarrow\>Y<text| defined by
          ><around*|(|f<rsup|<around*|(|n|)>>|)><around*|(|y|)>=f<rsup|<around*|(|n|)>><around*|(|y|)>
        </equation*>

        is calculus differentiable at <math|x> and\ 

        <\equation>
          <label|eq 16.55.189>f<rsup|<around*|(|n+1|)>><around*|(|x|)>=<around*|(|f<rsup|<around*|(|n|)>>|)><rprime|'><around*|(|x|)>
        </equation>

        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the above
        there exist a <math|\<delta\>\<ni\>\<bbb-R\><rsup|+>> such that
        <math|\<forall\>h\<in\>V<rsub|x>> with
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have\ 

        <\equation>
          <label|eq 16.56.189><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rsup|<around*|(|n+1|)>><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation>

        As <math|n\<in\>S> we have that <math|f> is <math|n>-times
        differentiable at <math|y\<in\>V> and
        <math|f<rsup|<around*|(|n|)>><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>>,
        hence <math|f<rsup|<around*|(|n|)>><around*|(|x+h|)>=D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>
        and <math|f<rsup|<around*|(|n|)>><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>
        so that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><around*|(|x|)>|h>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rsup|<around*|(|n+1|)>><around*|(|x|)>|\<\|\|\>>>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        After mutiplying by <math|<around*|\||h|\|>> and taking in account
        that

        <\equation*>
          <around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|x+0|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-0\<cdot\>f<rsup|<around*|(|n+1|)>><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\||0|\|>
        </equation*>

        it follows that <math|\<forall\>h\<in\>V<rsub|x>> with
        <math|<around*|\||h|\|>\<less\>\<delta\>> we have

        <\equation>
          <label|eq 16.58.189><around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Define\ 

        <\equation*>
          L<rsub|x><rprime|'>:\<bbb-K\><rsup|n>\<rightarrow\>Y<text| by
          >L<rsub|x><around*|(|k|)>=f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\><big|prod><rsub|i=1><rsup|n>k<rsub|i><rsup|>
        </equation*>

        then\ 

        <\equation>
          <label|eq 16.59.189>L<rprime|'><rsub|x><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>=f<rsup|<around*|(|n+1|)>><around*|(|x|)>
        </equation>

        and by [example: <reference|continuity K^n>] we have that
        <math|L<rprime|'><rsub|x>\<in\>L<rsup|n><around*|(|\<bbb-K\>;X|)>>,
        define

        <\equation*>
          L<rsub|x>=\<cal-I\><rsub|n,\<bbb-K\>,X><rsup|-1><around*|(|L<rprime|'><rsub|x>|)>\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)><text|
          so that >h\<cdot\>L<rsub|x>\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)>
        </equation*>

        then we have <math|\<cal-I\><rsub|n,\<bbb-K\>,X><around*|(|L<rsub|x>|)>=L<rprime|'><rsub|x>>
        so that

        <\equation>
          <label|eq 16.60.189>L<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>=L<rprime|'><rsub|x><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.58.189>]>>f<rsup|<around*|[|n+1|]>><around*|(|x|)>
        </equation>

        Define

        <\equation>
          <label|eq 16.61.189>K<rsub|x>:\<bbb-K\>\<rightarrow\>L<rsup|n><around*|(|\<bbb-K\>;Y|)><text|
          by >K<rsub|x><around*|(|h|)>=h\<cdot\>L<rsub|x>
        </equation>

        then by [example: <reference|continuity norm L(x)=a.x>]\ 

        <\equation*>
          K<rsub|x>\<in\>L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>=L<rsub|n+1><around*|(|\<bbb-K\>;X|)>
        </equation*>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)>-K<rsub|x><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|\<leqslant\><rsub|<text|[lemma:
          <reference|lemma 16.72.189>]]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)>-K<rsub|x><around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>,X|)>>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-K<rsub|x><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>|\<nobracket\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.61.189>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>L<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>|\<nobracket\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.59.189>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsup|<around*|[|n+1|]>><around*|(|x|)>|\<\|\|\>>|\<nobracket\>>>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.58.189>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|D<rsup|<around*|[|n|]>>f> if Frèchet
        differentiable at <math|x> and that
        <math|D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=K<rsub|x>>.
        Hence\ 

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable at
          >x<text| with >D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>=K<rsub|x>
        </equation*>

        Further we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|<around*|[|n+1|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>|<cell|=>|<cell|K<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|K<rsub|x><around*|(|1|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.61.189>]>>>|<cell|1\<cdot\>L<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.60.189>]>>>|<cell|f<rsup|<around*|(|n+1|)>><around*|(|x|)>>>>>
        </eqnarray*>

        so that we have\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\definition>
    <label|diff higher order derivate on a open set>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers based on the norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U> a open set in <math|X> then
    <math|f:U\<rightarrow\>X> has a <math|n>-th derivate on <math|U> if
    <math|\<forall\>x\<in\>U> <math|f> has a <math|n>-th derivate at
    <math|x>.
  </definition>

  <\theorem>
    <label|diff higher order derivate on a open set (1)>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers based on the norm
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U> a open set in <math|X> and
    <math|f:U\<rightarrow\>X> a function then the following are equivalent:\ 

    <\enumerate>
      <item><math|f> has a <math|n>-th derivate on <math|U>.

      <item>For <math|n> we have:\ 

      <\description>
        <item*|<math|n=1>><math|\<forall\>x\<in\>U> <math|f> is calculus
        differentiable at <math|x> (or in other words has a derivate at
        <math|x>) and <math|f<rsup|<around*|(|1|)>>*<around*|(|x|)>=f<rprime|'><around*|(|x|)>>.

        <item*|<math|1\<less\>n>><math|\<forall\>x\<in\>U> <math|f> has a
        <math|<around*|(|n-1|)>>-th derivate at <math|x> and the function\ 

        <\equation*>
          f<rsup|<around*|(|n-1|)>>:U\<rightarrow\>Y<text| defined by
          ><around*|(|f<rsup|<around*|(|n-1|)>>|)><around*|(|x|)>=f<rsup|<around*|(|n-1|)>><around*|(|x|)>
        </equation*>

        is calculus differentiable at <math|x> with
        <math|f<rsup|<around*|(|n|)>><around*|(|x|)>=<around*|(|f<rsup|<around*|(|n-1|)>>|)><rprime|'><around*|(|x|)>>
        for every <math|x\<in\>U>.
      </description>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>For <math|n\<in\>\<bbb-N\>> we must
      consider two cases:\ 

      <\description>
        <item*|<math|n=1>>Then as <math|\<forall\>x\<in\>U> is <math|f> has a
        <math|1>-derivate at <math|x> it follows from [definition:
        <reference|diff higher order derivate>] that <math|f> is calculus
        differentiable at <math|x> with <math|f<rsup|<around*|(|1|)>><around*|(|x|)>=f<rprime|'><around*|(|x|)>>

        <item*|<math|1\<less\>n>>Let <math|x\<in\>U> then there exist by
        [definition: <reference|diff higher order derivate>] a open set
        <math|V<rsub|x>> with <math|x\<in\>V<rsub|x>\<subseteq\>U> such that
        <math|\<forall\>y\<in\>V<rsub|x>> <math|f> has a
        <math|<around*|(|n-1|)>>-th derivate at <math|y> and the function\ 

        <\equation*>
          f<rsub|V<rsub|x>><rsup|<around*|(|n-1|)>>:V<rsub|x>\<rightarrow\>Y<text|
          defined by ><around*|(|f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>|)><around*|(|x|)>=f<rsup|<around*|(|n-1|)>><around*|(|x|)>
        </equation*>

        is calculus differentiable at <math|x> with
        <math|f<rsup|<around*|(|n|)>><around*|(|x|)>=<around*|(|f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>|)><rprime|'><around*|(|x|)>>.
        As <math|x\<in\>V<rsub|x>> it follows that <math|f> has a
        <math|<around*|(|n-1|)>>-th derivate at <math|x> and as
        <math|x\<in\>U> was choosen arbitrary we can define\ 

        <\equation*>
          f<rsup|<around*|(|n-1|)>>:U\<rightarrow\>Y<text| by
          ><around*|(|f<rsup|<around*|(|n-1|)>>|)><around*|(|x|)>=f<rsup|<around*|(|n-1|)>><around*|(|x|)>
        </equation*>

        Let <math|x\<in\>U> then <math|<around*|(|f<rsup|<around*|(|n-1|)>>|)><rsub|\|V<rsub|x>>=f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>>
        so that <math|<around*|(|f<rsup|<around*|(|n-1|)>>|)><rsub|\|V<rsub|x>>>
        is calculus differentiable at <math|x>, hence by [theorem:
        <reference|diff derivative is local>]
        <math|f<rsup|<around*|(|n-1|)>>> is calculus differentiable at
        <math|x> and <math|<around*|(|f<rsup|<around*|(|n-1|)>>|)><rprime|'><around*|(|x|)>=<around*|(|<around*|(|f<rsup|<around*|(|n-1|)>>|)><rsub|\|V<rsub|x>>|)><rprime|'><around*|(|x|)>=<around*|(|f<rsup|<around*|(|n-1|)>><rsub|V<rsub|x>>|)><rprime|'><around*|(|x|)>=f<rsup|<around*|(|n|)>><around*|(|x|)>>.
      </description>

      <item*|<math|2\<Rightarrow\>1>>For <math|n\<in\>\<bbb-N\>> we must
      consider two cases:

      <\description>
        <item*|<math|n=1>>As <math|\<forall\>x\<in\>U> <math|f> is calculus
        differentiable at <math|x> it follows that by [definition:
        <reference|diff higher order derivate>] that <math|f> has a
        <math|1>-th derivate at <math|x>, hence <math|f> <math|1>-th derivate
        on <math|U>.

        <item*|<math|1\<less\>n>>Let <math|x\<in\>U> then by taking
        <math|V=U> so that <math|x\<in\>V\<subseteq\>U> we have by the
        hypothesis combined with [definition: <reference|diff higher order
        derivate>] that <math|f> has a <math|n>-th derivate at <math|x>.
        Hence as <math|x\<in\>U> was choosen arbitrary <math|f> hs a
        <math|1>-th derivate on <math|U>.
      </description>
    </description>
  </proof>

  <\theorem>
    <label|diff n-times and m-times differentiability>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U> and\ 

    <\equation*>
      f:U\<rightarrow\>Y
    </equation*>

    a function that is <math|n>-times Frèchet differentiable at <math|x> then
    <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> is
    <math|m>-times differentiable at <math|x>.
  </theorem>

  <\proof>
    We proceed by induction so define

    <\equation*>
      S<rsub|n>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|<text|If
      >k\<less\>n<text| then >f<text| is ><around*|(|n-k|)><text|-times
      Frèchet differentiable at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>Then <math|n-k=n-0=n> which as <math|f>
      is <math|n>-times Frèchet differentiable at <math|x> p that
      <math|0\<in\>S<rsub|n>>.

      <item*|<math|n\<in\>S<rsub|n>\<Rightarrow\>n+1\<in\>S<rsub|n>>>If
      <math|k+1\<less\>n> we have <math|k\<less\>n> so as
      <math|k\<in\>S<rsub|n>> it follows that <math|f> is
      <math|<around*|(|n-k|)>>-times differentiable at <math|x>. As
      <math|k+1\<less\>n\<Rightarrow\>1\<less\>n-k> there exist a open
      <math|V> such that <math|x\<in\>V\<subseteq\>U> and
      <math|\<forall\>y\<in\>V> <math|f> is
      <math|<around*|(|<around*|(|n-k|)>-1|)>>-times differentiable at
      <math|y>, in partcular <math|f> is <math|<around*|(|<around*|(|n-k|)>-1|)>>-times
      differentiable at <math|x>. As <math|n-<around*|(|k+1|)>=<around*|(|n-k|)>-1>
      it follows that <math|k+1\<in\>S<rsub|n>>.
    </description>

    By mathematical induction it follows that
    <math|S<rsub|n>=\<bbb-N\><rsub|0>>, hence if
    <math|m\<in\><around*|{|1,\<ldots\>,n|}>> then
    <math|k=n-m\<in\>\<bbb-N\><rsub|0>=S<rsub|n>> and <math|k=n-m\<less\>n>
    so that <math|f> is <math|<around*|(|n-k|)>>-times differentiable at
    <math|x> or as <math|n-k=n-<around*|(|n-m|)>=m> <math|f> is
    <math|m>-times differentiable at <math|x>.
  </proof>

  We have a similar theorem for differentiable classes.

  <\theorem>
    <label|diff C^n and C^m>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, a open set <math|U\<subseteq\>X>,
    <math|n\<in\>\<bbb-N\><rsub|0>> and

    <\equation*>
      f:U\<rightarrow\>X<text| a function of class >C<rsup|n>
    </equation*>

    then <math|\<forall\>m\<in\><around*|{|0,\<ldots\>,n|}>> we have that
    <math|f> is of class <math|C<rsup|m>>.
  </theorem>

  <\proof>
    For <math|n> we have either:

    <\description>
      <item*|<math|n=0>>Then <math|<around*|{|0,\<ldots\>,n|}>=<around*|{|0|}>>,
      hence if <math|m\<in\><around*|{|0,\<ldots\>,n|}>> we have <math|m=n=0>
      which as <math|f> is of class <math|C<rsup|n>> proves that <math|f> is
      of class <math|C<rsup|m>>.

      <item*|<math|0\<less\>n>>Then for <math|m\<in\><around*|{|0,\<ldots\>,n|}>>
      we have either:

      <\description>
        <item*|<math|m=n>>Then as <math|f> is of class <math|C<rsup|n>> we
        have that <math|f> is of class <math|C<rsup|m>>.

        <item*|<math|m\<less\>n>>Then for <math|m> we have either:

        <\description>
          <item*|<math|m=0>>Then <math|0\<less\>n\<Rightarrow\>1\<leqslant\>n>
          so that as <math|f> is of class <math|C<rsup|n>> it follows that
          <math|\<forall\>x\<in\>U> <math|f> is <math|n>-times
          differentiable. Hence using [theorem: <reference|diff n-times and
          m-times differentiability>] we have that <math|\<forall\>x\<in\>U>
          <math|f> is <math|1>-times differentiable at <math|x> or by
          definition <math|f> is Frèchet differentiable at <math|x>. Applying
          then [theorem: <reference|diff differentiable function is
          continuous>] proves that <math|f> is continuous at <math|x>. Hence
          <math|f> ia continuous on <math|U> proving that <math|f> is of
          class <math|C<rsup|0>=C<rsup|m>>.

          <item*|<math|1\<leqslant\>m>>As <math|1\<leqslant\>m\<less\>n> we
          have that <math|m+1\<in\><around*|{|1,\<ldots\>,n|}>>. As <math|f>
          is of class <math|C<rsup|n>> we have by definition that
          <math|\<forall\>x\<in\>U> <math|f> is <math|n>-times differentiable
          at <math|x> so that by [theorem: <reference|diff n-times and
          m-times differentiability>] <math|\<forall\>x\<in\>U> <math|f> is
          <math|<around*|(|m+1|)>>-times differentiable at <math|x>, hence
          there exist a open <math|V> with <math|x\<in\>V\<subseteq\>U> so
          that <math|D <rsup|<around*|[|m|]>>f> is Frèchet differentiable at
          <math|x>. By [theorem: <reference|diff n-times and m-times
          differentiability>] <math|D<rsup|<around*|[|m|]>>f> is continuous
          at <math|x> [using the subspace topology on <math|V>], using
          [theorem: <reference|continuity and subspace topology (3)>] it
          follows that <math|D<rsup|<around*|[|m|]>>f> is continuous at
          <math|x> using the sub space topology on <math|U>. This proves that
          <math|D<rsup|<around*|[|m|]>>f> is continuous on <math|U> proving,
          as by [theorem: <reference|diff n-times and m-times
          differentiability>] <math|f> is <math|m>-times differentiable at
          <math|x> for every <math|x\<in\>U> that <math|f> is of class
          <math|C<rsup|m>>.
        </description>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|diff D^f=D^(n-1)D^1f>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, a open set <math|U\<subseteq\>X>, <math|x\<in\>U>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> then\ 

    <\equation*>
      f<text| is >n<text|-times Frèchet differentiable at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      <text|There exist a open set <math|V<text| with
      >x\<in\>V\<subseteq\>U<text| such that >\<forall\>y\<in\>V<text|
      >f<text| is >1<text|-times Frèchet differentiable at <math|y> and
      >D<rsup|<around*|[|1|]>>f:V\<rightarrow\>Y> defined by
      <math|<around*|(|D<rsup|1>f|)><around*|(|y|)>=D<rsup|1>f<around*|(|y|)>>
      \ is <math|<around*|(|n-1|)>>-times Frèchet differentiable at <math|x>.
      Further we have >D<rsup|<around*|[|n|]>>f<around*|(|x|)>=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>.
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by induction on <math|n>, so
      define

      <\equation*>
        S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|<text|If
        >f:U\<rightarrow\>Y<text| is >n<text|-times Frèchet differentiable at
        >x\<in\>U<text|, <math|U>open in <math|X> then there exist a open V
        with >x\<in\>V\<subseteq\>U<text| such that >\<forall\>y\<in\>V<text|
        \ >f<text| is >1<text|-times Frèchet differentiable at >y<text| and
        >D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
        defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><text|
        is ><around*|(|n-1|)><text|-times Frèchet differentiable at >x<text|.
        Further we have >D<rsup|<around*|[|n|]>>f<around*|(|x|)>=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|2\<in\>S>>If <math|f:U\<rightarrow\>Y> is <math|2>-times
        Frèchet differentiable at <math|x\<in\>U>, <math|U> open in <math|X>
        then there exist a open set <math|V\<subseteq\>X> with
        <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
        <math|f> is <math|1>-times Frèchet differentiable at <math|y> and

        <\equation*>
          D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by <math|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>>
          is Frèchet differentiable at >x
        </equation*>

        and

        <\equation*>
          D<rsup|<around*|[|2|]>>f<around*|(|x|)>=D
          <around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>
        </equation*>

        Hence we have by definition \ that
        <math|><math|D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>>
        is <math|1>-times Frèchet differentiable at <math|x> and that
        <math|D<rsup|<around*|[|2|]>>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>
        proving that <math|2\<in\>S>.

        \ <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> is
        <math|<around*|(|n+1|)>>-times Frèchet differentiable at <math|x> it
        follows that there exist a open <math|V> in <math|X> with
        <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
        <math|f> is <math|n>-times Frèchet differentiable and the function\ 

        <\equation>
          <label|eq 16.69.191>D<rsup|<around*|[|n|]>>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)><text|
          is Frèchet differentiable at >x
        </equation>

        with\ 

        <\equation>
          <label|eq 16.70.191>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>
        </equation>

        As <math|n\<in\>S> we have that <math|\<forall\>y\<in\>V> there exist
        a open set <math|W<rsub|y>> with <math|y\<in\>W<rsub|y>\<subseteq\>V>
        such that <math|\<forall\>z\<in\>W<rsub|y>> <math|f> is
        <math|1>-times differentiable at <math|y> and the function\ 

        <\equation>
          <label|eq 16.71.193><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|W<rsub|y>>:W<rsub|y>\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|W<rsub|y>><around*|(|z|)>=D<rsup|<around*|[|1|]>>f<around*|(|z|)>
        </equation>

        is <math|<around*|[|n-1|]>>-times differentiable at <math|y> and

        <\equation>
          <label|eq 16.72.193>D<rsup|n>f<around*|(|y|)>=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|W<rsub|y>><around*|(|y|)>.
        </equation>

        As <math|\<forall\>y\<in\>V> <math|y\<in\>W<rsub|y>\<subseteq\>V> it
        follows that\ 

        <\equation*>
          V=<big|cup><rsub|y\<in\>V>W<rsub|y>
        </equation*>

        As <math|\<forall\>y\<in\>V> \ <math|y\<in\>W<rsub|y>> it follows
        that <math|f> is <math|1>-times differentiable at <math|y>, this
        allows us to define the function\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          where ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>
        </equation*>

        Then as <math|\<forall\>z\<in\>W<rsub|y>> we have
        <math|><math|<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|W<rsub|y>><around*|(|z|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.71.193>]>>D<rsup|<around*|[|1|]>>f<around*|(|z|)>>
        it follows that\ 

        <\equation*>
          \<forall\>y\<in\>V<text| ><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|W<rsub|y>>=<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|\|W<rsub|y>>
        </equation*>

        Hence as <math|<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|W<rsub|y>>>
        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> with
        <math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|W<rsub|y>><around*|(|y|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.72.193>]>>D<rsup|<around*|[|n|]>>f<around*|(|y|)>>
        it follows from the locality of the higher order differentiation [see
        theorem: <reference|diff higher order differentiation is local>] that
        <math|\<forall\>y\<in\>V> <math|D<rsup|<around*|[|1|]>>f<text| is
        ><around*|(|n-1|)>>-times differentiable at <math|y> and
        <math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>>.
        Hence if we define\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|1>f|)>:V\<rightarrow\>L<rsub|n-1><around*|(|X;L<rsub|1><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.50.192>]>>L<rsub|n><around*|(|X;Y|)><text| by
          ><around*|(|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|1>f|)>|)><around*|(|y|)>=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>
        </equation*>

        it follows that <math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|1>f|)>=D<rsup|<around*|[|n|]>>f>.
        So using [eqs: <reference|eq 16.69.191> and <reference|eq 16.70.191>]
        it follows that <math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|1>f|)>>
        is Frèchet differentiable at <math|x> and
        <math|D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>> is defined to be
        <math|D<around*|(|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>|)><around*|(|x|)>>.
        Hence we have by definition that <math|D<rsup|1>f> is <math|n>-times
        differentiable at <math|x> with <math|D<rsup|n+1>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>.
        As <math|<around*|(|n+1|)>-1=n> it follows that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>We use recursion to prove this. So define

      <\equation*>
        S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|<text|If for
        >f:U\<rightarrow\>Y<text| there exist a open >V<text| with
        <math|x\<in\>V\<subseteq\>U<text| such that >\<forall\>y\<in\>V<text|
        >f<text| is >1<text|-times differentiable at >y<text| and
        <math|D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
        defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)><text|
        is ><around*|(|n-1|)><text|-times differentiable at >x<text| then
        <math|f> is >n<text|-times differentiable at >x<text| and
        >D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>>>>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|2\<in\>S>>Let <math|V> be a open set with
        <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V> we
        have that <math|f> is <math|1>-times differentiable at <math|y> and

        <\equation*>
          D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>
        </equation*>

        is <math|1>-times differentiable at <math|x>. Then
        <math|D<rsup|<around*|[|1|]>>f> is Frèchet differentiable at <math|x>
        and <math|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>
        hence by definition <math|f> is <math|2>-times differentiable at
        <math|x> and <math|D<rsup|<around*|[|2|]>>f<around*|(|x|)>=D<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>.
        So we have that <math|2\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>First as
        <math|n\<in\>S\<subseteq\><around*|{|2,\<ldots\>,\<infty\>|}>> it
        follows that\ 

        <\equation>
          <label|eq 16.71.191>1\<less\>n
        </equation>

        Let <math|V> be a open set such that <math|x\<in\>V\<subseteq\>U> and
        <math|\<forall\>y\<in\>V> <math|f> is <math|1>-times differentiable
        at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>
        </equation*>

        is <math|n>-times differentiable at <math|x>. So by definition it
        follows that there exist a open <math|W> with
        <math|x\<in\>W\<subseteq\>V> such that <math|\<forall\>y\<in\>W>
        <math|D<rsup|<around*|[|1|]>>f> is <math|<around*|(|n-1|)>>-times
        differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>:W\<rightarrow\>L<around*|(|X,L<rsub|n-1><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.50.192>]>>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>
        </equation*>

        is Frèchet differentiable at <math|x> and

        <\equation>
          <label|eq 16.74.193>D<rsup|<around*|[|n|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>|)><around*|(|x|)>
        </equation>

        As <math|\<forall\>y\<in\>W\<subseteq\>V> <math|f> is <math|1>-times
        differentiable and <math|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>>
        is <math|<around*|(|n-1|)>>-times differentiable at <math|y> we have,
        as <math|n\<in\>S>, that <math|f> is <math|n>-times differentiable at
        <math|y> and

        <\equation*>
          D<rsup|<around*|[|n|]>>f<around*|(|y|)>=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>
        </equation*>

        Hence we have for\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>
        </equation*>

        that

        <\equation>
          <label|eq 16.76.193>D<rsup|<around*|[|n|]>>f=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>
        </equation>

        so that <math|D<rsup|<around*|[|n|]>>f> if Frèchet differentiable at
        <math|x> with

        <\equation*>
          D<around*|(|D<rsup|<around*|[|n|]>>f|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.76.193>]>>D<around*|(|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.74.193>]>>D<rsup|<around*|[|n|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>
        </equation*>

        Hence we have by definition that <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> with
        <math|D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>
        which proves that <math|n+1\<in\>S>.
      </description>
    </description>
  </proof>

  <\corollary>
    <label|diff f is of class C^n if D^1f u=is of class C^n-1>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, a open set <math|U\<subseteq\>X> and
    <math|f:U\<rightarrow\>Y> a function then we have\ 

    <\equation*>
      f<text| is of class >C<rsup|n>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>x\<in\>U<text| f is >1<text|-times differentiable at >x<text|
      and >D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
      defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><text|
      is of class >C<rsup|<around*|[|n-1|]>>
    </equation*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>For <math|n\<in\>\<bbb-N\>> we have two
      cases to consider:\ 

      <\description>
        <item*|<math|n=1>>As <math|f> is of class <math|C<rsup|1>> we have
        that <math|\<forall\>x\<in\>U> is <math|1>-times differentiable at
        <math|x> and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>
        </equation*>

        is continuous. Hence <math|D<rsup|<around*|[|1|]>>f> is of class
        <math|C<rsup|0>=C<rsup|1-1>>.

        <item*|<math|1\<less\>n>>As <math|f> is of class <math|C<rsup|n>> we
        have that <math|\<forall\>x\<in\>U> <math|f> is <math|n>-times
        differentiable at <math|x> and\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>
        </equation*>

        is continuous. Using the previous theorem [theorem: <reference|diff
        D^f=D^(n-1)D^1f>] it follows that <math|\<forall\>x\<in\>U> there
        exist a open set <math|V<rsub|x>> with
        <math|x\<in\>V<rsub|x>\<subseteq\>U> such that
        <math|\<forall\>y\<in\>V<rsub|x>> <math|f > is <math|1>-times
        differentiable at <math|y> and that\ 

        <\equation>
          <label|eq 16.77.193><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|V<rsub|y>>:V<rsub|y>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|V<rsub|y>>|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>
        </equation>

        is <math|<around*|(|n-1|)>>-times differentiable at <math|x> with
        <math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|V<rsub|y>><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>>.
        Hence as <math|x\<in\>V<rsub|x>\<subseteq\>U> we have that

        <\equation*>
          \<forall\>x\<in\>U f<text| is >1<text|-times differentiable at >x
        </equation*>

        \ allowing us to define\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)>
          by <around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>
        </equation*>

        From [eq: <reference|eq 16.77.193>] it follows then that\ 

        <\equation*>
          \<forall\>x\<in\>U<text| we have
          ><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|V<rsub|x>>=<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|\|V<rsub|x>>
        </equation*>

        As <math|<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|V<rsub|x>>> is
        <math|<around*|(|n-1|)>>-times differentiable with
        <math|><math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|V<rsub|y>><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>>
        it follows from [theorem: <reference|diff higher order
        differentiation is local>] that\ 

        <\equation*>
          \<forall\>x\<in\>U<text| >D<rsup|<around*|[|1|]>>f<text| is
          ><around*|(|n-1|)><text|-times differentiable with
          >D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>
        </equation*>

        proving that <math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>=D<rsup|n>f>.
        Hence, as <math|D<rsup|n>f> is continuous,
        <math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>>
        is continous proving that\ 

        <\equation*>
          D<rsup|1>f<text| is of class >C<rsup|n-1>
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>For <math|n\<in\>\<bbb-N\>> we have two
      possible cases:\ 

      <\description>
        <item*|<math|n=1>>As <math|\<forall\>x\<in\>U> <math|f> is
        <math|1>-times differentiable and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<rsub|1><around*|[|X;Y|]>
        </equation*>

        is of class <math|C<rsup|0>> it follows that
        <math|D<rsup|<around*|[|1|]>>f> is continuous. Hence <math|f> is of
        class <math|C<rsup|1>>.

        <item*|<math|1\<less\>n>>As <math|\<forall\>x\<in\>U> <math|f> is
        <math|1>-times differentiable and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)>*<around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><text|>
        </equation*>

        is of class <math|C<rsup|n-1>>. So <math|\<forall\>x\<in\>U>
        <math|D<rsup|<around*|[|1|]>>f> is <math|<around*|(|n-1|)>>-times
        differentiable at <math|x> and\ 

        <\equation*>
          D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>
        </equation*>

        is continuous. Using [theorem: <reference|diff D^f=D^(n-1)D^1f>] it
        follows then that <math|\<forall\>x\<in\>U> <math|f> is
        <math|n>-times differentiable at <math|x> and
        <math|D<rsup|n>f<around*|(|x|)>=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>.
        This proves that for\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>
        </equation*>

        we have <math|D<rsup|<around*|[|n|]>>f=D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>>.
        As <math|D<rsup|<around*|[|n-1|]>><around*|(|D<rsup|<around*|[|1|]>>f|)>>
        is continous it follows that <math|D<rsup|<around*|[|n|]>>f> is
        continuous hence we have that <math|f> is of class
        <math|C<rsup|<around*|[|n|]>>>.
      </description>
    </description>
  </proof>

  Just as the Frèchet differential is linear [see theorem: <reference|diff
  derivate operator is linear>] we have the same for higher order
  differentials and derivates.

  <\theorem>
    <label|diff higher order differential is linear>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces, <math|U> a open set in <math|X> then we have:

    <\enumerate>
      <item>If <math|f:U\<rightarrow\>Y>, <math|g:U\<rightarrow\>Y> are
      functions such that <math|f,g> are <math|n>-times differentiable at
      <math|x\<in\>U> then <math|f+g> is <math|n>-times differentiable at
      <math|x> and <math|D<rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>+D<rsup|<around*|[|n|]>>g<around*|(|x|)>>.

      <item>If <math|k\<in\>\<bbb-N\>> and
      <math|<around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
      is a family of functions such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|f<rsup|i>> is <math|n>-times differentiable at <math|x\<in\>U>
      then <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i>> is <math|n>-times
      differentiable at and\ 

      <\equation*>
        D<rsup|n><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|I>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|k>D<rsup|<around*|[|n|]>>f<around*|(|x|)>
      </equation*>

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>>, <math|f:U\<rightarrow\>Y> is
      a function that is <math|n>-times differentiable at <math|x> then
      <math|\<alpha\>\<cdot\>f> is <math|n>-times differentiable at <math|x>
      and <math|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f<around*|(|x|)>>.

      <item>If <math|f:U\<rightarrow\>Y>, <math|g:U\<rightarrow\>Y> are
      functions of class <math|C<rsup|n>> then <math|f+g> is of class
      <math|C<rsup|n>>.

      <item>If <math|k\<in\>\<bbb-N\>> and
      <math|<around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
      is a family of functions such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|f<rsup|i>> is of class <math|C<rsup|n>> then
      <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i>> is of class
      <math|C<rsup|n>>.

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>>, <math|f:U\<rightarrow\>Y> is
      of class <math|C<rsup|n>> then <math|\<alpha\>\<cdot\>f> is of class
      <math|C<rsup|n>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction on <math|n> to prove this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f,g:U\<rightarrow\>Y<text|
        are >n<text|-times differentiable at >x\<in\>U where U<text| is open
        in <math|X> then <math|f+g<text| is >n<text|-times differentiable at
        >x<text| and >D<rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>+D<rsup|<around*|[|n|]>>g<around*|(|x|)>>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f>, <math|g:U\<rightarrow\>Y> are
        <math|1>-times differentiable at <math|x> then <math|f,g> are Frèchet
        differentiable at <math|x\<in\>U> and
        <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D f<around*|(|x|)>>,
        <math|D<rsup|<around*|[|1|]>>g<around*|(|x|)>=D g<around*|(|x|)>>.
        Using [theorem: <reference|diff derivate operator is linear>] it
        follows that <math|f+g> is <math|n>-times differentiable at <math|x>
        and

        <\equation*>
          D<around*|(|f+g|)><around*|(|x|)>=D f<around*|(|x|)>=D
          g<around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>+D<rsup|<around*|[|1|]>>g<around*|(|x|)>
        </equation*>

        so that <math|D<rsup|<around*|[|1|]>><around*|(|f+g|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>+D<rsup|<around*|[|1|]>>g<around*|(|x|)>>.
        Hence we have <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f,g are
        <around*|(|n+1|)>>-times differentiable at <math|x> then there exist
        open sets <math|V<rsub|1>>, <math|V<rsub|2>> with
        <math|x\<in\>V<rsub|1>\<subseteq\>U>,
        <math|x\<in\>V<rsub|2>\<subseteq\>U> and
        <math|\<forall\>y\<in\>V<rsub|1>> <math|f> is <math|n>-times
        differentiable at <math|y> and <math|\<forall\>y\<in\>V<rsub|2>>
        <math|g> is <math|n>-times differentiable at <math|x>. Further we
        have that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f:V<rsub|1>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>
        </equation*>

        and\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>g:V<rsub|2>\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>g|)><around*|(|y|)>=D<rsup|n>g<around*|(|y|)>
        </equation*>

        are differentiable at <math|x> with
        <math|D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>=D<rsup|><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>>
        and <math|D<rsup|<around*|[|n+1|]>>g<around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>g|)><around*|(|x|)>>.
        Take <math|V=V<rsub|1><big|cap>V<rsub|2>> then if
        <math|y\<in\>V\<subseteq\>U> we have
        <math|\<forall\>y\<in\>V<rsub|1><big|cap>V<rsub|2>> that <math|f>,
        <math|g> are <math|n>-times differentiable at <math|y>. As
        <math|n\<in\>S> it follows that <math|f+g> is <math|n>-times
        differentiable and <math|D<rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|y|)>+D<rsup|<around*|[|n|]>>g<around*|(|y|)>>.
        This allows us to define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><around*|(|f+g|)>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          where ><around*|(|D<rsup|<around*|[|n|]>><around*|(|f+g|)>|)><around*|(|y|)>=D<rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|y|)>
        </equation*>

        and <math|\<forall\>y\<in\>V> we have that

        <\equation*>
          <around*|(|D<rsup|<around*|[|n|]>><around*|(|f+g|)>|)><around*|(|y|)>=<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>+<around*|(|D<rsup|<around*|[|n|]>>g|)><around*|(|y|)>=<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V><around*|(|y|)>+<around*|(|D<rsup|<around*|[|n|]>>g|)><rsub|\|V><around*|(|y|)><rsub|>
        </equation*>

        proving that\ 

        <\equation>
          <label|eq 16.77.193.1>D<rsup|<around*|[|n|]>><around*|(|f+g|)>=<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V>+<around*|(|D<rsup|n>g|)><rsub|\|V>
        </equation>

        As <math|D<rsup|<around*|[|n|]>>f>, <math|D<rsup|<around*|[|n|]>>g>
        are Frèchet differentiable at <math|x> and
        <math|x\<in\>V<rsub|1><big|cap>V<rsub|2>=V> it follows from [theorem:
        <reference|diff differentiability is a local property>] that
        <math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V>>,
        <math|<around*|(|D<rsup|<around*|[|n|]>>g|)><rsub|\|V>> are Frèchet
        differentiable at <math|x> with\ 

        <\equation*>
          D<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V><around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)><text|
          and >D<around*|(|D<rsup|<around*|[|n|]>>g|)><rsub|\|V><around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>g|)><around*|(|x|)>
        </equation*>

        Hence using <math|<around*|[|theorem:<reference|diff derivate
        operator is linear>|]>> <math|><math|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V>+<around*|(|D<rsup|n>g|)><rsub|\|V>>
        is Frèchet differentiable with\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|D<around*|(|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V>+<around*|(|D<rsup|n>g|)><rsub|\|V>|)>|)><around*|(|x|)>>|<cell|=>|<cell|D<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|V><around*|(|x|)>+D<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|V><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>+D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)><eq-number><label|eq
          16.78.193>>>>>
        </eqnarray*>

        Which as <math|D<rsup|<around*|[|n|]>><around*|(|f+g|)>\<equallim\><rsub|<text|[eq
        <reference|eq 16.77.193.1>]>><around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V>+<around*|(|D<rsup|n>g|)><rsub|\|V>>
        proves that <math|f+g> is <math|<around*|(|n+1|)>>-times
        differentiable at <math|x> with

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|<around*|[|n+1|]>><around*|(|f+g|)><around*|(|x|)>>|<cell|=>|<cell|D<around*|(|D<rsup|<around*|[|n|]>><around*|(|f+g|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D<around*|(|<around*|(|D<rsup|<around*|[|n|]>>f|)><rsub|\|V>+<around*|(|D<rsup|n>g|)><rsub|\|V>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>+D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>+D<rsup|<around*|[|n+1|]>>g<around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item>We prove this by induction on <math|k>, so define\ 

      <\equation*>
        S=<around*|{|k\<in\>\<bbb-N\>\|<text|If
        ><around*|{|f<rsub|i>\|U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        is a family of >n<text|-times differentiable functions at >x<text|
        then ><big|sum><rsub|i=1><rsup|k>f<rsub|i><text| is >n<text|-times
        differentiable at >x<text| with >D<rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|k>D<rsup|<around*|[|n|]>>f<around*|(|x|)>|)>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|<around*|{|f<rsub|i>\|U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1|}>>>
        is a family of <math|n>-times differentiable at <math|x> then as
        <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>=f<rsub|1>> it follows that
        <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>> is <math|n>-times
        differentiable at <math|x> and

        <\equation*>
          D<rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|1>f<rsub|i>|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<rsub|i><around*|(|x|)>=<big|sum><rsub|i=1><rsup|1>D<rsup|<around*|[|n|]>>f<rsub|i><around*|(|x|)>
        </equation*>

        proving that <math|1\<in\>S>.

        <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>Let
        <math|<around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>>
        be a family of <math|n>-times differentiable functions at <math|x>
        then we have as <math|k\<in\>S> that
        <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i><rsup|>> is <math|n>-times
        differentiable at <math|x> with <math|D<rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|k>D<rsup|<around*|[|n|]>>f<rsub|i><around*|(|x|)>>.
        As also <math|f<rsub|k+1>> is <math|n>-times differentiable at
        <math|x> it follows from (1) that
        <math|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>=<big|sum><rsub|i=1><rsup|k>f<rsub|i>+f<rsub|k+1>>
        is <math|n>-times differentiable at <math|x> with\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>|)><around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>+f<rsub|k+1>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)><around*|(|x|)>+D<rsup|<around*|[|n|]>>f<rsub|k+1><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i=1><rsup|k>D<rsup|<around*|[|n|]>>f<rsub|i><around*|(|x|)>+D<rsup|<around*|[|n|]>>f<rsub|k+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|k+1>D<rsup|<around*|[|n|]>>f<rsub|i><around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item>We use induction on <math|n>, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f:U\<rightarrow\>Y<text| is
        >n<text|-times differentiable at <math|x\<in\>U<text|where <math|U>
        is open in <math|X> then >\<alpha\>\<cdot\>f<text| is >n<text|-times
        differentiable at >x<text| and >D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f<around*|(|x|)>>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f:U\<rightarrow\>Y> is <math|1>-times
        differentiable at <math|x> then <math|f> is Frèchet differentiable at
        <math|x> and <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
        f<around*|(|x|)>>. Using [theorem: <reference|diff derivate operator
        is linear>] it follows that <math|\<alpha\>\<cdot\>f> is Frèchet
        differentiable at <math|x> and <math|D<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D
        f<around*|(|x|)>>. Hence <math|\<alpha\>\<cdot\>f> is <math|1>-times
        differentiable and

        <\equation*>
          D<rsup|1><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=D
          <around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D
          f<around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>
        </equation*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S=n+1\<in\>S>>If <math|f:U\<rightarrow\>Y> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> then, as
        <math|1\<less\>n+1>, there exist a open set <math|V> with
        <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
        <math|f> is <math|n>-times differentiable at <math|x> and\ 

        <\equation*>
          D<rsup|n>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text| defined
          by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>
        </equation*>

        is Frèchet differentiable at <math|x>, further
        <math|D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>> is defined to be
        <math|D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>>. As
        <math|n\<in\>\<bbb-N\>> it follows that <math|\<forall\>y\<in\>Y>
        <math|\<alpha\>\<cdot\>f> is <math|n>-times differentiable at
        <math|y> and\ 

        <\equation>
          <label|eq 16.79.193>D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|y|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f<around*|(|y|)>
        </equation>

        So if we define

        <\equation*>
          D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by ><around*|(|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>|)><around*|(|y|)>=D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|y|)><rsup|>
        </equation*>

        then by [eq: <reference|eq 16.79.193>] it follows that\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f
        </equation*>

        As <math|D<rsup|n>f> is Frèchet differentiable at <math|x> it follows
        form [theorem: <reference|diff derivate operator is linear>] that
        <math|\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f> is Frèchet
        differentiable at <math|x> with <math|D<around*|(|\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>>.
        Hence by <math|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>>
        is Frèchet differentiable at <math|x> with

        <\equation*>
          D<around*|(|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>
        </equation*>

        proving that <math|\<alpha\>\<cdot\>f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> with

        <\equation*>
          D<rsup|<around*|[|n+1|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>\<equallim\><rsub|def><around*|(|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>
        </equation*>

        So we conclude that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item>If <math|f:U\<rightarrow\>Y> and <math|g:U\<rightarrow\>Y> are of
      class <math|C<rsup|n>> then we have two cases to consider:

      <\description>
        <item*|<math|n=0>>Then <math|f,g> are continuous functions, applying
        [theorem: <reference|continuity of sum of continuous functions>]
        proves that <math|f+g> is continuous. Hence <math|f+g> is of class
        <math|C<rsup|0>>.

        <item*|<math|1\<less\>n>>Then <math|\<forall\>y\<in\>U> <math|f>,
        <math|g> are <math|n>-times differentiable at <math|y> and

        <\equation*>
          D<rsup|<around*|[|n|]>> f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>
        </equation*>

        <\equation*>
          D<rsup|<around*|[|n|]>> g:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>g|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>g<around*|(|y|)>
        </equation*>

        are continuous functions. Using (1) it follows that
        <math|\<forall\>y\<in\>U> that <math|f+g> is <math|n>-times
        differentiable at <math|y> and that
        <math|D<rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>+D<rsup|<around*|[|n|]>>g<around*|(|y|)>>.
        So if we define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><around*|(|f+g|)>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by ><around*|(|D<rsup|<around*|[|n|]>><around*|(|f+g|)>|)><around*|(|y|)>=D<rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|y|)>
        </equation*>

        it follows that

        <\equation*>
          D<rsup|<around*|[|n|]>><around*|(|f+g|)>=D<rsup|<around*|[|n|]>>f+D<rsup|<around*|[|n|]>>g
        </equation*>

        which by [theorem: <reference|continuity of sum of continuous
        functions> is continuous. Hence <math|f+g> is of class
        <math|C<rsup|n>>.
      </description>

      <item>If <math|<around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
      is a family of functions of class <math|C<rsup|n>> then for <math|n> we
      have either:

      <\description>
        <item*|<math|n=0>>Then we have that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f<rsub|i>>
        is continuous. Using [theorem: <reference|continuity of finite sum of
        continuous functions>] we can conclude that
        <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> is continous hence of
        class <math|C<rsup|0>>.

        <item*|<math|1\<less\>n>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|f<rsub|i>> is of class <math|C<rsup|n>> it follows that
        <math|\<forall\>y\<in\>U> <math|f<rsub|i>> is <math|n>-times
        differentiable and that

        <\equation*>
          D<rsup|<around*|[|n|]>>f<rsub|i>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>
        </equation*>

        is continuous. Using (3) \ follows that
        <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i>> is <math|n>-times
        differeble at <math|y\<in\>U> and
        <math|D<rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)><around*|(|y|)>=<big|sum><rsub|i=1><rsup|k>D<rsup|<around*|[|n|]>>f<rsub|i><around*|(|y|)>>.
        So if we define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >
        </equation*>
      </description>

      <item>As <math|f> is of class <math|C<rsup|n>> it follows that
      <math|\<forall\>y\<in\>U> <math|f> is <math|n>-times differentiable at
      <math|y> and that the function\ 

      <\equation*>
        D<rsup|<around*|[|n|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|n|]>>f<around*|(|y|)>
      </equation*>

      is continuous. Using (3) we have that <math|\<forall\>y\<in\>U> that
      <math|<around*|(|\<alpha\>\<cdot\>f|)>> is <math|n>-times
      differentiable at <math|y> and <math|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|y|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f<around*|(|y|)>>.
      Hence if we define\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        by ><around*|(|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>|)><around*|(|y|)>=D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|y|)>
      </equation*>

      then\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f
      </equation*>

      and, as by [theorem: <reference|diff derivate operator is linear>]
      <math|\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f> is continuous, it
      follows that <math|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)>>
      is continuous. This proves that <math|\<alpha\>\<cdot\>f> is of class
      <math|C<rsup|n>>.
    </enumerate>
  </proof>

  <\corollary>
    <label|diff higher order derivate is linear>Let <math|n\<in\>\<bbb-N\>>
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> the normed
    space of real (complex) numbers using the norm <math|<around*|\|||\|>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U> a open set in <math|\<bbb-K\>> and <math|x\<in\>U>
    then we have:

    <\enumerate>
      <item>If <math|f:U\<rightarrow\>Y,g:U\<rightarrow\>Y> have a
      <math|n>-th derivate at <math|x> then <math|f+g> has a <math|n>-th
      derivate at <math|x> and

      <\equation*>
        <around*|(|f+g|)><rsup|<around*|(|n|)>><around*|(|x|)>=f<rsup|<around*|(|n|)>><around*|(|x|)>+g<rsup|<around*|(|n|)>><around*|(|x|)>
      </equation*>

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>> and <math|f:U\<rightarrow\>Y>
      has a <math|n>-th derivate at <math|x> then <math|\<alpha\>\<cdot\>f>
      has a <math|n>-th derivate <math|x> and
      <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|<around*|(|n|)>><around*|(|x|)>=\<alpha\>\<cdot\>f<rsup|<around*|(|n|)>><around*|(|x|)>>.
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|f:U\<rightarrow\>Y,g:U\<rightarrow\>Y> have a
      <math|n>-th derivate at <math|x> then by [theorem: <reference|diff
      higher order derivate and differential>] <math|f,g> are <math|n>-times
      differentiable at <math|x> and <math|f<rsup|<around*|(|n|)>><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>1|\<wide-underbrace\>><rsub|n>|)>>,
      <math|g<rsup|<around*|(|n|)>><around*|(|x|)>=D<rsup|<around*|[|n|]>>g<around*|(|x|)><around*|(|<wide*|1:\<ldots\>1|\<wide-underbrace\>><rsub|n>|)>>.
      Using [theorem: <reference|diff higher order differential is linear>]
      <math|f+g> is <math|n>-times differentiable at <math|x> with
      <math|D<rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>+D<rsup|<around*|[|n|]>>g<around*|(|x|)>>.
      Hence by [theorem: <reference|diff higher order derivate and
      differential>] <math|f+g> has a <math|n>-th derivate at <math|x> with\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f+g|)><rsup|<around*|(|n|)>><around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><around*|(|f+g|)><around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|n|]>>f<around*|(|x|)>+D<rsup|<around*|[|n|]>>g<around*|(|x|)>|)><around*|(|x|)><around*|(|1:\<ldots\>:1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.54.187>]>>>|<cell|D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>+D<rsup|<around*|[|n|]>>g<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|[|n|]>><around*|(|x|)>+g<rsup|<around*|[|n|]>><around*|(|x|)>>>>>
      </eqnarray*>

      <item>As <math|f> has a <math|n>-th derivate at <math|x> it follows by
      [theorem: <reference|diff higher order derivate and differential>] that
      <math|f> is <math|n>-times differentiable at <math|x> and that
      <math|f<rsup|<around*|(|n|)>><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>.
      Using [theorem: <reference|diff higher order differential is linear>]
      it follows that <math|\<alpha\>\<cdot\>f> is <math|n>-times
      differentiable at <math|x> with <math|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f<around*|(|x|)>>.
      Hence using [theorem: <reference|diff higher order derivate and
      differential>] again <math|\<alpha\>\<cdot\>f> has a <math|n>-th
      derivate at <math|x> with\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|<around*|(|n|)>><around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f<around*|(|x|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 16.54.187>]>>>|<cell|\<alpha\>\<cdot\>D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<rsup|<around*|[|n|]>><around*|(|x|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <subsubsection|Examples of <math|\<infty\>>-times differentiable functions>

  We show now some example of <math|\<infty\>>-times differentiable functions
  or equivalent functions of class <math|C<rsup|\<infty\>>> [see theorem:
  <reference|diff C-infinity condition>].\ 

  <\example>
    <label|diff constant function is infinitely times differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X> and <math|y\<in\>Y>
    then the constant function <math|C<rsub|y>:U\<rightarrow\>Y> defined by
    <math|C<rsub|n><around*|(|x|)>=y> is <math|\<infty\>>-times
    differentiable for every <math|x\<in\>U> [hence by [theorem:
    <reference|diff C-infinity condition>] <math|C<rsub|y>> is of class
    <math|C<rsup|\<infty\>>>]. \ Furthermore
    <math|\<forall\>n\<in\>\<bbb-N\>>, <math|\<forall\>x\<in\>U> we have that
    <math|D<rsup|<around*|[|n|]>>f<around*|(|x|)>=0<rsub|n>> where
    <math|0<rsub|n>\<in\>L<rsub|n><around*|(|X;Y|)>> is the neutral element
    in <math|L<rsub|n><around*|(|X;Y|)>>.\ 
  </example>

  <\proof>
    We prove this by induction on <math|n>, so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|C<rsub|y>:U\<rightarrow\>Y<text| is
      >n<text|-times differentiable with >\<forall\>x\<in\>U<text|
      >D<rsup|<around*|[|n|]>>f<around*|(|x|)>=0<rsub|n>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Let <math|x\<in\>U>,
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
      <math|h\<in\>U<rsub|x>> with <math|<around*|\||h|\|>\<less\>1> we have
      that\ 

      <\equation*>
        <around*|\<\|\|\>|C<rsub|y><around*|(|x+h|)>-C<rsub|y><around*|(|h|)>-0<rsub|1><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-y-0|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation*>

      proving that <math|C<rsub|y>> is Frèchet differentiable at <math|x>
      with <math|D f<around*|(|x|)>=0<rsub|1>>. Hence by definition <math|f>
      is <math|1>-times differentiable with
      <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=0<rsub|1>> proving that
      <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> it
      follows that <math|\<forall\>x\<in\>U> <math|C<rsub|0>> is
      <math|n>-times differentiable with

      <\equation>
        <label|eq 16.81.193>D<rsup|<around*|[|n|]>>f<around*|(|x|)>=0<rsub|n>\<in\>L<rsub|n><around*|(|X;Y|)>.
      </equation>

      Allowing us to define

      <\equation*>
        D<rsup|<around*|[|n|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        by ><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>f<around*|(|x|)>
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then for
      <math|h\<in\>U<rsub|x>> with <math|<around*|\||h|\|>\<less\>1> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x+h|)>-<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>-0<rsub|n+1><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.81.193>]>>>|<cell|<around*|\<\|\|\>|0<rsub|n>-0<rsub|n>-0<rsub|n+1><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|0<rsub|n>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;y|)>>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>>>>>
      </eqnarray*>

      proving that <math|D<rsup|<around*|[|n|]>>f> is Frèchet differentiable
      at <math|x> with <math|D<around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|x|)>=0<rsub|n+1>>.
      Hence <math|f> is <math|<around*|(|n+1|)>>-times differentiable at
      <math|x> with <math|D<rsup|<around*|[|n+1|]>>f<around*|(|x|)>=0<rsub|n+1>>.
    </description>
  </proof>

  <\example>
    <label|diff linear mapping is infinite times differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|L\<in\>L<around*|(|X,Y|)>> then we have:

    <\enumerate>
      <item><math|L> is <math|\<infty\>>-times differentiable [hence by
      [theorem: <reference|diff C-infinity condition>] <math|L> is of class
      <math|C<rsup|\<infty\>>>]

      <item><math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|\<forall\>x\<in\>X> that\ 

      <\equation*>
        D<rsup|<around*|[|n|]>>L<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|L<text|
        if >n=1>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
      </equation*>
    </enumerate>
  </example>

  <\proof>
    For <math|n\<in\>\<bbb-N\>> we have either:\ 

    <\description>
      <item*|<math|n=1>>Then by [example: <reference|diff linear mappings are
      differentiable>] we have that <math|L> is Frèchet differentiable at
      <math|x\<in\>X> with <math|D f<around*|(|x|)>=L>. So by definition
      <math|L> is <math|1>-times differentiable at <math|x> and
      <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=L>.

      <item*|<math|1\<less\>n>>We proceed by induction, so let

      <\equation*>
        S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|L<text| is
        n-times differentiable at >x\<in\>X<text| with
        \ >D<rsup|<around*|[|n|]>>L<around*|(|x|)>=0<rsub|n>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|2\<in\>S>>As <math|L> is <math|1>-times differentiable
        with <math|D<rsup|<around*|[|1|]>>L<around*|(|x|)>=L> for every
        <math|x\<in\>X> it follows that for\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>L:X\<rightarrow\>L<rsub|1><around*|(|X;Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>L<around*|(|x|)>
        </equation*>

        we have <math|D<rsup|<around*|[|1|]>>L=C<rsub|L>\<in\>L<around*|(|X,L<around*|(|X,Y|)>|)>=L<rsub|2><around*|(|X;Y|)>>.
        Hence using [example: <reference|diff constant function is infinitely
        times differentiable>] it follows that
        <math|D<rsup|<around*|[|1|]>>L> is <math|1>-times differentiable
        (hence Frèchet differentiable) at <math|x> where
        <math|D<around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x|)>>
        is the neutral element in <math|L<rsub|1><around*|(|X,L<rsub|1><around*|(|X;Y|)>|)>=L<rsub|2><around*|(|X;Y|)>>,
        or in other words <math|D<around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x|)>=0<rsub|2>>.
        So <math|L> is <math|2>-times differentiable at <math|x> with
        <math|D<rsup|<around*|[|2|]>>L<around*|(|x|)>=0<rsub|2>> proving that
        <math|\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> it
        follows that <math|\<forall\>x\<in\>X> <math|L> is <math|n>-times
        differentiable at <math|x> and that
        <math|D<rsup|<around*|[|n|]>>L<around*|(|x|)>=0<rsub|n>>. Hence if we
        define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>L:X\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by ><around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>L<around*|(|x|)>
        </equation*>

        it follows that <math|D<rsup|<around*|[|n|]>>L=C<rsub|0<rsub|n>>>.
        Using [example: <reference|diff constant function is infinitely times
        differentiable>] it follows then that <math|\<forall\>x\<in\>X>
        <math|D<rsup|<around*|[|n|]>>L> is <math|1>-times differentiable
        (hence Frèchet differentiable) at <math|x> and that
        <math|D<around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x|)>>
        is the neutral element of <math|L<rsub|1><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>=L<rsub|n+1><around*|(|X;Y|)>>.
        Hence <math|L> is <math|<around*|(|n+1|)>>-times differentiable at
        <math|x> and <math|D<rsup|<around*|[|n+1|]>>L<around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x|)>=0<rsub|n+1>>
        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
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
      defined by >I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><text|
      [see definition: <reference|diff unprojection>]>
    </equation*>

    is <math|\<infty\>>-times differentiable at <math|t\<in\>X<rsub|i>>
    [hence of class <math|C<rsup|\<infty\>>>] \ Further
    <math|\<forall\>n\<in\>\<bbb-N\>>

    <\equation*>
      D<rsup|<around*|[|1|]>>I<rsup|<around*|[|i,x|]>><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|I<rsup|<around*|[|i,0|]>><text|
      if n=1>>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
    </equation*>
  </example>

  <\proof>
    Let <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>>
    and <math|i\<in\><around*|{|1,\<ldots\>,k|}>>. If <math|t\<in\>X<rsub|i>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|I<rsup|<around*|[|i,0|]>>+C<rsub|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>><rsub|>|)><around*|(|t|)>>|<cell|=>|<cell|I<rsup|<around*|[|i,0|]>><around*|(|t|)>+C<rsub|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>><rsub|><around*|(|t|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0,\<ldots\>,<wide*|t|\<wide-underbrace\>>,\<ldots\>,0<rsub|i>|)>+<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|I<rsup|<around*|[|i,x|]>><around*|(|t|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      I<rsup|<around*|[|i,x|]>>=I<rsup|<around*|[|i,0|]>>+C<rsub|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>><rsub|>
    </equation*>

    By [lemma: <reference|lemma 16.24.178>]
    <math|I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>|)>>
    so that by [examples: <reference|diff linear mapping is infinite times
    differentiable> and <reference|diff constant function is infinitely times
    differentiable>] <math|I<rsup|<around*|[|i,0|]>>> and
    <math|C<rsub|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>><rsub|>>
    are <math|\<infty\>>-times differentiable at <math|t\<in\>X<rsub|i>>.
    Using [theorem: <reference|diff higher order differential is linear>]
    proves then that

    <\equation*>
      I<rsup|<around*|[|i,x|]>><text| is >\<infty\><text|-times
      differentiable at >t<text|>
    </equation*>

    and <math|\<forall\>n\<in\>\<bbb-N\>> we have\ 

    <\equation>
      <label|eq 16.82.193>D<rsup|<around*|[|n|]>>I<rsup|<around*|[|i,x|]>><around*|(|t|)>=D<rsup|<around*|[|n|]>>I<rsup|<around*|[|i,0|]>><around*|(|t|)>+D<rsup|<around*|[|n|]>>C<rsub|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>><rsub|><around*|(|t|)>\<equallim\><rsub|<text|[example:
      <reference|diff constant function is infinitely times
      differentiable>]>>D<rsup|<around*|[|n|]>>I<rsup|<around*|[|i,0|]>><around*|(|t|)>
    </equation>

    If <math|n\<in\>\<bbb-N\>> then we have either:\ 

    <\description>
      <item*|<math|n=1>>Then by [example: <reference|diff linear mapping is
      infinite times differentiable>] <math|D<rsup|<around*|[|1|]>>I<rsup|<around*|[|i,0|]>><around*|(|t|)>=I<rsup|<around*|[|i,0|]>>>

      <item*|<math|1\<less\>n>>Then by [example: <reference|diff linear
      mapping is infinite times differentiable>]
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
      at <math|y\<in\>Y> [hence of class <math|C<rsup|\<infty\>>>]

      <item><math|\<forall\>n\<in\>\<bbb-N\>>, <math|\<forall\>y\<in\>X> we
      have\ 

      <\equation*>
        D<rsup|<around*|[|n|]>>\<tau\><rsub|x><around*|(|y|)>=<choice|<tformat|<table|<row|<cell|Id<rsub|X><text|
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
    differentiable, futher by [example: <reference|diff constant function is
    infinitely times differentiable>] we have that <math|C<rsub|x>> is
    <math|\<infty\>>-times differentiable. Using [theorem: <reference|diff
    higher order differential is linear>] it follows that
    <math|\<tau\><rsub|x>> is <math|\<infty\>>-times differentiable and\ 

    <\equation*>
      D<rsup|<around*|[|n|]>>\<tau\><rsub|x><around*|(|y|)>=D<rsup|<around*|[|n|]>>Id<rsub|X><around*|(|y|)>+D<rsup|<around*|[|n|]>>C<rsub|x><around*|(|y|)>\<equallim\><rsub|<text|[example:
      <reference|diff constant function is infinitely times
      differentiable>]>>D<rsup|<around*|[|n|]>>Id<rsub|X><around*|(|y|)>+0<rsub|n>=D<rsup|<around*|[|n|]>>Id<rsub|X><around*|(|y|)>
    </equation*>

    Hence using [example: <reference|diff linear mapping is infinite times
    differentiable>] it follows that\ 

    <\equation*>
      D<rsup|<around*|[|n|]>>\<tau\><rsub|x><around*|(|y|)>=<choice|<tformat|<table|<row|<cell|Id<rsub|X><text|
      if >n=1>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
    </equation*>
  </proof>

  <\example>
    <label|diff projection functon is infinite times differentiable>Let
    <math|k\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    be a finite family of normed spaces, <math|i\<in\><around*|{|1,\<ldots\>,k|}>>
    then the projection map <math|\<pi\><rsub|i>:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>\<rightarrow\>X<rsub|i>>
    is <math|\<infty\>>-times differentiable at <math|t\<in\>X<rsub|i>>
    [hence of class <math|C<rsup|\<infty\>>>] and
    <math|\<forall\>n\<in\>\<bbb-N\>> we have

    <\equation*>
      D<rsup|<around*|[|n|]>>\<pi\><rsub|i><around*|(|t|)>=<choice|<tformat|<table|<row|<cell|\<pi\><rsub|i><text|
      if >n=1>>|<row|<cell|0<rsub|n><text| if >1\<less\>n>>>>>
    </equation*>
  </example>

  <\proof>
    As by [theorem: <reference|continuity norm of projection operator>]
    <math|\<pi\><rsub|i>\<in\>L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>X<rsub|j>,X<rsub|i>|)>>
    the proof follows from [example: <reference|diff linear mapping is
    infinite times differentiable>].
  </proof>

  <subsubsection|Properties of higher order differentiation>

  <\theorem>
    <label|diff bilinear mappings are infinite times differentiable>Let
    <math|<around*|\<langle\>|X<rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>><space|1em>and
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    normed spaces, <math|<around*|\<langle\>|X<rsub|1>\<cdot\>X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space based on <math|X<rsub|1>\<cdot\>X<rsub|2>> using th
    maximum norm and <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|2>;Y|)>>
    be a bi-linear mapping then <math|\<forall\>x=<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
    we have

    <\enumerate>
      <item><math|L> is <math|\<infty\>>-times differentiable at <math|x>
      [hence <math|L> is of class <math|C<rsup|\<infty\>>>]

      <item><math|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
      where\ 

      <\equation*>
        L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>:X<rsub|2>\<rightarrow\>Y<text|
        is defined by ><around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|r,s|)>=L<rsub|1><around*|(|x<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>|)>
      </equation*>

      <item><math|D<rsup|<around*|[|2|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsup|<around*|[|1|]>>L>
      where\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>L:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>L<rsub|2><around*|(|X<rsub|1>\<cdot\>X<rsub|2>,L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)>|)><text|
        is defined by ><around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>
      </equation*>

      <item>If <math|n\<in\><around*|{|3,\<ldots\>.\<infty\>|}>> then
      <math|D<rsup|<around*|[|n|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=0<rsub|n>>
    </enumerate>
  </theorem>

  <\proof>
    For <math|n\<in\>\<bbb-N\>> we have either:\ 

    <\description>
      <item*|<math|n=1>>Using [lemma: <reference|lemma 16.23.181>] <math|L>
      is Frèchet differentiable at <math|<around*|(|x<rsub|1>,x<rsub|2>|)>>
      with

      <\equation*>
        D L<around*|(|x<rsub|1>,x<rsub|2>|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
      </equation*>

      hene <math|L> is <math|1>-times differentiable and
      <math|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>

      <item*|<math|n=2>>Define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>>L:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>L<around*|(|X<rsub|1>\<cdot\>X<rsub|2>,Y|)><text|
        by ><around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>
      </equation*>

      If <math|<around*|(|x<rsub|1>,x<rsub|2>|)>,<around*|(|y<rsub|1>,y<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>,,
      <math|\<alpha\>\<in\>\<bbb-K\>> then for every
      <math|<around*|(|r,s|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|<around*|[|1|]>>L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>+\<beta\>\<cdot\><around*|(|y<rsub|1>,y<rsub|2>|)>|)><around*|(|r,s|)>>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>+\<beta\>\<cdot\>y<rsub|1>,x<rsub|2>+\<beta\>\<cdot\>y<rsub|2>|)><around*|(|r,s|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>+\<beta\>\<cdot\>y<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>+\<beta\>\<cdot\>y<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>,s|)>+\<beta\>\<cdot\>L<around*|(|y<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>|)>+\<beta\>\<cdot\>L<around*|(|r,y<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|x<rsub|1>,s|)>+L<around*|(|r,x<rsub|2>|)>|)>+\<beta\>\<cdot\><around*|(|L<around*|(|y<rsub|1>,s|)>+L<around*|(|r,y<rsub|2>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)><around*|(|r,s|)>+\<beta\>\<cdot\>D<rsup|<around*|[|1|]>>L<around*|(|y<rsub|1>,y<rsub|2>|)><around*|(|r,s|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>+D<rsup|<around*|[|1|]>>L<around*|(|y<rsub|1>,Y<rsub|2>|)>|)><around*|(|r,s|)>>>>>
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
        (1)>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|s|\<\|\|\>><rsub|2>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|s|\<\|\|\>><rsub|2>+<around*|\<\|\|\>|r|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>max<around*|(|<around*|\<\|\|\>|r|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|s|\<\|\|\>><rsub|2>|)>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>>\<cdot\>max<around*|(|<around*|\<\|\|\>|r|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|s|\<\|\|\>><rsub|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>\<cdot\>max<around*|(|<around*|\<\|\|\>|r|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|s|\<\|\|\>><rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|max>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\>2\<cdot\>max<around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|2\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>>\<cdot\><around*|\<\|\|\>|<around*|(|x<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|max>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|max>>|<cell|>|<cell|>>>>
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
      with <math|D<around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x<rsub|1>,x<rsub|2>|)>>
      hence we have that\ 

      <\equation>
        <label|eq 16.85.193>L<text| is >2<text|-times differentiable at
        ><around*|(|x<rsub|1>,x<rsub|2>|)><text| and
        >D<rsup|2>L<around*|(|x<rsub|1>,x<rsub|2>|)>=D<around*|(|D<rsup|<around*|[|1|]>>L|)><around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsup|<around*|[|1|]>>L
      </equation>

      <item*|<math|n\<in\><around*|{|3,\<ldots\>,n|}>>>We use induction on
      <math|n> to proceed, so define<space|1em>

      <\equation*>
        S=<around*|{|n\<in\><around*|{|3,\<ldots\>,\<infty\>|}>\|L<text| is
        >n<text|-times differentiable at ><around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2><text|
        and >D<rsup|<around*|[|n|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=0<rsub|n>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|r\<in\>S>>Define\ 

        <\equation*>
          D<rsup|<around*|[|2|]>>f:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>L<rsub|2><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)><text|
          by ><around*|(|D<rsup|<around*|[|2|]>>f|)><around*|(|x<rsub|1>,x<rsub|2>|)>=D<rsup|<around*|[|2|]>>f<around*|(|x<rsub|1>,x<rsub|2>|)>
        </equation*>

        \ then by [eq: <reference|eq 16.85.193>]
        <math|D<rsup|<around*|[|2|]>>f=C<rsub|D<rsup|<around*|[|1|]>>f>>.
        Hence using [example: <reference|diff constant function is
        differentiable>] it follows that <math|D<rsup|<around*|[|2|]>>f> is
        differentiable at <math|<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>>
        with <math|D<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x<rsub|1>,x<rsub|2>|)>|)>=0<rsub|3>>.
        So by definition <math|L> is <math|3>-times differentiable at
        <math|<around*|(|x<rsub|1>,x<rsub|2>|)> with
        D<rsup|<around*|[|3|]>>L<around*|(|x<rsub|1>,x<rsub|2>|)>=0<rsub|3>>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> it
        follows that <math|\<forall\>x\<in\>X> <math|L> is <math|n>-times
        differentiable at <math|x> and that
        <math|D<rsup|<around*|[|n|]>>L<around*|(|x|)>=0<rsub|n>>. Hence if we
        define\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>L:X<rsub|1>\<cdot\>X<rsub|2>\<rightarrow\>L<rsub|n><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)><text|
          by ><around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x|)>=D<rsup|<around*|[|n|]>>L<around*|(|x|)>
        </equation*>

        it follows that <math|D<rsup|<around*|[|n|]>>L=C<rsub|0<rsub|n>>>.
        Using [example: <reference|diff constant function is infinitely times
        differentiable>] it follows then that <math|\<forall\>x\<in\>X>
        <math|D<rsup|<around*|[|n|]>>L> is <math|1>-times differentiable
        (hence Frèchet differentiable) at <math|x> and that
        <math|D<around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x|)>>
        is the neutral element of <math|L<rsub|1><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;L<rsub|n><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)>|)>=L<rsub|n+1><around*|(|X<rsub|1>\<cdot\>X<rsub|2>;Y|)>>.
        Hence <math|L> is <math|<around*|(|n+1|)>>-times differentiable at
        <math|x> and <math|D<rsup|<around*|[|n+1|]>>L<around*|(|x|)>=D<around*|(|D<rsup|<around*|[|n|]>>L|)><around*|(|x|)>=0<rsub|n+1>>
        proving that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <subsubsection|The chain rule for higher order differentiation>

  <\lemma>
    <label|lemma 16.93.193>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|L\<in\>L<around*|(|Y,Z|)>> then if we defined\ 

    <\equation*>
      <around*|(|L\<circ\>\<ast\>|)>:L<around*|(|X,Y|)>\<rightarrow\>L<around*|(|X,Z|)><text|
      by ><around*|(|L\<circ\>\<ast\>|)><around*|(|T|)>=L\<circ\>T
    </equation*>
  </lemma>

  then we have that\ 

  <\equation*>
    <around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>
  </equation*>

  <\proof>
    First note that if <math|L\<in\>L<around*|(|Y,Z|)>> and
    <math|T\<in\>L<around*|(|X,Y|)>> then by [theorem: <reference|continuity
    composition of continuous linear mapping>]
    <math|L\<circ\>T\<in\>L<around*|(|X,Z|)>> so that
    <math|<around*|(|\<ast\>\<circ\>L|)>> is indeed a function between
    <math|L*<around*|(|X,Y|)>> and <math|L<around*|(|X,Z|)>>. Second we proof
    linearity. Let <math|T<rsub|1>,T<rsub|2>\<in\>L<around*|(|X,Y|)>>,
    <math|\<alpha\>\<in\>\<bbb-K\>> then for <math|z\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)><around*|(|T<rsub|1>+\<alpha\>\<cdot\>T<rsub|2>|\<nobracket\>>|)><around*|(|z|)>>|<cell|=>|<cell|<around*|(|L\<circ\><around*|(|T<rsub|1>+\<alpha\>\<cdot\>T<rsub|2>|)>|)><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<around*|(|T<rsub|1>+\<alpha\>\<cdot\>T<rsub|2>|)><around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|T<rsub|1><around*|(|z|)>+\<alpha\>\<cdot\>T<rsub|2><around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|T<rsub|1><around*|(|z|)>|)>+\<alpha\>\<cdot\>L<around*|(|T<rsub|2><around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L\<circ\>T<rsub|1>|)><around*|(|z|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>T<rsub|2>|)><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L\<circ\>T<rsub|1>|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>T<rsub|2>|)>|)><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)><around*|(|T<rsub|1>|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>\<ast\>|)><around*|(|T<rsub|2>|)>|)><around*|(|z|)>>>>>
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
    normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>
    <math|f:U\<rightarrow\>Y> is a function that is <math|n>-times
    differentiable at <math|x> then <math|L\<circ\>f> is <math|n>-times
    differentiable at <math|x>.
  </lemma>

  <\proof>
    We use induction to prove this, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
      are normed spaces, >U<text| a open set in X, >x\<in\>U<text|,
      >f:U\<rightarrow\>Y<text| n-times differentiable at >x<text| and
      <math|L\<in\>L<around*|(|Y,Z|)>> then >L\<circ\>f<text| is
      >n<text|-times differentiable at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|f> is <math|1>-times differentiable at
      <math|x> then <math|f> is Frèchet differentiable at <math|x>. Hence if
      <math|L\<in\>L<around*|(|Y,Z|)>> we have by [corollary: <reference|diff
      composition with a linear mapping>] it follows that <math|L\<circ\>f>
      is Frèchet differentiable at <math|x>, hence by definition
      <math|1>-times differentiable at <math|x>, which proves that
      <math|1\<in\>S>.\ 

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|f:U\<rightarrow\>Y> be <math|<around*|(|n+1|)>> differentiable at
      <math|x> and let <math|L\<in\>L<around*|(|Y,Z|)>>. The

      is Frèchet differentiable <math|x>. Using [theorem: <reference|diff
      D^f=D^(n-1)D^1f>] there exist a open set <math|V> with
      <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V> we
      have that <math|f> is <math|1>-times differentiable at <math|y> [hence
      Frèchet differentiable at <math|y>] and for

      <\equation>
        <label|eq 16.86.193>D f=D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>=D
        f<around*|(|y|)>=<around*|(|D f|)><around*|(|y|)>
      </equation>

      we have\ 

      <\equation*>
        D f=D<rsup|<around*|[|1|]>>f<text| is >n<text|-times differentiable >
      </equation*>

      \ As <math|f> is Frèchet differentiable at <math|y> we can use
      [corollary: <reference|diff composition with a linear mapping>] to
      prove that

      <\equation>
        <label|eq 16.87.193>L\<circ\> f<text| is Frèchet differentiable at
        >y<infix-and>that D<around*|(|L\<circ\>f|)><around*|(|y|)>=L\<circ\>D
        f<around*|(|y|)>
      </equation>

      Take now <math|<around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>>
      defined by <math|<around*|(|L\<circ\>\<ast\>|)><around*|(|T|)>=L\<circ\>T>
      [see lemma: <reference|lemma 16.93.193>]. Let <math|y\<in\>V> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D
        f|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|<around*|(|D
        f|)><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|D
        f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>D
        f<around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.87.193>]>>>|<cell|D<around*|(|L\<circ\>f|)><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation>
        <label|eq 16.89.193><around*|(|L\<circ\>\<ast\>|)>\<circ\>D
        f=D<around*|(|L\<circ\>f|)>
      </equation>

      As <math|D f=D<rsup|<around*|[|1|]>>f> is <math|n>-times differentiable
      at <math|x>, <math|<around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>>
      and <math|n\<in\>S> it follows that
      <math|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D f> is <math|n>-times
      differentiable at <math|x>, hence, using [eq: <reference|eq
      16.89.193>], it follows that <math|D<around*|(|L\<circ\>f|)>> is
      <math|n>-times differentiable ar <math|x>. Hence [eq: <reference|eq
      16.87.193>] together with [theorem: <reference|diff D^f=D^(n-1)D^1f>]
      proves that <math|L\<circ\>f> is <math|<around*|(|n+1|)>>-times
      differentiable at <math|x>. So\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  We use a simular proof for the following lemma.

  <\lemma>
    <label|lemma 16.97.193>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>
    <math|f:U\<rightarrow\>Y> is a function that is of class
    <math|C<rsup|n>>, <math|L\<in\>L<around*|(|Y,Z|)>> then <math|L\<circ\>f>
    is of class <math|C<rsup|n>>.
  </lemma>

  <\proof>
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have either:\ 

    <\description>
      <item*|<math|n=0>>As <math|f> is of class <math|C<rsup|0>> <math|f> is
      continuous, hence, as <math|L> is continuous, <math|L\<circ\>f> is
      continuous so that <math|L\<circ\>f> is of class <math|C<rsup|0>>.

      <item*|<math|n\<in\>\<bbb-N\>>>We use induction to prove this, so
      define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
        ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
        are normed spaces, >U<text| a open set in X,><text|
        >f:U\<rightarrow\>Y<text| is of class >C<rsup|n><text| and
        <math|L\<in\>L<around*|(|Y,Z|)>> then >L\<circ\>f<text| is of class
        >C<rsup|n>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|f> is of class <math|C<rsup|1>> we
        have that <math|\<forall\>x\<in\>U> <math|f> is <math|1>-times
        differentiable at <math|x> [hence <math|f> is Frèchet differentiable
        at <math|x>] and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|X,Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>
        </equation*>

        is continuous. Let <math|x\<in\>U> then as <math|f> is Frèchet
        differentiable at <math|x> it follows from [corollary:
        <reference|diff composition with a linear mapping>] that
        <math|L\<circ\>f> is Frèchet differentiable at <math|x> [hence
        <math|1>-times differentiable at <math|x>] and
        <math|D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)><around*|(|x|)>=D<around*|(|L\<circ\>f|)><around*|(|x|)>=L\<circ\>D
        f<around*|(|x|)>=L\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>>.
        Define\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Z|)><text|
          by ><around*|(|D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|[>><around*|(|L\<circ\>f|)><around*|(|x|)>
        </equation*>

        then we have

        <\equation*>
          <around*|(|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=<around*|(|L\<circ\>\<ast\>|)><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>|)>=L\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)><around*|(|x|)>
        </equation*>

        so that that <math|><math|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>>f=D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>>.
        As <math|D<rsup|<around*|[|1|]>>f> is continuous and
        <math|<around*|(|L\<circ\>\<ast\>|)>> is continuous [see lemma:
        <reference|lemma 16.93.193>] it follows that
        <math|D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>> is continuous.
        Hence we have that <math|L\<circ\>f> is of class <math|C<rsup|1>>
        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>\<cal-S\>>>If <math|f> is
        of class <math|C<rsup|n+1>> then by [theorem: <reference|diff f is of
        class C^n if D^1f u=is of class C^n-1>] it follows that
        <math|\<forall\>x\<in\>U> <math|f> is <math|1>-times differentiable
        at <math|x> [hence Frèchet differentiable at <math|x>] and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|X,Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><text|
          is of class >C<rsup|<around*|[|n|]>>
        </equation*>

        As <math|\<forall\>x\<in\>U> <math|f> is Frèchet differentiable at
        <math|x> it follows from [corollary: <reference|diff composition with
        a linear mapping>] that <math|L\<circ\>f> is Frèchet differentiable
        at <math|x> [hence <math|1>-times differentiable at <math|x>] and

        <\equation*>
          D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)><around*|(|x|)>=D<around*|(|L\<circ\>f|)><around*|(|x|)>=L\<circ\>D
          f<around*|(|x|)>=L\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>
        </equation*>

        Define\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Z|)><text|
          by ><around*|(|D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)><around*|(|x|)>
        </equation*>

        then we have\ 

        <\equation*>
          <around*|(|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=<around*|(|L\<circ\>\<ast\>|)><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>|)>=L\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)><around*|(|x|)>
        </equation*>

        so that

        <\equation>
          <label|eq 16.89.193.1><around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>>f=D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>
        </equation>

        As <math|D<rsup|1>f\<in\>L<around*|(|X,L<around*|(|X,Y|)>|)>> is of
        class <math|C<rsup|n>>, and <math|<around*|(|L\<circ\>\<ast\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>>
        and <math|n\<in\>S> it follows that
        <math|><math|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>>f>
        is of class <math|C<rsup|n>>, hence, using [eq <reference|eq
        16.89.193.1>] <math|D<rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>>
        is of class <math|C<rsup|<around*|[|n|]>>>. Applying then \ [theorem:
        <reference|diff f is of class C^n if D^1f u=is of class C^n-1>] it
        follows that <math|L\<circ\>f> is of class <math|C<rsup|n+1>> proving
        that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.98.194>Let <math|n\<in\>\<bbb-N\>>,
    <math|k\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces then if we define [see lemma:
    <reference|diff vector functions and linearity>]

    <\equation*>
      \<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
      by >\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|n>|)>|)>=<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)><rsub|\<ast\>><rsub|>
    </equation*>

    then we have that\ 

    <\equation*>
      \<cal-K\>\<in\>L<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>,L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>|)>
    </equation*>

    where <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    is the normed space with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> defined to be
    <math|<around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,Y<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>>
  </lemma>

  <\proof>
    Let <math|\<alpha\>\<in\>\<bbb-K\>>, <math|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>>,
    <math|<around*|(|K<rsub|1>,\<ldots\>,K<rsub|k>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>>
    then we have for <math|x\<in\>X> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>+\<alpha\>\<cdot\><around*|(|K<rsub|1>\<ldots\>,K<rsub|k>|)>|)><around*|(|x|)>>|<cell|=>|<cell|\<cal-K\><around*|(|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>K<rsub|1>,\<ldots\>,L<rsub|k>+\<alpha\>\<cdot\>K<rsub|k>|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>K<rsub|1>,\<ldots\>,L<rsub|k>+\<alpha\>\<cdot\>K<rsub|k>|)><rsub|\<ast\>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>K<rsub|1>|)><around*|(|x|)>,\<ldots\>,<around*|(|L<rsub|k>+\<alpha\>\<cdot\>K<rsub|x>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>K<rsub|1><around*|(|x|)>,\<ldots\>,L<rsub|2><around*|(|x|)>+\<alpha\>\<cdot\>K<rsub|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1><around*|(|x|)>,\<ldots\>,L<rsub|k><around*|(|x|)>|)>+\<alpha\>\<cdot\><around*|(|K<rsub|1><around*|(|x|)>,\<ldots\>,K<rsub|k><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)><rsub|\<ast\>><around*|(|x|)>+\<alpha\>\<cdot\><around*|(|K<rsub|1>,\<ldots\>,K<rsub|k>|)><rsub|\<ast\>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>|)><around*|(|x|)>+\<alpha\>\<cdot\>\<cal-K\><around*|(|<around*|(|K<rsub|1>,\<ldots\>,K<rsub|k>|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>|)>+\<alpha\>\<cdot\>\<cal-K\><around*|(|<around*|(|K<rsub|1>,\<ldots\>,K<rsub|k>|)>|)>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that <math|\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>+\<alpha\>\<cdot\><around*|(|K<rsub|1>\<ldots\>,K<rsub|k>|)>|)>=\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>|)>+\<alpha\>\<cdot\>\<cal-K\><around*|(|<around*|(|K<rsub|1>,\<ldots\>,K<rsub|k>|)>|)>>.
    So we have\ 

    <\equation*>
      \<cal-K\>\<in\>Hom<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>,L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>|)>
    </equation*>

    Let <math|><math|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>>
    then we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cal-K\><around*|(|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>|)>|\<\|\|\>><rsub|L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)><rsub|\<ast\>>|\<\|\|\>><rsub|L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[lemma:
      <reference|diff vector functions and
      linearity>]>><rsub|<text|>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|L<around*|(|X,Y<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>,\<ldots\>,L<rsub|k>|)>|\<\|\|\>><rsub|max>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<cal-K\>\<in\>L<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>,L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>|)>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|diff higher order differentiation and vector functions>Let
    <math|n\<in\>\<bbb-N\>>, <math|k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>U>
    and <math|f:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
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
      <reference|lemma 16.96.193>] it follows that
      <math|\<pi\><rsub|i>\<circ\>f> is <math|n>-times differentiable at
      <math|x>.

      <item*|<math|\<Leftarrow\>>>We use recursion to prove this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|Let
        <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
        be a normed space, ><around*|{|<around*|\<langle\>|Y<rsub|i>|\<rangle\>>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        be normed spaces , <math|x\<in\>U<text| a open set in >X<text| and
        >f:U\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|j><text|
        a function such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        >\<pi\><rsub|i>\<circ\>f<text| is >n<text|-times differentiable at
        >x<text| then >f<text| is >n<text|-times differentiable at
        >x>}>|\<nobracket\>>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable at
        <math|x> it follows that <math|\<pi\><rsub|i>\<circ\>f> is Frèchet
        differentiable at <math|x>. Hence using [theorem: <reference|diff
        differential of a vector valued function>] <math|f> is Frèchet
        differentiable at <math|x> proving that <math|f> is <math|1>-times
        differentiable at <math|x>. So we conclude that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then as
        <math|\<pi\><rsub|i>\<circ\>f> is <math|<around*|(|n+1|)>>-times
        differentiable it follows form [theorem: <reference|diff
        D^f=D^(n-1)D^1f>] that there exist a open set <math|V<rsub|i>> with
        <math|x\<in\>V<rsub|i>\<subseteq\>U> such that
        <math|\<forall\>y\<in\>V<rsub|i>> <math|\<pi\><rsub|i>\<circ\>f> is
        <math|1>-times differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V<rsub|i>><around*|(|\<pi\><rsub|i>\<circ\>f|)><rsub|>:U\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by ><around*|(|D<rsub|V<rsub|i>><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)><text|>
        </equation*>

        is <math|n>-times differentiable at <math|x>. Using the locality of
        differentiability [see theorem: <reference|diff higher order
        differentiation is local>] it follows that for
        <math|V=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|j>\<subseteq\>U>\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>
        </equation*>

        \ is <math|n>-times differentiable at <math|x>. Now for\ 

        <\equation>
          <label|eq 16.90.194><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:V\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)><text|><rsub|>
        </equation>

        defined by [see definition: <reference|diff vector functions>]

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>
        </equation*>

        we have for <math|y\<in\>V>, <math|i\<in\><around*|{|1,\<ldots\>,k|}>>
        that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>|)><around*|(|y|)>,\<ldots\>,<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|y|)>>|<cell|=>|<cell|>>>>
        </eqnarray*>

        proving that <math|\<pi\><rsub|i>\<circ\>><math|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>>.
        Hence we have proved that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        we have that <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|n>-times differentiable at <math|x>. As <math|n\<in\>S> it
        follows that\ 

        <\equation>
          <label|eq 16.91.194><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
          is >n<text|-times differentiable at >x
        </equation>

        As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable at
        <math|y\<in\>V> it follows that <math|\<pi\><rsub|i>\<circ\>f> is
        Frèchet diffferentiable at <math|y>, hence using [theorem:
        <reference|diff differential of a vector valued function>] <math|f>
        is Frèchet differentiable at <math|y> and

        <\equation>
          <label|eq 16.92.194>D<rsup|<around*|[|1|]>>f=D
          f<around*|(|y|)>=<around*|(|D<rsup|>
          <around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>
        </equation>

        allowwing use to define\ 

        <\equation*>
          D<rsup|<around*|[|1|]>> f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
          by ><around*|(|D f|)><around*|(|y|)>=D f<around*|(|y|)>
        </equation*>

        Using the <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have that for
        <math|y\<in\>V>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\>*<around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.92.194>>>>|<cell|*>>|<row|<cell|D
          <rsup|<around*|[|1|]>>f<around*|(|y|)>>|<cell|>|<cell|>>|<row|<cell|<around*|(|D
          <rsup|<around*|[|1|]>>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>> f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation*>

        As <math|><math|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|n>-times differentiable at <math|x> it follows that
        <math|D<rsup|<around*|[|1|]>>f> is <math|n>-times differentiable at
        <math|x>. Hence using [theorem: <reference|diff D^f=D^(n-1)D^1f>] it
        follows that\ 

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable >
        </equation*>

        proving that

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  We can use a similar proof for differential classes.

  \;

  <\theorem>
    <label|diff higher order differentiation classes>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>U>
    and <math|f:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    then we have\ 

    <\equation*>
      f<text| is >of class<text| >C<rsup|n>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,k|}><text| we have
      >\<pi\><rsub|i>\<circ\>f<text| is of class >C<rsup|n>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [example: <reference|continuity norm
      of projection operator>] it follows that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<in\>L<around*|(|X,Y<rsub|i>|)>>. So, as <math|f>
      is of class <math|C<rsup|n>>, it follows from [lemma: <reference|lemma
      16.97.193>] that <math|\<pi\><rsub|1>\<circ\>f> is of class
      <math|C<rsup|n>>.

      <item*|<math|\<Leftarrow\>>>We have two cases to consider for
      <math|n\<in\>\<bbb-N\><rsub|0>>:

      <\description>
        <item*|<math|n=0>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is of class <math|C<rsup|0>> it
        follows that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|f> is continuous. Hence using [theorem: <reference|continuity
        product and continuous functions>] we conclude that <math|f> is
        continuous or in other words that <math|f> is of class
        <math|C<rsup|0>>.

        <item*|<math|1\<less\>n>>We use induction to prove this for
        <math|n\<in\>\<bbb-N\>>, so define\ 

        <\equation*>
          S=<around*|{|n\<in\>\<bbb-N\>\|<text|Let
          <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
          be a normed space, ><around*|{|<around*|\<langle\>|Y<rsub|i>|\<rangle\>>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
          be normed spaces , <math|U<text| a open set in >X<text| and
          >f:U\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|j><text|
          a function such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
          >\<pi\><rsub|i>\<circ\>f<text| is of class >C<rsup|n><text| then
          >f<text| is o class >C<rsup|n>>}>|\<nobracket\>>
        </equation*>

        then we have:

        <\description>
          <item*|<math|1\<in\>S>>Let <math|i\<in\><around*|{|1,.\<ldots\>,k|}>>
          then as <math|\<pi\><rsub|i>\<circ\>f> is of class <math|C<rsup|1>>
          it follows that <math|\<forall\>x\<in\>U>
          <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable at
          <math|x> [hence Frèchet differentiable at <math|x>] and the
          function\ 

          <\equation>
            <label|eq 16.93.194>D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
            by ><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>=D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>
          </equation>

          is continuous. By [theorem: <reference|diff differential of a
          vector valued function>] it follows then that for <math|x\<in\>U>
          <math|f> is Frèchet differentiable at <math|x> and <math|D
          f<around*|(|x|)>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)><rsup|>|)><rsub|\<ast\>>>,
          hence <math|f> is <math|1>-times differentiable at <math|x> and\ 

          <\equation>
            <label|eq 16.94.194>D<rsup|<around*|[|1|]>>f<around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)><rsup|>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>
          </equation>

          Take now the following function\ 

          <\equation>
            <label|eq 16.95.194>D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
            defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>
          </equation>

          Using the <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
          defined in [lemma: <reference|lemma 16.98.194>] we have that for
          <math|x\<in\>U> that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 16.94.194>]>>>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 16.95.194>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>|<cell|>|<cell|>>>>
          </eqnarray*>

          proving that\ 

          <\equation>
            <label|eq 16.96.194>D<rsup|<around*|[|1|]>>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
          </equation>

          Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
          <math|\<forall\>x\<in\>U> we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>|)><around*|(|x|)>,\<ldots\>,<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><around*|(|x|)>|)><rsub|>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|x|)>>|<cell|=>|<cell|>>>>
          </eqnarray*>

          proving that

          <\equation*>
            \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>.
          </equation*>

          Hence as <math|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
          is continuous it follows from [theorem: <reference|continuity
          product and continuous functions>] that

          <\equation*>
            <around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
          </equation*>

          is continuous. Using the fact that <math|\<cal-K\>> is also
          continuous [see lemma: <reference|lemma 16.98.194>] we conclude
          from [eq: <reference|eq 16.96.194>] that
          <math|D<rsup|<around*|[|1|]>>f> is continuous. Hence <math|f> is of
          class <math|C<rsup|1>> so that\ 

          <\equation*>
            1\<in\>S
          </equation*>

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
          <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then as
          <math|\<pi\><rsub|1>\<circ\>f> is of class <math|C<rsup|n+1>> it
          follows that <math|\<forall\>x\<in\>U> we have that <math|f> is
          <math|<around*|(|n+1|)>>-times differentiable at <math|x> and that
          the function

          <\equation*>
            D<rsup|<around*|[|n+1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>:U\<rightarrow\>L<rsub|n+1><around*|(|X;Y<rsub|i>|)><text|
            by ><around*|(|D<rsup|<around*|[|n+1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|n+1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>
          </equation*>

          is continuous. As <math|\<pi\><rsub|i>\<circ\>f> is of class
          <math|C<rsup|n+1>> it follows from [theorem: <reference|diff f is
          of class C^n if D^1f u=is of class C^n-1>] that
          <math|\<forall\>x\<in\>U> <math|f> is <math|1>-times differentiable
          at <math|x> [hence Frèchet differentiable at <math|x>] and that the
          function\ 

          <\equation*>
            D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
            by ><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>=D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>
          </equation*>

          is of class <math|C<rsup|n>>. Consider now the function [see
          definition: <reference|diff vector functions>] \ 

          <\equation*>
            <around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>
          </equation*>

          defined by\ 

          <\equation*>
            <around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)>
          </equation*>

          then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
          that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i>*<around*|(|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>|)><around*|(|x|)>,\<ldots\>,<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><around*|(|x|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|x|)>>|<cell|>|<cell|>>>>
          </eqnarray*>

          proving that

          <\equation*>
            \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)>
          </equation*>

          so that <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
          is of class <math|C<rsup|n>>. As <math|n\<in\>S> it follows that\ 

          <\equation>
            <label|eq 16.97.195><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
            is of class >C<rsup|n>
          </equation>

          Let <math|x\<in\>U> then as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>
          <around*|(|\<pi\><rsub|i>\<circ\>f|)>> is Frèchet differentiable at
          <math|x> it follows from [theorem: <reference|diff differential of
          a vector valued function>] that <math|f> is Frèchet differentiable
          at <math|x> and <math|D f<around*|(|x|)>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>>>.
          Translating this to <math|1>-times differentiability we have that
          <math|f> is <math|1>-times differentiable at <math|x> and that

          <\equation>
            <label|eq 16.97.194>D<rsup|<around*|[|1|]>>f<around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>
          </equation>

          Consider the function

          <\equation>
            <label|eq 16.98.194>D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
            defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>
          </equation>

          Using the <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
          defined in [lemma: <reference|lemma 16.98.194>] we have that for
          <math|x\<in\>U> that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 16.97.194>]>>>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 16.98.194>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>|<cell|>|<cell|>>>>
          </eqnarray*>

          proving that\ 

          <\equation>
            <label|eq 16.99.194>D<rsup|<around*|[|1|]>>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
          </equation>

          As by [eq: <reference|eq 16.97.195>]
          <math|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
          is of class <math|C<rsup|n>> we can use [lemma: <reference|lemma
          16.97.193>] on the above proving that
          <math|D<rsup|<around*|[|1|]>>f> is of class <math|C<rsup|n>>.
          Applying then \ [theorem: <reference|diff f is of class C^n if D^1f
          u=is of class C^n-1>] results in the fact that <math|f> is of class
          <math|C<rsup|n+1>>. Hence\ 

          <\equation*>
            n+1\<in\>S
          </equation*>
        </description>
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

    is <math|\<infty\>>-times differentiable on <math|X>. Further using
    [theorem: <reference|diff C-infinity condition>]
    <math|<around*|(|\<circ\>|)>> is of class <math|C<rsup|\<infty\>>>.
  </lemma>

  <\proof>
    Using [theorem: <reference|continuity composition is multilinear>] we
    have that <math|<around*|(|\<circ\>|)>\<in\>L<around*|(|<around*|(|Y,Z|)>,L<around*|(|X,Y|)>;L<around*|(|X,Z|)>|)>>
    so that by [lemma: <reference|diff bilinear mappings are infinite times
    differentiable>] <math|<around*|(|\<circ\>|)>> is <math|\<infty\>>-times
    differentiable at every <math|x\<in\>X>.
  </proof>

  <\theorem>
    <label|diff chain rule higher order><index|chain rule higher order
    differentiation><index|higher order differentiation chain
    rule><dueto|General Chain Rule>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>,
    <math|V> a open set in <math|Y> and <math|f:U\<rightarrow\>Y>,
    <math|g:V\<rightarrow\>Z> functions such that
    <math|f<around*|(|U|)>\<subseteq\>V>, <math|f> is <math|n>-times
    differentiable on <math|x> and <math|g> is <math|n>-times differentiable
    on <math|f<around*|(|x|)>> then\ 

    <\equation*>
      g\<circ\>f:U\<rightarrow\>Y<text| is >n<text|-times differentiable at
      >x
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction on <math|n>, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
      are normed spaces, >U<text| a open set in <math|X>, >x\<in\>U<text|,
      >V<text| a open set in >Y<text|, >f:U\<rightarrow\>Y<text|,
      >g:V\<rightarrow\>Z<text| such that
      \ >f<around*|(|U|)>\<subseteq\>V<text|, >f<text| is >n<text|-times
      differentiable at >x<text| and >g<text| is >n<text|-times
      differentiable at >f<around*|(|x|)><text| then >g\<circ\>f<text| is
      >n<text|-times differentiable at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>As <math|f> is <math|1>-times differentiable at
      <math|x> and <math|g> is <math|1>-times differentiable at
      <math|f<around*|(|x|)>> we have by definition that <math|f> is Frèchet
      differentiable at <math|x> and <math|g> is Frèchet differentiable at
      <math|f<around*|(|x|)>>. So using [theorem: <reference|diff chain
      rule>] it follows that <math|g\<circ\>f> is Frèchet differentiable at
      <math|x>. Hence <math|g\<circ\>f> is <math|1>-times differentiable at
      <math|x>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|f> is
      <math|<around*|(|n+1|)>>-times differentiable it follows from [theorem:
      <reference|diff n-times and m-times differentiability>] that

      <\equation>
        <label|eq 16.101.194>f<text| is >n<text|-times differentiable at >x
      </equation>

      and using [theorem: <reference|diff D^f=D^(n-1)D^1f>] that there exist
      a open <math|V<rsub|1>> in <math|X> with
      <math|x\<in\>V<rsub|1>\<subseteq\>U> such that
      <math|\<forall\>y\<in\>V> we have that <math|f> is <math|1>-times
      differentiable at <math|y> and that the function

      <\equation*>
        D<rsub|V<rsub|1>><rsup|<around*|[|1|]>>f:V<rsub|1>\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by ><around*|(|D<rsub|V<rsub|1>><rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>\<equallim\><rsub|def>D
        f<around*|(|x|)><text| is >n<text|-times differentiable at >x
      </equation*>

      Likewise, as <math|g> is <math|<around*|(|n+1|)>>-times differentiable
      at <math|f<around*|(|x|)>> there exist a open set <math|V<rsub|2>> with
      <math|f<around*|(|x|)>\<in\>V<rsub|2>\<subseteq\>V> such that
      <math|\<forall\>z\<in\>V<rsub|2>> we have that <math|g> is
      <math|1>-times differentiable at <math|z> and that the function\ 

      <\equation>
        <label|eq 16.102.194>D<rsup|<around*|[|1|]>>g:V<rsub|2>\<rightarrow\>L<around*|(|Y,Z|)><text|
        by ><around*|(|D<rsup|<around*|[|1|]>>g|)><around*|(|z|)>=D<rsup|<around*|[|1|]>>g<around*|(|x|)>\<equallim\><rsub|def>D
        g<around*|(|z|)><text| is >n<text|-times differentiable at >x
      </equation>

      As <math|f> is Frèchet differentiable at <math|f<around*|(|x|)>>
      [because <math|f> is <math|1>-times differentiable] it is by [theorem:
      <reference|diff differentiable function is continuous>] continuous at
      <math|f<around*|(|x|)>>, hence as <math|f<around*|(|x|)>\<in\>V<rsub|2>>
      there exist a open <math|U<rprime|'>> with <math|x\<in\>U<rprime|'>>
      such that <math|f<around*|(|U<rprime|'>|)>\<subseteq\>V<rsub|2>>. Take
      <math|W=V<rsub|1><big|cap>U<rprime|'>> then
      <math|x\<in\>W\<subseteq\>U>and <math|f<around*|(|W|)>\<subseteq\>V<rsub|2>>.
      \ Then for the function

      <\equation*>
        D<rsup|<around*|[|1|]>>f:W\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>=D
        f<around*|(|y|)>
      </equation*>

      we have that <math|D<rsup|<around*|[|1|]>>f=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|1>>|)><rsub|\|W>>
      so that by [theorem: <reference|diff higher order differentiation is
      local>]\ 

      <\equation>
        <label|eq 16.103.194>D<rsup|<around*|[|1|]>>f<text| is >n<text|-times
        differentiable at >x
      </equation>

      As <math|\<forall\>y\<in\>W> <math|y\<in\>V<rsub|1>>,
      <math|f<around*|(|y|)>\<in\>f<around*|(|W|)>\<subseteq\>V<rsub|2>>,
      <math|f> is <math|1>-times differentiable at <math|y> [hence Frèchet
      differentiable at <math|y>] and <math|g> is <math|1>-times
      differentiable at <math|y> [hence Frèchet differentiable at
      <math|f<around*|(|y|)>>] it follows from [theorem: <reference|diff
      chain rule>] that <math|g\<circ\>f> is Frèchet differentiable at
      <math|y> [hence <math|1>-times differentiable at <math|y>] with

      <\equation*>
        D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|y|)>=D<around*|(|g\<circ\>f|)><around*|(|y|)>=D
        g<around*|(|f<around*|(|y|)>|)>\<circ\>D
        f<around*|(|y|)>=D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|y|)>|)>\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|y|)>
      </equation*>

      This allows us to define\ 

      <\equation>
        <label|eq 16.104.194>D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>:W\<rightarrow\>L<around*|(|X,Z|)><text|
        by ><around*|(|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|y|)>|)>\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|y|)>
      </equation>

      As <math|f<around*|(|W|)>\<subseteq\>V<rsub|2>> we can define

      <\equation*>
        h:W\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
        by >h<around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|y|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|y|)>|)>
      </equation*>

      then we have for <math|y\<in\>W> that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|y|)>|)>=\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|y|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|y|)>|)>|)>=D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|y|)>|)>=<around*|(|<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f|)><around*|(|y|)>>>>>
      </eqnarray*>

      and

      <\equation*>
        <around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|y|)>=\<pi\><rsub|2><around*|(|h<around*|(|y|)>|)>=\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|y|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|y|)>|)>|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>=<around*|(|<around*|(|D<rsup|<around*|[|1|]>>|\<nobracket\>>f|)><around*|(|y|)>
      </equation*>

      proving that\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f<text|
        and >\<pi\><rsub|2>\<circ\>h=D<rsup|<around*|[|1|]>>f
      </equation*>

      As by [eqs: <reference|eq 16.101.194>,<reference|eq
      16.102.194>,<reference|eq 16.103.194>] <math|f>,
      <math|D<rsup|<around*|[|1|]>>g>, <math|D<rsup|<around*|[|1|]>>f> are
      <math|n>-times differentiable at <math|x> and <math|n\<in\>S> it
      follows that <math|\<pi\><rsub|1>\<circ\>h> and
      <math|\<pi\><rsub|2>\<circ\>h> are <math|n>-times differentiable at
      <math|x>. Using then [theorem: <reference|diff higher order
      differentiation and vector functions>] proves that\ 

      <\equation>
        <label|eq 16.105.194>h<text| is <math|n>-times differentiable at >x
      </equation>

      Let <math|y\<in\>W> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\><around*|(|<around*|(|D<rsup|1>g<around*|(|f<around*|(|y|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|y|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>g<around*|(|f<around*|(|y|)>|)>\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.104.194>]>>>|<cell|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|y|)>>>>>
      </eqnarray*>

      proving that <math|><math|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h>.
      As by [lemma: <reference|lemma 16.101.194>]
      <math|<around*|(|\<circ\>|)>> is <math|n>-times differentiable on
      <math|><math|L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>> and
      <math|h> is <math|n>-times differentiable on <math|x> it follows that
      <math|<around*|(|\<circ\>|)>\<circ\>h> is <math|n>-times differentiable
      at <math|x>. Hence, as <math|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h>,
      it follows that <math|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>>
      is <math|n>-times differentiable at <math|x>. So using [theorem:
      <reference|diff D^f=D^(n-1)D^1f>] it follows that <math|g\<circ\>f> is
      <math|<around*|(|n+1|)>>-times differentiable at <math|x> proving that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  We can use the same proof technique as above to prove that the composition
  of functions of class <math|C<rsup|n>> is of class <math|C<rsup|n>>.

  <\theorem>
    <label|diff chain rule higher order class>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>,
    <math|V> a open set in <math|Y> and <math|f:U\<rightarrow\>Y>,
    <math|g:V\<rightarrow\>Z> functions such that
    <math|f<around*|(|U|)>\<subseteq\>V>, <math|f> is of class
    <math|C<rsup|n>> and <math|g> is of class <math|C<rsup|n>> then
    <math|g\<circ\>f> is of class <math|C<rsup|n>>.
  </theorem>

  <\proof>
    For <math|n> we have to consider the following cases:

    <\description>
      <item*|<math|n=0>>Then as <math|f,g> are of class <math|C<rsup|0>>
      <math|f,g> are continuous functions it follows from [theorem:
      <reference|continuity composition>] that <math|g\<circ\>f> is a
      continuous function, hence <math|g\<circ\>f> is of class
      <math|C<rsup|0>>.

      <item*|<math|1\<less\>n>>We prove this by induction so define

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
        are normed spaces, >U<text| a open set in <math|X>, >x\<in\>U<text|,
        >V<text| a open set in >Y<text|, >f:U\<rightarrow\>Y<text|,
        >g:V\<rightarrow\>Z<text| such that
        \ >f<around*|(|U|)>\<subseteq\>V<text| and >f,g<text| are of class
        >C<rsup|n><text| then >g\<circ\>f<text| is of class >C<rsup|n>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|f> is of class <math|C<rsup|1>> we
        have that <math|\<forall\>x\<in\>U> <math|f> is <math|1>-times
        differentiable at <math|x> [hence Frechet differentiable at <math|x>]
        and the function\ 

        <\equation>
          <label|eq 16.106.194>D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|X,Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
          f<around*|(|x|)><text| is continuous>
        </equation>

        As <math|g> is of class <math|C<rsup|1>> we have that
        <math|\<forall\>y\<in\>V> <math|g> is <math|1>-times differentiable
        at <math|y> [hence Frèchet differentiable at <math|y>[ and the
        function\ 

        <\equation>
          <label|eq 16.107.194>D<rsup|<around*|[|1|]>>g:V\<rightarrow\>L<around*|(|Y,Z|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>g|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>g<around*|(|x|)>=D
          g<around*|(|x|)><text| is continuous>
        </equation>

        Using the chain rule [see theorem: <reference|diff chain rule>] it
        follows that <math|g\<circ\>f> is Frèchet differentiable at <math|x>
        and <math|D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
        g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>. Hence
        <math|g\<circ\>f> is <math|1>-times differentiable at <math|x> and

        <\equation>
          <label|eq 16.108.194>D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|x|)>=<around*|(||\<nobracket\>>D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
          g<around*|(|f<around*|(|x|)>|)>\<circ\>D
          f<around*|(|x|)>=D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>
        </equation>

        Define the following function

        <\equation>
          <label|eq 16.109.194>D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Z|)><text|
          by ><around*|(|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|x|)><rsup|>
        </equation>

        Define the function

        <\equation*>
          h:U\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
          by >h<around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)>
        </equation*>

        then we have for <math|x\<in\>U> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>g|)><around*|(|f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.110.194>\<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f<text|
          and >\<pi\><rsub|2>\<circ\>h=D<rsup|<around*|[|1|]>>f
        </equation>

        Now as <math|\<forall\>x\<in\>U> <math|f> is Frèchet differentiable
        at <math|x>, it follows from [theorem: <reference|diff differentiable
        function is continuous>] that <math|f> is a continuous function,
        further by [eq: <reference|eq 16.107.194>]
        <math|D<rsup|<around*|[|1|]>>g> is continuous, so using [theorem:
        <reference|continuity composition>] <math|\<pi\><rsub|1>\<circ\>h> is
        continuous. As by [eq: <reference|eq 16.106.194>]
        <math|D<rsup|<around*|[|1|]>>f> is also continuous it follows from
        [theorem: <reference|continuity product and continuous functions>]
        that\ 

        <\equation>
          <label|eq 16.111.194>h<text| is continuous>
        </equation>

        Now given <math|x\<in\>U> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.108.194>]>>>|<cell|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.112.194><around*|(|\<circ\>|)>\<circ\>h=D<rsup|<around*|[|1|\<nobracket\>>><around*|(|g\<circ\>f|)>
        </equation>

        By [lemma: <reference|lemma 16.101.194>]
        <math|<around*|(|\<circ\>|)>> is of class <math|C<rsup|0>> hence
        continuous, by [eq: <reference|eq 16.111.194>] <math|h> is continuous
        so that <math|<around*|(|\<circ\>|)>\<circ\>h> is continuous or using
        the above that <math|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>>
        is continuous, hence <math|g\<circ\>f> is of class <math|C<rsup|1>>.
        This prove that <math|1\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|f> is of
        class <math|C<rsup|n+1>> it follows from [theorem: <reference|diff
        C^n and C^m>] that\ 

        <\equation>
          <label|eq 16.113.194>f<text| is of class >C<rsup|n>
        </equation>

        Further using [theorem: <reference|diff f is of class C^n if D^1f
        u=is of class C^n-1>] it follows that <math|\<forall\>x\<in\>U>
        <math|f> is <math|1>-times differentiable at <math|x> [hwnxw Frèchet
        differentiable at <math|x>] and that\ 

        <\equation>
          <label|eq 16.114.194>D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|X,Y|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D
          f<around*|(|x|)><text| is of class >C<rsup|<around*|[|1|]>>
        </equation>

        As <math|g> is of class <math|C<rsup|n+1>> we can use \ [theorem:
        <reference|diff C^n and C^m>] again so that <math|\<forall\>x\<in\>V>
        <math|g> is <math|1>-times differentiable at <math|x> and that\ 

        <\equation>
          <label|eq 16.115.194>D<rsup|<around*|[|1|]>>g:V\<rightarrow\>L<around*|(|Y,Z|)><text|
          defined by ><around*|(|D<rsup|<around*|[|1|]>>g|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>g<around*|(|y|)>=D
          g<around*|(|y|)><text| is of class >C<rsup|n>
        </equation>

        Let <math|x\<in\>U> then <math|f<around*|(|x|)>\<in\>f<around*|(|U|)>\<subseteq\>V>,
        as <math|f> is Frèchet differentiable at <math|x> and <math|g> is
        Frèchet differentiable at <math|f<around*|(|x|)>> it follows from the
        chain rule [theorem: <reference|diff chain rule>] that
        <math|g\<circ\>f> is Frèchet differentiable at <math|x> and that
        <math|D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
        g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>. Hence
        <math|g\<circ\>f> is <math|1>-times differentiable at <math|x> and\ 

        <\equation>
          <label|eq 16.116.194>D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>
          g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>
        </equation>

        Consider now the function\ 

        <\equation>
          <label|eq 16.117.194>D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Z|)><text|
          defined by >*<around*|(|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|x|)>
        </equation>

        Define the function\ 

        <\equation*>
          h:U\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
          defined by >h<around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)>
        </equation*>

        then we have for <math|x\<in\>U>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        which proves that\ 

        <\equation>
          <label|eq 16.118.194>\<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f<text|
          and >\<pi\><rsub|2>\<circ\>h=D<rsup|<around*|[|1|]>>f
        </equation>

        By [eqs: <reference|eq 16.115.194>, <reference|eq 16.113.194>] we
        have that <math|<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f>,
        <math|f> are of class <math|C<rsup|n>> so, as <math|n\<in\>S> it
        follows that <math|\<pi\><rsub|1>\<circ\>h> is of class
        <math|C<rsup|n>>, further by [eq: <reference|eq 16.114.194>]
        <math|\<pi\><rsub|2>\<circ\>h> is of class <math|C<rsup|n>>. Using
        then [lemma: <reference|diff higher order differentiation classes>]
        it follows that\ 

        <\equation>
          <label|eq 16.119.194>h<text| is of class <math|C<rsup|n>>>
        </equation>

        Let <math|x\<in\>U> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|<around*|(|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>,D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.116.194>]>>>|<cell|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h
        </equation*>

        Now using [lemma: <reference|lemma 16.101.194>]
        <math|<around*|(|\<circ\>|)>> is of class <math|C<rsup|n>> and by
        [eq: <reference|eq 16.119.194>] <math|h> is of class
        <math|C<rsup|n>>, hence as <math|n\<in\>S> it follows that
        <math|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>> is of class
        <math|C<rsup|n>>. Using [theorem: <reference|diff f is of class C^n
        if D^1f u=is of class C^n-1>] it follows then that <math|g\<circ\>f>
        i of class <math|C<rsup|n+1>> which proves that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|diff higher order differential of a product>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers, <math|U> a open set in
    <math|X>, <math|x\<in\>U> and <math|f:U\<rightarrow\>X>,
    <math|g:U\<rightarrow\>X> functions that are <math|n>-times
    differentiable at <math|x> then\ 

    <\equation*>
      f\<cdot\>g:U\<rightarrow\>\<bbb-K\>
    </equation*>

    is <math|n>-times differentiable at <math|x>.
  </theorem>

  <\proof>
    Define

    <\equation*>
      \<varphi\>:U\<rightarrow\>\<bbb-K\>\<cdot\>\<bbb-K\><text| by
      >\<varphi\><around*|(|x|)>=<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>
    </equation*>

    then we have for <math|x\<in\>U> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<pi\><rsub|1>\<circ\>\<varphi\>=f<text| and
      >\<pi\><rsub|2>\<circ\>\<varphi\>=g
    </equation*>

    proving by [theorem: <reference|diff higher order differentiation and
    vector functions>] that\ 

    <\equation*>
      \<varphi\><text| is >n<text|-times differentiable at >x
    </equation*>

    Consider the function

    <\equation*>
      <around*|(|\<cdot\>|)>:\<bbb-K\>\<times\>\<bbb-K\>\<rightarrow\>\<bbb-K\><text|
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

    Let <math|r,s\<in\>\<bbb-K\>> then\ 

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

  <\theorem>
    <label|diff higher order differential class of a product>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real (complex) numbers, <math|U> a open set in
    <math|X> and <math|f:U\<rightarrow\>X>, <math|g:U\<rightarrow\>X>
    functions that are of class <math|C<rsup|n>>.

    <\equation*>
      f\<cdot\>g:U\<rightarrow\>\<bbb-K\>
    </equation*>

    is of class <math|C<rsup|n>>.
  </theorem>

  <\proof>
    Define

    <\equation*>
      \<varphi\>:U\<rightarrow\>\<bbb-K\>\<cdot\>\<bbb-K\><text| by
      >\<varphi\><around*|(|x|)>=<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>
    </equation*>

    then we have for <math|x\<in\>U> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<pi\><rsub|1>\<circ\>\<varphi\>=f<text| and
      >\<pi\><rsub|2>\<circ\>\<varphi\>=g
    </equation*>

    proving by [theorem: <reference|diff higher order differentiation
    classes>] that\ 

    <\equation*>
      \<varphi\><text| is of class >C<rsup|n>
    </equation*>

    Consider the function

    <\equation*>
      <around*|(|\<cdot\>|)>:\<bbb-K\>\<times\>\<bbb-K\>\<rightarrow\>\<bbb-K\><text|
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
      <around*|(|\<cdot\>|)><text| is of class >C<rsup|\<infty\>>
    </equation*>

    Let <math|r,s\<in\>\<bbb-K\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<cdot\>|)><around*|(|\<varphi\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<cdot\>|)><around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<cdot\>g|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>=f\<cdot\>g>.
    So using the generalized chain rule [theorem: <reference|diff chain rule
    higher order class>] it follows that\ 

    <\equation*>
      f\<cdot\>g<text| is of class >C<rsup|n>
    </equation*>
  </proof>

  <section|Intermediate value and main value theorems>

  <subsection|Derivates extremums, concavity, and convexity>

  <\definition>
    <label|diff minimum maximum><index|local weak minimum><index|local weak
    maximum><index|local extremum>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of real numbers, <math|U> a open set in <math|X> and
    <math|f:U\<rightarrow\>\<bbb-R\>> then\ 

    <\enumerate>
      <item><math|x\<in\>U> is a <with|font-series|bold|local weak minimum of
      <math|f> >if there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such
      that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>U>
      and <math|\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
      <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>.

      <item><math|x\<in\>U> s a <with|font-series|bold|local weak maximum of
      <math|f> >if there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such
      that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>U>
      and <math|\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
      <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>.
    </enumerate>

    A <with|font-series|bold|local weak minimum> or
    <with|font-series|bold|local weak maximum> of <math|f> is called a
    <with|font-series|bold|local extremum>.
  </definition>

  <\theorem>
    <label|diff derivate and local extremum>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|U> a open set in <math|\<bbb-R\>> and
    <math|f:U\<rightarrow\>\<bbb-R\>> be a function with a local extremum
    then if <math|f> has a derivate at <math|x> then
    <math|f<rprime|'><around*|(|x|)>=0>.
  </theorem>

  <\proof>
    If <math|x> is a local extremum of <math|f> then we have either:

    <\description>
      <item*|<math|x<text|> >is a local weak minimum>Then there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|<around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U> and
      <math|\<forall\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> we have
      <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>. Assume that
      <math|f<rprime|'><around*|(|x|)>\<neq\>0> then we have either:

      <\description>
        <item*|<math|0\<less\>f<rprime|'><around*|(|x|)>>>As
        <math|f<rprime|'><around*|(|x|)>\<in\>\<bbb-R\><rsup|+>> there exist
        a <math|\<delta\><rsub|f<rprime|'><around*|(|x|)>>\<in\>\<bbb-R\><rsup|+>>
        such that we have\ 

        <\equation>
          <label|eq 16.123.195>\<forall\>h\<in\>U<rsub|x><text| with
          >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|f<rprime|'><around*|(|x|)>><text|
          we have ><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|z|)>
        </equation>

        Let <math|k=<frac|min<around*|(|\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>|)>|2>>
        then <math|0\<less\>k=<around*|\||k|\|>\<less\>\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>>
        so that <math|x-\<delta\>\<less\>x-k\<less\>x+\<delta\>> or
        <math|x-k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> so that

        <\equation>
          <label|eq 16.124.195>f<around*|(|x|)>\<leqslant\>f<around*|(|x-k|)>\<Rightarrow\>0\<leqslant\>f<around*|(|x-k|)>-f<around*|(|x|)>\<Rightarrow\>0\<leqslant\>-<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-h>
        </equation>

        As <math|x-k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>
        we have that <math|-k\<in\>U<rsub|x>> so that by [eq: <reference|eq
        16.123.195>] that\ 

        <\equation*>
          <around*|\||<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|x|)>
        </equation*>

        So that by [eq: <reference|eq 16.124.195>]

        <\equation*>
          f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-h>\<leqslant\><around*|\||<frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|x|)>
        </equation*>

        leading to the contradiction <math|f<rprime|'><around*|(|x|)>\<less\>f<rprime|'><around*|(|x|)>>.\ 

        <item*|<math|f<rprime|'><around*|(|x|)>\<less\>0>>As
        <math|-f<rprime|'><around*|(|x|)>\<in\>\<bbb-R\><rsup|+>> there exist
        <math|\<delta\><rsub|-f<rprime|'><around*|(|x|)>>\<in\>\<bbb-R\><rsup|+>>
        such that we have

        <\equation>
          <label|eq 16.125.195>\<forall\>h\<in\>U<rsub|x><text| with
          >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|-f<rprime|'><around*|(|x|)>>
          we have <around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation>

        Let <math|k=<frac|min<around*|(|\<delta\>,\<delta\><rsub|-f<rprime|'><around*|(|x|)>>|)>|2>>
        then <math|0\<less\>k=<around*|\||k|\|>\<less\>\<delta\>,\<delta\><rsub|-f<rprime|'><around*|(|x|)>>>
        so that <math|x-\<delta\>\<less\>x+k\<less\>x+\<delta\>> or
        <math|x+k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> so that\ 

        <\equation>
          <label|eq 16.126.195>f<around*|(|x|)>\<leqslant\>f<around*|(|x+h|)>\<Rightarrow\>0\<leqslant\>f<around*|(|x+h|)>-f<around*|(|x|)>\<Rightarrow\>0\<leqslant\><frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>
        </equation>

        As <math|x+k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>
        we have that <math|k\<in\>U<rsub|x>> so that by [eq: <reference|eq
        16.125.195>]\ 

        <\equation*>
          <around*|\||<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation*>

        Hence using [eq: <reference|eq 16.126.195>]\ 

        <\equation*>
          -f<rprime|'><around*|(|x|)>\<leqslant\>-f<rprime|'><around*|(|x|)>+<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>\<leqslant\><around*|\||<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation*>

        leading to the contradiction <math|-f<rprime|'><around*|(|x|)>\<less\>-f<rprime|'><around*|(|x|)>>.
      </description>

      <item*|<math|x> is a local weak maximum>Then there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      \ <math|<around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U> and
      <math|\<forall\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> we have
      <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>. Assume that
      <math|f<rprime|'><around*|(|x|)>\<neq\>0> then we have either:

      <\description>
        <item*|<math|0\<less\>f<rprime|'><around*|(|x|)>>>As
        <math|f<rprime|'><around*|(|x|)>\<in\>\<bbb-R\><rsup|+>> there exist
        a <math|\<delta\><rsub|f<rprime|'><around*|(|x|)>>\<in\>\<bbb-R\><rsup|+>>
        such that\ 

        <\equation>
          <label|eq 16.127.195>\<forall\>h\<in\>U<rsub|x><text| with
          >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|f<rprime|'><around*|(|x|)>><text|
          we have ><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>f<rprime|'><around*|(|x|)>
        </equation>

        Let <math|k=<frac|min<around*|(|\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>|)>|2>>
        then <math|0\<less\>k=<around*|\||k|\|>\<less\>\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>>
        so that <math|x-\<delta\>\<less\>x+k\<less\>x+\<delta\>> or
        <math|x+k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> so that\ 

        <\equation>
          <label|eq 16.128.195>f<around*|(|x+k|)>\<leqslant\>f<around*|(|x|)>\<Rightarrow\>0\<leqslant\>-<around*|(|f<around*|(|x+k|)>-f<around*|(|x|)>|)>\<Rightarrow\>0\<leqslant\>-<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>
        </equation>

        As <math|x+k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>
        we have that <math|-k\<in\>U<rsub|x>> so that by [eq: <reference|eq
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
          <label|eq 16.129.195>\<forall\>h\<in\>U<rsub|x><text| with
          >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|-f<rprime|'><around*|(|x|)>><text|
          so that ><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>-f<rprime|'><around*|(|x|)>
        </equation>

        Let <math|k=<frac|min<around*|(|\<delta\>,\<delta\><rsub|f<rprime|'><around*|(|x|)>>|)>|2>>
        then <math|0\<less\>k=<around*|\||k|\|>\<less\>\<delta\>,\<delta\><rsub|-f<rprime|'><around*|(|x|)>>>
        so that <math|x-\<delta\>\<less\>x-k\<less\>x+\<delta\>> or
        <math|x-k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> so that

        <\equation>
          <label|eq 16.130.195>f<around*|(|x-k|)>\<leqslant\>f<around*|(|x|)>\<Rightarrow\>0\<leqslant\>-<around*|(|f<around*|(|x-k|)>-f<around*|(|x|)>|)>\<Rightarrow\>0\<leqslant\><frac|f<around*|(|x-k|)>-f<around*|(|x|)>|-k>
        </equation>

        As <math|x-k\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>
        we have that <math|-k\<in\>U<rsub|x>> so that by [eq: <reference|eq
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

      As in all we have a contradiction the assumption is wrong, hence we
      must have that

      <\equation*>
        f<rprime|'><around*|(|x|)>=0.
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|diff Rolle's theorem><dueto|Rolle's theorem>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>
    and <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>> [see
    definition: <reference|continuity continuous function>] such that
    <math|f<around*|(|a|)>=f<around*|(|b|)>> and
    <math|f<rsub|\|<around*|]|a,b|[>>> has a derivate at every
    <math|x\<in\><around*|]|a,b|[>> [or equivalent
    <math|f<rsub|\|<around*|]|a,b|[>>> is Frèchet differentiable at <math|x>]
    then there exist a <math|\<zeta\>\<in\><around*|]|a,b|[>> such that
    <math|f<rsub|\|<around*|]|a,b|[>><rprime|'><around*|(|\<zeta\>|)>=0>
  </theorem>

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
    <math|c\<leqslant\>k\<leqslant\>d>. Hence we have the following cases to
    consider:

    <\description>
      <item*|<math|c=d=k>>Then <math|\<forall\>x\<in\><around*|[|a,b|]>> we
      have <math|f<around*|(|x|)>\<in\><around*|[|k,k|]>=<around*|{|k|}>> so
      that <math|f<rsub|\|<around*|]|a,b|[>>=C<rsub|k>>. As <math|a\<less\>b>
      there exist a <math|\<zeta\>\<in\><around*|]|a,b|[>> and we have for
      <math|\<zeta\>>

      <\equation*>
        f<rprime|'><around*|(|\<zeta\>|)>\<equallim\><rsub|<text|[theorem:
        <reference|diff derivate and frechet differential>]>>D
        C<rsub|k><around*|(|\<zeta\>|)><around*|(|1|)>\<equallim\><rsub|<text|[theorem:
        <reference|diff constant function is
        differentiable>]>>C<rsub|0><around*|(|1|)>=0
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
      which proves that <math|\<zeta\>> is a local weak minimum of
      <math|f<rsub|\|<around*|]|a,b|[>>>. Hence using [theorem:
      <reference|diff derivate and local extremum>] it follows that
      <math|f<rsub|\|<around*|]|a,b|[>><rprime|'><around*|(|\<zeta\>|)>=0>.
      <math|>

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
      <math|f<rsub|\|<around*|]|a,b|[>><rprime|'><around*|(|\<zeta\>|)>=0>.
      <math|>
    </description>
  </proof>

  <\theorem>
    <label|diff Lagrange theorem><dueto|Lagrange's mean value theorem>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>
    and <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>> such
    that <math|f<rsub|\|<around*|]|a,b|[>>> has a derivate at every
    <math|x\<in\><around*|]|a,b|[>> [or equivalent
    <math|f<rsub|\|<around*|]|a,b|[>>> is Frèchet differentiable at <math|x>]
    then there exist a <math|\<xi\>\<in\><around*|]|a,b|[>> such that\ 

    <\equation*>
      f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><rsub|\|<around*|]|a,b|[>><around*|(|\<zeta\>|)>\<cdot\><around*|(|b-a|)>
    </equation*>

    <\proof>
      Define

      <\equation*>
        g:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\><text| by
        >g<around*|(|x|)>=f<around*|(|x|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>|)>
      </equation*>

      then by [corollary: <reference|continuity scalar product (1)>],
      [example: <reference|continuity constant function>] and [theorems:
      <reference|continuity of sum of continuous functions>,
      <reference|continuity and subspace topology (1)>] it follows that

      <\equation*>
        g\<in\>C<around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>.
      </equation*>

      Further using [examples: <reference|diff constant function is
      differentiable>, <reference|diff identity function is differentiable>]
      and [theorems: <reference|diff derivate and frechet differential>,
      <reference|diff derivate operator is linear>, <reference|diff
      differentiability is a local property>] it follows that\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|a,b|[><text| >g<text| is Frèchet
        differentiable at >x
      </equation*>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|g<around*|(|a|)>>|<cell|=>|<cell|f<around*|(|a|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|a-a|)>|)>=f<around*|(|a|)>-f<around*|(|a|)>=0>>|<row|<cell|g<around*|(|b|)>>|<cell|=>|<cell|f<around*|(|b|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|b-a|)>|)>=f<around*|(|b|)>-f<around*|(|a|)>+f<around*|(|b|)>-f<around*|(|a|)>=0>>>>
      </eqnarray*>

      so we can apply Rolle's theorem [theorem: <reference|diff Rolle's
      theorem>] to find a <math|\<zeta\>\<in\><around*|]|a,b|[>> such that

      <\equation*>
        g<rsub|\|<around*|]|a,b|[>><rprime|'><around*|(|\<zeta\>|)>=0
      </equation*>

      As\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|g<rsub|<around*|]|a,b|[>><rprime|'><around*|(|\<zeta\>|)>>|<cell|=>|<cell|f<rsub|\|<around*|]|a,b|[>><rprime|'><around*|(|\<zeta\>|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>>>>>
      </eqnarray*>

      it follows that\ 

      <\equation*>
        f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><rsub|\|<around*|]|a,b|[>><around*|(|\<zeta\>|)>\<cdot\><around*|(|b-a|)>
      </equation*>
    </proof>
  </theorem>

  <\corollary>
    <label|diff increasing decreasing function>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers, <math|U> a open set in <math|\<bbb-R\>>,
    <math|I> a generalized interval [see definition: <reference|interval
    generalized interval>] such that <math|I\<subseteq\>U> and

    <\equation*>
      f:U\<rightarrow\>\<bbb-R\>
    </equation*>

    a function that is differentiable on <math|U> then we have:

    <\enumerate>
      <item>If <math|\<forall\>x\<in\>I> <math|0\<less\>f<rprime|'><around*|(|x|)>>
      then <math|f> is strictly increasing on <math|I>

      <item>If <math|\<forall\>x\<in\>I> <math|0\<leqslant\>f<rprime|'><around*|(|x|)>>
      then <math|f> is increasing on <math|I>.

      <item>If <math|\<forall\>x\<in\>I> <math|f<rprime|'><around*|(|x|)>\<less\>0>
      then <math|f> is strictly decreasing on <math|I>.

      <item>If <math|\<forall\>x\<in\>I> <math|f<rprime|'><around*|(|x|)>\<leqslant\>0>
      then <math|f> is decreasing on <math|I>.
    </enumerate>
  </corollary>

  <\proof>
    \ First as <math|f> is differentiable on <math|U> we have by [theorem:
    <reference|diff differentiable function is continuous>] that <math|f> is
    continuous on <math|U>. Hence if <math|x,y\<in\>I> we have that
    <math|<around*|[|x,y|]>\<subseteq\>I\<subseteq\>U> and by [theorem:
    <reference|continuity and subspace topology (1)>]
    <math|f<rsub|\|<around*|[|x,y|]>>:<around*|[|x,y|]>\<rightarrow\>\<bbb-R\>>
    is a continuous function and by [theorem: <reference|diff
    differentiability is a local property>] it follows that
    <math|f<rsub|\|<around*|]|x,y|[>>> is differentiable on
    <math|<around*|]|x,y|[>>. So we can apply Rolle's theorem [theorem:
    <reference|diff Rolle's theorem>] so that there exist a
    <math|\<zeta\>\<in\><around*|]|x,y|[>> such that

    <\equation>
      <label|eq 16.131.195>f<around*|(|y|)>-f<around*|(|x|)>=f<rprime|'><rsub|\|<around*|]|x,y|[>><around*|(|\<zeta\>|)>\<cdot\><around*|(|y-x|)>\<equallim\><rsub|<text|[theorem:
      <reference|diff derivative is local>]>>f<rprime|'><around*|(|\<zeta\>|)>\<cdot\><around*|(|y-x|)>
    </equation>

    <\enumerate>
      <item>Let <math|x,y\<in\>I> with <math|x\<less\>y>. As
      <math|\<forall\>y\<in\>I> <math|0\<less\>f<rprime|'><around*|(|y|)>>
      and <math|<around*|[|x,y|]>\<subseteq\>I>, we have that
      <math|0\<less\>f<rprime|'><around*|(|\<zeta\>|)>>, so that

      <\equation*>
        f<around*|(|y|)>-f<around*|(|x|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.131.195>]>>f<rprime|'><around*|(|\<zeta\>|)>\<cdot\><around*|(|y-x|)>\<gtr\>0
      </equation*>

      proving that <math|f<around*|(|y|)>\<gtr\>f<around*|(|x|)>>.

      <item>Let <math|x,y\<in\>I> with <math|x\<leqslant\>y>. As
      <math|\<forall\>y\<in\>I> <math|0\<leqslant\>f<rprime|'><around*|(|y|)>>
      and <math|<around*|[|x,y|]>\<subseteq\>I>, we have that
      <math|0\<leqslant\>f<rprime|'><around*|(|\<zeta\>|)>>, so that

      <\equation*>
        f<around*|(|y|)>-f<around*|(|x|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.131.195>]>>f<rprime|'><around*|(|\<zeta\>|)>\<cdot\><around*|(|y-x|)>\<gtr\>0
      </equation*>

      proving that <math|f<around*|(|y|)>\<geqslant\>f<around*|(|x|)>>.

      <item>Let <math|x,y\<in\>I> with <math|x\<less\>y>. As
      <math|\<forall\>y\<in\>I> <math|f<rprime|'><around*|(|y|)>\<less\>0>
      and <math|<around*|[|x,y|]>\<subseteq\>I>, we have that
      <math|f<rprime|'><around*|(|\<zeta\>|)>\<less\>0>, so that

      <\equation*>
        f<around*|(|y|)>-f<around*|(|x|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.131.195>]>>f<rprime|'><around*|(|\<zeta\>|)>\<cdot\><around*|(|y-x|)>\<less\>0
      </equation*>

      proving that <math|f<around*|(|y|)>\<less\>f<around*|(|x|)>>.

      <item>Let <math|x,y\<in\>I> with <math|x\<leqslant\>y>. As
      <math|\<forall\>y\<in\>I> <math|f<rprime|'><around*|(|y|)>\<leqslant\>0>
      and <math|<around*|[|x,y|]>\<subseteq\>I>, we have that
      <math|f<rprime|'><around*|(|\<zeta\>|)>\<leqslant\>0>, so that

      <\equation*>
        f<around*|(|y|)>-f<around*|(|x|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.131.195>]>>f<rprime|'><around*|(|\<zeta\>|)>\<cdot\><around*|(|y-x|)>\<leqslant\>0
      </equation*>

      proving that <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>.
    </enumerate>
  </proof>

  <\definition>
    <label|diff convex concave><index|concave function><index|convex
    function>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be
    the normed space of the real numbers, <math|U> a open set in
    <math|\<bbb-R\>>, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> and
    <math|<around*|[|a,b|]>\<subseteq\>U> and\ 

    <\equation*>
      f:U\<rightarrow\>\<bbb-R\>
    </equation*>

    a function then we say:

    <\enumerate>
      <item><math|f> is concave on <math|<around*|[|a,b|]>> if
      <math|\<forall\>x\<in\><around*|[|a,b|]>> we have

      <\equation*>
        f<around*|(|x|)>\<leqslant\><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>
      </equation*>

      <item><math|f> is convex on <math|<around*|[|a,b|]>> if
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

  <\lemma>
    <label|lemma 16.115.195>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real numbers, <math|U> a open set in
    <math|\<bbb-R\>>, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> and
    <math|<around*|[|a,b|]>\<subseteq\>U> then we have:

    <\enumerate>
      <item>If <math|\<forall\>\<alpha\>,\<beta\>\<in\><around*|[|0,\<ldots\>,\<infty\>|[>>
      with <math|\<alpha\>+\<beta\>=1> <math|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<geqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>
      then <math|f> is convex on <math|<around*|[|a,b|]>>

      <item>If <math|\<forall\>\<alpha\>,\<beta\>\<in\><around*|[|0,\<ldots\>,\<infty\>|[>>
      with <math|\<alpha\>+\<beta\>=1> <math|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<leqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>
      then <math|f> is concave on <math|<around*|[|a,b|]>>
    </enumerate>
  </lemma>

  <\proof>
    \ If <math|x\<in\><around*|[|a,b|]>> then
    <math|0\<leqslant\><frac|x-a|b-a>=\<beta\>,<frac|b-x|b-a>=\<alpha\>> and
    <math|\<alpha\>+\<beta\>=\<beta\>+\<alpha\>=<frac|x-a+b-x|b-a>=1> and

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>|<cell|=>|<cell|<frac|<around*|(|b-x|)>\<cdot\>a+<around*|(|x-a|)>\<cdot\>b|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|b\<cdot\>a-x\<cdot\>a+x\<cdot\>b-a\<cdot\>b|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|x\<cdot\><around*|(|b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|x<eq-number><label|eq
      16.132.195>>>>>
    </eqnarray*>

    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>|)>+f<around*|(|b|)>\<cdot\><around*|(|<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>-a|)>|b-a>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b\<cdot\><around*|(|1-\<beta\>|)>-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)>\<cdot\><around*|(|a\<cdot\><around*|(|\<alpha\>-1|)>+\<beta\>\<cdot\>b|)>|b-a>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\>+\<beta\>=1>>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b\<cdot\>\<alpha\>-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)>\<cdot\><around*|(|a\<cdot\><around*|(|-\<beta\>|)>+\<beta\>\<cdot\>b|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<alpha\>\<cdot\>f<around*|(|a|)>\<cdot\><around*|(|b-a|)>+\<beta\>\<cdot\>f<around*|(|b|)>\<cdot\><around*|(|b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)><eq-number><label|eq
      16.133.195>>>>>
    </eqnarray*>

    We are now ready to finish the prove\ 

    <\enumerate>
      <item>By the hypothesis we have <math|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<geqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>
      so that\ 

      <\equation*>
        f<around*|(|x|)>\<equallim\><rsub|<text|[eq: <reference|eq
        16.132.195>]>>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<geqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.133.195>]>><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>
      </equation*>

      proving that <math|f> is convex.

      <item>By the hypothesis we have <math|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<leqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>
      so that\ 

      <\equation*>
        f<around*|(|x|)>\<equallim\><rsub|<text|[eq: <reference|eq
        16.132.195>]>>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<leqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.133.195>]>><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>
      </equation*>

      proving that <math|f> is concave.
    </enumerate>
  </proof>

  The next theorem shows the relation between the second derivate and
  convexity and concavity.

  <\theorem>
    <label|diff second derivate convex concave>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|U> a open set in <math|X>,
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> and
    <math|<around*|[|a,b|]>\<subseteq\>U>, <math|f:U\<rightarrow\>\<bbb-R\>>
    a function such that <math|f> has a <math|2>-th derivate on <math|U> then
    we have

    <\enumerate>
      <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
      <math|0\<leqslant\>f<rsup|<around*|(|2|)>><around*|(|x|)>> then
      <math|f> is concave on <math|<around*|[|a,b|]>>.

      <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
      <math|f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0> then
      <math|f> is convex on <math|<around*|[|a,b|]>>.
    </enumerate>
  </theorem>

  <\proof>
    Let <math|x\<in\><around*|[|a,b|]>> then we have either

    <\description>
      <item*|<math|x=a>>Then <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|a|)>=f<around*|(|x|)>>.
      As this result is independent of the sign of
      <math|f<rprime|''><around*|(|x|)>> we have\ 

      <\equation*>
        <choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
        if >\<forall\>x\<in\><around*|]|a,b|[>
        f<rprime|''><around*|(|x|)>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
        if <math|\<forall\>x\<in\><around*|]|a,b|[>
        >>f<rprime|''><around*|(|x|)>\<leqslant\>0>>>>>
      </equation*>

      <item*|<math|x=b>>Then <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|b|)>=f<around*|(|x|)>>.
      As this result is independent of the sign of
      <math|f<rprime|''><around*|(|x|)>> we have\ 

      <\equation*>
        <choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
        if >f<rprime|''><around*|(|x|)>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
        if >f<rprime|''><around*|(|x|)>\<leqslant\>0>>>>>
      </equation*>

      <item*|<math|x\<in\><around*|]|a,b|[>>>Then\ 

      <\equation*>
        <frac|x-a|b-a>+<frac|b-x|b-a>=<frac|x-a+b-x|b-a>=1
      </equation*>

      so by multiplying both sides by <math|f<around*|(|x|)>> we have
      <math|f<around*|(|x|)>=<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>+<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>
      so that t\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|b-x|b-a>\<cdot\>f<around*|(|a|)>+<frac|x-a|b-a>\<cdot\>f<around*|(|b|)>-<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>-<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>|b-a>\<cdot\><around*|(|f<around*|(|b|)>-f<around*|(|x|)>|)>-<frac|b-x|b-a>\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|a|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|<around*|(|b-x|)>\<cdot\><around*|(|x-a|)>|b-a>\<cdot\><frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a><around*|[|<frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>|]><label|eq
        14.48.103>>|<cell|>|<cell|<eq-number><label|eq 16.134.195>>>>>
      </eqnarray*>

      As <math|f> has a <math|2>-th derivate on <math|U> it follows from
      [theorem: <reference|diff higher order derivate on a open set>] if
      follows that <math|\<forall\>x\<in\>U> <math|f> is caluclus
      differentiable at <math|x>, so that <math|f> is Frètchet differentiable
      at <math|x> [see theorem: <reference|diff derivate and frechet
      differential>], hence continuous at <math|x> by [theorem:
      <reference|diff differentiability>], proving that <math|f<rprime|'>> is
      continuous. As <math|<around*|[|a,x|]>,<around*|[|x,b|]>\<subseteq\><around*|[|a,b|]>\<subseteq\>U>
      we can apply Lagrange's theorem [theorem: <reference|diff Lagrange
      theorem>] on <math|f> to find <math|y<rsub|1>\<in\><around*|]|a,x|]>>,
      <math|y<rsub|2>\<in\><around*|]|x,b|[>> such that

      <\equation>
        <label|eq 16.135.195>f<around*|(|x|)>-f<around*|(|a|)>=f<rprime|'><around*|(|y<rsub|1>|)>\<cdot\><around*|(|x-a|)><text|
        and >f<around*|(|b|)>-f<around*|(|x|)>=f<rprime|'><around*|(|y<rsub|2>|)>\<cdot\><around*|(|b-x|)>
      </equation>

      Combining [eq: <reference|eq 16.134.195>] and [eq: <reference|eq
      16.135.195>] gives\ 

      <\equation>
        <label|eq 16.136.195><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|f<rprime|'><around*|(|y<rsub|2>|)>-f<rprime|'><around*|(|y<rsub|1>|)>|)>
      </equation>

      As <math|y<rsub|1>\<in\><around*|]|a,x|[>>,
      <math|y<rsub|2>\<in\><around*|]|x,b|[>> we have
      <math|a\<less\>y<rsub|1>\<less\>x\<less\>y<rsub|2>\<less\>b> we have
      <math|y<rsub|1>\<less\>y<rsub|2>> and
      <math|<around*|[|y<rsub|1>,y<rsub|2>|]>\<subseteq\><around*|[|a,b|]>\<subseteq\>U>.
      Further as by [theorem: <reference|diff higher order derivate on a open
      set>]\ 

      <\equation*>
        f<rsup|<around*|(|1|)>>:U\<rightarrow\>Y<text| defined by
        ><around*|(|f<rsup|<around*|(|1|)>>|)><around*|(|x|)>=f<rsup|<around*|(|1|)>><around*|(|x|)>=f<rprime|'><around*|(|x|)>
      </equation*>

      is calculus differentiable at every <math|x\<in\>U> it follows that
      <math|f<rsup|<around*|(|1|)>>> is continuous. So we can apply
      Lagrange's theorem [theorem: <reference|diff Lagrange theorem>] on
      <math|f<rsup|<around*|(|1|)>>> to find a
      <math|z\<in\><around*|]|y<rsub|1>,y<rsub|2>|[>> such that\ 

      <\equation*>
        f<rsup|<around*|(|1|)>><around*|(|y<rsub|2>|)>-f<rsup|<around*|(|1|)>><around*|(|y<rsub|1>|)>=<around*|(|f<rsup|<around*|(|1|)>>|)><rprime|'><around*|(|z|)>\<cdot\><around*|(|y<rsub|2>-y<rsub|1>|)>=f<rsup|<around*|(|2|)>><around*|(|z|)>\<cdot\><around*|(|y<rsub|2>-y<rsub|1>|)>
      </equation*>

      substituting this in [eq: <reference|eq 16.136.195>] gives

      <\equation*>
        <frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\>f<rsup|<around*|(|2|)>><around*|(|z|)>
      </equation*>

      Now as <math|x\<in\><around*|[|a,b|]>> we have that
      <math|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<geqslant\>0>
      we have\ 

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
      <math|f> is concave on <math|<around*|[|a,b|]>>

      <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
      <math|f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0> then
      <math|f> is convex on <math|<around*|[|a,b|]>>
    </enumerate>
  </proof>

  We show now how the concept of convexity or concavity on a intercal allows
  us to determine if we have a minimum or maximum.\ 

  <\theorem>
    <label|diff derivate and local minimum and maximum>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|U> a open set in <math|X>,
    <math|f:U\<rightarrow\>\<bbb-R\>> a function such that such that <math|f>
    has a <math|2>-th derivate on <math|U> then we have:

    <\enumerate>
      <item>If there exist a open set <math|V> with
      <math|x<rsub|0>\<in\>V\<subseteq\>U> and <math|\<forall\>x\<in\>V>
      <math|f<rsup|<around*|(|2|)>><around*|(|x|)>\<geqslant\>0> then
      <math|x<rsub|0>> is a local weak minimum.

      <item>If there exist a open set <math|V> with
      <math|x<rsub|0>\<in\>V\<subseteq\>U> and <math|\<forall\>x\<in\>V>
      <math|f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0> then
      <math|x<rsub|0>> is a local weak maximum..
    </enumerate>
  </theorem>

  <\proof>
    \ As <math|f> has a <math|2>-th derivate on <math|U> it follows from
    [theorem: <reference|diff higher order derivate on a open set (1)>] we
    have that <math|\<forall\>x\<in\>U> a <math|1>-th derivate at <math|x>
    and for the function

    <\equation*>
      f<rprime|'>:U\<rightarrow\>X<text| defined by
      <math|<around*|(|f<rprime|'>|)><around*|(|x|)>=f<rprime|'><around*|(|x|)>>>
    </equation*>

    we have <math|\<forall\>x\<in\>U> that <math|f<rprime|'><around*|(|x|)>>
    exist and <math|f<rsup|<around*|(|2|)>><around*|(|x|)>=<around*|(|f<rprime|'>|)><rprime|'><around*|(|x|)>>.

    <\enumerate>
      <item>As <math|V> is open there exists a <math|\<delta\>\<gtr\>0> such
      that <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V>
      hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        <text|we have> f<rsup|<around*|(|2|)>><around*|(|x|)>\<geqslant\>0
      </equation*>

      hence using [corollary: <reference|diff increasing decreasing
      function>] it follows that <math|f<rprime|'>> is increasing on
      <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>> hence we
      have\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>
        f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x<rsub|0>|)>=0<text|
        and >\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[><text|
        >0=f<rprime|'><around*|(|x<rsub|0>|)>\<leqslant\>f<rprime|'><around*|(|x|)>
      </equation*>

      So using [corollary: <reference|diff increasing decreasing function>]
      <math|f> is decreasing on <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>\<Rightarrow\>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>>
      we have <math|f<around*|(|x|)>\<geqslant\>f<around*|(|x<rsub|0>|)>> and
      <math|f> is increasing on <math|<around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[>\<Rightarrow\>\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|o>+\<delta\>|[>>
      we have <math|f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>>.
      Hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        <text|we have> f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)><text|
        or >x<rsub|0><text| is a local weak minimum>.
      </equation*>

      <item>As <math|V> is open there exists a <math|\<delta\>\<gtr\>0> such
      that <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V>
      hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        <text|we have> f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0
      </equation*>

      hence using [corollary: <reference|diff increasing decreasing
      function>] it follows that <math|f<rprime|'>> is decreasing on
      <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>> hence we
      have\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>
        0=f<rprime|'><around*|(|x<rsub|0>|)>\<leqslant\>f<rprime|'><around*|(|x|)><text|
        and >\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[><text|
        >f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x<rsub|0>|)>=0
      </equation*>

      So using [corollary: <reference|diff increasing decreasing function>]
      <math|f> is increasing on <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>\<Rightarrow\>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>>
      we have <math|f<around*|(|x<rsub|0>|)>\<geqslant\>f<around*|(|x|)>> and
      <math|f> is decreasing on <math|<around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[>\<Rightarrow\>\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|o>+\<delta\>|[>>
      we have <math|f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>>.
      Hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        <text|we have> f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)><text|
        or >x<rsub|0><text| is a local weak maximum>.
      </equation*>
    </enumerate>
  </proof>

  Actually we can extend the above to a maximum and minimum on a interval
  instead of a local weak minimum or local weak maximum.

  <\theorem>
    Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the
    normed space of real numbers, <math|U> a open set in <math|X>,
    <math|a,b\<in\>U> with <math|a\<leqslant\>b>,
    <math|<around*|[|a,b|]>\<subseteq\>U>, <math|f:U\<rightarrow\>\<bbb-R\>>
    a function such that <math|f> has a <math|2>-th derivate on <math|X> and
    that there exist a <math|x<rsub|0>\<in\><around*|[|a,b|]>> with
    <math|f<rprime|'><around*|(|x<rsub|0>|)>=0> then we have:

    <\enumerate>
      <item>If <math|\<forall\>x\<in\>U> <math|0\<leqslant\>f<rsup|<around*|(|2|)>><around*|(|x|)>>
      then <math|\<forall\>x\<in\><around*|[|a,b|]>>
      <math|f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>> [in other
      words <math|f<around*|(|x<rsub|0>|)>> is the minimum of
      <math|f<around*|(|<around*|[|a,b|]>|)>>.

      <item>If <math|\<forall\>x\<in\>U> <math|0\<leqslant\>f<rsup|<around*|(|2|)>><around*|(|x|)>>
      then <math|\<forall\>x\<in\><around*|[|a,b|]>>
      <math|f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>> [in other
      words <math|f<around*|(|x<rsub|0>|)>> is the maximum of
      <math|f<around*|(|<around*|[|a,b|]>|)>>.
    </enumerate>
  </theorem>

  <\proof>
    If <math|a=b> then <math|<around*|[|a,b|]>=<around*|{|x<rsub|0>|}>> and
    the theorem is trivial true.\ 

    <\enumerate>
      <item>From the previous theorem [theorem:<reference|diff derivate and
      local minimum and maximum>] it follows that <math|x<rsub|0>> is a local
      weak minimum of <math|f> hence there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.137.195>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        we have f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>
      </equation>

      Assume that there exist a <math|y\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> then
      <math|y\<neq\>x<rsub|0>>, so we have either:

      <\description>
        <item*|<math|y\<less\>x<rsub|0>>>Then
        <math|max<around*|(|x<rsub|0>-\<delta\>,y|)>\<less\>x<rsub|0>> so
        there exist a <math|z\<in\>\<bbb-R\>> such that
        <math|x<rsub|0>-\<delta\>,y\<less\>z\<less\>x<rsub|0>> hence by [eq:
        <reference|eq 16.137.195>] we have\ 

        <\equation>
          <label|eq 16.138.195>f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|z|)>
        </equation>

        Further using [theorem: <reference|diff second derivate convex
        concave>] <math|f> is concave on <math|<around*|[|y,x<rsub|0>|]>> so
        that

        <\equation>
          <label|eq 16.139.195>f<around*|(|z|)>\<leqslant\><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>
        </equation>

        As <math|0\<less\>x<rsub|0>-z> and by assumption
        <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> it follows
        that

        <\equation>
          <label|eq 16.140.195>f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>\<less\>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z+z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<gtr\><rsub|<text|[eq:
          <reference|eq 16.140.195>]>>>|<cell|<frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 16.139.195>]>>>|<cell|f<around*|(|z|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 16.138.195>]>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        leading to the contradiction <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|x<rsub|0>|)>>.

        <item*|<math|x<rsub|0>\<less\>y>>Then
        <math|x<rsub|0>\<less\>min<around*|(|y,x<rsub|0>+\<delta\>|)>> so
        there exist a <math|z\<in\>\<bbb-R\>> such that
        <math|x<rsub|0>\<less\>z\<less\>y,x<rsub|0>+\<delta\>> hence by [eq:
        <reference|eq 16.137.195>] we have\ 

        <\equation>
          <label|eq 16.141.195>f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|z|)>
        </equation>

        Further using [theorem: <reference|diff second derivate convex
        concave>] <math|f> is concave on <math|<around*|[|x<rsub|0>,y|]>> so
        that

        <\equation>
          <label|eq 16.142.195>f<around*|(|z|)>\<leqslant\><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>
        </equation>

        As <math|0\<less\>z-x<rsub|0>> and
        <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> [by
        assumption] we have

        <\equation>
          <label|eq 16.143.195>f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>\<less\>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z+z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|\<gtr\><rsub|<text|[eq:
          <reference|eq 16.143.195>]>>>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 16.142.195>]>>>|<cell|f*<around*|(|z|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 16.141.195>]>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        leading to the contradiction <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|x<rsub|0>|)>>.
      </description>

      As in all cases we have a contradiction the assumption be false, so it
      follows that\ 

      <\equation*>
        \<forall\>x\<in\><around*|[|a,b|]><text| we have
        >f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>
      </equation*>

      <item>From the previous theorem [theorem:<reference|diff derivate and
      local minimum and maximum>] it follows that <math|x<rsub|0>> is a local
      weak maximum of <math|f> hence there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.144.195>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        we have f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
      </equation>

      Assume that there exist a <math|y\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|y|)>> then we can not
      have <math|y=x<rsub|0>>, hence we must consider the following cases:

      <\description>
        <item*|<math|y\<less\>x<rsub|0>>>Then
        <math|max<around*|(|x<rsub|0>-\<delta\>,y|)>\<less\>x<rsub|0>> so
        there exist a <math|z\<in\>\<bbb-R\>> with
        <math|x<rsub|0>-\<delta\>,y\<less\>z\<less\>x<rsub|0>>. Applying [eq:
        <reference|eq 16.144.195>] gives\ 

        <\equation>
          <label|eq 16.145.195>f<around*|(|z|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
        </equation>

        Further using [theorem: <reference|diff second derivate convex
        concave>] <math|f> is convex on <math|<around*|[|y,x<rsub|0>|]>> so
        that

        <\equation>
          <label|eq 16.146.195><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>\<leqslant\>f<around*|(|z|)>
        </equation>

        As <math|0\<less\>x<rsub|0>-z> and by the assumption
        <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|y|)>> it follows
        that

        <\equation>
          <label|eq 16.147.195>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>\<less\>f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z+z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.147.195>]>>>|<cell|<frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
          <reference|eq 16.146.195>]>>>|<cell|f<around*|(|z|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
          <reference|eq 16.145.195>]>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        leading to the contradiction <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|x<rsub|0>|)>>.

        <item*|<math|x<rsub|0>\<less\>y>>Then
        <math|x<rsub|0>\<less\>min<around*|(|y,x<rsub|0>+\<delta\>|)>> so
        there exist a <math|z\<in\>\<bbb-R\>> with
        <math|x<rsub|0>\<less\>z\<less\>y,x<rsub|0>+\<delta\>>. Applying [eq:
        <reference|eq 16.144.195>] gives\ 

        <\equation>
          <label|eq 16.148.195>f<around*|(|z|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
        </equation>

        Further using [theorem: <reference|diff second derivate convex
        concave>] <math|f> is convex on <math|<around*|[|x<rsub|0>,y|]>> so
        that

        <\equation>
          <label|eq 16.149.195><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>\<leqslant\>f<around*|(|z|)>
        </equation>

        As <math|0\<less\>z-x<rsub|0>> and by assumption
        <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|y|)>> it follows
        that\ 

        <\equation>
          <label|eq 16.150.195>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>\<less\>f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z+z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.150.195>]>>>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
          <reference|eq 16.149.195>]>>>|<cell|f<around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
          <reference|eq 16.148.195>]>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        leading to the contradiction <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|x<rsub|>|)>>.
      </description>

      As in all cases we have a contradiction the assumption be false, so it
      follows that\ 

      <\equation*>
        \<forall\>x\<in\><around*|[|a,b|]><text| we have
        >f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Derivates on a closed interval>

  <\definition>
    <label|diff left and right derivate>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the real
    normed space with the canonical norm, <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function
    then we define the left and right derivate of <math|f> as follows:

    <\enumerate>
      <item>If <math|x\<in\><around*|[|a,b|[>> then <math|f> has a right
      derivate at <math|x> noted as <math|f<rprime|'><rsub|+><around*|(|x|)>\<in\>X>
      if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exust a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>\<bbb-R\>> with
      <math|0\<less\>h\<less\>\<delta\>> and
      <math|x+h\<in\><around*|[|a,b|]>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      <item>If <math|x\<in\><around*|]|a,b|]>> then <math|f> has a left
      derivate at <math|x> noted as <math|f<rprime|'><rsub|-><around*|(|x|)>\<in\>X>
      if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exust a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>\<bbb-R\>> with
      <math|0\<less\>h\<less\>\<delta\>> and
      <math|x-h\<in\><around*|[|a,b|]>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      \ 
    </enumerate>
  </definition>

  We have the following relation between left and right derivates and
  derivates.

  <\theorem>
    <label|diff left and right derivate and derivate>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the real
    normed space with the canonical norm, <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function
    then\ 

    <\enumerate>
      <item>If <math|x\<in\><around*|[|a,b|[>> and <math|f> has a right
      derivate <math|f<rprime|'><rsub|+><around*|(|x|)>> at <math|x> then it
      is unique.

      <item>If <math|x\<in\><around*|]|a,b|]>> and <math|f> has a left
      derivate <math|f<rprime|'><rsub|-><around*|(|x|)>> at <math|x> then it
      is unique.

      <item>If <math|x\<in\><around*|]|a,b|[>> and <math|f> has a right
      derivate <math|f<rprime|'><rsub|+><around*|(|x|)>> and left derivate
      <math|f<rprime|'><rsub|-><around*|(|x|)>> with
      <math|f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>>
      then <math|f<rsub|\|<around*|]|a,b|[>>> has a derivate at <math|x> with
      <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'>=f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>>

      <item>If <math|x\<in\><around*|]|a,b|[>> and
      <math|f<rsub|\|<around*|]|a,b|[>>> has a derivate at <math|x> [in other
      words <math|f> is calculus differentiable at <math|x>] then <math|f>
      has a left and right derivate at <math|x> with
      <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>>.

      <item>If <math|<around*|[|a,b|]>\<subseteq\>U> and
      <math|f:U\<rightarrow\>X> is a function such that
      <math|\<forall\>x\<in\>U> <math|f> has a derivate
      <math|f<rprime|'><around*|(|x|)>> then

      <\enumerate>
        <item><math|f<rsub|\|<around*|[|a,b|]>>> has a right derivate at
        <math|a> with <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rsup|<rprime|'>><rsub|+><around*|(|a|)>=f<rprime|'><around*|(|a|)>>.

        <item><math|f<rsub|\|<around*|[|a,b|]>>> has a left derivate at
        <math|b> with <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rsup|<rprime|'>><rsub|+><around*|(|b|)>=f<rprime|'><around*|(|b|)>>.

        <item>We have <math|\<forall\>x\<in\><around*|]|a,b|[>> that
        <math|f<rsub|<around*|[|a,b|]>>> has a left and right derivate at
        <math|x> with <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|+>=f<rprime|'><around*|(|x|)>=<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|->>.
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume that <math|d<rsub|1>,d<rsub|2>> are right derivates at
      <math|x\<in\><around*|[|a,b|[>> with <math|d<rsub|1>=d<rsub|2>>. Take
      <math|\<varepsilon\>=<around*|\<\|\|\>|d<rsub|2>-d<rsub|1>|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>
      then there exists <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
      such that if <math|0\<less\>h\<less\>\<delta\><rsub|1>> and
      <math|x+h\<in\><around*|[|a,b|]>> we have

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rsub|1>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation*>

      and if \ <math|0\<less\>h\<less\>\<delta\><rsub|2>> and
      <math|x+h\<in\><around*|[|a,b|]>> we have

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rsub|2>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation*>

      Hence if <math|0\<less\>h\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varepsilon\>>|<cell|=>|<cell|<around*|\<\|\|\>|d<rsub|2>-d<rsub|1>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rsub|1>-<around*|(|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rsub|2>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rsub|2>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      leading to the contradiction <math|\<varepsilon\>\<less\>\<varepsilon\>>.
      Hence the assumptions must be false and we must have
      <math|d<rsub|1>=d<rsub|2>>.

      <item>Assume that <math|d<rsub|1>,d<rsub|2>> are left derivates at
      <math|x\<in\><around*|[|a,b|[>> with <math|d<rsub|1>=d<rsub|2>>. Take
      <math|\<varepsilon\>=<around*|\<\|\|\>|d<rsub|2>-d<rsub|1>|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>
      then there exists <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
      such that if <math|0\<less\>h\<less\>\<delta\><rsub|1>> and
      <math|x-h\<in\><around*|[|a,b|]>> we have

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d<rsub|1>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation*>

      and if \ <math|0\<less\>h\<less\>\<delta\><rsub|2>> and
      <math|x-h\<in\><around*|[|a,b|]>> we have

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d<rsub|2>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation*>

      Hence if <math|0\<less\>h\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varepsilon\>>|<cell|=>|<cell|<around*|\<\|\|\>|d<rsub|2>-d<rsub|1>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d<rsub|1>-<around*|(|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d<rsub|2>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d<rsub|2>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      leading to the contradiction <math|\<varepsilon\>\<less\>\<varepsilon\>>.
      Hence the assumptions must be false and we must have
      <math|d<rsub|1>=d<rsub|2>>.

      <item>Let <math|d=f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>>
      and let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist
      <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such
      that <math|0\<less\>h\<less\>\<delta\><rsub|1>> and
      <math|x+h\<in\><around*|[|a,b|]>> we have

      <\equation>
        <label|eq 16.120.195><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      and if <math|0\<less\>h\<less\>\<delta\><rsub|2>> and
      <math|x-h\<in\><around*|[|a,b|]>> we have

      <\equation>
        <label|eq 16.121.195><around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      So if <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      with <math|h\<in\><around*|]|a,b|[><rsub|x>> [or
      <math|x+h\<in\><around*|]|a,b|[>>] then we have either:

      <\description>
        <item*|<math|0\<less\>h>>Then as <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>\<less\>\<delta\><rsub|1>>
        we have <math|0\<less\>h\<less\>\<delta\><rsub|1>> and from
        <math|h\<in\><around*|]|a,b|[><rsub|x>> that
        <math|x+h\<in\><around*|]|a,b|[>\<subseteq\><around*|[|a,b|]>>, hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|<around*|]|a,b|[>><around*|(|x|)>|h>-d|\<\|\|\>>>|<cell|\<equallim\><rsub|x,x+h\<in\><around*|]|a,b|[>>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.120.195>]>>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        <item*|<math|h\<less\>0>>Then <math|-h=<around*|\||h|\|>> so as
        <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>\<less\>\<delta\><rsub|2>>
        we have <math|0\<less\>-h\<less\>\<delta\><rsub|2>> and from
        <math|h\<in\><around*|]|a,b|[>x> that
        <math|x-<around*|\||h|\|>=x+h\<in\><around*|]|a,b|[>>. So we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|<around*|]|a,b|[>><around*|(|x|)>|h>-d|\<\|\|\>>>|<cell|\<equallim\><rsub|x,x+h\<in\><around*|]|a,b|[>>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x-<around*|\||h|\|>|)>-f<around*|(|x|)>|-<around*|\||h|\|>>-d|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<around*|[|eq:<reference|eq
          16.121.195>|]>>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>
      </description>

      so in all cases we have\ 

      <\equation*>
        <around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|<around*|]|a,b|[>><around*|(|x|)>|h>-d|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      proving that <math|f<rsub|\|<around*|]|a,b|[>>> has a derivate at
      <math|x> and <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><rsub|+>=d=f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>>.

      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
      <math|f<rsub|\|<around*|]|a,b|[>>> is calculus differentiable at
      <math|x> there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<forall\>h\<in\><around*|]|a,b|[><rsub|x>> [or
      equivalently <math|x+h\<in\><around*|]|a,b|[>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|1>> we have\ 

      <\equation>
        <label|eq 16.150.196><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>|\<\|\|\>>\<equallim\><rsub|x\<in\>,x+h\<in\><around*|]|a,b|[>><around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      As <math|x\<in\><around*|]|a,b|[>> a open set there exist a
      <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\><around*|]|x-\<delta\><rsub|2>,x+\<delta\><rsub|2>|[>\<subseteq\><around*|]|a,b|[>>.
      Take now <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then if <math|0\<less\>h\<less\>\<delta\>\<less\>\<delta\><rsub|1>,\<delta\><rsub|2>>
      we have <math|h\<less\>\<delta\><rsub|2>> so that

      <\equation*>
        x-\<delta\><rsub|2>\<less\>x-h\<less\>x\<less\>x+h\<less\>x+\<delta\><rsub|2>
      </equation*>

      so that from [eq: <reference|eq 16.150.196>]

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\><text|
        and ><around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      proving that <math|f> has a left and right derivate at <math|x> and\ 

      <\equation*>
        <around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|]>> then as
      <math|<around*|[|a,b|]>\<subseteq\>U> it folllows that <math|f> has a
      derivate at <math|x>, hence if <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      there exist a <math|\<delta\><rsub|\<varepsilon\>>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|\<varepsilon\>>>
      we have that\ 

      <\equation>
        <label|eq 16.122.195>\<forall\>h\<in\>U<rsub|x><text| with
        >0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|\<varepsilon\>><text|
        we have ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      \ 

      <\enumerate>
        <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
        \ <math|\<forall\>h\<in\>\<bbb-R\>> with
        <math|0\<less\>h\<less\>\<delta\><rsub|\<varepsilon\>>> and
        <math|a+h\<in\><around*|[|a,b|]>> we have
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|a+h\<in\>U\<Rightarrow\>h\<in\>U<rsub|a>> so that

        <\equation*>
          <around*|\<\|\|\>|<frac|f<rsub|\|<around*|[|a,b|]>><around*|(|a+h|)>-f<rsub|\|<around*|[|a,b|]>><around*|(|a|)>|h>-f<rprime|'><around*|(|a|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<around*|(|a|)>|h>-f<rprime|'><around*|(|a|)>|\<\|\|\>>\<less\><rsub|<text|[eq:
          <reference|eq 16.122.195>]>>\<varepsilon\>
        </equation*>

        proving that <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|+><around*|(|a|)>=f<rprime|'><around*|(|a|)>>.

        <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
        \ <math|\<forall\>h\<in\>\<bbb-R\>> with
        <math|0\<less\>h\<less\>\<delta\><rsub|\<varepsilon\>>> and
        <math|b-h\<in\><around*|[|a,b|]>> we have
        <math|0\<less\><around*|\||-h|\|>\<less\>\<delta\>> and
        <math|b-h\<in\>U\<Rightarrow\>-h\<in\>U<rsub|b>> so that

        <\equation*>
          <around*|\<\|\|\>|<frac|f<rsub|\|<around*|[|a,b|]>><around*|(|b-h|)>-f<rsub|\|<around*|[|a,b|]>><around*|(|b|)>|-h>-f<rprime|'><around*|(|b|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|b-h|)>-f<around*|(|b|)>|-h>-f<rprime|'><around*|(|b|)>|\<\|\|\>>\<less\><rsub|<text|[eq:
          <reference|eq 16.122.195>]>>\<varepsilon\>
        </equation*>

        proving that <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|-><around*|(|b|)>=f<rprime|'><around*|(|b|)>>.

        <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
        \ <math|\<forall\>h\<in\>\<bbb-R\>> with
        <math|0\<less\>h\<less\>\<delta\><rsub|\<varepsilon\>>> and
        <math|x+h\<in\><around*|[|a,b|]>> we have
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|x+h\<in\>U\<Rightarrow\>h\<in\>U<rsub|x>> so that

        <\equation*>
          <around*|\<\|\|\>|<frac|f<rsub|\|<around*|[|a,b|]>><around*|(|x+h|)>-f<rsub|\|<around*|[|a,b|]>><around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|a|)>|\<\|\|\>>\<less\><rsub|<text|[eq:
          <reference|eq 16.122.195>]>>\<varepsilon\>
        </equation*>

        proving that <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><around*|(|x|)>>.
        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
        \ <math|\<forall\>h\<in\>\<bbb-R\>> with
        <math|0\<less\>h\<less\>\<delta\><rsub|\<varepsilon\>>> and
        <math|x-h\<in\><around*|[|a,b|]>> we have
        <math|0\<less\><around*|\||-h|\|>\<less\>\<delta\>> and
        <math|x-h\<in\>U\<Rightarrow\>-h\<in\>U<rsub|x>> so that

        <\equation*>
          <around*|\<\|\|\>|<frac|f<rsub|\|<around*|[|a,b|]>><around*|(|x-h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><rsub|<text|[eq:
          <reference|eq 16.122.195>]>>\<varepsilon\>
        </equation*>

        proving that <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|-><around*|(|x|)>=f<rprime|'><around*|(|x|)>>.
      </enumerate>
    </enumerate>

    \;
  </proof>

  We use the above theorem for the following definition.

  <\definition>
    <label|diff derivate on a closed interval>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> and
    <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function then we say that
    <with|font-series|bold|<math|<wide|f<rprime|'>|\<wide-bar\>>> exist on
    <math|<around*|[|a,b|]>>> if\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\><around*|]|a,b|[>> we have that
      <math|f<rsub|\|<around*|]|a,b|[>>> is calculus differentiable at
      <math|x>.

      <item><math|f> has a right derivate at <math|a> and a left derivate at
      <math|b>
    </enumerate>

    If <math|<wide|f<rprime|'>|\<wide-bar\>>> exists on
    <math|<around*|[|a,b|]>> then we define\ 

    <\equation*>
      <wide|f<rprime|'>|\<wide-bar\>>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\><text|
      by <math|<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<rprime|'><rsub|+><around*|(|a|)><text|
      if >x=a>>|<row|<cell|f<rprime|'><rsub|-><around*|(|b|)><text| if
      >x=b>>|<row|<cell|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)><text|
      if >x\<in\><around*|]|a,b|[>>>>>>>>
    </equation*>

    <\note>
      We use the notation <math|<wide|f<rprime|'>|\<wide-bar\>>> to
      distinguish between derivates defined on a closed interval and
      derivates on open sets. There is however a nice relation between
      derivating on a closed set and derivating on a open set as is show in
      the next theorem.
    </note>
  </definition>

  <\theorem>
    <label|diff differentiability on a closed set>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of the real numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|a,b\<in\>\<bbb-R\>> and a function
    <math|f:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> then the following are
    equivalent:

    <\enumerate>
      <item>There exist a open set <math|U> with
      <math|<around*|[|a,b|]>\<subseteq\>U> and a function
      <math|f<rsup|U>:U\<rightarrow\>X> with
      <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f> such that
      <math|\<forall\>x\<in\>U> <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>>
      exist and that the function

      <\equation*>
        *<around*|(|f<rsup|U>|)><rprime|'>:U\<rightarrow\>Y<text| defined by
        ><around*|(|<around*|(|f<rsup|U>|)><rprime|'>|)><around*|(|x|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>
      </equation*>

      is continuous.

      <item><math|<wide|f<rprime|'>|\<wide-bar\>>> exist on
      <math|<around*|[|a,b|]>> and the <math|<wide|f<rprime|'>|\<wide-bar\>>:<around*|[|a.b|]>\<rightarrow\>X>
      defined by <math|<around*|(|<wide|f<rprime|'>|\<wide-bar\>>|)><around*|(|x|)>=<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)>>
      is continuous.
    </enumerate>

    Further if (1) is valid then <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Using the previous theorem [theorem:
      <reference|diff left and right derivate and derivate> (5)] it follows
      that <math|f=<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>> has a
      right derivate at <math|a>, a left derivate at <math|b>. Further if
      <math|x\<in\><around*|]|a,b|[>>, we have by [theorem: <reference|diff
      derivative is local>] that <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|]|a,b|[>>>
      is calculus differentiable at <math|x>, hence, as
      <math|<around*|(|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,.b|]>>|)><rsub|\|<around*|]|a,b|[>>\<equallim\><rsub|<text|[theorem:
      <reference|function restricted function
      properties>]>><around*|(|f<rsup|U>|)><rsub|\|<around*|]|a,b|[>>>,
      <math|<around*|(|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,.b|]>>|)><rsub|\|<around*|]|a,b|[>>>
      is calculus differentiable at <math|x>. So we conclude that
      <math|<around*|(|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>|)><rprime|'>>
      exist on <math|<around*|[|a,b|]>>. Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<rprime|'><rsub|+><around*|(|a|)>>|<cell|=>|<cell|<around*|(|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|+><around*|(|a|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff left and right derivate and derivate>
        (5)]>>>|<cell|<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>>>|<row|<cell|f<rprime|'><rsub|-><around*|(|b|)>>|<cell|=>|<cell|<around*|(|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|-><around*|(|b|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff left and right derivate and derivate>
        (5)]>>>|<cell|<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>>>|<row|<cell|\<forall\>x\<in\><around*|]|a,b|[><text|
        we have ><around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a.b|]>>|)><rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function restricted function
        properties>]>>>|<cell|<around*|(|<around*|(|f<rsup|U>|)><rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|diff derivative is local>]>><rsub|<text|>>>|<cell|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>>>>>
      </eqnarray*>

      so that <math|\<forall\>x\<in\><around*|[|a,b|]>> we have

      <\equation*>
        <wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<rprime|'><rsub|+><around*|(|a|)><text|
        if >x=a>>|<row|<cell|f<rprime|'><rsub|-><around*|(|b|)><text| if
        >x=b>>|<row|<cell|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)><text|
        if >x\<in\><around*|]|a,b|[>>>>>>=<choice|<tformat|<table|<row|<cell|<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)><text|
        if >x=a>>|<row|<cell|<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)><text|
        if >x=b>>|<row|<cell|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)><text|
        if >x\<in\><around*|]|a,b|[>>>>>>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>
      </equation*>

      So that <math|<around*|(|<around*|(|f<rsup|U>|)><rprime|'>|)><rsub|\|<around*|[|a,b|]>>=<wide|f<rprime|'>|\<wide-bar\>>>,
      hence using [theorem: <reference|continuity and subspace topology (2)>]\ 

      <\equation*>
        <wide|f<rprime|'>|\<wide-bar\>>:<around*|[|a,b|]>\<rightarrow\>X<text|
        defined by ><around*|(|<wide|f<rprime|'>|\<wide-bar\>>|)><around*|(|x|)>=<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)><text|
        is continuous using the subspace topology on ><around*|[|a,b|]>
      </equation*>

      <item*|<math|2\<Rightarrow\>1>>As <math|<wide|f<rprime|'>|\<wide-bar\>>>
      exist on <math|<around*|[|a,b|]>> we have that
      <math|f<rprime|'><rsub|+><around*|(|a|)>>,
      <math|f<rprime|'><rsub|-><around*|(|a|)>> exists and
      <math|\<forall\>x\<in\><around*|[|a,b|]>> that
      <math|f<rsub|\|<around*|]|a,b|[>>> is calculus differentiable at
      <math|x>. Take <math|U=<around*|]|a-1,b+1|[>> then
      <math|<around*|[|a,b|]>\<subseteq\><around*|]|a-1,b+1|[>> and define\ 

      <\equation>
        <label|eq 16.152.196>f<rsup|U>:U\<rightarrow\>X<text| by
        >f<rsup|U><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<around*|(|x|)><text|
        if >x\<in\><around*|[|a,b|]>>>|<row|<cell|f<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\><around*|(|x-a|)><text|
        if >x\<in\><around*|]|a-1,a|[>>>|<row|<cell|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|x-b|)><text|
        if >x\<in\><around*|]|b,b+1|[>>>>>>
      </equation>

      then we have\ 

      <\equation>
        <label|eq 16.153.196><around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f
      </equation>

      Let <math|x\<in\><around*|]|a-1,b+1|[>> then we have the following
      cases to consider:

      <\description>
        <item*|<math|x\<in\><around*|]|a-1,a|[>>>Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Take
        <math|\<delta\>=a-x\<in\>\<bbb-R\><rsup|+>> then if
        <math|h\<in\><around*|]|a-1,b+1|[><rsub|x>> and
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then
        <math|x+h\<in\><around*|]|a-1,b+1|[>\<Rightarrow\>a-1\<less\>x+h and
        h\<less\><around*|\||h|\|>\<less\>a-x> so that
        <math|a-1\<less\>x+h\<less\>a>. Then we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|f<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\><around*|(|x+h-a|)>|)>-<around*|(|f<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\><around*|(|x-a|)>|)>|h>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>x+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>h-f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>a-f<around*|(|a|)>-f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>x+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>a|h>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>h|h>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          <around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)><text| exist and
          ><around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|a|)>
        </equation*>

        <item*|<math|x=a>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
        As <math|f> has a right derivate at <math|a> it follows by the
        definition of <math|f<rprime|'><rsub|+><around*|(|a|)>> that there
        exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that if
        <math|0\<less\>h\<less\>\<delta\><rsub|1>> and
        <math|a+h\<in\><around*|[|a,b|]>> we have

        <\equation>
          <label|eq 16.154.196><around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation>

        Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,b-a|)>\<in\>\<bbb-R\><rsup|+>>.
        Let <math|h\<in\><around*|]|a-1,b+1|[><rsub|a>\<Rightarrow\>a+h\<in\><around*|]|a-1,b+1|[>>
        such that <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>, then we
        have either:

        <\description>
          <item*|<math|h\<less\>0>>Then <math|a+h\<less\>a> so that
          <math|a+h\<in\><around*|]|a-1,a|]>> hence\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\><around*|(|a+h-a|)>-f<around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>h|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
          </eqnarray*>

          <item*|<math|0\<less\>h>>Then <math|0\<less\>h\<less\>\<delta\>\<leqslant\>b-a>
          so that <math|a\<less\>a+h\<less\>b> proving that
          <math|a+h\<in\><around*|]|a,b|[>\<subseteq\><around*|[|a,b|]>> so
          that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|h\<less\>\<delta\><rsub|1>\<wedge\><text|[eq:
            <reference|eq 16.154.196>]>>>|<cell|\<varepsilon\>>>>>
          </eqnarray*>
        </description>

        So in all cases <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that\ 

        <\equation*>
          <around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)><text| exist and
          ><around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|a|)>
        </equation*>

        \ 

        <item*|<math|x\<in\><around*|]|a,b|[>>>Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As
        <math|f<rsub|\|<around*|]|a,b|[>>> is calculus differentiable at
        <math|x> there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>>
        such that if <math|h\<in\><around*|]|a,b|[><rsub|z>> and
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|1>> then\ 

        <\equation>
          <label|eq 16.155.196><around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation>

        Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,x-a,b-x|)>\<in\>\<bbb-R\><rsup|+>>
        then if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have
        <math|h\<less\><around*|\||h|\|>\<less\>b-x\<Rightarrow\>x+h\<less\>b>
        and <math|-h\<less\><around*|\||-h|\|>=<around*|\||h|\|>\<less\>x-a\<Rightarrow\>a\<less\>x+h>
        so that <math|x+h\<in\><around*|]|a,b|[>> hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|x,x+h\<in\><around*|]|a,b|[>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>>>|<cell|\<less\><rsub|<around*|\||h|\|>\<less\>\<delta\><rsub|1>\<wedge\><text|[eq:
          <reference|eq 16.155.196>]>>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          <around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)><text| exist and
          ><around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>
        </equation*>

        <item*|<math|x\<in\>b>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
        As <math|f> has a left derivate at <math|b> it follows by the
        definition of <math|f<rprime|'><rsub|-><around*|(|b|)>> that there
        exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that if
        <math|0\<less\>h\<less\>\<delta\><rsub|1>> and
        <math|b-h\<in\><around*|[|a,b|]>> we have

        <\equation>
          <label|eq 16.156.196><around*|\<\|\|\>|<frac|f<around*|(|b-h|)>-f<around*|(|b|)>|-h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation>

        Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,b-a|)>\<in\>\<bbb-R\><rsup|+>>.
        Let <math|h\<in\><around*|]|a-1,b+1|[><rsub|b>\<Rightarrow\>b+h\<in\><around*|]|a-1,b+1|[>>
        such that <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>,\<delta\><rsub|1>>,
        then we have either:

        <\description>
          <item*|<math|h\<less\>0>>Then <math|-h=<around*|\||h|\|>\<less\>b-a\<Rightarrow\>a\<less\>b+h\<Rightarrow\>b+h\<in\><around*|[|a,b|]>>
          hence\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|b+h|)>-f<rsup|U><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b+h|)>-f<around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|-<around*|\||h|\|>=h>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b-<around*|\||h|\|>|)>-f<around*|(|b|)>|-<around*|\||h|\|>>-f<rsub|-><rprime|'><around*|(|b|)>|\<\|\|\>>>|<cell|\<less\><rsub|<around*|\||h|\|>\<less\>\<delta\><rsub|1>\<wedge\><text|[eq:
            <reference|eq 16.156.196>]>><rsub|>>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>>|<cell|>>>>
          </eqnarray*>

          <item*|<math|0\<less\>h>>then as <math|b\<less\>b+h\<less\>b+1> we
          have <math|b+h\<in\><around*|]|b,b+1|[>> hence\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|b+h|)>-f<rsup|U><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|b+h-b|)>-f<around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>h|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
          </eqnarray*>
        </description>

        So in all cases we have <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|b+h|)>-f<rsup|U><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that\ 

        <\equation*>
          <around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)><text| exist and
          <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|b|)>>>
        </equation*>

        <item*|<math|x\<in\><around*|]|b,b+1|[>>>Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Take
        <math|\<delta\>=x-b\<in\>\<bbb-R\><rsup|+>> then if
        <math|h\<in\><around*|]|a-1,b+1|[>> and
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then
        <math|x+h\<in\><around*|]|a-1,b+1|[>> and
        <math|-h\<less\><around*|\||h|\|>\<less\>x-b\<Rightarrow\>b\<less\>x+h>
        so that <math|x+h\<in\><around*|]|b,b+1|[>>. So that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|b+h|)>-f<rsup|U><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|x+h-b|)>-<around*|(|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|x-b|)>|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>x+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>h-f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>b-f<around*|(|b|)>-f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>x+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>b|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>h|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
        </eqnarray*>

        which proves that\ 

        <\equation*>
          <around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)><text| exists and
          ><around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|b|)>
        </equation*>
      </description>

      To summarize we have that <math|\<forall\>x\<in\><around*|]|a-1,b+1|[>>\ 

      <\equation>
        <label|eq 16.157.196><around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)><text|
        exist and ><around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<rprime|'><rsub|+><around*|(|a|)>=<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)><text|
        if >x\<in\><around*|]|a-1,a|]>>>|<row|<cell|f<rprime|'><rsub|-><around*|(|b|)>=<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)><text|
        if >x\<in\><around*|[|b,b+1|[>>>|<row|<cell|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>=<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)><text|
        if >x\<in\><around*|]|a,b|[>>>>>>
      </equation>

      Next we have to prove that the function\ 

      <\equation*>
        <around*|(|f<rsup|U>|)><rprime|'>:U\<rightarrow\>X<text| defined by
        ><around*|(|<around*|(|f<rsup|U>|)><rprime|'>|)><around*|(|x|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>
      </equation*>

      is continuous. Let <math|x\<in\>U=<around*|]|a-1,b+1|[>> then we have
      either:

      <\description>
        <item*|<math|x\<in\><around*|]|a-1,a|[>>>Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Take
        <math|\<delta\>=min<around*|(|a-x,x-<around*|(|a-1|)>|)>\<in\>\<bbb-R\><rsup|+>>
        then for <math|y\<in\><around*|]|a-1,b+1|[>> with
        <math|<around*|\||x-y|\|>\<less\>\<delta\>> that
        <math|x-y\<leqslant\><around*|\||x-y|\|>\<less\>\<delta\>\<less\>x-<around*|(|a-1|)>\<wedge\>y-x\<less\>a-x>
        so that <math|a-1\<less\>y\<wedge\>y\<less\>a> so that
        <math|y\<in\><around*|]|a-1,a|[>>. Hence\ 

        <\equation*>
          <around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.157.196>]>><around*|\<\|\|\>|f<rprime|'><rsub|+><around*|(|a|)>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>=0\<less\>\<varepsilon\>
        </equation*>

        proving that <math|<around*|(|f<rsup|U>|)><rprime|'>> is continuous
        at <math|x> in this case.

        <item*|<math|x=a>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
        As <math|<wide|f<rprime|'>|\<wide-bar\>>> is continuous at <math|a>
        there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such
        that <math|\<forall\>y\<in\><around*|[|a,b|]>> with
        <math|<around*|\||y-a|\|>\<less\>\<delta\><rsub|1>> we have
        <math|<around*|\<\|\|\>|<wide|f<rprime|'>|\<wide-bar\>><around*|(|y|)>-<wide|f<rprime|'>|\<wide-bar\>><around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,b-a|)>\<in\>\<bbb-R\><rsup|+>>
        then for <math|y\<in\><around*|]|a-1,b+1|[>> with
        <math|<around*|\||a-y|\|>\<less\>\<delta\>> we have either:\ 

        <\description>
          <item*|<math|y\<leqslant\>a>>Then <math|y\<in\><around*|]|a-1,a|]>>
          so that\ 

          <\equation*>
            <around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>>\<equallim\><rsub|<text|[eq:
            <reference|eq 16.157.196>]>><around*|\<\|\|\>|f<rprime|'><rsub|+><around*|(|a|)>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>>=0\<less\>\<varepsilon\>
          </equation*>

          <item*|<math|a\<less\>y>>Then as
          <math|y-a\<leqslant\><around*|\||y-a|\|>\<less\>b-a\<Rightarrow\>y\<less\>b>
          we have <math|y\<in\><around*|]|a,b|[>> so that\ 

          <\equation*>
            <around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>>\<equallim\><rsub|<text|[eq:
            <reference|eq 16.157.196>]>><around*|\<\|\|\>|<wide|f<rprime|'>|\<wide-bar\>><around*|(|y|)>-<wide|f<rprime|'>|\<wide-bar\>><around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>
          </equation*>
        </description>

        so in all cases we have <math|<around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>>,
        proving that <math|<around*|(|f<rsup|U>|)><rprime|'>> is continuous
        at <math|x> in this case.

        <item*|<math|x\<in\><around*|]|a,b|[>>>Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As
        <math|<wide|f<rprime|'>|\<wide-bar\>>> is continuous at <math|a>
        there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such
        that <math|\<forall\>y\<in\><around*|[|a,b|]>> with
        <math|<around*|\||y-x|\|>\<less\>\<delta\><rsub|1>> we have
        <math|<around*|\<\|\|\>|<wide|f<rprime|'>|\<wide-bar\>><around*|(|y|)>-<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,x-a,b-x|)>> then
        for <math|y\<in\><around*|]|a-1,b+1|[>> with
        <math|<around*|\||x-y|\|>\<less\>\<delta\>> we have
        <math|x-y\<less\>x-a\<wedge\>y-x\<less\>b-x> so that
        <math|a\<in\><around*|]|a,b|[>> and
        <math|<around*|\||y-x|\|>\<less\>\<delta\><rsub|1>>. Hence we have\ 

        <\equation*>
          <around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.157.196>]>><around*|\<\|\|\>|<wide|f<rprime|'>|\<wide-bar\>><around*|(|y|)>-<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        proving that <math|<around*|(|f<rsup|U>|)><rprime|'>> is continuous
        at <math|x> in this case.

        <item*|<math|x=b>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
        As <math|<wide|f<rprime|'>|\<wide-bar\>>> is continuous at <math|b>
        there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such
        that <math|\<forall\>y\<in\><around*|[|a,b|]>> with
        <math|<around*|\||y-b|\|>\<less\>\<delta\><rsub|1>> we have
        <math|<around*|\<\|\|\>|<wide|f<rprime|'>|\<wide-bar\>><around*|(|y|)>-<wide|f<rprime|'>|\<wide-bar\>><around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,b-a|)>> then for
        <math|y\<in\><around*|]|a-1,b+1|[>> with
        <math|<around*|\||y-b|\|>\<less\>\<delta\>> we have the following
        cases to consider:\ 

        <\description>
          <item*|<math|b\<leqslant\>y>>Then we have
          <math|y\<in\><around*|[|b,b-1|[>>

          <\equation*>
            <around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>>\<equallim\><rsub|<text|[eq:
            <reference|eq 16.157.196>]>><around*|\<\|\|\>|f<rprime|'><rsub|-><around*|(|b|)>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>=0\<less\>\<varepsilon\>
          </equation*>

          <item*|<math|y\<less\>b>>Then as
          <math|<around*|\||y-b|\|>\<less\>\<delta\>> we have
          <math|b-y\<leqslant\><around*|\||y-b|\|>\<less\>b-a> it follows
          that <math|y\<in\><around*|]|a,b|[>> and
          <math|<around*|\||y-b|\|>\<less\>\<delta\><rsub|1>>. Hence\ 

          <\equation*>
            <around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>>\<equallim\><rsub|<text|[eq:
            <reference|eq 16.157.196>]>><around*|\<\|\|\>|<wide|f<rprime|'>|\<wide-bar\>><around*|(|y|)>-<wide|f<rprime|'>|\<wide-bar\>><around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>
          </equation*>
        </description>

        so in all cases we have <math|<around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that <math|<around*|(|f<rsup|U>|)><rprime|'>> is continuous
        at <math|b>.

        <item*|<math|x\<in\><around*|]|b,b+1|[>>>Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Take
        <math|\<delta\>=min<around*|(|b+1-x,x-b|)>\<in\>\<bbb-R\><rsup|+>>
        then for <math|y\<in\><around*|]|a-1,b+1|[>> with
        <math|<around*|\||y-x|\|>\<less\>\<delta\>> we have
        <math|y-x\<leqslant\><around*|\||y-x|\|>\<less\>b+1-x\<wedge\>x-y\<leqslant\><around*|\||y-x|\|>\<less\>x-b>
        so that <math|y\<in\><around*|]|b,b+1|[>>. Hence\ 

        <\equation*>
          <around*|\<\|\|\>|<around*|(|f<rsup|U>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.157.196>]>><around*|\<\|\|\>|f<rprime|'><rsub|-><around*|(|b|)>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>>=0\<less\>\<varepsilon\>
        </equation*>

        proving that <math|<around*|(|f<rsup|U>|)><rprime|'>> is continuous
        at <math|x>.
      </description>

      So we have proved that <math|\<forall\>x\<in\><around*|[|a-1,b+1|]>>
      <math|<around*|(|f<rsup|U>|)><rprime|'>> is continuous at <math|x> it
      follows that <math|<around*|(|f<rsup|U>|)><rprime|'>> is continuous.
    </description>
  </proof>

  <\corollary>
    Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the
    normed space of the real numbers, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|a,b\<in\>\<bbb-R\>> and a function
    <math|f:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> then the following are
    equivalent:

    <\enumerate>
      <item>There exist a open set <math|U> with
      <math|<around*|[|a,b|]>\<subseteq\>U> and a function
      <math|f<rsup|U>:U\<rightarrow\>X> of class <math|C<rsup|1>> such that
      <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f>.\ 

      <item><math|<wide|f<rprime|'>|\<wide-bar\>>> exist on
      <math|<around*|[|a,b|]>> and the <math|<wide|f<rprime|'>|\<wide-bar\>>:<around*|[|a.b|]>\<rightarrow\>X>
      defined by <math|<around*|(|<wide|f<rprime|'>|\<wide-bar\>>|)><around*|(|x|)>=<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)>>
      is continuous.
    </enumerate>

    Further if (1) is valid then <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=<wide|f<rprime|'>|\<wide-bar\>><around*|(|x|)>>
  </corollary>

  <\proof>
    This follows by applying [theorem: <reference|diff C^1 and derivates>] on
    the previous theorem [theorem: <reference|diff differentiability on a
    closed set>]
  </proof>

  <subsection|Intermediate and mean value theorems.>

  We examine now the relation between the Riemann integral and the derivate
  of a function.

  <\lemma>
    <label|lemma 16.126.196>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the normed space of the real numbers,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> and
    <math|f:<around*|[|a,b|]>\<rightarrow\>X> a continuous function [so that
    by [theorems: <reference|continuity and subspace topology (2)>
    and<reference|riemann continuous functions are integrable>]
    <math|\<forall\>x\<in\><around*|[|a,b|]> <big|int><rsub|a><rsup|x>f>
    exist] then for the function

    <\equation*>
      F:<around*|[|a,b|]>\<rightarrow\>X<text| defined by
      >F<around*|(|x|)>=<big|int><rsub|a><rsup|x>f
    </equation*>

    then <math|<wide|F<rprime|'>|\<wide-bar\>>> exist on
    <math|<around*|[|a,b|]>> and <math|<wide|F<rprime|'>|\<wide-bar\>>=f>
  </lemma>

  <\proof>
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

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|15>
    <associate|page-first|851>
    <associate|section-nr|0>
    <associate|subsection-nr|0>
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
    <associate|auto-15|<tuple|partial derivate|?>>
    <associate|auto-16|<tuple|<with|mode|<quote|math>|\<partial\><rsub|i>f<around*|(|x|)>>|?>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>>|?>>
    <associate|auto-18|<tuple|16.2|?>>
    <associate|auto-19|<tuple|16.2.1|?>>
    <associate|auto-2|<tuple|16.1|?>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|L<rsub|n><around*|(|X;Y|)>>|?>>
    <associate|auto-21|<tuple|<with|mode|<quote|math>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>|?>>
    <associate|auto-22|<tuple|16.2.2|?>>
    <associate|auto-23|<tuple|<with|mode|<quote|math>|n>-times
    differentiability|?>>
    <associate|auto-24|<tuple|<with|mode|<quote|math>|D<rsup|<around*|[|n|]>>f*<around*|(|x|)>>|?>>
    <associate|auto-25|<tuple|<with|mode|<quote|math>|\<infty\>>-times
    differentibility|?>>
    <associate|auto-26|<tuple|<with|mode|<quote|math>|D<rsup|n>f<around*|(|x|)>>|?>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|C<rsup|n>>|?>>
    <associate|auto-28|<tuple|<with|mode|<quote|math>|C<rsup|0>>|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|C<rsup|\<infty\>>>|?>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-30|<tuple|16.2.2.1|?>>
    <associate|auto-31|<tuple|16.2.2.2|?>>
    <associate|auto-32|<tuple|16.2.2.3|?>>
    <associate|auto-33|<tuple|chain rule higher order differentiation|?>>
    <associate|auto-34|<tuple|higher order differentiation chain rule|?>>
    <associate|auto-35|<tuple|16.3|?>>
    <associate|auto-36|<tuple|16.3.1|?>>
    <associate|auto-37|<tuple|local weak minimum|?>>
    <associate|auto-38|<tuple|local weak maximum|?>>
    <associate|auto-39|<tuple|local extremum|?>>
    <associate|auto-4|<tuple|16.1.1|?>>
    <associate|auto-40|<tuple|concave function|?>>
    <associate|auto-41|<tuple|convex function|?>>
    <associate|auto-42|<tuple|16.3.2|?>>
    <associate|auto-43|<tuple|16.3.3|?>>
    <associate|auto-5|<tuple|convergence of a function|?>>
    <associate|auto-6|<tuple|16.1.2|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>|?>>
    <associate|auto-8|<tuple|16.1.3|?>>
    <associate|auto-9|<tuple|differentiability|?>>
    <associate|continuity of a function and convergence of the
    function|<tuple|16.8|?>>
    <associate|convergence of a function to a point|<tuple|16.4|?>>
    <associate|diff Bx(x,d)|<tuple|16.3|?>>
    <associate|diff C-infinity condition|<tuple|16.82|?>>
    <associate|diff C^1 and derivates|<tuple|16.84|?>>
    <associate|diff C^n and C^m|<tuple|16.91|?>>
    <associate|diff D^f=D^(n-1)D^1f|<tuple|16.92|?>>
    <associate|diff Frechet differentation implies partial differentiability
    |<tuple|16.38|?>>
    <associate|diff Jacobian matrix|<tuple|16.50|?>>
    <associate|diff L(x1:..xn)|<tuple|16.59|?>>
    <associate|diff L(x1:..xn)=L(1:..:1). product|<tuple|16.63|?>>
    <associate|diff L_n(X;Y)|<tuple|16.56|?>>
    <associate|diff Lagrange theorem|<tuple|16.116|?>>
    <associate|diff Rolle's theorem|<tuple|16.115|?>>
    <associate|diff Ux|<tuple|16.1|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.2|?>>
    <associate|diff bilinear mappings are infinite times
    differentiable|<tuple|16.101|?>>
    <associate|diff calculus derivate|<tuple|16.10|?>>
    <associate|diff calculus derivate (1)|<tuple|16.12|?>>
    <associate|diff chain rule|<tuple|16.30|?>>
    <associate|diff chain rule and partial differential|<tuple|16.40|?>>
    <associate|diff chain rule calculus|<tuple|16.31|?>>
    <associate|diff chain rule higher order|<tuple|16.109|?>>
    <associate|diff chain rule higher order class|<tuple|16.110|?>>
    <associate|diff class C^n|<tuple|16.81|?>>
    <associate|diff composition with a linear mapping|<tuple|16.32|?>>
    <associate|diff constant function is differentiable|<tuple|16.22|?>>
    <associate|diff constant function is infinitely times
    differentiable|<tuple|16.96|?>>
    <associate|diff convex concave|<tuple|16.118|?>>
    <associate|diff derivate and frechet differential|<tuple|16.27|?>>
    <associate|diff derivate and local extremum|<tuple|16.114|?>>
    <associate|diff derivate and local minimum and maximum|<tuple|16.121|?>>
    <associate|diff derivate of a product of functions|<tuple|16.53|?>>
    <associate|diff derivate of inverse function|<tuple|16.54|?>>
    <associate|diff derivate on a closed interval|<tuple|16.125|?>>
    <associate|diff derivate operator is linear|<tuple|16.29|?>>
    <associate|diff derivative is local|<tuple|16.28|?>>
    <associate|diff differentiability|<tuple|16.15|?>>
    <associate|diff differentiability alternative
    definitions|<tuple|16.25|?>>
    <associate|diff differentiability and K^n|<tuple|16.43|?>>
    <associate|diff differentiability is a local property|<tuple|16.20|?>>
    <associate|diff differentiability is a local property
    (1)|<tuple|16.21|?>>
    <associate|diff differentiability on a closed set|<tuple|16.127|?>>
    <associate|diff differentiability on a set|<tuple|16.17|?>>
    <associate|diff differentiable function is continuous|<tuple|16.26|?>>
    <associate|diff differential is unique|<tuple|16.14|?>>
    <associate|diff differential of a vector valued function|<tuple|16.48|?>>
    <associate|diff differential of product of functions|<tuple|16.52|?>>
    <associate|diff e-mapping|<tuple|16.24|?>>
    <associate|diff equivalent norms|<tuple|16.19|?>>
    <associate|diff f is of class C^n if D^1f u=is of class
    C^n-1|<tuple|16.93|?>>
    <associate|diff higher order derivate|<tuple|16.85|?>>
    <associate|diff higher order derivate and differential|<tuple|16.87|?>>
    <associate|diff higher order derivate is linear|<tuple|16.95|?>>
    <associate|diff higher order derivate on a open set|<tuple|16.88|?>>
    <associate|diff higher order derivate on a open set (1)|<tuple|16.89|?>>
    <associate|diff higher order differential class of a
    product|<tuple|16.112|?>>
    <associate|diff higher order differential is linear|<tuple|16.94|?>>
    <associate|diff higher order differential of a product|<tuple|16.111|?>>
    <associate|diff higher order differentiation|<tuple|16.73|?>>
    <associate|diff higher order differentiation (1)|<tuple|16.79|?>>
    <associate|diff higher order differentiation and vector
    functions|<tuple|16.106|?>>
    <associate|diff higher order differentiation classes|<tuple|16.107|?>>
    <associate|diff higher order differentiation is local|<tuple|16.75|?>>
    <associate|diff higher order differentiation on a open
    set|<tuple|16.76|?>>
    <associate|diff higher order differentiation on a open set
    (1)|<tuple|16.77|?>>
    <associate|diff identity function is differentiable|<tuple|16.18|?>>
    <associate|diff increasing decreasing function|<tuple|16.117|?>>
    <associate|diff inifint=ite differentiable|<tuple|16.78|?>>
    <associate|diff left and right derivate|<tuple|16.123|?>>
    <associate|diff left and right derivate and derivate|<tuple|16.124|?>>
    <associate|diff linear mapping is infinite times
    differentiable|<tuple|16.97|?>>
    <associate|diff linear mappings are differentiable|<tuple|16.23|?>>
    <associate|diff linear to multilinear|<tuple|16.71|?>>
    <associate|diff minimum maximum|<tuple|16.113|?>>
    <associate|diff multiparameter function to one parameter
    function|<tuple|16.35|?>>
    <associate|diff n-times and m-times differentiability|<tuple|16.90|?>>
    <associate|diff partial derivate and partial
    differential|<tuple|16.42|?>>
    <associate|diff partial derivate definition|<tuple|16.41|?>>
    <associate|diff partial differential definition|<tuple|16.36|?>>
    <associate|diff partial differential properties|<tuple|16.39|?>>
    <associate|diff projection functon is infinite times
    differentiable|<tuple|16.100|?>>
    <associate|diff second derivate convex concave|<tuple|16.120|?>>
    <associate|diff translation is infinite differentiable|<tuple|16.99|?>>
    <associate|diff unprojection|<tuple|16.33|?>>
    <associate|diff unprojection is infinite times
    differentiable|<tuple|16.98|?>>
    <associate|diff vector functions|<tuple|16.44|?>>
    <associate|diff vector functions (1)|<tuple|16.47|?>>
    <associate|diff vector functions (2)|<tuple|16.49|?>>
    <associate|diff vector functions and linearity|<tuple|16.46|?>>
    <associate|eq 14.48.103|<tuple|<with|mode|<quote|math>|x\<in\><around*|]|a,b|[>>|?>>
    <associate|eq 16.1.177|<tuple|16.2|?>>
    <associate|eq 16.1.194|<tuple|16.1|?>>
    <associate|eq 16.10.178|<tuple|16.11|?>>
    <associate|eq 16.101.194|<tuple|16.101|?>>
    <associate|eq 16.102.194|<tuple|16.102|?>>
    <associate|eq 16.103.194|<tuple|16.103|?>>
    <associate|eq 16.104.194|<tuple|16.104|?>>
    <associate|eq 16.105.194|<tuple|16.105|?>>
    <associate|eq 16.106.194|<tuple|16.106|?>>
    <associate|eq 16.107.194|<tuple|16.107|?>>
    <associate|eq 16.108.194|<tuple|16.108|?>>
    <associate|eq 16.109.194|<tuple|16.109|?>>
    <associate|eq 16.11.178|<tuple|16.12|?>>
    <associate|eq 16.110.194|<tuple|16.110|?>>
    <associate|eq 16.111.194|<tuple|16.111|?>>
    <associate|eq 16.112.194|<tuple|16.112|?>>
    <associate|eq 16.113.194|<tuple|16.113|?>>
    <associate|eq 16.114.194|<tuple|16.114|?>>
    <associate|eq 16.115.194|<tuple|16.115|?>>
    <associate|eq 16.116.194|<tuple|16.116|?>>
    <associate|eq 16.117.194|<tuple|16.117|?>>
    <associate|eq 16.118.194|<tuple|16.118|?>>
    <associate|eq 16.119.194|<tuple|16.119|?>>
    <associate|eq 16.12.178|<tuple|16.13|?>>
    <associate|eq 16.120.195|<tuple|16.148|?>>
    <associate|eq 16.121.195|<tuple|16.149|?>>
    <associate|eq 16.122.195|<tuple|16.151|?>>
    <associate|eq 16.123.195|<tuple|16.120|?>>
    <associate|eq 16.124.195|<tuple|16.121|?>>
    <associate|eq 16.125.195|<tuple|16.122|?>>
    <associate|eq 16.126.195|<tuple|16.123|?>>
    <associate|eq 16.127.195|<tuple|16.124|?>>
    <associate|eq 16.128.195|<tuple|16.125|?>>
    <associate|eq 16.129.195|<tuple|16.126|?>>
    <associate|eq 16.13.178|<tuple|16.14|?>>
    <associate|eq 16.130.195|<tuple|16.127|?>>
    <associate|eq 16.131.195|<tuple|16.128|?>>
    <associate|eq 16.132.195|<tuple|16.129|?>>
    <associate|eq 16.133.195|<tuple|16.130|?>>
    <associate|eq 16.134.195|<tuple|16.131|?>>
    <associate|eq 16.135.195|<tuple|16.132|?>>
    <associate|eq 16.136.195|<tuple|16.133|?>>
    <associate|eq 16.137.195|<tuple|16.134|?>>
    <associate|eq 16.138.195|<tuple|16.135|?>>
    <associate|eq 16.139.195|<tuple|16.136|?>>
    <associate|eq 16.14.178|<tuple|16.15|?>>
    <associate|eq 16.140.195|<tuple|16.137|?>>
    <associate|eq 16.141.195|<tuple|16.138|?>>
    <associate|eq 16.142.195|<tuple|16.139|?>>
    <associate|eq 16.143.195|<tuple|16.140|?>>
    <associate|eq 16.144.195|<tuple|16.141|?>>
    <associate|eq 16.145.195|<tuple|16.142|?>>
    <associate|eq 16.146.195|<tuple|16.143|?>>
    <associate|eq 16.147.195|<tuple|16.144|?>>
    <associate|eq 16.148.195|<tuple|16.145|?>>
    <associate|eq 16.149.195|<tuple|16.146|?>>
    <associate|eq 16.15.178|<tuple|16.16|?>>
    <associate|eq 16.150.195|<tuple|16.147|?>>
    <associate|eq 16.150.196|<tuple|16.150|?>>
    <associate|eq 16.152.196|<tuple|16.152|?>>
    <associate|eq 16.153.196|<tuple|16.153|?>>
    <associate|eq 16.154.196|<tuple|16.154|?>>
    <associate|eq 16.155.196|<tuple|16.155|?>>
    <associate|eq 16.156.196|<tuple|16.156|?>>
    <associate|eq 16.157.196|<tuple|16.157|?>>
    <associate|eq 16.16.178|<tuple|16.17|?>>
    <associate|eq 16.16.180|<tuple|16.29|?>>
    <associate|eq 16.17.178|<tuple|16.18|?>>
    <associate|eq 16.17.180|<tuple|16.30|?>>
    <associate|eq 16.18.178|<tuple|16.21|?>>
    <associate|eq 16.18.179|<tuple|16.19|?>>
    <associate|eq 16.18.180|<tuple|16.31|?>>
    <associate|eq 16.19.178|<tuple|16.22|?>>
    <associate|eq 16.19.179|<tuple|16.20|?>>
    <associate|eq 16.19.180|<tuple|16.32|?>>
    <associate|eq 16.2.177|<tuple|16.3|?>>
    <associate|eq 16.20.178|<tuple|16.23|?>>
    <associate|eq 16.20.181|<tuple|16.33|?>>
    <associate|eq 16.21.178|<tuple|16.24|?>>
    <associate|eq 16.22.178|<tuple|16.25|?>>
    <associate|eq 16.23.178|<tuple|16.26|?>>
    <associate|eq 16.24.178|<tuple|16.27|?>>
    <associate|eq 16.25.178|<tuple|16.28|?>>
    <associate|eq 16.3.177|<tuple|16.4|?>>
    <associate|eq 16.33.181|<tuple|16.34|?>>
    <associate|eq 16.34.181|<tuple|16.35|?>>
    <associate|eq 16.35.181|<tuple|16.36|?>>
    <associate|eq 16.36.182|<tuple|16.37|?>>
    <associate|eq 16.37.182|<tuple|16.38|?>>
    <associate|eq 16.38.182|<tuple|16.39|?>>
    <associate|eq 16.39.182|<tuple|16.40|?>>
    <associate|eq 16.4.177|<tuple|16.5|?>>
    <associate|eq 16.41.182|<tuple|16.42|?>>
    <associate|eq 16.42.187|<tuple|16.43|?>>
    <associate|eq 16.43.187|<tuple|16.44|?>>
    <associate|eq 16.44.188|<tuple|16.45|?>>
    <associate|eq 16.45.188|<tuple|16.46|?>>
    <associate|eq 16.46.188|<tuple|16.47|?>>
    <associate|eq 16.47.188|<tuple|16.48|?>>
    <associate|eq 16.48.188|<tuple|16.49|?>>
    <associate|eq 16.49.189|<tuple|16.50|?>>
    <associate|eq 16.5.178|<tuple|16.6|?>>
    <associate|eq 16.50.189|<tuple|16.51|?>>
    <associate|eq 16.51\<point\>189|<tuple|16.52|?>>
    <associate|eq 16.52.189|<tuple|16.61|?>>
    <associate|eq 16.52.190|<tuple|16.60|?>>
    <associate|eq 16.52.191|<tuple|16.53|?>>
    <associate|eq 16.53.189|<tuple|16.62|?>>
    <associate|eq 16.53.191|<tuple|16.54|?>>
    <associate|eq 16.54.189|<tuple|16.63|?>>
    <associate|eq 16.54.191|<tuple|16.55|?>>
    <associate|eq 16.55.189|<tuple|16.64|?>>
    <associate|eq 16.55.191|<tuple|16.56|?>>
    <associate|eq 16.56.189|<tuple|16.65|?>>
    <associate|eq 16.56.191|<tuple|16.57|?>>
    <associate|eq 16.57.191|<tuple|16.58|?>>
    <associate|eq 16.58.189|<tuple|16.66|?>>
    <associate|eq 16.58.191|<tuple|16.59|?>>
    <associate|eq 16.59.189|<tuple|16.67|?>>
    <associate|eq 16.6.178|<tuple|16.7|?>>
    <associate|eq 16.60.189|<tuple|16.68|?>>
    <associate|eq 16.61.189|<tuple|16.69|?>>
    <associate|eq 16.69.191|<tuple|16.70|?>>
    <associate|eq 16.7.178|<tuple|16.8|?>>
    <associate|eq 16.70.191|<tuple|16.71|?>>
    <associate|eq 16.71.191|<tuple|16.74|?>>
    <associate|eq 16.71.193|<tuple|16.72|?>>
    <associate|eq 16.72.193|<tuple|16.73|?>>
    <associate|eq 16.74.193|<tuple|16.75|?>>
    <associate|eq 16.76.193|<tuple|16.76|?>>
    <associate|eq 16.77.193|<tuple|16.77|?>>
    <associate|eq 16.77.193.1|<tuple|16.78|?>>
    <associate|eq 16.78.193|<tuple|16.79|?>>
    <associate|eq 16.79.193|<tuple|16.80|?>>
    <associate|eq 16.8.178|<tuple|16.9|?>>
    <associate|eq 16.81.193|<tuple|16.81|?>>
    <associate|eq 16.82.193|<tuple|16.82|?>>
    <associate|eq 16.83|<tuple|16.83|?>>
    <associate|eq 16.84.193|<tuple|16.84|?>>
    <associate|eq 16.85.193|<tuple|16.85|?>>
    <associate|eq 16.86.193|<tuple|16.86|?>>
    <associate|eq 16.87.193|<tuple|16.87|?>>
    <associate|eq 16.89.193|<tuple|16.88|?>>
    <associate|eq 16.89.193.1|<tuple|16.89|?>>
    <associate|eq 16.9.178|<tuple|16.10|?>>
    <associate|eq 16.90.194|<tuple|16.90|?>>
    <associate|eq 16.91.194|<tuple|16.91|?>>
    <associate|eq 16.92.194|<tuple|16.92|?>>
    <associate|eq 16.93.194|<tuple|16.93|?>>
    <associate|eq 16.94.194|<tuple|16.94|?>>
    <associate|eq 16.95.194|<tuple|16.95|?>>
    <associate|eq 16.96.194|<tuple|16.96|?>>
    <associate|eq 16.97.194|<tuple|16.98|?>>
    <associate|eq 16.97.195|<tuple|16.97|?>>
    <associate|eq 16.98.194|<tuple|16.99|?>>
    <associate|eq 16.99.194|<tuple|16.100|?>>
    <associate|lemma 16.101.194|<tuple|16.108|?>>
    <associate|lemma 16.115.195|<tuple|16.119|?>>
    <associate|lemma 16.126.196|<tuple|16.129|?>>
    <associate|lemma 16.2.177|<tuple|16.6|?>>
    <associate|lemma 16.23.181|<tuple|16.51|?>>
    <associate|lemma 16.24.178|<tuple|16.34|?>>
    <associate|lemma 16.5.178|<tuple|16.9|?>>
    <associate|lemma 16.50.192|<tuple|16.58|?>>
    <associate|lemma 16.51.186|<tuple|16.62|?>>
    <associate|lemma 16.53.186|<tuple|16.64|?>>
    <associate|lemma 16.54.187|<tuple|16.65|?>>
    <associate|lemma 16.55.187|<tuple|16.66|?>>
    <associate|lemma 16.56.187|<tuple|16.67|?>>
    <associate|lemma 16.57.187|<tuple|16.68|?>>
    <associate|lemma 16.58.188|<tuple|16.69|?>>
    <associate|lemma 16.59.188|<tuple|16.70|?>>
    <associate|lemma 16.72.189|<tuple|16.86|?>>
    <associate|lemma 16.83.197|<tuple|16.83|?>>
    <associate|lemma 16.93.193|<tuple|16.102|?>>
    <associate|lemma 16.96.193|<tuple|16.103|?>>
    <associate|lemma 16.97.193|<tuple|16.104|?>>
    <associate|lemma 16.98.194|<tuple|16.105|?>>
    <associate|limit of a function|<tuple|16.7|?>>
    <associate|note 16.65.191|<tuple|16.74|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|U<rsub|x>>>|<pageref|auto-3>>

      <tuple|<tuple|convergence of a function>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>>|<pageref|auto-7>>

      <tuple|<tuple|differentiability>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping>|<pageref|auto-10>>

      <tuple|<tuple|Chain rule>|<pageref|auto-12>>

      <tuple|<tuple|<with|mode|<quote|math>|I<rsup|<around*|[|i,x|]>>>>|<pageref|auto-14>>

      <tuple|<tuple|partial derivate>|<pageref|auto-15>>

      <tuple|<tuple|<with|mode|<quote|math>|\<partial\><rsub|i>f<around*|(|x|)>>>|<pageref|auto-16>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>>>|<pageref|auto-17>>

      <tuple|<tuple|<with|mode|<quote|math>|L<rsub|n><around*|(|X;Y|)>>>|<pageref|auto-20>>

      <tuple|<tuple|<with|mode|<quote|math>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<pageref|auto-21>>

      <tuple|<tuple|<with|mode|<quote|math>|n>-times
      differentiability>|<pageref|auto-23>>

      <tuple|<tuple|<with|mode|<quote|math>|D<rsup|<around*|[|n|]>>f*<around*|(|x|)>>>|<pageref|auto-24>>

      <tuple|<tuple|<with|mode|<quote|math>|\<infty\>>-times
      differentibility>|<pageref|auto-25>>

      <tuple|<tuple|<with|mode|<quote|math>|D<rsup|n>f<around*|(|x|)>>>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|n>>>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|0>>>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|\<infty\>>>>|<pageref|auto-29>>

      <tuple|<tuple|chain rule higher order
      differentiation>|<pageref|auto-33>>

      <tuple|<tuple|higher order differentiation chain
      rule>|<pageref|auto-34>>

      <tuple|<tuple|local weak minimum>|<pageref|auto-37>>

      <tuple|<tuple|local weak maximum>|<pageref|auto-38>>

      <tuple|<tuple|local extremum>|<pageref|auto-39>>

      <tuple|<tuple|concave function>|<pageref|auto-40>>

      <tuple|<tuple|convex function>|<pageref|auto-41>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Differentation
      in Normed spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      16.1<space|2spc>Frèchet differentiability
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|16.1.1<space|2spc>Limit of a function
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|16.1.2<space|2spc>Classical derivate of a
      function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|16.1.3<space|2spc>Frèchet differential of a
      function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|16.1.4<space|2spc>Properties of the Frèchet
      differential <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|16.1.5<space|2spc>Partial differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      16.2<space|2spc>Higher order differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      <with|par-left|<quote|1tab>|16.2.1<space|2spc>Linear mappings to linear
      mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|16.2.2<space|2spc>Higher order Frèchet
      differentation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|2tab>|16.2.2.1<space|2spc>Examples of
      <with|mode|<quote|math>|\<infty\>>-times differentiable functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|2tab>|16.2.2.2<space|2spc>Properties of higher
      order differentiation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|2tab>|16.2.2.3<space|2spc>The chain rule for
      higher order differentiation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      16.3<space|2spc>Intermediate value and main value theorems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>

      <with|par-left|<quote|1tab>|16.3.1<space|2spc>Derivates extremums,
      concavity, and convexity <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|16.3.2<space|2spc>Derivates on a closed
      interval <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|16.3.3<space|2spc>Intermediate and mean
      value theorems. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>
    </associate>
  </collection>
</auxiliary>
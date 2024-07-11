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
    normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function then we say that
    <with|font-series|bold|<math|f> converges to <math|y> at <math|x>> if
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>z\<in\>U> with <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
  </definition>

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

  The above lemma ensure that the following definition s well defined.

  <\definition>
    <label|limit of a function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    normed spaces, <math|U\<subseteq\>X>, <math|x\<in\>X> and
    <math|f:U\<rightarrow\>Y> a function such that <math|there exist a
    <math|y\<in\>Y> f> converges to <math|y\<in\>Y> at <math|x> then this
    <with|font-series|bold|unique> <math|y> [see lemma: <reference|lemma
    16.2.177>] is noted as\ 

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

  We have the following characterization for continuity at a point in its
  domain.

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
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-y|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    Using [lemma: <reference|lemma 16.5.178>] this <math|y> is unique and it
    is called the <with|font-series|bold|derivate of <math|f> at <math|x>>
    and noted by <math|f<rprime|'><around*|(|x|)>\<in\>Y>. In other words if
    <math|f> is differentiable at <math|x> with derivate
    <math|f<rprime|'><around*|(|x|)>> then we have\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>h\<in\>U<rsub|x><text| with
      >0\<less\><around*|\||h|\|>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </definition>

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
      g\<circ\>f:U\<rightarrow\>X<text| is Frèchet differentiable at
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

  <subsection|Parttial differentials>

  <\definition>
    <label|diff unprojection><index|<math|I<rsup|<around*|[|i,x|]>>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|[|1,\<ldots\>,n|]>>>
    be a finite family of sets, <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
    <math|I<rsup|<around*|[|i,x|]>>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    is defined by\ 

    <\equation*>
      I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
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
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|X> a set and
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of sets and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family such that <math|f<rsub|i>\<in\>X<rsub|i><rsup|X>> then we define
    the following function

    <\equation*>
      <around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>:X\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><text|
      by ><around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)><around*|(|x|)>=<around*|(|f<rsub|1><around*|(|x|)>,\<ldots\>,f<rsub|n><around*|(|x|)>|)>
    </equation*>
  </definition>

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
      f=<around*|(|\<pi\><rsub|1>\<circ\>f,\<ldots\>,\<pi\><rsub|n>\<circ\>f|)>
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
      f<around*|(|x|)>=<around*|(|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>,\<ldots\>,<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)>=<around*|(|\<pi\><rsub|1>\<circ\>f,\<ldots\>,\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>
    </equation*>

    proving that\ 

    <\equation*>
      f=<around*|(|\<pi\><rsub|1>\<circ\>f,\<ldots\>,\<pi\><rsub|n>\<circ\>f|)>
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

    Further if <math|f> is Frchet differentiable at <math|x> then\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> \<pi\><rsub|i>\<circ\>D
      f<around*|(|x|)>=D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>
    </equation*>

    or in other words

    <\equation*>
      D f<around*|(|x|)>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)>
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
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)><around*|(|h|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|h|)>|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|h|)>|)>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)><around*|(|h|)>i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)><around*|(|h|)>i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that

      <\equation*>
        f<text| is Frèchet differentiable at <math|x> with >D
        f<around*|(|x|)>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)>
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
      function>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>g<around*|(|f<around*|(|x|)>|)><around*|(|<around*|(|D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>|)>|)><around*|(|h|)>>>>>
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

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|15>
    <associate|page-first|847>
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
    <associate|auto-2|<tuple|16.1|?>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-4|<tuple|16.1.1|?>>
    <associate|auto-5|<tuple|convergence of a function|?>>
    <associate|auto-6|<tuple|16.1.2|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|f<rprime|'><around*|(|x|)>>|?>>
    <associate|auto-8|<tuple|16.1.3|?>>
    <associate|auto-9|<tuple|differentiability|?>>
    <associate|continuity of a function and convergence of the
    function|<tuple|16.7|?>>
    <associate|convergence of a function to a point|<tuple|16.4|?>>
    <associate|diff Bx(x,d)|<tuple|16.3|?>>
    <associate|diff Frechet differentation implies partial differentiability
    |<tuple|16.29|?>>
    <associate|diff Jacobian matrix|<tuple|16.39|?>>
    <associate|diff Ux|<tuple|16.1|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.2|?>>
    <associate|diff calculus derivate|<tuple|16.9|?>>
    <associate|diff chain rule|<tuple|16.22|?>>
    <associate|diff chain rule and partial differential|<tuple|16.31|?>>
    <associate|diff chain rule calculus|<tuple|16.23|?>>
    <associate|diff constant function is differentiable|<tuple|16.15|?>>
    <associate|diff derivate and frechet differential|<tuple|16.20|?>>
    <associate|diff derivate of a product of functions|<tuple|16.42|?>>
    <associate|diff derivate of inverse function|<tuple|16.43|?>>
    <associate|diff derivate operator is linear|<tuple|16.21|?>>
    <associate|diff differentiability|<tuple|16.11|?>>
    <associate|diff differentiability alternative
    definitions|<tuple|16.18|?>>
    <associate|diff differentiability and K^n|<tuple|16.34|?>>
    <associate|diff differentiability is a local property|<tuple|16.14|?>>
    <associate|diff differentiable function is continuous|<tuple|16.19|?>>
    <associate|diff differential is unique|<tuple|16.10|?>>
    <associate|diff differential of a vector valued function|<tuple|16.37|?>>
    <associate|diff differential of product of functions|<tuple|16.41|?>>
    <associate|diff e-mapping|<tuple|16.17|?>>
    <associate|diff equivalent norms|<tuple|16.13|?>>
    <associate|diff identity derivate|<tuple|16.21|?>>
    <associate|diff identity function is differentiable|<tuple|16.12|?>>
    <associate|diff linear mappings are differentiable|<tuple|16.16|?>>
    <associate|diff multiparameter function to one parameter
    function|<tuple|16.26|?>>
    <associate|diff of product of functions|<tuple|16.40|?>>
    <associate|diff partial derivate and partial
    differential|<tuple|16.33|?>>
    <associate|diff partial derivate definition|<tuple|16.32|?>>
    <associate|diff partial differential definition|<tuple|16.27|?>>
    <associate|diff partial differential properties|<tuple|16.30|?>>
    <associate|diff unprojection|<tuple|16.24|?>>
    <associate|diff vector functions|<tuple|16.35|?>>
    <associate|diff vector functions (1)|<tuple|16.36|?>>
    <associate|diff vector functions (2)|<tuple|16.38|?>>
    <associate|eq 14.36.182|<tuple|16.36|?>>
    <associate|eq 16.1.177|<tuple|16.1|?>>
    <associate|eq 16.10.178|<tuple|16.10|?>>
    <associate|eq 16.11.178|<tuple|16.11|?>>
    <associate|eq 16.12.178|<tuple|16.12|?>>
    <associate|eq 16.13.178|<tuple|16.13|?>>
    <associate|eq 16.14.178|<tuple|16.14|?>>
    <associate|eq 16.15.178|<tuple|16.15|?>>
    <associate|eq 16.16.178|<tuple|16.16|?>>
    <associate|eq 16.16.180|<tuple|16.28|?>>
    <associate|eq 16.17.178|<tuple|16.17|?>>
    <associate|eq 16.17.180|<tuple|16.29|?>>
    <associate|eq 16.18.178|<tuple|16.20|?>>
    <associate|eq 16.18.179|<tuple|16.18|?>>
    <associate|eq 16.18.180|<tuple|16.30|?>>
    <associate|eq 16.19.178|<tuple|16.21|?>>
    <associate|eq 16.19.179|<tuple|16.19|?>>
    <associate|eq 16.19.180|<tuple|16.31|?>>
    <associate|eq 16.2.177|<tuple|16.2|?>>
    <associate|eq 16.20.178|<tuple|16.22|?>>
    <associate|eq 16.20.181|<tuple|16.32|?>>
    <associate|eq 16.21.178|<tuple|16.23|?>>
    <associate|eq 16.22.178|<tuple|16.24|?>>
    <associate|eq 16.23.178|<tuple|16.25|?>>
    <associate|eq 16.24.178|<tuple|16.26|?>>
    <associate|eq 16.25.178|<tuple|16.27|?>>
    <associate|eq 16.3.177|<tuple|16.3|?>>
    <associate|eq 16.33.181|<tuple|16.33|?>>
    <associate|eq 16.34.181|<tuple|16.34|?>>
    <associate|eq 16.35.181|<tuple|16.35|?>>
    <associate|eq 16.36.182|<tuple|16.36|?>>
    <associate|eq 16.37.182|<tuple|16.37|?>>
    <associate|eq 16.38.182|<tuple|16.38|?>>
    <associate|eq 16.39.182|<tuple|16.39|?>>
    <associate|eq 16.4.177|<tuple|16.4|?>>
    <associate|eq 16.41.182|<tuple|16.41|?>>
    <associate|eq 16.5.178|<tuple|16.5|?>>
    <associate|eq 16.6.178|<tuple|16.6|?>>
    <associate|eq 16.7.178|<tuple|16.7|?>>
    <associate|eq 16.8.178|<tuple|16.8|?>>
    <associate|eq 16.9.178|<tuple|16.9|?>>
    <associate|lemma 16.2.177|<tuple|16.5|?>>
    <associate|lemma 16.23.181|<tuple|16.40|?>>
    <associate|lemma 16.24.178|<tuple|16.25|?>>
    <associate|lemma 16.5.178|<tuple|16.8|?>>
    <associate|limit of a function|<tuple|16.6|?>>
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

      <with|par-left|<quote|1tab>|16.1.5<space|2spc>Parttial differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>
    </associate>
  </collection>
</auxiliary>
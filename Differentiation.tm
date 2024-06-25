<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Differentation in Normed spaces>

  <section|Frèchet differentiability>

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

  <subsection|Frèchet derivate of a function>

  In this section we introduce the Frèchet derivate of a function, which is
  essential a linear aproximation of a function at a certain point with a
  linear function. To avoid evaluating a function outside it's domain we
  introduce the following definition.

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

  We are now ready to define the differentiability of a function. First we
  need a lemma that ensures that the derivate of a function [if it exist] is
  unique.

  <\lemma>
    <label|diff derivate is unique>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
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

    If <math|f> is Frèchet differentiabl then by [lemma: <reference|diff
    derivate is unique>] the above <math|L> is <with|font-series|bold|unique>
    and is called the <with|font-series|bold|Frèchet derivate of f at
    <math|x>> and noted by <math|D f<around*|(|x|)>>. In other words <math|f>
    is Frechet differentiable at <math|x> if

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

  Although the Frèchet differentiability and derivate is defined using norms
  it is actually dependent on the topology generated by the norms. This is
  expressed in the following theorem.

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
      derivate >D f<around*|(|x|)><text| using
      ><around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>><text| and
      ><around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>
    </equation*>

    then\ 

    <\equation*>
      f:X\<rightarrow\>Y<text| is a Frèchet differentiable function with
      derivate >D f<around*|(|x|)><text| using
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
    <math|x> with derivate <math|D f<around*|(|x|)>> using the norms
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
      f<text| is Frèchet differentiable at <math|x> with derivate >D
      f<around*|(|x|)>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<rsub|\|V><text| is Frèchet differentiable at <math|x> with derivate
      >D f<rsub|\|V><around*|(|x|)>
    </equation*>

    further if <math|f> or <math|f<rsub|\|V>> is Frèchet differentiable then
    <math|D f<around*|(|x|)>=D f<rsub|\|V><around*|(|x|)>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|f> is Frèchet differentiable at <math|x> with derivate <math|D
      f<around*|(|x|)>> there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<forall\>h\<in\>U<rsub|x>> with
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

      proving that <math|f<rsub|\|V>> is Frèchet differentiable with derivate
      <math|D f<around*|(|x|)>>. Hence <math|D f<around*|(|x|)>=D
      f<rsub|\|V><around*|(|x|)>.>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|x+0=x\<in\>V> we have that <math|0\<in\>V<rsub|x>> which is
      open [see theorem: <reference|normed space set operations>] so that
      there exists a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such
      that <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\><rsub|1>|)>\<subseteq\>V<rsub|x>>.
      Further, as <math|f<rsub|\|V>> is Frèchet differentiable at <math|x>
      with derivate <math|D f<rsub|V><around*|(|x|)>>, there exist a
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

      This proves that <math|f> is Frèchet differentiable with derivate
      <math|D f<rsub|\|V><around*|(|x|)>>. Hence <math|D f<around*|(|x|)>=D
      f<rsub|\|V><around*|(|x|)>.>
    </description>
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

      Hence <math|f> is Frèchet differentiable at <math|x> with derivate
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
    <associate|auto-2|<tuple|16.1|?>>
    <associate|auto-3|<tuple|16.1.1|?>>
    <associate|auto-4|<tuple|convergence of a function|?>>
    <associate|auto-5|<tuple|16.1.2|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-7|<tuple|differentiability|?>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping|?>>
    <associate|continuity of a function and convergence of the
    function|<tuple|16.4|?>>
    <associate|convergence of a function to a point|<tuple|16.1|?>>
    <associate|diff Bx(x,d)|<tuple|16.7|?>>
    <associate|diff Ux|<tuple|16.5|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.6|?>>
    <associate|diff derivate is unique|<tuple|16.8|?>>
    <associate|diff differentiability|<tuple|16.9|?>>
    <associate|diff differentiability alternative
    definitions|<tuple|16.13|?>>
    <associate|diff differentiability is a local property|<tuple|16.11|?>>
    <associate|diff e-mapping|<tuple|16.12|?>>
    <associate|diff equivalent norms|<tuple|16.10|?>>
    <associate|eq 16.1.177|<tuple|16.1|?>>
    <associate|eq 16.2.177|<tuple|16.2|?>>
    <associate|lemma 16.2.177|<tuple|16.2|?>>
    <associate|limit of a function|<tuple|16.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|convergence of a function>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|U<rsub|x>>>|<pageref|auto-6>>

      <tuple|<tuple|differentiability>|<pageref|auto-7>>

      <tuple|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping>|<pageref|auto-8>>
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
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|16.1.2<space|2spc>Frèchet derivate of a
      function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>
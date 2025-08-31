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
    function>Let <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|A\<subseteq\>\<bbb-R\>>, <math|B\<subseteq\>A>,
    <math|x\<in\>\<bbb-R\>> and <math|f:A\<rightarrow\>Y> a function then we
    say that <with|font-series|bold|<math|f> converges to <math|y> restricted
    by B> if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
    exist a <math|\<delta\>\<in\>\<bbb-R\>> such that
    <math|\<forall\>z\<in\>B<text| with ><around*|\||x-z|\|>\<less\>y> we
    have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y|\<\|\|\>>\<less\>\<varepsilon\>>.
  </definition>

  <\note>
    As <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>> we have that
    <math|x\<neq\>z>, so in the above definition we never evaluate <math|f>
    at <math|x>, hence <math|x> must not be part of the domain <math|f>.
  </note>

  If we want in the above that <math|y> is unique we neeed a extra condition
  on <math|x>.\ 

  <\lemma>
    <label|lemma 16.2.177>Let <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a normed space, <math|A\<subseteq\>\<bbb-R\>>, <math|B\<subseteq\>A>,
    <math|x\<in\>\<bbb-R\>> a limit point of <math|B> [see definition:
    <reference|topology limit point>] and <math|f:A\<rightarrow\>Y> a
    function such that <math|f> converges to <math|y<rsub|1>> restricted by
    <math|B> and <math|f> converges to <math|y<rsub|2>> restricted by
    <math|B> then we have <math|y<rsub|1>=y<rsub|2>>
  </lemma>

  <\proof>
    Assume that <math|y<rsub|1>\<neq\>y<rsub|2>> then
    <math|<around*|\<\|\|\>|y<rsub|1>-y|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>. As
    <math|f> converges to <math|y<rsub|1>,y<rsub|2>> restricted by <math|B>
    there exist <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
    such that\ 

    <\equation*>
      \<forall\>z\<in\>B<text| we have >
    </equation*>

    \;
  </proof>

  <\proof>
    Assume that <math|y<rsub|1>\<neq\>y<rsub|2>> then
    <math|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<in\>\<bbb-R\><rsup|+>>.
    As <math|f> converges to <math|y<rsub|1>> and <math|y<rsub|2>> at
    <math|x> there exist <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>z\<in\>A> with
    <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|1>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>>
    and <math|\<forall\>z\<in\>A> with <math|<around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
    we have <math|<around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>>.
    So if <math|z\<in\>A> satisfies <math|0\<less\><around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
    then\ 

    <\equation*>
      <around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|y<rsub|1>-f<around*|(|z|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|z|)>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>+<frac|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>|2>=<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>
    </equation*>

    giving the contradiction <math|<around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>\<less\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|Y>>.
    So we must have that <math|y<rsub|1>=y<rsub|2>>.
  </proof>
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
    <associate|auto-2|<tuple|16.1|?>>
    <associate|auto-3|<tuple|16.1.1|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|U<rsub|x>>|?>>
    <associate|auto-5|<tuple|convergence of a function|?>>
    <associate|convergence of a function to a point|<tuple|16.5|?>>
    <associate|diff Bx(x,d)|<tuple|16.4|?>>
    <associate|diff Ux|<tuple|16.1|?>>
    <associate|diff Ux=-x+U=U-x|<tuple|16.3|?>>
    <associate|lemma 16.2.177|<tuple|16.7|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Differentiation
      in Normed Spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
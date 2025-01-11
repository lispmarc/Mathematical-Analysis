<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|smart-ref|preview-ref>>

<\body>
  <chapter|The exponential function>

  <section|Power series>

  <subsection|Definition and converge domain>

  TODO cheched untill this

  <\definition>
    <label|exp power series><index|power series><index|<math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>><dueto|Power
    Series>A <with|font-series|bold|power series> is a expression of the form

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    where <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>
    is a sequence of complex numbers. If for a given <math|z\<in\>\<bbb-C\>>
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    converges then <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    refers to the limit <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>.
  </definition>

  <\note>
    We have bit of notation overloading here the same expression
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    stands for\ 

    <\enumerate>
      <item>A <with|font-series|bold|power series> which is essential another
      notation of a family <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>

      <item>A series if we have chosen a certain a complex number <math|z>.

      <item>The <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>
      [which is a value in <math|\<bbb-C\>>] if the series
      <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
      converges.
    </enumerate>

    We use context to figure out which meaning must be attached to the
    expression <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>.
  </note>

  Given a sequence <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>
  then the convergence of <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
  depends on the value of <math|z>, the convergence domain captures this
  idea.

  <\definition>
    <label|exp convergence domain><index|convergence domain><index|absolute
    convergence domain><index|<math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>><index|<math|<wide|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>>>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power series then

    <\enumerate>
      <item>The <with|font-series|bold|convergence domain of
      ><math|><math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
      noted as <math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
      is defined by\ 

      <\equation*>
        \<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=<around*|{|z\<in\>\<bbb-C\>\|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i><text|
        converges>|}>
      </equation*>

      <item>The <with|font-series|bold|absolute convergence domain of
      ><math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
      noted as <math|<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
      is defined by\ 

      <\equation*>
        <wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=<around*|{|z\<in\>\<bbb-C\>\|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||z|\|><rsup|i><text|
        converges>|}>
      </equation*>
    </enumerate>
  </definition>

  <\example>
    <label|exp 0 is in convergence domain>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power series then if <math|z=0> it follows that
    \ <math|<big|sum><rsup|\<infty\>><rsub|i=0>a<rsub|i>\<cdot\>z<rsup|i>>
    converges and\ 

    <\equation*>
      <big|sum><rsup|\<infty\>><rsub|i=0>a<rsub|i>\<cdot\>z<rsup|i>=a<rsub|0>
    </equation*>
  </example>

  <\proof>
    If <math|z=0> then <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|\<alpha\><rsub|i>\<cdot\>z<rsup|i>=0> so that for
    <math|n\<in\>\<bbb-N\>> we have that

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>=a<rsub|0>\<cdot\>z<rsup|0>+<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>=a<rsub|0>
    </equation*>

    so that by [example: <reference|limit constant sequence>]
    <math|<below|lim|n\<rightarrowlim\>\<infty\>><big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>
    converges to <math|a<rsub|0>>.\ 
  </proof>

  <\theorem>
    <label|exp convergence domains property>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power series then we have\ 

    <\equation*>
      0\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
    </equation*>
  </theorem>

  <\proof>
    First if <math|z=0> then <math|<around*|\||z|\|>=0> and by [example:
    <reference|exp 0 is in convergence domain>]we have that
    <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||\<alpha\><rsub|i>|\|><rsup|i>>
    converges to <math|<around*|\||a<rsub|o>|\|>> proving that\ 

    <\equation*>
      0\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
    </equation*>

    Second if <math|z\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
    then <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||z|\|><rsup|i>>
    converges, as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have that
    <rigid|<math|<around*|\||a<rsub|i>\<cdot\>z<rsup|i>|\|>\<equallim\><rsub|<text|[theorem:
    <reference|complex norm properties>>><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||z|\|><rsup|i>>>
    it follows from [theorem: <reference|series absolute dominant
    convergence>] that <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    converges. Hence <math|z\<in\>\<cal-D\><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|)>>
    so that\ 

    <\equation*>
      <wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
    </equation*>
  </proof>

  <\theorem>
    <label|exp convergence domain (1)>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> a
    power series and <math|0\<neq\>z<rsub|0>\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
    then <math|\<forall\>\<rho\>\<in\>\<bbb-R\>> with
    <math|0\<leqslant\>\<rho\>\<less\><around*|\||z<rsub|0>|\|>> we have that
    <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\>\<rho\><rsup|i>>
    converges.
  </theorem>

  <\proof>
    Let <math|0\<leqslant\>\<rho\>\<less\><around*|\||z+0|\|>> then we have
    for <math|\<rho\>> either:

    <\description>
      <item*|<math|\<rho\>=0>>Then by [example: <reference|exp 0 is in
      convergence domain>] <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\>\<rho\><rsup|i>>
      converges.

      <item*|<math|0\<less\>\<rho\>>>As <math|z<rsub|0>\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
      we have that <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsub|0><rsup|<phantom|0>i>>
      converges. Using [theorem: <reference|series terms converges to zero>]
      it follow then that <math|<below|lim|i\<rightarrow\>\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>=0>,
      hence by [theorem: <reference|complete convergence implies Cauchy>]
      <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is Cauchy
      and thus bounded by [theorem: <reference|complete Cauchy sequence is
      bounded (2)>]. So we have\ 

      <\equation>
        <label|eq 19.1.150>\<exists\>K\<in\>\<bbb-R\><rsup|+><text| such that
        >\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        ><around*|\||a<rsub|i>\<cdot\>z<rsub|0><rsup|<phantom|0>i>|\|>\<leqslant\>K
      </equation>

      Now <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|<around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>\<equallim\><rsub|0\<neq\><around*|\||z<rsub|0>|\|>><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||z<rsub|0>|\|><rsup|i><rsub|>\<cdot\><around*|(|<frac|\<rho\>|<around*|\||z<rsub|0>|\|>>|)><rsup|i>=<around*|\||a<rsub|i>\<cdot\>z<rsub|0><rsup|<phantom|0>i>|\|>\<cdot\>q<rsup|i>>
      where <math|q=<around*|\||<frac|\<rho\>|<around*|\||z<rsub|0>|\|>>|\|>\<less\>1>.
      Combining this with [eq: <reference|eq 19.1.150>] gives

      <\equation>
        <label|eq 19.2.150>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        ><around*|\||a<rsub|i>|\|>\<cdot\>\<rho\><rsup|i>\<leqslant\>K\<cdot\>q<rsup|i><text|
        where >q<rsub|i>\<less\>1
      </equation>

      Using [example: <reference|series power series in R>] it follows that
      <math|<big|sum><rsub|i=0><rsup|\<infty\>>q<rsup|i>> converges and thus
      by [theorem: <reference|serie sum and scalar product>]
      <math|<big|sum><rsub|i=0><rsup|\<infty\>>K\<cdot\>q<rsup|i>> converges.
      Hence by dominant convergence [theorem: <reference|series dominant
      convergence>] and [eq: <reference|eq 19.2.150>] we have that
      <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\>\<rho\><rsup|i>>.
    </description>
  </proof>

  <\corollary>
    <label|exp ball of convergence>Let <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    be a power series, <math|0\<neq\>z<rsub|0>\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
    then\ 

    <\equation*>
      B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||z<rsub|0>|\|>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
    </equation*>
  </corollary>

  <\proof>
    Take <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||z<rsub|0>|\|>|)>>
    then <math|0\<leqslant\><around*|\||z|\|>\<less\><around*|\||z<rsub|0>|\|>>
    so that by the previous theorem [theorem: <reference|exp convergence
    domain (1)>] <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||z|\|><rsup|i>>
    converges. Hence by definition <math|x\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>.
  </proof>

  The above suggests the following definition

  <\definition>
    <label|exp convergion radius><index|convergence
    radius><index|<math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>><dueto|Convergence
    Radius>Let <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    a power series then the <with|font-series|bold|convergence radius of
    ><math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    noted as <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
    is defined by\ 

    <\equation*>
      \<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=<choice|<tformat|<table|<row|<cell|sup<around*|(|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>|)><text|
      if >\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[><text|
      is bounded above>>>|<row|<cell|\<infty\><text| if
      >\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[><text|
      is not bounded above>>>>>>
    </equation*>

    <\note>
      As by [theorem: <reference|exp convergence domains property>]
      <math|0\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>>
      and <math|\<bbb-R\>> is conditional complete [see theorem:
      <reference|complex RC is conditional complete>]
      <math|sup<around*|(|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>|)>>
      exist if <math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>>
      is bounded above, hence the definition is valid. Further as
      <math|0\<less\>\<infty\>> and <math|0\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>>
      it follows that <math|0\<leqslant\>\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>.
    </note>
  </definition>

  Given the above definition we have following properties of the convergence
  radius of a power series.

  <\theorem>
    <label|exp convergence domains and balls (1)>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power series then we have for <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>

    <\enumerate>
      <item>If <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<less\>\<infty\>>
      then

      <\equation*>
        B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>
      </equation*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<infty\>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<bbb-C\>=<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>|<cell|>>>>
      </eqnarray*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<less\>\<infty\>>
      then we have either:

      <\description>
        <item*|<math|><math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=0>>Let
        <math|z\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>,
        Assume that <math|z\<neq\>0> then <math|0\<less\><around*|\||z|\|>>
        so there exist a <math|\<rho\>\<in\>\<bbb-R\><rsup|+>> such that
        <math|0\<less\>\<rho\>\<less\><around*|\||z|\|>>. Hence

        <\equation*>
          \<rho\>\<in\><around*|[|0,\<infty\>|[><big|cap>B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||z|\|>|)>\<subseteq\><rsub|<text|[theorem:
          <reference|exp ball of convergence>]>><around*|[|0,\<infty\>|[><big|cap>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
        </equation*>

        so that <math|0\<less\>\<rho\>\<less\>sup<around*|(|<around*|[|0,\<infty\>|[><big|cap>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>=\<cal-R\><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|)>=0>
        leading to the contradiction <math|0\<less\>0>. Hence the assumption
        is wrong and we must have <math|z=0>. So we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>>|<cell|=>|<cell|\<varnothing\>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|0|}>>>|<row|<cell|>|<cell|=>|<cell|<wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>>>>>
        </eqnarray*>

        proving\ 

        <\equation*>
          B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>
        </equation*>

        <item*|<math|0\<less\>\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>>Let
        <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>>
        then we have either:\ 

        <\description>
          <item*|<math|z=0>>Then <math|z=0\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>.

          <item*|<math|z\<neq\>0>>Then <math|0\<less\><around*|\||z|\|>\<less\>\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=sup<around*|(|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>|)>>,
          so there exist a <math|z<rprime|'>\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>>
          such that <math|<around*|\||z|\|>\<less\><around*|\||z<rprime|'>|\|>\<leqslant\>\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>.
          Hence <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,z<rprime|'>|)>\<subseteq\><rsub|<text|[corollary:
          <reference|exp ball of convergence>]>><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>.
        </description>

        So in all cases we have\ 

        <\equation>
          <label|eq 19.3.150>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
        </equation>

        Let <math|z\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>.
        Assume that <math|z\<nin\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>>
        then we have <math|<rigid|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<less\><around*|\||z|\|>>>,
        hence there exist a <math|\<rho\>> such that
        <math|><math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<less\>\<rho\>\<less\><around*|\||z|\|>>.
        As <math|z\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
        it follows from [theorem: <reference|exp ball of convergence>] that
        <math|\<rho\>\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>>
        so that <math|\<rho\>\<leqslant\>sup<around*|(|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>|)>=\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
        contradicting <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<less\>\<rho\>>.
        So the assumption is wrong and we must have that
        <math|z\<in\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>>.
        Hence <math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>>
        which combined with [eq: <reference|eq 19.3.150>] proves that\ 

        <\equation*>
          B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>
        </equation*>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|z\<in\>\<bbb-C\>> then as
        <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<infty\>>,
        <math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>>
        is not bounded above so that there exist a
        <math|r\<in\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]><big|cap><around*|[|0,\<infty\>|[>>
        such that <math|<around*|\||z|\|>\<less\>r=<around*|\||r|\|>> proving
        that <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||r|\|>|)>\<subseteq\><rsub|<text|[eq:
        <reference|exp ball of convergence>]>><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
        proving that

        <\equation*>
          \<bbb-C\>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<bbb-C\>
        </equation*>

        so that\ 

        <\equation*>
          \<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<bbb-C\>=<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
        </equation*>

        <item*|<math|\<Leftarrow\>>>Assume that
        <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<less\>\<infty\>>.
        As \ <math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<bbb-C\>=<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
        it follows from <math|<around*|(|1|)>> that

        <\equation*>
          B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>
        </equation*>

        which as <math|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<bbb-C\>=<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
        proves that <math|\<bbb-C\>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>>,
        so that as <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<in\>\<bbb-C\>>
        we have the contradiction <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<less\>\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>.
        Hence the assumption is wrong and we must have that
        <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<infty\>>.
      </description>
    </enumerate>
  </proof>

  To simplify theorems we extend the concept of a open and closed ball to the
  case where the radius is <math|\<infty\>>.

  <\definition>
    <label|exp ball extensions>Let <math|r\<in\><around*|[|0,\<infty\>|[>>
    and <math|z\<in\>\<bbb-C\>> then we define the open and closed ball
    <math|B<rsub|<around*|\|||\|>><around*|(|z,r|)>> and
    <math|<wide|B<rsub|<around*|\|||\|>><around*|(|z,r|)>|\<wide-bar\>>> by\ 

    <\equation*>
      B<rsub|<around*|\|||\|>><around*|(|z,r|)>=<choice|<tformat|<table|<row|<cell|\<bbb-C\><text|
      if >r=\<infty\>>>|<row|<cell|<around*|{|y\<in\>\<bbb-C\>\|<around*|\||y-z|\|>\<less\>r|}>>>>>>
    </equation*>

    <\equation*>
      <wide|B<rsub|<around*|\|||\|>><around*|(|z,r|)>|\<wide-bar\>>=<choice|<tformat|<table|<row|<cell|\<bbb-C\><text|
      if >r=\<infty\>>>|<row|<cell|<around*|{|y\<in\>\<bbb-C\>\|<around*|\||y-z|\|>\<leqslant\>r|}>>>>>>
    </equation*>

    <\note>
      If <math|r\<in\><around*|[|0,\<infty\>|[>> then this reduces to the
      definition of a open or closed ball in <math|\<bbb-C\>>. Note also as
      <math|\<bbb-C\>> is open and closed that
      <math|B<rsub|<around*|\|||\|>><around*|(|z,r|)>> is open and by<math|>
      [theorem: <reference|metric closed balls are closed>]
      <math|<wide|B<rsub|<around*|\|||\|>><around*|(|z,r|)>|\<wide-bar\>>> is
      closed.
    </note>
  </definition>

  Using this definition we can simplify [theorem: <reference|exp convergence
  domains and balls (1)>] to the following theorem.

  <\theorem>
    <label|exp convergence domains and balls (2)>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power series then we have\ 

    <\equation*>
      B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>
    </equation*>
  </theorem>

  <\proof>
    For <math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
    we have either:

    <\description>
      <item*|<math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<less\>\<infty\>>>Then
      we have by [theorem: <reference|exp convergence domains and balls (1)>]
      we have that\ 

      <\equation*>
        B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>
      </equation*>

      <item*|<math|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<infty\>>>Then
      by \ [theorem: <reference|exp convergence domains and balls (1)>]
      <math|<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>=\<bbb-C\>=\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
      and by definition <math|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>=\<bbb-C\>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>>.
      So that\ 

      <\equation*>
        B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|)>|\<wide-bar\>>
      </equation*>
    </description>

    \;
  </proof>

  <\lemma>
    <label|exp balls inclucsion>Let <math|\<rho\>,\<rho\><rprime|'>\<in\><around*|[|0,\<infty\>|]>>
    then if <math|B<rsub|<around*|\|||\|>><around*|(|0,\<rho\>|)>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<rho\><rprime|'>|)>|\<wide-bar\>>>
    we have <math|\<rho\>\<leqslant\>\<rho\><rprime|'>>.
  </lemma>

  <\proof>
    For <math|\<delta\><rprime|'>> we have the following possibilities:

    <\description>
      <item*|<math|\<rho\><rprime|'>\<in\><around*|]|0,\<infty\>|[>>>If
      <math|\<rho\>=\<infty\>> then <math|\<rho\><rprime|'>\<in\>\<bbb-C\>=B<rsub|<around*|\|||\|>><around*|(|x,\<rho\>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|x,\<rho\>|)>>
      leading to the contradiction <math|\<rho\><rprime|'>\<less\>\<rho\><rprime|'>>
      hence we must have that <math|\<rho\>\<in\><around*|[|0,\<rho\>|[>>.
      Assume that <math|\<rho\><rprime|'>\<less\>\<rho\>> then there exist a
      <math|\<delta\>> such that <math|\<rho\><rprime|'>\<less\>\<delta\>\<less\>\<rho\>>
      so that <math|\<delta\>\<in\>B<rsub|<around*|\|||\|>><around*|(|z,\<rho\>|)>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|z,\<rho\><rprime|'>|)>|\<wide-bar\>>>
      hence <math|\<rho\><rprime|'>\<less\>\<delta\>\<leqslant\>\<rho\><rprime|'>>
      giving the contradiction <math|\<rho\><rprime|'>\<less\>\<rho\><rprime|'>>.
      Hence we must have in this case that
      <math|\<rho\>\<leqslant\>\<rho\><rprime|'>>.

      <item*|<math|\<rho\><rprime|'>=0>>Then
      <math|B<rsub|<around*|\|||\|>><around*|(|z,\<rho\>|)>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|z,\<rho\><rprime|'>|)>|\<wide-bar\>>=<around*|{|0|}>>.
      Assume that <math|0\<less\>\<rho\>> then there exist a <math|\<delta\>>
      such that <math|0\<less\>\<delta\>\<less\>\<rho\>> then
      <math|\<delta\>\<in\><around*|{|0|}>> giving the contradiction
      <math|0\<less\>0>. Hence we must have that <math|\<rho\>=0>.

      <item*|<math|\<rho\><rprime|'>=\<infty\>>>Then
      <math|\<rho\>\<leqslant\>\<rho\><rprime|'>>
    </description>
  </proof>

  The concept of convergence domain of a power series allows us to define the
  power function that maps a complex number in the conversion domain to the
  convergence limit of the polynomial.

  <\definition>
    <label|exp power function><index|<math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>>>Let
    <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>> be a power
    series then we define\ 

    <\equation*>
      <big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>:\<cal-D\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|)>\<rightarrow\>\<bbb-C\><text|
      by ><around*|(|<big|sum><rsub|n=0><rsup|n>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><around*|(|z|)>=<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>
    </equation*>
  </definition>

  <subsection|Convergence criteria>

  We introduce now different criteria for a series to be convergent.

  <\lemma>
    <label|lemma 19.15.150>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>,
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    and define

    <\equation*>
      <around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
      by >s<rsub|i>=<big|sum><rsub|j=0><rsup|i>z<rsub|j>
    </equation*>

    then we have\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>=<around*|(|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>
    </equation*>
  </lemma>

  <\proof>
    \ We use induction on <math|n> for this proof, so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If <around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\><text|,
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\><text|
      and ><around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>><text|
      defined by >>>s<rsub|i>=<big|sum><rsub|j=0><rsup|i>z<rsub|j><text| then
      ><big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>=<around*|(|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|0>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|1>\<cdot\>s<rsub|1>>|<cell|=>|<cell|s<rsub|0>\<cdot\><around*|(|\<alpha\><rsub|0>-\<alpha\><rsub|1>|)>+\<alpha\><rsub|1>\<cdot\>s<rsub|1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|0>z<rsub|i>|)>\<cdot\><around*|(|a<rsub|0>-\<alpha\><rsub|1>|)>+\<alpha\><rsub|1>\<cdot\><big|sum><rsub|i=0><rsup|1>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|z<rsub|0>\<cdot\><around*|(|\<alpha\><rsub|0>-\<alpha\><rsub|1>|)>+\<alpha\><rsub|1>\<cdot\><around*|(|z<rsub|0>+z<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|z<rsub|0>\<cdot\>\<alpha\><rsub|0>+\<alpha\><rsub|1>\<cdot\>z<rsub|1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|1>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>>>>
      </eqnarray*>

      so that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>|)>+\<alpha\><rsub|n+1>\<cdot\>z<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>+\<alpha\><rsub|n+1>\<cdot\>z<rsub|n+1><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+<around*|(|\<alpha\><rsub|n>\<cdot\>s<rsub|n>-\<alpha\><rsub|n+1>\<cdot\>s<rsub|n>|)>+<around*|(|\<alpha\><rsub|n+1>\<cdot\>z<rsub|n+1><rsub|>+\<alpha\><rsub|n+1>\<cdot\>s<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+<around*|(|\<alpha\><rsub|n>-a<rsub|n+1>|)>\<cdot\>s<rsub|n>+\<alpha\><rsub|n+1>\<cdot\><around*|(|z<rsub|n+1><rsub|>+s<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n+1>\<cdot\><around*|(|z<rsub|n+1>+<big|sum><rsub|i=0><rsup|n>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n+1>\<cdot\><big|sum><rsub|i=0><rsup|n+1>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n+1>\<cdot\>s<rsub|n+1>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\lemma>
    <label|exp inequality of Abel><index|inequality of Abel><dueto|Inequality
    of Abel>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>,
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
    be such that <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}>> we
    have <math|\<alpha\><rsub|i+1>\<leqslant\>\<alpha\><rsub|i>>,
    <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    defined by <math|s<rsub|i>=<big|sum><rsub|j=0><rsup|i>z<rsub|j>> and
    <math|\<mu\>\<in\><around*|[|0,\<infty\>|[>> such that
    <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have
    <math|<around*|\||s<rsub|i>|\|>\<leqslant\>\<mu\>> then we have for
    <math|\<sigma\>=<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>
    that <math|<around*|\||\<alpha\>|\|>\<leqslant\>\<alpha\><rsub|0>\<cdot\>\<mu\>>.
  </lemma>

  <\proof>
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have two cases to consider:

    <\description>
      <item*|<math|n=0>>Then <math|<around*|\||\<sigma\>|\|>=<around*|\||<big|sum><rsub|i=0><rsup|0>\<alpha\><rsub|i>\<cdot\>z<rsub|i>|\|>=<around*|\||\<alpha\><rsub|0>\<cdot\>z<rsub|0>|\|>=<around*|\||\<alpha\><rsub|0>\<cdot\><big|sum><rsub|0><rsup|0>z<rsub|i>|\|>=<around*|\||\<alpha\><rsub|0>\<cdot\>s<rsub|0>|\|>=<around*|\||\<alpha\><rsub|0>|\|>\<cdot\><around*|\||s<rsub|0>|\|>\<less\><around*|\||\<alpha\><rsub|0>|\|>\<cdot\>\<mu\>>
      proving that\ 

      <\equation*>
        <around*|\||\<sigma\>|\|>\<leqslant\><around*|\||\<alpha\><rsub|0>|\|>\<cdot\>\<mu\>
      </equation*>

      <item*|<math|n\<neq\>0>>Then <math|n\<in\>\<bbb-N\>> so we can use the
      previous lemma [lemma: <reference|lemma 19.15.150>] in the following

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||\<sigma\>|\|>>|<cell|=>|<cell|<around*|\||<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 19.15.150>]>>>|<cell|<around*|\||<around*|(|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|\|>+<around*|\||\<alpha\><rsub|n>|\|>\<cdot\><around*|\||s<rsub|n>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=0><rsup|n-1><around*|\||s<rsub|i>|\|>\<cdot\><around*|\||\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|\|>+<around*|\||\<alpha\><rsub|n>|\|>\<cdot\><around*|\||s<rsub|n>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\><rsub|n>\<in\><around*|[|0,\<infty\>|[>>>|<cell|<big|sum><rsub|i=0><rsup|n-1><around*|\||s<rsub|i>|\|>\<cdot\><around*|\||\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|\|>+\<alpha\><rsub|n>\<cdot\><around*|\||s<rsub|n>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\><rsub|i+1>\<less\>\<alpha\><rsub|i>>>|<cell|<big|sum><rsub|i=0><rsup|n-1><around*|\||s<rsub|i>|\|>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\><around*|\||s<rsub|n>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=0><rsup|n-1>\<mu\>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<mu\>\<cdot\>\<alpha\><rsub|n>>>|<row|<cell|>|<cell|=>|<cell|\<mu\>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n-1><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of differences>]>>>|<cell|\<mu\>\<cdot\><around*|(|<around*|(|\<alpha\><rsub|0>-\<alpha\><rsub|n>|)>+\<alpha\><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\>\<cdot\>\<alpha\><rsub|0>>>>>
      </eqnarray*>
    </description>
  </proof>

  We use now the above lemma to prove the convergence criteria of Abel
  Dirichlet.

  <\theorem>
    <label|exp Abel Dirichlet><index|Abel Dirichlet criteria><dueto|Criteria
    of Abel-Dirichlet>Let <math|<around*|{|z<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>
    and <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><around*|[|0,\<infty\>|[>>
    such that <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|\<varepsilon\><rsub|i+1>\<leqslant\>\<varepsilon\><rsub|i>> then we
    have\ 

    <\enumerate>
      <item>If there exist a <math|C\<in\><around*|[|0,\<infty\>|[>> such
      that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|<around*|\||<big|sum><rsub|j=0><rsup|i>z<rsub|j>|\|>\<leqslant\>C>
      and <math|<below|lim|i\<rightarrow\>\<infty\>>\<varepsilon\><rsub|i>=0>
      then <math|<big|sum><rsub|i=0><rsup|\<infty\>>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>>
      is convergent.

      <item>If <math|<big|sum><rsub|i=0><rsup|\<infty\>>z<rsub|i>> is
      convergent then <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>>
      is convergent.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Given <math|n,m\<in\>\<bbb-N\>> with <math|n\<leqslant\>m> define\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|x<rsup|<around*|(|n|)>><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m-n|}>>\<subseteq\>\<bbb-C\>>|<cell|<text|by>>|<cell|x<rsup|<around*|(|n|)>><rsub|i>=z<rsub|n+i>>>|<row|<cell|<around*|{|s<rsup|<around*|(|n|)>><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m-n|}>>\<subseteq\>\<bbb-C\>>|<cell|<text|by>
        >|<cell|s<rsup|<around*|[|n|]>><rsub|i>=<big|sum><rsub|j=0><rsup|i>x<rsup|<around*|(|n|)>><rsub|j>>>|<row|<cell|<around*|{|\<alpha\><rsup|<around*|(|n|)>><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m-n|}>>>|<cell|by
        >|<cell|\<alpha\><rsub|i><rsup|<around*|(|n|)>>=\<varepsilon\><rsub|i+n>>>>>
      </eqnarray*>

      Then we have

      <\equation>
        <label|eq 19.4.150>\<forall\>i\<in\><around*|{|1,\<ldots\>,m-n-1|}><text|
        that >\<alpha\><rsup|<around*|(|n|)>><rsub|i+1>=\<varepsilon\><rsub|<around*|(|i+n|)>+1>\<leqslant\>\<varepsilon\><rsub|i+n>=\<alpha\><rsup|<around*|(|n|)>><rsub|i><text|
        and >\<alpha\><rsup|<around*|(|n|)>><rsub|i>=\<varepsilon\><rsub|i+n>\<in\><around*|[|0,\<infty\>|[>
      </equation>

      Further given <math|i\<in\><around*|{|1,\<ldots\>,m-n|}>> we have

      <\equation*>
        s<rsup|<around*|(|n|)>><rsub|i>=<big|sum><rsub|j><rsup|i>x<rsup|<around*|(|n|)>><rsub|j>=<big|sum><rsub|j=0><rsup|i>z<rsub|n+j>=<big|sum><rsub|j=n><rsup|i+n>z<rsub|j><rsub|>=<big|sum><rsub|j=0><rsup|i+n>z<rsub|i>-<big|sum><rsub|j=0><rsup|n-1>z<rsub|j>=s<rsub|n+i>-s<rsub|n-i>
      </equation*>

      so that <math|<around*|\||s<rsup|<around*|(|n|)>><rsub|i>|\|>=<around*|\||s<rsub|n+i>|\|>+<around*|\||s<rsub|n-i>|\|>\<leqslant\>C+C=2\<cdot\>C>.
      Hence we have\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,m-n-1|}><text| that
        >s<rsup|<around*|(|n|)>><rsub|i>=s<rsub|n+i>-s<rsub|n-i><text| and
        >\<forall\>i\<in\><around*|{|0,\<ldots\>,m-n|}><text| that
        ><around*|\||s<rsup|<around*|(|n|)>><rsub|i>|\|>\<leqslant\>2\<cdot\>C
      </equation*>

      Using then the inequality of Abel [see theorem: <reference|exp
      inequality of Abel>] we have that

      <\equation*>
        <around*|\||<big|sum><rsub|i=0><rsup|m-n>\<alpha\><rsub|i>\<cdot\>x<rsup|<around*|(|n|)>><rsub|i>|\|>\<leqslant\>\<alpha\><rsub|0>\<cdot\>2\<cdot\>C=\<varepsilon\><rsub|n>\<cdot\>2\<cdot\>C
      </equation*>

      As <math|<big|sum><rsub|i=0><rsup|m-n>\<alpha\><rsub|i>\<cdot\>x<rsup|<around*|(|n|)>><rsub|i>=<big|sum><rsub|i=0><rsup|m-n>\<varepsilon\><rsub|n+i>\<cdot\>z<rsub|n+i>=<big|sum><rsub|i=n><rsup|m>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>>
      we have, using the above, that\ 

      <\equation>
        <label|eq 19.5.150><around*|\||<big|sum><rsub|i=n><rsup|m>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>|\|>\<leqslant\>\<varepsilon\><rsub|n>\<cdot\>2\<cdot\>C
      </equation>

      Take now <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<varepsilon\><rsub|i>=0>
      there exist a <math|N\<in\>\<bbb-N\>> such that
      <math|\<forall\>n\<geqslant\>N> <math|<rigid|\<varepsilon\><rsub|n>=<around*|\||\<varepsilon\><rsub|n>-0|\|>\<less\><frac|\<varepsilon\>|2\<cdot\>C+1>>>
      , combining this with [eq: <reference|eq 19.5.150>] gives
      <math|<around*|\||<big|sum><rsub|i=n><rsup|m>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>|\|>\<less\><frac|2\<cdot\>C|2\<cdot\>C+1>\<cdot\>\<varepsilon\>\<less\>\<varepsilon\>>.
      Hence we have proved that\ 

      <\equation*>
        \<forall\>\<varepsilon\>\<gtr\>0<text| there exist a
        >N\<in\>\<bbb-N\><text| such that >\<forall\>n\<geqslant\>N<text| and
        >m\<geqslant\>n<text| ><around*|\||<big|sum><rsub|i=n><rsup|m>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>|\|>\<less\>\<varepsilon\>
      </equation*>

      As <math|<around*|\<langle\>|\<bbb-C\>,\<\|\|\>|\<rangle\>>> is a
      Banach space [see corollary: <reference|complete the complex numbers
      are complete>] we can use [theorem: <reference|series convergence
      condition in a Banach space>] to prove that\ 

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i><text|
        converges>
      </equation*>

      <item>As <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a decreasing sequence and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|0\<leqslant\>\<varepsilon\><rsub|i>> it follows from [theorem:
      <reference|limit increasing decreasing (1)>] it follows that
      <math|\<alpha\>=<below|lim|i\<rightarrow\>\<infty\>>\<varepsilon\><rsub|i>>
      exist. Hence by [theorem: <reference|sequence convergence
      equivalences>] it follows that

      <\equation>
        <label|eq 19.6.151><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<varepsilon\><rsub|i>-\<alpha\>|)>=0
      </equation>

      Further as <math|<big|sum><rsub|i=0><rsup|\<infty\>>z<rsub|i>>
      converges it follows that <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=0><rsup|n>z<rsub|i>>
      exist, hence by [theorem: <reference|limit convergence implies
      bounded>] there exist a <math|C\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 19.7.151>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        that ><around*|\||<big|sum><rsub|j=0><rsup|i>z<rsub|i>|\|>\<leqslant\>C
      </equation>

      Using (1) together with [eqs: <reference|eq 19.6.151>, <reference|eq
      19.7.151>] proves that\ 

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>><around*|(|\<varepsilon\><rsub|i>-\<alpha\>|)>\<cdot\>z<rsub|i><text|
        converges>
      </equation*>

      As by the hypothesis <math|<big|sum><rsub|i=0><rsup|\<infty\>>z<rsub|i>>
      converges it follows from [theorem: <reference|serie sum and scalar
      product>] that

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>>\<alpha\>\<cdot\>z<rsub|i><text|
        converges>
      </equation*>

      Using [theorem: <reference|serie sum and scalar product>] again it
      follows that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<around*|(|\<varepsilon\><rsub|i>-\<alpha\>|)>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\>z<rsub|i>|)>>
      converges hence

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i><text|
        converges>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\lemma>
    <label|lemma 19.18.150>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\><rsup|+>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\><rsup|+>>
    be such that <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    we have <math|<frac|x<rsub|i+1>|y<rsub|i+1>>\<leqslant\><frac|x<rsub|i>|y<rsub|i>>>
    then if <math|<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>> converges it
    follows that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
    converges.
  </lemma>

  <\proof>
    Take <math|\<alpha\>=<frac|x<rsub|k>|y<rsub|k>>> then we have
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> that
    <math|<frac|x<rsub|i>|y<rsub|i>>\<leqslant\><frac|x<rsub|k>|y<rsub|k>>=\<alpha\>\<Rightarrowlim\><rsub|0\<less\>y<rsub|i>>x<rsub|i>\<leqslant\>\<alpha\>\<cdot\>y<rsub|i>>
    or as <math|0\<less\>x<rsub|i>> we have that
    <math|<around*|\||x<rsub|i>|\|>\<leqslant\>\<alpha\>\<cdot\>y<rsub|i>>.
    As <math|<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>> is convergent it
    follows by [theorem: <reference|serie sum and scalar product>] that
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>\<alpha\>\<cdot\>y<rsub|i>> is
    convergent. Hence using dominant convergence [see theorem:
    <reference|series dominant convergence>] it follows that
    <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|\||x<rsub|i>|\|><text|>>
    converges. Finally, as <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    we have <math|0\<less\>x<rsub|i>\<Rightarrow\>x<rsub|i>=<around*|\||x<rsub|i>|\|>>,
    it follows that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
    converges.
  </proof>

  <\theorem>
    <label|exp d'Alembert><dueto|d'Alembert>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|]|0,\<infty\>|[>>
    then we have

    <\enumerate>
      <item>If <math|\<alpha\>=<below|lim inf|i\<rightarrow\>\<infty\>>
      <frac|x<rsub|i+1>|x<rsub|i>>> exist and <math|1\<less\>\<alpha\>> then
      <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is not convergent.

      <item>If <math|\<beta\>=<below|lim sup|i\<rightarrow\>\<infty\>>
      <frac|x<rsub|i+1>|x<rsub|i>>> exist and <math|\<beta\>\<less\>1> then
      <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is convergent.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|1\<less\>\<alpha\>> then
      <math|1\<less\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|<frac|x<rsub|i+1>|x<rsub|i>>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\>k,\<ldots\>,\<infty\>|}>|)>>
      hence there exist a <math|n\<in\><around*|{|k,\<ldots\>,n|}>> such that
      <math|1\<less\>inf<around*|(|<around*|{|<frac|x<rsub|i+1>|x<rsub|i>>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>,
      so <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
      <math|1\<less\><frac|x<rsub|i+1>|x<rsub|i>>> or
      <math|x<rsub|i>\<less\>x<rsub|i+1>> hence

      <\equation>
        <label|eq 19.6.150>\<forall\>i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}><text|
        we have >0\<less\>x<rsub|n>\<less\>x<rsub|i>
      </equation>

      Assume now that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
      converges then by [theorem: <reference|series terms converges to zero>]
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=0> so there exist a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<geqslant\>N> we have that
      <math|x<rsub|i>=<around*|\||x<rsub|i>-0|\|>\<less\>x<rsub|n>>. Hence
      for <math|m=max<around*|(|n+1,N|)>> it follows that
      <math|x<rsub|n>\<less\><rsub|<text|[eq: <reference|eq
      19.6.150>]>>x<rsub|i>\<less\>x<rsub|n>> leading to the contradiction
      <math|x<rsub|n>\<less\>x<rsub|n>>. Hence
      <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> does not converges.

      <item>As <math|\<beta\>\<less\>1> it follows that there exist a
      <math|\<rho\>> such that <math|0\<leqslant\>\<beta\>\<less\>\<rho\>\<less\>1>
      or

      <\equation>
        <label|eq 19.7.150>inf<around*|(|<around*|{|sup<around*|(|<around*|{|<frac|x<rsub|i+1>|x<rsub|i>>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<less\>\<rho\>
      </equation>

      hence there exist a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|sup<around*|(|<around*|{|<frac|x<rsub|i+1>|x<rsub|i>>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<less\>\<rho\>>
      hence\ 

      <\equation>
        <label|eq 19.8.150>\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}><text|
        we have that ><frac|x<rsub|i+1>|x<rsub|i>>\<less\>\<rho\>=<frac|\<rho\><rsup|i+1>|\<rho\><rsup|i>>
      </equation>

      Now as <math|\<rho\>\<less\>1> we have by [example: <reference|series
      power series in R>] that <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<rho\><rsup|i>>
      is convergent, hence, using [theorem: <reference|series partition
      series>], <math|<big|sum><rsub|i=n><rsup|\<infty\>>\<rho\><rsup|i>> is
      convergent. Using [lemma: <reference|lemma 19.18.150>] together with
      [eqs: <reference|eq 19.7.150>, <reference|eq 19.8.150>] proves then
      that <math|<big|sum><rsub|i=n><rsup|n>x<rsub|i>> is convergent.
      Finally, by [theorem: <reference|series partition series>] again, we
      have that\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i><text| converges.>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Definition of <math|exp<around*|(|z|)>>>

  We will define the exponential function <math|exp<around*|(|x|)>> as
  <math|exp<around*|(|z|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>>
  so we have to look at the convergence domain of the power series
  <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>>.

  <\theorem>
    <label|exp exp series>Let <math|z\<in\>\<bbb-C\>> then\ 

    <\enumerate>
      <item><math|<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<bbb-C\>=\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>>
      [in other words <math|\<forall\>z\<in\>\<bbb-C\>> we have that
      <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\><around*|\||z|\|><rsup|n>>
      and <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>
      >converges]

      <item><math|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<infty\>>

      <item><math|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>|)>=<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>|)>|\<wide-bar\>>=\<bbb-C\>>

      <item><math|>If <math|z=0> then <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>=1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|z\<in\>\<bbb-C\>> then we have either:

      <\description>
        <item*|<math|z=0>>Then <math|<around*|\||z|\|>=0> and by [example:
        <reference|exp 0 is in convergence domain>]
        <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|\||<frac|1|n!>|\|>\<cdot\><around*|\||z|\|><rsup|n>>
        converges.

        <item*|<math|z\<neq\>0>>Then we have
        <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that

        <\equation>
          <label|eq 19.9.150>0\<less\><around*|\||<frac|1|n!>\<cdot\>z<rsup|n>|\|><text|
          and ><frac|<around*|\||<frac|1|<around*|(|n+1|)>!>\<cdot\>z<rsup|n+1>|\|>|<around*|\||<frac|1|n!>\<cdot\>z<rsup|n>|\|>>=<frac|z|n+1>
        </equation>

        Using a consequence of the Archimedean property of the real numbers
        [see theorem: <reference|complex Archimedean property consequence
        (1)>] there exist a <math|N\<in\>\<bbb-N\><rsub|0>> such that
        <math|2\<cdot\><around*|\||z|\|>\<less\>N> so that
        <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
        <math|2\<cdot\><around*|\||z|\|>\<less\>N\<leqslant\>n+1> hence
        <math|<frac|<around*|\||z|\|>|n+1>\<less\><frac|1|2>>. So\ 

        <\equation>
          <label|eq 19.10.150>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text|
          we have that <math|0\<less\><frac|<around*|\||z|\|>|n+1>\<leqslant\><frac|1|2>>>
        </equation>

        and further

        <\equation>
          <label|eq 19.11.150>\<forall\>n\<in\><around*|{|0,\<ldots\>,\<infty\>|}><text|
          we have <math|0\<less\><frac|<around*|\||z|\|>|n+1>\<leqslant\>max<around*|(|<frac|1|2>,max<around*|(|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|1,\<ldots\>,N-1|}>|)>|)>>>
        </equation>

        So <math|\<forall\>k\<in\><around*|{|0,\<ldots\>,\<infty\>|}>> the
        set <math|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|0,\<ldots\>,\<infty\>|}>|}>>
        is bounded above hence by the conditional completeness of
        <math|\<bbb-R\>> [see theorem: <reference|complex RC is conditional
        complete>] it follows that\ 

        <\equation>
          <label|eq 19.12.150>\<forall\>k\<in\><around*|{|0,\<ldots\>,\<infty\>|}><text|
          0>\<leqslant\>sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
        </equation>

        In particular we have using [eq: <reference|eq 19.10.150>] that\ 

        <\equation>
          <label|eq 19.13.150>\<forall\>k\<in\><around*|{|N,\<ldots\>,\<infty\>|}><text|
          >0\<leqslant\>sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><frac|1|2>
        </equation>

        Using [eq: <reference|eq 19.12.150>] it follows that
        <math|<around*|{|sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|0,\<ldots\>,\<infty\>|}>|}>>
        is bounded below by <math|0> so that

        <\equation*>
          inf<around*|(|<around*|{|sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|0,\<ldots\>,\<infty\>|}>|}>|)><text|
          exist>
        </equation*>

        Further using [eq: <reference|eq 19.13.150>] it follows that
        <math|<around*|{|sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>>
        is bounded below by <math|0> but also above by <math|<frac|1|2>> so
        that\ 

        <\equation*>
          inf<around*|(|<around*|{|sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><frac|1|2>
        </equation*>

        As <math|<around*|{|sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|0,\<ldots\>,\<infty\>|}>|}>>
        it follows that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|<frac|<around*|\||z|\|>|n+1>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|0,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|\<leqslant\>>|<cell|<frac|1|2>>>>>
        </eqnarray*>

        or\ 

        <\equation*>
          <below|lim sup|n\<rightarrow\>\<infty\>>
          <frac|<around*|\||z|\|>|n+1>\<leqslant\><frac|1|2>\<less\>1
        </equation*>

        Using then [eq: <reference|eq 19.9.150>] it follows that\ 

        <\equation*>
          <below|lim sup|n\<rightarrow\>\<infty\>>
          <frac|<around*|\||<frac|1|<around*|(|n+1|)>!>\<cdot\>z<rsup|n+1>|\|>|<around*|\||<frac|1|n!>\<cdot\>z<rsup|n>|\|>>\<less\>1<text|
          and ><around*|{|<frac|<around*|\||<frac|1|<around*|(|n+1|)>!>\<cdot\>z<rsup|n+1>|\|>|<around*|\||<frac|1|n!>\<cdot\>z<rsup|n>|\|>>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\><around*|]|0,\<infty\>|[>
        </equation*>

        Applying then d'Alembert [see theorem: <reference|exp d'Alembert>]
        proves that\ 

        <\equation*>
          <big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|\||z|\|><rsup|n>|<around*|\||n!|\|>><text|
          converges>
        </equation*>

        Hence <math|\<bbb-C\>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>\<subseteq\>\<cal-D\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|)>\<subseteq\>\<bbb-C\>>
        or\ 

        <\equation*>
          <wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<bbb-C\>=\<cal-D\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|)>
        </equation*>
      </description>

      <item>Combining (1) with [theorem: <reference|exp convergence domains
      and balls (1)>] results in <math|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<infty\>>.

      <item>As by <math|>(2) <math|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<infty\>
      >we have by definition [see definition: <reference|exp ball
      extensions>] that <math|<rigid|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>|)>>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>|)>|\<wide-bar\>><rigid|>=\<bbb-C\>>.
      Hence combining this with (1) gives

      <\equation*>
        B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>|)>=<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>|)>|\<wide-bar\>>
      </equation*>

      \ 

      <item>If <math|z=0> then by [example: <reference|exp 0 is in
      convergence domain>] we have that <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>=<frac|1|0!>=1>
    </enumerate>
  </proof>

  As <math|\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>|]>=\<bbb-C\>>
  we can define a function that maps every complex number <math|z> to
  <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>> this function
  is the exponential function.

  <\definition>
    <label|exp><index|exponential function><index|<math|exp<around*|(|z|)>>><dueto|Exponential
    function>The exponential function <math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>>
    is defined by\ 

    <\equation*>
      exp:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| where
      >exp<around*|(|x|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>
    </equation*>

    <\note>
      Using the definition of the power function [see definition:
      <reference|exp power function>] the exponential function is a example
      of a power function, in fact <math|exp=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\><around*|(|\<ast\>|)><rsup|n>>.
    </note>
  </definition>

  <subsection|Differentiation of the exponential function>

  Given a power series <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>>
  with <math|0\<less\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>
  we have by [theorem: <reference|exp convergence domains and balls (2)>]
  that\ 

  <\equation*>
    0\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>\<subseteq\>\<cal-D\><around*|(|<around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>=dom<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)>
  </equation*>

  it make sense to talk about differentiation of the power function
  <math|<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><rsub|\|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>>>
  at <math|0>. If we would naively extend differentiation of a finite sum of
  a function then we would have\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|D<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)>>|<cell|=>|<cell|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>D<around*|(|<around*|(|\<ast\>|)><rsup|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>n\<cdot\><around*|(|\<ast\>|)><rsup|n-1>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>\<cdot\>0\<cdot\><around*|(|\<ast\>|)><rsup|0>+<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>\<cdot\>n\<cdot\><around*|(|\<ast\>|)><rsup|n-1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>\<cdot\>n\<cdot\><around*|(|\<ast\>|)><rsup|n-1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n+1>\<cdot\><around*|(|n+1|)>\<cdot\><around*|(|\<ast\>|)><rsup|n>>>>>
  </eqnarray*>

  which is again a power function. Of course we must ensure that
  <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n+1>\<cdot\><around*|(|n+1|)>\<cdot\>z<rsup|n>>
  is a convergence power series and prove that we can differentiate under a
  infinite sum which is actually a limit of partial sums. Nevertheless
  <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n+1>\<cdot\><around*|(|n+1|)>\<cdot\>z<rsup|n>>
  is a power series.

  <\definition>
    <label|exp derived power series><index|derived power
    series><dueto|Derived Power Series>Let
    <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>> be a
    power series then the <with|font-series|bold|derived power series> of
    <math|><math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>>
    is the series <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>.
  </definition>

  We have the following usefully properties of the derived power series of a
  power series.

  <\lemma>
    <label|exp derived power service properties>Let
    <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>> be a
    power series then

    <\enumerate>
      <item><math|\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>

      <item><math|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>=\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|z\<in\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>>
      then by definition <math|><math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>
      is convergent. Given <math|<around*|{|<frac|1|n+1>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-R\>>
      we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|<frac|1|<around*|(|n+1|)>+1>\<less\><frac|1|n+1>> so by Abel
      Dirichlet [theorem: <reference|exp Abel Dirichlet> (2)] we have that
      <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n+1>\<cdot\><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>
      is convergent, hence\ 

      <\equation*>
        <big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n+1>\<cdot\>z<rsup|n><text|
        is convergent>
      </equation*>

      Using [theorem: <reference|serie sum and scalar product>] on the above
      proves that <math|<big|sum><rsub|n=0><rsup|\<infty\>>z\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>
      is convergent, hence\ 

      <\equation*>
        <big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n+1>\<cdot\>z<rsup|n+1><text|
        is convergent>
      </equation*>

      Using then [theorem: <reference|series translation start>] it follows
      that

      <\equation*>
        <big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n><text|
        is convergent>
      </equation*>

      hence <math|z\<in\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>.
      So we have that\ 

      <\equation*>
        \<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>
      </equation*>

      <item>Using [theorem: <reference|exp convergence domains and balls
      (2)>] we have\ 

      <\equation*>
        B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>
      </equation*>

      by (1) we have\ 

      <\equation*>
        \<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>
      </equation*>

      and by [theorem: <reference|exp convergence domains and balls (2)>]
      again we have\ 

      <\equation*>
        \<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>|\<wide-bar\>>
      </equation*>

      it follows that\ 

      <\equation*>
        B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>|)>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>|\<wide-bar\>>
      </equation*>

      so that by [theorem: <reference|exp balls inclucsion><> we have that\ 

      <\equation>
        <label|eq 19.16.151>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>\<leqslant\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>
      </equation>

      Let <math|z\<in\>\<bbb-C\>> such that
      <math|0\<less\><around*|\||z|\|>\<less\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>
      then there exist a <math|\<rho\>\<in\>\<bbb-R\>> such that

      <\equation*>
        0\<less\><around*|\||z|\|>\<less\>\<rho\>\<less\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>
      </equation*>

      By the above <math|\<rho\>\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>\<subseteq\><rsub|<text|[theorem:
      <reference|exp convergence domains and balls
      (2)>]>>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>
      so that\ 

      <\equation*>
        <big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>\<rho\><rsup|n><text|
        is convergent>
      </equation*>

      So, by [theorem: <reference|series terms converges to zero>], there
      exist a <math|K\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 19.17.151>\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
        ><around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>=<around*|\||a<rsub|n>\<cdot\>\<rho\><rsup|n>|\|>\<leqslant\>K
      </equation>

      Now for <math|n\<in\>\<bbb-N\><rsub|0>> we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|\|>>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\><around*|\||a<rsub|n+1>|\|>\<cdot\>z<rsup|n>>>|<row|<cell|>|<cell|=>|<cell|<frac|n+1|\<rho\>>\<cdot\><around*|(|<frac|<around*|\||z|\|>|\<rho\>>|)><rsup|n>\<cdot\>a<rsub|n+1>\<cdot\>\<rho\><rsup|n+1>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 19.17.151>]>>>|<cell|K\<cdot\><frac|n+1|\<rho\>>\<cdot\><around*|(|<frac|<around*|\||z|\|>|\<rho\>>|)><rsup|n>>>|<row|<cell|>|<cell|=>|<cell|K\<cdot\><frac|n+1|\<rho\>>\<cdot\>q<rsup|n>>>>>
      </eqnarray*>

      where <math|q=<frac|<around*|\||z|\|>|\<rho\>>\<less\>1>. To summarize
      we have proved that\ 

      <\equation>
        <label|eq 19.18.151>\<forall\>n\<in\>\<bbb-N\><rsub|0>\<vDash\><around*|\||<around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|\|>\<leqslant\>K\<cdot\><frac|n+1|\<rho\>>\<cdot\>q<rsup|n>
        where 0\<less\>q\<less\>1
      </equation>

      Now for the power series <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>q<rsup|n>>
      we have that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|<frac|<around*|(|<around*|(|n+1|)>+1|)>\<cdot\>q<rsup|n+1>|<around*|(|n+1|)>\<cdot\>q<rsup|n>>=<frac|n+2|n+1>\<cdot\>q>.
      By [example: <reference|limit (a+n)/(b+n)>]
      <math|<below|lim|n\<rightarrow\>\<infty\>><frac|n+2|n+1>=1> so that by
      [theorem: <reference|limit a.x_n>] <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<frac|n+2|n+1>\<cdot\>q|)>=q\<less\>1>,
      using [theorem: <reference|limit limsup liminf and limit>] it follows
      that <math|<below|lim sup|n\<rightarrow\>\<infty\>><around*|(|<frac|n+2|n+1>\<cdot\>q|)>>
      exist and <math|<below|lim sup|n\<rightarrow\>\<infty\>><around*|(|<frac|n+2|n+1>\<cdot\>q|)>\<less\>1>.
      Hence we can use d'Alembert [theorem: <reference|exp d'Alembert>]
      proving that <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>q<rsup|n>>
      converges. Using then [theorem: <reference|serie sum and scalar
      product>] together with [eq: <reference|eq 19.18.151>] it follows that
      <math|<big|sum><rsub|n=0><rsup|\<infty\>>K\<cdot\><frac|n+1|\<rho\>>\<cdot\>q<rsup|n>>
      is convergent. Using then dominant convergence [see theorem:
      <reference|series absolute dominant convergence>] we conclude that
      <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>
      converges, hence <math|z\<in\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>>.
      To summarize\ 

      <\equation*>
        \<forall\>z\<in\>\<bbb-C\><text| with
        >0\<less\><around*|\||z|\|>\<less\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]><text|
        we have that >z\<in\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>
      </equation*>

      As also <math|0\<in\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>>
      it follows that\ 

      <\equation*>
        B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>|)>|\<wide-bar\>>
      </equation*>

      So by [theorem: <reference|exp balls inclucsion>] it follows that
      \ <math|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>\<leqslant\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>>
      which together with [eq: <reference|eq 19.16.151>] proves that\ 

      <\equation*>
        \<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>=\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>
      </equation*>
    </enumerate>
  </proof>

  Hence we have found the conditions where a derived power series converges.
  We prove now that the derived power series of a power series is indeed its
  derivative.

  <\theorem>
    <label|exp derivative of a power series>Let
    <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>> be a
    power series with <math|0\<less\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>
    then we have\ 

    <\enumerate>
      <item><math|\<forall\>z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)><text|
      we have that ><big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>>
      and <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>
      converges

      <item><math|\<forall\>z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>>
      the function

      <\equation*>
        <big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>:B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>\<rightarrow\>\<bbb-C\><text|
        defined by ><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><around*|(|z|)>=<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>
      </equation*>

      has a derivative <math|<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><rsub|z><rprime|'>>
      at <math|z> and\ 

      <\equation*>
        <around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><rsub|z><rprime|'>=<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>
      </equation*>

      \ 
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|><math|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>\<equallim\><rsub|<text|[theorem:
      <reference|exp derived power service
      properties>]>>\<cal-R\><around*|[|<big|sum><rsub|n=0><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>>
      it follows that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>=B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>|)>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>>|<cell|>>|<row|<cell|>|<cell|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>|<cell|>>>>
      </eqnarray*>

      So that <math|\<forall\>z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>>
      we have that <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>>
      and <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>
      converges.

      <item>Define <math|f=<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>>
      and <math|g=<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>.
      Given <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>>
      take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As
      <math|<around*|\||z|\|>\<less\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>
      there exist a <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such
      that <math|<around*|\||z|\|>\<less\>\<delta\><rprime|'>\<less\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>,
      further, as <math|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>>
      is open there exist a <math|\<delta\><rprime|''>\<in\>\<bbb-R\><rsup|+>>
      such that <rigid|<math|B<rsub|<around*|\|||\|>><around*|(|z,\<delta\><rprime|''>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>>>.
      Hence if we take <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,\<delta\><rprime|''>|)>>
      then we have\ 

      <\equation*>
        <around*|\||z|\|>\<less\>\<delta\>\<less\>\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]><text|
        and >z\<in\>B<rsub|<around*|\|||\|>><around*|(|z,\<delta\>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>
      </equation*>

      Let <math|h\<in\>\<bbb-C\>> with <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\>,\<delta\>-<around*|\||z|\|>|)>>
      then <math|<around*|\||h+z|\|>\<leqslant\><around*|\||h|\|>+<around*|\||z|\|>\<less\>\<delta\>-<around*|\||z|\|>+<around*|\||z|\|>=\<delta\>\<less\>\<delta\><rprime|''>>
      so that <math|h+z\<in\>B<rsub|<around*|\|||\|>><around*|(|z,\<delta\><rprime|''>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>>
      or <math|h\<in\><around*|(|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>|)>|)><rsub|z>>.
      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|f<around*|(|z+h|)>-f<around*|(|z|)>|h>-g<around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|f<around*|(|z+h|)>-g<around*|(|z|)>-h\<cdot\>g<around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|z+h|)><rsup|n>-<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|fundamental binomial formula>]>>>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-z<rsup|n>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-z<rsup|n>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|series partition series>]>>>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|a<rsub|0>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|0><binom|0|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|0-i>|)>-z<rsup|0>|)>+<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-z<rsup|n>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|series partition series>]>>>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|a<rsub|0>\<cdot\><around*|(|<binom|0|0>\<cdot\>h<rsup|0>\<cdot\>z<rsup|0-0>-z<rsup|0>|)>+<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-z<rsup|n>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|a<rsub|0>\<cdot\>0+<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-z<rsup|n>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-z<rsup|n>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-<binom|0|0>\<cdot\>h<rsup|0>z<rsup|n-0>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|series partition series>]>>>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|a<rsub|1>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|1><binom|1|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|1-i>|)>+<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-<rigid|h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|a<rsub|1>\<cdot\><around*|(|<binom|1|1>\<cdot\>h<rsup|1>\<cdot\>z<rsup|1-1>|)>+<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-<rigid|h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|a<rsub|1>\<cdot\>h+<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-h\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|series partition series>]>>>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|a<rsub|1>\<cdot\>h+<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-h\<cdot\><around*|(|0+1|)>\<cdot\>a<rsub|0+1>\<cdot\>z<rsup|0>-<rigid|h\<cdot\><big|sum><rsub|n=1><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|a<rsub|1>\<cdot\>h+<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-h\<cdot\>a<rsub|1>-h\<cdot\><big|sum><rsub|n=1><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-h\<cdot\><big|sum><rsub|n=1><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|series translation start>]>>>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-h\<cdot\><big|sum><rsub|n=2><rsup|\<infty\>>n\<cdot\>a<rsub|n>\<cdot\>z<rsup|n-1>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|serie sum and scalar product>]>>>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-<big|sum><rsub|n=2><rsup|\<infty\>>n\<cdot\>a<rsub|n>\<cdot\>h\<cdot\>z<rsup|n-1>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|serie sum and scalar product>]>>>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=2><rsup|\<infty\>><around*|(|a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-n\<cdot\>a<rsub|n>\<cdot\>h\<cdot\>z<rsup|n-1>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=2><rsup|\<infty\>><around*|(|a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>-<binom|n|1>\<cdot\>a<rsub|n>\<cdot\>h<rsup|1>\<cdot\>z<rsup|n-1>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\>h<rsup|i>\<cdot\>z<rsup|n-i>|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|serie sum and scalar product>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\>h<rsup|i-1>\<cdot\>z<rsup|n-i>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      To summarize the above lengthy computation we have proved that\ 

      <\equation>
        <label|eq 19.19.151><frac|f<around*|(|z+h|)>-f<around*|(|z|)>|h>-g<around*|(|z|)>=<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\>h<rsup|i-1>\<cdot\>z<rsup|n-i>|)>
      </equation>

      Now let <math|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\>h<rsup|i-1>\<cdot\>z<rsup|n-i>|\|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\><around*|\||<big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\>h<rsup|i-2>\<cdot\>z<rsup|n-i>|\|>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\><big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\><big|sum><rsub|i=2><rsup|n><frac|n!|<around*|(|n-i|)>!\<cdot\>i!>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>>|<cell|\<equallim\><rsub|n,i\<geqslant\>2>>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\><big|sum><rsub|i=2><rsup|n><frac|n\<cdot\><around*|(|n-1|)>\<cdot\><around*|(|n-2|)>!|<around*|(|n-i|)>!\<cdot\>i\<cdot\><around*|(|i-1|)>\<cdot\><around*|(|i-2|)>!>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>>|<cell|\<leqslant\><rsub|i\<geqslant\>2\<Rightarrow\>i\<cdot\><around*|(|i-1|)>\<geqslant\>1>>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\><big|sum><rsub|i=2><rsup|n><frac|n\<cdot\><around*|(|n-1|)>\<cdot\><around*|(|n-2|)>!|<around*|(|n-i|)>!\<cdot\><around*|(|i-2|)>!>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><big|sum><rsub|i=2><rsup|n><frac|<around*|(|n-2|)>!|<around*|(|n-i|)>!\<cdot\><around*|(|i-2|)>!>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><big|sum><rsub|i=2><rsup|n><frac|<around*|(|n-2|)>!|<around*|(|<around*|(|n-2|)>-<around*|(|i-2|)>|)>!\<cdot\><around*|(|i-2|)>!>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|<around*|(|n-2|)>-<around*|(|i-2|)>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><big|sum><rsub|i=0><rsup|n-2><frac|<around*|(|n-2|)>!|<around*|(|<around*|(|n-2|)>-i|)>!\<cdot\>i!>\<cdot\><around*|\||h|\|><rsup|i>\<cdot\><around*|\||z|\|><rsup|<around*|(|n-2|)>-i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|fundamental binomial formula>]>>>|<cell|>>|<row|<cell|<around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving

      <\equation>
        <label|eq 19.20.151><big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>\<leqslant\><around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>
      </equation>

      As\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||z|\|>+<around*|\||h|\|>>|<cell|\<less\>>|<cell|\<delta\>-<around*|\||z|\|>+<around*|\||z|\|>>>|<row|<cell|>|<cell|=>|<cell|\<delta\>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp derived power service
        properties>]>>>|<cell|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp derived power service
        properties>]>>>|<cell|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|<around*|(|n+1|)>+1|)>\<cdot\><around*|(|n+1|)>\<cdot\>a<rsub|<around*|(|n+1|)>+1>\<cdot\>z<rsup|n>|]>>>|<row|<cell|>|<cell|=>|<cell|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+2|)>\<cdot\><around*|(|n+1|)>\<cdot\>a<rsub|n+2>\<cdot\>z<rsup|n>|]>>>>>
      </eqnarray*>

      so that <rigid|<math|<around*|\||z|\|>+<around*|\||h|\|>\<in\>B<rsub|<around*|\|||\|>><around*|(|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+2|)>\<cdot\><around*|(|n+1|)>\<cdot\>a<rsub|n+2>\<cdot\>z<rsup|n>|]>|)>\<subseteq\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+2|)>\<cdot\><around*|(|n+1|)>\<cdot\>a<rsub|n+2>\<cdot\>z<rsup|n>|]>>>.
      Hence we have that <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+2|)>\<cdot\><around*|(|n+1|)>\<cdot\><around*|\||a<rsub|n+2>|\|>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n>>
      converges, using \ [theorem: <reference|series translation start>] it
      follows that <math|><math|<big|sum><rsub|n=2><rsup|\<infty\>>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|\||a<rsub|n>|\|>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>>
      converges. Further using [theorem: <reference|serie sum and scalar
      product>] it follows that <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|\||a<rsub|n>|\|>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>>
      converges. As by [eq: <reference|eq 19.20.151>]

      <\equation*>
        <big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>\<leqslant\><around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>
      </equation*>

      we can use dominant convergence [see theorem: <reference|series
      absolute dominant convergence>] proving that

      <\equation*>
        <big|sum><rsup|\<infty\>><rsub|n=2><around*|(|<big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>|)>
      </equation*>

      converges and that\ 

      <\equation*>
        <around*|\||<big|sum><rsup|\<infty\>><rsub|n=2><around*|(|<big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\><around*|\||h|\|><rsup|i-2>\<cdot\><around*|\||z|\|><rsup|n-i>|)>|\|>\<leqslant\><big|sum><rsub|n=0><rsup|\<infty\>><around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|\||a<rsub|n>|\|>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>
      </equation*>

      Hence we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<frac|f<around*|(|z+h|)>-f<around*|(|z|)>|h>-g<around*|(|z|)>|\|>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 19.19.151>]>>>|<cell|<around*|\||<big|sum><rsub|n=2><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|n><binom|n|i>\<cdot\>h<rsup|i-1>\<cdot\>z<rsup|n-i>|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|n=0><rsup|\<infty\>><around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|\||a<rsub|n>|\|>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|serie sum and scalar product>>>>|<cell|<around*|\||h|\|>\<cdot\><big|sum><rsub|n=0><rsup|\<infty\>><around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|\||a<rsub|n>|\|>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>>>>>
      </eqnarray*>

      Take now <math|\<delta\><rsub|\<varepsilon\>>=min<around*|(|\<delta\>,<frac|\<varepsilon\>|1+<big|sum><rsub|n=0><rsup|\<infty\>><around*|\||h|\|>\<cdot\>n\<cdot\><around*|(|n-1|)>\<cdot\><around*|\||a<rsub|n>|\|>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|n-2>>|)>>
      then if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|\<varepsilon\>>>
      it follows that\ 

      <\equation*>
        <around*|\||<frac|f<around*|(|z+h|)>-f<around*|(|z|)>|h>-g<around*|(|z|)>|\|>\<less\>\<varepsilon\>
      </equation*>

      which proves that

      <\equation*>
        f<rprime|'><rsub|z><text| exist and
        <math|f<rprime|'><rsub|z>=g<around*|(|z|)>>>
      </equation*>

      Using the definition of <math|f> and <math|g> we have finally that
      <math|<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><rsub|z><rprime|'>>
      exist and

      <\equation*>
        <around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><rsub|z><rprime|'>=<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>
      </equation*>
    </enumerate>
  </proof>

  We can use the above theorem to prove that the exponential function has a
  derivative at every complex number.

  <\theorem>
    <label|exp derivative><math|\<forall\>z\<in\>\<bbb-C\>> the exponential
    function\ 

    <\equation*>
      exp:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| defined by
      >exp<around*|(|z|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>
    </equation*>

    or

    <\equation*>
      exp=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\><around*|(|\<ast\>|)><rsup|n>
    </equation*>

    has a derivative <math|exp<rprime|'><rsub|z>> where\ 

    <\equation*>
      exp<rprime|'><rsub|z>=exp<around*|(|z|)>
    </equation*>

    In other words if we define <math|exp<rprime|'>> by\ 

    <\equation*>
      exp<rprime|'>:\<bbb-C\>\<rightarrow\>\<bbb-C\> by
      exp<rprime|'><around*|(|x|)>=exp<rprime|'><rsub|x>
    </equation*>

    then\ 

    <\equation*>
      exp<rprime|'>=exp
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|exp exp series>] it follows that
    <math|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>|]>|)>=\<bbb-C\>>
    then by the previous theorem \ [theorem: <reference|exp derivative of a
    power series>] we have that <math|\<forall\>z\<in\>\<bbb-C\>>
    <math|<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><rprime|'><rsub|z>>
    exist and\ 

    <\equation*>
      exp<rprime|'><rsub|z>=<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\><around*|(|\<ast\>|)><rsup|n>|)><rprime|'><rsub|z>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|n+1|<around*|(|n+1|)>!>\<cdot\>z<rsup|n>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>=<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|\<ast\>|)><rsup|n>|n!>|)><around*|(|z|)>=exp<around*|(|z|)>
    </equation*>
  </proof>

  A direct consequence of the above is that the exponential function is
  continuous.

  <\theorem>
    <label|exp is continuous>For <math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>>
    we have:\ 

    <\enumerate>
      <item><math|exp> is continuous

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|\<forall\>n\<in\>\<bbb-N\>> that <math|exp> has a <math|n>-th
      derivative at <math|z> and <math|exp<rsup|<around*|(|n|)>><rsub|z>=exp<around*|(|z|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<forall\>z\<in\>\<bbb-C\>> <math|exp<rprime|'><rsub|z>>
      exist it follows from [theorem: <reference|diff derivate and frechet
      differential>] that <math|exp> is differentiable at <math|z>, hence,
      using [theorem: <reference|diff differentiable function is
      continuous>], <math|exp> is continuous at <math|x>.

      <item>The prove is easily done by induction, so let
      <math|z\<in\>\<bbb-C\>> and define

      <\equation*>
        S<rsub|z>=<around*|{|n\<in\>S\|exp<rsup|<around*|(|n|)>><rsub|z><text|
        exist and >exp<rsup|<around*|(|n|)>><rsub|z>=exp<around*|(|z|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|exp<rprime|'><rsub|z>> exist and
        <math|exp<rsup|<around*|(|1|)>><rsub|z>=exp<rprime|'><rsub|z>=exp<around*|(|z|)>>
        we have that <math|1\<in\>S>.\ 

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> it
        follows that <math|\<forall\>z\<in\>\<bbb-C\>>
        <math|exp<rsup|<around*|(|n|)>><rsub|z>> exist and
        <math|exp<rsup|<around*|(|n|)>><rsub|z>=exp<around*|(|z|)>> so that
        the function\ 

        <\equation*>
          exp<rsup|<around*|(|n|)>>:\<bbb-C\>\<rightarrow\>\<bbb-C\><text|
          >exp<rsup|<around*|(|n|)>><around*|(|z|)>=exp<rsup|n><rsub|z>
        </equation*>

        is equal to <math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>>, hence
        <math|exp<rsup|<around*|(|n|)>>=exp>. Let <math|z\<in\>\<bbb-C\>>
        then as <math|exp<rprime|'><rsub|z>> exist and
        <math|exp<rprime|'><rsub|z>=exp<around*|(|z|)>> it follows by
        definition that <math|exp<rsup|<around*|(|n+1|)>><rsub|z>> exist and
        that

        <\equation*>
          exp<rsup|<around*|(|n+1|)>><rsub|z>=<around*|(|exp<rsup|<around*|(|n|)>>|)><rprime|'><rsub|z>=exp<rprime|'><rsub|z>=exp<around*|(|z|)>
        </equation*>

        So it follows that <math|n+1\<in\>S>.
      </description>
    </enumerate>
  </proof>

  <subsection|Properties of the exponential function>

  Next we show that the exponential behaves a lot like a power of a number.
  This motivates the common notation to write <math|exp<around*|(|z|)>> as
  <math|e<rsup|z>>. First we need some theorems about series.

  <\theorem>
    <label|exp Mertens theorem><dueto|Mertens>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>> be a absolute
    convergent series in <math|\<bbb-C\>> and
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>b<rsub|i>> a convergent series
    in <math|\<bbb-C\>>. If <math|<around*|{|c<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>
    is defined by <math|c<rsub|i>=<big|sum><rsub|j=0><rsup|i>a<rsub|j>\<cdot\>b<rsub|i-j>>
    them <math|<big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i>> converges and\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i>=<around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>|)>\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>b<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|A=<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>> and
    <math|B=<big|sum><rsub|i=0><rsup|\<infty\>>b<rsub|i>>. <math|>We prove
    now by induction that\ 

    <\equation>
      <label|eq 19.21.151>\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      <math|<big|sum><rsub|i=0><rsup|n>c<rsub|i>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=0><rsup|n-i>b<rsub|j>|)>>>
    </equation>

    <\proof>
      Let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<big|sum><rsub|i=0><rsup|n>c<rsub|i>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=0><rsup|n-i>b<rsub|j>|)>|}>>
      then we have:

      <\description>
        <item*|<math|0\<in\>S>><math|<big|sum><rsub|i=0><rsup|0>c<rsub|i>=c<rsub|0>=<big|sum><rsub|j=0><rsup|0>a<rsub|j>\<cdot\>b<rsub|0-j>=a<rsub|0>\<cdot\>b<rsub|0>=<big|sum><rsub|i=0><rsup|0>a<rsub|i>\<cdot\>b<rsub|0>=<big|sum><rsub|i=0><rsup|0>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=0><rsup|o-i>b<rsub|j>|)>>
        proving that <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|<around*|(|n+1|)>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=0><rsup|<around*|(|n+1|)>-i>b<rsub|j>|)>>|<cell|=>|<cell|>>|<row|<cell|a<rsub|n+1>\<cdot\><big|sum><rsub|j=0><rsup|<around*|(|n+1|)>-<around*|(|n+1|)>>b<rsub|j>+<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=0><rsup|<around*|(|n+1|)>-i>b<rsub|j>|)>>|<cell|=>|<cell|>>|<row|<cell|a<rsub|n+1>\<cdot\>b<rsub|0>+<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|b<rsub|n+1-i>+<big|sum><rsub|j=0><rsup|n-i>b<rsub|j>|)>>|<cell|=>|<cell|>>|<row|<cell|a<rsub|n+1>\<cdot\>b<rsub|0>+<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>b<rsub|n+1-i>+<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=0><rsup|n-i>b<rsub|j>|)>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|a<rsub|n+1>\<cdot\>b<rsub|0>+<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>b<rsub|n+1-i>+<big|sum><rsub|i=0><rsup|n>c<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|a<rsub|n+1>\<cdot\>b<rsub|<around*|(|n+1|)>-<around*|(|n+1|)>>+<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>b<rsub|n+1-i>+<big|sum><rsub|i=0><rsup|n>c<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>a<rsub|i>\<cdot\>b<rsub|n+1-i>+<big|sum><rsub|i=0><rsup|n>c<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|c<rsub|n+1>+<big|sum><rsub|i=0><rsup|n>c<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>c<rsub|i>>|<cell|>|<cell|>>>>
        </eqnarray*>

        which proves that <math|n+1\<in\>S>.
      </description>

      Mathematical induction proves then [eq: <reference|eq 19.21.151>].
    </proof>

    By [theorem: <reference|series partition series>] we have for
    <math|n\<in\>\<bbb-N\><rsub|0>> that <math|B=<big|sum><rsub|i=0><rsup|\<infty\>>b<rsub|i>=<big|sum><rsub|i=0><rsup|n-i>b<rsub|i>+<big|sum><rsub|i=n-i+1><rsup|\<infty\>>b<rsub|i>>,
    hence <math|B-<big|sum><rsup|\<infty\>><rsub|i=n-i+1>b<rsub|i>=<big|sum><rsub|i=0><rsup|n-i>b<rsub|i>>.
    Substituting this in [eq: <reference|eq 19.21.151>] gives that
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>c<rsub|i>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|B-<big|sum><rsup|\<infty\>><rsub|i=n-i+1>b<rsub|i>|)>=B\<cdot\><big|sum><rsub|i=0><rsup|n>a<rsub|i>-<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|)>
    </equation*>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<big|sum><rsub|i=0><rsup|n>c<rsub|i>-A\<cdot\>B|\|>>|<cell|=>|<cell|<around*|\||B\<cdot\><big|sum><rsub|i=0><rsup|n>a<rsub|i>-A\<cdot\>B-<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||<around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>-A|)>\<cdot\>B-<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||<big|sum><rsub|i=0><rsup|n>a<rsub|i>-A|\|>+<around*|\||<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||<big|sum><rsub|i=0><rsup|n>a<rsub|i>-A|\|>+<big|sum><rsub|i=0><rsup|n><around*|\||a<rsub|i>\<cdot\><around*|(|<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||<big|sum><rsub|i=0><rsup|n>a<rsub|i>-A|\|>+<big|sum><rsub|i=0><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 19.22.151><around*|\||<big|sum><rsub|i=0><rsup|n>c<rsub|i>-A\<cdot\>B|\|>\<leqslant\><around*|\||<big|sum><rsub|i=0><rsup|n>a<rsub|i>-A|\|>+<big|sum><rsub|i=0><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>
    </equation>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>=A> there exist a
    <math|N<rsub|1>\<in\>\<bbb-N\><rsub|0>> such that\ 

    <\equation>
      <label|eq 19.23.151>\<forall\>n\<geqslant\>N<rsub|1><text| we have
      ><around*|\||<big|sum><rsub|i=0><rsup|n>a<rsub|i>-A|\|>\<less\><frac|\<varepsilon\>|2>
    </equation>

    Further as <math|<big|sum><rsub|i=0><rsup|\<infty\>>b<rsub|i>> converges
    it follow from [theorem: <reference|series converging of upper series>]

    <\equation>
      <label|eq 19.24.151><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=n><rsup|\<infty\>>b<rsub|i>=0
    </equation>

    Using then [theorem: <reference|limit convergence implies bounded>] on
    the above proves that there exist a <math|M\<in\>\<bbb-R\><rsup|+>> such
    that\ 

    <\equation>
      <label|eq 19.25.151>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      <math|<around*|\||<big|sum><rsub|i=n><rsup|\<infty\>>b<rsub|i>|\|>\<leqslant\>M>>
    </equation>

    As <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>> is absolute
    convergent <math|<big|sum><rsub|i=0><rsup|n><around*|\||a<rsub|i>|\|>> is
    convergent, given that <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=n><rsup|\<infty\>>b<rsub|i>=0>
    there exist a <math|N<rsub|2>\<in\>\<bbb-N\><rsub|0>> such that\ 

    <\equation>
      <label|eq 19.26.151>\<forall\>n\<geqslant\>N<rsub|2><text| we have that
      ><around*|\||<big|sum><rsub|i=n><rsup|\<infty\>>b<rsub|i>|\|>\<less\><frac|\<varepsilon\>|4\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||\<alpha\><rsub|i>|\|>+1|)>>
    </equation>

    Further as by \ [theorem: <reference|series converging of upper series>]
    <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=n><rsup|\<infty\>><around*|\||a<rsub|i>|\|>=0>
    there exist a <math|N<rsub|3>\<in\>\<bbb-N\><rsub|0>> such that\ 

    <\equation>
      <label|eq 19.27.151><big|sum><rsub|i=N<rsub|3>+1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<less\><frac|\<varepsilon\>|4\<cdot\>M>
    </equation>

    Let <math|N<rsub|4>=max<around*|(|N<rsub|2>,N<rsub|3>|)>> and
    <math|N=max<around*|(|N<rsub|1>,2\<cdot\>N<rsub|4>|)>> then for
    <math|n\<geqslant\>N> we have that <math|n\<geqslant\>2<rsub|>\<cdot\>N<rsub|4>>,
    so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N<rsub|4>|}>> we
    have that <math|n-i\<geqslant\>2\<cdot\>N<rsub|4>-N<rsub|4>=N<rsub|4>\<geqslant\>N<rsub|2>>.
    Hence if <math|n\<geqslant\>N> then we have\ 

    <\equation>
      <label|eq 19.28.151>\<forall\>i\<in\><around*|{|1\<ldots\>,N<rsub|4>|}><text|
      that >n-i+1\<geqslant\>N<rsub|2>
    </equation>

    and

    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>>|<cell|\<equallim\>>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|N<rsub|4>><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>+<big|sum><rsub|i=N<rsub|4>+1><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>>|<cell|\<leqslant\><rsub|<text|[eqs:
      <reference|eq 19.28.151>, <reference|eq
      19.26.151>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|N<rsub|4>><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><frac|\<varepsilon\>|4\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||\<alpha\><rsub|i>|\|>+1|)>>|)>+<big|sum><rsub|i=N<rsub|4>+1><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|4\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||\<alpha\><rsub|i>|\|>+1|)>>\<cdot\><big|sum><rsub|i=0><rsup|N<rsub|4>><around*|\||a<rsub|i>|\|>+<big|sum><rsub|i=N<rsub|4>+1><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|series partition series>]>><rsub|<text|>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|4\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||\<alpha\><rsub|i>|\|>+1|)>>\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>|\|>+<big|sum><rsub|i=N<rsub|4>+1><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>>|<cell|\<less\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|4>+<big|sum><rsub|i=N<rsub|4>+1><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 19.25.151>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|4>+<big|sum><rsub|i=N<rsub|4>+1><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\>M|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|4>+M\<cdot\><big|sum><rsub|i=N<rsub|4>+1><rsup|n><around*|\||a<rsub|i>|\|>>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|series partition series>]>><rsub|<text|>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|4>+M\<cdot\><big|sum><rsub|i=N<rsub|4>+1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 19.27.151>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|4>+M\<cdot\><frac|\<varepsilon\>|4\<cdot\>M>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n><around*|(|<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||<big|sum><rsup|\<infty\>><rsub|j=n-i+1>b<rsub|j>|\|>|)>\<less\><frac|\<varepsilon\>|2>
    </equation*>

    Combining the above with [eq: <reference|eq 19.22.151>] and [eq:
    <reference|eq 19.23.151>] it follows that\ 

    <\equation*>
      \<forall\>n\<geqslant\>N<text| we have
      ><around*|\||<big|sum><rsub|i=0><rsup|n>c<rsub|i>-A\<cdot\>B|\|>\<less\>\<varepsilon\><text|>
    </equation*>

    Hence\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i><text| converges and
      ><big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i>=A\<cdot\>B=<around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>|)>\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>b<rsub|i>|)>
    </equation*>
  </proof>

  We apply now the above theorem to the product of power series.

  <\theorem>
    <label|exp product of power series>Let
    <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>>,
    <math|><math|<big|sum><rsub|n=0><rsup|\<infty\>>b<rsub|n>\<cdot\>z<rsup|n>>
    then if <math|z\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|)><big|cap>\<cal-D\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>b<rsub|n>\<cdot\>z<rsup|n>|)>>
    we have that <math|z\<in\>\<cal-D\><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i>\<cdot\>z<rsup|i>|)>>
    where <math|c<rsub|i>=<big|sum><rsub|j=0><rsup|i>a<rsub|j>\<cdot\>b<rsub|i-j>>.
    Further

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i>=<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|)>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>b<rsub|n>\<cdot\>z<rsup|n>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|z\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|)><big|cap>\<cal-D\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>b<rsub|n>\<cdot\>z<rsup|n>|)>>
    then <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>>
    is absolute convergent and <math|<big|sum><rsub|n=0><rsup|\<infty\>>b<rsub|n>\<cdot\>z<rsup|n>>
    is convergent. By the previous theorem [theorem: <reference|exp Mertens
    theorem>] it follows that\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<big|sum><rsub|j=0><rsup|i><around*|(|a<rsub|j>\<cdot\>z<rsup|j>|)>\<cdot\><around*|(|b<rsub|i-j>\<cdot\>z<rsup|i-j>|)>|)>
    </equation*>

    converges and\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<big|sum><rsub|j=0><rsup|i><around*|(|a<rsub|j>\<cdot\>z<rsup|j>|)>\<cdot\><around*|(|b<rsub|i-j>\<cdot\>z<rsup|i-j>|)>|)>=<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|)>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>b<rsub|n>\<cdot\>z<rsup|n>|)>
    </equation*>

    Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<big|sum><rsub|j=0><rsup|i><around*|(|a<rsub|j>\<cdot\>z<rsup|j>|)>\<cdot\><around*|(|b<rsub|i-j>\<cdot\>z<rsup|i-j>|)>|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<big|sum><rsub|j=0><rsup|i>a<rsub|j>\<cdot\><around*|\<nobracket\>|b<rsub|i-j>\<cdot\>z<rsup|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<big|sum><rsub|j=0><rsup|i>a<rsub|j>\<cdot\>b<rsub|i-j>|)>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i>\<cdot\>z<rsup|i>>>>>
    </eqnarray*>

    proving that <math|<big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i>\<cdot\>z<rsup|i>>
    converges and <math|<big|sum><rsub|i=0><rsup|\<infty\>>c<rsub|i>\<cdot\>z<rsup|i>=<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>|)>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>b<rsub|n>\<cdot\>z<rsup|n>|)>>.
  </proof>

  <\theorem>
    <label|exp exp(x+y)=exp(x).exp(y)>Let <math|x,y\<in\>\<bbb-C\>> then
    <math|exp<around*|(|x+y|)>=exp<around*|(|x|)>\<cdot\>exp<around*|(|y|)>>
  </theorem>

  <\proof>
    Let <math|x,y\<in\>\<bbb-C\>> then as
    <math|\<bbb-C\>\<equallim\><rsub|<text|[theorem: <reference|exp exp
    series>]>><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>|]>>
    it follows that <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|x<rsup|n>|n!>>
    and <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|y<rsup|n>|n!>> are
    absolute convergent [see definition: <reference|series absolute
    convergence>]. Hence we can use the above theorem [theorem:
    <reference|exp product of power series>] giving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|exp<around*|(|x|)>\<cdot\>exp<around*|(|y|)>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|x<rsup|n>|n!>|)>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|y<rsup|n>|n!>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|exp Mertens theorem>]>>>|<cell|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|n><frac|x<rsup|i>|i!>\<cdot\><frac|y<rsup|i-j>|<around*|(|i-j|)>!>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\><big|sum><rsub|i=0><rsup|n><around*|(|<frac|n!|i!\<cdot\><around*|(|i-j|)>!>\<cdot\>x<rsup|i>\<cdot\>y<rsup|i-j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|fundamental binomial formula>]>>>|<cell|<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|x+y|)><rsup|i>|n!>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x+y|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|exp properties>The exponential function
    <math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>> has the following properties:

    <\enumerate>
      <item><math|exp<around*|(|0|)>=1>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|exp<around*|(|z|)>\<neq\>0>.

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|exp<around*|(|-z|)>=<frac|1|exp<around*|(|z|)>>>.

      <item><math|\<forall\>z\<in\>\<bbb-R\>> we have
      <math|0\<less\>exp<around*|(|z|)>> or in other words
      <math|exp<around*|(|\<bbb-R\>|)>\<subseteq\>\<bbb-R\><rsup|+>>.

      <item><math|\<forall\>z\<in\>\<bbb-R\>> with <math|0\<less\>z> we have
      <math|1\<less\>exp<around*|(|z|)>>.

      <item><math|\<forall\>x,y\<in\>\<bbb-R\>> with <math|x\<less\>y> we
      have <math|exp<around*|(|x|)>\<less\>exp<around*|(|y|)>> [<math|exp> is
      strictly increasing].

      <item><math|\<forall\>x,y\<in\>\<bbb-R\>> with <math|x\<less\>y> it
      follows that <math|exp> is convex on <math|<around*|[|x,y|]>> [see
      definition: <reference|diff convex concave>].
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|z=0> then <math|exp<around*|(|0|)>=exp<around*|(|z|)>=<big|sum><rsub|i=0><rsup|\<infty\>><frac|1|i!>\<cdot\>z<rsup|i>\<equallim\><rsub|<text|[[example:
      <reference|exp 0 is in convergence domain>]]>><frac|1|0!>=1>.

      <item>Assume that <math|\<exists\>z\<in\>\<bbb-C\>> such that
      <math|exp<around*|(|z|)>=0>. Then\ 

      <\equation*>
        1=exp<around*|(|0|)>=exp<around*|(|z+<around*|(|-z|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp exp(x+y)=exp(x).exp(y)>]>>exp<around*|(|z|)>\<cdot\>exp<around*|(|-z|)>=0\<cdot\>exp<around*|(|-z|)>=0
      </equation*>

      leading to the contradiction <math|1=0>. So the assumption is wrong and
      we have <math|\<forall\>z\<in\>\<bbb-C\>> that
      <math|exp<around*|(|z|)>\<neq\>0>.

      <item><math|1=exp<around*|(|0|)>=exp<around*|(|z+<around*|(|-z|)>|)>=exp<around*|(|z|)>\<cdot\>exp<around*|(|-z|)>>
      so using (2) we have <math|exp<around*|(|-z|)>=<frac|1|exp<around*|(|z|)>>>.

      <item>If <math|z\<in\>\<bbb-R\>> then we have 3 cases to consider for
      <math|z>:\ 

      <\description>
        <item*|<math|z\<in\>\<bbb-R\><rsup|+>>>Then
        <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
        <math|0\<less\><frac|z<rsup|i>|i!>> [see theorem: <reference|complex
        power is internal>] so that by [theorem: <reference|series non
        negative numbers strict positive term>]
        <math|0\<less\><big|sum><rsub|i=0><rsup|\<infty\>><frac|z<rsup|i>|i!>=exp<around*|(|z|)>>.

        <item*|<math|z=0>>Then <math|0\<less\>1=exp<around*|(|0|)>=exp<around*|(|z|)>>.

        <item*|<math|z\<in\>\<bbb-R\><rsup|->>>Then
        <math|-z\<in\>\<bbb-R\><rsup|+>> then
        <math|0\<less\><frac|1|exp<around*|(|-z|)>>\<equallim\><rsub|<around*|(|3|)>>exp<around*|(|z|)>>.
      </description>

      Hence in all cases we have <math|0\<less\>exp<around*|(|z|)>>.

      <item>If <math|0\<less\>z> then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      we have <math|0\<less\><frac|z<rsup|i>|i!>> [see theorem:
      <reference|complex power is internal>] so that by [theorem:
      <reference|series non negative numbers strict positive term>]
      <math|0\<less\><big|sum><rsub|i=1><rsup|\<infty\>><frac|z<rsup|i>|i!>=exp<around*|(|z|)>>.
      Hence <math|exp<around*|(|z|)>=<big|sum><rsub|i=0><rsup|\<infty\>><frac|z<rsup|i>|i!>\<equallim\><rsub|<text|[theorem:
      <reference|series partition series>]>><frac|z<rsup|0>|0!>+<big|sum><rsub|i=1><rsup|\<infty\>><frac|z<rsup|i>|i!>=1+<big|sum><rsub|i=><rsup|\<infty\>><frac|z<rsup|i>|i!>\<gtr\>1>.

      <item>Let <math|x\<less\>y> then <math|0\<less\>y-x> so that by (5)
      <math|1\<less\>exp<around*|(|y-x|)>>, as
      <math|0\<less\>exp<around*|(|x|)>> it follows that

      <\equation*>
        exp<around*|(|x|)>\<less\>exp<around*|(|x|)>\<cdot\>exp<around*|(|y-x|)>\<cdot\>exp<around*|(|x+y-x|)>=exp<around*|(|y|)>
      </equation*>

      <item>Let <math|x\<in\>\<bbb-R\>> then
      <math|exp<rsup|<around*|(|2|)>><rsub|x>\<equallim\><rsub|<text|[theorem:
      <reference|exp is continuous>]>>exp<around*|(|x|)>\<gtr\>0> [by (4) so
      that by [theorem: <reference|diff second derivate convex concave>] is
      convex.
    </enumerate>
  </proof>

  We introduce now what is probably the most interesting number in
  mathematics [maybe with the exception of <math|\<pi\>> which we will also
  define in this chapter] which is Euler's number.

  \;

  <\definition>
    <label|exp Euler's number><index|<math|\<mathe\>>><dueto|Euler's
    number>Euler's number noted as <math|\<mathe\>> is defined as\ 

    <\equation*>
      \<mathe\>=exp<around*|(|1|)>=<big|sum><rsub|n=1><rsup|\<infty\>><frac|1|n!>
    </equation*>
  </definition>

  Using Euler's number we see that the exponential of natural numbers behaves
  as a power of Euler's number.

  <\theorem>
    <label|exp of natural numbers><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have\ 

    <\enumerate>
      <item><math|\<mathe\>\<in\>\<bbb-R\><rsup|+>> and
      <math|1\<less\>\<mathe\>>

      <item><math|exp<around*|(|n|)>=\<mathe\><rsup|n>>

      <item><math|exp<around*|(|-n|)>=<frac|1|\<mathe\><rsup|n>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|1\<in\>\<bbb-R\><rsup|+>> it follows from [theorem:
      <reference|exp properties> (5)] that
      <math|1\<less\>exp<around*|(|1|)>=\<mathe\>>

      <item>We prove this by induction so define:\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|exp<around*|(|n|)>=\<mathe\><rsup|n>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S>>As <math|exp<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>1=\<mathe\><rsup|0>> it follows that
        <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As
        \ <math|exp<around*|(|n+1|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp exp(x+y)=exp(x).exp(y)>]>>exp<around*|(|n|)>\<cdot\>exp<around*|(|1|)>\<equallim\><rsub|n\<in\>S>\<mathe\><rsup|n>\<cdot\>\<mathe\>=\<mathe\><rsup|n+1>>
        it follows that <math|n+1\<in\>S>.
      </description>

      <item><math|exp<around*|(|-n|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp properties>]>><frac|1|exp<around*|(|n|)>>\<equallim\><rsub|<around*|(|1|)>><frac|1|\<mathe\><rsup|n>>>
    </enumerate>
  </proof>

  The above theorem suggest that we could extend this to
  <math|exp<around*|(|z|)>=\<mathe\><rsup|z>> where <math|z> is not a whole
  number. To be able to do this we must find a inverse of the exponential
  function which will be only possible on real numbers.

  <\theorem>
    <label|exp exp tends to infinity>Let <math|y\<in\>\<bbb-R\><rsup|+>> then
    there exist a <math|x\<in\>\<bbb-R\>> such that
    <math|y\<less\>exp<around*|(|x|)>>
  </theorem>

  <\proof>
    By [theorem: <reference|exp of natural numbers>] it follows that
    <math|1\<less\>\<mathe\>> so that by [theorem: <reference|complex
    1\<less\>x then a\<less\>x^n>] there exist a <math|n\<in\>\<bbb-N\>> such
    that <math|y\<leqslant\>\<mathe\><rsup|n>>. As by [theorem:
    <reference|exp of natural numbers>] <math|\<mathe\><rsup|n>=exp<around*|(|n|)>>
    it follows that <math|y\<leqslant\>exp<around*|(|n|)>> where
    <math|n\<in\>\<bbb-N\>\<subseteq\>\<bbb-R\>>.
  </proof>

  <\theorem>
    <label|exp bijection><math|exp<rsub|\|\<bbb-R\>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|+>>
    is a bijection, <math|exp<around*|(|\<bbb-R\><rsup|+>|)>=<around*|]|1,\<infty\>|[>>
    and <math|exp<around*|(|\<bbb-R\><rsup|->|)>=<around*|]|0,1|[>>
  </theorem>

  <\proof>
    First we have to prove that <math|exp<rsub|\|\<bbb-R\>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|+>>
    is a bijection.\ 

    <\description>
      <item*|injectivity>Let <math|x,y\<in\>\<bbb-R\>> such that
      <math|exp<around*|(|x|)>=exp<rsub|\|\<bbb-R\>><around*|(|x|)>=exp<rsub|\|\<bbb-R\>><around*|(|y|)>=exp<around*|(|y|)>>.
      Assume that <math|x\<neq\>y> then we may without loss of generality
      assume that <math|x\<less\>y>. Then by [theorem: <reference|exp
      properties> (6)] it follows that <math|exp<around*|(|x|)>\<less\>exp<around*|(|y|)>>
      contradicting <math|exp<around*|(|x|)>=exp<around*|(|Y|)>>. Hence the
      assumption must be wrong and we must have that <math|x=y>.

      <item*|surjectivity>Let <math|y\<in\>\<bbb-R\><rsup|+>=<around*|]|0,\<infty\>|[>>
      then we have the following possibilities:

      <\description>
        <item*|<math|y=1>>Then <math|exp<around*|(|0|)>=1=y>.

        <item*|<math|1\<less\>y>>Then by [theorem: <reference|exp exp tends
        to infinity>] there exist a <math|z\<in\>\<bbb-R\>> such that
        <math|y\<less\>exp<around*|(|z|)>> hence we have as
        <math|1=exp<around*|(|0|)>> that <math|exp<around*|(|0|)>\<less\>y\<less\>exp<around*|(|z|)>>.
        Further by [theorem: <reference|exp is continuous>] on
        <math|\<bbb-R\>> hence continuous on <math|<around*|[|0,z|]>>. Using
        the intermediate value theorem [see theorem: <reference|connected
        intermediate value theorem>] there exist a
        <math|x\<in\><around*|[|0,y|]>> such that
        <math|exp<around*|(|x|)>=y>.

        <item*|<math|0\<less\>y\<less\>1>>Then <math|1\<less\><frac|1|y>> so
        that by the previous case there exist a <math|z\<in\>\<bbb-R\>> such
        that <math|exp<around*|(|z|)>=<frac|1|y>>. Take <math|x=-z> then
        <math|exp<around*|(|x|)>=exp<around*|(|-y|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp properties> (3)]>><frac|1|exp<around*|(|y|)>>=<frac|1|<frac|1|y>>=y>
      </description>

      So in all cases we found a <math|x\<in\>\<bbb-R\>> such that
      <math|exp<around*|(|x|)>=y> which proves surjectivity.
    </description>

    For the remainder of the theorem. Let <math|x\<in\>\<bbb-R\><rsup|+>>
    then by [theorem: <reference|exp properties>(5)] we have that
    <math|1\<less\>exp<around*|(|x|)>> hence\ 

    <\equation>
      <label|eq 19.29.151>exp<around*|(|\<bbb-R\><rsup|+>|)>\<subseteq\><around*|]|1,\<infty\>|[>
    </equation>

    If <math|x\<in\>\<bbb-R\><rsup|->> then <math|-x\<in\>\<bbb-R\><rsup|+>
    so that by >[theorem: <reference|exp properties>(5)] we have
    <math|1\<less\>exp<around*|(|-x|)>=<frac|1|exp<around*|(|x|)>>> so that
    <math|<rigid|exp<around*|(|x|)>\<less\>1>>. Hence we have proved that\ 

    <\equation>
      <label|eq 19.30.151>exp<around*|(|\<bbb-R\><rsup|->|)>\<subseteq\><around*|]|0,1|[>
    </equation>

    If <math|y\<in\><around*|]|1,\<infty\>|[>\<subseteq\>\<bbb-R\><rsup|+>>
    then by surjectivity of <math|exp<rsub|\|\<bbb-R\>>> there exist a
    <math|x\<in\>\<bbb-R\>> such that <math|exp<around*|(|x|)>=y>. Assume
    that <math|x\<in\>\<bbb-R\><rsup|->> then by [eq: <reference|eq
    19.30.151>] <math|y=exp<around*|(|x|)>\<in\><around*|]|0,1|[>>
    contradicting <math|y\<in\><around*|]|1,\<infty\>|[>> hence we must have
    that <math|x\<in\>\<bbb-R\><rsub|0><rsup|+>> or as
    <math|exp<around*|(|0|)>=1\<neq\>y> we must have
    <math|x\<in\>\<bbb-R\><rsup|+>>, hence
    <math|y\<in\>exp<around*|(|\<bbb-R\><rsup|+>|)>>. So
    <math|<around*|]|1,\<infty\>|[>\<subseteq\>exp<around*|(|\<bbb-R\><rsup|+>|)>>
    which combined with [eq: <reference|eq 19.29.151>] gives\ 

    <\equation>
      <label|eq 19.31.151>exp<around*|(|\<bbb-R\>|)>=<around*|]|1,\<infty\>|[>
    </equation>

    If <math|y\<in\><around*|]|0,1|[>\<subseteq\>\<bbb-R\><rsup|+>> then by
    surjectivity there exist a <math|x\<in\>\<bbb-R\>> such that
    <math|exp<around*|(|x|)>=y>. Assume that <math|x\<in\>\<bbb-R\><rsup|+>>
    then by [eq: <reference|eq 19.29.151>]
    <math|y=exp<around*|(|x|)>\<subseteq\><around*|]|1,\<infty\>|[>>
    contradicting <math|y\<in\><around*|]|0,1|[>>. Hence we must have that
    <math|x\<in\>\<bbb-R\><rsup|-><rsub|0>>, which, as
    <math|exp<around*|(|0|)>=1\<neq\>y>, means that
    <math|x\<in\>\<bbb-R\><rsup|->>, hence
    <math|y\<in\>exp<around*|(|\<bbb-R\><rsup|->|)>>. So
    <math|<around*|]|0,1|[>\<subseteq\>exp<around*|(|\<bbb-R\><rsup|->|)>>
    which combined with [eq: <reference|eq 19.30.151>] proves\ 

    <\equation*>
      exp<around*|(|\<bbb-R\><rsup|->|)>=<around*|]|0,1|[>
    </equation*>
  </proof>

  As every bijection has a inverse the function
  <math|exp<rsub|\|\<bbb-R\>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|+>> has a
  inverse called the natural logarithm.

  <\definition>
    <label|exp natural logarithm><index|natural
    logarithm><index|<math|log<around*|(|x|)>>><dueto|Natural Logarithm>The
    natural logarithm noted as <math|log> is the inverse of
    \ <math|exp<rsub|\|\<bbb-R\>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|+>>.
    In other words\ 

    <\equation*>
      log:\<bbb-R\><rsup|+>\<rightarrow\>\<bbb-R\><text| is defined by
      >log=<around*|(|exp<rsub|\|\<bbb-R\>>|)><rsup|-1>
    </equation*>
  </definition>

  Based on the definition of the logarithm and the properties of the
  exponential function we have the following properties of the logarithm.

  <\theorem>
    <label|exp logarithm properties><math|log:\<bbb-R\><rsup|+>\<rightarrow\>\<bbb-R\>>
    has the following properties:

    <\enumerate>
      <item><math|\<forall\>x\<in\>\<bbb-R\><rsup|+>> we have
      <math|exp<around*|(|log<around*|(|x|)>|)>=x>.

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|log<around*|(|exp<around*|(|x|)>|)>=x>.

      <item><math|log<around*|(|e|)>=1>.

      <item><math|log<around*|(|1|)>=0>.

      <item><math|\<forall\>x,y\<in\>\<bbb-R\><rsup|+>> we have
      <math|log<around*|(|x\<cdot\>y|)>=log<around*|(|x|)>+log<around*|(|y|)>>.

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsup|+>> we have
      <math|log<around*|(|<frac|1|x>|)>=-log<around*|(|x|)>>.

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsup|+>> <math|log> has a
      derivative <math|log<rprime|'><rsub|x>> where
      <math|log<rprime|'><rsub|x>=<frac|1|x>>.

      <item><math|log:\<bbb-R\><rsup|+>\<rightarrow\>\<bbb-R\>> is strictly
      increasing and <math|\<forall\>x\<less\>1> we have
      <math|log<around*|(|x|)>\<less\>0>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>\<bbb-R\><rsup|+>> then
      <math|exp<around*|(|log<around*|(|x|)>|)>=exp<rsub|\|\<bbb-R\>><around*|(|<around*|(|exp<rsub|\|\<bbb-R\>>|)><rsup|-1><around*|(|x|)>|)>=x>.

      <item>Let <math|x\<in\>\<bbb-R\>> then
      <math|log<around*|(|exp<around*|(|x|)>|)>=<around*|(|exp<rsub|\|\<bbb-R\>>|)><rsup|-1><around*|(|exp<rsub|\|\<bbb-R\>><around*|(|x|)>|)>=x>.

      <item><math|log<around*|(|e|)>=<around*|(|exp<rsub|\|\<bbb-R\>>|)><rsup|-1><around*|(|exp<around*|(|1|)>|)>=<around*|(|exp<rsub|\|\<bbb-R\>>|)><rsup|-1><around*|(|exp<rsub|\|\<bbb-R\>><around*|(|1|)>|)>=1>.

      <item><math|log<around*|(|1|)>=<around*|(|exp<rsub|<mid|\|>\<bbb-R\>>|)><rsup|-1><around*|(|exp<around*|(|0|)>|)>=<around*|(|exp<rsub|<mid|\|>\<bbb-R\>>|)><rsup|-1><around*|(|exp<rsub|\|\<bbb-R\>><around*|(|0|)>|)>=0>.

      <item>Let <math|x,y\<in\>\<bbb-R\><rsup|+>> then

      <\equation*>
        exp<rsub|\|\<bbb-R\>><around*|(|log<around*|(|x|)>+log<around*|(|y|)>|)>=exp<around*|(|log<around*|(|x|)>+log<around*|(|y|)>|)>=exp<rsub|><around*|(|log<around*|(|x|)>|)>\<cdot\>exp<around*|(|log<around*|(|y|)>|)>\<equallim\><rsub|<around*|(|1|)>>x\<cdot\>y
      </equation*>

      so that <math|log<around*|(|x|)>+log<around*|(|y|)>=<around*|(|exp<rsub|\|\<bbb-R\>>|)><rsup|-1><around*|(|x\<cdot\>y|)>=log<around*|(|x\<cdot\>y|)>>.

      <item>Let <math|x\<in\>\<bbb-R\><rsup|+>> then by (1)
      <math|exp<rsub|\|\<bbb-R\>><around*|(|-log<around*|(|x|)>|)>=exp<around*|(|-log<around*|(|x|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp properties>]>><frac|1|exp<around*|(|log<around*|(|x|)>|)>>\<equallim\><rsub|<around*|(|1|)>><frac|1|x>>
      so that <math|-log<around*|(|x|)>=<around*|(|exp<rsub|\|\<bbb-R\>>|)><rsup|-1><around*|(|<frac|1|x>|)>=log<around*|(|<frac|1|x>|)>>.

      <item>Let <math|x\<in\>\<bbb-R\><rsup|+>> and take
      <math|y=log<around*|(|x|)>>. As <math|exp<rprime|'><rsub|y>=exp<around*|(|y|)>\<gtr\>0>
      and <math|exp<rprime|'>=exp> is continuous we have by the inverse
      function theorem [see theorem: <reference|inverse function and
      derivate>(3)] that there exist a open <math|U\<subseteq\>\<bbb-R\>> and
      <math|V\<subseteq\>\<bbb-R\><rsup|+>> with <math|y\<in\>U> and
      <math|exp<around*|(|y|)>\<in\>V\<Rightarrowlim\><rsub|exp<around*|(|y|)>=exp<around*|(|log<around*|(|x|)>|)>>x\<in\>V>
      such that <math|exp<rsub|\|U>:U\<rightarrow\>V> has a inverse
      <math|<around*|(|exp<rsub|\|U>|)><rsup|-1>:V\<rightarrow\>U> and

      <\equation>
        <label|eq 19.32.151>\<forall\>z\<in\>U<text| we have
        ><around*|(|<around*|(|exp<rsub|\|U>|)><rsup|-1>|)><rprime|'><rsub|exp<around*|(|z|)>>=<frac|1|exp<rprime|'><rsub|z>>
      </equation>

      As <math|\<forall\>v\<in\>V> we have
      <math|<around*|(|exp<rsub|\|U>\<circ\>log<rsub|\|V>|)><around*|(|v|)>=exp<rsub|\|U><around*|(|log<rsub|\|V><around*|(|v|)>|)>=exp<around*|(|log<around*|(|v|)>|)>=v=Id<rsub|V><around*|(|u|)>>
      and <math|\<forall\>u\<in\>U> we have
      <math|<around*|(|log<rsub|\|V>\<circ\>exp<rsub|<around*|\||U|\|>>|)><around*|(|u|)>=log<rsub|\|V><around*|(|exp<rsub|\|U><around*|(|u|)>|)>=log<around*|(|exp<around*|(|u|)>|)>=u=Id<rsub|U><around*|(|u|)>>
      so that <math|<rigid|<around*|(|exp<rsub|\|U>|)><rsup|-1>=log<rsub|\|V>>>.
      Substituting this in [eq: <reference|eq 19.32.151>] we have\ 

      <\equation*>
        \<forall\>z\<in\>V<text| we have ><around*|(|log<rsub|\|V>|)><rprime|'><rsub|exp<around*|(|z|)>>=<frac|1|exp<rprime|'><rsub|z>>\<equallim\><rsub|<text|[theorem:
        <reference|exp derivative>]>><frac|1|exp<around*|(|z|)>>
      </equation*>

      As <math|log<around*|(|x|)>=y\<in\>U> we have by the above that
      <math|<around*|(||\<nobracket\>><around*|(|log<rsub|\|V>|)><rprime|'><rsub|exp<around*|(|log<around*|(|x|)>|)>>=<frac|1|exp<around*|(|log<around*|(|x|)>|)>>>
      so that\ 

      <\equation*>
        <around*|(|log<rsub|\|V>|)><rprime|'><rsub|x>=<frac|1|x>
      </equation*>

      Finally using the locality of the derivative [theorem: <reference|diff
      derivative is local>] it follows that <math|log> has a derivative at
      <math|x> and <math|log<rprime|'><rsub|x>=<frac|1|x>>.

      <item>Let <math|x,y\<in\>\<bbb-R\><rsup|+>> with <math|x\<less\>y>.
      Assume that <math|log<around*|(|y|)>\<leqslant\>log<around*|(|x|)>>
      then as by [theorem: <reference|exp properties>] <math|exp> is strict
      increasing it follows that <math|y=exp<around*|(|log<around*|(|y|)>|)>\<leqslant\>exp<around*|(|log<around*|(|x|)>|)>=x>
      contradicting <math|x\<less\>y>. Hence the assumption is wrong and we
      must have that <math|log<around*|(|x|)>\<less\>log<around*|(|y|)>>.
      Further if <math|x\<less\>1> then <math|log<around*|(|x|)>\<less\>log<around*|(|1|)>\<equallim\><rsub|<around*|(|4|)>>0>.
    </enumerate>
  </proof>

  <subsection|Generalized power >

  We are now ready to extend the n-th power of a real number where <math|n>
  is a natural number to the cases where <math|n> is not a natural number.\ 

  <\definition>
    <label|exp generalized power><index|generalized
    power><index|<math|a<rsup|x>>><dueto|Generalized Power>Let
    <math|a\<in\><around*|[|0,\<infty\>|[>> and <math|p\<in\>\<bbb-R\>> then
    we define <math|a<rsup|p>> as follows

    <\equation*>
      a<rsup|p>=<choice|<tformat|<table|<row|<cell|exp<around*|(|p\<cdot\>log<around*|(|a|)>|)>
      <text|if >a\<in\><around*|]|0,\<ldots\>,\<infty\>|[>>>|<row|<cell|0<text|
      if >a=0\<wedge\>p\<neq\>0>>|<row|<cell|1<text| if >a=0\<wedge\>p=0>>>>>
    </equation*>

    <\note>
      In this text <math|0<rsup|0>=1> because we have for
      <math|n\<in\>\<bbb-N\><rsub|0>> defined <math|a<rsup|n>> algebraic by
      <math|a<rsup|n>=<choice|<tformat|<table|<row|<cell|1<text| if
      >n=0>>|<row|<cell|a\<cdot\>a<rsup|n-1><text| if
      >n\<in\>\<bbb-N\>>>>>>>[see definition: <reference|complex power>].
      Many mathematical text argue that <math|>if <math|n\<in\>\<bbb-N\>>
      then <math|0<rsup|n>=0\<cdot\>0<rsup|n-1>=0> so that <math|0<rsup|0>>
      should be <math|0> instead or that <math|0<rsup|0>> is undefined. As we
      have already used the algebraic definition <math|0<rsup|0>=1> in
      polynomial power series we adopt the convention that
      <math|0<rsup|0>=1>.
    </note>

    <\note>
      As the domain of the natural logarithm is <math|\<bbb-R\><rsup|+>> we
      define <math|a<rsup|p>> only for <math|a\<in\>\<bbb-R\><rsup|+><rsub|0>>
      another reason is that we will show later that
      <math|a<rsup|<frac|1|2>>=<sqrt|a>> and <math|<sqrt|-1>> is not defined
      in <math|\<bbb-R\>>.
    </note>
  </definition>

  Having defined <math|a<rsup|p>> we have the following properties of
  <math|a<rsup|p>>

  <\theorem>
    <label|exp generalized power properties>We have the following properties
    for the generalized power

    <\enumerate>
      <item><math|\<forall\>a\<in\><around*|[|0,\<infty\>|[>>
      <math|a<rsup|0>=1>.

      <item><math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>> we have that
      <math|0\<less\>a<rsup|x>>

      <item><math|\<forall\>a\<in\><around*|[|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>\\<around*|{|0|}>> we have that
      <math|a<rsup|x>=0\<Leftrightarrow\>a=0>.

      <item><math|\<forall\>a\<in\><around*|[|0,\<infty\>|[>> and
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a<rsup|n>=<choice|<tformat|<table|<row|<cell|1<text| if
      >n=1>>|<row|<cell|a\<cdot\>a<rsup|n-1><text| if
      >n\<in\>\<bbb-N\>>>>>>=<wide*|a\<ldots\>a|\<wide-underbrace\>><rsub|n>>
      [see definition: <reference|complex power>].

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsup|>> we have
      <math|1<rsup|x>=1>.

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|e<rsup|x>=exp<around*|(|x|)>>.

      <item><math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> we have
      <math|a<rsup|-1>=<frac|1|a>>.

      <\note>
        For <math|a=0> we have <math|a<rsup|-1>=0> and <math|<frac|1|a>> is
        undefined so the condition <math|0\<less\>a> is required.
      </note>

      <item><math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> we have
      <math|<frac|a<rsup|x>|a>=a<rsup|x-1>>.

      <\note>
        For <math|a=0> we have <math|<frac|a<rsup|n>|a>> is undefined so the
        condition <math|0\<less\>a> is needed.
      </note>

      <item><math|><math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|a<rsup|-x>=<frac|1|a<rsup|x>>>.

      <\note>
        For <math|a=0> we have <math|<frac|1|a<rsup|n>>> is undefined so the
        condition <math|0\<less\>a> is needed.
      </note>

      <item><math|\<forall\>a\<in\><around*|]|0,\<infty\>|[><infix-and>\<forall\>x,y\<in\>\<bbb-R\>>
      we have <math|<around*|(|a<rsup|x>|)><rsup|y>=a<rsup|x\<cdot\>y>>.

      <\note>
        <math|0\<less\>a> is essential because
        <math|0<rsup|1>\<cdot\>0<rsup|0>=0\<cdot\>1=0\<neq\>1=0<rsup|0>=0<rsup|1\<cdot\>0>>.
      </note>

      <item><math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|log<around*|(|a<rsup|x>|)>=x\<cdot\>log<around*|(|a|)>>\ 

      <\note>
        If <math|a=0> then <math|a<rsup|1>=0<rsup|1>=0> so that
        <math|log<around*|(|a<rsup|x>|)>> is not defined, hence
        <math|0\<less\>a> is a needed condition.
      </note>

      <item><math|\<forall\>a,b\<in\><around*|]|0,\<infty\>|[>> we have
      <math|\<forall\>x\<in\>\<bbb-R\>> that
      <math|<around*|(|a\<cdot\>b|)><rsup|x>=a<rsup|x>\<cdot\>b<rsup|x><rsup|>>.\ 

      <\note>
        If <math|a=0> and <math|b=1> then for <math|p=0> we have
        <math|<around*|(|a\<cdot\>b|)><rsup|x>=0<rsup|0>=1> and
        <math|a<rsup|x>\<cdot\>b<rsup|x>=0<rsup|0>\<cdot\>1<rsup|0>=0> so
        that <math|a,b\<in\><around*|]|0,\<infty\>|[>> is indeed required.
      </note>

      <item><math|\<forall\>a,b\<in\><around*|]|0,\<infty\>|[>> we have
      <math|\<forall\>x\<in\>\<bbb-R\>> that
      <math|<around*|(|<frac|a|b>|)><rsup|x>=<frac|a<rsup|x><rsup|>|b<rsup|z>>>.\ 

      <item><math|\<forall\>x,y\<in\>\<bbb-R\>> we have
      <math|a<rsup|x+y>=a<rsup|x>\<cdot\>a<rsup|y>>.

      <item><math|\<forall\>x\<in\><around*|]|0,\<infty\>|[>> we have that
      <math|<around*|(|\<ast\>|)><rsup|x>:<around*|]|0,\<ldots\>,\<infty\>|[>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|\<ast\>|)><rsup|x><around*|(|y|)>=y<rsup|x>>
      is strictly increasing.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|a\<in\><around*|[|0,\<ldots\>,\<infty\>|[>> we have
      either:

      <\description>
        <item*|<math|a=0>>Then <math|a<rsup|0>=1>

        <item*|<math|<around*|]|0,\<infty\>|[>>>Then
        <math|a<rsup|0>=exp<around*|(|0\<cdot\>log<around*|(|a|)>|)>=exp<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>1>
      </description>

      <item>If <math|<around*|]|0,\<infty\>|[>> then
      <math|a<rsup|x>=exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>\<gtr\>0>
      [because [theorem: <reference|exp properties>(4)]]\ 

      <item>Let <math|a<rsup|x>=0> and assume that <math|a\<neq\>0> then
      <math|<around*|]|0,\<infty\>|[>> so that
      <math|0=exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>>. As by [theorem:
      <reference|exp properties> (4)] <math|0\<less\>exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>>
      we reach the contradiction <math|0\<gtr\>0>. Hence we have\ 

      <\equation*>
        a<rsup|x>=0\<Rightarrow\>a=0
      </equation*>

      If <math|a=0> then as <math|x\<neq\>0> we have that <math|a<rsup|x>=0>
      so that\ 

      <\equation*>
        a=0\<Rightarrow\>a<rsup|x>=0
      </equation*>

      <item>To avoid confusion of notation write
      <math|a<rsup|<around*|[|n|]>>> for the old definition of the power [see
      definition: <reference|complex power>] so
      <math|a<rsup|<around*|[|n|]>>=<choice|<tformat|<table|<row|<cell|1<text|
      if >n=0>>|<row|<cell|a\<cdot\>a<rsup|n-1><text| if
      >n\<in\>\<bbb-N\>>>>>>>. Let <math|n\<in\>\<bbb-N\><rsub|0>> then for
      <math|a\<in\><around*|[|0,\<ldots\>,\<infty\>|]>> we have either:\ 

      <\description>
        <item*|<math|a=0>>Then for <math|n\<in\>\<bbb-N\><rsub|0>> we have
        either:

        <\description>
          <item*|<math|n=0>>Then <math|a<rsup|n>=a<rsup|0>=<choice|<tformat|<table|<row|<cell|exp<around*|(|n\<cdot\>log<around*|(|a|)>|)>
          <text|if >a\<in\><around*|]|0,\<infty\>|[>>>|<row|<cell|0<text| if
          >a=0\<wedge\>n\<neq\>0>>|<row|<cell|1<text| if
          >a=0\<wedge\>n=0>>>>>=1=a<rsup|<around*|[|n|]>>>.

          <item*|<math|n\<neq\>0>>Then <math|a<rsup|n>=0<rsup|n>=<choice|<tformat|<table|<row|<cell|exp<around*|(|n\<cdot\>log<around*|(|a|)>|)>
          <text|if >a\<in\><around*|]|0,\<infty\>|[>>>|<row|<cell|0<text| if
          >a=0\<wedge\>n\<neq\>0>>|<row|<cell|1<text| if
          >a=0\<wedge\>n=0>>>>>=0=a<rsup|<around*|[|n|]>>>
        </description>

        <item*|<math|a\<in\><around*|]|0,\<ldots\>,\<infty\>|[>>>We use now
        induction to prove this, so define\ 

        <\equation*>
          S<rsub|a>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|a<rsup|n>=a<rsup|<around*|[|n|]>>|}>
        </equation*>

        then we have:\ 

        <\description>
          <item*|<math|0\<in\>S>>As <math|a<rsup|0>\<equallim\><rsub|a\<in\><around*|]|0,\<infty\>|[>>exp<around*|(|0\<cdot\>log<around*|(|a|)>|)>=exp<around*|(|0|)>=1=a<rsup|<around*|[|0|]>>>,
          it follows that <math|0\<in\>S>.

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|a<rsup|n+1>>|<cell|\<equallim\><rsub|a\<in\><around*|]|0,\<infty\>|[>>>|<cell|exp<around*|(|<around*|(|n+1|)>\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|n\<cdot\>log<around*|(|a|)>+log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|exp exp(x+y)=exp(x).exp(y)>]>>>|<cell|exp<around*|(|n\<cdot\>log<around*|(|a|)>|)>\<cdot\>exp<around*|(|log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|n\<in\>S>|<cell|a<rsup|<around*|[|n|]>>\<cdot\>exp<around*|(|log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|exp logarithm properties>]>>>|<cell|a<rsup|<around*|[|n|]>>\<cdot\>a>>|<row|<cell|>|<cell|=>|<cell|a<rsup|<around*|[|n+1|]>>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>S>.
        </description>

        Mathematical induction proves then that in this case
        <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
        <math|a<rsup|n>=a<rsup|<around*|[|n|]>>>.
      </description>

      So in all possible cases we have\ 

      <\equation*>
        a<rsup|n>=a<rsup|<around*|[|n|]>>=<choice|<tformat|<table|<row|<cell|1<text|
        if >n=0>>|<row|<cell|a\<cdot\>a<rsup|n-1><text| if
        >n\<in\>\<bbb-N\>>>>>>
      </equation*>

      <item>As <math|1\<in\><around*|]|0,\<ldots\>,\<infty\>|[>> we have that

      <\equation*>
        1<rsup|x>=exp<around*|(|x\<cdot\>log<around*|(|1|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>exp<around*|(|x\<cdot\>0|)>=exp<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>1
      </equation*>

      <item>As by [theorem: <reference|exp of natural numbers>]
      <math|1\<less\>e> we have that <math|e\<in\><around*|]|0,\<ldots\>,\<infty\>|[>>
      so that\ 

      <\equation*>
        e<rsup|x>=exp<around*|(|x\<cdot\>log<around*|(|e|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>exp<around*|(|x\<cdot\>1|)>=exp<around*|(|x|)>
      </equation*>

      <item>If <math|a\<in\><around*|]|0,\<ldots\>,\<infty\>|[>> then

      <\equation*>
        a<rsup|-1>=exp<around*|(|<around*|(|-1|)>\<cdot\>log<around*|(|a|)>|)>=exp<around*|(|-log<around*|(|a|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>><frac|1|exp<around*|(|log<around*|(|a|)>|)>>\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>><frac|1|a>
      </equation*>

      <item>If <math|a\<in\><around*|]|0,\<ldots\>,\<infty\>|[>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a<rsup|x>|a>>|<cell|=>|<cell|<frac|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>|a>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|<around*|(|<around*|(|x-1|)>+1|)>\<cdot\>log<around*|(|a|)>|)>|a>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|<around*|(|x-1|)>\<cdot\>log<around*|(|a|)>+log<around*|(|a|)>|)>|a>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>>|<cell|<frac|exp<around*|(|<around*|(|x-1|)>\<cdot\>log<around*|(|a|)>|)>\<cdot\>exp<around*|(|log<around*|(|a|)>|)>|a>>>|<row|<cell|>|<cell|=>|<cell|<frac|a<rsup|x-1>\<cdot\>exp<around*|(|log<around*|(|a|)>|)>|a>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>>|<cell|<frac|a<rsup|x-1>\<cdot\>a|a>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|x-1>>>>>
      </eqnarray*>

      <item>If <math|a\<in\><around*|]|0,\<infty\>|[>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|a<rsup|-x>>|<cell|=>|<cell|exp<around*|(|-x\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>>|<cell|<frac|1|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|a<rsup|x>>>>>>
      </eqnarray*>

      <item>As <math|a\<in\><around*|]|0,\<infty\>|[>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a<rsup|x>|)><rsup|y>>|<cell|=>|<cell|exp<around*|(|y\<cdot\>log<around*|(|a<rsup|x>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|y\<cdot\>log<around*|(|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>>|<cell|exp<around*|(|y\<cdot\>x\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|<around*|(|x\<cdot\>y|)>\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|x\<cdot\>y>>>>>
      </eqnarray*>

      <item>Let <math|a\<in\><around*|]|0,\<infty\>|[>> and
      <math|x\<in\>\<bbb-R\>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|log<around*|(|a<rsup|x>|)>>|<cell|=>|<cell|log<around*|(|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>>|<cell|x\<cdot\>log<around*|(|a|)>>>>>
      </eqnarray*>

      <item>As <math|a,b\<in\><around*|]|0,\<infty\>|[>> then
      <math|a\<cdot\>b\<in\><around*|]|0,\<infty\>|[>> so that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a\<cdot\>b|)><rsup|x>>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>>|<cell|exp<around*|(|x\<cdot\><around*|(|log<around*|(|a|)>+log<around*|(|b|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>+x\<cdot\>log<around*|(|b|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp exp(x+y)=exp(x).exp(y)>]>>>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>\<cdot\>exp<around*|(|x\<cdot\>log<around*|(|b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|x>\<cdot\>b<rsup|x>>>>>
      </eqnarray*>

      <item>As <math|a,b\<in\><around*|]|0,\<infty\>|[>> <math|<frac|a|b>> is
      defined and <math|<frac|a|b>\<in\><around*|]|0,\<infty\>|[>> so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<frac|a|b>|)><rsup|x>>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|<frac|a|b>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a\<cdot\><frac|1|b>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>>|<cell|exp<around*|(|x\<cdot\><around*|(|log<around*|(|a|)>+log<around*|(|<frac|1|b>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>>|<cell|exp<around*|(|x\<cdot\><around*|(|log<around*|(|a|)>+<around*|(|-log<around*|(|b|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>+<around*|(|-x\<cdot\>log<around*|(|b|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>\<cdot\>exp<around*|(|-x\<cdot\>log<around*|(|b|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>>|<cell|<frac|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>|exp<around*|(|x\<cdot\>log<around*|(|b|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|a<rsup|x>|b<rsup|x>>>>>>
      </eqnarray*>

      <item>Let <math|a,b\<in\><around*|]|0,\<infty\>|[>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|a<rsup|x+y>>|<cell|=>|<cell|exp<around*|(|<around*|(|x+y|)>\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>+y\<cdot\>log*<around*|(|a|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp exp(x+y)=exp(x).exp(y)>]>>>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>\<cdot\>exp<around*|(|y*\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|a>\<cdot\>y<rsup|a>>>>>
      </eqnarray*>

      <item>Let <math|y,z\<in\><around*|]|0,\<infty\>|[>> such that
      <math|y\<less\>z> then as <math|log> is strictly increasing [see
      theorem: <reference|exp logarithm properties>] it follows that
      <math|log<around*|(|y|)>\<less\>log<around*|(|z|)>> and as
      <math|0\<less\>log<around*|(|y|)>,log<around*|(|z|)>> and
      <math|0\<less\>x> we have <math|x\<cdot\>log<around*|(|y|)>\<less\>x\<cdot\>log<around*|(|z|)>>.
      Further, as <math|exp> is strictly increasing [see theorem:
      <reference|exp properties>], it follows that

      <\equation*>
        y<rsup|x>=exp<around*|(|x\<cdot\>log<around*|(|y|)>|)>\<less\>exp<around*|(|x\<cdot\>log<around*|(|z|)>|)>=z<rsup|x>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|exp derivative of (*)^x>Let <math|x\<in\>\<bbb-R\>> then the
    function\ 

    <\equation*>
      <around*|(|\<star\>|)><rsup|x>:<around*|]|0,\<infty\>|[>=\<bbb-R\><rsup|+>\<rightarrow\>\<bbb-R\><text|
      defined by ><around*|(|\<ast\>|)><rsup|x><around*|(|y|)>=y<rsup|x>
    </equation*>

    has a derivative <math|<around*|(|<around*|(|\<star\>|)><rsup|x>|)><rprime|'><rsub|y>>
    at every <math|y\<in\><around*|]|0,\<infty\>|[>> with
    <math|<around*|(|<around*|(|\<ast\>|)><rsup|x>|)><rprime|'><rsub|y>=x\<cdot\>y<rsup|x-1>>
  </theorem>

  <\proof>
    Let <math|x\<in\>\<bbb-R\>> and define\ 

    <\equation*>
      \<varphi\>:\<bbb-R\>\<rightarrow\>\<bbb-R\><text| defined by
      >\<varphi\><around*|(|y|)>=x\<cdot\>y
    </equation*>

    then by [example: <reference|diff f(t)=a.x+y is infinite differentiable>]
    it follows that <math|\<forall\>y\<in\>\<bbb-R\>> has a derivative at
    <math|y> and\ 

    <\equation*>
      \<varphi\><rprime|'><rsub|y>=x
    </equation*>

    Further if <math|z\<in\>\<bbb-R\><rsup|+>> then

    <\equation*>
      <around*|(|exp\<circ\>\<varphi\>\<circ\>log|)><around*|(|z|)>=exp<around*|(|\<varphi\><around*|(|log<around*|(|z|)>|)>|)>=exp<around*|(|x\<cdot\>log<around*|(|z|)>|)>=z<rsup|x>=<around*|(|\<ast\>|)><rsup|x><around*|(|z|)>
    </equation*>

    proving that\ 

    <\equation*>
      <around*|(|\<ast\>|)><rsup|x>=exp\<circ\>\<varphi\>\<circ\>log
    </equation*>

    As by [theorem: <reference|exp derivative>] <math|exp> has a derivative
    at every <math|y\<in\>\<bbb-R\>> with
    <math|exp<rsub|y><rprime|'>=exp<around*|(|y|)>> and by [theorem:
    <reference|exp logarithm properties>] <math|log> has a derivative at
    every <math|y> with <math|log<rprime|'><rsub|y>=<frac|1|y>> we can use
    the chain rule [see theorem:<reference|diff chain rule calculus>] twice
    proving that \ <math|<around*|(|\<star\>|)><rsup|x>=exp\<circ\>\<varphi\>\<circ\>log>
    has a derivative for every <math|y\<in\>\<bbb-R\><rsup|+>> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<ast\>|)><rsup|x>|)><rprime|'><rsub|y>>|<cell|=>|<cell|<around*|(|exp\<circ\>\<varphi\>\<circ\>log|)><rprime|'><rsub|y>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|exp\<circ\><around*|(|\<varphi\>\<circ\>log|)>|)><rprime|'><rsub|y>>>|<row|<cell|>|<cell|=>|<cell|exp<rprime|'><rsub|<around*|(|\<varphi\>\<circ\>log|)><around*|(|y|)>>\<cdot\><around*|(|\<varphi\>\<circ\>log|)><rprime|'><rsub|y>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|exp<around*|(|<around*|(|\<varphi\>\<circ\>log|)><around*|(|y|)>|)>\<cdot\><around*|(|\<varphi\>\<circ\>log|)><rprime|'><rsub|y>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|\<varphi\><around*|(|log<around*|(|y|)>|)>|)>\<cdot\><around*|(|\<varphi\>\<circ\>log|)><rprime|'><rsub|y>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|y|)>|)>\<cdot\><around*|(|\<varphi\>\<circ\>log|)><rprime|'><rsub|y>>>|<row|<cell|>|<cell|=>|<cell|y<rsup|x>\<cdot\><around*|(|\<varphi\><rprime|'><rsub|log<around*|(|y|)>>\<cdot\>log<rprime|'><rsub|y>|)>>>|<row|<cell|>|<cell|=>|<cell|y<rsup|x>\<cdot\>x\<cdot\><frac|1|y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|exp generalized power properties>
      (8)]>>>|<cell|x\<cdot\>y<rsup|x-1>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|exp derivative of x^(*)>Let <math|a\<in\><around*|]|0,\<infty\>|[>>
    then <math|\<forall\>y\<in\>\<bbb-R\>> we have that the function\ 

    <\equation*>
      a<rsup|<around*|(|\<ast\>|)>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><text|
      defined by >a<rsup|<around*|(|\<ast\>|)>><around*|(|x|)>=a<rsup|x>
    </equation*>

    has a derivative at <math|y> and <math|<around*|(|a<rsup|<around*|(|\<ast\>|)>>|)><rprime|'><rsub|x>=log<around*|(|a|)>\<cdot\>a<rsup|x>>.
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      \<varphi\>:\<bbb-R\>\<rightarrow\>\<bbb-R\><text| by
      >\<varphi\><around*|(|x|)>=x\<cdot\>log<around*|(|a|)>
    </equation*>

    then by \ [example: <reference|diff f(t)=a.x+y is infinite
    differentiable>] it follows that <math|\<forall\>x\<in\>\<bbb-R\>> has a
    derivative at <math|x> and\ 

    <\equation*>
      \<varphi\><rprime|'><rsub|x>=log<around*|(|a|)>
    </equation*>

    Further we have for <math|x\<in\>\<bbb-R\>> that
    <math|<around*|(|exp\<circ\>\<varphi\>|)><around*|(|x|)>=exp<around*|(|\<varphi\><around*|(|x|)>|)>=exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>=a<rsup|x>=a<rsup|<around*|(|\<ast\>|)>><around*|(|x|)>>
    proving that\ 

    <\equation*>
      a<rsup|<around*|(|\<ast\>|)>>=exp\<circ\>\<varphi\>
    </equation*>

    As by [theorem: <reference|exp derivative>] <math|exp> has a derivative
    at every <math|x\<in\>\<bbb-R\>> with
    <math|exp<rsub|x><rprime|'>=exp<around*|(|x|)>> we can use the chain rule
    [see theorem:<reference|diff chain rule calculus>] to prove that
    <math|a<rsup|<around*|(|\<ast\>|)>>> has a derivative at every
    <math|x\<in\>\<bbb-R\>> and that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|a<rsup|<around*|(|\<ast\>|)>>|)><rprime|'><rsub|x>>|<cell|=>|<cell|<around*|(|exp\<circ\>\<varphi\>|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|exp<rsup|<rprime|'>><rsub|\<varphi\><around*|(|x|)>>\<cdot\>\<varphi\><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|\<varphi\><around*|(|x|)>|)>\<cdot\>\<varphi\><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>\<cdot\>\<varphi\><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|x>\<cdot\>\<varphi\><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|log<around*|(|a|)>\<cdot\>a<rsup|x>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|exp (*)^x is continuous>Let <math|x\<in\><around*|]|0,\<infty\>|[>>
    then <math|<around*|(|\<ast\>|)><rsup|x>:<around*|[|0,\<ldots\>,\<infty\>|[>\<rightarrow\>\<bbb-R\>>
    defined by <math|<around*|(|\<ast\>|)><rsup|x><around*|(|y|)>=y<rsup|x>>
    is continuous on <math|<around*|[|0,\<infty\>|[>> [where we use the
    sub-space topology of <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    on the <math|<around*|[|0,\<ldots\>,\<infty\>|[>>
  </theorem>

  <\proof>
    Let <math|y\<in\><around*|[|0,\<infty\>|[>> then we have either:\ 

    <\description>
      <item*|<math|y=0>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> take
      then <math|\<delta\><rsub|1>=log<around*|(|\<varepsilon\>|)>\<in\>\<bbb-R\>>
      and <math|\<delta\>=exp<around*|(|<frac|\<delta\><rsub|1>|x>|)>>. If
      <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>>
      then we have either:\ 

      <\description>
        <item*|<math|z=0>>Then <math|<around*|(|\<star\>|)><rsup|x><around*|(|z|)>\<equallim\><rsub|x\<neq\>0><rsup|>0\<less\>\<varepsilon\>>

        <item*|<math|z\<neq\>0>>Then <math|0\<less\>z\<less\>\<delta\>> and,
        as <math|log> is strictly increasing by [theorem: <reference|exp
        logarithm properties>], we have that
        <math|log<around*|(|z|)>\<less\>log<around*|(|\<delta\>|)>>. As
        <math|0\<less\>x,log<around*|(|z|)>,log<around*|(|\<delta\>|)>> it
        follows that <math|x\<cdot\>log<around*|(|z|)>\<less\>x\<cdot\>log<around*|(|\<delta\>|)>>.
        Further, as <math|exp> is strictly increasing by [theorem:
        <reference|exp properties>], we have that\ 

        <\equation*>
          exp<around*|(|x\<cdot\>log<around*|(|z|)>|)>\<less\>exp<around*|(|x\<cdot\>log<around*|(|\<delta\>|)>|)>
        </equation*>

        Now <math|<around*|(|\<ast\>|)><rsup|x><around*|(|z|)>=x<rsup|x>=exp<around*|(|x\<cdot\>log<around*|(|z|)>|)>>
        and

        <\equation*>
          exp<around*|(|x\<cdot\>log<around*|(|\<delta\>|)>|)>=exp<around*|(|x\<cdot\>log<around*|(|exp<around*|(|<frac|\<delta\><rsub|1>|x>|)>|)>|)>=exp<around*|(|x\<cdot\><frac|\<delta\><rsub|1>|x>|)>=exp<around*|(|\<delta\><rsub|1>|)>=exp<around*|(|log<around*|(|\<varepsilon\>|)>|)>=\<varepsilon\>
        </equation*>

        so that <math|<around*|(|\<ast\>|)><rsup|x><around*|(|z|)>\<less\>\<varepsilon\>>.
      </description>

      So in all cases we have that <math|<around*|(|\<ast\>|)><rsup|x><around*|(|z|)>\<less\>\<varepsilon\>>,
      as further by [theorem: <reference|exp generalized power properties>
      (2,3)] <math|0\<leqslant\><around*|(|\<star\>|)><rsup|x><around*|(|x|)>>
      it follows that <math|<around*|\||<around*|(|\<ast\>|)><rsup|x><around*|(|z|)>|\|>\<less\>\<varepsilon\>>
      so that <math|<around*|(|\<ast\>|)><rsup|x><around*|(|z|)>\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<varepsilon\>|)>>.
      This proves that

      <\equation*>
        <around*|(|\<ast\>|)><rsup|x><around*|(|B<rsub|<around*|\|||\|>><around*|(|0,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|0,\<varepsilon\>|)>\<equallim\><rsub|<around*|(|\<ast\>|)><rsup|x><around*|(|0|)>>B<rsub|<around*|\|||\|>><around*|(|<around*|(|\<star\>|)><rsup|x><around*|(|0|)>,\<varepsilon\>|)>
      </equation*>

      so that <math|<around*|(|\<ast\>|)><rsup|x>> is continuous at <math|0>.

      <item*|<math|y\<neq\>0>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      Then <math|y\<in\><around*|]|0,\<infty\>|[>> and, as
      <math|f:<around*|]|0,\<infty\>|[>\<rightarrow\>\<bbb-R\><text|> defined
      by f<rsup|x><around*|(|z|)>=z<rsup|x>> has a derivative at <math|y>
      [see theorem: <reference|exp derivative of (*)^x>], <math|f> is
      continuous at <math|y> [see theorems: <reference|diff differentiable
      function is continuous>, <reference|diff derivate and frechet
      differential>]. So there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>>
      such that

      <\equation*>
        f<around*|(|B<rsub|<around*|\|||\|>><around*|(|y,\<delta\><rsub|1>|)><big|cap><around*|]|0,\<infty\>|[>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|f<around*|(|y|)>,\<varepsilon\>|)>
      </equation*>

      As <math|0\<less\>y> we have that <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,y|)>\<in\>\<bbb-R\><rsup|+>>
      if now <math|0\<in\>B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)>>
      then <math|y=<around*|\||y|\|>=<around*|\||y-0|\|>\<less\>\<delta\><rsub|1>\<leqslant\>y>
      leading to the contradiction <math|y\<less\>y>. Hence
      <math|0\<nin\>B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)>> so
      that for <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>>
      we have <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|]|0,\<infty\>|[>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>>
      or

      <\equation*>
        B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>=B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|]|0,\<infty\>|[>
      </equation*>

      Hence if <math|z\<in\><around*|(|\<ast\>|)><rsup|x><around*|(|B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>|)>=<around*|(|\<ast\>|)><rsup|x><around*|(|B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|]|0,\<infty\>|[>|)>>
      then there exist a <rigid|<math|u\<in\>B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|]|0,\<infty\>|[>>>
      such that <math|z=<around*|(|\<ast\>|)><rsup|x><around*|(|u|)>=u<rsup|x>\<equallim\>f<around*|(|u|)>\<in\>f<around*|(|B<rsub|<around*|\|||\|>><around*|(|y,\<delta\><rsub|1>|)><big|cap><around*|]|0,\<infty\>|[>|)><rsub|>>
      proving that

      <\equation*>
        <around*|(|\<ast\>|)><rsup|x><around*|(|B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>|)>\<subseteq\>f<around*|(|B<rsub|<around*|\|||\|>><around*|(|y,\<delta\><rsub|1>|)><big|cap><around*|]|0,\<infty\>|[>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|f<around*|(|y|)>,\<varepsilon\>|)>
      </equation*>

      As <math|y\<neq\>0> then <math|f<around*|(|y|)>=y<rsup|x>=<around*|(|\<ast\>|)><rsup|x><around*|(|y|)>>
      we have proved that\ 

      <\equation*>
        <around*|(|\<ast\>|)><rsup|x><around*|(|B<rsub|<around*|\|||\|>><around*|(|y,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|<around*|(|\<ast\>|)><rsup|x><around*|(|y|)>,\<varepsilon\>|)>
      </equation*>

      so that <math|<around*|(|\<ast\>|)><rsup|x>> is continuous at <math|y>.
    </description>
  </proof>

  The above theorem is needed to prove a important inequality using
  generalized powers, first we have to prove a little lemma.

  <\lemma>
    <label|lemma 19.51.151>Let <math|p\<in\><around*|]|1,\<infty\>|[>> and
    define

    <\equation*>
      f<rsub|p>:<around*|]|0,\<infty\>|[>\<rightarrow\>\<bbb-R\><text| by
      >f<rsub|p><around*|(|x|)>=<around*|(|1-x<rsup|1-p>|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-x|)>
    </equation*>

    then we have for <math|x\<in\><around*|]|0,\<infty\>|[>>

    <\equation*>
      x=1\<Leftrightarrow\>f<rsub|p><around*|(|x|)>=0
    </equation*>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x=1> then\ 

      <\equation*>
        f<rsub|p><around*|(|x|)>=f<rsub|p><around*|(|1|)>=<around*|(|1-1<rsup|1-p>|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-1|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp generalized power properties>(5)]>><around*|(|1-1|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-1|)>=0
      </equation*>

      <item*|<math|\<Leftarrow\>>>As\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|-<around*|(|\<star\>|)><rsup|1-p>+C<rsub|p>+<around*|(|1-p|)>\<cdot\>Id<rsub|<around*|]|0,\<infty\>|[>>|)><around*|(|x|)>>|<cell|=>|<cell|-<around*|(|\<ast\>|)><rsup|1-p><around*|(|x|)>+C<rsub|p><around*|(|x|)>+<around*|(|1-p|)>\<cdot\>Id<rsub|<around*|]|0,\<infty\>|[>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|-x<rsup|1-p>+p+<around*|(|1-p|)>\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-x<rsup|1-p>|)>+p-1-<around*|(|p-1|)>\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-x<rsup|1-p>|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-x|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsub|p><around*|(|x|)>>>>>
      </eqnarray*>

      so that

      <\equation>
        <label|eq 19.33.151>f<rsub|p>=-<around*|(|\<star\>|)><rsup|1-p>+C<rsub|p>+<around*|(|1-p|)>\<cdot\>Id<rsub|<around*|]|0,\<infty\>|[>>
      </equation>

      As <math|<around*|(|\<star\>|)><rsup|<around*|(|1-p|)>>>,
      <math|C<rsub|p>> and <math|Id<rsub|<around*|]|0,\<infty\>|[>>> has a
      derivative at every <math|x\<in\><around*|]|0,\<infty\>|[>> [see
      examples: <reference|exp derivative of (*)^x>, <reference|diff constant
      function has a derivative>, <reference|diff identity has a derivative>]
      it follows that <math|f<rsub|p>> has a derivative at every
      <math|x\<in\><around*|]|0,\<infty\>|[>> and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f<rsub|p>|)><rprime|'><rsub|x>>|<cell|=>|<cell|-<around*|(|<around*|(|\<star\>|)><rsup|1-p>|)><rprime|'><rsub|x>+<around*|(|1-p|)>\<cdot\><around*|(|Id<rsub|<around*|]|0,\<infty\>|[>>|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|1-p|)>\<cdot\>x<rsup|<around*|(|1-p|)>-1>+<around*|(|1-p|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|p-1|)>\<cdot\>x<rsup|-p>-<around*|(|p-1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|p-1|)>\<cdot\><around*|(|\<ast\>|)><rsup|-p>+C<rsub|-<around*|(|p-1|)>>|)><around*|(|x|)>>>>>
      </eqnarray*>

      So that\ 

      <\equation>
        <label|eq 19.34.151><around*|(|f<rsub|p>|)><rprime|'><rsub|1>=<around*|(|p-1|)>\<cdot\>1<rsup|-p>-<around*|(|p-1|)>=0
      </equation>

      Further if we define <math|<around*|(|f<rsub|p>|)><rprime|'>:<around*|]|0,\<infty\>|[>\<rightarrow\>\<bbb-R\><text|
      by ><around*|(|f<rsub|p>|)><rprime|'><around*|(|x|)>=<around*|(|f<rsub|p>|)><rprime|'><rsub|x>>
      then\ 

      <\equation*>
        <around*|(|f<rsub|p>|)><rprime|'>=<around*|(|p-1|)>\<cdot\><around*|(|\<ast\>|)><rsup|-p>+C<rsub|-<around*|(|p-1|)>>
      </equation*>

      Using [examples: <reference|exp derivative of (*)^x>, <reference|diff
      constant function has a derivative>] again it follows that
      <math|*<around*|(|f<rsub|p>|)><rprime|'>> has a derivative at every
      <math|x\<in\><around*|]|0,\<infty\>|[>> and\ 

      <\equation*>
        <around*|(|f<rsub|p>|)><rsup|<around*|(|2|)>><rsub|x>=<around*|(|p-1|)>\<cdot\><around*|(|-p|)>\<cdot\>x<rsup|-p-1>=p\<cdot\><around*|(|1-p|)>\<cdot\>x<rsup|-p-1>
      </equation*>

      As <math|0\<less\>x> we have by [theorem: <reference|exp generalized
      power properties>] that <math|0\<less\>x<rsup|-p-1>>, further as
      <math|p\<in\><around*|]|1,\<infty\>|[>> we have
      <math|<rigid|0\<less\>p\<cdot\><around*|(|p-1|)>>> so that\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|0,\<infty\>|[><text| >we have
        0\<less\><around*|(|f<rsub|p>|)><rsup|2><rsub|x>
      </equation*>

      Hence using [theorem: <reference|diff increasing decreasing function>]
      it follows that\ 

      <\equation>
        <label|eq 19.35.151><around*|(|f<rsub|\|p>|)><rprime|'><text| is
        strictly increasing>
      </equation>

      As <math|<around*|(|\<ast\>|)><rsup|1-p>> is continuous [see theorem:
      <reference|exp (*)^x is continuous>], <math|C<rsub|p>> is continuous
      and <math|Id<rsub|<around*|]|0,\<infty\>|[>>> is continuous [see
      examples: <reference|continuity constant function>,
      <reference|continuity identity function>] <math|>we can use [theorem:
      <reference|continuity of sum of continuous functions>] proving that
      <math|f<rsub|\|p>> is continuous, \ 

      <\equation>
        <label|eq 19.36.151>f<rsub|\|p><text| is continuous on
        <math|<around*|]|0,\<infty\>|[>>>
      </equation>

      Let <math|x\<in\><around*|]|0,\<infty\>|[>> such that
      <math|f<rsub|p><around*|(|x|)>=0>. Assume that <math|x\<neq\>1> then we
      have either:

      <\description>
        <item*|<math|x\<less\>1>>Then by [eq: <reference|eq 19.36.151>] and
        [theorem: <reference|continuity and subspace topology
        (2)>]<math|<text| ><around*|(|f<rsub|p>|)><rsub|\|<around*|[|x,1|]>>>
        is continuous, further <math|<rigid|\<forall\>z\<in\><around*|]|x,1|[>>>
        we have that <math|f<rsub|\|<around*|]|x,1|[>>> has a derivative on
        <math|<around*|]|x,1|[>> and <math|f<rsub|\|<around*|[|x,1|]>><around*|(|x|)>=f<around*|(|x|)>=0=f<around*|(|1|)>=f<rsub|\|<around*|[|1,x|]>><around*|(|1|)>>
        so that we can apply Rolle's theorem [theorem: <reference|diff
        Rolle's theorem>] to find a <math|\<zeta\>\<in\><around*|]|x,1|[>>
        such that <math|<around*|(|f<rsub|<around*|\||p|\|>>|)><rprime|'><rsub|\<zeta\>>=0>.
        As <math|<around*|(|f<rsub|p>|)><rprime|'>> is strict increasing we
        have

        <\equation*>
          0=<around*|(|f<rsub|p>|)><rprime|'><rsub|\<zeta\>>=<around*|(|f<rsub|p>|)><rprime|'><around*|(|\<zeta\>|)>\<less\><around*|(|f<rsub|p>|)><rprime|'><around*|(|1|)>=<around*|(|f<rsub|p>|)><rprime|'><rsub|1>\<equallim\><rsub|<text|[eq:
          <reference|eq 19.34.151>]>>0
        </equation*>

        leading to the contradiction <math|0\<less\>0>.\ 

        <item*|<math|1\<less\>x>>Then by [eq: <reference|eq 19.36.151>] and
        [theorem: <reference|continuity and subspace topology
        (2)>]<math|<text| ><around*|(|f<rsub|p>|)><rsub|\|<around*|[|1,x|]>>>
        is continuous, further <math|<rigid|\<forall\>z\<in\><around*|]|1,x|[>>>
        we have that <math|f<rsub|\|<around*|]|1,x|[>>> has a derivative on
        <math|<around*|]|1,x|[>> and <math|f<rsub|\|<around*|[|1,x|]>><around*|(|x|)>=f<around*|(|x|)>=0=f<around*|(|1|)>=f<rsub|\|<around*|[|1,x|]>><around*|(|1|)>>
        so that we can apply Rolle's theorem [theorem: <reference|diff
        Rolle's theorem>] to find a <math|\<zeta\>\<in\><around*|]|1,x|[>>
        such that <math|<around*|(|f<rsub|<around*|\||p|\|>>|)><rprime|'><rsub|\<zeta\>>=0>.
        As <math|<around*|(|f<rsub|p>|)><rprime|'>> is strict increasing we
        have

        <\equation*>
          0\<equallim\><rsub|<text|[eq: <reference|eq
          19.34.151>]>><around*|(|f<rsub|p>|)><rprime|'><rsub|1>=<around*|(|f<rsub|p>|)><rprime|'><around*|(|1|)>\<less\><around*|(|f<rsub|p>|)><rprime|'><around*|(|\<zeta\>|)>=<around*|(|f<rsub|p>|)><rprime|'><rsub|\<zeta\>>=0
        </equation*>

        leading to the contradiction <math|0\<less\>0>.\ 
      </description>

      As in ail cases we have a contradiction the assumption is wrong and we
      must have\ 

      <\equation*>
        x=1
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|exp Young's inequality><index|Young's inequality><dueto|Young's
    inequality> Let <math|p,q\<in\><around*|]|0,\<infty\>|[>> such that
    <math|<frac|1|p>+<frac|1|q>=1> and <math|a,b\<in\><around*|]|0,\<infty\>|[>=\<bbb-R\><rsup|+>>
    then we have:

    <\enumerate>
      <item><math|a\<cdot\>b\<leqslant\><frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>>

      <item>Further for equality the following are equivalent

      <\enumerate>
        <item><math|a\<cdot\>b=<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>>

        <item><math|b=a<rsup|p-1>>

        <item><math|a<rsup|p>=b<rsup|q>>
      </enumerate>
    </enumerate>

    <\note>
      If <math|p\<leqslant\>1> then <math|<frac|1|p>\<geqslant\>1> so that
      <math|<frac|1|q>=1-<frac|1|p>\<leqslant\>0> contradicting
      <math|0\<less\>q\<Rightarrow\>0\<less\><frac|1|q>> and if
      <math|q\<leqslant\>1> then <math|<frac|1|q>\<geqslant\>1> so that
      <math|><math|<frac|1|p>=1-<frac|1|q>\<leqslant\>0> contradicting
      <math|0\<less\>p\<Rightarrow\>0\<less\><frac|1|p>>. Hence the condition
      <math|<frac|1|p>+<frac|1|q>=1\<wedge\>p,q\<in\><around*|]|0,1|[>>
      automatically includes <math|a,b\<in\><around*|]|1,\<infty\>|[>>.
    </note>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|a\<cdot\>b>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>>|<cell|exp<around*|(|log<around*|(|a\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp logarithm properties>]>>>|<cell|exp<around*|(|log<around*|(|a|)>+log<around*|(|b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|<frac|1|p>\<cdot\>p\<cdot\>log<around*|(|a|)>+<frac|1|q>\<cdot\>q\<cdot\>log<around*|(|b|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp generalized power properties>]>>>|<cell|exp<around*|(|<frac|1|p>\<cdot\>log<around*|(|a<rsup|p>|)>+<frac|1|q>\<cdot\>log<around*|(|b<rsup|q>|)>|)><eq-number><label|eq
        19.37.152>>>>>
      </eqnarray*>

      For <math|log<around*|(|a<rsup|p>|)>>,
      <math|log<around*|(|b<rsup|q>|)>> we have either:\ 

      <\description>
        <item*|<math|log<around*|(|a<rsup|p>|)>=log<around*|(|b<rsup|q>|)>>>Then
        <math|>

        <\eqnarray*>
          <tformat|<table|<row|<cell|exp<around*|(|<frac|1|p>\<cdot\>log<around*|(|a<rsup|p>|)>+<frac|1|q>\<cdot\>log<around*|(|b<rsup|q>|)>|)>>|<cell|=>|<cell|exp<around*|(|<around*|(|<frac|1|p>+<frac|1|q>|)>\<cdot\>log<around*|(|a<rsup|p>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|log<around*|(|a<rsup|p>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|1|p>+<frac|1|q>|)>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|p>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>+<frac|1|q>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|p>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>+<frac|1|q>\<cdot\>exp<around*|(|log<around*|(|b<rsup|q>|)>|)>>>>>
        </eqnarray*>

        <item*|<math|log<around*|(|a<rsup|p>|)>\<less\>log<around*|(|b<rsup|q>|)>>>Then
        as <math|exp> is convex [see theorem: <reference|exp properties>] it
        follows from [theorem: <reference|diff convex/concave alternative>]
        that\ 

        <\equation*>
          exp<around*|(|<frac|1|p>\<cdot\>log<around*|(|a<rsup|p>|)>+<frac|1|q>\<cdot\>log<around*|(|b<rsup|q>|)>|)>\<leqslant\><frac|1|p>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>+<frac|1|q>\<cdot\>exp<around*|(|log<around*|(|b<rsup|q>|)>|)>
        </equation*>

        <item*|<math|log<around*|(|a<rsup|p>|)>\<gtr\>log<around*|(|b<rsup|q>|)>>>hen
        as <math|exp> is convex [see theorem: <reference|exp properties>] it
        follows from [theorem: <reference|diff convex/concave alternative>]
        that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|exp<around*|(|<frac|1|p>\<cdot\>log<around*|(|a<rsup|p>|)>+<frac|1|q>\<cdot\>log<around*|(|b<rsup|q>|)>|)>>|<cell|=>|<cell|exp<around*|(|<frac|1|q>\<cdot\>log<around*|(|b<rsup|q>|)>+<frac|1|p>\<cdot\>log<around*|(|a<rsup|p>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|1|q>\<cdot\>exp<around*|(|log<around*|(|b<rsup|q>|)>|)>+<frac|1|p>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|p>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>+<frac|1|q>\<cdot\>exp<around*|(|log<around*|(|b<rsup|q>|)>|)>>>>>
        </eqnarray*>
      </description>

      so in all cases we have <math|exp<around*|(|<frac|1|p>\<cdot\>log<around*|(|a<rsup|p>|)>+<frac|1|q>\<cdot\>log<around*|(|b<rsup|q>|)>|)>\<leqslant\><frac|1|p>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>+<frac|1|q>\<cdot\>exp<around*|(|log<around*|(|b<rsup|q>|)>|)>>
      which combined with [eq: <reference|eq 19.37.152>] gives\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|a\<cdot\>b>|<cell|\<leqslant\>>|<cell|<frac|1|p>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>+<frac|1|q>\<cdot\>exp<around*|(|log<around*|(|b<rsup|q>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|exp logarithm properties>>>>|<cell|<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>>>>>
      </eqnarray*>

      <item>First for <math|p,q\<in\><around*|]|0,\<infty\>|[>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|1|p>+<frac|1|q>=1>|<cell|\<Leftrightarrowlim\><rsub|p\<neq\>0>>|<cell|p\<cdot\><around*|(|<frac|1|p>+<frac|1|q>|)>=p>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|1+<frac|p|q>=p>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<frac|p|q>=p-1>>|<row|<cell|<frac|1|p>+<frac|1|q>=1>|<cell|\<Leftrightarrowlim\><rsub|p\<neq\>0>>|<cell|q\<cdot\><around*|(|<frac|1|p>+<frac|1|q>|)>=q>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<frac|q|p>+1=q>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<frac|q|p>=q-1>>>>
      </eqnarray*>

      so that if <math|<frac|1|p>+<frac|1|q>=1> then

      <\equation>
        <label|eq 19.38.152><frac|p|q>=p-1\<wedge\><frac|q|p>=q-1\<Rightarrow\><around*|(|p-1|)>\<cdot\><around*|(|q-1|)>=1
      </equation>

      Now for the equivalences:

      <\description>
        <item*|<math|a\<Rightarrow\>b>>As
        <math|a\<cdot\>b=<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|a\<cdot\>b>|<cell|=>|<cell|<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>>>|<row|<cell|>|<cell|=>|<cell|<frac|q\<cdot\>a<rsup|p>+p\<cdot\>b<rsup|q>|p\<cdot\>q>>>|<row|<cell|>|<cell|\<equallim\><rsub|<frac|1|p>+<frac|1|q>=1\<Rightarrow\><frac|p+q|p\<cdot\>q>=1\<Rightarrow\><frac|1|p\<cdot\>q>=<frac|1|p+q>>>|<cell|<frac|q\<cdot\>a<rsup|p>+p\<cdot\>b<rsup|q>|p+q>>>>>
        </eqnarray*>

        so that [as <math|a\<cdot\>b\<in\><around*|]|0,\<infty\>|[>>] we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|p+q=<frac|q\<cdot\>a<rsup|p>+p\<cdot\>b<rsup|q>|a\<cdot\>b>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|p+q=q\<cdot\><frac|a<rsup|p>|a\<cdot\>b>+p\<cdot\><frac|b<rsup|q>|a\<cdot\>b>>|<cell|\<Rightarrowlim\><rsub|0\<less\>a,b\<wedge\><text|[theorem:
          <reference|exp generalized power
          properties>(8)]>>>|<cell|>>|<row|<cell|p+q=q\<cdot\><frac|a<rsup|p-1>|b>+p\<cdot\><frac|b<rsup|q-1>|b>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|p\<cdot\><around*|(|1-<frac|b<rsup|q-1>|b>|)>=q\<cdot\><around*|(|<frac|a<rsup|p-1>|b>-1|)>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|<frac|a<rsup|p-1>|b>-1=<frac|p|q>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|b>|)>>|<cell|\<Rightarrowlim\><rsub|<text|[eq:
          <reference|eq 19.38.152>]>>>|<cell|>>|<row|<cell|<frac|a<rsup|p-1>|b>-1=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|b>|)>>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
          <reference|exp generalized power
          properties>(9)]>>>|<cell|>>|<row|<cell|<frac|b<rsup|-1>|a<rsup|-<around*|(|p-1|)>>>-1=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|b>|)>>|<cell|\<Rightarrowlim\><rsub|<text|[eq:
          <reference|eq 19.38.152>]>>>|<cell|>>|<row|<cell|<frac|b<rsup|-<around*|(|q-1|)>\<cdot\><around*|(|p-1|)>>|a<rsup|-<around*|(|p-1|)>>>-1=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|b>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|b<rsup|<around*|(|q-1|)>\<cdot\><around*|(|1-p|)>>|a<rsup|<around*|(|1-p|)>>>-1=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|b>|)>>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
          <reference|exp generalized power
          properties>]>>>|<cell|>>|<row|<cell|<around*|(|<frac|b<rsup|q-1><rsup|>|a>|)><rsup|1-p>-1=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|b>|)>>|<cell|=>|<cell|>>|<row|<cell|0=<around*|(|1-<around*|(|<frac|b<rsup|q-1><rsup|>|a>|)><rsup|1-p>+<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|b>|)>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 19.51.151>]>>>|<cell|>>|<row|<cell|0=f<rsub|p><around*|(|<frac|b<rsup|q-1><rsup|>|a>|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        so that by [lemma: <reference|lemma 19.51.151>] we conclude that
        <math|<frac|b<rsup|q-1>|a>=1> or <math|a=b<rsup|q-1>>. Hence

        <\equation*>
          a<rsup|p-1>=<around*|(|b<rsup|q-1>|)><rsup|1-q>\<equallim\><rsub|<text|[theorem:
          <reference|exp generalized power
          properties>]>>b<rsup|<around*|(|q-1|)>\<cdot\><around*|(|p-1|)>>\<Rightarrowlim\><rsub|<text|[eq:
          <reference|eq 19.38.152>]>>b<rsup|1>=b
        </equation*>

        proving that\ 

        <\equation*>
          b=a<rsup|p-1>
        </equation*>

        <item*|<math|b\<Rightarrow\>a>>If <math|b=a<rsup|p-1>> then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>>|<cell|=>|<cell|<frac|a<rsup|p>|p>+<frac|<around*|(|a<rsup|p-1>|)><rsup|q>|q>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 19.38.152>]>>>|<cell|<frac|a<rsup|p>|p>+<frac|<around*|(|a<rsup|<frac|p|q>>|)><rsup|q>|q>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|exp generalized power
          properties>]>>>|<cell|<frac|a<rsup|p>|p>+<frac|a<rsup|<frac|p|q>\<cdot\>q>|q>>>|<row|<cell|>|<cell|=>|<cell|<frac|a<rsup|p>|p>+<frac|a<rsup|p>|q>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|1|p>+<frac|1|q>|)>\<cdot\>a<rsup|p>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|p>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|<around*|(|p-1|)>+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|exp generalized power
          properties>]>>>|<cell|a<rsup|<around*|(|p-1|)>>\<cdot\>a<rsup|1>>>|<row|<cell|>|<cell|=>|<cell|b\<cdot\>a<rsup|1>>>|<row|<cell|>|<cell|=>|<cell|a\<cdot\>b>>>>
        </eqnarray*>

        <item*|<math|b\<Rightarrow\>c>>If <math|b=a<rsup|p-1>> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|b<rsup|q>>|<cell|=>|<cell|<around*|(|a<rsup|p-1>|)><rsup|q>>>|<row|<cell|>|<cell|<math|\<equallim\><rsub|<text|[eq:
          <reference|eq 19.38.152>]>>>>|<cell|<around*|(|a<rsup|<frac|p|q>>|)><rsup|q>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|exp generalized power
          properties>]>>>|<cell|a<rsup|<frac|p|q>*\<cdot\>q>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|p>>>>>
        </eqnarray*>

        <item*|<math|c\<Rightarrow\>b>>If <math|a<rsup|p>=b<rsup|q>> then

        <\eqnarray*>
          <tformat|<table|<row|<cell|b>|<cell|=>|<cell|b<rsup|q\<cdot\><frac|1|q>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|exp generalized power
          properties>]>>>|<cell|<around*|(|b<rsup|q>|)><rsup|<frac|1|q>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a<rsup|p>|)><rsup|<frac|1|q>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|exp generalized power
          properties>]>>>|<cell|a<rsup|<frac|p|q>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 19.38.152>]>>>|<cell|a<rsup|p-1>>>>>
        </eqnarray*>
      </description>
    </enumerate>
  </proof>

  <subsection|Trigonometric functions>

  For the generalized powers and the natural logarithm we studied the
  behavior of the exponential function in the real domain. For trigonometric
  functions we consider the behavior of the exponential function in the
  complex domain.

  <\theorem>
    <label|exp complement and absolute norm>\ 

    <\enumerate>
      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have that
      <math|<wide|exp<around*|(|z|)>|\<wide-bar\>>=exp<around*|(|z|)>>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have that
      <math|<around*|\||exp<around*|(|z|)>|\|>=exp<around*|(|Re<around*|(|z|)>|)>>

      <item><math|\<forall\>x+i\<cdot\>y\<in\>\<bbb-C\>> we have that
      <math|<around*|\||exp<around*|(|z|)>|\|>=exp<around*|(|x|)>> and
      <math|<around*|\||exp<around*|(|i\<cdot\>y|)>|\|>=exp<around*|(|0|)>=1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|exp<around*|(|<wide|z|\<wide-bar\>>|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n><frac|<wide|z|\<wide-bar\>><rsup|i>|i!>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=0><rsup|n><frac|<wide|z|\<wide-bar\>><rsup|i>|i!>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><wide|<big|sum><rsub|i=0><rsup|n><frac|z<rsup|i>|i!>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|limit complex conjugate>]>>>|<cell|<wide|lim<rsub|n\<rightarrow\>\<infty\>><big|sum><rsub|i=n><rsup|\<infty\>><frac|z<rsup|i>|i!>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<wide|exp<around*|(|z|)>|\<wide-bar\>>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||exp<around*|(|z|)>|\|><rsup|2>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex norm properties>]>>>|<cell|exp<around*|(|z|)>\<cdot\><wide|exp<around*|(|z|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|exp<around*|(|z|)>\<cdot\>exp<around*|(|<wide|z|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp exp(x+y)=exp(x).exp(y)>]>>>|<cell|exp<around*|(|z+<wide|z|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>>>|<cell|exp<around*|(|2\<cdot\>Re<around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|Re<around*|(|z|)>+Re<around*|(|z|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp exp(x+y)=exp(x).exp(y)>]>>>|<cell|exp<around*|(|Re<around*|(|z|)>|)>\<cdot\>exp<around*|(|Re<around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|Re<around*|(|z|)>|)><rsup|2>>>>>
      </eqnarray*>

      Now as <math|<around*|\||exp<around*|(|z|)>|\|>\<in\>\<bbb-R\><rsup|+>>
      and <math|exp<around*|(|Re<around*|(|z|)>|)>\<in\>\<bbb-R\><rsup|+>>[see
      theorem: <reference|exp properties>] it follows from [theorem:
      <reference|complex square root>] that
      <math|exp<around*|(|z|)>=exp<around*|(|Re<around*|(|z|)>|)>>.

      <item>If <math|z=x+i\<cdot\>y> then
      <math|<around*|\||exp<around*|(|z|)>|\|>\<equallim\><rsub|<around*|(|2|)>>exp<around*|(|Re<around*|(|z|)>|)>=exp<around*|(|x|)>>,
      further

      <\equation*>
        <around*|\||exp<around*|(|i\<cdot\>y|)>|\|>\<equallim\><rsub|<around*|(|2|)>>exp<around*|(|Re<around*|(|i\<cdot\>y|)>|)>=exp<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>1
      </equation*>
    </enumerate>
  </proof>

  We define now the trigonometric functions in terms of the exponential
  functions=.

  <\definition>
    <label|exp triginiometric function><index|trigoniometric
    functions><index|sinus><index|cosinus><index|<math|sin<around*|(|z|)>>><index|<math|cos<around*|(|z|)>>><dueto|Trigonometric
    functions>

    <\enumerate>
      <item><math|cos:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| is defined by
      >cos<around*|(|z|)>=<frac|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|2>\<equallim\><rsub|<text|[theorem:
      <reference|exp generalized power properties>(6)]>><frac|\<mathe\><rsup|i\<cdot\>z>+\<mathe\><rsup|-i\<cdot\>z>|2>>

      <item><math|sin:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is defined by
      <math|sin<around*|(|z|)>=<frac|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|2\<cdot\>i>\<equallim\><rsub|<text|[theorem:
      <reference|exp generalized power properties>(6)]>><frac|\<mathe\><rsup|i\<cdot\>z>-\<mathe\><rsup|-i\<cdot\>z>|2\<cdot\>i>>
    </enumerate>
  </definition>

  <\theorem>
    <label|exp trigoniometric properties>We have the following properties for
    the trigonometric function.

    <\enumerate>
      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|cos<around*|(|z|)>+i\<cdot\>sin<around*|(|z|)>=exp<around*|(|i\<cdot\>z|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp generalized power properties>(6)]>>\<mathe\><rsup|i\<cdot\>z>>.

      <item><math|cos:\<bbb-C\>\<rightarrow\>\<bbb-C\>> and
      <math|sin:\<bbb-C\>\<rightarrow\>\<bbb-C\>> are continuous.

      <item><math|cos<around*|(|0|)>=1>.

      <item><math|sin<around*|(|0|)>=0>.

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have:

      <\enumerate>
        <item><math|cos<around*|(|-z|)>=cos<around*|(|z|)>>.

        <item><math|sim<around*|(|-z|)>=-sin<around*|(|z|)>>.
      </enumerate>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|cos<rsup|2>*<around*|(|z|)>+sim<rsup|2><around*|(|z|)>=1>

      <item><math|\<forall\>x,y\<in\>\<bbb-C\>> we have:\ 

      <\enumerate>
        <item><math|cos<around*|(|x+y|)>=cos<around*|(|x|)>\<cdot\>cos<around*|(|y|)>-sin<around*|(|x|)>\<cdot\>sin<around*|(|y|)>>.

        <item><math|sin<around*|(|x+y|)>=sin<around*|(|x|)>\<cdot\>cos<around*|(|y|)>+cos<around*|(|x|)>\<cdot\>sin<around*|(|y|)>>.
      </enumerate>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have:

      <\enumerate>
        <item><math|cos<around*|(|x|)>\<in\>\<bbb-R\>> and
        <math|Re<around*|(|\<mathe\><rsup|i\<cdot\>x>|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp generalized power properties>(6)]>>Re<around*|(|exp<around*|(|i\<cdot\>x|)>|)>=cos<around*|(|x|)>>

        <item><math|sin<around*|(|x|)>\<in\>\<bbb-R\>> and
        <math|Img<around*|(|\<mathe\><rsup|i\<cdot\>x>|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp generalized power properties>(6)]>>Img<around*|(|exp<around*|(|i\<cdot\>x|)>|)>=sim<around*|(|x|)>>
      </enumerate>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have

      <\equation*>
        <around*|\||\<mathe\><rsup|i\<cdot\>x>|\|>\<equallim\><rsub|<text|[theorem:
        <reference|exp generalized power properties>(6)]>><around*|\||exp<around*|(|i\<cdot\>x|)>|\|>=1<text|
        and ><around*|\||e<rsup|-i\<cdot\>z>|\|>\<equallim\><rsub|<text|[theorem:
        <reference|exp generalized power properties>(6)]>><around*|\||exp<around*|(|-i\<cdot\>x|)>|\|>=1
      </equation*>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|\||cos<around*|(|x|)>|\|>\<in\><around*|[|0,1|]>> and
      <math|<around*|\||sin<around*|(|x|)>|\|>\<in\><around*|[|0,1|]>> or in
      other words as <math|cos<around*|(|x|)>,sin<around*|(|x|)>\<in\>\<bbb-R\>>
      <math|-1\<leqslant\>cos<around*|(|x|)>,sin<around*|(|x|)>\<leqslant\>1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|z\<in\>\<bbb-C\>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|cos<around*|(|z|)>+i\<cdot\>sin<around*|(|z|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|2>+i\<cdot\><frac|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>+exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|2>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|i\<cdot\>z|)>>>>>
      </eqnarray*>

      <item>Note that <math|h:\<bbb-C\>\<rightarrow\>\<bbb-C\>> defined by
      <math|f=i\<cdot\>Id<rsub|\<bbb-C\>>> and
      <math|g:\<bbb-C\>\<rightarrow\>\<bbb-C\>> defined by
      <math|g=-i\<cdot\>Id<rsub|\<bbb-C\>>> are continuous [see example:
      <reference|continuity identity function>] and theorem:
      <reference|continuity of sum of continuous functions>]. As <math|exp>
      is continuous [see theorem: <reference|exp is continuous>] it follows
      from [theorem: <reference|continuity composition>] that
      <math|exp\<circ\>f> and <math|exp\<circ\>g> are continuous. Hence using
      [theorem: <reference|continuity of sum of continuous functions>]
      <math|<frac|1|2>\<cdot\><around*|(|exp\<circ\>f+exp\<circ\>g|)>> and
      <math|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp\<circ\>f-exp\<circ\>g|)>>
      are continuous. Let <math|z\<in\>\<bbb-C\>> then\ 

      <\equation*>
        <around*|(|<frac|1|2>\<cdot\><around*|(|exp\<circ\>f+exp\<circ\>g|)>|)><around*|(|z|)>=<frac|exp<around*|(|f<around*|(|z|)>|)>+exp<around*|(|g<around*|(|z|)>|)>|2>=<frac|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|2>=cos<around*|(|z|)>
      </equation*>

      and\ 

      <\equation*>
        <around*|(|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp\<circ\>f-exp\<circ\>g|)>|)><around*|(|z|)>=<frac|exp<around*|(|f<around*|(|z|)>|)>-exp<around*|(|g<around*|(|z|)>|)>|2\<cdot\>i>=<frac|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|2\<cdot\>i>=sin<around*|(|z|)>
      </equation*>

      proving that <math|<frac|1|2>\<cdot\><around*|(|exp\<circ\>f+exp\<circ\>g|)>=cos>
      and <math|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp\<circ\>f-exp\<circ\>g|)>=sin>.
      Hence <math|cos> and <math|sin> are continuous.

      <item><math|cos<around*|(|0|)>=<frac|exp<around*|(|i\<cdot\>0|)>+exp<around*|(|i\<cdot\>0|)>|2>=<frac|exp<around*|(|0|)>+ecp<around*|(|0|)>|2>\<equallim\><rsub|<text|[theorem:
      <reference|exp properties>]>><frac|1+1|2>=1>.

      <item><math|sin<around*|(|0|)>=<frac|exp<around*|(|i\<cdot\>0|)>-exp<around*|(|i\<cdot\>0|)>|2\<cdot\>i>=<frac|exp<around*|(|0|)>-exp<around*|(|0|)>|2\<cdot\>i>=0>.

      <item>Let <math|z\<in\>\<bbb-C\>> then we have:

      <\enumerate>
        <item><math|cos<around*|(|z|)>=<frac|exp<around*|(|-i\<cdot\>z|)>+exp<around*|(|-<around*|(|-i\<cdot\>z|)>|)>|2>=<frac|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|2>=cos<around*|(|z|)>>.

        <item><math|sin<around*|(|z|)>=<frac|exp<around*|(|-i\<cdot\>z|)>-exp<around*|(|-<around*|(|-i\<cdot\>z|)>|)>|2\<cdot\>i>=<frac|exp<around*|(|-i\<cdot\>z|)>-exp<around*|(|i\<cdot\>z|)>|2\<cdot\>i>=-<frac|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|2\<cdot\>i>=-sin<around*|(|z|)>>
      </enumerate>

      <item> Let <math|z\<in\>\<bbb-C\>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|cos<rsup|2><around*|(|z|)>+sin<rsup|2><around*|(|z|)>>|<cell|=>|<cell|<frac|<around*|(|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>|4>+<frac|<around*|(|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>|-4>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>\<cdot\><around*|(|<around*|(|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>-<around*|(|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>\<cdot\><around*|(|<around*|(|exp<around*|(|i\<cdot\>z|)>|)><rsup|2>+<around*|(|exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>+2\<cdot\>exp<around*|(|i\<cdot\>z|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>-<around*|(|exp<around*|(|i\<cdot\>z|)>|)><rsup|2>-<around*|(|exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>+2\<cdot\>exp<around*|(|i\<cdot\>z|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>\<cdot\>4\<cdot\>exp<around*|(|i\<cdot\>z|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>>>|<row|<cell|>|<cell|=>|<cell|exp(i\<cdot\>z)\<cdot\>exp(-i\<cdot\>z)>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp exp(x+y)=exp(x).exp(y)>]>>>|<cell|exp<around*|(|i\<cdot\>z-i\<cdot\>z|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp properties>]>>>|<cell|1>>>>
      </eqnarray*>

      <item> Let <math|a<rsub|x>=exp<around*|(|i\<cdot\>x|)>>,
      <math|b<rsub|x>=exp<around*|(|-i\<cdot\>x|)>>,
      <math|a<rsub|y>=exp<around*|(|i\<cdot\>y|)>> and
      <math|b<rsub|y>=exp<around*|(|-i\<cdot\>y|)>> then we have

      <\enumerate>
        <item>

        <\eqnarray*>
          <tformat|<table|<row|<cell|cos<around*|(|x|)>\<cdot\>cos<around*|(|y|)>-sin<around*|(|x|)>\<cdot\>sin<around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|4>\<cdot\><around*|(|a<rsub|x>+b<rsub|x>|)>\<cdot\><around*|(|a<rsub|y>+b<rsub|y>|)>+<frac|1|4>\<cdot\><around*|(|a<rsub|x>-b<rsub|x>|)>\<cdot\><around*|(|a<rsub|y>-b<rsub|y>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|4>\<cdot\><around*|[|<around*|(|a<rsub|x>\<cdot\>a<rsub|y>+a<rsub|x>\<cdot\>b<rsub|y>+b<rsub|x>\<cdot\>a<rsub|y>+b<rsub|x>\<cdot\>b<rsub|y>|)>+<around*|(|a<rsub|x>\<cdot\>a<rsub|y>-a<rsub|x>\<cdot\>b<rsub|y>-b<rsub|x>\<cdot\>a<rsub|y>+b<rsub|x>\<cdot\>b<rsub|y>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|4>\<cdot\><around*|[|<around*|(|a<rsub|x>\<cdot\>a<rsub|y>+a<rsub|x>\<cdot\>b<rsub|y>+b<rsub|x>\<cdot\>a<rsub|y>+b<rsub|x>\<cdot\>b<rsub|y>|)>+<around*|(|a<rsub|x>\<cdot\>a<rsub|y>-a<rsub|x>\<cdot\>b<rsub|y>-b<rsub|x>\<cdot\>a<rsub|y>+b<rsub|x>\<cdot\>b<rsub|y>|)>|]>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|4>\<cdot\><around*|[|a<rsub|x>\<cdot\>a<rsub|y>+a<rsub|x>\<cdot\>b<rsub|y>+b<rsub|x>\<cdot\>a<rsub|y>+b<rsub|x>\<cdot\>b<rsub|y>+a<rsub|x>\<cdot\>a<rsub|y>-a<rsub|x>\<cdot\>b<rsub|y>-b<rsub|x>\<cdot\>a<rsub|y>+b<rsub|x>\<cdot\>b<rsub|y>|]>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|4>\<cdot\><around*|(|2\<cdot\>a<rsub|x>\<cdot\>a<rsub|y>+2\<cdot\>b<rsub|x>\<cdot\>b<rsub|y>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|2>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|2>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x+i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x-i\<cdot\>y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|2>\<cdot\><around*|(|exp<around*|(|i\<cdot\><around*|(|x+y|)>|)>+exp<around*|(|-i\<cdot\><around*|(|x+y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|cos<around*|(|x+y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        <item>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|sin<around*|(|x|)>\<cdot\>cos<around*|(|y|)>+cos<around*|(|x|)>\<cdot\>sin<around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|4\<cdot\>i>\<cdot\><around*|(|<around*|(|a<rsub|x>-b<rsub|x>|)>\<cdot\><around*|(|a<rsub|y>+b<rsub|y>|)>+<around*|(|a<rsub|x>+b<rsub|x>|)>\<cdot\><around*|(|a<rsub|y>-b<rsub|y>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|4\<cdot\>i>\<cdot\><around*|(|a<rsub|x>\<cdot\>a<rsub|y>+a<rsub|x>\<cdot\>b<rsub|y>-b<rsub|x>\<cdot\>a<rsub|y>-b<rsub|x>\<cdot\>b<rsub|y>+a<rsub|x>\<cdot\>a<rsub|y>-a<rsub|x>\<cdot\>b<rsub|y>+b<rsub|x>\<cdot\>a<rsub|y>-b<rsub|x>\<cdot\>b<rsub|y>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|4\<cdot\>i>\<cdot\><around*|(|2\<cdot\>a<rsub|x>\<cdot\>a<rsub|y>-2\<cdot\>b<rsub|x>\<cdot\>b<rsub|y>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x+i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>x-i\<cdot\>y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp<around*|(|i\<cdot\><around*|(|x+y|)>|)>+exp<around*|(|-i\<cdot\><around*|(|x+y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|sin<around*|(|x+y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>
      </enumerate>

      <item>Let <math|x\<in\>\<bbb-R\>> then\ 

      <\enumerate>
        <item>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|cos<around*|(|x|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|-i\<cdot\>x|)>|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|<wide|i\<cdot\>x|\<wide-bar\>>|)>|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|exp complement and absolute
          norm>]>>>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>+<wide|exp<around*|(|i\<cdot\>x|)>|\<wide-bar\>>|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex conjugate properties>]>>>|<cell|<frac|2\<cdot\>Re<around*|(|exp<around*|(|i\<cdot\>x|)>|)>|2>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|exp<around*|(|i\<cdot\>x|)>|)>\<in\>\<bbb-R\>>>>>
        </eqnarray*>

        <item>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|sin<around*|(|x|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|-i\<cdot\>x|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|<wide|i\<cdot\>x|\<wide-bar\>>|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|exp complement and absolute
          norm>]>>>|<cell|<frac|2\<cdot\>i\<cdot\>Img<around*|(|exp<around*|(|i\<cdot\>x|)>|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|Img<around*|(|exp<around*|(|i\<cdot\>x|)>|)>\<in\>\<bbb-R\>>>>>
        </eqnarray*>
      </enumerate>

      <item>Let <math|x\<in\>\<bbb-R\>> then

      <\equation*>
        <around*|\||e<rsup|i\<cdot\>x>|\|>\<equallim\><rsub|<text|[theorem:
        <reference|exp generalized power properties>(6)]>><around*|\||exp<around*|(|i\<cdot\>x|)>|\|>\<equallim\><rsub|<text|[theorem:
        <reference|exp complement and absolute norm> (3)]>>=1<rsub|<text|>>
      </equation*>

      further\ 

      <\equation*>
        <around*|\||exp<around*|(|-i\<cdot\>x|)>|\|>\<equallim\><rsub|x\<in\>\<bbb-R\>><around*|\||exp<around*|(|<wide|i\<cdot\>x|\<wide-bar\>>|)>|\|>\<equallim\><rsub|<text|[theorem:
        <reference|exp complement and absolute
        norm>]>><around*|\||<wide|exp<around*|(|i\<cdot\>x|)>|\<wide-bar\>>|\|>\<equallim\><rsub|<text|[theorem:
        <reference|complex norm properties>]>><around*|\||exp<around*|(|i\<cdot\>z|)>|\|>=1
      </equation*>

      <item>Let <math|x\<in\>\<bbb-R\>> then we have:

      <\equation*>
        <around*|\||cos<around*|(|x|)>|\|>\<equallim\><frac|1|2>*\<cdot\><around*|\||e<rsup|i\<cdot\>x>+e<rsup|-i\<cdot\>x>|\|>\<leqslant\><frac|1|2>\<cdot\><around*|(|<around*|\||e<rsup|i\<cdot\>x>|\|>+<around*|\||e<rsup|-i\<cdot\>x>|\|>|)>\<equallim\><rsub|<around*|(|9|)>><frac|1|2>\<cdot\>2=1
      </equation*>

      and\ 

      <\equation*>
        <around*|\||cos<around*|(|x|)>|\|>\<equallim\><around*|\||<frac|1|2\<cdot\>i>*|\|>\<cdot\><around*|\||e<rsup|i\<cdot\>x>-e<rsup|-i\<cdot\>x>|\|>\<leqslant\><frac|1|2>\<cdot\><around*|(|<around*|\||e<rsup|i\<cdot\>x>|\|>+<around*|\||e<rsup|-i\<cdot\>x>|\|>|)>\<equallim\><rsub|<around*|(|9|)>><frac|1|2>\<cdot\>2=1
      </equation*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|exp derivative of cos(x) and sin(x)><math|\<forall\>z\<in\>\<bbb-C\>>
    we have that <math|cos:\<bbb-C\>\<rightarrow\>\<bbb-C\>> has a derivative
    at <math|z> with

    <\equation*>
      cos<rprime|'><rsub|z>=-sin<around*|(|z|)>
    </equation*>

    and <math|sin:\<bbb-C\>\<rightarrow\>\<bbb-C\>> has a derivative at
    <math|z> with\ 

    <\equation*>
      sin<rprime|'><rsub|z>=cos<around*|(|z|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|\<forall\>z\<in\>\<bbb-C\>> we have that

    <\equation*>
      <around*|(|<frac|1|2>\<cdot\><around*|(|exp\<circ\><around*|(|i\<cdot\>Id<rsub|C>|)>+exp\<circ\><around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)>|)><around*|(|z|)>=<frac|1|2>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|-i\<cdot\>x|)>|)>=cos<around*|(|x|)>
    </equation*>

    hence\ 

    <\equation*>
      cos=<frac|1|2>\<cdot\><around*|(|exp\<circ\><around*|(|i\<cdot\>Id<rsub|C>|)>+exp\<circ\><around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)>
    </equation*>

    Likewise we have that\ 

    <\equation*>
      <around*|(|<frac|1|2*\<cdot\>i>\<cdot\><around*|(|exp\<circ\><around*|(|i\<cdot\>Id<rsub|C>|)>-exp\<circ\><around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)>|)><around*|(|z|)>=<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|-i\<cdot\>x|)>|)>=sin<around*|(|x|)>
    </equation*>

    hence\ 

    <\equation*>
      sin=<frac|1|2>\<cdot\><around*|(|exp\<circ\><around*|(|i\<cdot\>Id<rsub|C>|)>-exp\<circ\><around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)>
    </equation*>

    Let <math|z\<in\>\<bbb-C\> >then by [theorem: <reference|exp
    derivative>], [examples: <reference|diff identity has a derivative>],
    [theorem: <reference|diff derivate on [a,b] linearity>] and the chain
    rule [theorem: <reference|diff chain rule calculus>] it follows that
    <math|sin> and <math|cos> has a derivative at <math|z> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|cos<rprime|'><rsub|z>>|<cell|=>|<cell|<around*|(|<frac|1|2>\<cdot\><around*|(|exp\<circ\><around*|(|i\<cdot\>Id<rsub|\<bbb-C\>>|)>+exp\<circ\><around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)>|)><rprime|'><rsub|z>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|<around*|(|exp\<circ\><around*|(|i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)><rprime|'><rsub|z>+<around*|(|exp\<circ\><around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)><rprime|'><rsub|z>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|exp<rprime|'><rsub|<around*|(|i\<cdot\>Id<rsub|\<bbb-C\>>|)><around*|(|z|)>>\<cdot\>i\<cdot\><around*|(|Id<rsub|\<bbb-C\>>|)><rprime|'><rsub|c>+exp<rprime|'><rsub|<around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)><around*|(|z|)>>\<cdot\><around*|(|-i|)>\<cdot\><around*|(|Id<rsub|\<bbb-C\>>|)><rprime|'><rsub|z>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|exp<rprime|'><rsub|i\<cdot\>z>\<cdot\>i\<cdot\>1+exp<rprime|'><rsub|-i\<cdot\>z>\<cdot\><around*|(|-i|)>\<cdot\>1|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|i\<cdot\>exp<around*|(|i\<cdot\>z|)>-i\<cdot\>exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><frac|i|i>\<cdot\>i\<cdot\><around*|(|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|sin<around*|(|z|)>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|sin<rprime|'><rsub|z>>|<cell|=>|<cell|<around*|(|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp\<circ\><around*|(|i\<cdot\>Id<rsub|\<bbb-C\>>|)>-exp\<circ\><around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)>|)><rprime|'><rsub|z>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2\<cdot\>i>\<cdot\><around*|(|<around*|(|exp\<circ\><around*|(|i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)><rprime|'><rsub|z>-<around*|(|exp\<circ\><around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)>|)><rprime|'><rsub|z>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp<rprime|'><rsub|<around*|(|i\<cdot\>Id<rsub|\<bbb-C\>>|)><around*|(|z|)>>\<cdot\>i\<cdot\><around*|(|Id<rsub|\<bbb-C\>>|)><rprime|'><rsub|c>-exp<rprime|'><rsub|<around*|(|-i\<cdot\>Id<rsub|\<bbb-C\>>|)><around*|(|z|)>>\<cdot\><around*|(|-i|)>\<cdot\><around*|(|Id<rsub|\<bbb-C\>>|)><rprime|'><rsub|z>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2\<cdot\>i>\<cdot\><around*|(|exp<rprime|'><rsub|i\<cdot\>z>\<cdot\>i\<cdot\>1+exp<rprime|'><rsub|-i\<cdot\>z>\<cdot\>i\<cdot\>1|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2\<cdot\>i>\<cdot\>i\<cdot\><around*|(|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|z|)>>>>>
    </eqnarray*>
  </proof>

  The next theorem shows that there exist a <math|x<rsub|0>\<in\>\<bbb-R\>>
  such that <math|cos<around*|(|x<rsub|0>|)>>. This will be used to define
  the <math|\<pi\>> and show that <math|sin> and <math|cos> are periodic.

  \;

  <\theorem>
    <label|exp cos has a zero element><math|\<exists\>x<rsub|0>\<in\><around*|[|0,\<infty\>|[>>
    such that <math|cos<around*|(|x<rsub|0>|)>=0>.
  </theorem>

  <\proof>
    We proceed by contradiction. So assume that

    <\equation>
      <label|eq 19.39.152><dueto|assumption>\<forall\>x\<in\><around*|[|0,\<infty\>|[><text|
      >cos<around*|(|x|)>\<neq\>0
    </equation>

    Assume that there exist <math|x\<in\><around*|[|0,\<infty\>|[>> such that
    <math|cos<around*|(|x|)>\<less\>0\<less\>1\<equallim\><rsub|<text|[theorem:
    <reference|exp trigoniometric properties>]>>cos<around*|(|0|)>> then

    <\equation*>
      cos<rsub|\|<around*|[|0,x|]>><around*|(|x|)>=cos<around*|(|x|)>\<leqslant\>0\<less\>cos<rsub|\|<around*|[|0,z|]>>
    </equation*>

    Further as \ <math|cos:\<bbb-R\>\<rightarrow\>\<bbb-R\>> is continuous it
    follows from [theorem: <reference|continuity and subspace topology (2)>]
    that <math|cos<rsub|<around*|[|0,x|]>>> is continuous. So we can use the
    intermediate value theorem [theorem: <reference|connected intermediate
    value theorem>] to find a <math|y\<in\><around*|[|0,x|]>> such that
    <math|cos<around*|(|y|)>=cos<rsub|\|<around*|[|0,1|]>><around*|(|y|)>=0>
    which contradicts [eq: <reference|eq 19.39.152>]. So
    <math|\<forall\>x\<in\><around*|[|0,\<infty\>|[>> we must have that
    <math|0\<leqslant\>cos<around*|(|x|)>> or using [eq: <reference|eq
    19.39.152>] that <math|0\<less\>cos<around*|(|x|)>>, as by [theorem:
    <reference|exp derivative of cos(x) and sin(x)>]
    <math|sin<rprime|'><rsub|x>> exist and
    <math|sin<rprime|'><rsub|x>=cos<around*|(|x|)>\<gtr\>0> it follows from
    [theorem: <reference|diff increasing decreasing function>]\ 

    <\equation>
      <label|eq 19.40.152>sin<text| is strictly increasing on
      ><around*|[|0,\<infty\>|[>
    </equation>

    As <math|sin<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
    <reference|exp trigoniometric properties>]>>0> we conclude that\ 

    <\equation>
      <label|eq 19.41.152>\<forall\>x\<in\><around*|]|0,\<infty\>|[><text| we
      have >0\<less\>sin<around*|(|x|)>
    </equation>

    As <math|\<forall\>x,y\<in\>\<bbb-R\>> we have by [theorem:
    <reference|exp trigoniometric properties>] that
    <math|cos<around*|(|x|)>\<less\>1<text| and
    >-cos<around*|(|y|)>\<less\>1> it follows that

    <\equation>
      <label|eq 19.42.152>\<forall\>x,y\<in\>\<bbb-R\><text| we have
      >cos<around*|(|x|)>-cos<around*|(|y|)>\<less\>1+1=2
    </equation>

    Let <math|x,y\<in\>\<bbb-R\>> with <math|0\<less\>x\<less\>y>. By
    [theorem: <reference|exp derivative of cos(x) and sin(x)>] <math|>we have
    that <math|\<forall\>t\<in\>\<bbb-R\>> <math|cos<rprime|'><rsub|t>> exist
    and <math|cos<rprime|'><rsub|t>=-sin<around*|(|t|)>> so that if we define\ 

    <\equation*>
      cos<rprime|'>:\<bbb-R\>\<rightarrow\>\<bbb-R\><text| by
      >cos<rprime|'><around*|(|t|)>=cos<rprime|'><rsub|t>
    </equation*>

    it follows that\ 

    <\equation*>
      cos<rprime|'>=-sin <text| which is continuous [see theorem:
      <reference|exp trigoniometric properties>(2)]>
    </equation*>

    So using [theorem: <reference|diff differentiability on a closed set>] it
    follows that\ 

    <\equation>
      <label|eq 19.43.152>cos<rsub|\|<around*|[|x,y|]>><text| has a
      derivative at every <math|t\<in\><around*|[|x,y|]>> and
      ><around*|(|cos<rsub|\|<around*|[|x,y|]>>|)><rprime|'>=sin<rsub|\|<around*|[|x,y|]>>
    </equation>

    As <math|sin> is continuous on <math|\<bbb-R\>>, hence <math|>by
    [theorem: <reference|continuity and subspace topology (2)>] on
    <math|<around*|[|x,y|]>> the Riemann integral exist [see theorem:
    <reference|riemann continuous functions are integrable>] and we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsub|x><rsup|y>sin<rsub|\|<around*|[|x,y|]>>>|<cell|=>|<cell|<big|int><rsub|x><rsup|y>-<around*|(|cos<rsub|\|<around*|[|x,y|]>>|)><rprime|'>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|riemann riemann integral is
      linear>]>>>|<cell|-<big|int><rsub|x><rsup|y><around*|(|cos<rsub|\|<around*|[|x,y|]>>|)><rprime|'>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 19.43.152>] and [theorem: <reference|diff fundamental
      theorem of calculus (2)>]>>>|<cell|-<around*|(|cos<rsub|\|<around*|[|x,y|]>><around*|(|y|)>-cos<rsub|\|<around*|[|x,y|]>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|x|)>=cos<around*|(|y|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 19.42.152>]>>>|<cell|2>>>>
    </eqnarray*>

    proving that

    <\equation>
      <label|eq 19.44.152><big|int><rsub|x><rsup|y>sin<rsub|\|<around*|[|x,y|]>>\<leqslant\>2
    </equation>

    Define now the constant function\ 

    <\equation*>
      C<rsub|sin<around*|(|x|)>>:<around*|[|x,y|]>\<rightarrow\>\<bbb-R\><text|
      by >C<rsub|sin<around*|(|x|)>>=sin<around*|(|x|)>
    </equation*>

    Then

    <\equation>
      <label|eq 19.45.152>\<forall\>t\<in\><around*|[|x,y|]><text| we have
      >C<rsub|sin<around*|(|x|)>><around*|(|t|)>=sin<around*|(|x|)>\<leqslant\><rsub|<text|[eq:
      <reference|eq 19.40.152>]>>sin<around*|(|t|)>=sin<rsub|<around*|[|x,y|]>><around*|(|t|)>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|sin<around*|(|x|)>\<cdot\><around*|(|y-x|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|rieman integral properties>]>>>|<cell|<big|int><rsub|x><rsup|y>C<rsub|sin<around*|(|x|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 19.45.152>] and [theorem: <reference|riemann
      f\<less\>=g>]>>>|<cell|<big|int><rsub|x><rsup|y>sin<rsub|\|<around*|[|x,y|]>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 19.44.152>]>>>|<cell|2>>>>
    </eqnarray*>

    Hence taking in account that by [eq: <reference|eq 19.41.152>]
    <math|0\<less\>sin<around*|(|x|)>> it follows that

    <\equation*>
      \<forall\>x,y\<in\>\<bbb-R\><text| with >0\<less\>x\<less\>y<text| we
      have >y-x\<less\><frac|2|sin<around*|(|x|)>>
    </equation*>

    Take now <math|x\<in\>\<bbb-R\><rsup|+>> and
    <math|y=<frac|2|sin<around*|(|x|)>>+x+1> then, as
    <math|0\<less\>sin<around*|(|x|)>>, we have that
    <math|0\<less\>x\<less\>y> so that <math|<frac|2|sin<around*|(|x|)>>+1=y-x\<less\><frac|2|sin<around*|(|x|)>>>
    leading to the contradiction <math|1\<less\>0>. Hence the assumption [eq:
    <reference|eq 19.39.152>] is wrong and there exist a
    <math|x<rsub|0>\<in\><around*|[|0,\<infty\>|[>> such that
    <math|cos<around*|(|x<rsub|0>|)>=0>.
  </proof>

  <\lemma>
    <label|eq 19.60.152><math|<around*|{|x\<in\><around*|[|0,\<infty\>|[>\|cos<around*|(|x|)>=0|}>=cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    has a minimum.
  </lemma>

  <\proof>
    Using [theorem: <reference|exp cos has a zero element>] it follows that
    <math|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>\<neq\>0>,
    further <math|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    is bounded below by <math|0>, hence, as <math|\<bbb-R\>> is conditional
    complete [see theorem: <reference|complex RC is conditional complete>],
    it follows that\ 

    <\equation*>
      x<rsub|0>=inf<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)><text|
      exist and >0\<leqslant\>x<rsub|0>
    </equation*>

    As <math|<around*|{|0|}>> is closed [see theorems: <reference|separation
    metric spaces are Hausdorff>, <reference|separation Hausdorff every
    finite set is closed>] and <math|cos> is continuous it follows from
    [theorem: <reference|continuity equivalences>] that
    <math|cos<rsup|-1><around*|(|<around*|{|0|}>|)>>. Further by [theorems:
    <reference|normed generalized intervals that are open>]
    \ <math|<around*|[|0,\<infty\>|[>> is closed so that\ 

    <\equation*>
      cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[><text|
      is closed>
    </equation*>

    Assume now that <math|x<rsub|0>\<nin\>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    then <math|x<rsub|0>\<in\>\<bbb-R\>\\cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    a open set, so there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such
    that <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>\<bbb-R\>\\cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    or\ 

    <\equation>
      <label|eq 19.46\<point\>152><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[><big|cap>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>=\<varnothing\>
    </equation>

    As <math|inf<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>=x<rsub|0>\<less\>x<rsub|0>+\<delta\>>
    we have that there exist a <math|y\<in\>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    such that <math|x<rsub|0>-\<delta\>\<less\>x<rsub|0>\<leqslant\>y\<less\>x<rsub|0>+\<delta\>>
    so that <math|y\<in\>><math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[><big|cap>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    contradicting [eq: <reference|eq 19.46\<point\>152>]. Hence we have that
    <math|x<rsub|0>\<in\>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    or\ 

    <\equation*>
      x<rsub|0>=min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>
    </equation*>
  </proof>

  The above allows us to finally define <math|\<pi\>>.

  <\definition>
    <label|exp pi><index|<math|\<pi\>>><math|\<pi\>> is defined by

    <\equation*>
      \<pi\>=2\<cdot\>min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>
    </equation*>

    so that

    <\equation*>
      <frac|\<pi\>|2>=min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>
    </equation*>

    In other words <math|<frac|\<pi\>|2>> is the smallest positive real
    number <math|x<rsub|0>> such that <math|cos<around*|(|x<rsub|0>|)>=0>.\ 

    <\note>
      As <math|cos<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties>]>>1> we must have that
      <math|0\<less\>\<pi\>>.
    </note>
  </definition>

  Next we prove that <math|\<pi\>> and the trigonometric functions have the
  usual properties.

  <\theorem>
    <label|exp cos/sin in range 0 to pi/2>

    <\enumerate>
      <item><math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|[>> we have
      <math|0\<less\>cos<around*|(|x|)>> and by the above definition
      <math|cos<around*|(|<frac|\<pi\>|2>|)>=0>.

      <item><math|\<forall\>x\<in\><around*|]|0,<frac|\<pi\>|2>|]>> we have
      <math|0\<less\>sin<around*|(|x|)>> and
      <math|sin<around*|(|<frac|\<pi\>|2>|)>=1>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume that <math|\<exists\>x\<in\><around*|[|0,<frac|\<pi\>|2>|[>>
      such that <math|cos<around*|(|x|)>\<leqslant\>0>. If
      <math|cos<around*|(|x|)>=0> then as
      <math|<rigid|<frac|\<pi\>|2>=min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>>>
      we have <math|<frac|\<pi\>|2>\<leqslant\>x\<less\><frac|\<pi\>|2>> a
      contradiction, so we must have that <math|cos<around*|(|x|)>\<less\>0>.
      Then we have\ 

      <\equation*>
        cos<rsub|\|<around*|[|0,<frac|\<pi\>|2>|[>><around*|(|x|)>\<less\>0\<less\>1\<equallim\><rsub|<text|[eq:
        <reference|exp trigoniometric properties>]>>cos<around*|(|0|)>=cos<rsub|\|<around*|[|0,<frac|\<pi\>|2>|]>><around*|(|0|)>
      </equation*>

      As <math|cos<rsub|\|<around*|[|0,<frac|\<pi\>|2>|]>>> is continuous on
      <math|<around*|[|0,<frac|\<pi\>|2>|]>> [see theorems: <reference|exp
      trigoniometric properties>(2)] we can use the intermediate value
      theorem [theorem: <reference|connected intermediate value theorem>] to
      find a <math|z\<in\><around*|[|0,x|]>> such that
      <math|cos<around*|(|z|)>=cos<rsub|\|<around*|[|0,x|]>><around*|(|z|)>=0>
      hence <math|z\<in\>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>.
      So we have

      <\equation*>
        z\<leqslant\>x\<less\><frac|\<pi\>|2>=min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>\<leqslant\>z
      </equation*>

      a contradiction. So the assumption is wrong and we must have that
      <math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|[>> we have
      <math|0\<less\>cos<around*|(|x|)>>.

      <item>As <math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|[>> we
      have <math|sin<rprime|'><rsub|x>\<equallim\><rsub|<text|[theorem:
      <reference|exp derivative of cos(x) and
      sin(x)>]>>cos<around*|(|x|)>\<gtr\>0> [by (1)] it follows from
      [theorem: <reference|diff increasing decreasing function>] that
      <math|sin> is strictly increasing on
      <math|<around*|[|0,<frac|\<pi\>|2>|[>>. Hence if
      <math|x\<in\><around*|]|0,<frac|\<pi\>|2>|[>> we have <math|0\<less\>x>
      so that <math|0\<equallim\><rsub|<text|[theorem: <reference|exp
      trigoniometric properties>]>>sin<around*|(|0|)>\<less\>sin<around*|(|x|)>>.
      So\ 

      <\equation>
        <label|eq 19.47.152>\<forall\>x\<in\><around*|]|0,<frac|\<pi\>|2>|[><text|
        we have >0\<less\>sin<around*|(|x|)>
      </equation>

      As <math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|]>=<around*|[|0,<tfrac|\<pi\>|2>|[><big|cup><around*|{|<frac|\<pi\>|2>|}>>
      we have <math|0\<leqslant\>cos<around*|(|x|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp derivative of cos(x) and
      sin(x)>]>>sin<rprime|'><rsub|x>> it follows from \ [theorem:
      <reference|diff increasing decreasing function>] <math|sin> is
      increasing on <math|<around*|[|0,<frac|\<pi\>|2>|]>> so that
      <math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|]>> we have that
      <math|0=sin<around*|(|0|)>\<leqslant\>sin<around*|(|x|)>>. More
      specific

      <\equation*>
        0\<leqslant\>sin<around*|(|<frac|\<pi\>|2>|)>
      </equation*>

      Now <math|1\<equallim\><rsub|<text|[theorem: <reference|exp
      trigoniometric properties>(6)]>>sin<rsup|2><around*|(|<frac|\<pi\>|2>|)>+cos<rsup|2><around*|(|<frac|\<pi\>|2>|)>=sin<rsup|2><around*|(|<frac|\<pi\><rsub|>|2>|)>+0<rsup|2>=sin<rsup|2><around*|(|x|)>>
      proving that <math|sin<rsup|2><around*|(|x|)>=1>. Using then
      [definition: <reference|complex square root>] together with
      <math|0\<leqslant\>sin<around*|(|<frac|\<pi\>|2>|)>> proves that\ 

      <\equation*>
        sin<around*|(|<frac|\<pi\>|2>|)>=1
      </equation*>

      Combining this with [eq: <reference|eq 19.47.152>] gives\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|0,<frac|\<pi\>|2>|]><text| we have
        >0\<less\>sin<around*|(|x|)><text| and
        >sin<around*|(|<frac|\<pi\>|2>|)>=1
      </equation*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|exp trigoniometric properties (1)>We have for <math|sin> and
    <math|co>s the following properties:

    <\enumerate>
      <item><math|cos<around*|(|0|)>=1>

      <item><math|cos<around*|(|<frac|\<pi\>|2>|)>=0>

      <item><math|sin*<around*|(|0|)>=0>

      <item><math|sin<around*|(|<frac|\<pi\>|2>|)>=1>

      <item><math|cos<around*|(|\<pi\>|)>=-1>

      <item><math|sin<around*|(|\<pi\>|)>=0>

      <item><math|cos<around*|(|2\<cdot\>\<pi\>|)>=1>

      <item><math|sin<around*|(|2\<cdot\>\<pi\>|)>=0>

      <item><math|cos<around*|(|<frac|\<pi\>|4>|)>=sin<around*|(|<frac|\<pi\>|4>|)>=<sqrt|<frac|1|2>>>

      <item><math|\<forall\>x\<in\>\<bbb-C\>> we have
      <math|cos<around*|(|x+<frac|\<pi\>|2>|)>=-sin<around*|(|x|)>>

      <item><math|\<forall\>x\<in\>\<bbb-C\>> we have
      <math|sin<around*|(|x+<frac|\<pi\>|2>|)>=cos<around*|(|x|)>>

      <item><math|\<forall\>x\<in\>\<bbb-C\>>
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|cos<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>=cos<around*|(|x|)>>

      <item><math|\<forall\>x\<in\>\<bbb-C\>>
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|sin<around*|(|x<rsub|>\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>=sin<around*|(|x|)>>

      <item><math|\<forall\>x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
      we have that <math|0\<less\>cos<around*|(|x|)>> and
      <math|\<forall\>x\<in\><around*|]|0,\<pi\>|[>> we have
      <math|0\<less\>sin<around*|(|x|)>>

      <item><math|\<forall\>x\<in\><around*|]|0,\<pi\>|[>> we have
      <math|cos<around*|(|x|)>\<neq\>1\<wedge\>sin<around*|(|x|)>\<neq\>-1>
      and <math|\<forall\>x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
      we have <math|sin<around*|(|x|)>\<neq\>1\<wedge\>sin<around*|(|x|)>\<neq\>-1>

      <item><math|\<forall\>x\<in\>\<bbb-C\>>
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|e<rsup|i\<cdot\><around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>>\<equallim\><rsub|<text|[theorem:
      <reference|exp generalized power properties>]>>exp<around*|(|i\<cdot\><around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>|)>=exp<around*|(|i\<cdot\>x|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This was proved in [theorem: <reference|exp trigoniometric
      properties>].

      <item>As <math|<frac|\<pi\>|2>=min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>>
      it follows that <math|cos<around*|(|<tfrac|\<pi\>|2>|)>=0>.

      <item>This was proved in [theorem: <reference|exp trigoniometric
      properties>].

      <item>This is proved in [theorem: <reference|exp cos/sin in range 0 to
      pi/2>].

      <item><math|cos<around*|(|\<pi\>|)>=cos<around*|(|<frac|\<pi\>|2>+<frac|\<pi\>|2>|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties>]>>cos<around*|(|<frac|\<pi\>|2>|)>\<cdot\>cos<around*|(|<frac|\<pi\>|2>|)>-sin<around*|(|<frac|\<pi\>|2>|)>\<cdot\>sin<around*|(|<frac|\<pi\>|2>|)>\<equallim\><rsub|<around*|(|2,4|)>>0\<cdot\>0-1\<cdot\>1=-1>

      <item><math|sin<around*|(|\<pi\>|)>=sin<around*|(|<frac|\<pi\>|2>+<frac|\<pi\>|2>|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties>]>>><math|sin<around*|(|<frac|\<pi\>|2>|)>\<cdot\>cos<around*|(|<frac|\<pi\>|2>|)>-cos<around*|(|<frac|\<pi\>|2>|)>\<cdot\>sin<around*|(|<frac|\<pi\>|2>|)>\<equallim\><rsub|<around*|(|2,4|)>>1\<cdot\>0-0\<cdot\>1=0>

      <item><math|cos<around*|(|2\<cdot\>\<pi\>|)>=cos<around*|(|\<pi\>+\<pi\>|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties>]>>cos<around*|(|\<pi\>|)>\<cdot\>cos<around*|(|\<pi\>|)>-sin<around*|(|\<pi\>|)>\<cdot\>sin<around*|(|\<pi\>|)>\<equallim\><rsub|<around*|(|5,6|)>>-1\<cdot\>-1=0\<cdot\>0=1>

      <item><math|sin<around*|(|2\<cdot\>\<pi\>|)>=sin<around*|(|\<pi\>+\<pi\>|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties>]>>sin<around*|(|\<pi\>|)>\<cdot\>cos<around*|(|\<pi\>|)>-cos<around*|(|\<pi\>|)>\<cdot\>sin<around*|(|\<pi\>|)>\<equallim\><rsub|<around*|(|5,6|)>>0\<cdot\>-1-<around*|(|-1|)>\<cdot\>0=0>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|cos<around*|(|<frac|\<pi\>|2>|)>>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|<frac|\<pi\>|4>+<frac|\<pi\>|4>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp trigoniometric properties>(7)]>>>|<cell|cos<around*|(|<frac|\<pi\>|4>|)>\<cdot\>cos<around*|(|<frac|\<pi\>|4>|)>-sin<around*|(|<frac|\<pi\>|4>|)>\<cdot\>sin<around*|(|<frac|\<pi\>|4>|)>>>|<row|<cell|>|<cell|=>|<cell|cos<rsup|2><around*|(|<frac|\<pi\>|4>|)>-sin<rsup|2><around*|(|<frac|\<pi\>|4>|)>>>>>
      </eqnarray*>

      so that <math|cos<rsup|2><around*|(|<frac|\<pi\>|4>|)>=sin<rsup|2><around*|(|<frac|\<pi\>|4>|)>>.
      As by [theorem: <reference|exp cos/sin in range 0 to pi/2>]
      <math|0\<leqslant\>cos<around*|(|<frac|\<pi\>|4>|)>,sin<around*|(|<frac|\<pi\>|4>|)>>
      it follows from [definition: <reference|complex square root>] that\ 

      <\equation*>
        cos<around*|(|<frac|\<pi\>|4>|)>=sin<around*|(|<frac|\<pi\>|4>|)>
      </equation*>

      Next\ 

      <\equation*>
        1\<equallim\><rsub|<text|[theorem: <reference|exp trigoniometric
        properties>]>>sin<rsup|2><around*|(|<frac|\<pi\>|4>|)>+cos<rsup|2><around*|(|<frac|\<pi\>|4>|)>=2\<cdot\>sin<rsup|2><around*|(|<frac|\<pi\>|4>|)>
      </equation*>

      hence <math|sin<rsup|2><around*|(|<frac|\<pi\>|4>|)>=<frac|1|2>> which
      as <math|0\<leqslant\>sin<around*|(|<frac|\<pi\>|4>|)>,<frac|1|2>>
      proves that\ 

      <\equation*>
        <sqrt|<frac|1|2>>=sin<around*|(|<frac|\<pi\>|4>|)>=cos<around*|(|<frac|\<pi\>|4>|)>
      </equation*>

      <item>We have <math|\<forall\>z\<in\>\<bbb-C\> > that

      <\equation*>
        cos<around*|(|x+<frac|\<pi\>|2>|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp trigoniometric properties>]>>cos<around*|(|x|)>\<cdot\>cos<around*|(|<frac|\<pi\>|2>|)>-sin<around*|(|x|)>\<cdot\>sin<around*|(|<frac|\<pi\>|2>|)>\<equallim\><rsub|<around*|(|2,4|)>>cos<around*|(|x|)>\<cdot\>0-sin<around*|(|x|)>\<cdot\>1=-sin<around*|(|x|)>
      </equation*>

      <item>We have <math|\<forall\>z\<in\>\<bbb-C\>> that\ 

      <\equation*>
        sin<around*|(|x+<frac|\<pi\>|2>|)>\<equallim\><rsub|<text|[theorem:
        <reference|exp trigoniometric properties>]>>sin<around*|(|x|)>\<cdot\>cos<around*|(|<frac|\<pi\>|2>|)>+cos<around*|(|x|)>\<cdot\>sin<around*|(|<frac|\<pi\>|2>|)>\<equallim\><rsub|<around*|(|2,4|)>>sin<around*|(|x|)>\<cdot\>0+cos<around*|(|x|)>\<cdot\>1=cos<around*|(|x|)>
      </equation*>

      <item>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|cos<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>=cos<around*|(|x|)>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S>>As <math|cos<around*|(|x\<pm\>2\<cdot\>0\<cdot\>\<pi\>|)>=cos<around*|(|x\<pm\>0|)>=cos<around*|(|x|)>>
        it follows that <math|0\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|cos<around*|(|x\<pm\>2\<cdot\><around*|(|n+1|)>\<cdot\>\<pi\>|)>>|<cell|=>|<cell|>>|<row|<cell|cos<around*|(|<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>\<pm\>2\<cdot\>\<pi\>|)>>|<cell|\<equallim\><rsub|<text|<math|<text|[theorem:
          <reference|exp trigoniometric properties>]>>>>>|<cell|>>|<row|<cell|cos<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>cos<around*|(|\<pm\>\<pi\>|)>-sin<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>sin<around*|(|\<pm\>\<pi\>|)>>|<cell|\<equallim\><rsub|<text|<math|<text|[theorem:
          <reference|exp trigoniometric properties>]>>>>>|<cell|>>|<row|<cell|cos<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>cos<around*|(|\<pi\>|)>-sin<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\><around*|(|\<pm\>sin<around*|(|\<pi\>|)>|)>>|<cell|\<equallim\><rsub|<around*|(|7,8|)>>>|<cell|>>|<row|<cell|cos<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>1-sin<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>0>|<cell|=>|<cell|>>|<row|<cell|cos<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|cos<around*|(|x|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>\<bbb-N\><rsub|0>>
      </description>

      <item>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|sin<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>=sin<around*|(|x|)>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S>>As <math|sin<around*|(|x\<pm\>2\<cdot\>0\<cdot\>\<pi\>|)>=sin<around*|(|x\<pm\>0|)>=sin<around*|(|x|)>>
        it follows that <math|0\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|sin<around*|(|x\<pm\>2\<cdot\><around*|(|n+1|)>\<cdot\>\<pi\>|)>>|<cell|=>|<cell|>>|<row|<cell|sin<around*|(|<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>\<pm\>2\<cdot\>\<pi\>|)>>|<cell|\<equallim\><rsub|<text|<math|[theorem:
          19.57]>>>>|<cell|>>|<row|<cell|sin<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>cos<around*|(|\<pm\>\<pi\>|)>+cos<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>sin<around*|(|\<pm\>\<pi\>|)>>|<cell|\<equallim\><rsub|<text|<math|[theorem:
          19.57]>>>>|<cell|>>|<row|<cell|sin<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>cos<around*|(|\<pi\>|)>+cos<around*|(|x\<pm\>2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\><around*|(|\<pm\>sin<around*|(|\<pi\>|)>|)>>|<cell|\<equallim\><rsub|<around*|(|7,8|)>>>|<cell|>>|<row|<cell|sin<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>1-sin<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>\<cdot\>0>|<cell|=>|<cell|>>|<row|<cell|sin<around*|(|x+2\<cdot\>n\<cdot\>\<pi\>|)>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|sin<around*|(|x|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>\<bbb-N\><rsub|0>>
      </description>

      <item>Using [theorem: <reference|exp cos/sin in range 0 to pi/2>] we
      have \ 

      <\equation>
        <label|eq 19.48.152>\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|[><text|
        we have <math|0\<less\>cos<around*|(|x|)>>><infix-and>\<forall\>x\<in\><around*|]|0,<frac|\<pi\>|2>|]><text|
        we have >0\<less\>sin<around*|(|x|)>
      </equation>

      Let <math|x\<in\><around*|]|-<frac|\<pi\>|2>,0|]>> then
      <math|x+<frac|\<pi\>|2>\<in\><around*|]|0,<frac|\<pi\>|2>|]>> so that
      <math|0\<less\><rsub|<text|[eq: <reference|eq
      19.48.152>]>>sin<around*|(|x+<frac|\<pi\>|2>|)>\<equallim\><rsub|<around*|(|11|)>>cos<around*|(|x|)>>
      hence\ 

      <\equation>
        <label|eq 19.49.152>\<forall\>x\<in\><around*|]|-<frac|\<pi\>|2>,0|]><text|
        we have >0\<less\>cos<around*|(|x|)>
      </equation>

      Let <math|x\<in\><around*|[|<frac|\<pi\>|2>,\<pi\>|[>> then
      <math|x-<frac|\<pi\>|2>\<in\><around*|[|0,<frac|\<pi\>|2>|[>> so that
      <math|0\<less\>cos<around*|(|x-<frac|\<pi\>|2>|)>\<equallim\><rsub|<around*|(|11|)>>sin<around*|(|<around*|(|x-<frac|\<pi\>|2>|)>+<frac|\<pi\>|2>|)>=sin<around*|(|x|)>>
      hence\ 

      <\equation>
        <label|eq 19.50.152>\<forall\>x\<in\><around*|[|<frac|\<pi\>|2>,\<pi\>|[><text|
        we have >0\<less\>sin<around*|(|x|)>
      </equation>

      Combining [eqs: <reference|eq 19.48.152>, <reference|eq 19.49.152> and
      <reference|eq 19.50.152>] results in\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[><text|
        we have >0\<less\>cos<around*|(|x|)><text| and
        >\<forall\>x\<in\><around*|]|0,\<pi\>|[><text| we have
        >0\<less\>sin<around*|(|x|)>
      </equation*>

      <item>Assume that there exist a <math|x\<in\><around*|]|0,\<pi\>|[>>
      such that <math|cos<around*|(|x|)>=1> or <math|cos<around*|(|x|)>=-1>.
      Then as by (14) <math|0\<less\>sin<around*|(|x|)>> we have that
      <math|0\<less\>sin<rsup|2><around*|(|x|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties>(6)>>1-cos<rsup|2><around*|(|x|)>=1-1=0>
      giving the contradiction <math|10\<less\>0>. Hence the assumption is
      wrong and we must have that

      <\equation>
        <label|eq 19.51.152>\<forall\>x\<in\><around*|]|0,\<pi\>|[><text| we
        have >cos<around*|(|x|)>\<neq\>1<text| and
        <math|cos<around*|(|x|)>\<neq\>-1>>
      </equation>

      Let <math|x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>> then
      <math|x+<frac|\<pi\>|2>\<in\><around*|]|0,\<pi\>|[>> so that
      <math|-sin<around*|(|x|)>\<equallim\><rsub|<around*|(|10|)>>cos<around*|(|x|)>>
      which as by [eq: <reference|eq 19.51.152>]
      <math|cos<around*|(|x|)>\<neq\>1> and
      <math|cos<around*|(|x|)>\<neq\>-1> proves that
      <math|sin<around*|(|x|)>\<neq\>-1> and
      <math|sin<around*|(|x|)>\<neq\>1>. Hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[><text|
        we have >sin<around*|(|x|)>\<neq\>1<text| and
        >sin<around*|(|x|)>\<neq\>-1
      </equation*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|exp<around*|(|i\<cdot\><around*|(|x\<pm\>2\<cdot\>n\<cdot\>p|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp trigoniometric properties>]>>>|<cell|cos<around*|(|x\<pm\>2\<cdot\>n\<cdot\>p|)>+i\<cdot\>sin<around*|(|x\<pm\>2\<cdot\>n\<cdot\>p|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|12,13|)>>>|<cell|cos<around*|(|x|)>+i\<cdot\>sin<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp trigoniometric properties>]>>>|<cell|exp<around*|(|i\<cdot\>x|)>>>>>
      </eqnarray*>
    </enumerate>

    \;
  </proof>

  We have also what is probably the most beautiful \ mathematical equations
  (because it combines the fundamental constants <math|0>, <math|1>,
  <math|\<pi\>> and <math|\<mathe\>>).

  <\theorem>
    <label|exp Euler's equation><index|Euler's equation><dueto|Euler's
    equation>We have <math|e<rsup|i\<cdot\>\<pi\>>+1=0>
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|e<rsup|i\<cdot\>\<pi\>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|exp generalized power properties>]>>>|<cell|exp<around*|(|i\<cdot\>\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties>]>>>|<cell|cos<around*|(|\<pi\>|)>+i\<cdot\>sin<around*|(|\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties (1)>]>>>|<cell|-1>>>>
    </eqnarray*>

    hence\ 

    <\equation*>
      e<rsup|i\<cdot\>x>+1=0
    </equation*>
  </proof>

  Next we introduce the inverses of the functions
  <math|cos<rsub|\|<around*|[|0,\<pi\>|]>>> and
  <math|sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>>. Of
  course we must first prove that \ <math|cos<rsub|\|<around*|[|0,\<pi\>|]>>>
  and <math|sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>> are
  indeed bijections.

  <\theorem>
    \ <label|exp cos , sin bijection>

    <\enumerate>
      <item>The function <math|cos<rsub|\|<around*|[|0,\<pi\>|]>>:<around*|[|0\<comma\>\<pi\>|]>\<rightarrow\><around*|[|-1,1|]>>
      is a bijection.

      <item>The function <math|sin<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>:<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>\<rightarrow\><around*|[|-1,1|]>>
      is a bijection.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\description>
        <item*|injectivity>Let <math|x,y\<in\><around*|[|0,\<pi\>|]>> with
        <math|cos<around*|(|x|)>=cos<around*|(|y|)>>. Without loosing
        generality we can take <math|x\<leqslant\>y> [if not interchange
        <math|x> and <math|y>]. Assume that <math|x\<neq\>y> then we have
        <math|x\<less\>y> and we must look at the following cases:

        <\description>
          <item*|<math|x=0\<less\>y=\<pi\>>>Then we would have

          <\equation*>
            1=cos<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
            <reference|exp trigoniometric properties
            (1)>]>>cos<around*|(|x|)>=cos<around*|(|y|)>\<equallim\><rsub|<text|[theorem:
            <reference|exp trigoniometric properties (1)>]>>0
          </equation*>

          leading to the contradiction <math|1\<neq\>0>.

          <item*|<math|x=0\<less\>y\<less\>\<pi\>>>As
          <math|y\<in\><around*|]|0,\<pi\>|[>> it follows from [theorem:
          <reference|exp trigoniometric properties (1)>(15)] that
          <math|cos<around*|(|y|)>\<neq\>1> which as
          <math|1\<equallim\><rsub|<text|[theorem: <reference|exp
          trigoniometric properties (1)>]>>cos<around*|(|0|)>=cos<around*|(|x|)>=cos<around*|(|y|)>>
          leads to the contradiction <math|1\<neq\>1>.

          <item*|<math|0\<less\>x\<less\>y=\<pi\>>>As
          <math|x\<in\><around*|]|0,\<pi\>|[> >it follows from [theorem:
          <reference|exp trigoniometric properties (1)>(155)] that
          <math|<rigid|cos<around*|(|x|)>\<neq\>-1>> which as
          <math|-1\<equallim\><rsub|<text|[theorem: <reference|exp
          trigoniometric properties (1)>]>>cos<around*|(|\<pi\>|)>> leads to
          the contradiction <math|-1\<neq\>-1>.

          <item*|<math|0\<less\>x\<less\>y\<less\>\<pi\>>>As
          <math|\<forall\>z\<in\><around*|]|0,\<pi\>|[>> we have
          <math|cos<rprime|'><rsub|z>\<equallim\><rsub|<text|[theorem:
          <reference|exp derivative of cos(x) and
          sin(x)>]>>sin<around*|(|z|)>\<gtr\>0> [see theorem: <reference|exp
          trigoniometric properties (1)>] it follows from [theorem:
          <reference|diff increasing decreasing function>] that <math|cos> is
          strictly increasing on <math|<around*|]|0,\<pi\>|[>>. Hence
          <math|cos<around*|(|x|)>\<less\>cos<around*|(|y|)>> contradicting
          <math|cos<around*|(|x|)>=cos<around*|(|y|)>>.\ 
        </description>

        As in all cases we have a contradiction the assumption is wrong and
        we must have that <math|x=y> proving injectivity.

        <item*|<math|surjectivity>>Let <math|y\<in\><around*|[|-1,1|]>> then
        we have either:

        <\description>
          <item*|<math|y=-1>>Then for <math|\<pi\>\<in\><around*|[|0,\<pi\>|]>>
          we have <math|cos<around*|(|\<pi\>|)>\<equallim\><rsub|<text|[theorem:
          <reference|exp trigoniometric properties (1)>]>>-1=y>.

          <item*|<math|y=1>>Then <math|0\<in\><around*|[|0,\<pi\>|]>> we have
          <math|cos<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
          <reference|exp trigoniometric properties (1)>]>>1=y>.

          <item*|<math|y\<in\><around*|]|-1,1|[>>>By [theorem: <reference|exp
          trigoniometric properties>] and [theorem: <reference|continuity and
          subspace topology (2)>] it follows that
          <math|cos<rsub|\|<around*|[|0,\<pi\>|]>>> is continuous, further we
          have

          <\equation*>
            cos<rsub|\|<around*|[|0,\<pi\>|]>><around*|(|\<pi\>|)>=cos<around*|(|\<pi\>|)>=-1\<less\>y\<less\>1=cos<around*|(|0|)>=cos<rsub|\|<around*|[|0,\<pi\>|]>><around*|(|0|)>
          </equation*>

          So we can use the intermediate value theorem [theorem:
          <reference|connected intermediate value theorem>] to find a
          <math|x\<in\><around*|[|0,\<pi\>|]>> such that
          <math|cos<around*|(|x|)>=y>
        </description>

        So in all cases we have found a <math|x\<in\><around*|[|0,\<pi\>|]>>
        such that <math|cos<around*|(|x|)>=y> proving surjectivity.
      </description>

      <item>We have\ 

      <\description>
        <item*|injectivity>Let <math|x,y\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
        with <math|sin<around*|(|x|)>=sin<around*|(|y|)>>. Without loosing
        generality we can take <math|x\<leqslant\>y> [if not interchange
        <math|x> and <math|y>]. Assume that <math|x\<neq\>y> then we have
        <math|x\<less\>y> and we must look at the following cases:

        <\description>
          <item*|<math|x=-<frac|\<pi\>|2>\<less\>y=<frac|\<pi\>|2>>>Then we
          would have

          <\eqnarray*>
            <tformat|<table|<row|<cell|-1>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|exp trigoniometric properties
            (1)>]>>>|<cell|-sin<around*|(|<frac|\<pi\>|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|exp trigoniometric
            properties>]>>>|<cell|sin<around*|(|-<frac|\<pi\>|2>|)>>>|<row|<cell|>|<cell|=>|<cell|sin<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|sin<around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|sin<around*|(|<frac|\<pi\>|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|exp trigoniometric properties (1)>]>>>|<cell|1>>>>
          </eqnarray*>

          leading to the contradiction <math|-1\<neq\>1>.

          <item*|<math|x=-<frac|\<pi\>|2>\<less\>y\<less\><frac|\<pi\>|2>>>As
          <math|y\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>> it
          follows from [theorem: <reference|exp trigoniometric properties
          (1)>(15)] that <math|sin<around*|(|y|)>\<neq\>-1> which as
          <math|-1\<equallim\><rsub|<text|[theorem: <reference|exp
          trigoniometric properties (1)>]>>sin<around*|(|-<frac|\<pi\>|2>|)>=sin<around*|(|x|)>=sin<around*|(|y|)>>
          leads to the contradiction <math|-1\<neq\>-1>.

          <item*|<math|-<frac|\<pi\>|2>\<less\>x\<less\>y=<frac|\<pi\>|2>>>As
          <math|x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[> >it
          follows from [theorem: <reference|exp trigoniometric properties
          (1)>(15)] that <math|<rigid|sin<around*|(|x|)>\<neq\>-1>> which as
          <math|-1\<equallim\><rsub|<text|[theorem: <reference|exp
          trigoniometric properties (1)>]>>sin<around*|(|<frac|\<pi\>|2>|)>>
          leads to the contradiction <rigid|<math|-1\<neq\>-1>>.

          <item*|<math|-<frac|\<pi\>|2>\<less\>x\<less\>y\<less\><frac|\<pi\>|2>>>As
          <math|\<forall\>z\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
          we have <math|sin<rprime|'><rsub|z>\<equallim\><rsub|<text|[theorem:
          <reference|exp derivative of cos(x) and
          sin(x)>]>>cos<around*|(|z|)>\<gtr\>0> [see theorem: <reference|exp
          trigoniometric properties (1)>] it follows from [theorem:
          <reference|diff increasing decreasing function>] that <math|sin> is
          strictly increasing on <math|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>.
          Hence <math|sin<around*|(|x|)>\<less\>sin<around*|(|y|)>>
          contradicting <math|sin<around*|(|x|)>=sin<around*|(|y|)>>.\ 
        </description>

        As in all cases we have a contradiction the assumption is wrong and
        we must have that <math|x=y> proving injectivity.

        <item*|<math|surjectivity>>Let <math|y\<in\><around*|[|-1,1|]>> then
        we have either:

        <\description>
          <item*|<math|y=-1>>Then for <math|-<frac|\<pi\>|2>\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
          we have

          <\equation*>
            sin<around*|(|-<frac|\<pi\>|2>|)>\<equallim\><rsub|<text|[theorem:
            <reference|exp trigoniometric
            properties>]>>-sin<around*|(|<frac|\<pi\>|2>|)>\<equallim\><rsub|<text|[theorem:
            <reference|exp trigoniometric properties (1)>]>>-1=y.\ 
          </equation*>

          <item*|<math|y=1>>Then for <math|<frac|\<pi\>|2>\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
          we have <math|sin<around*|(|<frac|\<pi\>|2>|)>\<equallim\><rsub|<text|[theorem:
          <reference|exp trigoniometric properties (1)>]>>1=y>.

          <item*|<math|y\<in\><around*|]|-1,1|[>>>By [theorem: <reference|exp
          trigoniometric properties>] and [theorem: <reference|continuity and
          subspace topology (2)>] it follows that
          sin<math|<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>>
          is continuous, further we have

          <\equation*>
            sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>><around*|(|-<frac|\<pi\>|2>|)>=sin<around*|(|-<frac|\<pi\>|2>|)>=-1\<less\>y\<less\>1=sin<around*|(|<frac|\<pi\>|2>|)>=sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>><around*|(|<frac|\<pi\>|2>|)>
          </equation*>

          So we can use the intermediate value theorem [theorem:
          <reference|connected intermediate value theorem>] to find a
          <math|x\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>> such
          that <math|cos<around*|(|x|)>=y>.
        </description>

        So in all cases we have found a <math|x\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
        such that <math|cos<around*|(|x|)>=y> proving surjectivity.
      </description>
    </enumerate>
  </proof>

  <\definition>
    <label|exp arccosine arcsine><index|<math|arccosine<around*|(|x|)>>><index|<math|arcsine<around*|(|x|)>>>The
    above theorem allows us to define <math|arccosine> and <math|arcsine> as
    follows\ 

    <\equation*>
      arccosine:<around*|[|-1,1|]>\<rightarrow\><around*|[|0,\<pi\>|]><text|
      is defined by >arccosine=<around*|(|cos<rsub|\|<around*|[|0,\<pi\>|]>>|)><rsup|-1>
    </equation*>

    and

    <\equation*>
      arcsine:<around*|[|-1,1|]>\<rightarrow\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]><text|
      is defined by >arcsine=<around*|(|sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>|)><rsup|-1>
    </equation*>
  </definition>

  We have then the following trivial properties for <math|arccosine> or
  <math|arcsine>

  <\theorem>
    <label|exp arccosine arcsine properties>We have for <math|arccosine> and
    <math|arcsine>

    <\enumerate>
      <item><math|\<forall\>x\<in\><around*|[|-1,1|]>> we have
      <math|cos<around*|(|arccosine<around*|(|x|)>|)>=x> and
      <math|sin<around*|(|arcsine<around*|(|x|)>|)>>

      <item><math|\<forall\>x\<in\><around*|[|0,\<pi\>|]>> we have
      <math|arccosine<around*|(|cos<around*|(|x|)>|)>=x>

      <item><math|\<forall\>x\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
      we have <math|arcsine<around*|(|sin<around*|(|x|)>|)>=x>

      <item><math|arcosine<around*|(|-1|)>=\<pi\>>

      <item><math|arcosine<around*|(|0|)>=<frac|\<pi\>|2>>

      <item><math|arccose<around*|(|1|)>=0>

      <item><math|arcsine<around*|(|-1|)>=-<frac|\<pi\>|2>>

      <item><math|arcsine<around*|(|0|)>=0>

      <item><math|arcsine<around*|(|1|)>=<frac|\<pi\>|2>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\><around*|[|-1,1|]>> then

      <\equation*>
        cos<around*|(|arccosine<around*|(|x|)>|)>\<equallim\><rsub|arccosine<around*|(|<around*|[|-1,1|]>|)>=<around*|[|0,\<pi\>|]>>cos<rsub|\|<around*|[|0,\<pi\>|]>><around*|(|arcosine<around*|(|x|)>|)>=cos<rsub|\|<around*|[|0,\<pi\>|]>><around*|(|<around*|(|cos<rsub|\|<around*|[|0.\<pi\>|]>>|)><rsup|-1><around*|(|x|)>|)>=x
      </equation*>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sin<around*|(|arcsine<around*|(|x|)>|)>>|<cell|\<equallim\><rsub|arcsine<around*|(|<around*|[|-1,1|]>|)>=<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>>|<cell|sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>><around*|(|arcsine<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>><around*|(|<around*|(|sin<rsub|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>|)><rsup|-1><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|x>>>>
      </eqnarray*>

      <item>Let <math|x\<in\><around*|[|0,\<pi\>|]>> then

      <\equation*>
        arccos<around*|(|cos<around*|(|x|)>|)>=arccos<around*|(|cos<rsub|\|<around*|[|0,\<pi\>|]>><around*|(|x|)>|)>=<around*|(|cos<rsub|\|<around*|[|0,\<pi\>|]>>|)><rsup|-1><around*|(|cos<rsub|\|<around*|[|0,\<pi\>|]>><around*|(|x|)>|)>=x
      </equation*>

      <item>Let <math|x\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
      then\ 

      <\equation*>
        arcsin<around*|(|sin<around*|(|x|)>|)>=arcsin<around*|(|sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>><around*|(|x|)>|)>=<around*|(|sin<rsub|\|<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>|)><rsup|-1><around*|(|sin<rsub|\\<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>><around*|(|x|)>|)>=x
      </equation*>

      <item>As <math|cos<around*|(|\<pi\>|)>=-1> and
      <math|\<pi\>\<in\><around*|[|0,\<pi\>|]>> we have
      <math|\<pi\>\<equallim\><rsub|<around*|(|1|)>>arccosin<around*|(|cos<around*|(|\<pi\>|)>|)>=arccosine<around*|(|-1|)>>.

      <item>As <math|cos<around*|(|<frac|\<pi\>|2>|)>=0> and
      <math|<frac|\<pi\>|2>\<in\><around*|[|0,\<pi\>|]>> we have
      <math|<frac|\<pi\>|2>\<equallim\><rsub|<around*|(|1|)>>arccosin<around*|(|cos<around*|(|<frac|\<pi\>|2>|)>|)>=arccosine<around*|(|0|)>>.

      <item>As <math|cos<around*|(|0|)>=1> and
      <math|0\<in\><around*|[|0,\<pi\>|]>> we have
      <math|0\<equallim\><rsub|<around*|(|1|)>>arccosin<around*|(|cos<around*|(|0|)>|)>=arccosine<around*|(|1|)>>.

      <item>As <math|sin<around*|(|-<frac|\<pi\>|2>|)>=-sin<around*|(|<frac|\<pi\>|2>|)>=-1>
      and <math|-<frac|\<pi\>|2>\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
      we have <math|-<frac|\<pi\>|2>\<equallim\><rsub|<around*|(|1|)>>arcsine<around*|(|sin<around*|(|-<frac|\<pi\>|2>|)>|)>=arcsin<around*|(|-1|)>>

      <item>As <math|sin<around*|(|0|)>=0> and
      <math|0\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>> we have
      <math|0\<equallim\><rsub|<around*|(|1|)>>arcsine<around*|(|sin<around*|(|0|)>|)>=arcsin<around*|(|0|)>>

      <item>As <math|sin<around*|(|<frac|\<pi\>|2>|)>=1> and
      <math|<frac|\<pi\>|2>\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
      we have <math|<frac|\<pi\>|2>\<equallim\><rsub|<around*|(|1|)>>arcsine<around*|(|sin<around*|(|<frac|\<pi\>|2>|)>|)>=arcsin<around*|(|1|)>>
    </enumerate>
  </proof>

  Once we have defined the sinus and cosinus we can define the tangent as
  follows:

  <\definition>
    <label|exp tangent>The tangent function noted as <math|tan> is defined by\ 

    <\equation*>
      tan:<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>\<rightarrow\>\<bbb-R\><text|
      where >tan<around*|(|x|)>=<frac|sin<around*|(|x|)>|cos<around*|(|x|)>>
    </equation*>

    in other words\ 

    <\equation*>
      tan=<frac|sin<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>>
    </equation*>
  </definition>

  <\note>
    As by [theorem: <reference|exp trigoniometric properties (1)>(14)]
    <math|0\<less\>cos<around*|(|x|)>> for every <math|x> in
    <math|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>> this function is
    well defined.
  </note>

  <\theorem>
    <label|exp tangent properties>The tangent function has the following
    properties:

    <\enumerate>
      <item><math|tan<around*|(|0|)>=0>

      <item><math|\<forall\>x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
      <math|tan> has a derivative <math|tan<rprime|'><rsub|x> where
      tan<rprime|'><rsub|x>=<frac|1|cos<rsup|2><around*|(|x|)>>\<gtr\>0>

      <item><math|tan> is strictly increasing on
      <math|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>

      <item><math|tan> is a continuous function

      <item><math|tan:<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>\<rightarrow\>\<bbb-R\>>
      is a bijective function
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|tan<around*|(|0|)>=<frac|sin<around*|(|0|)>|cos<around*|(|0|)>>\<equallim\><rsub|<text|[theorem:
      <reference|exp trigoniometric properties>]>><frac|0|1>=1>

      <item>Let <math|x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>.
      Using [theorem: <reference|exp derivative of cos(x) and sin(x)>] and
      [theorem: <reference|diff derivative is local>] it follows that
      <math|sin<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>> and
      <math|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>> has a
      derivative at <math|x> with <math|<around*|(|sin<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>|)><rprime|'><rsub|x>=cos<around*|(|x|)>>
      and <math|<around*|(|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>|)><rprime|'><rsub|x>=-sin<around*|(|x|)>>.
      As <math|tan=<frac|sin<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>>>
      it follows from [theorem: <reference|diff derivative of f/g>] that
      <math|tan> has a derivative at <math|x> and that

      <\eqnarray*>
        <tformat|<table|<row|<cell|tan<rprime|'><rsub|x>>|<cell|=>|<cell|<around*|(|<frac|sin<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>>|)><rprime|'><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|sin<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>|)><rprime|'><rsub|x>\<cdot\>cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>><rsup|><around*|(|x|)>-<around*|(|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>><rsup|><around*|(|x|)>|)><rprime|'><rsub|x>\<cdot\>sin<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>><around*|(|x|)>|*<around*|(|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>><rsup|><around*|(|x|)>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|cos<around*|(|x|)>\<cdot\>cos<around*|(|x|)>+sin<around*|(|x|)>\<cdot\>sin<around*|(|x|)>|cos<rsup|2><around*|(|x|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|cos<rsup|2><around*|(|x|)>+sin<rsup|2><around*|(|x|)>|cos<rsup|2><around*|(|x|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|exp trigoniometric properties>]>>>|<cell|<frac|1|cos<rsup|2><around*|(|x|)>>>>>>
      </eqnarray*>

      Further for <math|x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
      we have by [theorem: <reference|exp trigoniometric properties (1)>]
      that <math|0\<less\>cos<around*|(|x|)>> so that
      <math|<frac|1|cos<rsup|2><around*|(|x|)>>\<gtr\>0>.

      <item>Let <math|x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
      then, as <math|tan<rprime|'><rsub|x>=<frac|1|cos<rsup|2><around*|(|x|)>>>
      and <math|0\<less\>cos<around*|(|x|)>> [see theorem: <reference|exp
      trigoniometric properties (1)>(14)] it follows that
      <math|0\<less\>tan<around*|(|x|)>>. Hence using [theorem:
      <reference|diff increasing decreasing function>] it follows that
      <math|tan> is strictly increasing on
      <math|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>'

      <item>As <math|\<forall\>x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
      <math|tan<rprime|'><rsub|x>> exist it follows from [theorem:
      <reference|diff derivate and frechet differential>] that <math|tan> is
      differentiable at <math|x>, hence, using [theorem: <reference|diff
      differentiable function is continuous>], <math|tan> is continuous at
      <math|x>.

      <item>We have for <math|tan:<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>\<rightarrow\>\<bbb-R\>>

      <\description>
        <item*|injectivity>Let <math|x,y\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
        be such that <math|tan<around*|(|x|)>=tan<around*|(|y|)>>. Assume
        that <math|x\<neq\>y> then we have either <math|x\<less\>y> or
        <math|y\<less\>z>. As <math|tan> is strictly increasing by (3) we
        would then have that <math|tan<around*|(|x|)>\<less\>tan<around*|(|y|)>>
        or <math|tan<around*|(|y|)>\<less\>tan<around*|(|x|)>> which
        contradicts <math|tan<around*|(|x|)>=tan<around*|(|y|)>>. Hence we
        must have that <math|x=y>.

        <item*|surjectivity>Let <math|y\<in\>\<bbb-R\><rsup|+>>. Take
        <math|z=<frac|y|<sqrt|2>>+1> then
        <math|0\<less\><frac|1|z>\<less\>1>. As by [theorem: <reference|exp
        cos , sin bijection>] <math|<rigid|cos:<around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>\<rightarrow\>\<bbb-R\>>>
        is a bijection \ there exist a <math|x<rprime|'>\<in\><around*|[|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|]>>
        such that

        <\equation*>
          <frac|1|z>=cos<around*|(|x<rprime|'>|)>
        </equation*>

        Further as <math|cos<around*|(|0|)>=1> and
        <math|cos<around*|(|<frac|\<pi\>|2>|)>=0> and
        <math|<frac|1|z>\<neq\>0,1> we must have that\ 

        <\equation*>
          x<rsub|1>\<in\><around*|]|0,<frac|\<pi\>|2>|[>
        </equation*>

        As by [theorems: <reference|exp derivative of cos(x) and sin(x)>,
        <reference|exp trigoniometric properties (1)>]
        <math|\<forall\>t\<in\><around*|]|0,<frac|\<pi\>|2>|[>\<subseteq\><around*|]|0,\<pi\>|[>>
        <math|sin<rprime|'><rsub|t>=cos<around*|(|t|)>\<gtr\>0> and
        <rigid|<math|cos<rprime|'><rsub|t>=-sin<around*|(|t|)>\<less\>0>> it
        follows by [theorem: <reference|diff increasing decreasing function>]
        that <math|sin> is strictly increasing and <math|cos> is strictly
        decreasing. So if we take

        <\equation*>
          x<rsub|2>=max<around*|(|<frac|\<pi\>|4>,x<rsub|1>|)>\<in\><around*|]|0,<frac|\<pi\>|2>|[>
        </equation*>

        then we have

        <\equation*>
          <frac|1|<sqrt|2>>\<equallim\><rsub|<text|[theorem: <reference|exp
          trigoniometric properties (1)>]>>sin<around*|(|<frac|\<pi\>|4>|)>\<leqslant\>sin<around*|(|x<rsub|2>|)><text|
          and ><frac|1|z>=cos<around*|(|x<rsub|1>|)>\<geqslant\>cos<around*|(|x<rsub|2>|)><text|
          or >z\<leqslant\><frac|1|cos<around*|(|x<rsub|2>|)>>
        </equation*>

        hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|tan*<around*|(|x<rsub|2>|)>>|<cell|=>|<cell|<frac|sin<around*|(|x<rsub|2>|)>|cos<around*|(|x<rsub|2>|)>>>>|<row|<cell|>|<cell|\<geqslant\>>|<cell|<sqrt|2>\<cdot\><frac|1|cos<around*|(|x<rsub|2>|)>>>>|<row|<cell|>|<cell|\<geqslant\>>|<cell|<sqrt|2>\<cdot\>z>>|<row|<cell|>|<cell|\<gtr\><rsub|z=<frac|y|<sqrt|2>>+1>>|<cell|<sqrt|2>\<cdot\><frac|y|<sqrt|2>>>>|<row|<cell|>|<cell|=>|<cell|y>>>>
        </eqnarray*>

        So we have found a <math|x<rsub|2>\<in\><around*|]|0,<frac|\<pi\>|2>|[>>
        such that

        <\equation*>
          tan<rsub|\|<around*|[|0,x<rsub|2>|]>><around*|(|0|)>=tan<around*|(|0|)>=0\<less\>y\<less\>tan<around*|(|x<rsub|2>|)>=tan<rsub|\|<around*|[|0,x<rsub|2>|]>><around*|(|x<rsub|2>|)>
        </equation*>

        By [theorem: <reference|continuity and subspace topology (2)>] and
        (3) it follows that <math|tan<rsub|\|<around*|[|0,x<rsub|2>|]>>> is
        continuous. So we can use the intermediate value theorem [see
        theorem: <reference|connected intermediate value theorem>] to find a
        <math|x<rsub|3>\<in\><around*|[|0,x<rsub|2>|]>> such that
        <math|tan<around*|(|x<rsub|3>|)>=tan<rsub|\|<around*|[|0,x<rsub|2>|]>><around*|(|x|)>=y>.
        As <math|tan<around*|(|0|)>\<equallim\><rsub|<around*|(|1|)>>0\<neq\>y>
        and <math|x<rsub|2>\<less\><frac|\<pi\>|2>> we have found a
        <math|x<rsub|3>\<in\><around*|]|0,<frac|\<pi\>|2>|[>> such that
        <math|tan<around*|(|x<rsub|3>|)>>. To summarize

        <\equation>
          <label|eq 19.52.153>\<forall\>y\<in\>\<bbb-R\><rsup|+><text| there
          exist a >x\<in\><around*|]|0,<frac|\<pi\>|2>|[><text| such that
          >tan<around*|(|x|)>=y
        </equation>

        Now to prove surjectivity: Let <math|y\<in\>\<bbb-R\>> then we have
        either:

        <\description>
          <item*|<math|y=0>>Then by (1) <math|tan<around*|(|0|)>=0=y>.

          <item*|<math|0\<less\>y>>Then by [eq: <reference|eq 19.52.153>]
          there exist a <math|x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
          such that <math|tan<around*|(|x|)>=y>

          <item*|<math|y\<less\>0>>Then <math|-<frac|1|y>\<in\>\<bbb-R\><rsup|+>>
          and by [eq: <reference|eq 19.52.153>] there exist a
          <math|x<rprime|'>\<in\><around*|]|0,<frac|\<pi\>|2>|[>> such that
          <math|tan<around*|(|x<rprime|'>|)>=-<frac|1|y>>. Take
          <math|x=x<rprime|'>-<frac|\<pi\>|2>> then
          <math|x\<in\><around*|]|-<frac|\<pi\>|2>,0|[>\<subseteq\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
          and\ 

          <\equation*>
            y=-<frac|1|tan<around*|(|x<rprime|'>|)>>=<frac|cos<around*|(|x<rprime|'>|)>|sin<around*|(|x<rprime|'>|)>>=<frac|cos<around*|(|x+<frac|\<pi\>|2>|)>|sin<around*|(|x+<frac|\<pi\>|2>|)>>\<equallim\><rsub|<text|[theorem:
            <reference|exp trigoniometric properties
            (1)>>>-<frac|-sin*<around*|(|x|)>|cos<around*|(|x|)>>=tan<around*|(|x|)>
          </equation*>
        </description>

        So in all cases we there exist a <math|x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
        such that <math|y=tan<around*|(|x|)>> proving surjectivity
      </description>
    </enumerate>
  </proof>

  As by the previous theorem <math|tan:<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>\<rightarrow\>\<bbb-R\>>
  is a bijection it has a inverse called the <math|arctan>.

  <\definition>
    <label|exp arctan>The arctangent function is defined by\ 

    <\equation*>
      arctan:\<bbb-R\>\<rightarrow\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[><text|
      is defined by >arctan=tan<rsup|-1>
    </equation*>

    which as the inverse of a bijection is itself a bijection.
  </definition>

  <\theorem>
    The arctangent function <math|arctan:\<bbb-R\>\<rightarrow\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
    has the following properties:

    <\enumerate>
      <item><math|\<forall\>x\<in\>\<bbb-R\>>
      <math|tan<around*|(|arctan<around*|(|x|)>|)>=x>

      <item><math|\<forall\>x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
      <math|arctan<around*|(|tan<around*|(|x|)>|)>=x>

      <item><math|arctan<around*|(|0|)>=0>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> <math|arctan> has a derivative
      at <math|x> where <math|arctan<rprime|'><rsub|x>=<frac|1|1+x<rsup|2>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>\<bbb-R\>> then
      <math|tan<around*|(|arctan<around*|(|x|)>|)>=tan<around*|(|tan<rsup|-1><around*|(|x|)>|)>=x>

      <item>Let <math|x\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>
      then <math|arctan<around*|(|tan<around*|(|x|)>|)>=tan<rsup|-1><around*|(|tan<around*|(|x|)>|)>=x>

      <item><math|>As <math|tan<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
      <reference|exp tangent properties>]>>0> it follows that
      <math|arctan<around*|(|0|)>=tan<rsup|-1><around*|(|0|)>=0>

      <item>Let <math|x\<in\>\<bbb-R\>> and take
      <math|y=arctan<around*|(|x|)>\<in\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>.
      We want to apply the inverse function theorem [see theorem:
      <reference|inverse function and derivate>] so we must prove that\ 

      <\equation*>
        tan<rprime|'>:<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>\<rightarrow\>\<bbb-R\><text|
        by >tan<rprime|'><around*|(|x|)>=tan<rprime|'><rsub|x>
      </equation*>

      is continuous and that <math|tan<rprime|'><rsub|y>\<neq\>0>. Using
      [theorem: <reference|exp tangent properties>(2)] it follows that
      <math|tan<rprime|'>=<frac|1|<around*|(|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<tfrac|p|2>|[>>|)><rsup|2>>>,
      as <math|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>>> is
      continuous [see theorems: <reference|exp trigoniometric properties>,
      <reference|continuity and subspace topology (2)>], so by [theorem:
      <reference|continuity 1/f^2 is continuous>] it follows that
      <math|tan<rprime|'>=<frac|1|<around*|(|cos<rsub|\|<around*|]|-<frac|\<pi\>|2>,<tfrac|p|2>|[>>|)><rsup|2>>>
      is continuous, further <math|tan<rprime|'><rsub|y>\<equallim\><rsub|<text|[theorem:
      <reference|exp tangent properties>(2)]>><frac|1|cos<rsup|2><around*|(|y|)>>\<gtr\>0>.
      By \ the inverse function theorem [see theorem: <reference|inverse
      function and derivate>(3)] there exist a open
      <math|U\<subseteq\><around*|]|-<frac|\<pi\>|2>,<frac|\<pi\>|2>|[>> and
      <math|V\<subseteq\>\<bbb-R\><rsup|>> with <math|y\<in\>U> and
      <math|tan<around*|(|y|)>\<in\>V\<Rightarrowlim\><rsub|tan<around*|(|y|)>=tan<around*|(|arctan<around*|(|x|)>|)>=x>x\<in\>V>
      such that <math|tan<rsub|\|U>:U\<rightarrow\>V> has a inverse
      <math|<around*|(|tan<rsub|\|U>|)><rsup|-1>:V\<rightarrow\>U> and

      <\equation>
        <label|eq 19.53.153>\<forall\>z\<in\>V<text| we have
        ><around*|(|<around*|(|tan<rsub|\|U>|)><rsup|-1>|)><rprime|'><rsub|tan<around*|(|z|)>>=<frac|1|tan<rprime|'><rsub|z>>
      </equation>

      As <math|\<forall\>v\<in\>V> we have
      <math|<around*|(|tan<rsub|\|U>\<circ\>arctan<rsub|\|V>|)><around*|(|v|)>=tan<rsub|\|U><around*|(|arctan<rsub|\|V><around*|(|v|)>|)>=tan<around*|(|arctan<around*|(|v|)>|)>=v=Id<rsub|V><around*|(|u|)>>
      and <math|\<forall\>u\<in\>U> we have
      <math|<around*|(|arctan<rsub|\|V>\<circ\>tan<rsub|<around*|\||U|\|>>|)><around*|(|u|)>=arctan<rsub|\|V><around*|(|tan<rsub|\|U><around*|(|u|)>|)>=arctan<around*|(|tan<around*|(|u|)>|)>=u=Id<rsub|U><around*|(|u|)>>
      so that <math|<rigid|<around*|(|tan<rsub|\|U>|)><rsup|-1>=arctan<rsub|\|V>>>.
      Substituting this in [eq: <reference|eq 19.53.153>] we have\ 

      <\equation*>
        \<forall\>z\<in\>V<text| we have ><around*|(|arctan<rsub|\|V>|)><rprime|'><rsub|tan<around*|(|z|)>>=<frac|1|tan<rprime|'><rsub|z>>\<equallim\><rsub|<text|[theorem:
        <reference|exp tangent properties>]>><frac|1|<around*|(|<frac|1|cos<rsup|2><around*|(|z|)>>|)>>=<frac|1|<around*|(|<frac|cos<rsup|2><around*|(|z|)>+sin<rsup|2><around*|(|z|)>|cos<rsup|2><around*|(|x|)>>|)>>=<tfrac|1|1+<around*|(|tan<rsup|><around*|(|z|)>|)><rsup|2>>
      </equation*>

      As <math|arctan<around*|(|x|)>=y\<in\>V> we have by the above that
      <math|<around*|(|arctan<rsub|\|V>|)><rprime|'><rsub|tan<around*|(|arctan<around*|(|x|)>|)>>=<frac|1|1+<around*|(|tan<rsup|><around*|(|arctan<around*|(|s|)>|)>|)><rsup|2>>>
      so that\ 

      <\equation*>
        <around*|(|arctan<rsub|\|V>|)><rprime|'><rsub|x>=<frac|1|1+x<rsup|2>>
      </equation*>

      Finally using the locality of the derivative [theorem: <reference|diff
      derivative is local>] it follows that <math|>arctan has a derivative at
      <math|x> and <math|arctan<rprime|'><rsub|x>=<frac|1|1+x<rsup|2>>>.
    </enumerate>
  </proof>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|1183>
    <associate|page-medium|papyrus>
    <associate|section-nr|4>
    <associate|subsection-nr|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|19|?>>
    <associate|auto-10|<tuple|convergence radius|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>>|?>>
    <associate|auto-13|<tuple|19.1.2|?>>
    <associate|auto-14|<tuple|inequality of Abel|?>>
    <associate|auto-15|<tuple|Abel Dirichlet criteria|?>>
    <associate|auto-16|<tuple|19.1.3|?>>
    <associate|auto-17|<tuple|exponential function|?>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|exp<around*|(|z|)>>|?>>
    <associate|auto-19|<tuple|19.1.4|?>>
    <associate|auto-2|<tuple|19.1|?>>
    <associate|auto-20|<tuple|derived power series|?>>
    <associate|auto-21|<tuple|19.1.5|?>>
    <associate|auto-22|<tuple|<with|mode|<quote|math>|\<mathe\>>|?>>
    <associate|auto-23|<tuple|natural logarithm|?>>
    <associate|auto-24|<tuple|<with|mode|<quote|math>|log<around*|(|x|)>>|?>>
    <associate|auto-25|<tuple|19.1.6|?>>
    <associate|auto-26|<tuple|generalized power|?>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|a<rsup|x>>|?>>
    <associate|auto-28|<tuple|Young's inequality|?>>
    <associate|auto-29|<tuple|19.1.7|?>>
    <associate|auto-3|<tuple|19.1.1|?>>
    <associate|auto-30|<tuple|trigoniometric functions|?>>
    <associate|auto-31|<tuple|sinus|?>>
    <associate|auto-32|<tuple|cosinus|?>>
    <associate|auto-33|<tuple|<with|mode|<quote|math>|sin<around*|(|z|)>>|?>>
    <associate|auto-34|<tuple|<with|mode|<quote|math>|cos<around*|(|z|)>>|?>>
    <associate|auto-35|<tuple|<with|mode|<quote|math>|\<pi\>>|?>>
    <associate|auto-36|<tuple|Euler's equation|?>>
    <associate|auto-37|<tuple|<with|mode|<quote|math>|arccosine<around*|(|x|)>>|?>>
    <associate|auto-38|<tuple|<with|mode|<quote|math>|arcsine<around*|(|x|)>>|?>>
    <associate|auto-4|<tuple|power series|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|?>>
    <associate|auto-6|<tuple|convergence domain|?>>
    <associate|auto-7|<tuple|absolute convergence domain|?>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|<wide|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>>|?>>
    <associate|eq 19.1.150|<tuple|19.1|?>>
    <associate|eq 19.10.150|<tuple|19.12|?>>
    <associate|eq 19.11.150|<tuple|19.13|?>>
    <associate|eq 19.12.150|<tuple|19.14|?>>
    <associate|eq 19.13.150|<tuple|19.15|?>>
    <associate|eq 19.16.151|<tuple|19.16|?>>
    <associate|eq 19.17.151|<tuple|19.17|?>>
    <associate|eq 19.18.151|<tuple|19.18|?>>
    <associate|eq 19.19.151|<tuple|19.19|?>>
    <associate|eq 19.2.150|<tuple|19.2|?>>
    <associate|eq 19.20.151|<tuple|19.20|?>>
    <associate|eq 19.21.151|<tuple|19.21|?>>
    <associate|eq 19.22.151|<tuple|19.22|?>>
    <associate|eq 19.23.151|<tuple|19.23|?>>
    <associate|eq 19.24.151|<tuple|19.24|?>>
    <associate|eq 19.25.151|<tuple|19.25|?>>
    <associate|eq 19.26.151|<tuple|19.26|?>>
    <associate|eq 19.27.151|<tuple|19.27|?>>
    <associate|eq 19.28.151|<tuple|19.28|?>>
    <associate|eq 19.29.151|<tuple|19.29|?>>
    <associate|eq 19.3.150|<tuple|19.3|?>>
    <associate|eq 19.30.151|<tuple|19.30|?>>
    <associate|eq 19.31.151|<tuple|19.31|?>>
    <associate|eq 19.32.151|<tuple|19.32|?>>
    <associate|eq 19.33.151|<tuple|19.33|?>>
    <associate|eq 19.34.151|<tuple|19.34|?>>
    <associate|eq 19.35.151|<tuple|19.35|?>>
    <associate|eq 19.36.151|<tuple|19.36|?>>
    <associate|eq 19.37.152|<tuple|19.37|?>>
    <associate|eq 19.38.152|<tuple|19.38|?>>
    <associate|eq 19.39.152|<tuple|19.39|?>>
    <associate|eq 19.4.150|<tuple|19.4|?>>
    <associate|eq 19.40.152|<tuple|19.40|?>>
    <associate|eq 19.41.152|<tuple|19.41|?>>
    <associate|eq 19.42.152|<tuple|19.42|?>>
    <associate|eq 19.43.152|<tuple|19.43|?>>
    <associate|eq 19.44.152|<tuple|19.44|?>>
    <associate|eq 19.45.152|<tuple|19.45|?>>
    <associate|eq 19.46\<point\>152|<tuple|19.46|?>>
    <associate|eq 19.47.152|<tuple|19.47|?>>
    <associate|eq 19.48.152|<tuple|19.48|?>>
    <associate|eq 19.49.152|<tuple|19.49|?>>
    <associate|eq 19.5.150|<tuple|19.5|?>>
    <associate|eq 19.50.152|<tuple|19.50|?>>
    <associate|eq 19.51.152|<tuple|19.51|?>>
    <associate|eq 19.52.153|<tuple|19.52|?>>
    <associate|eq 19.53.153|<tuple|19.53|?>>
    <associate|eq 19.6.150|<tuple|19.8|?>>
    <associate|eq 19.6.151|<tuple|19.6|?>>
    <associate|eq 19.60.152|<tuple|19.60|?>>
    <associate|eq 19.7.150|<tuple|19.9|?>>
    <associate|eq 19.7.151|<tuple|19.7|?>>
    <associate|eq 19.8.150|<tuple|19.10|?>>
    <associate|eq 19.9.150|<tuple|19.11|?>>
    <associate|exp|<tuple|19.22|?>>
    <associate|exp (*)^x is continuous|<tuple|19.51|?>>
    <associate|exp 0 is in convergence domain|<tuple|19.4|?>>
    <associate|exp Abel Dirichlet|<tuple|19.18|?>>
    <associate|exp Euler's equation|<tuple|19.65|?>>
    <associate|exp Euler's number|<tuple|19.33|?>>
    <associate|exp Mertens theorem|<tuple|19.29|?>>
    <associate|exp Young's inequality|<tuple|19.53|?>>
    <associate|exp arccosine arcsine|<tuple|19.67|?>>
    <associate|exp arccosine arcsine properties|<tuple|19.68|?>>
    <associate|exp arctan|<tuple|19.72|?>>
    <associate|exp ball extensions|<tuple|19.11|?>>
    <associate|exp ball of convergence|<tuple|19.7|?>>
    <associate|exp balls inclucsion|<tuple|19.14|?>>
    <associate|exp bijection|<tuple|19.36|?>>
    <associate|exp complement and absolute norm|<tuple|19.55|?>>
    <associate|exp convergence domain|<tuple|19.3|?>>
    <associate|exp convergence domain (1)|<tuple|19.6|?>>
    <associate|exp convergence domains and balls (1)|<tuple|19.10|?>>
    <associate|exp convergence domains and balls (2)|<tuple|19.13|?>>
    <associate|exp convergence domains property|<tuple|19.5|?>>
    <associate|exp convergion radius|<tuple|19.8|?>>
    <associate|exp cos , sin bijection|<tuple|19.66|?>>
    <associate|exp cos has a zero element|<tuple|19.59|?>>
    <associate|exp cos/sin in range 0 to pi/2|<tuple|19.63|?>>
    <associate|exp d'Alembert|<tuple|19.20|?>>
    <associate|exp derivative|<tuple|19.27|?>>
    <associate|exp derivative of (*)^x|<tuple|19.49|?>>
    <associate|exp derivative of a power series|<tuple|19.26|?>>
    <associate|exp derivative of cos(x) and sin(x)|<tuple|19.58|?>>
    <associate|exp derivative of x^(*)|<tuple|19.50|?>>
    <associate|exp derived power series|<tuple|19.24|?>>
    <associate|exp derived power service properties|<tuple|19.25|?>>
    <associate|exp exp series|<tuple|19.21|?>>
    <associate|exp exp tends to infinity|<tuple|19.35|?>>
    <associate|exp exp(x+y)=exp(x).exp(y)|<tuple|19.31|?>>
    <associate|exp generalized power|<tuple|19.39|?>>
    <associate|exp generalized power properties|<tuple|19.42|?>>
    <associate|exp inequality of Abel|<tuple|19.17|?>>
    <associate|exp is continuous|<tuple|19.28|?>>
    <associate|exp logarithm properties|<tuple|19.38|?>>
    <associate|exp natural logarithm|<tuple|19.37|?>>
    <associate|exp of natural numbers|<tuple|19.34|?>>
    <associate|exp pi|<tuple|19.61|?>>
    <associate|exp power function|<tuple|19.15|?>>
    <associate|exp power series|<tuple|19.1|?>>
    <associate|exp product of power series|<tuple|19.30|?>>
    <associate|exp properties|<tuple|19.32|?>>
    <associate|exp tangent|<tuple|19.69|?>>
    <associate|exp tangent properties|<tuple|19.71|?>>
    <associate|exp triginiometric function|<tuple|19.56|?>>
    <associate|exp trigoniometric properties|<tuple|19.57|?>>
    <associate|exp trigoniometric properties (1)|<tuple|19.64|?>>
    <associate|lemma 19.15.150|<tuple|19.16|?>>
    <associate|lemma 19.18.150|<tuple|19.19|?>>
    <associate|lemma 19.51.151|<tuple|19.52|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|power series>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>|<pageref|auto-5>>

      <tuple|<tuple|convergence domain>|<pageref|auto-6>>

      <tuple|<tuple|absolute convergence domain>|<pageref|auto-7>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>>|<pageref|auto-8>>

      <tuple|<tuple|<with|mode|<quote|math>|<wide|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>>>|<pageref|auto-9>>

      <tuple|<tuple|convergence radius>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>>|<pageref|auto-11>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>>>|<pageref|auto-12>>

      <tuple|<tuple|inequality of Abel>|<pageref|auto-14>>

      <tuple|<tuple|Abel Dirichlet criteria>|<pageref|auto-15>>

      <tuple|<tuple|exponential function>|<pageref|auto-17>>

      <tuple|<tuple|<with|mode|<quote|math>|exp<around*|(|z|)>>>|<pageref|auto-18>>

      <tuple|<tuple|derived power series>|<pageref|auto-20>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mathe\>>>|<pageref|auto-22>>

      <tuple|<tuple|natural logarithm>|<pageref|auto-23>>

      <tuple|<tuple|<with|mode|<quote|math>|log<around*|(|x|)>>>|<pageref|auto-24>>

      <tuple|<tuple|generalized power>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|a<rsup|x>>>|<pageref|auto-27>>

      <tuple|<tuple|Young's inequality>|<pageref|auto-28>>

      <tuple|<tuple|trigoniometric functions>|<pageref|auto-30>>

      <tuple|<tuple|sinus>|<pageref|auto-31>>

      <tuple|<tuple|cosinus>|<pageref|auto-32>>

      <tuple|<tuple|<with|mode|<quote|math>|sin<around*|(|z|)>>>|<pageref|auto-33>>

      <tuple|<tuple|<with|mode|<quote|math>|cos<around*|(|z|)>>>|<pageref|auto-34>>

      <tuple|<tuple|<with|mode|<quote|math>|\<pi\>>>|<pageref|auto-35>>

      <tuple|<tuple|Euler's equation>|<pageref|auto-36>>

      <tuple|<tuple|<with|mode|<quote|math>|arccosine<around*|(|x|)>>>|<pageref|auto-37>>

      <tuple|<tuple|<with|mode|<quote|math>|arcsine<around*|(|x|)>>>|<pageref|auto-38>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|19<space|2spc>The
      exponential function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      19.1<space|2spc>Power series <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|19.1.1<space|2spc>Definition and converge
      domain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|19.1.2<space|2spc>Convergence criteria
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|19.1.3<space|2spc>Definition of
      <with|mode|<quote|math>|exp<around*|(|z|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|19.1.4<space|2spc>Differentiation of the
      exponential function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|19.1.5<space|2spc>Properties of the
      exponential function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|19.1.6<space|2spc>Generalized power
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|19.1.7<space|2spc>Trigonometric functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|smart-ref|preview-ref>>

<\body>
  <chapter|The exponational function>

  <section|Power series>

  <subsection|Definition and converge domain>

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
    referes to the limit <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>.
  </definition>

  <\note>
    We have bit of notation overloading here the same expression
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    stands for\ 

    <\enumerate>
      <item>A <with|font-series|bold|power series> which is essenetial
      another notation of a family <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-C\>>

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
    power serie then we have\ 

    <\equation*>
      0\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>\<subseteq\>\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>
    </equation*>
  </theorem>

  <\proof>
    First if <math|z=0> then <math|<around*|\||z|\|>=0> and by [example:
    <reference|exp 0 is in convergence domain>]we have that
    <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||\<alpha\><rsub|i>|\|><rsup|i>>
    coverges to <math|<around*|\||a<rsub|o>|\|>> proving that\ 

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
      Hence by dominant convergen [theorem: <reference|series dominant
      convergence>] and [eq: <reference|eq 19.2.150>] we have that
      <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\>\<rho\><rsup|i>>.
    </description>
  </proof>

  <\corollary>
    <label|exp ball of convergence>Let <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    be a pwer series, <math|0\<neq\>z<rsub|0>\<in\><wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>
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

  Given the above definition we have folllowing properties of the convergence
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
      <math|0\<less\>0>. Hence we nust have that <math|\<rho\>=0>.

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
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have two cases to onsider:

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
      convergent. Using [lemma: <reference|lemma 19.18.150>] togehter with
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
    <label|exp ep series>Let <math|z\<in\>\<bbb-C\>> then\ 

    <\enumerate>
      <item><math|<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<bbb-C\>=\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>>
      [in other words <math|\<forall\>z\<in\>\<bbb-C\>> we have that
      <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\><around*|\||z|\|><rsup|n>>
      and <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>
      >converges]

      <item><math|\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<infty\>>

      <item><math|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>|)>=<wide|\<cal-D\>|\<wide-bar\>><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=\<cal-D\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,\<cal-R\><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<cdot\>z<rsup|n>|]>|)>|\<wide-bar\>>>

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

  <subsection|Differentiation of the exponental function>

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
  infinite sum which is actually a limit of partial sums. Neverteless
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
      is convergent. Using then dominent convergence [see theorem:
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
  We prove now that the derivated power series of a power series is indeed
  its derivative.

  <\theorem>
    <label|exp derivative of a power series>Let <math|>
  </theorem>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|1175>
    <associate|page-medium|paper>
    <associate|section-nr|4>
    <associate|subsection-nr|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|19|1175>>
    <associate|auto-10|<tuple|convergence radius|1176>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|\<cal-R\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>|1176>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|\<ast\>|)><rsup|n>>|1179>>
    <associate|auto-13|<tuple|19.1.2|1179>>
    <associate|auto-14|<tuple|inequality of Abel|1180>>
    <associate|auto-15|<tuple|Abel Dirichlet criteria|1181>>
    <associate|auto-16|<tuple|19.1.3|1183>>
    <associate|auto-17|<tuple|exponential function|1185>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|exp<around*|(|z|)>>|1185>>
    <associate|auto-19|<tuple|19.1.4|1185>>
    <associate|auto-2|<tuple|19.1|1175>>
    <associate|auto-20|<tuple|derived power series|1185>>
    <associate|auto-3|<tuple|19.1.1|1175>>
    <associate|auto-4|<tuple|power series|1175>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|1175>>
    <associate|auto-6|<tuple|convergence domain|1175>>
    <associate|auto-7|<tuple|absolute convergence domain|1175>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>>|1175>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|<wide|\<cal-D\><around*|[|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>|]>|\<wide-bar\>>>|1175>>
    <associate|eq 19.1.150|<tuple|19.1|1176>>
    <associate|eq 19.10.150|<tuple|19.12|1184>>
    <associate|eq 19.11.150|<tuple|19.13|1184>>
    <associate|eq 19.12.150|<tuple|19.14|1184>>
    <associate|eq 19.13.150|<tuple|19.15|1184>>
    <associate|eq 19.16.151|<tuple|19.16|1186>>
    <associate|eq 19.17.151|<tuple|19.17|1187>>
    <associate|eq 19.18.151|<tuple|19.18|1187>>
    <associate|eq 19.2.150|<tuple|19.2|1176>>
    <associate|eq 19.3.150|<tuple|19.3|1178>>
    <associate|eq 19.4.150|<tuple|19.4|1181>>
    <associate|eq 19.5.150|<tuple|19.5|1182>>
    <associate|eq 19.6.150|<tuple|19.8|1183>>
    <associate|eq 19.6.151|<tuple|19.6|1182>>
    <associate|eq 19.7.150|<tuple|19.9|1183>>
    <associate|eq 19.7.151|<tuple|19.7|1182>>
    <associate|eq 19.8.150|<tuple|19.10|1183>>
    <associate|eq 19.9.150|<tuple|19.11|1183>>
    <associate|exp|<tuple|19.22|1185>>
    <associate|exp 0 is in convergence domain|<tuple|19.4|1175>>
    <associate|exp Abel Dirichlet|<tuple|19.18|1181>>
    <associate|exp ball extensions|<tuple|19.11|1178>>
    <associate|exp ball of convergence|<tuple|19.7|1176>>
    <associate|exp balls inclucsion|<tuple|19.14|1179>>
    <associate|exp convergence domain|<tuple|19.3|1175>>
    <associate|exp convergence domain (1)|<tuple|19.6|1176>>
    <associate|exp convergence domains and balls (1)|<tuple|19.10|1177>>
    <associate|exp convergence domains and balls (2)|<tuple|19.13|1179>>
    <associate|exp convergence domains property|<tuple|19.5|1176>>
    <associate|exp convergion radius|<tuple|19.8|1176>>
    <associate|exp d'Alembert|<tuple|19.20|1183>>
    <associate|exp derivative of a power series|<tuple|19.26|?>>
    <associate|exp derived power series|<tuple|19.24|1185>>
    <associate|exp derived power service properties|<tuple|19.25|1185>>
    <associate|exp ep series|<tuple|19.21|1183>>
    <associate|exp inequality of Abel|<tuple|19.17|1180>>
    <associate|exp power function|<tuple|19.15|1179>>
    <associate|exp power series|<tuple|19.1|1175>>
    <associate|lemma 19.15.150|<tuple|19.16|1179>>
    <associate|lemma 19.18.150|<tuple|19.19|1182>>
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
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|19<space|2spc>The
      exponational function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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
      exponental function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>
    </associate>
  </collection>
</auxiliary>
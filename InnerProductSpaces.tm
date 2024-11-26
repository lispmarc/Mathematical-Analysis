<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Inner Product Spaces>

  <section|Definition and properties>

  Inner products extends the notion of length and orhogonality of vectors in
  Euclidian space.\ 

  <\definition>
    <label|inner real inner product space>A <with|font-series|bold|real inner
    product space >is a pair <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    where <math|X> is a vector space over the field <math|\<bbb-R\>> together
    with a mapping [the <with|font-series|bold|inner prodict>]

    <\equation*>
      <around*|\<langle\>||\<rangle\>>:X\<times\>X\<rightarrow\>\<bbb-R\><text|
      where ><around*|\<langle\>||\<rangle\>><around*|(|x,y|)><text| is noted
      as ><around*|\<langle\>|x,y|\<rangle\>>
    </equation*>

    satisfying:

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>X> we have
      <math|<around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|y,x|\<rangle\>>>

      <item><math|\<forall\>x,y,z\<in\>X> and
      <math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> we have
      <math|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>

      <item><math|\<forall\>x\<in\>X<text| we have
      >0\<leqslant\><around*|\<langle\>|x,x|\<rangle\>>>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>>=0\<Rightarrow\>x=0>
    </enumerate>
  </definition>

  The inner product has the following properties.

  <\theorem>
    <label|inner real inner product space properties>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real inner product space then we have\ 

    <\enumerate>
      <item><math|\<forall\>x,y,z\<in\>X> we have:

      <\enumerate>
        <item><math|<around*|\<langle\>|x+y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+<around*|\<langle\>|y,z|\<rangle\>>>

        <item><math|<around*|\<langle\>|z,x+y|\<rangle\>>=<around*|\<langle\>|z,x|\<rangle\>>+<around*|\<langle\>|z,y|\<rangle\>>>
      </enumerate>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,0|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>=0>

      <item><math|\<forall\>x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-R\>>
      then

      <\enumerate>
        <item><math|<around*|\<langle\>|\<alpha\>\<cdot\>x,y|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>

        <item><math|<around*|\<langle\>|x,\<alpha\>\<cdot\>y|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Given <math|x,y,z> we have:

      <\enumerate>
        <item><math|<around*|\<langle\>|x+y,z|\<rangle\>>=<around*|\<langle\>|x+1\<cdot\>y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+1\<cdot\><around*|\<langle\>|y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+<around*|\<langle\>|y,z|\<rangle\>>>

        <item><math|<around*|\<langle\>|z,x+y|\<rangle\>>=<around*|\<langle\>|x+y,z|\<rangle\>>\<equallim\><rsub|<around*|(|1.a|)>><around*|\<langle\>|x,z|\<rangle\>>+<around*|\<langle\>|y,z|\<rangle\>>=<around*|\<langle\>|z,x|\<rangle\>>+<around*|\<langle\>|z,y|\<rangle\>>>
      </enumerate>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,0|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>=<around*|\<langle\>|0\<cdot\>0,x|\<rangle\>>=0\<cdot\><around*|\<langle\>|0,x|\<rangle\>>=0>

      <item>Given <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-R\>> we
      have:

      <\enumerate>
        <item><math|<around*|\<langle\>|\<alpha\>\<cdot\>x,y|\<rangle\>>=<around*|\<langle\>|0+\<alpha\>\<cdot\>x,y|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>\<equallim\><rsub|<around*|(|2|)>>\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>

        <item><math|<around*|\<langle\>|x,\<alpha\>\<cdot\>y|\<rangle\>>=<around*|\<langle\>|\<alpha\>\<cdot\>y,x|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>
      </enumerate>
    </enumerate>
  </proof>

  <\example>
    <label|inner product on R^n>Let <math|n\<in\>\<bbb-N\>> and define

    <\equation*>
      <around*|\<langle\>||\<rangle\>>:\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><text|
      by <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>y<rsub|i>>>
    </equation*>

    then\ 

    <\equation*>
      <around*|\<langle\>|\<bbb-R\>,<around*|\<langle\>||\<rangle\>>|\<rangle\>><text|
      is a real inner product space>
    </equation*>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\>\<bbb-R\><rsup|n>> then
      <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>y<rsub|i>=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>x<rsub|i>=<around*|\<langle\>|x,y|\<rangle\>>>

      <item>If <math|x,y,z\<in\>\<bbb-R\><rsup|n> and
      \<alpha\>\<in\>\<bbb-R\>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>|)>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>\<cdot\>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,z|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>>>>
      </eqnarray*>

      <item>If <math|x\<in\>X> then we have trivially
      <math|0\<leqslant\><big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>=<around*|\<langle\>|x,x|\<rangle\>>>.

      <item>Let <math|x\<in\>X> with <math|<around*|\<langle\>|x,x|\<rangle\>>=0>.
      Assume that <math|x\<neq\>0> then there exist a
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x<rsub|k>\<neq\>0>. Hence <math|0\<less\>x<rsub|k><rsup|2>\<leqslant\><big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>=<around*|\<langle\>|x,x|\<rangle\>>=0>
      which leads to the contradiction <math|0\<less\>0> so that we must have
      <math|x=0>.
    </enumerate>
  </proof>

  <\definition>
    <label|inner complex inner product space>A <with|font-series|bold|complex
    inner product space >is a pair <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    where <math|X> is a vector space over the field <math|\<bbb-C\>> together
    with a mapping [the <with|font-series|bold|inner prodict>]

    <\equation*>
      <around*|\<langle\>||\<rangle\>>:X\<times\>X\<rightarrow\>\<bbb-C\><text|
      where ><around*|\<langle\>||\<rangle\>><around*|(|x,y|)><text| is noted
      as ><around*|\<langle\>|x,y|\<rangle\>>
    </equation*>

    satisfying:

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>X> we have
      <math|<around*|\<langle\>|x,y|\<rangle\>>=<wide|<around*|\<langle\>|y,x|\<rangle\>>|\<wide-bar\>>>

      <item><math|\<forall\>x,y,z\<in\>X> and
      <math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> we have
      <math|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>

      <item><math|\<forall\>x\<in\>X<text| we have
      >0\<leqslant\><around*|\<langle\>|x,x|\<rangle\>>>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>>=0\<Rightarrow\>x=0>
    </enumerate>

    <\note>
      As <math|<around*|\<langle\>|x,x|\<rangle\>>=<wide|<around*|\<langle\>|x,x|\<rangle\>>|\<wide-bar\>>>
      it follows from [theorem: <reference|complex conjugate properties>]
      that <math|<around*|\<langle\>|x,x|\<rangle\>>\<in\>\<bbb-R\>> so that
      (3) makes sense.
    </note>

    <\note>
      In physics definition (2) is changed to\ 

      <\equation*>
        \<forall\>x,y,z\<in\>X<text| and >\<forall\>\<alpha\>\<in\>\<bbb-C\><text|
        we have ><around*|\<langle\>|x,y+\<alpha\>\<cdot\>z|\<rangle\>>=<around*|\<langle\>|x,y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>
      </equation*>

      we use the mathematical convention here.
    </note>
  </definition>

  <\example>
    <label|inner product on C^n>Let <math|n\<in\>\<bbb-N\>> and define

    <\equation*>
      <around*|\<langle\>||\<rangle\>>:\<bbb-C\><rsup|n>\<times\>\<bbb-C\><rsup|n>\<rightarrow\>\<bbb-C\><text|
      by <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|y<rsub|i>|\<wide-bar\>>>>
    </equation*>

    then\ 

    <\equation*>
      <around*|\<langle\>|\<bbb-C\>,<around*|\<langle\>||\<rangle\>>|\<rangle\>><text|
      is a inner product space>
    </equation*>
  </example>

  <\proof>
    \;

    <\enumerate>
      <item>If <math|x,y\<in\>\<bbb-C\><rsup|n>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x,y|\<rangle\>>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|y<rsub|i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|n><wide|<wide|x|\<wide-bar\>>|\<wide-bar\>>\<cdot\><wide|y<rsub|i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|n><wide|<wide|x<rsub|i>|\<wide-bar\>>\<cdot\>y<rsub|i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>>>|<cell|<wide|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><wide|x<rsub|i>|\<wide-bar\>>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<wide|<around*|\<langle\>|y,x|\<rangle\>>|\<wide-bar\>>>>>>
      </eqnarray*>

      <item>If <math|x,y,z\<in\>\<bbb-R\><rsup|n> and
      \<alpha\>\<in\>\<bbb-R\>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>|)>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>\<cdot\>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,z|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>>>>
      </eqnarray*>

      <item>If <math|x\<in\>X> then we have trivially
      <math|0\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|><rsup|2>\<equallim\><rsub|<text|[theorem:
      <reference|complex norm properties>]>><big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|x<rsub|i>|\<wide-bar\>>=<around*|\<langle\>|x,x|\<rangle\>>>.

      <item>Let <math|x\<in\>X> with <math|<around*|\<langle\>|x,x|\<rangle\>>=0>.
      Assume that <math|x\<neq\>0> then there exist a
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x<rsub|k>\<neq\>0>. Hence <math|0\<less\><around*|\||x<rsub|k>|\|><rsup|2>\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|><rsup|2>=<around*|\<langle\>|x,x|\<rangle\>>=0>
      which leads to the contradiction <math|0\<less\>0> so that we must have
      <math|x=0>.
    </enumerate>
  </proof>

  <\theorem>
    <label|inner complex inner product properties>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a complex inner product space then we have\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>>\<in\>\<bbb-R\>>

      <item><math|\<forall\>x,y,z\<in\>X> we have:

      <\enumerate>
        <item><math|<around*|\<langle\>|x+y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+<around*|\<langle\>|y,z|\<rangle\>>>

        <item><math|<around*|\<langle\>|z,x+y|\<rangle\>>=<around*|\<langle\>|z,x|\<rangle\>>+<around*|\<langle\>|z,y|\<rangle\>>>
      </enumerate>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,0|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>=0>

      <item><math|\<forall\>x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-R\>>
      then

      <\enumerate>
        <item><math|<around*|\<langle\>|\<alpha\>\<cdot\>x,y|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>

        <item><math|<around*|\<langle\>|x,\<alpha\>\<cdot\>y|\<rangle\>>=<wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X> then <math|<around*|\<langle\>|x,x|\<rangle\>>=<wide|<around*|\<langle\>|x,x|\<rangle\>>|\<wide-bar\>>>
      so that by [theorem: <reference|complex conjugate properties>]
      <math|<around*|\<langle\>|x,x|\<rangle\>>\<in\>\<bbb-R\>>.

      <item>Let <math|x,y,z\<in\>X> then we have:

      <\enumerate>
        <item><math|<around*|\<langle\>|x+y,z|\<rangle\>>=<around*|\<langle\>|x+1\<cdot\>y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+1\<cdot\><around*|\<langle\>|y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+<around*|\<langle\>|y,z|\<rangle\>>>

        <item><math|<around*|\<langle\>|z,x+y|\<rangle\>>=<wide|<around*|\<langle\>|x+y,z|\<rangle\>>|\<wide-bar\>>=<wide|<around*|\<langle\>|x,z|\<rangle\>>+<around*|\<langle\>|y,z|\<rangle\>>|\<wide-bar\>>\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>><wide|<around*|\<langle\>|x,z|\<rangle\>>|\<wide-bar\>>+<wide|<around*|\<langle\>|y,z|\<rangle\>>|\<wide-bar\>>=<around*|\<langle\>|z,x|\<rangle\>>+<around*|\<langle\>|z,y|\<rangle\>>>
      </enumerate>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|0,x|\<rangle\>>=<around*|\<langle\>|0\<cdot\>0,x|\<rangle\>>=0\<cdot\><around*|\<langle\>|0,x|\<rangle\>>=0>
      and <math|<around*|\<langle\>|x,0|\<rangle\>>=<wide|<around*|\<langle\>|0,x|\<rangle\>>|\<wide-bar\>>=<wide|0|\<wide-bar\>>=0>

      <item>Let <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-C\>> then we
      have:

      <\enumerate>
        <item><math|<around*|\<langle\>|\<alpha\>\<cdot\>x,y|\<rangle\>>=<around*|\<langle\>|0+\<alpha\>\<cdot\>x,y|\<rangle\>>=<around*|\<langle\>|0,y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>\<equallim\><rsub|<around*|(|2|)>>\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>

        <item><math|<around*|\<langle\>|x,\<alpha\>\<cdot\>y|\<rangle\>>=<wide|<around*|\<langle\>|\<alpha\>\<cdot\>y,x|\<rangle\>>|\<wide-bar\>>=<wide|\<alpha\>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>|\<wide-bar\>>\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>><wide|\<alpha\>|\<wide-bar\>>\<cdot\><wide|<around*|\<langle\>|y,x|\<rangle\>>|\<wide-bar\>>=<wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>
      </enumerate>
    </enumerate>
  </proof>

  We can use mathematical induction to extend [theorems: <reference|inner
  real inner product space properties>, <reference|inner complex inner
  product properties>] to finite sums.

  <\theorem>
    <label|inner product and finite sums>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner prodct space, <math|n\<in\>\<bbb-N\>>,
    <math|y\<in\>X> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X>
    then\ 

    <\equation*>
      <around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x<rsub|i>,y|\<rangle\>><text|
      and ><around*|\<langle\>|y,<big|sum><rsub|i=1><rsup|n>x<rsub|i>|\<rangle\>>=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|y,x<rsub|i>|\<rangle\>>
    </equation*>
  </theorem>

  <\proof>
    The first part is proved by induction, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If y\<in\>X<text|,
      ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      then ><around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x<rsub|i>,y|\<rangle\>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|y\<in\>X>,
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>X>
      then <math|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|1>x<rsub|i>,y|\<rangle\>>=<around*|\<langle\>|x<rsub|1>,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|1><around*|\<langle\>|x<rsub|i>,y|\<rangle\>>>,
      hence <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let <math|y\<in\>X>,
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>X>
      then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n+1>x<rsub|i>,y|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|x<rsub|n+1>+<big|sum><rsub|i=1><rsup|n>x<rsub|i>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x<rsub|n+1>,y|\<rangle\>>+<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>,y|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|\<langle\>|x<rsub|n+1>,y|\<rangle\>>+<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x<rsub|i>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1><around*|\<langle\>|x<rsub|i>,y|\<rangle\>>>>>>
      </eqnarray*>

      which proves that <math|n+1\<in\>S>.
    </description>

    Hence by mathematical induction we have\ 

    <\equation>
      <label|eq 18.1.146><around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x<rsub|i>,y|\<rangle\>>
    </equation>

    For the second part we must make a distinction between real inner product
    spaces and complex inner product spaces.\ 

    <\description>
      <item*|<math|real inner product space>>

      <\equation*>
        <around*|\<langle\>|y,<big|sum><rsub|i=1><rsup|n>x<rsub|i>|\<rangle\>>=<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>,y|\<rangle\>>\<equallim\><rsub|<text|[eq:
        <reference|eq 18.1.146>]>><big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x<rsub|i>,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|y,x<rsub|i>|\<rangle\>>
      </equation*>

      <item*|complex inner product space>\ 

      <\equation*>
        <around*|\<langle\>|y,<big|sum><rsub|i=1><rsup|n>x<rsub|i>|\<rangle\>>=<wide|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>,y|\<rangle\>>|\<wide-bar\>>\<equallim\><rsub|<text|[eq:
        <reference|eq 18.1.146>]>><wide|<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x<rsub|i>,y|\<rangle\>>|\<wide-bar\>>\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>><big|sum><rsub|i=1><rsup|n><wide|<around*|\<langle\>|x<rsub|i>,y|\<rangle\>>|\<wide-bar\>>=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|y,x<rsub|i>|\<rangle\>>
      </equation*>
    </description>
  </proof>

  For finite dimensional vector spaces over <math|\<bbb-R\>> [or
  <math|\<bbb-C\>>] we can always construct a inner product making it in a
  real [or complex] inner product space.

  <\theorem>
    <label|inner real product space construction>Let <math|X> be a finite
    dimensional vector space over the field <math|\<bbb-R\>> with a basis
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> then if we define
    <math|<around*|\<langle\>||\<rangle\>>:X\<times\>X\<rightarrow\>\<bbb-R\>>
    by\ 

    <\equation*>
      <around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>y<rsub|i>
    </equation*>

    where <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>> and
    <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>> are the
    unique expansions of <math|x,y> in the basis
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>.>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\>X> with <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>
      and <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>> then

      <\equation*>
        <around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>y<rsub|i>=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>x<rsub|i>=<around*|\<langle\>|y,x|\<rangle\>>
      </equation*>

      <item>If <math|a\<in\>\<bbb-R\>>, <math|x,y,z\<in\>X> with
      <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>,
      <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>> and
      <math|z=<big|sum><rsub|i=1><rsup|n>z<rsub|i>\<cdot\>e<rsub|i>> then

      <\equation*>
        x+\<alpha\>\<cdot\>y=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>|)>\<cdot\>e<rsub|i>
      </equation*>

      so that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>|)>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>\<cdot\>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,z|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>>>>
      </eqnarray*>

      <item>If <math|x\<in\>X> with <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>
      then\ 

      <\equation*>
        0\<leqslant\><big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>x<rsub|i>=<around*|\<langle\>|x,x|\<rangle\>>
      </equation*>

      <item>Let <math|x\<in\>X> with <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>
      and <math|<around*|\<langle\>|x,x|\<rangle\>>=0>. Assume that
      <math|x\<neq\>0> then there exist a
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x<rsub|k>\<neq\>0>. Hence <math|0\<less\>x<rsub|k><rsup|2>\<leqslant\><big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>=<around*|\<langle\>|x,x|\<rangle\>>=0>
      leading to the contradiction <math|0\<less\>0>, so we must have
      <math|x=0>.
    </enumerate>
  </proof>

  <\theorem>
    <label|inner complex product space construction>Let <math|X> be a finite
    dimensional vector space over the field <math|\<bbb-R\>> with a basis
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> then if we define
    <math|<around*|\<langle\>||\<rangle\>>:X\<times\>X\<rightarrow\>\<bbb-R\>>
    by\ 

    <\equation*>
      <around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|y<rsub|i>|\<wide-bar\>>
    </equation*>

    where <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>> and
    <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>> are the
    unique expansions of <math|x,y> in the basis
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>.>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\>X> with <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>
      and <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x,y|\<rangle\>>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|y<rsub|i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|n><wide|<wide|x|\<wide-bar\>>|\<wide-bar\>>\<cdot\><wide|y<rsub|i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>>>|<cell|<big|sum><rsub|i=1><rsup|n><wide|<wide|x<rsub|i>|\<wide-bar\>>\<cdot\>y<rsub|i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>>>|<cell|<wide|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><wide|x<rsub|i>|\<wide-bar\>>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<wide|<around*|\<langle\>|y,x|\<rangle\>>|\<wide-bar\>>>>>>
      </eqnarray*>

      <item>If <math|a\<in\>\<bbb-R\>>, <math|x,y,z\<in\>X> with
      <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>,
      <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>> and
      <math|z=<big|sum><rsub|i=1><rsup|n>z<rsub|i>\<cdot\>e<rsub|i>> then

      <\equation*>
        x+\<alpha\>\<cdot\>y=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>|)>\<cdot\>e<rsub|i>
      </equation*>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>|)>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>\<cdot\>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,z|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>>>>
      </eqnarray*>

      <item>If <math|x\<in\>X> with <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>
      then\ 

      <\equation*>
        0\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|><rsup|2>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|x|\<wide-bar\>><rsub|i>=<around*|\<langle\>|x,x|\<rangle\>>
      </equation*>

      <item>Let <math|x\<in\>X> with <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>
      and <math|<around*|\<langle\>|x,x|\<rangle\>>=0>. Assume that
      <math|x\<neq\>0> then there exist a
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x<rsub|k>\<neq\>0>. Hence <math|0\<less\><around*|\||x<rsub|k><rsup|>|\|><rsup|2>\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|><rsup|2>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|x<rsub|i>|\<wide-bar\>>=<around*|\<langle\>|x,x|\<rangle\>>=0>
      leading to the contradiction <math|0\<less\>0>, so we must have
      <math|x=0>.
    </enumerate>
  </proof>

  <section|Inner product norm>

  Given a inner product we can use the inner product to define a norm, the
  inner product norm.

  <\definition>
    <label|inner product norm>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product space then the
    <with|font-series|bold|inner product norm > is defined by

    <\equation*>
      <around*|\<\|\|\>||\<\|\|\>>:X\<rightarrow\>\<bbb-R\><text| where
      ><around*|\<\|\|\>|x|\<\|\|\>>=<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>
    </equation*>

    <\note>
      As <math|<around*|\<langle\>|x,x|\<rangle\>>\<in\>\<bbb-R\>> and
      <math|0\<leqslant\><around*|\<langle\>|x,x|\<rangle\>>> we can indeed
      take the square root of <math|<around*|\<langle\>|x,x|\<rangle\>>> and
      <math|0\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>>.
    </note>
  </definition>

  As the name suggest the inner product norm is actually a norm., before we
  can prove this we msut first proof a import inequality due Schwartz's.

  <\theorem>
    <label|inner Schwartz in equality>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a inner product space then and <math|<around*|\<\|\|\>||\<\|\|\>>> the
    inner product norm then <math|\<forall\>x,y\<in\>X> we have\ 

    <\equation*>
      <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
    </equation*>

    Further we have the following equivalence:\ 

    <\equation*>
      x,y<text| are linear dependent >\<Leftrightarrow\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
    </equation*>
  </theorem>

  <\proof>
    We have the following cases to consider for <math|x>, <math|y\<in\>X>:\ 

    <\description>
      <item*|<math|x=0>>then <math|x> and <math|y> are linear dependent.
      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<around*|\<langle\>|0,y|\<rangle\>>|\|>>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|inner real inner product space properties>,
        <reference|inner complex inner product
        properties>]>>>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|inner real inner product space properties>,
        <reference|inner complex inner product
        properties>]>>>|<cell|<around*|\||<around*|\<langle\>|0,0|\<rangle\>>|\|>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>>>>
      </eqnarray*>

      <item*|<math|y=0>>then <math|x> and <math|y> are linear dependent.
      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<around*|\<langle\>|x,0|\<rangle\>>|\|>>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|inner real inner product space properties>,
        <reference|inner complex inner product
        properties>]>>>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\>0>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|inner real inner product space properties>,
        <reference|inner complex inner product
        properties>]>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\||<around*|\<langle\>|0,0|\<rangle\>>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>>>>
      </eqnarray*>

      <item*|<math|x\<neq\>0\<wedge\>y\<neq\>0>>Then
      <math|<around*|\<langle\>|y,y|\<rangle\>>\<neq\>0> [otherwise by
      [theorems: <reference|inner real inner product space properties>,
      <reference|inner complex inner product properties>] we would have
      <math|y=0>] so that we can define

      <\equation*>
        \<alpha\>=-<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<langle\>|y,y|\<rangle\>>>=-<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>
      </equation*>

      We have now consider two cases:

      <\description>
        <item*|real inner product>Then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,x+\<alpha\>\<cdot\>y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,x+\<alpha\>\<cdot\>y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,x+\<alpha\>\<cdot\>y|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|inner real inner product space
          properties>]>>>|<cell|<around*|\<langle\>|x,x|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>+\<alpha\><rsup|2>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\>\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+\<alpha\><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+<frac|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>><rsup|2>+<frac|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<frac|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>>>>
        </eqnarray*>

        hence <math|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>.
        As the square root is increasing [see theorem: <reference|complex
        root is strictly increasing>] we have that\ 

        <\equation*>
          <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>\<equallim\><rsub|<text|[theorem:
          <reference|complex sqrt x\<less\>sqrt
          x^2>]>><sqrt|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>>\<leqslant\><sqrt|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<equallim\><rsub|<text|[theorem:
          <reference|complex sqrt x\<less\>sqrt
          x^2>]>><around*|\||<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        or

        <\equation*>
          <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        Further if <math|x,y> are linear dependendt then we have that there
        exist a <math|\<beta\>\<in\>\<bbb-R\>> so that either:

        <\description>
          <item*|<math|x=\<beta\>\<cdot\>y>>Then

          <\equation*>
            <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>=<around*|\<langle\>|\<beta\>\<cdot\>y,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>=\<beta\>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>
          </equation*>

          so that by [theorem: <reference|complex sqrt x\<less\>sqrt x^2>]\ 

          <\equation*>
            <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
          </equation*>

          <item*|<math|y=\<beta\>\<cdot\>x>>Then\ 

          <\equation*>
            <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>=<around*|\<langle\>|x,\<beta\>\<cdot\>x|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>=\<beta\>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|x,x|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>
          </equation*>

          so that by [theorem: <reference|complex sqrt x\<less\>sqrt x^2>]\ 

          <\equation*>
            <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
          </equation*>
        </description>

        So we have proved that\ 

        <\equation*>
          <text|If >x,y<text| are linear dependent then
          ><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        For the opposite in implication. Assume that
        <math|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<langle\>|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y,<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|y,y|\<rangle\>><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>-<around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>+<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|y,y|\<rangle\>><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>-2\<cdot\><around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>><rsup|2>+<around*|\<langle\>|x,y|\<rangle\>><rsup|2>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<langle\>|x,y|\<rangle\>><rsup|2>+<around*|\<langle\>|x,y|\<rangle\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>+<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y<rsup|2>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>|<cell|>|<cell|>>|<row|<cell|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x<rsup|2>|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>|<cell|=0>|<cell|>>>>
        </eqnarray*>

        so that <math|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y=0>.
        Hence <math|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\>x=<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y>
        or as <math|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<neq\>0> that
        <math|x=<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\>y>.
        This proves that\ 

        <\equation*>
          <text|If ><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><text|
          then >x,y<text| are linear dependent>
        </equation*>

        <item*|complex inner product>Then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,x+\<alpha\>\<cdot\>y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,x+\<alpha\>\<cdot\>y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,x+\<alpha\>\<cdot\>y|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|inner complex inner product
          properties>]>>>|<cell|<around*|\<langle\>|x,x|\<rangle\>>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>+\<alpha\>\<cdot\><wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+\<alpha\>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>+\<alpha\>\<cdot\><wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<frac|<wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>-<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>+<frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>+<frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>=<frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>>*2>>>>>
        </eqnarray*>

        hence <math|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>.
        As the square root is increasing [see theorem: <reference|complex
        root is strictly increasing>] we have that\ 

        <\equation*>
          <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>\<equallim\><rsub|<text|[theorem:
          <reference|complex sqrt x\<less\>sqrt
          x^2>]>><sqrt|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>>\<leqslant\><sqrt|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<equallim\><rsub|<text|[theorem:
          <reference|complex sqrt x\<less\>sqrt
          x^2>]>><around*|\||<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        or

        <\equation*>
          <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        Further if <math|x,y> are linear dependent then we have either\ 

        <\description>
          <item*|<math|x=\<beta\>\<cdot\>y>>Then

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>>|<cell|=>|<cell|<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|\<beta\>\<cdot\>y,y|\<rangle\>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>\<beta\>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>>>
          </eqnarray*>

          so that by [theorem: <reference|complex sqrt x\<less\>sqrt x^2>]\ 

          <\equation*>
            <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
          </equation*>

          <item*|<math|y=\<beta\>\<cdot\>x>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>>|<cell|=>|<cell|<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>>>|<row|<cell|>|<cell|>|<cell|<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>>>|<row|<cell|>|<cell|>|<cell|<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>\<beta\>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>|<row|<cell|>|<cell|>|<cell|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>|<row|<cell|>|<cell|>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>>>
          </eqnarray*>

          <\equation*>
            <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
          </equation*>

          so that by [theorem: <reference|complex sqrt x\<less\>sqrt x^2>]\ 

          <\equation*>
            <around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
          </equation*>
        </description>

        So we have proved that\ 

        <\equation*>
          <text|If >x,y<text| are linear dependent then
          ><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        For the opposite implication. Assume that
        <math|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>
        then we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<langle\>|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y,<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|y,y|\<rangle\>><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>-<around*|\<langle\>|y,y|\<rangle\>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>+<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>+<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|4>>|<cell|=>|<cell|>>|<row|<cell|0>|<cell|>|<cell|>>>>
        </eqnarray*>

        so that <math|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y=0>.
        Hence <math|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\>x=<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y>
        or as <math|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<neq\>0> that
        <math|x=<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\>y>.
        This proves that\ 

        <\equation*>
          <text|If ><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><text|
          then >x,y<text| are linear dependent>
        </equation*>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|inner product norm (1)>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product space then the inner product norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> defined above is a norm on <math|X>
    making <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space.
  </theorem>

  <\proof>
    \ We have for <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    two cases to consider:

    <\description>
      <item*|real inner product>Then we have:

      <\enumerate>
        <item>If <math|x\<in\>X> then <math|0\<leqslant\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=<around*|\<\|\|\>|x|\<\|\|\>>>
        [see <reference|complex square root>]\ 

        <item>If <math|\<alpha\>\<in\>X> then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>>>|<cell|=>|<cell|<sqrt|<around*|\<langle\>|\<alpha\>\<cdot\>x,\<alpha\>\<cdot\>x|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<around*|\<langle\>|\<alpha\>\<cdot\>x,\<alpha\>\<cdot\>x|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|\<alpha\>\<cdot\>\<alpha\>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|\<alpha\><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex square root of
          product>]>>>|<cell|<sqrt|\<alpha\><rsup|2>>\<cdot\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex sqrt x\<less\>sqrt
          x^2>]>>>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>>>>
        </eqnarray*>

        <item>If <math|x,y\<in\>X> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|x+y|\<\|\|\>><rsup|2>>|<cell|=>|<cell|<around*|\<langle\>|x+y,x+y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,x+y|\<rangle\>>+<around*|\<langle\>|y,x+y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,x|\<rangle\>>+<around*|\<langle\>|x,y|\<rangle\>>+<around*|\<langle\>|y,x|\<rangle\>>+<around*|\<langle\>|y,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+<around*|\<langle\>|x,y|\<rangle\>>+<around*|\<langle\>|x,y|\<rangle\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+<around*|\<langle\>|x,y|\<rangle\>>+<around*|\<langle\>|x,y|\<rangle\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|\|theorem:
          <reference|inner Schwartz in equality>]>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>|)><rsup|2>>>>>
        </eqnarray*>

        which as the square root is strictly increasind [see theorem:
        <reference|complex root is strictly increasing>] proves that\ 

        <\equation*>
          <around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        <item>If <math|<around*|\<\|\|\>|x|\<\|\|\>>=0> then
        <math|<around*|\<langle\>|x,x|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>=0>
        so that <math|x=0>.
      </enumerate>

      <item*|complex inner product>Then we have:

      <\enumerate>
        <item>If <math|x\<in\>X> then <math|0\<leqslant\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=<around*|\<\|\|\>|x|\<\|\|\>>>
        [see <reference|complex square root>]\ 

        <item>If <math|\<alpha\>\<in\>X> then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>>>|<cell|=>|<cell|<sqrt|<around*|\<langle\>|\<alpha\>\<cdot\>x,\<alpha\>\<cdot\>x|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<around*|\<langle\>|\<alpha\>\<cdot\>x,\<alpha\>\<cdot\>x|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|\<alpha\>\<cdot\><wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<around*|\||\<alpha\>|\|><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex square root of
          product>]>>>|<cell|<sqrt|<around*|\||\<alpha\>|\|><rsup|2>>\<cdot\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex sqrt x\<less\>sqrt
          x^2>]>>>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>>>>
        </eqnarray*>

        <item>If <math|x,y\<in\>X> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|x+y|\<\|\|\>><rsup|2>>|<cell|=>|<cell|<around*|\<langle\>|x+y,x+y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,x+y|\<rangle\>>+<around*|\<langle\>|y,x+y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,x|\<rangle\>>+<around*|\<langle\>|x,y|\<rangle\>>+<around*|\<langle\>|y,x|\<rangle\>>+<around*|\<langle\>|y,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+<around*|\<langle\>|x,y|\<rangle\>>+<wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex conjugate properties>]>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\>Re<around*|(|<around*|\<langle\>|x,y|\<rangle\>>|)>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
          <reference|complex norm properties>>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|\|theorem:
          <reference|inner Schwartz in equality>]>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>|)><rsup|2>>>>>
        </eqnarray*>

        which as the square root is strictly increasind [see theorem:
        <reference|complex root is strictly increasing>] proves that\ 

        <\equation*>
          <around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        <item>If <math|<around*|\<\|\|\>|x|\<\|\|\>>=0> then
        <math|<around*|\<langle\>|x,x|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>=0>
        so that <math|x=0>.
      </enumerate>
    </description>
  </proof>

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|17>
    <associate|page-first|1113>
    <associate|page-medium|papyrus>
    <associate|par-first|0tab>
    <associate|section-nr|1>
    <associate|subsection-nr|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|18|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-3|<tuple|18.2|?>>
    <associate|eq 18.1.146|<tuple|18.1|?>>
    <associate|inner Schwartz in equality|<tuple|18.14|?>>
    <associate|inner complex inner product properties|<tuple|18.8|?>>
    <associate|inner complex inner product space|<tuple|18.4|?>>
    <associate|inner complex product space construction|<tuple|18.11|?>>
    <associate|inner product and finite sums|<tuple|18.9|?>>
    <associate|inner product norm|<tuple|18.12|?>>
    <associate|inner product norm (1)|<tuple|18.15|?>>
    <associate|inner product on C^n|<tuple|18.7|?>>
    <associate|inner product on R^n|<tuple|18.3|?>>
    <associate|inner real inner product space|<tuple|18.1|?>>
    <associate|inner real inner product space properties|<tuple|18.2|?>>
    <associate|inner real product space construction|<tuple|18.10|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>Inner
      Product Spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      18.1<space|2spc>Definition and properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      18.2<space|2spc>Inner product norm <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>
    </associate>
  </collection>
</auxiliary>
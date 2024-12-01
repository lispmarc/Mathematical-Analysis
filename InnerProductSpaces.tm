<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Inner Product Spaces>

  <section|Definition and properties>

  Inner products extends the notion of length and orhogonality of vectors in
  Euclidian space.\ 

  <\definition>
    <label|inner real inner product space><index|inner
    product><index|<math|<around*|\<langle\>||\<rangle\>>>>A
    <with|font-series|bold|real inner product space >is a pair
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
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
    <label|inner complex inner product space><index|complex inner product>A
    <with|font-series|bold|complex inner product space >is a pair
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
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
    dimensional vector space over the field <math|\<bbb-C\>> with a basis
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> then if we define
    <math|<around*|\<langle\>||\<rangle\>>:X\<times\>X\<rightarrow\>\<bbb-C\>>
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
    <label|inner product norm><index|inner product norm>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
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
  can prove this we must first proof a important inequality due Schwartz's.

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
          <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,x+\<alpha\>\<cdot\>y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,x+\<alpha\>\<cdot\>y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,x+\<alpha\>\<cdot\>y|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
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

        Further if <math|x,y> are linear dependent then there exist a
        <math|\<beta\>\<in\>\<bbb-R\>> with either:

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

        For the opposite implication. Assume that
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
          <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,x+\<alpha\>\<cdot\>y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,x+\<alpha\>\<cdot\>y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,x+\<alpha\>\<cdot\>y|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|inner complex inner product
          properties>]>>>|<cell|<around*|\<langle\>|x,x|\<rangle\>>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>+\<alpha\>\<cdot\><wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+\<alpha\>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>+\<alpha\>\<cdot\><wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<frac|<wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>-<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<wide-bar\>>+<frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>+<frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<rsup|><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>>>>
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

        Further if <math|x,y> are linear dependent then there exist a
        <math|\<beta\>\<in\>\<bbb-C\>> such that either\ 

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

  <\example>
    <label|inner euclidean norm real numbers>Let <math|n\<in\>\<bbb-N\>> then
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|e>|\<rangle\>>>
    where <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>>>
    is a normed space. <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> is called
    the Euclidean norm on <math|\<bbb-R\><rsup|n>>.
  </example>

  <\proof>
    Using [example: <reference|inner product on R^n>]
    <math|<around*|\<langle\>|\<bbb-R\>,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    where <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>y<rsub|i>>
    is a real inner product space. Hence by [theorem: <reference|inner
    product norm (1)>] <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> defined by
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>x<rsub|i>>=<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>>>
    is a norm on <math|\<bbb-R\>>.
  </proof>

  <\example>
    <label|inner euclidean norm complex numbers>Let <math|n\<in\>\<bbb-N\>>
    then <math|<around*|\<langle\>|\<bbb-C\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|e>|\<rangle\>>>
    where <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|><rsup|2>>>
    is a normed space. <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> is called
    the Euclidean norm on <math|\<bbb-C\><rsup|n>>.
  </example>

  <\proof>
    Using [example: <reference|inner product on C^n>]
    <math|<around*|\<langle\>|\<bbb-C\>,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    where <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|y<rsub|i>|\<wide-bar\>>>
    is a real inner product space. Hence by [theorem: <reference|inner
    product norm (1)>] <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> defined by
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|x<rsub|i>|\<wide-bar\>>>=<sqrt|<big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|><rsup|2>>>
    is a norm on <math|\<bbb-C\>>.
  </proof>

  We can extend the above two examples to all finite dimensional spaces.

  <\example>
    <label|inner euclidean norm on finite dimensional spaces (real)>Let
    <math|n\<in\>\<bbb-N\>>, <math|X> a finite dimensional space over
    <math|\<bbb-R\>> with <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    a basis of <math|X> then <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>
    ,defined by <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>>>
    where <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>, is
    a norm on <math|X>.
  </example>

  <\proof>
    Using [theorem: <reference|inner real product space construction>] we
    have that <math|<around*|\<langle\>||\<rangle\>>>, defined by
    <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>y<rsub|i>>
    where <math|<rigid|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>>,
    <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>>, is a
    inner product on <math|X>. Hence by [theorem: <reference|inner product
    norm (1)>] <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> defined by
    <math|<rigid|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>x<rsub|i>=<big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>>>
    is a norm on <math|X>.
  </proof>

  <\example>
    Let <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|e>|\<rangle\>>>
    be the real vector space of pairs of real numbers equiped with the
    Euclidean norm defined by <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<big|sum><rsub|i=1><rsup|2>x<rsub|i><rsup|2>>=<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>>
    and <math|<around*|\<langle\>|\<bbb-C\>,\<\|\|\>|\<rangle\>>> be the
    space of complex numbers with the absolute value norm then there exist a
    linear isometric isomorphism between <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|e>|\<rangle\>>>
    and <math|<around*|\<langle\>|\<bbb-C\>,\<\|\|\>|\<rangle\>>>. Hence by
    [theorem: ]<reference|continuity isometry is a homeomorphism>]
    <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|e>|\<rangle\>>>
    and <math|<around*|\<langle\>|\<bbb-C\>,\<\|\|\>|\<rangle\>>> are
    homeomorphic.
  </example>

  <\proof>
    Define <math|\<varphi\>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-C\>> by
    <math|\<varphi\><around*|(|x,y|)>=x+i\<cdot\>y> then we have:

    <\description>
      <item*|injectivity>If <math|\<varphi\><around*|(|x,y|)>=\<varphi\><around*|(|x<rprime|'>,y<rprime|'>|)>>
      then <math|x+i\<cdot\>y=x<rprime|'>+i\<cdot\>y<rprime|'>> so that by
      [theorem: <reference|complex notation (0)>] <math|x=x<rprime|'>> and
      <math|y=y<rprime|'>>, hence <math|<around*|(|x,y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>>.

      <item*|surjectivity>If <math|z\<in\>\<bbb-C\>> then
      <math|\<varphi\><around*|(|Re<around*|(|x|)>,Img<around*|(|z|)>|)>=Re<around*|(|z|)>+i\<cdot\>Img<around*|(|z|)>=z>.
    </description>

    proving that\ 

    <\equation*>
      \<varphi\>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-C\><text| is a
      bijection>
    </equation*>

    Further if <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>\<in\>\<bbb-R\><rsup|2>>
    and <math|\<alpha\>\<in\>\<bbb-R\>> then\ 

    <\equation*>
      \<varphi\><around*|(|<around*|(|x,y|)>+\<alpha\>\<cdot\><around*|(|x<rprime|'>,y<rprime|'>|)>|)>=\<varphi\><around*|(|x+\<alpha\>\<cdot\>x<rprime|'>,y+\<alpha\>\<cdot\>y<rprime|'>|)>=**x+\<alpha\>\<cdot\>x<rprime|'>+i\<cdot\>y+i\<cdot\>\<alpha\>\<cdot\>y<rprime|'>=\<varphi\><around*|(|x,y|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|x<rprime|'>,y<rprime|'>|)>
    </equation*>

    proving that\ 

    <\equation*>
      \<varphi\><text| is a linear isomorphism>
    </equation*>

    Further for <math|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|2>>

    <\equation*>
      <around*|\||\<varphi\><around*|(|x,y|)>|\|>=<around*|\||x+i\<cdot\>y|\|>=<sqrt|x<rsup|2>+y<rsup|2>>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>
    </equation*>

    proving that\ 

    <\equation*>
      \<varphi\><text| is a isometric linear isomorphism>
    </equation*>
  </proof>

  <\theorem>
    <label|inner euclidean norm on finite dimensional spaces (complex)>Let
    <math|n\<in\>\<bbb-N\>>, <math|X> a finite dimensional space over
    <math|\<bbb-C\>> with <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    a basis of <math|X> then <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>
    ,defined by <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>=<sqrt|<big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|><rsup|2>>>
    where <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>, is
    a norm on <math|X>.
  </theorem>

  <\proof>
    Using [theorem: <reference|inner complex product space construction>] we
    have that <math|<around*|\<langle\>||\<rangle\>>>, defined by
    <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|y<rsub|i>|\<wide-bar\>>>
    where <math|<rigid|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>>,
    <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>>, is a
    inner product on <math|X>. Hence by [theorem: <reference|inner product
    norm (1)>] <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> defined by
    <math|<rigid|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|x<rsub|i>|\<wide-bar\>>>=<sqrt|<big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|><rsup|2>>>>
    is a norm on <math|X>.
  </proof>

  <section|Orthogonality>

  As show in the previous section a inner product on a vector space allows us
  to define the concept of a length or norm of a vector. Next we introduce
  the concept of orthogonal vectors as a generalization of orthogonality in
  Euclidean spaces.

  <\definition>
    <label|inner orthogonality><index|orthogonality><index|<math|x\<perp\>y>><dueto|Orthogonality>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product space and <math|x,y\<in\>X> then
    <math|x>, <math|y> are <with|font-series|bold|orthogonal >noted as
    <math|x\<perp\>y> if <math|<around*|\<langle\>|x,y|\<rangle\>>=0>.
  </definition>

  <\definition>
    <label|inner orthonormal set definition><dueto|Orthonormal Family>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a inner product space with the Euclidean norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> then
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> is orthonormal
    if <math|\<forall\>i,j\<in\>I> we have
    <math|<around*|\<langle\>|e<rsub|i>,e<rsub|j>|\<rangle\>>=\<delta\><rsub|i,j>>
    where <math|\<delta\><rsub|i,j>=<choice|<tformat|<table|<row|<cell|1<text|
    if >i=j>>|<row|<cell|0<text| if >i\<neq\>j>>>>>>
  </definition>

  <\example>
    <label|inner canonical basis are orthonormal>Let <math|n\<in\>\<bbb-N\>>
    then we have that\ 

    <\enumerate>
      <item>Given <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
      (see example: <reference|inner product on R^n>) then the canonical
      basis basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      defined by <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>>
      (see theorem: <reference|basis F^n>) is orthonormal.

      <item>Given \ <math|<around*|\<langle\>|\<bbb-C\><rsup|n>,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
      (see example: <reference|inner product on C^n>) then the canonical
      basis basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      defined by <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>>
      (see theorem: <reference|basis F^n>) is orthonormal.
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>Given <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> we have that

      <\equation*>
        <around*|\<langle\>|e<rsub|i>,e<rsub|j>|\<rangle\>>\<equallim\><rsub|<text|[example:
        <reference|inner product on R^n>]>><big|sum><rsub|k=1><rsup|n><around*|(|e<rsub|i>|)><rsub|k>\<cdot\><around*|(|e<rsub|j>|)><rsub|k>=<big|sum><rsub|k=1><rsup|n>\<delta\><rsub|i,k>\<cdot\>\<delta\><rsub|j,k>=<big|sum><rsub|k=1><rsup|n>\<delta\><rsub|i,k>\<cdot\>\<delta\><rsub|i,j>=\<delta\><rsub|i,j>
      </equation*>

      <item>Given <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> we have that

      <\equation*>
        <around*|\<langle\>|e<rsub|i>,e<rsub|j>|\<rangle\>>\<equallim\><rsub|<text|[example:
        <reference|inner product on C^n>]>><big|sum><rsub|k=1><rsup|n><around*|(|e<rsub|i>|)><rsub|k>\<cdot\><wide|<around*|(|e<rsub|j>|)><rsub|k>|\<wide-bar\>>=<big|sum><rsub|k=1><rsup|n>\<delta\><rsub|i,k>\<cdot\>\<delta\><rsub|j,k>=<big|sum><rsub|k=1><rsup|n>\<delta\><rsub|i,k>\<cdot\>\<delta\><rsub|i,j>=\<delta\><rsub|i,j>
      </equation*>
    </enumerate>
  </proof>

  Every orthonormal family is linear independent however the opposite is not
  true.

  \;

  <\theorem>
    <label|inner linear independence and orthogonality>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product space and
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> a orthonormal
    family then <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>> is linear
    independent.
  </theorem>

  <\proof>
    Let <math|W> be a finite subset of <math|I> and
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>W>\<subseteq\>\<bbb-K\>>
    such that <math|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>e<rsub|w>=0>.
    By the definition of the generalized sum [see <reference|sum generalized
    sum>] there exist a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>W>
    such that

    <\equation*>
      <big|sum><rsub|k=1><rsup|n>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>e<rsub|\<beta\><around*|(|i|)>>=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>e<rsub|w>=0
    </equation*>

    Let <math|w\<in\>W> then there exist a
    <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|w=\<beta\><around*|(|k|)>>. Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<around*|\<langle\>|0,e<rsub|\<beta\><around*|(|k|)>>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>e<rsub|\<beta\><around*|(|i|)>>,e<rsub|\<beta\><around*|(|k|)>>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner product and finite
      sums>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\><around*|\<langle\>|e<rsub|\<beta\><around*|(|i|)>>,e<rsub|\<beta\><around*|(|k|)>>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>\<delta\><rsub|\<beta\><around*|(|i|)>,\<beta\><around*|(|k|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<tabular|<tformat|<table|<row|<cell|<math|\<varphi\><text|
      is a bijection>>>>|<row|<cell|<math|i=k\<Leftrightarrow\>\<beta\><around*|(|i|)>\<neq\>\<beta\><around*|(|k|)>>>>>>>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>\<delta\><rsub|i,k>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|w>>>>>
    </eqnarray*>

    Hence <math|\<forall\>w\<in\>W> we have <math|\<alpha\><rsub|w>=0> which
    by [theorem: <reference|linear independent set alternative>] proves that
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>> is linear independent.
  </proof>

  Using orthonormal bases in finite dimensional vector spaces has the benefit
  of giving a simple representation for the matrix of a linear mapping.

  <\theorem>
    <label|inner matrix of linear mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<langle\>||\<rangle\>><rsub|Y>|\<rangle\>>>
    be two finite dimensional real [or complex] inner product spaces with
    <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> a orthonormal basis
    for <math|X> and <math|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}>> a
    orthonormal basis for <math|Y>. Then if <math|L:X\<rightarrow\>Y> is a
    linear mapping with matrix <math|\<cal-M\><around*|(|L;E,F|)>> [see
    definition: <reference|matrix linear mapping>] we have\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>,\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}><text|
      we have >\<cal-M\><around*|(|L;E,F|)><rsub|j,i>=<around*|\<langle\>|L<around*|(|e<rsub|i>|)>,f<rsub|j>|\<rangle\>>
    </equation*>
  </theorem>

  <\proof>
    We have for <math|i\<in\><around*|[|1,\<ldots\>,n|]>>,
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<langle\>|L<around*|(|e<rsub|i>|)>,f<rsub|j>|\<rangle\>>>|<cell|\<equallim\><rsub|<text|[definition:
      <reference|matrix linear mapping>]>>>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|m>\<cal-M\><around*|(|L;E,F|)><rsub|k,i>\<cdot\>f<rsub|k>,f<rsub|j>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner product and finite
      sums>]>>>|<cell|<big|sum><rsub|k=1><rsup|m>\<cal-M\><around*|(|L;E,F|)><rsub|k,i>\<cdot\><around*|\<langle\>|f<rsub|k>,f<rsub|j>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|m>\<cal-M\><around*|(|L;E,F|)><rsub|k,i>\<cdot\>\<delta\><rsub|k,j>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L;E,F|)><rsub|j,i>>>>>
    </eqnarray*>
  </proof>

  It turns out that for every finite dimensional real [or complex] inner
  product space we can construct a orthonormal basis.

  <\theorem>
    <label|inner Gram-Schmidt procedure><index|Gram
    Schmidt><dueto|Gram-Schmidt>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product space,
    <math|<around*|\<\|\|\>||\<\|\|\>>> the inner product norm and
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>\<subseteq\>X> a linear
    independent set where <math|n\<in\>\<bbb-N\>> then
    <math|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>\<subseteq\>X>
    recursively defined by\ 

    <\equation*>
      f<rsub|i>=<choice|<tformat|<table|<row|<cell|<frac|e<rsub|1>|<around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>><text|
      if >i=1>>|<row|<cell|<frac|e<rsub|i>-<big|sum><rsub|j=1><rsup|i-1><around*|\<langle\>|e<rsub|i>,f<rsub|j>|\<rangle\>>\<cdot\>f<rsub|j>|<around*|\<\|\|\>|e<rsub|i>-<big|sum><rsub|j=1><rsup|i-1><around*|\<langle\>|e<rsub|i>,f<rsub|j>|\<rangle\>>\<cdot\>f<rsub|j>|\<\|\|\>>><text|
      if >i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>
    </equation*>

    is well defined [meaning no division by <math|0>] and is a orthonormal
    set. Further we have that\ 

    <\equation*>
      span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>|)>=span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>|)>
    </equation*>
  </theorem>

  <\proof>
    We will use induction to prove this, so define\ 

    <\equation*>
      S=<around*|{|m\<in\>\<bbb-N\>\|<text|If
      >m\<in\><around*|{|1,\<ldots\>,n|}><text| then
      ><around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}><text| is well defined,
      orthonormal and ><rigid|span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m>|}>|)>=span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}>|)>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>As <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
      is linear independent <math|e<rsub|1>\<neq\>0\<Rightarrow\><around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>\<neq\>0>
      so that <math|f<rsub|1>=<frac|e<rsub|1>|<around*|\<\|\|\>|e<rsub|i>|\<\|\|\>>>>
      is well defined. If <math|i,j\<in\><around*|{|1|}>> then <math|i=j=1>
      and <math|<around*|\<langle\>|f<rsub|i>,f<rsub|j>|\<rangle\>>=<around*|\<langle\>|f<rsub|1>,f<rsub|1>|\<rangle\>>=<around*|\<\|\|\>|f<rsub|1>|\<\|\|\>><rsup|2>=<around*|\<\|\|\>|<frac|e<rsub|1>|<around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>>|\<\|\|\>><rsup|2>=<around*|(|<frac|<around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>|<around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>>|)><rsup|2>=1=\<delta\><rsub|1,1>=\<delta\><rsub|i.j>>
      so that <math|<around*|{|f<rsub|1>|}>> is orthonormal. Further we have
      <math|x\<in\>span<around*|(|<around*|{|e<rsub|1>|}>|)>> if there exist
      a <math|\<alpha\>\<in\>\<bbb-K\>> such that
      <math|x=\<alpha\>\<cdot\>e<rsub|1>=\<alpha\>\<cdot\><around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>\<cdot\><frac|e<rsub|1>|<around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>>=<around*|(|\<alpha\>\<cdot\><around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>|)>\<cdot\>f<rsub|1>>
      so that <math|span<around*|(|<around*|{|e<rsub|1>|}>|)>\<subseteq\>span<around*|(|<around*|{|f<rsub|1>|}>|)>>,
      if <math|x\<in\>span<around*|(|<around*|{|f<rsub|1>|}>|)>> then there
      exist a <math|\<alpha\>\<in\>\<bbb-K\>> such that
      <math|x=\<alpha\>\<cdot\>f<rsub|1>=<frac|\<alpha\>|<around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>\<cdot\>f<rsub|1>=<frac|\<alpha\>|<around*|\<\|\|\>|e<rsub|1>|\<\|\|\>>>\<cdot\>e<rsub|1>>
      proving that <math|x\<in\>spam<around*|(|<around*|{|e<rsub|1>|}>|)>>.
      So <math|span<around*|(|<around*|{|e<rsub|1>|}>|)>=span<around*|(|<around*|{|f<rsub|1>|}>|)>>
      and we have <math|1\<in\>S>.

      <item*|<math|m\<in\>S\<Rightarrow\>m+1\<in\>S>>As <math|m\<in\>S> we
      have that <math|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}>> is
      orthonormal and <math|<rigid|span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m>|}>|)>=span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}>|)>>>.
      Assume that <math|m+1\<in\><around*|{|1,\<ldots\>,n|}>> then as
      <math|m\<in\>S\<subseteq\>\<bbb-N\>> we have
      <math|m+1\<in\><around*|{|2,\<ldots\>,n|}>>. If
      <math|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|<around*|(|m+1|)>-1><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>=0>
      then <math|<rigid|e<rsub|m+1>=<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>>>
      so that <math|e<rsub|m+1>\<in\>span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}>|)>=span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m>|}>|)>>
      which is impossible because <rigid|<math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m>|}>>>
      is linear independent. Hence we have that
      <math|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>\<neq\>0>
      so that\ 

      <\equation>
        <label|eq 18.2.146.1>f<rsub|m+1>=<frac|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>><text|
        is well defined>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|f<rsub|m+1>,f<rsub|m+1>|\<rangle\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<rsub|m+1>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|e<rsub|m+1>-<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|<around*|(|m+1|)>-1><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>>|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|1<eq-number><label|eq
        18.2.146>>>>>
      </eqnarray*>

      and <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,m|}>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|f<rsub|m+1>,f<rsub|k>|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>>\<cdot\><around*|\<langle\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>,f<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<frac|1|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>>\<cdot\><around*|(|<around*|\<langle\>|e<rsub|m+1>,f<rsub|k>|\<rangle\>>-<around*|\<langle\>|<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>,f<rsub|k>|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>>\<cdot\><around*|(|<around*|\<langle\>|e<rsub|m+1>,f<rsub|k>|\<rangle\>>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\><around*|\<langle\>|f<rsub|i>,f<rsub|k>|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>>\<cdot\><around*|(|<around*|\<langle\>|e<rsub|m+1>,f<rsub|k>|\<rangle\>>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>\<delta\><rsub|i,k>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>>\<cdot\><around*|(|<around*|\<langle\>|e<rsub|m+1>,f<rsub|k>|\<rangle\>>-<around*|\<langle\>|e<rsub|m+1>,f<rsub|k>|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|0<eq-number><label|eq
        18.3.146>>>>>
      </eqnarray*>

      So if <math|k,l\<in\><around*|{|1,\<ldots\>,m+1|}>> then we have
      either:\ 

      <\description>
        <item*|<math|k\<wedge\>l\<in\><around*|{|1,\<ldots\>,m|}>>>Then as
        <math|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}>> is orthonormal we
        have that <math|<around*|\<langle\>|f<rsub|k>,f<rsub|l>|\<rangle\>>=\<delta\><rsub|k,l>>.

        <item*|<math|k=m+1\<wedge\>l\<in\><around*|{|1,\<ldots\>,m|}>>>Then
        <math|<around*|\<langle\>|f<rsub|k>,f<rsub|l>|\<rangle\>>=<around*|\<langle\>|f<rsub|m+1>,f<rsub|l>|\<rangle\>>\<equallim\><rsub|<text|[eq:
        <reference|eq 18.3.146>]>>0=\<delta\><rsub|k,l>>

        <item*|<math|k\<in\><around*|{|1,\<ldots\>,m|}>\<wedge\>l=m+1>>Then
        <math|<around*|\<langle\>|f<rsub|k>,f<rsub|l>|\<rangle\>>=<around*|\<langle\>|f<rsub|l>,f<rsub|k>|\<rangle\>>=<around*|\<langle\>|f<rsub|m+1>,f<rsub|k>|\<rangle\>>\<equallim\><rsub|<text|[eq:
        <reference|eq 18.3.146>]>>0=\<delta\><rsub|k,l>>

        <item*|<math|k=m+1=l>>Then <math|<around*|\<langle\>|f<rsub|k>,f<rsub|l>|\<rangle\>>=<around*|\<langle\>|f<rsub|m+1>,f<rsub|m+1>|\<rangle\>>\<equallim\><rsub|<text|[eq:
        <reference|eq 18.2.146>]>>1=\<delta\><rsub|k.l>>
      </description>

      proving that\ 

      <\equation>
        <label|eq 18.5.146.2><around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}><text|
        is orthonormal>
      </equation>

      Further we have as <math|f<rsub|m+1>=<frac|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>>>
      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|e<rsub|m+1>>|<cell|=>|<cell|<around*|\<\|\|\>|e<rsub|m+1>-<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>|\<\|\|\>>\<cdot\>f<rsub|m+1>+<big|sum><rsub|i=1><rsup|m><around*|\<langle\>|e<rsub|m+1>,f<rsub|i>|\<rangle\>>\<cdot\>f<rsub|i>>>>>
      </eqnarray*>

      so that <math|e<rsub|m+1>\<in\>span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>|)>>.
      As\ 

      <\equation*>
        <around*|{|e<rsub|1>,\<ldots\>,e<rsub|m>|}>\<subseteq\>span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m>|}>|)>=span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}>|)>\<subseteq\>span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>|)>
      </equation*>

      we have

      <\equation>
        <label|eq 18.4.146><around*|{|e<rsub|1>,\<ldots\>,e<rsub|m+1>|}>\<subseteq\>span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m+1>|}>|)>\<subseteq\>span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>|)>
      </equation>

      To prove the opposite inequality not that by [theorem: <reference|inner
      linear independence and orthogonality>] and the fact that
      <math|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>> is orthonormal it
      follows that <math|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>> is
      linear independent. Further, as by [theorem: <reference|linear span is
      a sub-space>], <math|span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>|)>>
      is a vector space, it follows that <math|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>>
      is a basis for the <math|m+1>-dimensional vector space
      <math|span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>|)>>.
      As <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m+1>|}>> is linear
      independent and by [eq: <reference|eq 18.4.146>] a subset of
      <math|span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>|)>>
      it follow from [theorem: <reference|basis finite dimensional vector
      space is a linear independent family>] that
      <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m+1>|}>> is a basis for
      <math|span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>|)>>.
      Hence\ 

      <\equation>
        <label|eq 18.5.146>span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m+1>|}>|)>=span<around*|(|<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m+1>|}>|)>
      </equation>

      Summarized, from [eqs: <reference|eq 18.2.146.1>, <reference|eq
      18.5.146.2> and <reference|eq 18.5.146>] it follows that
      <math|m+1\<in\>S>.
    </description>
  </proof>

  <\corollary>
    <label|inner orthonormalization (1)>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    a finite dimensional real [or complex] inner product space with
    <math|dim<around*|(|X|)>=n> then there exist a orthonormal basis
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>><space|1em>on <math|X>.
  </corollary>

  <\proof>
    As <math|X> is finite dimensional with <math|dim<around*|(|X|)>=n> there
    exist a basis <math|<around*|{|e<rprime|'><rsub|1>,\<ldots\>,e<rprime|'><rsub|n>|}>>
    on <math|X>. Hence <math|<around*|{|e<rprime|'><rsub|1>,\<ldots\>,e<rprime|'><rsub|n>|}>>
    is linear independent and <math|span<around*|(|<around*|{|e<rprime|'><rsub|1>,\<ldots\>,e<rprime|'><rsub|n>|}>|)>=X>.
    Using the Gram-Schmidt procedue [see theorem: <reference|inner
    Gram-Schmidt procedure>] we can construct a orthonormal set
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> [hence by [theorem:
    <reference|inner linear independence and orthogonality>] a linear
    independent set] such that <math|span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>|)>=span<around*|(|<around*|{|e<rprime|'><rsub|1>,\<ldots\>,e<rprime|'><rsub|n>|}>|)>=X>.
    So we found a orthonormal basis on <math|X>.
  </proof>

  <\theorem>
    <label|inner orthonormal set>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    a finite dimensional real [or complex] inner product space with
    <math|dim<around*|(|X|)>=n> and <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    a orthonormal subset of <math|X> then
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> is a basis on
    <math|X>.
  </theorem>

  <\proof>
    By [theorem: <reference|inner linear independence and orthogonality>]
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> is linear independent
    so that by [theorem: <reference|basis finite dimensional vector space is
    a linear independent family>] <math|<rigid|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>>
    is a basis for <math|X>.
  </proof>

  <subsection|Dual spaces and inner product>

  Recap the concept of the dual of a vector space [see definition:
  <reference|linear mapping dual space>] which in the case of a real [or
  complex] inner vector spaces is defined by.

  <\definition>
    <index|dual space>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product vector space then the dual space,
    noted as <math|X<rsup|\<ast\>>> is defined by:

    <\description>
      <item*|real inner product space>\ 

      <\equation*>
        X<rsup|\<ast\>>=Hom<around*|(|X,\<bbb-R\>|)>
      </equation*>

      <item*|complex inner product space>\ 

      <\equation*>
        X<rsup|\<ast\>>=Hom<around*|(|X,\<bbb-C\>|)>
      </equation*>
    </description>

    If we choose <math|\<bbb-K\>> to mean either <math|\<bbb-R\>> or
    <math|\<bbb-C\>> if <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    if <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    is a real or complex inner product space then we can use the simpler
    notation\ 

    <\equation*>
      X<rsup|\<ast\>>=Hom<around*|(|X,\<bbb-K\>|)>
    </equation*>
  </definition>

  We show now that elements of <math|X<rsup|\<ast\>>> can be written using a
  inner product.

  <\theorem>
    <label|inner linear function from inner product>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product vector space and <math|u\<in\>X>
    then <math|<around*|\<langle\>|\<ast\>,u|\<nobracket\>>> defined by\ 

    <\equation*>
      <around*|\<langle\>|\<ast\>,u|\<rangle\>>:X\<rightarrow\>\<bbb-K\><text|
      where <math|<around*|\<langle\>|\<ast\>,u|\<rangle\>><around*|(|y|)>=<around*|\<langle\>|y,u|\<rangle\>>>>
    </equation*>

    is a element of <math|X<rsup|\<ast\>>>.
  </theorem>

  <\proof>
    Let <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> then

    <\equation*>
      <around*|\<langle\>|\<star\>,u|\<rangle\>><around*|(|x+\<alpha\>\<cdot\>y|)>=<around*|\<langle\>|x+\<alpha\>\<cdot\>y,u|\<rangle\>>=<around*|\<langle\>|x,u|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,u|\<rangle\>>=<around*|\<langle\>|\<ast\>,u|\<rangle\>><around*|(|x|)>+\<alpha\>\<cdot\><around*|\<langle\>|\<star\>,u|\<rangle\>><around*|(|y|)>
    </equation*>

    proving that <math|<around*|\<langle\>|\<ast\>,u|\<rangle\>>\<in\>Hom<around*|(|X,\<bbb-K\>|)>=X<rsup|\<ast\>>>
  </proof>

  We have also the opposite of the above theorem.

  <\theorem>
    <label|inner Riesz Representation theorm><index|Riesz Representation
    Theorm><dueto|Riesz Representation Theorem>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    a finite dimensional real [or complex] inner product vector space with
    <math|dim<around*|(|X|)>=n> and <math|L\<in\>X<rsup|\<ast\>>> then there
    exist a <with|font-series|bold|unique> <math|u\<in\>X> such that
    <math|L=<around*|\<langle\>|\<ast\>,u|\<rangle\>>>. In other words we
    have <math|\<forall\>x\<in\>X> that <math|L<around*|(|x|)>=<around*|\<langle\>|x,u|\<rangle\>>>.
  </theorem>

  <\proof>
    Using [theorem: <reference|inner orthonormalization (1)>] there exist a
    orthonormal basis <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> on
    <math|X>. We consider now the following cases:

    <\description>
      <item*|real inner product space>Take
      <math|u=<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|e<rsub|i>|)>\<cdot\>e<rsub|i>>.
      Let <math|x\<in\>X> then there exist a
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      such that <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x,u|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,<big|sum><rsub|j=1><rsup|n>\<varphi\><around*|(|e<rsub|j>|)>\<cdot\>e<rsub|j>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|<big|sum><rsub|j=1><rsup|n>\<varphi\><around*|(|e<rsub|j>|)>\<cdot\>e<rsub|j>,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|n>\<varphi\><around*|(|e<rsub|j>|)>\<cdot\><around*|\<langle\>|e<rsub|j>,e<rsub|i>|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|n>\<varphi\><around*|(|e<rsub|j>|)>\<cdot\>\<delta\><rsub|i,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>\<varphi\><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|x|)>>>>>
      </eqnarray*>

      Let <math|v\<in\>X> be such that <math|\<forall\>x\<in\>X>
      <math|\<varphi\><around*|(|x|)>=<around*|\<langle\>|x,v|\<rangle\>>>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|\<varphi\><around*|(|e<rsub|i>|)>>

      <item*|complex inner product space>Take
      <math|u=<big|sum><rsub|i=1><rsup|n><wide|\<varphi\><around*|(|e<rsub|i>|)>|\<wide-bar\>>\<cdot\>e<rsub|i>>.
      Let <math|x\<in\>X> then there exist a
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
      such that <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x,u|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,<big|sum><rsub|j=1><rsup|n><wide|\<varphi\><around*|(|e<rsub|j>|)>|\<wide-bar\>>\<cdot\>e<rsub|j>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|<around*|\<langle\>|<big|sum><rsub|j=1><rsup|n><wide|\<varphi\><around*|(|e<rsub|j>|)>|\<wide-bar\>>\<cdot\>e<rsub|j>.e<rsub|i>|\<rangle\>>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|<big|sum><rsub|j=1><rsup|n><wide|\<varphi\><around*|(|e<rsub|j>|)>|\<wide-bar\>>\<cdot\><around*|\<langle\>|e<rsub|j>.e<rsub|i>|\<rangle\>>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|<big|sum><rsub|j=1><rsup|n><wide|\<varphi\><around*|(|e<rsub|j>|)>|\<wide-bar\>>\<cdot\>\<delta\><rsub|i,j>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|<wide|\<varphi\><around*|(|e<rsub|i>|)>|\<wide-bar\>>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>\<varphi\><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|x|)>>>>>
      </eqnarray*>
    </description>

    So in all cases we have found a <math|u\<in\>X> such that\ 

    <\equation*>
      \<forall\>x\<in\>X<text| we have >\<varphi\><around*|(|x|)>=<around*|\<langle\>|x,u|\<rangle\>>
    </equation*>

    The above proves existence, as for uniqueness. Assume that there exist a
    <math|v\<in\>X> such that <math|\<forall\>x\<in\>X> we have
    <math|\<varphi\><around*|(|x|)>=<around*|\<langle\>|x,v|\<rangle\>>>.
    Then, as <math|u-v\<in\>X>, there exist a
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>
    such that <math|u-v=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>>.
    Hence we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<langle\>|u-v,u-v|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>,u-v|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,u-v|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><around*|(|<around*|\<langle\>|e<rsub|i>,u|\<rangle\>>-<around*|\<langle\>|e<rsub|i>,v|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><around*|(|\<varphi\><around*|(|e<rsub|i>|)>-\<varphi\><around*|(|e<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    proving that <math|u-v=0> or <math|u=v>.
  </proof>

  Riesz Representation Theorem allows us to define the concept of the adjoint
  of a operator.

  <\theorem>
    <label|inner adjoint operator><index|adjoint mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<langle\>||\<rangle\>><rsub|Y>|\<rangle\>>>
    be finite dimensional real [or complex] inner product spaces with
    <math|dim<around*|(|X|)>>, <math|dim<around*|(|Y|)>\<in\>\<bbb-N\>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then there exist a
    <with|font-series|bold|unique> mapping\ 

    <\equation*>
      L<rsup|\<ast\>>\<in\>Hom<around*|(|Y,Z|)>
    </equation*>

    such that for <math|y\<in\>Y> <math|L<rsup|\<ast\>><around*|(|y|)>> we
    have

    <\equation*>
      \<forall\>x\<in\>X<text| that ><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>><rsub|Y>=<around*|\<langle\>|x,L<rsup|\<ast\>><around*|(|y|)>|\<rangle\>><rsub|X>
    </equation*>

    Also we have

    <\equation*>
      L<rsup|\<ast\>>\<in\>Hom<around*|(|Y,X|)>
    </equation*>

    The mapping <math|L<rsup|\<ast\>>> is called the
    <with|font-series|bold|adjoint of ><math|L>
  </theorem>

  <\proof>
    Given <math|y\<in\>Y> define\ 

    <\equation*>
      \<varphi\><rsub|y>:X\<rightarrow\>\<bbb-K\><text| by
      >\<varphi\><rsub|y><around*|(|x|)>=<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>><rsub|Y>
    </equation*>

    If <math|x<rsub|1>>, <math|x<rsub|2>\<in\>X> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><rsub|y><around*|(|x<rsub|1>+\<alpha\>\<cdot\>x<rsub|2>|)>>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x<rsub|1>+\<alpha\>\<cdot\>x<rsub|2>|)>,y|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x<rsub|1>|)>+\<alpha\>\<cdot\>L<around*|(|x<rsub|2>|)>,y|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x<rsub|1>|)>,y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|L<around*|(|x<rsub|2>|)>,y|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><rsub|y><around*|(|x<rsub|1>|)>+\<alpha\>\<cdot\>\<varphi\><rsub|y><around*|(|x<rsub|2>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      \<varphi\><rsub|y>\<in\>Hom<around*|(|X,\<bbb-K\>|)>=X<rsup|\<ast\>>
    </equation*>

    Hence, using the Riesz Representation Theorem [see theorem:
    <reference|inner Riesz Representation theorm>] there exist a
    <with|font-series|bold|unique> <math|u<rsub|y>\<in\>X> such that
    <math|\<varphi\><rsub|y>=<around*|\<langle\>|\<ast\>,u<rsub|y>|\<rangle\>>>,
    hence <math|\<forall\>x\<in\>X> we have that

    <\equation*>
      <around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>><rsub|Y>=\<varphi\><rsub|y><around*|(|x|)>=<around*|\<langle\>|\<ast\>,u<rsub|y>|\<rangle\>><rsub|X><around*|(|x|)>=<around*|\<langle\>|x,u<rsub|y>|\<rangle\>><rsub|X>
    </equation*>

    So if we define\ 

    <\equation*>
      L<rsup|\<ast\>>:Y\<rightarrow\>X<text| by
      >L<rsup|\<ast\>><around*|(|y|)>=u<rsub|y>
    </equation*>

    then <math|\<forall\>y\<in\>Y> we have <math|\<forall\>x\<in\>X> that
    <math|<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>><rsub|Y>=<around*|\<langle\>|x,u<rsub|y>|\<rangle\>><rsub|X>=<around*|\<langle\>|x,L<rsup|\<ast\>><around*|(|y|)>|\<rangle\>><rsub|X>>.
    If <math|y<rsub|1>,y<rsub|2>\<in\>Y> and <math|\<alpha\>\<in\>\<bbb-K\>>.
    Then we have to consider either:

    <\description>
      <item*|real inner product spaces>Then we have <math|\<forall\>x\<in\>X>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>><around*|(|x|)>>|<cell|=>|<cell|<around*|\<langle\>|x,u<rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>>|\<rangle\>><rsub|X>>>>>
      </eqnarray*>

      but also\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>><around*|(|x|)>>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x|)>,y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x|)>,y<rsub|1>|\<rangle\>><rsub|Y>+\<alpha\>\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y<rsub|2>|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><rsub|y<rsub|1>><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|y<rsub|2>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u<rsub|y<rsub|1>>|\<rangle\>><rsub|X>+\<alpha\>\<cdot\><around*|\<langle\>|x,u<rsub|y<rsub|2>>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u<rsub|y<rsub|1>>+\<alpha\>\<cdot\>u<rsub|y<rsub|2>>|\<rangle\>><rsub|X>>>>>
      </eqnarray*>

      so that by <with|font-series|bold|uniqueness> we must have that
      <math|u<rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>>=u<rsub|y<rsub|1>>+\<alpha\>\<cdot\>y<rsub|2>>,
      hence we have that\ 

      <\equation*>
        L<rsup|\<ast\>><around*|(|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>|)>=u<rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>>=u<rsub|y<rsub|1>>+\<alpha\>\<cdot\>y<rsub|2>=L<around*|(|y<rsub|1>|)>+\<alpha\>\<cdot\>L<around*|(|y<rsub|2>|)>
      </equation*>

      <item*|complex inner product spaces>Then we have
      <math|\<forall\>x\<in\>X>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>><around*|(|x|)>>|<cell|=>|<cell|<around*|\<langle\>|x,u<rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>>|\<rangle\>>>>>>
      </eqnarray*>

      but also\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>><around*|(|x|)>>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x|)>,y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x|)>,y<rsub|1>|\<rangle\>><rsub|Y>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y<rsub|2>|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><rsub|y<rsub|1>><around*|(|x|)>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\>\<varphi\><rsub|y<rsub|2>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u<rsub|y<rsub|1>>|\<rangle\>><rsub|X>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,u<rsub|y<rsub|2>>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u<rsub|y<rsub|1>>+\<alpha\>\<cdot\>u<rsub|y<rsub|2>>|\<rangle\>><rsub|X>>>>>
      </eqnarray*>

      so that by <with|font-series|bold|uniqueness> we must have that
      <math|u<rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>>=u<rsub|y<rsub|1>>+\<alpha\>\<cdot\>y<rsub|2>>,
      hence we have that\ 

      <\equation*>
        L<rsup|\<ast\>><around*|(|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>|)>=u<rsub|y<rsub|1>+\<alpha\>\<cdot\>y<rsub|2>>=u<rsub|y<rsub|1>>+\<alpha\>\<cdot\>y<rsub|2>=L<around*|(|y<rsub|1>|)>+\<alpha\>\<cdot\>L<around*|(|y<rsub|2>|)>
      </equation*>
    </description>

    Hence we have that\ 

    <\equation*>
      L<rsup|\<star\>>\<in\>Hom<around*|(|Y,X|)>
    </equation*>

    Finally assume that there is another <math|K<rsup|\<ast\>>\<in\>Hom<around*|(|Y,X|)>>
    such that <math|\<forall\>y\<in\>Y> we have <math|\<forall\>x\<in\>X>
    that <math|<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>><rsub|Y>=<around*|\<langle\>|x,L<rsup|\<ast\>><around*|(|y|)>|\<rangle\>><rsub|X>>.
    Then given <math|y\<in\>Y> we have <math|\<forall\>x\<in\>X> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><rsub|y><around*|(|x|)>>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,K<rsup|\<ast\>><around*|(|y|)>|)><rsub|X>>>>>
    </eqnarray*>

    so that by uniqueness of <math|u<rsub|y>> we must have that
    <math|K<rsup|\<ast\>><around*|(|y|)>=u<rsub|y>=L<rsup|\<ast\>><around*|(|y|)>>
    proving that <math|L<rsup|\<ast\>>=K<rsup|\<ast\>>>.
  </proof>

  Using the above it follows that for <math|L\<in\>Hom<around*|(|X,Y|)>>
  <math|L<rsup|\<ast\>>\<in\>Hom<around*|(|Y,X|)>> so that logically
  <math|<rigid|<around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>\<in\>Hom<around*|(|X,Y|)>>>.
  Actually we have even more, it turns out that
  <math|<around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>=L>.

  <\theorem>
    <label|inner adjoint of adjoint>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<langle\>||\<rangle\>><rsub|Y>|\<rangle\>>>
    be finite dimensional real [or complex] inner product spaces with
    <math|dim<around*|(|X|)>>, <math|dim<around*|(|Y|)>\<in\>\<bbb-N\>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then
    <math|<around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>=L>
  </theorem>

  <\proof>
    We must consider the following cases:\ 

    <\description>
      <item*|real inner product spaces>As
      <math|L<rsup|\<ast\>>\<in\>Hom<around*|(|Y,X|)>> we have by [theorem:
      <reference|inner adjoint operator>] that
      <math|<around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>\<in\>Hom<around*|(|X,Y|)>>
      is the unique mapping such that <math|\<forall\>y\<in\>X> we have
      <math|\<forall\>x\<in\>Y> that

      <\equation*>
        <around*|\<langle\>|L<rsup|\<ast\>><around*|(|x|)>,y|\<rangle\>><rsub|X>=<around*|\<langle\>|x,<around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>><around*|(|y|)>|\<rangle\>><rsub|Y><rsub|>,
      </equation*>

      further we have also for <math|L\<in\>Hom<around*|(|X,Y|)>> by
      [theorem: <reference|inner adjoint operator>] that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|L<rsup|\<ast\>><around*|(|x|)>,y|\<rangle\>><rsub|X>>|<cell|=>|<cell|<around*|\<langle\>|y,L<rsup|\<ast\>><around*|(|x|)>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner adjoint operator>]>>>|<cell|<around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>><rsub|Y>>>>>
      </eqnarray*>

      so that by uniqueness we must have that\ 

      <\equation*>
        <around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>=L
      </equation*>

      <item*|complex inner product spaces>As
      <math|L<rsup|\<ast\>>\<in\>Hom<around*|(|Y,X|)>> we have by [theorem:
      <reference|inner adjoint operator>] that
      <math|<around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>\<in\>Hom<around*|(|X,Y|)>>
      is the unique mapping such that <math|\<forall\>y\<in\>X> we have
      <math|\<forall\>x\<in\>Y> that

      <\equation*>
        <around*|\<langle\>|L<rsup|\<ast\>><around*|(|x|)>,y|\<rangle\>><rsub|X>=<around*|\<langle\>|x,<around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>><around*|(|y|)>|\<rangle\>><rsub|Y><rsub|>,
      </equation*>

      further we have also for <math|L\<in\>Hom<around*|(|X,Y|)>> by
      [theorem: <reference|inner adjoint operator>] that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|L<rsup|\<ast\>><around*|(|x|)>,y|\<rangle\>><rsub|X>>|<cell|=>|<cell|<wide|<around*|\<langle\>|y,L<rsup|\<ast\>><around*|(|x|)>|\<rangle\>><rsub|X>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner adjoint operator>]>>>|<cell|<wide|<around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>><rsub|Y>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>><rsub|Y>>>>>
      </eqnarray*>

      so that by uniqueness we must have that\ 

      <\equation*>
        <around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>=L
      </equation*>
    </description>
  </proof>

  The operator of taking the adjoint of a linear mapping is alos linear as
  the following theorem shows.

  <\theorem>
    <label|inner adjoint operator is linear>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<langle\>||\<rangle\>><rsub|Y>|\<rangle\>>>
    be finite dimensional real [or complex] inner product spaces with
    <math|dim<around*|(|X|)>>, <math|dim<around*|(|Y|)>\<in\>\<bbb-N\>>,
    <math|L<rsub|1>>, <math|L<rsub|2>\<in\>Hom<around*|(|X,Y|)>> and
    <with|font-series|bold|<math|\<alpha\>\<in\>\<bbb-R\>> [or
    <math|\<bbb-C\>>]> then

    <\equation*>
      <around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsup|\<ast\>>=L<rsub|1><rsup|\<ast\>>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\>L<rsup|\<ast\>><rsub|2>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|inner adjoint operator>] we have
    <math|\<forall\>y\<in\>Y> that for <math|\<forall\>x\<in\>X> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<langle\>|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x|)>,y|\<rangle\>><rsub|Y>>|<cell|=>|<cell|<around*|\<langle\>|x,<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsup|\<ast\>>|\<rangle\>>>>>>
    </eqnarray*>

    further we have also that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<langle\>|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x|)>,y|\<rangle\>><rsub|Y>>|<cell|=>|<cell|<around*|\<langle\>|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x|)>,y|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<rsub|1><around*|(|x|)>,y|\<rangle\>><rsub|Y>+\<alpha\>\<cdot\><around*|\<langle\>|L<rsub|2><around*|(|x|)>,y|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,L<rsub|1><rsup|\<ast\>><around*|(|y|)>|\<rangle\>><rsub|X>+\<alpha\>\<cdot\><around*|\<langle\>|x,L<rsup|\<ast\>><rsub|2><around*|(|y|)>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|>|<cell|<around*|\<langle\>|x,L<rsub|1><rsup|\<ast\>><around*|(|y|)>|\<rangle\>><rsub|X>+<around*|\<langle\>|x,<wide|\<alpha\>|\<wide-bar\>>\<cdot\>L<rsup|\<ast\>><rsub|2><around*|(|y|)>|\<rangle\>><rsub|X><eq-number><label|eq
      18.8.146>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,L<rsub|1><rsup|\<ast\>><around*|(|y|)>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\>L<rsub|1><rsup|\<ast\>><around*|(|y|)><rsub|>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x.<around*|(|L<rsup|\<ast\>><rsub|1>+<wide|\<alpha\>|\<wide-bar\>>\<cdot\>L<rsup|\<ast\>><rsub|2>|)><around*|(|y|)>|\<rangle\>><rsub|X>>>>>
    </eqnarray*>

    proving by uniqueness in [theorem: <reference|inner adjoint operator>]
    that <math|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsup|\<ast\>>=L<rsub|1><rsup|\<ast\>>+\<alpha\>\<cdot\>L<rsup|\<ast\>><rsub|2>>

    <\note>
      Step [eq: <reference|eq 18.8.146>] is valid because in the real case
      <math|\<alpha\>\<in\>\<bbb-R\>\<Rightarrow\>\<alpha\>=<wide|\<alpha\>|\<wide-bar\>>>
      and <rigid|<math|\<alpha\>\<cdot\><around*|\<langle\>|x,L<rsup|\<ast\>><rsub|2><around*|(|y|)>|\<rangle\>><rsub|X>=<around*|\<langle\>|x,<wide|\<alpha\>|\<wide-bar\>>\<cdot\>L<rsup|\<ast\>><rsub|2><around*|(|y|)>|\<rangle\>><rsub|X>>>
      and in the complex case <math|\<alpha\>\<cdot\><around*|\<langle\>|x,L<rsup|\<ast\>><rsub|2><around*|(|y|)>|\<rangle\>><rsub|X>=<around*|\<langle\>|x,<wide|\<alpha\>|\<wide-bar\>>\<cdot\>L<rsup|\<ast\>><rsub|2><around*|(|y|)>|\<rangle\>><rsub|X>>.
    </note>
  </proof>

  <\theorem>
    <label|inner adjoint and composition><label|inner adjoint operator and
    composition>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<langle\>||\<rangle\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<langle\>||\<rangle\>><rsub|Z>|\<rangle\>>>
    be finite dimensional real [or complex] inner product spaces with
    <math|dim<around*|(|X|)>>, <math|dim<around*|(|Y|)>\<in\>\<bbb-N\>>,
    <math|dim<around*|(|Z|)>\<in\>\<bbb-N\>>,
    <math|L<rsub|1>\<in\>Hom<around*|(|X,Y|)>>,
    <math|L<rsub|2>\<in\>Hom<around*|(|Y,Z|)>> then\ 

    <\equation*>
      <around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><rsup|\<ast\>>=L<rsup|\<ast\>><rsub|1>\<circ\>L<rsup|\<ast\>><rsub|2>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|inner adjoint operator>] we have
    <math|\<forall\>z\<in\>Z> that <math|\<forall\>x\<in\>X> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<langle\>|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>,y|\<rangle\>><rsub|Z>>|<cell|=>|<cell|<around*|\<langle\>|x,<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><rsup|\<ast\>><around*|(|y|)>|\<rangle\>>>>>>
    </eqnarray*>

    further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<langle\>|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>,y|\<rangle\>><rsub|Z>>|<cell|=>|<cell|<around*|\<langle\>|L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>|)>,y|\<rangle\>><rsub|Z>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner adjoint of adjoint>]>>>|<cell|<around*|\<langle\>|L<rsub|1><around*|(|x|)>,L<rsup|\<ast\>><rsub|2><around*|(|y|)>|\<rangle\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner adjoint of adjoint>]>>>|<cell|<around*|\<langle\>|x,L<rsub|1><rsup|\<star\>><around*|(|L<rsup|\<ast\>><rsub|2><around*|(|y|)>|)>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,<around*|(|L<rsup|\<ast\>><rsub|1>\<circ\>L<rsup|\<ast\>><rsub|2>|)><around*|(|y|)>|\<rangle\>><rsub|X>>>>>
    </eqnarray*>

    hence we have that\ 

    <\equation*>
      <around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><rsup|\<ast\>>=L<rsup|\<ast\>><rsub|1>\<circ\>L<rsup|\<ast\>><rsub|2>
    </equation*>
  </proof>

  To examine the relation between the adjoint of a linear operator and its
  matrix we first had to extend the concept of the transpose <math|M<rsup|T>>
  of a matrix <math|M> [see definition: <reference|matrix transpose>].

  <\definition>
    <index|<math|M<rsup|H>>>Let <math|n,m\<in\>\<bbb-N\>> then for
    <math|M\<in\>\<cal-M\><rsub|n,m><around*|(|\<bbb-K\>|)>> we have that
    <math|M<rsup|H>> is defined by\ 

    <\equation*>
      \<forall\><around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,m|}>\<times\><around*|{|1,\<ldots\>,n|}><text|
      ><around*|(|M<rsup|H>|)><rsub|i,j>=<wide|M<rsub|j,i>|\<wide-bar\>><text|>
    </equation*>

    <\note>
      If <math|\<bbb-K\>=\<bbb-R\>> then <math|\<forall\><around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,m|}>\<times\><around*|{|1,\<ldots\>,n|}><text|
      ><around*|(|M<rsup|H>|)><rsub|i,j>=<wide|M<rsub|j,i>|\<wide-bar\>><text|>=M<rsub|j,i>=<around*|(|M<rsup|T>|)><rsub|i,j>>
      so that\ 

      <\equation*>
        M<rsup|T>=M<rsup|H>
      </equation*>
    </note>
  </definition>

  <\definition>
    <label|inner symmetric matrix><index|symmetric matrix><dueto|Symmetric
    Matrix>Let <math|n,m\<in\>\<bbb-N\>> and
    <math|M\<in\>\<cal-M\><rsub|n,m><around*|(|\<bbb-K\>|)>> then <math|M> is
    symmetric if

    <\equation*>
      M=M<rsup|T>
    </equation*>
  </definition>

  <\definition>
    <label|inner hermitian matrix><index|hermition matrix><dueto|Hermitian
    Matrix>Let <math|n,m\<in\>\<bbb-N\>> and
    <math|M\<in\>\<cal-M\><rsub|n,m><around*|(|\<bbb-K\>|)>> then <math|M> is
    Hermitian if\ 
  </definition>

  <\equation*>
    M=M<rsup|H>
  </equation*>

  <\definition>
    <label|inner unitary matrix><index|unitary matrix><dueto|Unitary
    Matrix>Let <math|n,m\<in\>\<bbb-N\>> and
    <math|M\<in\>\<cal-M\><rsub|n,m><around*|(|\<bbb-K\>|)>> then <math|M> is
    unitary if\ 

    <\equation*>
      U<rsup|H>\<cdot\>U=E=U\<cdot\>U<rsup|H>
    </equation*>
  </definition>

  <\theorem>
    <label|inner matrix of adjoint operator>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<langle\>||\<rangle\>><rsub|Y>|\<rangle\>>>
    be finite dimensional real [or complex] inner product spaces with
    <math|dim<around*|(|X|)>=n>, <math|dim<around*|(|Y|)>=m>,
    <math|n,m\<in\>\<bbb-R\>>, <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    a orthonormal basis for <math|X>, <math|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|m>|}>>
    a orthonormal basis for <math|Y> and <math|L\<in\>Hom<around*|(|X,Y|)>>
    then for <math|L<rsup|\<ast\>>\<in\>Hom<around*|(|Y,X|)>> we have that

    <\equation*>
      \<cal-M\><around*|(|L<rsup|\<ast\>>;F,E|)>=\<cal-M\><around*|(|L,E;F|)><rsup|H>
    </equation*>

    See [definition: <reference|matrix linear mapping>] for
    <math|\<cal-M\><around*|(|L<rsup|\<ast\>>;F,E|)>> and
    <math|\<cal-M\><around*|(|L,E;F|)>>.
  </theorem>

  <\proof>
    We must make a distinction between the real and complex case.

    <\description>
      <item*|real inner product space>Using [theorem: <reference|inner matrix
      of linear mapping>] we have <math|\<forall\><around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<cal-M\><around*|(|L;E,F|)><rsup|H>|)><rsub|i,j>>|<cell|=>|<cell|<wide|\<cal-M\><around*|(|L;E,F|)><rsub|j,i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of linear
        mapping>]>>>|<cell|<wide|<around*|\<langle\>|L<around*|(|e<rsub|i>|)>,f<rsub|j>|\<rangle\>><rsub|Y>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner adjoint operator>]>>>|<cell|<wide|<around*|\<langle\>|e<rsub|i>,L<rsup|\<ast\>><around*|(|f<rsub|j>|)>|\<rangle\>><rsub|X>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<langle\>|,|\<rangle\>><rsub|X>\<in\>\<bbb-R\>>>|<cell|<around*|\<langle\>|e<rsub|i>,L<rsup|\<ast\>><around*|(|f<rsub|j>|)>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<rsup|\<star\>><around*|(|f<rsub|j>|)>,e<rsub|i>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of linear
        mapping>]>>>|<cell|\<cal-M\><around*|(|L<rsup|\<ast\>>;F,E|)><rsub|i,j>>>>>
      </eqnarray*>

      proving that <math|\<cal-M\><around*|(|L<rsup|\<ast\>>;F,E|)>=\<cal-M\><around*|(|L,E;F|)><rsup|H>>.

      <item*|complex inner product space>Using [theorem: <reference|inner
      matrix of linear mapping>] we have <math|\<forall\><around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<cal-M\><around*|(|L;E,F|)><rsup|H>|)><rsub|i,j>>|<cell|=>|<cell|<wide|\<cal-M\><around*|(|L;E,F|)><rsub|j,i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of linear
        mapping>]>>>|<cell|<wide|<around*|\<langle\>|L<around*|(|e<rsub|i>|)>,f<rsub|j>|\<rangle\>><rsub|Y>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner adjoint operator>]>>>|<cell|<wide|<around*|\<langle\>|e<rsub|i>,L<rsup|\<ast\>><around*|(|f<rsub|j>|)>|\<rangle\>><rsub|X>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<rsup|\<star\>><around*|(|f<rsub|j>|)>,e<rsub|i>|\<rangle\>><rsub|X>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of linear
        mapping>]>>>|<cell|\<cal-M\><around*|(|L<rsup|\<ast\>>;F,E|)><rsub|i,j>>>>>
      </eqnarray*>

      proving that <math|\<cal-M\><around*|(|L<rsup|\<ast\>>;F,E|)>=\<cal-M\><around*|(|L,E;F|)><rsup|H>>.
    </description>
  </proof>

  <\corollary>
    <label|inner determinant of adjoint mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>><rsub|X>|\<rangle\>>>
    be a finite dimensional real inner product spaces with
    <math|dim<around*|(|X|)>\<in\>\<bbb-N\>> and
    <math|L\<in\>Hom<around*|(|X|)>=Hom<around*|(|X,X|)>> then\ 

    <\equation*>
      det<around*|(|L|)>=det<around*|(|L<rsup|\<ast\>>|)>
    </equation*>
  </corollary>

  <\proof>
    Let <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> be a basis in
    <math|X> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|det<around*|(|L|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|determinant of matrix and linear
      transformation>]>>>|<cell|det<around*|(|\<cal-M\><around*|(|L;E,F|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|matrix determinant of transpose>]>>>|<cell|det<around*|(|\<cal-M\><around*|(|L;E,F|)><rsup|T>|)>>>|<row|<cell|>|<cell|=>|<cell|det<around*|(|\<cal-M\><around*|(|L;E,F|)><rsup|H>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner determinant of adjoint
      mapping>]>>>|<cell|det<around*|(|L<rsup|\<ast\>>|)>>>>>
    </eqnarray*>
  </proof>

  <section|Spectral Theorem>

  <subsection|Polynomials and linear operators>

  We use now the fundamental theorem of algebra to prove the spectral theorem
  of linear algebra, that states under which conditions a linear operator can
  be diagonlized. First we introduce linear operators and the relation of
  linear operators and polynomes.

  <\definition>
    <label|spectral linear operator><index|linear operator><index|linear
    operator>Let <math|X> be a vector space and <math|L:X\<rightarrow\>X> a
    mappinge then <math|L> is a <with|font-series|bold|linear operator on X>
    if <math|L\<in\>Hom<around*|(|X,X|)>=Hom<around*|(|X|)>>.
  </definition>

  <\theorem>
    <label|spectral linear operator isomorphism>Let <math|X> be a finite
    dimensional and <math|L\<in\>Hom<around*|(|X|)>> [<math|L> is a linear
    operator] then we have the following equivalences:\ 

    <\enumerate>
      <item><math|L> is a isomorphism.

      <item><math|L> is injective.

      <item><math|L> is surjective.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>This is trivial as a bijection is
      injective and surjective.

      <item*|<math|1\<Rightarrow\>3>>This is trivial as a bijection is
      injective and surjective.

      <item*|<math|2\<Rightarrow\>1>>This follows from [theorem:
      <reference|linear mapping injectivity and surjectivity>].

      <item*|<math|3\<Rightarrow\>1>>As <math|L> is surjective it follows
      from [theorem: <reference|linear mapping surjectivity and rank>] that
      <math|rank<around*|(|L|)>=dim<around*|(|X|)>>. As by [theorem:
      <reference|linear mapping dimension theorem>]
      <math|dim<around*|(|X|)>=dim<around*|(|ker<around*|(|L|)>|)>+rank<around*|(|L|)>>
      it follows that <math|dim<around*|(|ker<around*|(|L|)>|)>=0>, hence
      using [theorem: <reference|linear mapping injectivity and kernel>] we
      have that <math|L> is injective. So <math|L> is a bijection and as
      <math|L> is linear it is by [theorem: <reference|linear mapping
      injective transformation>] a linear isomorphism.
    </description>
  </proof>

  <\definition>
    Let <math|n\<in\>\<bbb-N\>>, <math|X> a vector space and
    <math|<around*|{|L<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>Hom<around*|(|X|)>>
    a finite family of linear operators then
    <math|<big|prod><rsub|i=1><rsup|n>L<rsub|i>:X\<rightarrow\>X> is
    recursively defined by\ 

    <\equation*>
      <around*|(|<big|prod><rsub|i=1><rsup|n>L<rsub|i>|)>=<choice|<tformat|<table|<row|<cell|L<rsub|1><text|
      if >n=1>>|<row|<cell|L<rsub|n>\<circ\><big|prod><rsub|i=1><rsup|n-1><text|
      if >1\<less\>n>>>>>
    </equation*>
  </definition>

  A special case of the above is the following

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|X> a vector space and
    <math|L\<in\>Hom<around*|(|X|)>> then <math|L<rsup|n>> is recursively
    defined by\ 

    <\equation*>
      L<rsup|n>=<choice|<tformat|<table|<row|<cell|Id<rsub|X><text| if
      >n=0>>|<row|<cell|L\<circ\>L<rsup|n-1><text| if >0\<less\>n>>>>>
    </equation*>

    In essence we have defined the power of linear operators.
  </definition>

  We show now that the power of operators behaves as normal power functions.

  <\theorem>
    <label|spectral L^n+m=L^noL^m>Let <math|n,m\<in\>\<bbb-N\><rsub|0>>,
    <math|X> a vector space and <math|L\<in\>Hom<around*|(|X|)>> then\ 

    <\equation*>
      L<rsup|n+m>=L<rsup|n>\<circ\>L<rsup|m>
    </equation*>
  </theorem>

  <\proof>
    This is trivially proved by induction, so define\ 

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|L<rsup|n+m>=L<rsup|n>\<circ\>L<rsup|m>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>As <math|L<rsup|n+0>=L<rsup|n>=L<rsup|n>\<circ\>Id<rsub|X>=L<rsup|n>\<circ\>L<rsup|0><rsup|>>
      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S<rsub|n>\<Rightarrow\>n+1\<in\>S<rsub|n>>>As

      <\equation*>
        L<rsup|n+<around*|(|m+1|)>>=L<rsup|<around*|(|n+m|)>+1>=L<rsup|<around*|(|n+m|)>>\<circ\>L\<equallim\><rsub|m\<in\>S<rsub|n>><around*|(|L<rsup|n>\<circ\>L<rsup|m>|)>\<circ\>L=L<rsup|n>\<circ\><around*|(|L<rsup|m>\<circ\>L|)>=L<rsup|n>\<circ\>L<rsup|m+1>
      </equation*>

      proving that <math|n+1\<in\>S<rsub|n>>.
    </description>
  </proof>

  <\theorem>
    <label|spectral L^n is linear>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|X> a vector space and <math|L\<in\>Hom<around*|(|X|)>> then
    <math|L<rsup|n>\<in\>Hom<around*|(|X|)>>
  </theorem>

  <\proof>
    This is trivially proved by induction, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|L<rsup|n>\<in\>Hom<around*|(|X|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|L<rsup|0>=Id<rsub|X>\<in\>Hom<around*|(|X|)>>
      it follows that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|n\<in\>S> we
      have that <math|L<rsup|n>\<in\>Hom<around*|(|X|)>>, futher as
      <math|L\<in\>Hom<around*|(|X|)>> it follows form [theorem:
      <reference|linear mapping composition>] that
      <math|L<rsup|n+1>=L<rsup|n>\<circ\>L<rsup|1>=L<rsup|n>\<circ\><around*|(|L<rsup|1>\<circ\>L<rsup|0>|)>=L<rsup|n>\<circ\><around*|(|L\<circ\>Id<rsub|x>|)>=L<rsup|n>\<circ\>L\<in\>Hom<around*|(|X|)>>
      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  \;

  \ 

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
    <associate|auto-10|<tuple|<with|mode|<quote|math>|x\<perp\>y>|?>>
    <associate|auto-11|<tuple|Gram Schmidt|?>>
    <associate|auto-12|<tuple|18.3.1|?>>
    <associate|auto-13|<tuple|dual space|?>>
    <associate|auto-14|<tuple|Riesz Representation Theorm|?>>
    <associate|auto-15|<tuple|adjoint mapping|?>>
    <associate|auto-16|<tuple|<with|mode|<quote|math>|M<rsup|H>>|?>>
    <associate|auto-17|<tuple|symmetric matrix|?>>
    <associate|auto-18|<tuple|hermition matrix|?>>
    <associate|auto-19|<tuple|unitary matrix|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-20|<tuple|18.4|?>>
    <associate|auto-21|<tuple|18.4.1|?>>
    <associate|auto-22|<tuple|linear operator|?>>
    <associate|auto-23|<tuple|linear operator|?>>
    <associate|auto-3|<tuple|inner product|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<around*|\<langle\>||\<rangle\>>>|?>>
    <associate|auto-5|<tuple|complex inner product|?>>
    <associate|auto-6|<tuple|18.2|?>>
    <associate|auto-7|<tuple|inner product norm|?>>
    <associate|auto-8|<tuple|18.3|?>>
    <associate|auto-9|<tuple|orthogonality|?>>
    <associate|eq 18.1.146|<tuple|18.1|?>>
    <associate|eq 18.2.146|<tuple|18.3|?>>
    <associate|eq 18.2.146.1|<tuple|18.2|?>>
    <associate|eq 18.3.146|<tuple|18.4|?>>
    <associate|eq 18.4.146|<tuple|18.6|?>>
    <associate|eq 18.5.146|<tuple|18.7|?>>
    <associate|eq 18.5.146.2|<tuple|18.5|?>>
    <associate|eq 18.8.146|<tuple|18.8|?>>
    <associate|inner Gram-Schmidt procedure|<tuple|18.26|?>>
    <associate|inner Riesz Representation theorm|<tuple|18.31|?>>
    <associate|inner Schwartz in equality|<tuple|18.14|?>>
    <associate|inner adjoint and composition|<tuple|18.36|?>>
    <associate|inner adjoint of adjoint|<tuple|18.33|?>>
    <associate|inner adjoint operator|<tuple|18.32|?>>
    <associate|inner adjoint operator and composition|<tuple|18.36|?>>
    <associate|inner adjoint operator is linear|<tuple|18.34|?>>
    <associate|inner canonical basis are orthonormal|<tuple|18.23|?>>
    <associate|inner complex inner product properties|<tuple|18.8|?>>
    <associate|inner complex inner product space|<tuple|18.4|?>>
    <associate|inner complex product space construction|<tuple|18.11|?>>
    <associate|inner determinant of adjoint mapping|<tuple|18.43|?>>
    <associate|inner euclidean norm complex numbers|<tuple|18.17|?>>
    <associate|inner euclidean norm on finite dimensional spaces
    (complex)|<tuple|18.20|?>>
    <associate|inner euclidean norm on finite dimensional spaces
    (real)|<tuple|18.18|?>>
    <associate|inner euclidean norm real numbers|<tuple|18.16|?>>
    <associate|inner hermitian matrix|<tuple|18.40|?>>
    <associate|inner linear function from inner product|<tuple|18.30|?>>
    <associate|inner linear independence and orthogonality|<tuple|18.24|?>>
    <associate|inner matrix of adjoint operator|<tuple|18.42|?>>
    <associate|inner matrix of linear mapping|<tuple|18.25|?>>
    <associate|inner orthogonality|<tuple|18.21|?>>
    <associate|inner orthonormal set|<tuple|18.28|?>>
    <associate|inner orthonormal set definition|<tuple|18.22|?>>
    <associate|inner orthonormalization (1)|<tuple|18.27|?>>
    <associate|inner product and finite sums|<tuple|18.9|?>>
    <associate|inner product norm|<tuple|18.12|?>>
    <associate|inner product norm (1)|<tuple|18.15|?>>
    <associate|inner product on C^n|<tuple|18.7|?>>
    <associate|inner product on R^n|<tuple|18.3|?>>
    <associate|inner real inner product space|<tuple|18.1|?>>
    <associate|inner real inner product space properties|<tuple|18.2|?>>
    <associate|inner real product space construction|<tuple|18.10|?>>
    <associate|inner symmetric matrix|<tuple|18.39|?>>
    <associate|inner unitary matrix|<tuple|18.41|?>>
    <associate|spectral L^n is linear|<tuple|18.49|?>>
    <associate|spectral L^n+m=L^noL^m|<tuple|18.48|?>>
    <associate|spectral linear operator|<tuple|18.44|?>>
    <associate|spectral linear operator isomorphism|<tuple|18.45|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|inner product>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>||\<rangle\>>>>|<pageref|auto-4>>

      <tuple|<tuple|complex inner product>|<pageref|auto-5>>

      <tuple|<tuple|inner product norm>|<pageref|auto-7>>

      <tuple|<tuple|orthogonality>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|x\<perp\>y>>|<pageref|auto-10>>

      <tuple|<tuple|Gram Schmidt>|<pageref|auto-11>>

      <tuple|<tuple|dual space>|<pageref|auto-13>>

      <tuple|<tuple|Riesz Representation Theorm>|<pageref|auto-14>>

      <tuple|<tuple|adjoint mapping>|<pageref|auto-15>>

      <tuple|<tuple|<with|mode|<quote|math>|M<rsup|H>>>|<pageref|auto-16>>

      <tuple|<tuple|symmetric matrix>|<pageref|auto-17>>

      <tuple|<tuple|hermition matrix>|<pageref|auto-18>>

      <tuple|<tuple|unitary matrix>|<pageref|auto-19>>

      <tuple|<tuple|linear operator>|<pageref|auto-22>>

      <tuple|<tuple|linear operator>|<pageref|auto-23>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>Inner
      Product Spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      18.1<space|2spc>Definition and properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      18.2<space|2spc>Inner product norm <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      18.3<space|2spc>Orthogonality <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      <with|par-left|<quote|1tab>|18.3.1<space|2spc>Dual spaces and inner
      product <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      18.4<space|2spc>Spectral Theorem <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>

      <with|par-left|<quote|1tab>|18.4.1<space|2spc>Polynomials and linear
      operators <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>
    </associate>
  </collection>
</auxiliary>
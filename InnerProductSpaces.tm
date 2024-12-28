<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Inner Product Spaces>

  <section|Definition and properties>

  Inner products extends the notion of length and orthogonality of vectors in
  Euclidean space.\ 

  <\definition>
    <label|inner real inner product space><index|inner
    product><index|<math|<around*|\<langle\>||\<rangle\>>>>A
    <with|font-series|bold|real inner product space >is a pair
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    where <math|X> is a vector space over the field <math|\<bbb-R\>> together
    with a mapping [the <with|font-series|bold|inner product>]

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

  <\theorem>
    <label|inner product real subspace>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real inner product space and <math|Y\<subseteq\>X> a subspace of
    <math|X> then <math|<around*|\<langle\>|Y,<around*|\<langle\>||\<rangle\>><rsub|\|><rsub|Y\<times\>Y>|\<rangle\>>>
    is a real inner product space.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>Y> we have
      <math|<around*|\<langle\>|x,y|\<rangle\>><rsub|\|Y\<times\>Y>=<around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|y,x|\<rangle\>>=<around*|\<langle\>|y,x|\<rangle\>><rsub|\|Y\<times\>Y>>.

      <item><math|\<forall\>x,y,z\<in\>Y> and
      <math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> we have

      <\equation*>
        <around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>><rsub|\|Y\<times\>Y>=<around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>><rsub|\|Y\<times\>Y>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>><rsub|Y\<times\>Y>.
      </equation*>

      <item><math|\<forall\>x\<in\>Y<text| we have
      ><around*|\<langle\>|x,x|\<rangle\>><rsub|Y\<times\>Y>=<around*|\<langle\>|x,x|\<rangle\>>\<geqslant\>0>

      <item><math|\<forall\>x\<in\>Y> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>><rsub|\|Y\<times\>Y>\<Rightarrow\><around*|\<langle\>|x,x|\<rangle\>>=0\<Rightarrow\>x=0>
    </enumerate>
  </proof>

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

      <item>Let <math|y,z\<in\>X> then if <math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>>
      then <math|y=z>

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

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|z-y,y|\<rangle\>>>|<cell|\<equallim\>>|<cell|<around*|\<langle\>|z-y,z|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|z-y,<around*|(|z-y|)>+y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|z-y,z-y|\<rangle\>>+<around*|\<langle\>|z-y,y|\<rangle\>>>>>>
      </eqnarray*>

      so that <math|<around*|\<langle\>|z-y,z-y|\<rangle\>>=0>. Hence
      <math|z-y>=0 or <math|z=y>.

      \ <item>Given <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-R\>> we
      have:

      <\enumerate>
        <item><math|<around*|\<langle\>|\<alpha\>\<cdot\>x,y|\<rangle\>>=<around*|\<langle\>|0+\<alpha\>\<cdot\>x,y|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>\<equallim\><rsub|<around*|(|2|)>>\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>

        <item><math|<around*|\<langle\>|x,\<alpha\>\<cdot\>y|\<rangle\>>=<around*|\<langle\>|\<alpha\>\<cdot\>y,x|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>
      </enumerate>
    </enumerate>

    \;
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
    with a mapping [the <with|font-series|bold|inner product>]

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

  <\theorem>
    <label|inner product complex subspace>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real inner product space and <math|Y\<subseteq\>X> a subspace of
    <math|X> then <math|<around*|\<langle\>|Y,<around*|\<langle\>||\<rangle\>><rsub|\|><rsub|Y\<times\>Y>|\<rangle\>>>
    is a real inner product space.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>Y> we have
      <math|<around*|\<langle\>|x,y|\<rangle\>><rsub|\|Y\<times\>Y>=<around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|y,x|\<rangle\>>=<around*|\<langle\>|y,x|\<rangle\>><rsub|\|Y\<times\>Y>>.

      <item><math|\<forall\>x,y,z\<in\>Y> and
      <math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> we have

      <\equation*>
        <around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>><rsub|\|Y\<times\>Y>=<around*|\<langle\>|x+\<alpha\>\<cdot\>y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>><rsub|\|Y\<times\>Y>+\<alpha\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>><rsub|Y\<times\>Y>.
      </equation*>

      <item><math|\<forall\>x\<in\>Y<text| we have
      ><around*|\<langle\>|x,x|\<rangle\>><rsub|Y\<times\>Y>=<around*|\<langle\>|x,x|\<rangle\>>\<geqslant\>0>

      <item><math|\<forall\>x\<in\>Y> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>><rsub|\|Y\<times\>Y>\<Rightarrow\><around*|\<langle\>|x,x|\<rangle\>>=0\<Rightarrow\>x=0>
    </enumerate>
  </proof>

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

      <item>Let <math|y,z\<in\>X> then if <math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|x,z|\<rangle\>>>
      then <math|y=z>

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

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|z-y,y|\<rangle\>>>|<cell|\<equallim\>>|<cell|<around*|\<langle\>|z-y,z|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|z-y,<around*|(|z-y|)>+y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|z-y,z-y|\<rangle\>>+<around*|\<langle\>|z-y,y|\<rangle\>>>>>>
      </eqnarray*>

      so that <math|<around*|\<langle\>|z-y,z-y|\<rangle\>>=0>. Hence
      <math|z-y>=0 or <math|z=y>.

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
    be a real [or complex] inner product space, <math|n\<in\>\<bbb-N\>>,
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

  <\theorem>
    <label|inner condition for linear operator to be zero>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a <with|font-series|bold|complex >inner product space,
    <math|L\<in\>Hom<around*|(|X|)>> then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|L=0>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>=0>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|L=0> then we have
      <math|\<forall\>x\<in\>X> that <math|<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>=<around*|\<langle\>|0<around*|(|x|)>,x|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>\<equallim\><rsub|<text|[theorem:
      <reference|inner complex inner product properties>]>>0>.

      <item*|<math|\<Leftarrow\>>>Let <math|x,y\<in\>X> then we have:\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|L<around*|(|x+y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x-y|)>,x-y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|L<around*|(|x|)>+L<around*|(|y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x|)>-L<around*|(|y|)>,x-y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>-<around*|\<langle\>|L<around*|(|y|)>,x-y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|y|)>,x-y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,y|\<rangle\>>-<around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+2\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <around*|\<langle\>|L<around*|(|x+y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x-y|)>,x-y|\<rangle\>>=2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+2\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>
      </equation*>

      Further we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|L<around*|(|x+i\<cdot\>y|)>,x+i\<cdot\>y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x-i\<cdot\>y|)>,x-i\<cdot\>y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|L<around*|(|x|)>+i\<cdot\>L<around*|(|y|)>,x+i\<cdot\>y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x|)>-i\<cdot\>L<around*|(|y|)>,x-i\<cdot\>y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>-i\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|i\<cdot\>L<around*|(|y|)>,x+i\<cdot\>y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>-<around*|\<langle\>|L<around*|(|x|)>,-i\<cdot\>y|\<rangle\>>+i\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x-i\<cdot\>y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|-i\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|i\<cdot\>L<around*|(|y|)>,x+i\<cdot\>y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x|)>,-i\<cdot\>y|\<rangle\>>+i\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x-i\<cdot\>y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|-i\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|i\<cdot\>L<around*|(|y|)>,x+i\<cdot\>y|\<rangle\>>-i\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+i\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x-i\<cdot\>y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|-2\<cdot\>i\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|i\<cdot\>L<around*|(|y|)>,x+i\<cdot\>y|\<rangle\>>+i\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x-i\<cdot\>y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|-2\<cdot\>i\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+i\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,y|\<rangle\>>+i\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>-<around*|\<langle\>|L<around*|(|y|)>,y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|-2\<cdot\>i\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+2\<cdot\>i\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      Hence we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|L<around*|(|x+y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x-y|)>,x-y|\<rangle\>>+i\<cdot\><around*|(|<around*|\<langle\>|L<around*|(|x+i\<cdot\>y|)>,x+i\<cdot\>y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x-i\<cdot\>y|)>,x-i\<cdot\>y|\<rangle\>>|)>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+2\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>+i\<cdot\><around*|(|-2\<cdot\>i\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+2\<cdot\>i\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>|)>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+2\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>+2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>-2\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|4\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      As by the hypothesis <math|<around*|\<langle\>|L<around*|(|x+y|)>,x+y|\<rangle\>>=0>,
      <math|<around*|\<langle\>|L<around*|(|x-y|)>,x-y|\<rangle\>>=0>,
      <math|<around*|\<langle\>|L<around*|(|x+i\<cdot\>y|)>,x+i\<cdot\>y|\<rangle\>>=0>
      and <math|<around*|\<langle\>|L<around*|(|x-i\<cdot\>y|)>,x-i\<cdot\>y|\<rangle\>>=0>
      it follows that <math|<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>=0>.
      Take <math|y=L<around*|(|x|)>> then we have
      <math|<around*|\<langle\>|L<around*|(|x|)>,L<around*|(|x|)>|\<rangle\>>=0>,
      hence we have <math|L<around*|(|x|)>=0> for every <math|x\<in\>X> so
      that <math|L=0>.
    </description>
  </proof>

  <\note>
    The proof of the above theorem works only for the complex case, later we
    will prove that on a real finite dimensional inner product space the
    theorem is true for self-adjoint operators. [see theorem:
    <reference|spectral self-adjoint operator condition for operator to be
    zero>].
  </note>

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

        which as the square root is strictly increasing [see theorem:
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

        which as the square root is strictly increasing [see theorem:
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
    be the real vector space of pairs of real numbers equipped with the
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
  of giving a simple representation for the matrix of a linear mapping or of
  the expansion of a element in its basis.

  <\theorem>
    <label|inner expansion in a orthonormal basis>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>><rsub|X>|\<rangle\>>>
    be a finite dimensional real [or complex] inner product spaces with a
    orthonormal basis <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    then <math|\<forall\>x\<in\>X> we have
    <math|x=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\>e<rsub|i>>
  </theorem>

  <\proof>
    If <math|x\<in\>X> then there exist a
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>
    such that <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>.
    Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then\ 

    <\equation*>
      <around*|\<langle\>|x,e<rsub|k>|\<rangle\>>=<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>,e<rsub|k>|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,e<rsub|k>|\<rangle\>>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>\<delta\><rsub|i,k>=x<rsub|k>
    </equation*>

    so that\ 

    <\equation*>
      x=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\>e<rsub|i>
    </equation*>
  </proof>

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

  \;

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
    Using the Gram-Schmidt procedure [see theorem: <reference|inner
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

  The operator of taking the adjoint of a linear mapping is also linear as
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

  <\note>
    If <math|\<bbb-K\>=\<bbb-R\>> then <math|M<rsup|H>=M<rsup|T>> so if
    <math|M> is Hermitian if and only if <math|M> is symmetric
  </note>

  <\definition>
    <label|inner unitary matrix><index|unitary matrix><dueto|Unitary
    Matrix>Let <math|n,m\<in\>\<bbb-N\>> and
    <math|M\<in\>\<cal-M\><rsub|n,m><around*|(|\<bbb-K\>|)>> then <math|M> is
    unitary if\ 

    <\equation*>
      M<rsup|H>\<cdot\>M=E=M\<cdot\>M<rsup|H>
    </equation*>

    <\note>
      From the above definition it follows that if <math|M> is unitary then
      <math|M<rsup|-1>=M<rsup|H>>.
    </note>

    <\note>
      If <math|\<bbb-K\>=\<bbb-R\>> then <math|M<rsup|H>=M<rsup|T>>, hence if
      <math|M> is unitary then <math|M<rsup|-1>=M<rsup|T>>.
    </note>
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
  linear operators and polynomials.

  <\definition>
    <label|spectral linear operator><index|linear operator><index|linear
    operator>Let <math|X> be a vector space and <math|L:X\<rightarrow\>X> a
    mappings then <math|L> is a <with|font-series|bold|linear operator on X>
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
    <math|<big|odot><rsub|i=1><rsup|n>L<rsub|i>:X\<rightarrow\>X> is
    recursively defined by\ 

    <\equation*>
      <around*|(|<big|odot><rsub|i=1><rsup|n>L<rsub|i>|)>=<choice|<tformat|<table|<row|<cell|L<rsub|1><text|
      if >n=1>>|<row|<cell|L<rsub|n>\<circ\><big|odot><rsub|i=1><rsup|n-1><text|
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
      have that <math|L<rsup|n>\<in\>Hom<around*|(|X|)>>, further as
      <math|L\<in\>Hom<around*|(|X|)>> it follows form [theorem:
      <reference|linear mapping composition>] that
      <math|L<rsup|n+1>=L<rsup|n>\<circ\>L<rsup|1>=L<rsup|n>\<circ\><around*|(|L<rsup|1>\<circ\>L<rsup|0>|)>=L<rsup|n>\<circ\><around*|(|L\<circ\>Id<rsub|x>|)>=L<rsup|n>\<circ\>L\<in\>Hom<around*|(|X|)>>
      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\theorem>
    <label|spectral composition of injective linear mappings>Let <math|X> be
    a vector space, <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|L<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>Hom<around*|(|X|)>>
    such that <math|<rigid|\<forall\>i\<in\>ker<around*|(|L<rsub|i>|)>=<around*|{|0|}>>>
    then\ 

    <\equation*>
      ker<around*|(|<big|odot><rsub|i=1><rsup|n>L<rsub|i>|)>=<around*|{|0|}>
    </equation*>

    In other words, using [theorem: <reference|linear mapping injectivity and
    kernel>], if <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|L<rsub|i>> is injective then <math|<big|odot><rsub|i=1><rsup|n>L<rsub|i>>
    is injective.
  </theorem>

  <\proof>
    We use induction to prove this, so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|{|L<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>Hom<around*|(|X|)><text|
      satisfies that >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >ker<around*|(|L<rsub|i>|)>=<around*|{|0|}><text| then
      ><rigid|ker<around*|(|<big|odot><rsub|i=1><rsup|n>L<rsub|i>|)>=<around*|{|0|}>>|}>
    </equation*>

    we have:

    <\description>
      <item*|<math|1\<in\>S>>Let <math|<around*|{|L<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>Hom<around*|(|X|)>>
      with <math|ker<around*|(|L<rsub|1>|)>=<around*|{|0|}>> then we have
      <math|ker<around*|(|<big|odot><rsub|i=1><rsup|1>L<rsub|i>|)>=ker<around*|(|L<rsub|1>|)>=<around*|{|0|}>>
      which proves that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|L<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>Hom<around*|(|X|)>>
      with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>>
      <math|ker<around*|(|L<rsub|i>|)>=<around*|{|0|}>>. If
      <math|x\<in\>ker<around*|(|<big|odot><rsub|i=1><rsup|n+1>L<rsub|i>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<around*|(|<big|odot><rsub|i=1><rsup|n+1>L<rsub|i>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|n+1>\<circ\><big|odot><rsub|i=1><rsup|n>L<rsub|i>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|n+1><around*|(|<around*|(|<big|odot><rsub|i=1><rsup|n>L<rsub|i>|)><around*|(|x|)>|)>>>>>
      </eqnarray*>

      hence as <math|ker<around*|(|L<rsub|n+1>|)>=<around*|{|0|}>> we must
      have that <math|<around*|(|<big|odot><rsub|i=1><rsup|n>L<rsub|i>|)><around*|(|x|)>=0>,
      hence as <math|n\<in\>S>, it follows that <math|x=0>. So
      <math|ker<around*|(|<big|odot><rsub|i=1><rsup|n+1>L<rsub|i>|)>=<around*|{|0|}>>
      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  We are now ready to introduce polynomial linear operators.

  <\definition>
    <label|spectral polynomial operator>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|X> a vector space over <math|\<bbb-C\>>,
    <math|L\<in\>Hom<around*|(|X|)>> and <math|p\<in\>\<cal-P\><rsub|n>> a
    polynomial of order <math|n> [see definition: <reference|fundamental
    polynomal>] then <math|p<around*|[|L|]>:X\<rightarrow\>X> is defined by\ 

    <\equation*>
      p<around*|[|L|]><around*|(|x|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>
    </equation*>

    where <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    is the unique family with <math|\<alpha\><rsub|n>\<neq\>0> such that
    <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>
    [see definition: <reference|fundamental polynomal>] and [theorem:
    <reference|fundamental coefficients are unique (1)>]. Linear operators of
    the form <math|p<around*|[|L|]>> where <math|p> is a polynomial of order
    <math|n> are called <with|font-series|bold|polynomial operators of order
    <math|>n>.

    <\note>
      Using [theorems: <reference|linear mapping Hom(X,Y)> and
      <reference|spectral L^n is linear>] it follows that
      <math|p<around*|[|L|]>\<in\>Hom<around*|(|X|)>>.
    </note>
  </definition>

  We prove now that the product of polynomials is equal to the composition of
  the associated polynomial operator. This allows us to uplift properties of
  polynomials to polynomial operator.

  <\theorem>
    <label|spectral polynomial operator composition and polynomial
    product>Let <math|X> be a vector space over <math|\<bbb-C\>>,
    <math|p,q\<in\>\<cal-P\><rsub|n>> polynomial operators of order <math|n>
    and <math|L\<in\>Hom<around*|(|X|)>> then we have\ 

    <\equation*>
      <around*|(|p\<cdot\>q|)><around*|[|L|]>=p<around*|[|L|]>\<circ\>q<around*|[|L|]>
    </equation*>

    <\note>
      By [theorem: <reference|fundamental product of polynomials is a
      polynomial>] it is guaranteed that <math|p\<cdot\>q> is a polynomial so
      that <math|<around*|(|p\<cdot\>q|)>> makes sense.
    </note>
  </theorem>

  <\proof>
    Let <math|p> be defined by <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    and <math|q> be defined by <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>\<subseteq\>\<bbb-C\>>.
    Then by [theorem: <reference|fundamental product of polynomials is a
    polynomial>] we have that

    <\equation>
      <label|eq 18.9.146>p\<cdot\>q<text| has coefficients
      ><around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+m|}>><text|
      where >c<rsub|i>=<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>>a<rsub|k>\<cdot\>b<rsub|l>
    </equation>

    Next we calculate <math|p<around*|[|L|]>\<circ\>q<around*|[|L|]>>, let
    <math|x\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|p<around*|[|L|]>\<circ\>q<around*|[|L|]>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|p<around*|[|L|]><around*|(|q<around*|[|L|]><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>L<rsup|i><around*|(|q<around*|[|L|]><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>L<rsup|i><around*|(|<big|sum><rsub|j=1><rsup|m>b<rsub|j>\<cdot\>L<rsup|j><around*|(|x|)><rsup|>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|spectral L^n is linear>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\><big|sum><rsub|j=1><rsup|m>b<rsub|j>\<cdot\>L<rsup|i><around*|(|L<rsup|j><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>a<rsub|i>\<cdot\>b<rsub|j>\<cdot\>L<rsup|i><around*|(|L<rsup|j><around*|(|x|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>a<rsub|i>\<cdot\>b<rsub|j>\<cdot\><around*|(|L<rsup|i>\<circ\>L<rsup|j>|)><around*|(|x|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|spectral L^n+m=L^noL^m>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>a<rsub|i>\<cdot\>b<rsub|j>\<cdot\>L<rsup|i+j><around*|(|x|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum distributivity>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>>a<rsub|i>\<cdot\>b<rsub|j>\<cdot\>L<rsup|i+j><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 17.8.145>, theorem: <reference|sum over disjoint
      subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|n+m><around*|(|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>>a<rsub|k>\<cdot\>b<rsub|l>\<cdot\>L<rsup|k+l><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|n+m><around*|(|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>>a<rsub|k>\<cdot\>b<rsub|l>\<cdot\>L<rsup|i><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|n+m><around*|(|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>>a<rsub|k>\<cdot\>b<rsub|l>|)>\<cdot\>L<rsup|i><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 18.9.146>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|n+m>c<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 18.9.146>]>>>|<cell|>>|<row|<cell|<around*|(|p\<cdot\>q|)><around*|[|L|]><around*|(|x|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    which proves that\ 

    <\equation*>
      p<around*|[|L|]>\<circ\>q<around*|[|L|]>=<around*|(|p\<cdot\>q|)><around*|[|L|]>
    </equation*>
  </proof>

  The above can be extended, by induction.

  <\theorem>
    <label|spectral finite product of polynomial>Let <math|n\<in\>\<bbb-N\>>,
    <math|X> a vector space over <math|\<bbb-C\>>,
    <math|<around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-P\>>
    a finite family of polynomials and <math|L\<in\>Hom<around*|(|X|)>> then\ 

    <\equation*>
      <around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)><around*|[|L|]>=<big|odot><rsub|i=1><rsup|n>p<rsub|i><around*|[|L|]>
    </equation*>
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><text|
      then ><around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)><around*|[|L|]>=<big|odot><rsub|i=1><rsup|n>p<rsub|i><around*|[|L|]>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|<around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-P\>>
      then <math|<around*|(|<big|prod><rsub|i=1><rsup|1>p<rsub|i>|)><around*|[|L|]>=p<rsub|1><around*|[|L|]>=<big|odot><rsub|i=1><rsup|1>p<rsub|i><around*|[|L|]>>
      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
      <math|<around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-P\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n+1>p<rsub|i>|)><around*|[|L|]>>|<cell|=>|<cell|<around*|(|p<rsub|n+1>\<cdot\><big|prod><rsub|i=1><rsup|n>p<rsub|i>|)><around*|[|L|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|spectral polynomial operator composition and polynomial
        product>]>>>|<cell|p<rsub|n+1><around*|[|L|]>\<circ\><around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)><around*|[|L|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|p<rsub|n+1><around*|[|L|]>\<circ\><big|odot><rsub|i=1><rsup|n>p<rsub|i><around*|[|L|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|odot><rsub|i=1><rsup|n+1>p<rsub|i><around*|[|L|]>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\definition>
    Let <math|X> be a vector space over <math|\<bbb-C\>> and
    <math|L\<in\>Hom<around*|(|X|)>> then we define
    <math|\<cal-P\><around*|[|L|]>> by\ 

    <\equation*>
      \<cal-P\><around*|[|L|]>=<around*|{|p<around*|[|L|]>\|p\<in\>\<cal-P\>|}>
    </equation*>

    In essence <math|\<cal-P\><around*|[|L|]>> is the set of all the
    polynomial operators based on the linear operator <math|L>.
  </definition>

  <\theorem>
    <label|spectral P[L] is a abelian semi group>Let X be a vector space over
    <math|\<bbb-C\>> and <math|L\<in\>Hom<around*|(|X|)>> then
    <math|<around*|\<langle\>|\<cal-P\><around*|[|L|]>,\<circ\>|\<rangle\>>>
    is a Abelian semi group with neutral element <math|Id<rsub|X>>.
  </theorem>

  <\proof>
    First if <math|x,y\<in\>\<cal-P\><around*|[|L|]>> then there exist
    <math|p,q\<in\>\<cal-P\>> such that <math|x=p<around*|[|L|]>> and
    <math|y=q<around*|[|L|]>>, so we have by [theorem: <reference|spectral
    polynomial operator composition and polynomial product>] we have that
    <math|x\<circ\>y=p<around*|[|L|]>\<circ\>q<around*|[|L|]>=<around*|(|p\<cdot\>q|)><around*|[|L|]>\<in\>\<cal-P\><around*|[|L|]>>.
    Hence\ 

    <\equation*>
      \<circ\>:\<cal-P\><around*|[|L|]>\<times\>\<cal-P\><around*|[|L|]>\<rightarrow\>\<cal-P\><around*|[|L|]><text|
      defined by >\<circ\><around*|[|x,y|]>=x\<circ\>y
    </equation*>

    is well defined. Further we have:

    <\description>
      <item*|associativity>This is trivial as composition of functions is
      associative.

      <item*|neutral element>Take <math|<around*|{|a<rsub|i><rsub|>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>\<bbb-C\>>
      define by <math|a<rsub|0>=1> then <math|p<rsub|>> defined by
      <rigid|<math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|0>a<rsub|i>\<cdot\>z<rsup|i>=a<rsub|0>\<cdot\>z<rsup|0>=a<rsub|0>>>
      is a element of <math|\<cal-P\>>. Then <math|p<around*|[|L|]>> is
      defined by

      <\equation*>
        p<around*|[|L|]><around*|(|x|)>=<big|sum><rsub|i=0><rsup|0>a<rsub|i>\<cdot\>L<rsup|i><around*|(|z|)>=L<rsup|0><around*|(|z|)>=Id<rsub|X><around*|(|z|)>
      </equation*>

      proving that <math|Id<rsub|X>\<in\>\<cal-P\><around*|[|L|]>>. Further
      if <math|x\<in\>\<cal-P\><around*|[|L|]>> then we have that
      <math|x\<circ\>Id<rsub|X>=x=Id<rsub|X>\<circ\>x>. Hence
      <math|Id<rsub|X>> is the neutral element in
      <math|<around*|\<langle\>|\<cal-P\><around*|[|L|]>,\<circ\>|\<rangle\>>>.

      <item*|commutativity>If <math|x,y\<in\>\<cal-P\><around*|[|L|]>> then
      there exist <math|p,q\<in\>\<cal-P\>> such that
      <math|x=\<cal-P\><around*|[|L|]>> and
      <math|y=\<cal-P\><around*|[|L|]>>. SO we have\ 

      <\equation*>
        x\<circ\>y=p<around*|[|L|]>\<circ\>q<around*|[|L|]>\<equallim\><rsub|<text|[theorem:
        <reference|spectral polynomial operator composition and polynomial
        product>]>><around*|(|p\<cdot\>q|)><around*|[|L|]>=<around*|(|q\<cdot\>p|)><around*|[|L|]>\<equallim\><rsub|<text|[theorem:
        <reference|spectral polynomial operator composition and polynomial
        product>]>>q<around*|[|L|]>\<circ\>p<around*|[|L|]>
      </equation*>
    </description>
  </proof>

  The above can be used to prove that composition is stable under
  permutations.

  <\theorem>
    <label|spectral composition and permutations>Let <math|n\<in\>\<bbb-N\>>,
    <math|X> a vector space over <math|\<bbb-C\>>,
    <math|L\<in\>Hom<around*|(|X|)>> then if
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><around*|[|L|]>>
    and <math|\<sigma\>\<in\>P<rsub|n>> then we have that

    <\equation*>
      <big|odot><rsub|i=1><rsup|n>x<rsub|i>=<big|odot><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>
    </equation*>
  </theorem>

  <\proof>
    By the previous theorem [theorem: <reference|spectral P[L] is a abelian
    semi group>] <math|\<circ\>> can be considered the sum of the Abelian
    group <math|<around*|\<langle\>|\<cal-P\><around*|[|L|]>,\<circ\>|\<rangle\>>>
    and <math|<big|odot><rsub|i=1><rsup|n>x<rsub|i>> as a finite sum. The
    theorem follows then from [theorem: <reference|sum commutativity>].
  </proof>

  The following theorem shows how we can factorize polynomial operators.

  <\theorem>
    <label|spectral factorization of polynomial operators>Let <math|X> be a
    vector space over <math|\<bbb-C\>>, <math|L\<in\>Hom<around*|(|X|)>> and
    <math|p\<in\>\<cal-P\>> a polynomial of order <math|n\<in\>\<bbb-N\>> [in
    other words a non constant polynomial] then there exist a
    <math|c\<in\>\<bbb-C\>\\<around*|{|0|}>> and a family
    <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    such that that\ 

    <\equation*>
      p<around*|[|L|]>=c\<cdot\><big|odot><rsub|i=1><rsup|n><around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|fundamental factorization of a polynomial
    (1)>] there exist a <math|c\<in\>\<bbb-C\>\\<around*|{|0|}>> and
    <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    such that\ 

    <\equation>
      <label|eq 18.10.146>p<around*|(|z|)>=c\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|z-\<lambda\><rsub|i>|)>=C<rsub|c><around*|(|z|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|z-\<lambda\><rsub|i>|)>
    </equation>

    Given <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have for
    <math|p<rsub|i>:\<bbb-C\>\<rightarrow\>\<bbb-C\>> defined by
    <math|p<rsub|i><around*|(|z|)>=x-\<lambda\><rsub|i>> that
    <math|p<rsub|i><around*|(|z|)>=z-\<lambda\><rsub|i>=<big|sum><rsub|j=0><rsup|1>c<rsub|i,j>\<cdot\>z<rsup|j>>
    where <math|c<rsub|i,0>=-\<lambda\><rsub|i>> and
    <math|c<rsub|i,1>=1\<neq\>1> so that <math|p<rsub|i>> is a polynomial of
    order <math|1>. Further, as for <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>a<rsub|i>>
    with <math|a<rsub|0>=c> we have <math|<big|sum><rsub|i=0><rsup|0>a<rsub|i>\<cdot\>z<rsup|i>=a<rsub|0>\<cdot\>z<rsup|0>=C<rsub|z><around*|(|z|)>>
    it follows that <math|C<rsub|c>> is a polynomial of order <math|0>. So if
    we define

    <\equation*>
      <around*|{|q<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-P\><text|
      by >q<rsub|i>=<choice|<tformat|<table|<row|<cell|C<rsub|c><text| if
      >i=n+1>>|<row|<cell|p<rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>
    </equation*>

    then we have for <math|z\<in\>\<bbb-C\>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n+1>q<rsub|i>|)><around*|(|z|)>>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n+1>q<rsub|i><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|q<rsub|n+1><around*|(|z|)>\<cdot\><big|prod><rsub|i=1><rsup|n>q<rsub|i><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|C<rsub|c><around*|(|z|)>\<cdot\><big|prod><rsub|i=1><rsup|n>p<rsub|i><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|z-\<lambda\><rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|p<around*|(|z|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.11.146>p=<big|prod><rsub|i=1><rsup|n+1>q<rsub|i>
    </equation>

    Now if <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have for
    <math|x\<in\>X> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|q<rsub|i><around*|[|L|]><around*|(|x|)>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|0>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)><text|
      if >i=n+1>>|<row|<cell|<big|sum><rsub|j=0><rsup|0>c<rsub|i,j>\<cdot\>L<rsup|j><around*|(|x|)><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|c\<cdot\>L<rsup|0><around*|(|x|)><text|
      if >i=n+1<text| if >i=n+1>>|<row|<cell|-\<lambda\><rsub|i>\<cdot\>L<rsup|0><around*|(|x|)>+1\<cdot\>L<rsup|1><around*|(|x|)><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|c\<cdot\>Id<rsub|X><around*|(|x|)><text|
      if >i=n+1>>|<row|<cell|L<around*|(|x|)>-\<lambda\><rsub|i>\<cdot\>Id<rsub|X><around*|(|x|)><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|c\<cdot\>Id<rsub|X>|)><around*|(|x|)><text|
      if >i=n+1>>|<row|<cell|<around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)><around*|(|x|)><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 18.12.146>q<rsub|i><around*|[|L|]>=<choice|<tformat|<table|<row|<cell|c\<cdot\>Id<rsub|X><text|
      if >i=n+1>>|<row|<cell|<around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>
      if i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>
    </equation>

    Hence we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|p<around*|[|L|]>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|eq 18.11.146>]>>>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n+1>q<rsub|i>|)><around*|[|L|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|spectral finite product of
      polynomial>]>>>|<cell|<big|odot><rsub|i=1><rsup|n+1>q<rsub|i><around*|[|L|]>>>|<row|<cell|>|<cell|=>|<cell|q<rsub|n+1><around*|[|L|]>\<circ\><big|odot><rsub|i=1><rsup|n>q<rsub|i><around*|[|L|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 18.12.146>]>>>|<cell|<around*|(|c\<cdot\>Id<rsub|X>|)>\<circ\><big|odot><rsub|i=1><rsup|n><around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><big|odot><rsub|i=1><rsup|n><around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>>>>>
    </eqnarray*>
  </proof>

  <subsection|Eigenvectors and eigenvalues.>

  <\definition>
    <label|spectral eigen vectors and values><index|eigen vector><index|eigen
    value>Let <math|X> be a vector space over a field <math|\<cal-F\>> and
    <math|L\<in\>Hom<around*|(|X|)>> then <math|x\<in\>X> is a
    <with|font-series|bold|eigenvector >with
    <with|font-series|bold|eigenvalue ><math|\<lambda\>\<in\>\<cal-F\>> if\ 

    <\equation*>
      x\<neq\>0<text| and >L<around*|(|x|)>=\<lambda\>\<cdot\>x
    </equation*>

    <\note>
      The condition <math|x\<neq\>0> is essential because
      <math|L<around*|(|0|)>=0=\<lambda\>\<cdot\>0> for all
      <math|\<lambda\>\<in\>\<cal-F\>>, hence if we want to have a special
      meaning for <math|\<lambda\>> we must exclude the case <math|x=0>.
    </note>
  </definition>

  It turns out that in a non trivial finite dimensional vector spaces over
  <math|\<bbb-C\>> every <math|L\<in\>Hom<around*|(|X|)>> has eigenvectors
  with eigenvalues.

  <\theorem>
    <label|spectral eigenvectors exist in a finite dimensional complex
    space>Let <math|X> be finite dimensional vector space over
    <math|\<bbb-C\>> with <math|dim<around*|(|X|)>\<in\>\<bbb-N\>> [in other
    words <math|X> is not trivial] then ever <math|L\<in\>Hom<around*|(|X|)>>
    has at least one eigenvector.
  </theorem>

  <\proof>
    Let <math|n=dim<around*|(|X|)>> then as <math|n\<neq\>0> there exist a
    <math|x\<in\>X> with <math|x\<neq\>0>. Consider now the set
    <math|W=<around*|{|L<rsup|0><around*|(|x|)>,\<ldots\>,L<rsup|n><around*|(|x|)>|}>\<subseteq\>X>
    of <math|n+1> vectors in <math|X>. As <math|dim<around*|(|X|)>=n>
    <math|W> must be linear dependent [see theorem: <reference|basis card(S)
    \<gtr\> dim(V) then S is linear dependent>]]. Hence there exist a family
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    such that <math|\<exists\>k\<in\><around*|{|0,\<ldots\>,n|}>> with
    <math|a<rsub|k>\<neq\>0> such that\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=0
    </equation*>

    As <math|k\<in\><around*|{|i\<in\><around*|{|0,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|}>>,
    <math|m=max<around*|(|<around*|{|i\<in\><around*|{|0,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|}>|)>>
    exist.

    <\equation*>
      0=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>+<big|sum><rsub|i\<in\><around*|{|m+1,\<ldots\>,n|}>>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>
    </equation*>

    hence we have\ 

    <\equation>
      <label|eq 18.13.146><big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=0<text|
      and >a<rsub|m>\<neq\>0
    </equation>

    If <math|m=0> then <math|0=<big|sum><rsub|i=0><rsup|0>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=a<rsub|o>\<cdot\>L<rsup|0><around*|(|x|)>=a<rsub|0>\<cdot\>Id<around*|(|x|)>=a<rsub|0>\<cdot\>x>
    which, as <math|a<rsub|0>\<neq\>0> leads to the contradiction
    <math|0=x\<neq\>0>. Take the polynomial <math|p\<in\>\<cal-P\>> defined
    by <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>z<rsup|i>>
    then as <math|m\<in\>\<bbb-N\>> we have by [theorem: <reference|spectral
    factorization of polynomial operators>] that there exists a
    <math|c\<in\>\<bbb-C\>\\<around*|{|0|}>> and <math|>a family
    <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    such that

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>L<rsup|i>=p<around*|[|L|]>=c\<cdot\><big|odot><rsub|i=1><rsup|n><around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>
    </equation*>

    So we have by [eq: <reference|eq 18.13.146>]

    <\equation*>
      0=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=<around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>L<rsup|i>|)><around*|(|x|)>=c\<cdot\><around*|(|<big|odot><rsub|i=1><rsup|n><around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>|)><around*|(|x|)>
    </equation*>

    which as <math|c\<neq\>0> proves that
    <math|<around*|(|<big|odot><rsub|i=1><rsup|n><around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>|)><around*|(|x|)>=0>
    which as <math|x\<neq\>0> proves that

    <\equation*>
      ker<around*|(|<big|odot><rsub|i=1><rsup|n><around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>|)>\<neq\><around*|{|0|}>
    </equation*>

    Assume that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|ker<around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>=<around*|{|0|}>>
    then by [theorem: <reference|spectral composition of injective linear
    mappings>] <math|<rigid|ker<around*|(|<big|odot><rsub|i=1><rsup|n><around*|(|L-\<lambda\><rsub|i>\<cdot\>Id<rsub|X>|)>|)>=<around*|{|0|}>>>
    contradicting the above. Hence there exist a
    <math|l\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|ker<around*|(|L-\<lambda\><rsub|l>\<cdot\>Id<rsub|X>|)>\<neq\><around*|{|0|}>>,
    so there exist a <math|w\<in\>X> with <math|w\<neq\>0> such that
    <math|<around*|(|L-\<lambda\><rsub|l>\<cdot\>Id<rsub|X>|)><around*|(|w|)>=L<around*|(|w|)>-\<lambda\><rsub|l>\<cdot\>x=0>
    or <math|L<around*|(|w|)>=\<lambda\><rsub|l>\<cdot\>w>. So we found a
    eigenvector <math|w> with eigenvalue <math|\<lambda\><rsub|l>>.
  </proof>

  TODO some theorems about eigenvalues

  <\definition>
    <label|spectral eigenspace><index|eigenspace><index|<math|E<around*|(|L,\<lambda\>|)>>><dueto|eigenspace>Let
    <math|X> be a vector space over a field <math|\<cal-F\>> and
    <math|L\<in\>Hom<around*|(|X|)>> with a eigenvalue <math|\<lambda\>> then
    the <with|font-series|bold|eigenspace> of <math|\<lambda\>> note by
    <math|E<around*|(|L,\<lambda\>|)>> is defined by\ 

    <\equation*>
      E<around*|(|L,\<lambda\>|)>=<around*|{|x\<in\>X\|L<around*|(|x|)>=\<lambda\>\<cdot\>x|}>
    </equation*>

    <\note>
      As <math|L<around*|(|0|)>=0=\<lambda\>\<cdot\>0> we have that
      <math|0\<in\>E<around*|(|L,\<lambda\>|)>> although <math|0> is not a
      eigenvector.\ 
    </note>
  </definition>

  <\theorem>
    <label|spectral eigenspace \<less\>\<gtr\> {0}>Let <math|X> be a vector
    space over a field <math|\<cal-F\>> and <math|L\<in\>Hom<around*|(|X|)>>
    then if <math|\<lambda\>> is a eigenvalue of <math|L> then
    <math|E<around*|(|L,\<lambda\>|)>> is a non trivial sub-space of
    <math|X>.
  </theorem>

  <\proof>
    As <math|\<lambda\>> is a eigenvalue of <math|L> there exist a
    <math|x\<in\>X> such that <math|L<around*|(|x|)>=\<lambda\>\<cdot\>x>,
    hence

    <\equation*>
      \<emptyset\>\<neq\>E<around*|(|L,\<lambda\>|)>=<around*|{|x\<in\>X\|L<around*|(|x|)>=\<lambda\>\<cdot\>x|}>\<neq\><around*|{|0|}>
    </equation*>

    If <math|x,y\<in\>E<around*|(|L,\<lambda\>|)>> and
    <math|\<alpha\>\<in\>\<cal-F\>> then <math|L<around*|(|x+\<alpha\>\<cdot\>y|)>=L<around*|(|x|)>+\<alpha\>\<cdot\>L<around*|(|y|)>=\<lambda\>\<cdot\>x+\<alpha\>\<cdot\>\<lambda\>\<cdot\>y=\<lambda\>\<cdot\><around*|(|x+\<alpha\>\<cdot\>y|)>>
    proving that <math|x+\<alpha\>\<cdot\>y\<in\>E<around*|(|L,\<lambda\>|)>>
  </proof>

  <\theorem>
    <label|spectral distinct eigenvalues and linear independence>Let <math|X>
    be a vector space over a field <math|\<cal-F\>> and
    <math|L\<in\>Hom<around*|(|X|)>>, <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of eigenvectors with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    a eigenvalue <math|\<lambda\><rsub|i>> such that
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> we have <math|\<lambda\><rsub|i>\<neq\>\<lambda\><rsub|j>>
    then <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is linear independent. In other words if
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is a finite family of eigenvectors with distinct eigenvalues then
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is linear independent.
  </theorem>

  <\proof>
    Assume that <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is linear dependent then by [theorem: <reference|linear dependent family
    alternative (1)>] there exists a <math|k\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<subseteq\>F>
    such that <math|e<rsub|k>\<in\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>>.
    So the finite set\ 

    <\equation*>
      A=<around*|{|k\<in\><around*|{|1,\<ldots\>,n|}>\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<ni\><around*|{|1,\<ldots\>,k-1|}>>\<subseteq\>F<text|
      such that >e<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|}>
    </equation*>

    is not empty. Hence <math|k=min<around*|(|A|)>> exist and there exist a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<subseteq\>F>
    such that

    <\equation*>
      x<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>
    </equation*>

    If <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>>
    is again dependent then by \ [theorem: <reference|linear dependent family
    alternative (1)>] again there exist a
    <math|<rigid|l\<in\><around*|{|1,\<ldots\>,k-1|}>\<subseteq\><around*|{|1,\<ldots\>,n|}>>>
    and <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l-1|}>>\<subseteq\>F>
    such that <math|e<rsub|l>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>>,
    hence <math|l\<in\>A>, contradicting the fact that
    <math|k=min<around*|(|A|)>> [as <math|l\<leqslant\>k-1\<less\>k>]. So
    <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k-1|}>|}>> must
    be linear independent. Hence we have that\ 

    <\equation*>
      e<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i><text|
      and ><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k-1|}>|}><text|
      is linear independent>
    </equation*>

    Applying then <math|L> we get

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><rsub|k>\<cdot\>e<rsub|k>>|<cell|=>|<cell|L<around*|(|e<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>L<around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>\<lambda\><rsub|i>\<cdot\>e<rsub|i>>>>>
    </eqnarray*>

    As also <math|\<lambda\><rsub|k>\<cdot\>e<rsub|k>=\<lambda\><rsub|k>*\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>\<lambda\><rsub|k>\<cdot\>e<rsub|i>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>\<lambda\><rsub|i>\<cdot\>e<rsub|i>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>\<lambda\><rsub|k>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\><around*|(|\<lambda\><rsub|i>-\<lambda\><rsub|k>|)>\<cdot\>e<rsub|i>>>>>
    </eqnarray*>

    Given that <math|<text|><around*|{|e<rsub|1>,\<ldots\>,e<rsub|k-1>|}>> is
    linear independent we have that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k-1|}>>
    <math|\<alpha\><rsub|i>\<cdot\><around*|(|\<lambda\><rsub|i>-\<lambda\><rsub|k>|)>=0>
    which as <math|\<lambda\><rsub|k>\<neq\>\<lambda\><rsub|i>> [because
    <math|k\<neq\>i>] proves that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k-1|}>>
    <math|\<alpha\><rsub|i>=0>. Hence <math|e<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>=0>
    contradicting then fact that <math|e<rsub|k>\<neq\>0> because
    <math|e<rsub|k>> is a eigenvector. So the assumption wrong and\ 

    <\equation*>
      <around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}><text| is linear
      independent.>
    </equation*>
  </proof>

  <\theorem>
    <label|spectral number of eigenvalues>Let <math|X> be a finite
    dimensional vector space over a field <math|\<cal-F\>> and
    <math|L\<in\>Hom<around*|(|X|)>> then
    <math|card<around*|(|<around*|{|\<lambda\>\<in\>\<cal-F\>\|\<lambda\><text|
    is a eigenvalue for >L|}>|)>\<leqslant\>dim<around*|(|X|)>>. In other
    words every linear operator has at most <math|dim<around*|(|X|)>>
    distinct eigenvalues.
  </theorem>

  <\proof>
    Let <math|\<Lambda\>=<around*|{|\<lambda\>\<in\>\<cal-F\>\|\<lambda\><text|
    is a eigenvalue of >L|}>=<around*|{|\<lambda\>\<in\>\<cal-F\>\|\<exists\>x\<in\>X<text|
    such that >L<around*|(|x|)>=\<lambda\>\<cdot\>x|}>>, If
    <math|<rigid|m=card<around*|(|\<Lambda\>|)>>> then we can write
    <math|\<Lambda\>> as

    <\equation*>
      \<Lambda\>=<around*|{|\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|m>|}>
      <around*|[|meaning that \<lambda\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>\<Lambda\><text|
      is a bijection>|]>
    </equation*>

    For each <math|i\<in\><around*|{|1,\<ldots\>,m|}>> we can find by
    definition a eigenvector <math|x\<in\>X> such that
    <math|L<around*|(|x|)>=\<lambda\><rsub|i>\<cdot\>x> allowing us to define
    a family <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|L<around*|(|e<rsub|i>|)>=\<lambda\><rsub|i>\<cdot\>e<rsub|i>> [see
    theorem: <reference|choice function generating>]. Let
    <math|i,j\<in\><around*|{|1,\<ldots\>,m|}>> with <math|i\<neq\>j> then,
    as <math|\<lambda\>> is a bijection, <math|\<lambda\><rsub|i>\<neq\>\<lambda\><rsub|j>>,
    so by the previous theorem [theorem: <reference|spectral distinct
    eigenvalues and linear independence>]
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    is linear independent. Hence by [theorem:<reference|linear independent
    family set>] <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>>
    is linear independent set with <math|card<around*|(|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>|)>=m>.
    Using then [theorem: <reference|basis card(S) \<gtr\> dim(V) then S is
    linear dependent>] it follows that we must have that
    <math|m\<leqslant\>dim<around*|(|X|)>> or\ 

    <\equation*>
      card<around*|(|<around*|{|\<lambda\>\<in\>\<cal-F\>\|\<lambda\><text|
      is a eigenvalue of >L|}>|)>\<leqslant\>dim<around*|(|X|)>
    </equation*>
  </proof>

  <\theorem>
    <label|spectral sum of eigenspaces>Let <math|X> be a finite dimensional
    vector space over a field <math|\<cal-F\>> and
    <math|L\<in\>Hom<around*|(|X|)>> with eigenvalues
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>,
    <math|n\<in\>\<bbb-N\>> then for <math|E<around*|(|L,\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>>
    defined by\ 

    <\equation*>
      E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>=span<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>|)>
    </equation*>

    \ we have:

    <\enumerate>
      <item><math|E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>>
      is a sub-space of <math|X>

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|E<around*|(|L,\<lambda\><rsub|i>|)>> is a sub-space of
      <math|E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>>

      <item><math|E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>>

      <item><math|dim<around*|(|E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>|)>=<big|sum><rsub|i=1><rsup|n>dim<around*|(|E<around*|(|L,\<lambda\><rsub|i>|)>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from [theorem: <reference|linear span is a
      sub-space>].

      <item>Let <math|i\<in\>I> then by [theorem: <reference|spectral
      eigenspace \<less\>\<gtr\> {0}>] <math|E<around*|(|L,\<lambda\><rsub|i>|)>>
      is a sub-space of <math|X>, hence <math|\<forall\>x,y\<in\>E<around*|(|L,\<lambda\><rsub|i>|)>>
      and <math|\<alpha\>\<in\>\<bbb-F\>> we have

      <\equation*>
        x+\<alpha\>\<cdot\>y\<in\>E<around*|(|L,\<lambda\><rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>\<subseteq\>span<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>|)>=E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,n|)>
      </equation*>

      which, as also <math|E<around*|(|L,\<lambda\><rsub|i>|)>\<neq\>\<varnothing\>>,
      proves that <math|E<around*|(|L,\<lambda\><rsub|i>|)>> is a sub-space
      of <math|E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>>.

      <item>Let <math|x\<in\>E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>=span<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>|)>>
      then there exists a <math|m\<in\>\<bbb-N\>>, a
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-F\>>
      and a <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>>
      such that

      <\equation*>
        x=<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>x<rsub|i>
      </equation*>

      If <math|i\<in\><around*|{|1,\<ldots\>,m|}>> then there exist a
      <math|k<rsub|i>\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x<rsub|i>\<in\>E<around*|(|L,\<lambda\><rsub|k<rsub|i>>|)>>, then
      <math|<rigid|\<alpha\><rsub|i>\<cdot\>x<rsub|i>\<in\>E<around*|(|L,\<lambda\><rsub|k<rsub|i>>|)>>>.
      Define now

      <\equation*>
        <around*|{|w<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)><text|
        by >w<rsub|i,j>=<choice|<tformat|<table|<row|<cell|0<text| if
        >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k<rsub|i>|}>>>|<row|<cell|\<alpha\><rsub|i>\<cdot\>x<rsub|i><text|
        if >j=k<rsub|i>>>>>>
      </equation*>

      then we have\ 

      <\equation*>
        <big|sum><rsub|j=1><rsup|n>w<rsub|i,j>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k<rsub|i>|}>>w<rsub|i,j>+<big|sum><rsub|j\<in\><around*|{|k<rsub|i>|}>>w<rsub|i,j>=\<alpha\><rsub|i>\<cdot\>x<rsub|i>
      </equation*>

      proving that

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
        >\<alpha\><rsub|i>\<cdot\>x<rsub|i>\<in\><big|sum><rsub|j<around*|\<langle\>|1,\<ldots\>,n|\<rangle\>>>E<around*|(|L,\<lambda\><rsub|j>|)>
      </equation*>

      As by (2) and [theorem: <reference|direct sum of subspaces>]
      <math|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|j>|)>>
      is a vector space it follows from the above that
      <math|x=<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>x<rsub|i>\<in\><big|sum><rsub|j<around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|j>|)>>.
      Hence we have proved that\ 

      <\equation*>
        E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>\<subseteq\><big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|j>|)>
      </equation*>

      If <math|x\<in\><big|sum><rsub|j=1><rsup|n>E<around*|(|L,\<lambda\><rsub|j>|)>>
      then <math|x=<big|sum><rsub|j=1><rsup|n>v<rsub|i>> where
      <math|v<rsub|j>\<in\>E<around*|(|L,\<lambda\><rsub|j>|)>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>>
      so that <math|x\<in\>span<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>|)>=E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,n|)>>,
      hence <math|<rigid|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|j>|)>\<subseteq\>E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,n|)>>>.
      Combining this with the above proves that\ 

      <\equation>
        <label|eq 18.14.150>E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|j>|)>
      </equation>

      Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> and assume that
      <math|x\<in\>E<around*|(|L,\<lambda\><rsub|k>|)><big|cap><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>E<around*|(|L,\<lambda\><rsub|j>|)>|)>>
      then

      <\equation>
        <label|eq 18.15.150>x\<in\>E<around*|(|L,\<lambda\><rsub|k>|)>\<wedge\>x=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>v<rsub|j>
        <text| where >v<rsub|j>\<in\>E<around*|(|L,\<lambda\><rsub|j>|)>
      </equation>

      Define <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      by <math|w<rsub|i>=<choice|<tformat|<table|<row|<cell|-x<text| if
      >i=k>>|<row|<cell|v<rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>>>>>\<in\>E<around*|(|L,\<lambda\><rsub|i>|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|w<rsub|i>\<neq\>0|}>>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|w<rsub|i>=0|}>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|w<rsub|i>\<neq\>0|}>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>w<rsub|i><eq-number><label|eq
        18.16.150>>>>>
      </eqnarray*>

      where <math|I=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|w<rsub|i>\<neq\>0|}>>.
      Then <math|\<forall\>i\<in\>I<text| we have
      >w<rsub|i>\<neq\>0\<wedge\>L<around*|(|w<rsub|i>|)>=\<lambda\><rsub|i>\<cdot\>w<rsub|i>>
      or <math|w<rsub|i>> is a eigen vector of <math|L>. Assume that
      <math|I\<neq\>\<varnothing\>> then there exist a
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|I=<around*|{|i<rsub|1>,\<ldots\>,i<rsub|k>|}>> and
      <math|\<forall\>r,s\<in\><around*|{|1,\<ldots\>,k|}>> with
      <math|r\<neq\>s> we have <math|i<rsub|r>\<neq\>i<rsub|s>> so that
      <math|\<lambda\><rsub|r<rsub|1>>\<neq\>\<lambda\><rsub|i<rsub|s>>>,
      hence <math|<around*|{|w<rsub|i<rsub|j>>|}><rsub|j\<in\><around*|{|1,\<ldots\>,i<rsub|k>|}>>>
      is a family of eigenvectors with distinct eigenvalues. Applying then
      [theorem: <reference|spectral distinct eigenvalues and linear
      independence>] <math|<around*|{|w<rsub|i<rsub|j>>|}><rsub|j\<in\><around*|{|1,\<ldots\>,i<rsub|k>|}>>>
      is linear independent contradicting that we have proved that
      <math|<big|sum><rsub|i\<in\>I>w<rsub|i>=0> [see eq: <reference|eq
      18.16.150>] Hence we must have that <math|I=\<varnothing\>> and
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|w<rsub|i>=0>,
      in particular <math|w<rsub|k>=-x=0\<Rightarrow\>x=0>. So it follows
      that <math|E<around*|(|L,\<lambda\><rsub|k>|)><big|cap><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>E<around*|(|L,\<lambda\><rsub|j>|)>|)>\<subseteq\><around*|{|0|}>>.
      As <math|E<around*|(|L,\<lambda\><rsub|k>|)>> and
      <math|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>E<around*|(|L,\<lambda\><rsub|j>|)>>
      are vector spaces we have also that
      \ \ <math|0\<in\>E<around*|(|L,\<lambda\><rsub|k>|)><big|cap><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>E<around*|(|L,\<lambda\><rsub|j>|)>|)>>.
      Hence we conclude that\ 

      <\equation*>
        E<around*|(|L,\<lambda\><rsub|k>|)><big|cap><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>E<around*|(|L,\<lambda\><rsub|j>|)>|)>=<around*|{|0|}>
      </equation*>

      Finally using [theorem: <reference|direct sum decomposition>] together
      with (1),(2) and [eq: <reference|eq 18.14.150>] it follows that\ 

      <\equation*>
        E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<around*|(|L,\<lambda\><rsub|i>|)>
      </equation*>

      <item>Using (3) and [theorem: <reference|direct sum dimension>] it
      follows that\ 

      <\equation*>
        dim<around*|(|E<around*|(|L;\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>|)>|)>=<big|sum><rsub|i=1><rsup|n>dim<around*|(|E<around*|(|L,\<lambda\><rsub|i>|)>|)>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Upper triangular and diagonal matrices>

  <\definition>
    <label|spectral invariant sub-space><index|invariant sub-space>Let
    <math|X> be a vector space, <math|Y> a sub-space of <math|X> and
    <math|L\<in\>Hom<around*|(|X|)>> then we say that <math|Y> is
    <with|font-series|bold|invariant under L> if
    <math|L<around*|(|Y|)>\<subseteq\>Y>. In other words every vector in
    <math|Y> is mapped to another vector in <math|Y>.
  </definition>

  <\definition>
    <label|spectral upper triangular matrix><index|upper triangular
    matrix><index|upper triangular matrix>Let <math|n\<in\>\<bbb-N\>>,
    <math|\<cal-F\>> a field then a matrix
    \ <math|M\<in\>\<cal-M\><rsub|n,n><around*|(|\<cal-F\>|)>> is a
    <with|font-series|bold|upper triangular matrix >if
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<gtr\>j> we have <math|M<rsub|i,j>=0>. In other words a matrix is
    a upper triangular matrix if the matrix is empty below its diagonal.
  </definition>

  <\example>
    The matrix <math|M=<matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|4>|<cell|5>>|<row|<cell|0>|<cell|0>|<cell|6>>>>>>
    is a upper triangular matrix because

    <\equation*>
      M<rsub|1,2>=M<rsub|1,3>=M<rsub|3,2>=0
    </equation*>
  </example>

  The following theorem gives necessary and sufficient conditions for the
  matrix of a linear operator to be upper triangular.

  <\theorem>
    <label|spectral upper triangular conditions>Let <math|X> be a finite
    dimensional vector space with <math|dim<around*|(|X|)>\<in\>\<bbb-N\>>
    [hence <math|X> is not trivial], <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    a basis for <math|X> and <math|L\<in\>Hom<around*|(|X|)>> a linear
    operator then we have the following equivalences:

    <\enumerate>
      <item><math|\<cal-M\><around*|(|L;E,E|)>> is upper triangular

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|L<around*|(|e<rsub|i>|)>\<in\>span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>>

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>>
      is invariant under <math|L>
    </enumerate>
  </theorem>

  <\proof>
    Let <math|M=\<cal-M\><around*|(|L;E,E|)>> then we have:

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|e<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n>M<rsub|k,i>\<cdot\>e<rsub|k><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,i|}>>M<rsub|k,i>\<cdot\>e<rsub|k>+<big|sum><rsub|k\<in\><around*|{|i+1,\<ldots\>,n|}>>M<rsub|k,i>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,i|}>>M<rsub|k,i>\<cdot\>e<rsub|k>+<big|sum><rsub|k\<in\><around*|{|i+1,\<ldots\>,n|}>>0\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,i|}>>M<rsub|k,i>\<cdot\>e<rsub|k>>>>>
      </eqnarray*>

      so that <math|L<around*|(|e<rsub|i>|)>\<in\>span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>>.

      <item*|<math|2\<Rightarrow\>1>>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      then, as <math|L<around*|(|e<rsub|i>|)>\<in\>span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>>,
      there exist a <math|<around*|{|\<alpha\><rsub|k>|}><rsub|k\<in\><around*|{|1,\<ldots\>,i|}>>>
      such that <math|L<around*|(|e<rsub|i>|)>=<big|sum><rsub|k=1><rsup|i>\<alpha\><rsub|k>\<cdot\>e<rsub|k>>.
      Define

      <\equation*>
        <around*|{|\<beta\><rsub|k>|}><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>><text|
        by >\<beta\><rsub|k>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|k><text|
        if >k\<in\><around*|{|1,\<ldots\>,i|}>>>|<row|<cell|0<text| if
        >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>M<rsub|k,i>\<cdot\>e<rsub|k>>|<cell|=>|<cell|L<around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|i>\<alpha\><rsub|k>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,i|}>>\<beta\><rsub|k>\<cdot\>e<rsub|k>+<big|sum><rsub|k\<in\><around*|{|i+1,\<ldots\>,n|}>>0\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,i|}>>\<beta\><rsub|k>\<cdot\>e<rsub|k>+<big|sum><rsub|k\<in\><around*|{|i+1,\<ldots\>,n|}>>\<beta\><rsub|k>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n>\<beta\><rsub|k>\<cdot\>e<rsub|k>>>>>
      </eqnarray*>

      As <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> is a basis it
      follows that <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|M<rsub|k,i>=\<beta\><rsub|k>>, hence
      <math|\<forall\>k\<in\><around*|{|i+1,\<ldots\>,n|}>> we have
      <math|M<rsub|k,i>=\<beta\><rsub|k>=0>. As
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> was chosen arbitrary it
      follows that <math|M<rsub|k,i>=0> whenever <math|k\<gtr\>i> proving
      that <math|M> is upper triangular.

      <item*|<math|2\<Rightarrow\>3>>Given
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> take
      <math|x\<in\>span<around*|(|<around*|{|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>>
      then there exist a <math|<around*|{|x<rsub|k>|}><rsub|k\<in\><around*|{|1,\<ldots\>,i|}>>>
      such that <math|x=<big|sum><rsub|k=1><rsup|i>x<rsub|k>\<cdot\>e<rsub|k>>,
      hence\ 

      <\equation*>
        L<around*|(|x|)>=L<around*|(|<big|sum><rsub|k=1><rsup|i>x<rsub|k>\<cdot\>e<rsub|k>|)>=<big|sum><rsub|k=1><rsup|i>x<rsub|k>\<cdot\>L<around*|(|e<rsub|k>|)>
      </equation*>

      so that\ 

      <\equation>
        <label|eq 18.14.146>L<around*|(|x|)>\<in\>span<around*|(|<around*|{|L<around*|(|e<rsub|k>|)>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>
      </equation>

      Now for every <math|k\<in\><around*|{|1,\<ldots\>,i|}>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      we have by (2) that

      <\equation*>
        L<around*|(|e<rsub|k>|)>\<in\>span<around*|(|<around*|{|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\<subseteq\><rsub|<text|[theorem:
        <reference|linear span subsets>]>>span<around*|(|<around*|{|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>
      </equation*>

      so that <math|<around*|{|L<around*|(|e<rsub|k>|)>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>\<subseteq\>span<around*|(|<around*|{|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>>
      or using [theorem: <reference|linear span subsets>] again\ 

      <\equation*>
        span<around*|(|<around*|{|L<around*|(|e<rsub|k>|)>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>\<subseteq\>span<around*|(|span<around*|(|<around*|{|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|linear span of span>]>>span<around*|(|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,i|}>|)>
      </equation*>

      which combined with [eq: <reference|eq 18.14.146>] proves that\ 

      <\equation*>
        L<around*|(|x|)>\<subseteq\>span<around*|(|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,i|}>|)>
      </equation*>

      As <math|x\<in\>span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>>
      we have from the above that\ 

      <\equation*>
        L<around*|(|span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>|)>\<subseteq\>span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>
      </equation*>

      showing that <math|span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>>
      is invariant under <math|L>.

      <item*|<math|3\<Rightarrow\>2>>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      then as <math|e<rsub|i>\<in\>span<around*|(|<around*|{|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      and <math|span<around*|(|<around*|{|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      is invariant under <math|L> we have that
      <math|L<around*|(|e<rsub|i>|)>\<in\>span<around*|(|<around*|{|e<rsub|l>\|l\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>.
    </description>
  </proof>

  We show now that in finite dimensional non trivial vector spaces over
  <math|\<bbb-C\>> every linear operator can have a upper triangular matrix.

  <\theorem>
    <label|spectral upper triangular matrix for a linear operator>Let
    <math|n\<in\>\<bbb-N\>>, <math|X> a finite dimensional vector space over
    <math|\<bbb-C\>> with <math|dim<around*|(|X|)>=n> [hence <math|X> is not
    trivial] and <math|L\<in\>Hom<around*|(|X|)>> then there exist a basis
    <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> for <math|X> such that
    <math|\<cal-M\><around*|(|L;E,E|)>> is a upper triangular matrix.
  </theorem>

  <\proof>
    We prove this by induction, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If X<text| is a finite dimensional
      vector space over <math|\<bbb-C\>> with <math|m=dim<around*|(|X|)>>,
      >0\<less\>m\<leqslant\>n<text| then for
      ><rigid|L\<in\>Hom<around*|(|X|)>><text| there exist a basis
      <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m>|}>> such that
      >\<cal-M\><around*|(|L;E,E|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>If <math|dim<around*|(|X|)>=1> then there exist
      a basis <math|E=<around*|{|e<rsub|1>|}>> of <math|X> and for
      <math|L\<in\>Hom<around*|(|X|)>> the matrix
      <math|\<cal-M\><around*|[|L;E,E|]>> is a <math|1\<times\>1> matrix
      which is automatically upper diagonal, hence <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let <math|X> be a finite
      dimensional basis with <math|1\<less\>dim<around*|(|X|)>\<leqslant\>n+1>
      and <math|L\<in\>Hom<around*|(|X|)>>. For <math|dim<around*|(|X|)>> we
      have either:\ 

      <\description>
        <item*|<math|dim<around*|(|X|)>\<less\>n+1>>Then
        <math|dim<around*|(|X|)>\<leqslant\>n> so that, as <math|n\<in\>S>,
        there exist a basis <math|<rigid|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|dim<around*|(|X|)>>|}>>>
        such that <math|\<cal-M\><around*|(|L;E,E|)>> is upper triangular.
        Hence in this case we have that <math|n+1\<in\>S>

        <item*|<math|dim<around*|(|X|)>=n+1>>Using [theorem:
        <reference|spectral eigenvectors exist in a finite dimensional
        complex space>] there exist a eigenvector <math|x\<in\>X> with
        eigenvalue <math|\<lambda\>>. So <math|<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|x|)>=0>
        and <math|x\<neq\>0> hence\ 

        <\equation*>
          ker<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)>\<neq\><around*|{|0|}>
        </equation*>

        By [theorem: <reference|linear mapping kernel and range are
        subspaces>] <math|ker<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)>> is
        a sub-space of <math|X>, so that by [theorem: <reference|basis
        sub-space>] <math|ker<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)>> is
        finite dimensional and together with the above we have\ 

        <\equation*>
          0\<less\>dim<around*|(|ker<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)>|)>\<leqslant\>dim<around*|(|X|)>
        </equation*>

        Using [theorem: <reference|linear mapping dimension theorem>] we have
        that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|dim<around*|(|X|)>>|<cell|=>|<cell|dim<around*|(|ker<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)>|)>+rank<around*|(|L-\<lambda\>\<cdot\>Id<rsub|x>|)>>>|<row|<cell|>|<cell|=>|<cell|dim<around*|(|ker<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)>|)>+dim<around*|(|<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|X|)>|)>>>>>
        </eqnarray*>

        proving by the above that

        <\equation*>
          dim<around*|(|<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|X|)>|)>\<less\>dim<around*|(|X|)>
        </equation*>

        Summarized\ 

        <\equation*>
          U=<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|X|)><text|
          is a vector space [see theorem: <reference|linear mapping kernel
          and range are subspaces>] with >dim<around*|(|U|)>\<less\>dim<around*|(|X|)>
        </equation*>

        If <math|u\<in\>U> then <math|L<around*|(|u|)>=L<around*|(|u|)>-\<lambda\>\<cdot\>u+\<lambda\>\<cdot\>u=<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|u|)>+\<lambda\>\<cdot\>u\<in\>U>
        [as <math|<rigid|<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|u|)>\<in\><around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|X|)>=U>>
        and <math|U> is a vector space], hence we have that\ 

        <\equation*>
          L<around*|(|U|)>\<subseteq\>U
        </equation*>

        From the above combined with the fact that the linear mapping to a
        subspace is linear [see theorem: <reference|linear mapping
        restriction>] it follows that\ 

        <\equation*>
          L<rsub|\|U>\<in\>Hom<around*|(|U|)>
        </equation*>

        Hence, as <math|dim<around*|(|U|)>\<less\>dim<around*|(|X|)>=n+1>
        implies <math|dim<around*|(|U|)>\<leqslant\>n> and <math|n\<in\>S>,
        we have that there exist a basis <math|V=<around*|{|v<rsub|1>,\<ldots\>,v<rsub|dim<around*|(|U|)>>|}>>
        for <math|U> such that <math|\<cal-M\><around*|(|L<rsub|\|U>;V,V|)>>
        is upper triangular. Applying then the previous theorem [theorem:
        <reference|spectral upper triangular conditions>] it follows that\ 

        <\equation>
          <label|eq 18.15.146>\<forall\>j\<in\><around*|{|1,\<ldots\>,dim<around*|(|U|)>|}><text|
          >L<around*|(|v<rsub|j>|)>=L<rsub|\|U><around*|(|v<rsub|j>|)>\<in\>span<around*|(|<around*|{|v<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,j|}>|}>|)>
        </equation>

        As <math|<around*|{|v<rsub|1>,\<ldots\>,v<rsub|dim<around*|(|U|)>>|}>>
        is linear independent we can use [theorem: <reference|basis extending
        linear independent set (1)>] to extend
        <math|<around*|{|v<rsub|1>,\<ldots\>,v<rsub|dim<around*|(|U|)>>|}>>
        to a basis <math|<around*|{|w<rsub|1>,\<ldots\>,w<rsub|n+1>|}>> where
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,dim<around*|(|U|)>|}>>
        we have <math|w<rsub|i>=v<rsub|i>>. Using the above on [eq:
        <reference|eq 18.15.146>] results in\ 

        <\equation>
          <label|eq 18.16.146>\<forall\>j\<in\><around*|{|1,\<ldots\>,dim<around*|(|U|)>|}><text|
          we have >L<around*|(|w<rsub|j>|)>\<in\>span<around*|(|<around*|{|w<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,j|}>|}>|)>
        </equation>

        Let <math|j\<in\><around*|{|dim<around*|(|U|)>+1,\<ldots\>,n+1|}>>
        then we have\ 

        <\equation>
          <label|eq 18.17.146>L<around*|(|w<rsub|j>|)>=<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|w<rsub|j>|)>+\<lambda\>\<cdot\>Id<rsub|X><around*|(|w<rsub|j>|)>=<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|w<rsub|j>|)>+\<lambda\>\<cdot\>w<rsub|j>
        </equation>

        As <math|>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|w<rsub|j>|)>>|<cell|\<in\>>|<cell|<around*|(|L-\<lambda\>\<cdot\>Id<rsub|X>|)><around*|(|X|)>>>|<row|<cell|>|<cell|=>|<cell|U>>|<row|<cell|>|<cell|=>|<cell|span<around*|(|<around*|{|v<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,dim<around*|(|U|)>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|span<around*|(|<around*|{|w<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,dim<around*|(|U|)>|}>|}>|)>>>|<row|<cell|>|<cell|\<subseteq\><rsub|<text|[theorem:
          <reference|linear span subsets>]>>>|<cell|span<around*|(|<around*|{|w<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,j|}>|}>|)>>>>>
        </eqnarray*>

        and <math|><math|span<around*|(|<around*|{|w<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,j|}>|}>|)>>
        is a vector space [see theorem: <reference|linear span is a
        sub-space>] it follows from [eq: <reference|eq 18.17.146>] that
        <math|L<around*|(|w<rsub|j>|)>\<in\>span<around*|(|<around*|{|w<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,j|}>|}>|)>>.
        Hence\ 

        <\equation*>
          \<forall\>j\<in\><around*|{|dim<around*|(|U|)>+1,\<ldots\>,n+1|}><text|
          we have >L<around*|(|w<rsub|j>|)>\<in\>span<around*|(|<around*|{|w<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,j|}>|}>|)>
        </equation*>

        Combining the above with [eq: <reference|eq 18.16.146>] that\ 

        <\equation*>
          \<forall\>j\<in\><around*|{|1,\<ldots\>,n+1|}><text| we have
          >L<around*|(|w<rsub|j>|)>\<in\>span<around*|(|<around*|{|w<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,j|}>|}>|)>
        </equation*>

        Applying then the previous theorem [theorem: <reference|spectral
        upper triangular conditions>] again it follows that for the basis
        <math|W=<around*|{|w<rsub|1>,\<ldots\>,w<rsub|n>|}>> of <math|X> we
        have

        <\equation*>
          \<cal-M\><around*|(|L;W,W|)><text| is a upper triangular matrix>
        </equation*>

        Hence we conclude that <math|n+1\<in\>S>.
      </description>
    </description>
  </proof>

  We can actual ensure that the basis that makes the matrix of a linear
  operator upper diagonal is orthonormal.

  <\theorem>
    <label|spectral Schur's theorem><index|Schur's Theorem><dueto|Schur's
    Theorem>Let <math|n\<in\>\<bbb-N\>>, <math|X> a finite dimensional vector
    space over <math|\<bbb-C\>> with <math|dim<around*|(|X|)>=n> [hence
    <math|X> is not trivial] and <math|L\<in\>Hom<around*|(|X|)>> then there
    exist a orthonormal basis <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    for <math|X> such that <math|\<cal-M\><around*|(|L;E,E|)>> is a upper
    triangular matrix.
  </theorem>

  <\proof>
    Using the previous theorem [theorem: <reference|spectral upper triangular
    matrix for a linear operator>] there exist a basis
    <math|B=<around*|{|b<rsub|1>,\<ldots\>,b<rsub|n>|}>> of <math|X> such
    that\ 

    <\equation*>
      \<cal-M\><around*|(|L;B,B|)><text| is upper triangular>
    </equation*>

    By [theorem: <reference|spectral upper triangular conditions>] it follows
    then that <math|B> satisfied

    <\equation>
      <label|eq 18.18.146>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >L<around*|(|span<around*|(|<around*|{|b<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>|)>\<subseteq\>span<around*|(|<around*|{|b<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>
    </equation>

    We can now use the Gram-Schmidt procedure [see theorems: <reference|inner
    Gram-Schmidt procedure>] to find a orthonormal set
    <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> such that\ 

    <\equation>
      <label|eq 18.19.146>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >span<around*|(|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|i>|}>|)>=span<around*|(|<around*|{|b<rsub|1>,\<ldots\>,b<rsub|i>|}>|)>
    </equation>

    As <math|<around*|{|e<rsub|1>,\<ldots\>e<rsub|n>|}>> is orthonormal it
    follows from [theorem: <reference|inner orthonormal set>] that\ 

    <\equation*>
      E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}><text| is a basis of >X
    </equation*>

    Substituting [eq: <reference|eq 18.19.146>] in [eq: <reference|eq
    18.18.146>] results in

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have
      >L<around*|(|span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>|)>\<subseteq\>span<around*|(|<around*|{|e<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,i|}>|}>|)>
    </equation*>

    which by [theorem: <reference|spectral upper triangular conditions>]
    proves that\ 

    <\equation*>
      \<cal-M\><around*|(|L;E,E|)><text| is a upper diagonal matrix>
    </equation*>
  </proof>

  <subsection|Diagonalization and spectral theorems>

  A special case of a upper triangular matrix is a diagonal matrix.

  <\definition>
    <label|spectral diagonal matrix><index|diagonal matrix>Let
    <math|n\<in\>\<bbb-N\>>, <math|\<cal-F\>> a field then a matrix
    <math|M\<in\>\<cal-M\><rsub|n,n><around*|(|\<cal-F\>|)>> is
    <with|font-series|bold|diagonal> if <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    with <math|i\<neq\>j> <math|M<rsub|i,j>=0>. In other words a matrix is
    diagonal if all no diagonal elements are <math|0>.
  </definition>

  <\example>
    The matrix <math|M=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|3>>>>>>
    is diagonal because

    <\equation*>
      M<rsub|2,1>=M<rsub|3,1>=M<rsub|1,2>=M<rsub|3,2>=M<rsub|1,3>=M<rsub|2,3>=0
    </equation*>
  </example>

  <\definition>
    <label|spectral self adjoint transformation><index|self-adjoint linear
    transformation><dueto|Self-adjoint linear operators>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or compact] finite dimensional inner product space then
    <math|L\<in\>Hom<around*|(|X|)>=Hom<around*|(|X,X|)>> is
    <with|font-series|bold|self adjoint>\ 

    <\equation*>
      L=L<rsup|\<ast\>>
    </equation*>

    where <math|L<rsup|\<ast\>>> is defined in [theorem: <reference|inner
    adjoint operator>] [so <math|L<rsup|\<star\>>\<in\>Hom<around*|(|X,X|)>>
    is the <with|font-series|bold|unique> linear operator such that
    <math|\<forall\>y\<in\>X> we have <math|\<forall\>x\<in\>X> that
    <math|<around*|\<langle\>|x,L<rsup|\<ast\>><around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>>].
    In other words <math|L> is self-adjoint iff <math|\<forall\>x,y\<in\>X>
    we have <math|<around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>>.
  </definition>

  <\example>
    <label|spectral identy map is self-adjoint>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or compact] finite dimensional inner product space then
    <math|Id<rsub|X>> is a self-adjoint transformation.
  </example>

  <\proof>
    Using [theorem: <reference|linear mapping semi-group>]
    <math|Id<rsub|X>\<in\>Hom<around*|(|X|)>>, further
    <math|\<forall\>x,y\<in\>X> we have\ 

    <\equation*>
      <around*|\<langle\>|x,Id<rsub|X><around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|Id<rsub|X><around*|(|x|)>,y|\<rangle\>>
    </equation*>
  </proof>

  <\theorem>
    <label|spectral matrices of self adjoint transformations are
    Hermitian>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or compact] finite dimensional inner product space with a
    basis <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>,
    <math|n\<in\>\<bbb-N\>> and <math|L\<in\>Hom<around*|(|X|)>> then\ 

    <\equation*>
      L<text| is self-adjoint>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<cal-M\><around*|(|L;E,E|)><text| is Hermitian>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This follows from\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-M\><around*|(|L;E,E|)>>|<cell|\<equallim\><rsub|L=L<rsup|\<ast\>>>>|<cell|\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of adjoint
        operator>]>>>|<cell|\<cal-M\><around*|(|L;E,E|)><rsup|H>>>>>
      </eqnarray*>

      so that <math|\<cal-M\><around*|(|L;E,E|)>> is Hermitian.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>X> then there exist a
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<bbb-K\>>
      such that <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>.
      Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L<around*|(|x|)>|)><rsub|k>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<cal-M\><around*|(|L;E,E|)><rsub|k,i>\<cdot\>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|\<cal-M\><around*|(|L;E,E|)><rsup|H>|)><rsub|k,i>\<cdot\>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of adjoint
        operator>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)><rsub|k,i>\<cdot\>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsup|\<ast\>><around*|(|x|)>|)><rsub|k>>>>>
      </eqnarray*>

      proving that <math|L<around*|(|x|)>=L<rsup|\<ast\>><around*|(|x|)>>. As
      <math|x\<in\>X> was chosen arbitrary it follows that
      <math|L=L<rsup|\<ast\>>> hence <math|L> is self-adjoint.
    </description>
  </proof>

  <\corollary>
    <label|spectral diagnolizing operator is self-adjoint>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real \ finite dimensional inner product space and
    <math|L\<in\>Hom<around*|(|X|)>> a linear operator such that there exist
    a basis <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> so that
    <math|\<cal-M\><around*|(|L;E,E|)>> is diagonal then <math|L> is
    self-adjoint/
  </corollary>

  <\proof>
    As <math|\<cal-M\><around*|(|L;E,E|)>> is real and diagonal we have
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<cal-M\><around*|(|L;E,E|)><rsup|H>|)><rsub|i,j>>|<cell|=>|<cell|<around*|(|\<cal-M\><around*|(|L;E,E|)><rsup|\<star\>>|)><rsub|j,i>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L;E,E|)><rsub|j,i>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L;E,E|)><rsub|i,i>\<cdot\>\<delta\><rsub|i,j>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L;E,E|)><rsub|i,j>>>>>
    </eqnarray*>

    proving that <math|\<cal-M\><around*|(|L;E,E|)>> is Hermitian, hence by
    [theorem: <reference|spectral matrices of self adjoint transformations
    are Hermitian>] <math|L> is self-adjoint.
  </proof>

  All the eigenvalues of a self-adjoint mapping are real as is show in the
  next theorem.

  <\theorem>
    <label|spectral eigen values of a self-adjoint operator are linear>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or compact] finite dimensional inner product space and
    <math|L\<in\>Hom<around*|(|X|)>> then every eigenvalue of <math|L> is a
    real number.
  </theorem>

  <\proof>
    <dueto|>If <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    is a real inner product space then the result is trivial, so consider the
    case of complex inner product space. Let <math|x\<in\>X> be a eigenvector
    with eigenvalue <math|\<lambda\>>. Then we have
    <math|x\<neq\>0\<Rightarrow\><around*|\<\|\|\>||\<\|\|\>>> and
    <math|L<around*|(|x|)>=\<lambda\>\<cdot\>x> so that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\>>|<cell|=>|<cell|<frac|\<lambda\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<lambda\>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<langle\>|\<lambda\>\<cdot\>x,x|\<rangle\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<langle\>|x,L<rsup|\<star\>><around*|(|x|)>|\<rangle\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|L=L<rsup|\<ast\>>>>|<cell|<frac|<around*|\<langle\>|x,L<around*|(|x|)>|\<rangle\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<langle\>|x,\<lambda\>\<cdot\>x|\<rangle\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<wide|\<lambda\><rsup|>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<wide|\<lambda\><rsup|>|\<wide-bar\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<below|<wide|\<lambda\>|\<wide-bar\>>|>>>>>
    </eqnarray*>

    proving that <math|\<lambda\>\<in\>\<bbb-R\>>.
  </proof>

  <\theorem>
    <label|spectral self-adjoint operator condition for operator to be
    zero>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space with
    <math|dim<around*|(|X|)>\<in\>\<bbb-N\>> [so <math|X> is non trivial] and
    <math|L\<in\>Hom<around*|(|X|)>> a self-adjoint operator then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|L=0>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>=0>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    The complex case was already prove in [theorem: <reference|inner
    condition for linear operator to be zero>] so we must only prove the real
    case.\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>X> then
      <math|<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>=<around*|\<langle\>|0<around*|(|x|)>,x|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>=0>.

      <item*|<math|\<Leftarrow\>>>Let <math|x,y\<in\>X> then we have:

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|L<around*|(|x+y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x-y|)>,x-y|\<rangle\>>>|<cell|>|<cell|>>|<row|<cell|<around*|\<langle\>|L<around*|(|x|)>+L<around*|(|y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x|)>-L<around*|(|y|)>,x-y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>-<around*|\<langle\>|L<around*|(|y|)>,x-y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,x+y|\<rangle\>>-<around*|\<langle\>|L<around*|(|y|)>,x-y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,y|\<rangle\>>-<around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>+<around*|\<langle\>|L<around*|(|y|)>,y|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+2\<cdot\><around*|\<langle\>|L<around*|(|y|)>,x|\<rangle\>>>|<cell|\<equallim\><rsub|real
        case>>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>+2\<cdot\><around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|x,L<rsup|\<ast\>><around*|(|y|)>|\<rangle\>>+2\<cdot\><around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>>|<cell|\<equallim\><rsub|L+L<rsup|\<ast\>>>>|<cell|>>|<row|<cell|2\<cdot\><around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>+2\<cdot\><around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>>|<cell|=>|<cell|>>|<row|<cell|4\<cdot\><around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>>|<cell|>|<cell|>>>>
      </eqnarray*>

      so <math|<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>=0>. Take
      <math|y=L<around*|(|x|)>> then <math|<around*|\<langle\>|L<around*|(|x|)>,L<around*|(|x|)>|\<rangle\>>=0>
      so that <math|L<around*|(|x|)>=0> proving, as <math|x\<in\>X> was
      chosen arbitrary, that <math|L=0>.
    </description>
  </proof>

  <\definition>
    <label|spectral unitary operator><index|unitary operator>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space then
    <math|U\<in\>Hom<around*|(|X|)>> is <with|font-series|bold|unitary >if
    <math|U<rsup|\<ast\>>\<circ\>U=Id<rsub|X>=U\<circ\>U<rsup|\<ast\>>>.
  </definition>

  <\theorem>
    <label|spectral unitary operator alternative>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space and
    <math|U\<in\>Hom<around*|(|X|)>> then we have:

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|U<text| is
      unitary>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>x,y\<in\>X<text|
      we have ><around*|\<langle\>|U<around*|(|x|)>,U<around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|x,y|\<rangle\>>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x,y\<in\>X> then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x,y|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|Id<rsub|X><around*|(|x|)>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<around*|(|U<rsup|\<ast\>>\<circ\>U|)><around*|(|x|)>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|U<rsup|\<ast\>><around*|(|U<around*|(|x|)>|)>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|U<around*|(|x|)>,U<around*|(|y|)>|\<rangle\>>>>>>
      </eqnarray*>

      <item*|<math|\<Leftarrow\>>>Given <math|x,y\<in\>X> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x,<around*|(|U<rsup|\<ast\>>\<circ\>U|)><around*|(|y|)>|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|x,U<rsup|\<ast\>><around*|(|U<around*|(|x|)>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|U<around*|(|x|)>,U<around*|(|x|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,Id<rsub|X><around*|(|y|)>|\<rangle\>>>>>>
      </eqnarray*>

      Hence we have given <math|y\<in\>Y> for
      <math|<around*|(|U<rsup|\<ast\>>\<circ\>U|)><around*|(|y|)>,Id<rsub|X><around*|(|y|)>>
      that <math|\<forall\>x\<in\>X> <math|<rigid|<around*|\<langle\>|x,<around*|(|U<rsup|\<ast\>>\<circ\>U|)><around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|x,Id<rsub|X><around*|(|y|)>|\<rangle\>>>>
      so that by [theorems: <reference|inner real inner product space
      properties>, <reference|inner complex inner product properties>]
      <math|><math|<around*|(|U<rsup|\<ast\>>\<circ\>U|)><around*|(|y|)>=Id<rsub|X><around*|(|y|)>>
      which proves that\ 

      <\equation>
        <label|eq 18.20.147>U<rsup|\<ast\>>\<circ\>U=Id<rsub|X>
      </equation>

      Further given <math|x,y\<in\>X> we have also\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|x,<around*|(|U\<circ\>U<rsup|\<ast\>>|)><around*|(|y|)>|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|x,U<around*|(|U<rsup|\<ast\>>|)><around*|(|y|)>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner adjoint of adjoint>]>>>|<cell|<around*|\<langle\>|x,<around*|(|U<rsup|\<ast\>>|)><rsup|\<ast\>><around*|(|U<rsup|\<ast\>><around*|(|y|)>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|U<rsup|\<ast\>><around*|(|x|)>,U<rsup|\<ast\>><around*|(|y|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,Id<rsub|X><around*|(|y|)>|\<rangle\>>>>>>
      </eqnarray*>

      Hence we have given <math|y\<in\>Y> for
      <math|<around*|(|U\<circ\>U<rsup|\<ast\>>|)><around*|(|y|)>,Id<rsub|X><around*|(|y|)>>
      that <math|\<forall\>x\<in\>X> <math|<rigid|<around*|\<langle\>|x,<around*|(|U\<circ\>U<rsup|\<ast\>>|)><around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|x,Id<rsub|X><around*|(|y|)>|\<rangle\>>>>
      so that by [theorems: <reference|inner real inner product space
      properties>, <reference|inner complex inner product properties>]
      <math|><math|<around*|(|U\<circ\>U<rsup|\<ast\>>|)><around*|(|y|)>=Id<rsub|X><around*|(|y|)>>
      which proves that\ 

      <\equation>
        <label|eq 18.21.147>U\<circ\>U<rsup|\<ast\>>=Id<rsub|X>
      </equation>

      From [eqs: <reference|eq 18.20.147>,<reference|eq 18.21.147>] it
      follows that <math|U> is unitary.
    </description>
  </proof>

  <\theorem>
    <label|spectral unitary operator properties>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space and
    <math|U\<in\>Hom<around*|(|X|)>> a unitary operator then we have

    <\enumerate>
      <item><math|U<rsup|\<ast\>>=U<rsup|-1>>,
      <math|U=<around*|(|U<rsup|\<ast\>>|)><rsup|-1>> and
      <math|U<rsup|\<ast\>>>, <math|U<rsup|-1>> are unitary.

      <item><math|U> is a linear isometric isomorphism [in the normed space
      with norm <math|<around*|\<\|\|\>|x|\<\|\|\>>=<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>>]
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|U<rsup|\<ast\>>\<circ\>U=Id<rsub|X>=U\<circ\>U<rsup|\<ast\>>>
      it follows that <math|U<rsup|-1>=U<rsup|\<ast\>>> and
      <math|<around*|(|U<rsup|\<ast\>>|)><rsup|-1>=U>. Further we have

      <\equation*>
        <around*|(|U<rsup|\<ast\>>|)><rsup|\<ast\>>\<circ\>U<rsup|\<ast\>>\<equallim\><rsub|<text|[theorem:
        <reference|inner adjoint of adjoint>]>>U\<circ\>U<rsup|\<ast\>>=Id<rsub|X>=U<rsup|\<ast\>>\<circ\>U\<equallim\><rsub|<text|[theorem:
        <reference|inner adjoint of adjoint>]>>U<rsup|\<ast\>>\<circ\><around*|(|U<rsup|\<ast\>>|)><rsup|\<ast\>>
      </equation*>

      proving that <math|U<rsup|\<ast\>>=U<rsup|-1>> is unitary.

      <item>Using <math|<around*|(|1|)>> we have that <math|U> is a
      bijection, further <math|\<forall\>x\<in\>X> we have that\ 

      <\equation*>
        <around*|\<\|\|\>|U<around*|(|x|)>|\<\|\|\>>=<sqrt|<around*|\<langle\>|U<around*|(|x|)>,U<around*|(|x|)>|\<rangle\>>>\<equallim\><rsub|<text|[theorem:
        <reference|spectral unitary operator
        alternative>]>><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=<around*|\<\|\|\>|x|\<\|\|\>>
      </equation*>

      proving that <math|U> is a linear isometric isomorphism.
    </enumerate>
  </proof>

  <\example>
    <label|spectral identy map is unitary>We have the following examples of
    unitary operators:

    <\enumerate>
      <item>If <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
      is a real [or complex] inner product space then:

      <\enumerate>
        <item><math|Id<rsub|X>> is unitary operator

        <item><math|-Id<rsub|X>> is a unitary operator
      </enumerate>

      <item>If <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
      is a real [or complex] inner product space then
      <math|i\<cdot\>Id<rsub|X>> is a unitary operator.
    </enumerate>

    <\note>
      In general <math|i\<cdot\>Id<rsub|X>> is not a self-adjoint operator,
      for if <math|i\<cdot\>Id<rsub|X>> was a self-adjoint operator then we
      would have <math|i\<cdot\><around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|i\<cdot\>Id<rsub|X><around*|(|x|)>,y|\<rangle\>>=<around*|\<langle\>|x,<around*|(|i\<cdot\>Id<rsub|X>|)><rsup|\<ast\>><around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|x,i\<cdot\>Id<rsub|X><around*|(|y|)>|\<rangle\>>=-i\<cdot\><around*|\<langle\>|x,y|\<rangle\>>>
      form which it would follow that <math|<around*|\<langle\>|x,y|\<rangle\>>=0>
      for every <math|x,y\<in\>X>. This can only be true if <math|X> is the
      trivial vector space <math|<around*|{|0|}>>. Hence in general it is not
      true that a unitary operator is self-adjoint.
    </note>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>We have:

      <\enumerate>
        <item><math|>Because <math|Id<rsub|X>\<circ\><around*|(|Id<rsub|X>|)><rsup|\<ast\>>=<around*|(|Id<rsub|X>|)><rsup|\<ast\>>\<equallim\><rsub|<text|[example:
        <reference|spectral identy map is
        self-adjoint>]>>Id<rsub|X>=<around*|(|Id<rsub|X>|)><rsup|\<ast\>>=<around*|(|Id<rsub|X>|)><rsup|\<ast\>>\<circ\>Id<rsub|X>>
        it follows that <math|Id<rsub|X>> is a unitary operator.

        <item>Let <math|x,y\<in\>X> then we have
        <math|<around*|\<langle\>|-Id<rsub|X><around*|(|x|)>,-Id<rsub|X><around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|Id<rsub|X><around*|(|x|)>,Id<rsub|X><around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|x,y|\<rangle\>>>
        so that by [theorem: <reference|spectral unitary operator
        alternative>] <math|-Id<rsub|X>> is a unitary operator.
      </enumerate>

      <item>Given <math|x,y\<in\>X> we have
      <math|<around*|\<langle\>|i\<cdot\>Id<rsub|X><around*|(|x|)>,i\<cdot\>Id<rsub|Y><around*|(|y|)>|\<rangle\>>=i\<cdot\><around*|(|-i|)>\<cdot\><around*|\<langle\>|Id<rsub|X><around*|(|x|)>,Id<rsub|X><around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|x,y|\<rangle\>>>,
      hence, using [theorem: <reference|spectral unitary operator
      alternative>], <math|i\<cdot\>Id<rsub|X>> is a unitary operator.
    </enumerate>
  </proof>

  <\theorem>
    Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space and
    <math|U\<in\>Hom<around*|(|X|)>> a unitary transformation then
    <math|det<around*|(|U<rsup|\<star\>>|)>\<equallim\><rsub|<text|[theorem:
    <reference|inner determinant of adjoint
    mapping>]>>det<around*|(|U|)>=\<noplus\>\<pm\>1>.
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|1>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|determinant identity function>]>>>|<cell|det<around*|(|Id<rsub|X>|)>>>|<row|<cell|>|<cell|=>|<cell|det<around*|(|U<rsup|\<star\>>\<circ\>U|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|determinant det(L) properties>]>>>|<cell|det<around*|(|U<rsup|\<ast\>>|)>\<cdot\>det<around*|(|U|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner determinant of adjoint
      mapping>]>>>|<cell|det<around*|(|U|)>\<cdot\>det*<around*|(|U|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|det<around*|(|U|)>|)><rsup|2>>>>>
    </eqnarray*>

    so that <math|det<around*|(|U|)>=\<pm\>1>.
  </proof>

  The following theorem shows the relation between a unitary transformation
  and a unitary matrix.

  <\theorem>
    <label|spectral unitary operator has a unitary matrix>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner vector space with
    <math|dim<around*|(|X|)>=n>, <math|B=<around*|{|b<rsub|1>,\<ldots\>,b<rsub|n>|}>>
    a basis for <math|X> and <math|U\<in\>Hom<around*|(|X|)>> then\ 

    <\equation*>
      U<text| is a unitary transformation>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<cal-M\><around*|(|U;B,B|)><text| is a unitary matrix [see definition:
      <reference|inner unitary matrix>]>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-M\><around*|(|U;B,B|)><rsup|H>\<cdot\>\<cal-M\><around*|(|U;B,B|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of adjoint
        operator>]>>>|<cell|\<cal-M\><around*|(|U<rsup|\<ast\>>;B,B|)>\<cdot\>\<cal-M\><around*|(|U;B,B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix composition>]>>>|<cell|\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>U;B,B|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|Id<rsub|X>;B,B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix identity>]>>>|<cell|E>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|Id<rsub|X>;B,B|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|U\<circ\>U<rsup|\<ast\>>;B,B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix composition>]>>>|<cell|\<cal-M\><around*|(|U;B,B|)>\<cdot\>\<cal-M\><around*|(|U<rsup|\<ast\>>;B,B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of adjoint
        operator>]>>>|<cell|\<cal-M\><around*|(|U;B,B|)>\<cdot\>\<cal-M\><around*|(|U;B,B|)><rsup|H>>>>>
      </eqnarray*>

      which proves that <math|\<cal-M\><around*|(|U;B,B|)>> is a unitary
      matrix.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>X> then there exist a
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>
      such that <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>b<rsub|i>>.
      The we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|U<rsup|\<ast\>>\<circ\>U|)><around*|(|x|)>|)><rsub|i>>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>U;B,B|)><rsub|i,j>\<cdot\>x<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of adjoint
        operator>]>>>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|\<cal-M\><around*|(|U<rsup|\<ast\>>;B,B|)>\<cdot\>\<cal-M\><around*|(|U;B,B|)>|)><rsub|i,j>\<cdot\>x<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of adjoint
        operator>]>>>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|\<cal-M\><around*|(|U;B,B|)><rsup|H>\<cdot\>\<cal-M\><around*|(|U;B,B|)>|)><rsub|i,j>\<cdot\>x<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>E<rsub|i,j>\<cdot\>x<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>\<delta\><rsub|i,j>\<cdot\>x<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|i>>>>>
      </eqnarray*>

      proving that <math|<around*|(|U<rsup|\<ast\>>\<circ\>U|)><around*|(|x|)>=x>,
      hence <math|U<rsup|\<ast\>>\<circ\>U=Id<rsub|X>>.
    </description>
  </proof>

  <\definition>
    <label|spectral coordinate transformation><index|coordinate
    transformation>Let <math|n\<in\>\<bbb-N\>>, <math|X> a finite dimensional
    vector space with two bases <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
    and <math|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>> then the mapping
    <math|L> defined by <math|\<forall\>i\<in\>L<around*|(|e<rsub|i>|)>=f<rsub|i>>
    [see theorem: <reference|linear mapping definition by its values for the
    basis vectors>] is called a coordinate transformation from <math|E> to
    <math|F>.
  </definition>

  <\theorem>
    <label|spectral change of base>Let <math|n\<in\>\<bbb-N\>>, <math|X> a
    finite dimensional vector space with bases
    <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> and
    <math|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>> then for the linear
    mappings <math|U,V\<in\>Hom<around*|(|X|)>> defined by
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|U<around*|(|e<rsub|i>|)>=f<rsub|i>> and
    <math|V<around*|(|f<rsub|i>|)>=e<rsub|i>> [in other words <math|U> is the
    coordinate transformation from <math|U> to <math|V> and <math|V> is the
    coordinate transformation from <math|V> to <math|U>] we have:

    <\enumerate>
      <item><math|U\<circ\>V=Id<rsub|X>=V\<circ\>U> [or equivalently
      <math|U=V<rsup|-1>> and <math|V=U<rsup|-1>>]

      <item><math|\<cal-M\><around*|(|U;E,E|)>=\<cal-M\><around*|(|V;F,F|)><rsup|-1>>
      and <math|\<cal-M\><around*|(|V;F,F|)>=\<cal-M\><around*|(|U;E,E|)><rsup|-1>>

      <item><math|\<cal-M\><around*|(|V;E,E|)>=\<cal-M\><around*|(|U;E,E|)><rsup|-1>>

      <item>If <math|L\<in\>Hom<around*|(|X|)>> then\ 

      <\equation*>
        \<cal-M\><around*|(|L;E,E|)>=\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)><rsup|-1>
      </equation*>

      <\equation*>
        \<cal-M\><around*|(|L;F,F|)>=\<cal-M\><around*|(|U;E,E|)><rsup|-1>\<cdot\>\<cal-M\><around*|(|L;E,E|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X> then there exist a unique
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>
      and <math|<around*|{|x<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>
      such that <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>
      and <math|<rigid|x=<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\>f<rsub|i>>>.
      Hence we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|U\<circ\>V|)><around*|(|x|)>>|<cell|=>|<cell|U<around*|(|V<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|U<around*|(|V<around*|(|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\>f<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|U<around*|(|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\>V<around*|(|f<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|U<around*|(|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\>U<around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\>f<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|x>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|X><around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        U\<circ\>V=Id<rsub|X>
      </equation*>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|V\<circ\>U|)><around*|(|x|)>>|<cell|=>|<cell|V<around*|(|U<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|V<around*|(|U<around*|(|<big|sum><rsub|i=1><rsup|n><rsub|>x<rsub|i>\<cdot\>e<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|V<around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>U<around*|(|e<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|V<around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>f<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>V<around*|(|f<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|x>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|X><around*|(|x|)>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        V\<circ\>U=Id<rsub|X>
      </equation*>

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|l=1><rsup|n>E<rsub|l,i>\<cdot\>f<rsub|l>>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n>\<delta\><rsub|l,j>\<cdot\>f<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|f<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|U<around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|matrix linear mapping>]>>>|<cell|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,i>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,i>\<cdot\>V<around*|(|f<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,i>\<cdot\><around*|(|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|l,k>\<cdot\>f<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><around*|(|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|l,k>\<cdot\>\<cal-M\><around*|(|U;E,E|)><rsub|k,i>\<cdot\>f<rsub|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|l,k>\<cdot\>\<cal-M\><around*|(|U;E,E|)><rsub|k,i>\<cdot\>f<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|l,k>\<cdot\>\<cal-M\><around*|(|U;E,E|)><rsub|k,i>|)>\<cdot\>f<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|\<cal-M\><around*|(|V;F,F|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>|)><rsub|l,i>\<cdot\>f<rsub|l>>>>>
      </eqnarray*>

      which as <math|F> is a basis proves that
      <math|\<forall\>l\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|E<rsub|l,i>=<around*|(|\<cal-M\><around*|(|V;F,F|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>|)><rsub|l,i>>.
      As <math|i\<in\><around*|{|1,\<ldots\>,n|}>> was chosen arbitrary it
      follows that\ 

      <\equation>
        <label|eq 18.22.147>\<cal-M\><around*|(|V;V,F|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>=E
      </equation>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|l=1><rsup|n>E<rsub|l,i>\<cdot\>e<rsub|l>>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n>\<delta\><rsub|l,i>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|V<around*|(|f<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|matrix linear mapping>]>>>|<cell|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|l,i>\<cdot\>f<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|l,i>\<cdot\>U<around*|(|e<rsub|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|matrix linear mapping>]>>>|<cell|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|l,i>\<cdot\><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,l>\<cdot\>e<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,l>\<cdot\>\<cal-M\><around*|(|V;F,F|)><rsub|l,i>\<cdot\>e<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|k=1><rsup|n><around*|(|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,l>\<cdot\>\<cal-M\><around*|(|V;F,F|)><rsub|l,i>\<cdot\>e<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><around*|(|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,l>\<cdot\>\<cal-M\><around*|(|V;F,F|)><rsub|l,i>|)>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><around*|(|\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>|)><rsub|k,i>\<cdot\>e<rsub|k><rsub|>>>>>
      </eqnarray*>

      which as <math|E> is a basis proves that
      <math|\<forall\>l\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|E<rsub|l,i>=<around*|(|\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>|)><rsub|l,i>>.
      As <math|i\<in\><around*|{|1,\<ldots\>,n|}>> was chosen arbitrary it
      follows that <math|E=\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>>.
      Combining this result with [eq: <reference|eq 18.22.147>] proves that\ 

      <\equation*>
        \<cal-M\><around*|(|U;E,E|)>=\<cal-M\><around*|(|V;F,F|)><rsup|-1><text|
        and >\<cal-M\><around*|(|V;F,F|)>=\<cal-M\><around*|(|U;E,E|)><rsup|-1>
      </equation*>

      <item>This follows from\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|V;E,E|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix composition>]>>>|<cell|\<cal-M\><around*|(|U\<circ\>V;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|\<cal-M\><around*|(|Id<rsub|X>;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix mapping is linear>]>>>|<cell|E>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix mapping is linear>]>>>|<cell|\<cal-M\><around*|(|Id<rsub|X>;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|\<cal-M\><around*|(|V\<circ\>U;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix composition>]>>>|<cell|\<cal-M\><around*|(|V;E,E|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>>>>>
      </eqnarray*>

      proving that

      <\equation*>
        \<cal-M\><around*|(|V;E,E|)>=\<cal-M\><around*|(|U;E,E|)><rsup|-1><text|>
      </equation*>

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|e<rsub|i>|)>>|<cell|=>|<cell|L<around*|(|V<around*|(|f<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|matrix linear mapping>]>>>|<cell|L<around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|k,i>\<cdot\>f<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|k,i>\<cdot\>L<around*|(|f<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|matrix linear mapping>]>>>|<cell|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|V;F,F|)><rsub|k,i>\<cdot\><around*|(|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|L;F,F|)><rsub|l,k>\<cdot\>f<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><around*|(|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|L;F,F|)><rsub|l,k>\<cdot\>\<cal-M\><around*|(|V;F,F|)><rsub|k,i>\<cdot\>f<rsub|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L;F,F|)><rsub|l,k>\<cdot\>\<cal-M\><around*|(|V;F,F|)><rsub|k,i>\<cdot\>f<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L;F,F|)><rsub|l,k>\<cdot\>\<cal-M\><around*|(|V;F,F|)><rsub|k,i>|)>\<cdot\>f<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>|)><rsub|l,i>\<cdot\>f<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>|)><rsub|l,i>\<cdot\>U<around*|(|e<rsub|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|matrix linear mapping>]>>>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>|)><rsub|l,i>\<cdot\><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,l>\<cdot\>e<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,l>\<cdot\><around*|(|\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>|)><rsub|l,i>\<cdot\>e<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|k=1><rsup|n><around*|(|<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|U;E,E|)><rsub|k,l>\<cdot\><around*|(|\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>|)><rsub|l,i>|)>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><around*|(|\<cal-M\><around*|(|U;E,E|)>\<cdot\><around*|(|\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|V;F,F|)>|)>|)><rsub|k,i>\<cdot\>e<rsub|k><rsub|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|<big|sum><rsub|k=1><rsup|n><around*|(|\<cal-M\><around*|(|U;E,E|)>\<cdot\><around*|(|\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)><rsup|-1>|)>|)><rsub|k,i>\<cdot\>e<rsub|k><rsub|>>>>>
      </eqnarray*>

      which by [definition: <reference|matrix linear mapping>] proves that\ 

      <\equation>
        <label|eq 18.23.149>\<cal-M\><around*|(|L;E,E|)>=\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)><rsup|-1>
      </equation>

      Finally\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-M\><around*|(|U;E,E|)><rsup|-1>\<cdot\>\<cal-M\><around*|(|L;E,E|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 18.23.149>]>>>|<cell|>>|<row|<cell|\<cal-M\><around*|(|U;E,E|)><rsup|-1>\<cdot\>\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|L;F,F|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)><rsup|-1>\<cdot\>\<cal-M\><around*|(|U;E,E|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-M\><around*|(|L;F,F|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<cal-M\><around*|(|L;F,F|)>=\<cal-M\><around*|(|U;E,E|)><rsup|-1>\<cdot\>\<cal-M\><around*|(|L;E,E|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>
      </equation*>
    </enumerate>

    \;
  </proof>

  For inner product spaces we have additionally.

  <\theorem>
    <label|spectral operator mapping bases is unitary>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner vector space with two
    orthonormal bases <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>,
    <math|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>> then for the linear
    mappings <math|U,V\<in\>Hom<around*|(|X|)>> defined by
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|U<around*|(|e<rsub|i>|)>=f<rsub|i>> and
    <math|V<around*|(|f<rsub|i>|)>=e<rsub|i>> [in other words <math|U> is the
    coordinate transformation from <math|U> to <math|V> and <math|V> is the
    coordinate transformation from <math|V> to <math|U>] we have that:\ 

    <\enumerate>
      <item><math|U> is a unitary transformation.

      <item><math|\<cal-M\><around*|(|U;E,E|)><rsup|-1>=\<cal-M\><around*|(|U;E,E|)><rsup|H>>
      so that

      <\equation*>
        <math|\<cal-M\><around*|(|U;E,E|)>>\<cdot\>\<cal-M\><around*|(|U;E,E|)><rsup|H>=E=\<cal-M\><around*|(|U;E,E|)><rsup|H>\<cdot\>\<cal-M\><around*|(|U;E,E|)>
      </equation*>

      proving that <math|\<cal-M\><around*|(|U;E,E|)>> is a unitary matrix.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x,y\<in\>X> then there exists
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>,
      <math|<around*|{|x<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>,
      <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>
      and <math|<around*|{|y<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      such that <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\>f<rsub|i>>
      and <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i=1><rsup|n>y<rprime|'><rsub|i>\<cdot\>f<rsub|i>>.
      Then we have two case to consider:\ 

      <\description>
        <item*|real case>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<langle\>|U<around*|(|x|)>,U<around*|(|x|)>|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|U<around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>|)>,U<around*|(|<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>e<rsub|k>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>U<around*|(|e<rsub|i>|)>,<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>U<around*|(|e<rsub|k>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>f<rsub|i>,<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>f<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|f<rsub|i>,<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>f<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\><around*|\<langle\>|f<rsub|i>,f<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|orthonormality>>>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>\<delta\><rsub|i,k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|orthonormality>>>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\><around*|\<langle\>|e<rsub|i>,e<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>e<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|k>\<cdot\>e<rsub|i>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,y|\<rangle\>>>>>>
        </eqnarray*>

        proving by [theorem: <reference|spectral unitary operator
        alternative>] that <math|U> is a unitary operator.

        <item*|complex case>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<langle\>|U<around*|(|x|)>,U<around*|(|x|)>|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|U<around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>|)>,U<around*|(|<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>e<rsub|k>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>U<around*|(|e<rsub|i>|)>,<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>U<around*|(|e<rsub|k>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>f<rsub|i>,<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>f<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|f<rsub|i>,<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>f<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><big|sum><rsub|k=1><rsup|n><wide|y<rsub|k>|\<wide-bar\>>\<cdot\><around*|\<langle\>|f<rsub|i>,f<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|orthonormality>>>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><big|sum><rsub|k=1><rsup|n><wide|y<rsub|k>|\<wide-bar\>>\<cdot\>\<delta\><rsub|i,k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|orthonormality>>>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><big|sum><rsub|k=1><rsup|n><wide|y<rsub|k>|\<wide-bar\>>\<cdot\><around*|\<langle\>|e<rsub|i>,e<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,<big|sum><rsub|k=1><rsup|n>y<rsub|k>\<cdot\>e<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|k>\<cdot\>e<rsub|i>,y|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,y|\<rangle\>>>>>>
        </eqnarray*>
      </description>

      <item>This follows from\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-M\><around*|(|U;E,E|)><rsup|H>\<cdot\>\<cal-M\><around*|(|U;E,E|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of adjoint
        operator>]>>>|<cell|\<cal-M\><around*|(|U<rsup|\<ast\>>;E,E|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix composition>]>>>|<cell|\<cal-M\><around*|(|U<rsup|\<star\>>\<circ\>U;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|\<cal-M\><around*|(|Id<rsub|X>;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix mapping is linear>]>>>|<cell|E>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix mapping is linear>]>>>|<cell|\<cal-M\><around*|(|Id<rsub|X>;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|\<cal-M\><around*|(|U\<circ\>U<rsup|\<star\>>;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|matrix composition>]>>>|<cell|\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|U<rsup|\<star\>>;E,E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|inner matrix of adjoint
        operator>]>>>|<cell|\<cal-M\><around*|(|U;E,E|)>\<cdot\>\<cal-M\><around*|(|U;E,E|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  \;

  <\definition>
    <label|spectral normal operator><index|normal operator><dueto|Normal
    operator>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space then
    <math|L\<in\>Hom<around*|(|X|)>> is <with|font-series|bold|normal> if
    <math|L\<circ\>L<rsup|\<ast\>>=L<rsup|\<ast\>>\<circ\>L>.
  </definition>

  <\lemma>
    <label|spectral every self-adjoint an unitary operator are normal>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space then every
    unitary and self-adjoint operator is normal.
  </lemma>

  <\proof>
    If <math|L> is self adjoint then <math|L\<circ\>L<rsup|\<star\>>=L\<circ\>L=L<rsup|\<ast\>>\<circ\>L>
    proving that <math|L> is unitary. Further if <math|L> is unitary then
    <math|L\<circ\>L<rsup|\<ast\>>=Id<rsub|X>=L<rsup|\<ast\>>\<circ\>L>
    proving that <math|L> is unitary in this case.
  </proof>

  <\theorem>
    <label|spectral normal operator alternative>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space and
    <math|L\<in\>Hom<around*|(|X|)>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|L<text| is
      normal>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|L<rsup|\<ast\>><around*|(|x|)>|\<\|\|\>><text|
      [using the inner product norm]>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    First we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L\<circ\>L<rsup|\<star\>>-L<rsup|\<ast\>>\<circ\>L|)><rsup|\<ast\>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner adjoint operator is
      linear>]>>>|<cell|<around*|(|L\<circ\>L<rsup|\<ast\>>|)><rsup|\<ast\>>-<around*|(|L<rsup|\<ast\>>\<circ\>L|)><rsup|\<ast\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner adjoint and composition>]>>>|<cell|<around*|(|L<rsup|\<ast\>>|)><rsup|\<star\>>\<circ\>L<rsup|\<ast\>>-L<rsup|\<star\>>\<circ\><around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner adjoint of adjoint>]>>>|<cell|L\<circ\>L<rsup|\<ast\>>-L<rsup|\<ast\>>\<circ\>L>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.23.148>L\<circ\>L<rsup|\<star\>>-L<rsup|\<ast\>>\<circ\>L<text|
      is self-adjoint>
    </equation>

    Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<text| is
      normal>>|<cell|\<Leftrightarrow\>>|<cell|L\<circ\>L<rsup|\<ast\>>=L<rsup|\<ast\>>\<circ\>L>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|L\<circ\>L<rsup|\<ast\>>-L<rsup|\<ast\>>\<circ\>L=0>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
      <reference|spectral self-adjoint operator condition for operator to be
      zero>] with [eq: <reference|eq 18.23.148>]>>>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<langle\>|<around*|(|L\<circ\>L<rsup|\<ast\>>-L<rsup|\<ast\>>\<circ\>L|)><around*|(|x|)>,x|\<rangle\>>=0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<langle\>|<around*|(|L\<circ\>L<rsup|\<ast\>>|)><around*|(|x|)>,x|\<rangle\>>-<around*|\<langle\>|<around*|(|L<rsup|\<ast\>>\<circ\>L|)><around*|(|x|)>,x|\<rangle\>>=0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<langle\>|<around*|(|L\<circ\>L<rsup|\<ast\>>|)><around*|(|x|)>,x|\<rangle\>>=<around*|\<langle\>|<around*|(|L<rsup|\<ast\>>\<circ\>L|)><around*|(|x|)>,x|\<rangle\>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<langle\>|L<around*|(|L<rsup|\<ast\>><around*|(|x|)>|)>,x|\<rangle\>>=<around*|\<langle\>|L<rsup|\<ast\>><around*|(|L<around*|(|x|)>|)>,x|\<rangle\>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<langle\>|L<rsup|\<ast\>><around*|(|x|)>,L<rsup|\<ast\>><around*|(|x|)>|\<rangle\>>=<around*|\<langle\>|L<around*|(|x|)>,<around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>><around*|(|x|)>|\<rangle\>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>x\<in\>X<text|
      we have ><text|><around*|\<langle\>|L<rsup|\<ast\>><around*|(|x|)>,L<rsup|\<ast\>><around*|(|x|)>|\<rangle\>>=<around*|\<langle\>|L<around*|(|x|)>,L<around*|(|x|)>|\<rangle\>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>x\<in\>X<text|
      we have ><around*|\<\|\|\>|L<rsup|\<ast\>><around*|(|x|)>|\<\|\|\>><rsup|2>=<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|0\<leqslant\><around*|\<\|\|\>||\<\|\|\>>\<wedge\><text|[theorem:
      <reference|complex square operator is a
      bijection>]>>>|<cell|\<forall\>x\<in\>X<text| we have
      ><around*|\<\|\|\>|L<rsup|\<ast\>><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>>>>>
    </eqnarray*>

    proving the theorem.
  </proof>

  The following shows the relation between diagonalization of the matrix of a
  linear mapping and eigenvalues.

  <\theorem>
    <label|spectral orthonormalization and diagonlization>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space with
    <math|dim<around*|(|X|)>=n\<in\>\<bbb-N\>> and
    <math|L\<in\>Hom<around*|(|X|)>> then the following are equivalent:

    <\enumerate>
      <item>There exist a orthonormal basis
      <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> of <math|X> such
      that <math|\<cal-M\><around*|(|L;E,E|)>> is diagonal.

      <item><math|X> has a orthonormal basis
      <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> such that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|e<rsub|i>> is
      a eigenvector of <math|L>.
    </enumerate>

    Further if (1) or (2) is true the the eigenvalue of <math|e<rsub|i>> is
    <math|\<cal-M\><around*|(|L;E,E|)><rsub|i,i>>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As there exist a
      <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> such that
      <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|i\<neq\>j> we have <rigid|<math|\<cal-M\><around*|(|L;E,E|)><rsub|i,j>=0>>.
      Hence given <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|e<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-M\><around*|(|L;E,E|)><rsub|k,i>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\k\<neq\>i>\<cal-M\><around*|(|L;E,E|)><rsub|k,i>e<rsub|k>+<big|sum><rsub|k\<in\><around*|{|i|}>>\<cal-M\><around*|(|L;E,E|)><rsub|k,i>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L;E,E|)><rsub|i,i>\<cdot\>e<rsub|i>>>>>
      </eqnarray*>

      proving that <math|e<rsub|i>> is a eigenvector of <math|L> withe
      eigenvalue <math|\<cal-M\><around*|(|L;E,E|)><rsub|i,i>>

      <item*|<math|2\<Rightarrow\>1>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|e<rsub|i>> is a eigenvector of <math|L>, hence there exist a
      <math|\<lambda\><rsub|i>\<in\>\<bbb-K\>> such that
      <math|L<around*|(|e<rsub|i>|)>=\<lambda\><rsub|i>\<cdot\>e<rsub|i>>.
      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|e<rsub|i>|)>>|<cell|=>|<cell|\<lambda\><rsub|i>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|k>\<cdot\>\<delta\><rsub|i,k>\<cdot\>e<rsub|k>>>>>
      </eqnarray*>

      which proves by [definition: <reference|matrix linear mapping>] that
      <math|\<forall\>i,k\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<cal-M\><around*|(|L;E,E|)><rsub|k,i>=\<lambda\><rsub|k>\<cdot\>\<delta\><rsub|i,k>>
      proving that <math|\<cal-M\><around*|(|L;E,E|)>> is diagonal.
    </description>
  </proof>

  We prove now the Complex Spectral Theorem which proves that the matrix of a
  normal operator can be diagonlized or equivalent that there exist a basis
  of <math|X> of eigenvectors for the normal operators.

  <\theorem>
    <label|spectral complex spectral theorem><index|spectral Theorem
    (Complex)><dueto|Complex Spectral Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be complex finite dimensional inner product space with
    <math|<rigid|dim<around*|(|X|)>=n\<in\>\<bbb-N\>>>and
    <math|L\<in\>Hom<around*|(|X|)>> the the following are equivalent

    <\enumerate>
      <item><math|L> is normal

      <item>There exist a orthonormal basis
      <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> of <math|X> such
      that <math|\<cal-M\><around*|(|L;E,E|)>> is diagonal.

      <item><math|X> has a orthonormal basis
      <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> such that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|e<rsub|i>> is
      a eigenvector of <math|L>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Using Schur's theorem [see theorem:
      <reference|spectral Schur's theorem>] there exist a orthonormal basis
      <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> for <math|X> such
      that <math|M=\<cal-M\><around*|(|L;E,E|)>> is a upper triangular
      matrix. We use now a induction argument to prove that\ 

      <\equation>
        <label|eq 18.24.148>\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}><text|
        we have >\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>\<wedge\>\<forall\>j\<in\><around*|{|i+1,\<ldots\>,n|}><text|
        we have >M<rsub|i,j>=0
      </equation>

      So define\ 

      <\equation*>
        S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|<text|If >m\<leqslant\>n<text|
        then >\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>\<wedge\>\<forall\>j\<in\><around*|{|i+1,\<ldots\>,n|}><text|
        >M<rsub|i,j>=0|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S<rsub|n>>>As <math|M> is upper triangular we
        have

        <\equation*>
          L<around*|(|e<rsub|1>|)>=<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>M<rsub|k,1>\<cdot\>e<rsub|k>=M<rsub|1,1>+<big|sum><rsub|k\<in\><around*|{|2,\<ldots\>,n|}>>M<rsub|k,1>\<cdot\>e<rsub|k>=M<rsub|1,1>+0=M<rsub|1,1>\<cdot\>e<rsub|1>
        </equation*>

        so that <math|<around*|\<\|\|\>|L<around*|(|e<rsub|1>|)>|\<\|\|\>><rsup|2>=<around*|\<langle\>|L<around*|(|e<rsub|1>|)>,L<around*|(|e<rsub|1>|)>|\<rangle\>>=<around*|\<langle\>|M<rsub|1,1>\<cdot\>e<rsub|1>,M<rsub|1,1>\<cdot\>e<rsub|1>|\<rangle\>>=M<rsub|1,1>\<cdot\><wide|M<rsub|1,1>|\<wide-bar\>>\<cdot\><around*|\<langle\>|e<rsub|1>,e<rsub|1>|\<rangle\>>=<around*|\||M<rsub|1,1>|\|><rsup|2>>
        proving that\ 

        <\equation>
          <label|eq 18.25.148><around*|\<\|\|\>|L<around*|(|e<rsub|1>|)>|\<\|\|\>><rsup|2>=<around*|\||M<rsub|1,1>|\|><rsup|2>
        </equation>

        Further we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<rsup|\<ast\>><around*|(|e<rsub|1>|)>|\<\|\|\>><rsup|2>>|<cell|=>|<cell|<around*|\<langle\>|L<rsup|\<ast\>><around*|(|e<rsub|1>|)>,L<rsup|\<ast\>><around*|(|e<rsub|1>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)><rsub|k,1>\<cdot\>e<rsub|k>,<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|L<rsup|\<star\>>;E,E|)><rsub|l,1>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|inner matrix of adjoint
          operator>]>>>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L;E,E|)><rsup|H><rsub|k,1>\<cdot\>e<rsub|k>,<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|L;E,E|)><rsup|H><rsub|l,1>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|n><wide|\<cal-M\><around*|(|L;E,E|)><rsub|1,k>|\<wide-bar\>>\<cdot\>e<rsub|k>,<big|sum><rsub|l=1><rsup|n><wide|\<cal-M\><around*|(|L;E,E|)><rsub|1,l>|\<wide-bar\>>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|1,k>|\<wide-bar\>>\<cdot\>e<rsub|k>,<big|sum><rsub|l=1><rsup|n><wide|M<rsub|1,l>|\<wide-bar\>>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|1,k>|\<wide-bar\>>\<cdot\><around*|\<langle\>|e<rsub|k>,<big|sum><rsub|l=1><rsup|n><wide|M<rsub|1,l>|\<wide-bar\>>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|1,k>|\<wide-bar\>>\<cdot\><around*|(|<big|sum><rsub|l=1><rsup|n><wide|<wide|M<rsub|1,l>|\<wide-bar\>>|\<wide-bar\>>\<cdot\><around*|\<langle\>|e<rsub|k>,e<rsub|l>|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|1,k>|\<wide-bar\>>\<cdot\><around*|(|<big|sum><rsub|l=1><rsup|n>M<rsub|1,l>\<cdot\><around*|\<langle\>|e<rsub|k>,e<rsub|l>|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|1,k>|\<wide-bar\>>\<cdot\><around*|(|<big|sum><rsub|l=1><rsup|n>M<rsub|1,l>\<cdot\>\<delta\><rsub|k,l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|1,k>|\<wide-bar\>>\<cdot\>M<rsub|1,k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><around*|\||M<rsub|1,k>|\|><rsup|2>>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 18.26.148><around*|\<\|\|\>|L<rsup|\<ast\>><around*|(|e<rsub|1>|)>|\<\|\|\>><rsup|2>=<big|sum><rsub|k=1><rsup|n><around*|\||M<rsub|1,k>|\|><rsup|2>
        </equation>

        As <math|L> is normal we have by [theorem: <reference|spectral normal
        operator alternative>] we have that
        <math|<around*|\<\|\|\>|L<around*|(|e<rsub|1>|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|e<rsub|1>|)>|\<\|\|\>>>
        so that by [eqs: <reference|eq 18.25.148> and <reference|eq
        18.26.148>] we have\ 

        <\equation*>
          <around*|\||M<rsub|1,1>|\|><rsup|2>=<big|sum><rsub|k=1><rsup|n><around*|\||M<rsub|1,k>|\|><rsup|2>=<around*|\||M<rsub|1,1>|\|><rsup|2>+<big|sum><rsub|k\<in\><around*|{|2,\<ldots\>,n|}>><around*|\||M<rsub|1,k>|\|><rsup|2>
        </equation*>

        so that <math|><math|<big|sum><rsub|k\<in\><around*|{|2,\<ldots\>,n|}>><around*|\||M<rsub|1,k>|\|><rsup|2>=0>
        hence <math|\<forall\>k\<in\><around*|{|2,\<ldots\>,n|}>> we have
        <math|M<rsub|1,k>=0>. In other words
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,1|}>> we have
        <math|\<forall\>j\<in\><around*|{|1+1,\<ldots\>,n|}>> we have
        <math|M<rsub|i,j>=0>. Hence it is proved that
        <math|1\<in\>S<rsub|n>>.

        <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+a\<in\>S<rsub|n>>>If
        <math|m+1\<leqslant\>n> then <math|m\<less\>n> and as <math|m\<in\>S>
        we have that\ 

        <\equation>
          <label|eq 18.27.148>\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
          that >\<forall\>j\<in\><around*|{|m+1,\<ldots\>,n|}><text|
          >M<rsub|i,j>=0
        </equation>

        Further we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|e<rsub|m+1>|)>>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>M<rsub|k,m+1>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,m+1|}>>M<rsub|k,m+1>\<cdot\>e<rsub|k>+<big|sum><rsub|k\<in\><around*|{|m+2,\<ldots\>,n|}>>M<rsub|k,m+1>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|M<text|
          is upper triangular>>>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,m+1|}>>M<rsub|k,m+1>\<cdot\>e<rsub|k>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,m+1|}>>M<rsub|k,m+1>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|M<rsub|m+1,m+1>\<cdot\>e<rsub|m+1>+<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>M<rsub|k,m+1>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 18.27.148>]>>>|<cell|M<rsub|m+1,m+1>\<cdot\>e<rsub|m+1>+0>>>>
        </eqnarray*>

        so that

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|e<rsub|m+1>|)>|\<\|\|\>><rsup|2>=<around*|\<langle\>|L<around*|(|e<rsub|m+1>|)>,L<around*|(|e<rsub|m+1>|)>|\<rangle\>>=<around*|\<langle\>|M<rsub|m+1,m+1>\<cdot\>e<rsub|m+1>,M<rsub|m+1,m+1>\<cdot\>e<rsub|m+1><rsub|>|\<rangle\>>=<around*|\||M<rsub|m+1,m+1>|\|><rsup|2>
        </equation*>

        Hence we have\ 

        <\equation>
          <label|eq 18.28.148><around*|\<\|\|\>|L<around*|(|e<rsub|m+1>|)>|\<\|\|\>><rsup|2>=<around*|\||M<rsub|m+1,m+1>|\|><rsup|2>
        </equation>

        Further we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<rsup|\<ast\>><around*|(|e<rsub|m+1>|)>|\<\|\|\>><rsup|2>>|<cell|=>|<cell|<around*|\<langle\>|L<rsup|\<ast\>><around*|(|e<rsub|m+1>|)>,L<rsup|\<ast\>><around*|(|e<rsub|m+1>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L<rsup|\<star\>>;E,E|)><rsub|k,m+1>\<cdot\>e<rsub|k>,<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|L<rsup|\<star\>>;E,E|)><rsub|l,m+1>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|inner matrix of adjoint
          operator>]>>>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L;E,E|)><rsup|H><rsub|k,m+1>\<cdot\>e<rsub|k>,<big|sum><rsub|l=1><rsup|n>\<cal-M\><around*|(|L;E,E|)><rsup|H><rsub|l,m+1>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|n><wide|\<cal-M\><around*|(|L;E,E|)><rsub|m+1,k>|\<wide-bar\>>\<cdot\>e<rsub|k>,<big|sum><rsub|l=1><rsup|n><wide|\<cal-M\><around*|(|L;E,E|)><rsub|m+1,l>|\<wide-bar\>>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|m+1,k>|\<wide-bar\>>\<cdot\>e<rsub|k>,<big|sum><rsub|l=1><rsup|n><wide|M<rsub|m+1,l>|\<wide-bar\>>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|m+1,k>|\<wide-bar\>>\<cdot\><around*|\<langle\>|e<rsub|k>,<big|sum><rsub|l=1><rsup|n><wide|M<rsub|m+1,l>|\<wide-bar\>>\<cdot\>e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|m+1,k>|\<wide-bar\>>\<cdot\><big|sum><rsub|l=1><rsup|n><wide|<wide|M<rsub|m+1,l>|\<wide-bar\>>|\<wide-bar\>>\<cdot\><around*|\<langle\>|e<rsub|k>,e<rsub|l>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|m+1,k>|\<wide-bar\>>\<cdot\><big|sum><rsub|l=1><rsup|n>M<rsub|m+1,l>\<cdot\>\<delta\><rsub|k,l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><wide|M<rsub|m+1,k>|\<wide-bar\>>\<cdot\>M<rsub|m+1,k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n><around*|\||M<rsub|m+1,k>|\|><rsup|2>>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 18.29.148><around*|\<\|\|\>|L<rsup|\<star\>><around*|(|e<rsub|m+1>|)>|\<\|\|\>><rsup|2>=<big|sum><rsub|k=1><rsup|n><around*|\||M<rsub|m+1,k>|\|><rsup|2>
        </equation>

        As <math|L> is normal we have by [theorem: <reference|spectral normal
        operator alternative>] we have that
        <math|<around*|\<\|\|\>|L<around*|(|e<rsub|m+1>|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|e<rsub|m+1>|)>|\<\|\|\>>>
        we have by [eqs: <reference|eq 18.28.148> and <reference|eq
        18.29.148>] that\ 

        <\equation*>
          <around*|\||M<rsub|m+1,m+1>|\|><rsup|2>=<big|sum><rsub|k=1><rsup|n><around*|\||M<rsub|m+1,k>|\|><rsup|2>=<around*|\||M<rsub|m+1,m+1>|\|><rsup|2>+<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|m+1|}>><around*|\||M<rsub|m+1,k>|\|><rsup|2>
        </equation*>

        so that <math|><math|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|m+1|}>><around*|\||M<rsub|m+1,k>|\|><rsup|2>=0>,
        hence <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|m+1|}>>
        <math|M<rsub|m+1,k>=0>. Hence <math|\<forall\>j\<in\><around*|{|<around*|(|m+1|)>+1,\<ldots\>,n|}>>
        we have <math|M<rsub|m+1,j>=0> which combined with [eq: <reference|eq
        18.27.148>] proves that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m+1|}>>
        that <math|\<forall\>j\<in\><around*|{|<around*|(|m+1|)>+1,\<ldots\>,i|}>>
        <math|M<rsub|i,j>=0>. Hence we have proved that
        <math|m+1\<in\>S<rsub|n>>.
      </description>

      Mathematical induction proves that <math|S<rsub|n>=\<bbb-N\>> hence for\ 

      <\equation>
        <label|eq 18.130.148>\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}><text|
        we have >\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text| that
        >\<forall\>j\<in\><around*|{|m+1,\<ldots\>,i|}><text| we have
        >M<rsub|i,j>=0
      </equation>

      Let <math|k,l\<in\><around*|{|1,\<ldots\>,n|}>> with <math|k\<neq\>l>
      then we have either:

      <\description>
        <item*|<math|k\<less\>l>>As <math|k\<in\><around*|{|1,\<ldots\>,n|}>>,
        <math|k\<in\><around*|{|1,\<ldots\>,k|}>> and
        <math|k+1\<leqslant\>l\<Rightarrow\>l\<in\><around*|{|k+1,\<ldots\>,n|}>>
        it follows that <math|M<rsub|k,l>=0>.

        <item*|<math|l\<less\>k>>As <math|l\<in\><around*|{|1,\<ldots\>,n|}>>,
        <math|l\<in\><around*|{|1,\<ldots\>,l|}>> and
        <math|l+1\<leqslant\>k\<Rightarrow\>k\<in\><around*|{|l+1,\<ldots\>,n|}>>
        it follows that <math|M<rsub|k,l>=0>.
      </description>

      which proves that\ 

      <\equation*>
        \<cal-M\><around*|(|L;E,E|)>=M<text| is diagonal.>
      </equation*>

      <item*|<math|2\<Rightarrow\>1>>As there exist a basis
      <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> such that
      <math|\<cal-M\><around*|(|L;E,E|)>> is diagonal. Let
      <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with <math|i\<neq\>j> then
      <math|\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)><rsub|i,j>\<equallim\><rsub|<text|[theorem:
      <reference|inner matrix of adjoint operator>]>>\<cal-M\><around*|(|L;E,E|)><rsup|H><rsub|i,j>=<wide|\<cal-M\><around*|(|L;E,E|)><rsub|j,i>|\<wide-bar\>>=<wide|0|\<wide-bar\>>=0<wide||\<wide-bar\>>>
      so that <math|\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)>> is also
      diagonal. Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L\<circ\>L<rsup|\<ast\>>|)><around*|(|e<rsub|i>|)>>|<cell|=>|<cell|L<around*|(|L<rsup|\<ast\>><around*|(|e<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)><rsub|k,i>\<cdot\>e<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)><rsub|i,i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)>\<cdot\>L<around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)>\<cdot\><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L;E,E|)><rsub|k,i>\<cdot\>e<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)>\<cdot\>\<cal-M\><around*|(|L;E,E|)><rsub|i,i>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L;E,E|)>\<cdot\>\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)><rsub|i,i>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L;E,E|)>\<cdot\><big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L<rsup|\<ast\>>;E,E|)><rsub|k,i>\<cdot\>e<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|\<cal-M\><around*|(|L;E,E|)>\<cdot\>L<rsup|\<ast\>><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|\<star\>><around*|(|\<cal-M\><around*|(|L;E,E|)>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|\<ast\>><around*|(|<big|sum><rsub|k=1><rsup|n>\<cal-M\><around*|(|L;E,E|)><rsub|k,i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|\<ast\>><around*|(|L<around*|(|e<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsup|\<star\>>\<circ\>L|)><around*|(|e<rsub|i>|)>>>>>
      </eqnarray*>

      So that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have

      <\equation>
        <label|eq 18.31.148><around*|(|L\<circ\>L<rsup|\<ast\>>|)><around*|(|e<rsub|i>|)>=<around*|(|L<rsup|\<ast\>>\<circ\>L|)><around*|(|e<rsub|i>|)>
      </equation>

      Let <math|x\<in\>X> then we have that
      <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L\<circ\>L<rsup|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|L\<circ\>L<rsup|\<ast\>>|)><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|L\<circ\>L<rsup|\<ast\>>|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|L<rsup|\<ast\>>\<circ\>L|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsup|\<ast\>>\<circ\>L<rsup|>|)><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsup|\<ast\>>\<circ\>L<rsup|>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|L\<circ\>L<rsup|\<ast\>>=L<rsup|\<ast\>>\<circ\>L>.
      Hence <math|L> is normal.

      <item*|<math|2\<Leftrightarrow\>3>>This is actually proved in [theorem:
      <reference|spectral orthonormalization and diagonlization>]
    </description>
  </proof>

  <\corollary>
    <label|spectral theorema diagonalization>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a complete finite dimensional inner product spaces with
    <math|dim<around*|(|X|)>=n\<in\>\<bbb-N\>>,
    <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> a orthonormal basis
    of <math|X>, <math|L\<in\>Hom<around*|(|X|)>> a normal operator then
    there exist a unitary operator <math|U\<in\>Hom<around*|(|X|)>> such that
    <math|\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U;E,E|)>> is a
    diagonal matrix.
  </corollary>

  <\proof>
    Using the Complex Spectral Theorem there exist a orthonormal basis
    <math|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>> such that
    <math|\<cal-M\><around*|(|L;F,F|)>> is diagonal. By [theorem:
    <reference|spectral operator mapping bases is unitary>] there exist a
    unitary mapping <math|U\<in\>Hom<around*|(|X|)>> such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|U<around*|(|e<rsub|i>|)>=f<rsub|i>>. Then we have
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U;E,E|)><rsub|i,j>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner matrix of linear mapping>]>>>|<cell|<around*|\<langle\>|<around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U|)><around*|(|e<rsub|j>|)>,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|U<rsup|\<ast\>><around*|(|L<around*|(|U<around*|(|e<rsub|j>|)>|)>|)>,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|U<around*|(|e<rsub|j>|)>|)>,<around*|(|U<rsup|\<ast\>>|)><rsup|\<ast\>><around*|(|e<rsub|i>|)>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner adjoint of adjoint>]>>>|<cell|<around*|\<langle\>|L<around*|(|U<around*|(|e<rsub|j>|)>|)>,U<around*|(|e<rsub|i>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|f<rsub|j>|)>,f<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner matrix of linear mapping>]>>>|<cell|\<cal-M\><around*|(|L;F,F|)><rsub|i,j>>>>>
    </eqnarray*>

    so that <math|\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U;E,E|)>=\<cal-M\><around*|(|L;F;F|)>>
    proving that <math|\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U;E,E|)>>
    is diagonal.
  </proof>

  Having proved the spectral theorem in the complex case we proceed now to
  prove the spectral theorem for the real case/ First we need a little lemma.

  <\lemma>
    <label|lemma 18.95.148>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space,
    <math|<rigid|L\<in\>Hom<around*|(|X|)>>> a self-adjoint linear operator,
    <math|b,c\<in\>\<bbb-R\>> such that <math|b<rsup|2>\<less\>4\<cdot\>c>
    then <math|L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|X>> is a isomorphism.
  </lemma>

  <\proof>
    By [definition: <reference|spectral polynomial operator>] it follows that
    <math|L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|X>\<in\>Hom<around*|(|X|)>>
    so that using [theorem: <reference|linear mapping injective
    transformation>] we only have to prove that
    <math|L<rsup|2>+\<beta\>\<cdot\>L+c\<cdot\>Id<rsub|X>> is injective. For
    every <math|x\<in\>X> with <math|x\<neq\>0> we have using the Cauchy
    Schwarz inequality [see theorem: <reference|inner Schwartz in equality>]
    we have\ 

    <\equation*>
      -b\<cdot\><around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>=<around*|\<langle\>|-b\<cdot\>L<around*|(|x|)>,x|\<rangle\>>\<leqslant\><around*|\<\|\|\>|-b\<cdot\>L<around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>=<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>
    </equation*>

    or

    <\equation>
      <label|eq 18.32.148>-<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>b\<cdot\><around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>
    </equation>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<langle\>|<around*|(|L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|x>|)><around*|(|x|)>,x|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|L<rsup|2><around*|(|x|)>+b\<cdot\>L<around*|(|x|)>+c\<cdot\>x,x|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<rsup|2><around*|(|x|)>,x<rsup|>|\<rangle\>>+b\<cdot\><around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>+c\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|x|)>,L<rsup|\<ast\>><around*|(|x|)>|\<rangle\>>+b\<cdot\><around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>+c\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|L
      is adjoint>>>|<cell|<around*|\<langle\>|L<around*|(|x|)>,L<around*|(|x|)>|\<rangle\>>+b\<cdot\><around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>+c\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsup|2>+b\<cdot\><around*|\<langle\>|L<around*|(|x|)>,x|\<rangle\>>+c\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
      <reference|eq 18.32.148>>>>|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsup|2>-<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>+c\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>>>>
    </eqnarray*>

    proving\ 

    <\equation>
      <label|eq 18.33.148><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsup|2>-<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>+c\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<leqslant\><around*|\<langle\>|<around*|(|L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|x>|)><around*|(|x|)>,x|\<rangle\>>
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>-<frac|<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>|2>|)><rsup|2>+<around*|(|c-<frac|b<rsup|2>|4>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsup|2>-<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+<frac|<around*|\||b|\|><rsup|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>|4>+c\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<frac|b<rsup|2>|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>|<cell|\<equallim\><rsub|b\<in\>\<bbb-R\>\<Rightarrow\>b<rsup|2>=<around*|\||b|\|><rsup|2>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsup|2>-<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+c\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 18.33.148>]>>>|<cell|>>|<row|<cell|<around*|\<langle\>|<around*|(|L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|x>|)><around*|(|x|)>,x|\<rangle\>>>|<cell|>|<cell|<eq-number><label|eq
      18.34.148>>>>>
    </eqnarray*>

    Now as <math|0\<leqslant\><around*|(|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>-<frac|<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>|2>|)><rsup|2>>
    and <math|b<rsup|2>\<less\>4\<cdot\>c\<Rightarrow\>0\<less\>c-<frac|b<rsup|2>|4>>
    so that as <math|0\<less\><around*|\<\|\|\>|x|\<\|\|\>>> we have

    <\equation*>
      0\<less\><around*|(|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>-<frac|<around*|\||b|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>|2>|)><rsup|2>+<around*|(|c-<frac|b<rsup|2>|4>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>
    </equation*>

    which by [eq: <reference|eq 18.34.148>] results in\ 

    <\equation*>
      0\<less\><around*|\<langle\>|<around*|(|L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|x>|)><around*|(|x|)>,x|\<rangle\>>
    </equation*>

    so we must have that <math|<around*|(|L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|x>|)><around*|(|x|)>\<neq\>0>.
    Hence <math|ker<around*|(|L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|x>|)>=<around*|{|0|}>>
    so that by [theorem: <reference|linear mapping injectivity and kernel>]\ 

    <\equation*>
      L<rsup|2>+b\<cdot\>L+c\<cdot\>Id<rsub|x><text| is injective>
    </equation*>
  </proof>

  We are now ready to prove that in the real case self-adjoint operators have
  a eigenvector with areal eigenvalue.

  <\theorem>
    <label|spectral self-adjoint operators have a eigenvector with real
    eigenvalues>Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional inner product space and
    <math|L\<in\>Hom<around*|(|X|)>> a self-adjoint operator then <math|L>
    has a eigenvector.\ 

    <\note>
      Using [theorem: <reference|spectral self-adjoint operators have a
      eigenvector with real eigenvalues>] all the eigenvalues are real.
    </note>
  </theorem>

  <\proof>
    By [theorem: <reference|spectral eigenvectors exist in a finite
    dimensional complex space>] every <math|L\<in\>Home<around*|(|X|)>> in a
    complex finite dimensional inner product space has a eigenvector, hence
    this is also true for a self-adjoint operator. So we must only prove the
    theorem for a real finite dimensional inner product space. Let
    <math|n=dim<around*|(|X|)>\<in\>\<bbb-N\>> and choose <math|x\<in\>X>
    with <math|x\<neq\>0> [this exist because <math|n\<in\>\<bbb-N\>> so that
    <math|X> is non trivial]. Consider now the set
    <rigid|<math|W=<around*|{|L<rsup|0><around*|(|x|)>,\<ldots\>,L<rsup|n><around*|(|x|)>|}>\<subseteq\>X>>
    of <math|n+1> vectors in <math|X>. As <math|dim<around*|(|X|)>=n>
    <math|W> must be linear dependent [see theorem: <reference|basis card(S)
    \<gtr\> dim(V) then S is linear dependent>]]. So there exist a family
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that

    <\equation*>
      <around*|{|i\<in\><around*|{|0,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|}>\<neq\>\<varnothing\><text|
      and ><big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=0
    </equation*>

    As <math|<around*|{|i\<in\><around*|{|0,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|}>>
    is non empty and finite <math|N=max<around*|(|<around*|{|i\<in\>0,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|)>>
    exist. So we have\ 

    <\equation*>
      0=<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,N|}>>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>+<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,N|}>>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,N|}>>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>
    </equation*>

    or\ 

    <\equation>
      <label|eq 18.35.148><big|sum><rsub|i=0><rsup|N>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=0
    </equation>

    If <math|N=0> then <math|0=<big|sum><rsub|i=0><rsup|N>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>=a<rsub|0>\<cdot\>L<rsup|0><around*|(|x|)>=a<rsub|0>\<cdot\>x>
    which as <math|a<rsub|0>\<neq\>0> proves that <math|x=0> contradicting
    <math|x\<neq\>0>. Hence we have\ 

    <\equation>
      <label|eq 18.36.148>N\<neq\>0
    </equation>

    So if we define the polynomial <math|p\<in\>\<cal-P\>> by
    <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|N>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>>
    then <math|ord<around*|(|p|)>=N\<in\>\<bbb-N\>>. Hence by [theorem:
    <reference|fundamental factorization of a polynomial (2)>] there exists a
    <math|c\<in\>\<bbb-R\>\\<around*|{|0|}>>,
    <math|m,M\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\>>
    and <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,M|}>> we have

    <\equation*>
      <around*|(|b<rsub|i>|)><rsup|2>\<less\>4\<cdot\>c<rsub|i>
    </equation*>

    <\equation*>
      \<forall\>z\<in\>\<bbb-C\><text| we have
      >p<around*|(|z|)>=c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>
    </equation*>

    Define now

    <\equation*>
      <around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m+M+1|}>><text|
      by >p<rsub|i><around*|(|z|)>=<choice|<tformat|<table|<row|<cell|c=c\<cdot\>z<rsup|0><text|
      if >i=1>>|<row|<cell|z-\<lambda\><rsub|i-1><text| if
      >i\<in\><around*|{|2,\<ldots\>,m+1|}>>>|<row|<cell|z<rsup|2>+b<rsub|i-<around*|(|m+1|)>>\<cdot\>z+c<rsub|i-m><text|
      if >i\<in\><around*|{|m+2,\<ldots\>,m+M+1|}>>>>>>
    </equation*>

    then we have <math|\<forall\>c\<in\>\<bbb-C\>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m+M+1|}>>p<rsub|i><around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|1|}>>p<rsub|i><around*|(|z|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|2,\<ldots\>,m+1|}>>p<rsub|i><around*|(|z|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|m+2,\<ldots\>,m+M+1|}>>p<rsub|i><around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|2,\<ldots\>,m+1|}>><around*|(|z-\<lambda\><rsub|i-1>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|m+2,\<ldots\>,m+M+1|}>><around*|(|z<rsup|2>+b<rsub|i-<around*|(|m+1|)>>\<cdot\>z+c<rsub|i-<around*|(|m+1|)>>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|p<around*|(|z|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    Using [theorem: <reference|spectral finite product of polynomial>] we
    have then that\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|N>a<rsub|i>\<cdot\>L<rsup|i>\<equallim\><rsub|<text|[definition:
      <reference|spectral polynomial operator>]>>p<around*|[|L|]>\<equallim\><rsub|<text|[theorem:
      <reference|spectral finite product of
      polynomial>]]>><big|odot><rsub|i=1><rsup|n+M+1>p<rsub|i><around*|[|L|]>
    </equation*>

    Now as for <math|x\<neq\>0> we have <math|p<around*|[|L|]><around*|(|x|)>=<big|sum><rsub|i=0><rsup|N>a<rsub|i>\<cdot\>L<rsup|i><around*|(|x|)>\<equallim\><rsub|<text|[eq:
    <reference|eq 18.35.148>]>>0> it follows that
    <math|ker<around*|(|<big|odot><rsub|i=1><rsup|n+M+1>p<rsub|i><around*|[|L|]>|)>\<neq\>0>,
    hence using [theorem: <reference|spectral composition of injective linear
    mappings>] there exist a <math|k\<in\><around*|{|1,\<ldots\>,m+M+1|}>>
    such that <math|ker<around*|(|p<rsub|k><around*|[|L|]>|)>\<neq\>\<varnothing\>>
    or

    <\equation>
      <label|eq 18.37.148>p<rsub|k><around*|[|L|]><around*|(|y|)><text| is
      not injective>
    </equation>

    For <math|k> we have to consider the following cases\ 

    <\description>
      <item*|<math|k=1>>Then as <math|p<rsub|1>> is defined by
      <math|p<rsub|1><around*|(|z|)>=c\<cdot\>z<rsup|0>> we have
      <math|p<rsub|1><around*|[|L|]>=c\<cdot\>Id<rsub|X>>. As
      <math|p<rsub|1><around*|[|L|]>> is not injective
      <math|ker<around*|(|p<rsub|1><around*|[|L|]>|)>\<neq\>0> so that there
      exist a <math|x\<neq\>0> such that <math|0=p<rsub|k><around*|[|L|]><around*|(|x|)>=c\<cdot\>x>
      which as <math|c\<neq\>0> leads to the contradiction
      <math|0\<neq\>x=0>. Hence this case will never occur.

      <item*|<math|k\<in\><around*|{|m+2,\<ldots\>,m+M+1|}>>>Then as
      <math|p<rsub|k>> is defined by <math|p<rsub|k><around*|(|z|)>=z<rsup|2>+b<rsub|k>\<cdot\>z+c<rsub|k>>
      we have that

      <\equation*>
        p<rsub|k><around*|[|L|]>=L<rsup|2>+b<rsub|k>\<cdot\>L+c<rsub|k>\<cdot\>Id<rsub|X>
      </equation*>

      which as <math|><math|<around*|(|b<rsub|i>|)><rsup|2>\<less\>4\<cdot\>c<rsub|i>>
      proves by [lemma: <reference|lemma 18.95.148>] that
      <math|p<rsub|k><around*|[|L|]>> is a bijection hence injective
      contradicting [eq: <reference|eq 18.37.148>]. So this case never
      occurs.
    </description>

    So the only valid case is the case where
    <math|k\<in\><around*|{|2,\<ldots\>,m+1|}>>. Then
    <math|p<rsub|k><around*|(|z|)>=z-\<lambda\><rsub|k>> and
    <math|p<rsub|k><around*|[|L|]>=L-\<lambda\><rsub|k>\<cdot\>Id<rsub|X>>.
    As <math|ker<around*|(|p<rsub|k><around*|[|L|]>|)>\<neq\>0> there exist a
    <math|x\<in\>X> with <math|x\<neq\>0> such that
    <math|0=p<rsub|k><around*|[|L|]><around*|(|x|)>=L<around*|(|x|)>-\<lambda\><rsub|k>\<cdot\>x>
    or <math|L<around*|(|x|)>=\<lambda\><rsub|k>\<cdot\>x>. Hence we found a
    eigenvector of <math|L>.
  </proof>

  <\definition>
    <label|spectral orthogonal complement><index|orthogonal
    complement><index|<math|U<rsup|\<perp\>>>>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product space, <math|U\<subseteq\>X> then
    the <with|font-series|bold|orthogonal complement> of <math|U> noted by
    <math|U<rsup|\<perp\>>> is defined by\ 

    <\equation*>
      U<rsup|\<perp\>>=<around*|{|x\<in\>X\|\<forall\>y\<in\>U<text| we have
      ><around*|\<langle\>|x,y|\<rangle\>>=0|}>\<subseteq\>X
    </equation*>

    In other words the orthogonal complement of a set is the collection of
    all elements in <math|X> that are orthogonal to every element of the
    given set.
  </definition>

  <\theorem>
    <label|spectral orthogonal complement properties>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product space then we have:

    <\enumerate>
      <item>If <math|U\<subseteq\>X> then <math|U<rsup|\<perp\>>> is a
      sub-space of <math|X>.

      <item><math|<around*|{|0|}><rsup|\<perp\>>=X>

      <item><math|X<rsup|\<perp\>>=<around*|{|0|}>>

      <item>If <math|U\<subseteq\>X> then
      <math|U<big|cap>U<rsup|\<perp\>>\<subseteq\><around*|{|0|}>>

      <item>If <math|U\<subseteq\>X> is a sub-space then
      <math|U<big|cap>U<rsup|\<perp\>>=<around*|{|0|}>>

      <item>If <math|U,W\<subseteq\>X> with <math|U\<subseteq\>W> then
      <math|W<rsup|\<perp\>>\<subseteq\>U<rsup|\<perp\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\>U<rsup|\<perp\>>>,
      <math|\<alpha\>\<in\>\<bbb-K\>> then <math|\<forall\>u\<in\>U> we have
      <math|<around*|\<langle\>|x+\<alpha\>\<cdot\>y,u|\<rangle\>>=<around*|\<langle\>|x,u|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,u|\<rangle\>>=0+0=0>
      proving that <math|x+\<alpha\>\<cdot\>y\<in\>U<rsup|\<perp\>>>. Further
      as <math|\<forall\>u\<in\>U> <math|<around*|\<langle\>|0,u|\<rangle\>>=0>
      it follows that <math|0\<in\>U<rsup|\<perp\>>>, hence
      <math|U<rsup|\<perp\>>\<neq\>\<varnothing\>>.

      <item>As <math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,0|\<rangle\>>=0> it follows that
      <math|X\<subseteq\><around*|{|0|}><rsup|\<perp\>>\<subseteq\>X> so that
      <math|X=<around*|{|0|}><rsup|\<perp\>>>.

      <item>First <math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|0,x|\<rangle\>>> so that
      <math|<around*|{|0|}>\<subseteq\>X<rsup|\<perp\>>>, second if
      <math|y\<in\>X<rsup|\<perp\>>> then as
      <math|X<rsup|\<perp\>>\<subseteq\>X> <math|y\<in\>X>, so
      <math|<around*|\<langle\>|y,y|\<rangle\>>=0>, hence
      <math|y=0\<in\><around*|{|0|}>> proving that
      <math|X<rsup|\<perp\>>\<subseteq\><around*|{|0|}>>. Hence it follows
      that\ 

      <\equation*>
        X<rsup|\<perp\>>=<around*|{|0|}>
      </equation*>

      <item>Let <math|x\<in\>U<big|cap>U<rsup|\<perp\>>> then <math|x\<in\>U>
      and as also <math|x\<in\>U<rsup|\<perp\>>> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>>=0> so that
      <math|x=0\<in\><around*|{|0|}>>. Hence it follows that
      <math|U<big|cap>U<rsup|\<perp\>>\<subseteq\><around*|{|0|}>>.

      <item>As <math|U> is a sub-space it follows that <math|0\<in\>U>, as by
      <math|<around*|(|1|)>> <math|U<rsup|\<perp\>>> is a sub-space we have
      also a <math|0\<in\>U<rsup|\<perp\>>>, so
      <math|<around*|{|0|}>\<subseteq\>U<big|cap>U<rsup|\<perp\>>>. Combining
      this with (4) results in <math|U<big|cap>U<rsup|\<perp\>>=<around*|{|0|}>>.

      <item>If <math|x\<in\>W<rsup|\<perp\>>> then <math|\<forall\>u\<in\>U>
      we have, as <math|U\<subseteq\>W> that <math|u\<in\>W> hence
      <math|<around*|\<langle\>|x,u|\<rangle\>>=0> proving that
      <math|x\<in\>U<rsup|\<perp\>>>, hence
      <math|W<rsup|\<perp\>>\<subseteq\>U<rsup|\<perp\>>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|spectral theorem direct sum>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] inner product space, <math|U> a finite dimensional
    sup-space of <math|X> then

    <\equation*>
      X=U\<oplus\>U<rsup|\<perp\>>
    </equation*>
  </theorem>

  <\proof>
    We have the following cases to consider for <math|U>:

    <\description>
      <item*|<math|U<text| is trivial>>>Then <math|U=<around*|{|0|}>> and
      <math|U<rsup|\<perp\>>=<around*|{|0|}><rsup|\<perp\>>\<equallim\><rsub|<text|[theorem:
      <reference|spectral orthogonal complement properties>]>>X> so that

      <\equation*>
        U\<oplus\>U<rsup|\<perp\>>=<around*|{|0|}>\<oplus\>X\<equallim\><rsub|<text|[example:
        <reference|vector space internal direct sum trivial example>]>>X
      </equation*>

      <item*|<math|U<text| is not trivial>>>As <math|U> is finite dimensional
      there exist [theorem: <reference|inner orthonormalization (1)>] a
      orthonormal basis <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>,
      <math|n\<in\>\<bbb-N\>> for <math|U>. Let <math|x\<in\>X> then we have
      for <math|y=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\>e<rsub|i>>
      and <math|<rigid|z=x-y>><space|1em>that clearly

      <\equation*>
        x=y+z<text| and <math|y\<in\>U>>
      </equation*>

      Further if <math|u\<in\>U> then we have by [theorem: <reference|inner
      expansion in a orthonormal basis>] \ <math|u=<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|u,e<rsub|i>|\<rangle\>>\<cdot\>e<rsub|i>>
      then we have:

      <\description>
        <item*|real case>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<langle\>|z,u|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|x-y,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<around*|\<langle\>|y,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\>e<rsub|i>,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\><around*|\<langle\>|e<rsub|i>,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\><around*|\<langle\>|e<rsub|i>,<big|sum><rsub|k=1><rsup|n>u<rsub|k>\<cdot\>e<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\><big|sum><rsub|k=1><rsup|n>u<rsub|k>\<cdot\><around*|\<langle\>|e<rsub|i>,e<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\><big|sum><rsub|k=1><rsup|n>u<rsub|k>\<cdot\>\<delta\><rsub|i,k>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n>u<rsub|i>\<cdot\><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<around*|\<langle\>|x,<big|sum><rsub|i=1><rsup|n>u<rsub|i>\<cdot\>e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<around*|\<langle\>|x,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
        </eqnarray*>

        <item*|complex case>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<langle\>|z,u|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|x-y,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<around*|\<langle\>|y,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\>e<rsub|i>,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\><around*|\<langle\>|e<rsub|i>,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\><around*|\<langle\>|e<rsub|i>,<big|sum><rsub|k=1><rsup|n>u<rsub|k>\<cdot\>e<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\><big|sum><rsub|k=1><rsup|n><wide|u<rsub|k>|\<wide-bar\>>\<cdot\><around*|\<langle\>|e<rsub|i>,e<rsub|k>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>\<cdot\><big|sum><rsub|k=1><rsup|n><wide|u<rsub|k>|\<wide-bar\>>\<cdot\>\<delta\><rsub|i,k>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<big|sum><rsub|i=1><rsup|n><wide|u<rsub|i>|\<wide-bar\>>\<cdot\><around*|\<langle\>|x,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<around*|\<langle\>|x,<big|sum><rsub|i=1><rsup|n>u<rsub|i>\<cdot\>e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|x,u|\<rangle\>>-<around*|\<langle\>|x,u|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
        </eqnarray*>
      </description>

      so we have in all cases that <math|<around*|\<langle\>|z,u|\<rangle\>>=0>,
      proving that <math|z\<in\>U<rsup|\<perp\>>>. Hence we have that\ 

      <\equation*>
        X=U+U<rsup|\<perp\>>
      </equation*>

      As by [theorem: <reference|spectral orthogonal complement properties>]
      <math|U<big|cap>U<rsup|\<perp\>>=<around*|{|0|}>> it follows from
      [theorem: <reference|vector space internal direct sum decomposition>]
      that\ 

      <\equation*>
        X=U\<oplus\>U<rsup|\<perp\>>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|spectral orthogonal complement and linear operator>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real [or complex] finite dimensional space,
    <math|L\<in\>Hom<around*|(|X|)>> a self-adjoint operator and
    <math|U\<subseteq\>X> a sub-space of <math|X> so that
    <math|L<around*|(|U|)>\<subseteq\>U> then\ 

    <\enumerate>
      <item><math|L<around*|(|U<rsup|\<perp\>>|)>\<subseteq\>U<rsup|\<perp\>>>

      <item><math|L<rsub|\|U>\<in\>Hom<around*|(|U|)>> is self-adjoint in
      <math|<around*|\<langle\>|U,<around*|\<langle\>||\<rangle\>><rsub|\|U\<times\>U>|\<rangle\>>>

      <item><math|L<rsub|\|U>\<in\>Hom<around*|(|U<rsup|\<perp\>>|)>> is
      self-adjoint in <math|<around*|\<langle\>|U<rsup|\<perp\>>,<around*|\<langle\>||\<rangle\>><rsub|U<rsup|\<perp\>>\<times\>U<rsup|\<perp\>>>|\<rangle\>>>
    </enumerate>
  </theorem>

  Using [theorems: <reference|inner product real subspace>, <reference|inner
  product complex subspace>] for a proof that
  <math|<around*|\<langle\>|U,<around*|\<langle\>||\<rangle\>><rsub|\|U\<times\>U>|\<rangle\>>>
  and <math|<around*|\<langle\>|U<rsup|\<perp\>>,<around*|\<langle\>||\<rangle\>><rsub|U<rsup|\<perp\>>\<times\>U<rsup|\<perp\>>>|\<rangle\>>>
  are inner product space.

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|y\<in\>L<around*|(|U<rsup|\<perp\>>|)>> then there
      exist a <math|x\<in\>U<rsup|\<perp\>>> such that
      <math|y=L<around*|(|x|)>>. If <math|u\<in\>U> then
      <math|L<around*|(|u|)>\<in\>U> and we have
      <math|<around*|\<langle\>|y,u|\<rangle\>>=<around*|\<langle\>|L<around*|(|x|)>,u|\<rangle\>>=<around*|\<langle\>|x,L<rsup|\<ast\>><around*|(|u|)>|\<rangle\>>=<around*|\<langle\>|x,L<around*|(|u|)>|\<rangle\>>\<equallim\><rsub|L<around*|(|u|)>\<subseteq\>U\<wedge\>x\<in\>U<rsup|\<perp\>>>0>,
      hence <math|y\<in\>U<rsup|\<perp\>>>. So
      <math|L<around*|(|U<rsup|\<perp\>>|)>\<subseteq\>U<rsup|\<perp\>>>.

      <item>Let <math|x,y\<in\>U> then <math|L<rsub|\|U><around*|(|x|)>=L<around*|(|x|)>\<in\>U>
      and <math|L<rsub|\|U><around*|(|y|)>=L<around*|(|y|)>\<in\>U> so that

      <\equation*>
        <around*|\<langle\>|L<rsub|\|U><around*|(|x|)>,y|\<rangle\>><rsub|\|U\<times\>U>=<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>=<around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>=<around*|\<langle\>|x,L<rsub|\|U><around*|(|y|)>|\<rangle\>><rsub|\|U\<times\>U>
      </equation*>

      proving by [theorem: <reference|spectral self adjoint transformation>]
      that <math|L<rsub|\|U>> is self-adjoint.

      <item>This follows from (2) by replacing <math|U> by
      <math|U<rsup|\<bot\>>> and the fact that <math|U<rsup|\<bot\>>> is also
      a subspace in <math|X> [see theorem: <reference|spectral orthogonal
      complement properties>].
    </enumerate>
  </proof>

  We are now ready to prove the Spectral Theorem in the real case.\ 

  <\theorem>
    <label|spectral real spectral theorem><dueto|Real Spectral Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real finite dimensional space with
    <math|dim<around*|(|X|)>\<in\>\<bbb-N\>> and
    <math|L\<in\>Hom<around*|(|X|)>> then the following are equivalent:

    <\enumerate>
      <item><math|L> is self-adjoint

      <item>There exist a orthonormal base
      <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> for <math|X> such
      that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|e<rsub|i>> is a eigenvector of <math|L>.

      <item>There exists a orthonormal basis
      <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> for <math|X> such
      that <math|\<cal-M\><around*|(|L;E,E|)>> is diagonal.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>We prove this by induction on
      <math|dim<around*|(|X|)>> so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        ><around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>><text|
        is a real inner product space with >dim<around*|(|X|)>=n<text| and
        >L\<in\>Hom<around*|(|X|)><text| is self-adjoint then there exist a
        orthonormal base <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>
        for >X such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|>
        e<rsub|i><text| is a eigenvector of >L|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|dim<around*|(|X|)>=1> then there
        exist by [theorem: <reference|inner orthonormalization (1)>] a
        orthonormal basis <math|<around*|{|e<rsub|1>|}>> for <math|X>. As
        <math|L<around*|(|e<rsub|1>|)>\<in\>X> there exist a
        <math|\<lambda\><rsub|1>\<in\>\<bbb-R\>> such that
        <math|L<around*|(|e<rsub|1>|)>=\<lambda\><rsub|1>\<cdot\>e<rsub|1>>
        proving that <math|e<rsub|1>> is a eigenvector of <math|X>. Hence
        <math|1\<in\>S>.\ 

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
        be a real finite inner product space with
        <math|dim<around*|(|X|)>=n+1>
      </description>

      \ and take <math|L\<in\>Hom<around*|(|X|)>>. As <math|L> is
      self-adjoint there exist by [theorem: <reference|spectral self-adjoint
      operators have a eigenvector with real eigenvalues>] a eigenvector
      <math|x> with a real eigenvalue <math|\<lambda\>>, so that

      <\equation*>
        x\<neq\>0<text|, >L<around*|(|x|)>=\<lambda\>\<cdot\>x<text| and
        >\<lambda\>\<in\>\<bbb-R\>
      </equation*>

      Define <math|e<rsub|n+1>=<frac|x|<around*|\<\|\|\>|x|\<\|\|\>>>> then
      we have\ 

      <\equation*>
        e<rsub|n+1>\<neq\>0<text|, ><around*|\<\|\|\>|e<rsub|n+1>|\<\|\|\>>=1<text|
        and >L<around*|(|e<rsub|n+1>|)>=<frac|L<around*|(|x|)>|<around*|\<\|\|\>|x|\<\|\|\>>>=\<lambda\>\<cdot\><frac|x|<around*|\<\|\|\>|x|\<\|\|\>>>=\<lambda\>\<cdot\>e<rsub|n+1>
      </equation*>

      Define now <math|U=span<around*|(|<around*|{|e<rsub|n+1>|}>|)>=<around*|{|\<alpha\>\<cdot\>e<rsub|n+1>\|\<alpha\>\<in\>\<bbb-R\>|}>>
      which is a vector space with <math|dim<around*|(|U|)>=1>. Using
      [theorem: <reference|spectral orthogonal complement> we have then that\ 

      <\equation*>
        X=U\<oplus\>U<rsup|\<perp\>>
      </equation*>

      As <math|U<rsup|\<perp\>>\<in\>X> we have by [theorem: <reference|basis
      sub-space>] that <math|U<rsup|\<perp\>>> is finite dimensional, so we
      can use [theorem: <reference|vector space internal direct sum
      dimension>[ to get <math|n+1=dim<around*|(|X|)>=dim<around*|(|U\<oplus\>U<rsup|\<perp\>>|)>=dim<around*|(|U|)>+dim<around*|(|U<rsup|\<perp\>>|)>=1+dim<around*|(|U<rsup|\<perp\>>|)>>,
      hence <math|dim<around*|(|U<rsup|\<perp\>>|)>=n>. So by [theorem:
      <reference|inner product real subspace>] we have that\ 

      <\equation*>
        <around*|\<langle\>|U<rsup|\<perp\>>,<around*|\<langle\>||\<rangle\>><rsub|\|U<rsup|\<perp\>>>|\<rangle\>><text|
        is a real inner product space with
        >dim<around*|(|U<rsup|\<perp\>>|)>=n
      </equation*>

      Further by the previous theorem [theorem: <reference|spectral
      orthogonal complement and linear operator>] we have that
      <math|L<rsub|\|U<rsup|\<perp\>>>> is a self-adjoint operator in
      <math|<around*|\<langle\>|U<rsup|\<perp\>>,<around*|\<langle\>||\<rangle\>><rsub|\|U<rsup|\<perp\>>>|\<rangle\>>>.
      Hence as <math|n\<in\>\<cal-S\>> there exist a orthonormal basis
      <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> for
      <math|U<rsup|\<perp\>>> such that <math|\<forall\>i\<in\><around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
      <math|e<rsub|i>> is a eigenvector of <math|U<rsup|\<perp\>>> with
      eigenvector <math|\<lambda\><rsub|i>>. Consider now

      <\equation*>
        E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>,e<rsub|n+1>|}>
      </equation*>

      Let <math|i,j\<in\><around*|{|1,\<ldots\>,n+1|}>> with <math|i\<neq\>j>
      then we have either:

      <\description>
        <item*|<math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>>Then as
        <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> is orthonormal
        <math|<around*|\<langle\>|e<rsub|i>,e<rsub|j>|\<rangle\>>=0>

        <item*|<math|i=n+1\<wedge\>j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
        as <math|e<rsub|j>\<in\>U<rsup|\<perp\>>> and
        <math|e<rsub|n+1>\<in\>U> <math|<around*|\<langle\>|e<rsub|i>,e<rsub|j>|\<rangle\>>=<around*|\<langle\>|e<rsub|n+1>,e<rsub|j>|\<rangle\>>=0>

        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>j=n+1>>Then
        as <math|e<rsub|i>\<in\>U<rsup|\<perp\>>> and
        <math|e<rsub|n+1>\<in\>U> <math|<around*|\<langle\>|e<rsub|i>,e<rsub|j>|\<rangle\>>=<around*|\<langle\>|e<rsub|i>,e<rsub|n+1>|\<rangle\>>=0>
      </description>

      hence we have that <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>,e<rsub|n+1>|}>>
      is a orthonormal set. Using then [theorem: <reference|inner orthonormal
      set>] it follows that\ 

      <\equation*>
        <around*|{|e<rsub|1>,\<ldots\>,e<rsub|n+1>|}><text| is a orthonormal
        basis for >X
      </equation*>

      Further if <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>> then we have
      either:

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then
        <math|L<around*|(|e<rsub|i>|)>=L<rsub|\|U<rsup|\<perp\>>><around*|(|e<rsub|i>|)>=\<lambda\><rsub|i>\<cdot\>e<rsub|i>>
        so that <math|e<rsub|i>> is a eigenvector of <math|L>

        <item*|<math|i=n+1>>Then <math|L<around*|(|e<rsub|i>|)>=L<around*|(|e<rsub|n+1>|)>=\<lambda\>\<cdot\>e<rsub|n+1>>
        so that <math|e<rsub|i>> is a eigenvector of <math|L>
      </description>

      hence <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>>
      <math|e<rsub|i>> is a eigenvector of <math|L>. So <math|n+1\<in\>S>.

      <item*|<math|2\<Rightarrow\>1>>Let <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>
      be a orthonormal basis for <math|X> such that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|e<rsub|i>> is
      a eigenvector of <math|L>. Then if <math|x,y\<in\>X> there exist
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>,
      <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      such that <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>>
      and <math|y=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\>e<rsub|i>>. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>|)>,<big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>e<rsub|j>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>L<around*|(|e<rsub|i>|)>,<big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>e<rsub|j>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>\<lambda\><rsub|i>\<cdot\>e<rsub|i>,<big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>e<rsub|j>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>\<lambda\><rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,<big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>e<rsub|j>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>\<cdot\>\<lambda\><rsub|i>\<cdot\><big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\><around*|\<langle\>|e<rsub|i>,e<rsub|j>|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>\<cdot\>\<lambda\><rsub|i>\<cdot\><big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>\<delta\><rsub|i,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>x<rsub|i>\<cdot\>y<rsub|i>>>|<row|<cell|<around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>e<rsub|i>,L<around*|(|<big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>e<rsub|j>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|\<langle\>|e<rsub|i>,<big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>L<around*|(|e<rsub|j>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>\<lambda\><rsub|j>\<cdot\><around*|\<langle\>|e<rsub|i>,e<rsub|j>|\<rangle\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|n>y<rsub|j>\<cdot\>\<lambda\><rsub|j>\<cdot\>\<delta\><rsub|i,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>x<rsub|i>\<cdot\>y<rsub|i>>>>>
      </eqnarray*>

      From the above it follows that <math|<around*|\<langle\>|L<around*|(|x|)>,y|\<rangle\>>=<around*|\<langle\>|x,L<around*|(|y|)>|\<rangle\>>>
      which as <math|x,y\<in\>X> where chosen arbitrary proves that <math|L>
      is self-adjoint.

      <item*|<math|2\<Leftrightarrow\>3>>This is actually proved in [theorem:
      <reference|spectral orthonormalization and diagonlization>].
    </description>
  </proof>

  <\corollary>
    <label|spectral diagonalization of a self-adjoint operator (real)>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real finite dimensional space with
    <math|dim<around*|(|X|)>\<in\>\<bbb-N\>> with
    <math|<rigid|dim<around*|(|X|)>=n\<in\>\<bbb-N\>>>,
    <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> a orthonormal basis
    and <math|<rigid|L\<in\>Hom<around*|(|X|)>>> a self-adjoint operator then
    there exist a unitary operator <math|<rigid|U\<in\>Hom<around*|(|X|)>>>
    such that <math|\<cal-M\><around*|(|U<rsup|\<star\>>\<circ\>L\<circ\>U;E,E|)>>
    is diagonal.
  </corollary>

  <\proof>
    Using the real spectral theorem [theorem: <reference|spectral real
    spectral theorem>] there exist a orthonormal basis
    <math|<rigid|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>>> such
    <math|\<cal-M\><around*|(|L;F,F|)>> is diagonal. Take now the unitary
    mapping <math|U\<in\>Hom<around*|(|X|)>> defined by
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|U<around*|(|e<rsub|i>|)>=f<rsub|i>> [see theorem:
    <reference|spectral operator mapping bases is unitary>] then we have for
    <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U;E,E|)><rsub|i,j>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner matrix of linear mapping>]>>>|<cell|<around*|\<langle\>|<around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U|)><around*|(|e<rsub|j>|)>,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|U<rsup|\<ast\>><around*|(|L<around*|(|U<around*|(|e<rsub|j>|)>|)>|)>,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|U<around*|(|e<rsub|j>|)>|)>,<around*|(|U<rsup|\<ast\>>|)><rsup|\<ast\>><around*|(|e<rsub|i>|)>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner adjoint of adjoint>]>>>|<cell|<around*|\<langle\>|L<around*|(|U<around*|(|e<rsub|j>|)>|)>,U<around*|(|e<rsub|i>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|f<rsub|j>|)>,f<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|inner matrix of linear mapping>]>>>|<cell|\<cal-M\><around*|(|L;F,F|)><rsub|i,j>>>>>
    </eqnarray*>

    So <math|\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U;E,E|)>=\<cal-M\><around*|(|L;F,F|)>>
    which, as <math|\<cal-M\><around*|(|L;F,F|)>> is diagonal, proves that
    <math|<rigid|\<cal-M\><around*|(|U<rsup|\<ast\>>\<circ\>L\<circ\>U;E,E|)>>>
    is diagonal.
  </proof>

  <\theorem>
    <label|spectrum diagonalization of a matrix>Let <math|n\<in\>\<bbb-N\>>
    then we have:

    <\enumerate>
      <item>If <math|M\<in\>\<cal-M\><rsub|n,n><around*|(|\<bbb-R\>|)>> is a
      symmetric matrix then there exist a unitary matrix <math|U> such that
      <math|U<rsup|T>\<cdot\>M\<cdot\>U\<equallim\><rsub|U<text| is
      unitary>>U<rsup|-1>\<cdot\>M\<cdot\>U> is diagonal.

      <item>If <math|M\<in\>\<cal-M\><rsub|n,n><around*|(|\<bbb-C\>|)>> is a
      hermitian matrix then there exist a unitary matrix <math|U> such that
      <math|<rigid|U<rsup|H>\<cdot\>M\<cdot\>U\<equallim\><rsub|U<text| is
      unitary>>U<rsup|-1>\<cdot\>M\<cdot\>U>> is diagonal.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Take the inner product vector space
      <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
      defined in [example: <reference|inner product on R^n>] together with
      the canonical orthonormal basis <math|E=<around*|{|e<rsub|1>,\<ldots\>,e+n|}>>
      defined by <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>>
      [see example: <reference|inner canonical basis are orthonormal>].
      Define <math|L\<in\>Hom<around*|(|\<bbb-R\>|)>> by
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|L<around*|(|e<rsub|i>|)>=<big|sum><rsub|k=1><rsup|n>M<rsub|i,k>\<cdot\>e<rsub|k>>
      so that

      <\equation>
        <label|eq 18.39.149>\<cal-M\><around*|(|L;E,E|)>=M
      </equation>

      As <math|M> is symmetric it is Hermitian [see definition:
      <reference|inner hermitian matrix>] we have by [theorem:
      <reference|spectral matrices of self adjoint transformations are
      Hermitian>] that <math|L> is a self-adjoint operator. Using the real
      spectral theorem [see theorem: <reference|spectral real spectral
      theorem>] there exist a orthonormal basis
      <math|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>> such that
      <math|\<cal-M\><around*|(|L;F,F|)>> is diagonal. Let <math|V> be the
      coordinate transformation from <math|E> to <math|F> then using
      [theorem: <reference|spectral change of base>]

      <\equation*>
        \<cal-M\><around*|(|L;F,F|)>=\<cal-M\><around*|(|V;E,E|)><rsup|-1>\<cdot\>\<cal-M\><around*|(|L;E,E|)>\<cdot\>\<cal-M\><around*|(|V;E,E|)>
      </equation*>

      so that\ 

      <\equation*>
        \<cal-M\><around*|(|V;E,E|)><rsup|-1>\<cdot\>M\<cdot\>\<cal-M\><around*|(|V;E,E|)><text|
        is a diagonal matrix>
      </equation*>

      Using [theorem: <reference|spectral operator mapping bases is unitary>]
      it follows that <math|\<cal-M\><around*|(|V;E,E|)>> is unitary. So if
      we take <math|U=\<cal-M\><around*|(|V;E,E|)>> then we found a unitary
      matrix <math|U> such that <math|U<rsup|-1>\<cdot\>M\<cdot\>U> is
      diagonal.

      <item>Take the inner product vector space
      <math|<around*|\<langle\>|\<bbb-C\><rsup|n>,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
      defined in [example: <reference|inner product on C^n>] together with
      the canonical orthonormal basis <math|E=<around*|{|e<rsub|1>,\<ldots\>,e+n|}>>
      defined by <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>>
      [see example: <reference|inner canonical basis are orthonormal>].
      Define <math|L\<in\>Hom<around*|(|\<bbb-R\>|)>> by
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|L<around*|(|e<rsub|i>|)>=<big|sum><rsub|k=1><rsup|n>M<rsub|i,k>\<cdot\>e<rsub|k>>
      so that

      <\equation>
        <label|eq 18.40.149>\<cal-M\><around*|(|L;E,E|)>=M
      </equation>

      As <math|M> is Hermitian [see definition: <reference|inner hermitian
      matrix>] we have by [theorem: <reference|spectral matrices of self
      adjoint transformations are Hermitian>] that <math|L> is a self-adjoint
      operator hence normal by [theorem: <reference|spectral every
      self-adjoint an unitary operator are normal>]. Using the complex
      spectral theorem [see theorem: <reference|spectral complex spectral
      theorem>] there exist a orthonormal basis
      <math|F=<around*|{|f<rsub|1>,\<ldots\>,f<rsub|n>|}>> such that
      <math|\<cal-M\><around*|(|L;F,F|)>> is diagonal. Let <math|V> be the
      coordinate transformation from <math|E> to <math|F> then using
      [theorem: <reference|spectral change of base>]

      <\equation*>
        \<cal-M\><around*|(|L;F,F|)>=\<cal-M\><around*|(|V;E,E|)><rsup|-1>\<cdot\>\<cal-M\><around*|(|L;E,E|)>\<cdot\>\<cal-M\><around*|(|V;E,E|)>
      </equation*>

      so that\ 

      <\equation*>
        \<cal-M\><around*|(|V;E,E|)><rsup|-1>\<cdot\>M\<cdot\>\<cal-M\><around*|(|V;E,E|)><text|
        is a diagonal matrix>
      </equation*>

      Using [theorem: <reference|spectral operator mapping bases is unitary>]
      it follows that <math|\<cal-M\><around*|(|V;E,E|)>> is unitary. So if
      we take <math|U=\<cal-M\><around*|(|V;E,E|)>> then we found a unitary
      matrix <math|U> such that <math|U<rsup|-1>\<cdot\>M\<cdot\>U> is
      diagonal.
    </enumerate>
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

  \ 

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|17>
    <associate|page-first|1121>
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
    <associate|auto-24|<tuple|18.4.2|?>>
    <associate|auto-25|<tuple|eigen vector|?>>
    <associate|auto-26|<tuple|eigen value|?>>
    <associate|auto-27|<tuple|eigenspace|?>>
    <associate|auto-28|<tuple|<with|mode|<quote|math>|E<around*|(|L,\<lambda\>|)>>|?>>
    <associate|auto-29|<tuple|18.4.3|?>>
    <associate|auto-3|<tuple|inner product|?>>
    <associate|auto-30|<tuple|invariant sub-space|?>>
    <associate|auto-31|<tuple|upper triangular matrix|?>>
    <associate|auto-32|<tuple|upper triangular matrix|?>>
    <associate|auto-33|<tuple|Schur's Theorem|?>>
    <associate|auto-34|<tuple|18.4.4|?>>
    <associate|auto-35|<tuple|diagonal matrix|?>>
    <associate|auto-36|<tuple|self-adjoint linear transformation|?>>
    <associate|auto-37|<tuple|unitary operator|?>>
    <associate|auto-38|<tuple|coordinate transformation|?>>
    <associate|auto-39|<tuple|normal operator|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<around*|\<langle\>||\<rangle\>>>|?>>
    <associate|auto-40|<tuple|spectral Theorem (Complex)|?>>
    <associate|auto-41|<tuple|orthogonal complement|?>>
    <associate|auto-42|<tuple|<with|mode|<quote|math>|U<rsup|\<perp\>>>|?>>
    <associate|auto-5|<tuple|complex inner product|?>>
    <associate|auto-6|<tuple|18.2|?>>
    <associate|auto-7|<tuple|inner product norm|?>>
    <associate|auto-8|<tuple|18.3|?>>
    <associate|auto-9|<tuple|orthogonality|?>>
    <associate|eq 18.1.146|<tuple|18.1|?>>
    <associate|eq 18.10.146|<tuple|18.10|?>>
    <associate|eq 18.11.146|<tuple|18.11|?>>
    <associate|eq 18.12.146|<tuple|18.12|?>>
    <associate|eq 18.13.146|<tuple|18.13|?>>
    <associate|eq 18.130.148|<tuple|18.34|?>>
    <associate|eq 18.14.146|<tuple|18.17|?>>
    <associate|eq 18.14.150|<tuple|18.14|?>>
    <associate|eq 18.15.146|<tuple|18.18|?>>
    <associate|eq 18.15.150|<tuple|18.15|?>>
    <associate|eq 18.16.146|<tuple|18.19|?>>
    <associate|eq 18.16.150|<tuple|18.16|?>>
    <associate|eq 18.17.146|<tuple|18.20|?>>
    <associate|eq 18.18.146|<tuple|18.21|?>>
    <associate|eq 18.19.146|<tuple|18.22|?>>
    <associate|eq 18.2.146|<tuple|18.3|?>>
    <associate|eq 18.2.146.1|<tuple|18.2|?>>
    <associate|eq 18.20.147|<tuple|18.23|?>>
    <associate|eq 18.21.147|<tuple|18.24|?>>
    <associate|eq 18.22.147|<tuple|18.25|?>>
    <associate|eq 18.23.148|<tuple|18.27|?>>
    <associate|eq 18.23.149|<tuple|18.26|?>>
    <associate|eq 18.24.148|<tuple|18.28|?>>
    <associate|eq 18.25.148|<tuple|18.29|?>>
    <associate|eq 18.26.148|<tuple|18.30|?>>
    <associate|eq 18.27.148|<tuple|18.31|?>>
    <associate|eq 18.28.148|<tuple|18.32|?>>
    <associate|eq 18.29.148|<tuple|18.33|?>>
    <associate|eq 18.3.146|<tuple|18.4|?>>
    <associate|eq 18.31.148|<tuple|18.35|?>>
    <associate|eq 18.32.148|<tuple|18.36|?>>
    <associate|eq 18.33.148|<tuple|18.37|?>>
    <associate|eq 18.34.148|<tuple|18.38|?>>
    <associate|eq 18.35.148|<tuple|18.39|?>>
    <associate|eq 18.36.148|<tuple|18.40|?>>
    <associate|eq 18.37.148|<tuple|18.41|?>>
    <associate|eq 18.39.149|<tuple|18.42|?>>
    <associate|eq 18.4.146|<tuple|18.6|?>>
    <associate|eq 18.40.149|<tuple|18.43|?>>
    <associate|eq 18.5.146|<tuple|18.7|?>>
    <associate|eq 18.5.146.2|<tuple|18.5|?>>
    <associate|eq 18.8.146|<tuple|18.8|?>>
    <associate|eq 18.9.146|<tuple|18.9|?>>
    <associate|inner Gram-Schmidt procedure|<tuple|18.31|?>>
    <associate|inner Riesz Representation theorm|<tuple|18.36|?>>
    <associate|inner Schwartz in equality|<tuple|18.18|?>>
    <associate|inner adjoint and composition|<tuple|18.41|?>>
    <associate|inner adjoint of adjoint|<tuple|18.38|?>>
    <associate|inner adjoint operator|<tuple|18.37|?>>
    <associate|inner adjoint operator and composition|<tuple|18.41|?>>
    <associate|inner adjoint operator is linear|<tuple|18.39|?>>
    <associate|inner canonical basis are orthonormal|<tuple|18.27|?>>
    <associate|inner complex inner product properties|<tuple|18.10|?>>
    <associate|inner complex inner product space|<tuple|18.5|?>>
    <associate|inner complex product space construction|<tuple|18.15|?>>
    <associate|inner condition for linear operator to be
    zero|<tuple|18.12|?>>
    <associate|inner determinant of adjoint mapping|<tuple|18.51|?>>
    <associate|inner euclidean norm complex numbers|<tuple|18.21|?>>
    <associate|inner euclidean norm on finite dimensional spaces
    (complex)|<tuple|18.24|?>>
    <associate|inner euclidean norm on finite dimensional spaces
    (real)|<tuple|18.22|?>>
    <associate|inner euclidean norm real numbers|<tuple|18.20|?>>
    <associate|inner expansion in a orthonormal basis|<tuple|18.29|?>>
    <associate|inner hermitian matrix|<tuple|18.45|?>>
    <associate|inner linear function from inner product|<tuple|18.35|?>>
    <associate|inner linear independence and orthogonality|<tuple|18.28|?>>
    <associate|inner matrix of adjoint operator|<tuple|18.50|?>>
    <associate|inner matrix of linear mapping|<tuple|18.30|?>>
    <associate|inner orthogonality|<tuple|18.25|?>>
    <associate|inner orthonormal set|<tuple|18.33|?>>
    <associate|inner orthonormal set definition|<tuple|18.26|?>>
    <associate|inner orthonormalization (1)|<tuple|18.32|?>>
    <associate|inner product and finite sums|<tuple|18.11|?>>
    <associate|inner product complex subspace|<tuple|18.8|?>>
    <associate|inner product norm|<tuple|18.16|?>>
    <associate|inner product norm (1)|<tuple|18.19|?>>
    <associate|inner product on C^n|<tuple|18.9|?>>
    <associate|inner product on R^n|<tuple|18.4|?>>
    <associate|inner product real subspace|<tuple|18.2|?>>
    <associate|inner real inner product space|<tuple|18.1|?>>
    <associate|inner real inner product space properties|<tuple|18.3|?>>
    <associate|inner real product space construction|<tuple|18.14|?>>
    <associate|inner symmetric matrix|<tuple|18.44|?>>
    <associate|inner unitary matrix|<tuple|18.47|?>>
    <associate|lemma 18.95.148|<tuple|18.107|?>>
    <associate|spectral L^n is linear|<tuple|18.57|?>>
    <associate|spectral L^n+m=L^noL^m|<tuple|18.56|?>>
    <associate|spectral P[L] is a abelian semi group|<tuple|18.65|?>>
    <associate|spectral Schur's theorem|<tuple|18.82|?>>
    <associate|spectral change of base|<tuple|18.99|?>>
    <associate|spectral complex spectral theorem|<tuple|18.105|?>>
    <associate|spectral composition and permutations|<tuple|18.66|?>>
    <associate|spectral composition of injective linear
    mappings|<tuple|18.58|?>>
    <associate|spectral coordinate transformation|<tuple|18.98|?>>
    <associate|spectral diagnolizing operator is
    self-adjoint|<tuple|18.88|?>>
    <associate|spectral diagonal matrix|<tuple|18.83|?>>
    <associate|spectral diagonalization of a self-adjoint operator
    (real)|<tuple|18.115|?>>
    <associate|spectral distinct eigenvalues and linear
    independence|<tuple|18.74|?>>
    <associate|spectral eigen values of a self-adjoint operator are
    linear|<tuple|18.89|?>>
    <associate|spectral eigen vectors and values|<tuple|18.68|?>>
    <associate|spectral eigenspace|<tuple|18.71|?>>
    <associate|spectral eigenspace \<less\>\<gtr\> {0}|<tuple|18.73|?>>
    <associate|spectral eigenvectors exist in a finite dimensional complex
    space|<tuple|18.70|?>>
    <associate|spectral every self-adjoint an unitary operator are
    normal|<tuple|18.102|?>>
    <associate|spectral factorization of polynomial
    operators|<tuple|18.67|?>>
    <associate|spectral finite product of polynomial|<tuple|18.63|?>>
    <associate|spectral identy map is self-adjoint|<tuple|18.86|?>>
    <associate|spectral identy map is unitary|<tuple|18.94|?>>
    <associate|spectral invariant sub-space|<tuple|18.77|?>>
    <associate|spectral linear operator|<tuple|18.52|?>>
    <associate|spectral linear operator isomorphism|<tuple|18.53|?>>
    <associate|spectral matrices of self adjoint transformations are
    Hermitian|<tuple|18.87|?>>
    <associate|spectral normal operator|<tuple|18.101|?>>
    <associate|spectral normal operator alternative|<tuple|18.103|?>>
    <associate|spectral number of eigenvalues|<tuple|18.75|?>>
    <associate|spectral operator mapping bases is unitary|<tuple|18.100|?>>
    <associate|spectral orthogonal complement|<tuple|18.110|?>>
    <associate|spectral orthogonal complement and linear
    operator|<tuple|18.113|?>>
    <associate|spectral orthogonal complement properties|<tuple|18.111|?>>
    <associate|spectral orthonormalization and
    diagonlization|<tuple|18.104|?>>
    <associate|spectral polynomial operator|<tuple|18.59|?>>
    <associate|spectral polynomial operator composition and polynomial
    product|<tuple|18.61|?>>
    <associate|spectral real spectral theorem|<tuple|18.114|?>>
    <associate|spectral self adjoint transformation|<tuple|18.85|?>>
    <associate|spectral self-adjoint operator condition for operator to be
    zero|<tuple|18.90|?>>
    <associate|spectral self-adjoint operators have a eigenvector with real
    eigenvalues|<tuple|18.108|?>>
    <associate|spectral sum of eigenspaces|<tuple|18.76|?>>
    <associate|spectral theorem direct sum|<tuple|18.112|?>>
    <associate|spectral theorema diagonalization|<tuple|18.106|?>>
    <associate|spectral unitary operator|<tuple|18.91|?>>
    <associate|spectral unitary operator alternative|<tuple|18.92|?>>
    <associate|spectral unitary operator has a unitary
    matrix|<tuple|18.97|?>>
    <associate|spectral unitary operator properties|<tuple|18.93|?>>
    <associate|spectral upper triangular conditions|<tuple|18.80|?>>
    <associate|spectral upper triangular matrix|<tuple|18.78|?>>
    <associate|spectral upper triangular matrix for a linear
    operator|<tuple|18.81|?>>
    <associate|spectrum diagonalization of a matrix|<tuple|18.116|?>>
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

      <tuple|<tuple|eigen vector>|<pageref|auto-25>>

      <tuple|<tuple|eigen value>|<pageref|auto-26>>

      <tuple|<tuple|eigenspace>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|E<around*|(|L,\<lambda\>|)>>>|<pageref|auto-28>>

      <tuple|<tuple|invariant sub-space>|<pageref|auto-30>>

      <tuple|<tuple|upper triangular matrix>|<pageref|auto-31>>

      <tuple|<tuple|upper triangular matrix>|<pageref|auto-32>>

      <tuple|<tuple|Schur's Theorem>|<pageref|auto-33>>

      <tuple|<tuple|diagonal matrix>|<pageref|auto-35>>

      <tuple|<tuple|self-adjoint linear transformation>|<pageref|auto-36>>

      <tuple|<tuple|unitary operator>|<pageref|auto-37>>

      <tuple|<tuple|coordinate transformation>|<pageref|auto-38>>

      <tuple|<tuple|normal operator>|<pageref|auto-39>>

      <tuple|<tuple|spectral Theorem (Complex)>|<pageref|auto-40>>

      <tuple|<tuple|orthogonal complement>|<pageref|auto-41>>

      <tuple|<tuple|<with|mode|<quote|math>|U<rsup|\<perp\>>>>|<pageref|auto-42>>
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

      <with|par-left|<quote|1tab>|18.4.2<space|2spc>Eigenvectors and
      eigenvalues. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|18.4.3<space|2spc>Upper triangular and
      diagonal matrices <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|18.4.4<space|2spc>Diagonalization and
      spectral theorems <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <assign|chapter-nr|10>

  <chapter|Linear Algebra>

  <section|Sums and products>

  <subsection|Definition and properties>

  First we define the concept of a finite family in a semi-group.

  <\definition>
    <label|sum finite sum><index|<math|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>><dueto|Finite
    Sum>Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be a semi-group,
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>
    z finite family of elements of <math|A> then

    <\equation*>
      <big|sum><rsub|i=0><rsup|<around*|(|.|)>>x<rsub|i>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>A
    </equation*>

    is recursively defined [see definition: <reference|complex recursion step
    form finite>] by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|0>x<rsub|i>>|<cell|=>|<cell|x<rsub|0>>>|<row|<cell|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}><text|
      ><big|sum><rsub|i=0><rsup|i+1>x<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|i>x<rsub|i>|)>+x<rsub|i+1>>>>>
    </eqnarray*>

    \ 
  </definition>

  In the above definition we use the <math|<big|sum>>and talk about a finite
  sum because we interpret the <math|<around*|\<langle\>|A,+|\<rangle\>>> as
  a additive semi-group. However sometimes we want to work with
  multiplicative semi-groups [for example in a ring/field we have additive
  and multiplicative semi-groups]. In thise cases we talk about finite
  products and use then the <math|<big|prod>> symbol. Independent of the
  symbol used all statements about finite sums are also applicable for finite
  products. So we have the following definition for multiplicative groups.

  <\definition>
    <label|product finite product><index|<math|<big|prod><rsub|i=0><rsup|n>x<rsub|i>>><dueto|Finite
    Product>Let <math|<around*|\<langle\>|A,\<cdot\>|\<rangle\>>> be a
    semi-group, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>
    z finite family of elements of <math|A> then

    <\equation*>
      <big|prod><rsub|i=0><rsup|<around*|(|.|)>>x<rsub|i>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>A
    </equation*>

    is recursively defined [see definition: <reference|complex recursion step
    form finite>] by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|prod><rsub|i=0><rsup|0>x<rsub|i>>|<cell|=>|<cell|x<rsub|0>>>|<row|<cell|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}><text|
      ><big|prod><rsub|i=0><rsup|i+1>x<rsub|i>>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=0><rsup|i>x<rsub|i>|)>\<cdot\>x<rsub|i+1>>>>>
    </eqnarray*>

    \ 
  </definition>

  <\example>
    Let <math|<around*|{|2<rsup|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,3|}>>>
    then <math|<big|sum><rsub|i=0><rsup|3>2<rsup|i>>
  </example>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|3>2<rsup|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|2>2<rsup|i>|)>+2<rsup|3>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<big|sum><rsub|i=0><rsup|1>2<rsup|i>|)>+2<rsup|2>|)>+2<rsup|3>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|<big|sum><rsub|i=0><rsup|0>2<rsup|i>|)>+2<rsup|1>|)>+2<rsup|2>|)>+2<rsup|3>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|2<rsup|0>+2<rsup|1>|)>+2<rsup|2>|)>+2<rsup|3>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|1+2|)>+4|)>+8>>|<row|<cell|>|<cell|=>|<cell|15>>>>
    </eqnarray*>

    \;
  </proof>

  <\theorem>
    <label|sum alternative definition>If <math|<around*|\<langle\>|A,+|\<rangle\>>>
    is a semi-group, <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    then we have <math|\<forall\>k\<in\><around*|{|0,\<ldots\>,n|}>> that\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|k>x<rsub|i>=<choice|<tformat|<table|<row|<cell|x<rsub|0><text|
      if >k=0>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|k-1>x<rsub|i>|)>+x<rsub|k><text|
      if >k\<in\><around*|{|1,.,n|}>>>>>>
    </equation*>
  </theorem>

  <\proof>
    For <math|k\<in\><around*|{|0,\<ldots\>,n|}>> we have either:

    <\description>
      <item*|<math|k=0>>Then <math|<big|sum><rsub|i=0><rsup|k>x<rsub|i>=<big|sum><rsub|i=0><rsup|0>x<rsub|i>=x<rsub|0>>

      <item*|<math|k\<in\><around*|{|1,\<ldots\>,n|}>>>Then
      <math|l=k-1\<in\><around*|{|0,\<ldots\>,n-1|}>> so that

      <\equation*>
        <big|sum><rsub|i=0><rsup|k>x<rsub|i>=<big|sum><rsub|i=0><rsup|l+1>x<rsub|i>=<around*|(|<big|sum><rsub|i=0><rsup|l>x<rsub|i>|)>+x<rsub|l+1>=<around*|(|<big|sum><rsub|i=0><rsup|k-1>x<rsub|i>|)>+x<rsub|k>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|sum of neutral elements>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a semi-group, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>
    is such that <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
    <math|x<rsub|i>=0> then\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>x<rsub|i>=0
    </equation*>
  </theorem>

  <\proof>
    We prove this by mathematical induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A\<vdash\>\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>
      x<rsub|i>=0<text| we have ><big|sum><rsub|i=0><rsup|n>x<rsub|i>=0|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,0|}>>\<subseteq\>A>
      with <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,0|}>=<around*|{|0|}>>
      <math|x<rsub|i>=0> we have that <math|<big|sum><rsub|i=><rsup|0>x<rsub|i>=x<rsub|0>=0>
      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>A>
      with <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n+1|}>><math|>
      <math|x<rsub|i>=0> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|0>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\theorem>
    <label|sum of sums>Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be a
    Abelian semi-group, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>,
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>
    then\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n>x<rsub|i>+<big|sum><rsub|i=0><rsup|n>y<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    We prove this by mathematical induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A<text|
      we have ><big|sum><rsub|i=0><rsup|n><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n>x<rsub|i>+<big|sum><rsub|i=0><rsup|n>y<rsub|i>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>A>
      then <math|<big|sum><rsub|i=0><rsup|0><around*|(|x<rsub|i>+y<rsub|i>|)>=x<rsub|0>+y<rsub|0>=<big|sum><rsub|i=0><rsup|0>x<rsub|i>+<big|sum><rsub|i=0><rsup|0>y<rsub|i>>
      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
      <math|><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>A>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|x<rsub|i>+y<rsub|i>|)>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n><around*|(|x<rsub|i>+y<rsub|i>|)>|)>+<around*|(|x<rsub|n+1>+y<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>+<big|sum><rsub|i=0><rsup|n>y<rsub|i>|)>+<around*|(|x<rsub|n+1>+y<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity
        and commutatitivity>>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>+x<rsub|n+1>|)>+<around*|(|<big|sum><rsub|i=0><rsup|n>y<rsub|i>+y<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>+<big|sum><rsub|i=0><rsup|n+1>y<rsub|i>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\theorem>
    <label|sum of inverses>Let <math|<around*|\<langle\>|A,+|\<rangle\>>> is
    a group, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>
    then we have\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n><around*|(|-x<rsub|i>|)>=-<big|sum><rsub|i=0><rsup|n>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A<text|
      we have ><big|sum><rsub|i=0><rsup|n><around*|(|-x<rsub|i>|)>=-<big|sum><rsub|i=0><rsup|n>x<rsub|i>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>A>
      then <math|<big|sum><rsub|i=0<rsup|>><rsup|0><around*|(|-x<rsub|i>|)>=-x<rsub|i>=-<big|sum><rsub|i=0><rsup|0>x<rsub|i>>
      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>A>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|-x<rsub|i>|)>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n><around*|(|-x<rsub|i>|)>|)>+<around*|(|-x<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|-<big|sum><rsub|i=0><rsup|n>x<rsub|i>+<around*|(|-x<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|-<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>>>>
      </eqnarray*>

      we have <math|n+1\<in\>S>
    </description>

    \;
  </proof>

  <\theorem>
    <label|sum ring product>Let <math|<around*|\<langle\>|R,+,\<cdot\>|\<rangle\>>>
    be a ring, <math|\<alpha\>\<in\>R>, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>
    then we have\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    As usually the prove is by induction. So let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
      we have ><big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n>x<rsub|i>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,0|}>>>
      <math|<big|sum><rsub|i=0><rsup|0><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\>x<rsub|0>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|0>x<rsub|i>>
      we have that <math|0\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>A>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>|)>+\<alpha\>\<cdot\>x<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n>x<rsub|i>+\<alpha\>\<cdot\>x<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<around*|(|<big|sum><rsup|n><rsub|i=0>x<rsub|i>|)>+x<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>

    \;
  </proof>

  <\theorem>
    <label|sum of finite sums>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group, <math|n<rsub|1>,n<rsub|2>\<in\>\<bbb-N\><rsub|0>>
    and <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|0,\<ldots\>,n<rsub|1>|}>\<times\><around*|{|0,\<ldots\>,n<rsub|2>|}>>\<subseteq\>A>
    then\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n<rsub|1>><around*|(|<big|sum><rsub|j=0><rsup|n<rsub|2>>x<rsub|i,j>|)>=<big|sum><rsub|j=0><rsup|n<rsub|2>><around*|(|<big|sum><rsub|i=0><rsup|n<rsub|1>>x<rsub|i,j>|)>
    </equation*>

    See [definition: <reference|family index set is a product>] for
    <math|<around*|{|x<rsub|i,k>|}><rsub|k\<in\><around*|{|0,\<ldots\>,n<rsub|2>|}>>>
    and <math|<around*|{|x<rsub|k,j>|}><rsub|k\<in\><around*|{|0,\<ldots\>,n<rsub|1>|}>>>
    where <math|i\<in\><around*|{|0,\<ldots\>,n<rsub|1>|}>\<wedge\>j\<in\><around*|{|0,\<ldots\>,n<rsub|2>|}>>
    using in <math|<big|sum><rsub|j=0><rsup|n<rsub|2>>x<rsub|i,j>> and
    <math|<big|sum><rsub|i=0><rsup|n<rsub|1>>x<rsub|i,j>>.
  </theorem>

  <\proof>
    We prove this by induction so let <math|n\<in\><around*|{|0,\<ldots\>,n<rsub|1>|}>>
    and take

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\><around*|{|0,\<ldots\>,n<rsub|2>|}>\|\<forall\><around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>>\<subseteq\>A<text|
      then ><big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j=0><rsup|m>x<rsub|i>|)>=<big|sum><rsub|j=0><rsup|m><around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i,j>|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>Take
      <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0|}>>>
      then

      <\equation*>
        <big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j=0><rsup|0>x<rsub|i,j>|)>=<big|sum><rsub|i=0><rsup|n>x<rsub|i,0>=<big|sum><rsub|j=0><rsup|0><around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i,j>|)>
      </equation*>

      \ proving that <math|0\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>Take
      <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m+1|}>>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j=0><rsup|m+1>x<rsub|i,j>|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n><around*|(|<around*|(|<big|sum><rsub|j=0><rsup|m>x<rsub|i,j>|)>+x<rsub|i,m+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of sums>]>>>|<cell|<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j=0><rsup|m>x<rsub|i,j>|)>+<big|sum><rsub|i=0><rsup|n>x<rsub|i,m+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|m\<in\>S>>|<cell|<big|sum><rsub|j=0><rsup|m><around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i,j>|)>+<big|sum><rsub|i=0><rsup|n>x<rsub|i,m+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|m+1><rsub|j=0><around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i,j>|)>>>>>
      </eqnarray*>

      proving that <math|m+1\<in\>S<rsub|n>>.
    </description>

    Using mathematical induction we havethen that
    <math|S<rsub|n>=\<bbb-N\><rsub|0>>. So if
    <math|n<rsub|1>,n<rsub|2>\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i.j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|0,\<ldots\>,n<rsub|1>|}>\<times\><around*|{|0,\<ldots\>,n<rsub|2>|}>>>
    then as <math|n<rsub|1>\<in\>\<bbb-N\><rsub|0>> we have
    <math|n<rsub|2>\<in\>\<bbb-N\><rsub|0>=S<rsub|n<rsub|1>>> so that

    <\equation*>
      <big|sum><rsub|i=0><rsup|n<rsub|1>><around*|(|<big|sum><rsub|j=0><rsup|n<rsub|2>>x<rsub|i,j>|)>=<big|sum><rsub|j=0><rsup|n<rsub|2>><around*|(|<big|sum><rsub|i=0><rsup|n<rsub|1>>x<rsub|i,j>|)>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|sum of differences>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian group, <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>
    then for <math|<around*|{|x<rsub|i+1>-x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n-1|}>>>
    we have\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n-1><around*|(|x<rsub|i+1>-x<rsub|i>|)>=x<rsub|n>-x<rsub|0><rsub|>
    </equation*>

    <\equation*>
      \;
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>\|<text|If
      ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A<text|
      then ><big|sum><rsub|i=0><rsup|n-1><around*|(|x<rsub|i+1>-x<rsub|i>|)>=x<rsub|n>-x<rsub|0>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,1|}>>\<subseteq\>A>
      then <math|<big|sum><rsub|i=0><rsup|1-1>x<rsub|i>=<big|sum><rsub|i=0><rsup|0><around*|(|x<rsub|i+1>-x<rsub|i>|)>=x<rsub|1>-x<rsub|0>>
      proving that <math|1\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
      <math|<around*|{|x<rsub|i>|)><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>A>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|<around*|(|n+1|)>-1><around*|(|x<rsub|i+1>-x<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n><around*|(|x<rsub|i+1>-x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1><around*|(|x<rsub|i+1>-x<rsub|i>|)>|)>+<around*|(|x<rsub|n+1>-x<rsub|n><rsub|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|x<rsub|n>-x<rsub|0>|)>+<around*|(|x<rsub|n+1>-x<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|associativity<infix-and>commutativity>>|<cell|x<rsub|n+1>-x<rsub|0>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\definition>
    Let <math|A> be a set, <math|n,m\<in\>\<bbb-N\><rsub|0>> with
    <math|n\<leqslant\>m> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>A>
    a family then then the family <math|<around*|{|x<rsub|i+n>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    is defined as <math|x\<circ\>\<beta\>> where
    <math|\<beta\>:<around*|{|0,\<ldots\>,m-n|}>\<rightarrow\><around*|{|n,\<ldots\>m|}>>
    is defined by

    <\equation*>
      \<beta\><around*|(|i|)>=n+i
    </equation*>

    [see definition: <reference|family and function composition>]
  </definition>

  <\proof>
    We must of course prove that <math|\<beta\>:<around*|{|0,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    is indeed a bijection:

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>>
      then <math|n+i=n+j\<Rightarrow\>i=j>

      <item*|surjectivity>If <math|j\<in\><around*|{|n,\<ldots\>,m|}>> then
      <math|n\<leqslant\>j\<wedge\>j\<leqslant\>m> so that
      <math|0\<leqslant\>j-n\<wedge\>j-n\<leqslant\>m-n>. Take <math|i=j-n>
      then <math|i\<in\><around*|{|0,\<ldots\>,m-n|}>> and
      <math|\<beta\><around*|(|i|)>=i+n=<around*|(|j-n|)>+n=j> proving
      surjectivity.<math|>
    </description>
  </proof>

  Up to now we have only defined the finite sum of family of elements indexed
  by <math|<around*|{|0,\<ldots\>,n|}>>, we extend now this definition to a
  more general index set.\ 

  <\definition>
    If <math|<around*|\<langle\>|A,+|\<rangle\>>> is a semi-group,
    <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>A>
    then we define <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>> by\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m>x<rsub|i>=<big|sum><rsub|i=0><rsup|m-n>x<rsub|n+i>
    </equation*>

    <\note>
      If <math|n=0> then <math|m-n=m> and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>=<around*|{|x<rsub|0+i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>=<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>>
      and <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>=<big|sum><rsub|i=0><rsup|m>x<rsub|0+i>=<big|sum><rsub|i=0><rsup|m>x<rsub|i>>
      as expected.
    </note>
  </definition>

  \;

  Using the above definition we can rephrase [theorems: <reference|sum
  alternative definition>, <reference|sum of neutral elements>,
  <reference|sum of sums>, <reference|sum of finite sums>, <reference|sum of
  inverses>, <reference|sum of differences>]

  <\theorem>
    <label|sum alternative definition (1)>If
    <math|<around*|\<langle\>|A,+|\<rangle\>>> is a semi-group,
    <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<less\>m> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>A>
    then we have\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|k>x<rsub|i>=<choice|<tformat|<table|<row|<cell|x<rsub|n><text|
      if k=n>>>|<row|<cell|<around*|(|<big|sum><rsub|i=n><rsup|k-1>x<rsub|i>|)>+x<rsup|k><text|if
      >k\<in\><around*|{|n+1,\<ldots\>,m|}>>>>>>
    </equation*>
  </theorem>

  <\proof>
    Let <math|k\<in\><around*|{|n,\<ldots\>,m|}>> then we have either:

    <\description>
      <item*|<math|k=n>>Then <math|<big|sum><rsub|i=n><rsup|k>x<rsub|i>=<big|sum><rsub|i=n><rsup|n>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-n>x<rsub|n+i>=<big|sum><rsub|i=0><rsup|0>x<rsub|n+i>=x<rsub|n+0>=x<rsub|n>>

      <item*|<math|k\<in\><around*|{|n+1,\<ldots\>,m|}>>>Then as
      <math|n\<less\>m> we have <math|m-n\<in\>\<bbb-N\>> so that by
      [theorem: <reference|sum alternative definition>] for
      <math|l\<in\><around*|{|1,\<ldots\>,m-n|}>>\ 

      <\equation>
        <label|eq 11.1.054><big|sum><rsub|i=0><rsup|l>x<rsub|n+i>=<around*|(|<big|sum><rsub|i=0><rsup|l-1>x<rsub|n+i>|)>+x<rsub|n+l>
      </equation>

      <\equation*>
        <big|sum><rsub|i=n><rsup|k>x<rsub|i>=<big|sum><rsub|i=0><rsup|k-n>x<rsub|n+i>\<equallim\><rsub|k-n\<in\><around*|{|1,\<ldots\>,m-n|}><text|
        and [eq: <reference|eq 11.1.054>]>><around*|(|<big|sum><rsub|i=0><rsup|<around*|(|k-n|)>-1>x<rsub|n+i>|)>+x<rsub|n+<around*|(|k-n|)>>=<around*|(|<big|sum><rsub|i=n><rsup|k-1><rsub|>x<rsub|i>|)>+x<rsub|k>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|sum of neutral element (1)>If <math|<around*|\<langle\>|A,+|\<rangle\>>>
    is a semi-group, <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<less\>m>
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>A>
    is such that <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,m|}>>
    <math|x<rsub|i>=0> then

    <\equation*>
      <big|sum><rsub|i=n><rsup|m>x<rsub|i>=0
    </equation*>
  </theorem>

  <\proof>
    Note that <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,m-n|}>>
    <math|n+i\<in\><around*|{|n,\<ldots\>,m|}>> so that <math|x<rsub|n+i>=0>,
    hence

    <\equation*>
      <big|sum><rsub|i=n><rsup|m>x<rsub|i>\<equallim\><rsub|def><big|sum><rsub|i=0><rsup|m-m>x<rsub|n+i>\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral elements>]>>0
    </equation*>
  </proof>

  <\theorem>
    <label|sum of sums (1)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be
    a Abelian semi-group, <math|n,m\<in\>\<bbb-N\><rsub|0>>
    with<space|1em><math|n\<leqslant\>m> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>A>
    then\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i=n><rsup|m>x<rsub|i>+<big|sum><rsub|i=n><rsup|m>y<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    We have\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i=0><rsup|m-n><around*|(|x<rsub|n+i>+y<rsub|n+i>|)>=<big|sum><rsub|i=0><rsup|m-n>x<rsub|i>+<big|sum><rsub|i=0><rsup|m-n>y<rsub|i>=<big|sum><rsub|i=n><rsup|m>x<rsub|i>+<big|sum>y<rsub|i><rsub|i=n><rsup|m>
    </equation*>
  </proof>

  <\theorem>
    <label|sum ring product (1)>Let <math|<around*|\<langle\>|R,+,\<cdot\>|\<rangle\>>>
    be a ring, <math|\<alpha\>\<in\>R>, <math|n,m\<in\>\<bbb-N\><rsub|0>>
    with <math|n\<leqslant\>m> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>A>
    then we have\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|m>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<big|sum><rsup|m-n><rsub|i=0><around*|(|\<alpha\>\<cdot\>x<rsub|n+i>|)>\<equallim\><rsub|<text|[theorem:
      <reference|sum ring product>]>>\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|m-n>x<rsub|n+i>=\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|m>x<rsub|i>
    </equation*>
  </proof>

  <\theorem>
    <label|sum of finite sums (1)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group, <math|n<rsub|1>,n<rsub|2>,m<rsub|1>,m<rsub|2>\<in\>\<bbb-N\><rsub|0>>
    with <math|n<rsub|1>\<leqslant\>m<rsub|1>>,
    <math|n<rsub|2>\<leqslant\>m<rsub|2>> and
    <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|n<rsub|1>,\<ldots\>,m<rsub|1>|}>\<times\><around*|{|n<rsub|2>,\<ldots\>,m<rsub|2>|}>>\<subseteq\>A>
    then\ 

    <\equation*>
      <big|sum><rsub|i=n<rsub|1>><rsup|m<rsub|1>><around*|(|<big|sum><rsub|j=n<rsub|2>><rsup|m<rsub|2>>x<rsub|i,j>|)>=<big|sum><rsub|j=n<rsub|2>><rsup|m<rsub|2>><around*|(|<big|sum><rsub|i=n<rsub|1>><rsup|m<rsub|1>>x<rsub|i,j>|)>
    </equation*>

    See [definition: <reference|family index set is a product>] for
    <math|<around*|{|x<rsub|i,k>|}><rsub|k\<in\><around*|{|n<rsub|2>,\<ldots\>,m<rsub|2>|}>>>
    and <math|<around*|{|x<rsub|k,j>|}><rsub|k\<in\><around*|{|n<rsub|1>,\<ldots\>,m<rsub|1>|}>>>
    where <math|i\<in\><around*|{|n<rsub|1>,\<ldots\>,m<rsub|1>|}>\<wedge\>j\<in\><around*|{|n<rsub|2>,\<ldots\>,m<rsub|2>|}>>
    using in <math|<big|sum><rsub|j=n<rsub|2>><rsup|m<rsub|2>>x<rsub|i,j>>
    and <math|<big|sum><rsub|i=n<rsub|1>><rsup|m<rsub|1>>x<rsub|i,j>>.
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=n<rsub|1>><rsup|m<rsub|1>><around*|(|<big|sum><rsub|j=n<rsub|2>><rsup|m<rsub|2>>x<rsub|i,j>|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m<rsub|1>-n<rsub|1>><around*|(|<big|sum><rsub|j=n<rsub|2>><rsup|m<rsub|2>>x<rsub|n<rsub|1>+i,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m<rsub|1>-n<rsub|1>><around*|(|<big|sum><rsub|j=0><rsup|m<rsub|2>-n<rsub|2>>x<rsub|n<rsub|1>+i,m<rsub|2>+j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theroem:
      <reference|sum of finite sums>]>>>|<cell|<big|sum><rsub|j=0><rsup|m<rsub|2>-n<rsub|2>><around*|(|<big|sum><rsub|i=0><rsup|m<rsub|1>-n<rsub|1>>x<rsub|n<rsub|1>+i,m<rsub|2>+j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=0><rsup|m<rsub|2>-n<rsub|2>><around*|(|<big|sum><rsub|i=n<rsub|1>><rsup|m<rsub|1>>x<rsub|i,m<rsub|2>+j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=n<rsub|2>><rsup|m<rsub|2>><around*|(|<big|sum><rsub|i=n<rsub|1>><rsup|m<rsub|1>>x<rsub|i,j>|)>>>>>
    </eqnarray*>

    \;
  </proof>

  <\theorem>
    <label|sum of inverses (1)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    is a group, <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>A>
    then we have\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m><around*|(|-x<rsub|i>|)>=-<big|sum><rsub|i=n><rsup|m>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    We have\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m><around*|(|-x<rsub|i>|)>=<big|sum><rsub|i=0><rsup|m-n><around*|(|-x<rsub|n+i>|)>\<equallim\><rsub|<text|[theorem:
      <reference|sum of inverses>]>>-<big|sum><rsub|i=0><rsup|m-n>x<rsub|i>=-<big|sum><rsub|i=n><rsup|m>x<rsub|i>
    </equation*>
  </proof>

  \;

  <\theorem>
    <label|sum of differences (1)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian group, <math|n,m\<in\>\<bbb-N\><rsub|0>> with
    <math|n\<less\>m> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>A>
    then for <math|<around*|{|x<rsub|i+1>-x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m-n-1|}>>>
    we have

    <\equation*>
      <big|sum><rsub|i=n><rsup|m-n-1><around*|(|x<rsub|i+1>-x<rsub|i>|)>=x<rsub|m>-x<rsub|n>
    </equation*>
  </theorem>

  <\proof>
    As <math|n\<less\>m> we have that <math|m-n\<in\>\<bbb-N\>>, so using
    [theorem: <reference|sum of differences>] we have\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|m-n-1><around*|(|x<rsub|<around*|(|n+i|)>+1>-x<rsub|n+i>|)>=x<rsub|n+<around*|(|m-n|)>>-x<rsub|n+0>=x<rsub|m>-x<rsub|n>
    </equation*>

    so that\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m><around*|(|x<rsub|i+1>-x<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n><around*|(|x<rsub|<around*|(|n+i|)>+1>-x<rsub|n+i>|)>=x<rsub|m>-x<rsub|n>
    </equation*>
  </proof>

  <subsection|Associativity>

  <\theorem>
    <label|sum associativity simple>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a semi-group <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<less\>m>
    and <math|k\<in\><around*|{|n,\<ldots\>,m-1|}>> then\ 

    <\equation*>
      <big|sum><rsub|i=n><rsup|m>x<rsub|i>=<big|sum><rsub|i=n><rsup|k>x<rsub|i>+<big|sum><rsub|i=k+1><rsup|m>x<rsub|i><rsub|>
    </equation*>
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>> and let <math|k\<in\><around*|{|0,\<ldots\>,n-1|}>>
    and define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A<text|
      we have >\<forall\>k\<in\><around*|{|0,\<ldots\>,n-1|}><text|
      ><big|sum><rsub|i=0><rsup|n>x<rsub|i>=<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<big|sum><rsub|i=k+1><rsup|n>x<rsub|i>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,1|}>=<around*|{|0,1|}>>\<subseteq\>A>
      and let <math|k\<in\><around*|{|0,\<ldots\>,1-1|}>=<around*|{|0|}>>
      then

      <\equation*>
        <big|sum><rsub|i=0><rsup|1>x<rsub|i>=<around*|(|<big|sum><rsub|i=0><rsup|0>x<rsub|i>|)>+x<rsub|1>=<around*|(|<big|sum><rsub|0><rsup|k>x<rsub|i>|)>+x<rsub|1>\<equallim\><big|sum><rsub|i=0><rsup|k>x<rsub|i>+<big|sum><rsub|i=0><rsup|0>x<rsub|1+i>=<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<big|sum><rsub|i=1><rsup|1>x<rsub|i>
      </equation*>

      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>A>
      and take <math|k\<in\><around*|{|0,\<ldots\>,<around*|(|n+1|)>-1|}>=<around*|{|0,\<ldots\>,n|}>>
      then we have for <math|k> either:

      <\description>
        <item*|<math|k=n>>Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>x<rsub|i>+<big|sum><rsub|i=0><rsup|0>x<rsub|<around*|(|n+1|)>+i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>x<rsub|i>+<big|sum><rsub|i=n+1><rsup|n+1>x>>|<row|<cell|>|<cell|\<equallim\><rsub|k=n>>|<cell|<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<big|sum><rsub|i=k+1><rsup|n+1>x<rsub|i>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>

        <item*|<math|k\<in\><around*|{|0,\<ldots\>,n-1|}>>>Then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S\<wedge\>k\<in\><around*|{|0,\<ldots\>,n-1|}>>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<big|sum><rsub|i=k+1><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<around*|(|<around*|(|<big|sum><rsub|i=k+1><rsup|n>x<rsub|i>|)>+x<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n-<around*|(|k+1|)>>x<rsub|<around*|(|k+1|)>+i>|)>+x<rsub|<around*|(|k+1|)>+<around*|(|n-<around*|(|k+1|)>|)>+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<big|sum><rsub|i=0><rsup|<around*|(|n-<around*|(|k+1|)>|)>+1>x<rsub|<around*|(|k+1|)>+i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<big|sum><rsub|i=k+1><rsup|n+1>x<rsub|i>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>

      So by mathematical induction we have

      <\equation>
        <label|eq 11.2.053>\<forall\>n\<in\>\<bbb-N\><text|,
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A>
        we have >\<forall\>k\<in\><around*|{|0,\<ldots\>,n-1|}><text| that
        ><big|sum><rsub|i=0><rsup|n>x<rsub|i>=<big|sum><rsub|i=0><rsup|k>x<rsub|i>+<big|sum><rsub|i=k+1><rsup|n>x<rsub|i>
      </equation>

      Take now <math|n,m\<in\>\<bbb-N\><rsub|0>> with
      <math|n\<less\>m\<Rightarrow\>m-n\<in\>\<bbb-N\>> we have for
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>>
      that for <math|k\<in\><around*|{|n,\<ldots\>,m-1|}>\<Rightarrow\>k-n\<in\><around*|{|0,\<ldots\>,m-n|}>>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=n><rsup|m>x<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m-n>x<rsub|n+i>>>|<row|<cell|>|<cell|\<equallim\><rsub|k-n\<in\><around*|{|0,\<ldots\>,m-n|}><text|and
        [eq: <reference|eq 11.2.053>]>>>|<cell|<big|sum><rsub|i=0><rsup|k-n>x<rsub|n+i>+<big|sum><rsub|i=<around*|(|k-n|)>+1><rsup|m-n>x<rsub|n+i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=n><rsup|k>x<rsub|i>+<big|sum><rsub|i=k+1><rsup|m>x<rsub|i>>>>>
      </eqnarray*>
    </description>

    proving the theorem.
  </proof>

  <\theorem>
    <label|sum associativity><dueto|Associativity>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a semi-group,
    <math|n\<in\>\<bbb-N\>>, let <math|<around*|{|<around*|(|b<rsub|i>,e<rsub|i>|)>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    so that

    <\enumerate>
      <item><math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
      <math|b<rsub|i>\<leqslant\>e<rsub|i>>

      <item><math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}>>
      <math|e<rsub|i>+1=b<rsub|i+1>>
    </enumerate>

    \ \ then for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|b<rsub|0>,\<ldots\>,e<rsub|n>|}>>\<subseteq\>A>
    we have

    <\equation*>
      <big|sum><rsub|i=b<rsub|0>><rsup|e<rsub|n>>x<rsub|i>=<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j=b<rsub|i>><rsup|e<rsub|i>>x<rsub|j>|)>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|\<forall\><around*|{|<around*|(|b<rsub|i>,e<rsub|i>|)>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
      satisfying (1),(2),>\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|b<rsub|0>,\<ldots\>,e<rsub|n>|}>>\<subset\>A\<vDash\><big|sum><rsub|i=b<rsub|0>><rsup|e<rsub|n>>x<rsub|i>=<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j=b<rsub|i>><rsup|e<rsub|i>>x<rsub|j>|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Then for <math|<around*|{|<around*|(|b<rsub|i>,e<rsub|i>|)>|}><rsub|i\<in\><around*|{|0,1|}>>>
      we have <math|b<rsub|0>\<leqslant\>e<rsub|0>\<wedge\>b<rsub|1>\<leqslant\>e<rsub|1>\<wedge\>e<rsub|0>+1=b<rsub|1>\<Rightarrow\>e<rsub|0>\<in\><around*|{|b<rsub|0>,\<ldots\>,e<rsub|1>-1|}>>,
      for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|b<rsub|0>,\<ldots\>,e<rsub|1>|}>>>
      we have then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=b<rsub|0>><rsup|e<rsub|1>>x<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum associativity simple>]>><rsub|>>|<cell|<big|sum><rsub|j=b<rsub|0>><rsup|e<rsub|0>>x<rsub|j>+<big|sum><rsub|j=e<rsub|0>+1><rsup|e<rsub|1>>x<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=b<rsub|0>><rsup|e<rsub|0>>x<rsub|j>+<big|sum><rsub|j=b<rsub|1>><rsup|e<rsub|1>>x<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|0><around*|(|<big|sum><rsub|j=b<rsub|i>><rsup|e<rsub|i>>x<rsub|j>|)>+<big|sum><rsub|j=b<rsub|1>><rsup|e<rsub|1>>x<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|1><around*|(|<big|sum><rsub|j=b<rsub|i>><rsup|e<rsub|i>>x<rsub|j>|)>>>>>
      </eqnarray*>

      proving that <math|1\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|<around*|(|b<rsub|i>,e<rsub|i>|)>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
      with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>>
      <math|b<rsub|i>\<leqslant\>e<rsub|i>>,
      <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,<around*|(|n+1|)>-1|}>=<around*|{|0,\<ldots\>,n|}>>
      <math|e<rsub|i>+1=b<rsub|i+1><infix-and><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>A>.
      In particular we have <math|b<rsub|n>\<leqslant\>e<rsub|n>=b<rsub|n+1>-1\<leqslant\>e<rsub|n+1>-1>.
      Further <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have
      <math|b<rsub|i>\<leqslant\>e<rsub|i>\<less\>e<rsub|i>+1\<leqslant\>b<rsub|i+1>>
      proving by [theorem: <reference|recursion order>] that
      <math|b<rsub|0>\<leqslant\>b<rsub|n>\<leqslant\>e<rsub|n>> so that
      <math|e<rsub|n>\<in\><around*|{|b<rsub|0>,\<ldots\>,e<rsub|n+1>-1|}>>.
      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|j=b<rsub|0>><rsup|e<rsub|n+1>>x<rsub|j>>|<cell|\<equallim\><rsub|e<rsub|n>\<in\><around*|{|b<rsub|0>,\<ldots\>,e<rsub|n+1>-1|}><text|
        [theorem: <reference|sum associativity
        simple>]>>>|<cell|<big|sum><rsub|j=b<rsub|0>><rsup|e<rsub|n>>x<rsub|j>+<big|sum><rsup|e<rsub|n+1>><rsub|j\<in\>e<rsub|n>+1><rsup|>x<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|e<rsub|n>+1=b<rsub|<rsub|n+1>>>>|<cell|<big|sum><rsub|j=b<rsub|0>><rsup|e<rsub|n>>x<rsub|j>+<big|sum><rsup|e<rsub|n+1>><rsub|j=b<rsub|n+1>><rsup|>x<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j=b<rsub|i>><rsup|e<rsub|i>>x<rsub|j>|)><rsub|>+<big|sum><rsub|j=b<rsub|n+1>><rsup|e<rsub|n+1>>x<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|<big|sum><rsub|j=b<rsub|i>><rsup|e<rsub|i>>x<rsub|j>|)>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <subsection|Commutativity>

  We will now generalize commutativity to finite sum. First we must introduce
  the concept of permutations.\ 

  <\definition>
    <label|permutation definition><index|permutation><index|<math|\<sigma\>>><index|<math|S<rsub|I>>><dueto|Permutation>If
    <math|I> is a set then a bijection <math|\<sigma\>:I\<rightarrow\>I> is
    called a <with|font-series|bold|permutation of <math|I>>. The set of all
    the permutation graphs of <math|I> is noted as <math|S<rsub|I>> hence\ 

    <\equation*>
      S<rsub|I>=<around*|{|\<sigma\>\<in\>I<rsup|I>\|\<sigma\>:I\<rightarrow\>I<text|
      is a bijection>|}>
    </equation*>
  </definition>

  <\theorem>
    <label|permutation group><math|Let I> be a set then
    <math|<around*|\<langle\>|S<rsub|I>,\<circ\>|\<rangle\>>> is a group with
    neutral element <math|Id<rsub|I>> and
    <math|\<forall\>\<sigma\>\<in\>S<rsub|I>> <math|\<sigma\><rsup|-1>> as
    inverse element.
  </theorem>

  <\proof>
    As the composition of two bijections is a bijection [see theorem:
    <reference|function composition injectivity, surjectivity and bijectivity
    (1)>] we have that

    <\equation*>
      \<circ\>:S<rsub|I>\<times\>S<rsub|I>\<rightarrow\>S<rsub|I> is a
      operator
    </equation*>

    Further we have:

    <\description>
      <item*|associativity>If <math|\<sigma\>,\<beta\>,\<gamma\>\<in\>\<cal-S\><rsub|I>>
      then <math|<around*|(|\<sigma\>\<circ\>\<beta\>|)>\<circ\>\<gamma\>\<equallim\><rsub|<text|[function:
      <reference|partial function associativity>]>>\<sigma\>\<circ\><around*|(|\<beta\>\<circ\>\<gamma\>|)>>

      <item*|neutral element>As <math|Id<rsub|I>:I\<rightarrow\>I> is a
      bijection [see: <reference|function identity map is a bijection>] we
      have that <math|Id<rsub|I>\<in\>S<rsub|I>>. Further by [theorem:
      <reference|function composition of Id function>] we have\ 

      <\equation*>
        \<sigma\>=\<sigma\>\<circ\>Id<rsub|i>=Id<rsub|I>\<circ\>\<sigma\>
      </equation*>

      <item*|inverse element>If <math|\<sigma\>\<in\>S<rsub|I>> then
      <math|\<sigma\>:I\<rightarrow\>I> is a bijection, hence by [theorem:
      <reference|function bijection and inverse>]
      <math|\<sigma\><rsup|-1>:I\<rightarrow\>I> is a bijection so that
      <math|\<sigma\><rsup|-1>\<in\>S<rsub|I>>. Hence
      <math|\<sigma\>\<circ\>\<sigma\><rsup|-1>\<equallim\><rsub|<text|[theorem:
      <reference|function bijection f,f-1>]>>Id<rsub|I>\<equallim\><rsub|<text|[theorem:
      <reference|function bijection f,f-1>]>>\<sigma\><rsup|-1>\<circ\>\<sigma\>>
    </description>
  </proof>

  <\theorem>
    <label|permutation on subset>Let <math|I> be a set and
    <math|\<sigma\>\<in\>S<rsub|I>> then if <math|i\<in\>I> with
    <math|\<sigma\><around*|(|i|)>=i> then
    <math|\<sigma\><rsub|\|I\\<around*|{|i|}>>\<in\>S<rsub|I\\<around*|{|i|}>>>
  </theorem>

  <\proof>
    For <math|\<sigma\><rsub|\|I\\<around*|{|i|}>>:I\\<around*|{|i|}>\<rightarrow\>I\\<around*|{|i|}>>
    we have:

    <\description>
      <item*|injectivity>If <math|k,l\<in\>I\\<around*|{|i|}>> is such that
      <math|\<sigma\><rsub|\|I\\<around*|{|i|}>><around*|(|k|)>=\<sigma\><rsub|\|I\\<around*|{|i|}>><around*|(|l|)>>
      then <math|\<sigma\><around*|(|k|)>=\<sigma\><rsub|\|I\\<around*|{|i|}>><around*|(|k|)>=\<sigma\><rsub|\|I\\<around*|{|i|}>><around*|(|l|)>=\<sigma\><around*|(|l|)>>
      which as <math|\<sigma\>> is a bijection proves that <math|k=l>.

      <item*|surjectivity>If <math|k\<in\>I\\<around*|{|i|}>> then as
      <math|\<sigma\>> is a bijection there exist <math|l\<in\>I> such that
      <math|\<sigma\><around*|(|l|)>=k>. If <math|l=i> then
      <math|k=\<sigma\><around*|(|i|)>=i> contradicting
      <math|k\<in\>I\\<around*|{|i|}>>. Hence
      <math|l\<in\>I\\<around*|{|i|}>> so that
      <math|\<sigma\><rsub|\|I\\<around*|{|i|}>><around*|(|l|)>=\<sigma\><around*|(|l|)>=k>
      proving surjectivity.
    </description>
  </proof>

  We define now a special type of permutation a transposition

  <\theorem>
    <label|permutation transposition><index|<math|i\<leftrightarrowlim\><rsub|I>>j><dueto|transposition>Let
    <math|I> be a set, <math|i,j\<in\>I> then for
    <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)>> defined by\ 

    <\equation*>
      <around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<choice|<tformat|<table|<row|<cell|k<text|
      if >k\<in\>I\\<around*|{|i,j|}>>>|<row|<cell|i<text| if
      >k=j>>|<row|<cell|j<text| if >k=i>>>>>
    </equation*>

    we have that\ 

    <\equation*>
      <around*|(|i\<leftrightarrowlim\><rsub|I>j|)>\<in\>S<rsub|I>
    </equation*>

    The premutation <math|<around*|(|i<long-arrow|\<rubber-leftrightarrow\>||I>j|)>>
    is called a <with|font-series|bold|transposition> of <math|i> and
    <math|j>
  </theorem>

  <\proof>
    First note that if <math|i=j> then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)>=i=j=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)>>
    o this is indeed a function. Nexct we prove that it is a bijection.

    <\description>
      <item*|injectivity>If <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>>
      then for <math|k,l> we have either:

      <\description>
        <item*|<math|k=i\<wedge\>l=i>>Then trivially <math|k=i>

        <item*|<math|k=i\<wedge\>l=j>>Then
        <math|l=j=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>=i=k>
        so that <math|k=l>

        <item*|<math|k=i\<wedge\>l\<neq\>i,j>>Then
        <math|j=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>=l\<neq\>i,j>
        a contradiction so this case never occurs.

        <item*|<math|k=j\<wedge\>l=i>>Then
        <math|l=i=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>=j=k>
        so that <math|k=l>.

        <item*|<math|k=j\<wedge\>l=j>>Then trivially <math|k=l>.

        <item*|<math|k=j\<wedge\>l\<neq\>i,j>>Then
        <math|i=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>=l\<neq\>i,j>
        a contradiction so this case never occurs.

        <item*|<math|k\<neq\>i,j\<wedge\>l=i>>Then
        <math|i,j\<neq\>k=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>=j>
        a contradiction so this case never occurs.

        <item*|<math|k\<neq\>i,j\<wedge\>l=j>>Then
        <math|i,j\<neq\>k=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>=i>
        a contradiction so this case never occurs.

        <item*|<math|k\<neq\>i,j\<wedge\>l\<neq\>i,j>>Then
        <math|k=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>=l>
        so that <math|k=l>
      </description>

      Hence in all valid cases we have <math|k=l> proving injectivity.

      <item*|surjectivity>If <math|l\<in\>I> then we have either:

      <\description>
        <item*|<math|l=i>>Then for <math|k=j> we have
        <math|><math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|j|)>=i=l>

        <item*|<math|l=j>>Then for <math|k=i> we have
        <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|i|)>=j=l>

        <item*|<math|l\<neq\>i,j>>Then for <math|k=l> we have
        <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|l|)>=l>
      </description>

      so in all cases we found a <math|k\<in\>I> such that
      <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=l>.
    </description>
  </proof>

  <\theorem>
    <label|permutation transposition properties>Let <math|I> be a set then we
    have\ 

    <\enumerate>
      <item>If <math|<around*|(|i\<leftrightarrowlim\><rsub|I>i|)>=Id<rsub|I><around*|(|i|)>>

      <item>If <math|i,j\<in\>I> then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)>\<circ\><around*|(|i\<leftrightarrowlim\><rsub|I>j|)>=Id<rsub|I>>

      <item>If <math|J\<subseteq\>I> and <math|i,j\<in\>J> then
      <math|<around*|(|i<long-arrow|\<rubber-leftrightarrow\>||J>j|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><rsub|\|J>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|k\<in\>I> then we have either:

      <\description>
        <item*|<math|k=i>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=j\<equallim\><rsub|i=j>i=k=Id<rsub|I><around*|(|k|)>>

        <item*|<math|k=j>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=j\<equallim\><rsub|i=j>i=k=Id<rsub|I><around*|(|k|)>>

        <item*|<math|k\<neq\>i,j>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=j\<equallim\><rsub|i=j>i=k=Id<rsub|I><around*|(|k|)>>
      </description>

      <item>If <math|k\<in\>I> then we have either:\ 

      <\description>
        <item*|<math|k=i>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|<around*|(|i<long-arrow|\<rubber-leftrightarrow\>||I>j|)><around*|(|k|)>|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|j|)>=i=k>

        <item*|<math|k=j>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|<around*|(|i<long-arrow|\<rubber-leftrightarrow\>||I>j|)><around*|(|k|)>|)>=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|i|)>=j=k>

        <item*|<math|k\<neq\>i,j>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|<around*|(|i<long-arrow|\<rubber-leftrightarrow\>||I>j|)><around*|(|k|)>|)>=k>
      </description>

      <item>If <math|k\<in\>J> then we have either:

      <\description>
        <item*|<math|k=i>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|J>j|)><around*|(|k|)>=j=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>>

        <item*|<math|k=j>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|J>j|)><around*|(|k|)>=i=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>>

        <item*|<math|k\<neq\>i,j>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|J>j|)><around*|(|k|)>=k=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>>
      </description>
    </enumerate>
  </proof>

  <\lemma>
    <label|permutation {0,..,n and transposition>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|\<sigma\>\<in\>S<rsub|<around*|{|0,\<ldots\>,n+1|}>>>
    is such that <math|\<sigma\><around*|(|n+1|)>\<neq\>n+1> then for
    <math|k=\<sigma\><rsup|-1><around*|(|n+1|)>> we have for
    <math|\<gamma\><rsub|\<sigma\>>> defined by\ 

    <\equation*>
      \<gamma\><rsub|\<sigma\>>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\><around*|{|0,\<ldots\>,n|}><text|
      defined by >\<gamma\><rsub|\<sigma\>><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|i|)>|)><text|
      if >i\<in\><around*|{|0,\<ldots\>,n-1|}>>>|<row|<cell|\<sigma\><around*|(|n+1|)><text|
      if >i=n>>>>>
    </equation*>

    that\ 

    <\equation*>
      \<gamma\><rsub|\<sigma\>>\<in\>S<rsub|<around*|{|0,\<ldots\>,n|}>>
    </equation*>
  </lemma>

  <\proof>
    First for <math|i\<in\><around*|[|0,\<ldots\>,n|]>> we have either:\ 

    <\description>
      <item*|<math|i\<in\><around*|{|0,\<ldots\>,n-1|}>>>Assume that
      <math|<around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|i|)>|)>=n+1>
      then as <math|\<sigma\><around*|(|k|)>=n+1> we have as <math|\<sigma\>>
      is injective that <math|><math|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|i|)>=k=<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|n|)>>
      so that <math|i=n> contradicting <math|i\<in\><around*|{|0,\<ldots\>,n-1|}>>.
      So we must have that <math|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|i|)>|)>\<neq\>n+1>
      or <math|\<gamma\><rsub|\<sigma\>><around*|(|i|)>\<neq\>n+1\<Rightarrow\>\<gamma\><rsub|\<sigma\>><around*|(|i|)>\<in\><around*|{|0,\<ldots\>,n|}>>.

      <item*|<math|i=n>>Then as <math|\<sigma\><around*|(|n+1|)>\<neq\>n+1>
      we have that <math|\<sigma\><around*|(|n+1|)>\<in\><around*|{|0,\<ldots\>,n|}>>
      or <math|\<gamma\><rsub|\<sigma\>><around*|(|i|)>\<in\><around*|{|0,\<ldots\>,n|}>>
    </description>

    So we have that\ 

    <\equation*>
      \<gamma\><rsub|\<sigma\>>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\><around*|{|0,\<ldots\>,n|}>
    </equation*>

    Next we have to prove that it is a bijection,.\ 

    <\description>
      <item*|injectivity>Let <math|r,s\<in\><around*|{|0,\<ldots\>,n|}>> such
      that <math|\<gamma\><rsub|\<sigma\>><around*|(|r|)>=\<gamma\><rsub|\<sigma\>><around*|(|s|)>>
      then we have for <math|r,s> either:

      <\description>
        <item*|<math|r=n\<wedge\>s=n>>Then trivially <math|r=s>.

        <item*|<math|r=n\<wedge\>s\<neq\>n>>Then
        <math|\<sigma\><around*|(|n+1|)>=\<gamma\><rsub|\<sigma\>><around*|(|r|)>=\<gamma\><rsub|\<sigma\>><around*|(|s|)>=\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|n|)>|)>=\<sigma\><around*|(|n|)>>
        giving the contradiction <math|n+1=n> so this case never occurs.

        <item*|<math|r\<neq\>n\<wedge\>s=n>>Then
        <math|\<sigma\><around*|(|n+1|)>=\<gamma\><rsub|\<sigma\>><around*|(|s|)>=\<gamma\><rsub|\<sigma\>><around*|(|r|)>=\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|n|)>|)>=\<sigma\><around*|(|n|)>>
        giving the contradiction <math|n+1=n> so this case never occurs.

        <item*|<math|r\<neq\>n\<wedge\>s\<neq\>n>>Then
        <math|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|r|)>|)>=\<gamma\><rsub|\<sigma\>><around*|(|r|)>=\<gamma\><rsub|\<sigma\>><around*|(|s|)>=\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|s|)>|)>>
        so that <math|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|r|)>=<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|s|)>>
        or <math|r=s> [as <math|\<sigma\>> and
        <math|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)>>
        are injections).
      </description>

      So in all valid cases we have <math|r=s> proving injectivity.

      <item*|surjectivity>Let <math|r\<in\><around*|{|0,\<ldots\>,n|}>> then
      by the surjectivity of <math|\<sigma\>> there exist a
      <math|s\<in\><around*|{|0,\<ldots\>,n+1|}>> such that
      <math|\<sigma\><around*|(|s|)>=r>. For <math|l> we have then either:

      <\description>
        <item*|<math|s=n+1>>Then for <math|n\<in\><around*|{|0,\<ldots\>,n|}>>
        we have <math|\<gamma\><rsub|\<sigma\>><around*|(|n|)>=\<sigma\><around*|(|n+1|)>=\<sigma\><around*|(|s|)>=r>
        so that <math|\<gamma\><rsub|\<sigma\>><around*|(|n|)>=r>.

        <item*|<math|s=n>>If <math|k=n> then
        <math|r=\<sigma\><around*|(|s|)>=\<sigma\><around*|(|n|)>=\<sigma\><around*|(|k|)>=n+1\<Rightarrow\>r=n+1>
        contradicting <math|r\<in\><around*|{|0,\<ldots\>,n|}>>. So we must
        have that <math|k\<neq\>n> or <math|k\<in\><around*|{|0,\<ldots\>,n-1|}>>,
        hence

        <\equation*>
          \<gamma\><rsub|\<sigma\>><around*|(|k|)>=\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|k|)>|)>=\<sigma\><around*|(|n|)>=\<sigma\><around*|(|s|)>=r
        </equation*>

        proving that <math|\<gamma\><rsub|\<sigma\>><around*|(|k|)>=r>.

        <item*|<math|s\<in\><around*|{|0,\<ldots\>,n-1|}>>>If <math|s=k> then
        <math|r=\<sigma\><around*|(|s|)>=\<sigma\><around*|(|k|)>=n+1> so
        that <math|r=n+1> contradicting <math|r\<in\><around*|{|0,\<ldots\>,n|}>>
        so we must have that <math|s\<neq\>k,n>. Hence

        <\equation*>
          \<gamma\><rsub|\<sigma\>><around*|(|s|)>=\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|s|)>|)>=\<sigma\><around*|(|s|)>=r
        </equation*>
      </description>

      So in all cases we found a <math|l\<in\><around*|{|0,\<ldots\>,n|}>>
      such that <math|\<gamma\><rsub|\<sigma\>><around*|(|l|)>=r> proving
      surjectivity.
    </description>
  </proof>

  <\theorem>
    <label|sum commutativity><dueto|Commutativity>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group,
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    and <math|\<sigma\>\<in\>S<rsub|<around*|{|0,\<ldots\>,n|}>>> a
    permutation then

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>x<rsub|i>=<big|sum><rsub|i=0><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction so take\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
      and >\<forall\>\<sigma\>\<in\>S<rsub|<around*|{|0,\<ldots\>,n|}>><text|
      we have ><big|sum><rsub|i=0><rsup|n>x<rsub|i>=<big|sum><rsub|i=0><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|0\<in\>S>>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>A>
      and <math|\<sigma\>\<in\>S<rsub|<around*|{|0|}>>\<Rightarrow\>\<sigma\>=Id<rsub|<around*|{|0|}>>>
      then we have

      <\equation*>
        <big|sum><rsub|i=0><rsup|0>x<rsub|i>=x<rsub|0>=x<rsub|Id<rsub|<around*|{|0|}>><around*|(|0|)>>=x<rsub|\<sigma\><around*|(|0|)>>=<big|sum><rsub|i=0><rsup|n>x<rsub|i>
      </equation*>

      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>>
      and <math|\<sigma\>\<in\>S<rsub|<around*|{|0,\<ldots\>,n+1|}>>> then
      for <math|n+1> we have either

      <\description>
        <item*|<math|n+1=1>>Then <math|S<rsub|<around*|{|0,\<ldots\>,n+1|}>>=S<rsub|<around*|{|0,1|}>>>
        so that for \ <math|\<sigma\>> we have either:

        <\description>
          <item*|<math|\<sigma\><around*|(|1|)>=0>>Then as
          <math|\<sigma\>:<around*|{|0,1|}>\<rightarrow\><around*|{|0,1|}>>
          is a bijection we must have <math|\<sigma\><around*|(|0|)>=1>, so\ 

          <\equation*>
            <big|sum><rsub|i=0><rsup|1>x<rsub|i>=x<rsub|0>+x<rsub|1>=x<rsub|1>+x<rsub|0>=x<rsub|\<sigma\><around*|(|0|)>>+x<rsub|\<sigma\><around*|(|1|)>>=<big|sum><rsub|i=0><rsup|1>x<rsub|\<sigma\><around*|(|i|)>>
          </equation*>

          <item*|<math|\<sigma\><around*|(|1|)>=1>>Then as
          <math|\<sigma\>:<around*|{|0,1|}>\<rightarrow\><around*|{|0,1|}>>
          is a bijection we must have <math|\<sigma\><around*|(|0|)>=0>, so\ 

          <\equation*>
            <big|sum><rsub|i=0><rsup|1>x<rsub|i>=x<rsub|0>+x<rsub|1>=x<rsub|\<sigma\><around*|(|0|)>>+x<rsub|\<sigma\><around*|(|1|)>>=<big|sum><rsub|i=0><rsup|1>x<rsub|\<sigma\><around*|(|i|)>>
          </equation*>
        </description>

        so in all cases <math|<big|sum><rsub|i=0><rsup|1>x<rsub|i>=<big|sum><rsub|i=0><rsup|1>x<rsub|\<sigma\><around*|(|i|)>>>
        proving that <math|n+1\<in\>S>.

        <item*|<math|1\<less\>n+1>>Now for <math|\<sigma\><around*|(|n+1|)>>
        we have either:

        <\description>
          <item*|<math|\<sigma\><around*|(|n+1|)>=n+1>>Then by [theorem:
          <reference|permutation on subset>] we have that
          <math|\<sigma\><rsub|\|<around*|{|0,\<ldots\>,n|}>>\<in\>S<rsub|<around*|{|0,\<ldots\>,n|}>>>
          which as <math|n\<in\>S> proves that\ 

          <\equation>
            <label|eq 11.3.053><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<equallim\><rsub|n\<in\>S><big|sum><rsub|i=0><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>
          </equation>

          So\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|eq 11.3.053>]>>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>|)>+x<rsub|\<sigma\><around*|(|n+1|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|\<sigma\><around*|(|i|)>>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>S>.

          <item*|<math|\<sigma\><around*|(|n+1|)>\<in\><around*|{|0,\<ldots\>,n|}>>>Take
          then <math|k=\<sigma\><rsup|-1><around*|(|n+1|)>\<in\><around*|{|0,\<ldots\>,n|}>>
          then we have by [lemma: <reference|permutation {0,..,n and
          transposition>] that <math|\<gamma\><rsub|\<sigma\>>\<in\>S<rsub|<around*|{|0,\<ldots\>,n|}>>>
          where\ 

          <\equation>
            <label|eq 11.4.053>\<gamma\><rsub|\<sigma\>><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>n|}>>k|)><around*|(|i|)>|)><text|
            if >i\<in\><around*|{|0,\<ldots\>,n-1|}>>>|<row|<cell|\<sigma\><around*|(|n+1|)><text|
            if >i=n>>>>>
          </equation>

          so as <math|n\<in\>S> we have that:\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>x<rsub|\<gamma\><rsub|\<sigma\>><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|1\<less\>n+1=0\<leqslant\>n-1>>|<cell|<big|sum><rsub|i=0><rsup|<around*|(|n-1|)>+1>x<rsub|\<gamma\><rsub|\<sigma\>><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<gamma\>\<sigma\>><around*|(|i|)>|)>+x<rsub|\<gamma\><rsub|\<sigma\>><around*|(|n+1|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
            11.4.053>>>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>k|)><around*|(|i|)>|)>>|)>+x<rsub|\<sigma\><around*|(|n+1|)>><eq-number><label|eq
            11.5.053>>>>>
          </eqnarray*>

          Further as <math|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>k|)>\<in\>S<rsub|<around*|{|0,\<ldots\>,n|}>>>
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<big|sum><rsub|i=><rsup|n+1>x<rsub|\<sigma\><around*|(|i|)>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>|)>+x<rsub|\<sigma\><around*|(|n+1|)>>>|<cell|\<equallim\><rsub|<text|
            >n\<in\>S>>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>|)><around*|(|i|)>|)>>|)>+x<rsub|\<sigma\><around*|(|n+1|)>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>|)><around*|(|i|)>|)>>|)>+x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>k|)><around*|(|n|)>|)>><rsub|>|)>+x<rsub|\<sigma\><around*|(|n+1|)>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>|)><around*|(|i|)>|)>>|)>+<around*|(|x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>k|)><around*|(|n|)>|)>><rsub|>+x<rsub|\<sigma\><around*|(|n+1|)>>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>|)><around*|(|i|)>|)>>|)>+<around*|(|x<rsub|\<sigma\><around*|(|n+1|)>>+x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>k|)><around*|(|n|)>|)>><rsub|>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>|)><around*|(|i|)>|)>>|)>+x<rsub|\<sigma\><around*|(|n+1|)>>|)>+x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>k|)><around*|(|n|)>|)>><rsub|>>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 11.5.053>]>>>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|\<sigma\><around*|(|<around*|(|n\<leftrightarrowlim\><rsub|<around*|{|0,\<ldots\>,n|}>>k|)><around*|(|n|)>|)>><rsub|>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|\<sigma\><around*|(|k|)>>>|<cell|\<equallim\><rsub|k=\<sigma\><rsup|-1><around*|(|n+1|)>>>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>|<cell|=>|<cell|<rsub|>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>S>.
        </description>

        proving that <math|n+1\<in\>S>.
      </description>

      So in all cases we have <math|n+1\<in\>S>.
    </description>

    Mathematical induction proves then that <math|S=\<bbb-N\><rsub|0>> and
    the theorem.
  </proof>

  <subsection|Generalized sum>

  Next we define the sum of elements over a finite index set.

  <\definition>
    Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group
    with neutral element <math|0>, <math|I> a finite set and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> then we define
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> as follows:\ 

    <\enumerate>
      <item>If <math|I=\<varnothing\>> then
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0>

      <item>If <math|I\<neq\>\<varnothing\>> then as <math|I> is finite there
      exist by [theorem: <reference|complex finite set condition>] a
      <with|font-series|bold|unique> <math|n\<in\>\<bbb-N\>> and a bijection
      <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I>,
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is then defined by\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>
      </equation*>
    </enumerate>
  </definition>

  <\proof>
    We must for <math|<around*|(|2|)>> prove that
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is unique. So assume that
    <math|\<gamma\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> is another
    bijection then <math|\<beta\><rsup|-1>\<circ\>\<gamma\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\><around*|{|0,\<ldots\>,n-1|}>>
    is a bijection, hence <math|\<beta\><rsup|-1>\<circ\>\<gamma\>\<in\>S<rsub|<around*|{|0,\<ldots\>,n-1|}>>>
    so that\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
      <reference|sum commutativity>]>><big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|i|)>|)>|)>>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<gamma\><around*|(|i|)>>
    </equation*>
  </proof>

  <\example>
    <label|sum general single>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k|}>>\<subseteq\>A>
    then <math|<big|sum><rsub|i\<in\><around*|{|k|}>>x<rsub|i>=x<rsub|k>>
  </example>

  <\proof>
    As <math|\<beta\>:<around*|{|0|}>=<around*|{|0,\<ldots\>,<around*|(|1-1|)>|}>\<rightarrow\><around*|{|k|}>>
    by <math|\<beta\><around*|(|0|)>=k> we have that
    <math|<big|sum><rsub|i\<in\><around*|{|k|}>>x<rsub|i>=<big|sum><rsub|i=0><rsup|0>x<rsub|\<beta\><around*|(|i|)>>=x<rsub|\<beta\><around*|(|0|)>>=x<rsub|k>>
  </proof>

  This new definition is equivalent with the previous definition as the
  following theorem shows.

  <\theorem>
    <label|sum general equivalence>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group with neutral element <math|0>,
    <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>>
    then <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>=<big|sum><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>x<rsub|i>>
  </theorem>

  <\proof>
    Define <math|\<sigma\>:<around*|{|0,\<ldots\>m-n|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    by <math|\<sigma\><around*|(|i|)>=n+i> then we have

    <\description>
      <item*|injectivity>If <math|\<sigma\><around*|(|i|)>=\<sigma\><around*|(|j|)>>
      then <math|n+i=n+j> hence <math|i=j>.

      <item*|surjectivity>If <math|j\<in\><around*|{|n,\<ldots\>,m|}>\<Rightarrow\>n\<leqslant\>j\<leqslant\>m\<Rightarrow\>0\<leqslant\>j-n\<leqslant\>m-n>
      then for <math|i=j-n> we have <math|j=i+n=\<beta\><around*|(|i|)>> and
      <math|0\<leqslant\>i\<leqslant\>m-n>
    </description>

    so that <math|\<sigma\>:<around*|{|0,\<ldots\>,m-n|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    is a bijection and by definition

    <\equation*>
      <big|sum><rsub|i\<in\>m-n>x<rsub|i>=<big|sum><rsub|i=0><rsup|m-n>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=0><rsup|m-n>x<rsub|n+i>\<equallim\><rsub|def><big|sum><rsub|i=n><rsup|m>x<rsub|i>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|sum bijection on index>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group with neutral element <math|0>, <math|I> a finite
    set, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> and
    <math|\<sigma\>:J\<rightarrow\>I> a bijection then\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|j\<in\>J>x<rsub|\<sigma\><around*|(|j|)>>
    </equation*>
  </theorem>

  <\proof>
    For <math|I> we have either:

    <\description>
      <item*|<math|I=\<varnothing\>>>Then as
      <math|\<sigma\>:J\<rightarrow\>I> is a bijection we have <math|J=0> so
      that <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0=<big|sum><rsub|j\<in\>J>x<rsub|\<sigma\><around*|(|j|)>>>

      <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
      <math|n\<in\>\<bbb-N\>> such that <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I>
      such that\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>
      </equation*>

      So <math|\<sigma\><rsup|-1>\<circ\>\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>J>
      is a bijection so that\ 

      <\equation*>
        <big|sum><rsub|j\<in\>J>x<rsub|\<sigma\><around*|(|j|)>>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<sigma\><around*|(|\<sigma\><rsup|-1><around*|(|\<beta\><around*|(|i|)>|)>|)>>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>
    </description>
  </proof>

  Using this more general defintion of a finite sum we can rewrite [theorems:
  <reference|sum of neutral element (1)>, <reference|sum of sums>,
  <reference|sum ring product>, <reference|sum of finite sums> and
  <reference|sum of inverses>].

  <\theorem>
    <label|sum of neutral element (2)>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group with
    neutral element <math|0>, <math|I> a finite set and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A> with
    <math|\<forall\>i\<in\>I> <math|x<rsub|i>=0> then
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0>.
  </theorem>

  <\proof>
    For <math|I> we have either\ 

    <\description>
      <item*|<math|I=\<varnothing\>>>Then
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=\<varnothing\>>

      <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
      <math|n\<in\>\<bbb-N\>> and a bijection
      <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such that

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>
      </equation*>

      As <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}>>
      \ <math|\<beta\><around*|(|i|)>\<in\>I> we have
      <math|x<rsub|\<beta\><around*|(|i|)>>=0> so that by [theorem:
      <reference|sum of neutral elements>]
      <math|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|>>0>,
      hence we conclude that\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i>=0
      </equation*>
    </description>

    \;
  </proof>

  <\theorem>
    <label|sum of sums (2)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be
    a Abelian semi-group, <math|I> a finite set and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A,<text|
    ><around*|{|y<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A> then\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    For <math|I> we have either:\ 

    <\description>
      <item*|<math|I=\<varnothing\>>>Then we have\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=0=0+0=<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>
      </equation*>

      <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
      <math|n\<in\>\<bbb-N\>> and a bijection
      <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such that

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n-1><around*|(|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|)><text|,
        ><big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>><text|
        and ><big|sum><rsub|i\<in\>I>y<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>y<rsub|\<beta\><around*|(|i|)>>
      </equation*>

      By [theorem: <reference|sum of sums>] we have that
      <math|<big|sum><rsub|i=0><rsup|n-1><around*|(|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|)>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>+<big|sum><rsub|i=0><rsup|n-1>y<rsub|\<beta\><around*|(|i|)>>>
      proving that\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|sum ring product (2)>Let <math|<around*|\<langle\>|R,+,\<cdot\>|\<rangle\>>>
    be a ring, <math|\<alpha\>\<in\>R>, <math|I> a finite set and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>R> then\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    For <math|I> we have either:

    <\description>
      <item*|<math|I=\<varnothing\>>>Then we have\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=0=\<alpha\>\<cdot\>0=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>

      <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
      <math|n\<in\>\<bbb-N\>> and a bijection
      <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such that

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n-1><around*|(|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>\<equallim\><rsub|<text|[theorem:
        <reference|sum ring product>]>>\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|sum of inverses (2)>Let <math|<around*|\<langle\>|A,+,\<cdot\>|\<rangle\>>>
    be a Abelian semi-group, <math|I> a finite set and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A> then\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I><around*|(|-x<rsub|i>|)>=-<big|sum><rsub|i\<in\>I>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    For <math|I> we have either:

    <\description>
      <item*|<math|I=\<varnothing\>>>Then we have\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|-x<rsub|i>|)>=0=-0=-<big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>

      <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
      <math|n\<in\>\<bbb-N\>> and a bijection
      <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such that

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|-x<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n-1>-<around*|\<nobracket\>|x<rsub|\<beta\><around*|(|i|)>>|)>\<equallim\><rsub|<text|[theorem:
        <reference|sum of inverses>]>>-<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>=-<big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|sum of finite sums (2)>Let \ <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group, <math|I,J> finite sets and
    <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>\<subseteq\>A>
    then\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I><rsup|><around*|(|<big|sum><rsub|j=J><rsup|>x<rsub|i,j>|)>=<big|sum><rsub|j\<in\>I><rsup|><around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i,j>|)>
    </equation*>
  </theorem>

  <\proof>
    For <math|I,J> we have either:

    <\description>
      <item*|<math|I=\<varnothing\>>>Then we have\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>J>x<rsub|i,j>|)>=0\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>><big|sum><rsub|j\<in\>J>0=<big|sum><rsub|j\<in\>J><around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i,j>|)>
      </equation*>

      <item*|<math|J=\<varnothing\>>>Then we have

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>J>x<rsub|i,j>|)>=<big|sum><rsub|i\<in\>I>0\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>0=<big|sum><rsub|j\<in\>J><around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i,j>|)>
      </equation*>

      <item*|<math|I\<neq\>\<varnothing\>\<wedge\>J\<neq\>\<varnothing\>>>Then
      there exists <math|n,m\<in\>\<bbb-N\>> and bijections

      <\equation*>
        \<alpha\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I<text|,
        >\<beta\>:<around*|{|0,\<ldots\>,m-1|}>\<rightarrow\>J
      </equation*>

      such that\ 

      <\equation>
        <label|eq 11.6.053>\<forall\>j\<in\>J<text| we have
        ><big|sum><rsub|i\<in\>I>x<rsub|i,j>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<alpha\><around*|(|i|)>,j><text|
        and >\<forall\>i\<in\>I<text| we have
        ><big|sum><rsub|j\<in\>J>x<rsub|i,j>=<big|sum><rsub|j=0><rsup|m-1>x<rsub|i,\<beta\><around*|(|j|)>>
      </equation>

      so that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>J>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.6.053>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j=0><rsup|m-1>x<rsub|i,\<beta\><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n-1><around*|(|<big|sum><rsub|j=0><rsup|m-1>x<rsub|\<alpha\><around*|(|i|)>,\<beta\><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of finite sums>]>>>|<cell|<big|sum><rsub|j=0><rsup|m-1><around*|(|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<alpha\><around*|(|i|)>,\<beta\><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|><rsub|j\<in\>J><around*|(|<big|sum><rsup|n-1><rsub|i-0>x<rsub|\<alpha\><around*|(|i|)>,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.6.053>]>>>|<cell|<big|sum><rsub|j\<in\>J><around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i,j>|)>>>>>
      </eqnarray*>

      \;
    </description>
  </proof>

  We have the equivalent of [theorem: <reference|sum associativity simple>]

  <\lemma>
    <label|sum over two disjoint subsets>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group with
    neutral element <math|0>, <math|I> a finite set such that
    <math|I=M<big|cup>N> and <math|M<big|cap>N=\<varnothing\>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A> then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i\<in\>M>x<rsub|i>+<big|sum><rsub|i\<in\>N>x<rsub|i>
    </equation*>

    \ 
  </lemma>

  <\proof>
    As <math|I> is finite we have by [theorem: <reference|every subset of a
    finite set is finite>] that <math|M,N> are finite and we have either:

    <\description>
      <item*|<math|M=\<varnothing\>>>Then <math|N=I> and\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i\<in\>N>x<rsub|i>=<big|sum><rsub|i\<in\>N>x<rsub|i>+0=<big|sum><rsub|i\<in\>N>x<rsub|i>+<big|sum><rsub|i\<in\>M>x<rsub|i>
      </equation*>

      <item*|<math|N=\<varnothing\>>>Then <math|M=I> and \ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i\<in\>M>x<rsub|i>=0+<big|sum><rsub|i\<in\>M>x<rsub|i>=<big|sum><rsub|i\<in\>N>x<rsub|i>+<big|sum><rsub|i\<in\>M>x<rsub|i>
      </equation*>

      <item*|<math|M,N\<neq\>\<varnothing\>>>Then there exists
      <math|n,m\<in\>\<bbb-N\>> such <math|\<alpha\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>N>
      and <math|\<beta\>:<around*|{|0,\<ldots\>,m-1|}>\<rightarrow\>M> are
      bijections and\ 

      <\equation>
        <label|eq 11.7.053><big|sum><rsub|i\<in\>N>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<alpha\><around*|(|i|)>><text|
        and ><big|sum><rsub|i\<in\>M>x<rsub|i>=<big|sum><rsub|i=0><rsup|m-1>x<rsub|\<beta\><around*|(|i|)>>
      </equation>

      Define now

      <\equation*>
        \<gamma\>:<around*|{|0,\<ldots\>,n+m-1|}>\<rightarrow\>N<big|cup>M<text|
        by >\<gamma\><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|\<alpha\><around*|(|i|)><text|
        where >i\<in\><around*|{|0,\<ldots\>,n-1|}>>>|<row|<cell|\<beta\><around*|(|i-n|)><text|
        where >i\<in\><around*|{|n,\<ldots\>,n+m-1|}>>>>>>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>If <math|\<gamma\><around*|(|i|)>=\<gamma\><around*|(|j|)>>
        then for <math|i,j> we have either:

        <\description>
          <item*|<math|i\<in\><around*|{|0,\<ldots\>,n-1|}>\<wedge\>j\<in\><around*|{|0,\<ldots\>,n-1|}>>>Then
          <math|\<alpha\><around*|(|i|)>=\<gamma\><around*|(|i|)>=\<gamma\><around*|(|j|)>=\<alpha\><around*|(|j|)>>
          which as <math|\<alpha\>> is injective proves <math|i=j>.

          <item*|<math|i\<in\><around*|{|0,\<ldots\>,n-1|}>\<wedge\>j\<in\><around*|{|n,\<ldots\>,n+m-1|}>>>Then
          <math|\<alpha\><around*|(|i|)>=\<gamma\><around*|(|i|)>=\<gamma\><around*|(|j|)>=\<beta\><around*|(|j-n|)>>
          so that <math|\<alpha\><around*|(|i|)>\<in\>N<big|cap>M>
          contradicting <math|N<big|cap>M=\<varnothing\>>, so this case never
          occurs.

          <item*|<math|i\<in\><around*|{|n,\<ldots\>,n+m-1|}>\<wedge\>j\<in\><around*|{|0,\<ldots\>,n-1|}>>>Then
          <math|\<beta\><around*|(|i-n|)>=\<gamma\><around*|(|i|)>=\<gamma\><around*|(|j|)>=\<alpha\><around*|(|j|)>>
          so that <math|\<alpha\><around*|(|j|)>\<in\>N<big|cap>M>
          contradicting <math|N<big|cap>M=\<varnothing\>>, so thiscase never
          occurs.

          <item*|<math|i\<in\><around*|{|n,\<ldots\>,n+m-1|}>\<wedge\>j\<in\><around*|{|n,\<ldots\>,n+m-1|}>>>Then
          <math|\<beta\><around*|(|i-n|)>=\<gamma\><around*|(|i|)>=\<gamma\><around*|(|j|)>=\<beta\><around*|(|j-n|)>>
          which as <math|\<beta\>> is injective gives <math|i=n=j-n> proving
          <math|i=j>.
        </description>

        So in all valid cases we have <math|i=j> proving injectivity.

        <item*|surjectivity>If <math|y\<in\>I=N<big|cup>M> then we have
        either:

        <\description>
          <item*|<math|y\<in\>N>>Then as <math|\<alpha\>> is surjective there
          exist a <math|i\<in\><around*|{|0,\<ldots\>,n-1|}>> such that
          <math|y=\<alpha\><around*|(|i|)>> which as
          <math|\<gamma\><around*|(|i|)>=\<alpha\><around*|(|i|)>> proves
          that <math|\<gamma\><around*|(|i|)>=y>.

          <item*|<math|y\<in\>M>>Then as <math|\<beta\>> is surjective there
          exist a <math|i\<in\><around*|{|0,\<ldots\>,m-1|}>> such that
          <math|y=\<beta\><around*|(|i|)>>. For <math|j=i+n> we have
          <math|n\<leqslant\>i\<leqslant\>n+m-1> so that
          <math|\<gamma\><around*|(|j|)>=\<beta\><around*|(|j-n|)>=\<beta\><around*|(|i|)>=y>
        </description>
      </description>

      So <math|\<gamma\>:<around*|{|0,\<ldots\>,n+m-1|}>\<rightarrow\>N<big|cup>M=I>
      is a surjection hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>x<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+m-1>x<rsub|\<gamma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum associativity simple>]>>>|<cell|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<gamma\><around*|(|i|)>>+<big|sum><rsub|i=m><rsup|n+m-1>x<rsub|\<gamma\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<alpha\><around*|(|i|)>>+<big|sum><rsub|i=m><rsup|n+m-1>x<rsub|\<beta\><around*|(|i-n|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<alpha\><around*|(|i|)>>+<big|sum><rsub|i=0><rsup|m-1>x<rsub|\<beta\><around*|(|<around*|(|i+n|)>-n|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<alpha\><around*|(|i|)>>+<big|sum><rsub|i=0><rsup|m-1>x<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|eq 11.7.053>]>>>|<cell|<big|sum><rsub|i\<in\>N>x<rsub|i>+<big|sum><rsub|i\<in\>M>x<rsub|i>>>>>
      </eqnarray*>
    </description>
  </proof>

  We have now the equivalence of [theorem: <reference|sum associativity>]\ 

  <\theorem>
    <label|sum over disjoint subsets>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group, <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>> a
    family of finite sets such that \ <math|\<forall\>i,j\<in\>I with
    i\<neq\>j> <math|I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>> then for
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n|}>>I<rsub|j>>\<subseteq\>A>
    we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n|}>>I<rsub|j>>x<rsub|i>=<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>
    </equation*>
  </theorem>

  <\proof>
    \ We prove this by induction, so take\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
      pairwise disjoint family of sets, >\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n|}>>I<rsub|j>>\<subseteq\>A<text|
      we have ><big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n|}>>I<rsub|j>>x<rsub|i>=<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>Let <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>>
      be a pairwise disjoint family of sets, let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0|}>>I<rsub|j>>\<subseteq\>A>
      then <math|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0|}>>I<rsub|j>>x<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|0>>x<rsub|i>=<big|sum><rsub|i=0><rsup|0><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>>
      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>>
      be a pairwise disjoint family of finite sets and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n+1|}>>I<rsub|j>>>.
      Take <math|J=<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>I<rsub|i>>
      then by [theorem: <reference|finite union of finite sets is finite>]
      <math|J> is finite

      <\equation*>
        J<big|cap>I<rsub|n+1>=<around*|(|<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>I<rsub|i>|)><big|cap>I<rsub|n+1>=<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|I<rsub|i><big|cap>I<rsub|n+1>|)>=<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<varnothing\>=\<varnothing\>
      </equation*>

      proving\ 

      <\equation>
        <label|eq 11.7.053.1><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n+1|}>>I<rsub|j>=J<big|cup>I<rsub|n+1><text|,
        <math|J,I<rsub|n+1>> are finite and
        >J<big|cap>I<rsub|n+1>=\<varnothing\>
      </equation>

      So we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|i\<in\><around*|{|0,\<ldots\>n|}>>I<rsub|i>>x<rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.7.053.1>] and [lemma: <reference|sum over two
        disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>J>x<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|n+1>>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n|}>>I<rsub|j><rsub|>>x<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|n+1>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>+<big|sum><rsub|i\<in\>I<rsub|n+1>>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|i>|)>>>>>
      </eqnarray*>
    </description>
  </proof>

  <\corollary>
    <label|sum over disjoint subsets (1)>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian group, <math|I> a
    finite set, <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>I>> a family of
    finite sets such that <math|\<forall\>i,j\<in\>I> with <math|i\<neq\>j>
    we have <math|I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>>
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>>
    then\ 

    <\equation*>
      <big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>x<rsub|i>=<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>
    </equation*>
  </corollary>

  <\proof>
    For <math|I> we have either:

    <\description>
      <item*|<math|I=\<varnothing\>>>Then
      <math|<big|cup><rsub|j\<in\>I>I<rsub|j>=\<varnothing\>> so that\ 

      <\equation*>
        <big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>x<rsub|i>=<big|sum><rsub|i\<in\>\<varnothing\>>x<rsub|i>=0=<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|<big|sum><rsub|j\<in\>I<rsub|j>>x<rsub|j>|)>
      </equation*>

      <item*|<math|I\<neq\>\<varnothing\>>>Then there exist a
      <math|n\<in\>\<bbb-N\>> and a bijection
      <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I>. Using
      [theorem: <reference|family union of family set and surjections>] we
      have that\ 

      <\equation*>
        <big|cup><rsub|j\<in\>I>I<rsub|j>=<big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n-1|}>>I<rsub|\<beta\><around*|(|j|)>>
      </equation*>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>x<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n-1|}>>I<rsub|\<beta\><around*|(|j|)>>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i=0><rsup|n-1><around*|(|<big|sum><rsub|j\<in\>I<rsub|\<beta\><around*|(|i|)>>>x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|j><rsub|>|)>>>>>
      </eqnarray*>
    </description>

    \;
  </proof>

  <\corollary>
    <label|sum index is a product>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group, <math|I,J> finite sets and
    <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>>
    then\ 

    <\equation*>
      <big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>x<rsub|i,j>=<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>J>x<rsub|i,j>|)>\<equallim\><rsub|<text|[theorem:
      <reference|sum of finite sums (2)>]>><big|sum><rsub|j\<in\>J><around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i,j>|)>
    </equation*>
  </corollary>

  <\proof>
    Given <math|i\<in\>I> define <math|J<rsub|i>=<around*|{|i|}>\<times\>J>
    then s <math|I=<big|cup><rsub|i\<in\>I><around*|{|i|}>> we have by
    [theorem: <reference|family properties (3)>] that\ 

    <\equation*>
      I\<times\>J=<big|cup><rsub|i\<in\>I>J<rsub|i>
    </equation*>

    Further if <math|i,j\<in\>I> with <math|i\<neq\>j> then if
    <math|x\<in\>J<rsub|i><big|cap>J<rsub|j>=<around*|(|<around*|{|i|}>\<times\>J|)><big|cap><around*|(|<around*|{|j|}>\<times\>J|)>>
    then <math|\<exists\>k,l\<in\>J> such that
    <math|<around*|(|i,k|)>=x=<around*|(|j,l|)>> giving <math|i=j>
    contradicting <math|i\<neq\>j>. So\ 

    <\equation*>
      \<forall\>i,j\<in\>I<text| with >i\<neq\>j<text| we have
      ><around*|{|i|}>\<times\>J<big|cap><around*|{|j|}>\<times\>J=\<varnothing\>
    </equation*>

    So we can apply [theorem: <reference|sum over disjoint subsets (1)>]
    giving\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>x<rsub|i,j>>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|cup><rsub|k\<in\>I>J<rsub|k>>x<rsub|i,j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets
      (1)>]>>>|<cell|<big|sum><rsub|k\<in\>I><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\>J<rsub|k>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|i,j|)>\<in\><around*|{|k|}>\<times\>J\<Leftrightarrow\>j=k>>|<cell|<big|sum><rsub|k\<in\>I><around*|(|<big|sum><rsub|<around*|(|k,j|)>\<in\>J<rsub|k>>x<rsub|k,j>|)><eq-number><label|eq
      11.9.053>>>>>
    </eqnarray*>

    Given <math|k\<in\>I> define <math|\<beta\><rsub|k>:J\<rightarrow\>J<rsub|k>>
    by <math|\<beta\><rsub|k><around*|(|j|)>=<around*|(|k,j|)>\<in\><around*|{|k|}>\<times\>J=J<rsub|k>>
    then we have\ 

    <\description>
      <item*|injectivity>If <math|\<beta\><rsub|k><around*|(|i|)>=\<beta\><rsub|k><around*|(|j|)>>
      then <math|<around*|(|k,i|)>=<around*|(|k,j|)>> giving <math|i=j>

      <item*|surjectivity>If <math|<around*|(|k,j|)>\<in\><around*|{|k|}>\<times\>J>
      then <math|\<beta\><rsub|k><around*|(|j|)>=<around*|(|k,j|)>>
    </description>

    so that <math|\<beta\><rsub|k>:K\<rightarrow\>J<rsub|k>> is a bijection,
    hence by [theorem: <reference|sum bijection on index>]

    <\equation*>
      <big|sum><rsub|j\<in\>J>x<rsub|k,j=><big|sum><rsub|j\<in\>J>x<rsub|\<beta\><rsub|k><around*|(|j|)>>\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>><big|sum><rsub|<around*|(|k,j|)>\<in\>J<rsub|k>>x<rsub|k,j><rsub|>
    </equation*>

    which combined with [eq: <reference|eq 11.9.053>] gives\ 

    <\equation*>
      <big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>x<rsub|i,j>=<big|sum><rsub|k\<in\>I><around*|(|<big|sum><rsub|j\<in\>J>x<rsub|k,j>|)>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|sum in A^n>Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be a
    Abelian semi-group, <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|A<rsup|n>,+|\<rangle\>>> the semi-group based
    on <math|<around*|\<langle\>|A,+|\<rangle\>>> [see theorem:
    <reference|group finite power>] then we have:

    <\enumerate>
      <item>Let <math|k,l\<in\>\<bbb-N\><rsub|0>> with <math|k\<leqslant\>l>
      and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,l|}>>\<subseteq\>A<rsup|n>>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have\ 

      <\equation*>
        <around*|(|<big|sum><rsub|j=k><rsup|l>x<rsub|j>|)><rsub|i>=<big|sum><rsub|j=k><rsup|l><around*|(|x<rsub|j>|)><rsub|i>
      </equation*>

      <item>Let <math|J> be a finite set and
      <math|<around*|{|x<rsub|j>|}><rsub|j\<in\>J>\<subseteq\>A<rsup|n>> then
      for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|<around*|(|<big|sum><rsub|j\<in\>J>x<rsub|j>|)><rsub|i>=<big|sum><rsub|j\<in\>J><around*|(|x<rsub|j>|)><rsub|i>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction to prove this fro \ the case
      <math|<big|sum><rsub|j=0><rsup|l>x<rsub|j>>, so define

      <\equation*>
        S=<around*|{|l\<in\>\<bbb-N\><rsub|0>\|If
        <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,l|}>>\<subseteq\>A<rsup|n><text|
        then ><around*|(|<big|sum><rsub|j=0><rsup|l>x<rsub|j>|)><rsub|i>=<big|sum><rsub|j=0><rsup|l><around*|(|x<rsub|j>|)><rsub|i>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|0|}>>\<subseteq\>A<rsup|n>>
        then for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have
        <math|<around*|(|<big|sum><rsub|j=0><rsup|0>x<rsub|j>|)><rsub|i>=<around*|(|x<rsub|0>|)><rsub|i>=<big|sum><rsub|j=0><rsup|0><around*|(|x<rsub|j>|)><rsub|i>>
        proving that <math|0\<in\>S>.

        <item*|<math|l\<in\>S\<Rightarrow\>l+1\<in\>S>>Let
        <math|<around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|0,\<ldots\>,l+1|}>>\<subseteq\>A<rsup|n>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|j=0><rsup|l+1>x<rsub|j>|)><rsub|i>>|<cell|=>|<cell|<around*|(|<around*|(|<big|sum><rsub|j=0><rsup|l>x<rsub|j>|)>+x<rsub|l+1>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|group finite power>]>>>|<cell|<around*|(|<big|sum><rsub|j=0><rsup|l>x<rsub|j>|)><rsub|i>+<around*|(|x<rsub|l+1>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|l\<in\>S>>|<cell|<around*|(|<big|sum><rsub|j=0><rsup|l><around*|(|x<rsub|j>|)><rsub|i>|)>+<around*|(|x<rsub|l+1>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=0><rsup|l+1><around*|(|x<rsub|j>|)><rsub|i>>>>>
        </eqnarray*>

        proving that <math|l+1\<in\>S>.
      </description>

      By mathematical induction it follows then that\ 

      <\equation>
        <label|eq 11.10.064>\<forall\>l\<in\>\<bbb-N\><rsub|0><text| we have
        for ><around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>A<rsup|n><text|
        and <math|i\<in\><around*|{|1,\<ldots\>,n|}><text| that
        ><around*|(|<big|sum><rsub|j=0><rsup|l>x<rsub|j>|)><rsub|i>=<big|sum><rsub|j=0><rsup|l><around*|(|x<rsub|j>|)><rsub|i>>>
      </equation>

      Let now <math|k,l\<in\>\<bbb-N\><rsub|0>> with <math|k\<leqslant\>l>
      and <math|<around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,l|}>>\<subseteq\>A<rsup|n>>
      then we have for <math|i\<in\><around*|{|1,\<ldots\>,n|}>>

      <\equation*>
        <around*|(|<big|sum><rsub|j=k><rsup|l>x<rsub|j>|)><rsub|i>=<around*|(|<big|sum><rsub|j=0><rsup|l-k>x<rsub|j+k>|)><rsub|i>\<equallim\><rsub|<text|[eq:
        <reference|eq 11.10.064>]>><big|sum><rsub|j=0><rsup|l-k><around*|(|x<rsub|j+k>|)><rsub|i>=<big|sum><rsub|j=k><rsup|l><around*|(|x<rsub|j>|)><rsub|i>
      </equation*>

      <item>If <math|I> is a finite set, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      and <math|<around*|{|x<rsub|j>|}><rsub|j\<in\>I>\<subseteq\>I> then we
      have for <math|I> either:

      <\description>
        <item*|<math|I=\<varnothing\>>>Then\ 

        <\equation*>
          <around*|(|<big|sum><rsub|j\<in\>I>x<rsub|j>|)><rsub|i>=<around*|(|<big|sum><rsub|j\<in\>\<varnothing\>>x<rsub|j>|)><rsub|i>=0<rsub|i>\<equallim\><rsub|<text|[theorem:
          <reference|group finite power>]>><big|sum><rsub|j\<in\>\<varnothing\>><around*|(|x<rsub|j>|)><rsub|i>
        </equation*>

        <\equation*>
          \;
        </equation*>

        <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
        <math|l\<in\>\<bbb-N\><rsub|0>> and bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,l|}>\<rightarrow\>I> then\ 

        <\equation*>
          <around*|(|<big|sum><rsub|j\<in\>I>x<rsub|j>|)><rsub|i>\<equallim\><rsub|def><around*|(|<big|sum><rsub|j=0><rsup|l>x<rsub|\<beta\><around*|(|j|)>>|)><rsub|i>\<equallim\><rsub|<text|[theorem:
          <reference|eq 11.10.064>]>><big|sum><rsub|j=0><rsup|l><around*|(|x<rsub|\<beta\><around*|(|j|)>>|)><rsub|i>=<big|sum><rsub|j\<in\>I><around*|(|x<rsub|j>|)><rsub|i>
        </equation*>
      </description>
    </enumerate>

    \ 
  </proof>

  <section|Vector spaces >

  <subsection|Definition >

  <\definition>
    <label|vector space><index|vector space>A vector space
    <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> over a field
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> is a Abelian group
    <math|<around*|\<langle\>|V,\<oplus\>|\<rangle\>>> together with a map
    <math|\<odot\>:F\<times\>V\<rightarrow\>V> satisfying\ 

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>F> and <math|\<forall\>x,y\<in\>V>
      we have <math|\<alpha\>\<odot\><around*|(|x\<oplus\>y|)>=\<alpha\>\<odot\>x+\<alpha\>\<odot\>y>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>F> and <math|x\<in\>V> we
      have <math|<around*|(|\<alpha\>+\<beta\>|)>\<odot\>x=\<alpha\>\<odot\>x\<oplus\>\<beta\>\<odot\>y>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>F> and <math|x\<in\>V> we
      have <math|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<odot\>x=\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>x|)>>

      <item>If <math|1> i the multiplicative neutral element of
      <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
      <math|1\<odot\>x=x>
    </enumerate>

    The map <math|\<odot\>> is called the scalar product and elements of
    <math|V> are called vectors.\ 
  </definition>

  <\note>
    Some books call a vector space a linear space, which is maybe clearer as
    we later will introduce linear (in)dependent sets and linear
    combinations. However in this book e use the convention of most books
    about mathematics and physics.
  </note>

  <\theorem>
    <label|vector space properties (1)>Let
    <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> be a
    vectorspace over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    where\ 

    <\enumerate-alpha>
      <item><math|0<rsub|v>> is the neutral element of the Abelian group
      <math|<around*|\<langle\>|V,\<oplus\>|\<rangle\>>>

      <item><math|0<rsub|f>> is the additve neutral element of
      <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>

      <item><math|1> is the multiplicative neutral element of
      <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>

      <item>For <math|x\<in\>V> <math|-x> is the inverse of <math|x> in
      <math|<around*|\<langle\>|V,\<oplus\>|\<rangle\>>>
    </enumerate-alpha>

    then we have\ 

    <\enumerate>
      <item>\<forall\><math|x\<in\>V> we have
      <math|0<rsub|f>\<odot\>x=0<rsub|v>>

      <item><math|\<forall\>x\<in\>V> we have
      <math|<around*|(|-1|)>\<odot\>x=-x>

      <item><math|\<forall\>\<alpha\>\<in\>F> we have
      <math|\<alpha\>\<odot\>0<rsub|v>=0<rsub|v>>

      <item>If for <math|\<alpha\>\<in\>F\\<around*|{|0<rsub|f>|}>> we have
      if <math|x\<in\>V> with <math|\<alpha\>\<odot\>x=0<rsub|v>> that
      <math|x=0<rsub|v>>

      <item>If <math|x\<in\>V\\<around*|{|0|}>> then ee have if
      <math|\<alpha\>\<in\>F> with <math|\<alpha\>\<cdot\>x=0> that
      <math|\<alpha\>=0>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>V> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0<rsub|v>>|<cell|=>|<cell|<around*|(|0<rsub|f>\<odot\>x|)>\<oplus\><around*|(|-<around*|(|0<rsub|f>\<odot\>x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|0<rsub|f>=0<rsub|f>+0<rsub|f>>>|<cell|<around*|(|<around*|(|0<rsub|f>+0<rsub|f>|)>\<odot\>x|)>\<oplus\><around*|(|-<around*|(|0<rsub|f>\<odot\>x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|0<rsub|f>\<odot\>x|)>\<oplus\><around*|(|0<rsub|f>\<odot\>x|)>|)>\<oplus\><around*|(|-<around*|(|0<rsub|f>\<odot\>x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0<rsub|f>\<odot\>x|)>\<oplus\><around*|(|<around*|(|0<rsub|f>\<odot\>x|)>\<oplus\><around*|(|-<around*|(|0<rsub|f>\<odot\>x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0<rsub|f>\<odot\>x|)>\<oplus\>0<rsub|v>>>|<row|<cell|>|<cell|=>|<cell|0<rsub|f>\<odot\>x>>>>
      </eqnarray*>

      <item>If <math|x\<in\>V> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<oplus\><around*|(|<around*|(|-1|)>\<odot\>x|)>>|<cell|=>|<cell|<around*|(|1\<odot\>x|)>\<oplus\><around*|(|<around*|(|-1|)>\<odot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+<around*|(|-1|)>|)>\<odot\>x>>|<row|<cell|>|<cell|=>|<cell|0<rsub|f>\<odot\>x>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|0<rsub|v>>>>>
      </eqnarray*>

      so that by the definition of a inverse element we have\ 

      <\equation*>
        <around*|(|-1|)>\<odot\>x=-x
      </equation*>

      <item>If <math|\<alpha\>\<in\>F> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<alpha\>\<odot\>0<rsub|v>>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|\<alpha\>\<odot\><around*|(|0<rsub|f>\<odot\>0<rsub|v>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>0<rsub|f>|)>\<odot\>0<rsub|v>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|ring absorbing element>]>>>|<cell|0<rsub|f>\<odot\>0<rsub|v>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|0<rsub|v>>>>>
      </eqnarray*>

      <item>Let <math|\<alpha\>\<in\>F\\<around*|{|0<rsub|f>|}>> and take
      <math|x\<in\>V> such that <math|\<alpha\>\<odot\>x=0<rsub|v>>. As
      <math|\<alpha\>\<neq\>0<rsub|f>> we have that <math|\<alpha\><rsup|-1>>
      exist. So that\ 

      <\equation*>
        0<rsub|v>\<equallim\><rsub|<around*|(|3|)>>\<alpha\><rsup|-1>\<odot\>0<rsub|v>\<equallim\><rsub|<around*|(|1|)>>\<alpha\><rsup|-1>\<odot\><around*|(|\<alpha\>\<odot\>x|)>=<around*|(|\<alpha\><rsup|-1>\<cdot\>\<alpha\>|)>\<odot\>x=1\<odot\>x=x
      </equation*>

      <item>Let <math|x\<in\>V\\<around*|{|0|}>> and <math|\<alpha\>\<in\>F>
      such that <math|\<alpha\>\<cdot\>x=0>. Assume that
      <math|\<alpha\>\<neq\>0> then by (4) we have that <math|x=0>
      contradicting <math|x\<in\>V\\<around*|{|0|}>>, so we must have that
      <math|\<alpha\>=0>.
    </enumerate>
  </proof>

  Just as we have sub-groups, sub-rings and sub-fields we have sub-spaces of
  a vector space.

  <\definition>
    <label|vector space subspace>Let <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|W\<subseteq\>V> is a sub-space of
    <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> if\ 

    <\enumerate>
      <item><math|W\<neq\>\<varnothing\>>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>F> and <math|x,y\<in\>V>
      we have that <math|<around*|(|\<alpha\>\<odot\>x|)>\<oplus\><around*|(|\<beta\>\<odot\>y|)>\<in\>W>
    </enumerate>
  </definition>

  <\theorem>
    <label|vector space sub-space is a vector space>Let
    <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> be a vector
    space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> a sub-space then
    <math|<around*|\<langle\>|V,\<oplus\><rsub|\|W\<times\>W>,\<odot\><rsub|\|F\<odot\>W>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>.
  </theorem>

  <\proof>
    First we prove that <math|<around*|\<langle\>|W,\<oplus\><rsub|W\<times\>W>|\<rangle\>>>
    is a Abelian group:.

    <\description>
      <item*|<math|\<oplus\><rsub|\|W\<times\>W><text| is a operator on
      <math|W>>>>If <math|x,y\<in\>W> then
      <math|x\<oplus\>y=<around*|(|1\<odot\>x|)>\<oplus\>y\<in\>W> so that
      <math|\<oplus\><rsub|\|W\<times\>W>> is indeed a function between
      <math|W\<times\>W> and <math|W>.

      <item*|associativity>If <math|x,y,z\<in\>W> then\ 

      <\equation*>
        x\<oplus\><rsub|\|W\<times\>W><around*|(|y\<oplus\><rsub|\|W\<times\>W>z|)>\<equallim\><rsub|x,y,z\<in\>W>x\<oplus\><around*|(|y\<oplus\>z|)>=<around*|(|x\<oplus\>y|)>\<oplus\>z=<around*|(|x\<oplus\><rsub|\|W\<times\>W>y|)>\<oplus\><rsub|<around*|\||W\<times\>W|\|>>x
      </equation*>

      <item*|commutativity>If <math|x,y\<in\>W> then
      <math|x\<oplus\><rsub|\|W\<times\>W>y=x\<oplus\>y=y\<oplus\>x=y\<oplus\><rsub|\|W\<times\>W>x>

      <item*|neutral element>Then as <math|W\<neq\>\<varnothing\>> there
      exist a <math|w\<in\>W> so that

      <\equation*>
        0<rsub|v>\<equallim\><rsub|<text|[theorem: <reference|vector space
        properties (1)> (1)]>>0<rsub|f>\<odot\>w=<around*|(|0<rsub|f>+0<rsub|f>|)>\<odot\>w=0<rsub|f>\<odot\>w+0\<odot\>w\<in\>W
      </equation*>

      proving that <math|0<rsub|v>\<in\>W>. So <math|\<forall\>x\<in\>W> we
      have

      <\equation*>
        x\<oplus\><rsub|\|W\<times\>W>0<rsub|v>\<equallim\><rsub|<text|commutatitivity>>0<rsub|v>\<oplus\><rsub|\|W\<times\>W>x=0<rsub|v>\<oplus\>x=x
      </equation*>

      <item*|inverse element>If <math|x\<in\>W> then
      <math|-x\<equallim\><rsub|<text|[theorem: <reference|vector space
      properties (1)> (2)]>><around*|(|<around*|(|-1|)>\<odot\>x|)>=<around*|(|<around*|(|-1|)>\<odot\>x|)>\<oplus\>0<rsub|v>\<in\>W>
      so that <math|-x\<in\>W>. Hence <math|x\<oplus\><rsub|\|W\<times\>W><around*|(|-x|)>\<equallim\><rsub|<text|commutatitivity>><around*|(|-x|)>\<oplus\><rsub|\|W\<times\>W>x=<around*|(|-x|)>\<oplus\>x=0<rsub|v>>
    </description>

    Further we have:

    <\enumerate>
      <item>If <math|\<alpha\>\<in\>F> and <math|x\<in\>W> then
      <math|\<alpha\>\<odot\>x=\<alpha\>\<odot\>x\<oplus\>0<rsub|v>\<in\>W>
      so that <math|\<odot\><rsub|\|F\<times\>W>> is a function between
      <math|F\<times\>W> and <math|W>.

      <item>If <math|\<alpha\>\<in\>F> and <math|x,y\<in\>W> then
      <math|\<alpha\>\<odot\><rsub|\|W\<times\>W><around*|(|x\<oplus\><rsub|\|W\<times\>W>y|)>=\<alpha\>\<odot\><around*|(|x\<oplus\>y|)>=\<alpha\>\<odot\>x\<oplus\>\<alpha\>\<odot\>y=\<alpha\>\<odot\><rsub|\|W\<times\>W>x\<oplus\><rsub|\|W\<times\>W>\<beta\>\<odot\><rsub|\|W\<times\>W>y>

      <item>If <math|\<alpha\>,\<beta\>\<in\>F> and <math|x\<in\>W> then
      <math|<around*|(|\<alpha\>+\<beta\>|)>\<odot\><rsub|\|W\<times\>W>x=<around*|(|\<alpha\>+\<beta\>|)>\<odot\>x=\<alpha\>\<odot\>x\<oplus\>\<beta\>\<odot\>x=\<alpha\>\<odot\><rsub|\|W\<times\>W>x\<oplus\><rsub|\|W\<times\>W>\<beta\>\<odot\><rsub|\|W\<times\>W>x>

      <item>If <math|\<alpha\>,\<beta\>\<in\>F> and <math|x\<in\>W> then
      <math|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<odot\><rsub|\|W\<times\>W>x=<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<odot\>x=\<alpha\>\<odot\><around*|(|\<beta\>\<odot\>x|)>=\<alpha\>\<odot\><rsub|\|W\<times\>W><around*|(|\<beta\>\<odot\><rsub|\|W>x|)>>

      <item>If <math|x\<in\>W> then <math|1\<odot\><rsub|\|F\<times\>W>x=1\<odot\>x=x>
    </enumerate>
  </proof>

  <\note>
    To avoid excesive use of subscripts we follow for the rest of this book
    the convention that if <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<in\>V> is a sub-space of
    <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> we use
    <math|\<oplus\>> instead of <math|\<oplus\><rsub|\|W\<times\>W>> and
    <math|\<odot\>> instead of \ <math|\<odot\><rsub|\|F\<times\>W>>. Using
    this convention we have then that <math|<around*|\<langle\>|W,\<oplus\>,\<odot\>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>.
  </note>

  <subsection|Examples of vector spaces>

  <\example>
    <label|vector space trivial><math|>Let
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> be a field, <math|e>
    a element and\ 

    <\enumerate>
      <item><math|\<oplus\>:<around*|{|e|}>\<times\><around*|{|e|}>\<rightarrow\><around*|{|e|}>>
      defined by <math|e\<oplus\>e=e>

      <item><math|\<odot\>:F\<times\><around*|{|e|}>\<rightarrow\><around*|{|e|}>>
      defined by <math|\<alpha\>\<odot\>e=e>
    </enumerate>
  </example>

  then <math|<around*|\<langle\>|<around*|{|e|}>,\<oplus\>,\<odot\>|\<rangle\>>>
  is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
  with neutral element <math|e> and the inverse of <math|e> is <math|e>. This
  vector space is called the <with|font-series|bold|trivial vector space>.

  <\proof>
    First we prove that <math|<around*|\<langle\>|<around*|{|e|}>,\<oplus\>|\<rangle\>>>
    is a Abelian group:

    <\description>
      <item*|associativity><math|\<forall\>x,y,z\<in\><around*|{|e|}><text|
      we have >x\<oplus\><around*|(|y\<oplus\>z|)>=e\<oplus\><around*|(|e\<oplus\>e|)>=e\<oplus\>e=<around*|(|e\<oplus\>e|)>\<oplus\>e=<around*|(|x\<oplus\>y|)>\<oplus\>z>

      <item*|neutral element><math|\<forall\>x\<in\><around*|{|0|}>> we have
      <math|x\<oplus\>e=e\<oplus\>e=e=e\<oplus\>e=e\<oplus\>x> we have that
      <math|e> is the neutral element.

      <item*|inverse element><math|\<forall\>x\<in\><around*|{|0|}> we have >
      <math|x\<oplus\>e=e\<oplus\>e=e> so that <math|e> is the inverse
      element of <math|x>.

      <item*|commutatitivity><math|We have
      trivial\<forall\>x,y\<in\><around*|{|0|}>> we have
      x@+y=<math|e\<oplus\>e=y\<oplus\>x>
    </description>

    For the remaining axioms we have\ 

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>F> and
      <math|x,y\<in\><around*|{|e|}>> we have

      <\equation*>
        \<alpha\>\<odot\><around*|(|x+y|)>=\<alpha\>\<odot\><around*|(|e\<oplus\>e|)>=\<alpha\>\<odot\>e=e=e\<oplus\>e=\<alpha\>\<odot\>w\<oplus\>\<alpha\>\<odot\>e=\<alpha\>\<odot\>x\<oplus\>\<alpha\>\<odot\>y
      </equation*>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>F> and
      <math|x\<in\><around*|{|e|}>> we have

      <\equation*>
        <around*|(|\<alpha\>+\<beta\>|)>\<odot\>x=<around*|(|\<alpha\>+b|)>\<odot\>e=e=e\<oplus\>e=\<alpha\>\<odot\>e+\<beta\>\<odot\>e=\<alpha\>\<odot\>x+\<beta\>\<odot\>x
      </equation*>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>F> and
      <math|x\<in\><around*|{|e|}>> we have
      <math|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<odot\>x=<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<odot\>e=e=\<alpha\>\<odot\>e=\<alpha\>\<odot\><around*|(|b\<odot\>e|)>>

      <item><math|\<forall\>x\<in\><around*|{|e|}> > we have
      <math|1\<odot\>x=1\<odot\>e=e=x>
    </enumerate>
  </proof>

  Every field is a vector spaces over itself.

  <\theorem>
    <label|vector space field>If <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    is a field then <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> is a
    vector space over it self
  </theorem>

  <\proof>
    As <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> is a field we have
    by definition of a field [see definition: <reference|field>] that
    <math|<around*|\<langle\>|F,+|\<rangle\>>> is a Abelian group. Further
    for the rest of the vector axioms we have:

    <\enumerate>
      <item><math|\<forall\>\<alpha\>,x,y\<in\>F> we have
      <math|\<alpha\>\<cdot\><around*|(|x+y|)>\<equallim\><rsub|<text|distributivity>>\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

      <item><math|\<forall\>\<alpha\>,\<beta\>,x\<in\>F> we have
      <math|<around*|(|\<alpha\>+\<beta\>|)>\<cdot\>x\<equallim\><rsub|<text|distributivity>>\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y>

      <item><math|\<forall\>\<alpha\>,\<beta\>,x\<in\>F> we have
      <math|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>x\<equallim\><rsub|<text|associativity>>\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>x|)>>

      <item><math|\<forall\>x\<in\>F> we have for the multiplicative neutral
      element of <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> that
      <math|1\<cdot\>x=x>
    </enumerate>
  </proof>

  Using the above and the fact that <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>,
  <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> and
  <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> are fields [see
  theorem: <reference|complex embedding>] we have:

  <\example>
    <label|vector space Q,R,C><math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> is a vector
    space over <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
    and <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> is a
    vector space over <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>.>
  </example>

  Be aware that a vector space depends also on the field used, so for example
  <math|\<bbb-C\>> can be used to define another vector space, as is shown in
  the next example.

  <\example>
    <label|vector space C real><math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
  </example>

  <\proof>
    As <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> is a field
    we have by definition of a field [see definition: <reference|field>] that
    <math|<around*|\<langle\>|\<bbb-C\>,+|\<rangle\>>> is a Abelian group.
    Further for the rest of the vector axioms we have as
    <math|\<bbb-R\>\<subseteq\>\<bbb-C\>> that\ 

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>>,
      <math|\<forall\>x,y\<in\>\<bbb-C\>> we have
      <math|><math|\<alpha\>\<cdot\><around*|(|x+y|)>\<equallim\><rsub|<text|distributivity>>\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\>>,
      <math|\<forall\>x\<in\>\<bbb-C\>> we have
      <math|<around*|(|\<alpha\>+\<beta\>|)>\<cdot\>x=\<alpha\>\<cdot\>x+\<beta\>\<cdot\>x>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\>>,
      <math|\<forall\>x\<in\>\<bbb-C\>> we have
      <math|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>x=\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>x|)>>

      <item>As <math|1\<in\>\<bbb-R\>\<subseteq\>\<bbb-C\>> we have
      <math|\<forall\>x\<in\>\<bbb-C\>> <math|1\<cdot\>x>
    </enumerate>
  </proof>

  <\definition>
    <label|vector space complex/real><index|complex vector space><index|real
    vector space>A vector space <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>>
    over <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> is
    called a <with|font-series|bold|real> vector space and a vector space
    <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> over
    <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> is called a
    <with|font-series|bold|complex> vector space. If we want to refer to a
    vector space <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>>
    over either <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
    or <math|<around*|\<langle\>|Rr,+,\<cdot\>|\<rangle\>>> then we say that
    <math|<around*|\<langle\>|\<bbb-V\>,\<oplus\>,\<odot\>|\<rangle\>>> is a
    vector space over <math|<around*|\<langle\>|\<bbb-K\>,+,\<cdot\>|\<rangle\>>>.
  </definition>

  Next we use an existing vector space and pairwise addition and scalar
  multiplication to define a function space. Later will use this to define
  more special function spaces that are sub-spaces of this function space.

  <\theorem>
    <label|vector space function space><dueto|function space>Let
    <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> be a vector
    space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>, <math|X>
    a set then and define for <math|V<rsup|X>=<around*|{|f\|f:X\<rightarrow\>V<text|
    is a function>|}>> the following operations:

    <\equation*>
      \<boxplus\>:V<rsup|X>\<times\>V<rsup|X>\<rightarrow\>V<rsup|X><text|
      defined by >f\<boxplus\>g where <around*|(|f\<boxplus\>g|)><around*|(|x|)>=f<around*|(|x|)>\<oplus\>g<around*|(|y|)><text|
      [pairwise addition]>
    </equation*>

    <\equation*>
      \<boxdot\>:F\<times\>V<rsup|X>\<rightarrow\>V<rsup|X><text| defined by
      >\<alpha\>\<boxdot\>f<text| where ><around*|(|\<alpha\>\<boxdot\>f|)><around*|(|x|)>=\<alpha\>\<odot\>f<around*|(|x|)>
    </equation*>

    then\ 

    <\equation*>
      <around*|\<langle\>|V<rsup|X>,\<boxplus\>,\<boxdot\>|\<rangle\>><text|
      is a vector space over ><around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>
    </equation*>

    where:\ 

    <\enumerate-alpha>
      <item><math|C<rsub|o>:X\<rightarrow\>V> is defined by
      <math|C<rsub|0><around*|(|x|)>=e> [the constant function [see example:
      <reference|function constant function>] is the additive neutral
      element.

      <item>If <math|f\<in\>V<rsup|X>> then <math|-f> defined by
      <math|<around*|(|-f|)><around*|(|x|)>=-f<around*|(|x|)>> is the inverse
      element of <math|f>
    </enumerate-alpha>
  </theorem>

  <\proof>
    First we prove that <math|<around*|\<langle\>|V<rsup|X>,\<boxplus\>,\<boxdot\>|\<rangle\>>>
    is a Abelian group:\ 

    <\description>
      <item*|associativity>Let <math|f,g,h\<in\>V<rsup|X>> then
      \ <math|\<forall\>x\<in\>X> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f\<boxplus\><around*|(|g\<boxplus\>h|)>|)><around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x|)>\<oplus\><around*|(|g\<boxplus\>h|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<oplus\><around*|(|g<around*|(|x|)>\<oplus\>h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<around*|(|x|)>\<oplus\>g<around*|(|x|)>|)>\<oplus\>h<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<boxplus\>g|)><around*|(|x|)>\<oplus\>h<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f\<boxplus\>g|)>\<boxplus\>h|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|f\<boxplus\><around*|(|g\<boxplus\>h|)>=<around*|(|f\<boxplus\>g|)>\<boxplus\>h>

      <item*|commutatitivity>Let <math|f,g\<in\>V<rsup|X>> then
      <math|\<forall\>x\<in\>X> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f\<boxplus\>g|)><around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x|)>\<oplus\>g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>\<oplus\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g\<boxplus\>f|)><around*|(|x|)>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        f\<boxplus\>g=g\<boxplus\>f
      </equation*>

      <item*|neutral element>Let <math|f\<in\>V<rsup|X>> then
      <math|\<forall\>x\<in\>X> we have\ 

      <\equation*>
        <around*|(|f\<boxplus\>C<rsub|0>|)><around*|(|x|)>=f<around*|(|x|)>\<oplus\>C<rsub|0><around*|(|x|)>=f<around*|(|x|)>\<oplus\>0=f<around*|(|x|)>
      </equation*>

      so that\ 

      <\equation*>
        C<rsub|0>\<boxplus\>f\<equallim\><rsub|<text|commutatitivity>>f\<boxplus\>C<rsub|0>=f
      </equation*>

      <item*|inverse element>Let <math|f\<in\>V<rsup|X>> then
      <math|\<forall\>x\<in\>X> we have

      <\equation*>
        <around*|(|f\<boxplus\><around*|(|-f|)>|)><around*|(|x|)>=f<around*|(|x|)>\<oplus\><around*|(|-f|)><around*|(|x|)>=f<around*|(|x|)>\<oplus\><around*|(|-<around*|(|f<around*|(|x|)>|)>|)>=0=C<rsub|9><around*|(|x|)>
      </equation*>

      so that <math|<around*|(|-f|)>+f\<equallim\><rsub|<text|commutatitivity>>f+<around*|(|-f|)>=C<rsub|0>>
    </description>

    For the remaining axioms of a cector space we have:

    <\enumerate>
      <item>If <math|\<alpha\>\<in\>F> and <math|f,g\<in\><rsup|X>> then
      <math|\<forall\>x\<in\>X> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<boxdot\><around*|(|f\<boxplus\>g|)>|)><around*|(|x|)>>|<cell|=>|<cell|\<alpha\>\<odot\><around*|(|f\<boxplus\>g|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<odot\><around*|(|f<around*|(|x|)>\<oplus\>g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<odot\>f<around*|(|x|)>\<oplus\>\<alpha\>\<odot\>g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<boxdot\>f|)><around*|(|x|)>\<oplus\><around*|(|\<alpha\>\<boxdot\>g|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<boxdot\>f\<boxplus\>\<alpha\>\<boxdot\>g|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|\<alpha\>\<boxdot\><around*|(|f\<boxplus\>g|)>=\<alpha\>\<boxdot\>f\<boxplus\>\<alpha\>\<boxdot\>g>.

      <item>If <math|\<alpha\>,\<beta\>\<in\>F> and <math|f\<in\>V<rsup|X>>
      then <math|\<forall\>x\<in\>X> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<alpha\>+\<beta\>|)>\<boxdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<alpha\>+\<beta\>|)>\<odot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<odot\>f<around*|(|x|)>+\<beta\>\<odot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<boxdot\>f|)><around*|(|x|)>\<oplus\><around*|(|\<beta\>\<boxdot\>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<boxdot\>f\<boxplus\>\<beta\>\<boxdot\>f|)><around*|(|x|)>>>>>
      </eqnarray*>

      so that <math|<around*|(|\<alpha\>+\<beta\>|)>\<boxdot\>f=\<alpha\>\<boxdot\>f\<boxplus\>\<beta\>\<boxdot\>f>.

      <item>If <math|\<alpha\>,\<beta\>\<in\>F> and <math|f\<in\>V<rsup|X>>
      then <math|\<forall\>x\<in\>X> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<boxdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<odot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<boxdot\>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<boxdot\><around*|(|\<beta\>\<boxdot\>f|)>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<boxdot\>f=\<alpha\>\<boxdot\><around*|(|\<beta\>\<boxdot\>f|)>>

      <item>Let <math|f\<in\>V<rsup|X>> then we have
      <math|\<forall\>x\<in\>X> that <math|<around*|(|1\<boxdot\>f|)><around*|(|x|)>=1\<odot\>f<around*|(|x|)>=f<around*|(|x|)>>
      so that <math|1\<boxdot\>f=f>.
    </enumerate>
  </proof>

  Up to now I have used different operator symbols for addition and
  multiplication. To simplify notation we use from now on always <math|+> for
  addition and <math|\<cdot\>> for multiplication relaying on context to
  figure out which operator is associated with the symbols <math|+> and
  <math|\<cdot\>>. We alsso use <math|0> to denote the additve neutral
  element and <math|-x to note the inverse of > <math|x>.

  \;

  Refering to the power of a set [see definition: <reference|finite product
  of sets power>] we can\ 

  <\theorem>
    <label|vector space power>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|<around*|\<langle\>|V<rsup|n>,+,\<cdot\>|\<rangle\>>> is a
    vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    where\ 

    <\equation*>
      +:V<rsup|n>\<times\>V<rsup|n>\<rightarrow\>V<rsup|n><text| is defined
      by ><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>+<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>=<around*|(|x<rsub|1>+y<rsub|1>,\<ldots\>,x<rsub|n>+y<rsub|n>|)>
    </equation*>

    <\equation*>
      \<cdot\>:F\<times\>V<rsup|n>\<rightarrow\>V<rsup|n><text| is defined by
      <math|\<alpha\>\<cdot\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<around*|(|\<alpha\>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>x<rsub|n>|)>>>
    </equation*>

    <\equation*>
      0=<wide*|<around*|(|0,\<ldots\>,0|)>|\<wide-underbrace\>><rsub|n>\<in\>V<rsup|n><text|
      is the additive neutral element in >V<rsup|n>
    </equation*>

    <\equation*>
      \<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>V<rsup|n><text|
      the additive negative is ><around*|(|-x<rsub|1>,\<ldots\>,-x<rsub|n>|)>
    </equation*>
  </theorem>

  <\proof>
    Note that using [theorem: <reference|finite product of sets power
    equivalence>] we have that

    <\equation*>
      V<rsup|n>=V<rsup|<around*|{|1,\<ldots\>,n|}>>=<around*|{|f\|f:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>V<text|
      is a function>|}>
    </equation*>

    and <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> is equivalent
    with <math|x:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>V> is a function
    where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<around*|(|i|)>=x<rsub|i>>. So

    <\equation*>
      +:V<rsup|n>\<times\>V<rsup|n>\<rightarrow\>V<rsup|n><text| is defined
      by ><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>+<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>=<around*|(|x<rsub|1>+y<rsub|1>,\<ldots\>,x<rsub|n>+y<rsub|n>|)>
    </equation*>

    is equivalent with:

    <\equation*>
      +:V<rsup|n>\<times\>V<rsup|n>\<rightarrow\>V<rsup|n><text| is defined
      by ><around*|(|x+y|)> where <around*|(|x+y|)><around*|(|i|)>=x<around*|(|i|)>+y<around*|(|i|)>
    </equation*>

    and

    <\equation*>
      \<cdot\>:F\<times\>V<rsup|n>\<rightarrow\>V<rsup|n><text| is defined by
      <math|\<alpha\>\<cdot\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<around*|(|\<alpha\>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>x<rsub|n>|)>>>
    </equation*>

    \ is equivalent with:

    <\equation*>
      \<cdot\>:F\<times\>V<rsup|n>\<rightarrow\>V<rsup|n><text| is defined by
      >\<alpha\>\<cdot\>x<text| where ><around*|(|\<alpha\>\<cdot\>x|)><around*|(|i|)>=\<alpha\>\<cdot\>x<around*|(|i|)>
    </equation*>

    and\ 

    <\equation*>
      <around*|(|0,\<ldots\>,0|)>\<in\>V<rsup|n><text| is
      <math|C<rsub|0>>><rsup|> where C<rsub|0><around*|(|i|)>=0
    </equation*>

    and finally\ 

    <\equation*>
      \<forall\><around*|(|x<rsub|1>,\<ldots\>,n|)>\<in\>V<rsup|n><text| the
      additve negative is ><around*|(|-x<rsub|1>,\<ldots\>,-x<rsub|n>|)>
    </equation*>

    is equivalent with\ 

    <\equation*>
      \<forall\>x\<in\>V<rsup|n><text| the additve negative is >-x<text|
      where <math|<around*|(|-x|)><around*|(|i|)>=-x<around*|(|i|)>>>
    </equation*>

    Combining these equivalent definitions with [theorem: <reference|vector
    space function space>] proves then that
    <math|<around*|\<langle\>|V<rsup|n>,+,\<cdot\>|\<rangle\>>> is a vector
    space.
  </proof>

  As a application of the above theorem we have that

  <\corollary>
    <label|vector space power field>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> a field then
    <math|<around*|\<langle\>|F<rsup|n>\<dotplus\>,\<cdot\>|\<rangle\>>> is a
    vector spave over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
  </corollary>

  <\proof>
    This follows from [theorems: <reference|vector space field>,
    <reference|vector space power>]
  </proof>

  Using [example: <reference|vector space Q,R,C>, <reference|vector space C
  real>] and the above theorem [theorem: <reference|vector space power>] we
  have then the following examples of vector spaces:

  <\example>
    \ <label|vector space F^n>Let <math|n\<in\>\<bbb-N\>> then

    <\enumerate>
      <item><math|<around*|\<langle\>|\<bbb-Q\><rsup|n>,+,\<cdot\>|\<rangle\>>>
      is a vector space over <math|<around*|\<langle\>|Q,+,\<cdot\>|\<rangle\>>>

      <item><math|<around*|\<langle\>|\<bbb-R\><rsup|n>,+,\<cdot\>|\<rangle\>>>
      is a vector space over <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>

      <item><math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> is a
      vector space over <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>

      <item><math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> is a
      vector space over <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
    </enumerate>
  </example>

  <\remark>
    <label|vector space product of vector spaces>Note that in the proof of
    the previous theorem we use the fact that
    <math|V<rsup|n>=<around*|{|f\|f:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>V<text|
    is a function>|}>>, however this is not standard practise. Most books
    preferes to work with the notation <math|x\<in\>V<rsup|n>\<Leftrightarrow\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><text|>>
    such that <math|x<rsub|i>\<in\>V> <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>.
    Likewise for <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    most books use the notation <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<Leftrightarrow\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
    such that <math|x<rsub|i>\<in\>V<rsub|i>>
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>. This a standard that
    we will follow for the rest of this book. If needed you can use
    [definition: <reference|finite product of sets>] and [theorem:
    <reference|finite product of sets power equivalence>] to understand the
    original definitions.\ 
  </remark>

  <\definition>
    <label|vector space set operations>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|A,B\<subseteq\>V>, <math|G\<subseteq\>F,x\<in\>V> and
    <math|\<alpha\>\<in\>F> then we have the following definitions:

    <\enumerate>
      <item><math|x+A=<around*|{|x+y\|y\<in\>A|}>\<equallim\><rsub|commutativity><around*|{|y+x<around*|\||y\<in\>A|\<nobracket\>>|}>=A+x>

      <item><math|A+B=<around*|{|x+y\|x\<in\>A\<wedge\>y\<in\>B|}>>

      <item><math|\<alpha\>\<cdot\>A=<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>>

      <item><math|G\<cdot\>A=<around*|{|\<gamma\>\<cdot\>x\|\<gamma\>\<in\>F\<wedge\>x\<in\>A|}>>

      <item><math|A-B=<around*|{|x-y\|x\<in\>A\<wedge\>y\<in\>B|}>>
    </enumerate>
  </definition>

  <\theorem>
    <label|vector space set propertie>If <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then we have\ 

    <\enumerate>
      <item><math|\<forall\>A\<subseteq\>V,x\<in\>V> we have
      <math|y\<in\>x+A\<Leftrightarrow\>y-x\<in\>A>

      <item><math|\<forall\>A,B\<subseteq\>V,x\<in\>V> we have
      <math|x+<around*|(|A<big|cup>B|)>=<around*|(|x+A|)><big|cup><around*|(|x+B|)>>

      <item><math|\<forall\>A,B\<subseteq\>V,x\<in\>V> we have
      <math|x+<around*|(|A<big|cap>B|)>=<around*|(|x+A|)><big|cap><around*|(|x+B|)>>

      <item><math|\<forall\>A\<subseteq\>V,x,y\<in\>V> we have
      <math|x+<around*|(|y+A|)>=<around*|(|x+y|)>+A>\ 
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>If <math|y\<in\>x+A> there exists a <math|z\<in\>A> such that
      <math|y=x+z\<Rightarrow\>y-x=z\<in\>A>. If
      <math|y-x\<in\>A\<Rightarrow\>y=x+<around*|(|y-x|)>\<in\>x+A>.

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\>x+<around*|(|A<big|cup>B|)>>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|y-x\<in\>A<big|cup>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|y-x\<in\>A|)>\<vee\><around*|(|y-x\<in\>B|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|y\<in\>x+A|)>\<vee\><around*|(|y\<in\>x+B|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|(|x+A|)><big|cup><around*|(|x+B|)>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\>x+<around*|(|A<big|cap>B|)>>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|y-x\<in\>A<big|cap>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|y-x\<in\>A|)>\<wedge\><around*|(|y-x\<in\>B|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|y\<in\>x+A|)>\<wedge\><around*|(|y\<in\>x+B|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|(|x+A|)><big|cap><around*|(|x+B|)>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\><around*|(|x+<around*|(|y+A|)>|)>>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|z-x\<in\>y+A>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|<around*|(|z-x|)>-y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|z-<around*|(|x+y|)>|)>\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|z\<in\><around*|(|x+y|)>+A>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|vector spaces product of vector spaces>If
    <math|<around*|\<langle\>|V<rsub|i>,+<rsub|i>,\<cdot\><rsub|i>|\<rangle\>><rsub|i\<in\>I>>
    is a family of vector spaces over a field
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then if we define:

    <\enumerate>
      <item><math|+:<big|prod><rsub|i\<in\>I>V<rsub|i>\<times\><big|prod><rsub|i\<in\>I>V<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\>I>V<rsub|i>>
      by <math|<around*|(|x,y|)>\<rightarrow\>x+y> where
      <math|x+y:I\<rightarrow\><big|cup><rsub|i\<in\>I>V<rsub|i>> is defined
      by <math|<around*|(|x+y|)><around*|(|i|)>=x<around*|(|i|)>+<rsub|i>y<around*|(|i|)>=x<rsub|i>+<rsub|i>y<rsub|i>>
      [see theorem <reference|group product of groups>]

      <item><math|\<cdot\>:F\<times\><big|prod><rsub|i\<in\>I>V<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\>I>V<rsub|i>>
      is defined by <math|<around*|(|\<alpha\>,x|)>\<rightarrow\>\<alpha\>\<cdot\>x>
      where <math|\<alpha\>\<cdot\>x:I\<rightarrow\><big|cup><rsub|i\<in\>I>V<rsub|i>>
      is defined by <math|<around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\><rsub|i>x<around*|(|i|)>=\<alpha\>\<cdot\><rsub|i>x<rsub|i>>
    </enumerate>

    then we have that <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>V<rsub|i>,+,\<cdot\>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
  </theorem>

  <\proof>
    From [theorem <reference|group product of groups>] it follows that
    <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>V<rsub|i>,+|\<rangle\>>>
    is a abelian group. Next if <math|\<alpha\>\<in\>F> and
    <math|x\<in\>V<rsub|i>> we have by the fact that
    <math|<around*|\<langle\>|V<rsub|i>,+<rsub|i>,\<cdot\><rsub|i>|\<rangle\>>>
    is a vector space that <math|\<alpha\>\<cdot\><rsub|i>x<around*|(|i|)>\<in\>V<rsub|i>>
    so that <math|\<alpha\>\<cdot\>x:I\<rightarrow\><big|cup><rsub|i\<in\>I>V<rsub|i>>
    is a element of <math|<big|prod><rsub|i\<in\>I>V<rsub|i>> and thus that
    <math|\<cdot\>:F\<times\><big|prod><rsub|i\<in\>I>V<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\>I>V<rsub|i>>
    is indeed a function. Now that we have proved that (1) and (2) are well
    defined we prove the rest of the vector space axioms.

    <\enumerate>
      <item>If <math|\<alpha\>\<in\>F> and
      <math|x,y\<in\><big|prod><rsub|i\<in\>I>V<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|x+y|)>|)><around*|(|i|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><rsub|i><around*|(|x+y|)><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><rsub|i><around*|(|x<around*|(|i|)>+<rsub|i>y<around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<langle\>|V<rsub|i>,+<rsub|i>,\<cdot\><rsub|i>|\<rangle\>>
        is a vector space>>|<cell|\<alpha\>\<cdot\><rsub|i>x<around*|(|i|)>+<rsub|i>\<alpha\>\<cdot\><rsub|i>y<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>x|)><around*|(|i|)>+<rsub|i><around*|(|\<alpha\>\<cdot\>y|)><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y|)><around*|(|i|)>>>>>
      </eqnarray*>

      \ so that <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

      <item>If <math|\<alpha\>,\<beta\>\<in\>F> and
      <math|x\<in\><big|prod><rsub|i\<in\>I>V<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<alpha\>+\<beta\>|)>\<cdot\>x|)><around*|(|i|)>>|<cell|=>|<cell|<around*|(|\<alpha\>+\<beta\>|)>\<cdot\><rsub|i>x<around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<langle\>|V<rsub|i>,+<rsub|i>,\<cdot\><rsub|i>|\<rangle\>>
        is a vector space>>|<cell|\<alpha\>\<cdot\><rsub|i>x<around*|(|i|)>+<rsub|i>\<beta\>\<cdot\><rsub|i>x<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>x|)><around*|(|i|)>+<rsub|i><around*|(|\<beta\>\<cdot\>x|)><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)><around*|(|i|)>>>>>
      </eqnarray*>

      so that <math|<around*|(|\<alpha\>+\<beta\>|)>\<cdot\>x=\<alpha\>\<cdot\>x+\<beta\>\<cdot\>x>.

      <item>If <math|\<alpha\>,\<beta\>\<in\>F> and
      <math|x\<in\><big|prod><rsub|i\<in\>I>V<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>x|)><around*|(|i|)>>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\><rsub|i>x<around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<langle\>|V<rsub|i>,+<rsub|i>,\<cdot\><rsub|i>|\<rangle\>>
        is a vector space>>|<cell|\<alpha\>\<cdot\><rsub|i><around*|(|\<beta\>\<cdot\><rsub|i>x<around*|(|i|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><rsub|i><around*|(|\<beta\>\<cdot\>x|)><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>x|)>|)><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>x|)>|)><around*|(|i|)>>>>>
      </eqnarray*>

      So that <math|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>x=\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>x|)>>.

      <item>If <math|1> is the unit in <math|F> and
      <math|x\<in\><big|prod><rsub|i\<in\>I>V<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have

      <\equation*>
        <around*|(|1\<cdot\>x|)><around*|(|i|)>=1\<cdot\><rsub|i>x<around*|(|i|)>\<equallim\><rsub|<around*|\<langle\>|V<rsub|i>,+<rsub|i>,\<cdot\><rsub|i>|\<rangle\>>
        is a vector space>x<around*|(|i|)>
      </equation*>

      and thus <math|1\<cdot\>x=x>
    </enumerate>
  </proof>

  <section|Basis of a vector space>

  <subsection|Finite sums on a vector space>

  As a vector space is also a Abelian group we can talk about finite sums.

  <\theorem>
    <label|vector space finite sum (1)>If
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then we
    have:

    <\enumerate>
      <item>If <math|\<alpha\>\<in\>F>, <math|n,m\<in\>\<bbb-N\><rsub|0>>
      with <math|n\<leqslant\>m> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>V>
      then <math|<big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|=n><rsup|m>x<rsub|i>>

      <item>If <math|\<alpha\>\<in\>F>, <math|I> a finite set,
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> then
      <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction, so take:

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
        we have <math|<big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n>x<rsub|i>>>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>>
        then <math|<big|sum><rsub|i=0><rsup|0><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\>x<rsub|0>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|0>x<rsub|i>>
        proving that <math|0\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>V>
        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>|)>+\<alpha\>\<cdot\>x<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+\<alpha\>\<cdot\>x<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>

      So by mathematical induction we have\ 

      <\equation>
        <label|eq 11.10.054>\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>V<text|
        we have ><big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n>x<rsub|i>
      </equation>

      Let now <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
      then we have\ 

      <\equation*>
        <big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<big|sum><rsub|i=0><rsup|m-n><around*|(|\<alpha\>\<cdot\>x<rsub|n+i>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 11.10.054>]>>\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|m-n>x<rsub|n+i>=\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|m>x<rsub|i>
      </equation*>

      <item>If <math|I> is finite and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>>
      with <math|\<forall\>i\<in\>I> <math|x<rsub|i>=x> then we have either:

      <\description>
        <item*|<math|I=\<varnothing\>>>Then\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I>*<around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=0=\<alpha\>\<cdot\>0=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>
        </equation*>

        <item*|<math|I\<neq\>\<varnothing\>>>Then there exist a
        <math|n\<in\>\<bbb-N\>> and a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>> such that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n-1><around*|(|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>\<equallim\><rsub|<text|[theorem:
          <reference|eq 11.10.054>]>>\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|vector space finite sum (2)>If
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|x\<in\>V> then we have:

    <\enumerate>
      <item>If <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>m|}>>\<subseteq\>F>
      then\ 

      <\equation*>
        <big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=<around*|(|<big|sum><rsub|i=n><rsup|m>\<alpha\><rsub|i>|)>\<cdot\>x
      </equation*>

      <item>If <math|I> is a finite set, <math|<around*|{|\<alpha\>|}><rsub|i\<in\>I>\<subseteq\>F>
      then\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>|)>\<cdot\>x
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We will use induction in this proof, so let

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>F<text|
        we have ><big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>|)>\<cdot\>x|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>>If <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0|}>>>
        then we have <math|<big|sum><rsub|i=0><rsup|0><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=\<alpha\><rsub|0>\<cdot\>x=<around*|(|<big|sum><rsub|i=0><rsup|0>\<alpha\><rsub|i>|)>\<cdot\>x>
        proving that <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>F>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>|)>+\<alpha\><rsub|n+1>\<cdot\>x>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>|)>\<cdot\>x+\<alpha\><rsub|n+1>\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>|)>+\<alpha\><rsub|n+1>|)>\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>|)>\<cdot\>x>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>

      By mathematical induction it follows then that\ 

      <\equation>
        <label|eq 11.11.055>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| and
        ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
        we have ><big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>|)>\<cdot\>x
      </equation>

      Let now <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
      then for <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>F>
      then we have\ 

      <\equation*>
        <big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=<big|sum><rsub|i=0><rsup|m-n><around*|(|\<alpha\><rsub|n+i>\<cdot\>x|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 11.11.055>]>><around*|(|<big|sum><rsub|i=0><rsup|m-n>\<alpha\><rsub|i>|)>\<cdot\>x=<around*|(|<big|sum><rsub|i=n><rsup|m>\<alpha\><rsub|i>|)>\<cdot\>x
      </equation*>

      <item> <math|I> is a finite set and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> then
      we have either:

      <\description>
        <item*|<math|I=\<varnothing\>>>Then\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=0=0\<cdot\>x=<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>|)>
        </equation*>

        <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
        <math|n\<in\>\<bbb-N\>> and a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such
        that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=<big|sum><rsub|i=0><rsup|n-1><around*|(|\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>x|)>\<equallim\><rsub|<text|[theorem:
          <reference|eq 11.11.055>]>><around*|(|<big|sum><rsub|i=0><rsup|n-1>\<alpha\><rsub|i>|)>\<cdot\>x=<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>|)>\<cdot\>x
        </equation*>
      </description>
    </enumerate>

    \;
  </proof>

  \;

  <\theorem>
    <label|vector space finite sum (3)>If
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is a vector space
    over <math|<around*|\<langle\>|\<bbb-K\>,+,\<cdot\>|\<rangle\>>> where
    <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-R\>> then we have:

    <\enumerate>
      <item><math|>If <math|n,m\<in\>\<bbb-N\><rsub|0>> with
      <math|n\<leqslant\>m> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>V>
      is such that <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,.m|}>>
      <math|x<rsub|i>=x> then

      <\equation*>
        <big|sum><rsub|i=n><rsup|m>x<rsub|i>=<around*|(|m-n+1|)>\<cdot\>x
      </equation*>

      <item>If <math|I> is a finite set and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> is such that
      <math|\<forall\>i\<in\>I> <math|x<rsub|i>=x> then

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i>=card<around*|(|I|)>\<cdot\>x
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction for the proof, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
        with >\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}> x<rsub|i>=x<text|
        we have ><big|sum><rsub|i=0><rsup|n>x<rsub|i>=<around*|(|n+1|)>\<cdot\>x|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>V>
        is such that <math|x<rsub|0>=x> then
        <math|<big|sum><rsub|i=0><rsup|0>x<rsub|i>=x=1\<cdot\>x=<around*|(|0+1|)>\<cdot\>x>
        proving that <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>V>
        is such that <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n+1|}>>
        <math|x<rsub|i>=x> then we have\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|n+1>x<rsub|i>=<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>=<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x\<equallim\><rsub|n\<in\>S>n\<cdot\>x+x=<around*|(|n+1|)>\<cdot\>x
        </equation*>

        proving that <math|n+1\<in\>S>.
      </description>

      By mathematical induction we have then that\ 

      <\equation>
        <label|eq 11.11.054>\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
        with >\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}> x<rsub|i>=x<text|
        we have ><big|sum><rsub|i=0><rsup|n>x<rsub|i>=<around*|(|n+1|)>\<cdot\>x
      </equation>

      If now <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
      then\ 

      <\equation*>
        <big|sum><rsub|i=n><rsup|m>x<rsub|i>=<big|sum><rsub|i=0><rsup|m-n>x<rsub|n+i>\<equallim\><rsub|<text|[eq:
        <reference|eq 11.11.054>]>><around*|(|m-n|)>+1\<cdot\>x
      </equation*>

      <item>For <math|I> is finite and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>>
      with <math|\<forall\>i\<in\>I> <math|x<rsub|i>=x> then we have either:

      <\description>
        <item*|<math|I=\<varnothing\>>>Then

        <\equation*>
          <big|sum><rsub|i=I>x<rsub|i>=0=0\<cdot\>x=card<around*|(|I|)>\<cdot\>x
        </equation*>

        <item*|<math|I\<neq\>\<varnothing\>>>Then there exist a
        <math|n\<in\>\<bbb-N\>> and a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I\<Rightarrow\><around*|{|0,\<ldots\>,n-1|}>\<approx\>I>
        such that

        <\equation*>
          <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>=<around*|(|n-1+1|)>\<cdot\>x=n\<cdot\>x\<equallim\><rsub|<text|[theorem:
          <reference|complex cardinality alternative>]>>card<around*|(|I|)>\<cdot\>x
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|vector space finite sum (4)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|\<emptyset\>\<neq\>W\<subseteq\>V> a sub-space of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> then:

    <\enumerate>
      <item><math|\<forall\>n,m\<in\>\<bbb-N\><rsub|0>> with
      <math|n\<leqslant\>m> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>W>
      we have <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>\<in\>W>

      <item>If <math|I> is a finite set and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>W> then
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>\<in\>W>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove by induction, so let

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>W<text|
        we have ><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<in\>W|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>W>
        then <math|x<rsub|0>\<in\>W> so that
        <math|<big|sum><rsub|i=0><rsup|0>x<rsub|i>=x<rsub|0>\<in\>W> proving
        that <math|0\<in\>W>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|1\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+1\<cdot\>x<rsub|n+1>>>|<row|<cell|>|<cell|\<in\>>|<cell|W
          <text|[as >n\<in\>S\<Rightarrow\><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<in\>S\<wedge\>x<rsub|n+1>\<in\>S>>>>
        </eqnarray*>
      </description>

      using induction we have then that

      <\equation>
        <label|eq 11.13.055>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| and
        ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>W<text|
        then ><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<in\>W
      </equation>

      Let now <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
      and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>W>
      then we have\ 

      <\equation*>
        <big|sum><rsub|i=n><rsup|m>x<rsub|i>=<big|sum><rsub|i=0><rsup|m-n>x<rsub|n+i>\<in\><rsub|<text|[eq:
        <reference|eq 11.13.055>]>>W
      </equation*>

      <item>Let <math|I> be finite then we have either:

      <\description>
        <item*|<math|I=\<varnothing\>>>As <math|W\<neq\>\<varnothing\>> we
        have by [theorem: <reference|vector space sub-space is a vector
        space>] that <math|<around*|\<langle\>|W,+,\<cdot\>|\<rangle\>>> is a
        vector space so that <math|0\<in\>W>. Hence
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0\<in\>W>.

        <item*|<math|I\<neq\>\<varnothing\>>>As <math|I\<neq\>> there exists
        a <math|\<in\>\<bbb-N\>> and a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such
        that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>x<rsub|\<beta\><around*|(|i|)>>\<in\>W<text|
          [see eq: <reference|eq 11.13.055>]>
        </equation*>
      </description>
    </enumerate>
  </proof>

  \;

  <subsection|Sum of families with finite support>

  Now to work with vector spaces we have to extend the concept of sums of
  finite families to sums of infinite families.

  <\definition>
    <label|support><dueto|Support>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    a family then the <with|font-series|bold|support> of
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> note by
    <math|<with|font-series|bold|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>>
    is defined as\ 

    <\equation*>
      supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=<around*|{|i\<in\>I\|x<rsub|i>\<neq\>0|}>\<subseteq\>I
    </equation*>
  </definition>

  <\theorem>
    <label|support support of subsets>Let <math|<around*|\<langle\>|A,+|)>>
    be a Abelian semi-group and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    a family, <math|J\<subseteq\>I> then\ 

    <\equation*>
      supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>J>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>
    </equation*>
  </theorem>

  <\proof>
    If <math|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>J>|)>>
    then <math|x<rsub|i>\<neq\>0> and <math|i\<in\>J>, which as
    <math|J\<subseteq\>I> gives <math|x<rsub|i>\<neq\>0> and <math|i\<in\>I>,
    hence <math|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>.
  </proof>

  <\definition>
    <label|support finite>Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be a
    Abelian semi-group then a family <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    has <with|font-series|bold|finite support> if
    <math|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>> is
    finite.
  </definition>

  <\theorem>
    <label|support subsets with finite support>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A> a family with
    finite support and <math|J\<subseteq\>I> then
    <math|<around*|{|x<rsub|j>|}><rsub|j\<in\>J>> has finite support.
  </theorem>

  <\proof>
    By [theorem: <reference|support support of subsets>] we have
    <math|supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\>J>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>
    a finite set, hence by [theorem: <reference|subset of finite sets>] we
    have that <math|><math|supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\>J>|)>>
    is finite.
  </proof>

  We can now extend the concept of a sum of a finite family to a sum of
  families with finite support.

  <\definition>
    <label|finite support sum>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    a family with finite support then <math|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>
    is defined as\ 

    <\equation*>
      <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>\<equallim\><rsub|def><wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>
    </equation*>
  </definition>

  <\example>
    <label|support empty set sum>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a abelian semi-group then we have:

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is such that
      <math|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=\<varnothing\>>
      then <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0>

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<varnothing\>>> is
      a empty family [see: <reference|family union of a empty set>] then
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0>
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\equation*>
        <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>=<big|sum><rsub|i\<in\>\<varnothing\>>x<rsub|i>=0
      </equation*>

      <item>As <math|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>I\<eqcirc\>/>
      we have that <math|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=\<varnothing\>>
      so by (1)\ 

      <\equation*>
        <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>=0
      </equation*>
    </enumerate>
  </proof>

  <\example>
    <label|support over a singleton>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group and <math|<around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|i|}>>>
    defined by <math|x<rsub|i>=a> then\ 

    <\equation*>
      <wide|<big|sum>|\<wide-bar\>><rsub|j\<in\><around*|{|i|}>>x<rsub|j>=a
    </equation*>
  </example>

  <\proof>
    For <math|a> we have either:

    <\description>
      <item*|<math|a=0>>Then <math|supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|i|}>>|)>=\<varnothing\>>
      so that\ 

      <\equation*>
        <wide|<big|sum>|\<wide-bar\>><rsub|j\<in\><around*|{|i|}>>x<rsub|j>=<big|sum><rsub|j\<in\>supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|i|}>>|)>>x<rsub|j>=<big|sum><rsub|j\<in\>\<varnothing\>>x<rsub|j>\<equallim\>0=a
      </equation*>

      <item*|<math|a\<neq\>\<varnothing\>>>Then
      <math|supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|i|}>>|)>=<around*|{|i|}>>
      so that\ 

      <\equation*>
        <wide|<big|sum>|\<wide-bar\>><rsub|j\<in\><around*|{|i|}>>x<rsub|j>=<big|sum><rsub|j\<in\>supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\><around*|{|i|}>>|)>>x<rsub|j>=<big|sum><rsub|j\<in\><around*|{|i|}>>x<rsub|j>\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>a
      </equation*>
    </description>

    \;
  </proof>

  This is indeeed a extension of the sum of a finite family as the following
  theorem shows.

  <\theorem>
    <label|support extension>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    with <math|I> finite then\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i>=<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    First\ 

    <\equation>
      <label|eq 11.14.057><text|\<forall\>>i\<in\>I\\<around*|{|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>|}><text|
      we have >x<rsub|i>=0
    </equation>

    Further as <math|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>I>
    we have that <math|I> is the disjoint union of
    <math|I\\sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>> and
    <math|sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>.\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>x<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I\\sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|definition>>|<cell|<big|sum><rsub|i\<in\>I\\sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>+<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.14.057>] and [theorem: <reference|sum of neutral
      element (2)>]>>>|<cell|0+<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>>>>
    </eqnarray*>
  </proof>

  <\corollary>
    <label|support eleminate zeroes>Let <math|><math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    with finite support then\ 

    <\equation*>
      <wide|<big|sum><rsub|i\<in\>I>|\<wide-bar\>>x<rsub|i>=<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>
    </equation*>
  </corollary>

  <\proof>
    \ 

    <\equation*>
      <wide|<big|sum><rsub|i\<in\>I>|\<wide-bar\>>x<rsub|i>\<equallim\><rsub|definition><big|sum><rsub|i\<in\>sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|support extension>]>><wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>
    </equation*>

    \;
  </proof>

  Next we prove that all the properties of <math|<big|sum>> are also valid
  for <math|<wide|<big|sum>|\<wide-bar\>>>

  <\theorem>
    <label|support bijection on index>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group with
    neutral element <math|0>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    a family with finite support and <math|\<sigma\>:J\<rightarrow\>I> a
    bijection then\ 

    <\equation*>
      <around*|{|x<rsub|\<sigma\><around*|(|j|)>>|}><rsub|j\<in\>J><text| has
      finite support and ><wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>=<wide|<big|sum>|\<wide-bar\>><rsub|j\<in\>J>x<rsub|\<sigma\><around*|(|j|)>>
    </equation*>
  </theorem>

  <\proof>
    If <math|i\<in\>supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>>
    then <math|i\<in\>J> and <math|x<rsub|\<alpha\><around*|(|i|)>>\<neq\>0>,
    so that, as <math|\<sigma\><around*|(|i|)>\<in\>I>, we have
    <math|\<sigma\><around*|(|i|)>\<in\>supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>>,
    proving that <math|supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>\<subseteq\>\<sigma\><rsup|-1><around*|(|sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>|)>>.
    If <math|i\<in\>\<sigma\><rsup|-1><around*|(|sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>|)>>
    then <math|\<sigma\><around*|(|i|)>\<in\>sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>>
    so that <math|\<sigma\><around*|(|i|)>\<in\>I> and
    <math|x<rsub|\<sigma\><around*|(|i|)>>\<neq\>0> or <math|i\<in\>J> and
    <math|x<rsub|\<sigma\><around*|(|i|)>>\<neq\>0>. proving that
    <math|i\<in\>supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>>,
    hence <math|\<sigma\><rsup|-1><around*|(|sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>>.
    So we have\ 

    <\equation>
      <label|eq 11.15.059>supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>=\<sigma\><rsup|-1><around*|(|supp<around*|(|sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>|)>|)>
    </equation>

    As <math|\<beta\>:J\<rightarrow\>I> is a bijection and
    <math|><math|supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>\<subseteq\>J>,
    <math|supp<around*|(|sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>|)>\<subseteq\>I>
    and \ 

    <\equation>
      <label|eq 11.16.059>\<beta\><rsub|\|supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>>:supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>\<rightarrow\>\<sigma\><around*|(|\<sigma\><rsup|-1><around*|(|supp<around*|(|sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>|)>|)>|)>=supp<around*|(|sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>|)>
    </equation>

    is a bijection. As s<math|upp<around*|(|sup<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>|)>>
    is finite this proves that <math|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>>
    has finite support and <math|<wide|<big|sum>|\<wide-bar\>><rsub|k\<in\>J>x<rsub|\<sigma\><around*|(|k|)>>>
    is defined. Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|k\<in\>J>x<rsub|\<sigma\><around*|(|k|)>>>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|k\<in\>supp<around*|(|<around*|{|x<rsub|\<sigma\><around*|(|k|)>>|}><rsub|k\<in\>J>|)>>x<rsub|\<sigma\><around*|(|k|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>] and [eq: <reference|eq
      11.16.059>]>>>|<cell|<big|sum><rsub|k\<in\>supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>>x<rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|k\<in\>I>x<rsub|k>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support of neutral element (2)>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group with
    neutral element <math|0> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    a family with finite support such that <math|\<forall\>i\<in\>I>
    <math|x<rsub|i>=0> then <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0>.
  </theorem>

  <\proof>
    As <math|\<forall\>i\<in\>I> we have <math|x<rsub|i>=0> it follows that
    <math|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=\<varnothing\>>
    hence

    <\equation*>
      <wide|<big|sum>|\<wide-bar\>>x<rsub|i>=<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>=<big|sum><rsub|i\<in\>\<varnothing\>>x<rsub|i>=0
    </equation*>
  </proof>

  <\theorem>
    <label|support of sums (2)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A,<text|
    ><around*|{|y<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A> families with
    finite support then\ 

    <\equation*>
      <around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\>I><text| has finite
      support >
    </equation*>

    and\ 

    <\equation*>
      <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>+<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>y<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    If <math|i\<in\>supp<around*|(|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\>I>|)>>
    then <math|x<rsub|i>+y<rsub|i>\<neq\>0> so that we must have
    <math|x<rsub|i>\<neq\>0\<vee\>y<rsub|i>\<neq\>0> proving that
    <math|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)><big|cup>sup<around*|(|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>|)>>
    which by [theorems: <reference|union of two finite sets is finite>,
    <reference|subset of finite sets>] proves that
    <math|sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\>I>|)>>
    is finite. Hence\ 

    <\equation*>
      <around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\>I><text| has finite
      support and ><big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)><text|
      is well defined>
    </equation*>

    Define\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|>|<cell|K=supp<around*|(|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\>I>|)>=<around*|{|i\<in\>I\|x<rsub|i>+y<rsub|i>\<neq\>0|}>>>|<row|<cell|>|<cell|>|<cell|L=supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=<around*|{|i\<in\>I\|x<rsub|i>\<neq\>0|}>>>|<row|<cell|>|<cell|>|<cell|M=supp<around*|(|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>|)>=<around*|{|i\<in\>I\|y<rsub|i>\<neq\>0|}>>>|<row|<cell|>|<cell|>|<cell|N<rsub|1>=<around*|{|i\<in\>I\|x<rsub|i>\<neq\>\<varnothing\>\<wedge\>y<rsub|i>\<neq\>\<varnothing\>\<wedge\>x<rsub|i>+y<rsub|i>\<neq\>0|}>>>|<row|<cell|>|<cell|>|<cell|N<rsub|2>=<around*|{|i\<in\>I\|x<rsub|i>=0\<wedge\>y<rsub|i>\<neq\>0|}>>>|<row|<cell|>|<cell|>|<cell|N<rsub|3>=<around*|{|i\<in\>I\|x<rsub|i>\<neq\>0\<wedge\>y<rsub|i>=0|}>>>|<row|<cell|>|<cell|>|<cell|N<rsub|4>=<around*|{|i\<in\>I\|x<rsub|i>\<neq\>0\<wedge\>x<rsub|i>+y<rsub|i>=0|}>\<equallim\><rsub|x<rsub|i>+y<rsub|i>=0\<Rightarrow\>x<rsub|i>=-y<rsub|i>><around*|{|i\<in\>I\|y<rsub|i>\<neq\>0\<wedge\>x<rsub|i>+y<rsub|i>=0|}>>>>>
    </eqnarray*>

    Then we have from the definitions that\ 

    <\equation>
      <label|eq 11.15.058>N<rsub|1>\<subseteq\>K\<wedge\>N<rsub|1>\<subseteq\>L\<wedge\>N<rsub|1>\<subseteq\>M\<wedge\>N<rsub|2>\<subseteq\>M\<wedge\>N<rsub|3>\<subseteq\>L\<wedge\>N<rsub|4>\<subseteq\>L\<wedge\>N<rsub|4>\<subseteq\>M,N<rsub|4>\<subseteq\>N<rsub|2>\<wedge\>N<rsub|4>\<subseteq\>N<rsub|3>
    </equation>

    If <math|i\<in\>N<rsub|2>> then <math|x<rsub|i>+y<rsub|i>=y<rsub|i>\<neq\>0>
    so that <math|i\<in\>K> proving <math|N<rsub|2>\<subseteq\>K>, further if
    <math|i\<in\>N<rsub|3>> then <math|x<rsub|i>+y<rsub|i>=x<rsub|i>\<neq\>0>
    so that <math|i\<in\>K> proving <math|N<rsub|3>\<subseteq\>K>. Hence we
    have\ 

    <\equation>
      <label|eq 11.16.058>N<rsub|2>\<subseteq\>K\<wedge\>N<rsub|3>\<subseteq\>K
    </equation>

    Let nowe <math|i\<in\>K> then we have <math|x<rsub|i>+y<rsub|i>\<neq\>0>
    and for <math|x<rsub|i>>, <math|x<rsub|j>> either:

    <\description>
      <item*|<math|x<rsub|i>=0\<wedge\>y<rsub|i>=0>>Then
      <math|x<rsub|i>+y<rsub|i>=0> contradicting
      <math|x<rsub|i>+y<rsub|i>\<neq\>0> so this case will never occur.

      <item*|<math|x<rsub|i>=0\<wedge\>y<rsub|i>\<neq\>0>>Then
      <math|i\<in\>N<rsub|2>>

      <item*|<math|x<rsub|i>\<neq\>0\<wedge\>y<rsub|i>=0>>Then
      <math|i\<in\>N<rsub|3>>

      <item*|<math|x<rsub|i>\<neq\>0\<wedge\>y<rsub|i>\<neq\>0>>Then
      <math|i\<in\>N<rsub|1>>
    </description>

    which proves that <math|K\<subseteq\>N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|3>>.
    By [eqs: <reference|eq 11.15.058>,<reference|eq 11.16.058>] it follows
    that <math|N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|3>\<subseteq\>K>
    giving finally

    <\equation*>
      K=N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|3>
    </equation*>

    If <math|i\<in\>N<rsub|1><big|cap>N<rsub|2>> then
    <math|x<rsub|i>\<neq\>0\<wedge\>x<rsub|i>=0> a contradiction, hence
    <math|N<rsub|1><big|cap>N<rsub|2>=\<varnothing\>>, if
    <math|i\<in\>N<rsub|1><big|cap>N<rsub|3>> then
    <math|y<rsub|i>\<neq\>0\<wedge\>y<rsub|i>=0> a contradiction, hence
    <math|N<rsub|1><big|cap>N<rsub|3>=\<varnothing\>> and finally if
    <math|i\<in\>N<rsub|2><big|cap>N<rsub|3>> then
    <math|x<rsub|i>=0\<wedge\>x<rsub|i>\<neq\>0> a contradiction, hence
    <math|N<rsub|2><big|cap>N<rsub|3>=\<varnothing\>>. So we have\ 

    <\equation>
      <label|eq 11.17.058>K=N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|3><text|
      and >N<rsub|1><big|cap>N<rsub|2>=N<rsub|1><big|cap>N<rsub|3>=N<rsub|2><big|cap>N<rsub|3>=\<varnothing\>
    </equation>

    If <math|i\<in\>L> then <math|x<rsub|i>\<neq\>0> and for
    <math|x<rsub|i>,y<rsub|i>> we have\ 

    <\description>
      <item*|<math|x<rsub|i>+y<rsub|i>=0>>Then <math|i\<in\>N<rsub|4>>

      <item*|<math|x<rsub|i>+y<rsub|i>\<neq\>0>>Then we have either:

      <\description>
        <item*|<math|y<rsub|i>=0>>Then we have <math|i\<in\>N<rsub|3>>

        <item*|<math|y<rsub|i>\<neq\>0>>Then we have <math|i\<in\>N<rsub|1>>
      </description>
    </description>

    proving that <math|L\<subseteq\>N<rsub|1><big|cup>N<rsub|3><big|cup>N<rsub|4>>,
    as by [eq: <reference|eq 11.15.058>] <math|N<rsub|1><big|cup>N<rsub|3><big|cup>N<rsub|4>\<subseteq\>L>,
    it follows that\ 

    <\equation*>
      L=N<rsub|1><big|cup>N<rsub|3><big|cup>N<rsub|4>
    </equation*>

    If <math|i\<in\>N<rsub|1><big|cap>N<rsub|3>> then
    <math|y<rsub|i>\<neq\>0\<wedge\>y<rsub|i>=0> a contradiction, hence
    <math|N<rsub|1><big|cap>N<rsub|3>=\<varnothing\>>, if
    <math|i\<in\>N<rsub|1><big|cap>N<rsub|4>> then
    <math|x<rsub|i>\<neq\>0\<wedge\>x<rsub|i>=0> a contradcition, hence
    <math|N<rsub|1><big|cap>N<rsub|3>=\<varnothing\>> and finally if
    <math|i\<in\>N<rsub|3><big|cap>N<rsub|4>> then
    <math|y<rsub|i>=0\<wedge\>y<rsub|i>\<neq\>\<varnothing\>>, hence
    <math|N<rsub|3><big|cap>N<rsub|4>=\<varnothing\>>. So we have\ 

    <\equation>
      <label|eq 11.18.058>L=N<rsub|1><big|cup>N<rsub|3><big|cup>N<rsub|4><text|
      then >N<rsub|1><big|cap>N<rsub|3>=N<rsub|1><big|cap>N<rsub|4>=N<rsub|3><big|cap>N<rsub|4>=\<varnothing\>
    </equation>

    If <math|i\<in\>M> then <math|y<rsub|i>\<neq\>0> and for
    <math|x<rsub|i>,y<rsub|i>> we have

    <\description>
      <item*|<math|x<rsub|i>+y<rsub|i>=0>>Then <math|i\<in\>N<rsub|4>>

      <item*|<math|x<rsub|i>+y<rsub|i>\<neq\>0>>Then we have either:

      <\description>
        <item*|<math|x<rsub|i>=0>>Then we have <math|i\<in\>N<rsub|2>>

        <item*|<math|x<rsub|i>\<neq\>0>>Then we have <math|i\<in\>N<rsub|1>>
      </description>
    </description>

    proving that <math|M\<subseteq\>N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|4>>,
    as by [eq: <reference|eq 11.15.058>] <math|N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|4>\<subseteq\>M>
    then we have\ 

    <\equation*>
      M=N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|4>
    </equation*>

    If <math|i\<in\>N<rsub|1><big|cap>N<rsub|2>> then
    <math|x<rsub|i>\<neq\>0\<wedge\>x<rsub|i>=0> a contradcition, hence
    <math|N<rsub|1><big|cap>N<rsub|2>=\<varnothing\>>, by [eq: <reference|eq
    11.18.058>] we have <math|N<rsub|1><big|cap>N<rsub|4>=\<varnothing\>> and
    if <math|i\<in\>N<rsub|2><big|cap>N<rsub|4>> then
    <math|x<rsub|i>=0\<wedge\>x<rsub|i>\<neq\>9> hence
    <math|N<rsub|2><big|cap>N<rsub|4>=\<varnothing\>>. So we have\ 

    <\equation>
      <label|eq 11.19.058>M=N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|4><text|
      and >N<rsub|1><big|cap>N<rsub|2>=N<rsub|1><big|cap>N<rsub|4>=N<rsub|2><big|cap>N<rsub|4>=\<varnothing\>
    </equation>

    Next we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>+<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>y<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>+<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>|)>>y<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>L>x<rsub|i><rsub|>+<big|sum><rsub|i\<in\>M>y<rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.18.058>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>N<rsub|1>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|3>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|4>>x<rsub|i>+<big|sum><rsub|i\<in\>M>y<rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.19.058>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>N<rsub|1>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|3>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|4>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|1>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|2>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|4>>y<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>N<rsub|1>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|3>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|4>><around*|(|-y<rsub|i>|)>+<big|sum><rsub|i\<in\>N<rsub|1>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|2>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|4>>y<rsub|i>>|<cell|\<equallim\><rsub|i\<in\>N<rsub|4>\<Rightarrow\>x<rsub|i>=-y<rsub|i>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>N<rsub|1>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|3>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|1>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|2>>y<rsub|i>+<around*|(|-<big|sum><rsub|i\<in\>N<rsub|4>>y<rsub|i>|)>+<big|sum><rsub|i\<in\>N<rsub|4>>y<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of inverses (2)>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>N<rsub|1>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|3>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|1>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|2>>y<rsub|i>>|<cell|=>|<cell|<eq-number><label|eq
      11.20.058>>>>>
    </eqnarray*>

    Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|x<rsub|i>+y<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>K><around*|(|x<rsub|i>+y<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.17.058>]>>>|<cell|<big|sum><rsub|i\<in\>N<rsub|1>><around*|(|x<rsub|i>+y<rsub|i>|)>+<big|sum><rsub|i\<in\>N<rsub|2>><around*|(|x<rsub|i>+y<rsub|i>|)>+<big|sum><rsub|i\<in\>N<rsub|3>><around*|(|x<rsub|i>+y<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i\<in\>N<rsub|2>\<Rightarrow\>x<rsub|i>=0>>|<cell|<big|sum><rsub|i\<in\>N<rsub|1>><around*|(|x<rsub|i>+y<rsub|i>|)>+<big|sum><rsub|i\<in\>N<rsub|2>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|3>><around*|(|x<rsub|i>+y<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i\<in\>N<rsub|3>\<Rightarrow\>y<rsub|i>=0>>|<cell|<big|sum><rsub|i\<in\>N<rsub|1>><around*|(|x<rsub|i>+y<rsub|i>|)>+<big|sum><rsub|i\<in\>N<rsub|2>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|3>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of sums (2)>]>>>|<cell|<big|sum><rsub|i\<in\>N<rsub|1>>x<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|1>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|2>>y<rsub|i>+<big|sum><rsub|i\<in\>N<rsub|3>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.20.058>]>>>|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>+<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>y<rsub|i>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support of inverses (2)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A>
    a family with finite support then\ 

    <\equation*>
      <around*|{|-x<rsub|i>|}><rsub|i\<in\>I><text| has finite support>
    </equation*>

    and

    <\equation*>
      <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|-x<rsub|i>|)>=-<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    First if <math|u\<in\>supp<around*|(|<around*|{|-x<rsub|i>|}><rsub|i\<in\>I>|)>>
    we must have that <math|x<rsub|i>\<neq\>0> [otherwise <math|-x<rsub|i>=0>
    a contradiction] so <math|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>
    or <math|supp<around*|(|<around*|{|-x<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>
    a finite set, proving by [theorem: <reference|subset of finite sets>]
    that <math|supp<around*|(|<around*|{|-x<rsub|i>|}><rsub|i\<in\>I>|)>> is
    finite. Hence we have that\ 

    <\equation*>
      <around*|{|-x<rsub|i>|}><rsub|i\<in\>I><text| has finite support nd
      ><big|sum><rsub|i\<in\>I><around*|(|-x<rsub|i>|)><text| is welll
      defined>
    </equation*>

    We have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|-x<rsub|i>|)>>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|-x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of inverses (2)>]>>>|<cell|-<big|sum><rsub|supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|-<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support ring product (2)>Let <math|<around*|\<langle\>|R,+,\<cdot\>|\<rangle\>>>
    be a ring, <math|\<alpha\>\<in\>R> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>R> a family with
    finite support then\ 

    <\equation*>
      <around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I><text| has
      finite support >
    </equation*>

    and

    <\equation*>
      <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Let <math|i\<in\>supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|>|)>>
    then <math|\<alpha\>\<cdot\>x<rsub|i>\<neq\>0.> Assume that <math|x=0>
    then by [theorem: <reference|ring absorbing element>]
    <math|\<alpha\>\<cdot\>x=0> a contradiction, so we must have that
    <math|x<rsub|i>\<neq\>0> or <math|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>
    proving that\ 

    <\equation*>
      supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>
    </equation*>

    hence\ 

    <\equation*>
      <around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I><text| has
      finite support>
    </equation*>

    Hence we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\><wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>|<cell|\<equallim\><rsub|def>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum ring product (2)>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over two disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>\\supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>+<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>>|<cell|0+<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support scalar product (1)>If <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    is a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|\<alpha\>\<in\>F> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    a family with finite support then\ 

    <\equation*>
      <around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I><text| has
      finite support >
    </equation*>

    and

    <\equation*>
      <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Let <math|i\<in\>supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|>|)>>
    then <math|\<alpha\>\<cdot\>x<rsub|i>\<neq\>0.> Assume that <math|x=0>
    then by [theorem: <reference|ring absorbing element>]
    <math|\<alpha\>\<cdot\>x=0> a contradiction, so we must have that
    <math|x<rsub|i>\<neq\>0> or <math|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>
    proving that

    <\equation*>
      supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)><text|
      a finite set>
    </equation*>

    hence by [theorem: <reference|subset of finite sets>]
    <math|supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>>
    is finite. So\ 

    <\equation*>
      <around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I><text| has
      finite support and ><big|sum><rsub|i\<in\>I>\<alpha\>\<cdot\>x<rsub|i><text|
      is well defined>
    </equation*>

    <\equation*>
      \;
    </equation*>

    Further we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\><wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>|<cell|\<equallim\><rsub|def>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (1)>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over two disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>\\supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>+<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>>|<cell|0+<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support scalar product (2)>If <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    is a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|x\<in\>V> and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>m|}>>\<subseteq\>F>
    has finite support then\ 

    <\equation*>
      <around*|{|\<alpha\><rsub|i>\<cdot\>|}><rsub|i\<in\>I><text| has finite
      support>
    </equation*>

    and

    <\equation*>
      <big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>=<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>|)>\<cdot\>x
    </equation*>
  </theorem>

  <\proof>
    If <math|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x|}><rsub|i\<in\>I>|)>>
    then <math|\<alpha\><rsub|i>\<cdot\>x>. Assume that
    <math|\<alpha\><rsub|i>=0> then by [theorem: <reference|vector space
    properties (1)>] <math|\<alpha\><rsub|i>\<cdot\>x=0> contradicting
    <math|\<alpha\><rsub|i>\<cdot\>x\<neq\>0>, hence we must have that
    <math|\<alpha\><rsub|i>\<neq\>0> or <math|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>>.
    So

    <\equation*>
      supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|a<rsub|i>|}><rsub|i\<in\>I>|)>
      <text|a finite set>
    </equation*>

    hence by [theorem: <reference|subset of finite sets>]
    <math|supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x|}><rsub|i\<in\>I>|)>>
    is finite. So\ 

    <\equation*>
      <around*|{|\<alpha\><rsub|i>\<cdot\>x|}><rsub|i\<in\>I><text| has
      finite support and ><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>x<text|
      is well defined>
    </equation*>

    Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>|)>\<cdot\>x>|<cell|\<equallim\><rsub|def>>|<cell|<around*|(|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>>\<alpha\><rsub|i>|)>\<cdot\>x>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (2)>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over two disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>\\supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>+<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>>|<cell|0+<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support over disjoint subsets>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group,
    <math|I> a finite set, <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>I>> a
    family of finite sets such that <math|\<forall\>i,j\<in\>I> with
    <math|i\<neq\>j> we have <math|I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>>
    and \ <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>>
    a family with finite support then

    <\equation*>
      <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>x<rsub|i>=<big|sum><rsub|i\<in\>I><around*|(|<wide|<big|sum>|\<wide-bar\>><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>|)>>
    then <math|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>\<Rightarrow\>\<exists\>j\<in\>I\<vDash\>i\<in\>I<rsub|j>>
    and <math|x<rsub|i>\<neq\>0>, proving that
    <math|i\<in\>supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|j>>|)>>.
    Hence\ 

    <\equation>
      <label|eq 11.21.058>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>|)>\<subseteq\><big|cup><rsub|i\<in\>I>supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)>
    </equation>

    If <math|k\<in\><big|cup><rsub|i\<in\>I>supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)>>
    then there exists a <math|i\<in\>I> such that
    <math|k\<in\>supp<around*|(|<around*|{|x<rsub|l>|}><rsub|l\<in\>I<rsub|i>>|)>\<subseteq\>I>
    hence <math|x<rsub|k>\<neq\>0> so that
    <math|k\<in\>sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>J>I<rsub|j>>|)>>.
    Hence <math|<big|cup><rsub|i\<in\>I>supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>|)>.
    >Combining this with [eq: <reference|eq 11.21.058>] gives\ 

    <\equation>
      <label|eq 11.22.058>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>|)>=<big|cup><rsub|i\<in\>I>supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)>
    </equation>

    So <math|\<forall\>i\<in\>I> we have <math|supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)>\<subseteq\><label|eq
    11.22.058>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>|)>>
    which is fnite, proving that by [theorem: <reference|subset of finite
    sets>] <math|><math|supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)>>
    is finite hence\ 

    <\equation*>
      \<forall\>i\<in\>I<text| we have that
      ><big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|j><text| is defined>
    </equation*>

    As <math|\<forall\>i\<in\>I> we have that
    <math|supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)>\<subseteq\>I<rsub|i>>
    it follows that\ 

    <\equation>
      <label|eq 11.23.058>\<forall\>i,j\<in\>I<text| with >i\<neq\>j<text| we
      have >supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)><big|cap>supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|j>>|)>=\<varnothing\>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eqs:
      <reference|eq 11.22.058>,<reference|eq 11.23.058>] and [theorem:
      <reference|sum over disjoint subsets
      (1)>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\><around*|{|supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I<rsub|i>>|)>|}>>x<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<wide|<big|sum>|\<wide-bar\>><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>>>>>
    </eqnarray*>
  </proof>

  <\corollary>
    <label|support over disjoint subsets (1)>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group,
    <math|I> a finite set, <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>I>> a
    family of finite sets such that <math|\<forall\>i,j\<in\>I> with
    <math|i\<neq\>j> we have <math|I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>J>I<rsub|j>>>
    a family with finite support then:

    <\enumerate>
      <item><math|\<forall\>i\<in\>I> we have that
      <math|<around*|{|x<rsub|j>|}><rsub|j\<in\>I<rsub|i>>> has finite
      support

      <item><math|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>x<rsub|i>=<big|sum><rsub|i\<in\>I><around*|(|<wide|<big|sum>|\<wide-bar\>><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|i\<in\>I> then <math|I<rsub|i>\<subseteq\><big|cup><rsub|j\<in\>I<rsub|i>>>
      so that by [theorem: <reference|support subsets with finite support>]
      <math|<around*|{|x<rsub|j>|}><rsub|j\<in\>I<rsub|i>>> has finite
      support.

      <item>This is proved by (1) applied on [theorem: <reference|support
      over disjoint subsets (1)>].
    </enumerate>
  </proof>

  <\theorem>
    <label|sum in A^n (1)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be a
    Abelian semi-group, <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|A<rsup|n>,+|\<rangle\>>> the semi-group based
    on <math|<around*|\<langle\>|A,+|\<rangle\>>> [see theorem:
    <reference|group finite power>] and <math|<around*|{|x<rsub|j>|}><rsub|j\<in\>I>\<subseteq\>A<rsup|n>>
    a family with finite support then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have

    <\equation*>
      <around*|(|<big|sum><rsub|j\<in\>I>x<rsub|j>|)><rsub|i>=<big|sum><rsub|j\<in\>I><around*|(|x<rsub|j>|)><rsub|i>
    </equation*>
  </theorem>

  <\proof>
    \ Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and take
    <math|j\<in\>supp<around*|(|<around*|{|<around*|(|x<rsub|j>|)><rsub|i>|}><rsub|j\<in\>I>|)>>
    then \ <math|<around*|(|x<rsub|j>|)><rsub|i>\<neq\>0> hence
    <math|x<rsub|j>\<neq\>0> or <math|j\<in\>supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\>I>|)>>
    proving that

    <\equation>
      <label|eq 11.27.064>supp<around*|(|<around*|{|<around*|(|x<rsub|j>|)><rsub|i>|}><rsub|j\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\>I>|)>
    </equation>

    which as <math|supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\>I>|)>>
    is finite proves that <math|supp<around*|(|<around*|{|<around*|(|x<rsub|j>|)><rsub|i>|}><rsub|j\<in\>I>|)>>
    is finite, hence \ <math|<around*|{|<around*|(|x<rsub|j>|)><rsub|i>|}><rsub|j\<in\>I>>
    has finite support so that <math|<big|sum><rsub|j\<in\>I><around*|(|x<rsub|j>|)><rsub|i>>
    is well defined

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|j\<in\>I>x<rsub|j>|)><rsub|i>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|(|<big|sum><rsub|j\<in\>supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\>I>|)>>x<rsub|j>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum in A^n>]>>>|<cell|<big|sum><rsub|j\<in\>supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\>I>|)>><around*|(|x<rsub|j>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>] and [eq: <reference|eq
      11.27.064>]>>>|<cell|<big|sum><rsub|j\<in\>supp<around*|(|<around*|{|x<rsub|j>|}><rsub|j\<in\>I>|)>\\supp<around*|(|<around*|{|<around*|(|x<rsub|j>|)><rsub|i>|}><rsub|j\<in\>I>|)>><around*|(|x<rsub|j>|)><rsub|i>+<big|sum><rsub|j\<in\>supp<around*|(|<around*|{|<around*|(|x<rsub|j>|)><rsub|i>|}><rsub|j\<in\>I>|)>><around*|(|x<rsub|j>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element
      (2)>]>>>|<cell|0+<big|sum><rsub|j\<in\>supp<around*|(|<around*|{|<around*|(|x<rsub|j>|)><rsub|i>|}><rsub|j\<in\>I>|)>><around*|(|x<rsub|j>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|j\<in\>I><around*|(|x<rsub|i>|)><rsub|i>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support space finite sum (4)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|\<emptyset\>\<neq\>W\<subseteq\>V> a sub-space of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> then for every family
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> with finite
    support we have that\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i>\<in\>V
    </equation*>
  </theorem>

  <\proof>
    This follows from\ 

    <\equation*>
      <wide|<big|sum><rsub|i\<in\>I>|\<wide-bar\>>x<rsub|i>=<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>\<in\>V
      <text|[see theorem: <reference|vector space finite sum (4)>]>
    </equation*>
  </proof>

  From now on we will, to avoid excesive notation, use <math|<big|sum>> for
  <math|<wide|<big|sum>|\<wide-bar\>>> so if
  <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is a family with finite
  support then <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is actually
  <math|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>. Using this
  convention we have.

  <subsection|Linear (in)dependency and span>

  <subsubsection|Linear combination and span>

  <\definition>
    <label|linear combination of a set><dueto|Linear combination of a set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|W\<subseteq\>V> and <math|v\<in\>V> then
    <with|font-series|bold|<math|v> is> <with|font-series|bold|linear
    combination of ><math|<with|font-series|bold|W>> if there exists a family
    <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>> with finite support
    such that\ 

    <\equation*>
      v=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w
    </equation*>

    \;
  </definition>

  This definition only make sense if the sum
  <math|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w> is well defined,
  in other words if <math|<around*|{|\<alpha\><rsub|w>\<cdot\>w|}><rsub|w\<in\>W>\<subseteq\>F>
  has finite support.\ 

  <\proof>
    If <math|w\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|w>\<cdot\>w|}><rsub|w\<in\>W>|)>>
    then <math|\<alpha\><rsub|w>\<cdot\>w\<neq\>0>. Assume that
    <math|\<alpha\><rsub|w>=0> then <math|\<alpha\><rsub|w>\<cdot\>w=0>
    contradicting <math|\<alpha\><rsub|w>\<cdot\>w\<neq\>0> hence
    <math|\<alpha\><rsub|w>\<neq\>0> or <math|w\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>|)>>.
    Hence <math|supp<around*|(|<around*|{|\<alpha\><rsub|w>\<cdot\>w|}><rsub|w\<in\>W>|)>\<subseteq\>sup<around*|(|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>|)>>
    a finite set, so by [theorem: <reference|subset of finite sets>]
    <math|supp<around*|(|<around*|{|\<alpha\><rsub|w>\<cdot\>w|}><rsub|w\<in\>W>|)>>
    is finite.
  </proof>

  <\definition>
    <label|linear span of a set><dueto|span of a set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    \ <math|W\<subseteq\>V> then\ 

    <\equation*>
      span<around*|(|W|)>=<around*|{|v\<in\>V\|v<text| is a linear
      combination of >W|}>
    </equation*>

    In other words\ 

    <\equation*>
      span<around*|(|W|)>=<around*|{|v\<in\>V\|\<exists\><around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F<text|
      with finite support such that ><big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w|}>
    </equation*>
  </definition>

  <\example>
    <label|linear span empty set>If <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|span<around*|(|\<varnothing\>|)>=<around*|{|0|}>>
  </example>

  <\proof>
    If <math|x\<in\>span<around*|(|\<varnothing\>|)>> there exists a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>F>
    with finite support such that <math|x=<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>>=0
    so that <math|span<around*|(|\<varnothing\>|)>=0>.
  </proof>

  <\theorem>
    <label|linear set is in span of set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    \ <math|W\<subseteq\>V> then

    <\equation*>
      W\<subseteq\>span<around*|(|W|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|w\<in\>W> then for <math|<around*|{|w|}>\<subseteq\>W> and
    <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|w|}>>>
    defined by <math|\<alpha\><rsub|w>=1> we have that
    <math|supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|w|}>>|)>=<around*|{|1|}>>
    which is finite so that <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|w|}>>>
    has finite support. Further

    <\equation*>
      w=\<alpha\><rsub|w>\<cdot\>w\<equallim\><rsub|<text|[theorem:
      <reference|support over a singleton>]>><big|sum><rsub|u\<in\><around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u
    </equation*>

    proving that <math|w\<in\>span<around*|(|W|)>>. Hence we have
    <math|W\<subseteq\>span<around*|(|W|)>>.
  </proof>

  <\theorem>
    <label|linear span inclusion>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|U,W> with <math|U\<subseteq\>W\<subseteq\>V> then
    <math|span<around*|(|U|)>\<subseteq\>span<around*|(|W|)>>
  </theorem>

  <\proof>
    If <math|v\<in\>span<around*|(|U|)>> then there exists a family
    <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>U>\<subseteq\>F> with
    finite support such that <math|v=<big|sum><rsub|u\<in\>U>\<alpha\><rsub|u>\<cdot\>u>.
    Define now

    <\equation*>
      <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W><text| by
      ><choice|<tformat|<table|<row|<cell|\<alpha\><rsub|u><text| if
      >u\<in\>U>>|<row|<cell|0<text| if >u\<in\>W\\U>>>>>
    </equation*>

    then we have <math|supp<around*|(|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>|)>>
    a finite set, so by [theorem: <reference|subset of finite sets>] we have
    that <math|supp<around*|(|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>|)>>
    is finite. Hence\ 

    <\equation*>
      <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W><text| has finite support
      and ><big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u<text| is
      defined>
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>U>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>W\\U>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element
      (2)>>>>|<cell|<big|sum><rsub|u\<in\>U>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|v>>>>
    </eqnarray*>

    proving that <math|v\<in\>span<around*|(|W|)>>.
  </proof>

  <\theorem>
    <label|linear span is a sub space>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then <math|span<around*|(|W|)>> is a sub-space of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> [so by [theorem:
    <reference|vector space sub-space is a vector space>]
    <math|<around*|\<langle\>|span<around*|(|W|)>,+,\<cdot\>|\<rangle\>>> is
    a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>].
  </theorem>

  <\proof>
    Let \ <math|\<alpha\>,\<beta\>\<in\>F> and
    <math|x,y\<in\>span<around*|(|W|)>> then there exists families
    <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F>,
    <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F> with
    finite support such that <math|x=<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u>
    and <math|y=<big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>u>.\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u+\<beta\>\<cdot\><big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support scalar product (1)>]>>>|<cell|<big|sum><rsub|u\<in\>W><around*|(|\<alpha\>\<cdot\><around*|(|\<alpha\><rsub|u>\<cdot\>u|)>|)>+<big|sum><rsub|u\<in\>W><around*|(|\<beta\>\<cdot\><around*|(|\<beta\><rsub|u>\<cdot\>u|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of sums (2)>]>>>|<cell|<big|sum><rsub|u\<in\>W><around*|(|<around*|(|\<alpha\>\<cdot\><around*|(|\<alpha\><rsub|u>\<cdot\>u|)>|)>+<around*|(|\<beta\>\<cdot\><around*|(|\<beta\><rsub|u>\<cdot\>u|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W><around*|(|<around*|(|\<alpha\>\<cdot\>\<alpha\><rsub|u>|)>\<cdot\>u+<around*|(|\<beta\>\<cdot\>\<beta\><rsub|u>|)>\<cdot\>u|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W><around*|(|\<alpha\>\<cdot\>\<alpha\><rsub|u>+\<beta\>\<cdot\>\<beta\><rsub|u>|)>\<cdot\>u>>>>
    </eqnarray*>

    proving that <math|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y\<in\>span<around*|(|W|)>>.
    Now for <math|W >we have either:

    <\description>
      <item*|<math|W=\<varnothing\>>>Then by [example: <reference|linear span
      empty set>] <math|<around*|{|0|}>=span<around*|(|W|)>> proving that
      <math|span<around*|(|W|)>\<neq\>\<varnothing\>>

      <item*|<math|W\<neq\>\<varnothing\>>>Then as by [theorem:
      <reference|linear set is in span of set>]
      <math|W\<subseteq\>span<around*|(|W|)>> so that
      <math|span<around*|(|W|)>\<neq\>\<varnothing\>>
    </description>

    So in all cases <math|span<around*|(|W|)>\<neq\>\<varnothing\>> hence all
    conditions for a subspace are met proving that\ 

    <\equation*>
      span<around*|(|W|)><text| is a sub-space of
      ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>
    </equation*>
  </proof>

  <\theorem>
    <label|linear span of a sub-space>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> a subspace of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    then <math|W=span<around*|(|W|)>>.
  </theorem>

  <\proof>
    By [theorem: <reference|linear set is in span of set>] we have that\ 

    <\equation>
      <label|eq 11.14.056>W\<subseteq\>span<around*|(|W|)>
    </equation>

    If <math|v\<in\>span<around*|(|W|)>> then by definition there exists a
    family <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F>
    with finite support so that <math|v=<big|sum><rsub|u\<in\>W><around*|(|\<alpha\><rsub|u>\<cdot\>u|)>>.
    As <math|>by [theorem: <reference|vector space sub-space is a vector
    space>] <math|<around*|\<langle\>|W,+,\<cdot\>|\<rangle\>><text| is a
    vector space over ><around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> we have
    <math|\<forall\>u\<in\>W> that <math|\<alpha\><rsub|u>\<cdot\>u\<in\>W>.
    Hence by [theorem: <reference|support space finite sum (4)>] we have that
    <math|<big|sum><rsub|u\<in\>W><around*|(|\<alpha\><rsub|u>\<cdot\>u|)>\<in\>W>
    proving that <math|v\<in\>W>. So <math|span<around*|(|W|)>\<subseteq\>W>
    which combined with [eq: <reference|eq 11.14.056>] gives

    <\equation*>
      W=span<around*|(|W|)>
    </equation*>
  </proof>

  <\theorem>
    <label|linear span of span>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then

    <\equation*>
      span<around*|(|span<around*|(|W|)>|)>=span<around*|(|W|)>
    </equation*>
  </theorem>

  <\proof>
    By [theorem: <reference|linear span is a sub space>]
    <math|span<around*|(|W|)>> is a sub-space of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> so that by the
    previous theorem [theorem: <reference|linear span of a sub-space>] we
    have that <math|span<around*|(|W|)>=span<around*|(|span<around*|(|W|)>|)>>
  </proof>

  Recall the concept of unique indexed sets [see <reference|function indexed
  set unique>], in those cases we have a alternative definition for the span
  of a set.

  <\theorem>
    <label|linear span indexed sets>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|<around*|{|v<rsub|i>\|i\<in\>I|}>\<subseteq\>V> a
    <with|font-series|bold|unique indexed set> then\ 

    <\equation*>
      span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>=<around*|{|u\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
      with finite support such that ><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>
    </equation*>
  </theorem>

  <\proof>
    As <math|><math|<around*|{|v<rsub|i>\|i\<in\>I|}>> is a unique indexed
    set we have a bijection\ 

    <\equation*>
      v:I\<rightarrow\>v<around*|(|I|)>=<around*|{|v<rsub|i>\|i\<in\>I|}>
    </equation*>

    If <math|u\<in\>span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>>
    there exists a <math|<around*|{|\<beta\><rsub|w>|}><rsub|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<subseteq\>F>
    with finite support such that

    <\equation*>
      u=<big|sum><rsub|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<beta\><rsub|w>\<cdot\>w
    </equation*>

    Define\ 

    <\equation*>
      <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text| by
      >\<alpha\><rsub|i>=\<beta\><rsub|v<around*|(|i|)>>
    </equation*>

    then by theorem: <reference|support bijection on index>]
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>> has finite support
    and we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<beta\><rsub|v<around*|(|i|)>>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<beta\><rsub|v<around*|(|i|)>>\<cdot\>v<around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support bijection on index>]>>>|<cell|<big|sum><rsub|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|u>>>>
    </eqnarray*>

    so that

    <\equation*>
      u\<in\><around*|{|u\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
      with finite support such that ><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 11.29.075>span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>\<subseteq\><around*|{|u\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
      with finite support such that ><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>
    </equation>

    If <math|u\<in\><around*|{|u\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
    with finite support such that ><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>>
    there exist a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    with finite support such that\ 

    <\equation*>
      u=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>
    </equation*>

    As <math|v:I\<rightarrow\>v<around*|(|I|)>=<around*|{|v<rsub|i>\|i\<in\>I|}>>
    is bijection we have that\ 

    <\equation*>
      v<rsup|-1>:<around*|{|v<rsub|i>\|i\<in\>I|}>\<rightarrow\>I<text| is a
      bijection>
    </equation*>

    Define

    <\equation*>
      <around*|{|\<beta\><rsub|w>|}><rsub|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<subseteq\>F<text|
      by >\<beta\><rsub|w>=\<alpha\><rsub|v<rsup|-1><around*|(|w|)>>
    </equation*>

    then by theorem: <reference|support bijection on index>]
    <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>> has finite support
    and we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|w\<in\><around*|{|v<rsub|i><around*|\||i\<in\>I|\|>|}>>\<beta\><rsub|w>\<cdot\>w>|<cell|=>|<cell|<big|sum><rsub|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<alpha\><rsub|v<rsup|-1><around*|(|w|)>>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<alpha\><rsub|v<rsup|-1><around*|(|w|)>>\<cdot\>v<around*|(|v<rsup|-1><around*|(|w|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|u>>>>
    </eqnarray*>

    proving that <math|u\<in\>span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>>.
    Hence

    <\equation*>
      <around*|{|u\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
      with finite support such that ><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>\<subseteq\>span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>
    </equation*>

    which combined with [eq: <reference|eq 11.29.075>] proves that\ 

    <\equation*>
      span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>\<subseteq\><around*|{|u\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
      with finite support such that ><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>
    </equation*>
  </proof>

  <subsubsection|Linear (in)dependent sets>

  <\definition>
    <label|linear independent set><dueto|linear independent set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then <with|font-series|bold|<math|W> is>
    <with|font-series|bold|linear independent> if and only if\ 

    <\equation*>
      \<forall\><around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F<text|
      with finite support such that ><big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w=0<text|
      we have >\<forall\>w\<in\>W<text| we have >\<alpha\><rsub|w>=0
    </equation*>
  </definition>

  <\example>
    <label|linear singleton of non zero element is linear independent>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W=<around*|{|x|}>> where <math|x\<neq\>0> then <math|W> is linear
    independent.
  </example>

  <\proof>
    Let <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|x|}>>\<subseteq\>F>
    be a family with finite support such that
    <math|<big|sum><rsub|u\<in\><around*|{|x|}>>\<alpha\><rsub|u>\<cdot\>u=0>
    then we have by [theorem: <reference|support over a singleton>] that
    <math|\<alpha\><rsub|x>\<cdot\>x=0>, if <math|\<alpha\><rsub|x>\<neq\>0>
    then <math|x=<around*|(|\<alpha\><rsub|x>|)><rsup|-1>\<cdot\><around*|(|\<alpha\><rsub|x>\<cdot\>x|)>=<around*|(|\<alpha\><rsub|x>|)><rsup|-1>\<cdot\>0=0>
    contradicting <math|x\<neq\>0>, hence <math|\<alpha\><rsub|x>=0>. So
    <math|\<forall\>u\<in\><around*|{|x|}>> we have
    <math|\<alpha\><rsub|u>=0> proving that <math|<around*|{|x|}>> is linear
    independent.
  </proof>

  <\example>
    <label|linear empty set is linear independent>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    <math|\<varnothing\>> is linear independent.
  </example>

  <\proof>
    Let <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>\<varnothing\>>\<subseteq\>F>
    such that <math|<big|sum><rsub|w\<in\>\<varnothing\>>\<alpha\><rsub|w>\<cdot\>w=0>
    [actually this is automatical satisfied] then
    <math|\<forall\>w\<in\>\<varnothing\>> we have <math|\<alpha\><rsub|w>=0>
    is vacuously satisfied.
  </proof>

  <\definition>
    <label|linear dependent set><dueto|linear dependent set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then <with|font-series|bold|<math|W> is linear
    dependent> if <math|W> is not linear independent. In other words <math|W>
    is linear dependent if and only if\ 

    <\equation*>
      \<exists\><around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F
      with finite support such that <big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w=0<text|
      and \ >\<exists\>w\<in\>W<text| with >\<alpha\><rsub|w>\<neq\>0
    </equation*>
  </definition>

  <\example>
    <label|linear set containing neutral element is dependent>Let
    <math|<around*|\<langle\>|V,+|\<rangle\>>> be a vector space over a field
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> such that <math|0\<in\>W> then <math|W> is linear
    dependent.
  </example>

  <\proof>
    Define <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>> by
    <math|\<alpha\><rsub|u>=<choice|<tformat|<table|<row|<cell|1<text| if
    >u=0>>|<row|<cell|0<text| if >u\<in\>W\\<around*|{|0|}>>>>>>> then
    <math|supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>|)>=<around*|{|0|}>>
    which is finite,

    \ <math|\<alpha\><rsub|u>\<neq\>0> and

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets
      (1)>]>>>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|0|}>>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|0|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|0|}>>0\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|0|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
      <reference|support of neutral element (2)>, <reference|support over a
      singleton>]>>>|<cell|0+\<alpha\><rsub|0>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    proving linear depdency.
  </proof>

  <\theorem>
    <label|linear dependent set (alternative)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|W<text| is a linear dependent set
      >>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|<text|There
      exists a >w\<in\>W<text| and a ><around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W\\<around*|{|w|}>><text|
      such that >w=<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|W> is linear dependent there
      exists a <math|<around*|{|\<beta\><rsub|w>|}><rsub|w\<in\>W>> with
      finite support such that\ 

      <math|<big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>u> and a
      <math|w\<in\>W> with <math|\<beta\><rsub|w>\<neq\>0>. Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+\<beta\><rsub|w>\<cdot\>w>>>>
      </eqnarray*>

      which as <math|\<beta\><rsub|w>\<neq\>0> proves that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|w>|<cell|=>|<cell|<around*|(|\<beta\><rsub|w>|)><rsup|-1>\<cdot\><around*|(|-<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of inverses (2)>>>>|<cell|<around*|(|\<beta\><rsub|w>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>-<around*|(|\<beta\><rsub|u>\<cdot\>u|)>|)>>>|<row|<cell|>|<cell|=>|<cell|>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support scalar product
        (1)>]>>>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|w|}>><around*|(|\<beta\><rsub|w>|)><rsup|-1>\<cdot\><around*|(|-<around*|(|\<beta\><rsub|u>\<cdot\>u|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|w|}>><around*|(|<around*|(|\<beta\><rsub|w>|)><rsup|-1>\<cdot\><around*|(|-\<beta\><rsub|u>|)>|)>\<cdot\>u>>>>
      </eqnarray*>

      So if we define <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W\\<around*|{|w|}>><rsub|>>
      by <math|\<alpha\><rsub|u>=<around*|(|\<beta\><rsub|w>|)><rsup|-1>\<cdot\><around*|(|-\<beta\><rsub|u>|)>>
      then we have by [theorem: <reference|support scalar product (1)>] that
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W\\<around*|{|w|}>>>
      has finite support and <math|w=<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>.

      <item*|<math|\<Leftarrow\>>>Let <math|w\<in\>W> and
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W\\<around*|{|w|}>>>
      such that <math|w=<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>.
      Define

      <\equation*>
        <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W><text| by
        >\<beta\><rsub|u>=<choice|<tformat|<table|<row|<cell|-1<text| if
        >u=w>>|<row|<cell|\<alpha\><rsub|w><text| if
        >u\<in\>W\\<around*|{|w|}>>>>>>
      </equation*>

      If <math|u\<in\>supp<around*|(|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>|)>>
      then <math|\<beta\><rsub|u>\<neq\>0> then<space|1em>we have either:

      <\description>
        <item*|<math|u=w>>Then <math|u\<in\><around*|{|w|}><big|cup>supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W\\<around*|{|w|}>>|)>>

        <item*|<math|u\<in\>W\\<around*|{|w|}>>>Then as
        <math|\<alpha\>=\<beta\><rsub|W\\<around*|{|w|}>>> we have that
        <math|w\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W\\<around*|{|w|}>>|)>>
        hence

        <\equation*>
          u\<in\><around*|{|w|}><big|cup>supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W\\<around*|{|w|}>>|)>
        </equation*>
      </description>

      proving that <math|supp<around*|(|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>|)>\<subseteq\><around*|{|w|}><big|cup>supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W\\<around*|{|w|}>>|)>>
      a finite set [using theorem: <reference|union of two finite sets is
      finite>]. So we have

      <\equation*>
        <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W><text| has finite
        support>
      </equation*>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+<around*|(|-w|)>>>|<row|<cell|>|<cell|=>|<cell|w+<around*|(|-w|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      which as <math|\<beta\><rsub|w>=-1\<neq\>0> proves that <math|W> is
      linear dependent.
    </description>
  </proof>

  We have a special case for unique indexed set
  <math|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>> [see
  definition: <reference|function indexed set unique>].\ 

  <\theorem>
    <label|linear dependent index set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>\|i\<in\>I|}>\<subseteq\>V> a
    <with|font-series|bold|unique indexed set> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|{|v<rsub|i>\|i\<in\>I|}><text|
      is a linear dependent set >>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|<text|There
      exists a >i\<in\>I<text| and a ><around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>I\\<around*|{|i|}>><text|
      such that >v<rsub|i>=<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>\<cdot\>v<rsub|j>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ As <math|<around*|{|v<rsub|i>\|i\<in\>I|}>> is a unique indexed set we
    have a bijection

    <\equation>
      <label|eq 11.30.075>v:I\<rightarrow\>v<around*|(|I|)>=<around*|{|v<around*|(|i|)>\|i\<in\>I|}>\<equallim\><rsub|v<rsub|i>=v<around*|(|i|)>><around*|{|v<rsub|i>\|i\<in\>I|}>
    </equation>

    Let <math|i\<in\>I> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|u\<in\><around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}>>|<cell|\<Leftrightarrow\>>|<cell|u\<in\>v<around*|(|I|)>\\<around*|{|v<rsub|i>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>j\<in\>I<text|
      such that >u=v<around*|(|j|)><text| and
      >u\<neq\>v<rsub|i>=v<around*|(|i|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>j\<in\>I<text|
      such that >u=v<around*|(|j|)><text| and
      >v<around*|(|i|)>\<neq\>v<around*|(|j|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|v<text|
      is a bijection>>>|<cell|\<exists\>j\<in\>I<text| such that
      >u=v<around*|(|j|)><text| and >i\<neq\>j>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|u\<in\><around*|{|v<rsub|j>\|j\<in\>I\\<around*|{|i|}>|}>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 11.31.016><around*|{|v<around*|(|I\\<around*|{|i|}>|)>|}>=<around*|{|v<rsub|j>\|j\<in\>I\\<around*|{|i|}>|}>=<around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}>=v<around*|(|I|)>\\<around*|{|v<rsub|i>|}>
    </equation>

    From the above it follows that\ 

    <\equation>
      <label|eq 11.32.076>v<rsub|\|I\\<around*|{|i|}>>:I\\<around*|{|i|}>\<rightarrow\><around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}><text|
      is a bijection>
    </equation>

    So we have that\ 

    <\equation>
      <label|eq 11.33.076><around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}><text|
      is equal to the unique indexed set ><around*|{|<around*|(|v<rsub|\|I\\<around*|{|i|}>>|)><rsub|j>\|j\<in\>I\\<around*|{|i|}>|}>
    </equation>

    We are now ready to prove the equivalence.

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
      is linear dependent we have by [theorem: <reference|linear dependent
      set (alternative)>] there exists a <math|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>
      and a <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>\\<around*|{|w|}>>>
      with finitie support such that <math|w=<big|sum><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>.
      As <math|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>> we have
      <math|w=v<rsub|i>> so that\ 

      <\equation>
        <label|eq 11.34.076><around*|{|\<beta\><rsub|u>|}><rsub|u\<in\><around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}>>\<subseteq\>F<text|
        has finite support and >v<rsub|i>=<big|sum><rsub|u\<in\><around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}>>\<beta\><rsub|u>\<cdot\>u
      </equation>

      So using the definition of support it follows that\ 

      <\equation>
        <label|eq 11.35.076>v<rsub|i>\<in\>span<around*|(|<around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 11.33.076>]>>span<around*|(|<around*|{|<around*|(|v<rsub|\|I\\<around*|{|i|}>>|)><rsub|j>\|j\<in\>I\\<around*|{|i|}>|}>|)>
      </equation>

      Applying then [theorem: <reference|linear span indexed sets>] it
      follows then that\ 

      <\equation*>
        \<exists\><around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>I\\<around*|{|i|}>>\<subseteq\>F<text|
        with finite support such that >v<rsub|i>=<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>\<cdot\>v<rsub|\|I\\<around*|{|i|}>><around*|(|j|)>=<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|j>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|i\<in\>I> and
      <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>I\\<around*|{|i|}>>\<subseteq\>F>
      a family with finite support such that
      <math|v<rsub|i>=<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>\<cdot\>v<rsub|j>>.
      Then by [theorem: <reference|linear span indexed sets>]
      <math|v<rsub|i>\<in\>span<around*|(|<around*|{|v<rsub|j>\|j\<in\>|}>|)>>
      and using [eq: <reference|eq 11.33.076>] it follows that\ 

      <\equation*>
        v<rsub|i>\<in\>span<around*|(|<around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}>|)>
      </equation*>

      Hence there exist a <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\><around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}>>\<subseteq\>F>
      with finite support such that\ 

      <math|v<rsub|i>=<big|sum><rsub|u\<in\><around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|v<rsub|i>|}>>\<beta\><rsub|u>\<cdot\>u>
      or if we take <math|w=v<rsub|i>> we have\ 

      <\equation*>
        w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}><text| and
        >w=<big|sum><rsub|u\<in\><around*|{|v<rsub|j>\|j\<in\>I|}>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u<rsub|>
      </equation*>

      which by [theorem: <reference|linear dependent set (alternative)>]
      proves that\ 

      <\equation*>
        <around*|{|v<rsub|i>\|i\<in\>I|}><text| is linear dependent>
      </equation*>
    </description>
  </proof>

  As special case is for finite unique indexed sets

  <\theorem>
    <label|linear dependent finite indexed set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|n\<in\>\<bbb-N\>> and <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<subseteq\>V>
    a linear dependent unique indexed set then there exists a
    <math|k\<in\><around*|{|1,\<ldots\>,n|}>> and a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>>
    such that

    <\equation*>
      v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      L=<around*|{|l\<in\><around*|{|1,\<ldots\>,n|}>\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<subseteq\>F<text|
      with finite support such that >v<rsub|l>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>
    </equation*>

    As <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>> is
    linear dependent we have by [theorem: <reference|linear dependent index
    set>] a <math|l\<in\><around*|{|1,\<ldots\>,n|}>> and a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<subseteq\>F>
    with finite suport such that <math|v<rsub|l>=<big|sum><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>.
    So we have that <math|L\<neq\>0>, further
    <math|L\<subseteq\><around*|{|1,\<ldots\>,n|}>> so that <math|L> is
    finite, hence by [theorem: <reference|finite ordered sets have a maximum
    and minimum>] <math|k=max<around*|(|L|)>> exist. So\ 

    <\equation>
      <label|eq 11.33.070>\<forall\>l\<in\>L<text|
      \ <math|l\<leqslant\>k<text| and >\<exists\><around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<subseteq\>F<text|
      with finite support and >v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>
    </equation>

    Assume that <math|\<exists\>l\<in\><around*|{|k+1,\<ldots\>,n|}>> such
    that <math|\<alpha\><rsub|l>\<neq\>0>, then <math|l\<neq\>k>. Define

    <\equation>
      <label|eq 11.34.070><around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<subseteq\>F<text|
      by >\<gamma\><rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1><text|
      if >i=k>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k,l|}><rsub|>>>>>>
    </equation>

    If <math|i\<in\>supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)>>
    then <math|\<gamma\><rsub|i>\<neq\>0> then for <math|i> we have either:

    <\description>
      <item*|<math|i=k>>Then <math|i\<in\><around*|{|k|}><big|cup>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)>>

      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>>Then
      <math|\<alpha\><rsub|i>\<neq\>0> [otherwise
      <math|\<gamma\><rsub|i>=<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-0|)>=0>]
      so that

      <\equation*>
        i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)>\<subseteq\><around*|{|k|}><big|cup>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)>
      </equation*>
    </description>

    so in all cases <math|i\<in\>><math|<around*|{|k|}><big|cup>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)>>.
    Hence

    <\equation*>
      supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)>\<subseteq\><around*|{|k|}><big|cup>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)><text|
      a finite set>
    </equation*>

    proving using [theorem: <reference|subset of finite sets>] that
    <math|supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)>>
    is finite. Hence\ 

    <\equation*>
      <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><text|
      has finite support so that ><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i><text|
      is defined>
    </equation*>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets
      (1)>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over a singleton>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>+\<gamma\><rsub|k>\<cdot\>v<rsub|k>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.34.070>]>><rsub|>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)>|)>\<cdot\>v<rsub|i>+<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\>v<rsub|k>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<around*|(|-\<alpha\><rsub|i>|)>\<cdot\>v<rsub|i>|)>+<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\>v<rsub|k>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support scalar product (1)>]>>>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|-\<alpha\><rsub|i>|)>\<cdot\>v<rsub|i>+<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\>v<rsub|k>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|-\<alpha\><rsub|i>|)>\<cdot\>v<rsub|i>+v<rsub|k>|)>>|<cell|\<equallim\><rsub|<around*|[|theorem:<reference|support
      of inverses (2)>|]>>>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|v<rsub|k>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.33.070>]>>>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets
      (1)>]>>>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k,l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><big|sum><rsub|i\<in\><around*|{|l|}>>\<alpha\><rsub|l>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over a singleton>]>>>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|\<alpha\><rsub|l>\<cdot\>v<rsub|l>|)>>|<cell|=>|<cell|>>|<row|<cell|v<rsub|l>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that <math|l\<in\>L>, hence by [eq: <reference|eq 11.33.070>]
    <math|l\<leqslant\>k> contradicting the fact that
    <math|l\<in\><around*|{|k+1,\<ldots\>,n|}>>. So the assumption is wrong
    and we have\ 

    <\equation>
      <label|eq 11.35.070>\<forall\>l\<in\><around*|{|k+1,\<ldots\>,n|}><text|
      we have >\<alpha\><rsub|l>=0
    </equation>

    So as <math|<around*|{|1,\<ldots\>,k-1|}><big|cup><around*|{|k+1,\<ldots\>,n|}>=<around*|{|1,\<ldots\>,n|}>\\k>
    and <math|<around*|{|1,\<ldots\>,k-1|}><big|cap><around*|{|k+1,\<ldots\>,n|}>=\<varnothing\>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|v<rsub|k>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|eq 11.33.070>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|eq 11.35.070>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>0\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element
      (2)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>>>
    </eqnarray*>

    proving the theorem.
  </proof>

  <subsubsection|Linear in(dependent) families>

  We have also the concepts for linear (in)dependency of families of vectors.
  The big difference between unique indexed sets
  <math|<around*|{|v<rsub|i>\|i\<in\>I|}>> and a family
  <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is that all the vectors in
  <math|<around*|{|v<rsub|i>\|i\<in\>I|}>> are different while this is not
  true for families.

  <\definition>
    <label|linear independent family><index|independent family of vectors>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector over
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a family of
    vectors then <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear
    independent if <math|\<forall\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    with finite support such that <math|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>
    we have <math|\<forall\>i\<in\>I> that <math|\<alpha\><rsub|i>=0>.
  </definition>

  <\definition>
    <label|linear dependent family>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a family of
    vectors then <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear
    dependent if it is not linear independent. In other words
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear dependent if
    there exists a <math|<around*|{|\<alpha\>|}><rsub|i\<in\>I>\<subseteq\>F>
    with finite support such that <math|\<exists\>i\<in\>I> with
    <math|\<alpha\><rsub|i>\<neq\>0> and <math|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>.
  </definition>

  <\theorem>
    <label|linear dependent family alternative (1)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector over
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a family of
    vectors then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|{|v<rsub|i>|}><rsub|i\<in\>I><text|
      is linear dependent>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\>i\<in\>I<text|
      and >\<exists\><around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>I\\<around*|{|i|}>>\<subseteq\>F<text|
      with finite support such that >v<rsub|i>=<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>\<cdot\>v<rsub|j>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
      is linear dependent there exists a <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      with finite support such that <math|\<exists\>i\<in\>I> with
      <math|\<beta\><rsub|i>\<neq\>0> and
      <math|<big|sum><rsub|i\<in\>I>\<beta\><rsub|i>\<cdot\>v<rsub|i>=0>.
      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|j\<in\>I>\<beta\><rsub|j>\<cdot\>v<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>\<cdot\>v<rsub|j>+<big|sum><rsub|j\<in\><around*|{|i|}>>\<beta\><rsub|j>\<cdot\>v<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>\<cdot\>v<rsub|j>+\<beta\><rsub|i>\<cdot\>v<rsub|i>>>>>
      </eqnarray*>

      which as <math|\<beta\><rsub|i>\<neq\>0> gives\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsub|i>>|<cell|=>|<cell|<around*|(|\<beta\><rsub|i>|)><rsup|-1>\<cdot\><around*|(|-<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of inverses (2)>]>>>|<cell|<around*|(|\<beta\><rsub|i>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>-<around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<beta\><rsub|i>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>><around*|(|<around*|(|-\<beta\><rsub|j>|)>\<cdot\>v<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support scalar product
        (1)>]>>>|<cell|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>><around*|(|\<beta\><rsub|i>|)><rsup|-1>\<cdot\><around*|(|<around*|(|-\<beta\><rsub|j>|)>\<cdot\>v<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>><around*|(|<around*|(|\<beta\><rsub|i>|)><rsup|-1>\<cdot\><around*|(|-\<beta\><rsub|j>|)>|)>\<cdot\>v<rsub|j>>>>>
      </eqnarray*>

      so if we take <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>I\\<around*|{|i|}>>>
      by <math|\<alpha\><rsub|j>=<around*|(|\<beta\><rsub|i>|)><rsup|-1>\<cdot\><around*|(|-\<beta\><rsub|j>|)>>
      then we have\ 

      <\equation*>
        v<rsub|i>=<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>\<cdot\>v<rsub|j>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>I\\i>\<subseteq\>F>
      have finite support such that <math|v<rsub|i>=<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>\<cdot\>v<rsub|j>>.
      Define then\ 

      <\equation*>
        <around*|{|\<beta\><rsub|j>|}><rsub|j\<in\>I><text| by
        >\<beta\><rsub|j>=<choice|<tformat|<table|<row|<cell|-1<text| if
        >j=i>>|<row|<cell|\<alpha\><rsub|j><text| if
        >j\<in\>I\\<around*|{|i|}>>>>>>
      </equation*>

      then <math|supp<around*|(|<around*|{|\<beta\><rsub|j>|}><rsub|j\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\><around*|{|i|}>>|)><big|cup><around*|{|i|}>>
      a finite set proving that\ 

      <\equation*>
        <around*|{|\<beta\><rsub|j>|}><rsub|j\<in\>I><text| has finite
        support so that ><big|sum><rsub|j\<in\>I>\<beta\><rsub|j>\<cdot\>v<rsub|j><text|
        is defined>
      </equation*>

      further

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|j\<in\>I>\<beta\><rsub|j>\<cdot\>v<rsub|j>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>\<cdot\>v<rsub|j>+<big|sum><rsub|j\<in\><around*|{|i|}>>\<beta\><rsub|j>\<cdot\>v<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>\<cdot\>v<rsub|j>+\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>\<cdot\>v<rsub|j>+<around*|(|-v|)>>>|<row|<cell|>|<cell|=>|<cell|v+<around*|(|-v|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      which as <math|\<beta\><rsub|i>=-1> proves that
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear dependent.
    </description>
  </proof>

  <\corollary>
    <label|linear dependent family alternative (2)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector over
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|n\<in\>\<bbb-N\>> and <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    a family of vectors then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is linear dependent>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}><text|
      and ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>><text|
      such that >v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>|<cell|>>>>
    </eqnarray*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let\ 

      <\equation*>
        L=<around*|{|l\<in\><around*|{|1,\<ldots\>,n|}>\|\<exists\><around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><text|
        with finite support such that >v<rsub|l>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>|}>
      </equation*>

      As <math|><math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is linear dependent it follows from [theorem: <reference|linear
      dependent family alternative (1)>] that <math|L\<neq\>\<varnothing\>>,
      further <math|L> is finite, hence by \ [theorem: <reference|finite
      ordered sets have a maximum and minimum>] we have that

      <\equation*>
        k=max<around*|(|L|)><text| exist>
      </equation*>

      so that

      <\equation>
        <label|eq 11.39.077>\<exists\><around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<subseteq\>F<text|
        with finite support such that >v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>
      </equation>

      Assume now that <math|\<exists\>l\<in\><around*|{|k+1,\<ldots\>,n|}>>
      such that <math|\<beta\><rsub|l>\<neq\>0>, then <math|l\<neq\>k>.
      Define\ 

      <\equation>
        <label|eq 11.40.077><around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><text|
        by >\<gamma\><rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|(|\<beta\><rsub|l>|)><rsup|-1><text|
        if >i=k>>|<row|<cell|<around*|(|\<beta\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<beta\><rsub|i>|)><text|
        if >i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k,l|}>>>>>>
      </equation>

      then we have <math|supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>|)>\<subseteq\>supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>|)><big|cup><around*|{|k|}>>
      a finite set proving that\ 

      <\equation>
        <label|eq 11.41.077><around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><text|
        has finite support so that ><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i><text|
        is defined >
      </equation>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|<around*|(|\<beta\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<beta\><rsub|i>|)>|)>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>><around*|(|\<beta\><rsub|l>|)><rsup|-1>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support scalar product
        (1)>]>>>|<cell|>>|<row|<cell|<around*|(|\<beta\><rsub|l>|)><rsup|-1>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><rsub|><around*|(|<around*|(|-\<beta\><rsub|i>|)>\<cdot\>v<rsub|i>|)>+<around*|(|\<beta\><rsub|l>|)><rsup|-1>\<cdot\>v<rsub|k>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<beta\><rsub|l>|)><rsup|-1><around*|(|v<rsub|k>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i><rsub|>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.39.077>]>>>|<cell|>>|<row|<cell|<around*|(|\<beta\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i><rsub|>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|>>|<row|<cell|<around*|(|\<beta\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l.k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|l|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i><rsub|>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|>>|<row|<cell|<around*|(|\<beta\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|l>|)>>|<cell|=>|<cell|>>|<row|<cell|v<rsub|l>>|<cell|>|<cell|>>>>
      </eqnarray*>

      So <math|v<rsub|l>\<in\>L> giving <math|l\<leqslant\>max<around*|(|L|)>=k>
      contradicting <math|l\<in\><around*|{|k+1,\<ldots\>,n|}>>. Hence we
      have proved that\ 

      <\equation>
        <label|eq 11.42.077>\<forall\>l\<in\><around*|{|k+1,\<ldots\>,n|}><text|
        we have >\<beta\><rsub|l>=0
      </equation>

      Hence we have as <math|<around*|{|1,\<ldots\>,k-1|}><big|cup><around*|{|k+1,\<ldots\>,n|}>=<around*|{|1,\<ldots\>,n|}>\\k>
      and clearly <math|<around*|{|1,\<ldots\>,k-1|}><big|cap><around*|{|k+1,\<ldots\>,n|}>=\<varnothing\>>
      that

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsub|k>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|eq 11.39.077>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>0\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>>>
      </eqnarray*>

      So if we define

      <\equation*>
        <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>><text|
        by >\<alpha\><rsub|i>=\<beta\><rsub|i>
      </equation*>

      then <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>>
      has finite support [because <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>>
      has finite support] and <math|v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>.

      <item*|<math|\<Leftarrow\>>>If <math|k\<in\><around*|{|1,\<ldots\>,n|}>>
      and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<subseteq\>F>
      has finite support such that

      <\equation>
        <label|eq 11.43.077>v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>.
      </equation>

      Define now

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>n|}>\\<around*|{|k|}>>\<subseteq\>F<text|
        by >\<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
        >i\<in\><around*|{|k+1,\<ldots\>,n|}>>>|<row|<cell|\<alpha\><rsub|i><text|
        if >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>>>>
      </equation*>

      then <math|supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>n|}>\\<around*|{|k|}>>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>n|}>\\<around*|{|k|}>>|)>>
      which is finite so that\ 

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>><text|
        has finite support and <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i><text|
        is defined>>>
      </equation*>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>0\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+0>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|eq 11.43.077>]>>>|<cell|v<rsub|k>>>>>
      </eqnarray*>

      Using the above together with [theorem: <reference|linear dependent
      family alternative (1)>] proves that
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is de linear dependent family.
    </description>
  </proof>

  <\definition>
    <label|linear span of a family><index|<math|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>>>Let
    \ <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector over
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a family of
    vectors then

    <\equation*>
      span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>=<around*|{|v\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
      with finite support such that >v=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>
    </equation*>
  </definition>

  <\lemma>
    <label|linear independent family property>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector over
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a linear
    independent family of vectors in <math|V> then if\ 

    <\equation*>
      v:I\<rightarrow\>V<text|>
    </equation*>

    is the function defining the family <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
    we have that\ 

    <\equation*>
      v:I\<rightarrow\>v<around*|(|I|)>=<around*|{|v<around*|(|i|)>\|i\<in\>I|}>=<around*|{|v<rsub|i>\|i\<in\>I|}><text|
      is a bijection>
    </equation*>

    so that\ 

    <\equation*>
      <around*|{|v<rsub|i>\|i\<in\>I|}><text| is a unique indexed set>
    </equation*>
  </lemma>

  <\proof>
    Assume that <math|\<exists\>k,l\<in\>I> with <math|k\<neq\>l> such that
    <math|v<rsub|k>=v<rsub|l>>, define then\ 

    <\equation*>
      <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I><text| by
      >\<alpha\><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
      >i\<in\>I\\<around*|{|k,l|}>>>|<row|<cell|1<text| if
      >i=k>>|<row|<cell|-1<text| if >i=l>>>>>
    </equation*>

    then <math|supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>=<around*|{|k,l|}>>
    so that <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>> has finite
    support. Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets
      (1)>]>>>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k.l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k.l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+\<alpha\><rsub|k>\<cdot\>v<rsub|k>+\<alpha\><rsub|l>\<cdot\>v<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k.l|}>>0\<cdot\>v<rsub|i>+v<rsub|k>-v<rsub|l>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element
      (2)>]>>>|<cell|v<rsub|k>-v<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    which as <math|v<rsub|k>\<neq\>0\<neq\>v<rsub|l>> proves that
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear dependent,
    contradicting the fact that <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
    is linear independent. So we must have that

    <\equation*>
      \<forall\>k,l\<in\>I<text| with >k\<neq\>l<text| we have
      >v<rsub|k>\<neq\>v<rsub|l>
    </equation*>

    Hence if <math|k,l\<in\>I> with <math|v<rsub|k>=v<rsub|l>> we have
    <math|k=l> which proves that <math|v:I\<rightarrow\>V> is injective so
    that\ 

    <\equation*>
      v:I\<rightarrow\>v<around*|(|I|)>=<around*|{|v<rsub|i>\|i\<in\>I|}><text|
      is a bijection >
    </equation*>
  </proof>

  <\theorem>
    <label|linear span set span family>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a linear
    independent set then

    <\equation*>
      span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> is linear
    independent we have by [theorem: <reference|linear independent family
    property>] we have for the function <math|v:I\<rightarrow\>V> that
    defines the family that

    <\equation>
      <label|eq 11.44.077>v:I\<rightarrow\>v<around*|(|I|)>=<around*|{|v<rsub|i>\|i\<in\>I|}><text|
      is a bijection and >v<rsup|-1>:<around*|{|v<rsub|i>\|i\<in\>I|}>\<rightarrow\>I<text|
      is a bijection>
    </equation>

    Let <math|v\<in\>span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>>
    then there exist a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    with finite support such that <math|v=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>.
    Define

    <\equation>
      <label|eq 11.45.077><around*|{|\<beta\><rsub|u>|}><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<subseteq\>F<text|
      by >\<beta\><rsub|u>=\<alpha\><rsub|v<rsup|-1><around*|(|u|)>>
    </equation>

    If <math|u\<in\>supp<around*|(|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>|)>>
    then <math|\<alpha\><rsub|v<rsup|-1><around*|(|u|)>>=\<beta\><rsub|u>\<neq\>0>
    so that <math|v<rsup|-1><around*|(|u|)>\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>>
    hence <math|u=v<around*|(|v<rsup|-1><around*|(|u|)>|)>\<in\>v<around*|(|supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>|)>>
    proving that\ 

    <\equation>
      <label|eq 11.46.077>supp<around*|(|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>|)>\<subseteq\>v<around*|(|supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>|)>
    </equation>

    As <math|v<rsub|\|supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>>:supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>\<rightarrow\>v<around*|(|supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>|)>>
    is a surjection and <math|supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>>
    is finite we have by [theorem: <reference|surjection f:A-\<gtr\>B if A is
    finite then B is finite>] that <math|v<around*|(|supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>|)>>
    is finite, hence by [theorem: <reference|subset of finite sets>] it
    follows that <math|<label|eq 11.46.077>supp<around*|(|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>|)>>
    is finite. So\ 

    <\equation*>
      <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\><around*|{|v<rsub|i><around*|\||i\<in\>I|\|>|}>><text|
      has finite support and ><big|sum><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<beta\><rsub|u>\<cdot\>u<text|
      is defined >
    </equation*>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\><around*|{|v<rsub|u>\|i\<in\>I|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|=>|<cell|<big|sum><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<alpha\><rsub|v<rsup|-1><around*|(|u|)>>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>\<alpha\><rsub|v<rsup|-1><around*|(|u|)>>\<cdot\>v<around*|(|v<rsup|-1><around*|(|u|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support bijection on index>] and [eq: <reference|eq
      11.44.077>]>>>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
    </eqnarray*>

    proving that <math|v\<in\>span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>>.
    Hence we have\ 

    <\equation*>
      span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>
    </equation*>
  </proof>

  <subsection|Basis of a vector space>

  <subsubsection|Basis>

  <\definition>
    <label|basis><dueto|basis>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|W\<subseteq\>V> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> if and only if

    <\equation*>
      W<text| is linear independent and >span<around*|(|W|)>=V
    </equation*>
  </definition>

  <\example>
    <label|linear basis of trivial base>Let
    <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>> be the
    trivial space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|\<varnothing\>> is the only basis for
    <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>
  </example>

  <\proof>
    By [example: <reference|linear span empty set>] we have
    <math|span<around*|(|\<varnothing\>|)>=<around*|{|0|}>> and by [example:
    <reference|linear empty set is linear independent>] <math|\<varnothing\>>
    is linear indepenendent, proving that\ 

    <\equation*>
      \<varnothing\><text| is a basis for
      <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>>
    </equation*>

    If <math|B> is another basis of <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>
    then <math|B\<subseteq\><around*|{|0|}>>. If <math|B=<around*|{|0|}>>
    then <math|0\<in\>B> so that by [theorem: <reference|linear set
    containing neutral element is dependent>] <math|B> is linear dependent
    contradicting linear independency, hence we must have that
    <math|B=\<varnothing\>>.

    \;
  </proof>

  <\theorem>
    <label|basis alternative definition>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>and
    <math|W\<subseteq\>V> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|W\<subseteq\>V<text| is a basis of
      <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>v\<in\>V
      there exist a <with|font-series|bold|unique>
      <around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F <text| with
      finite suport such that > v=<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u>|<cell|>>>>
    </eqnarray*>
  </theorem>

  The <with|font-series|bold|unique> <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>>
  with finite support such that <math|v=<big|sum><rsub|u\<in\>W><around*|\<nobracket\>|\<alpha\><rsub|u>\<cdot\>u|)>>
  are called the <with|font-series|bold|coordinates of v with respect to the
  basis> <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>.

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|W> is a basis it follows that
      <math|V=span<around*|(|W|)>>. Hence if <math|v\<in\>V> there exist a
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F> with
      finite support such that <math|v=<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u>,
      proving existence. Now to prove uniqueness assume that there exists
      also a <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F>
      with finite support so that <math|v=<big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>u>.
      Define\ 

      <\equation*>
        <around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>W><text| by
        >\<gamma\><rsub|u>=\<alpha\><rsub|u>-\<beta\><rsub|\<mu\>>
      </equation*>

      then by [theorems: <reference|support of inverses (2)>
      <reference|support of sums (2)>] we have that\ 

      <\equation*>
        <around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>W><text| has finite
        support so ><big|sum><rsub|u\<in\>W>\<gamma\><rsub|u>\<cdot\>u<text|
        is defined>
      </equation*>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>W>\<gamma\><rsub|u>\<cdot\>u>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W><around*|(|\<alpha\><rsub|u>-\<beta\><rsub|u>|)>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W><around*|(|\<alpha\><rsub|u>\<cdot\>u+<around*|(|-\<beta\><rsub|u>\<cdot\>u|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of sums (2)>]>>>|<cell|<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>W><around*|(|-\<beta\><rsub|u>|)>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of inverses (2)>]>>>|<cell|<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u-<big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|v-v>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      As <math|W> is linear independent we have <math|\<forall\>u\<in\>W>
      that <math|\<alpha\><rsub|u>-\<beta\><rsub|u>=\<gamma\><rsub|u>=0\<Rightarrow\>\<alpha\><rsub|u>=\<beta\><rsub|u>>
      proving that <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>=<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>>.

      <item*|<math|\<Leftarrow\>>>If <math|v\<in\>V> then by the hypothese
      there exist a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F>
      such that <math|v=<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u>
      proving that <math|v\<in\>span<around*|(|W|)>>. Hence
      <math|V\<subseteq\>span<around*|(|V|)>\<subseteq\>V>

      <\equation*>
        span<around*|(|V|)>=V
      </equation*>

      Define <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F>
      by <math|\<alpha\><rsub|u>=0> then <math|supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>|)>=\<varnothing\>>
      hence <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>> has finite
      support and <math|<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element (2)>]>>0>. Assume now that
      <math|\<exists\><around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>W\<subseteq\>F>
      with finite support such that <math|<big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>v=0>,
      then by uniqueness we have that <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>=<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>>
      hence <math|\<forall\>u\<in\>W> we have <math|\<beta\><rsub|w>=0> which
      proves that\ 

      <\equation*>
        W<text| is linear independent>
      </equation*>

      So we have proved that <math|W> is a basis.
    </description>
  </proof>

  A natural question about vector spaces and bases is if every vector space
  has a basis. If we accept the Axiom of Choice then the asnwer is yes as is
  expressed in the following theorem.

  <\theorem>
    <label|linear basis extension theorem>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|R\<subseteq\>W\<subseteq\>V> such that\ 

    <\enumerate>
      <item><math|R> is linear independent

      <item><math|span<around*|(|W|)>=V>
    </enumerate>

    then there exist a set <math|B> such that
    <math|R\<subseteq\>B\<subseteq\>W> and <math|B> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.\ 
  </theorem>

  <\proof>
    Define\ 

    <\equation>
      <label|eq 11.39.076>\<cal-A\>=<around*|{|X\<subseteq\>V\|R\<subseteq\>X\<subseteq\>W<text|
      and >X<text| is linear independent>|}>\<subseteq\>\<cal-P\><around*|(|V|)>
    </equation>

    Note that as <math|R> is linear independent and
    <math|R\<subseteq\>R\<subseteq\>W> we have\ 

    <\equation>
      <label|eq 11.40.076.1>R\<in\>\<cal-A\>
    </equation>

    Using \ [theorem: <reference|order inclusion is a order>] we have that

    <\equation>
      <label|eq 11.40.076><around*|\<langle\>|\<cal-A\>,\<subseteq\>|\<rangle\>><text|
      is a partial ordered set>
    </equation>

    Let <math|\<cal-C\>\<subseteq\>\<cal-A\>> be a non empty chain [see
    definition: <reference|order chain>]. If <math|X\<in\>\<cal-C\>> then
    <math|X\<in\>\<cal-A\>> so that <math|R\<subseteq\>X\<subseteq\>W> hence
    \ <math|R\<subseteq\><big|cup><rsub|X\<in\>\<cal-C\>>X\<subseteq\>W>
    hence\ 

    <\equation>
      <label|eq 11.41.076>R\<subseteq\>B<rsub|\<cal-C\>>\<subseteq\>W<text|
      and >\<forall\>X\<in\>\<cal-C\><text| we have
      >X\<subseteq\>B<rsub|\<cal-C\>><text| where
      >B<rsub|\<cal-C\>>=<big|cup><rsub|X\<in\>\<cal-C\>>X
    </equation>

    We use now mathematical induction to prove

    <\equation>
      <label|eq 11.42.076><text|If > A<text| is a finite subset of
      >B<rsub|\<cal-C\>><text| then there exists a >X\<in\>\<cal-C\><text|
      such that >A\<subseteq\>X
    </equation>

    <\proof>
      Define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
        >A\<subseteq\>B<rsub|\<cal-C\>><text| with <math|n\<approx\>A<text|
        then >\<exists\>X\<in\>\<cal-C\><text| such that >A\<subseteq\>X>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>>Let <math|A\<subseteq\>B<rsub|\<cal-C\>>> with
        <math|A\<approx\>0=\<varnothing\>> then <math|A=\<varnothing\>>. As
        <math|\<cal-C\>\<neq\>\<varnothing\>> so there exist a
        <math|X\<in\>\<cal-C\>> and trivially
        <math|A=\<varnothing\>\<subseteq\>X> hence <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|A\<subseteq\>B<rsub|\<cal-C\>>> with <math|n+1\<approx\>A> then
        there exist a bijection <math|\<beta\>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>A>.
        Take <math|A<rprime|'>=A\\<around*|{|\<beta\><around*|(|n|)>|}>> and
        consider <math|\<beta\><rsub|\|<around*|{|0,\<ldots\>,n-1|}>>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>A<rprime|'>>
        then we have:

        <\description>
          <item*|injectivity>If <math|\<beta\><rsub|\|<around*|{|0,\<ldots\>,n-1|}>><around*|(|k|)>=\<beta\><rsub|\|<around*|{|0,\<ldots\>,n-1|}>><around*|(|l|)>>
          then <math|\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>> which
          as <math|\<beta\>> is a bijection proves that <math|k=l>

          <item*|surjectivity>If <math|y\<in\>A<rprime|'>> then
          <math|y\<in\>A> and <math|y\<neq\>\<beta\><around*|(|n|)>>. As
          <math|\<beta\>> is a bijection there exists a
          <math|i\<in\><around*|{|0,\<ldots\>,n|}>> such that
          <math|\<beta\><around*|(|i|)>=y>. If <math|i=n> then
          <math|y=\<beta\><around*|(|i|)>=\<beta\><around*|(|n|)>>
          contradicting <math|y\<neq\>\<beta\><around*|(|n|)>>, so
          <math|i\<in\><around*|{|0,\<ldots\>,n-1|}>>, hence
          <math|y=\<beta\><around*|(|i|)>=\<beta\><rsub|\|<around*|{|0,\<ldots\>,n-1|}>><around*|(|i|)>>.
        </description>

        proving that <math|><math|\<beta\><rsub|\|<around*|{|0,\<ldots\>,n-1|}>>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>A<rprime|'>>
        is a bijection hence <math|n\<approx\>A<rprime|'>>. As
        <math|n\<in\>S> there exist a <math|X<rprime|'>\<in\>\<cal-C\>> such
        that <math|A<rprime|'>\<subseteq\>X<rprime|'>>. Further as
        <math|\<beta\><around*|(|n|)>\<in\>A\<subseteq\>B<rsub|\<cal-C\>>=<big|cup><rsub|X\<in\>\<cal-C\>>X>
        there exists a <math|X\<in\>\<cal-C\>> such that
        <math|\<beta\><around*|(|n|)>\<in\>X>. Now as <math|\<cal-C\>> is a
        chain we have either:

        <\description>
          <item*|<math|X<rprime|'>\<subseteq\>X>>Then as
          <math|A\\<around*|{|\<beta\><around*|(|n|)>|}>=A<rprime|'>\<subseteq\>X<rprime|'>\<subseteq\>X>
          and <math|\<beta\><around*|(|n|)>\<in\>X> we have that
          <math|A\<subseteq\>X> proving that <math|n+1\<in\>S>

          <item*|<math|X\<subseteq\>X<rprime|'>>>Then as
          <math|A\\<around*|{|\<beta\><around*|(|n|)>|}>=A<rprime|'>\<subseteq\>X<rprime|'>>
          and <math|\<beta\><around*|(|n|)>\<in\>X\<subseteq\>X<rprime|'>> we
          have that <math|A\<subseteq\>X<rprime|'>> proving that
          <math|n+1\<in\>S>
        </description>

        so in both cases we have that <math|n+1\<in\>S>. \ 
      </description>

      Mathematical induction completes the proof.
    </proof>

    We prove now that <math|B<rsub|\<cal-C\>>> is linear independent. Let
    <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>\<subseteq\>F<rsub|>>
    a family with finite support such that
    <math|<big|sum><rsub|u\<in\>B<rsub|\<cal-C\>>>\<alpha\><rsub|u>\<cdot\>u=0>.
    As <math|supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>|)>\<subseteq\>B<rsub|\<cal-C\>>>
    and <math|supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>|)>>
    is finite it follows from [eq: <reference|eq 11.42.076>] that\ 

    <\equation>
      <label|eq 11.43.076>\<exists\>Y\<in\>\<cal-C\> <text|such that
      >supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>|)>\<subseteq\>Y
    </equation>

    As <math|Y\<in\>\<cal-C\>\<subseteq\>\<cal-A\>> we have by [eq:
    <reference|eq 11.39.076>] that

    <\equation>
      <label|eq 11.44.076>R\<subseteq\>Y\<subseteq\>W<text| and >Y<text| is
      linear independent>
    </equation>

    Define\ 

    <\equation*>
      <around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>Y>\<subseteq\>F<text| by
      >\<gamma\><rsub|u>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|u><text|
      if >u\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>|)>>>|<row|<cell|0<text|
      if >y\<in\>Y\\supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>|)>>>>>>
    </equation*>

    then <math|supp<around*|(|<around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>Y>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>|)>>
    which is finite so that\ 

    <\equation*>
      <around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>Y><text| has finite support
      and ><big|sum><rsub|u\<in\>Y>\<gamma\><rsub|u>\<cdot\>u<text| is
      defined>
    </equation*>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>Y>\<gamma\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets
      (1)>]>>>|<cell|<big|sum><rsub|u\<in\>Y\\supp<around*|(|<around*|{|\<alpha\><rsub|u>\|u\<in\>B<rsub|\<cal-C\>>|}>|)>>\<gamma\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|u>\|u\<in\>B<rsub|\<cal-C\>>|}>|)>Y>\<gamma\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>Y\\supp<around*|(|<around*|{|\<alpha\><rsub|u>\|u\<in\>B<rsub|\<cal-C\>>|}>|)>>0\<cdot\>u+<big|sum><rsub|u\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|u>\|u\<in\>B<rsub|\<cal-C\>>|}>|)>Y>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element
      (2)>]>>>|<cell|<big|sum><rsub|u\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|u>\|u\<in\>B<rsub|\<cal-C\>>|}>|)>Y>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support eleminate zeroes>]>>>|<cell|<big|sum><rsub|u\<in\>B<rsub|\<cal-C\>>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    which as <math|Y> is linear independent [see eq: <reference|eq
    11.44.076>] proves that\ 

    <\equation>
      <label|eq 11.45.076>\<forall\>u\<in\>Y<text| we have
      >\<gamma\><rsub|u>=0
    </equation>

    If <math|u\<in\>B<rsub|\<cal-C\>>> then we have either
    <math|u\<in\>B<rsub|\<cal-C\>>\\supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>|)>>
    so that <math|\<alpha\><rsub|v>=0> or
    <math|u\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|\<cal-C\>>>|)>\<subseteq\>Y>
    so that <math|\<alpha\><rsub|u>=\<gamma\><rsub|u>=0>. Hence we have
    <math|\<forall\>u\<in\>B<rsub|\<cal-C\>>> that <math|\<alpha\><rsub|u>=0>
    proving that\ 

    <\equation>
      <label|eq 11.46.076>B<rsub|\<cal-C\>><text| is linear independent>
    </equation>

    Combining now [eq: <reference|eq 11.41.076>] and [eq: <reference|eq
    11.46.076>] w have by definition of <math|\<cal-A\>> that\ 

    <\equation*>
      B<rsub|\<cal-C\>>\<in\>\<cal-A\>
    </equation*>

    So for every non-empty chain <math|\<cal-C\>\<subseteq\>\<cal-A\>> we
    have found a <math|B<rsub|\<cal-C\>>\<in\>\<cal-A\>> such that
    <math|\<forall\>X\<in\>\<cal-C\>> we have
    <math|X\<subseteq\><big|cup><rsub|X\<in\>\<cal-C\>>X=B<rsub|\<cal-C\>>>
    hence <math|\<cal-C\>> has a upper bound <math|B<rsub|\<cal-C\>>>.
    Further as by [eq: <reference|eq 11.40.076.1>] <math|R\<in\>\<cal-A\>> we
    have for the empty chain that <math|\<forall\>X\<in\>\<cal-C\>>
    <math|X\<subseteq\>R> is satisfie vacously, hence <math|R> is a upper
    bound of <math|\<cal-C\>>. So we have that

    <\equation*>
      <text|Every chain >\<cal-C\><text| in >\<cal-A\><text| has a upper
      bound in >\<cal-A\>
    </equation*>

    So we can use Zorn's lemma [see theorem: <reference|choice Zorn's lemma>]
    giving the existence of a maximal element in <math|\<cal-A\>>, in other
    words\ 

    <\equation>
      <label|eq 11.48.076>\<exists\>M\<in\>\<cal-A\><text| such that
      >\<forall\>X<text| we have >X\<subseteq\>M
    </equation>

    and as <math|M\<in\>\<cal-A\>> we have

    <\equation>
      <label|eq 11.49.076>R\<subseteq\>M\<subseteq\>W<text| and >M<text| is
      linear independent>
    </equation>

    Let now <math|w\<in\>W> then we have either:

    <\description>
      <item*|<math|w\<in\>M>>As by [theorem: <reference|linear set is in span
      of set>] <math|M\<subseteq\>span<around*|(|M|)>> it follows that
      <math|w\<in\>span<around*|(|M|)>>.

      <item*|<math|w\<nin\>M>>Assume that <math|M<big|cup><around*|{|w|}>> is
      linear independent then as <math|R\<subseteq\>M\<subseteq\>M<big|cup><around*|{|w|}>\<subset\>W>
      it follows that <math|M<big|cup><around*|{|w|}>\<in\>\<cal-A\>>, using
      [eq: <reference|eq 11.48.076>] we have that
      <math|M<big|cup><around*|{|w|}>\<subseteq\>M>, hence <math|w\<in\>M>
      contradicting <math|w\<nin\>M>. So <math|M<big|cup><around*|{|w|}>> is
      linear dependent, hence there exist a family
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>M<big|cup><around*|{|w|}>>\<subseteq\>F>
      satisfying <math|<big|sum><rsub|u\<in\>M<big|cup><around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u=0>
      such that <math|\<exists\>u<rsub|0>\<in\>M<big|cup><around*|{|w|}>>
      with <math|\<alpha\><rsub|u<rsub|0>>\<neq\>0>. Assume that
      <math|\<alpha\><rsub|w>=0> then as <math|M<big|cap><around*|{|w|}>=\<varnothing\>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|u\<in\>M<big|cup><around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|u\<in\>M>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|u\<in\>M>\<alpha\><rsub|u>\<cdot\>u+\<alpha\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>M>\<alpha\><rsub|u>\<cdot\>u+0\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>M>\<alpha\><rsub|u>\<cdot\>u>>>>
      </eqnarray*>

      which as <math|M> is linear independent proves that
      <math|\<forall\>u\<in\>M> <math|\<alpha\><rsub|u>=0>. As
      <math|\<alpha\><rsub|w>=0> we have <math|\<forall\>u\<in\>M<big|cup><around*|{|w|}>>
      that <math|\<alpha\><rsub|w>=0> contradicting
      <math|\<alpha\><rsub|u<rsub|0>>\<neq\>0>. So we must have that
      <math|\<alpha\><rsub|w>\<neq\>0> hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|u\<in\>M<big|cup><around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|u\<in\>M>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|u\<in\>M>\<alpha\><rsub|u>\<cdot\>u+\<alpha\><rsub|w>\<cdot\>w>>>>
      </eqnarray*>

      which as <math|\<alpha\><rsub|w>\<neq\>0> gives\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|w>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|w>|)><rsup|-1>\<cdot\><big|sum><rsub|u\<in\>M>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support scalar product
        (1)>]>>>|<cell|<big|sum><rsub|u\<in\>M><around*|(|<around*|(|\<alpha\><rsub|w>|)><rsup|-1>\<cdot\>\<alpha\><rsub|u>|)>\<cdot\>w>>>>
      </eqnarray*>

      proving that <math|w\<in\>span<around*|(|M|)>>
    </description>

    so in all cases we have <math|w\<in\>span<around*|(|M|)>> proving that\ 

    <\equation>
      <label|eq 11.50.076>W\<subseteq\>span<around*|(|M|)>
    </equation>

    Using [theorem: <reference|linear span inclusion>] we have

    <\equation*>
      V=span<around*|(|W|)>\<subseteq\>span<around*|(|span<around*|(|M|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|linear span of span>]>>span<around*|(|M|)>\<subseteq\>V
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 11.51.076>span<around*|(|M|)>=V
    </equation>

    Let <math|B=M> then by [eq: <reference|eq 11.49.076>] and [eq:
    <reference|eq 11.51.076>] it follows that\ 

    <\equation*>
      B<text| is a basis of ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>><text|
      and >R\<subseteq\>B\<subseteq\>W
    </equation*>
  </proof>

  <\corollary>
    <label|linear basis from linear independent set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|R> a linear independent set then there exists a basis <math|B> of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> such that
    <math|R\<subseteq\>B>
  </corollary>

  <\proof>
    As <math|R> is linear independent, <math|R\<subseteq\>V> and
    <math|span<around*|(|V|)>\<equallim\><rsub|<text|[theorem:
    <reference|linear span of a sub-space>]>>V> we have by [theorem:
    <reference|linear basis extension theorem>] that there exist a basis
    <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> with
    <math|R\<subseteq\>B\<subseteq\>V>.
  </proof>

  <\corollary>
    <label|linear basis from spanned set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> such that <math|span<around*|(|W|)>=V> then there
    exist a basis <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    such that <math|B\<subseteq\>W>
  </corollary>

  <\proof>
    For <math|V> we have either:

    <\description>
      <item*|<math|V=<around*|{|0|}>>>By [example: <reference|linear basis of
      trivial base>] <math|\<varnothing\>> is a basis for <math|V> and
      trivially <math|\<varnothing\>\<subseteq\>W>.

      <item*|<math|V\<neq\><around*|{|0|}>>>Then there exist a
      <math|v\<in\>V> with <math|v\<neq\>0>. As <math|V=span<around*|(|W|)>>
      there exists a <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F>
      such that <math|v=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w>.
      If <math|W=\<varnothing\>> or <math|W=<around*|{|0|}>> then
      <math|supp<around*|(|<around*|{|\<alpha\><rsub|w>\<cdot\>w|}><rsub|w\<in\>W>|)>=\<varnothing\>>
      so that <math|v=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w=0>
      contradicting <math|v\<neq\>0>. So there exists a <math|w\<in\>W> with
      <math|w\<neq\>0>. By [example: <reference|linear singleton of non zero
      element is linear independent>] <math|R=<around*|{|w|}>> is linear
      independent and as further <math|R=<around*|{|w|}>\<subseteq\>W> we
      have by [theorem: <reference|linear basis extension theorem>] that
      there exist a basis <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
      such that <math|R\<subseteq\>B\<subseteq\>W>.
    </description>
  </proof>

  <\corollary>
    <label|linear basis exist>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then there exist a basis <math|B\<subseteq\>V> of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
  </corollary>

  <\proof>
    As <math|span<around*|(|V|)>\<equallim\><rsub|<text|[theorem:
    <reference|linear span of a sub-space>]>>V> we have by [corollary:
    <reference|linear basis from spanned set>] that there exist a basis
    <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
  </proof>

  <subsubsection|Dimension of a vector space>

  \;

  <\definition>
    \;
  </definition>

  <\lemma>
    <label|linear basis replacement theory>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<subseteq\>V>
    a unique indexed set such that <math|span<around*|(|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=V>
    and <math|<around*|{|f<rsub|i>\|i\<in\>I|}>\<subseteq\>F> a unique
    indexed set that is linear independent such that
    <math|<around*|{|1,\<ldots\>,n|}>\<subseteq\>I> then
    <math|span<around*|(|<around*|{|f<rsub|i>\|i\<in\>1,\<ldots\>,n|}>|)>=V>
  </lemma>

  <\proof>
    We prove this by induction

    <\equation*>
      S=<around*|{|m\<in\>\<bbb-N\>\|<text|if
      >m\<in\><around*|{|1,\<ldots\>,n|}><text| then there exist a unique
      indxed set >|}>
    </equation*>
  </proof>

  \;

  \;

  \;

  \;

  <section|Linear mappings>

  \;

  \;

  \;

  \;

  \;

  <section|Multilinear mappings>

  <section|Deteminant Functions>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|10>
    <associate|page-first|314>
    <associate|page-medium|papyrus>
    <associate|section-nr|5>
    <associate|subsection-nr|5>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|11|?>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|S<rsub|I>>|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|i\<leftrightarrowlim\><rsub|I>>j|?>>
    <associate|auto-12|<tuple|11.1.4|?>>
    <associate|auto-13|<tuple|11.2|?>>
    <associate|auto-14|<tuple|11.2.1|?>>
    <associate|auto-15|<tuple|vector space|?>>
    <associate|auto-16|<tuple|11.2.2|?>>
    <associate|auto-17|<tuple|complex vector space|?>>
    <associate|auto-18|<tuple|real vector space|?>>
    <associate|auto-19|<tuple|11.3|?>>
    <associate|auto-2|<tuple|11.1|?>>
    <associate|auto-20|<tuple|11.3.1|?>>
    <associate|auto-21|<tuple|11.3.2|?>>
    <associate|auto-22|<tuple|11.3.3|?>>
    <associate|auto-23|<tuple|11.3.3.1|?>>
    <associate|auto-24|<tuple|11.3.3.2|?>>
    <associate|auto-25|<tuple|11.3.3.3|?>>
    <associate|auto-26|<tuple|independent family of vectors|?>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>>|?>>
    <associate|auto-28|<tuple|11.3.4|?>>
    <associate|auto-29|<tuple|11.3.4.1|?>>
    <associate|auto-3|<tuple|11.1.1|?>>
    <associate|auto-30|<tuple|11.3.4.2|?>>
    <associate|auto-31|<tuple|11.4|?>>
    <associate|auto-32|<tuple|11.5|?>>
    <associate|auto-33|<tuple|11.6|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-6|<tuple|11.1.2|?>>
    <associate|auto-7|<tuple|11.1.3|?>>
    <associate|auto-8|<tuple|permutation|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<sigma\>>|?>>
    <associate|basis|<tuple|11.111|?>>
    <associate|basis alternative definition|<tuple|11.113|?>>
    <associate|eq 11.1.054|<tuple|11.1|?>>
    <associate|eq 11.10.054|<tuple|11.11|?>>
    <associate|eq 11.10.064|<tuple|11.10|?>>
    <associate|eq 11.11.054|<tuple|11.13|?>>
    <associate|eq 11.11.055|<tuple|11.12|?>>
    <associate|eq 11.13.055|<tuple|11.14|?>>
    <associate|eq 11.14.056|<tuple|11.28|?>>
    <associate|eq 11.14.057|<tuple|11.15|?>>
    <associate|eq 11.15.058|<tuple|11.18|?>>
    <associate|eq 11.15.059|<tuple|11.16|?>>
    <associate|eq 11.16.058|<tuple|11.19|?>>
    <associate|eq 11.16.059|<tuple|11.17|?>>
    <associate|eq 11.17.058|<tuple|11.20|?>>
    <associate|eq 11.18.058|<tuple|11.21|?>>
    <associate|eq 11.19.058|<tuple|11.22|?>>
    <associate|eq 11.2.053|<tuple|11.2|?>>
    <associate|eq 11.20.058|<tuple|11.23|?>>
    <associate|eq 11.21.058|<tuple|11.24|?>>
    <associate|eq 11.22.058|<tuple|11.25|?>>
    <associate|eq 11.23.058|<tuple|11.26|?>>
    <associate|eq 11.27.064|<tuple|11.27|?>>
    <associate|eq 11.29.075|<tuple|11.29|?>>
    <associate|eq 11.3.053|<tuple|11.3|?>>
    <associate|eq 11.30.075|<tuple|11.30|?>>
    <associate|eq 11.31.016|<tuple|11.31|?>>
    <associate|eq 11.32.076|<tuple|11.32|?>>
    <associate|eq 11.33.070|<tuple|11.36|?>>
    <associate|eq 11.33.076|<tuple|11.33|?>>
    <associate|eq 11.34.070|<tuple|11.37|?>>
    <associate|eq 11.34.076|<tuple|11.34|?>>
    <associate|eq 11.35.070|<tuple|11.38|?>>
    <associate|eq 11.35.076|<tuple|11.35|?>>
    <associate|eq 11.39.076|<tuple|11.47|?>>
    <associate|eq 11.39.077|<tuple|11.39|?>>
    <associate|eq 11.4.053|<tuple|11.4|?>>
    <associate|eq 11.40.076|<tuple|11.49|?>>
    <associate|eq 11.40.076.1|<tuple|11.48|?>>
    <associate|eq 11.40.077|<tuple|11.40|?>>
    <associate|eq 11.41.076|<tuple|11.50|?>>
    <associate|eq 11.41.077|<tuple|11.41|?>>
    <associate|eq 11.42.076|<tuple|11.51|?>>
    <associate|eq 11.42.077|<tuple|11.42|?>>
    <associate|eq 11.43.076|<tuple|11.52|?>>
    <associate|eq 11.43.077|<tuple|11.43|?>>
    <associate|eq 11.44.076|<tuple|11.53|?>>
    <associate|eq 11.44.077|<tuple|11.44|?>>
    <associate|eq 11.45.076|<tuple|11.54|?>>
    <associate|eq 11.45.077|<tuple|11.45|?>>
    <associate|eq 11.46.076|<tuple|11.55|?>>
    <associate|eq 11.46.077|<tuple|11.46|?>>
    <associate|eq 11.48.076|<tuple|11.56|?>>
    <associate|eq 11.49.076|<tuple|11.57|?>>
    <associate|eq 11.5.053|<tuple|11.5|?>>
    <associate|eq 11.50.076|<tuple|11.58|?>>
    <associate|eq 11.51.076|<tuple|11.59|?>>
    <associate|eq 11.6.053|<tuple|11.6|?>>
    <associate|eq 11.7.053|<tuple|11.7|?>>
    <associate|eq 11.7.053.1|<tuple|11.8|?>>
    <associate|eq 11.9.053|<tuple|11.9|?>>
    <associate|finite support sum|<tuple|11.71|?>>
    <associate|linear basis exist|<tuple|11.117|?>>
    <associate|linear basis extension theorem|<tuple|11.114|?>>
    <associate|linear basis from linear independent set|<tuple|11.115|?>>
    <associate|linear basis from spanned set|<tuple|11.116|?>>
    <associate|linear basis of trivial base|<tuple|11.112|?>>
    <associate|linear basis replacement theory|<tuple|11.119|?>>
    <associate|linear combination of a set|<tuple|11.87|?>>
    <associate|linear dependent family|<tuple|11.105|?>>
    <associate|linear dependent family alternative (1)|<tuple|11.106|?>>
    <associate|linear dependent family alternative (2)|<tuple|11.107|?>>
    <associate|linear dependent finite indexed set|<tuple|11.103|?>>
    <associate|linear dependent index set|<tuple|11.102|?>>
    <associate|linear dependent set|<tuple|11.99|?>>
    <associate|linear dependent set (alternative)|<tuple|11.101|?>>
    <associate|linear empty set is linear independent|<tuple|11.98|?>>
    <associate|linear independent family|<tuple|11.104|?>>
    <associate|linear independent family property|<tuple|11.109|?>>
    <associate|linear independent set|<tuple|11.96|?>>
    <associate|linear set containing neutral element is
    dependent|<tuple|11.100|?>>
    <associate|linear set is in span of set|<tuple|11.90|?>>
    <associate|linear singleton of non zero element is linear
    independent|<tuple|11.97|?>>
    <associate|linear span empty set|<tuple|11.89|?>>
    <associate|linear span inclusion|<tuple|11.91|?>>
    <associate|linear span indexed sets|<tuple|11.95|?>>
    <associate|linear span is a sub space|<tuple|11.92|?>>
    <associate|linear span of a family|<tuple|11.108|?>>
    <associate|linear span of a set|<tuple|11.88|?>>
    <associate|linear span of a sub-space|<tuple|11.93|?>>
    <associate|linear span of span|<tuple|11.94|?>>
    <associate|linear span set span family|<tuple|11.110|?>>
    <associate|permutation definition|<tuple|11.23|?>>
    <associate|permutation group|<tuple|11.24|?>>
    <associate|permutation on subset|<tuple|11.25|?>>
    <associate|permutation transposition|<tuple|11.26|?>>
    <associate|permutation transposition properties|<tuple|11.27|?>>
    <associate|permutation {0,..,n and transposition|<tuple|11.28|?>>
    <associate|product finite product|<tuple|11.2|?>>
    <associate|sum alternative definition|<tuple|11.4|?>>
    <associate|sum alternative definition (1)|<tuple|11.14|?>>
    <associate|sum associativity|<tuple|11.22|?>>
    <associate|sum associativity simple|<tuple|11.21|?>>
    <associate|sum bijection on index|<tuple|11.33|?>>
    <associate|sum commutativity|<tuple|11.29|?>>
    <associate|sum finite sum|<tuple|11.1|?>>
    <associate|sum general equivalence|<tuple|11.32|?>>
    <associate|sum general single|<tuple|11.31|?>>
    <associate|sum in A^n|<tuple|11.43|?>>
    <associate|sum in A^n (1)|<tuple|11.85|?>>
    <associate|sum index is a product|<tuple|11.42|?>>
    <associate|sum of differences|<tuple|11.10|?>>
    <associate|sum of differences (1)|<tuple|11.20|?>>
    <associate|sum of finite sums|<tuple|11.9|?>>
    <associate|sum of finite sums (1)|<tuple|11.18|?>>
    <associate|sum of finite sums (2)|<tuple|11.38|?>>
    <associate|sum of inverses|<tuple|11.7|?>>
    <associate|sum of inverses (1)|<tuple|11.19|?>>
    <associate|sum of inverses (2)|<tuple|11.37|?>>
    <associate|sum of neutral element (1)|<tuple|11.15|?>>
    <associate|sum of neutral element (2)|<tuple|11.34|?>>
    <associate|sum of neutral elements|<tuple|11.5|?>>
    <associate|sum of sums|<tuple|11.6|?>>
    <associate|sum of sums (1)|<tuple|11.16|?>>
    <associate|sum of sums (2)|<tuple|11.35|?>>
    <associate|sum over disjoint subsets|<tuple|11.40|?>>
    <associate|sum over disjoint subsets (1)|<tuple|11.41|?>>
    <associate|sum over two disjoint subsets|<tuple|11.39|?>>
    <associate|sum ring product|<tuple|11.8|?>>
    <associate|sum ring product (1)|<tuple|11.17|?>>
    <associate|sum ring product (2)|<tuple|11.36|?>>
    <associate|support|<tuple|11.67|?>>
    <associate|support bijection on index|<tuple|11.76|?>>
    <associate|support eleminate zeroes|<tuple|11.75|?>>
    <associate|support empty set sum|<tuple|11.72|?>>
    <associate|support extension|<tuple|11.74|?>>
    <associate|support finite|<tuple|11.69|?>>
    <associate|support of inverses (2)|<tuple|11.79|?>>
    <associate|support of neutral element (2)|<tuple|11.77|?>>
    <associate|support of sums (2)|<tuple|11.78|?>>
    <associate|support over a singleton|<tuple|11.73|?>>
    <associate|support over disjoint subsets|<tuple|11.83|?>>
    <associate|support over disjoint subsets (1)|<tuple|11.84|?>>
    <associate|support ring product (2)|<tuple|11.80|?>>
    <associate|support scalar product (1)|<tuple|11.81|?>>
    <associate|support scalar product (2)|<tuple|11.82|?>>
    <associate|support space finite sum (4)|<tuple|11.86|?>>
    <associate|support subsets with finite support|<tuple|11.70|?>>
    <associate|support support of subsets|<tuple|11.68|?>>
    <associate|vector space|<tuple|11.44|?>>
    <associate|vector space C real|<tuple|11.53|?>>
    <associate|vector space F^n|<tuple|11.58|?>>
    <associate|vector space Q,R,C|<tuple|11.52|?>>
    <associate|vector space complex/real|<tuple|11.54|?>>
    <associate|vector space field|<tuple|11.51|?>>
    <associate|vector space finite sum (1)|<tuple|11.63|?>>
    <associate|vector space finite sum (2)|<tuple|11.64|?>>
    <associate|vector space finite sum (3)|<tuple|11.65|?>>
    <associate|vector space finite sum (4)|<tuple|11.66|?>>
    <associate|vector space function space|<tuple|11.55|?>>
    <associate|vector space power|<tuple|11.56|?>>
    <associate|vector space power field|<tuple|11.57|?>>
    <associate|vector space product of vector spaces|<tuple|11.59|?>>
    <associate|vector space properties (1)|<tuple|11.46|?>>
    <associate|vector space set operations|<tuple|11.60|?>>
    <associate|vector space set propertie|<tuple|11.61|?>>
    <associate|vector space sub-space is a vector space|<tuple|11.48|?>>
    <associate|vector space subspace|<tuple|11.47|?>>
    <associate|vector space trivial|<tuple|11.50|?>>
    <associate|vector spaces product of vector spaces|<tuple|11.62|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i=0><rsup|n>x<rsub|i>>>|<pageref|auto-5>>

      <tuple|<tuple|permutation>|<pageref|auto-8>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\>>>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|S<rsub|I>>>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|i\<leftrightarrowlim\><rsub|I>>j>|<pageref|auto-11>>

      <tuple|<tuple|vector space>|<pageref|auto-15>>

      <tuple|<tuple|complex vector space>|<pageref|auto-17>>

      <tuple|<tuple|real vector space>|<pageref|auto-18>>

      <tuple|<tuple|independent family of vectors>|<pageref|auto-26>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Linear
      Algebra> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      11.1<space|2spc>Sums and products <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|11.1.1<space|2spc>Definition and properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|11.1.2<space|2spc>Associativity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|11.1.3<space|2spc>Commutativity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|11.1.4<space|2spc>Generalized sum
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      11.2<space|2spc>Vector spaces \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      <with|par-left|<quote|1tab>|11.2.1<space|2spc>Definition
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|11.2.2<space|2spc>Examples of vector spaces
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      11.3<space|2spc>Basis of a vector space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      <with|par-left|<quote|1tab>|11.3.1<space|2spc>Finite sums on a vector
      space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|11.3.2<space|2spc>Sum of families with
      finite support <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|11.3.3<space|2spc>Linear (in)dependency and
      span <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|2tab>|11.3.3.1<space|2spc>Linear combination and
      span <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|11.3.3.2<space|2spc>Linear (in)dependent
      sets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|11.3.3.3<space|2spc>Linear in(dependent)
      families <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|11.3.4<space|2spc>Basis of a vector space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|2tab>|11.3.4.1<space|2spc>Basis
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|2tab>|11.3.4.2<space|2spc>Dimension of a vector
      space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      11.4<space|2spc>Linear mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      11.5<space|2spc>Multilinear mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>

      11.6<space|2spc>Deteminant Functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>
    </associate>
  </collection>
</auxiliary>
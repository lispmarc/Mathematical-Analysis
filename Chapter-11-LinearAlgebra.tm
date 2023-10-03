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
    <label|sum generalized sum>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group with neutral element <math|0>, <math|I> a finite
    set and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> then we define
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

  <subsection|Linear (in)dependency>

  <subsubsection|Span of a set>

  <\definition>
    <label|linear combination>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then <math|v\<in\>V> is a linear combination of
    <math|W> if there exists a finite set <math|I\<subseteq\>W> and a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> such
    that\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i
    </equation*>
  </definition>

  In the above the index set is not ordered, it will be usefull for induction
  arguments later, to use as index sets, sets of the form
  <math|<around*|{|1,\<ldots\>,n|}>> [if <math|n=0> then
  <math|<around*|{|1,\<ldots\>,n|}>=\<varnothing\>>] and families
  <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
  instead of a finite set of vectors. We have to be careful, for there could
  be <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with <math|i\<neq\>j> such
  that <math|v<rsub|i>=v<rsub|j>> resulting in extra terms in the sum. To
  solve this we introduce that concept of ordered families and disjoint
  families.\ 

  <\definition>
    <label|linear family finite><dueto|Ordered Family>A family of the form
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X>
    where <math|n\<in\>\<bbb-N\><rsub|0>> is called a
    <with|font-series|bold|ordered family>.
  </definition>

  <\example>
    If <math|n=0> then <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X>
    is a ordered family where

    <\equation*>
      <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X=<around*|{|\<varnothing\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>X
    </equation*>
  </example>

  <\proof>
    If <math|n=0> then <math|<around*|{|1,\<ldots\>,n|}>=<around*|{|1,\<ldots\>,0|}>=\<varnothing\>>
    and we have by [example: <reference|family empty family>] that\ 

    <\equation*>
      <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X=<around*|{|\<varnothing\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>X
    </equation*>

    \;
  </proof>

  Remember that a family <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X>
  is actually the same as the function <math|x:I\<rightarrow\>X> [see
  definition: <reference|family>]. Then we have the concept of disjoint
  families where the defining function is a injection.\ 

  <\definition>
    <label|linear family disjoint><dueto|Disjoint Family>A family
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> is
    <with|font-series|bold|disjoint> if <math|x:I\<rightarrow\>X> is a
    injection or equivalently, as <math|x<rsub|i>\<equallim\><rsub|notation>x<around*|(|i|)>>,
    \ <math|\<forall\>i,j\<in\>I> with <math|x<rsub|i>=x<rsub|j>> we have
    <math|i=j>.
  </definition>

  <\theorem>
    <label|disjoint family property>Let <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    be a disjoint family and <math|k\<in\>I> then

    <\equation*>
      <around*|{|v<rsub|i>\|i\<in\>I\\<around*|{|k|}>|}>=<around*|{|v<rsub|i>\|i\<in\>I|}>\\<around*|{|v<rsub|k>|}>
    </equation*>
  </theorem>

  <\proof>
    If <math|v\<in\><around*|{|v<rsub|i>\|i\<in\>I\\<around*|{|k|}>|}>> then
    <math|\<exists\>i\<in\>I\\<around*|{|k|}>> such that <math|v=x<rsub|i>>.
    Assume that <math|v=x<rsub|k>> then <math|x<rsub|i>=x<rsub|k>> hence
    <math|i=k> contradicting <math|i\<in\>I\\<around*|{|k|}>> so
    <math|x\<neq\>v<rsub|k>> which, as <math|i\<in\>I>, proves that
    <math|x\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>\\<around*|{|v<rsub|k>|}>>
    or\ 

    <\equation*>
      <around*|{|v<rsub|i>\|i\<in\>I\\<around*|{|k|}>|}>\<subseteq\><around*|{|v<rsub|i>\|i\<in\>I|}>\\<around*|{|v<rsub|k>|}>
    </equation*>

    \ On the other hand if <math|x\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>\\<around*|{|v<rsub|k>|}>>
    then <math|x\<neq\>v<rsub|k>> and <math|\<exists\>i\<in\>I> such that
    <math|x=v<rsub|i>>, so we must have <math|i\<neq\>k>, proving that
    <math|x=x<rsub|i>\<in\><around*|{|v<rsub|i>\|i\<in\>I\\<around*|{|k|}>|}>>.
    Hence\ 

    <\equation*>
      <around*|{|v<rsub|i>\|i\<in\>I|}>\\<around*|{|v<rsub|k>|}>\<subseteq\><around*|{|v<rsub|i>\|i\<in\>I\\<around*|{|k|}>|}>
    </equation*>
  </proof>

  <\theorem>
    <label|linear ordered family is finite>If
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X>
    is a ordered family then <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    is finite.
  </theorem>

  <\proof>
    As <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X>
    is actully the function <math|x:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>X>
    we have that\ 

    <\equation*>
      x:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>x<around*|(|<around*|{|1,\<ldots\>,n|}>|)>=<around*|{|x<around*|(|i|)>\|i\<in\>I|}>=<around*|{|x<rsub|i>\|i\<in\>I|}><text|
      is a surjection>
    </equation*>

    So by [theorem: <reference|surjection f:A-\<gtr\>B if A is finite then B
    is finite>] <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    is finite.
  </proof>

  We have the following characterization of a finite set in terms of
  families.

  <\theorem>
    <label|linear finite set>Let <math|X> be a set then\ 

    <\equation*>
      X<text| is finite>
    </equation*>

    <\equation*>
      \<Downarrow\>
    </equation*>

    <\equation*>
      <text|There exists a distinct ordered family
      ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X<text|
      such that >X=<around*|{|x<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><text|
      where >n=card<around*|(|X|)>
    </equation*>
  </theorem>

  <\proof>
    \ If <math|X> is finite we have by [theorems: <reference|complex finite
    set condition>,<reference|complex cardinality alternative>] \ that there
    exists a <math|k\<in\>\<bbb-N\><rsub|0>> and a bijection

    <\equation*>
      x:<around*|{|1,\<ldots\>,k|}>\<rightarrow\>X
    </equation*>

    so that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>X>
    is a ordered <with|font-series|bold|disjoint> family. Further by
    surjectivity we have <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>=x<around*|(|<around*|{|1,\<ldots\>,k|}>|)>=X>.
  </proof>

  <\theorem>
    <label|linear combination (1)>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|W\<subseteq\>V> a finite set and <math|v\<in\>V> such that there
    exists a ordered family [not necessary distinct]
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that

    <\equation*>
      v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>
    </equation*>

    then there exists a <math|<around*|{|\<beta\><rsub|w>|}><rsub|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>\<subseteq\>F>
    such that\ 

    <\equation*>
      v=<big|sum><rsub|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>\<beta\><rsub|w>\<cdot\>w
    </equation*>
  </theorem>

  <\proof>
    By [theorem: <reference|linear ordered family is finite>] we have that\ 

    <\equation>
      <label|eq 11.15.090><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><text|
      is finite>
    </equation>

    Let <math|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    and define <math|I<rsub|w>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|w<rsub|i>=w|}>>.
    Then if <math|j\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|w<rsub|j>\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    so that for <math|w=w<rsub|j>> we have <math|j\<in\>I<rsub|w>> proving
    that <math|<around*|{|1,\<ldots\>,n|}>\<subseteq\><big|cup><rsub|w\<in\><around*|{|w<rsub|i0\|i\<in\><around*|{|1,\<ldots\>,n|}>>|}>>I<rsub|w>>.
    Further as <math|I<rsub|w>\<subseteq\><around*|{|1,\<ldots\>,n|}>> it
    follows that <math|<big|cup><rsub|w\<in\><around*|{|w<rsub|i0\|i\<in\><around*|{|1,\<ldots\>,n|}>>|}>>I<rsub|w>\<subseteq\><around*|{|1,\<ldots\>,n|}>>.
    Hence we have\ 

    <\equation>
      <label|eq 11.16.090><around*|{|1,\<ldots\>,n|}>=<big|cup><rsub|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>I<rsub|w>
    </equation>

    Let <math|w,u\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    with <math|w\<neq\>vu>. If <math|k\<in\>I<rsub|w><big|cap>I<rsub|u>> then
    <math|w=w<rsub|k>=u> contradicting <math|w\<neq\>u>, hence we have\ 

    <\equation>
      <label|eq 11.17.090>\<forall\>w,u\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><text|
      with >w\<neq\>u<text| we have >I<rsub|w><big|cap>I<rsub|u>=\<varnothing\>
    </equation>

    Define now\ 

    <\equation>
      <label|eq 11.18.090><around*|{|\<beta\><rsub|w>|}><rsub|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>\<subseteq\>F<text|
      by >\<beta\><rsub|w>=<big|sum><rsub|i\<in\>I<rsub|w>>\<alpha\><rsub|i>
    </equation>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|v>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets (1)>] and [eqs: <reference|eq
      11.15.090>, <reference|eq 11.16.090>, <reference|eq
      11.17.090>]>>>|<cell|<big|sum><rsub|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>><around*|(|<big|sum><rsub|i\<in\>I<rsub|w>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i\<in\>I<rsub|w>\<Rightarrow\>w<rsub|i>=w>>|<cell|<big|sum><rsub|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>><around*|(|<big|sum><rsub|i\<in\>I<rsub|w>>\<alpha\><rsub|i>\<cdot\>w|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (2)>]>>>|<cell|<big|sum><rsub|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>><around*|(|<around*|(|<big|sum><rsub|i\<in\>I<rsub|w>>\<alpha\><rsub|i>|)>\<cdot\>w|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|eq 11.18.090>]>>>|<cell|<big|sum><rsub|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>\<beta\><rsub|w>\<cdot\>w>>>>
    </eqnarray*>
  </proof>

  We have also a stronger opposite of the above theorem.

  <\theorem>
    <label|linear combination (2)>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|W\<subseteq\>V> a finite set and <math|v\<in\>V> such that there
    exists a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F>
    such that\ 

    <\equation*>
      v=<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u
    </equation*>

    then there exists a ordered distinct family
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    satisfying <math|W=<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    where <math|n=card<around*|(|W|)>> and a
    <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that\ 

    <\equation*>
      <around*|{|\<beta\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|\<alpha\><rsub|w>\|w\<in\>W|}><text|
      and ><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w
    </equation*>
  </theorem>

  <\proof>
    As <math|W> is finite we have by [theorems: <reference|complex
    cardinality alternative>] that for <math|n=card<around*|(|W|)>> there
    exists a bijection\ 

    <\equation*>
      w:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>W
    </equation*>

    defining the ordered distinct family <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    such that

    <\equation*>
      W=w<around*|(|<around*|{|1,\<ldots\>,n|}>|)>=<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>
    </equation*>

    Define then\ 

    <\equation*>
      <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      by >\<beta\><rsub|i>=\<alpha\><rsub|w<around*|(|i|)>>
    </equation*>

    If <math|x\<in\><around*|{|\<beta\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    then there exists a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x=\<beta\><rsub|i>=\<alpha\><rsub|w<around*|(|i|)>>> proving that
    <math|x\<in\><around*|{|\<alpha\><rsub|w>\|w\<in\>W|}>>. On the other
    hand if <math|x\<in\><around*|{|\<alpha\><rsub|w>\|w\<in\>W|}>> then
    there exists a <math|w\<in\>W> such that <math|x=\<alpha\><rsub|w>> then
    we have by surjectivity a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such
    that <math|w=w<around*|(|i|)>> hence <math|x=\<alpha\><rsub|w<around*|(|i|)>>=\<beta\><rsub|i>\<in\><around*|{|\<beta\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><rsub|>>.
    So we have\ 

    <\equation*>
      <around*|{|\<beta\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|\<alpha\><rsub|w>\|w\<in\>W|}>
    </equation*>

    Further we have

    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|w<around*|(|i|)>>\<cdot\>w<around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w>>>>
    </eqnarray*>
  </proof>

  The set of all linear combinations of a set is called the span of the set.

  <\definition>
    <label|linear span>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then\ 

    <\equation*>
      span<around*|(|W|)>=<around*|{|v\<in\>V\|\<exists\><around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>I>\<subseteq\>F<text|,
      <math|I> finite and <math|I\<subseteq\>W> such that
      >v=<big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w<rsub|>|}>
    </equation*>
  </definition>

  <\example>
    <label|linear span of empty set>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|span<around*|(|\<varnothing\>|)>=<around*|{|0|}>>
  </example>

  <\proof>
    Let <math|v\<in\>span<around*|(|\<varnothing\>|)>> then there exists a
    finite <math|I\<subseteq\>\<varnothing\>\<Rightarrow\>I=\<varnothing\>>
    and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>F>
    such that\ 

    <\equation*>
      v=<big|sum><rsub|w\<in\>\<varnothing\>>\<alpha\><rsub|w>\<cdot\>w\<equallim\><rsub|<text|[definition:
      <reference|sum generalized sum>]>>0
    </equation*>

    proving that\ 

    <\equation*>
      span<around*|(|\<varnothing\>|)>=0
    </equation*>
  </proof>

  <\theorem>
    <label|linear span equivalence 0>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then\ 

    <\equation*>
      v\<in\>span<around*|(|W|)>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      <text|There exists a finite >I\<subseteq\>W<text| and a
      ><around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>I>\<subseteq\>F\\<around*|{|0|}><text|
      such that >v=<big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|v\<in\>span<around*|(|W|)>> there
      exist by definition a <math|J\<subseteq\>W> and a
      <math|<around*|{|\<beta\><rsub|w>|}><rsub|w\<in\>J>\<subseteq\>F> such
      that\ 

      <\equation*>
        v=<big|sum><rsub|w\<in\>J>\<alpha\><rsub|w>\<cdot\>w
      </equation*>

      Let <math|I=<around*|{|w\<in\>J\|\<alpha\><rsub|w>\<neq\>0|}>> and
      define <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>I>\<subseteq\>F\\<around*|{|0|}>>
      by <math|\<alpha\><rsub|w>=\<beta\><rsub|w>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v>|<cell|=>|<cell|<big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|w\<in\>J\\I>\<beta\><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>J\\I>0\<cdot\>w+<big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>J>\<alpha\><rsub|w>\<cdot\>w>>>>
      </eqnarray*>

      <item*|<math|\<Leftarrow\>>>As <math|F\\<around*|{|0|}>\<subseteq\>F>
      this follows from the definition of <math|span<around*|(|W|)>>.
    </description>

    \;
  </proof>

  <\theorem>
    <label|linear span equivalence 1>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then\ 

    <\equation*>
      v\<in\>span<around*|(|W|)>
    </equation*>

    <\equation*>
      \<Downarrow\>
    </equation*>

    <\equation*>
      \<exists\><around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W<text|
      a distinct family and ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F\\<around*|{|0|}><text|
      such that >v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>
    </equation*>
  </theorem>

  and we have\ 

  <\equation*>
    \<exists\><around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W<text|
    and ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
    such that >v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>
  </equation*>

  <\equation*>
    \<Downarrow\>
  </equation*>

  <\equation*>
    v\<in\>span<around*|(|W|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|v\<in\>span<around*|(|W|)>> then
      there exists a finite <math|I\<subseteq\>W> and a
      <math|<around*|{|\<beta\><rsub|w>|}><rsub|w\<in\>I>\<subseteq\>F> such
      that <math|v=<big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w>.
      Define <math|J=<around*|{|w\<in\>I\|\<beta\><rsub|w>\<neq\>0|}>\<subseteq\>I>
      then we have for <math|<around*|{|\<beta\><rsub|w>|}><rsub|w\<in\>J>\<subseteq\>F\\<around*|{|0|}>>
      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v>|<cell|=>|<cell|<big|sum><rsub|w\<in\>I>\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|w\<in\>I\\J>\<beta\><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>I\\J>0\<cdot\>w+<big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w>>>>
      </eqnarray*>

      \ Using [theorem: <reference|linear combination (2)>] there exists a
      ordered distinct family <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>J\<subseteq\>W>
      and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      such that <math|0\<nin\><around*|{|\<beta\><rsub|w>\|w\<in\>J|}>=<around*|{|\<alpha\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      so that <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F\\<around*|{|0|}>>
      and <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>=<big|sum><rsub|w\<in\>I>\<beta\><rsub|w>\<cdot\>w=v>.\ 

      <item*|<math|\<Leftarrow\>>>Assume that
      <math|\<exists\><around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W<text|
      a distinct family and ><around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      such that >v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>.
      Using [theorem: <reference|linear ordered family is finite>]
      <math|I=<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>> is
      finite, <math|I\<subseteq\>W> and using [theorem: <reference|linear
      combination (1)>] there exists a <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>I>\<subseteq\>F>
      such that <math|v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>=<big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w>
      proving that <math|v\<in\>span<around*|(|W|)>>
    </description>
  </proof>

  <\theorem>
    <label|linear span contains set>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then\ 

    <\equation*>
      W\<subseteq\>span<around*|(|W|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|w\<in\>W> then <math|<around*|{|w|}>> is finite and
    <math|<around*|{|w|}>\<subseteq\>W>. Define
    <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|w|}>>> by
    <math|\<alpha\><rsub|u>=1> then\ 

    <\equation*>
      <big|sum><rsub|u\<in\><around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u\<equallim\><rsub|<text|[theorem:
      <reference|sum general single>]>>\<alpha\><rsub|w>\<cdot\>w=1\<cdot\>w=w
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|linear span subsets>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|U,W\<subseteq\>V> with <math|U\<subseteq\>W> then\ 

    <\equation*>
      span<around*|(|U|)>\<subseteq\>span<around*|(|W|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|v\<in\>span<around*|(|U|)>> then there exists a finite
    <math|I\<subseteq\>U> and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    such that\ 

    <math|v=<big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w>. As
    <math|U\<subseteq\>W> we have <math|I\<subseteq\>W> so that
    <math|v\<in\>span<around*|(|W|)>>.
  </proof>

  <\theorem>
    <label|linear span is a sub-space>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then\ 

    <\equation*>
      span<around*|(|W|)><text| is a sub-space of
      ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>
    </equation*>
  </theorem>

  <\proof>
    As <math|\<varnothing\>\<subseteq\>W> we have
    <math|<around*|{|0|}>\<equallim\><rsub|<text|[example: <reference|linear
    span of empty set>]>>span<around*|(|\<varnothing\>|)>\<subseteq\><rsub|<text|[theorem:
    <reference|linear span subsets>]>>span<around*|(|W|)>> proving that\ 

    <\equation*>
      0\<in\>W<text| hence >W\<neq\>\<varnothing\>
    </equation*>

    Let <math|x,y\<in\>span<around*|(|W|)>> and
    <math|\<alpha\>,\<beta\>\<in\>F> then there exists finite
    <math|I,J\<subseteq\>W> and <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>I>\<subseteq\>F>,
    <math|<around*|{|\<beta\><rsub|w>|}><rsub|w\<in\>J>\<subseteq\>F> such
    that\ 

    <\equation*>
      x=<big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w<text| and
      >y=<big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w
    </equation*>

    As <math|I,J>are finite we have by [theorem: <reference|union of two
    finite sets is finite>] that <math|K=I<big|cup>J=<around*|(|I\\J|)><big|cup><around*|(|I<big|cap>J|)><big|cup><around*|(|J\\I|)>>
    is finite. Define

    <\equation*>
      <around*|{|\<gamma\><rsub|w>|}><rsub|w\<in\>K>\<subseteq\>F<text| by
      >\<gamma\><rsub|w>=<choice|<tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<alpha\><rsub|w><text|
      if >w\<in\>I\\J>>|<row|<cell|\<alpha\>\<cdot\>\<alpha\><rsub|w>+\<beta\>\<cdot\>\<beta\><rsub|w><text|
      if >w\<in\>I<big|cap>J>>|<row|<cell|\<beta\>\<cdot\>\<beta\><rsub|w><text|
      if >w\<in\>J\\I>>>>>
    </equation*>

    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|w\<in\>K>\<gamma\><rsub|w>\<cdot\>w>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|w\<in\>I\\J>\<gamma\><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\>I<big|cap>J>\<gamma\><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\>J\\I>\<gamma\><rsub|w>\<cdot\>w>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|w\<in\>I\\J><around*|(|\<alpha\>\<cdot\>\<alpha\><rsub|w>|)>\<cdot\>w+<big|sum><rsub|w\<in\>I<big|cap>J><around*|(|\<alpha\>\<cdot\>\<alpha\><rsub|w>+\<beta\>\<cdot\>\<beta\><rsub|w>|)>\<cdot\>w+<big|sum><rsub|w\<in\>J\\I><around*|(|\<beta\>\<cdot\>\<beta\><rsub|w>|)>\<cdot\>w>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|w\<in\>I\\J>\<alpha\>\<cdot\><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>+<big|sum><rsub|w\<in\>I<big|cap>J><around*|(|\<alpha\>\<cdot\><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>+\<beta\>\<cdot\><around*|(|\<beta\><rsub|w>\<cdot\>w|)>|)>+<big|sum><rsub|w\<in\>J\\I>\<beta\>\<cdot\><around*|(|\<beta\><rsub|w>\<cdot\>w|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (1)>]>>>|<cell|>>|<row|<cell|\<alpha\>\<cdot\><big|sum><rsub|w\<in\>I\\J>\<alpha\><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\>I<big|cap>J><around*|(|\<alpha\>\<cdot\><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>+\<beta\>\<cdot\><around*|(|\<beta\><rsub|w>\<cdot\>w|)>|)>+\<beta\>\<cdot\><big|sum><rsub|w\<in\>J\\I>\<beta\><rsub|w>\<cdot\>w>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of sums (2)>]>>>|<cell|>>|<row|<cell|\<alpha\>\<cdot\><big|sum><rsub|w\<in\>I\\J>\<alpha\><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\>I<big|cap>J>\<alpha\>\<cdot\><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\>\<cdot\><around*|(|\<beta\><rsub|w>\<cdot\>w|)>+\<beta\>\<cdot\><big|sum><rsub|w\<in\>J\\I>\<beta\><rsub|w>\<cdot\>w>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (1)>]>>>|<cell|>>|<row|<cell|\<alpha\>\<cdot\><big|sum><rsub|w\<in\>I\\J>\<alpha\><rsub|w>\<cdot\>w+\<alpha\>\<cdot\><big|sum><rsub|w\<in\>I<big|cap>J>\<alpha\><rsub|w>\<cdot\>w+\<beta\>\<cdot\><big|sum><rsub|i\<in\>I<big|cap>J><around*|\<nobracket\>|\<beta\><rsub|w>\<cdot\>w|)>+\<beta\>\<cdot\><big|sum><rsub|w\<in\>J\\I>\<beta\><rsub|w>\<cdot\>w>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\><around*|(|<big|sum><rsub|w\<in\>I\\J>\<alpha\><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\>I<big|cap>J>\<alpha\><rsub|w>\<cdot\>w|)>+\<beta\>\<cdot\><around*|(|<big|sum><rsub|w\<in\>J\\I>\<beta\><rsub|w>\<cdot\>w+<big|sum><rsub|i\<in\>I<big|cap>J><around*|\<nobracket\>|\<beta\><rsub|w>\<cdot\>w|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|\<alpha\>\<cdot\><big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w+\<beta\>\<cdot\><big|sum><rsub|w\<in\>J>\<beta\><rsub|w>\<cdot\>w>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<alpha\>\<cdot\>x+\<beta\>\<cdot\>y\<in\>span<around*|(|W|)>
    </equation*>

    Hence by [definition: <reference|vector space subspace>] it follows that
    <math|span<around*|(|W|)>> is a sub-space of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
  </proof>

  <\theorem>
    <label|linear span properties>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> as sub-space of <math|V> then

    <\equation*>
      W=span<around*|(|W|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|v\<in\>span<around*|(|W|)>> then there exists a finite
    <math|I\<subseteq\>W> and <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>I>\<subseteq\>F>
    such that

    <\equation*>
      v=<big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w
    </equation*>

    As <math|W> is a sub-space we have <math|\<forall\>w\<in\>I> that
    <math|\<alpha\><rsub|w>\<cdot\>w\<in\>w>, by [theorem: <reference|vector
    space finite sum (4)>] it follows then that
    <math|v=<big|sum><rsub|w\<in\>I>\<alpha\><rsub|w>\<cdot\>w\<in\>W>. Hence
    <math|span<around*|(|W|)>\<subseteq\>W> which together with [theorem:
    <reference|linear span contains set>] proves\ 

    <\equation*>
      W=span<around*|(|W|)>
    </equation*>
  </proof>

  <\corollary>
    <label|linear span of span>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then\ 

    <\equation*>
      span<around*|(|W|)>=span<around*|(|span<around*|(|W|)>|)>
    </equation*>
  </corollary>

  <\proof>
    By [theorem: <reference|linear span is a sub-space>]
    <math|span<around*|(|W|)>> is a sub-space of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>, hence using
    [theorem: <reference|linear span of span>] we have that\ 

    <\equation*>
      span<around*|(|W|)>=span<around*|(|span<around*|(|w|)>|)>
    </equation*>
  </proof>

  <\theorem>
    <label|linear span extending a set without changing its span>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|W\<subseteq\>V> and <math|w\<in\>span<around*|(|W|)>> then\ 

    <\equation*>
      span<around*|(|W|)>=span<around*|(|W<big|cup><around*|{|w|}>|)>
    </equation*>
  </theorem>

  <\proof>
    For <math|w\<in\>span<around*|(|W|)>> we have either:

    <\description>
      <item*|<math|w\<in\>W>>Then <math|W=W<big|cup><around*|{|w|}>> so that
      <math|span<around*|(|W|)>=span<around*|(|W<big|cup><around*|{|w|}>|)>>

      <item*|<math|w\<nin\>W>>Then as <math|w\<in\>span<around*|(|W|)>> there
      exists a finite <math|I\<subseteq\>W> and a
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> such
      that\ 

      <\equation>
        <label|eq 11.19.090>w=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u
      </equation>

      Let <math|v\<in\>span<around*|(|W<big|cup><around*|{|w|}>|)>> then
      there exists a finite <math|J\<subseteq\>W<big|cup><around*|{|w|}>> and
      <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>J>\<subseteq\>F> such
      that

      <\equation>
        <label|eq 11.20.090>v=<big|sum><rsub|u\<in\>J>\<beta\><rsub|u>\<cdot\>u
      </equation>

      For <math|J> we have either:\ 

      <\description>
        <item*|<math|w\<nin\>J>>Then <math|J\<subseteq\>W> so that
        <math|v\<in\>span<around*|(|W|)>>

        <item*|<math|w\<in\>J>>Take then the finite set
        <math|K=<around*|(|I<big|cup>J|)>\\<around*|{|u|}>>then, as
        <math|I,J\<subseteq\>W\<Rightarrow\>I<big|cup>J\<subseteq\>W,> we
        have <math|K\<subseteq\>W>. Furhter

        <\eqnarray*>
          <tformat|<table|<row|<cell|K>|<cell|=>|<cell|<around*|(|I<big|cup>J|)>\\<around*|{|w|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|I\\J|)><big|cup><around*|(|I<big|cap>J|)><big|cup><around*|(|J\\I|)>|)>\|<around*|{|w|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|I\\J|)>\\<around*|{|w|}>|)><big|cup><around*|(|<around*|(|I<big|cap>J|)>\\<around*|{|w|}>|)><big|cup><around*|(|<around*|(|J\\I|)>\\<around*|{|w|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|w\<nin\>W\<Rightarrow\>w\<nin\>I>>|<cell|<around*|(|I\\J|)><big|cup><around*|(|I<big|cap>J|)><big|cup><around*|(|<around*|(|J\\I|)>\\<around*|{|w|}>|)><eq-number><label|eq
          11.21.090>>>>>
        </eqnarray*>

        and we have\ 

        <\equation>
          <label|eq 11.22.090><around*|(|I\\J|)><big|cap><around*|(|I<big|cap>J|)>=\<varnothing\>\<wedge\><around*|(|I\\J|)><big|cap><around*|(|<around*|(|J\\I|)>\\<around*|{|w|}>|)>=\<varnothing\>\<wedge\><around*|(|I<big|cap>J|)><big|cap><around*|(|<around*|(|J\\I|)>\\<around*|{|w|}>|)>=\<varnothing\>
        </equation>

        Define now\ 

        <\equation*>
          <around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>K>\<subseteq\>F<text|
          by >\<gamma\><rsub|u>=<choice|<tformat|<table|<row|<cell|\<beta\><rsub|u><text|
          if >u\<in\><around*|(|<around*|(|J\\I|)>\\<around*|{|w|}>|)>>>|<row|<cell|\<beta\><rsub|w>\<cdot\>\<alpha\><rsub|u>+\<beta\><rsub|u><text|
          if >u\<in\>I<big|cap>J>>|<row|<cell|\<beta\><rsub|w>\<cdot\>\<alpha\><rsub|u><text|
          if >u\<in\>I\\J>>>>>
        </equation*>

        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>K>\<gamma\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|u\<in\>I\\J>\<gamma\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>I<big|cap>J>\<gamma\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|u|}>>\<gamma\><rsub|u>\<cdot\>u>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|u\<in\>I\\J><around*|(|\<beta\><rsub|w>\<cdot\>\<alpha\><rsub|u>|)>\<cdot\>u+<big|sum><rsub|u\<in\>I<big|cap>J><around*|(|\<beta\><rsub|w>\<cdot\>\<alpha\><rsub|u>+\<beta\><rsub|u>|)>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|u\<in\>I\\J>\<beta\><rsub|w>\<cdot\><around*|(|\<alpha\><rsub|u>\<cdot\>u|)>+<big|sum><rsub|u\<in\>I<big|cap>J><around*|(|\<beta\><rsub|w>\<cdot\><around*|(|u\<cdot\>\<alpha\><rsub|u>|)>+\<beta\><rsub|u>\<cdot\>u|)>+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|vector space finite sum
          (1)>]>>>|<cell|>>|<row|<cell|\<beta\><rsub|w>\<cdot\><big|sum><rsub|u\<in\>I\\J>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>I<big|cap>J><around*|(|\<beta\><rsub|w>\<cdot\><around*|(|u\<cdot\>\<alpha\><rsub|u>|)>+\<beta\><rsub|u>\<cdot\>u|)>+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum of sums (2)>]>>>|<cell|>>|<row|<cell|\<beta\><rsub|w>\<cdot\><big|sum><rsub|u\<in\>I\\J>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>I<big|cap>J>\<beta\><rsub|w>\<cdot\><around*|(|u\<cdot\>\<alpha\><rsub|u>|)>+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|vector space finite sum
          (1)>]>>>|<cell|>>|<row|<cell|\<beta\><rsub|w>\<cdot\><big|sum><rsub|u\<in\>I\\J>\<alpha\><rsub|u>\<cdot\>u+\<beta\><rsub|w>\<cdot\><big|sum><rsub|u\<in\>I<big|cap>J>u\<cdot\>\<alpha\><rsub|u>+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|=>|<cell|>>|<row|<cell|\<beta\><rsub|w>\<cdot\><around*|(|<big|sum><rsub|u\<in\>I\\J>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>I<big|cap>J>u\<cdot\>\<alpha\><rsub|u>|)>+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|\<beta\><rsub|w>\<cdot\><big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<around*|[|eq:<reference|eq
          11.19.090>|]>>>|<cell|>>|<row|<cell|\<beta\><rsub|w>\<cdot\>w+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|w\<nin\>I<big|cap>J>>|<cell|>>|<row|<cell|\<beta\><rsub|w>\<cdot\>w+<big|sum><rsub|i\<in\><around*|(|I<big|cap>J|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|J\\I|)>\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|\<beta\><rsub|w>\<cdot\>w+<big|sum><rsub|i\<in\>J\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum general single>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|i\<in\>J\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>J>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 11.20.090>]>>>|<cell|>>|<row|<cell|v>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving, as <math|K\<subseteq\>W>, that
        <math|v\<in\>span<around*|(|W|)>>.
      </description>

      So in all cases we have <math|v\<in\>span<around*|(|W|)>> proving that
      <math|span<around*|(|W<big|cup><around*|{|w|}>|)>\<subseteq\>span<around*|(|W|)>>.
      As further <math|W\<subseteq\>W<big|cup><around*|{|w|}>> we have by
      [theorem: <reference|linear span subsets>] that
      <math|span<around*|(|W|)>\<subseteq\>span<around*|(|W<big|cup><around*|{|w|}>|)>>
      proving that <math|span<around*|(|W|)>=span<around*|(|W<big|cup><around*|{|w|}>|)>>.
    </description>

    So in all cases we have\ 

    <\equation*>
      span<around*|(|W|)>=span<around*|(|W<big|cup><around*|{|w|}>|)>
    </equation*>

    completing the proof.
  </proof>

  <subsubsection|Linear (in)dependent sets>

  <\definition>
    <label|linear dependent set><index|linear dependent set><dueto|Linear
    Dependency>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a
    vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then <math|W> <with|font-series|bold|is linear
    dependent >if there exists a finite <math|I\<subseteq\>W> and a
    <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>I>\<subseteq\>F>
    satisfying <math|\<exists\>w\<in\>I> with
    <math|\<alpha\><rsub|w>\<neq\>0> such that
    <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>
  </definition>

  <\example>
    <label|linear dependent set containing neutral element>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> such that <math|0\<in\>W> then <math|W> is linear
    dependent.
  </example>

  <\proof>
    Take <math|I=<around*|{|0|}>> and <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|0|}>>>
    by <math|\<alpha\><rsub|0>=1> then we have
    <math|<big|sum><rsub|u\<in\><around*|{|0|}>>\<alpha\><rsub|u>\<cdot\>u\<equallim\><rsub|<text|[theorem:
    <reference|sum general single>]>>\<alpha\><rsub|0>\<cdot\>0=0> proving
    that <math|W> is linear dependent.
  </proof>

  <\theorem>
    <label|linear independent set><index|linear independent set><dueto|Linear
    Independence>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a
    vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then <math|W> <with|font-series|bold|is linear
    independent >if <math|W> is <with|font-series|bold|not linear dependent>.
  </theorem>

  We have the following equivalent definition of a linear independent set.

  <\theorem>
    <label|linear independent set alternative>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then\ 

    <\equation*>
      W<text| is linear independent>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      <text|for every finite >I\<subseteq\>W<text| we have
      >\<forall\><around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F<text|
      such that ><big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0<text|
      we have >\<forall\>u\<in\>I<text| >\<alpha\><rsub|u>=0
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|W> is independent we have by
      definiton that <math|W> is not dependent. Hence for every finite
      <math|I\<subseteq\>W> we have for every
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
      satisfying <math|\<exists\>w\<in\>I> with
      <math|\<alpha\><rsub|w>\<neq\>0> that
      <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u\<neq\>0>. So
      if we have a finite <math|I\<subseteq\>W> that satisfies
      <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0> we must
      have <math|\<forall\>u\<in\>I> that <math|\<alpha\><rsub|u>=0>
      otherwise we reach the contradiction that
      <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u\<neq\>0>.

      <item*|<math|\<Leftarrow\>>>Assume that <math|W> is linear dependent.
      Then there exists a finite <math|I\<subseteq\>W> and a
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>W>
      satisfying <math|\<exists\>w\<in\>I> with
      <math|\<alpha\><rsub|w>\<neq\>0> such that
      <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>. Using the
      hypothesis we have then that <math|\<forall\>u\<in\>I> that
      <math|\<alpha\><rsub|u>=0> contradicting <math|\<alpha\><rsub|w>>. So
      we must have that <math|W> is linear independent.
    </description>
  </proof>

  \;

  If <math|W> is finite then we have a simpler definition.

  <\theorem>
    <label|linear independent finite set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> a <with|font-series|bold|finite> set then\ 

    <\equation*>
      W<text| is linear independent >
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\><around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F<text|
      such that ><big|sum><rsub|w\<in\>W>\<alpha\><rsub|u>\<cdot\>u=0<text|
      we have >\<forall\>u\<in\>W<text| we have >\<alpha\><rsub|u>=0
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|W> is finite and
      <math|W\<subseteq\>W> this follows from [theorem: <reference|linear
      independent set alternative>].

      <item*|<math|\<Leftarrow\>>>Let <math|I\<subseteq\>W> be a finite set
      and <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
      saisfying <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>.
      Define

      <\equation*>
        <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F<text| by
        >\<beta\><rsub|u>=<choice|<tformat|<table|<row|<cell|0<text| if
        >u\<in\>W\\I>>|<row|<cell|\<alpha\><rsub|u><text| if >u\<in\>I>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>W>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>W\\I>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>W\\I>0\<cdot\>u+<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      By the hypothesis we have then that <math|\<forall\>u\<in\>W>
      \ <math|\<beta\><rsub|u>=0>, so if <math|u\<in\>I\<subseteq\>w> we have
      <math|\<alpha\><rsub|u>=\<beta\><rsub|u>=0>. Hence we have that
      <math|W> is linear independent.
    </description>
  </proof>

  <\example>
    <label|linear independent empty set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    <math|\<varnothing\>> is linear independent.
  </example>

  <\proof>
    Let <math|I\<subseteq\>\<varnothing\>>, <math|I> a finite set then
    <math|I=\<varnothing\>> so that if <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
    with <math|<big|sum><rsub|u\<in\>\<varnothing\>>\<alpha\><rsub|u>\<cdot\>u>
    we have that <math|\<alpha\><rsub|u>=0><space|1em>is satified vacuously.
  </proof>

  <\example>
    <label|linear independent singleton>Let
    \ <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|v\<in\>V> such that <math|v\<neq\>0> then <math|<around*|{|v|}>> is
    a linear independent set.
  </example>

  <\proof>
    Let <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|v|}>>\<subseteq\>F>
    be such that <math|<big|sum><rsub|u\<in\><around*|{|v|}>>\<alpha\><rsub|u>\<cdot\>u=0>
    then by [theorem: <reference|sum general single>]
    <math|\<alpha\><rsub|v>\<cdot\>v=0>. Assume that
    <math|\<alpha\><rsub|v>\<neq\>0> then
    <math|v=<around*|(|\<alpha\><rsub|v>|)><rsup|-1>\<cdot\><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>=0>
    contradicting <math|v\<neq\>0>. Hence <math|\<alpha\><rsub|v>=0> or
    <math|\<forall\>u\<in\><around*|{|v|}>> <math|\<alpha\><rsub|u>=0>
    proving by [theorem: <reference|linear independent finite set>] that the
    finite set <math|<around*|{|v|}>> is linear dependent.
  </proof>

  Linear dependent sets can also be described as sets where one of the vector
  can be written as a linear combination of some other vectors, this is
  proved in the next theorem.

  <\theorem>
    <label|linear dependent set alternative condition>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then

    <\equation*>
      W<text| is linear dependent>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<exists\>w\<in\>W<text| so that there exists a finite
      >I\<subseteq\>W\\<around*|{|w|}><text| and a
      ><around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F<text| such
      that >w=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|W> is a linear dependent there
      exists a finite <math|J\<subseteq\>W> and a
      <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>J>\<subseteq\>F>
      satsifying that <math|\<exists\>w\<in\>J> with
      <math|\<beta\><rsub|w>=0> so that <math|<big|sum><rsub|u\<in\>J>\<beta\><rsub|u>\<cdot\>u=0>.
      So we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|u\<in\>J>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>J\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|u\<in\>J\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u+\<beta\><rsub|w>\<cdot\>w>>>>
      </eqnarray*>

      proving as <math|\<beta\><rsub|w>\<neq\>0> that

      <\eqnarray*>
        <tformat|<table|<row|<cell|w>|<cell|=>|<cell|<around*|(|\<beta\><rsub|w>|)><rsup|-1>\<cdot\><around*|(|-<big|sum><rsub|u\<in\>J\\<around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of inverses (2)>]>>>|<cell|<around*|(|\<beta\><rsub|w>|)><rsup|-1>\<cdot\><big|sum><rsub|u\<in\>J\\<around*|{|w|}>>-<around*|(|\<beta\><rsub|u>\<cdot\>u|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<beta\><rsub|w>|)><rsup|-1>\<cdot\><big|sum><rsub|u\<in\>J\\<around*|{|w|}>><around*|(|-\<beta\><rsub|u>|)>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|vector space finite sum
        (1)>]>>>|<cell|<big|sum><rsub|u\<in\>J\\<around*|{|w|}>><around*|(|<around*|(|\<beta\><rsub|w>|)><rsup|-1><around*|(|<around*|(|-\<beta\><rsub|u>|)>\<cdot\>u|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>J\\<around*|{|w|}>><around*|(|<around*|(|\<beta\><rsub|w>|)><rsup|-1><around*|(|-\<beta\><rsub|u>|)>|)>\<cdot\>u>>>>
      </eqnarray*>

      So if we define <math|I=J\\<around*|{|w|}>> and
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I><text| by
      >\<beta\><rsub|u>=<around*|(|\<beta\><rsub|w>|)><rsup|-1><around*|(|-\<beta\><rsub|u>|)>>
      then <math|J\<subseteq\>W\\<around*|{|w|}>> and

      <\equation*>
        <big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=w
      </equation*>

      <item*|<math|\<Leftarrow\>>>By the hypothesis there exists a
      <math|w\<in\>W>, a finite <math|I\<subseteq\>W\\<around*|{|w|}>> and a
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> such
      that

      <\equation*>
        w=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u
      </equation*>

      Let <math|J=I<big|cup><around*|{|w|}>> then <math|J> is finite and
      <math|J\<subseteq\>W> and define

      <\equation*>
        <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>J><text| by
        >\<beta\><rsub|u>=<choice|<tformat|<table|<row|<cell|-1<text| if
        u=w>>>|<row|<cell|\<alpha\><rsub|u><text| if >u\<in\>I>>>>>
      </equation*>

      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>J>\<beta\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|w|}>>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u+\<beta\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u+<around*|(|-1|)>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|w+<around*|(|-w|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      which as <math|\<beta\><rsub|w>=-1\<neq\>0> proves that <math|W> is
      linear dependent.
    </description>
  </proof>

  <\theorem>
    <label|linear (in)dependency properties (1)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|U,W\<subseteq\>V> with <math|U\<subseteq\>W> then we have\ 

    <\enumerate>
      <item>If <math|W> is linear independent then <math|U> is is linear
      independent, in other words every subset of a linear independent set is
      linear independent.

      <item>If <math|U> is linear dependent then <math|W> is linear
      dependent, in other words every superset of a linear dependent set is
      linear dependent.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|I\<subseteq\>U> be a finite set then as
      <math|U\<subseteq\>V> we have <math|I\<subseteq\>V>. So if
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> is
      such that <math|<big|sum><rsub|\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0> we
      have as <math|V> is linear independent that <math|\<forall\>u\<in\>I>
      we have <math|\<alpha\><rsub|u>=0>. Hence <math|U> is linear
      independent.

      <item>As <math|U> is linear dependent there exists a finite
      <math|I\<subseteq\>U> and a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
      not all zeroes such that <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>.
      As <math|U\<subseteq\>V> we have <math|I\<subseteq\>V> proving that
      <math|V> is linear dependent.
    </enumerate>
  </proof>

  The following lemma will be important later when we define the concept of a
  dimension.

  <\lemma>
    <label|linear Steinitz lemma><dueto|Steinitz Lemma>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>. Suppose
    that <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    is a ordered disjoint family such that
    <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>> is
    linear independent and <math|T\<subseteq\>V> satisifies
    <math|span<around*|(|T|)>=V>. Then there exists a
    <math|T<rsub|n>\<subseteq\>T> with <math|card<around*|(|T<rsub|n>|)>=n>
    such that

    <\equation*>
      span<around*|(|<around*|(|T\\T<rsub|n>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=V
    </equation*>
  </lemma>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S-<around*|{|k\<in\>\<bbb-N\><rsub|0>\|<text|If
      >0\<leqslant\>k\<leqslant\>n<text| then
      >\<exists\>T<rprime|'><rsub|k>\<subseteq\>T<text| with
      >card<around*|(|T<rprime|'><rsub|k>|)>=k<text| such that
      >span<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>=V|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|0\<in\>S>>Take <math|T<rprime|'><rsub|0>=\<varnothing\>\<subseteq\>T>
      then <math|card<around*|(|T<rprime|'><rsub|0>|)>=0> and\ 

      <\equation*>
        V=span<around*|(|T|)>=span<around*|(|<around*|(|T\\\<varnothing\>|)><big|cup>\<varnothing\>|)>=span<around*|(|<around*|(|T\\T<rprime|'><rsub|0>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,0|}>|}>|)>
      </equation*>

      proving that <math|0\<in\>S>.

      <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>If
      <math|0\<leqslant\>k+1\<leqslant\>n> then <math|k\<less\>n> and as
      <math|k\<in\>S\<subseteq\>\<bbb-N\><rsub|0>> we have
      <math|0\<leqslant\>k> so that <math|0\<leqslant\>k\<less\>n>. Using the
      fact that <math|k\<in\>S> again we have that
      <math|\<exists\>T<rprime|'><rsub|k>\<subseteq\>T> with
      <math|card<around*|(|T<rprime|'><rsub|k>|)>=k> such that
      \ <math|span<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>=V>.
      Define<space|1em>

      <\equation>
        <label|eq 11.23.090>T<rsub|k>=<around*|(|T\\T<rprime|'><rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>
      </equation>

      then we have\ 

      <\equation>
        <label|eq 11.24.090>span<around*|(|T<rsub|k>|)>=V
      </equation>

      As <math|e<rsub|k+1>\<in\>V=span<around*|(|T<rsub|k>|)>> there exists
      by [theorem: <reference|linear span equivalence 0>] a finite
      <math|I\<subseteq\>T<rsub|k>> and a
      <math|<around*|{|\<lambda\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F\\<around*|{|0|}>>
      such that\ 

      <\equation>
        <label|eq 11.25.090>e<rsub|k+1>=<big|sum><rsub|u\<in\>I>\<lambda\><rsub|u><around*|\<nobracket\>|\<cdot\>u|\<nobracket\>>
      </equation>

      As <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>\<subseteq\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      a linear independent set we have by [theorem: <reference|linear
      (in)dependency properties (1)>] that

      <\equation>
        <label|eq 11.26.090><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}><text|
        is linear independent>
      </equation>

      Assume now that <math|I\<subseteq\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>\<equallim\><rsub|<text|[theorem:
      <reference|disjoint family property>]>><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>\\<around*|{|e<rsub|k+1>|}>>
      then from [eq: <reference|eq 11.25.090>] and [theorem:
      <reference|linear dependent set alternative condition>] it follows that
      <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>> is
      linear dependent contradicting [eq: <reference|eq 11.26.090>]. Hence
      <math|I\<nsubseteq\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>>,
      so\ 

      <\equation>
        <label|eq 11.27.090>\<exists\>t\<in\>I<text| with
        >t\<nin\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>
      </equation>

      As <math|t\<in\>I\<subseteq\>T<rsub|k>\<equallim\><rsub|<text|[eq:
      <reference|eq 11.23.090>]>><around*|(|T\\T<rprime|'><rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>>
      we must have that <math|t\<in\>T\\T<rprime|'><rsub|k>> hence
      <math|t\<nin\>T<rprime|'><rsub|k>> and <math|t\<in\>T>. Using
      \ [theorem: <reference|complex cardinality adding element>] it follows
      then that <math|card<around*|(|T<rprime|'><rsub|k><big|cup><around*|{|t|}>|)>=card<around*|(|T<rprime|'><rsub|k>|)>+1=k+1>.
      To summarize we have

      <\equation>
        <label|eq 11.28.090>t\<in\>T<text| and
        >card<around*|(|T<rprime|'><rsub|k+1>|)>=k+1<text| where
        >T<rprime|'><rsub|k+1>=T<rsub|k><big|cup><around*|{|t|}>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|T<rsub|k>\\<around*|{|t|}>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.23.090>]>>>|<cell|<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\\<around*|{|t|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)>\\<around*|{|t|}>|)><big|cup><around*|(|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>\\<around*|{|t|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.27.090>]>>>|<cell|<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)>\\<around*|{|t|}>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class set difference and union ,
        intersection>]>>>|<cell|<around*|(|T\\<around*|(|T<rprime|'><rsub|k><big|cup><around*|{|t|}>|)>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}><eq-number><label|eq
        11.29.090>>>>>
      </eqnarray*>

      Let\ 

      <\equation>
        <label|eq 11.30.090>T<rsub|k+1>=<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>
      </equation>

      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|T<rsub|k+1>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|(|<around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}><big|cup><around*|{|e<rsub|k+1>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)><big|cup><around*|{|e<rsub|k+1>|}>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.28.090>]>>>|<cell|>>|<row|<cell|<around*|(|<around*|(|T\\<around*|(|T<rprime|'><rsub|k><big|cup><around*|{|t|}>|)>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)><big|cup><around*|{|e<rsub|k+1>|}>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|eq 11.29.090>]>>>|<cell|>>|<row|<cell|<around*|(|T<rsub|k>\\<around*|{|t|}>|)><big|cup><around*|{|e<rsub|k+1>|}>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 11.31.090>T<rsub|k+1>=<around*|(|T<rsub|k>\\<around*|{|t|}>|)><big|cup><around*|{|e<rsub|k+1>|}>
      </equation>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|e<rsub|k+1>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.25.090>]>>>|<cell|<big|sum><rsub|u\<in\>I>\<lambda\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|t|}>>\<lambda\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|t|}>>\<lambda\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|t|}>>\<lambda\><rsub|u>\<cdot\>u+\<lambda\><rsub|t>\<cdot\>t<eq-number><label|eq
        11.32.090>>>>>
      </eqnarray*>

      Now for <math|e<rsub|k+1>> we have either:

      <\description>
        <item*|<math|e<rsub|k+1>\<in\>I\\<around*|{|t|}>>>Then by
        <math|<around*|[|eq:<reference|eq 11.32.090>|]>> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|e<rsub|k+1>>|<cell|=>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|t|}>>\<lambda\><rsub|u>\<cdot\>u+\<lambda\><rsub|t>\<cdot\>t>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 11.25.090>]>>>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|t,e<rsub|k+1>|}>>\<lambda\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|e<rsub|k+1>|}>>\<lambda\><rsub|u>\<cdot\>u+\<lambda\><rsub|t>\<cdot\>t>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum general single>]>>>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|t,e<rsub|k+1>|}>>\<lambda\><rsub|u>\<cdot\>u+\<lambda\><rsub|e<rsub|k+1>>\<cdot\>e<rsub|k+1>+\<lambda\><rsub|t>\<cdot\>t>>>>
        </eqnarray*>

        as <math|<around*|{|\<lambda\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F\\<around*|{|0|}>\<Rightarrow\>\<lambda\><rsub|t>\<neq\>0>
        we have\ 

        <\equation>
          <label|eq 11.33.090>t=<around*|(|<around*|(|\<lambda\><rsub|t>|)><rsup|-1\<cdot\>><around*|(|1-\<lambda\><rsub|e<rsub|k+1>>|)>|)>\<cdot\>e<rsub|k+1>-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\><big|sum><rsub|u\<in\>I\\<around*|{|t,e<rsub|k+1>|}>>\<lambda\><rsub|u>\<cdot\>u
        </equation>

        Further for

        <\equation>
          <label|eq 11.34.090>J=<around*|(|I\\<around*|{|t,e<rsub|k+1>|}>|)><big|cup><around*|{|e<rsub|k+1>|}>\<subseteq\><around*|(|T<rsub|k>\\<around*|{|t|}>|)><big|cup><around*|{|e<rsub|k+1>|}>=T<rsub|k+1>
        </equation>

        Then we can define

        <\equation*>
          <around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>J><text| by
          >\<alpha\><rsub|u>=<choice|<tformat|<table|<row|<cell|<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\><around*|(|1-\<lambda\><rsub|e<rsub|k+1>>|)><text|
          if >u=e<rsub|k+1>>>|<row|<cell|<around*|(|-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\>\<lambda\><rsub|u>|)><text|
          if >u\<in\>I\\<around*|{|t,e<rsub|k+1>|}>>>>>>
        </equation*>

        and have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>J>\<alpha\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|t,e<rsub|k+1>|}>>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|e<rsub|k+1>|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum general single>]>>>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|t,e<rsub|k+1>|}>>\<alpha\><rsub|u>\<cdot\>u+\<alpha\><rsub|e<rsub|k+1>>\<cdot\>e<rsub|k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|t,e<rsub|k+1>|}>><around*|(|-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\>\<lambda\><rsub|u>|)>\<cdot\>u+<around*|(|<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\><around*|(|1-\<lambda\><rsub|e<rsub|k+1>>|)>|)>\<cdot\>e<rsub|k+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|vector space finite sum
          (1)>]>>>|<cell|-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\><big|sum><rsub|u\<in\>I\\<around*|{|t,e<rsub|k+1>|}>>\<lambda\><rsub|u>\<cdot\>u+<around*|(|<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\><around*|(|1-\<lambda\><rsub|e<rsub|k+1>>|)>|)>\<cdot\>e<rsub|k+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 11.33.090>]>>>|<cell|t>>>>
        </eqnarray*>

        proving by [eq: <reference|eq 11.34.090>] that
        <math|t\<in\>span<around*|(|T<rsub|k+1>|)>>

        <item*|<math|e<rsub|k+1>\<nin\>I\\<around*|{|t|}>>>Then by [eq:
        <reference|eq 11.32.090>] we have\ 

        <\equation>
          <label|eq 11.35.090>t=<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\>e<rsub|k+1>-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\><big|sum><rsub|u\<in\>I\\<around*|{|t|}>>\<lambda\><rsub|u>\<cdot\>u
        </equation>

        As <math|<around*|(|I\\<around*|{|t|}>|)><big|cap><around*|{|e<rsub|k+1>|}>=\<varnothing\>>
        we can define

        <\equation*>
          J=<around*|(|I\\<around*|{|t|}>|)><big|cup><around*|{|e<rsub|k+1>|}>\<subseteq\><around*|(|T<rsub|k>\\<around*|{|t|}>|)><big|cup><around*|{|e<rsub|k+1>|}>=T<rsub|k+1>
        </equation*>

        <\equation*>
          <around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>J>\<subseteq\>F<text|
          by >\<alpha\><rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|(|\<lambda\><rsub|t>|)><rsup|-1><text|
          if >e<rsub|k+1>>>|<row|<cell|<around*|(|-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>|)>\<cdot\>\<lambda\><rsub|u><text|
          if >u\<in\>T<rsub|k>\\<around*|{|t|}>>>>>>
        </equation*>

        so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>J>\<alpha\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>J\\<around*|{|t|}>>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|e<rsub|k+1>|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum general single>]>>>|<cell|<big|sum><rsub|u\<in\>J\\<around*|{|t|}>>\<alpha\><rsub|u>\<cdot\>u+\<alpha\><rsub|e<rsub|k+1>>\<cdot\>e<rsub|k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>J\\<around*|{|t|}>><around*|(|<around*|(|-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>|)>\<cdot\>\<lambda\><rsub|u>|)>\<cdot\>u+<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\>e<rsub|k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>J\\<around*|{|t|}>><around*|(|-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>|)>\<cdot\><around*|(|\<lambda\><rsub|u>\<cdot\>u|)>+<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\>e<rsub|k+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|vector space finite sum
          (1)>]>>>|<cell|-<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\><big|sum><rsub|u\<in\>I\\<around*|{|t|}>>\<lambda\><rsub|u>\<cdot\>u+<around*|(|\<lambda\><rsub|t>|)><rsup|-1>\<cdot\>e<rsub|k+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 11.35.090>]>>>|<cell|t>>>>
        </eqnarray*>

        proving that <math|t\<in\>span<around*|(|T<rsub|k+1>|)>>.
      </description>

      So in all cases we have <math|t\<in\>span<around*|(|T<rsub|k+1>|)>>
      which by using \ [theorem: <reference|linear span extending a set
      without changing its span>] proves that\ 

      <\equation>
        <label|eq 11.36.90>span<around*|(|T<rsub|k+1><big|cup><around*|{|t|}>|)>=span<around*|(|T<rsub|k+1>|)>
      </equation>

      AS\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|T<rsub|k+1><big|cup><around*|{|t|}>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.31.090>]>>>|<cell|<around*|(|<around*|(|T<rsub|k>\\<around*|{|t|}>|)><big|cup><around*|{|e<rsub|k+1>|}>|)><big|cup><around*|{|t|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|T<rsub|k>\\<around*|{|t|}>|)><big|cup><around*|{|t|}>|)><big|cup><around*|{|e<rsub|k+1>|}>>>|<row|<cell|>|<cell|=>|<cell|T<rsub|k><big|cup><around*|{|e<rsub|k+1>|}>>>|<row|<cell|>|<cell|\<supseteq\>>|<cell|T<rsub|k>>>>>
      </eqnarray*>

      we have by [theorem: <reference|linear span subsets>]

      <\equation*>
        V\<equallim\><rsub|<text|[eq: <reference|eq
        11.24.090>]>>span<around*|(|T<rsub|k>|)>\<leqslant\>span<around*|(|T<rsub|k+1><big|cup><around*|{|t|}>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 11.36.90>]>>span<around*|(|T<rsub|k+1>|)>\<subseteq\>V
      </equation*>

      proving that that\ 

      <\equation*>
        span<around*|(|<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>|)>=span<around*|(|T<rsub|k+1>|)>=V
      </equation*>

      Finally by [eq: <reference|eq 11.28.090>] we have that
      <math|card<around*|(|T<rprime|'><rsub|k+1>|)>=k+1>, <math|t\<in\>T> and
      <math|T<rprime|'><rsub|k+1>=T<rprime|'><rsub|k><big|cup><around*|{|t|}>>
      so that, as <math|T<rprime|'><rsub|k>\<subseteq\>T> and <math|t\<in\>T>
      we have <math|T<rprime|'><rsub|k+1>\<subseteq\>T>, proving that
      <math|k+1\<in\>S> completing the induction step.
    </description>

    Mathematical induction proves then that <math|S=\<bbb-N\><rsub|0>>. So as
    <math|n\<in\><around*|{|1,\<ldots\>,n|}>\<subseteq\>\<bbb-N\><rsub|0>=S>
    we have that there exists a <math|T<rsub|n>\<subseteq\>T> with
    <math|card<around*|(|T<rsub|n>|)>=n> such that
    <math|span<around*|(|<around*|(|T\\T<rsub|n>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=V>.
  </proof>

  <\corollary>
    <label|linear Steinitz (1)>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>.
    Suppose that <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    is a finite disjoint family such that
    <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>> is
    linear independent and there exist a finite <math|T\<subseteq\>V> such
    that <math|span<around*|(|T|)>=V> then
    <math|n\<leqslant\>card<around*|(|T|)>>.
  </corollary>

  <\proof>
    As <math|T> is finite we have by [theorem: <reference|linear finite set>]
    that there exists a disjoint ordered family
    <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>|}>>>
    such that

    <\equation*>
      T=<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>|}>|}>
    </equation*>

    Assume that <math|card<around*|(|T|)>\<less\>n> so that
    <math|card<around*|(|T|)>+1\<leqslant\>n>. As
    <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>|}>|}>\<subseteq\><around*|{|e<rsub|i>\|i\<in\>1,\<ldots\>,n|}>>
    a linear independent set we have by [theorem: <reference|linear
    (in)dependency properties (1)>] that\ 

    <\equation*>
      <around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>|}>|}><text|
      is linear independent>
    </equation*>

    Using the Steinitz lemma [lemma: <reference|linear Steinitz lemma>] there
    exists a <math|T<rsub|n>\<subseteq\>T> with
    <math|card<around*|(|T<rsub|n>|)>=card<around*|(|T|)>> such that

    <\equation*>
      span<around*|(|<around*|(|T\\T<rsub|n>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>|}>|}>|)>=V
    </equation*>

    As <math|T<rsub|n>\<subseteq\>T> and <math|card<around*|(|T<rsub|n>|)>=card<around*|(|T|)>>
    we have by [theorem: <reference|complex cardinality equality and subset>]
    that <math|T<rsub|n>=T> or <math|T\\T<rsub|n>=\<varnothing\>> so that we
    have\ 

    <\equation*>
      span<around*|(|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>|}>|}>|)>=V
    </equation*>

    Hence as <math|e<rsub|card<around*|(|T|)>+1>\<in\>V> there exists a
    finite

    <\equation*>
      I\<subseteq\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>|}>|}>\<equallim\><rsub|<text|[theorem:
      <reference|disjoint family property>]>><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>|}>\\<around*|{|e<rsub|card<around*|(|T|)>+1>|}>
    </equation*>

    and a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>> such that\ 

    <\equation*>
      e<rsub|card<around*|(|T|)>+1>=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u
    </equation*>

    Using [theorem:<reference|linear dependent set alternative condition>] it
    follows then that <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>|}>>
    is linear dependent. By [theorem: <reference|linear (in)dependency
    properties (1)>] and the fact that <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>|}>\<subseteq\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    we reach the conclusion that <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    is linear dependent which contradicts the hypothesis that
    <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>> is
    linear indepenent. Hence we must have that
    <math|n\<leqslant\>card<around*|(|T|)>>.
  </proof>

  <\corollary>
    <label|linear Steinitz (2)>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>.
    Suppose that <math|E\<subseteq\>V> is a linear independent set and
    <math|T\<subseteq\>F> is a finite set such that
    <math|span<around*|(|T|)>=V> then <math|E> is finite.
  </corollary>

  <\proof>
    Assume that <math|E> is infinite then by [theorem: <reference|set
    containing a denumerable set is infinite>] there exists a denumerable set
    <math|E<rprime|'>\<subseteq\>E>. So there exists a bijection\ 

    <\equation*>
      e:\<bbb-N\><rsub|0>\<rightarrow\>E<rprime|'>\<subseteq\>E
    </equation*>

    Define\ 

    <\equation*>
      <around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>>\<subseteq\>V<text|
      by >e<rsub|i>=e<around*|(|i|)>
    </equation*>

    Then <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>>
    with <math|e<rsub|i>=e<rsub|j>> we have
    <math|e<around*|(|i|)>=e<around*|(|j|)>> so that <math|i=j>, hence

    <\equation>
      <label|eq 11.57.084><around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>>\<subseteq\>V<text|
      is a finite disjoint family>
    </equation>

    Further <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>|}>=e<around*|(|<around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>|)>\<subseteq\>E<rprime|'>\<subseteq\>E>
    which as <math|E> is liniear independent proves by [theorem:
    <reference|linear (in)dependency properties (1)>] that\ 

    <\equation>
      <label|eq 11.53.084><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|T|)>+1|}>|}><text|
      is linear independent>
    </equation>

    Using [eqs: <reference|eq 11.57.084>, <reference|eq 11.53.084>] on
    [corollary: <reference|linear Steinitz (1)>] proves that
    <math|card<around*|(|T|)>+1\<leqslant\>card<around*|(|T|)>> a
    contradiction, so <math|E> must be finite.
  </proof>

  <subsection|Basis of a vector space>

  <\definition>
    <label|basis><index|basis of a vector space>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    <math|B\<subseteq\>V> is a basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    if

    <\enumerate>
      <item><math|B> is linear independent

      <item><math|span<around*|(|B|)>=V>
    </enumerate>
  </definition>

  <\note>
    The basis that we define here is sometimes called a Hamel basis in books
    about vector spaces. In a Hamel basis every vector of the vector space is
    a finite linear combination of basis vectors. So we don't have to bother
    with infinite sums and convergence of these sums. Other kind of basis
    represent every vector as a ininite sum or a integral of the basis
    vectors.
  </note>

  <\example>
    <label|basis of trivial vector space>Let
    <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>> be the
    trivial space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|\<varnothing\>> is the only basis for
    <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>
  </example>

  <\proof>
    By [example: <reference|linear span of empty set>] we have
    <math|span<around*|(|\<varnothing\>|)>=<around*|{|0|}>> and by [example:
    <reference|linear independent empty set>] <math|\<varnothing\>> is linear
    indepenendent, proving that\ 

    <\equation*>
      \<varnothing\><text| is a basis for
      <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>>
    </equation*>

    If <math|B> is another basis of <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>
    then <math|B\<subseteq\><around*|{|0|}>>. If <math|B=<around*|{|0|}>>
    then <math|0\<in\>B> so that by [theorem: <reference|linear dependent set
    containing neutral element>] <math|B> is linear dependent contradicting
    linear independency, hence we must have that <math|B=\<varnothing\>>.
  </proof>

  A basis of a vector space allows us to write every vector of the vector
  space as a finite linear combination of vectors in the basis.

  <\theorem>
    <label|basis alternative (1)>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|B\<subseteq\>V> then\ 

    <\equation*>
      B<text| is a basis of ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      <text|<math|\<forall\>v\<in\>V> their exists a >I\<subseteq\>B<text|
      and a <with|font-series|bold|unique>
      ><around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F<text| such
      that >v=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>e<rsub|u>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|span<around*|(|V|)>=V> and
      <math|v\<in\>V> there exists a finite <math|I\<subseteq\>V> and a
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> such
      that\ 

      <\equation*>
        v=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u
      </equation*>

      proving existence. For uniqueness let
      <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> such
      that

      <\equation*>
        v=<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u
      </equation*>

      Define

      <\equation*>
        <around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F<text| by
        >\<gamma\><rsub|u>=\<alpha\><rsub|u>-\<beta\><rsub|u>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>I>\<gamma\><rsub|u>\<cdot\>u>|<cell|=>|<cell|<big|sum><rsub|u\<in\>I><around*|(|\<alpha\><rsub|u>-\<beta\><rsub|u>|)>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|sum of sums>, <reference|sum of inverses
        (2)>]>>>|<cell|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u-<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|v-v>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      As <math|B> is linear independent we have <math|\<forall\>u\<in\>I>
      that <math|\<alpha\><rsub|u>-\<beta\><rsub|u>=\<gamma\><rsub|u>=0>
      proving that\ 

      <\equation*>
        <around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F=<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|v\<in\>V> then by the hypothesis
      there exists a finite <math|I\<subseteq\>B> and a
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> such
      that <math|v=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u>
      proving that <math|v\<in\>span<around*|(|B|)>>. So
      <math|V\<subseteq\>span<around*|(|B|)>\<subseteq\>V> hence\ 

      <\equation*>
        span<around*|(|B|)>=V
      </equation*>

      As for linear independence let <math|I\<subseteq\>B> a finite set and
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> such
      that <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>.
      Define <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
      by <math|\<beta\><rsub|u>=0> then <math|<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u=<big|sum><rsub|u\<in\>I>0\<cdot\>u\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>0> then by uniqueness we have
      <math|\<forall\>u\<in\>I> <math|\<alpha\><rsub|u>=\<beta\><rsub|u>=0>.
      So by definition

      <\equation*>
        B<text| is linear independent>
      </equation*>
    </description>
  </proof>

  If <math|B> is a finite we have a simpler equivalence.

  <\theorem>
    <label|basis finite alternative (1)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|B\<subseteq\>V> where <math|B> is <with|font-series|bold|finite>
    then\ 

    <\equation*>
      B<text| is a basis of ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      <text|<math|\<forall\>v\<in\>V> their exists a><text|
      <with|font-series|bold|unique> ><around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F<text|
      such that >v=<big|sum><rsub|u\<in\>B>\<alpha\><rsub|u>\<cdot\>e<rsub|u>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|B> is a basis we have by
      [theorem: <reference|basis alternative (1)>] that there exists a finite
      <math|I\<subseteq\>B> and a <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
      such that <math|v=<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u>.
      Define

      <\equation*>
        <around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F<text| by
        >\<alpha\><rsub|u>=<choice|<tformat|<table|<row|<cell|0<text| if
        >u\<in\>B\\I>>|<row|<cell|\<beta\><rsub|u><text| if >u\<in\>I>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>B>\<alpha\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>B\\I>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>B\\I>0\<cdot\>u+<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|v>>>>
      </eqnarray*>

      proving existence. For uniqueness For uniqueness let
      <math|<around*|{|\<lambda\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F>
      such that

      <\equation*>
        v=<big|sum><rsub|u\<in\>B>\<lambda\><rsub|u>\<cdot\>u
      </equation*>

      Define

      <\equation*>
        <around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F<text| by
        >\<gamma\><rsub|u>=\<alpha\><rsub|u>-\<lambda\><rsub|u>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>B>\<gamma\><rsub|u>\<cdot\>u>|<cell|=>|<cell|<big|sum><rsub|u\<in\>B><around*|(|\<alpha\><rsub|u>-\<lambda\><rsub|u>|)>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|sum of sums>, <reference|sum of inverses
        (2)>]>>>|<cell|<big|sum><rsub|u\<in\>B>\<alpha\><rsub|u>\<cdot\>u-<big|sum><rsub|u\<in\>B>\<lambda\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|v-v>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      As <math|B> is linear independent we have <math|\<forall\>u\<in\>B>
      that <math|\<alpha\><rsub|u>-\<lambda\><rsub|u>=\<gamma\><rsub|u>=0>
      proving that\ 

      <\equation*>
        <around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F=<around*|{|\<lambda\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F
      </equation*>

      <item*|<math|\<Leftarrow\>>>If <math|v\<in\>V> then by the hypothesis
      there exist a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F>
      such that <math|v=<big|sum><rsub|u\<in\>B>\<alpha\><rsub|u>\<cdot\>u>
      proving that <math|v\<in\>span<around*|(|B|)>>. So
      <math|V\<subseteq\>span<around*|(|B|)>\<subseteq\>V> hence\ 

      <\equation*>
        span<around*|(|B|)>=V
      </equation*>

      As for linear independence let <math|I\<subseteq\>B> a finite set and
      <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> such
      that <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>.
      Define <math|<around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
      by <math|\<beta\><rsub|u>=0> then <math|<big|sum><rsub|u\<in\>I>\<beta\><rsub|u>\<cdot\>u=<big|sum><rsub|u\<in\>I>0\<cdot\>u\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>0> then by uniqueness we have
      <math|\<forall\>u\<in\>I> <math|\<alpha\><rsub|u>=\<beta\><rsub|u>=0>.
      Using [theorem: <reference|linear independent finite set>] it follows
      then that\ 

      <\equation*>
        B<text| is linear independent>
      </equation*>
    </description>

    \;
  </proof>

  A other usefull alternaivee charectrization of a basis is the following

  <\theorem>
    <label|basis finite alternative (2)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|B\<subseteq\>V> such that <math|B> is finite so that by [theorem:
    <reference|linear finite set>] there exists a distinct ordered family
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>B>
    such that\ 

    <\equation*>
      B=<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>
      <infix-and>card<around*|(|B|)>=B
    </equation*>

    Then we have

    <\equation*>
      B<text| is a basis of ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      <text|<math|\<forall\>v\<in\>V> their exists ><text|a
      <with|font-series|bold|unique> ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      such that >v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    \ Define

    <\equation*>
      e:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>B<text| by
      >e<around*|(|i|)>=e<rsub|i>
    </equation*>

    then we have:

    <\description>
      <item*|injectivity>If <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|e<around*|(|i|)>=e<around*|(|j|)>> then
      <math|e<rsub|i>=e<around*|(|i|)>=e<around*|(|j|)>=e<rsub|j>> so that by
      distinctness we have <math|i=j>.

      <item*|surjectivity>If <math|u\<in\>B=<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      there exists a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> so that
      <math|u=e<rsub|i>=e<around*|(|i|)>>.
    </description>

    Hence we have that\ 

    <\equation>
      <label|eq 11.39.090>e:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>B<text|
      and >e<rsup|-1>:B\<rightarrow\><around*|{|1,\<ldots\>,n|}><text| are
      bijections>
    </equation>

    We are now ready to prove the equivalence.\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|v\<in\>V>. By [theorem:
      <reference|basis finite alternative (1)>] there exists a
      <with|font-series|bold|unique> <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F>
      such that\ 

      <\equation*>
        v=<big|sum><rsub|u\<in\>W>\<alpha\><rsub|u>\<cdot\>u
      </equation*>

      Define

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F
        by \<beta\><rsub|i>=\<alpha\><rsub|e<around*|(|i|)>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|e<around*|(|i|)>>\<cdot\>e<around*|(|i|)>>>|<row|<cell|>|<cell|<rsub|<text|>\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>] and [eq: <reference|eq
        11.39.090>]>>>>|<cell|<big|sum><rsub|u\<in\>B>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|v>>>>
      </eqnarray*>

      proving existence. For uniqueness assume that
      <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      satisfies\ 

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<gamma\><rsub|i>\<cdot\>e<rsub|i>
      </equation*>

      Define then\ 

      <\equation*>
        <around*|{|\<lambda\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>B<text| by
        >\<lambda\><rsub|u>=\<gamma\><rsub|e<rsup|-1><around*|(|u|)>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>B>\<lambda\><rsub|u>\<cdot\>u>|<cell|=>|<cell|<big|sum><rsub|u\<in\>B>\<gamma\><rsub|e<rsup|-1><around*|(|u|)>>\<cdot\>e<around*|(|e<rsup|-1><around*|(|u|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>] and [eq: <reference|eq
        11.39.090>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<gamma\><rsub|i>\<cdot\>e<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
      </eqnarray*>

      so that by uniqueness we have <math|\<forall\>u\<in\>B> that
      <math|\<alpha\><rsub|u>=\<lambda\><rsub|u>>. Now if
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
      <math|\<beta\><rsub|i>=\<alpha\><rsub|e<around*|(|i|)>>=\<lambda\><rsub|e<around*|(|i|)>>=\<gamma\><rsub|e<rsup|-1><around*|(|e<around*|(|i|)>|)>>=\<gamma\><rsub|i>>.
      Hence we have <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F=<around*|{|\<gamma\><rsub|i>|}><rsub|i\<ni\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>.

      <item*|<math|\<Leftarrow\>>>Let <math|v\<in\>V> then by the hypothesis
      there exists a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      such that

      <\equation*>
        v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>
      </equation*>

      Define then\ 

      <\equation*>
        <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F<text| by
        >\<beta\><rsub|u>=\<alpha\><rsub|e<rsup|-1><around*|(|u|)>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>B>\<beta\><rsub|u>\<cdot\>u>|<cell|=>|<cell|<big|sum><rsub|u\<in\>B>\<alpha\><rsub|e<rsup|-1><around*|(|u|)>>\<cdot\>e<around*|(|e<rsup|-1><around*|(|u|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>e<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
      </eqnarray*>

      proving that <math|v\<in\>span<around*|(|B|)>>. Hence
      <math|V\<subseteq\>span<around*|(|B|)>\<subseteq\>V> so that\ 

      <\equation*>
        V=span<around*|(|V|)>
      </equation*>

      For linear independency, assume that
      <math|<around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>B>\<subseteq\>F> is
      such that <math|<big|sum><rsub|u\<in\>B>\<gamma\><rsub|u>\<cdot\>u=0>.
      Define\ 

      <\equation*>
        <around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
        by >\<lambda\><rsub|i>=\<gamma\><rsub|e<around*|(|i|)>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<lambda\><rsub|i>\<cdot\>e<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<gamma\><rsub|e<around*|(|i|)>>\<cdot\>e<around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|u\<in\>B>\<gamma\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      As for <math|<around*|{|\<zeta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>\<subseteq\>F>
      defined by <math|\<zeta\><rsub|i>=0> we have

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<zeta\><rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>0\<cdot\>e<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element (2)>]>>0
      </equation*>

      we have by the uniqueness hypothesis that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<lambda\><rsub|i>=\<zeta\><rsub|i>=0>. So
      <math|\<forall\>u\<in\>B> we have <math|\<gamma\><rsub|u>=\<gamma\><rsub|e<around*|(|e<rsup|-1><around*|(|u|)>|)>>=\<lambda\><rsub|e<rsup|-1><around*|(|u|)>>=0>.
      Using [theorem: <reference|linear independent finite set>] it follows
      that\ 

      <\equation*>
        B<text| is linear independent>
      </equation*>
    </description>
  </proof>

  Up to now we are not certain that every vector space has a basis. We will
  now use Zorn's lemma, a consequence of the Axiom of Choice to prove that
  every vector space has a basis. We start with proving that every linear
  independent set that is a subset of a spanning set can be extended to a
  basis.

  TODO

  <\theorem>
    <label|basis existence (1)>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|R\<subseteq\>W\<subseteq\>V> such that\ 

    <\enumerate>
      <item><math|R> is linear independent

      <item><math|span<around*|(|W|)>=V>
    </enumerate>

    then there exists a basis <math|B> of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> such that
    <math|R\<subseteq\>B\<subseteq\>W>
  </theorem>

  <\proof>
    Define the set of linear independent sets between <math|R> and <math|B>

    <\equation>
      <label|eq 11.54.086>\<cal-A\>=<around*|{|X\<subseteq\>V\|R\<subseteq\>X\<subseteq\>W<text|
      and >X<text| is linear independent>|}>
    </equation>

    then we have, as <math|R> is linear independent and
    <math|R\<subseteq\>R\<subseteq\>W,> we have that\ 

    <\equation>
      <label|eq 11.55.086>R\<in\>\<cal-A\>
    </equation>

    Using \ [example: <reference|order inclusion is a order>] we can order
    <math|\<cal-A\>> by the inclusion operator, in other words

    <\equation>
      <around*|\<langle\>|<label|eq 11.56.086>\<cal-A\>,\<subseteq\>|\<rangle\>><text|
      is a partial ordered set>
    </equation>

    Let <math|\<cal-C\>\<subseteq\>\<cal-A\>> be a non empty chain \ chain
    [see definition: <reference|order chain>]. If <math|X\<in\>\<cal-C\>>
    then <math|X\<in\>\<cal-A\>> so that <math|R\<subseteq\>X\<subseteq\>W>
    hence \ <math|R\<subseteq\><big|cup><rsub|X\<in\>\<cal-C\>>X\<subseteq\>W>
    hence

    <\equation>
      <label|eq 11.57.086>R\<subseteq\>B<rsub|\<cal-C\>>\<subseteq\>W
      <text|and >\<forall\>X\<in\>\<cal-C\><text| we have
      >X\<subseteq\>B<rsub|\<cal-C\>><text| where
      >B<rsub|\<cal-C\>>=<big|cup><rsub|X\<in\>\<cal-C\>>X
    </equation>

    We use now mathematical induction on the size of finite sets to proof
    that\ 

    <\equation>
      <label|eq 11.58.086>\<forall\>A\<subseteq\>B<rsub|\<cal-C\><text|>><text|
      such that >A<text| is finite there >\<exists\>X\<in\>\<cal-C\><text|
      such that >A\<subseteq\>X
    </equation>

    <\proof>
      Define\ 

      <\equation*>
        \<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
        >A\<subseteq\>B<rsub|\<cal-C\>><text| with
        ><around*|{|1,\<ldots\>,n|}>\<approx\>A<text| then
        >\<exists\>X\<in\>\<cal-C\><text| such that >A\<subseteq\>X|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>\<cal-S\>>>If
        <math|A\<subseteq\>B<rsub|\<cal-C\>>> with
        <math|A\<approx\>0=\<varnothing\>> then by [hteorem:
        <reference|complex finite set condition>] there exist a bijection

        <\equation*>
          \<beta\>:<around*|{|1,\<ldots\>,0|}>=\<varnothing\>\<rightarrow\>A,
        </equation*>

        hence <math|A=\<beta\><around*|(|\<varnothing\>|)>> proving that
        <math|A=\<varnothing\>>. As <math|\<cal-C\>\<neq\>\<varnothing\>>
        there exists a <math|X\<in\>\<cal-C\>> and trivially
        <math|A=\<varnothing\>\<subseteq\>X>. Hence <math|0\<in\>\<cal-S\>>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
        <math|A\<subseteq\>B<rsub|\<cal-C\>>> with
        <math|<around*|{|1,\<ldots\>,n+1|}>\<approx\>A> then there exist a
        bijection

        <\equation*>
          \<beta\>:<around*|{|1,\<ldots\>,n+1|}>\<rightarrow\>A.
        </equation*>

        Take <math|A<rprime|'>=A\\<around*|{|\<beta\><around*|(|n+1|)>|}>>
        and consider <math|\<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>A<rprime|'>>
        then we have:

        <\description>
          <item*|injectivity>If <math|\<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>><around*|(|k|)>=\<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>><around*|(|l|)>>
          then <math|\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>> which
          as <math|\<beta\>> is a bijection proves that <math|k=l>

          <item*|surjectivity>If <math|y\<in\>A<rprime|'>> then
          <math|y\<in\>A> and <math|y\<neq\>\<beta\><around*|(|n+1|)>>. As
          <math|\<beta\>> is a bijection there exists a
          <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>> such that
          <math|\<beta\><around*|(|i|)>=y>. If <math|i=n+1> then
          <math|y=\<beta\><around*|(|i|)>=\<beta\><around*|(|n+1|)>>
          contradicting <math|y\<neq\>\<beta\><around*|(|n+1|)>>, so
          <math|i\<in\><around*|{|0,\<ldots\>,n|}>>, hence
          <math|y=\<beta\><around*|(|i|)>=\<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>><around*|(|i|)>>.
        </description>

        proving that <math|><math|\<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>A<rprime|'>>
        is a bijection hence <math|<around*|{|1,\<ldots\>,n|}>\<approx\>A<rprime|'>>.
        As <math|n\<in\>S> there exist a <math|X<rprime|'>\<in\>\<cal-C\>>
        such that <math|A<rprime|'>\<subseteq\>X<rprime|'>>. Further as
        <math|\<beta\><around*|(|n+1|)>\<in\>A\<subseteq\>B<rsub|\<cal-C\>>=<big|cup><rsub|X\<in\>\<cal-C\>>X>
        there exists a <math|X\<in\>\<cal-C\>> such that
        <math|\<beta\><around*|(|n+1|)>\<in\>X>. Now as <math|\<cal-C\>> is a
        chain we have either:

        <\description>
          <item*|<math|X<rprime|'>\<subseteq\>X>>Then as
          <math|A\\<around*|{|\<beta\><around*|(|n+1|)>|}>=A<rprime|'>\<subseteq\>X<rprime|'>\<subseteq\>X>
          and <math|\<beta\><around*|(|n+1|)>\<in\>X> we have that
          <math|A\<subseteq\>X> proving that <math|n+1\<in\>S>

          <item*|<math|X\<subseteq\>X<rprime|'>>>Then as
          <math|A\\<around*|{|\<beta\><around*|(|n+1|)>|}>=A<rprime|'>\<subseteq\>X<rprime|'>>
          and <math|\<beta\><around*|(|n+1|)>\<in\>X\<subseteq\>X<rprime|'>>
          we have that <math|A\<subseteq\>X<rprime|'>> proving that
          <math|n+1\<in\>S>
        </description>

        so in both cases we have that <math|n+1\<in\>S>. \ 
      </description>

      By mathematical induction it follows that <math|S=\<bbb-N\><rsub|0>>.
      So if <math|A\<subseteq\>B<rsub|\<cal-C\>>> such that <math|A> is
      finite we have by [theorem: <reference|complex finite set condition>] a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|<around*|{|1,\<ldots\>,n|}>\<approx\>A>. Hence as <math|n\<in\>S>
      there exists a <math|X\<in\>\<cal-C\>> such that <math|A\<subseteq\>X>.
    </proof>

    We prove now that <math|B<rsub|\<cal-C\>>> is linear independent. Let
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>B<rsub|\<cal-C\>>>
    be a finite disjoint family then by [theorem: <reference|linear finite
    set>] <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    is finite and as <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<subseteq\>B<rsub|\<cal-C\>>>
    we have by [eq: <reference|eq 11.58.086>] that\ 

    <\equation>
      <label|eq 11.29.086>\<exists\>Y\<in\>\<cal-C\><text| such that
      ><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<subseteq\>Y<text|
      hence ><around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>Y
    </equation>

    As <math|Y\<in\>\<cal-C\>\<subseteq\>\<cal-A\>> we have by [eq:
    <reference|eq 11.54.086>] that

    <\equation>
      R\<subseteq\>Y\<subseteq\>W<text| and >Y<text| is linear independent>
    </equation>

    So if <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>>
    we have by definition of linear independency that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<alpha\><rsub|i>=0>. As \ <math|><math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>B<rsub|\<cal-C\>>>
    was choosen arbitrary it follows that\ 

    <\equation>
      <label|eq 11.61.086>B<rsub|\<cal-C\>><text| is linear independent>
    </equation>

    Combining this with [eqs: <reference|eq 11.54.086>, <reference|eq
    11.58.086>] it follows that\ 

    <\equation*>
      B<rsub|\<cal-C\>>\<in\>\<cal-A\>
    </equation*>

    So for every non-empty chain <math|\<cal-C\>\<subseteq\>\<cal-A\>> we
    have found a <math|B<rsub|\<cal-C\>>\<in\>\<cal-A\>> such that
    <math|\<forall\>X\<in\>\<cal-C\>> we have
    <math|X\<subseteq\><big|cup><rsub|X\<in\>\<cal-C\>>X=B<rsub|\<cal-C\>>>
    hence <math|\<cal-C\>> has a upper bound <math|B<rsub|\<cal-C\>>>.
    Further as by [eq: <reference|eq 11.55.086>] <math|R\<in\>\<cal-A\>> we
    have for the empty chain [<math|\<cal-C\>=\<varnothing\>>] that
    <math|\<forall\>X\<in\>\<varnothing\>> <math|X\<subseteq\>R> is satisfied
    vacously, hence <math|R> is a upper bound of the empty chain.. So we have
    that

    <\equation*>
      <\text>
        Every chain <math|\<cal-C\>> in <math|\<cal-A\><text| has a upper
        bound in >\<cal-A\>>
      </text>
    </equation*>

    So by Zorn's lemma [see theorem: <reference|choice Zorn's lemma>] there
    exists a maximal element in <math|\<cal-A\>>, in other words\ 

    <\equation>
      <label|eq 11.62.086>\<exists\>B\<in\>\<cal-A\><text| such that
      >\<forall\>X<text| we have >X\<subseteq\>B
    </equation>

    and as <math|B\<in\>\<cal-A\>> we have

    <\equation>
      <label|eq 11.63.086>R\<subseteq\>B\<subseteq\>W<text| and >B<text| is
      linear independent>
    </equation>

    Let now <math|w\<in\>W> then we have either:

    <\description>
      <item*|<math|w\<in\>B>>As by [theorem: <reference|linear span contains
      set>] <math|B\<subseteq\>span<around*|(|B|)>> it follows that
      <math|w\<in\>span<around*|(|B|)>>.

      <item*|<math|w\<nin\>B>>Assume that <math|B<big|cup><around*|{|w|}>> is
      linear independent then as <math|R\<subseteq\>B\<subseteq\>B<big|cup><around*|{|w|}>\<subset\>W>
      it follows that <math|B<big|cup><around*|{|w|}>\<in\>\<cal-A\>>. Using
      [eq: <reference|eq 11.62.086>] it follows that
      <math|B<big|cup><around*|{|w|}>\<subseteq\>B> so that <math|w\<in\>B>
      contradicting <math|w\<nin\>B>. Hence we have that\ 

      <\equation*>
        B<big|cup><around*|{|w|}><text| is linear dependent>
      </equation*>

      Hence there exists a finite distinct family
      <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>B<big|cup><around*|{|w|}>>
      and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      not all zero such that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>=0>.
      If <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>f<rsub|i>\<neq\>w>
      then <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>B>
      so that <math|B> is linear dependent contradicting [eq: <reference|eq
      11.63.086>]. Hence <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>>
      such that <math|f<rsub|k>=w>. As <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is distinct we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>
      that <math|f<rsub|i>\<in\>B>. Define now\ 

      <\equation*>
        <around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>B<text|
        by >e<rsub|i>=<choice|<tformat|<table|<row|<cell|f<rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>|<row|<cell|f<rsub|i+1><text|
        if >i\<in\><around*|{|k,\<ldots\>,n-1|}>>>>>>
      </equation*>

      and\ 

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><text|
        by >\<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|i><text|
        if >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>|<row|<cell|\<alpha\><rsub|i+1><text|
        if >i\<in\><around*|{|k,\<ldots\>,n-1|}>>>>>>
      </equation*>

      further we have also that\ 

      <\equation*>
        \<tau\>:<around*|{|k,\<ldots\>,n-1|}>\<rightarrow\><around*|{|k+1,\<ldots\>,n|}>
        by \<tau\><around*|(|i|)>=i+1<text| is a bijection>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>+<big|sum><rsub|i\<in\>k>\<alpha\><rsub|i>\<cdot\>f<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>+\<alpha\><rsub|k>\<cdot\>f<rsub|k>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>+\<alpha\><rsub|k>\<cdot\>f<rsub|k>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>+\<alpha\><rsub|k>\<cdot\>f<rsub|k>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>f<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>+\<alpha\><rsub|k>\<cdot\>f<rsub|k>+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n-1|}>>\<alpha\><rsub|\<tau\><around*|(|i|)>>\<cdot\>f<rsub|\<tau\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>+\<alpha\><rsub|k>\<cdot\>f<rsub|k>+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n-1|}>>\<alpha\><rsub|i+1>\<cdot\>f<rsub|i+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>+\<alpha\><rsub|k>\<cdot\>f<rsub|k>+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>+\<alpha\><rsub|k>\<cdot\>f<rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>+\<alpha\><rsub|k>\<cdot\>w<eq-number><label|eq
        11.64.086>>>>>
      </eqnarray*>

      Assume <math|\<alpha\><rsub|k>=0> then we have <math|>that
      <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> such that
      <math|\<beta\><rsub|i>\<neq\>0> [otherwise we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|\<alpha\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<beta\><rsub|i>=0<text|
      if >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>|<row|<cell|0<text| if
      >i\<in\><around*|{|k|}>>>|<row|<cell|\<beta\><rsub|i-1><text|=0 if
      >i\<in\><around*|{|k+1,\<ldots\>,n|}>>>>>>> contradicting that
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is not all zeroes. Further from [eq: <reference|eq 11.64.086>] we have
      that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>=0>
      which, as <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>B>
      proves that <math|B> is linear dependent, contradicting [eq:
      <reference|eq 11.63.086>]. Hnece we must have that
      <math|\<alpha\><rsub|k>\<neq\>0>. Then by [eq: <reference|eq
      11.64.086>] it follows that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|w>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<beta\><rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|vector space finite sum (1)>, <reference|sum of inverses
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|\<beta\><rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\>\<beta\><rsub|i>|)>\<cdot\>e<rsub|i>>>>>
      </eqnarray*>

      So if we define \ <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      by >\<gamma\><rsub|i>=<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\>\<beta\><rsub|i>>
      we have <math|w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<gamma\><rsub|i>\<cdot\>e<rsub|i>>
      proving that\ 

      <\equation*>
        w\<in\>span<around*|(|B|)>
      </equation*>
    </description>

    So in all cases we have <math|w\<in\>span<around*|(|B|)>> proving that
    <math|W\<subseteq\>span<around*|(|B|)>>, hence\ 

    <\equation*>
      V=span<around*|(|W|)>\<subseteq\><rsub|<text|[theorem:
      <reference|linear span subsets>]>>span<around*|(|span<around*|(|B|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|linear span of span>]>>span<around*|(|B|)>\<subseteq\>V
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 11.65.086>span<around*|(|B|)>=V
    </equation>

    By [eqs: <reference|eq 11.63.086>, <reference|eq 11.65.086>] we have that
    <math|B> is a basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    and <math|R\<subseteq\>B\<subseteq\>W> proving the theorem.
  </proof>

  <\corollary>
    <label|basis extending linear independent set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|R> a linear independent set then there exists a basis <math|B> of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> such that
    <math|R\<subseteq\>B>. In othere words a linear independent set of a
    vector space can be extended to a basis of the vector space.
  </corollary>

  <\proof>
    As <math|R> is linear independent, <math|R\<subseteq\>V> and
    <math|span<around*|(|V|)>\<equallim\><rsub|<text|[theorem:
    <reference|linear span properties>]>>V> we have by [theorem:
    <reference|basis existence (1)>] that there exist a basis <math|B> of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> with
    <math|R\<subseteq\>B\<subseteq\>V>.
  </proof>

  <\corollary>
    <label|basis reducing spanning set to a basis>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> such that <math|span<around*|(|W|)>=V> then there
    exist a basis <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    such that <math|B\<subseteq\>W>. Inother words every spanning set of a
    vector space can be reduced to a basis of the vector space.
  </corollary>

  <\proof>
    For <math|V> we have either:

    <\description>
      <item*|<math|V=<around*|{|0|}>>>By [example: <reference|basis of
      trivial vector space>] <math|\<varnothing\>> is a basis for <math|V>
      and trivially <math|\<varnothing\>\<subseteq\>W>.

      <item*|<math|V\<neq\><around*|{|0|}>>>Then there exist a
      <math|v\<in\>V> with <math|v\<neq\>0>. As <math|V=span<around*|(|W|)>>
      there exists a <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F>
      such that <math|v=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w>.
      If <math|W=\<varnothing\>> or <math|W=<around*|{|0|}>> then
      <math|supp<around*|(|<around*|{|\<alpha\><rsub|w>\<cdot\>w|}><rsub|w\<in\>W>|)>=\<varnothing\>>
      so that <math|v=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w=0>
      contradicting <math|v\<neq\>0>. So there exists a <math|w\<in\>W> with
      <math|w\<neq\>0>. By [example: <reference|linear independent
      singleton>] <math|R=<around*|{|w|}>> is linear independent and as
      further <math|R=<around*|{|w|}>\<subseteq\>W> we have by [theorem:
      <reference|basis existence (1)>] that there exist a basis <math|B> of
      <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> such that
      <math|R\<subseteq\>B\<subseteq\>W>.
    </description>
  </proof>

  <\corollary>
    <label|basis exist>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then there exist a basis <math|B\<subseteq\>V> of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
  </corollary>

  <\proof>
    As <math|span<around*|(|V|)>\<equallim\><rsub|<text|[theorem:
    <reference|linear span properties>]>>V> we have by [corollary:
    <reference|basis reducing spanning set to a basis>] that there exist a
    basis <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
  </proof>

  <subsection|Dimension of a vector space>

  <\lemma>
    <label|basis finite dimensions>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    that has a <with|font-series|bold|finite> basis <math|B\<subseteq\>V>
    then every basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    is <with|font-series|bold|finite>. Further for every basis <math|A> of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> we have
    <math|card<around*|(|B|)>=card<around*|(|A|)>>
  </lemma>

  <\proof>
    As <math|B> is a basis we have that\ 

    <\equation*>
      span<around*|(|B|)>=V<text| and >B<text| is linear independent>
    </equation*>

    Let <math|A> be another basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    then

    <\equation*>
      span<around*|(|A|)>=V<text| and >A<text| is linear independent>
    </equation*>

    By [corollary: <reference|linear Steinitz (2)>] it follows that <math|A>
    is finite. Further as <math|A,B> are finite there exists by [theorem:
    <reference|linear finite set>] finite distinct families
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,card<around*|(|A|)>|}>>\<subseteq\>A\<subseteq\>V>
    and <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,card<around*|(|B|)>|}>>\<subseteq\>A\<subseteq\>V>
    such that <math|A=<around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|A|)>|}>|}>>
    and <math|B=<around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|B|)>|}>|}>>.
    Then as

    <\equation*>
      V=span<around*|(|<around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|A|)>|}>|}>|)><text|
      and ><around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|B|)>|}>|}><text|
      is linear indepenent>
    </equation*>

    we have by [corollary: <reference|linear Steinitz (1)>] that\ 

    <\equation*>
      card<around*|(|B|)>\<leqslant\>card<around*|(|A|)>
    </equation*>

    Likewise as\ 

    <\equation*>
      V=span<around*|(|<around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|B|)>|}>|}>|)><text|
      and ><around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|A|)>|}>|}><text|
      is linear indepenent>
    </equation*>

    we have by [corollary: <reference|linear Steinitz (1)>] that\ 

    <\equation*>
      card<around*|(|A|)>\<leqslant\>card<around*|(|B|)>
    </equation*>

    So that\ 

    <\equation*>
      card<around*|(|A|)>=card<around*|(|B|)>
    </equation*>
  </proof>

  <\corollary>
    <label|basis infinite dimensions>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    that has a <with|font-series|bold|infinite> basis <math|B\<subseteq\>V>
    then every basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    is <with|font-series|bold|infinite>.
  </corollary>

  <\proof>
    Assume that there exists a finite basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> then by [lemma:
    <reference|basis finite dimensions>] <math|B> is finite a contradiction.
    So every basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    must be infinite.
  </proof>

  The above lemma and corollary ensures that the following definition makes
  sense.

  <\definition>
    <label|basis dimension>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then by [corollary: <reference|basis exist>] there exists a basis
    <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>. The
    dimension of <math|V> noted by <math|dim<around*|(|V|)>> is defined as
    follows:\ 

    <\equation*>
      dim<around*|(|V|)>=<choice|<tformat|<table|<row|<cell|\<infty\><text|
      if >B<text| is infinite>>>|<row|<cell|card<around*|(|B|)><text| if
      >B<text| is finite>>>>>>
    </equation*>

    This definition is independent of the basis <math|B> choosen by [lemma:
    <reference|basis finite dimensions>] and [corollary: <reference|basis
    infinite dimensions>]
  </definition>

  \;

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

  <section|Deteminant Functions>b
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|10>
    <associate|page-first|316>
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
    <associate|auto-22|<tuple|11.3.2.1|?>>
    <associate|auto-23|<tuple|11.3.2.2|?>>
    <associate|auto-24|<tuple|linear dependent set|?>>
    <associate|auto-25|<tuple|linear independent set|?>>
    <associate|auto-26|<tuple|11.3.3|?>>
    <associate|auto-27|<tuple|basis of a vector space|?>>
    <associate|auto-28|<tuple|11.3.4|?>>
    <associate|auto-29|<tuple|11.4|?>>
    <associate|auto-3|<tuple|11.1.1|?>>
    <associate|auto-30|<tuple|11.5|?>>
    <associate|auto-31|<tuple|11.6|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-6|<tuple|11.1.2|?>>
    <associate|auto-7|<tuple|11.1.3|?>>
    <associate|auto-8|<tuple|permutation|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<sigma\>>|?>>
    <associate|basis|<tuple|11.98|?>>
    <associate|basis alternative (1)|<tuple|11.101|?>>
    <associate|basis alternative (2)|<tuple|11.104|?>>
    <associate|basis dimension|<tuple|11.110|?>>
    <associate|basis exist|<tuple|11.107|?>>
    <associate|basis existence (1)|<tuple|11.104|?>>
    <associate|basis extending linear independent set|<tuple|11.105|?>>
    <associate|basis finite alternative|<tuple|11.104|?>>
    <associate|basis finite alternative (1)|<tuple|11.102|?>>
    <associate|basis finite alternative (2)|<tuple|11.103|?>>
    <associate|basis finite dimensions|<tuple|11.108|?>>
    <associate|basis infinite dimensions|<tuple|11.109|?>>
    <associate|basis of trivial vector space|<tuple|11.100|?>>
    <associate|basis reducing spanning set to a basis|<tuple|11.106|?>>
    <associate|disjoint family property|<tuple|11.71|?>>
    <associate|eq 11.1.054|<tuple|11.1|?>>
    <associate|eq 11.10.054|<tuple|11.11|?>>
    <associate|eq 11.10.064|<tuple|11.10|?>>
    <associate|eq 11.11.054|<tuple|11.13|?>>
    <associate|eq 11.11.055|<tuple|11.12|?>>
    <associate|eq 11.13.055|<tuple|11.14|?>>
    <associate|eq 11.15.090|<tuple|11.15|?>>
    <associate|eq 11.16.090|<tuple|11.16|?>>
    <associate|eq 11.17.090|<tuple|11.17|?>>
    <associate|eq 11.18.090|<tuple|11.18|?>>
    <associate|eq 11.19.090|<tuple|11.19|?>>
    <associate|eq 11.2.053|<tuple|11.2|?>>
    <associate|eq 11.20.090|<tuple|11.20|?>>
    <associate|eq 11.21.090|<tuple|11.21|?>>
    <associate|eq 11.22.090|<tuple|11.22|?>>
    <associate|eq 11.23.090|<tuple|11.23|?>>
    <associate|eq 11.24.090|<tuple|11.24|?>>
    <associate|eq 11.25.090|<tuple|11.25|?>>
    <associate|eq 11.26.090|<tuple|11.26|?>>
    <associate|eq 11.27.090|<tuple|11.27|?>>
    <associate|eq 11.28.090|<tuple|11.28|?>>
    <associate|eq 11.29.086|<tuple|11.45|?>>
    <associate|eq 11.29.090|<tuple|11.29|?>>
    <associate|eq 11.3.053|<tuple|11.3|?>>
    <associate|eq 11.30.090|<tuple|11.30|?>>
    <associate|eq 11.31.090|<tuple|11.31|?>>
    <associate|eq 11.32.090|<tuple|11.32|?>>
    <associate|eq 11.33.090|<tuple|11.33|?>>
    <associate|eq 11.34.090|<tuple|11.34|?>>
    <associate|eq 11.35.090|<tuple|11.35|?>>
    <associate|eq 11.36.90|<tuple|11.36|?>>
    <associate|eq 11.39.090|<tuple|11.39|?>>
    <associate|eq 11.4.053|<tuple|11.4|?>>
    <associate|eq 11.47.085|<tuple|11.40|?>>
    <associate|eq 11.48.085|<tuple|11.41|?>>
    <associate|eq 11.5.053|<tuple|11.5|?>>
    <associate|eq 11.53.084|<tuple|11.38|?>>
    <associate|eq 11.54.086|<tuple|11.40|?>>
    <associate|eq 11.55.086|<tuple|11.41|?>>
    <associate|eq 11.56.086|<tuple|11.42|?>>
    <associate|eq 11.57.084|<tuple|11.37|?>>
    <associate|eq 11.57.086|<tuple|11.43|?>>
    <associate|eq 11.58.086|<tuple|11.44|?>>
    <associate|eq 11.6.053|<tuple|11.6|?>>
    <associate|eq 11.61.086|<tuple|11.47|?>>
    <associate|eq 11.62.086|<tuple|11.48|?>>
    <associate|eq 11.63.086|<tuple|11.49|?>>
    <associate|eq 11.64.086|<tuple|11.50|?>>
    <associate|eq 11.65.086|<tuple|11.51|?>>
    <associate|eq 11.7.053|<tuple|11.7|?>>
    <associate|eq 11.7.053.1|<tuple|11.8|?>>
    <associate|eq 11.9.053|<tuple|11.9|?>>
    <associate|linear (in)dependency properties (1)|<tuple|11.94|?>>
    <associate|linear Steinitz (1)|<tuple|11.96|?>>
    <associate|linear Steinitz (2)|<tuple|11.97|?>>
    <associate|linear Steinitz lemma|<tuple|11.95|?>>
    <associate|linear combination|<tuple|11.67|?>>
    <associate|linear combination (1)|<tuple|11.74|?>>
    <associate|linear combination (2)|<tuple|11.75|?>>
    <associate|linear dependent set|<tuple|11.86|?>>
    <associate|linear dependent set alternative condition|<tuple|11.93|?>>
    <associate|linear dependent set containing neutral
    element|<tuple|11.87|?>>
    <associate|linear family disjoint|<tuple|11.70|?>>
    <associate|linear family finite|<tuple|11.68|?>>
    <associate|linear finite set|<tuple|11.73|?>>
    <associate|linear independent empty set|<tuple|11.91|?>>
    <associate|linear independent finite set|<tuple|11.90|?>>
    <associate|linear independent set|<tuple|11.88|?>>
    <associate|linear independent set alternative|<tuple|11.89|?>>
    <associate|linear independent singleton|<tuple|11.92|?>>
    <associate|linear ordered family is finite|<tuple|11.72|?>>
    <associate|linear span|<tuple|11.76|?>>
    <associate|linear span contains set|<tuple|11.80|?>>
    <associate|linear span equivalence 0|<tuple|11.78|?>>
    <associate|linear span equivalence 1|<tuple|11.79|?>>
    <associate|linear span extending a set without changing its
    span|<tuple|11.85|?>>
    <associate|linear span is a sub-space|<tuple|11.82|?>>
    <associate|linear span of empty set|<tuple|11.77|?>>
    <associate|linear span of span|<tuple|11.84|?>>
    <associate|linear span properties|<tuple|11.83|?>>
    <associate|linear span subsets|<tuple|11.81|?>>
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
    <associate|sum generalized sum|<tuple|11.30|?>>
    <associate|sum in A^n|<tuple|11.43|?>>
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

      <tuple|<tuple|linear dependent set>|<pageref|auto-24>>

      <tuple|<tuple|linear independent set>|<pageref|auto-25>>

      <tuple|<tuple|basis of a vector space>|<pageref|auto-27>>
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

      <with|par-left|<quote|1tab>|11.3.2<space|2spc>Linear (in)dependency
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|2tab>|11.3.2.1<space|2spc>Span of a set
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|2tab>|11.3.2.2<space|2spc>Linear (in)dependent
      sets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|11.3.3<space|2spc>Basis of a vector space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|11.3.4<space|2spc>Dimension of a vector
      space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      11.4<space|2spc>Linear mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>

      11.5<space|2spc>Multilinear mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      11.6<space|2spc>Deteminant Functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>
    </associate>
  </collection>
</auxiliary>
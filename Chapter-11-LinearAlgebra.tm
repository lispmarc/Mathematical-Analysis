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

  <subsection|Basis of a vector space>

  <subsubsection|Finite sums on a vector space>

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

  <subsubsection|Sum of families with finite support>

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
      supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>J>|)>\<leqslant\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>
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
      <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>+<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>y<rsub|i>
    </equation*>
  </theorem>

  <\proof>
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
    that <math|N<rsub|1><big|cup>N<rsub|2><big|cup>N<rsub|3>\<subseteq\>L>
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

    Next we hve\ 

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
      <wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|-x<rsub|i>|)>=-<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
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

    Hence we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\><wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>|<cell|\<equallim\><rsub|def>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum ring product (2)>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over two disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>\\supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>+<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>>|<cell|0+<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support space finite sum (1)>If
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|\<alpha\>\<in\>F> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    a family with finite support then\ 

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
    proving that\ 

    <\equation*>
      supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>
    </equation*>

    Hence we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\><wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I>x<rsub|i>>|<cell|\<equallim\><rsub|def>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>sup<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (1)>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over two disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>\\supp<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>+<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>>|<cell|0+<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|support space finite sum (2)>If
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|x\<in\>V> and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>m|}>>\<subseteq\>F>
    has finite support then\ 

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
    </equation*>

    Hence we have\ 

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
      ><wide|<big|sum>|\<wide-bar\>><rsub|j\<in\>I<rsub|i>>x<rsub|j><text| is
      defined>
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

  <subsubsection|Linear dependency>

  First we define the concept of a linear combination of a family of vectors.
  Firtst we need a little theorem.

  <\theorem>
    <label|linear combination requirement>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a family of
    vectors then if <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    is a family we have that

    <\equation*>
      supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>
    </equation*>

    So if <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    has finite support we have by [theorem: <reference|subset of finite
    sets>] that

    <\equation*>
      <around*|{|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}><rsub|i\<in\>I><text|
      has finite support>
    </equation*>
  </theorem>

  <\proof>
    If <math|i\<in\>sup<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}><rsub|i\<in\>I>|)>>
    then we can not have <math|\<alpha\><rsub|i>=0> [for then
    <math|\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>] so we have that
    <math|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>>.
    Hence <math|supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>>.
  </proof>

  This theorem ensures that the following definition make sense

  <\definition>
    <label|linear combination><index|linear combination><dueto|Linear
    combination>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a
    vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|v\<in\>V> and <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    then

    <\equation*>
      <with|font-series|bold|v><text| <with|font-series|bold|is a linear
      combination of >><with|font-series|bold|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
    </equation*>

    if and only if there exist a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    with finite support such that

    <\equation*>
      v=<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>
    </equation*>

    If <math|W\<subseteq\>V> then

    <\equation*>
      <with|font-series|bold|v <text|is a linear combination of W>>
    </equation*>

    if\ 

    <\equation*>
      <with|font-series|bold|v<text| is a linear combination of
      ><around*|{|w|}><rsub|w\<in\>W>>
    </equation*>

    where <math|<around*|{|w|}><rsub|w\<in\>W>\<subseteq\>V> is a shorthand
    for <math|<around*|{|<around*|(|Id<rsub|W>|)><rsub|w>|}><rsub|w\<in\>W>V>
    \ [see example: <reference|family {x}xeA>]. So\ 

    <\equation*>
      <with|font-series|bold|v <text|is a linear combination of >W>
    </equation*>

    if there exists a <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>>
    with finite support so that\ 

    <\equation*>
      v=<wide|<big|sum>|\<wide-bar\>><rsub|w\<in\>W><around*|(|\<alpha\><rsub|w>\<cdot\><around*|(|Id<rsub|W>|)><rsub|w>|)>=<wide|<big|sum>|\<wide-bar\>><rsub|w\<in\>W><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>
    </equation*>
  </definition>

  Next we define the concept of a linear span

  <\definition>
    <label|linear span><index|linear span><dueto|Linear span>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be vector space over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then we
    define the span as follows

    <\enumerate>
      <item>If <math|W\<subseteq\>V> then the <with|font-series|bold|span> of
      <math|W> noted by <math|<with|font-series|bold|span<around*|(|W|)>>> is
      defined as\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|span<around*|(|W|)>>|<cell|=>|<cell|<around*|{|v\|v<text|
        is a linear combination of >W|}>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[<reference|linear
        combination>]>>>|<cell|<around*|{|v\|<text|
        >\<exists\><around*|{|a<rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F<text|
        with finite support such that >v=<big|sum><rsub|w\<in\>W><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>|}>>>>>
      </eqnarray*>
    </enumerate>

    <\enumerate>
      <item>If <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> is
      a family of vectors then the <with|font-series|bold|span> of
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> noted as
      <with|font-series|bold|<math|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>>>
      is defined by\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>>|<cell|=>|<cell|span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>>>>>
      </eqnarray*>
    </enumerate>
  </definition>

  <\theorem>
    <label|linear span equivalence>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then

    <\equation*>
      span*<around*|(|W|)>=span<around*|(|<around*|{|w|}><rsub|w\<in\>W>|)>
    </equation*>
  </theorem>

  <\proof>
    First <math|<around*|{|w|}><rsub|w\<in\>W>\<equallim\><rsub|def><around*|{|<around*|(|Id<rsub|W>|)><rsub|w>|}><rsub|w\<in\>W>>.
    So if <math|w\<in\>W> then <math|w=<around*|(|Id<rsub|W>|)><around*|(|w|)>=<around*|(|Id<rsub|W>|)><rsub|w>>
    proving that <math|w\<in\><around*|{|<around*|(|Id<rsub|W>|)><rsub|x>\|x\<in\>W|}>>,
    further if <math|w\<in\><around*|{|<around*|(|Id<rsub|W>|)><rsub|x>\|x\<in\>W|}>>
    then <math|\<exists\>x\<in\>W> with <math|w=<around*|(|Id<rsub|W>|)><rsub|x>=Id<rsub|W><around*|(|x|)>\<equallim\><rsub|x\<in\>W>x>
    proving that <math|w\<in\>W>. Hence we have\ 

    <\equation*>
      W=<around*|{|<around*|(|Id<rsub|W>|)><rsub|x>\|x\<in\>W|}>
    </equation*>

    Finally\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|v\<in\>span<around*|(|<around*|{|w|}><rsub|w\<in\>W>|)>>|<cell|\<Leftrightarrow\>>|<cell|v\<in\>span<around*|(|<around*|{|<around*|(|Id<rsub|W>|)><rsub|w>|}><rsub|w\<in\>W>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|v\<in\>span<around*|(|<around*|{|<around*|(|Id<rsub|W>|)><rsub|x>\|x\<in\>W|}>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|v\<in\>span<around*|(|W|)>>>>>
    </eqnarray*>
  </proof>

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
    <label|linear span subset>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then <math|W\<subseteq\>span<around*|(|W|)>>.
  </theorem>

  <\proof>
    Let <math|w\<in\>W> then for <math|<around*|{|w|}>\<subseteq\>W> and
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|w|}>>>
    defined by <math|\<alpha\><rsub|w>=1> we have that
    <math|supp<around*|(|<around*|{|\<alpha\><rsub|x>|}><rsub|x\<in\><around*|{|w|}>>|)>=<around*|{|1|}>>
    is finite so that <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|w|}>>>
    has finite support. Further <math|w=<big|sum><rsub|q\<in\><around*|{|w|}>><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>
    proving that <math|w\<in\>span<around*|(|W|)>>. Hence we have
    <math|W\<subseteq\>span<around*|(|W|)>>.
  </proof>

  <\theorem>
    <label|linear span is a vector space>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then <math|span<around*|(|W|)>> is a sub-space of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> [so by [theorem:
    <reference|vector space sub-space is a vector space>]
    <math|<around*|\<langle\>|span<around*|(|W|)>,+,\<cdot\>|\<rangle\>>> is
    a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>].
  </theorem>

  <\proof>
    Let <math|\<alpha\>,\<beta\>\<in\>F> and
    <math|x,y\<in\>span<around*|(|W|)>> then there exists families
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> and
    <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>J>\<subseteq\>F> with
    finite support such that <math|x=<wide|<big|sum>|\<wide-bar\>><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>>
    and <math|y=<wide|<big|sum>|\<wide-bar\>><rsub|j\<in\>J><around*|(|\<beta\><rsub|j>\<cdot\>j|)>>.
    Define <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I<big|cup>J>> by\ 

    <\equation*>
      <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I<big|cup>J>\<subseteq\>F<text|
      by >\<gamma\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<alpha\><rsub|i><text|
      if >i\<in\>I\\J>>|<row|<cell|\<alpha\>\<cdot\>\<alpha\><rsub|i>+\<beta\>\<cdot\>b<rsub|i><text|
      if >i\<in\>I<big|cap>J>>|<row|<cell|\<beta\>\<cdot\>\<beta\><rsub|i><text|
      if >i\<in\>J\\I>>>>>
    </equation*>

    Then if <math|i\<in\>supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I<big|cup>J>|)>>
    we have that <math|i\<in\>I<big|cup>J> and
    <math|\<gamma\><rsub|i>\<neq\>0>, for <math|i\<in\>I<big|cup>J> we must
    then check the following possibilities:\ 

    <\description>
      <item*|<math|i\<in\>I\\J>>Then <math|\<alpha\>\<cdot\>\<alpha\><rsub|i>\<neq\>0>,
      so we must have <math|\<alpha\><rsub|i>\<neq\>0> [if
      <math|\<alpha\><rsub|i>=0> then <math|\<alpha\>\<cdot\>\<alpha\><rsub|i>=0>]
      proving that

      <\equation*>
        i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)><big|cup>supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>
      </equation*>

      <item*|<math|i\<in\>I<big|cap>J>>Then
      <math|\<alpha\>\<cdot\>\<alpha\><rsub|i>+\<beta\>\<cdot\>\<beta\><rsub|i>\<neq\>0>.
      If now <math|\<alpha\><rsub|i>=0\<wedge\>\<beta\><rsub|i>=0> then we
      have <math|\<alpha\>\<cdot\>\<alpha\><rsub|i>+\<beta\>\<cdot\>\<beta\><rsub|i>=0>
      contradicting <math|\<alpha\>\<cdot\>\<alpha\><rsub|i>+\<beta\>\<cdot\>\<beta\><rsub|i>\<neq\>0>.
      So we must have <math|\<alpha\><rsub|i>\<neq\>0\<vee\>\<beta\><rsub|i>\<neq\>0>
      or that

      <\equation*>
        i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)><big|cup>supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>
      </equation*>

      <item*|<math|i\<in\>J\\I>>Then <math|\<beta\>\<cdot\>\<beta\><rsub|i>\<neq\>0>,
      so we must have <math|\<beta\><rsub|i>\<neq\>0> [if
      <math|\<beta\><rsub|i>=0> then <math|\<beta\>\<cdot\>\<beta\><rsub|i>=0>]
      proving that

      <\equation*>
        i\<in\>supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)><big|cup>supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>
      </equation*>
    </description>

    proving that <math|supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I<big|cup>J>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)><big|cup>supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>>.
    By [theorems: <reference|union of two finite sets is finite>,
    <reference|subset of finite sets>] it follows that
    <math|supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I<big|cup>J>|)>>
    is finite, hence <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I<big|cup>J>>
    has finite support and <math|<big|sum><rsub|i\<in\>I<big|cup>J>\<gamma\><rsub|i>>
    is well defined. Further as clearly \ <math|I<big|cup>J> is the disjoint
    union of <math|I\\J>, <math|I<big|cap>J> and <math|J\\I> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I<big|cup>J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I\\J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>J\\I><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J><around*|(|<around*|(|\<alpha\>\<cdot\>\<alpha\><rsub|i>|)>\<cdot\>i|)>+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>J\\I><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J><around*|\<nobracket\>|\<alpha\>\<cdot\><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>|)>+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>J\\I><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support space finite sum
      (1)>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>J\\I><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>J\\I><around*|(|\<beta\>\<cdot\>\<beta\><rsub|i>|)>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>J\\I>\<beta\>\<cdot\><around*|(|\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support space finite sum
      (1)>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<gamma\><rsub|i>\<cdot\>i|)>+\<beta\>\<cdot\><big|sum><rsub|i\<in\>J\\I><around*|(|\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|<around*|(|\<alpha\>\<cdot\>\<alpha\><rsub|i>+\<beta\>\<cdot\>\<beta\><rsub|i>|)>\<cdot\>i|)>+\<beta\>\<cdot\><big|sum><rsub|i\<in\>J\\I><around*|(|\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|<around*|(|\<alpha\>\<cdot\>\<alpha\><rsub|i>|)>\<cdot\>i+<around*|(|\<beta\>\<cdot\>\<beta\><rsub|i>|)>\<cdot\>i|)>+\<beta\>\<cdot\><big|sum><rsub|i\<in\>J\\I><around*|(|\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of sums (2)>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<alpha\>\<cdot\>a<rsub|i>|)>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<beta\>\<cdot\>\<beta\><rsub|i>|)>\<cdot\>i+\<beta\>\<cdot\><big|sum><rsub|i\<in\>J\\I><around*|(|\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J>\<alpha\>\<cdot\><around*|(|a<rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\>\<cdot\><around*|(|\<beta\><rsub|i>\<cdot\>i|)>+\<beta\>\<cdot\><big|sum><rsub|i\<in\>J\\I><around*|(|\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I\\J><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>+\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I<big|cap>J><around*|(|a<rsub|i>\<cdot\>i|)>+\<beta\>\<cdot\><big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<beta\><rsub|i>\<cdot\>i|)>+\<beta\>\<cdot\><big|sum><rsub|i\<in\>J\\I><around*|(|\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i\<in\>I\\J><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|a<rsub|i>\<cdot\>i|)>|)>+\<beta\>\<cdot\><around*|(|<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<beta\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>J\\I><around*|(|\<beta\><rsub|i>\<cdot\>i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>+\<beta\>\<cdot\><big|sum><rsub|i\<in\>J><around*|(|\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y>>>>
    </eqnarray*>

    proving that <math|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y\<in\>span<around*|(|W|)>>.
    Now for <math|W> we have either:

    <\description>
      <item*|<math|W=\<varnothing\>>>Then by [example: <reference|linear span
      empty set>] <math|<around*|{|0|}>=span<around*|(|W|)>> proving that
      <math|span<around*|(|W|)>\<neq\>\<varnothing\>>

      <item*|<math|W\<neq\>\<varnothing\>>>Then as by [theorem:
      <reference|linear span subset>] <math|W\<subseteq\>span<around*|(|W|)>>
      so that <math|span<around*|(|W|)>\<neq\>0>
    </description>

    So in all cases <math|span<around*|(|W|)>\<neq\>\<varnothing\>> hence all
    conditions for a subspace are met proving that\ 

    <\equation*>
      span<around*|(|W|)><text| is a sub-space of
      ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>
    </equation*>
  </proof>

  <\theorem>
    <label|linear span of a subspace>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> a subspace of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> then
    <math|W=span<around*|(|W|)>>.
  </theorem>

  <\proof>
    By [theorem: <reference|linear span subset>] we have that\ 

    <\equation>
      <label|eq 11.14.056>W\<subseteq\>span<around*|(|W|)>
    </equation>

    If <math|v\<in\>span<around*|(|W|)>> then by definition there exists a
    family <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    with finite support so that <math|v=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>>.
    As <math|>by [theorem: <reference|vector space sub-space is a vector
    space>] <math|<around*|\<langle\>|W,+,\<cdot\>|\<rangle\>><text| is a
    vector space over ><around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> we have
    <math|\<forall\>i\<in\>I> that <math|\<alpha\><rsub|i>\<cdot\>i\<in\>W>.
    Hence by [theorem: <reference|support space finite sum (4)>] we have that
    <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>\<in\>W>
    proving that <math|v\<in\>W>. So <math|span<around*|(|W|)>\<subseteq\>W>
    which combined with [eq: <reference|eq 11.14.056>] gives

    <\equation*>
      W=span<around*|(|W|)>
    </equation*>
  </proof>

  <\corollary>
    <label|linear span of span>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then

    <\equation*>
      span<around*|(|span<around*|(|W|)>|)>=span<around*|(|W|)>
    </equation*>
  </corollary>

  <\proof>
    By [theorem: <reference|linear span is a vector space>]
    <math|span<around*|(|W|)>> is a sub-space of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> so that by the
    previous theorem [theorem: <reference|linear span of a subspace>] we have
    that <math|span<around*|(|W|)>=span<around*|(|span<around*|(|W|)>|)>>
  </proof>

  <\theorem>
    <label|linear span inclusion>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|U,W> with <math|U\<subseteq\>W\<subseteq\>V> then
    <math|span<around*|(|U|)>\<subseteq\>span<around*|(|W|)>>
  </theorem>

  <\proof>
    If <math|v\<in\>span<around*|(|U|)>> then there exists a family
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>U>\<subseteq\>F> with
    finite support such that <math|v=<big|sum><rsub|i\<in\>U><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>>.
    Define now

    <\equation*>
      <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>W><text| by
      ><choice|<tformat|<table|<row|<cell|\<alpha\><rsub|i><text| if
      >i\<in\>U>>|<row|<cell|0<text| if >i\<in\>W\\U>>>>>
    </equation*>

    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>W><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>U><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>+<big|sum><rsub|i\<in\>W\\U><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element
      (2)>>>>|<cell|<big|sum><rsub|i\<in\>U><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
    </eqnarray*>

    proving that <math|v\<in\>span<around*|(|W|)>>.
  </proof>

  <\theorem>
    <label|linear span minus linear compination is span>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then we have\ 

    <\enumerate>
      <item>If <math|W\<subseteq\>V> satisfies <math|span<around*|(|W|)>=V>
      then if <math|v\<in\>span<around*|(|W\\<around*|{|v|}>|)>> we have that
      <math|span<around*|(|W\\<around*|{|v|}>|)>=V>

      <item>If <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
      satisfies <math|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>=V>
      and for <math|k\<in\>I> we have that there exists a
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>>
      such that <math|v<rsub|k>=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>
      then <math|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>|)>=V>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|v\<in\>span<around*|(|W\\<around*|{|v|}>|)>> there exist
      a <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W\\<around*|{|v|}>>>
      with finite support such that <math|v=<big|sum><rsub|w\<in\>W\\<around*|{|v|}>><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>.
      Let <math|x\<in\>V> then as <math|span<around*|(|W|)>=V> there exists a
      <math|<around*|{|\<beta\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F> with
      finite support such that <math|x=<big|sum><rsub|w\<in\>W><around*|(|\<beta\><rsub|w>\<cdot\>w|)>>.
      Define now

      <\equation*>
        <around*|{|\<gamma\><rsub|\<gamma\>>|}><rsub|w\<in\>W\\<around*|{|v|}>><text|
        by >\<gamma\><rsub|w>=\<beta\><rsub|\<omega\>>+\<beta\><rsub|v>\<cdot\>\<alpha\><rsub|w>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|w\<in\>W\\<around*|{|v|}>><around*|(|\<gamma\><rsub|w>\<cdot\>w|)>>|<cell|=>|<cell|<big|sum><rsub|w\<in\>W\\<around*|{|v|}>><around*|(|\<beta\><rsub|w>+\<beta\><rsub|v>\<cdot\>\<alpha\><rsub|\<omega\>>|)>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<big|sum><rsub|w\<in\>W\\<around*|{|v|}>><around*|(|\<beta\><rsub|w>\<cdot\>w+<around*|(|\<beta\><rsub|v>\<cdot\>\<alpha\><rsub|w>|)>\<cdot\>w|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of sums (2)>]>>>|<cell|<big|sum><rsub|w\<in\>W\\<around*|{|w|}>><around*|(|\<beta\><rsub|w>\<cdot\>w|)>+<big|sum><rsub|w\<in\>W\\<around*|{|v|}>>\<beta\><rsub|v>\<cdot\><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support space finite sum
        (1)>]>>>|<cell|<big|sum><rsub|w\<in\>W\\<around*|{|w|}>><around*|(|\<beta\><rsub|w>\<cdot\>w|)>+\<beta\><rsub|v>\<cdot\><big|sum><rsub|w\<in\>W\\<around*|{|v|}>><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>W\\<around*|{|w|}>><around*|(|\<beta\><rsub|w>\<cdot\>w|)>+\<beta\><rsub|v>\<cdot\>v>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|w\<in\>W\\<around*|{|w|}>><around*|(|\<beta\><rsub|w>\<cdot\>w|)>+<big|sum><rsub|w\<in\><around*|{|v|}>><around*|(|\<beta\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|w\<in\>W><around*|(|\<beta\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|=>|<cell|x>>>>
      </eqnarray*>

      proving that <math|span<around*|(|W\\<around*|{|v|}>|)>=V>.

      <item>Let <math|v\<in\>V> then as <math|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>=V>
      there exists a <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      with finite support such that <math|v=<big|sum><rsub|i\<in\>I><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>.
      Define now\ 

      <\equation*>
        <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>><text|
        by >\<gamma\><rsub|i>=\<beta\><rsub|i>+\<beta\><rsub|k>\<cdot\>\<alpha\><rsub|i>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<gamma\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|<around*|(|\<beta\><rsub|i>+\<beta\><rsub|k>\<cdot\>\<alpha\><rsub|i>|)>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>+\<beta\><rsub|k>\<cdot\><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of sums (2)>]>>>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>+<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<beta\><rsub|k>\<cdot\><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support space finite sum
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>+\<beta\><rsub|k>\<cdot\><big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>+\<beta\><rsub|k>\<cdot\>v<rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|k|}>><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|v
        >>>>
      </eqnarray*>

      proving that <math|v\<in\>span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>|)>>.
      Hence <math|V\<subseteq\>span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>|)>\<subseteq\>V>
      proving that\ 

      <\equation*>
        span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>|)>\<subseteq\>V
      </equation*>
    </enumerate>

    \;
  </proof>

  <\definition>
    <label|linear independent vector><index|independent vectors><dueto|linear
    independent family of vectors>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>.
    A family <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> of
    vectors is a <with|font-series|bold|linear independent family> if for
    every family <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    with finite support such that <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>=0>
    we have <math|\<forall\>i\<in\>I> that <math|\<alpha\><rsub|i>=0>
  </definition>

  <\definition>
    <label|linear imdependent set><index|independent set of
    vectors><dueto|linear independent set of vectors>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>. Then
    <math|W\<subseteq\>V> is a <with|font-series|bold|linear independent set>
    if for every family <math|\<forall\><around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F>
    such that <math|<big|sum><rsub|w\<in\>W><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>=0>
    we have <math|\<forall\>w\<in\>W> <math|\<alpha\><rsub|w>=0>.
  </definition>

  <\theorem>
    <label|linear sub family of independent family>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    we have\ 

    <\enumerate>
      <item>If <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> is
      linear independent then if <math|J\<subseteq\>I> we have that
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>J>> is linear independent

      <item>If <math|W\<subseteq\>V> is linear indenpendent then if
      <math|U\<subseteq\>W> then <math|U> is linear independent
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>J>> be such
      that <math|<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)>=0>,
      define

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I><text| by
        >\<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|i><text|
        if >i\<in\>J>>|<row|<cell|0<text| if >i\<in\>I\\J>>>>>
      </equation*>

      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|=\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>\<Iota\>\\J><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>+<big|sum><rsub|i\<in\>J><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of neutral element
        (2)>>>>|<cell|0+<big|sum><rsub|i\<in\>J><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>J><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      which as <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear
      independent dependent gives that <math|\<forall\>i\<in\>I>
      <math|\<beta\><rsub|i>=0> so that <math|\<forall\>i\<in\>J> we have
      <math|\<alpha\><rsub|j>=\<beta\><rsub|j>=0>. Hence
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>J>> is linear independent.\ 

      <item>Let <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>U>> be such
      that <math|<big|sum><rsub|u\<in\>U><around*|(|\<alpha\><rsub|u>\<cdot\>u|)>=0>,
      define

      <\equation*>
        <around*|{|\<beta\><rsub|w>|}><rsub|w\<in\>W><text| by
        >\<beta\><rsub|w>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|w><text|
        if >w\<in\>U>>|<row|<cell|0<text| if >w\<in\>W\\U>>>>>
      </equation*>

      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|w\<in\>W><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|=\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|w\<in\>W\\U><around*|(|\<beta\><rsub|u>\<cdot\>u|)>+<big|sum><rsub|w\<in\>U><around*|(|\<beta\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of neutral element
        (2)>>>>|<cell|0+<big|sum><rsub|w\<in\>U><around*|(|\<beta\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>U><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      which as <math|W> is linear independent dependent gives that
      <math|\<forall\>u\<in\>W> <math|\<beta\><rsub|w>=0> so that
      <math|\<forall\>u\<in\>U> we have <math|\<alpha\><rsub|u>=\<beta\><rsub|u>=0>.
      Hence <math|U> is linear independent.\ 
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|linear independent set alterantive>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then we have\ 

    <\equation*>
      W<text| is linear independent <math|\<Leftrightarrow\><text|
      ><around*|{|w|}><rsub|w\<in\>W><text| is linear independent>>>
    </equation*>

    where <math|<around*|{|w|}><rsub|w\<in\>W>\<equallim\><rsub|def><around*|{|<around*|(|Id<rsub|W>|)><rsub|w>|}><rsub|w\<in\>W>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|<around*|{|\<alpha\><rsub|u>|}><rsub|w\<in\>W>\<subseteq\>F>
      be a family with finite support such that

      <\equation*>
        <big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w=0.
      </equation*>

      then as <math|W> is linear independent we have
      <math|\<forall\>w\<in\>W> <math|\<alpha\><rsub|w>=0>. As
      <math|\<forall\>w\<in\>W> <math|<around*|(|Id<rsub|W>|)><rsub|w>=Id<rsub|W><around*|(|w|)>=w>
      that <math|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|\<omega\>>\<cdot\><around*|(|Id<rsub|W>|)><rsub|w>=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w=0>
      so that <math|<around*|{|<around*|(|Id<rsub|W>|)><rsub|w>|}><rsub|w\<in\>W>>
      is linear independent which as <math|<around*|{|<around*|(|Id<rsub|W>|)><rsub|w>|}><rsub|w\<in\>W>\<equallim\><rsub|def><around*|{|w|}><rsub|w\<in\>W>>
      proves that <math|<around*|{|w|}><rsub|w\<in\>W>> is linear
      independent.

      <item*|<math|\<Leftarrow\>>>Let <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w>\<subseteq\>F>
      be a family with finite support such that
      <math|<big|sum><rsub|w\<in\>W><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>=0
      then as\ 

      <\equation*>
        <big|sum><rsub|u\<in\>w><around*|(|\<alpha\><rsub|w>\<cdot\><around*|(|Id<rsub|W>|)><rsub|w>|)>=<big|sum><rsub|u\<in\>w><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>=0
      </equation*>

      we have as <math|<around*|{|<around*|(|Id<rsub|W>|)><rsub|w>|}><rsub|w\<in\>W>>
      is linear independent that <math|\<forall\>w\<in\>W> we have
      <math|\<alpha\><rsub|w>=0> we have that <math|W> is linear dependent.
    </description>
  </proof>

  The opposite of independence is called linear dependency.

  <\definition>
    <label|linear dependent family><index|linear dependent
    family><index|linear depenedent family><dueto|linear dependent family>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>. Then
    a family <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is a
    <with|font-series|bold|linear dependent family> if it is
    <with|font-series|bold|not> a linear independent family. Using the
    definition of linear independency we have:
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> is linear
    dependent if there exists a family <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>>
    with finite support satisfying <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>=0>
    such that <math|\<exists\>i\<in\>I> with <math|\<alpha\><rsub|i>\<neq\>0>
  </definition>

  <\definition>
    <label|linear dependent set><index|linear dependent set><dueto|linear
    dependent set>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be
    a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>.
    Then a set <math|W\<subseteq\>V > is <with|font-series|bold|linear
    dependent set> if it is <with|font-series|bold|not> a linear independent
    set. Using the definition of linear independency we have:
    <math|W\<subseteq\>V> is l<with|font-series|bold|inear dependent> if
    there exist a family<math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F>
    with finite support satisfying <math|<big|sum><rsub|w\<in\>W><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>=0>
    such that <math|\<exists\>w\<in\>W> with
    <math|\<alpha\><rsub|w>\<neq\>0>.
  </definition>

  <\theorem>
    <label|linear dependent family alternative>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a family then

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|{|v<rsub|i>|}><rsub|i\<in\>I><text|
      is linear dependent>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\>i\<in\>I,<text|
      a >J\<subseteq\>I<text| with >i\<nin\>J<text| and a
      ><around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>J>\<subseteq\>F<text| such
      that >v<rsub|i>=<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)>>|<cell|>>>>
    </eqnarray*>

    In other words <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear
    dependent if one of the vectors in the family can be written as a linear
    combination of the other vectors.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
      is a linear dependent, there exist a
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> with
      finite support satisfying <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>=0>
      such that <math|\<exists\>i\<in\>I> with
      <math|\<alpha\><rsub|i>\<neq\>0>. Take <math|J=I\\<around*|{|i|}>> then
      <math|I=J<big|cup><around*|{|i|}>> and
      <math|\<varnothing\>=J<big|cap><around*|{|i|}>> hence we have by
      [theorem: <reference|support over disjoint subsets>] \ that

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>=0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)>+<big|sum><rsub|j\<in\><around*|{|i|}>><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)><rsub|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)>+\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>>>
      </eqnarray*>

      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|-\<alpha\><rsub|i>|)>\<cdot\>v<rsub|i>=<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)>>|<cell|\<Rightarrowlim\><rsub|-\<alpha\><rsub|i>\<neq\>0>>|<cell|v<rsub|i>=<around*|(|-\<alpha\><rsub|i>|)><rsup|-1>\<cdot\><big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|support space finite sum
        (1)>]>>>|<cell|v<rsub|i>=<big|sum><rsub|j\<in\>J><around*|(|<around*|(|<around*|(|-\<alpha\><rsub|i>|)><rsup|-1>\<cdot\>\<alpha\><rsub|j>|)>\<cdot\>v<rsub|j>|)>>>>>
      </eqnarray*>

      \ Now if we take <math|<around*|{|\<beta\><rsub|j>|}><rsub|j\<in\>J>>
      by <math|\<beta\><rsub|i>=<around*|(|<around*|(|-\<alpha\><rsub|i>|)><rsup|-1>\<cdot\>\<alpha\><rsub|j>|)>>
      then we have

      <\equation*>
        v<rsub|i>=<big|sum><rsub|i\<in\>J>\<beta\><rsub|j>\<cdot\>v<rsub|j>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Assume that there exists a <math|i\<in\>I>,
      a <math|J\<subseteq\>I> such that <math|i\<nin\>J> and a
      <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>J>\<subseteq\>F> such
      that\ 

      <\equation*>
        v<rsub|i>=<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)>
      </equation*>

      Then <math|i\<in\>I\\J> and <math|I=<around*|(|I\\J|)>\\<around*|{|i|}><big|cup><around*|{|i|}><big|cup>J>
      and <math|<around*|(|<around*|(|I\\J|)>\\<around*|{|i|}>|)><big|cap><around*|{|i|}>=\<varnothing\>>,
      <math|<around*|(|<around*|(|I\\J|)>\\<around*|{|i|}>|)><big|cap>J=\<varnothing\>
      > and <math|<around*|{|i|}><big|cap>J=\<varnothing\>> so we can define

      <\equation*>
        <around*|{|\<beta\><rsub|j>|}><rsub|j\<in\>I><text| by
        >\<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|-1<text| if
        >j\<in\><around*|{|i|}>>>|<row|<cell|0<text| if
        >j\<in\><around*|(|I\\J|)>\\<around*|{|i|}>>>|<row|<cell|\<alpha\><rsub|j><text|
        if >i\<in\>J>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|j\<in\>I><around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|j\<in\><around*|(|I\\J|)>\\<around*|{|i|}>><around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>+<big|sum><rsub|j\<in\>J><around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>+<big|sum><rsub|j\<in\><around*|{|i|}>><around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of neutral element
        (2)>]>>>|<cell|0+<big|sum><rsub|j\<in\>J><around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>+<big|sum><rsub|j\<in\><around*|{|i|}>><around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<beta\><rsub|j>\<cdot\>v<rsub|j>|)>+<around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|j>|)>+<around*|(|-v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|v<rsub|i>+<around*|(|-v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      proving as <math|\<beta\><rsub|i>\<neq\>0> that
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear dependent.
    </description>
  </proof>

  <\theorem>
    <label|linear dependent set alternative>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|W<text| is linear dependent
      >>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\>w\<in\>W<text|,
      >\<exists\><around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F<text|
      with finite support such that >w=<big|sum><rsub|u\<in\>W><around*|(|\<alpha\><rsub|u>\<cdot\>u|)>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  In other words <math|W> is linear dependent if one of the vectors in
  <math|W> can be written as a linear combination of the other vectors in
  <math|W>.

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|W<text| is linear
      dependent>>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
      <reference|linear independent set alterantive>]>>>|<cell|<around*|{|w|}><rsub|w\<in\>W><text|
      is linear dependent>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theor,
      <reference|linear dependent family alternative>]>>>|<cell|\<exists\>w\<in\>W<text|
      and >\<exists\><around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>W>\<subseteq\>F<text|
      with finite support such that >w=<big|sum><rsub|u\<in\>U><around*|(|\<alpha\><rsub|u>\<cdot\>u|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|linear dependent conditions>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    we have

    <\enumerate>
      <item>If <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>I>\<subseteq\>V> is
      family of vectors such that <math|\<exists\>i,j\<in\>I> with
      <math|i\<neq\>j> such that <math|v<rsub|i>=v<rsub|j>> then
      <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>I>> is linear dependent.

      <item>If <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>I>\<subseteq\>V> is
      family of vectors such that <math|\<exists\>i\<in\>I> with
      <math|v<rsub|i>=0> then <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>I>>
      is linear dependent.

      <item>If <math|W\<subseteq\>V> such that <math|0\<in\>W> then <math|W>
      is linear dependent.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Define

      <\equation*>
        <around*|{|\<alpha\><rsub|k>|}><rsub|k\<in\>I><text| by
        >\<alpha\><rsub|k>=<choice|<tformat|<table|<row|<cell|1<text| if
        >k=i>>|<row|<cell|-1<text| if >k=j>>|<row|<cell|0<text| if
        >k\<ni\>I\\<around*|{|i,j|}>>>>>>
      </equation*>

      then <math|sup<around*|(|<around*|{|\<alpha\><rsub|k>|}><rsub|k\<in\>I>|)>=<around*|{|i,j|}>>
      which is finite hence <math|<around*|{|\<alpha\><rsub|k>|}><rsub|k\<in\>I>>
      has finite support. Further we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|k\<in\>I><around*|(|\<alpha\><rsub|k>\<cdot\>v<rsub|k>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support eleminate zeroes>]>>>|<cell|<big|sum><rsub|k\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|k>|}><rsub|k\<in\>I>|)>><around*|(|\<alpha\><rsub|k>\<cdot\>v<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|i,j|}>><around*|(|\<alpha\><rsub|k>\<cdot\>v<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|k\<in\><around*|{|i|}>><around*|(|\<alpha\><rsub|k>\<cdot\>v<rsub|k>|)>+<big|sum><rsub|k\<in\><around*|{|j|}>><around*|(|\<alpha\><rsub|k>\<cdot\>v<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|\<alpha\><rsub|i>\<cdot\>v<rsub|i>+\<alpha\><rsub|j>\<cdot\>v<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|v<rsub|i>+<around*|(|-v<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|v<rsub|i>=v<rsub|j>>>|<cell|0>>>>
      </eqnarray*>

      proving a <math|\<alpha\><rsub|i>\<neq\>0> that
      <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>I>> is linear dependent.

      <item>Define

      <\equation*>
        <around*|{|\<alpha\><rsub|k>|}><rsub|k\<in\>I><text| by
        >\<alpha\><rsub|k>=<choice|<tformat|<table|<row|<cell|1<text| if
        >k=i>>|<row|<cell|0<text| if >k\<in\>I\\<around*|{|i|}>>>>>>
      </equation*>

      then <math|supp<around*|(|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>|)>=<around*|{|i|}>>
      which is finite, hence <math|<around*|{|x<rsub|k>|}><rsub|k\<in\>I>>
      has finite support. Further we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|k\<in\>I><around*|(|\<alpha\><rsub|k>\<cdot\>v<rsub|k>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support eleminate zeroes>]>>>|<cell|<big|sum><rsub|k\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|k>|}><rsub|k\<in\>I>|)>><around*|(|\<alpha\><rsub|k>\<cdot\>v<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k\<in\><around*|{|i|}>><around*|(|\<alpha\><rsub|k>\<cdot\>v<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|v<rsub|i>=0>>|<cell|\<alpha\><rsub|i>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      proving a <math|\<alpha\><rsub|i>\<neq\>0> that
      <math|<around*|{|v<rsub|k>|}><rsub|k\<in\>I>> is linear dependent.

      <item>Define

      <\equation*>
        <around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W><text| by
        >\<alpha\><rsub|w>=<choice|<tformat|<table|<row|<cell|1<text| if
        >w=0>>|<row|<cell|0<text| if >w\<in\>W\\<around*|{|0|}>>>>>>
      </equation*>

      then <math|supp<around*|(|<around*|{|x<rsub|w>|}><rsub|w\<in\>W>|)>=<around*|{|0|}>>
      which is finite, hence <math|<around*|{|x<rsub|w>|}><rsub|w\<in\>W>>
      has finite support. Further we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|w\<in\>I><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support eleminate zeroes>]>>>|<cell|<big|sum><rsub|w\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>|)>><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\><around*|{|0|}>><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over a singleton>]>>>|<cell|\<alpha\><rsub|0>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      proving a <math|\<alpha\><rsub|0>\<neq\>0> that <math|W> is linear
      dependent.
    </enumerate>
  </proof>

  <\theorem>
    <label|linear bijection (in)dependency>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    we have:

    <\enumerate>
      <item>If <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>> is linear
      independent and <math|\<beta\>:J\<rightarrow\>I> a bijection then
      <math|<around*|{|e<rsub|\<beta\><around*|(|j|)>>|}><rsub|j\<in\>J>> is
      linear independent.

      <item>If <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>> is linear
      dependent and <math|\<beta\>:J\<rightarrow\>I> a bijection then
      <math|<around*|{|e<rsub|\<beta\><around*|(|j|)>>|}><rsub|j\<in\>J>> is
      linear dependent.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>J>\<subseteq\>F>
      is a family with finite support such that
      <math|<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|\<beta\><around*|(|j|)>>|)>=0>.
      Define <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      by <math|\<gamma\><rsub|i>=\<alpha\><rsub|\<beta\><rsup|-1><around*|(|i|)>>>
      so that <math|\<forall\>j\<in\>J> we have
      <math|\<gamma\><rsub|\<beta\><around*|(|j|)>>=\<alpha\><rsub|\<beta\><rsup|><around*|(|\<beta\><rsup|-1><around*|(|j|)>|)>>=\<alpha\><rsub|j>>,
      then we have

      <\equation*>
        0=<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|\<beta\><around*|(|j|)>>|)>=<big|sum><rsub|j\<in\>J><around*|(|\<gamma\><rsub|\<beta\><around*|(|j|)>>\<cdot\>v<rsub|\<beta\><around*|(|j|)>>|)>\<equallim\><rsub|<text|[theorem:
        <reference|support bijection on index>]>><big|sum><rsub|i\<in\>I><around*|(|\<gamma\><rsub|i>\<cdot\>v<rsub|i>|)>
      </equation*>

      which as <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear
      independent implies that <math|\<forall\>i\<in\>I>
      <math|\<gamma\><rsub|i>=0>. If now <math|j\<in\>J> then
      <math|\<alpha\><rsub|j>=\<gamma\><rsub|\<beta\><around*|(|j|)>>=0>.
      Hence <math|<around*|{|v<rsub|\<beta\><around*|(|j|)>>|}><rsub|j\<in\>J>>
      is linear independent.

      <item>As <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>> is linear
      dependent there exists a family <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      with finite support such that <math|\<exists\>k\<in\>I> such that
      <math|\<alpha\><rsub|k>\<neq\>0> and
      <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>=0>.
      Define now <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>J>> by
      <math|\<gamma\><rsub|j>=\<alpha\><rsub|\<beta\><around*|(|j|)>>> then
      we have that for <math|l=\<beta\><rsup|-1><around*|(|k|)>\<in\>I> and
      <math|\<gamma\><rsub|l>=\<alpha\><rsub|\<beta\><around*|(|\<beta\><rsup|-1><around*|(|k|)>|)>>=\<alpha\><rsub|k>\<neq\>0>.
      Further we have\ 

      <\equation*>
        <big|sum><rsub|j\<in\>J><around*|(|\<gamma\><rsub|j>\<cdot\>v<rsub|\<beta\><around*|(|j|)>>|)>=<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|\<beta\><around*|(|j|)>>\<cdot\>v<rsub|\<beta\><around*|(|j|)>>|)>\<equallim\><rsub|<text|[theorem:
        <reference|support bijection on index>]>><big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>=0
      </equation*>

      proving that <math|<around*|{|v<rsub|\<beta\><around*|(|j|)>>|}><rsub|j\<in\>J>>
      is linear dependent.
    </enumerate>
  </proof>

  <\lemma>
    <label|linear independent family and bijection>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a linear
    independent family then <math|\<beta\>:I\<rightarrow\><around*|{|v<rsub|i>\|i\<in\>I|}>>defined
    by <math|\<beta\><around*|(|i|)>=v<rsub|i>> is a bijection
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>>
      then <math|v<rsub|k>=v<rsub|l>>. Assume that <math|k\<neq\>l> then we
      have by \ [theorem: <reference|linear dependent conditions>] that
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear dependent
      contradicting the fact that <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
      is linear independent, so we must have that <math|k=l>.

      <item*|surjectivity>If <math|y\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>
      then <math|\<exists\>i\<in\>I> such that <math|y=v<rsub|i>> hence
      <math|y=\<beta\><around*|(|i|)>>
    </description>
  </proof>

  <\theorem>
    <label|linear independency condition (1)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a linear
    independent family then <math|<around*|{|v<rsub|i>\|i\<in\>I|}>> is
    linear independent.
  </theorem>

  <\proof>
    Let <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>>>
    be a family with fnite support such that
    <math|<big|sum><rsub|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>=0>.
    Using [lemma: <reference|linear independent family and bijection>] we
    have the bijection <math|\<beta\>:I\<rightarrow\><around*|{|v<rsub|i>\|i\<in\>I|}>>
    defined by <math|\<beta\><around*|(|i|)>=v<rsub|i>>. By [theorem:
    <reference|support bijection on index>] we have that
    <math|<around*|{|\<alpha\><rsub|\<beta\><around*|(|i|)>>|}><rsub|i\<in\>I>>
    has finite support. Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>v<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>\<beta\><around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    which as <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear
    independent proves that <math|\<forall\>i\<in\>I>
    <math|\<alpha\><rsub|\<beta\><around*|(|i|)>>=0>. Finally if
    <math|w\<in\><around*|{|v<rsub|i>\|i\<in\>I|}>> then
    <math|\<exists\>i\<in\>I> such that <math|w=\<beta\><around*|(|i|)>> so
    that <math|\<alpha\><rsub|w>=\<alpha\><rsub|\<beta\><around*|(|i|)>>=0>.
    Hence <math|\<forall\>w\<in\>W> we have that <math|\<alpha\><rsub|w>=0>
    or that\ 

    <\equation*>
      <around*|{|v<rsub|i>\|i\<in\>I|}><text| is linear independent>
    </equation*>
  </proof>

  By contraposition we have the following corollary

  <\corollary>
    <label|linear dependency condition>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>W> a linear
    dependent family then <math|<around*|{|v<rsub|i>\|i\<in\>I|}>> is linear
    dependent.
  </corollary>

  <\proof>
    Assume that <math|<around*|{|v<rsub|i>\|i\<in\>I|}>> is linear
    independent then by [theorem: <reference|linear independency condition
    (1)>] <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear independent
    contradicting the fact that <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
    was assumed to be dependent. Hence <math|<around*|{|v<rsub|i>\|i\<in\>I|}>>
    is linear dependent.
  </proof>

  \;

  In general the opposite implication, <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>
  is linear independent if <math|<around*|{|v<rsub|i>\|i\<in\>I|}>> is linear
  independent is not true. For example <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|0,1|}>>>
  where <math|v<rsub|0>=v<rsub|1>\<neq\>0> is linear dependent however
  <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|0,1|}>|}>=<around*|{|v<rsub|0>|}>>
  is linear independent.\ 

  <\definition>
    <label|linear extension of a family><dueto|extension of a family>If
    <math|V> is a set and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    and <math|<around*|{|y<rsub|j>|}><rsub|j\<in\>J>> then

    <\equation*>
      <with|font-series|bold|<around*|{|y<rsub|j>|}><rsub|j\<in\>J><text| is
      a extension of ><around*|{|x<rsub|i>|}><rsub|i\<in\>I>>
    </equation*>

    noted as

    <\equation*>
      <around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<preccurlyeq\><around*|{|y<rsub|j>|}><rsub|j\<in\>J>
    </equation*>

    if and only if

    <\equation*>
      I\<subseteq\>J<text| and >\<forall\>i\<in\>I<text| we have
      >x<rsub|i>=y<rsub|i>
    </equation*>
  </definition>

  <\note>
    <label|linear extension of a set>If <math|V> is a set then
    <math|<around*|{|x|}><rsub|x\<in\>I>\<subseteq\>V> is a extension of
    <math|<around*|{|y|}><rsub|y\<in\>J>\<subseteq\>V> if and only if
    <math|I\<subseteq\>J>
  </note>

  <\proof>
    By definition <math|<around*|{|x|}><rsub|x\<in\>I>=<around*|{|<around*|(|Id<rsub|I>|)><rsub|x>|}><rsub|x\<in\>I>>
    and <math|<around*|{|y|}><rsub|y\<in\>J>=<around*|{|<around*|(|Id<rsub|J>|)><rsub|y><rsub|>|}><rsub|y\<in\>J>>.
    Hence\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|<around*|{|x|}><rsub|x\<in\>I>\<preccurlyeq\><around*|{|y|}><rsub|y\<in\>J>>
      then <math|I\<subseteq\>J>

      <item*|<math|\<Leftarrow\>>>If <math|I\<subseteq\>J> then if
      <math|x\<in\>I> we have <math|<around*|(|Id<rsub|I>|)><rsub|x>=Id<rsub|I><around*|(|x|)>\<equallim\><rsub|x\<in\>J>Id<rsub|J><around*|(|j|)>=<around*|(|Id<rsub|J>|)><rsub|j>>
      proving that

      <\equation*>
        <around*|{|<around*|(|Id<rsub|I>|)><rsub|x>|}><rsub|x\<in\>I>\<preccurlyeq\><around*|{|<around*|(|Id<rsub|J>|)><rsub|y><rsub|>|}><rsub|y\<in\>J>
      </equation*>

      so that <math|<around*|{|x|}><rsub|x\<in\>I>\<preccurlyeq\><around*|{|y|}><rsub|y\<in\>J>>
    </description>
  </proof>

  <\theorem>
    Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then we have\ 

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>W> is
      linear dependent then every <math|<around*|{|y<rsub|j>|}><rsub|j\<in\>J>
      such that <around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<preccurlyeq\><around*|{|y<rsub|j>|}><rsub|j\<in\>J>>
      is linear dependent.

      <item>If <math|U\<subseteq\>W\<subseteq\>V> and <math|U> is linear
      dependent then <math|W> is linear dependent.\ 
    </enumerate>
  </theorem>

  <\proof>
    \ As <math| <around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<preccurlyeq\><around*|{|y<rsub|j>|}><rsub|j\<in\>J>>
    we have <math|I\<subseteq\>J> and <math|\<forall\>i\<in\>I>
    <math|x<rsub|i>=y<rsub|i>>.

    <\enumerate>
      <item>As <math|> <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is
      linear dependent there exists a family
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>> with finite
      support satisfying <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>=0>
      such that <math|\<exists\>i\<in\>I> with <math|x<rsub|i>\<neq\>0>. As
      <math|I\<subseteq\>J> we can define

      <\equation*>
        <around*|{|\<beta\><rsub|j>|}><rsub|j\<in\>J><text| by
        >\<beta\><rsub|j>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|j><text|
        if >j\<in\>I>>|<row|<cell|0<text| if >j\<in\>J\\I>>>>>
      </equation*>

      then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<beta\><rsub|j>\<cdot\>y<rsub|j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|j\<in\>I><around*|(|\<beta\><rsub|j>\<cdot\>y<rsub|j>|)>+<big|sum><rsub|j\<in\>J\\I><around*|(|\<beta\><rsub|j>\<cdot\>y<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|j\<in\>I><around*|(|\<beta\><rsub|j>\<cdot\>y<rsub|j>|)>+0>>|<row|<cell|>|<cell|\<equallim\><rsub|j\<in\>I\<Rightarrow\>y<rsub|j>=x<rsub|j>>>|<cell|<big|sum><rsub|j\<in\>I><around*|(|\<alpha\><rsub|j>\<cdot\>x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      which as <math|\<beta\><rsub|i>\<equallim\><rsub|i\<in\>I>\<alpha\><rsub|i>\<neq\>0>
      proves that <math|<around*|{|y<rsub|j>|)><rsub|j\<in\>J>> is linear
      dependent.

      <item>As <math|U\<subseteq\>W> we have by [note: <reference|linear
      extension of a set>] that <math|<around*|{|x|}><rsub|x\<in\>U>\<preccurlyeq\><around*|{|y|}><rsub|y\<in\>W>>.
      As <math|U> is linear dependent then
      <math|<around*|{|x|}><rsub|x\<in\>U>> is liner dependent hence by (1)
      we have that <math|<around*|{|y|}><rsub|y\<in\>W>> is linear dependent,
      proving that <math|W> is linear dependent.
    </enumerate>
  </proof>

  <subsubsection|Basis of a vector space>

  We are now ready define the most important concept of a vector space, that
  of a basis.\ 

  <\definition>
    <label|basis of a vector space>Let <math|<around*|\<langle\>|V,+,*|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then a family <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    is a basis of <math|V> iff

    <\enumerate>
      <item><math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is linear
      independent

      <item><math|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>=V>
    </enumerate>
  </definition>

  <\definition>
    <label|basis finite/infinite>Let <math|<around*|\<langle\>|V,+,*|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    an <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> a basis for
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> then we say that\ 

    <\equation*>
      <around*|{|v<rsub|i>|}><rsub|i\<in\>I><text| is finite
      >\<Leftrightarrow\><text| >I<text| is finite>
    </equation*>

    <\equation*>
      <around*|{|v<rsub|i>|}><rsub|i\<in\>I><text| is infinite
      >\<Leftrightarrow\><text| >I<text| is infinite>
    </equation*>
  </definition>

  <\theorem>
    <label|basis condition>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,*\<cdot\>|\<rangle\>>>
    and <math|W\<subset\>V> such that

    <\enumerate>
      <item><math|W> is linear independent

      <item><math|span<around*|(|W|)>=V>
    </enumerate>

    then\ 

    <\equation*>
      <around*|{|w|}><rsub|w\<in\>W><text| is a basis for >V
    </equation*>

    where <math|<around*|{|w|}><rsub|w\<in\>W>\<equallim\><rsub|def><around*|{|<around*|(|Id<rsub|W>|)><rsub|w>|}><rsub|w\<in\>W>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|W> is linear independent we have by [theorem:
      <reference|linear independent set alterantive>] that
      <math|<around*|{|w|}><rsub|w\<in\>W>> is linear independent.

      <item>Using [theorem: <reference|linear span equivalence>] we have that
      <math|span<around*|(|<around*|{|w|}><rsub|w\<in\>W>|)>=span<around*|(|W|)>=V>
    </enumerate>
  </proof>

  <\theorem>
    <label|basis and bijection>Let <math|<around*|\<langle\>|V,+,*|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> a basis for <math|V> and
    <math|\<beta\>:J\<rightarrow\>I> bijection then
    <math|<around*|{|v<rsub|\<beta\><around*|(|j|)>>|}><rsub|j\<in\>J>> is a
    basis for <math|V>.
  </theorem>

  <\proof>
    We have to prove the following:

    <\description>
      <item*|independency>This follows from [theorem: <reference|linear
      bijection (in)dependency>].

      <item*|span>If <math|v\<in\>V> then as
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is a basis, there exist a
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> such
      that <math|v=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>.
      Define <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      by <math|\<gamma\><rsub|i>=\<alpha\><rsub|\<beta\><rsup|-1><around*|(|i|)>>>
      so that <math|\<forall\>j\<in\>J> we have
      <math|\<gamma\><rsub|\<beta\><around*|(|j|)>>=\<alpha\><rsub|\<beta\><rsup|><around*|(|\<beta\><rsup|-1><around*|(|j|)>|)>>=\<alpha\><rsub|j>>,
      then we have

      <\equation*>
        <big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|\<beta\><around*|(|j|)>>|)>=<big|sum><rsub|j\<in\>J><around*|(|\<gamma\><rsub|\<beta\><around*|(|j|)>>\<cdot\>v<rsub|\<beta\><around*|(|j|)>>|)>\<equallim\><rsub|<text|[theorem:
        <reference|support bijection on index>]>><big|sum><rsub|i\<in\>I><around*|(|\<gamma\><rsub|i>\<cdot\>v<rsub|i>|)>=v
      </equation*>

      proving that <math|span<around*|(|<around*|{|v<rsub|\<beta\><around*|(|j|)>>|}><rsub|j\<in\>J>|)>=V>
    </description>
  </proof>

  <\example>
    <label|basis trivial space basis>Let <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>
    be the trivial vector space [see example: <reference|vector space
    trivial>] then <math|<around*|{|v|}><rsub|v\<in\>\<emptyset\>>> is a
    basis for <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>.
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|I\<subseteq\>\<varnothing\>> then
      <math|I=\<varnothing\>> and for <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>F>
      with finite support satisfying <math|<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>=0>
      we have vacuously that <math|\<forall\>i\<in\>\<varnothing\>> we have
      <math|\<alpha\><rsub|i>=0>. So <math|\<varnothing\>> is linear
      independent.

      <item>Using [example: <reference|linear span empty set>] we have that
      <math|span<around*|(|\<varnothing\>|)>=0>
    </enumerate>

    Applying then [theorem: <reference|basis condition>] proves that
    <math|<around*|{|w|}><rsub|w\<in\>\<varnothing\>>> is a basis for
    <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>.
  </proof>

  It turn out that the basis of a non trivial vector space is non empty.

  <\theorem>
    <label|basis of non trivial vector space>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a non trivial
    vector space [so <math|V\<neq\><around*|{|0|}>>] over
    <math|<around*|\<langle\>|F,+,*\<cdot\>|\<rangle\>>> and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> then
    <math|I\<neq\>\<varnothing\>>
  </theorem>

  <\proof>
    As <math|V\<neq\><around*|{|0|}>> there exist a <math|v\<in\>V> such that
    <math|v\<neq\>\<varnothing\>>. Assume that <math|I=\<emptyset\>> and
    <math|v\<in\>V=span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>>,
    then there exist a family <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>>
    with finite support such that <math|v=<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>=0>
    contradicting <math|v\<neq\>0>. So we must have that <math|I\<neq\>0>.
  </proof>

  One benefit of a basis of a vector space is that every vector can be
  written as a unique linear combination of the basis vectors. This is
  expressed in the following theorem.

  <\theorem>
    <label|basis coordinates><dueto|Coordinates of a vector>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text|
      is a basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>v\<in\>V
      there exist a <with|font-series|bold|unique>
      <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F with finite
      support \ \ such that v=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|>>>>
    </eqnarray*>

    The <with|font-series|bold|unique> <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>>
    with finite support such that <math|v=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>
    are called the <with|font-series|bold|coordinates of v with respect to
    the basis> <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>>.
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
      is a basis we have <math|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>=V>
      so given <math|v\<in\>V> there exists a family
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>F> with finite
      support such that <math|v=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>
      proving existence. Now for uniqueness, assume that there exist another
      <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> with
      finite support such that <math|v=<big|sum><rsub|i\<in\>I><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>.
      Define now

      <\equation>
        <label|eq 11.27.060><around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
        by >\<gamma\><rsub|i>=\<alpha\><rsub|i>-\<beta\><rsub|i>
      </equation>

      If <math|i\<in\>supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>|)>>
      then <math|\<alpha\><rsub|i>-\<beta\><rsub|i>=\<gamma\><rsub|i>\<neq\>0>,
      if <math|\<alpha\><rsub|i>=0\<wedge\>\<beta\><rsub|i>=0> then
      <math|\<gamma\><rsub|i>=\<alpha\><rsub|i>-\<beta\><rsub|i>=0>
      contradicting <math|\<gamma\><rsub|i>\<neq\>0>, so we must have that
      <math|\<gamma\>=\<alpha\><rsub|i>\<neq\>0\<vee\>\<beta\><rsub|i>\<neq\>0>
      or <math|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)><big|cup>supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>>.
      Hence <math|supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)><big|cup>supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>>
      which as <math|><math|supp<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)>>,<math|supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>>
      are finite proves by [theorems: <reference|union of two finite sets is
      finite>, <reference|subset of finite sets>] that
      <math|supp<around*|(|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>|)>>
      is finite. So we have that\ 

      <\equation>
        <label|eq 11.28.060><around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
        is of finite support>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<gamma\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>-\<beta\><rsub|i>|)>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>-\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|support of inverses (2)>,<reference|support of sums
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>-<big|sum><rsub|i\<in\>I><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|v-v>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      As <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> we have by the above
      and [eq: <reference|eq 11.28.060>] that <math|\<forall\>i\<in\>I>
      <math|\<gamma\><rsub|i>=0>, hence <math|\<forall\>i\<in\>I> we have
      that <math|\<alpha\><rsub|i>=\<beta\><rsub|i>>. So that
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>=<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>>.

      <item*|<math|\<Leftarrow\>>>Assume that <math|\<forall\>v\<in\>V>
      <math|there exist a <with|font-series|bold|unique>
      <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F\\<around*|{|0|}>
      with finite \ support \ \ such that
      v=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>.
      Then by definition we have that\ 

      <\equation>
        <label|eq 11.29.060>span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>=V
      </equation>

      Let <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      is a family with finite suport such that
      <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>=0>,
      define <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      by <math|\<beta\><rsub|i>=0> then <math|supp<around*|(|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>|)>>=\<emptyset\>
      a finite set, so <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>I>>
      is of finite support, further by [theorem: <reference|support of
      neutral element (2)>] <math|<big|sum><rsub|i\<in\>I><around*|(|\<beta\><rsub|i>\<cdot\>v<rsub|i>|)>=0>.
      By uniqueness we have then that <math|\<forall\>i\<in\>I>
      <math|\<alpha\><rsub|i>=\<beta\><rsub|i>=0> which proves that\ 

      <\equation>
        <label|eq 11.30.060><around*|{|v<rsub|i>|}><rsub|i\<in\>I><text| is
        linear independent.>
      </equation>

      By [eqs: <reference|eq 11.29.060>, <reference|eq 11.30.060>] it follows
      by definition that <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> is a
      basis.
    </description>
  </proof>

  The next theorem will be used later to prove that every vector space has a
  basis. It essemtially shows that every independent family can be extended
  to a basis. The theorem is based on Zorn's lemma hence depends on the axiom
  of choice.

  <\theorem>
    <label|basis extension>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|R\<subseteq\>V> a linear independent set and <math|W\<subseteq\>V>
    satisfies:

    <\enumerate-alpha>
      <item><math|span<around*|(|W|)>=V>

      <item><math|R\<subseteq\>W>
    </enumerate-alpha>

    then there exists a set <math|B> such that
    <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> and
    <math|R\<subseteq\>B\<subseteq\>W>.
  </theorem>

  <\proof>
    Define\ 

    <\equation>
      <label|eq 11.31.060>\<cal-A\><rsub|R,W>=<around*|{|X\<subseteq\>V\|X\<neq\>\<varnothing\><text|
      and >R\<subseteq\>X\<subseteq\>V<text| and >X<text| is linear
      independent>|}>\<subseteq\>\<cal-P\><around*|(|V|)>
    </equation>

    then using [theorem: <reference|order inclusion is a order>] we have that\ 

    <\equation>
      <label|eq 11.32.060><around*|\<langle\>|\<cal-A\><rsub|R,W>,\<subseteq\>|\<rangle\>><text|
      is a partial ordered set>
    </equation>

    Let <math|\<cal-C\>\<subseteq\>\<cal-A\><rsub|R,W>> be a chain [see
    definition: <reference|order chain>] then for <math|X\<in\>\<cal-C\>> we
    have that <math|R\<subseteq\>X\<subseteq\>W> so that
    <math|R\<subseteq\><big|cup><rsub|X\<in\>\<cal-C\>>X\<subseteq\>W> or

    <\equation>
      <label|eq 11.33.060>R\<subseteq\>B<rsub|\<cal-C\>>\<subseteq\>W<text|
      and <math|\<forall\>X\<in\>\<cal-C\><text| we have
      >X\<subseteq\>B<rsub|\<cal-C\>>> where
      <math|B<rsub|\<cal-C\>>=<big|cup><rsub|X\<in\>\<cal-C\>>X>>\ 
    </equation>

    We use now mathematical induction to prove the following:

    <\equation>
      <label|eq 11.34.060>If A\<subseteq\>B<rsub|\<cal-C\>><text| is a finite
      subset of >B<rsub|\<cal-C\>><text| then there exists a
      >X\<in\>\<cal-C\><text| such that >A\<subseteq\>X
    </equation>

    <\proof>
      Define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|>\|If
        A\<subseteq\>B<rsub|\<cal-C\>><text| with <math|n\<approx\>A<text|
        then >\<exists\>X\<in\>\<cal-C\><text| such that >A\<subseteq\>X>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>>Let <math|A\<subseteq\>B<rsub|\<cal-C\>>> with
        <math|A\<approx\>0=\<varnothing\>> then <math|A=\<varnothing\>>. As
        <math|\<cal-C\>\<in\>\<cal-A\><rsub|R,W>> <math|\<cal-C\>> is not
        empty so there exist a <math|X\<in\>\<cal-C\>>, which as
        <math|A=\<varnothing\>\<subseteq\>X>, proves that <math|0\<in\>S.>

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
          contradicting <math|y=\<beta\><around*|(|n|)>>, so
          <math|i\<in\><around*|{|0,\<ldots\>,n-1|}>>, hence
          <math|y=\<beta\><around*|(|i|)>=\<beta\><rsub|\|<around*|{|0,\<ldots\>,n-1|}>><around*|(|i|)>>.
        </description>

        proving that <math|><math|\<beta\><rsub|\|<around*|{|0,\<ldots\>,n-1|}>>:<around*|{|0,\<ldots\>,n-1|}>>
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
          and <math|\<beta\><around*|(|n|)>\<in\>X<rprime|''>> we have that
          <math|A\<subseteq\>X>

          <item*|<math|X\<subseteq\>X<rprime|'>>>Then as
          <math|A\\<around*|{|\<beta\><around*|(|n|)>|}>=A<rprime|'>\<subseteq\>X<rprime|'>>
          and <math|\<beta\><around*|(|n|)>\<in\>X\<subseteq\>X<rprime|'>> we
          have that <math|A\<subseteq\>X>
        </description>

        so in both cases we have that <math|A\<subseteq\>X\<in\>\<cal-C\>>,
        proving that <math|n+1\<in\>S>. \ 
      </description>

      Mathematical induction proves then [eq: <reference|eq 11.34.060>].
    </proof>

    Let <math|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>>
    be a family with finite support such that
    <math|<big|sum><rsub|v\<in\>B<rsub|\<cal-C\>>><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>=0>,
    then <math|supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>>is
    finite then as <math|supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>\<subseteq\>B<rsub|\<cal-C\>>>
    we have by [eq: <reference|eq 11.34.060>] to get\ 

    <\equation>
      <label|eq 11.35.060>\<exists\>Y\<in\>\<cal-C\><text| such that
      >supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>\<subseteq\>Y
    </equation>

    As <math|Y\<in\>\<cal-C\>\<subseteq\>\<cal-A\><rsub|R,W>> we have by [eq:
    <reference|eq 11.31.060>] that <math|Y> is linear indepenedent. Define
    now

    <\equation*>
      <around*|{|\<gamma\><rsub|v>|}><rsub|v\<in\>Y><text| by
      >\<gamma\><rsub|v>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|v><text|
      if >v\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>>>|<row|<cell|0<text|
      if >v\<in\>Y\\supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>>>>>>
    </equation*>

    then trivially <math|supp<around*|(|<around*|{|\<gamma\><rsub|v>|}><rsub|v\<in\>Y>|)>=supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>>
    which is finite. Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|v\<in\>Y><around*|(|\<gamma\><rsub|v>\<cdot\>c|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|v\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>><around*|(|\<gamma\><rsub|v>\<cdot\>v|)>+<big|sum><rsub|v\<in\>Y\\supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>><around*|(|\<gamma\><rsub|v>\<cdot\>v|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element
      (2)>]>>>|<cell|<big|sum><rsub|v\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>><around*|(|\<gamma\><rsub|v>\<cdot\>v|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|v\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support eleminate zeroes>]>>>|<cell|<big|sum><rsub|v\<in\>B<rsub|\<cal-C\>>><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    which as <math|Y> is linear independent proves that
    <math|\<forall\>v\<in\>Y> that <math|\<gamma\><rsub|v>=0>. If now
    <math|v\<in\>B<rsub|\<cal-C\>>> then we have either
    <math|v\<in\>B<rsub|\<cal-C\>>\\supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>>
    so that <math|\<alpha\><rsub|v>=0> or
    <math|v\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|v>|}><rsub|v\<in\>B<rsub|\<cal-C\>>>|)>\<subseteq\>Y>
    so that <math|\<alpha\><rsub|v>=\<gamma\><rsub|v>=0>. Hence we have
    <math|\<forall\>v\<in\>B<rsub|\<cal-C\>>> that
    <math|\<alpha\><rsub|v>=0>. So we conclude that\ 

    <\equation>
      <label|eq 11.36.060>B<rsub|\<cal-C\>><text| is linear independent>
    </equation>

    Combing now [eq: <reference|eq 11.33.060>] and the above [eq:
    <reference|eq 11.36.060>] we have by the definition of
    <math|\<cal-A\><rsub|R,W>> [see eq: <reference|eq 11.31.060>] that\ 

    <\equation>
      B<rsub|\<cal-C\>>\<in\>\<cal-A\><rsub|R,W>
    </equation>

    So for every chain <math|\<cal-C\>\<subseteq\>\<cal-A\><rsub|R,W>> we
    have found a <math|B<rsub|\<cal-C\>>\<in\>\<Alpha\><rsub|R,W>>, further
    <math|\<forall\>X\<in\>\<cal-C\>> we have
    <math|X\<subseteq\><big|cup><rsub|X\<in\>\<cal-C\>>X=B<rsub|\<cal-C\>>>
    proving that\ 

    <\equation>
      <label|eq 11.38.060><text|every non empty chain
      <math|\<cal-C\>\<subseteq\>\<cal-A\><rsub|R,W><text| has a upper bound
      in >\<cal-A\><rsub|R,W>>>
    </equation>

    So we can use Zorn's lemma [see theorem: <reference|choice Zorn's lemma>]
    giving

    <\equation>
      <label|eq 11.39.060>\<exists\>M\<in\>\<cal-A\><rsub|R,W><text| such
      that <math|\<forall\>X\<in\>\<cal-A\><rsub|R,W><text| we have
      >X\<subseteq\>M>>
    </equation>

    further by the definition of <math|\<cal-A\><rsub|R,W>> [see eq:
    <reference|eq 11.31.060>] we have also\ 

    <\equation>
      <label|eq 11.40.060>R\<subseteq\>M\<subseteq\>W<text| and >M<text| is
      linear independent>
    </equation>

    Let now <math|w\<in\>W> then we have the following cases to consider:

    <\description>
      <item*|<math|w\<in\>M>>As by [theorem: <reference|linear span subset>]
      <math|M\<subseteq\>span<around*|(|M|)>> we have that
      <math|w\<in\>span<around*|(|W|)>.>\ 

      <item*|<math|w\<nin\>M>>If now <math|M<big|cup><around*|{|w|}>> is
      linear independent we have as <math|R\<subseteq\>M\<subseteq\>M<big|cup><around*|{|w|}>\<subseteq\>W>
      we have that <math|M<big|cup><around*|{|w|}>\<in\>\<cal-A\><rsub|R,W>>
      so that by [eq: <reference|eq 11.39.060>] that
      <math|M<big|cup><around*|{|w|}>\<subseteq\>M>, hence <math|w\<in\>M
      contradicting w\<nin\>M>. So we must have that
      <math|M<big|cup><around*|{|w|}>> is linear dependent. Hence there exist
      a family <math|<around*|{|\<alpha\><rsub|v><rsub|>|}><rsub|v\<in\>M<big|cup><around*|{|w|}>>\<subseteq\>F>
      with finite support satisfying <math|<big|sum><rsub|v\<in\>M<big|cup><around*|{|w|}>><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>=0>
      such that <math|\<exists\>v<rsub|0>\<in\>M<big|cup><around*|{|w|}>>
      such that <math|\<alpha\><rsub|v<rsub|0>>\<neq\>0>. Assume that
      <math|\<alpha\><rsub|w>=0> then as <math|M<big|cap><around*|{|w|}>=\<varnothing\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|v\<in\>M<big|cup><around*|{|w|}>><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|
        [theorem: <reference|support over disjoint
        subsets>]>>>|<cell|<big|sum><rsub|v\<in\>M><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>+<big|sum><rsub|v\<in\><around*|{|w|}>><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|v\<in\>M><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>>>>>
      </eqnarray*>

      from which it follows as <math|M> is linear indepeendent that
      <math|\<forall\>v\<in\>M> we have <math|\<alpha\><rsub|v>=0>, or as
      <math|\<alpha\><rsub|w>=0> that <math|\<forall\>w\<in\>M<big|cup>w>
      <math|\<alpha\><rsub|w>=0> contradiction the fact that
      <math|\<alpha\><rsub|v<rsub|0>>\<neq\>0>. So we must have that
      <math|\<alpha\><rsub|w>\<neq\>0>. Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|v\<in\>M<big|cup><around*|{|w|}>><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|
        [theorem: <reference|support over disjoint
        subsets>]>>>|<cell|<big|sum><rsub|v\<in\>M><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>+<big|sum><rsub|v\<in\><around*|{|w|}>><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|v\<in\>M><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>+\<alpha\><rsub|w>\<cdot\>w>>>>
      </eqnarray*>

      so that

      <\equation*>
        w=<around*|(|\<alpha\><rsub|w>|)><rsup|-1>\<cdot\><big|sum><rsub|v\<in\>M><around*|(|\<alpha\><rsub|v>\<cdot\>v|)>=<big|sum><rsub|v\<in\>M><around*|(|<around*|(|<around*|(|\<alpha\><rsub|w>|)><rsup|-1>\<cdot\>\<alpha\><rsub|v>|)>\<cdot\>w|)>
      </equation*>

      or that <math|w\<in\>span<around*|(|M|)>>.
    </description>

    so in all cases we have <math|w\<in\>span<around*|(|W|)>> proving that\ 

    <\equation*>
      W\<subseteq\>span<around*|(|M|)>
    </equation*>

    Using [theorem: <reference|linear span inclusion>] we have that
    <math|V=span<around*|(|W|)>\<subseteq\>span<around*|(|span<around*|(|M|)>|)>\<equallim\><rsub|<text|[theorem:
    <reference|linear span of span>]>>span<around*|(|M|)>\<subseteq\>V>
    proving that

    <\equation*>
      span<around*|(|M|)>=V
    </equation*>

    Using the above, [eq: <reference|eq 11.40.060>] and [theorem:
    <reference|basis condition>] proves that for <math|M> we have

    <\equation*>
      <around*|{|b<rsub|>|}><rsub|b\<in\>M><text| is a basis and
      >R\<subseteq\>M\<subseteq\>W
    </equation*>
  </proof>

  <\corollary>
    <label|basis extending a linear independent set to a basis>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and let
    <math|R\<subseteq\>V> be a linear independent set then there exists a
    <math|B\<subseteq\>V> such that <math|R\<subseteq\>B> and
    <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
  </corollary>

  <\proof>
    As by [theorem: <reference|linear span of a subspace>]
    <math|V=span<around*|(|V|)>> and <math|R\<subseteq\>V> ther exists bu
    [theorem: <reference|basis extension>] that there exists a <math|B> such
    that <math|R\<subseteq\>B\<subseteq\>V> and
    <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
  </proof>

  <\corollary>
    <label|basis existence (1)>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and let <math|W\<subseteq\>V> such that <math|span<around*|(|W|)>=V> then
    there exists a <math|B\<subseteq\>W> such that
    <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
  </corollary>

  <\proof>
    For <math|V>we have either:

    <\description>
      <item*|<math|V=<around*|{|0|}>>>Then if <math|W\<subseteq\>V> we have
      <math|W=\<varnothing\>>, further we have by [example: <reference|basis
      of non trivial vector space>] that <math|<around*|{|v|}><rsub|v\<in\>W>=<around*|{|v|}><rsub|v\<in\>\<varnothing\>>>
      proving the corollary in this case.

      <item*|<math|V\<neq\><around*|{|0|}>>>Then there exist a
      <math|v<rsub|0>\<in\>V> with <math|v<rsub|0>\<neq\>0>. As
      <math|V=span<around*|(|W|)>> there exists a
      <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F> such
      that <math|v<rsub|0>=<big|sum><rsub|w\<in\>W><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>>.
      If <math|W=\<varnothing\>> or <math|W=<around*|{|0|}>> then
      <math|supp<around*|(|<around*|{|\<alpha\><rsub|w>\<cdot\>w|}><rsub|w\<in\>W>|)>=\<varnothing\>>
      so that <math|v<rsub|0>=<big|sum><rsub|w\<in\>W><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>=0>
      contradicting <math|v<rsub|0>\<neq\>0>. So there exists a
      <math|w<rsub|0>\<in\>W> with <math|w<rsub|0>\<neq\>0>. If now there
      exist a <math|<around*|{|\<alpha\><rsub|\<omega\>>|}><rsub|w\<in\><around*|{|w<rsub|0>|}>>\<subseteq\>F>
      with <math|<big|sum><rsub|w\<in\><around*|{|w<rsub|0>|}>><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>=0>
      then, as <math|<big|sum><rsub|w\<in\><around*|{|w<rsub|0>|}>><around*|(|\<alpha\><rsub|w>\<cdot\>w|)>\<equallim\><rsub|<text|[theorem:
      <reference|support over a singleton>]>>\<alpha\><rsub|w<rsub|0>>\<cdot\>w<rsub|0>>
      we have that <math|\<alpha\><rsub|w<rsub|0>>\<cdot\>w<rsub|0>=0>. If
      <math|\<alpha\><rsub|w<rsub|0>>\<neq\>0> we have from
      <math|\<alpha\><rsub|w<rsub|0>>\<cdot\>w<rsub|0>> by [theorem:
      <reference|vector space properties (1)>] that <math|w<rsub|0>=0>
      contradicting <math|w<rsub|0>\<neq\>0>, so we must have that
      <math|\<alpha\><rsub|w<rsub|0>>=0>, Hence we have that
      <math|<around*|{|w<rsub|0>|}>> is linear independent. As
      <math|<around*|{|w<rsub|0>|}>\<subseteq\>W> we have by [theorem:
      <reference|basis extension>] that there exist a <math|B> such that
      <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis for <math|V> such that
      <math|<around*|{|w<rsub|0>|}>\<subseteq\>B\<subseteq\>W>.
    </description>
  </proof>

  We are now ready to prove that every vector space have a basis.

  <\corollary>
    <label|basis exist>If <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then there exists a <math|B\<subseteq\>V> such that
    <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
  </corollary>

  <\proof>
    As by [theorem: <reference|linear span of a subspace>]
    <math|V=span<around*|(|V|)>> we have by [corollary: <reference|basis
    existence (1)>] that there exist a <math|B\<subseteq\>V> such that
    <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
  </proof>

  <\corollary>
    <label|basis out of spanning family>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and let
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> be family such
    that <math|span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>|)>> then
    there exist a <math|J\<subseteq\>I> such that
    <math|<around*|{|v<rsub|j>|}><rsub|j\<in\>J>\<subseteq\>F> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>. In other words,
    using [definition: <reference|linear extension of a family>] there exist
    a <math|<around*|{|w<rsub|j>|}><rsub|j\<in\>J>\<subseteq\>F> such that
    <math|<around*|{|w<rsub|j>|}><rsub|j\<in\>J>\<preccurlyeq\><around*|{|v<rsub|i>|}><rsub|i\<in\>I>>.
  </corollary>

  <\proof>
    Let <math|v:I\<rightarrow\>V> the function defining
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> then by [theorem:
    <reference|choice function to injection/bijection>] there exists a
    <math|K\<subseteq\>I> so that <math|v<rsub|\|K>:K\<rightarrow\>v<around*|(|I|)>>
    is a bijection. As <math|v<around*|(|I|)>=<around*|{|v<around*|(|i|)>\|i\<in\>I|}>=<around*|{|v<rsub|i>\|i\<in\>I|}>>
    and \ <math|span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>=span<around*|(|<around*|{|v<rsub|i>\|i\<in\>I|}>|)>=V>
    it follows that <math|span<around*|(|v<around*|(|I|)>|)>=V>. By
    <math|>[corollary: <reference|basis existence (1)>] there exist a
    <math|B\<subseteq\>V> such that <math|<around*|{|b|}><rsub|b\<in\>B>>
    forms a basis for <math|V>. Take now <math|J=<around*|(|v<rsub|\|K>|)><rsup|-1><around*|(|B|)>\<subseteq\>K\<subseteq\>I>
    then <math|<around*|(|v<rsub|\|K>|)><rsub|\|J>:J\<rightarrow\>v<rsub|\|K><around*|(|J|)>=v<rsub|\|K><around*|(|v<rsub|\|K><rsup|-1><around*|(|B|)>|)>=B>
    \ is a bijection. Take <math|w=<around*|(|v<rsub|\|K>|)><rsub|\|J>> then
    we have

    <\equation>
      <label|eq 11.41.060>J\<subseteq\>I<infix-and>w:J\<rightarrow\>B<text|
      is a bijection and <math|\<forall\>j\<in\>J> where
      ><around*|{|b|}><rsub|b\<in\>B> <text| is a basis of >V
    </equation>

    Let <math|<around*|{|w<rsub|j>|}><rsub|j\<in\>J><rsub|>> the family
    defined by <math|w:J\<rightarrow\>B> then

    <\equation*>
      span<around*|(|<around*|{|w<rsub|j>|}><rsub|j\<in\>J>|)>=span<around*|(|<around*|{|w<rsub|j>\|j\<in\>J|}>|)>=span<around*|(|w<around*|(|J|)>|)>=span<around*|(|B|)>\<equallim\><rsub|<text|[theorem:
      <reference|linear span equivalence>]>>span<around*|(|<around*|{|b|}><rsub|b\<in\>B>|)>=V
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 11.42.060>span<around*|(|<around*|{|w<rsub|i>|}><rsub|i\<in\>J>|)>=V
    </equation>

    Further

    <\equation>
      <label|eq 11.43.060.1>\<forall\>j\<in\>J<text| we have
      >w<rsub|j>=w<around*|(|j|)>=<around*|(|v<rsub|\|K>|)><rsub|\|J><around*|(|j|)>=v<around*|(|j|)>=v<rsub|j>
    </equation>

    If <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>J>\<subseteq\>F> is
    a family with finite support such that
    <math|<big|sum><rsub|j\<in\>J><rsup|><around*|(|\<alpha\><rsub|j>\<cdot\>w<rsub|j>|)>=0>,
    define then

    <\equation>
      <label|eq 11.43.060><around*|{|\<beta\><rsub|b>|}><rsub|b\<in\>B><text|
      by >\<beta\><rsub|b>=\<alpha\><rsub|w<rsup|-1><around*|(|b|)>>
    </equation>

    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|b\<in\>B><around*|(|\<beta\><rsub|b>\<cdot\>b|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support bijection on index>]>>>|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<beta\><rsub|w<around*|(|j|)>>\<cdot\>w<around*|(|j|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<beta\><rsub|w<around*|(|j|)>>\<cdot\>w<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|w<rsup|-1><around*|(|w<around*|(|j|)>|)>>\<cdot\>w<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J><around*|(|\<alpha\><rsub|j>\<cdot\>w<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    which as <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis hence linear
    independent we have that <math|\<forall\>b\<in\>B> we have
    <math|\<beta\><rsub|b>=0>. If now <math|j\<in\>J> then
    <math|w<around*|(|j|)>\<in\>B> so that
    <math|\<alpha\><rsub|j>=\<alpha\><rsub|w<rsup|-1><around*|(|w<around*|(|j|)>|)>>=\<beta\><rsub|w<around*|(|j|)>>=0>
    proving that <math|\<forall\>j\<in\>J> we have
    <math|\<alpha\><rsub|j>=0>. So we have that\ 

    <\equation>
      <label|eq 11.44.060><around*|{|w<rsub|j>|}><rsub|j\<in\>J><text| is
      linear independent>
    </equation>

    From [eqs: <reference|eq 11.41.060>, <reference|eq 11.42.060>,
    <reference|eq 11.43.060.1> and <reference|eq 11.44.060>] it follows that\ 

    <\equation*>
      I\<subseteq\>J<text| and ><around*|{|w<rsub|j>|}><rsub|j\<in\>J>\<subseteq\>V<text|
      satisfiest >\<forall\>j\<in\>J<text| we have >w<rsub|j>=v<rsub|j><text|
      and ><around*|{|w<rsub|j>|}><rsub|j\<in\>J><text| is a basis for
      ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>
    </equation*>
  </proof>

  A special case of vector spaces are the vector space with a finite basis.\ 

  <\lemma>
    <label|linear dependency of ordered basis>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|n\<in\>\<bbb-N\>> and <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is linear dependent>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|<text|<space|1em>>\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}><text|
      such that >\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>><text|
      such that >v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|>>>>
    </eqnarray*>

    \ <math|>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Define\ 

      <\equation*>
        L=<around*|{|l\<in\><around*|{|1,\<ldots\>,n|}>\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><text|
        such that >x<rsub|l>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><around*|(|\<alpha\><rsub|i>\<cdot\>l|)>|}>
      </equation*>

      then as <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is linear dependent <math|L\<neq\>0>. Using [theorem: <reference|finite
      ordered sets have a maximum and minimum>] <math|k=max<around*|(|L|)>>
      exist, so <math|v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>.
      Assume now that <math|\<exists\>l\<in\><around*|{|k+1,\<ldots\>.n|}>>
      such that <math|\<alpha\><rsub|l>\<neq\>0> then <math|l\<neq\>k>
      allowing us to define\ 

      <\equation*>
        <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><text|
        by >\<gamma\><rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1><text|
        if >i=k>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)><text|
        if >i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k,l|}>>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><around*|(|\<gamma\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|\<gamma\><rsub|i>\<cdot\>v<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|k|}>><around*|(|\<gamma\><rsub|i>\<cdot\>v<rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|<around*|(|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)>|)>\<cdot\>v<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|k|}>><around*|(|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\>v<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support space finite sum
        (1)>]>>>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><rsub|><around*|(|<around*|(|-\<alpha\><rsub|i>|)>\<cdot\>v<rsub|i>|)>+<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\>v<rsub|k>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1><around*|(|v<rsub|k>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i><rsub|>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i><rsub|>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l.k|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|l|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i><rsub|>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|l>|)>>|<cell|=>|<cell|>>|<row|<cell|v<rsub|l>>|<cell|>|<cell|>>>>
      </eqnarray*>

      So that <math|v<rsub|l>\<in\>L> hence <math|l\<leqslant\>k>
      contradicting <math|l\<in\><around*|{|k+1,\<ldots\>,n|}>>. Hence we
      have

      <\equation>
        <label|eq 11.46.060>\<forall\>l\<in\><around*|{|k+1,\<ldots\>,n|}> we
        have that \<alpha\><rsub|l>=0
      </equation>

      Hence we have as <math|<around*|{|1,\<ldots\>,k-1|}><big|cup><around*|{|k+1,\<ldots\>,n|}>=<around*|{|1,\<ldots\>,n|}>\\k>
      and <math|<around*|{|1,\<ldots\>,k-1|}><big|cap><around*|{|k+1,\<ldots\>,n|}>=\<varnothing\>>
      that

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsub|k>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>k-1|}>>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>n|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of neutral element
        (2)>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>k-1|}>>x<rsub|i>>>>>
      </eqnarray*>

      completing the proof.

      <item*|<math|\<Leftarrow\>>>This follows from [theorem:
      <reference|linear dependent family alternative>]
    </description>
  </proof>

  <\lemma>
    <label|basis replacement lemma>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    a basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> a linear
    independent family such that <math|<around*|{|1,\<ldots\>,n|}>\<subseteq\>I\<subseteq\>\<bbb-N\><rsub|0>>
    then <math|span<around*|(|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=V>
  </lemma>

  <\proof>
    \ We prove this by induction, let <math|n\<in\>\<bbb-N\>> and define

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|<text|If
      >m\<in\><around*|{|1,\<ldots\>,n|}><text| then there exists a
      <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V<text|
      such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
      >w<rsub|i>=f<rsub|m-i+1>> and >span<around*|(|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=V|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S<rsub|n>>>As <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is a basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> there
      exists a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      such that\ 

      <\equation>
        <label|eq 11.57.062>f<rsub|1>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>
      </equation>

      Define\ 

      <\equation*>
        <around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>V<text|
        by <math|u<rsub|i>=<choice|<tformat|<table|<row|<cell|f<rsub|1><text|
        if >i=1>>|<row|<cell|e<rsub|i-1><text| if
        >i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>>>
      </equation*>

      then <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|u<rsub|i>\|i\<in\><around*|{|2,\<ldots\>,n+1|}>|}>\<subseteq\><around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      so that by [theorem: <reference|linear span inclusion>]

      <\equation*>
        V=span<around*|(|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<subseteq\>span<around*|(|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>|)>\<subseteq\>V
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 11.58.062>V=span<around*|(|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>|)>
      </equation>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|1|}>><around*|(|\<alpha\><rsub|i-1>\<cdot\>u<rsub|i-1>|)><rsub|>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|2,\<ldots\>,n+1|}>><around*|(|\<alpha\><rsub|i-1>\<cdot\>e<rsub|i-1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.57.062>]>><rsub|<text|>>>|<cell|f<rsub|1>>>|<row|<cell|>|<cell|=>|<cell|u<rsub|1>>>>>
      </eqnarray*>

      proving by [theorem: <reference|linear dependent family alternative>]
      that <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
      is linear dependent. Using \ [lemma: <reference|linear dependency of
      ordered basis>] there exists a <math|k\<in\><around*|{|1,\<ldots\>,n+1|}>>
      and a <math|<around*|{|\<zeta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<subseteq\>F>
      such that

      <\equation>
        <label|eq 11.59.062>u<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|\<zeta\><rsub|i>\<cdot\>u<rsub|i>|)>
      </equation>

      If <math|k=1> then <math|f<rsub|1>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|\<zeta\><rsub|i>\<cdot\>u<rsub|i>|)>=<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|\<zeta\><rsub|i>\<cdot\>u<rsub|i>|)>=0>
      so that <math|f<rsub|\<beta\><around*|(|1|)>>=0> where <math|1\<in\>I>
      proving by [theorem: <reference|linear dependent conditions>] that
      <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>I>> is linear dependent,
      contradicting the fact that <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>I>>
      is linear independent. So we must have that\ 

      <\equation>
        <label|eq 11.60.062>k\<in\><around*|{|2,\<ldots\>,n+1|}><text|>
      </equation>

      Then we have by [eq: <reference|eq 11.59.062>] and [theorem:
      <reference|linear span minus linear compination is span>] that\ 

      <\equation>
        <label|eq 11.61.062>V=span<around*|(|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|k|}>>|)>\<equallim\><rsub|def>span<around*|(|<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|k|}>|}>|)>
      </equation>

      Define now\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        by >w<rsub|i>=<choice|<tformat|<table|<row|<cell|u<rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>|<row|<cell|u<rsub|i+1><text|
        if >i\<in\><around*|{|k,\<ldots\>,n|}>>>>>>
      </equation*>

      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|span<around*|(|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|span<around*|(|<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k-1|}>|}><big|cup><around*|{|u<rsub|i+1>\|i\<in\><around*|{|k,\<ldots\>n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|span<around*|(|<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k-1|}>|}><big|cup><around*|{|u<rsub|i>\|i\<in\><around*|{|k+1,\<ldots\>n+1|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|span<around*|(|<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.61.062>]>>>|<cell|V>>>>
      </eqnarray*>

      So <math|span<around*|(|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=V>
      and as <math|w<rsub|1>\<equallim\><rsub|1\<less\>k>u<rsub|1>=f<rsub|1>=f<rsub|1-1+1>>
      it follows that <math|1\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>If
      <math|m+1\<in\><around*|{|1,\<ldots\>,n|}>> then we have that
      <math|m\<in\><around*|{|1,\<ldots\>,n|}>> so as <math|m\<in\>S> there
      exists a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      such that

      <\equation>
        <label|eq 11.62.062>span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=V<text|
        and >\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text| we have that
        >v<rsub|i>=f<rsub|m-i+1>
      </equation>

      Define now\ 

      <\equation*>
        <around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        by >u<rsub|i>=<choice|<tformat|<table|<row|<cell|f<rsub|m+1><text| if
        >i=1>>|<row|<cell|v<rsub|i-1><text| if
        >i\<in\><around*|{|2,\<ldots\>,n+1|}>>>>>>
      </equation*>

      then <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>n|}>|}>=<around*|{|u<rsub|i>\|i\<in\><around*|{|2,\<ldots\>,n|}>|}>\<subseteq\><around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      so that by [theorem: <reference|linear span inclusion>]

      <\equation*>
        V=span<around*|(|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<subseteq\>span<around*|(|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>|)>\<subseteq\>V
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 11.63.062>V=span<around*|(|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>|)>
      </equation>

      Further we have for <math|i\<in\><around*|{|1,\<ldots\>,m+1|}>> either

      <\description>
        <item*|<math|i=1>>Then <math|u<rsub|i>=f<rsub|m+1>=f<rsub|m+1-1+1>>

        <item*|<math|i\<in\><around*|{|2,\<ldots\>,m+1|}>>>Then
        <math|u<rsub|i>=v<rsub|i-1>\<equallim\><rsub|<text|[eq: <reference|eq
        11.62.062>]>>f<rsub|m-<around*|(|i-1|)>+1>=f<rsub|m+1-i+1>>
      </description>

      proving that\ 

      <\equation>
        <label|eq 11.64.062>\<forall\>i\<in\><around*|{|1,\<ldots\>,m+1|}><text|
        we have <math|u<rsub|i>=f<rsub|m+1-i+1>>>
      </equation>

      or that\ 

      <\equation>
        <label|eq 11.65.062><around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m+1|}>|}>=<around*|{|f<rsub|m+1-i+1>\|i\<in\><around*|{|1,\<ldots\>,m+1|}>|}>
      </equation>

      Now as <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>I>> is linear
      independent we have by [theorem: <reference|linear independency
      condition (1)>] that <math|<around*|{|f<rsub|i>\|i\<in\>I|}>> is linear
      independent so as \ <math|<around*|{|f<rsub|m+1-i+1>\|i\<in\><around*|{|1,\<ldots\>,m+1|}>|}>\<subseteq\><around*|{|f<rsub|i>\|i\<in\>I|}>>
      we have by [theorem: <reference|linear sub family of independent
      family>] that <math|><math|<around*|{|f<rsub|m+1-i+1>\|i\<in\><around*|{|1,\<ldots\>,m+1|}>|}>>
      is linear independent or using [eq: <reference|eq 11.65.062>] we have
      that\ 

      <\equation>
        <label|eq 11.66.062><around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m+1|}>|}><text|
        is linear independent>
      </equation>

      As by [eq: <reference|eq 11.62.062>]
      <math|V=span<around*|(|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>>
      there exist a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>F>
      such that

      <\equation*>
        \<mu\><rsub|1>=f<rsub|m+1>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|1|}>><around*|(|\<alpha\><rsub|i-1>\<cdot\>v<rsub|i-1>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|2,\<ldots\>,n+1|}>><around*|(|\<alpha\><rsub|i-1>\<cdot\>v<rsub|i-1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsub|m+1>>>|<row|<cell|>|<cell|=>|<cell|u<rsub|1>>>>>
      </eqnarray*>

      proving by [theorem: <reference|linear dependent family alternative>]
      that <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
      is linear dependent. Using \ [lemma: <reference|linear dependency of
      ordered basis>] there exists a <math|k\<in\><around*|{|1,\<ldots\>,n+1|}>>
      and a <math|<around*|{|\<zeta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<subseteq\>F>
      such that

      <\equation>
        <label|eq 11.67.062>u<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|\<zeta\><rsub|i>\<cdot\>u<rsub|i>|)>
      </equation>

      If now <math|k\<in\><around*|{|1,\<ldots\>,m+1|}>> \ then we have by
      [theorem: <reference|linear dependent family alternative>] that
      <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>>
      is linear dependent, using [theorem: <reference|linear dependency
      condition>] it follows that <math|<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m+1|}>|}>>
      is linear dependent contradicting [eq: <reference|eq 11.66.062>]. Hence
      we must have that\ 

      <\equation*>
        k\<in\><around*|{|m+2,\<ldots\>,n+1|}>
      </equation*>

      Using \ [theorem: <reference|linear span minus linear compination is
      span>] we have that\ 

      <\equation>
        <label|eq 11.68.062>V\<equallim\><rsub|<text|[eq: <reference|eq
        11.63.062>]>>span<around*|(|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>|)>=span<around*|(|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|k|}>>|)>
      </equation>

      Define now

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        by >w<rsub|i>=<choice|<tformat|<table|<row|<cell|u<rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>|<row|<cell|u<rsub|i+1><text|
        if >i\<in\><around*|{|,\<ldots\>,n|}>>>>>>
      </equation*>

      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|span<around*|(|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|span<around*|(|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k-1|}>|}><big|cup><around*|{|w<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|span<around*|(|<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k-1|}>|}><big|cup><around*|{|u<rsub|i+1>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|span<around*|(|<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k-1|}>|}><big|cup><around*|{|u<rsub|>\|i\<in\><around*|{|k+1,\<ldots\>,n+1|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|span<around*|(|<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.68.062>]>>>|<cell|V>>>>
      </eqnarray*>

      So <math|span<around*|(|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=V>
      and as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m+1|}>> we have
      <math|i\<less\>k>, so that <math|w<rsub|i>=u<rsub|i>\<equallim\><rsub|<text|[eq:
      <reference|eq 11.64.062>>>f<rsub|m+1-i+1>> it follows that
      <math|m+1\<in\>S<rsub|n>>.
    </description>

    Using mathematical induction we have then that
    <math|\<bbb-N\>=S<rsub|n>>, so as <math|n\<in\><around*|{|1,\<ldots\>,n|}>>
    there exists a <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    such that <math|V=span<around*|(|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|w<rsub|i>=f<rsub|n-i+1>>. proving that\ 

    <\equation*>
      span<around*|(|<around*|{|f<rsub|n-i+1>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=V
    </equation*>

    As\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|1\<leqslant\>i\<leqslant\>n>|<cell|\<Leftrightarrow\>>|<cell|-n\<leqslant\>-i\<leqslant\>-1>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0\<leqslant\>n-i\<leqslant\>n-1>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|1\<leqslant\>n-i+1\<leqslant\>n>>>>
    </eqnarray*>

    we have that\ 

    <\equation*>
      <around*|{|f<rsub|n-i+1>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|f<rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>
    </equation*>

    so that\ 

    <\equation*>
      span<around*|(|<around*|{|f<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>|)>=V
    </equation*>
  </proof>

  <\theorem>
    <label|basis empty basis>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    that has a empty basis then every basis is empty
  </theorem>

  <\proof>
    If <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>\<varnothing\>>> is a basis
    for <math|V> then if <math|v\<in\>V> there exists a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>> such
    that <math|v=<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>=0>
    proving that\ 

    <\equation*>
      V=<around*|{|0|}>
    </equation*>

    Assume that <math|<around*|{|f<rsub|j>|}><rsub|j\<in\>J>\<subseteq\>V> is
    another basis of <math|V> with <math|J\<neq\>\<varnothing\>> then there
    exists a <math|j\<in\>J> such that <math|f<rsub|j>\<neq\>0> [otherwise
    <math|<around*|{|f<rsub|j>|}><rsub|j\<in\>J>> is linear dependent by
    [theorem: <reference|linear dependent conditions>] contradicting
    <math|f<rsub|j>\<in\>V=<around*|{|0|}>>. So we must have that
    <math|J=\<varnothing\>>.
  </proof>

  <\theorem>
    <label|basis finite>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    that has a finite basis <math|then every basis is finite.>
  </theorem>

  <\proof>
    As <math|V> has a finite bases there exists a basis
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>> with <math|I> finite. For
    <math|I> we have then either:

    <\description>
      <item*|<math|I=\<varnothing\>>>Then by [theorem: <reference|basis empty
      basis>] every basis is empty hence finite.

      <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
      <math|m\<in\>\<bbb-N\>> and a bijection
      <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I> then by
      [theorem: <reference|basis and bijection>]

      <\equation>
        <label|eq 11.59.063><around*|{|e<rsub|\<beta\><around*|(|i|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
        is a basis of ><around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>
      </equation>

      Assume that <math|<around*|{|f<rsub|j>|}><rsub|j\<in\>J>> is a basis of
      <math|V> where <math|J> is infinite. Using [theorem: <reference|set
      containing a denumerable set is infinite>] there exists a denumerable
      subset <math|K\<subseteq\>J> and using [theorem: <reference|linear sub
      family of independent family>] we have that
      <math|<around*|{|f<rsub|k>|}><rsub|k\<in\>K>> is linear independent. As
      <math|K> is denumerable there exist a bijection
      <math|\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>K> so that by [theorem:
      <reference|linear bijection (in)dependency>]
      <math|<around*|{|f<rsub|\<gamma\><around*|(|i|)>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is linear independent, to summarize we have that\ 

      <\equation>
        <label|eq 11.60.063><around*|{|f<rsub|\<gamma\><around*|(|i|)>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>><text|
        is linear independent and ><around*|{|1,\<ldots\>,n|}>\<subseteq\>\<bbb-N\><rsub|0>\<subseteq\>\<bbb-N\><rsub|0>
      </equation>

      Using the above together with [eq: <reference|eq 11.59.063>] allows us
      to apply the replacemtn lemma [see lemma: <reference|basis replacement
      lemma>] proving that\ 

      <\equation*>
        V=span<around*|(|<around*|{|f<rsub|\<gamma\><around*|(|i|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>
      </equation*>

      Hence we have for <math|f<rsub|\<gamma\><around*|(|n+1|)>>\<in\>V> that
      <math|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      such that

      <\equation*>
        f<rsub|\<gamma\><around*|(|n+1|)>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>f<rsub|\<gamma\><around*|(|n-i+1|)>>|)>
      </equation*>

      proving by [theorem: <reference|linear dependent family alternative>]
      that <math|<around*|{|f<rsub|\<gamma\><around*|(|i|)>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is linear dependent, contradicting [eq: <reference|eq 11.60.063>] So
      the assumption is wrong and <math|J> must be finite.
    </description>
  </proof>

  By contraposition we have the the following corollary.

  <\corollary>
    <label|basis infinite>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    that has a infinite basis then every basis is infinite.
  </corollary>

  <\proof>
    Let <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>> be a infinite basis for
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>. Assume now that
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> has also a finite
    basis then by the previous theorem [theorem: <reference|basis finite>]
    <math|I> must be finite a contradiction.
  </proof>

  <\theorem>
    <label|basis size>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    with<space|1em>finite basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>>
    then for every basis <math|<around*|{|f<rsub|j>|}><rsub|j\<in\>J>> [which
    must be finite by [theorem: <reference|basis finite>] we have that
    <math|card<around*|(|I|)>=card<around*|(|J|)>> [see definition:
    <reference|complex cardinality>].\ 
  </theorem>

  <\proof>
    As <math|I> is finite we have either:

    <\description>
      <item*|<math|I=\<varnothing\>>>Then by [theorem: <reference|basis empty
      basis>] <math|J=\<varnothing\>> and
      <math|card<around*|(|I|)>\<equallim\><rsub|<text|[theorem:
      <reference|complex cardinality alternative>]>>0\<equallim\><rsub|<text|[theorem:
      <reference|complex cardinality alternative>]>>card<around*|(|J|)>>
      proving that\ 

      <\equation*>
        card<around*|(|I|)>=card<around*|(|J|)>
      </equation*>

      <item*|<math|I\<neq\>\<varnothing\>>>As <math|I> is finite we have by
      [theorem: <reference|basis finite>] that also <math|J> is finite, hence
      there exists <math|n,m\<in\>\<bbb-N\>> and bijections
      <math|\<alpha\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I> and
      <math|\<beta\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>J> We have for
      <math|n,m> now the following possibilities:

      <\description>
        <item*|<math|n=m>>Then <math|card<around*|(|I|)>\<equallim\><rsub|<text|[theorem:
        <reference|complex cardinality alternative>]>>n=m=card<around*|(|J|)>>

        <item*|<math|n\<less\>m>>Then <math|n+1\<in\><around*|{|1,\<ldots\>,m|}>>.
        Using [theorem: <reference|basis and bijection>] we have that
        <math|<around*|{|e<rsub|\<alpha\><around*|(|i|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        and <math|<around*|{|f<rsub|\<beta\><around*|(|j|)>><rsub|>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>>
        are bases for <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
        Further by [lemma: <reference|basis replacement lemma>] we have that
        <math|span<around*|(|<around*|{|f<rsub|\<beta\><around*|(|j|)>>|}>|)><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>=V>
        so that <math|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
        with finite support such that <math|f<rsub|\<beta\><around*|(|n+1|)>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>f<rsub|\<beta\><around*|(|i|)>>|)>>.
        Hence <math|><math|<around*|{|f<rsub|\<beta\><around*|(|j|)>><rsub|>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>>
        is dependent contradicting the fact that
        <math|<around*|{|f<rsub|\<beta\><around*|(|j|)>><rsub|>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>>
        is a basis. So this case does not apply.

        <item*|<math|m\<less\>n>>Then <math|m+1\<in\><around*|{|1,\<ldots\>,n|}>>.
        Using [theorem: <reference|basis and bijection>] we have that
        <math|<around*|{|e<rsub|\<alpha\><around*|(|i|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        and <math|<around*|{|f<rsub|\<beta\><around*|(|j|)>><rsub|>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>>
        are bases for <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>.
        Further by [lemma: <reference|basis replacement lemma>] we have that
        <math|span<around*|(|<around*|{|e<rsub|\<alpha\><around*|(|i|)>>|}>|)><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>=V>
        so that <math|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>F>
        with finite support such that <math|\<varepsilon\><rsub|\<alpha\><around*|(|m+1|)>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|\<alpha\><around*|(|i|)>>|)>>.
        Hence <math|><math|<around*|{|e<rsub|\<alpha\><around*|(|i|)>><rsub|>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        is dependent contradicting the fact that
        <math|<around*|{|e<rsub|\<alpha\><around*|(|i|)>><rsub|>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        is a basis. So this case does not apply.
      </description>

      So the only valid case is proves that\ 

      <\equation*>
        card<around*|(|I|)>=card<around*|(|J|)>
      </equation*>
    </description>
  </proof>

  The above motivates the following\ 

  <\definition>
    <label|basis dimensionality>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vectsor space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is
      <with|font-series|bold|finite dimensional> if it has a finite basis [in
      which case all its bases are finite]

      <item><math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>><text| is
      <with|font-series|bold|infinite dimensional >if it is not finite
      dimensional or equivalently if it has a infinite basis [in which case
      all its bases are infinite] >>
    </enumerate>

    Further we define <with|font-series|bold|<math|dim<around*|(|V|)>\<in\><wide|\<bbb-R\>|\<wide-bar\>>>>
    as follows\ 

    <\equation*>
      dim<around*|(|V|)>=<choice|<tformat|<table|<row|<cell|\<infty\><text|
      if >V<text| is infinite dimesional>>>|<row|<cell|card<around*|(|I|)><text|
      where ><around*|{|v<rsub|i>|}><rsub|i\<in\>I><text| is a finite basis
      of >V<text| is finite dimesional >>>>>>
    </equation*>

    [theorems: <reference|basis infinite>, <reference|basis finite>,
    <reference|basis size>] ensures that these definitions make sense.
  </definition>

  Next we consider different trivial vector spaces and there bases

  <\theorem>
    <label|basis of a field>Let <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    a field and onsider the vector space of
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> over
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> [see theorem:
    <reference|vector space field>]. Then if <math|1\<in\>F> is the
    multiplicative neutral element we have that
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>> where
    <math|e<rsub|1>=1> is a basis of <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    so <math|dim<around*|(|F|)>=1>
  </theorem>

  <\proof>
    First if <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>F>
    [as <math|<around*|{|1|}>> it has finite support] is such that
    <math|<big|sum><rsub|i\<in\><around*|{|1|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>=0>
    then as <math|><math|<big|sum><rsub|i\<in\><around*|{|1|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>=\<alpha\><rsub|1>\<cdot\>e<rsub|1>=\<alpha\><rsub|1>>
    it follows that <math|\<forall\>i\<in\><around*|{|1|}>> we have that
    <math|\<alpha\><rsub|i>=0> proving that\ 

    <\equation*>
      <around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1|}>><text| is linear
      independent>
    </equation*>

    Further if <math|v\<in\>F> then, if we take
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>F>
    defined by <math|\<alpha\><rsub|1>=v>, we have
    <math|v=v\<cdot\>1=<big|sum><rsub|i\<in\><around*|{|1|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>>
    proving that\ 

    <\equation*>
      span<around*|(|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>|)>=F
    </equation*>

    Hence we have that\ 

    <\equation*>
      <around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1|}>><text| is a basis
      for <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>><text| and
      >dim<around*|(|F|)>=card<around*|(|<around*|{|1|}>|)>=1>>
    </equation*>
  </proof>

  The above theorem proves automathicasl the following corollary

  <\corollary>
    We have [see: <reference|vector space Q,R,C>

    <\enumerate>
      <item>The vector space <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>
      over <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>> has as
      basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>> where
      <math|e<rsub|1>=1> and <math|dim<around*|(|\<bbb-Q\>|)>=1>

      <item>The vector space <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
      over <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> has as
      basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>> where
      <math|e<rsub|1>=1> and <math|dim<around*|(|\<bbb-R\>|)>=1>

      <item>The vector space <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>
      over <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> has as
      basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>> where
      <math|e<rsub|1>=1> and <math|dim<around*|(|\<bbb-C\>|)>=1>
    </enumerate>
  </corollary>

  Be aware that that the field for a vector space is imporant as the
  following shows.

  <\theorem>
    The vector space <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>
    over <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> [see
    example: <reference|vector space C real>] has as basis
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>> where
    <math|e<rsub|1>=1> and <math|e<rsub|2>=i> so that
    <math|dim<around*|(|\<bbb-C\>|)>=2>
  </theorem>

  <\proof>
    Let <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,.2|}>>\<subseteq\>\<bbb-R\>>
    [as <math|<around*|{|1,2|}>>i finite it has finite support] be such that
    <math|<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>=0>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|0+i\<cdot\>i>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|1>\<cdot\>1+\<alpha\><rsub|2>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|1>+\<alpha\><rsub|2>\<cdot\>i>>>>
    </eqnarray*>

    so that <math|\<alpha\><rsub|1>=0=\<alpha\><rsub|2>> proving that\ 

    <\equation*>
      <around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>><text| is linear
      independent>
    </equation*>

    Futher if <math|v\<in\>\<bbb-C\>> then there exists
    <math|x,y\<in\>\<bbb-R\>> so that <math|v=x+i\<cdot\>y>. Hence if we
    define <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
    by <math|\<alpha\><rsub|1>=x> and <math|\<alpha\><rsub|2>=y> we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>=\<alpha\><rsub|1>\<cdot\>e<rsub|1>+\<alpha\><rsub|2>\<cdot\>e<rsub|2>=x\<cdot\>1+y\<cdot\>i=x+i\<cdot\>y=v
    </equation*>

    proving that\ 

    <\equation*>
      span<around*|(|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,.2|}>>|)>=\<bbb-C\>
    </equation*>
  </proof>

  Now for a basis of higher dimensional space we introduct the Kronecker
  delta.

  <\definition>
    <label|basis Kronecker delta><dueto|Kronecker delta>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    a field with additive neutral element <math|0> and multiplicative neutral
    element then <math|<around*|{|\<delta\><rsup|<around*|[|n|]>><rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,n|}>>>
    is defined by\ 

    <\equation*>
      \<delta\><rsup|<around*|[|n|]>><rsub|i,j>=<choice|<tformat|<table|<row|<cell|1<text|
      if >i=j>>|<row|<cell|0<text| if >i\<neq\>j>>>>>
    </equation*>

    If <math|n> is know from the context then we write
    <math|\<delta\><rsub|i,j>> instead of
    <math|\<delta\><rsup|<around*|[|n|]>><rsub|i,j>>
  </definition>

  <\theorem>
    <label|basis sum of delta>If <math|n\<in\>\<bbb-N\>> and
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> a field,
    <math|j\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    then\ 

    <\equation*>
      <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>|)>=\<alpha\><rsub|j>
    </equation*>
  </theorem>

  <\proof>
    \ As <math|<around*|{|1,\<ldots\>,n|}>> is th disjoint union of
    <math|<around*|{|j|}>> and <math|<around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>><around*|(|\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|j|}>><around*|(|\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support over a singleton>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>><around*|(|\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>|)>+\<delta\><rsub|j,j>\<cdot\>\<alpha\><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>><around*|(|\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>|)>+\<alpha\><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>><around*|(|0\<cdot\>\<alpha\><rsub|i>|)>+\<alpha\><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|support of neutral element
      (2)>]>>>|<cell|\<alpha\><rsub|j>>>>>
    </eqnarray*>

    \;
  </proof>

  <\theorem>
    let <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    a field and <math|<around*|\<langle\>|F<rsup|n>,+,\<cdot\>|\<rangle\>>>
    the vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>
    > [see theorem: <reference|vector space power field>] define now
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<rsup|n>>
    by <math|e<rsub|i>=<around*|(|<around*|(|e<rsub|i>|)><rsub|1>,\<ldots\>,<around*|(|e<rsub|i>|)><rsub|n>|)>>
    where <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>> then

    <\equation*>
      <around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is a basis for ><around*|\<langle\>|F<rsup|n>,+,\<cdot\>|\<rangle\>> so
      that dim<around*|(|F<rsup|n>|)>=n
    </equation*>
  </theorem>

  <\proof>
    Let <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    be a family [as <math|<around*|{|1,\<ldots\>,n|}>> it has finite support]
    such that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>=0=<around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>>|)>>
    then we have for <math|j\<in\><around*|{|1,\<ldots\>,n|}>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)>|)><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum in A^n (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>e<rsub|i>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\><around*|(|e<rsub|i>|)><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>\<delta\><rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|basis sum of delta>]>>>|<cell|\<alpha\><rsub|j>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is a linear independent>
    </equation*>

    Now if <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>F<rsup|n>>
    then for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    we have that <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|x<rsub|i>\<cdot\>e<rsub|i>|)>|)><rsub|j>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum in A^n (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|x<rsub|i>\<cdot\>e<rsub|i>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|x<rsub|i>\<cdot\><around*|(|e<rsub|i>|)><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|x<rsub|i>\<cdot\>\<delta\><rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|basis sum of delta>]>>>|<cell|x<rsub|j>>>>>
    </eqnarray*>

    which proves that <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|x<rsub|i>\<cdot\>e<rsub|i>|)>>
    hence\ 

    <\equation*>
      span<around*|(|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=F<rsup|n>
    </equation*>
  </proof>

  <section|Linear mappings >

  <subsection|Definition and spaces of linear mappings>

  Similar to the concepts of group, ring, field homeomorphisms we have also
  mappings that preserves th structure of vector spaces, these are called
  linear mappings. Linear mappings are used later in Banach spaces, Hilbert
  spaces, differential analysis and so on.

  <\definition>
    <label|linear mapping><index|linear mapping>If
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then a
    mapping <math|L:X\<rightarrow\>Y> is a linear mapping iff\ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>X> we have
      <math|L<around*|(|x+y|)>=L<around*|(|x|)>+L<around*|(|y|)>>

      <item><math|\<forall\>x\<in\>X>, <math|\<forall\>\<alpha\>\<in\>F> we
      have that <math|L<around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>L<around*|(|x|)>>
    </enumerate>
  </definition>

  <\example>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    be a field and <math|<around*|\<langle\>|F<rsup|n>,+,\<cdot\>|\<rangle\>>>
    be the vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    defined by [theorem: <reference|vector space power field>] then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that the
    projection mapping

    <\equation*>
      \<pi\><rsub|i>:F<rsup|n>\<rightarrow\>F<text| >
    </equation*>

    is a linear mapping.
  </example>

  <\proof>
    If <math|x,y\<in\>F<rsup|n>> and <math|\<alpha\>\<in\>F> then we have\ 

    <\equation*>
      \<pi\><rsub|i><around*|(|x+y|)>=<around*|(|x+y|)><rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|vector space power field>]>>x<rsub|i>+y<rsub|i>=\<pi\><rsub|i><around*|(|x|)>+\<pi\><rsub|i><around*|(|y|)>
    </equation*>

    and

    <\equation*>
      \<pi\><rsub|i><around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>x<rsub|i>=\<alpha\>\<cdot\>\<pi\><rsub|i><around*|(|x|)>
    </equation*>
  </proof>

  <\definition>
    <label|linear mapping linear isomorphism>If
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then a
    mapping <math|L:X\<rightarrow\>Y> is a linear isomorphism iff\ 

    <\enumerate>
      <item><math|L:X\<rightarrow\>Y> is a bijection

      <item><math|L:X\<rightarrow\>Y> is a linear mapping
    </enumerate>
  </definition>

  We can now consider the space of all linear mappings between two vector
  spaces and show that this is also a vector space.

  <\definition>
    <label|linear mapping Hom(X,Y) definition><index|<math|Hom<around*|(|X,Y|)>>>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    the field <math|<around*|\<langle\>|F,*+,\<cdot\>|\<rangle\>>> then
    <math|Hom<around*|(|X,Y|)>\<subseteq\>Y<rsup|X>> is defined as follows

    <\equation*>
      Hom<around*|(|X,Y|)>=<around*|{|f\<in\>Y<rsup|X>\|f<text| is
      linear>|}>\<subseteq\>Y<rsup|X>
    </equation*>

    In other words <math|Hom<around*|(|X,Y|)>> is the set of all linear
    mappings between <math|X> and <math|Y>
  </definition>

  In [theorem: <reference|vector space function space>] it is proved that
  <math|<around*|\<langle\>|Y<rsup|X>,+,\<cdot\>|\<rangle\>>> i a vector
  space where for <math|f,g\<in\>Y<rsup|X>>, <math|\<alpha\>\<in\>F>:

  <\enumerate>
    <item><math|f+g:X\<rightarrow\>Y> is defined by
    <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>

    <item><math|\<alpha\>\<cdot\>f:X\<rightarrow\>Y> is defined by
    <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>

    <item><math|C<rsub|0>=0:X\<rightarrow\>Y> is defined by
    <math|0<around*|(|x|)>=0>

    <item><math|<around*|(|-f|)>:X\<rightarrow\>Y> is defined by
    <math|<around*|(|-f|)><around*|(|x|)>=-f<around*|(|x|)>>
  </enumerate>

  As <math|Hom<around*|(|X,Y|)>\<subseteq\>Y<rsup|X>> a natural question to
  ask is if <math|Hom<around*|(|X,Y|)>> is a sub-space of
  <math|<around*|\<langle\>|Y<rsup|X>,+,\<cdot\>|\<rangle\>>>, it turns out
  that the question is true, as is shown in the next theorem.

  <\theorem>
    <label|linear mapping Hom(X,Y)>Let <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces
    over the field <math|<around*|\<langle\>|F,*+,\<cdot\>|\<rangle\>>> then
    <math|Hom<around*|(|X,Y|)>> is a sub-space of
    <math|<around*|\<langle\>|Y<rsup|X>,+,\<cdot\>|\<rangle\>>>. Applying
    then [theorem: <reference|vector space sub-space is a vector space>]
    proves that <math|<around*|\<langle\>|Hom<around*|(|X,Y|)>,+,\<cdot\>|\<rangle\>>>
    is vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>.
  </theorem>

  <\proof>
    Let <math|L<rsub|1>,L<rsub|2>\<in\>Hom<around*|(|X,Y|)>>,
    <math|\<alpha\>,\<beta\>\<in\>F> then for <math|x,y\<in\>X> and
    <math|\<gamma\>\<in\>F> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x+y|)>>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>|)><around*|(|x+y|)>+<around*|(|\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x+y|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<rsub|1><around*|(|x+y|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x+y|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|L<rsub|1><around*|(|x|)>+L<rsub|1><around*|(|y|)>|)>+\<beta\>\<cdot\><around*|(|L<rsub|2><around*|(|x|)>+L<rsub|2><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|1><around*|(|y|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<rsub|1><around*|(|x|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|1><around*|(|y|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>|)><around*|(|x|)>+<around*|(|\<beta\>\<cdot\>L<rsub|2>|)><around*|(|y|)>+<around*|(|\<alpha\>\<cdot\>L<rsub|1>|)><around*|(|y|)>+<around*|(|\<beta\>\<cdot\>L<rsub|2>|)><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x|)>+<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|y|)>>>|<row|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|\<gamma\>\<cdot\>x|)>>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>|)><around*|(|\<gamma\>\<cdot\>x|)>+<around*|(|\<beta\>\<cdot\>L<rsub|2>|)><around*|(|\<gamma\>\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<rsub|1><around*|(|\<gamma\>\<cdot\>x|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|\<gamma\>\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<gamma\>\<cdot\>L<rsub|1><around*|(|x|)>|)>+\<beta\>\<cdot\><around*|(|\<gamma\>\<cdot\>L<rsub|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<gamma\>\<cdot\><around*|(|\<alpha\>\<cdot\>L<rsub|1><around*|(|x|)><rsub|>|)>+\<gamma\>\<cdot\><around*|(|\<beta\>\<cdot\>L<rsub|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<gamma\>\<cdot\><around*|(|<around*|(|\<alpha\>\<cdot\>L<rsub|1><around*|(|x|)>|)>|)>+\<gamma\>\<cdot\><around*|(|<around*|(|\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<gamma\>\<cdot\><around*|(|<around*|(|\<alpha\>\<cdot\>L<rsub|1>|)><around*|(|x|)>+<around*|(|\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<gamma\>\<cdot\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x|)>>>|<row|<cell|0<around*|(|x+y|)>>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|0<around*|(|x|)>+0<around*|(|y|)>>>|<row|<cell|0<around*|(|\<gamma\>\<cdot\>x|)>>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<gamma\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|\<gamma\>\<cdot\>0<around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>\<in\>Hom<around*|(|X,Y|)><text|
      and >0\<in\>Hom<around*|(|X,Y|)>\<Rightarrow\>Home<around*|(|X,Y|)>
    </equation*>

    hence by definition we have that <math|Hom<around*|(|X,Y|)>> is a
    sub-space of <math|<around*|\<langle\>|Y<rsup|X>,+,\<cdot\>|\<rangle\>>>
  </proof>

  A special case of <math|Hom<around*|(|X,Y|)>> is the dual space of a vecor
  space.

  <\definition>
    Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then the
    dual space of <math|V> noted by <math|V<rsup|\<ast\>>> is defined by\ 

    <\equation*>
      V<rsup|\<ast\>>=Hom<around*|(|X,F|)>
    </equation*>

    hence <math|V<rsup|\<ast\>>> i the set of linear mappings between
    <math|V> and <math|F>. Thanks to [theorem: <reference|linear mapping
    Hom(X,Y)>] <math|<around*|\<langle\>|V<rsup|\<ast\>>,+,\<cdot\>|\<rangle\>>>
    is a vector space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>.
  </definition>

  <\definition>
    <index|<math|GL<around*|(|V|)>>><label|linear mapping general linear
    group><dueto|General Linear Group>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    the <with|font-series|bold|general linear group of <math|V>> noted by
    <math|GL<around*|(|V|)>> is defined by\ 

    <\equation*>
      GL<around*|(|V|)>=<around*|{|L\<in\>Hom<around*|(|V,V|)>\|L<text| is a
      bijection>|}>\<subseteq\>Hom<around*|(|V,V|)>
    </equation*>

    In othere words <math|GL<around*|(|V|)>> is the set of linear
    isomorphisms between <math|V> and itself.
  </definition>

  <subsection|Properties of linear mappings>

  <\theorem>
    <label|linear mapping dual space unit mapping>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|x\<in\>V> with <math|x\<neq\>0> then
    <math|\<exists\>L\<in\>V<rsup|\<ast\>>> such that
    <math|L<around*|(|x|)>=1>
  </theorem>

  <\proof>
    Let <math|x\<in\>V> with <math|x\<neq\>0> then if
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|x|}>>\<subseteq\>F>
    such that <math|0=<big|sum><rsub|i\<in\><around*|{|x|}>><around*|(|\<alpha\><rsub|i>\<cdot\>i|)>=\<alpha\><rsub|x>\<cdot\>x>,
    applying [theorem: <reference|vector space properties (1)> (5)] it
    follows that <math|\<alpha\><rsub|x>=0> proving that\ 

    <\equation*>
      <around*|{|x|}><text| is linear independent>
    </equation*>

    Using [theorem: <reference|basis extending a linear independent set to a
    basis>] there exists a set <math|B> such that
    <math|<around*|{|x|}>\<subseteq\>B\<Rightarrow\>x\<in\>B> and
    <math|<around*|{|b|}><rsub|b\<in\>B>> is a basis of
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>. If <math|y\<in\>V>
    then there exists by [theorem: <reference|basis coordinates>] a
    <with|font-series|bold|unique> <math|<around*|{|\<alpha\><rsup|<around*|(|y|)>><rsub|b>|}><rsub|b\<in\>B>>
    with finite support such that

    <\equation*>
      y=<big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsup|<around*|(|y|)>><rsub|b>\<cdot\>b|)>
    </equation*>

    Define

    <\equation*>
      L:V\<rightarrow\>F<text| by >L<around*|(|y|)>=<big|sum><rsub|b\<in\>B>\<alpha\><rsup|<around*|(|y|)>><rsub|b>
    </equation*>

    If we define <math|<around*|{|\<alpha\><rsub|b>|}><rsub|b\<in\>B>> by
    <math|\<alpha\><rsub|b>=<choice|<tformat|<table|<row|<cell|1<text| if
    >b=x>>|<row|<cell|0<text| if >b\<in\>B\\<around*|{|x|}>>>>>>> then

    <\equation*>
      <big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsub|b>\<cdot\>b|)>\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>]>><big|sum><rsub|b\<in\>B\\<around*|{|x|}>><around*|(|\<alpha\><rsub|b>\<cdot\>b|)>+<big|sum><rsub|b\<in\><around*|{|x|}>><around*|(|\<alpha\><rsub|b>\<cdot\>b|)>\<equallim\><rsub|<text|[theorems:
      <reference|support of neutral element (2)>, <reference|support over a
      singleton>]>>0+\<alpha\><rsub|x>\<cdot\>x=1\<ast\>x=x
    </equation*>

    so that <math|<around*|{|\<alpha\><rsup|<around*|(|x|)>><rsub|b>|}><rsub|b\<in\>B>=<around*|{|\<alpha\><rsub|b>|}><rsub|b\<in\>B>>.
    Hence\ 

    <\equation*>
      L<around*|(|x|)>=<big|sum><rsub|b\<in\>B>\<alpha\><rsub|b>\<equallim\><rsub|<text|[theorem:
      <reference|support over disjoint subsets>]>><big|sum><rsub|b\<in\>B\\<around*|{|x|}>>\<alpha\><rsub|b>+<big|sum><rsub|b\<in\><around*|{|x|}>>\<alpha\><rsub|b>\<equallim\><rsub|<text|[theorems:
      <reference|support of neutral element (2)>, <reference|support over a
      singleton>]>>\<alpha\><rsub|x>=1
    </equation*>

    proving that\ 

    <\equation*>
      L<around*|(|x|)>=1
    </equation*>

    Let <math|y,z\<in\>V> and <math|\<alpha\>\<in\>F> then
    <math|y=<big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsup|<around*|(|y|)>><rsub|b>\<cdot\>b|)>>
    and <math|z=<big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsup|<around*|(|z|)>><rsub|b>\<cdot\>b|)>>
    then we have\ 

    <\equation*>
      y+z=<big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsup|<around*|(|y|)>><rsub|b>\<cdot\>b|)>+<big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsup|<around*|(|z|)>><rsub|b>\<cdot\>b|)>\<equallim\><rsub|<text|[theorem:
      <reference|support of sums (2)>]>><big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsub|b><rsup|<around*|(|y|)>>\<cdot\>b+\<alpha\><rsup|<around*|(|z|)>><rsub|b>\<cdot\>b|)>=<big|sum><rsub|b\<in\>B><around*|(|<around*|(|\<alpha\><rsup|<around*|(|y|)>><rsub|b>+\<alpha\><rsup|<around*|(|z|)>><rsub|b>|)>\<cdot\>b|)>
    </equation*>

    and\ 

    <\equation*>
      \<alpha\>\<cdot\>y=\<alpha\>\<cdot\><big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsup|<around*|(|y|)>><rsub|b>\<cdot\>b|)><math|\<equallim\><rsub|<text|[theorem:
      <reference|support space finite sum
      (1)>]>><big|sum><rsub|b\<in\>B><around*|(|\<alpha\>\<cdot\><around*|(|\<alpha\><rsup|<around*|(|y|)>><rsub|b>\<cdot\>b|)>|)>=<big|sum><rsub|b\<in\>B><around*|(|<around*|(|\<alpha\>\<cdot\>\<alpha\><rsup|<around*|(|y|)>><rsub|b>|)>\<cdot\>b|)>>
    </equation*>

    so that <math|<around*|{|\<alpha\><rsup|<around*|(|y+z|)>><rsub|b>|}><rsub|b\<in\>B>=<around*|{|\<alpha\><rsup|<around*|(|y|)>><rsub|b>+\<alpha\><rsup|<around*|(|z|)>><rsub|b>|}><rsub|b\<in\>B>>
    and <math|<around*|{|\<alpha\><rsup|<around*|(|\<alpha\>\<cdot\>y|)>><rsub|b>|}><rsub|b\<in\>B>=<around*|{|\<alpha\>\<cdot\>\<alpha\><rsup|<around*|(|y|)>><rsub|b>|}><rsub|b\<in\>B>>,
    hence \ 

    <\equation*>
      L<around*|(|y+z|)>=<big|sum><rsub|b\<in\>B><around*|(|\<alpha\><rsup|<around*|(|y|)>><rsub|b>+\<alpha\><rsup|<around*|(|z|)>><rsub|b>|)><rsub|b\<in\>B>=\<equallim\><rsub|<text|[theorem:
      <reference|support of sums (2)>]>><big|sum><rsub|b\<in\>B>\<alpha\><rsup|<around*|(|y|)>><rsub|b><rsub|b\<in\>B>+<big|sum><rsub|b\<in\>B>\<alpha\><rsup|<around*|(|z|)>><rsub|b><rsub|b\<in\>B>=L<around*|(|y|)>+L<around*|(|z|)>
    </equation*>

    and\ 

    <\equation*>
      L<around*|(|\<alpha\>\<cdot\>y|)>=<big|sum><rsub|b\<in\>B><around*|(|\<alpha\>\<cdot\>\<alpha\><rsup|<around*|(|y|)>><rsub|b>|)>\<equallim\><rsub|<text|[theorem:
      <reference|support space finite sum
      (1)>]>>\<alpha\>\<cdot\><big|sum><rsub|b\<in\>B>\<alpha\><rsup|<around*|(|y|)>><rsub|b>=\<alpha\>\<cdot\>L<around*|(|y|)>
    </equation*>

    proving that\ 

    <\equation*>
      L<text| is linear or >L\<in\>Hom<around*|(|V,F|)>
    </equation*>
  </proof>

  <\corollary>
    <label|linear mapping way to test equality>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    <math|x,y\<in\>X> such that <math|\<forall\>L\<in\>Hom<around*|(|V,F|)>>
    we have <math|L<around*|(|x|)>=L<around*|(|y|)>> then <math|x=y>.
  </corollary>

  <\proof>
    Assume that <math|x\<neq\>y> then <math|x-y\<neq\>0> then by [theorem:
    <reference|linear mapping dual space unit mapping>] there exist a
    <math|L\<in\>Hom<around*|(|V,F|)>> such that <math|L<around*|(|x-y|)>=1>
    contradicting <math|L<around*|(|x-y|)>=L<around*|(|x|)>-L<around*|(|y|)>=0>.
    So we must have that <math|x=y>.
  </proof>

  <\lemma>
    <label|linear mapping neutral element>If
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    <math|L<around*|(|0|)>=0>
  </lemma>

  <\proof>
    <math|L<around*|(|0|)>=L<around*|(|0\<cdot\>0|)>=0\<cdot\>L<around*|(|0|)>>
  </proof>

  <\theorem>
    <label|linear mapping general sum>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then we have:

    <\enumerate>
      <item><math|\<forall\>k,l\<in\>\<bbb-N\><rsub|0>> with
      <math|k\<leqslant\>l>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,l|}>>\<subseteq\>X>
      and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,l|}>>>
      then we have\ 

      <\equation*>
        L<around*|(|<big|sum><rsub|i=k><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=<big|sum><rsub|i=k><rsup|l>\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>
      </equation*>

      <item>If <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      is a family with finite support, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X>
      then we have

      <\equation*>
        L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>
      </equation*>

      <item>If <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      is a family with finite support, <math|x\<in\>X> then\ 

      <\equation*>
        L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>|)>\<cdot\>L<around*|(|a|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First we prove the special case <math|k=0> by induction, so
      define\ 

      <\equation*>
        S=<around*|{|l\<in\>\<bbb-N\><rsub|0>\|<text|If
        ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,l|}>>\<subseteq\>X,<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,l|}>>\<subseteq\>f<text|
        then >L<around*|(|<big|sum><rsub|i=k><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=<big|sum><rsub|i=k><rsup|l>\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|}>
      </equation*>

      \ then we have:

      <\description>
        <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>X>,
        <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0|}>>\<subseteq\>F>
        then we have\ 

        <\equation*>
          L<around*|(|<big|sum><rsub|i=0><rsup|0><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=L<around*|(|\<alpha\><rsub|0>\<cdot\>x<rsub|0>|)>=a<rsub|0>\<cdot\>L<around*|(|x<rsub|0>|)>=<big|sum><rsub|i=0><rsup|0><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>
        </equation*>

        proving that <math|0\<in\>S>.

        <item*|<math|l\<in\>S\<Rightarrow\>l+1\<in\>S>>If
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,l+1|}>>\<subseteq\>X>,
        <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,l+1|}>>\<subseteq\>F>
        then we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|l+1><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>>|<cell|=>|<cell|L<around*|(|<around*|(|<big|sum><rsub|i=0><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>+\<alpha\><rsub|l+1>\<cdot\>x<rsub|l+1>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>+L<around*|(|\<alpha\><rsub|l+1>\<cdot\>x<rsub|l+1>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>+\<alpha\><rsub|l+1>\<cdot\>L<around*|(|x<rsub|l+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|l\<in\>S>>|<cell|<big|sum><rsub|i=0><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>+\<alpha\><rsub|l+1>\<cdot\>L<around*|(|x<rsub|l+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|l+1><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>>>>>
        </eqnarray*>

        proving that <math|l+1\<in\>S>.
      </description>

      Mathematical induction proves then that\ 

      <\equation>
        <label|eq 11.63.064>\<forall\>l\<in\>\<bbb-N\><rsub|0>,<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,l|}>>\<subseteq\>X,<text|><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,l|}>>\<subseteq\>F\<vDash\>L<around*|(|<big|sum><rsub|i=0><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=<big|sum><rsub|i=0><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>
      </equation>

      Let now <math|k,l\<in\>\<bbb-N\><rsub|0>> with <math|k\<leqslant\>l>,
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,l|}>>\<subseteq\>X<text|
      and ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,l|}>>\<subseteq\>F>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i=k><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|def>>|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|l-k><around*|(|\<alpha\><rsub|k+i>\<cdot\>x<rsub|k+i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.63.064>]>>>|<cell|<big|sum><rsub|i=0><rsup|l-k><around*|(|\<alpha\><rsub|k+i>\<cdot\>L<around*|(|x<rsub|k+i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|l><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>>>>>
      </eqnarray*>

      <item>Let now <math|I> a finite set and
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X,<text|><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      then for <math|I> we have either:

      <\description>
        <item*|<math|I=\<varnothing\>>>Then\ 

        <\equation*>
          L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=L<around*|(|<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=0=<big|sum><rsub|i\<in\>\<varnothing\>><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>
        </equation*>

        <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a
        <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>I> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|def>>|<cell|L<around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 11.63.064>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>L<around*|(|x<rsub|\<beta\><around*|(|i|)>>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>>>>>
        </eqnarray*>
      </description>

      proving that\ 

      <\equation>
        <label|eq 11.64.064><text|For >I<text|
        finite,><around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X,<text|><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
        we have >L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>
      </equation>

      If <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      is a family with finite support, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X>
      then using [theorem: <reference|linear combination requirement>] we
      have that

      <\equation>
        <label|eq 11.65.064>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>\<subseteq\>sup<around*|(|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>|)><text|
        and ><around*|{|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I><text|
        has finite support>
      </equation>

      Hence <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>>
      is well defined and further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|def>>|<cell|L<around*|(|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.64.064>]>>>|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)><eq-number><label|eq
        11.66.064>>>>>
      </eqnarray*>

      Now if <math|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>.L<around*|(|x<rsub|i>|)>|}><rsub|i\<in\>I>|)>>
      then <math|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>\<neq\>0>,
      if <math|\<alpha\><rsub|i>\<cdot\>x<rsub|i>=0> then

      <\equation*>
        0\<equallim\><rsub|<text|[theorem: <reference|linear mapping neutral
        element>]>>L<around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>=\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>
      </equation*>

      contradicting <math|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>\<neq\>0>,
      hence <math|\<alpha\><rsub|i>\<cdot\>x<rsub|i>\<neq\>0> or
      <math|i\<in\>sup<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>>
      proving that\ 

      <\equation>
        <label|eq 11.67.064>supp<around*|(|<around*|{|\<alpha\><rsub|i>.L<around*|(|x<rsub|i>|)>|}><rsub|i\<in\>I>|)>\<subseteq\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|}><rsub|i\<in\>I>|)>
      </equation>

      or by \ <math|<around*|[|eq:<reference|eq 11.65.064>|]> that >
      <math|<around*|{|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|}><rsub|i\<in\>I>>
      has finite support so that <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>>
      is well defined. Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|def>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|e<rsub|i>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|e<rsub|i>|)>|)>|)>+0>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|support of neutral element
        (2)>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|e<rsub|i>|)>|)>+<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>x<rsub|i>|}><rsub|i\<in\>I>|)>\\supp<around*|(|<around*|{|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|e<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|<text|theorem:
        <reference|support over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>supp<around*|(|<around*|{|\<alpha\><rsub|i>x<rsub|i>|}><rsub|i\<in\>I>|)>><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|e<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.67.064>]>>>|<cell|>>|<row|<cell|L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>=<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>
      </equation*>

      <item>Let <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      be a family with finite support, <math|x\<in\>X> then if we define
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> by <math|x<rsub|i>=x>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>|)>>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\><rsub|i>\<cdot\>L<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theroem:
        <reference|support space finite sum
        (2)>]>>>|<cell|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>|)>\<cdot\>L<around*|(|x|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\example>
    Consider the vector space <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>
    then we have that\ 

    <\enumerate>
      <item><math|Img:\<bbb-C\>\<rightarrow\>\<bbb-R\>> defined by
      <math|Img<around*|(|x+i\<cdot\>y|)>=y> is linear

      <item><math|Re:\<bbb-C\>\<rightarrow\>\<bbb-R\>> defined by
      <math|Re<around*|(|x+i\<cdot\>y|)>=x> is linear

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<bbb-C\>>
      is family with finite support then\ 

      <\enumerate>
        <item><math|Img<around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i>|)>=<big|sum><rsub|i\<in\>I>Img<around*|(|x<rsub|i>|)>>

        <item><math|re<around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i>|)>=<big|sum><rsub|i\<in\>I>Re<around*|(|x<rsub|i>|)>>
      </enumerate>
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from [theorem: <reference|complex real. imaginair
      properties>].

      <item>This follows from [theorem: <reference|complex real. imaginair
      properties>].

      <item>This follows from (1), (2) and [theorem: <reference|linear
      mapping general sum>]
    </enumerate>
  </proof>

  <\theorem>
    <label|linear mapping inverse isomorphism>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    \ <math|L:X\<rightarrow\>Y> a linear isomorphism then
    <math|L<rsup|-1>:Y\<rightarrow\>X> is also a linear isomorphism.
  </theorem>

  <\proof>
    Let <math|x,y\<in\>Y> then <math|L<rsup|-1><around*|(|x|)>,L<rsup|-1><around*|(|y|)>\<in\>X>
    and we have

    <\equation*>
      L<around*|(|L<rsup|-1><around*|(|x|)>+L<rsup|-1><around*|(|y|)>|)>=L<around*|(|L<rsup|-1><around*|(|x|)>|)>+L<around*|(|L<rsup|-1><around*|(|y|)>|)>=x+y
    </equation*>

    so that\ 

    <\equation*>
      L<rsup|-1><around*|(|x+y|)>=L<rsup|-1><around*|(|x|)>+L<rsup|-1><around*|(|y|)>
    </equation*>

    Further if <math|\<alpha\>\<in\>F> then\ 

    <\equation*>
      L<around*|(|\<alpha\>\<cdot\>L<rsup|-1><around*|(|x|)>|)>=\<alpha\>\<cdot\>L<around*|(|L<rsup|-1><around*|(|x|)>|)>=\<alpha\>\<cdot\>x
    </equation*>

    so that\ 

    <\equation*>
      L<rsup|-1><around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>L<rsup|-1><around*|(|x|)>
    </equation*>
  </proof>

  <\theorem>
    <label|linear mapping composition>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Z,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then we have:

    <\enumerate>
      <item>If <math|L<rsub|1>\<in\>Hom<around*|(|X,Y|)>>,
      <math|L<rsub|2>\<in\>Hom<around*|(|Y,Z|)>> then
      <math|L<rsub|2>\<circ\>L<rsub|1>\<in\>Hom<around*|(|X,Z|)>>

      <item>If <math|L<rsub|1>\<in\>Hom<around*|(|X,Y|)>>,
      <math|L<rsub|2>\<in\>Hom<around*|(|Y,Z|)>> are isomorphisms then
      <math|L<rsub|2>\<circ\>L<rsub|1>\<in\>Hom<around*|(|X,Z|)>> is a
      isomorphism.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x,y\<in\>X> and <math|\<alpha\>\<in\>F> then we have:

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x+y|)>>|<cell|=>|<cell|L<rsub|2><around*|(|L<rsub|1><around*|(|x+y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>+L<rsub|1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>|)>+L<rsub|2><around*|(|L<rsub|1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>+<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|y|)>>>|<row|<cell|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|\<alpha\>\<cdot\>x|)>>|<cell|=>|<cell|L<rsub|2><around*|(|L<rsub|1><around*|(|\<alpha\>\<cdot\>x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|2><around*|(|\<alpha\>\<cdot\>L<rsub|1><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>>>>>
      </eqnarray*>

      <item>This follows from (1) and [theorem: <reference|function
      composition injectivity, surjectivity and bijectivity (1)>]
    </enumerate>
  </proof>

  Applying the above on <math|GL<around*|(|V|)>> gives\ 

  <\theorem>
    <label|linear mapping general linear group is a group>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    <math|<around*|\<langle\>|GL<around*|(|V|)>,\<circ\>|\<rangle\>>> is a
    group with neutral element <math|Id<rsub|V>> and for
    <math|L\<in\>GL<around*|(|V|)>> for <math|L<rsup|-1>\<in\>GL<around*|(|V|)>>
    is the inverse element.\ 
  </theorem>

  <\proof>
    If <math|L<rsub|1>\<in\>GL<around*|(|V|)>> and
    <math|L<rsub|2>\<in\>GL<around*|(|V|)>> then
    <math|L<rsub|1>,L<rsub|2>\<in\>Hom<around*|(|V,V|)>> so that by [theorem:
    <reference|linear mapping composition>] we have that
    <math|L<rsub|2>\<circ\>L<rsub|1>:V\<rightarrow\>V> is alinear
    isomorphism, hence <math|L<rsub|2>\<circ\>L<rsub|1>\<in\>GL<around*|(|V|)>>
    so that

    <\equation*>
      \<circ\>:GL<around*|(|V|)>\<times\>GL<around*|(|V|)>\<rightarrow\>GL<around*|(|V|)><text|
      is a operator>
    </equation*>

    futher we have\ 

    <\description>
      <item*|associativity>This follows from [theorem: <reference|partial
      function associativity>]

      <item*|neutral element>Let <math|x,y\<in\>V> and
      <math|\<alpha\>\<in\>F> then we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|Id<rsub|V><around*|(|x+y|)>>|<cell|=>|<cell|x+y>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|V><around*|(|x|)>+Id<rsub|V><around*|(|y|)>>>|<row|<cell|Id<rsub|V><around*|(|\<alpha\>\<cdot\>x|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>Id<rsub|V><around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        Id<rsub|V>\<in\>GL<around*|(|V|)>
      </equation*>

      Further if <math|L\<in\>GL<around*|(|V|)>> then\ 

      <\equation*>
        L\<circ\>Id<rsub|V>\<equallim\><rsub|<text|[theorem:
        <reference|function composition of Id
        function>]>>L\<equallim\><rsub|<text|[theorem: <reference|function
        composition of Id function>]>>Id<rsub|V>\<circ\>L
      </equation*>

      <item*|inverse element>If <math|L\<in\>GL<around*|(|V|)>> then by
      [theorem: <reference|linear mapping inverse isomorphism>]
      <math|L<rsup|-1>\<in\>GL<around*|(|V|)>> so that\ 

      <\equation*>
        L\<circ\>L<rsup|-1>=Id<rsub|V>=L<rsup|-1>\<circ\>L
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|linear mapping general linear group faithfull action>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then for the
    genral linear group <math|<around*|\<langle\>|GL<around*|(|V|)>,\<circ\>|\<rangle\>>>
    we have for\ 

    <\equation*>
      \<vartriangleright\>:GL<around*|(|V|)>\<times\>V\<rightarrow\>V<text|
      defined by >L\<vartriangleright\>x=L<around*|(|x|)>
    </equation*>

    that <math|\<vartriangleright\>> is a <with|font-series|bold|faitful left
    action> [see definitions: <reference|group left (right action)>,
    <reference|group faithful, transitive action (1)>]
  </theorem>

  <\proof>
    First we prove that <math|\<vartriangleright\>> is a left action
    [definition: <reference|group left (right action)>]\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>V> we have
      <math|Id<rsub|V>\<vartriangleright\>x=Id<rsub|V><around*|(|x|)>=x>

      <item>If <math|L<rsub|1>,L<rsub|2>\<in\>GL<around*|(|V|)>> then
      <math|\<forall\>x\<in\>V> we have

      <\equation*>
        <around*|(|L<rsub|2>\<circ\>L<rsub|1>|)>\<vartriangleright\>x=<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>=L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>|)>=L<rsub|2><around*|(|L<rsub|1>\<vartriangleright\>x|)>=L<rsub|2>\<vartriangleright\><around*|(|L<rsub|1>\<vartriangleright\>x|)>
      </equation*>
    </enumerate>

    Given <math|L\<in\>GL<around*|(|X|)>> define
    <math|L<rsub|\<vartriangleright\>>:V\<rightarrow\>V> by
    <math|L<rsub|\<vartriangleright\>><around*|(|x|)>=L\<vartriangleright\>x=L<around*|(|x|)>>
    then we have:

    <\enumerate>
      <item>If <math|L<rsub|\<vartriangleright\>>=Id<rsub|V>> then
      <math|\<forall\>x\<in\>V> we have <math|L<around*|(|x|)>=L<rsub|\<vartriangleright\>><around*|(|x|)>=Id<rsub|V><around*|(|x|)>=x>
      proving that <math|L=Id<rsub|V>>

      <item>If <math|L=Id<rsub|V>> then <math|\<forall\>x\<in\>V> we have
      <math|x=L<around*|(|x|)>=L<rsub|\<vartriangleright\>><around*|(|x|)>>
      proving that <math|L<rsub|\<vartriangleright\>>=Id<rsub|V>>
    </enumerate>

    hence using [definition: <reference|group faithful, transitive action
    (1)>] <math|\<vartriangleright\>> is faithful.
  </proof>

  \;

  <section|Multilinear mappings>

  <section|Deteminant Functions>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|10>
    <associate|page-first|312>
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
    <associate|auto-19|<tuple|11.2.3|?>>
    <associate|auto-2|<tuple|11.1|?>>
    <associate|auto-20|<tuple|11.2.3.1|?>>
    <associate|auto-21|<tuple|11.2.3.2|?>>
    <associate|auto-22|<tuple|11.2.3.3|?>>
    <associate|auto-23|<tuple|linear combination|?>>
    <associate|auto-24|<tuple|linear span|?>>
    <associate|auto-25|<tuple|independent vectors|?>>
    <associate|auto-26|<tuple|independent set of vectors|?>>
    <associate|auto-27|<tuple|linear dependent family|?>>
    <associate|auto-28|<tuple|linear depenedent family|?>>
    <associate|auto-29|<tuple|linear dependent set|?>>
    <associate|auto-3|<tuple|11.1.1|?>>
    <associate|auto-30|<tuple|11.2.3.4|?>>
    <associate|auto-31|<tuple|11.3|?>>
    <associate|auto-32|<tuple|11.3.1|?>>
    <associate|auto-33|<tuple|linear mapping|?>>
    <associate|auto-34|<tuple|<with|mode|<quote|math>|Hom<around*|(|X,Y|)>>|?>>
    <associate|auto-35|<tuple|<with|mode|<quote|math>|GL<around*|(|V|)>>|?>>
    <associate|auto-36|<tuple|11.3.2|?>>
    <associate|auto-37|<tuple|11.4|?>>
    <associate|auto-38|<tuple|11.5|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-6|<tuple|11.1.2|?>>
    <associate|auto-7|<tuple|11.1.3|?>>
    <associate|auto-8|<tuple|permutation|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<sigma\>>|?>>
    <associate|basis Kronecker delta|<tuple|11.132|?>>
    <associate|basis and bijection|<tuple|11.113|?>>
    <associate|basis condition|<tuple|11.112|?>>
    <associate|basis coordinates|<tuple|11.116|?>>
    <associate|basis dimensionality|<tuple|11.128|?>>
    <associate|basis empty basis|<tuple|11.124|?>>
    <associate|basis exist|<tuple|11.120|?>>
    <associate|basis existence (1)|<tuple|11.119|?>>
    <associate|basis extending a linear independent set to a
    basis|<tuple|11.118|?>>
    <associate|basis extension|<tuple|11.117|?>>
    <associate|basis finite|<tuple|11.125|?>>
    <associate|basis finite/infinite|<tuple|11.111|?>>
    <associate|basis infinite|<tuple|11.126|?>>
    <associate|basis of a field|<tuple|11.129|?>>
    <associate|basis of a vector space|<tuple|11.110|?>>
    <associate|basis of non trivial vector space|<tuple|11.115|?>>
    <associate|basis out of spanning family|<tuple|11.121|?>>
    <associate|basis replacement lemma|<tuple|11.123|?>>
    <associate|basis size|<tuple|11.127|?>>
    <associate|basis sum of delta|<tuple|11.133|?>>
    <associate|basis trivial space basis|<tuple|11.114|?>>
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
    <associate|eq 11.27.060|<tuple|11.29|?>>
    <associate|eq 11.27.064|<tuple|11.27|?>>
    <associate|eq 11.28.060|<tuple|11.30|?>>
    <associate|eq 11.29.060|<tuple|11.31|?>>
    <associate|eq 11.3.053|<tuple|11.3|?>>
    <associate|eq 11.30.060|<tuple|11.32|?>>
    <associate|eq 11.31.060|<tuple|11.33|?>>
    <associate|eq 11.32.060|<tuple|11.34|?>>
    <associate|eq 11.33.060|<tuple|11.35|?>>
    <associate|eq 11.34.060|<tuple|11.36|?>>
    <associate|eq 11.35.060|<tuple|11.37|?>>
    <associate|eq 11.36.060|<tuple|11.38|?>>
    <associate|eq 11.38.060|<tuple|11.40|?>>
    <associate|eq 11.39.060|<tuple|11.41|?>>
    <associate|eq 11.4.053|<tuple|11.4|?>>
    <associate|eq 11.40.060|<tuple|11.42|?>>
    <associate|eq 11.41.060|<tuple|11.43|?>>
    <associate|eq 11.42.060|<tuple|11.44|?>>
    <associate|eq 11.43.060|<tuple|11.46|?>>
    <associate|eq 11.43.060.1|<tuple|11.45|?>>
    <associate|eq 11.44.060|<tuple|11.47|?>>
    <associate|eq 11.46.060|<tuple|11.48|?>>
    <associate|eq 11.5.053|<tuple|11.5|?>>
    <associate|eq 11.57.062|<tuple|11.49|?>>
    <associate|eq 11.58.062|<tuple|11.50|?>>
    <associate|eq 11.59.062|<tuple|11.51|?>>
    <associate|eq 11.59.063|<tuple|11.61|?>>
    <associate|eq 11.6.053|<tuple|11.6|?>>
    <associate|eq 11.60.062|<tuple|11.52|?>>
    <associate|eq 11.60.063|<tuple|11.62|?>>
    <associate|eq 11.61.062|<tuple|11.53|?>>
    <associate|eq 11.62.062|<tuple|11.54|?>>
    <associate|eq 11.63.062|<tuple|11.55|?>>
    <associate|eq 11.63.064|<tuple|11.63|?>>
    <associate|eq 11.64.062|<tuple|11.56|?>>
    <associate|eq 11.64.064|<tuple|11.64|?>>
    <associate|eq 11.65.062|<tuple|11.57|?>>
    <associate|eq 11.65.064|<tuple|11.65|?>>
    <associate|eq 11.66.062|<tuple|11.58|?>>
    <associate|eq 11.66.064|<tuple|11.66|?>>
    <associate|eq 11.67.062|<tuple|11.59|?>>
    <associate|eq 11.67.064|<tuple|11.67|?>>
    <associate|eq 11.68.062|<tuple|11.60|?>>
    <associate|eq 11.7.053|<tuple|11.7|?>>
    <associate|eq 11.7.053.1|<tuple|11.8|?>>
    <associate|eq 11.9.053|<tuple|11.9|?>>
    <associate|finite support sum|<tuple|11.69|?>>
    <associate|linear bijection (in)dependency|<tuple|11.103|?>>
    <associate|linear combination|<tuple|11.84|?>>
    <associate|linear combination requirement|<tuple|11.83|?>>
    <associate|linear dependency condition|<tuple|11.106|?>>
    <associate|linear dependency of ordered basis|<tuple|11.122|?>>
    <associate|linear dependent conditions|<tuple|11.102|?>>
    <associate|linear dependent family|<tuple|11.98|?>>
    <associate|linear dependent family alternative|<tuple|11.100|?>>
    <associate|linear dependent set|<tuple|11.99|?>>
    <associate|linear dependent set alternative|<tuple|11.101|?>>
    <associate|linear extension of a family|<tuple|11.107|?>>
    <associate|linear extension of a set|<tuple|11.108|?>>
    <associate|linear imdependent set|<tuple|11.95|?>>
    <associate|linear independency condition (1)|<tuple|11.105|?>>
    <associate|linear independent family and bijection|<tuple|11.104|?>>
    <associate|linear independent set alterantive|<tuple|11.97|?>>
    <associate|linear independent vector|<tuple|11.94|?>>
    <associate|linear mapping|<tuple|11.135|?>>
    <associate|linear mapping Hom(X,Y)|<tuple|11.139|?>>
    <associate|linear mapping Hom(X,Y) definition|<tuple|11.138|?>>
    <associate|linear mapping composition|<tuple|11.148|?>>
    <associate|linear mapping dual space unit mapping|<tuple|11.142|?>>
    <associate|linear mapping general linear
    group|<tuple|<with|mode|<quote|math>|GL<around*|(|V|)>>|?>>
    <associate|linear mapping general linear group faithfull
    action|<tuple|11.150|?>>
    <associate|linear mapping general linear group is a
    group|<tuple|11.149|?>>
    <associate|linear mapping general sum|<tuple|11.145|?>>
    <associate|linear mapping inverse isomorphism|<tuple|11.147|?>>
    <associate|linear mapping linear isomorphism|<tuple|11.137|?>>
    <associate|linear mapping neutral element|<tuple|11.144|?>>
    <associate|linear mapping way to test equality|<tuple|11.143|?>>
    <associate|linear span|<tuple|11.85|?>>
    <associate|linear span empty set|<tuple|11.87|?>>
    <associate|linear span equivalence|<tuple|11.86|?>>
    <associate|linear span inclusion|<tuple|11.92|?>>
    <associate|linear span is a vector space|<tuple|11.89|?>>
    <associate|linear span minus linear compination is span|<tuple|11.93|?>>
    <associate|linear span of a subspace|<tuple|11.90|?>>
    <associate|linear span of span|<tuple|11.91|?>>
    <associate|linear span subset|<tuple|11.88|?>>
    <associate|linear sub family of independent family|<tuple|11.96|?>>
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
    <associate|sum in A^n (1)|<tuple|11.81|?>>
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
    <associate|support|<tuple|11.66|?>>
    <associate|support bijection on index|<tuple|11.73|?>>
    <associate|support eleminate zeroes|<tuple|11.72|?>>
    <associate|support extension|<tuple|11.71|?>>
    <associate|support finite|<tuple|11.68|?>>
    <associate|support of inverses (2)|<tuple|11.76|?>>
    <associate|support of neutral element (2)|<tuple|11.74|?>>
    <associate|support of sums (2)|<tuple|11.75|?>>
    <associate|support over a singleton|<tuple|11.70|?>>
    <associate|support over disjoint subsets|<tuple|11.80|?>>
    <associate|support ring product (2)|<tuple|11.77|?>>
    <associate|support space finite sum (1)|<tuple|11.78|?>>
    <associate|support space finite sum (2)|<tuple|11.79|?>>
    <associate|support space finite sum (4)|<tuple|11.82|?>>
    <associate|support support of subsets|<tuple|11.67|?>>
    <associate|vector space|<tuple|11.44|?>>
    <associate|vector space C real|<tuple|11.52|?>>
    <associate|vector space F^n|<tuple|11.57|?>>
    <associate|vector space Q,R,C|<tuple|11.51|?>>
    <associate|vector space complex/real|<tuple|11.53|?>>
    <associate|vector space field|<tuple|11.50|?>>
    <associate|vector space finite sum (1)|<tuple|11.62|?>>
    <associate|vector space finite sum (2)|<tuple|11.63|?>>
    <associate|vector space finite sum (3)|<tuple|11.64|?>>
    <associate|vector space finite sum (4)|<tuple|11.65|?>>
    <associate|vector space function space|<tuple|11.54|?>>
    <associate|vector space power|<tuple|11.55|?>>
    <associate|vector space power field|<tuple|11.56|?>>
    <associate|vector space product of vector spaces|<tuple|11.58|?>>
    <associate|vector space properties (1)|<tuple|11.45|?>>
    <associate|vector space set operations|<tuple|11.59|?>>
    <associate|vector space set propertie|<tuple|11.60|?>>
    <associate|vector space sub-space is a vector space|<tuple|11.47|?>>
    <associate|vector space subspace|<tuple|11.46|?>>
    <associate|vector space trivial|<tuple|11.49|?>>
    <associate|vector spaces product of vector spaces|<tuple|11.61|?>>
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

      <tuple|<tuple|linear combination>|<pageref|auto-23>>

      <tuple|<tuple|linear span>|<pageref|auto-24>>

      <tuple|<tuple|independent vectors>|<pageref|auto-25>>

      <tuple|<tuple|independent set of vectors>|<pageref|auto-26>>

      <tuple|<tuple|linear dependent family>|<pageref|auto-27>>

      <tuple|<tuple|linear depenedent family>|<pageref|auto-28>>

      <tuple|<tuple|linear dependent set>|<pageref|auto-29>>

      <tuple|<tuple|linear mapping>|<pageref|auto-33>>

      <tuple|<tuple|<with|mode|<quote|math>|Hom<around*|(|X,Y|)>>>|<pageref|auto-34>>

      <tuple|<tuple|<with|mode|<quote|math>|GL<around*|(|V|)>>>|<pageref|auto-35>>
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

      <with|par-left|<quote|1tab>|11.2.3<space|2spc>Basis of a vector space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|2tab>|11.2.3.1<space|2spc>Finite sums on a vector
      space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|2tab>|11.2.3.2<space|2spc>Sum of families with
      finite support <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|2tab>|11.2.3.3<space|2spc>Linear dependency
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|2tab>|11.2.3.4<space|2spc>Basis of a vector space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      11.3<space|2spc>Linear mappings \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>

      <with|par-left|<quote|1tab>|11.3.1<space|2spc>Definition and spaces of
      linear mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|11.3.2<space|2spc>Properties of linear
      mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      11.4<space|2spc>Multilinear mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      11.5<space|2spc>Deteminant Functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>
    </associate>
  </collection>
</auxiliary>
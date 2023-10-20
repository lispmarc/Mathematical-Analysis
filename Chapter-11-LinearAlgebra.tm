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
  and multiplicative semi-groups]. In this cases we talk about finite
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
    is a semi-group, <math|n\<in\>\<bbb-N\><rsub|0>> and
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
        and commutativity>>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>+x<rsub|n+1>|)>+<around*|(|<big|sum><rsub|i=0><rsup|n>y<rsub|i>+y<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>+<big|sum><rsub|i=0><rsup|n+1>y<rsub|i>>>>>
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

    Using mathematical induction we have then that
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
      <tformat|<table|<row|<cell|<big|sum><rsub|i=n<rsub|1>><rsup|m<rsub|1>><around*|(|<big|sum><rsub|j=n<rsub|2>><rsup|m<rsub|2>>x<rsub|i,j>|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m<rsub|1>-n<rsub|1>><around*|(|<big|sum><rsub|j=n<rsub|2>><rsup|m<rsub|2>>x<rsub|n<rsub|1>+i,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m<rsub|1>-n<rsub|1>><around*|(|<big|sum><rsub|j=0><rsup|m<rsub|2>-n<rsub|2>>x<rsub|n<rsub|1>+i,m<rsub|2>+j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
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

  <\theorem>
    <label|sum alternative definition (2)>If
    <math|<around*|\<langle\>|A,+|\<rangle\>>> is a semi-group,
    <math|n\<in\>\<bbb-N\>> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    then we have

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>x<rsub|i>=x<rsub|0>+<big|sum><rsub|i=1><rsup|n>x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|if <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>A<text|
      then ><big|sum><rsub|i=0><rsup|n>x<rsub|i>=x<rsub|0>+<big|sum><rsub|i=1><rsup|n>x<rsub|i>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,1|}>>>
      then <math|<big|sum><rsub|i=0><rsup|1>x<rsub|i>=<around*|(|<big|sum><rsub|i=0><rsup|0>x<rsub|i>|)>+x<rsub|1>=x<rsub|0>+x<rsub|1><rsub|>\<equallim\><rsub|<text|[theorem:
      <reference|sum alternative definition
      (1)>]>>x<rsub|0>+<big|sum><rsub|i=1><rsup|1>x<rsub|i>> proving that
      <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>A>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|x<rsub|0>+<big|sum><rsub|i=1><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|associativity>>|<cell|x<rsub|0>+<around*|(|<around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>|)>+x<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum alternative definition
        (1)>]>>>|<cell|x<rsub|0>+<big|sum><rsub|i=1><rsup|n+1>x<rsub|i>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>
    </description>

    \;
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

    The permutation <math|<around*|(|i<long-arrow|\<rubber-leftrightarrow\>||I>j|)>>
    is called a <with|font-series|bold|transposition> of <math|i> and
    <math|j>
  </theorem>

  <\proof>
    First note that if <math|i=j> then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)>=i=j=<around*|(|i\<leftrightarrowlim\><rsub|I>j|)>>
    o this is indeed a function. Next we prove that it is a bijection.

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

      <item><math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)>=<around*|(|j\<leftrightarrowlim\><rsub|n>i|)>>

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

      <item>If <math|\<in\>I> then we have either:\ 

      <\description>
        <item*|<math|k=i>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=j=<around*|(|j\<leftrightarrow\>i|)><around*|(|k|)>>

        <item*|<math|k=j>>Then <math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=i=<around*|(|j\<leftrightarrow\>i|)><around*|(|k|)>>

        <item*|<math|k\<neq\>i,j>><math|<around*|(|i\<leftrightarrowlim\><rsub|I>j|)><around*|(|k|)>=k=<around*|(|j\<leftrightarrow\>i|)><around*|(|k|)>>
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
      exist by [corollary: <reference|complex finite set condition (1)>] a
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

  Using this more general definition of a finite sum we can rewrite
  [theorems: <reference|sum of neutral element (1)>, <reference|sum of sums>,
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
          contradicting <math|N<big|cap>M=\<varnothing\>>, so this case never
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

  <\theorem>
    <label|sum constant family>For the ring
    <math|<around*|\<langle\>|\<bbb-R\>,\<cdot\>,+|\<rangle\>>> we have

    <\enumerate>
      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      is defined by <math|\<alpha\><rsub|i>=\<alpha\>> then\ 

      <\enumerate>
        <item><math|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>=<around*|(|n+1|)>\<cdot\>\<alpha\>>

        <item><math|<big|prod><rsub|i=0><rsup|n>\<alpha\><rsub|i>=\<alpha\><rsup|<around*|(|n+1|)>>>
      </enumerate>

      <item>If <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
      and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>
      is defined by <math|\<alpha\><rsub|i>=\<alpha\>> then\ 

      <\enumerate>
        <item><math|<big|sum><rsub|i=n><rsup|m>\<alpha\><rsub|i>=<around*|(|m-n+1|)>\<cdot\>\<alpha\>>

        <item><math|<big|prod><rsub|i=n><rsup|m>\<alpha\><rsub|i>=\<alpha\><rsup|m-n+1>>
      </enumerate>

      <item>If <math|I> is a finite set then for
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<bbb-R\>>
      defined by <math|\<alpha\><rsub|i>=\<alpha\>> we have

      <\enumerate>
        <item><math|><math|<big|sum><rsub|i\<in\>I><rsup|>\<alpha\><rsub|i>=card<around*|(|I|)>\<cdot\>\<alpha\>>

        <item><math|<big|prod><rsub|i\<in\>I><rsup|>\<alpha\><rsub|i>=\<alpha\><rsup|card<around*|(|I|)>>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item>We prove this by induction, so let\ 

        <\equation*>
          S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
          <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
          is defined by >\<alpha\><rsub|i>=\<alpha\><text| then
          ><big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>=<around*|(|n+1|)>\<cdot\>\<alpha\>|}>
        </equation*>

        then we have:

        <\description>
          <item*|<math|0\<in\>S>>Then <math|<big|sum><rsub|i=0><rsup|0>\<alpha\><rsub|i>=\<alpha\><rsub|0>=\<alpha\>=<around*|(|0+1|)>\<cdot\>\<alpha\>>
          proving that <math|0\<in\>S>

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
          <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<bbb-R\>>
          be defined by <math|\<alpha\><rsub|i>=\<alpha\>>. Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>+\<alpha\><rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>+\<alpha\>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|n+1|)>\<cdot\>\<alpha\>+\<alpha\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|n+1|)>+1|)>\<cdot\>\<alpha\>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>S>
        </description>

        <item>We prove this by induction, so let\ 

        <\equation*>
          S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
          <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
          is defined by >\<alpha\><rsub|i>=\<alpha\><text| then
          ><big|prod><rsub|i=0><rsup|n>\<alpha\><rsub|i>=<around*|(|n+1|)>\<cdot\>\<alpha\>|}>
        </equation*>

        then we have:

        <\description>
          <item*|<math|0\<in\>S>>Then <math|<big|prod><rsub|i=0><rsup|0>\<alpha\><rsub|i>\<equallim\><rsub|<text|[theorem:
          <reference|sum general single>]>>\<alpha\><rsub|0>=\<alpha\>=\<alpha\><rsup|1>=\<alpha\><rsup|<around*|(|0+1|)>>>
          proving that <math|0\<in\>S>

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
          <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<bbb-R\>>
          be defined by <math|\<alpha\><rsub|i>=\<alpha\>>. Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<big|prod><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=0><rsup|n>\<alpha\><rsub|i>|)>\<cdot\>\<alpha\><rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=0><rsup|n>\<alpha\><rsub|i>|)>\<cdot\>\<alpha\>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|\<alpha\><rsup|n+1>\<cdot\>\<alpha\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsup|<around*|(|n+1|)>+1>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>S>
        </description>
      </enumerate>

      <item>\ 

      <\enumerate>
        <item><math|<big|sum><rsub|i=n><rsup|m>\<alpha\><rsub|i>=<big|sum><rsub|i=0><rsup|m-n>\<alpha\><rsub|i+n>\<equallim\><rsub|<around*|(|1.a|)>><around*|(|m-n+1|)>\<cdot\>\<alpha\>>

        <item><math|<big|prod><rsub|i=n><rsup|m>\<alpha\><rsub|i>=<big|prod><rsub|i=0><rsup|m-n>\<alpha\><rsub|i+n>\<equallim\><rsub|<around*|(|1.a|)>>\<alpha\><rsup|m-n+1>>
      </enumerate>

      <item>\ 

      <\enumerate>
        <item>For <math|I> we have either:

        <\description>
          <item*|<math|I=\<varnothing\>>>Then
          <math|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>=<big|sum><rsub|i\<in\>\<varnothing\>>\<alpha\><rsub|i>=0>

          <item*|<math|I\<neq\>\<varnothing\>>>Then
          <math|<around*|{|0,\<ldots\>,card<around*|(|I|)>-1|}>\<approx\><around*|{|1,\<ldots\>,card<around*|(|i|)>|}>>
          so that there exists a bijection
          <math|\<beta\>:<around*|{|0,\<ldots\>,card<around*|(|I|)>-1|}>\<rightarrow\>I>
          so that\ 

          <\equation*>
            <big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>=<big|sum><rsub|0><rsup|card<around*|(|I|)>-1>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<around*|(|1.a|)>><around*|(|card<around*|(|I|)>-1+1|)>\<cdot\>\<alpha\>=card<around*|(|I|)>\<cdot\>\<alpha\>
          </equation*>
        </description>

        \ 

        <item>For <math|I> we have either:

        <\description>
          <item*|<math|I=\<varnothing\>>>Then
          <math|<big|prod><rsub|i\<in\>I>\<alpha\><rsub|i>=<big|prod><rsub|i\<in\>\<varnothing\>>\<alpha\><rsub|i>=1>

          <item*|<math|I\<neq\>\<varnothing\>>>Then
          <math|<around*|{|0,\<ldots\>,card<around*|(|I|)>-1|}>\<approx\><around*|{|1,\<ldots\>,card<around*|(|i|)>|}>>
          so that there exists a bijection
          <math|\<beta\>:<around*|{|0,\<ldots\>,card<around*|(|I|)>-1|}>\<rightarrow\>I>
          so that\ 

          <\equation*>
            <big|prod><rsub|i\<in\>I>\<alpha\><rsub|i>=<big|prod><rsub|0><rsup|card<around*|(|I|)>-1>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<around*|(|2.a|)>>\<alpha\><rsup|<around*|(|card<around*|(|I|)>-1+1|)>>=\<alpha\><rsup|card<around*|(|I|)>>
          </equation*>
        </description>
      </enumerate>
    </enumerate>
  </proof>

  <\theorem>
    <label|sum field multilinearity>If <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    is a field then we have

    <\enumerate>
      <item>Let <math|I> be a finite set, <math|i\<in\>I>, <math|x,y\<in\>F>
      and <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>I>\<subseteq\>F>
      such that <math|\<alpha\><rsub|i>=x+y> then\ 

      <\equation*>
        <big|prod><rsub|j\<in\>I>\<alpha\><rsub|j>=<big|prod><rsub|j\<in\>I>\<beta\><rsub|j>+<big|prod><rsub|j\<in\>I>\<gamma\><rsub|j>
      </equation*>

      where <math|<around*|{|\<beta\><rsub|j>|}><rsub|j\<in\>I><text| and
      ><around*|{|\<gamma\><rsub|j>|}><rsub|j\<in\>I><text| are defined by >>

      <\equation*>
        \<beta\><rsub|j>=<choice|<tformat|<table|<row|<cell|x <text| if
        >j=i>>|<row|<cell|\<alpha\><rsub|j><text| if
        >j\<in\>I\\<around*|{|i|}>>>>>><rsub|><text| and
        >\<gamma\><rsub|j>=<choice|<tformat|<table|<row|<cell|y<text| if
        >j=i>>|<row|<cell|\<alpha\><rsub|j><text| if
        >j\<in\>I\\<around*|{|i|}>>>>>>
      </equation*>

      <item>Let <math|I> be a finite set, \ <math|i\<in\>I>,
      <math|x,\<beta\>\<in\>F>, and <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\>I>\<subseteq\>F>
      such that <math|\<alpha\><rsub|i>=\<beta\>\<cdot\>x> then\ 

      <\equation*>
        <big|prod><rsub|j\<in\>I>\<alpha\><rsub|j>=\<beta\>\<cdot\><big|prod><rsub|j\<in\>I>\<beta\><rsub|j>
      </equation*>

      where <math|<around*|{|\<beta\><rsub|j>|}><rsub|j\<in\>I>> is defined
      by <math|\<beta\><rsub|j>=<choice|<tformat|<table|<row|<cell|x <text|
      if >j=i>>|<row|<cell|\<alpha\><rsub|j><text| if
      >j\<in\>I\\<around*|{|i|}>>>>>>>.

      <item>Let <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>,
      <math|i\<in\><around*|{|n,\<ldots\>,m|}>>, <math|x,y\<in\>F> and
      <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>F>
      such that <math|\<alpha\><rsub|i>=x+y> then\ 

      <\equation*>
        <big|prod><rsub|j=n><rsup|m>\<alpha\><rsub|j>=<big|prod><rsub|j=n><rsup|m>\<beta\><rsub|j>+<big|prod><rsup|m><rsub|j=n>\<gamma\><rsub|j>
      </equation*>

      where <math|<around*|{|\<beta\><rsub|j>|}><rsub|j\<in\><around*|{|n,\<ldots\>,m|}>><text|
      and ><around*|{|\<gamma\><rsub|j>|}><rsub|j\<in\><around*|{|n,\<ldots\>,m|}>><text|
      are defined by >>

      <\equation*>
        \<beta\><rsub|j>=<choice|<tformat|<table|<row|<cell|x <text| if
        >j=i>>|<row|<cell|\<alpha\><rsub|j><text| if
        >j\<in\><around*|{|n,\<ldots\>,m|}>\\<around*|{|i|}>>>>>><rsub|><text|
        and >\<gamma\><rsub|j>=<choice|<tformat|<table|<row|<cell|y<text| if
        >j=i>>|<row|<cell|\<alpha\><rsub|j><text| if
        >j\<in\><around*|{|n,\<ldots\>,m|}>\\<around*|{|i|}>>>>>>
      </equation*>

      <item>Let <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>,
      <math|i\<in\><around*|{|n,\<ldots\>,m|}>>, <math|x,\<beta\>\<in\>F>,
      and <math|<around*|{|\<alpha\><rsub|j>|}><rsub|j\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>F>
      such that <math|\<alpha\><rsub|i>=\<beta\>\<cdot\>x> then\ 

      <\equation*>
        <big|prod><rsub|j=n><rsup|n>\<alpha\><rsub|j>=\<beta\>\<cdot\><big|prod><rsub|j=m><rsup|n>\<beta\><rsub|j>
      </equation*>

      where <math|<around*|{|\<beta\><rsub|j>|}><rsub|j\<in\><around*|{|0,\<ldots\>,n|}>>>
      is defined by <math|\<beta\><rsub|j>=<choice|<tformat|<table|<row|<cell|x
      <text| if >j=i>>|<row|<cell|\<alpha\><rsub|j><text| if
      >j\<in\><around*|{|0,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|j\<in\>I>\<alpha\><rsub|j>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\><around*|(|<big|prod><rsub|j\<in\><around*|{|i|}>>\<alpha\><rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\><around*|(|x+y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\>x+<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\>y>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>|)>\<cdot\>\<beta\><rsub|n+1>+<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<gamma\><rsub|j>|)>\<cdot\>\<gamma\><rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>|)>\<cdot\><around*|(|<big|prod><rsub|j\<in\><around*|{|i|}>>\<beta\><rsub|j>|)>+<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<gamma\><rsub|j>|)>\<cdot\><around*|(|<big|prod><rsub|j\<in\><around*|{|i|}>>\<gamma\><rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|prod><rsub|j\<in\>I>\<beta\><rsub|j>+<big|prod><rsub|j\<in\>I>\<gamma\><rsub|j>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|j\<in\>I>\<alpha\><rsub|j>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\><around*|(|<big|prod><rsub|j\<in\><around*|{|i|}>>\<alpha\><rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\><around*|(|\<beta\>\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\>\<cdot\><around*|(|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<alpha\><rsub|j>|)>\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\>\<cdot\><around*|(|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>|)>\<cdot\>\<beta\><rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|\<beta\>\<cdot\><around*|(|<around*|(|<big|prod><rsub|j\<in\>I\\<around*|{|i|}>>\<beta\><rsub|j>|)>\<cdot\><around*|(|<big|prod><rsub|j\<in\><around*|{|i|}>>\<beta\><rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|\<beta\>\<cdot\><big|prod><rsub|j\<in\>I>\<beta\><rsub|j>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|i=n><rsup|m>\<alpha\><rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general equivalence>]>>>|<cell|<big|prod><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<big|prod><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<beta\><rsub|i>+<big|prod><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<gamma\><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general equivalence>]>>>|<cell|<big|prod><rsub|i=n><rsup|m>\<beta\><rsub|i>+<big|prod><rsub|i=n><rsup|m>\<gamma\><rsub|i>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|i=n><rsup|m>\<alpha\><rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general equivalence>]>>>|<cell|<big|prod><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|\<beta\>\<cdot\><big|prod><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<beta\><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general equivalence>]>>>|<cell|\<beta\>\<cdot\><big|prod><rsub|i=n><rsup|m>\<beta\><rsub|i>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|sum non zero elements>If <math|<around*|\<langle\>|F,\<cdot\>,+|\<rangle\>>>
    is a field then

    <\enumerate>
      <item>Let <math|n\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>F\\<around*|{|0|}>>
      then we have <math|<big|prod><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<neq\>0>

      <item>Let <math|n,m\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>F\\<around*|{|0|}>>
      then we have <math|<big|prod><rsub|i=n><rsup|m>\<alpha\><rsub|i>\<neq\>0>

      <item>If <math|I> is a finite set and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F\\<around*|{|0|}>>
      then we have <math|<big|prod><rsub|i\<in\>I>\<alpha\><rsub|i>\<neq\>0>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
        ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>F\\<around*|{|0|}><text|
        then ><big|prod><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<neq\>0|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>>Then <math|<big|prod><rsub|i=0><rsup|0>\<alpha\><rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>\<alpha\><rsub|0>\<neq\>0> proving
        that <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>F\\<around*|{|0|}>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|prod><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=0><rsup|n>\<alpha\><rsub|i>|)>\<cdot\>\<alpha\><rsub|n+1>>>>>
        </eqnarray*>

        As <math|n\<in\>S> we have that <math|<big|prod><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<neq\>0>
        so as, <math|\<alpha\><rsub|n+1>\<neq\>0>, we have, as a field is a
        integral domain [see: <reference|field is integral domain>], that
        <math|><math|<big|prod><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>\<neq\>0>.
        So <math|n+1\<in\>S>.
      </description>

      <item><math|<big|prod><rsub|i=n><rsup|m>\<alpha\><rsub|i>=<big|prod><rsub|i=0><rsup|m-n>\<alpha\><rsub|i>\<neq\>0>
      [using (1)]

      <item>If <math|I> is finite then we have either:

      <\description>
        <item*|<math|I=\<varnothing\>>>Then
        <math|<big|prod><rsub|i\<in\>S>\<alpha\><rsub|i>=<big|prod><rsub|i\<in\>\<varnothing\>>\<alpha\><rsub|i>=1\<neq\>0>.

        <item*|<math|I\<neq\>\<varnothing\>>>Then there exists a bijection
        <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I> such
        that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>=<big|sum><rsub|i=0><rsup|n-1>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<neq\>0<text|
          (by (1))>
        </equation*>
      </description>
    </enumerate>
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
    <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> be a vector
    space over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    where\ 

    <\enumerate-alpha>
      <item><math|0<rsub|v>> is the neutral element of the Abelian group
      <math|<around*|\<langle\>|V,\<oplus\>|\<rangle\>>>

      <item><math|0<rsub|f>> is the additive neutral element of
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

      <item>If <math|x\<in\>V\\<around*|{|0|}>> then we have if
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
        x\<oplus\><rsub|\|W\<times\>W>0<rsub|v>\<equallim\><rsub|<text|commutativity>>0<rsub|v>\<oplus\><rsub|\|W\<times\>W>x=0<rsub|v>\<oplus\>x=x
      </equation*>

      <item*|inverse element>If <math|x\<in\>W> then
      <math|-x\<equallim\><rsub|<text|[theorem: <reference|vector space
      properties (1)> (2)]>><around*|(|<around*|(|-1|)>\<odot\>x|)>=<around*|(|<around*|(|-1|)>\<odot\>x|)>\<oplus\>0<rsub|v>\<in\>W>
      so that <math|-x\<in\>W>. Hence <math|x\<oplus\><rsub|\|W\<times\>W><around*|(|-x|)>\<equallim\><rsub|<text|commutativity>><around*|(|-x|)>\<oplus\><rsub|\|W\<times\>W>x=<around*|(|-x|)>\<oplus\>x=0<rsub|v>>
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
    To avoid excessive use of subscripts we follow for the rest of this book
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

      <item*|commutativity><math|We have trivial\<forall\>x,y\<in\><around*|{|0|}>>
      we have x@+y=<math|e\<oplus\>e=y\<oplus\>x>
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

      <item*|commutativity>Let <math|f,g\<in\>V<rsup|X>> then
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
        C<rsub|0>\<boxplus\>f\<equallim\><rsub|<text|commutativity>>f\<boxplus\>C<rsub|0>=f
      </equation*>

      <item*|inverse element>Let <math|f\<in\>V<rsup|X>> then
      <math|\<forall\>x\<in\>X> we have

      <\equation*>
        <around*|(|f\<boxplus\><around*|(|-f|)>|)><around*|(|x|)>=f<around*|(|x|)>\<oplus\><around*|(|-f|)><around*|(|x|)>=f<around*|(|x|)>\<oplus\><around*|(|-<around*|(|f<around*|(|x|)>|)>|)>=0=C<rsub|9><around*|(|x|)>
      </equation*>

      so that <math|<around*|(|-f|)>+f\<equallim\><rsub|<text|commutativity>>f+<around*|(|-f|)>=C<rsub|0>>
    </description>

    For the remaining axioms of a vector space we have:

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
  <math|\<cdot\>>. We also use <math|0> to denote the additive neutral
  element and <math|-x to note the inverse of > <math|x>.

  \;

  Referring to the power of a set [see definition: <reference|finite product
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
      additive negative is ><around*|(|-x<rsub|1>,\<ldots\>,-x<rsub|n>|)>
    </equation*>

    is equivalent with\ 

    <\equation*>
      \<forall\>x\<in\>V<rsup|n><text| the additive negative is >-x<text|
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
    vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
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
    is a function>|}>>, however this is not standard practice. Most books
    prefers to work with the notation <math|x\<in\>V<rsup|n>\<Leftrightarrow\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><text|>>
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
    is a Abelian group. Next if <math|\<alpha\>\<in\>F> and
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

  In the above the index set is not ordered, it will be usefully for
  induction arguments later, to use as index sets, sets of the form
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
    is actually the function <math|x:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>X>
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
    and a <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>\<varnothing\>>\<subseteq\>F>
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

  <\example>
    <label|linear span({0})>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|span<around*|(|<around*|{|0|}>|)>=<around*|{|0|}>>
  </example>

  <\proof>
    Let <math|v\<in\>span<around*|(|<around*|{|0|}>|)>> then there exists a
    finite <math|I\<subseteq\><around*|{|0|}>> and a
    <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F> such
    that <math|v=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u>. For
    <math|I> we have either:

    <\description>
      <item*|<math|I=\<varnothing\>>>Then
      <math|v=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=<big|sum><rsub|u\<in\>\<varnothing\>>\<alpha\><rsub|u>\<cdot\>u\<equallim\><rsub|<text|[definition:
      <reference|sum generalized sum>]>>0>

      <item*|<math|I=<around*|{|0|}>>>Then
      <math|v=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=<big|sum><rsub|u\<in\><around*|{|0|}>>\<alpha\><rsub|u>\<cdot\>u\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>\<alpha\><rsub|0>\<cdot\>0=0>
    </description>

    proving that\ 

    <\equation*>
      span<around*|(|<around*|{|0|}>|)>=<around*|{|0|}>
    </equation*>

    \;
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
  </theorem>

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
        have <math|K\<subseteq\>W>. Further

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
      definition that <math|W> is not dependent. Hence for every finite
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
      satisfying <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>.
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
    we have that <math|\<alpha\><rsub|u>=0><space|1em>is satisfied vacuously.
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
      satisfying that <math|\<exists\>w\<in\>J> with
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
      dependent, in other words every super set of a linear dependent set is
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
    linear independent and <math|T\<subseteq\>V> satisfies
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
    linear independent. Hence we must have that
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
    which as <math|E> is linear independent proves by [theorem:
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
    represent every vector as a infinite sum or a integral of the basis
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
    independent, proving that\ 

    <\equation*>
      \<varnothing\><text| is a basis for
      <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>>
    </equation*>

    If <math|B> is another basis of <math|<around*|\<langle\>|<around*|{|0|}>,+,\<cdot\>|\<rangle\>>>
    then <math|B\<subseteq\><around*|{|0|}>>. If <math|B=<around*|{|0|}>>
    then <math|0\<in\>B> so that by [theorem: <reference|linear dependent set
    containing neutral element>] <math|B> is linear dependent contradicting
    linear Independence, hence we must have that <math|B=\<varnothing\>>.
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
      <text|<math|\<forall\>v\<in\>V> their exists a finite
      >I\<subseteq\>B<text| and a <with|font-series|bold|unique>
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

  A other usefully alternative characterization of a basis is the following

  <\theorem>
    <label|basis finite alternative (2)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and a
    distinct ordered family <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    then for <math|B=<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    we have\ 

    <\equation*>
      card<around*|(|B|)>=n\ 
    </equation*>

    and

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

    so that\ 

    <\equation*>
      card<around*|(|B|)>=n
    </equation*>

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

      For linear Independence, assume that
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
    then <math|X\<in\>\<cal-A\>> so that <math|R\<subseteq\>X\<subseteq\>W>,
    hence \ <math|R\<subseteq\><big|cup><rsub|X\<in\>\<cal-C\>>X\<subseteq\>W>
    so that

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
        <math|A\<approx\><around*|{|1,\<ldots\>,0|}>=\<varnothing\>> then by
        [theorem: <reference|complex finite set condition>] there exist a
        bijection

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
          <item*|injectivity>If <math|k,l\<in\><around*|{|1,\<ldots\>,n|}>>
          and <math|\<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>><around*|(|k|)>=\<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>><around*|(|l|)>>
          then <math|\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>> which,
          \ as <math|\<beta\>> is a bijection, proves that <math|k=l>

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
      <math|<around*|{|1,\<ldots\>,n|}>\<approx\>A>. Hence as
      <math|n\<in\>\<bbb-N\><rsub|0>=S> there exists a
      <math|X\<in\>\<cal-C\>> such that <math|A\<subseteq\>X>.
    </proof>

    We prove now that <math|B<rsub|\<cal-C\>>> is linear independent. Let
    <math|I\<subseteq\>B<rsub|C>> be a finite set then by [eq: <reference|eq
    11.58.086>] we have\ 

    <\equation>
      <label|eq 11.29.086>\<exists\>Y\<in\>\<cal-C\><text| such that
      >I\<subseteq\>Y
    </equation>

    Further as <math|Y\<in\>C\<subseteq\>\<cal-A\>> we have by [eq:
    <reference|eq 11.54.086>] that

    <\equation>
      R\<subseteq\>Y\<subseteq\>W<text| and >Y<text| is linear independent>
    </equation>

    So if <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
    is such that <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>
    then as <math|I\<subseteq\>Y> and <math|Y> is linear independent we have
    by the definition of linear Independence that <math|\<forall\>u\<in\>I>
    <math|\<alpha\><rsub|u>>, which, as <math|I\<subseteq\>B<rsub|\<cal-C\>>>,
    <math|I> finite was chosen arbitrary, proves that\ 

    <\equation>
      <label|eq 11.61.086>B<rsub|\<cal-C\>><text| is linear independent>
    </equation>

    Combining this with [eqs: <reference|eq 11.54.086>, <reference|eq
    11.57.086>] it follows that\ 

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
    variously, hence <math|R> is a upper bound of the empty chain.. So we
    have that

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
      >\<forall\>X\<in\>\<cal-A\><text| we have >X\<subseteq\>B
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
      linear independent then as <math|R\<subseteq\>B\<subseteq\>B<big|cup><around*|{|w|}>\<subseteq\>W>
      it follows that <math|B<big|cup><around*|{|w|}>\<in\>\<cal-A\>>. Using
      [eq: <reference|eq 11.62.086>] it follows that
      <math|B<big|cup><around*|{|w|}>\<subseteq\>B> so that <math|w\<in\>B>
      contradicting <math|w\<nin\>B>. So we have that\ 

      <\equation*>
        B<big|cup><around*|{|w|}><text| is linear dependent>
      </equation*>

      Hence there exists a finite <math|I\<subseteq\>B<big|cup><around*|{|w|}>>
      and a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
      satisfying <math|\<exists\>u<rsub|0>\<in\>I> with
      <math|\<alpha\><rsub|u<rsub|0>>\<neq\>0> \ such that
      <math|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u=0>. If
      <math|w\<nin\>I> then <math|I\<subseteq\>B> which as <math|B> is linear
      independent would mean that <math|\<forall\>u\<in\>I> we have
      <math|\<alpha\><rsub|u>=0> contradicting
      <math|\<alpha\><rsub|u<rsub|0>>\<neq\>0>. So we must have

      <\equation>
        <label|eq 11.50.090>w\<in\>I
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|u\<in\>I\\<around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u+\<alpha\><rsub|w>\<cdot\>w<eq-number><label|eq
        11.51.090>>>>>
      </eqnarray*>

      Note as <math|I\<subseteq\>B<big|cup><around*|{|w|}>> we have
      <math|I\\<around*|{|w|}>\<subseteq\><around*|(|B<big|cup><around*|{|w|}>|)>\\<around*|{|w|}>\<subseteq\>B>
      so that\ 

      <\equation>
        <label|eq 11.52.090>I\\<around*|{|w|}>\<subseteq\>B
      </equation>

      Assume <math|\<alpha\><rsub|w>=0> then from the above we have
      \ <math|0=<big|sum><rsub|u\<in\>I\\<around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u>
      which, as <math|I\\<around*|{|w|}>\<subseteq\>B> [see eq: <reference|eq
      11.52.090>] and <math|B> is linear independent, gives
      <math|\<forall\>u\<in\>I\\<around*|{|w|}>> <math|\<alpha\><rsub|u>=0>.
      So, as we assumed <math|\<alpha\><rsub|w>=0>, we have
      <math|\<forall\>u\<in\>I> that <math|\<alpha\><rsub|u>=0> contradicting
      <math|\<alpha\><rsub|u<rsub|0>>\<neq\>0>. Hence we must have that
      <math|\<alpha\><rsub|w>\<neq\>0>, and applying this on [eq:
      <reference|eq 11.51.090>] proves that\ 

      <\equation*>
        w=<around*|(|\<alpha\><rsub|w>|)><rsup|-1>\<cdot\><around*|(|-<big|sum><rsub|u\<in\>I\\<around*|{|w|}>>\<alpha\><rsub|u>\<cdot\>u|)>\<equallim\><rsub|<text|[theorems:
        <reference|sum of inverses (2)>,<reference|vector space finite sum
        (1)>]>><big|sum><rsub|u\<in\>I><around*|(|<around*|(|\<alpha\><rsub|u>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|u>|)>|)>\<cdot\>u=<big|sum><rsub|u\<in\>I>\<lambda\><rsub|u>\<cdot\>u
      </equation*>

      where <math|<around*|{|\<lambda\><rsub|u>|}><rsub|u\<in\>I\\<around*|{|W|}>>\<subseteq\>F>.
      So as <math|I\\<around*|{|w|}>\<subseteq\>B> it follows that\ 

      <\equation*>
        w\<in\>span<around*|(|B|)>
      </equation*>
    </description>

    So in all cases we have <math|w\<in\>span<around*|(|B|)>> it follows that
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
    <math|R\<subseteq\>B>. In other words a linear independent set of a
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
    such that <math|B\<subseteq\>W>. In other words every spanning set of a
    vector space can be reduced to a basis of the vector space.
  </corollary>

  <\proof>
    For <math|V> we have either:

    <\description>
      <item*|<math|V=<around*|{|0|}>>>By [example: <reference|basis of
      trivial vector space>] <math|\<varnothing\>> is a basis for <math|V>
      and trivially <math|\<varnothing\>\<subseteq\>W>.

      <item*|<math|V\<neq\><around*|{|0|}>>>As <math|V=span<around*|(|W|)>>
      and <math|span<around*|(|\<varnothing\>|)>\<equallim\><rsub|<text|[example:
      <reference|linear span of empty set>]>><around*|{|0|}>> we must have
      <math|W\<neq\>\<varnothing\>>, also if <math|W=<around*|{|0|}>> then by
      [example: <reference|linear span({0})>]
      <math|span<around*|(|W|)>=<around*|{|0|}>>. Hence there exist a
      <math|w\<in\>W> such that <math|w\<neq\>0>. Using [example:
      <reference|linear independent singleton>] we have that
      <math|R=<around*|{|w|}>> is linear independent. As further
      <math|R=<around*|{|w|}>\<subseteq\>W> we have by [theorem:
      <reference|basis existence (1)>] that there exist a basis <math|B> of
      <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> such that
      <math|R\<subseteq\>B\<subseteq\>W>.\ 
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
      span<around*|(|B|)>=V<text| and >B<text| is linear independent and
      >B<text| is finite>
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
      is linear independent>
    </equation*>

    we have by [corollary: <reference|linear Steinitz (1)>] that\ 

    <\equation*>
      card<around*|(|B|)>\<leqslant\>card<around*|(|A|)>
    </equation*>

    Likewise as\ 

    <\equation*>
      V=span<around*|(|<around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|B|)>|}>|}>|)><text|
      and ><around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,card<around*|(|A|)>|}>|}><text|
      is linear independent>
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

  The above lemma and corollary ensures that the following definitions makes
  sense.

  <\definition>
    <label|basis dimensionality>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then by [corollary: <reference|basis exist>] there exists a basis
    <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>. If
    <math|B> is finite then we say that <math|V> is finite dimensional and if
    <math|B> is infinite [not finite] then we say that <math|V> is infinite
    dimensional. By [lemma: <reference|basis finite dimensions>] and
    [corollary: <reference|basis infinite dimensions>] this definition is
    independent from the basis and <math|V> is either finite dimensional or
    infinite dimensional but not both.
  </definition>

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

    By [lemma: <reference|basis finite dimensions>] and [corollary:
    <reference|basis infinite dimensions>] the dimension is independent from
    the basis.
  </definition>

  <\theorem>
    <label|basis sub-space>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a finite dimensional vector space over a field
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and <math|W> a
    sub-space of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> then
    <math|dim<around*|(|W|)>\<leqslant\>dim<around*|(|V|)>> and if <math|V>
    is finite dimensional W is finite dimensional.
  </theorem>

  <\proof>
    For <math|dim<around*|(|V|)>> we have for <math|V> either:

    <\description>
      <item*|<math|V<text| is infinite dimensional>>>Then <math|V> has a
      infinite basis so that by definition
      <math|dim<around*|(|V|)>=\<infty\>>, using the definition of the order
      on the extended real numbers it follows that
      <math|dim<around*|(|W|)>\<leqslant\>dim<around*|(|V|)>>.

      <item*|<math|V<text| is finite dimensional>>>Let
      <math|B<rsub|W>\<subseteq\>W> a basis of <math|W> then <math|B<rsub|W>>
      is linear independent and <math|B<rsub|W>\<subseteq\>V=span<around*|(|V|)>>.
      Using [theorem: <reference|basis existence (1)>] there exist then a
      basis <math|B<rsub|V>> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
      such that <math|B<rsub|W>\<subseteq\>B<rsub|V>\<subseteq\>V>. As
      <math|V> is finite dimensional <math|B<rsub|V>> is finite and using
      [theorem: <reference|subset of finite sets>] it follows that
      <math|B<rsub|W>> is finite. Using [theorem: <reference|complex finite
      subset>] we have that

      <\equation*>
        dim<around*|(|W|)>=card<around*|(|B<rsub|W>|)>\<leqslant\>card<around*|(|B<rsub|V>|)>=dim<around*|(|V|)>.
      </equation*>
    </description>
  </proof>

  <\example>
    <label|basis dimension of trivial space>Let
    <math|<around*|\<langle\>|<around*|{|0|}>,<rsub|,\<cdot\>>|\<rangle\>>>
    be the trivial vector space over a field
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> [see:
    <reference|vector space trivial>] then\ 

    <\equation*>
      dim<around*|(|<around*|{|0|}>|)>=0
    </equation*>
  </example>

  <\proof>
    By [example: <reference|basis of trivial vector space>]
    <math|\<varnothing\>> is a basis of <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>
    so that <math|dim<around*|(|<around*|{|0|}>|)>=card<around*|(|\<varnothing\>|)>=0>
  </proof>

  <\theorem>
    <label|basis of a field>Let <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    a field and consider the vector space of
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> over
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> [see theorem:
    <reference|vector space field>]. Then if <math|1\<in\>F> is the
    multiplicative neutral element we have that <math|<around*|{|1|}>> is a
    basis of <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>, so
    <math|dim<around*|(|F|)>=1>
  </theorem>

  <\proof>
    First if <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>F>
    is such that <math|<big|sum><rsub|i\<in\><around*|{|1|}>>\<alpha\><rsub|i>\<cdot\>i=0>
    then as <math|>

    <\equation*>
      0=<big|sum><rsub|i\<in\><around*|{|1|}>>\<alpha\><rsub|i>\<cdot\>i\<equallim\><rsub|<text|[theorem:
      <reference|sum general single>]>>\<alpha\><rsub|1>\<cdot\>1=\<alpha\><rsub|1>
    </equation*>

    it follows that <math|\<forall\>i\<in\><around*|{|1|}>> we have that
    <math|\<alpha\><rsub|i>=0> proving that\ 

    <\equation*>
      <around*|{|1|}><text| is linear independent>
    </equation*>

    Further if <math|v\<in\>F> then, if we take
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>F>
    defined by <math|\<alpha\><rsub|1>=v>, we have

    <\equation*>
      v=v\<cdot\>1\<equallim\><rsub|<text|[theorem: <reference|sum general
      single>]>><big|sum><rsub|i\<in\><around*|{|1|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>
    </equation*>

    proving that\ 

    <\equation*>
      span<around*|(|<around*|{|1|}>|)>=F
    </equation*>

    Hence we have that\ 

    <\equation*>
      <around*|{|1|}><text| is a basis for
      <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>><text| and
      >dim<around*|(|F|)>=card<around*|(|<around*|{|1|}>|)>=1>>
    </equation*>
  </proof>

  The above theorem proves automatically the following .

  <\corollary>
    <label|basis of field examples>We have [see: <reference|vector space
    Q,R,C>]

    <\enumerate>
      <item>The vector space <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>>
      over <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>> has as
      basis <math|<around*|{|1|}>> and <math|dim<around*|(|\<bbb-Q\>|)>=1>

      <item>The vector space <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>
      over <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> has as
      basis <math|<around*|{|1|}>> and <math|dim<around*|(|\<bbb-R\>|)>=1>

      <item>The vector space <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>
      over <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> has as
      basis <math|<around*|{|1|}>> and <math|dim<around*|(|\<bbb-C\>|)>=1>
    </enumerate>
  </corollary>

  Be aware that that the field for a vector space is important as the
  following shows.

  <\theorem>
    <label|basis real complex vector space>The vector space
    <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> over
    <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> [see example:
    <reference|vector space C real>] has as basis <math|<around*|{|1,i|}>> so
    that <math|dim<around*|(|\<bbb-C\>|)>=2>
  </theorem>

  <\proof>
    Let <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|1,i|}>>\<subseteq\>\<bbb-R\>>
    be such that <math|<big|sum><rsub|u\<in\><around*|{|1,i|}>>\<alpha\><rsub|u>\<cdot\>u=0>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|0+0\<cdot\>i>|<cell|=>|<cell|<big|sum><rsub|u\<in\><around*|{|1,i|}>>\<alpha\><rsub|u>\<cdot\>u>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|1>\<cdot\>1+\<alpha\><rsub|i>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|1>+\<alpha\><rsub|i>\<cdot\>i>>>>
    </eqnarray*>

    so that <math|\<alpha\><rsub|1>=0=\<alpha\><rsub|i>> proving that\ 

    <\equation*>
      <around*|{|1,i|}><text| is linear independent>
    </equation*>

    Further if <math|v\<in\>\<bbb-C\>> then there exists
    <math|x,y\<in\>\<bbb-R\>> so that <math|v=x+i\<cdot\>y>. Hence if we
    define <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\><around*|{|1,i|}>>>
    by <math|\<alpha\><rsub|1>=x> and <math|\<alpha\><rsub|i>=y> we have\ 

    <\equation*>
      <big|sum><rsub|u\<in\><around*|{|1,i|}>>\<alpha\><rsub|i>\<cdot\>e<rsub|i>=\<alpha\><rsub|1>\<cdot\>1+\<alpha\><rsub|i>\<cdot\>i=x\<cdot\>1+y\<cdot\>i=x+i\<cdot\>y=v
    </equation*>

    proving that\ 

    <\equation*>
      span<around*|(|<around*|{|1,i|}>|)>=\<bbb-C\>
    </equation*>
  </proof>

  \;

  Now for a basis of higher dimensional space we introduce the Kronecker
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
      <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>=\<alpha\><rsub|j>
    </equation*>
  </theorem>

  <\proof>
    \ We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>>\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>+<big|sum><rsub|i\<in\><around*|{|j|}>>\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>>\<delta\><rsub|i,j>\<cdot\>\<alpha\><rsub|i>+\<delta\><rsub|j,j>\<cdot\>\<alpha\><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>><around*|(|0\<cdot\>\<alpha\><rsub|i>|)>+1\<cdot\>\<alpha\><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>>|<cell|\<alpha\><rsub|j>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|basis F^n>let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> a field and
    <math|<around*|\<langle\>|F<rsup|n>,+,\<cdot\>|\<rangle\>>> the vector
    space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>> > [see
    theorem: <reference|vector space power field>] define now
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<rsup|n>>
    by <math|e<rsub|i>=<around*|(|<around*|(|e<rsub|i>|)><rsub|1>,\<ldots\>,<around*|(|e<rsub|i>|)><rsub|n>|)>>
    where <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>> then

    <\equation*>
      <around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><text| is a
      basis for ><around*|\<langle\>|F<rsup|n>,+,\<cdot\>|\<rangle\>> so that
      dim<around*|(|F<rsup|n>|)>=n
    </equation*>
  </theorem>

  <\proof>
    Let <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|e<rsub|i>=e<rsub|j>>. If <math|i\<neq\>j> then
    <math|1=\<delta\><rsub|i,i>=<around*|(|e<rsub|i>|)><rsub|i>=<around*|(|e<rsub|j>|)><rsub|i>=\<delta\><rsub|j,i>=0>
    a contradiction so we must have that <math|i=j>. Hence

    <\equation*>
      <around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<rsup|n><text|
      is a ordered distinct family>
    </equation*>

    Let now <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>F<rsup|n>>
    then for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    we have that <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>|)><rsub|j>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum in A^n>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|x<rsub|i>\<cdot\>e<rsub|i>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\><around*|(|e<rsub|i>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>\<delta\><rsub|i,j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|basis sum of delta>]>>>|<cell|x<rsub|j>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>=x
    </equation*>

    Further if <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    is such that \ <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>>
    then for every <math|j\<in\><around*|{|1,\<ldots\>,n|}>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x<rsub|j>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>|)><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum in A^n>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|y<rsub|i>\<cdot\>e<rsub|i>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>u<rsub|i>\<cdot\><around*|(|e<rsub|i>|)><rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>\<delta\><rsub|i,j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|basis sum of delta>]>>>|<cell|y<rsub|j>>>>>
    </eqnarray*>

    proving that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F=<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>.
    Using [theorem: <reference|basis finite alternative (2)>] it follows that

    <\equation*>
      <around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><text| is a
      basis for <math|<around*|\<langle\>|F<rsup|n>,+,\<cdot\>|\<rangle\>>>
      and <math|dim<around*|(|F<rsup|n>|)>=card<around*|(|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=n>>
    </equation*>
  </proof>

  <section|Linear mappings>

  <subsection|Linear mappings>

  Similar to the concepts of group, ring, field homeomorphisms we have also
  mappings that preserves the structure of vector spaces, these are called
  linear mappings. Linear mappings are used later in Banach spaces, Hilbert
  spaces, differential analysis and so on.

  <\definition>
    <label|linear ampping><index|linear mapping><dueto|Linear Mapping>If
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then a
    function <math|L:X\<rightarrow\>Y> is a <with|font-series|bold|linear
    mapping> if\ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>X> we have
      <math|L<around*|(|x+y|)>=L<around*|(|x|)>+L<around*|(|y|)>>

      <item><math|\<forall\>x\<in\>X>, <math|\<forall\>\<alpha\>\<in\>F> we
      have that <math|L<around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>L<around*|(|x|)>>
    </enumerate>
  </definition>

  <\example>
    <label|linear mapping projection map>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> be a field and
    <math|<around*|\<langle\>|F<rsup|n>,+,\<cdot\>|\<rangle\>>> be the vector
    space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> defined by
    [theorem: <reference|vector space power field>] then
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
      \<pi\><rsub|i><around*|(|x+y|)>=<around*|(|x+y|)><rsub|i>=x<rsub|i>+y<rsub|i>=\<pi\><rsub|i><around*|(|x|)>+\<pi\><rsub|i><around*|(|y|)>
    </equation*>

    and

    <\equation*>
      \<pi\><rsub|i><around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>x<rsub|i>=\<alpha\>\<cdot\>\<pi\><rsub|i><around*|(|x|)>
    </equation*>
  </proof>

  <\definition>
    <label|linear mapping linear isomorphism><dueto|Linear Isomorphism>If
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then a
    mapping <math|L:X\<rightarrow\>Y> is a <with|font-series|bold|linear
    isomorphism> iff\ 

    <\enumerate>
      <item><math|L:X\<rightarrow\>Y> is a bijection

      <item><math|L:X\<rightarrow\>Y> is a linear mapping
    </enumerate>

    If between two vector spaces a linear isomorphism exists then we say that
    the vector spaces are isomorphic.
  </definition>

  <\example>
    <label|linerar mapping between R^2 and C>Let
    <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> be vector
    spaces over the field <math|<around*|\<langle\>|R,+,\<cdot\>|\<rangle\>>>
    [see theorems: <reference|basis F^n>, <reference|basis real complex
    vector space>] then <math|\<cal-C\>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-C\>>
    defined by <math|C<around*|(|<around*|(|x,y|)>|)>=x+i\<cdot\>y> is a
    linear isomorphism so that <math|<around*|\<langle\>|\<bbb-R\><rsup|2>,+,\<cdot\>|\<rangle\>>>
    is isomorphic with <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>>.
  </example>

  <\proof>
    If <math|\<cal-C\><around*|(|<around*|(|x,y|)>|)>=\<cal-C\><around*|(|<around*|(|X<rprime|'>,y<rprime|'>|)>|)>>
    then <math|x+i\<cdot\>y=x<rprime|'>+i\<cdot\>y<rprime|'>> then by
    [theorem: <reference|complex notation (0)>] \ <math|x=x<rprime|'>> and
    <math|y=y<rprime|'>> so that <math|<around*|(|x,y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>>,
    hence\ 

    <\equation*>
      \<cal-C\>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-C\><text| is injective>
    </equation*>

    Further if <math|z\<in\>\<bbb-C\>> then
    <math|z=x+i\<cdot\>y=\<cal-C\><around*|(|<around*|(|x,y|)>|)>> proving
    surjectivity. combining this with the above proves that\ 

    <\equation*>
      \<cal-C\>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-C\><text| is a
      bijection>
    </equation*>

    Let <math|<around*|(|x,y|)>,<around*|(|x<rprime|'>,y<rprime|'>|)>\<in\>\<bbb-R\><rsup|2>>
    and <math|\<alpha\>\<in\>\<bbb-R\>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-C\><around*|(|<around*|(|x,y|)>+<around*|(|x<rprime|'>,y<rprime|'>|)>|)>>|<cell|=>|<cell|\<cal-C\><around*|(|<around*|(|x+x<rprime|'>,y+y<rprime|'>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+x<rprime|'>|)>+i\<cdot\><around*|(|y+y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x+i\<cdot\>y|)>+<around*|(|x<rprime|'>+i\<cdot\>y<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-C\><around*|(|<around*|(|x,y|)>|)>+\<cal-C\><around*|(|<around*|(|x<rprime|'>,y<rprime|'>|)>|)>>>|<row|<cell|\<cal-C\><around*|(|\<alpha\>\<cdot\><around*|(|x,y|)>|)>>|<cell|=>|<cell|\<cal-C\><around*|(|<around*|(|\<alpha\>\<cdot\>x,\<alpha\>\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>x|)>+i\<cdot\><around*|(|\<alpha\>\<cdot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|x+i\<cdot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<cal-C\><around*|(|<around*|(|x,y|)>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<cal-C\>:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-C\><text| is a
      isomorphism>
    </equation*>
  </proof>

  <\theorem>
    <label|linear mapping inverse of a isomorphism>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    the field <math|<around*|\<langle\>|F,*+,\<cdot\>|\<rangle\>>> and\ 

    <\equation*>
      L:X\<rightarrow\>Y<text| a linear isomorphism>
    </equation*>

    then\ 

    <\equation*>
      L<rsup|-1>:Y\<rightarrow\>X<text| is a linear isomorphism>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|function bijection and inverse>] we have that\ 

    <\equation*>
      L<rsup|-1>:Y\<rightarrow\>X<text| is a bijection>
    </equation*>

    Let <math|x,y\<in\>Y> and <math|\<alpha\>\<in\>F> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<rsup|-1><around*|(|x|)>+L<rsup|-1><around*|(|y|)>>|<cell|=>|<cell|L<rsup|-1><around*|(|L<around*|(|L<rsup|-1><around*|(|x|)>+L<rsup|-1><around*|(|y|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1><around*|(|L<around*|(|L<rsup|-1><around*|(|x|)>|)>+L<around*|(|L<rsup|-1><around*|(|y|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1><around*|(|x+y|)>>>>>
    </eqnarray*>

    Likewise\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\>L<rsup|-1><around*|(|x|)>>|<cell|=>|<cell|L<rsup|-1><around*|(|L<around*|(|\<alpha\>\<cdot\>L<rsup|-1><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1><around*|(|\<alpha\>\<cdot\>L<around*|(|L<rsup|-1><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1><around*|(|\<alpha\>\<cdot\>x|)>>>>>
    </eqnarray*>
  </proof>

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
  <math|<around*|\<langle\>|Y<rsup|X>,+,\<cdot\>|\<rangle\>>> is a vector
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

  <\theorem>
    <label|linear mapping composition>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Z,+,\<cdot\>|\<rangle\>>> be vector spaces over
    the field <math|<around*|\<langle\>|F,*+,\<cdot\>|\<rangle\>>> and
    <math|L<rsub|1>\<in\>Hom<around*|(|X,Y|)>>,
    <math|L<rsub|2>\<in\>Hom<around*|(|Y,Z|)>> then
    <math|L<rsub|2>\<circ\>L<rsub|1>\<in\>Hom<around*|(|X,Z|)>>
  </theorem>

  <\proof>
    Let <math|x,y\<in\>X> and <math|\<alpha\>\<in\>f> then we have for the
    function

    <\equation*>
      L<rsub|2>\<circ\>L<rsub|1>\<of\>X\<rightarrow\>Z
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x+y|)>>|<cell|=>|<cell|L<rsub|2><around*|(|L<rsub|1><around*|(|x+y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>+L<rsub|1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>|)>+L<rsub|2><around*|(|L<rsub|1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>+<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|y|)>>>|<row|<cell|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|\<alpha\>\<cdot\>x|)>>|<cell|=>|<cell|L<rsub|2><around*|(|L<rsub|1><around*|(|\<alpha\>\<cdot\>x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|2><around*|(|\<alpha\>\<cdot\>L<rsub|1><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>>>>>
    </eqnarray*>
  </proof>

  <\corollary>
    <label|linear mapping composition isomorphism>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Z,+,\<cdot\>|\<rangle\>>> be vector spaces over
    the field <math|<around*|\<langle\>|F,*+,\<cdot\>|\<rangle\>>> and
    <math|L<rsub|1>:X\<rightarrow\>Y> and <math|L<rsub|2>:Y\<rightarrow\>Z>
    are linear isomorphism then <math|L<rsub|2>\<circ\>L<rsub|1>:X\<rightarrow\>Z>
    is a linear isomorphism.
  </corollary>

  <\proof>
    This follows from [theorems: <reference|function composition injectivity,
    surjectivity and bijectivity> and <reference|linear mapping
    composition>]]
  </proof>

  As <math|Hom<around*|(|X,Y|)>\<subseteq\>Y<rsup|X>>, a natural question to
  ask is: Is <math|Hom<around*|(|X,Y|)>> a sub-space of
  <math|<around*|\<langle\>|Y<rsup|X>,+,\<cdot\>|\<rangle\>>>. It turns out
  that the answer is yes, as is shown in the next theorem.

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

  <\theorem>
    <label|linear mapping of neutral element>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> is a linear mapping then
    <math|L<around*|(|0|)>=0>.
  </theorem>

  <\proof>
    <math|L<around*|(|0|)>=L<around*|(|0\<cdot\>0|)>=0\<cdot\>L<around*|(|0|)>=0>
  </proof>

  <\definition>
    <label|linear mapping dual space><dueto|Dual Space>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> be a vector space
    over over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    [which is a vector space over itself] then <math|Hom<around*|(|X,F|)>> is
    called the <with|font-series|bold|dual space> of <math|X> and noted as
    <math|X<rsup|\<ast\>>>.
  </definition>

  <\theorem>
    <label|linear mapping existance of non-zero linear mapping>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> be a vector space
    over over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    [which is a vector space over itself] and <math|x\<in\>X> with
    <math|x\<neq\>0> then there exists a <math|L\<in\>Hom<around*|(|X,F|)>=X<rsup|\<ast\>>>
    such that <math|L<around*|(|x|)>=1>
  </theorem>

  <\proof>
    As <math|x\<neq\>0> we have by [theorem: <reference|linear independent
    singleton>] that <math|<around*|{|x|}>> is a linear independent, using
    [theorem: <reference|basis extending linear independent set>] there
    exists a basis <math|B> of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    such that <math|<around*|{|x|}>\<subseteq\>B>. Let <math|y\<in\>X> then
    by [theorem: <reference|basis alternative (1)>] there exists a
    <with|font-series|bold|unique> <math|<around*|{|\<alpha\><rsup|<around*|(|y|)>><rsub|w>|}><rsub|w\<in\>B>\<subseteq\>F>
    such that <math|y=<big|sum><rsub|w\<in\>B>\<alpha\><rsup|<around*|(|y|)>><rsub|w>\<cdot\>w>.
    This allows us to define

    <\equation*>
      L:X\<rightarrow\>F<text| by >L<around*|(|y|)>=\<alpha\><rsup|<around*|(|y|)>><rsub|x>
    </equation*>

    As <math|x\<in\>B> we have that for <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>B>>
    defined by <math|\<alpha\><rsub|w>=<choice|<tformat|<table|<row|<cell|1<text|
    if >w=x>>|<row|<cell|0<text| if >w\<in\>B\\<around*|{|x|}>>>>>>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|w\<in\>B>\<alpha\><rsub|w>\<cdot\>w>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|w\<in\>B\\<around*|{|x|}>>\<alpha\><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\><around*|{|x|}>>\<alpha\><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum general single>]>>>|<cell|<big|sum><rsub|w\<in\>B\\<around*|{|x|}>>\<alpha\><rsub|w>\<cdot\>w+\<alpha\><rsub|x>\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>B\\<around*|{|x|}>>0\<cdot\>w+1\<cdot\>x>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>>|<cell|1\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|x>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>B>\<alpha\><rsup|<around*|(|x|)>><rsub|w>\<cdot\>w>>>>
    </eqnarray*>

    so that by uniqueness we have <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>B>\<subseteq\>X=<around*|{|\<alpha\><rsup|<around*|(|x|)>><rsub|w>|}><rsub|w\<in\>B>\<subseteq\>X>
    then <math|L<around*|(|x|)>=\<alpha\><rsup|<around*|(|x|)>><rsub|x>=\<alpha\><rsub|x>=1>
    or

    <\equation>
      <label|eq 11.54.092>L<around*|(|x|)>=1
    </equation>

    Further we have if <math|y<rsub|1>,y<rsub|2>\<in\>X> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<rsub|1>+y<rsub|2>>|<cell|=>|<cell|<big|sum><rsub|w\<in\>B>\<alpha\><rsup|<around*|(|y<rsub|1>|)>><rsub|w>\<cdot\>w+<big|sum><rsub|w\<in\>B>\<alpha\><rsup|<around*|(|y<rsub|2>|)>><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of sums (2)>]>>>|<cell|<big|sum><rsub|w\<in\>B><around*|(|\<alpha\><rsup|<around*|(|y<rsub|1>|)>><rsub|w>+\<alpha\><rsup|<around*|(|y<rsub|2>|)>><rsub|w>|)>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>B>\<alpha\><rsup|<around*|(|y<rsub|1>+y<rsub|2>|)>><rsub|w>\<cdot\>w>>>>
    </eqnarray*>

    so that by uniqueness we have <math|L<around*|(|y<rsub|1>+y<rsub|2>|)>=\<alpha\><rsup|<around*|(|y<rsub|1>+y<rsub|2>|)><rsub|<rsub|>>><rsub|x>=\<alpha\><rsub|x><rsup|<around*|(|y<rsub|1>|)>>+\<alpha\><rsub|x><rsup|<around*|(|y<rsub|2>|)>>=L<around*|(|y<rsub|1>|)>+L<around*|(|y<rsub|2>|)>>
    so that\ 

    <\equation>
      <label|eq 11.55.092>L<around*|(|y<rsub|1>+y<rsub|2>|)>=L<around*|(|y<rsub|1>|)>+L<around*|(|y<rsub|2>|)>
    </equation>

    Finally if <math|y\<in\>X> and <math|\<alpha\>\<in\>F> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\>w>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|w\<in\>B>\<alpha\><rsup|<around*|(|y|)>><rsub|w>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (1)>]>>>|<cell|<big|sum><rsub|w\<in\>B>\<alpha\>\<cdot\><around*|(|\<alpha\><rsup|<around*|(|y|)>><rsub|w>\<cdot\>w|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>B><around*|(|\<alpha\>\<cdot\>\<alpha\><rsup|<around*|(|y|)>><rsub|w>|)>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|w\<in\>B>\<alpha\><rsup|<around*|(|\<alpha\>\<cdot\>y|)>><rsub|w>\<cdot\>w>>>>
    </eqnarray*>

    so that by uniqueness we have <math|L<around*|(|\<alpha\>\<cdot\>y|)>=\<alpha\><rsup|<around*|(|\<alpha\>\<cdot\>y|)>><rsub|x>=\<alpha\>\<cdot\>\<alpha\><rsup|<around*|(|y|)>><rsub|x>=\<alpha\>\<cdot\>L<around*|(|y|)>>
    proving\ 

    <\equation>
      <label|eq 11.56.092>L<around*|(|\<alpha\>\<cdot\>y|)>=\<alpha\>\<cdot\>L<around*|(|y|)>
    </equation>

    The theorem is then proved by [eqs: <reference|eq 11.54.092>,
    <reference|eq 11.55.092>, <reference|eq 11.56.092>].
  </proof>

  <\theorem>
    <label|linear mapping L(x)=L(y)=\<gtr\>x=y>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> be a vector space
    over over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    [which is a vector space over itself]. Let <math|x,y\<in\>X> such that
    <math|\<forall\>L\<in\>Hom<around*|(|X,Y|)>> we have
    <math|L<around*|(|x|)>=L<around*|(|y|)>> then <math|x=y>.
  </theorem>

  <\proof>
    Let <math|x,y\<in\>X> such that <math|\<forall\>L\<in\>Hom<around*|(|X,Y|)>>
    <math|L<around*|(|x|)>=L<around*|(|y|)>>. Assume that <math|x\<neq\>y>
    then <math|x-y\<neq\>0> so by the previous theorem [theorem:
    <reference|linear mapping existance of non-zero linear mapping>] there
    exists a <math|L\<in\>Hom<around*|(|X,Y|)>> such that
    <math|L<around*|(|x-y|)>=1>, so we have
    <math|0\<equallim\><rsub|L<around*|(|x|)>=L<around*|(|y|)>>L<around*|(|x|)>-L<around*|(|y|)>=L<around*|(|x-y|)>=1>leading
    to the contradiction <math|1=0>, hence we must have that <math|x=y>.
  </proof>

  <\theorem>
    <label|linear mapping and finite sum>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> is a linear mapping between <math|X>
    and <math|Y> then:

    <\enumerate>
      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>F>
      and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>X>
      then\ 

      <\equation*>
        L<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>x|)>=<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>
      </equation*>

      <item>If <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
      and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>F>
      and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>X>
      then\ 

      <\equation*>
        L<around*|(|<big|sum><rsub|i=n><rsup|m>\<alpha\><rsub|i>\<cdot\>x|)>=<big|sum><rsub|i=n><rsup|m>\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>
      </equation*>

      <item>If <math|W\<subseteq\>X> is a finite set and
      <math|<around*|{|\<alpha\><rsub|w>|}><rsub|w\<in\>W>\<subseteq\>F> then

      <\equation*>
        L<around*|(|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w|)>=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>L<around*|(|w|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This is proved by induction, let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
        ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
        and ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X<text|
        are families then >L<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>x|)>=<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S>>If <math|><math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,0|}>>\<subseteq\>F>
        and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>X>
        are families then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|0>a<rsub|i>\<cdot\>x<rsub|i>|)>>|<cell|\<equallim\><rsub|def>>|<cell|L<around*|(|a<rsub|0>\<cdot\>x<rsub|o>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|0>\<cdot\>L<around*|(|x<rsub|0>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|i=0><rsup|0>\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>>>>>
        </eqnarray*>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|><math|><math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>F>
        and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>X>
        be families then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>>|<cell|\<equallim\><rsub|def>>|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>x<rsub|i>+\<alpha\><rsub|n+1>\<cdot\>x<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>+\<alpha\><rsub|n+1>\<cdot\>x<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>x<rsub|i>+\<alpha\><rsub|n+1>\<cdot\>x<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>\<cdot\>x<rsub|i>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>
      </description>

      <item>Let <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
      and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>F>
      and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>X>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i=n><rsup|m>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>>|<cell|\<equallim\><rsub|def>>|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|m-n>\<alpha\><rsub|i+n>\<cdot\>x<rsub|i+n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<big|sum><rsub|i=0><rsup|m-n>\<alpha\><rsub|i+n>\<cdot\>L<around*|(|x<rsub|i+n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|i=n><rsup|m>\<alpha\><rsub|i>\<cdot\>L<around*|(|x<rsub|i>|)>>>>>
      </eqnarray*>

      <item>If <math|W> is finite we have either:

      <\description>
        <item*|<math|W=\<varnothing\>>>Then
        <math|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w=0> so that\ 

        <\equation*>
          L<around*|(|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w|)>=L<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
          <reference|linear mapping of neutral
          element>]>>0=<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>L<around*|(|w|)>
        </equation*>

        <item*|<math|W\<neq\>\<varnothing\>>>Then there exist by definition a
        <math|n\<in\>\<bbb-N\>> and a \ <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>W>
        such that\ 

        <\equation*>
          <big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w=<big|sum><rsub|i=0><rsup|n-1>\<alpha\><rsub|w<around*|(|i|)>>\<cdot\>w<around*|(|i|)>
        </equation*>

        so that

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>w|)>>|<cell|=>|<cell|L<around*|(|<big|sum><rsub|i=0><rsup|n-1>\<alpha\><rsub|w<around*|(|i|)>>\<cdot\>w<around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<big|sum><rsub|i=0><rsup|n-1>\<alpha\><rsub|w<around*|(|i|)>>\<cdot\>L<around*|(|w<around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|w\<in\>W>\<alpha\><rsub|w>\<cdot\>L<around*|(|w|)>>>>>
        </eqnarray*>
      </description>
    </enumerate>
  </proof>

  <\example>
    <label|linear mapping Img Re>Consider the vector space
    <math|<around*|\<langle\>|\<bbb-C\>,+,\<cdot\>|\<rangle\>>> then we have
    that\ 

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
      mapping and finite sum>]
    </enumerate>
  </proof>

  <\definition>
    <label|linear mapping kernel><dueto|Kernel of a Linear Mapping>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then the kernel of <math|L> noted as
    <math|ker<around*|(|L|)>> is defined by\ 

    <\equation*>
      ker<around*|(|L|)>=<around*|{|x\<in\>X\|L<around*|(|x|)>=0|}>=L<rsup|-1><around*|(|<around*|{|0|}>|)>
    </equation*>
  </definition>

  <\definition>
    <label|linear mapping range><dueto|Range of a Linear Mapping>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then the range of <math|L> noted as
    <math|range<around*|(|L|)>> is defined by\ 

    <\equation*>
      range<around*|(|L|)>=L<around*|(|X|)>
    </equation*>
  </definition>

  <\theorem>
    <label|linear mapping kernal and range are subspaces>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then

    <\enumerate>
      <item><math|ker<around*|(|L|)>> is a sub-space of <math|X>\ 

      <item><math|range<around*|(|L|)>> us a sub-space of <math|Y>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First as <math|L<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
      <reference|linear mapping of neutral element>]>>0> we have that\ 

      <\equation*>
        0\<in\>ker<around*|(|L|)>\<Rightarrow\>0\<neq\>ker<around*|(|L|)>
      </equation*>

      Second if <math|x,y\<in\>ker<around*|(|L|)>> and
      <math|\<alpha\>\<in\>F> then we have

      <\equation*>
        L<around*|(|x+y|)>=L<around*|(|x|)>+L<around*|(|y|)>=0+0=0
      </equation*>

      and

      <\equation*>
        L<around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>L<around*|(|x|)>=\<alpha\>\<cdot\>0=0
      </equation*>

      so that\ 

      <\equation*>
        x+y\<in\>ker<around*|(|L|)><text| and
        >\<alpha\>\<cdot\>x\<in\>ker<around*|(|L|)>
      </equation*>

      So we have that <math|ker<around*|(|L|)>> is a sub-space of <math|X>.

      <item>If <math|x,y\<in\>range<around*|(|L|)>=L<around*|(|X|)>> and
      <math|\<alpha\>\<in\>F> then we have a
      <math|x<rprime|'>,y<rprime|'>\<in\>X> such that
      <math|x=L<around*|(|x<rprime|'>|)>> and
      <math|y=L<around*|(|y<rprime|'>|)>>. For
      <math|x<rprime|'>+y<rprime|'>\<in\>X> we have then that\ 

      <\equation*>
        L<around*|(|x<rprime|'>+y<rprime|'>|)>=L<around*|(|x<rprime|'>|)>+L<around*|(|y<rprime|'>|)>=x+y
      </equation*>

      so that\ 

      <\equation*>
        x+y\<in\>L<around*|(|X|)>=range<around*|(|L|)>
      </equation*>

      Likewise for <math|\<alpha\>\<cdot\>x<rprime|'>\<in\>X> we have\ 

      <\equation*>
        L<around*|(|\<alpha\>\<cdot\>x<rprime|'>|)>=\<alpha\>\<cdot\>L<around*|(|x<rprime|'>|)>=\<alpha\>\<cdot\>x
      </equation*>

      proving that\ 

      <\equation*>
        \<alpha\>\<cdot\>x\<in\>L<around*|(|X|)>=range<around*|(|L|)>
      </equation*>
    </enumerate>
  </proof>

  As <math|range<around*|(|L|)>> is a vector space the following definition
  make sense.

  <\definition>
    <label|linear mapping rank><dueto|Rank of a Linear Mapping>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then the rank of <math|L> noted as
    <math|rank<around*|(|L|)>> is defined by\ 

    <\equation*>
      rank<around*|(|L|)>=dim<around*|(|range<around*|(|L|)>|)>=dim<around*|(|L<around*|(|X|)>|)>
    </equation*>
  </definition>

  <\theorem>
    <label|linear mapping injectivity and kernel>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then

    <\equation*>
      L<text| is injective >\<Leftrightarrow\><text|
      >ker<around*|(|L|)>=<around*|{|0|}>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|L<around*|(|0|)>\<equallim\><rsub|<text|[theorem:
      <reference|linear mapping of neutral element>]>>0> we have
      <math|0\<in\>ker<around*|(|L|)>> so that
      <math|<around*|{|0|}>\<subseteq\>ker<around*|(|L|)>>. Let
      <math|x\<in\>ker<around*|(|L|)>> then
      <math|L<around*|(|x|)>=0\<equallim\><rsub|<text|[theorem:
      <reference|linear mapping of neutral element>]>>L<around*|(|0|)>>. As
      <math|L> is injective we have <math|x=0> proving that
      <math|ker<around*|(|L|)>\<subseteq\><around*|{|0|}>>, hence we have\ 

      <\equation*>
        ker<around*|(|L|)>=<around*|{|0|}>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|x,y\<in\>X> such that
      <math|L<around*|(|x|)>=L<around*|(|y|)>> then
      <math|L<around*|(|x-y|)>=L<around*|(|x|)>-L<around*|(|y|)>=0> so that
      <math|x-y\<in\>ker<around*|(|L|)>=<around*|{|0|}>>. Hence <math|x-y=0>
      or <math|x=y> proving that <math|L> is injective.
    </description>
  </proof>

  <\theorem>
    <label|linear mapping span>Let <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|W\<subseteq\>X> and <math|L\<in\>Hom<around*|(|X,Y|)>> then\ 

    <\equation*>
      L<around*|(|span<around*|(|W|)>|)>\<subseteq\>span<around*|(|L<around*|(|W|)>|)>
    </equation*>

    Further if <math|L> is injective [or equivalently
    <math|ker<around*|(|L|)>=<around*|{|0|}>>] then\ 

    <\equation*>
      L<around*|(|span<around*|(|W|)>|)>=span<around*|(|L<around*|(|W|)>|)>
    </equation*>
  </theorem>

  <\proof>
    For the first part. If <math|y\<in\>L<around*|(|span<around*|(|W|)>|)>>
    then <math|\<exists\>x\<in\>span<around*|(|W|)>> such that
    <math|y=L<around*|(|x|)>>. As <math|x\<in\>span<around*|(|W|)>> there
    exists by [theorem: <reference|linear span equivalence 1>] a family
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>1,\<ldots\>,n>\<subseteq\>F>
    such that\ 

    <\equation*>
      x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i><rsub|>
    </equation*>

    Define

    <\equation*>
      <around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>L<around*|(|W|)><text|
      by >u<rsub|i>=L<around*|(|w<rsub|i>|)>
    </equation*>

    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x|)>>|<cell|=>|<cell|L<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i><rsub|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|linear mapping and finite
      sum>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>L<around*|(|w<rsub|i>|)>>>>>
    </eqnarray*>

    By [theorem: <reference|linear span equivalence 1>] it follows that
    <math|y=L<around*|(|x|)>\<in\>span<around*|(|W|)>> proving that\ 

    <\equation>
      <label|eq 11.57.093>L<around*|(|span<around*|(|W|)>|)>\<subseteq\>span<around*|(|L<around*|(|W|)>|)>
    </equation>

    For the second part. Let <math|y\<in\>span<around*|(|L<around*|(|W|)>|)>>
    then there exists a finite <math|J\<subseteq\>L<around*|(|W|)>> and a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>J>\<subseteq\>F> such
    that\ 

    <\equation>
      <label|eq 11.58.093>y=<big|sum><rsub|u\<in\>J>\<alpha\><rsub|u>\<cdot\>u<rsub|>
    </equation>

    Let <math|I=L<rsup|-1><around*|(|J|)>> then if <math|i\<in\>I> we have
    that <math|L<around*|(|i|)>\<in\>J>. As
    <math|J\<subseteq\>L<around*|(|W|)>> there exist a <math|j\<in\>W> such
    that <math|L<around*|(|i|)>=L<around*|(|j|)>>, as <math|L> is injective
    we have that <math|i=j\<in\>W> proving that\ 

    <\equation>
      <label|eq 11.59.093>I\<subseteq\>W
    </equation>

    Define

    <\equation*>
      \<beta\>:I\<rightarrow\>J<text| by >\<beta\><around*|(|i|)>=L<around*|(|i|)>
    </equation*>

    then we have\ 

    <\description>
      <item*|injectivity>If <math|i,j\<in\>I> such that
      <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>> then
      <math|L<around*|(|i|)>=L<around*|(|j|)>> which, as <math|L> is
      injective, proves that <math|i=j>.

      <item*|surjectivity>If <math|j\<in\>J> then as
      <math|J\<subseteq\>L<around*|(|W|)>> we have that
      <math|\<exists\>i\<in\>W> such that <math|j=L<around*|(|i|)>>. As
      <math|L<around*|(|i|)>=j\<in\>J> we have that
      <math|i\<in\>L<rsup|-1><around*|(|J|)>=I>, so there exists a
      <math|i\<in\>L<rsup|-1><around*|(|J|)>> such that
      <math|j=L<around*|(|i|)>=\<beta\><around*|(|i|)>>.
    </description>

    <\equation>
      <label|eq 11.60.093>\<beta\>:I\<rightarrow\>J <text| defined by
      >\<beta\><around*|(|i|)>=L<around*|(|i|)><text| is a bijection>
    </equation>

    Hence as <math|J> is finite we have also that\ 

    <\equation>
      <label|eq 11.61.093>I<text| is finite>
    </equation>

    Define

    <\equation>
      <label|eq 11.62.093><around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text|
      by >\<gamma\><rsub|i>=\<alpha\><rsub|\<beta\><rsup|><around*|(|i|)>>
    </equation>

    By [eqs: <reference|eq 11.59.093>, <reference|eq 11.61.093>] and the
    definition of a span we have that\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>\<gamma\><rsub|i>\<cdot\>i\<in\>span<around*|(|W|)>
    </equation*>

    Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i\<in\>I>\<gamma\><rsub|i>\<cdot\>i|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|linear mapping and finite
      sum>]>>>|<cell|<big|sum><rsub|i\<in\>I>\<gamma\><rsub|i>\<cdot\>L<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|\<beta\><rsup|><around*|(|i|)>>\<cdot\>\<beta\><around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\>J>\<alpha\><rsub|i>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|y>>>>
    </eqnarray*>

    proving that <math|y\<in\>L<around*|(|span<around*|(|W|)>|)>>. Hence
    <math|span<around*|(|L<around*|(|W|)>|)>\<subseteq\>L<around*|(|span<around*|(|W|)>|)>>.
    Combining this with [eq: <reference|eq 11.57.093> proves that\ 

    <\equation*>
      L<around*|(|span<around*|(|W|)>|)>=span<around*|(|L<around*|(|W|)>|)>
    </equation*>
  </proof>

  \;

  <\theorem>
    <label|linear mapping independency>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|W\<subseteq\>X> and <math|L\<in\>Hom<around*|(|X,Y|)>> a injective
    linear mapping then if <math|W> is linear independent then
    <math|L<around*|(|W|)>> is linear independent.
  </theorem>

  <\proof>
    Let <math|J\<subseteq\>L<around*|(|W|)>> be a finite subset,
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>J>\<subseteq\>F> such
    that

    <\equation>
      <label|eq 11.63.093><big|sum><rsub|i\<in\>J>\<alpha\><rsub|i>\<cdot\>i=0
    </equation>

    Let <math|I=L<rsup|-1><around*|(|J|)>> then if <math|i\<in\>I> we have
    that <math|L<around*|(|i|)>\<in\>J>. As
    <math|J\<subseteq\>L<around*|(|W|)>> there exist a <math|j\<in\>W> such
    that <math|L<around*|(|i|)>=L<around*|(|j|)>>, as <math|L> is injective
    we have that <math|i=j\<in\>W> proving that\ 

    <\equation>
      <label|eq 11.64.093>I\<subseteq\>W
    </equation>

    Define

    <\equation*>
      \<beta\>:I\<rightarrow\>J<text| by >\<beta\><around*|(|i|)>=L<around*|(|i|)>
    </equation*>

    then we have\ 

    <\description>
      <item*|injectivity>If <math|i,j\<in\>I> such that
      <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>> then
      <math|L<around*|(|i|)>=L<around*|(|j|)>> which, as <math|L> is
      injective, proves that <math|i=j>.

      <item*|surjectivity>If <math|j\<in\>J> then as
      <math|J\<subseteq\>L<around*|(|W|)>> we have that
      <math|\<exists\>i\<in\>W> such that <math|j=L<around*|(|i|)>>. As
      <math|L<around*|(|i|)>=j\<in\>J> we have that
      <math|i\<in\>L<rsup|-1><around*|(|J|)>=I>, so there exists a
      <math|i\<in\>L<rsup|-1><around*|(|J|)>> such that
      <math|j=L<around*|(|i|)>=\<beta\><around*|(|i|)>>.
    </description>

    <\equation>
      <label|eq 11.65.093>\<beta\>:I\<rightarrow\>J <text| defined by
      >\<beta\><around*|(|i|)>=L<around*|(|i|)><text| is a bijection>
    </equation>

    Hence as <math|J> is finite we have also that\ 

    <\equation>
      <label|eq 11.66.093>I<text| is finite>
    </equation>

    Define now\ 

    <\equation*>
      <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text| by
      >\<gamma\><rsub|i>=\<alpha\><rsub|\<beta\><around*|(|i|)>>
    </equation*>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|<big|sum><rsub|i\<in\>I>\<gamma\><rsub|i>\<cdot\>i|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|linear mapping and finite
      sum>]>>>|<cell|<big|sum><rsub|i\<in\>I>\<gamma\><rsub|i>\<cdot\>L<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|\<beta\><around*|(|i|)>>\<cdot\>\<beta\><around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>] and [eq: <reference|eq
      11.65.093>]>>>|<cell|<big|sum><rsub|i\<in\>J>\<alpha\><rsub|i>\<cdot\>i>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|eq 11.63.093>]>>>|<cell|0>>>>
    </eqnarray*>

    So <math|<big|sum><rsub|i\<in\>I>\<gamma\><rsub|i>\<cdot\>i\<in\>ker<around*|(|L|)>>,
    as <math|L> is injective we have by [theorem: <reference|linear mapping
    injectivity and kernel>] that <math|ker<around*|(|L|)>=<around*|{|0|}>>,
    so that

    <\equation*>
      <big|sum><rsub|i\<in\>I>\<gamma\><rsub|i>\<cdot\>i
    </equation*>

    As <math|I> is finite, <math|I\<subseteq\>W> and <math|W> is linear
    independent we have by [theorem: <reference|linear independent set
    alternative>] that <math|\<forall\>i\<in\>I> we have
    <math|\<gamma\><rsub|i>=0>. Hence, if <math|i\<in\>J> then
    <math|\<beta\><rsup|-1><around*|(|i|)>\<in\>I> so that
    <math|\<alpha\><rsub|i>=\<alpha\><rsub|\<beta\><around*|(|\<beta\><rsup|-1><around*|(|i|)>|)>>=\<gamma\><rsub|\<beta\><rsup|-1><around*|(|i|)>>=0>,
    proving that <math|\<forall\>i\<in\>J> we have
    <math|\<alpha\><rsub|i>=0>. Applying then [theorem: <reference|linear
    independent set alternative>] proves that <math|L<around*|(|W|)>> is
    linear independent.
  </proof>

  <\theorem>
    <label|linear mapping basis>Let <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|B\<subseteq\>V> a basis of <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    and <math|L\<in\>Hom<around*|(|X,Y|)>> a injective linear mapping then
    <math|L<around*|(|B|)>> is a basis of <math|range<around*|(|L|)>>.
  </theorem>

  <\proof>
    As <math|B\<subseteq\>V> we have\ 

    <\equation*>
      L<around*|(|B|)>\<subseteq\>L<around*|(|X|)>=range<around*|(|X|)>
    </equation*>

    As <math|B> is a basis of <math|V> we have that <math|B> is linear
    independent and <math|span<around*|(|B|)>=V>. As <math|L> is linear
    independent we have by [theorem: <reference|linear mapping independency>]
    that\ 

    <\equation*>
      L<around*|(|B|)> is linear independent
    </equation*>

    As <math|B> is a basis we have <math|span<around*|(|B|)>=V> so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|range<around*|(|L|)>>|<cell|=>|<cell|L<around*|(|V|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|span<around*|(|B|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|linear mapping span>]>>>|<cell|span<around*|(|L<around*|(|B|)>|)>>>>>
    </eqnarray*>

    So <math|L<around*|(|B|)>> is a basis of <math|range<around*|(|L|)>>.
  </proof>

  <\corollary>
    <label|linear mapping isomorphic spaces>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> be vector spaces over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> a linear isomorphism then we have:

    <\enumerate>
      <item>If <math|X> is infinite dimensional then <math|Y> is infinite
      dimensional

      <item>If <math|X> is finite dimensional then <math|Y> is finite
      dimensional

      <item><math|dim<around*|(|X|)>=dim<around*|(|Y|)>>
    </enumerate>
  </corollary>

  <\proof>
    If <math|L> is a linear isomorphism then

    <\equation>
      <label|eq 11.67.093>L:X\<rightarrow\>Y<text| is a bijection so that
      >range<around*|(|L|)>=L<around*|(|X|)>
    </equation>

    Let <math|B> be a basis for <math|X> then\ 

    <\equation>
      <label|eq 11.68.093>L<rsub|\|B>:B\<rightarrow\>L<around*|(|B|)><text|
      is a bijection or >B\<approx\>L<around*|(|B|)>
    </equation>

    \ Further by the previous theorem [theorem: <reference|linear mapping
    basis>]

    <\equation>
      <label|eq 11.69.093>L<around*|(|B|)><text| is a basis for
      ><around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>
    </equation>

    So we have\ 

    <\enumerate>
      <item>If <math|X> is infinite dimensional then <math|B> is infinite so
      that by [theorem: <reference|injection and infinite sets>] and [eq:
      <reference|eq 11.68.093>] it follows that <math|L<around*|(|B|)>> is
      infinite. Hence <math|Y> is infinite dimensional.

      <item>If <math|X> is finite dimensional then <math|B> is finite so that
      by [theorem: <reference|surjection f:A-\<gtr\>B if A is finite then B
      is finite>] and [eq: <reference|eq 11.68.093>] it follows that
      <math|L<around*|(|B|)>> is finite. Hence <math|Y> is finite
      dimensional.

      <item>For <math|B> we have either:

      <\description>
        <item*|<math|B<text| is infinite>>>Then <math|L<around*|(|B|)>> is
        infinite and <math|dim<around*|(|X|)>=\<infty\>=dim<around*|(|Y|)>>

        <item*|<math|B<text| is finite>>>Then there exists a
        <math|n\<in\>\<bbb-N\><rsub|0>> such that
        <math|<around*|{|1,\<ldots\>,n|}>\<approx\>B\<approx\>L<around*|(|B|)>>
        such that\ 

        <\equation*>
          dim<around*|(|X|)>=n=dim<around*|(|Y|)>
        </equation*>
      </description>
    </enumerate>
  </proof>

  The above theorem is a special case of a more general theorem.

  <\theorem>
    <label|linear mapping dimension theorem>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> be a finite
    dimensional vector space over the field
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> a vector space over
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then\ 

    <\equation*>
      dim<around*|(|X|)>=dim<around*|(|ker<around*|(|L|)>|)>+rank<around*|(|L|)>
    </equation*>
  </theorem>

  <\proof>
    We divide the proof in two cases:

    <\description>
      <item*|<math|ker<around*|(|L|)>=<around*|{|0|}>>>Then by [theorem:
      <reference|linear mapping injectivity and kernel>] <math|L> is
      injective so that\ 

      <\equation*>
        L:X\<rightarrow\>L<around*|(|X|)>=range<around*|(|L|)>
      </equation*>

      is a isomorphism, hence by [theorem: <reference|linear mapping
      isomorphic spaces>] <math|<around*|\<langle\>|range<around*|(|L|)>,+,\<cdot\>|\<rangle\>>>
      is finite dimensional and <math|dim<around*|(|X|)>=dim<around*|(|range<around*|(|L|)>|)>=rank<around*|(|L|)>>.
      Further <math|dim<around*|(|ker<around*|(|L|)>|)>=dim<around*|(|<around*|{|0|}>|)>\<equallim\><rsub|<text|]example:
      <reference|basis dimension of trivial space>] >>0> so that\ 

      <\equation*>
        dim<around*|(|X|)>=rank<around*|(|L|)>=0+rank<around*|(|L|)>=dim<around*|(|ker<around*|(|L|)>|)>+rank<around*|(|L|)>
      </equation*>

      <item*|<math|ker<around*|(|L|)>\<neq\><around*|{|0|}>>>Let
      <math|B<rsub|k>> be a basis [hence linear independent] of
      <math|<around*|\<langle\>|ker<around*|(|L|)>,+,\<ast\>|\<rangle\>>> and
      use [theorem: <reference|basis extending linear independent set>] to
      find a basis <math|B<rsub|x>> of <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>
      such that <math|B<rsub|k>\<subseteq\>B<rsub|x>>. As <math|B<rsub|x>> is
      finite [for <math|X> is finite dimensional] we have that
      <math|B<rsub|k>> is finite. Further, as <math|B<rsub|x>><space|1em>is a
      disjoint union of <math|B<rsub|x>\\B<rsub|k>> and <math|B<rsub|k>>, we
      have by [theorem: <reference|complex cardinality properties>] that\ 

      <\equation>
        <label|eq 11.70.094>dim<around*|(|X|)>=card<around*|(|B<rsub|x>|)>=card<around*|(|B<rsub|x>\\B<rsub|k>|)>+card<around*|(|B<rsub|k>|)>=card<around*|(|B<rsub|x>\\B<rsub|k>|)>+dim<around*|(|ker<around*|(|L|)>|)>
      </equation>

      Consider the function

      <\equation*>
        L<rsub|\|B<rsub|x>\\B<rsub|k>>:B<rsub|x>\\B<rsub|k>\<rightarrow\>L<around*|(|B<rprime|'>\\B|)>
      </equation*>

      then we have\ 

      <\description>
        <item*|injectivity>Let <math|x,y\<in\>B<rprime|'>\\B<rsub|k>> such
        that <math|L<rsub|\|B<rsub|x>\\B<rsub|k><rsub|>><around*|(|x|)>=L<rsub|\|B<rsub|x>\\B<rsub|k><rsub|>><around*|(|y|)>>
        then <math|L<around*|(|x|)>=L<around*|(|y|)>> so that
        <math|L<around*|(|x-y|)>=L<around*|(|x|)>-L<around*|(|y|)>=0>, hence
        <math|x-y\<in\>ker<around*|(|L|)>>. As <math|B<rsub|k>> is a basis
        for <math|ker<around*|(|L|)>> and <math|B<rsub|k>> is finite we have
        by [theorem: <reference|basis finite alternative (1)>] that there
        exists a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|k>>>
        such that\ 

        <\equation*>
          x-y=<big|sum><rsub|u\<in\>B<rsub|k>>\<alpha\><rsub|u>\<cdot\>u
        </equation*>

        so that\ 

        <\equation>
          <label|eq 11.70.093>0=<big|sum><rsub|u\<in\>B<rsub|k>>\<alpha\><rsub|u>\<cdot\>u+1\<cdot\>y+<around*|(|-1|)>\<cdot\>x
        </equation>

        Now

        <\eqnarray*>
          <tformat|<table|<row|<cell|B<rsub|x>>|<cell|\<equallim\><rsub|B<rsub|k>\<subseteq\>B<rsub|x>>>|<cell|<around*|(|B<rsub|x>\\B<rsub|k>|)><big|cup>B<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)><big|cup><around*|{|x,y|}><big|cup>B<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)><big|cup><around*|{|x|}><big|cup><around*|{|y|}><big|cup>B<rsub|k>>>>>
        </eqnarray*>

        Assume that <math|x\<neq\>y> then
        <math|<around*|{|x|}><big|cap><around*|{|y|}>=\<varnothing\>>,
        further <math|<around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)><big|cap><around*|{|x|}>=\<varnothing\>>,\ 

        <math|<around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)><big|cap><around*|{|y|}>>,
        <math|<around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)><big|cap>B<rsub|k>=\<varnothing\>>,
        <math|<around*|{|x|}><big|cap>B<rsub|k>\<equallim\><rsub|x,y\<in\>B<rsub|x>\\B<rsub|k>>\<varnothing\>>
        and <math|<around*|{|x|}><big|cap>B<rsub|k>\<equallim\><rsub|x,y\<in\>B<rsub|x>\\B<rsub|k>>\<varnothing\>><space|1em>so
        that\ 

        <\equation>
          <label|eq 11.71.093>B<rsub|x><text| is the disjoint union of
          ><around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)>,<around*|{|x|}>,<around*|{|y|}><text|
          and >B<rsub|k>
        </equation>

        The above allows us to define

        \ 

        <\equation*>
          <around*|{|\<gamma\><rsub|u>|}><rsub|u\<in\>B<rsub|x>>\<subseteq\>F<text|
          by >\<gamma\><rsub|u>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|u><text|
          if >u\<in\>B<rsub|k>>>|<row|<cell|1<text| if
          >u\<in\><around*|{|x|}>>>|<row|<cell|-1<text| if
          >u\<in\><around*|{|y|}>>>|<row|<cell|0<text| if
          >u\<in\><around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)>>>>>>
        </equation*>

        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>B<rsub|x>>\<gamma\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|u\<in\>B<rsub|k>>\<gamma\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|x|}>>\<gamma\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|{|y|}>>\<gamma\><rsub|u>\<cdot\>u+<big|sum><rsub|u\<in\><around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)>>\<gamma\><rsub|u>\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum general single>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|u\<in\>B<rsub|k>>\<gamma\><rsub|u>\<cdot\>u+\<gamma\><rsub|x>\<cdot\>x+\<gamma\><rsub|y>\<cdot\>y+<big|sum><rsub|u\<in\><around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)>>\<gamma\><rsub|u>\<cdot\>u>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|u\<in\>B<rsub|k>>\<alpha\><rsub|u>\<cdot\>u+1\<cdot\>x+<around*|(|-1|)>\<cdot\>y+<big|sum><rsub|u\<in\><around*|(|<around*|(|B<rsub|x>\\B<rsub|k>|)>\\<around*|{|x,y|}>|)>>0\<cdot\>u>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum of neutral element
          (2)>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|u\<in\>B<rsub|k>>\<alpha\><rsub|u>\<cdot\>u+1\<cdot\>x+<around*|(|-1|)>\<cdot\>y>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 11.70.093>]>>>|<cell|>>|<row|<cell|0>|<cell|>|<cell|>>>>
        </eqnarray*>

        As <math|B<rsub|x>> is linear independent we have that
        <math|\<forall\>u\<in\>B<rsub|k>> <math|\<gamma\><rsub|u>=0>
        contradicting the fact that <math|\<alpha\><rsub|x>=1>. Hence we must
        have that <math|x=y> proving injectivity.

        <item*|surjectivity>This is trivial.
      </description>

      So we have proved that\ 

      <\equation>
        <label|eq 11.72.093>L<rsub|\|B<rsub|x>\\B<rsub|k>>:B<rsub|x>\\B<rsub|k>\<rightarrow\>L<around*|(|B\\B<rsub|y>|)><text|
        is a isomorphism>
      </equation>

      If <math|y\<in\>L<around*|(|X|)>> then there exists a <math|x\<in\>X>
      such that <math|y=L<around*|(|x|)>>. As <math|B<rsub|x>> is a basis
      there exists a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>B<rsub|x>>\<subseteq\>F>
      such that <math|x=<big|sum><rsub|u\<in\>B<rsub|x>>\<alpha\><rsub|u>\<cdot\>u>.
      So that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y>|<cell|=>|<cell|L<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<big|sum><rsub|u\<in\>B<rsub|x>>\<alpha\><rsub|u>\<cdot\>u|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|linear mapping and finite
        sum>]>>>|<cell|<big|sum><rsub|u\<in\>B<rsub|x>>\<alpha\><rsub|u>\<cdot\>L<around*|(|u|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|u\<in\>B<rsub|x>\\B<rsub|k>>\<alpha\><rsub|u>\<cdot\>L<around*|(|u|)>+<big|sum><rsub|u\<in\>B<rsub|k>>\<alpha\><rsub|u>\<cdot\>L<around*|(|u|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>B<rsub|x>\\B<rsub|k>>\<alpha\><rsub|u>\<cdot\>L<around*|(|u|)>+<big|sum><rsub|u\<in\>B<rsub|k>>\<alpha\><rsub|u>\<cdot\>0>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|u\<in\>B<rsub|x>\\B<rsub|k>>\<alpha\><rsub|u>\<cdot\>L<around*|(|u|)><eq-number><label|eq
        11.73.093>>>>>
      </eqnarray*>

      Define now\ 

      <\equation*>
        <around*|{|\<beta\><rsub|u>|}><rsub|u\<in\>L<around*|(|B<rsub|x>\\B<rsub|k>|)>><text|
        by >\<beta\><rsub|u>=\<alpha\><rsub|<around*|(|L<rsub|\|B<rsub|x>\\B<rsub|k>>|)><rsup|-1><around*|(|u|)>><rsub|>
      </equation*>

      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|u\<in\>L<around*|(|B<rsub|x>\\B<rsub|k>|)>>\<beta\><rsub|u>\<cdot\>u>|<cell|=>|<cell|<big|sum><rsub|u\<in\>L<around*|(|B<rsub|x>\\B<rsub|k>|)>>\<alpha\><rsub|<around*|(|L<rsub|\|B<rsub|x>\\B<rsub|k>>|)><rsup|-1><around*|(|u|)>><rsub|>\<cdot\><around*|(|L<rsub|\|B<rsub|x>\\B<rsub|k>><around*|(|<around*|(|L<rsub|\|B<rsub|x>\\B<rsub|k>>|)><rsup|-1><around*|(|u|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|u\<in\>B<rsub|x>\\B<rsub|k>>\<alpha\><rsub|u>\<cdot\>L<rsub|\|B<rsub|x>\\B<rsub|k>><around*|(|u|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>B<rsub|x>\\B<rsub|k>>\<alpha\><rsub|u>\<cdot\>L<around*|(|u|)>>>|<row|<cell|>|<cell|=>|<cell|y>>>>
      </eqnarray*>

      proving that <math|y\<in\>span<around*|(|L<around*|(|B<rsub|x>\\B<rsub|k>|)>|)>>.
      Hence\ 

      <\equation>
        <label|eq 11.74.093>L<around*|(|X|)>\<subseteq\>span<around*|(|L<around*|(|B<rsub|x>\\B<rsub|k>|)>|)>
      </equation>

      For the opposite inclusion:\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|B<rsub|x>\\B<rsub|k>\<subseteq\>X>|<cell|\<Rightarrow\>>|<cell|L<around*|(|B<rsub|x>\\B<rsub|k>|)>\<subseteq\>L<around*|(|X|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|linear span subsets>]>>>|<cell|span<around*|(|L<around*|(|B<rsub|x>\\B<rsub|k>|)>|)>\<subseteq\>span<around*|(|L<around*|(|X|)>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorems:
        <reference|linear mapping kernal and range are
        subspaces>,<reference|linear span
        properties>]>>>|<cell|span<around*|(|L<around*|(|B<rsub|x>\\B<rsub|k>|)>|)>\<subseteq\>L<around*|(|x|)>>>>>
      </eqnarray*>

      which combined with [eq: <reference|eq 11.74.093>] gives\ 

      <\equation>
        <label|eq 11.75.093>L<around*|(|X|)>=span<around*|(|L<around*|(|B<rsub|x>\\B<rsub|k>|)>|)>
      </equation>

      As <math|B<rsub|x>\\B<rsub|k>\<subseteq\>B<rsub|x>> a linear
      independent set it follows from [theorem: <reference|linear
      (in)dependency properties (1)>] that <math|B<rsub|x>\\B<rsub|k>> is
      linear independent. Using [eq: <reference|eq 11.72.093>] we have that
      <math|L<rsub|\|B<rsub|x>\\B<rsub|k>>:B<rsub|x>\\B<rsub|k>\<rightarrow\>L<around*|(|B\\B<rsub|y>|)>>
      is a isomorphism, so by [theorem: <reference|linear mapping
      independency>]\ 

      <\equation*>
        L<around*|(|B<rsub|x>\\B<rsub|k>|)><text| is linear independent>
      </equation*>

      The above together with [eq: <reference|eq 11.75.093>] prove that\ 

      <\equation*>
        L<around*|(|B<rsub|x>\\B<rsub|k>|)><text| is a basis of
        >L<around*|(|X|)>
      </equation*>

      Using [eq: <reference|eq 11.72.093>] we have that
      <math|card<around*|(|B<rsub|x>\\B<rsub|k>|)>=card<around*|(|L<around*|(|B<rsub|x>\\B<rsub|k>|)>|)>=dim<around*|(|L<around*|(|x|)>|)>=rank<around*|(|L|)>>,
      Substituting this in [eq: <reference|eq 11.70.094>] gives finally\ 

      <\equation*>
        dim<around*|(|X|)>=rank<around*|(|L|)>+dim<around*|(|ker<around*|(|L|)>|)>
      </equation*>
    </description>

    So in all cases we have proved that\ 

    <\equation*>
      dim<around*|(|X|)>=rank<around*|(|L|)>+dim<around*|(|ker<around*|(|L|)>|)>
    </equation*>
  </proof>

  <section|Permutations>

  In [definition: <reference|permutation definition>] we have introduced the
  idea of permutations, bijections of a set on itself that forms a group
  under function compositions. We consider now the special case of
  permutations of sets of the form <math|<around*|{|1,\<ldots\>,n|}>> where
  <math|n\<in\>\<bbb-N\>>.\ 

  <\definition>
    <label|permutation Pn>Let <math|n\<in\>\<bbb-N\>> then

    <\equation*>
      P<rsub|n>=<around*|{|\<sigma\>\<in\><around*|{|1,\<ldots\>,n|}><rsup|<around*|{|1,\<ldots\>,n|}>><text|
      such that >\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}><text|
      is a bijection>|}>
    </equation*>

    In other words using [definition: <reference|permutation definition>]
    <math|P<rsub|n>=S<rsub|<around*|{|1,\<ldots\>,n|}>>> but evidently
    <math|P<rsub|n>> is a shorter notation.
  </definition>

  <\example>
    <label|permutation reverse>Let <math|n\<in\>\<bbb-N\>> then for\ 

    <\equation*>
      \<rho\><rsub|n>:<around*|{|1,\<ldots\>n|}>\<rightarrow\><around*|{|1,\<ldots\>,|}><text|
      defined by >\<rho\><rsub|n><around*|(|i|)>=n-i+1
    </equation*>

    we have <math|\<rho\><rsub|n>\<in\>P<rsub|n>>.\ 

    \;

    <math|\<rho\><rsub|n>> is the reversion operation, for example:

    <\itemize-minus>
      <item><math|\<rho\><rsub|3><around*|(|1|)>=3-1+1=3>

      <item><math|\<rho\><rsub|3><around*|(|2|)>=3-2+1=2>

      <item><math|\<rho\><rsub|3><around*|(|3|)>=3-3+1=1>
    </itemize-minus>
  </example>

  <\proof>
    \ We have:\ 

    <\description>
      <item*|injectivity>If <math|\<rho\><rsub|n><around*|(|i|)>=\<rho\><rsub|n><around*|(|j|)>>
      then <math|n-i+1=n-j+1> so that <math|-i=-j> hence <math|i=j>.

      <item*|surjectivity>If <math|k\<in\><around*|{|1,\<ldots\>,n|}>> take
      then <math|j=n-k+1\<in\><around*|{|1,\<ldots\>,n|}>> so that
      <math|\<rho\><rsub|n><around*|(|n-k+1|)>=n-<around*|(|n-k+1|)>+1=k>
    </description>

    proving bijectivity, hence <math|\<rho\><rsub|n>\<in\>P<rsub|n>>.
  </proof>

  <\theorem>
    <label|permutation Pn is a group>Let <math|n\<in\>\<bbb-N\>> then
    <math|<around*|\<langle\>|P<rsub|n>,\<circ\>|\<rangle\>>> is a group
    called the permutation group
  </theorem>

  <\proof>
    Using [definition: <reference|permutation definition>] we have that
    <math|P<rsub|n>=S<rsub|<around*|{|1,\<ldots\>,n|}>>>, the rest follows
    from [theorem: <reference|permutation group>]
  </proof>

  <\note>
    <math|P<rsub|n>> is not commutative
  </note>

  <\proof>
    For example if <math|f<rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|\<rightarrow\>>|<cell|3>>|<row|<cell|2>|<cell|\<rightarrow\>>|<cell|2>>|<row|<cell|3>|<cell|\<rightarrow\>>|<cell|1>>>>>>
    and <math|f<rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|\<rightarrow\>>|<cell|2>>|<row|<cell|2>|<cell|\<rightarrow\>>|<cell|1>>|<row|<cell|3>|<cell|\<rightarrow\>>|<cell|3>>>>>>
    then <math|f<rsub|1>\<circ\>f<rsub|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|\<rightarrow\>>|<cell|2>>|<row|<cell|2>|<cell|\<rightarrow\>>|<cell|3>>|<row|<cell|3>|<cell|\<rightarrow\>>|<cell|1>>>>>>
    and

    \ <math|f<rsub|2>\<circ\>f<rsub|1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|\<rightarrow\>>|<cell|3>>|<row|<cell|2>|<cell|\<rightarrow\>>|<cell|1>>|<row|<cell|3>|<cell|\<rightarrow\>>|<cell|2>>>>>>
    so that <math|f<rsub|1>\<circ\>f<rsub|2>\<neq\>f<rsub|2>\<circ\>f<rsub|1>>
  </proof>

  <\definition>
    <label|permutation sum>Let <math|n\<in\>\<bbb-N\>>. As
    <math|<around*|\<langle\>|P<rsub|n>,\<circ\>|\<rangle\>>> forms a group,
    giving a ordered family of <math|<around*|{|\<sigma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of permutations in <math|P<rsub|n>> then
    <math|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|n>|)>>
    is defined by\ 

    <\equation*>
      <around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|n>|)>=<big|sum><rsub|i=1><rsup|n>\<sigma\><rsub|i>
    </equation*>

    (using <math|\<circ\>> for summation).
  </definition>

  <\theorem>
    <label|permutation composition of a family of permutations>Let
    <math|m,n\<in\>\<bbb-N\>> and <math|<around*|{|\<sigma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>P<rsub|n>>
    then we have\ 

    <\enumerate>
      <item>If <math|m=1> then <math|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|1>|)>=\<sigma\><rsub|1>>

      <item>If <math|1\<less\>m> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|m>|)>>|<cell|=>|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|m-1>|)>\<circ\>\<sigma\><rsub|m>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><rsub|1>\<circ\><around*|(|\<sigma\><rsub|2>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|m>|)>>>>>
      </eqnarray*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\equation*>
        <around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<sigma\><rsub|1>\<equallim\><rsub|<text|[theorem:
        <reference|sum alternative definition (1)>]>>\<sigma\><rsub|1>
      </equation*>

      <item>If <math|1\<less\>m> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|m>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m>\<sigma\><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum alternative definition
        (1)>]>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|m-1>\<sigma\><rsub|i>|)>\<circ\>\<sigma\><rsub|m>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|m-1>|)>\<circ\>\<sigma\><rsub|m>>>|<row|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|m>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m>\<sigma\><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|i=0><rsup|m-1>\<sigma\><rsub|i+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum alternative definition
        (2)>>>>|<cell|\<sigma\><rsub|0+1>\<circ\><big|sum><rsub|i=1><rsup|m-1>\<sigma\><rsub|i+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|\<sigma\><rsub|1>\<circ\><big|sum><rsub|i=2><rsup|m>\<sigma\><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><rsub|1>\<circ\><around*|(|\<sigma\><rsub|2>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|m>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <subsection|Transpositions>

  <\definition>
    <label|permutation transposition 1><dueto|Transposition>Let
    <math|n\<in\>\<bbb-N\>> and <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    then a <with|font-series|bold|transposition>
    <math|<around*|(|i\<leftrightarrowlim\><rsub|n>j|)>\<in\>P<rsub|n>> is
    defined as [see: <reference|permutation transposition>]\ 

    <\equation*>
      <around*|(|i\<leftrightarrowlim\><rsub|n>j|)>=<around*|(|i\<leftrightarrowlim\><rsub|<around*|{|1,\<ldots\>,n|}>>j|)>
    </equation*>

    so that\ 

    <\equation*>
      <around*|(|i\<leftrightarrowlim\><rsub|n>j|)><around*|(|k|)>=<choice|<tformat|<table|<row|<cell|k<text|
      if >k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i,j|}>>>|<row|<cell|j<text|
      if >k=i>>|<row|<cell|i<text| if >k=j>>>>>
    </equation*>

    If <math|i\<neq\>j> then <math|<around*|(|i\<leftrightarrowlim\><rsub|n>j|)>>
    is a <with|font-series|bold|strict> <with|font-series|bold|transposition>
    (note that for a transposition to be strict we must have that
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>).
  </definition>

  <\theorem>
    <label|permutation transosition proeprties>Let <math|n\<in\>\<bbb-N\>>
    then we have for <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>

    <\enumerate>
      <item>If <math|i=j> then <math|<around*|(|i\<leftrightarrowlim\><rsub|n>j|)>=Id<rsub|<around*|{|1,\<ldots\>,n|}>>>

      <item><math|<around*|(|i\<leftrightarrowlim\><rsub|n>j|)>=<around*|(|j\<leftrightarrowlim\><rsub|n>i|)>>

      <item><math|<around*|(|i\<leftrightarrowlim\><rsub|n>j|)>\<circ\><around*|(|i\<leftrightarrowlim\><rsub|n>j|)>=Id<rsub|<around*|{|1,\<ldots\>,n|}>>>
    </enumerate>
  </theorem>

  <\proof>
    This is proved in [theorem: <reference|permutation transposition
    properties>]
  </proof>

  We can always extend a permutation on <math|<around*|{|1,\<ldots\>,n|}>> to
  a permutation on <math|<around*|{|1,\<ldots\>,n+1|}>> as the following
  theorem shows.

  <\theorem>
    <label|permutation extension (1)>Let <math|n,m\<in\>\<bbb-N\>> with
    <math|n\<less\>m> then for every \ <math|\<sigma\>\<in\>P<rsub|n>> define

    <\equation*>
      \<sigma\><rsup|\|<around*|{|1,\<ldots\>m|}>>:<around*|{|1,\<ldots\>,m|}>\<Rightarrow\><around*|{|1,\<ldots\>,m|}>
    </equation*>

    by\ 

    <\equation*>
      \<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|i<text|
      if >i\<in\><around*|{|n+1,\<ldots\>,m|}>=<around*|{|1,\<ldots\>,m|}>\\<around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<sigma\><around*|(|i|)><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>\<in\><around*|{|1,\<ldots\>,m|}>
    </equation*>

    then we have\ 

    <\enumerate>
      <item><math|\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>>\<in\>P<rsub|m>>

      <item><math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}><text| we
      have ><around*|(|i\<leftrightarrowlim\><rsub|n>j|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>=<around*|(|i\<leftrightarrowlim\><rsub|m>j|)>>

      <item>If <math|\<sigma\>,\<rho\>\<in\>P<rsub|n>> then
      <math|<around*|(|\<sigma\>\<circ\>\<rho\>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>>\<circ\>\<rho\><rsup|\|<around*|{|1,\<ldots\>,m|}>>>

      <item>If <math|k\<in\>\<bbb-N\>> and
      <math|<around*|{|\<sigma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>P<rsub|n>>
      then <math|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|n>|)>=<around*|(|<around*|(|\<sigma\><rsub|1><rsup|>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>\<circ\>\<cdots\>\<circ\><around*|(|\<sigma\><rsub|n>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>|)>>
    </enumerate>
  </theorem>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>We have:

      <\description>
        <item*|injectivity>For <math|i,j\<in\><around*|{|1,\<ldots\>,m|}>>
        with <math|\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|j|)>>
        we have either:

        <\description>
          <item*|<math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>>Then we have
          <math|\<sigma\><around*|(|i|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|j|)>=\<sigma\><around*|(|j|)>>
          proving, as <math|\<sigma\>> is injective, that <math|i=j>.\ 

          <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>j\<in\><around*|{|n+1,\<ldots\>,m|}>>>Then
          <math|\<sigma\><around*|(|i|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|j|)>=j>,
          hence as <math|\<sigma\><around*|(|i|)>\<in\><around*|{|1,\<ldots\>,n|}>>
          we have that <math|j\<in\><around*|{|1,\<ldots\>,n|}>>
          contradicting <math|j\<in\><around*|{|n+1,\<ldots\>,m|}>>. So this
          case does not apply.

          <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,m|}>\<wedge\>j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
          <math|\<sigma\><around*|(|j|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|j|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>=i>,
          hence as <math|\<sigma\><around*|(|j|)>\<in\><around*|{|1,\<ldots\>,n|}>>
          we have that <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
          contradicting <math|i\<in\><around*|{|n+1,\<ldots\>,m|}>>. So this
          case does not apply.

          <item*|<math|i,j\<in\><around*|{|n+1,\<ldots\>,m|}>>>Then we have
          <math|i=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|j|)>=j>
          or <math|i=j>.
        </description>

        So in all cases <math|i=j>.

        <item*|surjectivity>If<math|j\<in\><around*|{|1,\<ldots\>,m|}> then
        either j\<in\><around*|{|n+1,\<ldots\>,m|}>> so that
        <math|j=\<sigma\><rsup|\|n+1><around*|(|j|)>> or
        <math|j\<in\><around*|{|1,\<ldots\>,n|}>> and then there exists a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> so that
        <math|j=\<sigma\><around*|(|i|)>=\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>>.
      </description>

      So <math|\<sigma\><rsup|\|<around*|{|1,\<ldots\>m|}>>:<around*|{|1,\<ldots\>,m|}>\<Rightarrow\><around*|{|1,\<ldots\>,m|}>>
      is a bijection or <math|\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>>\<in\>P<rsub|m>>

      <item>Let <math|k\<in\><around*|{|1,\<ldots\>,m|}>> then we have
      either:

      <\description>
        <item*|<math|k\<in\><around*|{|1,\<ldots\>,n|}>>>Then as
        <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> we have\ 

        <\equation*>
          <around*|(|i\<leftrightarrowlim\><rsub|n>j|)><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|k|)>=<around*|(|i\<leftrightarrowlim\><rsub|n>j|)><around*|(|k|)>=<choice|<tformat|<table|<row|<cell|i<text|
          if >k=j>>|<row|<cell|j<text| if >k=i>>|<row|<cell|k<text| if
          >i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i,j|}>>>>>>=<around*|(|i\<leftrightarrowlim\><rsub|m>j|)><around*|(|k|)>
        </equation*>

        <item*|<math|k\<in\><around*|{|n+1,\<ldots\>,m|}>>>Then as
        <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> we have that
        <math|i,j\<neq\>k> so that\ 

        <\equation*>
          <around*|(|i\<leftrightarrowlim\><rsub|n>j|)><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|k|)>=k=<around*|(|i\<leftrightarrowlim\><rsub|m>j|)><around*|(|k|)>
        </equation*>
      </description>

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,m|}>> then we have
      either:

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<sigma\>\<circ\>\<rho\>|)><rsup|\|<around*|{|1,\<ldots\>,|}>><around*|(|i|)>>|<cell|=>|<cell|<around*|(|\<sigma\>\<circ\>\<rho\>|)><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|(|\<rho\><around*|(|i|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|\<rho\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<sigma\><rsup|<mid|\|><around*|{|1,\<ldots\>,m|}>>\<circ\>\<rho\><rsup|\|<around*|{|1,\<ldots\>,m|}>>|)><around*|(|i|)>>>>>
        </eqnarray*>

        <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,m|}>>>Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<sigma\>\<circ\>\<rho\>|)><rsup|\|<around*|{|1,\<ldots\>,|}>><around*|(|i|)>>|<cell|=>|<cell|i>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|\<rho\><rsup|\|<around*|{|1,\<ldots\>,m|}>><around*|(|i|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<sigma\><rsup|<mid|\|><around*|{|1,\<ldots\>,m|}>>\<circ\>\<rho\><rsup|\|<around*|{|1,\<ldots\>,m|}>>|)><around*|(|i|)>>>>>
        </eqnarray*>
      </description>

      So <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> we have
      <math|<around*|(|\<sigma\>\<circ\>\<rho\>|)><rsup|\|<around*|{|1,\<ldots\>,|}>><around*|(|i|)>=><math|<around*|(|\<sigma\><rsup|<mid|\|><around*|{|1,\<ldots\>,m|}>>\<circ\>\<rho\><rsup|\|<around*|{|1,\<ldots\>,m|}>>|)><around*|(|i|)>>
      proving that\ 

      <\equation*>
        <around*|(|\<sigma\>\<circ\>\<rho\>|)><rsup|\|<around*|{|1,\<ldots\>,|}>>=\<sigma\><rsup|<mid|\|><around*|{|1,\<ldots\>,m|}>>\<circ\>\<rho\><rsup|\|<around*|{|1,\<ldots\>,m|}>>
      </equation*>

      <item>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|k\<in\>\<bbb-N\>\|<text|If
        ><around*|{|\<sigma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>P<rsub|n><text|
        then ><around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|k>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>=<around*|(|<around*|(|\<sigma\><rsub|1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>|)>\<circ\>\<cdots\>\<circ\><around*|(|\<sigma\><rsub|k>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>Let <math|<around*|{|\<sigma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>P<rsub|n>>
        then

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|n>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation composition of a family of
          permutations>]>>>|<cell|<around*|(|\<sigma\><rsub|1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation composition of a family of
          permutations>]>>>|<cell|<around*|(|<around*|(|\<sigma\><rsub|1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>|)>\<circ\>\<cdots\>\<circ\><around*|(|\<sigma\><rsub|k>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>>>>>
        </eqnarray*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|<around*|{|\<sigma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>P<rsub|n>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|n+1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation composition of a family of
          permutations>]>>>|<cell|>>|<row|<cell|<around*|(|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|n>|)>\<circ\>\<sigma\><rsub|n+1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>>|<cell|\<equallim\><rsub|<around*|(|3|)>>>|<cell|>>|<row|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<cdots\>\<circ\>\<sigma\><rsub|n>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>\<circ\><around*|(|\<sigma\><rsub|n+1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|<around*|(|<around*|(|\<sigma\><rsub|1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>\<circ\>\<cdots\>\<circ\><around*|(|\<sigma\><rsub|n>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>|)>\<circ\><around*|(|\<sigma\><rsub|n+1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation composition of a family of
          permutations>]>>>|<cell|>>|<row|<cell|<around*|(|<around*|(|\<sigma\><rsub|1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>\<circ\>\<cdots\>\<circ\><around*|(|\<sigma\><rsub|n+1>|)><rsup|\|<around*|{|1,\<ldots\>,m|}>>|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|permutation extension (2)>Let <math|n\<in\>\<bbb-N\>> and
    <math|\<sigma\>\<in\>P<rsub|n+1>> such that
    <math|\<sigma\><around*|(|n+1|)>=n+1> [so that by [theorem:
    <reference|permutation on subset>] <math|\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>\<in\>P<rsub|n>>]
    then\ 

    <\equation*>
      <around*|(|\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>=\<sigma\>
    </equation*>

    <\proof>
      Let <math|k\<in\><around*|{|1,\<ldots\>,n+1|}>> then we have either:\ 

      <\description>
        <item*|<math|k\<in\><around*|{|1,\<ldots\>,n|}>>>Then
        <math|><math|<around*|(|\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>><around*|(|k|)>=\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>=\<sigma\><around*|(|n|)>>

        <item*|<math|k=n+1>>Then <math|<around*|(|\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>><around*|(|k|)>=n+1=\<sigma\><around*|(|n+1|)>>
      </description>
    </proof>

    So <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n+1|}>> we have
    <math|><math|<around*|(|\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>><around*|(|k|)>=\<sigma\><around*|(|k|)>>
    proving that\ 

    <\equation*>
      <around*|(|\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>=\<sigma\>
    </equation*>
  </corollary>

  We show now that every permutation of more then one element can be written
  as the composition of disjoint transpositions.

  <\theorem>
    <label|permutation as a composition of disjoint transpositions>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and
    <math|\<sigma\>\<in\>P<rsub|n>> then there exists a family
    <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>P<rsub|n>>
    with <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,l|}>>
    <math|i<rsub|k>\<neq\>j<rsub|k>> such that\ 

    <\equation*>
      \<sigma\>=<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>
    </equation*>
  </theorem>

  <\proof>
    We use mathematical induction to prove this, so let\ 

    <\equation*>
      S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|<text|If
      >\<sigma\>\<in\>P<rsub|n><text| then
      <math|\<sigma\>=<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)><text|
      where ><around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>P<rsub|n>>
      satisfies >i<rsub|k>\<neq\>j<rsub|k>
      \<forall\>k\<in\><around*|{|1,\<ldots\>,l|}>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|2\<in\>S>>The for <math|\<sigma\>\<in\>P<rsub|2>> we have
      for <math|\<sigma\><around*|(|1|)>> either:

      <\description>
        <item*|<math|\<sigma\><around*|(|1|)>=1>>Then we must have as
        <math|\<sigma\>> is injective that
        <math|\<sigma\><around*|(|1|)>=\<sigma\><around*|(|2|)>> hence
        <math|\<sigma\>=Id<rsub|<around*|{|1,\<ldots\>,2|}>>>. Define
        <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrow\>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,2|}>>>
        by <math|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|2>j<rsub|1>|)>=<around*|(|i<rsub|2>\<leftrightarrowlim\><rsub|2>j<rsub|2>|)>=<around*|(|1\<leftrightarrowlim\><rsub|2>2|)>>,
        a family of <with|font-series|bold|strict> transpositions. Then\ 

        <\equation*>
          <around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|2>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|2>\<leftrightarrowlim\><rsub|2>j<rsub|2>|)>|)>=<around*|(|1\<leftrightarrowlim\><rsub|2>2|)>\<circ\><around*|(|1\<leftrightarrowlim\><rsub|2>2|)>\<equallim\><rsub|<text|[theorem:
          <reference|permutation transosition
          proeprties>]>>Id<rsub|<around*|{|1,\<ldots\>,2|}>>=\<sigma\>
        </equation*>

        proving that in this cases <math|2\<in\>S>.

        <item*|<math|\<sigma\><around*|(|1|)>=2>>Then we must have as
        <math|\<sigma\>> is injective that
        <math|\<sigma\><around*|(|2|)>=\<sigma\><around*|(|1|)>> hence
        <math|\<sigma\>=<around*|(|1\<leftrightarrowlim\><rsub|2>2|)>>.
        Define <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrow\>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,1|}>>>
        by <math|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|2>j<rsub|1>|)>=<around*|(|1\<leftrightarrowlim\><rsub|2>2|)>>,
        a family of strict transpositions. Then\ 

        <\equation*>
          <around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|2>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|2>j<rsub|1>|)>|)>=<around*|(|1\<leftrightarrowlim\><rsub|2>2|)>=\<sigma\>
        </equation*>
      </description>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|\<sigma\>\<in\>P<rsub|n+1>> then for
      <math|\<sigma\><around*|(|n+1|)>> we have either:

      <\description>
        <item*|<math|\<sigma\><around*|(|n+1|)>=n+1>>Using [theorem:
        <reference|permutation on subset>] we have that
        <math|\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>\<in\>P<rsub|n>>.
        As <math|n\<in\>S> there exists a family of strict transpositions
        <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>P<rsub|n>><math|>
        such that

        <\equation*>
          \<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>=<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>
        </equation*>

        So that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<sigma\>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation extension
          (2)>]>>>|<cell|<around*|(|\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation extension
          (1)>]>>>|<cell|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation extension
          (1)>]>>>|<cell|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n+1>j<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n+1>j<rsub|l>|)>|)>>>>>
        </eqnarray*>

        proving that in this case <math|n+1\<in\>S>

        <item*|<math|\<sigma\><around*|(|n+1|)>\<neq\>n+1>>Then as
        <math|\<sigma\>> is a bijection there exists a
        <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|n+1|}>=<around*|{|1,\<ldots\>,n|}>>
        such that <math|\<sigma\><around*|(|i|)>=n+1>. Define then

        <\equation>
          <label|eq 11.77.094>\<rho\>=\<sigma\>\<circ\><around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)><text|
          a strict transposition as >i\<neq\>n+1
        </equation>

        then we have <math|\<rho\><around*|(|n+1|)>=<around*|(|\<sigma\><around*|(|<around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)><around*|(|i|)>|)>|)>=\<sigma\><around*|(|i|)>=n+1>,
        so using [theorem: <reference|permutation on subset>] we have that
        <math|\<rho\><rsub|\|<around*|{|1,\<ldots\>,n|}>>\<in\>P<rsub|n>>. As
        <math|n\<in\>S> there exists a <math|<around*|{|<around*|(|r<rsub|k>\<leftrightarrowlim\><rsub|n>s<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>P<rsub|n>>
        such that\ 

        <\equation*>
          \<rho\><rsub|\|<around*|{|1,\<ldots\>,n|}>>=<around*|(|<around*|(|r<rsub|1>\<leftrightarrowlim\><rsub|n>s<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|r<rsub|l>\<leftrightarrowlim\><rsub|n>s<rsub|l>|)>|)>
        </equation*>

        So that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<rho\>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation extension
          (2)>]>>>|<cell|<around*|(|\<rho\><rsub|\|<around*|{|1,\<ldots\>,n|}>>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|r<rsub|1>\<leftrightarrowlim\><rsub|n>s<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|r<rsub|l>\<leftrightarrowlim\><rsub|n>s<rsub|l>|)>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation extension
          (1)>]>>>|<cell|<around*|(|<around*|(|r<rsub|1>\<leftrightarrowlim\><rsub|n>s<rsub|1>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>\<circ\>\<cdots\>\<circ\><around*|(|r<rsub|l>\<leftrightarrowlim\><rsub|n>s<rsub|l>|)><rsup|\|<around*|{|1,\<ldots\>,n+1|}>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation extension
          (1)>]>>>|<cell|<around*|(|<around*|(|r<rsub|1>\<leftrightarrowlim\><rsub|n+1>s<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|r<rsub|l>\<leftrightarrowlim\><rsub|n+1>s<rsub|l>|)>|)><eq-number><label|eq
          11.78.094>>>>>
        </eqnarray*>

        Define now

        <\equation*>
          <around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n+1>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l+1|}>><text|
          by ><around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>=<choice|<tformat|<table|<row|<cell|<around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)><text|
          if >k=l+1>>|<row|<cell|<around*|(|r<rsub|k>\<leftrightarrowlim\><rsub|n+1>s<rsub|k>|)><text|
          if >k\<in\><around*|{|1,\<ldots\>,l|}>>>>>>
        </equation*>

        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<sigma\>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation transosition
          proeprties>]>>>|<cell|\<sigma\>\<circ\><around*|(|<around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)>\<circ\><around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|\<sigma\>\<circ\><around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)>|)>\<circ\><around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)>>>|<row|<cell|>|<cell|=>|<cell|\<rho\>\<circ\><around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|eq 11.78.094>]>>>|<cell|<around*|(|<around*|(|r<rsub|1>\<leftrightarrowlim\><rsub|n+1>s<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|r<rsub|l>\<leftrightarrowlim\><rsub|n+1>s<rsub|l>|)>|)>\<circ\><around*|(|i\<leftrightarrowlim\><rsub|n+1>n+1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n+1>j<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n+1>j<rsub|l>|)>|)>\<circ\><around*|(|i<rsub|n+1>\<leftrightarrowlim\><rsub|n+1>j<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|permutation composition of a family of
          permutations>]>>>|<cell|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n+1>j<rsub|1>|)><rsup|>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l+1>\<leftrightarrowlim\><rsub|n+1>j<rsub|l+1>|)>|)>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>
      </description>

      So in all cases we have <math|n+1\<in\>S>.
    </description>

    Mathematical induction proves then that
    <math|S=\<bbb-N\>\\<around*|{|1|}>=<around*|{|2,\<ldots\>\<infty\>|}>>
    completing the proof.
  </proof>

  Permutations are typically used to per mutate the arguments of functions
  with several arguments. Remember that <math|X<rsup|n>> is defined as
  <math|X<rsup|n>\<equallim\><rsub|<text|[definition: <reference|finite
  product of sets power>]>>A<rsup|<around*|{|1,\<ldots\>,n|}>>>

  <\definition>
    <label|permutation apply>Let <math|X,Y> be sets, <math|n\<in\>\<bbb-N\>>
    and <math|f:X<rsup|n>\<rightarrow\>Y> a function and
    <math|\<sigma\>\<in\>P<rsub|n>> then

    <\equation*>
      \<sigma\>f:X<rsup|n>\<rightarrow\>Y
    </equation*>

    is defined by\ 

    <\equation*>
      <around*|(|\<sigma\>f|)><around*|(|x|)>=f<around*|(|x\<circ\>\<sigma\>|)>
    </equation*>

    or using the notation [notation: <reference|finite power notation>]\ 

    <\equation*>
      \<sigma\>f<around*|(|x|)>=f<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>|)>
    </equation*>
  </definition>

  <\theorem>
    <label|permutation apply identity>Let <math|X,Y> be sets,
    <math|n\<in\>\<bbb-N\>> and <math|f:X<rsup|n>\<rightarrow\>Y> a function
    then

    <\equation*>
      Id<rsub|<around*|{|1,\<ldots\>,n|}>>f=f
    </equation*>
  </theorem>

  <\proof>
    <math|\<forall\>x\<in\>X<rsup|n>> we have
    <math|<around*|(|Id<rsub|<around*|{|1,\<ldots\>,n|}>>f|)><around*|(|x|)>=f<around*|(|x\<circ\>Id<rsub|<around*|{|1,\<ldots\>,n|}>>|)>=f<around*|(|x|)>>
    proving that <math|Id<rsub|<around*|{|1,\<ldots\>,n|}>>f=f>.
  </proof>

  <\theorem>
    <label|permutation apply and composition>Let <math|X,Y> be sets,
    <math|n\<in\>\<bbb-N\>> and <math|f:X<rsup|n>\<rightarrow\>Y> a function
    and <math|\<sigma\>,\<rho\>\<in\>P<rsub|n>> then\ 

    <\equation*>
      \<sigma\><around*|(|\<rho\>f|)>=<around*|(|\<rho\>\<circ\>\<sigma\>|)>f
    </equation*>
  </theorem>

  <\proof>
    <math|\<forall\>x\<in\>X<rsup|n>> we have

    <\equation*>
      \<sigma\><around*|(|\<rho\>f|)><around*|(|x|)>=<around*|(|\<sigma\>f|)><around*|(|x\<circ\>\<rho\>|)>=f<around*|(|<around*|(|x\<circ\>\<rho\>|)>\<circ\>\<sigma\>|)>=f<around*|(|x\<circ\><around*|(|\<rho\>\<circ\>\<sigma\>|)>|)>=<around*|(|\<rho\>\<circ\>\<sigma\>|)>f<around*|(|x|)>
    </equation*>

    so that <math|\<sigma\><around*|(|\<rho\>f|)>=<around*|(|\<rho\>\<circ\>\<sigma\>|)>f>.
  </proof>

  <\theorem>
    <label|permutation apply and field>Let <math|n\<in\>\<bbb-N\>>,
    <math|\<sigma\>\<in\>P<rsub|n>>, <math|X> a set,
    <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> a ring and
    <math|f,g:X<rsup|n>\<rightarrow\>Y> then we have using point wise product
    and adding of functions that

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>Y>
      <math|\<sigma\><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\><around*|(|\<sigma\>f|)>>

      <item><math|\<sigma\><around*|(|f+g|)>=\<sigma\>f+\<sigma\>g>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X<rsup|n>> then
      <math|<around*|(|\<sigma\><around*|(|\<alpha\>\<cdot\>f|)>|)><around*|(|x|)>=<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x\<circ\>\<sigma\>|)>\<equallim\><rsub|def>\<alpha\>\<cdot\><around*|(|f<around*|(|x\<circ\>\<sigma\>|)>|)>=\<alpha\>\<cdot\><around*|(|\<sigma\>f|)><around*|(|x|)>>
      proving that\ 

      <\equation*>
        \<sigma\><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\><around*|(|\<sigma\>f|)>
      </equation*>

      <item>Let <math|x\<in\>X<rsup|n>> then

      <\equation*>
        <around*|(|\<sigma\><around*|(|f+g|)>|)><around*|(|x|)>=<around*|(|f+g|)><around*|(|x\<circ\>\<sigma\>|)>\<equallim\><rsub|def>f*<around*|(|x\<circ\>\<sigma\>|)>=g<around*|(|x\<circ\>\<sigma\>|)>=<around*|(|\<sigma\>f|)><around*|(|x|)>+<around*|(|\<sigma\>g|)><around*|(|x|)>=<around*|(|\<sigma\>f+\<sigma\>g|)><around*|(|x|)>
      </equation*>

      proving that\ 

      <\equation*>
        \<sigma\><around*|(|f+g|)>=\<sigma\>f+\<sigma\>g
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|permutation transposition symmetry>Let <math|X,Y> be sets,
    <math|n\<in\>\<bbb-N\>> and <math|f:X<rsup|n>\<rightarrow\>Y> a function
    such that <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> we have <math|<around*|(|i\<leftrightarrowlim\><rsub|n>j|)>f=f>
    then if <math|l\<in\>\<bbb-N\>> and <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>P<rsub|n>>
    we have\ 

    <\equation*>
      <around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>f=f
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction on <math|l>, so take:

    <\equation*>
      S=<around*|{|l\<in\>\<bbb-N\>\|If \ f:X<rsup|n>\<rightarrow\>Y<text|
      satisfies >\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>
      <text|><around*|(|i\<leftrightarrowlim\><rsub|n>j|)>f=f<text| and>
      <around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>P<rsub|n><text|
      then <math|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>f=f>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Let <math|f:X<rsup|n>\<rightarrow\>Y<text|
      satisfies >\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>
      <around*|(|i\<leftrightarrowlim\><rsub|n>j|)>f=f<text| and>>
      <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>P<rsub|n>>
      then we have

      <\equation>
        <label|eq 11.79.094><around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>f\<equallim\><rsub|<text|[theorem:
        <reference|permutation composition of a family of
        permutations>]>><around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>f
      </equation>

      For <math|i<rsub|1>,j<rsub|1>> we have either:

      <\description>
        <item*|<math|i<rsub|1>=j<rsub|1>>>Then

        <math|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>f\<equallim\><rsub|<text|[theorem:
        <reference|permutation composition of a family of
        permutations>]>>Id<rsub|<around*|{|1,,\<ldots\>,n|}>>f\<equallim\><rsub|<text|[theorem:
        <reference|permutation apply identity>]>>f<rsub|>>

        <item*|<math|i<rsub|1>\<neq\>j<rsub|1>>>Then by the hypothesis we
        have <math|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>f=f>
      </description>

      combining this with [eq: <reference|eq 11.79.094>] proves that
      <math|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>f=f>
      hence <math|1\<in\>S>.

      <item*|<math|l\<in\>S\<Rightarrow\>l+1\<in\>S>>Let
      <math|f:X<rsup|n>\<rightarrow\>Y<text| satisfies
      >\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>
      <around*|(|i\<leftrightarrowlim\><rsub|n>j|)>f=f<text| and>>
      <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l+1|}>>\<subseteq\>P<rsub|n>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l+1>\<leftrightarrowlim\><rsub|n>j<rsub|l+1>|)>|)>f>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|permutation composition of a family of
        permutations>]>>>|<cell|>>|<row|<cell|<around*|(|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>\<circ\><around*|(|i<rsub|l+1>\<leftrightarrowlim\><rsub|n>j<rsub|l+1>|)>|)>f>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|permutation apply and composition>]>>>|<cell|>>|<row|<cell|<around*|(|i<rsub|l+1>\<leftrightarrowlim\><rsub|n>j<rsub|l+1>|)><around*|(|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>f|)>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|i<rsub|l+1>\<leftrightarrowlim\><rsub|n>j<rsub|l+1>|)>f<eq-number><label|eq
        11.80.094>>>>>
      </eqnarray*>

      For <math|i<rsub|l+1>,j<rsub|l+1>> we have either:

      <\description>
        <item*|<math|i<rsub|l+1>=j<rsub|l+1>>>Then

        <math|<around*|(|i<rsub|l+1>\<leftrightarrowlim\><rsub|n>j<rsub|l+1>|)>f\<equallim\><rsub|<text|[theorem:
        <reference|permutation composition of a family of
        permutations>]>>Id<rsub|<around*|{|1,,\<ldots\>,n|}>>f\<equallim\><rsub|<text|[theorem:
        <reference|permutation apply identity>]>>f<rsub|>>

        <item*|<math|i<rsub|l+1>\<neq\>j<rsub|l+1>>>Then by the hypothesis we
        have <math|<around*|(|i<rsub|l+1>\<leftrightarrowlim\><rsub|n>j<rsub|l+1>|)>f=f>
      </description>

      combining this with [eq: <reference|eq 11.80.094>] proves that
      <math|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l+1>\<leftrightarrowlim\><rsub|n>j<rsub|l+1>|)>|)>f=f>.
      So <math|n+1\<in\>S> concluding the proof by induction.
    </description>
  </proof>

  We can extend the above theorem to general permutation's.

  <\corollary>
    <label|permutation transpistion symmetry permutation>Let <math|X,Y> be
    sets, <math|n\<in\>\<bbb-N\>> and <math|f:X<rsup|n>\<rightarrow\>Y> a
    function such that <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    with <math|i\<neq\>j> we have <math|<around*|(|i\<leftrightarrowlim\><rsub|n>j|)>f=f>
    then <math|\<forall\>\<sigma\>\<in\>P<rsub|n>> we have
    <math|\<sigma\>f=f>.
  </corollary>

  <\proof>
    If <math|n=1> then <math|\<sigma\>=Id<rsub|<around*|{|1|}>>> so that
    <math|\<sigma\>f=Id<rsub|<around*|{|1|}>>f\<equallim\><rsub|<text|[theorem:
    <reference|permutation apply identity>]>>f>. To complete the proof we
    have to prove the case where <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>.
    Using [theorem: <reference|permutation as a composition of disjoint
    transpositions>] there exists a <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>P<rsub|n>>
    such that <math|\<sigma\>=<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>>.
    Further\ 

    <\equation*>
      \<sigma\>f=<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|l>\<leftrightarrowlim\><rsub|n>j<rsub|l>|)>|)>f\<equallim\><rsub|<text|[theorem:
      <reference|permutation transposition symmetry>]>>f
    </equation*>

    proving the corollary.
  </proof>

  <subsection|Sign of a Permutation>

  In the following definition we will use the multiplicative Abelian
  semi-group <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>, so we
  use the symbol <math|<big|prod>> instead of <math|<big|sum>>. Further let
  <math|n\<in\>\<bbb-N\><rsub|0>> then <math|<around*|{|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,n|}>\|i\<less\>j|}>\<subseteq\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,n|}>>
  a finite set [see [theorems: <reference|complex finite set
  condition>,<reference|complex cardinality properties>], so that by
  [theorem: <reference|subset of finite sets>]
  <math|<around*|{|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,n|}>\|i\<less\>j|}>>
  is a finite set. Hence the following definition makes sense.

  <\definition>
    <label|permutation phi function>Let <math|n\<in\>\<bbb-N\>> then we
    define\ 

    <\equation*>
      \<Phi\><rsub|n>:\<bbb-Z\><rsup|n>\<rightarrow\>\<bbb-Z\><text| by
      >\<Phi\><rsub|n><around*|(|x|)>=<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,j\<in\><around*|{|1,\<ldots\>,n|}>\<cdot\><around*|{|1,\<ldots\>,n|}>|)>\|i\<less\>j|}>><around*|(|x<rsub|i>-x<rsub|j>|)>
    </equation*>
  </definition>

  <\example>
    \ 

    <\enumerate>
      <item><math|\<Phi\><rsub|1><around*|(|x|)>=1>, as
      <math|<around*|{|<around*|(|i,j|)>\<in\><around*|{|1|}>\<times\><around*|{|1|}>\|i\<less\>j|}>=\<varnothing\>>
      we have <math|\<Phi\><rsub|1><around*|(|x|)>=<big|prod><rsub|<around*|(|i,j|)>\<in\>\<varnothing\>><around*|(|x<rsub|i>-x<rsub|j>|)>=1>
      [the neutral element of <math|<around*|\<langle\>|\<bbb-Z\>,\<cdot\>|\<rangle\>>>]].

      <item><math|\<Phi\><rsub|2><around*|(|x|)>=x<rsub|2>-x<rsub|1>>, as
      <math|<around*|{|<around*|(|i,j|)>\<in\><around*|{|1,2|}>\<times\><around*|{|1,2|}>\|i\<less\>j|}>=<around*|{|<around*|(|1,2|)>|}>>
      we have

      <\equation*>
        \<Phi\><rsub|2><around*|(|x|)>=<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|1,2|)>|}>><around*|(|x<rsub|i>-x<rsub|j>|)>=x<rsub|1>-x<rsub|2>
      </equation*>

      <item><math|\<Phi\><rsub|3><around*|(|x|)>=<around*|(|x<rsub|1>-x<rsub|2>|)>\<cdot\><around*|(|x<rsub|1>-x<rsub|3>|)>\<cdot\><around*|(|x<rsub|2>-x<rsub|3>|)>>,
      as

      <\equation*>
        <around*|{|<around*|(|i,j|)>\<in\><around*|{|1,2,3|}>\<times\><around*|{|1,2,3|}>\|i\<less\>j|}>=<around*|{|<around*|(|1,2|)>,<around*|(|1,3|)>,<around*|(|2,3|)>|}>
      </equation*>

      we have\ 

      <\equation*>
        \<Phi\><rsub|3><around*|(|x|)>=<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|1,2|)>,<around*|(|1,3|)>,<around*|(|2,3|)>|}>><around*|(|x<rsub|i>-x<rsub|j>|)>=<around*|(|x<rsub|1>-x<rsub|2>|)>\<cdot\><around*|(|x<rsub|1>-x<rsub|3>|)>\<cdot\><around*|(|x<rsub|2>-x<rsub|3>|)>
      </equation*>

      <item><text-dots>
    </enumerate>
  </example>

  <\lemma>
    <label|permutation phi function is not zero>Let <math|n\<in\>\<bbb-N\>>
    then for <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-Z\><rsup|n>>
    defined by <math|x<rsub|i>=i> then <math|\<Phi\><rsub|n><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<neq\>0>,
    in other words <math|\<Phi\><rsub|n><around*|(|1,\<ldots\>,n|)>\<neq\>0>.
  </lemma>

  <\proof>
    If we define <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> by
    <math|x<rsub|i>=i> then <math|\<forall\><around*|(|i,j|)>\<in\><around*|{|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>\|i\<less\>j|}>>
    we have <math|x<rsub|i>-x<rsub|j>=i-j\<less\>0>, so that
    <math|<around*|{|x<rsub|i>-x<rsub|j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>\|i\<less\>j|}>>\<subseteq\>\<bbb-R\>\\<around*|{|0|}>>.
    Using [theorem: <reference|sum non zero elements>] it follows then that
    <math|\<Phi\><rsub|n><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>\|i\<less\>j|}>><around*|(|x<rsub|i>-x<rsub|j>|)>\<neq\>0<rsub|>.>
  </proof>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|\<Phi\><rsub|n><around*|(|1,\<ldots\>,n|)>\<neq\>0|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Then <math|\<Phi\><rsub|1><around*|(|1|)>=<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,j|)>\<in\><around*|{|1|}>\<times\><around*|{|j|}>\|i\<less\>j|}>><around*|(|i-j|)>=<big|prod><rsub|<around*|(|i,j|)>\<in\>\<varnothing\>><around*|(|i-j|)>=1>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Then we have\ 
    </description>

    <\equation*>
      \;
    </equation*>

    \;
  </proof>

  <\lemma>
    <label|permutation apply transposition on phi>Let
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>=<around*|{|2,\<ldots\>,\<infty\>|}>>
    then if <math|k,l\<in\><around*|{|1,\<ldots\>,n|}>> with <math|k\<neq\>l>
    we have for the strict transposition <math|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)>>
    that\ 

    <\equation*>
      <around*|(|k\<leftrightarrowlim\><rsub|n>l|)>\<Phi\><rsub|n>=<around*|(|-1|)>\<cdot\>\<Phi\><rsub|n>
    </equation*>
  </lemma>

  <\proof>
    First we may always assume that <math|k\<less\>l> [otherwise exchange
    <math|k> and <math|l>]. Define\ 

    <\equation*>
      I=<around*|{|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,n|}>\|i\<less\>j|}>
    </equation*>

    Then we have the following excluding possibilities:

    <\description>
      <item*|<math|i=k>>Then as <math|k\<less\>l> and <math|i\<less\>j> we
      have for <math|j> either:

      <\description>
        <item*|<math|j\<less\>l>>Then <math|<around*|(|i,j|)>\<in\>J<rsub|0>>
        where <math|J<rsub|0>=<around*|{|<around*|(|k,j|)>\<in\>I\|k\<less\>j\<less\>l|}>\<subseteq\>I>

        <item*|<math|j=l>>Then <math|<around*|(|i,j|)>\<in\>J<rsub|1>> where
        <math|J<rsub|1>=<around*|{|<around*|(|k,l|)>|}>\<subseteq\>I>

        <item*|<math|l\<less\>j>>Then <math|<around*|(|i,j|)>\<in\>J<rsub|2>>
        where <math|J<rsub|2>=<around*|{|<around*|(|k,j|)>\<in\>I\|l\<less\>j|}>\<subseteq\>I>
      </description>

      <item*|<math|i\<neq\>k>>Then we have for <math|j> either:

      <\description>
        <item*|<math|i=l>>Then as <math|i\<less\>j> we have
        <math|<around*|(|i,j|)>\<in\>J<rsub|3>=<around*|{|<around*|(|l,j|)>\<in\>I\|l\<less\>j|}>\<subseteq\>I>
      </description>

      <\description>
        <item*|<math|i\<neq\>l>>Then we have for <math|j> either:

        <\description>
          <item*|<math|j=k>>Then as <math|i\<less\>j\<Rightarrow\>i\<less\>k>
          we have <math|<around*|(|i,j|)>\<in\>J<rsub|4>> where
          <math|J<rsub|4>=<around*|{|<around*|(|i,k|)>\<in\>I\|i\<less\>k|}>\<subseteq\>I>

          <item*|<math|j=l>>Then as <math|i=k> we have either:

          <\description>
            <item*|<math|i\<less\>k>>Then
            <math|<around*|(|i,j|)>\<in\>J<rsub|5>> where
            <math|J<rsub|5>=<around*|{|<around*|(|i,l|)>\<in\>I\|i\<less\>k|}>\<subseteq\>I>

            <item*|<math|k\<less\>i>>Then
            <math|<around*|(|i,j|)>\<in\>J<rsub|6> where
            J<rsub|6>=<around*|{|<around*|(|i,l|)>\<in\>I\|k\<less\>i\<less\>l|}>\<subseteq\>I>
          </description>

          <item*|<math|j\<neq\>l,k>>Then <math|<around*|(|i,j|)>\<in\>J<rsub|7>>
          where <math|J<rsub|7>=<around*|{|<around*|(|i,j|)>\<in\>I\|i\<neq\>k,l\<wedge\>j\<neq\>k,l|}>\<subseteq\>I>
        </description>
      </description>
    </description>

    So\ 

    <\equation*>
      I=J<rsub|0><big|cup>J<rsub|1><big|cup>J<rsub|2><big|cup>J<rsub|3><big|cup>J<rsub|4><big|cup>J<rsub|5><big|cup>J<rsub|6><big|cup>J<rsub|7>
    </equation*>

    Further for the possible intersections of
    <math|J<rsub|0>,J<rsub|1>,J<rsub|2>,J<rsub|3>,J<rsub|4>,J<rsub|5>,J<rsub|6>>
    and <math|J<rsub|7>> [using commutativity] we have\ 

    <\description>
      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|0><big|cap>J<rsub|1>>>Then
      <math|i=k\<less\>j\<less\>l\<wedge\>j=l> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|0><big|cap>J<rsub|2>>>Then
      <math|i=k\<less\>j\<less\>l\<wedge\>l\<less\>j> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|0><big|cap>J<rsub|3>>>Then
      <math|i=k\<less\>j\<less\>l\<wedge\>l\<less\>j> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|0><big|cap>J<rsub|4>>>Then
      <math|i=k\<less\>j\<less\>l\<wedge\>j=k> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|0><big|cap>J<rsub|5>>>Then
      <math|i=k\<less\>j\<less\>l\<wedge\>j=l> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|0><big|cap>J<rsub|6>>>Then
      <math|i=k\<less\>j\<less\>l\<wedge\>j=l> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|0><big|cap>J<rsub|7>>>Then
      <math|i=k\<less\>j\<less\>l\<wedge\>i\<neq\>k> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|1><big|cap>J<rsub|2>>>Then
      <math|i=k\<wedge\>j=l\<wedge\>l\<less\>j> a contradiction

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|1><big|cap>J<rsub|3>>>Then
      <math|i=k\<wedge\>j=l\<wedge\>l\<less\>j> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|1><big|cap>J<rsub|4>>>Then
      <math|i=k\<wedge\>j=l\<wedge\>i\<less\>k> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|1><big|cap>J<rsub|5>>>Then
      <math|i=k\<wedge\>j=l\<wedge\>i\<less\>k> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|1><big|cap>J<rsub|6>>>Then
      <math|i=k\<wedge\>j=l\<wedge\>k\<less\>i> a contradiction

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|1><big|cap>J<rsub|7>>>Then
      <math|i=k\<wedge\>j=l\<wedge\>i\<neq\>k> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|2><big|cap>J<rsub|3>>>Then
      <math|i=k\<wedge\>l\<less\>j\<wedge\>i=l> contradicting
      <math|k\<less\>l>.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|2><big|cap>J<rsub|4>>>Then
      <math|i=k\<wedge\>l\<less\>j\<wedge\>j=k> contradicting
      <math|i\<less\>j>.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|2><big|cap>J<rsub|5>>>Then
      <math|i=k\<wedge\>l\<less\>j\<wedge\>i\<less\>k> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|2><big|cap>J<rsub|6>>>Then
      <math|i=k\<wedge\>l\<less\>j\<wedge\>k\<less\>i> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|2><big|cap>J<rsub|7>>>Then
      <math|i=k\<wedge\>l\<less\>j\<wedge\>i\<neq\>k> a contradiction.\ 

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|3><big|cap>J<rsub|4>>>Then
      <math|i=l\<wedge\>l\<less\>j\<wedge\>i\<less\>k> giving
      <math|l\<less\>k> contradicting <math|k\<less\>l>.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|3><big|cap>J<rsub|5>>>Then
      <math|i=l\<wedge\>l\<less\>j\<wedge\>i\<less\>k> giving
      <math|l\<less\>k> contradicting <math|k\<less\>l>.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|3><big|cap>J<rsub|6>>>Then
      <math|i=l\<wedge\>l\<less\>j\<wedge\>l=j> a contradicting.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|3><big|cap>J<rsub|7>>>Then
      <math|i=l\<wedge\>l\<less\>j\<wedge\>i\<neq\>k> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|4><big|cap>J<rsub|5>>>Then
      <math|i\<less\>k=j\<wedge\>j=l> contradicting <math|k\<less\>l>.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|4><big|cap>J<rsub|6>>>Then
      <math|i\<less\>k=j\<wedge\>j=l> contradicting <math|k\<less\>l>.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|4><big|cap>J<rsub|7>>>Then
      <math|i\<less\>k=j\<wedge\>j=l> contradicting <math|k\<less\>l>.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|5><big|cap>J<rsub|6>>>Then
      <math|i\<less\>k\<wedge\>j=l\<wedge\>k\<less\>i> a contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|5><big|cap>J<rsub|7>>>Then
      <math|i\<less\>k\<less\>i\<wedge\>j=l\<wedge\>j\<neq\>l> a
      contradiction.

      <item*|<math|<around*|(|i,j|)>\<in\>J<rsub|6><big|cap>J<rsub|7>>>Then
      <math|k\<less\>i\<wedge\>j=l\<wedge\>j\<neq\>l> a contradiction.
    </description>

    So\ 

    <\equation*>
      I=<big|cup><rsub|i\<in\><around*|{|,\<ldots\>,7|}>>J<rsub|i><text| and
      >\<forall\>i,j\<in\>I<text| with >i\<neq\>j<text| we have
      >J<rsub|i><big|cap>J<rsub|j>=\<varnothing\>
    </equation*>

    So that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<Phi\><rsub|n><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>I><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|prod><rsub|m=0><rsup|7><around*|(|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|m>><around*|(|x<rsub|i>-x<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|m=0><rsup|7>Q<rsub|m><eq-number><label|eq
      11.081.94>>>>>
    </eqnarray*>

    where\ 

    <\equation>
      <label|eq 11.82.094>Q<rsub|m>=<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|m>><around*|(|x<rsub|i>-x<rsub|j>|)>
    </equation>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)>\<Phi\><rsub|n>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>I><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|prod><rsub|m=0><rsup|7><around*|(|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|m>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|m=0><rsup|7>R<rsub|m><eq-number><label|eq
      11.83.094>>>>>
    </eqnarray*>

    where\ 

    <\equation>
      <label|eq 11.84.094>R<rsub|m>=<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|m>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>
    </equation>

    Now we have:\ 

    <\description>
      <item*|<math|R<rsub|0>>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<rsub|0>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><rsub|><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|k\<less\>j\<less\>l|}>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|k\<less\>j\<less\>l|}>><around*|(|x<rsub|l>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|l>-x<rsub|j>|)><eq-number><label|eq
        11.85.094>>>>>
      </eqnarray*>

      Define now\ 

      <\equation*>
        \<beta\>:J<rsub|6>=<around*|{|<around*|(|i,l|)>\<in\>I\|k\<less\>i\<less\>l|}>\<rightarrow\>J<rsub|0>=<around*|{|<around*|(|k,j|)>\<in\>I\|k\<less\>j\<less\>l|}><text|
        by >\<beta\><around*|(|i,j|)>=<around*|(|k,i|)>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>Let <math|<around*|(|i,j|)>,<around*|(|i<rprime|'>,j<rprime|'>|)>\<in\>J<rsub|7>>
        with <math|\<beta\><around*|(|i,j|)>=\<beta\><around*|(|i<rprime|'>,j<rprime|'>|)>>
        then <math|j=l=j<rprime|'>> and

        \ <math|<around*|(|k,i|)>=<around*|(|k,i<rprime|'>|)>\<Rightarrow\>i=i<rprime|'>>
        proving that <math|<around*|(|i,j|)>=<around*|(|i<rprime|'>,j<rprime|'>|)>>.

        <item*|surjectivity>Let <math|<around*|(|r,s|)>\<in\>J<rsub|0>> then
        <math|k=r> and <math|k\<less\>s\<less\>l> so that
        <math|<around*|(|s,l|)>\<in\>J<rsub|7>>\ 

        which, as <math|\<beta\><around*|(|s,l|)>=<around*|(|k,s|)>=<around*|(|r,s|)>>,
        proves surjectivity.
      </description>

      proving that\ 

      <\equation*>
        \<beta\>:J<rsub|6>\<rightarrow\>J<rsub|0><text| is a bijection>
      </equation*>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|l>-x<rsub|j>|)>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|l>-x<rsub|<around*|(|i,j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|x<rsub|l>-x<rsub|\<beta\><around*|(|i,j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|x<rsub|l>-x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|<around*|(|-1|)>\<cdot\><around*|(|x<rsub|i>-x<rsub|l>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of sums (2)>]>>>|<cell|<around*|(|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|-1|)>|)>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|x<rsub|i>-x<rsub|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum constant family>]>>>|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,l|)>\<in\>I\|k\<less\>i\<less\>l|}>><around*|(|x<rsub|i>-x<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,l|)>\<in\>I\|k\<less\>i\<less\>l|}>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|card<around*|(|j<rsub|6>|)>>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|x<rsub|i>-x<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|card<around*|(|j<rsub|6>|)>>\<cdot\>Q<rsub|6>>>>>
      </eqnarray*>

      combining the above with [eq: <reference|eq 11.85.094>] gives\ 

      <\equation>
        <label|eq 11.86.094>R<rsub|0>=<around*|(|-1|)><rsup|card<around*|(|j<rsub|6>|)>>\<cdot\>Q<rsub|6>
      </equation>

      <item*|<math|R<rsub|1>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<rsub|1>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|1>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>|}>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>>>>|<cell|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|k|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|l|)>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|l>-x<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)>\<cdot\><around*|(|x<rsub|k>-x<rsub|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>>>>|<cell|<around*|(|-1|)>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>|}>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|1>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)>\<cdot\>Q<rsub|1>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 11.87.094>R<rsub|1>=<around*|(|-1|)>\<cdot\>Q<rsub|1>
      </equation>

      <item*|<math|R<rsub|2>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<rsub|3>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|2>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|l\<less\>j|}>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|l\<less\>j|}>><around*|(|x<rsub|l>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|2>><around*|(|x<rsub|l>-x<rsub|j>|)><eq-number><label|eq
        11.88.094>>>>>
      </eqnarray*>

      Define\ 

      <\equation*>
        \<beta\>:J<rsub|3>=<around*|{|<around*|(|l,j|)>\<in\>I\|l\<less\>j|}>\<rightarrow\>J<rsub|2>=<around*|{|<around*|(|k,j|)>\<in\>I\|l\<less\>j|}><text|
        by >\<beta\><around*|(|i,j|)>=<around*|(|k,j|)>
      </equation*>

      then we have:\ 

      <\description>
        <item*|injectivity>Let <math|<around*|(|i,j|)>,<around*|(|i<rprime|'>,j<rprime|'>|)>\<in\>J<rsub|3>>
        with <math|\<beta\><around*|(|i,j|)>=\<beta\><around*|(|i<rprime|'>,j<rprime|'>|)>>
        then <math|i=l=i<rprime|'>> and

        \ <math|<around*|(|k,j|)>=<around*|(|k,j<rprime|'>|)>\<Rightarrow\>j=j<rprime|'>>
        so that <math|<around*|(|i,j|)>=<around*|(|i<rprime|'>,j<rprime|'>|)>>.

        <item*|surjectivity>Let <math|<around*|(|r,s|)>\<in\>J<rsub|2>> then
        <math|r=k> and <math|l\<less\>s> so that
        <math|<around*|(|l,s|)>\<in\>J<rsub|3>>\ 

        which, as <math|\<beta\><around*|(|l,s|)>=<around*|(|k,s|)>=<around*|(|r,s|)>>,
        proves surjectivity.
      </description>

      Hence\ 

      <\equation*>
        \<beta\>:J<rsub|3>\<rightarrow\>J<rsub|2><text| is a bijection>
      </equation*>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|2>><around*|(|x<rsub|l>-x<rsub|j>|)>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|2>><around*|(|x<rsub|l>-x<rsub|<around*|(|i,j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|3>><around*|(|x<rsub|l>-x<rsub|\<beta\><around*|(|i,j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|3>><around*|(|x<rsub|l>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|l,j|)>\<in\>I\|l\<less\>j|}>><around*|(|x<rsub|l>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|l,j|)>\<in\>I\|l\<less\>j|}>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|3>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|Q<rsub|3>>>>>
      </eqnarray*>

      which combined with [eq: <reference|eq 11.88.094>] proves that\ 

      <\equation>
        <label|eq 11.89.094>R<rsub|2>=Q<rsub|3>
      </equation>

      <item*|<math|R<rsub|3>>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<rsub|3>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|3>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|l,j|)>\<in\>I\|l\<less\>j|}>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|l\<less\>j|}>><around*|(|x<rsub|k>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|3>><around*|(|x<rsub|k>-x<rsub|j>|)><eq-number><label|eq
        11.90.094>>>>>
      </eqnarray*>

      Define\ 

      <\equation*>
        \<beta\>:J<rsub|2>=<around*|{|<around*|(|k,j|)>\<in\>I\|l\<less\>j|}>\<rightarrow\>J<rsub|3>=<around*|{|<around*|(|l,j|)>\<in\>I\|l\<less\>j|}>
        <text|by >\<beta\><around*|(|i,j|)>=<around*|(|l,j|)>
      </equation*>

      then we have\ 

      <\description>
        <item*|injectivity>Let <math|<around*|(|i,j|)>,<around*|(|i<rprime|'>,j<rprime|'>|)>\<in\>J<rsub|2>>
        with <math|\<beta\><around*|(|i,j|)>=\<beta\><around*|(|i<rprime|'>,j<rprime|'>|)>>
        then <math|i=k=i<rprime|'>> and <math|<around*|(|l,j|)>=<around*|(|l,j<rprime|'>|)>\<Rightarrow\>j=j<rprime|'>>
        proving <math|<around*|(|i,j|)>=<around*|(|i<rprime|'>,j<rprime|'>|)>>.

        <item*|surjectivity>Let <math|<around*|(|r,s|)>\<in\>J<rsub|3>> then
        <math|r=l> and <math|l\<less\>s>, take <math|<around*|(|k,s|)>> then
        <math|<around*|(|k,s|)>\<in\>J<rsub|3>> and
        <math|\<beta\><around*|(|k,s|)>=<around*|(|l,s|)>=<around*|(|r,s|)>>
        proving surjectivity.\ 
      </description>

      hence we have\ 

      <\equation*>
        \<beta\>:J<rsub|2>\<rightarrow\>J<rsub|3><text| is a bijection>
      </equation*>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|3>><around*|(|x<rsub|k>-x<rsub|j>|)>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|3>><around*|(|x<rsub|k>-x<rsub|<around*|(|i,j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|2>><around*|(|x<rsub|k>-x<rsub|\<beta\><around*|(|i,j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|2>><around*|(|x<rsub|k>-x<rsub|<around*|(|l,j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|2>><around*|(|x<rsub|k>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|l\<less\>j|}>><around*|(|x<rsub|k>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|l\<less\>j|}>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|2>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|Q<rsub|2>>>>>
      </eqnarray*>

      proving together with [eq: <reference|eq 11.90.094>] that\ 

      <\equation>
        <label|eq 11.91.094>R<rsub|3>=Q<rsub|2>
      </equation>

      <item*|<math|R<rsub|4>>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<rsub|4>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|4>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,k|)>\<in\>I\|i\<less\>k|}>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,k|)>\<in\>I\|i\<less\>k|}>><around*|(|x<rsub|i>-x<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|4>><around*|(|x<rsub|i>-x<rsub|l>|)><eq-number><label|eq
        11.92.094>>>>>
      </eqnarray*>

      Define\ 

      <\equation*>
        \<beta\>:J<rsub|5>=<around*|{|<around*|(|i,l|)>\<in\>I\|i\<less\>k|}>\<rightarrow\>J<rsub|4>=<around*|{|<around*|(|i,k|)>\<in\>I\|i\<less\>k|}><text|
        by >\<beta\><around*|(|i,j|)>=<around*|(|i,k|)>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>Let <math|<around*|(|i,j|)>,<around*|(|i<rprime|'>,j<rprime|'>|)>\<in\>J<rsub|5>>
        with <math|\<beta\><around*|(|i,j|)>=\<beta\><around*|(|i<rprime|'>,j<rprime|'>|)>>
        then <math|j-l-j<rprime|'>> and <math|<around*|(|i,k|)>=<around*|(|i<rprime|'>,k|)>\<Rightarrow\>i=i<rprime|'>>
        so that <math|<around*|(|i,j|)>=<around*|(|i<rprime|'>,j<rprime|'>|)>>.

        <item*|surjectivity>Let <math|<around*|(|r,s|)>\<in\>J<rsub|4>> then
        <math|s=k> and <math|r\<less\>k> then for <math|<around*|(|r,l|)>> we
        have <math|<around*|(|r,l|)>\<in\>J<rsub|4>> and
        <math|\<beta\><around*|(|r,l|)>=<around*|(|r,k|)>=<around*|(|r,s|)>>
        proving surjectivity.
      </description>

      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|4>><around*|(|x<rsub|i>-x<rsub|l>|)>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|4>><around*|(|x<rsub|<around*|(|i,j|)><rsub|1>>-x<rsub|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|5>><around*|(|x<rsub|\<beta\><around*|(|i,j|)><rsub|1>>-x<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|5>><around*|(|x<rsub|<around*|(|i,k|)><rsub|1>>-x<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|5>><around*|(|x<rsub|i>-x<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,l|)>\<in\>I\|i\<less\>k|}>><around*|(|x<rsub|i>-x<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,l|)>\<in\>I\|i\<less\>k|}>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|5>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|Q<rsub|5>>>>>
      </eqnarray*>

      combining this with [eq: <reference|eq 11.92.094>] gives\ 

      <\equation>
        <label|eq 11.93.094>R<rsub|4>=Q<rsub|5>
      </equation>

      <item*|<math|R<rsub|5>>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<rsub|5>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|5>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,l|)>\<in\>I\|i\<less\>k|}>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,l|)>\<in\>I\|i\<less\>k|}>><around*|(|x<rsub|i>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|5>><around*|(|x<rsub|i>-x<rsub|k>|)><eq-number><label|eq
        11.94.094>>>>>
      </eqnarray*>

      Define\ 

      <\equation*>
        \<beta\>:J<rsub|4>=<around*|{|<around*|(|i,k|)>\<in\>I\|i\<less\>k|}>\<rightarrow\>J<rsub|5>=<around*|{|<around*|(|i,l|)>\<in\>I\|i\<less\>k|}><text|
        by >\<beta\><around*|(|i,j|)>=<around*|(|i,l|)>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>Let <math|<around*|(|i,j|)>,<around*|(|i<rprime|'>,j<rprime|'>|)>\<in\>J<rsub|4>>
        with <math|\<beta\><around*|(|i,j|)>=\<beta\><around*|(|i<rprime|'>,j<rprime|'>|)>>
        then <math|j=k=j<rprime|'>> and <math|<around*|(|i,l|)>=<around*|(|i<rprime|'>,l|)>\<Rightarrow\>i=i<rprime|'>>
        proving that <math|<around*|(|i,j|)>=<around*|(|i<rprime|'>,j<rprime|'>|)>>.

        <item*|surjectivity>Let <math|<around*|(|r,s|)>\<in\>J<rsub|5>> then
        <math|s=l> and <math|r\<less\>k> then for <math|<around*|(|r,k|)>> we
        have <math|<around*|(|r,k|)>\<in\>J<rsub|4>> and
        <math|\<beta\><around*|(|r,k|)>=<around*|(|r,l|)>=<around*|(|r,s|)>>.
      </description>

      proving that\ 

      <\equation*>
        \<beta\>:J<rsub|4>\<rightarrow\>J<rsub|5><text| is a bijection>
      </equation*>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|5>><around*|(|x<rsub|i>-x<rsub|k>|)>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|5>><around*|(|x<rsub|<around*|(|i,j|)><rsub|1>>-x<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|4>><around*|(|x<rsub|\<beta\><around*|(|i,j|)><rsub|1>>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|4>><around*|(|x<rsub|<around*|(|i,l|)><rsub|1>>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|4>><around*|(|x<rsub|i>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,k|)>\<in\>I\|i\<less\>k|}>><around*|(|x<rsub|i>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,k|)>\<in\>I\|i\<less\>k|}>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|4>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|Q<rsub|4>>>>>
      </eqnarray*>

      combining the above with [eq: <reference|eq 11.94.094>] proves that\ 

      <\equation>
        <label|eq 11.95.094>R<rsub|5>=Q<rsub|4>
      </equation>

      <item*|<math|R<rsub|6>>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<rsub|6>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,l|)>\<in\>I\|k\<less\>i\<less\>l|}>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,l|)>\<in\>I\|k\<less\>i\<less\>l|}>><around*|(|x<rsub|i>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|x<rsub|i>-x<rsub|k>|)><eq-number><label|eq
        11.96.094>>>>>
      </eqnarray*>

      Define\ 

      <\equation*>
        \<beta\>:J<rsub|0>=<around*|{|<around*|(|k,j|)>\<in\>I\|k\<less\>j\<less\>l|}>\<rightarrow\>J<rsub|6>=<around*|{|<around*|(|i,l|)>\<in\>I\|k\<less\>i\<less\>l|}><text|
        by >\<beta\><around*|(|i,j|)>=<around*|(|j,l|)>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>Let <math|<around*|(|i,j|)>,<around*|(|i<rprime|'>,j<rprime|'>|)>\<in\>J<rsub|0>>
        with <math|\<beta\><around*|(|i,j|)>=\<beta\><around*|(|i<rprime|'>,j<rprime|'>|)>>
        then <math|i=k=i<rprime|'>> and <math|<around*|(|j,l|)>=<around*|(|j<rprime|'>,l|)>\<Rightarrow\>j=j<rprime|'>>
        then <math|<around*|(|i,j|)>=<around*|(|i<rprime|'>,j<rprime|'>|)>>.

        <item*|surjectivity>Let <math|<around*|(|r,s|)>\<in\>J<rsub|6>> then
        <math|s=l> and <math|k\<less\>r\<less\>l> so that for
        <math|<around*|(|k,r|)>> we have <math|<around*|(|k,r|)>\<in\>J<rsub|0>>
        and <math|\<beta\><around*|(|k,r|)>=<around*|(|r,l|)>=<around*|(|r,s|)>>.
      </description>

      hence\ 

      <\equation>
        <label|eq 11.97.094>\<beta\>:J<rsub|0>\<rightarrow\>J<rsub|6><text|
        is a bijection so that <math|card<around*|(|J<rsub|0>|)>=card<around*|(|J<rsub|6>|)>>>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|x<rsub|i>-x<rsub|k>|)>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|6>><around*|(|x<rsub|<around*|(|i,j|)><rsub|1>>-x<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|\<beta\><around*|(|i,j|)><rsub|1>>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|<around*|(|j,l|)><rsub|1>>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|j>-x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|<around*|(|-1|)>\<cdot\><around*|(|x<rsub|k>-x<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of sums (2)>]>>>|<cell|<around*|(|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|-1|)>|)>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|k>-x<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum constant family>]>>>|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|0>|)>>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|k>-x<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.97.094>]>>>|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|k>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|k\<less\>j\<less\>l|}>><around*|(|x<rsub|k>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,j|)>\<in\>I\|k\<less\>j\<less\>l|}>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\><big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|0>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\>Q<rsub|0>>>>>
      </eqnarray*>

      which together with [eq: <reference|eq 11.96.094>] proves that\ 

      <\equation>
        <label|eq 11.98.094>J<rsub|0>=<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\>Q<rsub|0>
      </equation>

      <item*|<math|R<rsub|7>>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|J<rsub|7>>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|7>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,j|)>\<in\>I\|i\<neq\>k,l\<wedge\>j\<neq\>k,l|}>><around*|(|x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|i|)>>-x<rsub|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,j|)>\<in\>I\|i\<neq\>k,l\<wedge\>j\<neq\>k,l|}>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|<around*|(|i,j|)>\<in\>J<rsub|7>><around*|(|x<rsub|i>-x<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|Q<rsub|7>>>>>
      </eqnarray*>

      then\ 

      <\equation>
        <label|eq 11.99.094>J<rsub|7>=Q<rsub|7>
      </equation>

      Finally we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|k\<leftrightarrowlim\><rsub|n>l|)>\<Phi\><rsub|n>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.83.094>]>>>|<cell|>>|<row|<cell|R<rsub|1>\<cdot\>R<rsub|2>\<cdot\>R<rsub|3>\<cdot\>R<rsub|4>\<cdot\>R<rsub|5>\<cdot\>R<rsub|6>\<cdot\>R<rsub|7>>|<cell|\<equallim\><rsub|<text|[eqs:
        <reference|eq 11.86.094>,<reference|eq 11.87.094>,<reference|eq
        11.89.094>,<reference|eq 11.91.094>,<reference|eq
        11.93.094>,<reference|eq 11.95.094>,<reference|eq
        11.98.094>,<reference|eq 11.99.094>]>>>|<cell|>>|<row|<cell|<around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\>Q<rsub|6>\<cdot\><around*|(|-1|)>\<cdot\>Q<rsub|1>\<cdot\>Q<rsub|3>\<cdot\>Q<rsub|2>\<cdot\>Q<rsub|5>\<cdot\>Q<rsub|4>\<cdot\><around*|(|-1|)><rsup|card<around*|(|J<rsub|6>|)>>\<cdot\>Q<rsub|0>\<cdot\>Q<rsub|7>>|<cell|=>|<cell|>>|<row|<cell|-<around*|(|Q<rsub|1>\<cdot\>Q<rsub|2>\<cdot\>Q<rsub|3>\<cdot\>Q<rsub|4>\<cdot\>Q<rsub|5>\<cdot\>Q<rsub|6>\<cdot\>Q<rsub|7>|)>>|<cell|=>|<cell|>>|<row|<cell|-\<Phi\><rsub|n><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <around*|(|k\<leftrightarrowlim\><rsub|n>l|)>\<Phi\><rsub|n>=-\<Phi\><rsub|n>
      </equation*>
    </description>
  </proof>

  <\corollary>
    <label|permutation sign of composition of transpositions>Let
    <math|n,m\<in\>\<bbb-N\>> and <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>P<rsub|n>>
    such that <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,m|}>>
    <math|i<rsub|k>\<neq\>j<rsub|k>> then\ 

    <\equation*>
      <around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m>\<leftrightarrowlim\><rsub|n>j<rsub|m>|)>|)>\<Phi\><rsub|n>=<around*|(|-1|)><rsup|m>\<cdot\>\<Phi\><rsub|n>
    </equation*>
  </corollary>

  <\proof>
    We prove this by induction, so let

    <\equation*>
      S=<around*|{|m\<in\>\<bbb-N\>\|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m>\<leftrightarrowlim\><rsub|n>j<rsub|m>|)>|)>\<Phi\><rsub|n>=<around*|(|-1|)><rsup|m>\<cdot\>\<Phi\><rsub|n>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>><math|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>|)>\<Phi\><rsub|n>=<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<Phi\><rsub|n>\<equallim\><rsub|<text|[theorem:
      <reference|permutation apply transposition on
      phi>]>><around*|(|-1|)>\<cdot\>\<Phi\><rsub|n>=<around*|(|-1|)><rsup|1>\<cdot\>\<Phi\><rsub|n>>
      proving that <math|1\<in\>S>.

      <item*|<math|m\<in\>S\<Rightarrow\>m+1\<in\>S>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m+1>\<leftrightarrowlim\><rsub|n>j<rsub|m+1>|)>|)>\<Phi\><rsub|n>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|permutation composition of a family of
        permutations>]>>>|<cell|>>|<row|<cell|<around*|(|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m>\<leftrightarrowlim\><rsub|n>j<rsub|m>|)>|)>\<circ\><around*|(|i<rsub|m+1>\<leftrightarrowlim\><rsub|n>j<rsub|m+1>|)>|)>\<Phi\><rsub|n>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|permutation apply and composition>]>>>|<cell|>>|<row|<cell|<around*|(|i<rsub|m+1>\<leftrightarrowlim\><rsub|n>j<rsub|m+1>|)><around*|(|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m>\<leftrightarrowlim\><rsub|n>j<rsub|m>|)>|)>\<Phi\><rsub|n>|)>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|<around*|(|i<rsub|m+1>\<leftrightarrowlim\><rsub|n>j<rsub|m+1>|)><around*|(|<around*|(|-1|)><rsup|m>\<cdot\>\<Phi\><rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|permutation apply and field>]>>>|<cell|>>|<row|<cell|<around*|(|-1|)><rsup|m>\<cdot\><around*|(|<around*|(|i<rsub|m+1>\<leftrightarrowlim\><rsub|n>j<rsub|m+1>|)>\<Phi\><rsub|n>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|permutation apply transposition on
        phi>]>>>|<cell|>>|<row|<cell|<around*|(|-1|)><rsup|m>\<cdot\><around*|(|-1|)>\<cdot\>\<Phi\><rsub|n>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|-1|)><rsup|m+1>\<cdot\>\<Phi\><rsub|n>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|m+1\<in\>S>
    </description>
  </proof>

  <\theorem>
    <label|permutation existence of sign>Let <math|n\<in\>\<bbb-N\>>and
    <math|\<sigma\>\<in\>P<rsub|n>> then there exist a
    <with|font-series|bold|unique> <math|\<varepsilon\><rsub|\<sigma\>>\<in\><around*|{|-1,1|}>>
    such that

    <\equation*>
      \<sigma\>\<Phi\><rsub|n>=\<varepsilon\><rsub|\<sigma\>>\<cdot\>\<Phi\><rsub|n>
    </equation*>
  </theorem>

  <\proof>
    If <math|n\<in\>\<bbb-N\>> then we have either\ 

    <\description>
      <item*|<math|n=1>>Then if <math|\<sigma\>\<in\>P<rsub|1>> we have that
      <math|P<rsub|1>=Id<rsub|<around*|{|1|}>>> so that
      <math|\<sigma\>\<Phi\><rsub|1>=\<sigma\>Id<rsub|<around*|{|1|}>>\<equallim\><rsub|<text|[theorem:
      <reference|permutation apply identity>]>>\<Phi\><rsub|1>> so that if we
      take <math|\<varepsilon\><rsub|\<sigma\>>=1> that
      <math|\<sigma\>\<Phi\><rsub|1>=\<varepsilon\><rsub|\<sigma\>>\<Phi\><rsub|1>>.

      <item*|<math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>>Using [theorem:
      <reference|permutation as a composition of disjoint transpositions>]
      there exist a <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>P<rsub|n>>
      with <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,m|}>>
      <math|i<rsub|k>\<neq\>j<rsub|k>> such that\ 

      <\equation*>
        \<sigma\>=<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m>\<leftrightarrowlim\><rsub|n>j<rsub|m>|)>|)>
      </equation*>

      Hence by [theorem: <reference|permutation sign of composition of
      transpositions>] we have that <math|<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m>\<leftrightarrowlim\><rsub|n>j<rsub|m>|)>|)>\<Phi\><rsub|n>=<around*|(|-1|)><rsup|m>\<cdot\>\<Phi\><rsub|n>>.
      So if we take <math|\<varepsilon\><rsub|\<sigma\>>=<around*|(|-1|)><rsup|m>>
      we have <math|> <math|\<sigma\>\<Phi\><rsub|n>=\<varepsilon\><rsub|\<sigma\>>\<cdot\>\<Phi\><rsub|n>>
    </description>

    So in all cases there exists a <math|\<varepsilon\><rsub|\<sigma\>>>

    <\equation*>
      \<sigma\>\<Phi\><rsub|n>=\<varepsilon\><rsub|\<sigma\>>\<cdot\>\<Phi\><rsub|n>
    </equation*>

    proving existence. Now for uniqueness assume that there exists a
    <math|\<delta\><rsub|\<sigma\>>> such that
    <math|\<sigma\>\<Phi\><rsub|n>=\<delta\><rsub|\<sigma\>>\<cdot\>\<Phi\><rsub|n>>
    then <math|\<varepsilon\><rsub|\<sigma\>>\<cdot\>\<sigma\>=\<delta\><rsub|\<sigma\>>\<cdot\>\<sigma\>>.
    So <math|\<varepsilon\><rsub|\<sigma\>>\<cdot\>\<sigma\><around*|(|1,\<ldots\>,n|)>=\<delta\><rsub|\<sigma\>>\<cdot\>\<sigma\><around*|(|1,\<ldots\>,n|)>>,
    as by [theorem: <reference|permutation phi function is not zero>] we have
    that <math|\<sigma\><around*|(|1,\<ldots\>,n|)>\<neq\>0>, so by
    multiplying both sides with <math|\<sigma\><around*|(|1,\<ldots\>,n|)><rsup|-1>>
    we have <math|\<varepsilon\><rsub|\<sigma\>>=\<delta\><rsub|\<sigma\>>>.
  </proof>

  The above theorem ensures that the following definition makes sense.

  <\definition>
    <label|permutation sign><index|<math|sign<around*|(|\<sigma\>|)>>>Let
    <math|n\<in\>\<bbb-N\>>and <math|\<sigma\>\<in\>P<rsub|n>> then
    <math|sign<around*|(|\<sigma\>|)>\<in\><around*|{|-1.1|}>> is the
    <with|font-series|bold|unique> number such that\ 

    <\equation*>
      \<sigma\>\<Phi\><rsub|n>=sign<around*|(|\<sigma\>|)>\<cdot\>\<Phi\><rsub|n>
    </equation*>

    A permutation <math|\<sigma\>> is called <with|font-series|bold|even> if
    <math|sign<around*|(|\<sigma\>|)>=1> and <with|font-series|bold|odd> if
    <math|sign<around*|(|\<sigma\>|)>=-1>
  </definition>

  The concept of even or odd permutation follows from the following.

  <\remark>
    <label|permutation sign calculation>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and
    <math|\<sigma\>\<in\>P<rsub|n>> then by [theorem: <reference|permutation
    as a composition of disjoint transpositions>] there exist a family
    <math|<around*|{|<around*|(|i<rsub|k>\<leftrightarrowlim\><rsub|n>j<rsub|k>|)>|}><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>P<rsub|n>>
    of <with|font-series|bold|strict> transpositions such that\ 

    <\equation*>
      \<sigma\>=<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m>\<leftrightarrowlim\><rsub|n>j<rsub|m>|)>|)>
    </equation*>

    so that

    <\equation*>
      \<sigma\>\<Phi\><rsub|n>=<around*|(|<around*|(|i<rsub|1>\<leftrightarrowlim\><rsub|n>j<rsub|1>|)>\<circ\>\<cdots\>\<circ\><around*|(|i<rsub|m>\<leftrightarrowlim\><rsub|n>j<rsub|m>|)>|)>\<Phi\><rsub|n>\<equallim\><rsub|<text|[theorem:
      <reference|permutation sign of composition of
      transpositions>]>><around*|(|-1|)><rsup|m>\<Phi\><rsub|n>
    </equation*>

    proving that

    <\equation*>
      sign<around*|(|\<sigma\>|)>=<around*|(|-1|)><rsup|m>
    </equation*>

    In other words if <math|\<sigma\>> can be written as a odd number of
    strict transpositions <math|\<sigma\>> is odd and if <math|\<sigma\>> can
    be written as a event number of transpositions <math|\<sigma\>> is even.
  </remark>

  <\theorem>
    If <math|n\<in\>\<bbb-N\>> then we have\ 

    <\enumerate>
      <item><math|\<forall\>\<sigma\>,\<tau\>\<in\>P<rsub|n>> that
      <math|sign<around*|(|\<sigma\>\<circ\>\<tau\>|)>=sign<around*|(|\<sigma\>|)>\<cdot\>sign<around*|(|\<tau\>|)>>

      <item><math|sign<around*|(|Id<rsub|<around*|{|1,\<ldots\>,n|}>>|)>=1>

      <item><math|\<forall\>\<sigma\>\<in\>P<rsub|n>>
      <math|sign<around*|(|\<sigma\>|)>=sign<around*|(|\<sigma\><rsup|-1>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<sigma\>\<circ\>\<tau\>|)>\<Phi\><rsub|n>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|permutation apply and composition>]>>>|<cell|\<tau\><around*|(|\<sigma\>\<Phi\><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<tau\><around*|(|sign<around*|(|\<sigma\>|)>\<cdot\>\<Phi\><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|[|theorem:<reference|permutation
        apply and field>|]>>>|<cell|sign<around*|(|\<sigma\>|)>\<cdot\><around*|(|\<tau\>\<Phi\><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|sign<around*|(|\<sigma\>|)>\<cdot\>sign<around*|(|\<tau\>|)>\<cdot\>\<Phi\><rsub|n>>>>>
      </eqnarray*>

      proving that

      <\equation*>
        sign<around*|(|\<sigma\>\<circ\>\<tau\>|)>=sign<around*|(|\<sigma\>|)>\<cdot\>sign<around*|(|\<tau\>|)>
      </equation*>

      <item>As <math|Id<rsub|<around*|{|1,\<ldots\>,n|}>>\<Phi\><rsub|n>\<equallim\><rsub|<text|[theorem:
      <reference|permutation apply identity>]>>\<Phi\><rsub|n>> we have\ 

      <\equation*>
        sign<around*|(|Id<rsub|<around*|{|1,\<ldots\>,n|}>>|)>=1
      </equation*>

      <item>We have\ 

      <\equation*>
        1\<equallim\><rsub|<around*|(|2|)>>sign<around*|(|Id<rsub|<around*|{|1,\<ldots\>,n|}>>|)>=sign<around*|(|\<sigma\>\<circ\>\<sigma\><rsup|-1>|)>\<equallim\><rsub|<around*|(|1|)>>sign<around*|(|\<sigma\>|)>\<cdot\>sign<around*|(|\<sigma\><rsup|-1>|)>
      </equation*>

      so that <math|sign<around*|(|\<sigma\>|)>=sign<around*|(|\<sigma\>|)>\<cdot\>1=<around*|(|sign<around*|(|\<sigma\>|)>\<cdot\>sign<around*|(|\<sigma\>|)>|)>\<cdot\>sign<around*|(|\<sigma\><rsup|-1>|)>\<equallim\><rsub|sing<around*|(|\<sigma\>|)>\<in\><around*|{|-1,1|}>>sign<around*|(|\<sigma\><rsup|-1>|)>>
    </enumerate>
  </proof>

  <section|Multilinear mappings>

  From now on, unless specified otherwise, instead of saying that
  <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>>,
  <math|<around*|\<langle\>|Y,+,\<cdot\>|\<rangle\>>> are vector spaces over
  a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> we just says
  that <math|X> and <math|Y> are vector spaces over a field <math|F>, the
  addition operators and multiplcation operators follows then from the
  context.\ 

  <\definition>
    <label|multi tupple convention (1)><index|<math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,a,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>Let
    <math|n\<in\>\<bbb-N\>> and <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of sets, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    then\ 

    <\equation*>
      x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,a,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
      <text| is equivalent with saying that <math|x<rsub|i>=a>>
    </equation*>

    <\equation*>
      x=<around*|(|a,\<ldots\>x<rsub|n>|)><text| is equivalent with saying
      >x<rsub|1>=a
    </equation*>

    <\equation*>
      x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n-1>,a|)> <text| is equivalent
      with saying >x<rsub|n>=a
    </equation*>
  </definition>

  <\definition>
    <label|multi multilinear mapping>Let <math|n\<in\>\<bbb-N\>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,<math|<around*|{|X<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces over a field <math|F> and <math|Y> a vector
    space over the same field then a function
    <math|L:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>\<rightarrow\>Y>
    is a multilinear mapping if <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>X<rsub|i>> and
      <math|\<forall\>><math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X>\ 

      <\equation*>
        L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
      </equation*>

      <item><math|\<forall\>\<alpha\>\<in\>F>,
      <math|\<forall\>x\<in\>X<rsub|i >> and
      <math|\<forall\>><math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X>\ 

      <\equation*>
        L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>=\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
      </equation*>
    </enumerate>

    \ The set of graphs of multilinear mappings is noted as
    <math|Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>, more specific:

    <\equation*>
      Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>=<around*|{|L\<in\>Y<rsup|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>\|L:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y<text|
      is multilinear>|}>
    </equation*>
  </definition>

  To be able to use induction in proofs about multilinear mappings we have
  the following theorem.

  <\theorem>
    <label|multi induction argument>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    be a family of vector spaces over a field <math|F>, <math|Y> a vector
    space over the same field <math|F>, <math|a\<in\>X<rsub|n+1>> and
    <math|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n+1>;Y|)>> then if
    we define\ 

    <\equation*>
      L<rsub|<around*|{|\<ldots\>a|}>>:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y<text|
      by >L<rsub|<around*|{|\<ldots\>a|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,a|)>
    </equation*>

    then

    <\equation*>
      L<rsub|<around*|{|\<ldots\>a|}>>\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|i-1>,X<rsub|i+1>,\<ldots\>,X<rsub|n>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|j\<in\><around*|{|1,\<ldots\>,n|}>>, <math|\<alpha\>\<in\>F>,
    <math|x,y\<in\>X<rsub|n+1>>. If <math|<around*|{|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|}>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<rsub|<around*|{|\<ldots\>a|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>,a|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>,a|)>+L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>,a|)>>|<cell|=>|<cell|>>|<row|<cell|L<rsub|<around*|{|\<ldots\>a|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+L<rsub|<around*|{|\<ldots\>a|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    and

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<rsub|<around*|{|\<ldots\>a|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|L<rsub|<around*|{|\<ldots\>a|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>,a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>,a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<rsub|><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>,a|)>>>>>
    </eqnarray*>

    \;
  </proof>

  <\definition>
    <label|multi function of many arguments (1)>Let <math|n\<in\>\<bbb-N\>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>> a
    family of sets, <math|Y> a set,

    \ <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|i>>
    and

    <\equation*>
      f:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y
    </equation*>

    then <math|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|i>\<rightarrow\>Y>
    is defined by\ 

    <\equation*>
      f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><around*|(|x|)>=f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
    </equation*>
  </definition>

  <\theorem>
    <label|multi multilinear mapping and linear mapping>Let
    <math|n\<in\>\<bbb-N\>>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,<math|<around*|{|X<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces over a field <math|F> and <math|Y> a vector
    space over the same field <math|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    and <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|i>>
    then\ 

    <\equation*>
      L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\>Hom<around*|(|X<rsub|i>,Y|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|\<alpha\>\<in\>F>, <math|x,y\<in\>X<rsub|i>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><around*|(|x+y|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><around*|(|x|)>+L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><around*|(|y|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    and

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><around*|(|\<alpha\>\<cdot\>x|)>>|<cell|=>|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><around*|(|x|)>>>>>
    </eqnarray*>
  </proof>

  <\example>
    <label|multi zero function>Let <math|n\<in\>\<bbb-N\>>,
    \ <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces over a field <math|F> and <math|Y> a vector
    space over the same field <math|F> then
    <math|C<rsub|0>\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
  </example>

  <\proof>
    Let <math|x\<in\><big|prod><rsub|i=1><rsup|n>X<rsub|i>>
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, <math|\<alpha\>\<in\>F> and
    <math|x,y\<in\>X<rsub|i>> then\ 

    <\equation*>
      C<rsub|0><around*|(|x<rsub|1>,\<ldots\>,x+y,\<ldots\>,x<rsub|n>|)>=0=0+0=C<rsub|0><around*|(|x<rsub|1>,\<ldots\>,x,\<ldots\>,x<rsub|n>|)>+C<rsub|0><around*|(|x<rsub|1>,\<ldots\>,y,\<ldots\>,x<rsub|n>|)>
    </equation*>

    and\ 

    <\equation*>
      C<rsub|0><around*|(|x<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>x,\<ldots\>,x<rsub|n>|)>=0=\<alpha\>\<cdot\>0=\<alpha\>\<cdot\>C<rsub|0><around*|(|x<rsub|1>,\<ldots\>,x,\<ldots\>,x<rsub|n>|)>
    </equation*>
  </proof>

  <\example>
    <label|multilinear field product>Let <math|n\<in\>\<bbb-N\>>, <math|F> a
    field then <math|L:F<rsup|n>\<rightarrow\>F> defined by
    <math|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<big|prod><rsub|i=1><rsup|n>x<rsub|i>>
    is a multilinear mapping.
  </example>

  <\proof>
    Let <math|x,y,\<alpha\>\<in\>F> then we have for
  </proof>

  <\proof>
    We prove this by induction on <math|n>, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|L<rsub|n>:F<rsup|n>\<rightarrow\>F<text|
      where >L<rsub|n><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<big|prod><rsub|i=1><rsup|n>x<rsub|i><text|
      is multilinear>|}>
    </equation*>

    then we have:\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|p>|<cell|=>|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|1>|)>>>|<row|<cell|q>|<cell|=>|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|1>|)>>>|<row|<cell|r>|<cell|=>|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|1>|)>>>|<row|<cell|s>|<cell|=>|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|1>|)>>>>>
    </eqnarray*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|prod><rsub|i=1><rsup|n>r<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum field multilinearity>]>>>|<cell|>>|<row|<cell|<big|prod><rsub|i=1><rsup|n>p<rsub|i>+<big|prod><rsub|i=1><rsup|m>q<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,,x<rsub|n>|)>>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n>s<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum field multilinearity>]>>>|<cell|\<alpha\>\<cdot\><big|prod><rsub|i=1><rsup|n>p<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|multilinear mapping sub-space>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a family of vector spaces over a field <math|F> and <math|Y> a vector
    space over the same field then <math|Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    is a sub-space of <math|<around*|\<langle\>|Y<rsup|<big|prod><rsub|i=1><rsup|n>X<rsub|i>>,+,\<cdot\>|\<rangle\>>>.
    So by [theorem: <reference|vector space sub-space is a vector space>]
    <math|<around*|\<langle\>|Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>,+,\<cdot\>|\<rangle\>>>
    is a vector space.
  </theorem>

  <\proof>
    First using [exercise: <reference|multi zero function>] we have that\ 

    <\equation*>
      C<rsub|0>\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>\<Rightarrow\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>\<neq\>\<varnothing\>
    </equation*>

    Second if <math|\<alpha\>,\<beta\>\<in\>F> and
    <math|L<rsub|1>,L<rsub|2>\<in\>Hom<around*|(|x<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    and <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x+y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|<wide*|\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|\<wide-underbrace\>><rsub|1>+<wide*|\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|\<wide-underbrace\>><rsub|2>+<wide*|\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|\<wide-underbrace\>><rsub|1>+<wide*|\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|\<wide-underbrace\>><rsub|2>>|<cell|=>|<cell|>>|<row|<cell|<wide*|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|\<wide-underbrace\>><rsub|1>+<wide*|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|\<wide-underbrace\>><rsub|2>>|<cell|>|<cell|>>>>
    </eqnarray*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<gamma\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<gamma\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<gamma\>\<cdot\>x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>\<gamma\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\>\<gamma\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<gamma\>\<cdot\><around*|(|\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<gamma\>\<cdot\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that

    <\equation*>
      \<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>
    </equation*>
  </proof>

  <\theorem>
    <label|multi composition>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a family of vector spaces over a field <math|F>, <math|Y> and <math|Z>
    vector spaces over the same field <math|F>,
    <math|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> and
    <math|S\<in\>Hom<around*|(|Y,Z|)>> then
    <math|S\<circ\>H\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
  </theorem>

  <\proof>
    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|i>>,
    <math|\<alpha\>\<in\>F> and <math|y,z\<in\>X<rsub|i>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|S\<circ\>L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y+z,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|S<around*|(|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y+z,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|S<around*|(|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,z,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|S\<circ\>L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+<around*|(|S\<circ\>L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,z,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>>>
    </eqnarray*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|S\<circ\>L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|S<around*|(|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|S<around*|(|\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>S<around*|(|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|S\<circ\>L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|multi multilinear mapping and product of scalars>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be \ family of vector spaces over a field <math|F>, <math|Y> a vector
    space over the same field <math|F>, <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    and <math|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> then
    if <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have\ 

    <\equation*>
      L<around*|(|\<alpha\><rsub|1>\<cdot\>x,\<ldots\>,\<alpha\><rsub|n>\<cdot\>x<rsub|n>|)>=<around*|(|<big|prod><rsub|i=1><rsup|n>\<alpha\><rsub|i>|)>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction, so let

    <\equation*>
      S=<around*|{|k\<in\>\<bbb-N\>\|<text|If <math|k\<leqslant\>n> and
      >L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|k>;Y|)> then
      L<around*|(|\<alpha\><rsub|1>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\><rsub|k>\<cdot\>x<rsub|k>|)>=<around*|(|<big|prod><rsub|i=1><rsup|k>\<alpha\><rsub|i>|)>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>|}>
      <text|then we have:>
    </equation*>

    <\description>
      <item*|<math|1\<in\>S>>Then <math|L<around*|(|\<alpha\><rsub|1>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\><rsub|1>\<cdot\>x<rsub|1>|)>=L<around*|(|\<alpha\><rsub|1>\<cdot\>x<rsub|1>|)>=\<alpha\><rsub|1>\<cdot\>L<around*|(|x<rsub|1>|)>=<around*|(|<big|prod><rsub|i><rsup|k>\<alpha\><rsub|i>|)>\<cdot\>L<around*|(|x<rsub|1>|)>=<around*|(|<big|prod><rsub|i><rsup|k>\<alpha\><rsub|i>|)>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|1>|)>>
      proving that <math|1\<in\>S>

      <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>If
      <math|k+1\<leqslant\>n> and <math|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|k+1>;Y|)>>
      then by [theorem: <reference|multi induction argument>]
      <math|L<rsub|<around*|{|\<ldots\>x<rsub|k+1>|}>>\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|k>;Y|)>>
      so that as <math|k\<in\>S> we have

      <\equation>
        <label|eq 11.100.095>L<rsub|<around*|{|\<ldots\>x<rsub|k>|}>><around*|(|\<alpha\><rsub|1>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\><rsub|k>\<cdot\>x<rsub|k>|)>=<around*|(|<big|prod><rsub|i=1><rsup|k>\<alpha\><rsub|i>|)>\<cdot\>L<rsub|<around*|{|\<ldots\>x<rsub|k>|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>
      </equation>

      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|\<alpha\><rsub|1>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\><rsub|k+1>\<cdot\>x<rsub|k+1>|)>>|<cell|=>|<cell|\<alpha\><rsub|k+1>\<cdot\>L<around*|(|\<alpha\><rsub|1>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\><rsub|k-1>\<cdot\>x<rsub|k-1>,x<rsub|k+1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|k+1>\<cdot\>L<rsub|<around*|{|\<ldots\>,x<rsub|k+1>|}>><around*|(|\<alpha\><rsub|1>\<cdot\>x<rsub|1>,\<ldots\>,a<rsub|k>\<cdot\>x<rsub|k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|eq 11.100.095>]>>>|<cell|\<alpha\><rsub|k+1>\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|k>\<alpha\><rsub|i>|)>\<cdot\>L<rsub|<around*|{|\<ldots\>x<rsub|k>|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|k+1>\<alpha\><rsub|i>|)>\<cdot\>L<rsub|<around*|{|\<ldots\>x<rsub|k>|}>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|k+1>\<alpha\><rsub|i>|)>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k+1>|)>>>>>
      </eqnarray*>

      provingthat <math|k+1\<in\>S>.
    </description>

    Mathematical induction proves then that <math|S=\<bbb-N\>>, so as
    <math|n\<in\><around*|{|1,\<ldots\>,n|}>> we have that\ 

    <\equation*>
      L<around*|(|\<alpha\><rsub|1>\<cdot\>x,\<ldots\>,\<alpha\><rsub|n>\<cdot\>x<rsub|n>|)>=<around*|(|<big|prod><rsub|i=1><rsup|n>\<alpha\><rsub|i>|)>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>
    </equation*>
  </proof>

  <\theorem>
    <label|multi multilinear mappin one argument is 0>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be \ family of vector spaces over a field <math|F>, <math|Y> a vector
    space over the same field <math|F> and
    <math|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> then if
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    such that <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|x<rsub|i>=0> we have that <math|L<around*|(|x|)>=0>.
  </theorem>

  <\proof>
    If <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    such that <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|x<rsub|i>=0> then

    <\equation*>
      x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
    </equation*>

    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|x|)>>|<cell|=>|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0\<cdot\>0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>
  </proof>

  <section|Determinant Functions>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|10>
    <associate|page-first|317>
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
    <associate|auto-30|<tuple|11.4.1|?>>
    <associate|auto-31|<tuple|linear mapping|?>>
    <associate|auto-32|<tuple|<with|mode|<quote|math>|Hom<around*|(|X,Y|)>>|?>>
    <associate|auto-33|<tuple|11.5|?>>
    <associate|auto-34|<tuple|11.5.1|?>>
    <associate|auto-35|<tuple|11.5.2|?>>
    <associate|auto-36|<tuple|<with|mode|<quote|math>|sign<around*|(|\<sigma\>|)>>|?>>
    <associate|auto-37|<tuple|11.6|?>>
    <associate|auto-38|<tuple|<with|mode|<quote|math>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,a,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|?>>
    <associate|auto-39|<tuple|11.7|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-40|<tuple|11.7|?>>
    <associate|auto-41|<tuple|11.7|?>>
    <associate|auto-42|<tuple|11.7|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-6|<tuple|11.1.2|?>>
    <associate|auto-7|<tuple|11.1.3|?>>
    <associate|auto-8|<tuple|permutation|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<sigma\>>|?>>
    <associate|basis|<tuple|11.103|?>>
    <associate|basis F^n|<tuple|11.124|?>>
    <associate|basis Kronecker delta|<tuple|11.122|?>>
    <associate|basis alternative (1)|<tuple|11.106|?>>
    <associate|basis dimension|<tuple|11.116|?>>
    <associate|basis dimension of trivial space|<tuple|11.118|?>>
    <associate|basis dimensionality|<tuple|11.115|?>>
    <associate|basis exist|<tuple|11.112|?>>
    <associate|basis existence (1)|<tuple|11.109|?>>
    <associate|basis extending linear independent set|<tuple|11.110|?>>
    <associate|basis finite alternative (1)|<tuple|11.107|?>>
    <associate|basis finite alternative (2)|<tuple|11.108|?>>
    <associate|basis finite dimensions|<tuple|11.113|?>>
    <associate|basis infinite dimensions|<tuple|11.114|?>>
    <associate|basis of a field|<tuple|11.119|?>>
    <associate|basis of field examples|<tuple|11.120|?>>
    <associate|basis of trivial vector space|<tuple|11.105|?>>
    <associate|basis real complex vector space|<tuple|11.121|?>>
    <associate|basis reducing spanning set to a basis|<tuple|11.111|?>>
    <associate|basis sub-space|<tuple|11.117|?>>
    <associate|basis sum of delta|<tuple|11.123|?>>
    <associate|disjoint family property|<tuple|11.75|?>>
    <associate|eq 11.081.94|<tuple|11.81|?>>
    <associate|eq 11.1.054|<tuple|11.1|?>>
    <associate|eq 11.10.054|<tuple|11.11|?>>
    <associate|eq 11.10.064|<tuple|11.10|?>>
    <associate|eq 11.100.095|<tuple|11.100|?>>
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
    <associate|eq 11.5.053|<tuple|11.5|?>>
    <associate|eq 11.50.090|<tuple|11.50|?>>
    <associate|eq 11.51.090|<tuple|11.51|?>>
    <associate|eq 11.52.090|<tuple|11.52|?>>
    <associate|eq 11.53.084|<tuple|11.38|?>>
    <associate|eq 11.54.086|<tuple|11.40|?>>
    <associate|eq 11.54.092|<tuple|11.54|?>>
    <associate|eq 11.55.086|<tuple|11.41|?>>
    <associate|eq 11.55.092|<tuple|11.55|?>>
    <associate|eq 11.56.086|<tuple|11.42|?>>
    <associate|eq 11.56.092|<tuple|11.56|?>>
    <associate|eq 11.57.084|<tuple|11.37|?>>
    <associate|eq 11.57.086|<tuple|11.43|?>>
    <associate|eq 11.57.093|<tuple|11.57|?>>
    <associate|eq 11.58.086|<tuple|11.44|?>>
    <associate|eq 11.58.093|<tuple|11.58|?>>
    <associate|eq 11.59.093|<tuple|11.59|?>>
    <associate|eq 11.6.053|<tuple|11.6|?>>
    <associate|eq 11.60.093|<tuple|11.60|?>>
    <associate|eq 11.61.086|<tuple|11.47|?>>
    <associate|eq 11.61.093|<tuple|11.61|?>>
    <associate|eq 11.62.086|<tuple|11.48|?>>
    <associate|eq 11.62.093|<tuple|11.62|?>>
    <associate|eq 11.63.086|<tuple|11.49|?>>
    <associate|eq 11.63.093|<tuple|11.63|?>>
    <associate|eq 11.64.093|<tuple|11.64|?>>
    <associate|eq 11.65.086|<tuple|11.53|?>>
    <associate|eq 11.65.093|<tuple|11.65|?>>
    <associate|eq 11.66.093|<tuple|11.66|?>>
    <associate|eq 11.67.093|<tuple|11.67|?>>
    <associate|eq 11.68.093|<tuple|11.68|?>>
    <associate|eq 11.69.093|<tuple|11.69|?>>
    <associate|eq 11.7.053|<tuple|11.7|?>>
    <associate|eq 11.7.053.1|<tuple|11.8|?>>
    <associate|eq 11.70.093|<tuple|11.71|?>>
    <associate|eq 11.70.094|<tuple|11.70|?>>
    <associate|eq 11.71.093|<tuple|11.72|?>>
    <associate|eq 11.72.093|<tuple|11.73|?>>
    <associate|eq 11.73.093|<tuple|11.74|?>>
    <associate|eq 11.74.093|<tuple|11.75|?>>
    <associate|eq 11.75.093|<tuple|11.76|?>>
    <associate|eq 11.77.094|<tuple|11.77|?>>
    <associate|eq 11.78.094|<tuple|11.78|?>>
    <associate|eq 11.79.094|<tuple|11.79|?>>
    <associate|eq 11.80.094|<tuple|11.80|?>>
    <associate|eq 11.82.094|<tuple|11.82|?>>
    <associate|eq 11.83.094|<tuple|11.83|?>>
    <associate|eq 11.84.094|<tuple|11.84|?>>
    <associate|eq 11.85.094|<tuple|11.85|?>>
    <associate|eq 11.86.094|<tuple|11.86|?>>
    <associate|eq 11.87.094|<tuple|11.87|?>>
    <associate|eq 11.88.094|<tuple|11.88|?>>
    <associate|eq 11.89.094|<tuple|11.89|?>>
    <associate|eq 11.9.053|<tuple|11.9|?>>
    <associate|eq 11.90.094|<tuple|11.90|?>>
    <associate|eq 11.91.094|<tuple|11.91|?>>
    <associate|eq 11.92.094|<tuple|11.92|?>>
    <associate|eq 11.93.094|<tuple|11.93|?>>
    <associate|eq 11.94.094|<tuple|11.94|?>>
    <associate|eq 11.95.094|<tuple|11.95|?>>
    <associate|eq 11.96.094|<tuple|11.96|?>>
    <associate|eq 11.97.094|<tuple|11.97|?>>
    <associate|eq 11.98.094|<tuple|11.98|?>>
    <associate|eq 11.99.094|<tuple|11.99|?>>
    <associate|eq11.100.095|<tuple|11.100|?>>
    <associate|linear (in)dependency properties (1)|<tuple|11.99|?>>
    <associate|linear Steinitz (1)|<tuple|11.101|?>>
    <associate|linear Steinitz (2)|<tuple|11.102|?>>
    <associate|linear Steinitz lemma|<tuple|11.100|?>>
    <associate|linear ampping|<tuple|11.125|?>>
    <associate|linear combination|<tuple|11.71|?>>
    <associate|linear combination (1)|<tuple|11.78|?>>
    <associate|linear combination (2)|<tuple|11.79|?>>
    <associate|linear dependent set|<tuple|11.91|?>>
    <associate|linear dependent set alternative condition|<tuple|11.98|?>>
    <associate|linear dependent set containing neutral
    element|<tuple|11.92|?>>
    <associate|linear family disjoint|<tuple|11.74|?>>
    <associate|linear family finite|<tuple|11.72|?>>
    <associate|linear finite set|<tuple|11.77|?>>
    <associate|linear independent empty set|<tuple|11.96|?>>
    <associate|linear independent finite set|<tuple|11.95|?>>
    <associate|linear independent set|<tuple|11.93|?>>
    <associate|linear independent set alternative|<tuple|11.94|?>>
    <associate|linear independent singleton|<tuple|11.97|?>>
    <associate|linear mapping Hom(X,Y)|<tuple|11.133|?>>
    <associate|linear mapping Hom(X,Y) definition|<tuple|11.130|?>>
    <associate|linear mapping Img Re|<tuple|11.139|?>>
    <associate|linear mapping L(x)=L(y)=\<gtr\>x=y|<tuple|11.137|?>>
    <associate|linear mapping and finite sum|<tuple|11.138|?>>
    <associate|linear mapping basis|<tuple|11.147|?>>
    <associate|linear mapping composition|<tuple|11.131|?>>
    <associate|linear mapping composition isomorphism|<tuple|11.132|?>>
    <associate|linear mapping dimension theorem|<tuple|11.149|?>>
    <associate|linear mapping dual space|<tuple|11.135|?>>
    <associate|linear mapping existance of non-zero linear
    mapping|<tuple|11.136|?>>
    <associate|linear mapping independency|<tuple|11.146|?>>
    <associate|linear mapping injectivity and kernel|<tuple|11.144|?>>
    <associate|linear mapping inverse of a isomorphism|<tuple|11.129|?>>
    <associate|linear mapping isomorphic spaces|<tuple|11.148|?>>
    <associate|linear mapping kernal and range are
    subspaces|<tuple|11.142|?>>
    <associate|linear mapping kernel|<tuple|11.140|?>>
    <associate|linear mapping linear isomorphism|<tuple|11.127|?>>
    <associate|linear mapping of neutral element|<tuple|11.134|?>>
    <associate|linear mapping projection map|<tuple|11.126|?>>
    <associate|linear mapping range|<tuple|11.141|?>>
    <associate|linear mapping rank|<tuple|11.143|?>>
    <associate|linear mapping span|<tuple|11.145|?>>
    <associate|linear ordered family is finite|<tuple|11.76|?>>
    <associate|linear span|<tuple|11.80|?>>
    <associate|linear span contains set|<tuple|11.85|?>>
    <associate|linear span equivalence 0|<tuple|11.83|?>>
    <associate|linear span equivalence 1|<tuple|11.84|?>>
    <associate|linear span extending a set without changing its
    span|<tuple|11.90|?>>
    <associate|linear span is a sub-space|<tuple|11.87|?>>
    <associate|linear span of empty set|<tuple|11.81|?>>
    <associate|linear span of span|<tuple|11.89|?>>
    <associate|linear span properties|<tuple|11.88|?>>
    <associate|linear span subsets|<tuple|11.86|?>>
    <associate|linear span({0})|<tuple|11.82|?>>
    <associate|linerar mapping between R^2 and C|<tuple|11.128|?>>
    <associate|multi composition|<tuple|11.184|?>>
    <associate|multi convention (2)|<tuple|11.177|?>>
    <associate|multi function argument reduction|<tuple|11.179|?>>
    <associate|multi function of many arguments (1)|<tuple|11.179|?>>
    <associate|multi induction argument|<tuple|11.178|?>>
    <associate|multi multilinear mappin one argument is 0|<tuple|11.186|?>>
    <associate|multi multilinear mapping|<tuple|11.177|?>>
    <associate|multi multilinear mapping and linear mapping|<tuple|11.180|?>>
    <associate|multi multilinear mapping and product of
    scalars|<tuple|11.185|?>>
    <associate|multi product multilinearity|<tuple|11.181|?>>
    <associate|multi tuple convention (2)|<tuple|11.177|?>>
    <associate|multi tuple substituting|<tuple|11.179|?>>
    <associate|multi tuple substituting (1)|<tuple|11.179|?>>
    <associate|multi tuple substitution|<tuple|11.179|?>>
    <associate|multi tupple convention (1)|<tuple|11.176|?>>
    <associate|multi zero function|<tuple|11.181|?>>
    <associate|multilinear field product|<tuple|11.182|?>>
    <associate|multilinear mapping sub-space|<tuple|11.183|?>>
    <associate|permutation Pn|<tuple|11.150|?>>
    <associate|permutation Pn is a group|<tuple|11.152|?>>
    <associate|permutation apply|<tuple|11.161|?>>
    <associate|permutation apply and composition|<tuple|11.163|?>>
    <associate|permutation apply and field|<tuple|11.164|?>>
    <associate|permutation apply identity|<tuple|11.162|?>>
    <associate|permutation apply transposition on phi|<tuple|11.170|?>>
    <associate|permutation as a composition of disjoint
    transpositions|<tuple|11.160|?>>
    <associate|permutation composition of a family of
    permutations|<tuple|11.155|?>>
    <associate|permutation definition|<tuple|11.24|?>>
    <associate|permutation existence of sign|<tuple|11.172|?>>
    <associate|permutation extension (1)|<tuple|11.158|?>>
    <associate|permutation extension (2)|<tuple|11.159|?>>
    <associate|permutation group|<tuple|11.25|?>>
    <associate|permutation on subset|<tuple|11.26|?>>
    <associate|permutation phi function|<tuple|11.167|?>>
    <associate|permutation phi function is not zero|<tuple|11.169|?>>
    <associate|permutation reverse|<tuple|11.151|?>>
    <associate|permutation sign|<tuple|11.173|?>>
    <associate|permutation sign calculation|<tuple|11.174|?>>
    <associate|permutation sign of composition of
    transpositions|<tuple|11.171|?>>
    <associate|permutation sum|<tuple|11.154|?>>
    <associate|permutation transosition proeprties|<tuple|11.157|?>>
    <associate|permutation transpistion symmetry
    permutation|<tuple|11.166|?>>
    <associate|permutation transposition|<tuple|11.27|?>>
    <associate|permutation transposition 1|<tuple|11.156|?>>
    <associate|permutation transposition properties|<tuple|11.28|?>>
    <associate|permutation transposition symmetry|<tuple|11.165|?>>
    <associate|permutation {0,..,n and transposition|<tuple|11.29|?>>
    <associate|product finite product|<tuple|11.2|?>>
    <associate|sum alternative definition|<tuple|11.4|?>>
    <associate|sum alternative definition (1)|<tuple|11.14|?>>
    <associate|sum alternative definition (2)|<tuple|11.21|?>>
    <associate|sum associativity|<tuple|11.23|?>>
    <associate|sum associativity simple|<tuple|11.22|?>>
    <associate|sum bijection on index|<tuple|11.34|?>>
    <associate|sum commutativity|<tuple|11.30|?>>
    <associate|sum constant family|<tuple|11.45|?>>
    <associate|sum field multilinearity|<tuple|11.46|?>>
    <associate|sum field product|<tuple|11.46|?>>
    <associate|sum finite sum|<tuple|11.1|?>>
    <associate|sum general equivalence|<tuple|11.33|?>>
    <associate|sum general single|<tuple|11.32|?>>
    <associate|sum generalized sum|<tuple|11.31|?>>
    <associate|sum in A^n|<tuple|11.44|?>>
    <associate|sum index is a product|<tuple|11.43|?>>
    <associate|sum non zero elements|<tuple|11.47|?>>
    <associate|sum of differences|<tuple|11.10|?>>
    <associate|sum of differences (1)|<tuple|11.20|?>>
    <associate|sum of finite sums|<tuple|11.9|?>>
    <associate|sum of finite sums (1)|<tuple|11.18|?>>
    <associate|sum of finite sums (2)|<tuple|11.39|?>>
    <associate|sum of inverses|<tuple|11.7|?>>
    <associate|sum of inverses (1)|<tuple|11.19|?>>
    <associate|sum of inverses (2)|<tuple|11.38|?>>
    <associate|sum of neutral element (1)|<tuple|11.15|?>>
    <associate|sum of neutral element (2)|<tuple|11.35|?>>
    <associate|sum of neutral elements|<tuple|11.5|?>>
    <associate|sum of sums|<tuple|11.6|?>>
    <associate|sum of sums (1)|<tuple|11.16|?>>
    <associate|sum of sums (2)|<tuple|11.36|?>>
    <associate|sum over disjoint subsets|<tuple|11.41|?>>
    <associate|sum over disjoint subsets (1)|<tuple|11.42|?>>
    <associate|sum over two disjoint subsets|<tuple|11.40|?>>
    <associate|sum ring product|<tuple|11.8|?>>
    <associate|sum ring product (1)|<tuple|11.17|?>>
    <associate|sum ring product (2)|<tuple|11.37|?>>
    <associate|vector space|<tuple|11.48|?>>
    <associate|vector space C real|<tuple|11.57|?>>
    <associate|vector space F^n|<tuple|11.62|?>>
    <associate|vector space Q,R,C|<tuple|11.56|?>>
    <associate|vector space complex/real|<tuple|11.58|?>>
    <associate|vector space field|<tuple|11.55|?>>
    <associate|vector space finite sum (1)|<tuple|11.67|?>>
    <associate|vector space finite sum (2)|<tuple|11.68|?>>
    <associate|vector space finite sum (3)|<tuple|11.69|?>>
    <associate|vector space finite sum (4)|<tuple|11.70|?>>
    <associate|vector space function space|<tuple|11.59|?>>
    <associate|vector space power|<tuple|11.60|?>>
    <associate|vector space power field|<tuple|11.61|?>>
    <associate|vector space product of vector spaces|<tuple|11.63|?>>
    <associate|vector space properties (1)|<tuple|11.50|?>>
    <associate|vector space set operations|<tuple|11.64|?>>
    <associate|vector space set propertie|<tuple|11.65|?>>
    <associate|vector space sub-space is a vector space|<tuple|11.52|?>>
    <associate|vector space subspace|<tuple|11.51|?>>
    <associate|vector space trivial|<tuple|11.54|?>>
    <associate|vector spaces product of vector spaces|<tuple|11.66|?>>
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

      <tuple|<tuple|linear mapping>|<pageref|auto-31>>

      <tuple|<tuple|<with|mode|<quote|math>|Hom<around*|(|X,Y|)>>>|<pageref|auto-32>>

      <tuple|<tuple|<with|mode|<quote|math>|sign<around*|(|\<sigma\>|)>>>|<pageref|auto-36>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,a,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<pageref|auto-38>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<pageref|auto-39>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-I\><rsub|y\<rightarrow\>i>>>|<pageref|auto-40>>

      <tuple|<tuple|<with|mode|<quote|math>|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>>|<pageref|auto-41>>
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

      <with|par-left|<quote|1tab>|11.4.1<space|2spc>Linear mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      11.5<space|2spc>Permutations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      <with|par-left|<quote|1tab>|11.5.1<space|2spc>Transpositions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|11.5.2<space|2spc>Sign of a Permutation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      11.6<space|2spc>Multilinear mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      11.7<space|2spc>Determinant Functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>
    </associate>
  </collection>
</auxiliary>
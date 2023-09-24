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

  \;

  <subsection|Linear (in)dependency>

  <subsubsection|Span of a set>

  <\definition>
    <label|linear combination>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    and <math|W\<subseteq\>V> then <math|v\<in\>V> is a linear combination of
    <math|W> if there exist a finite families
    <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    such that\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>
    </equation*>
  </definition>

  <\definition>
    <label|linear disjoint family><index|disjoint family><dueto|Disjoint
    family><label|disjoint family>Let <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    a family then <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    is a <with|font-series|bold|disjoint family> if
    <math|\<forall\>i,j\<in\>I> with <math|v<rsub|i>\<neq\>v<rsub|j>> we have
    <math|i=j>. In other words, using contraposition,
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> is a disjoint
    family if from <math|i\<neq\>j> it follows that
    <math|v<rsub|i>\<neq\>v<rsub|j>>.
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
    <math|x=v<rsub|i>> so that we must have <math|i\<neq\>k> proving that
    <math|x=x<rsub|i>\<in\><around*|{|v<rsub|i>\|i\<in\>I\\<around*|{|k|}>|}>>.
    Hence\ 

    <\equation*>
      <around*|{|v<rsub|i>\|i\<in\>I|}>\\<around*|{|v<rsub|k>|}>\<subseteq\><around*|{|v<rsub|i>\|i\<in\>I\\<around*|{|k|}>|}>
    </equation*>
  </proof>

  Any linear combination of a set can be written in terms of a disjoint
  family as is expressed in the following theorem.

  <\theorem>
    <label|linear combination distinct>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vectorspace over
    a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>,
    <math|W\<subseteq\>V>, <math|v\<in\>V> such that there exists a
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    and a <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that <math|v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>
    then there exists a <with|font-series|bold|<with|font-series|medium|finite>
    disjoint <with|font-series|medium|family>
    ><math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W>
    such that <math|v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>
    and <math|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>.
  </theorem>

  <\proof>
    By the hypothesis if the theorem we have finite families
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    and <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    such that

    <\equation>
      <label|eq 11.15.082>v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>.
    </equation>

    The family <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    is defined by a function <math|w:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>W>
    where <math|w<around*|(|i|)>=w<rsub|i>>. Using a consequence of the Axiom
    of choice [theorem: <reference|choice function to injection/bijection>]
    there exists a <math|J\<subseteq\><around*|{|1,\<ldots\>,n|}>> such that

    <\equation>
      <label|eq 11.16.081>w<rsub|\|J>:J\<rightarrow\>w<around*|(|<around*|{|1,\<ldots\>,n|}>|)><text|
      is a bijection>
    </equation>

    Define now\ 

    <\equation>
      <label|eq 11.17.081><around*|{|W<rsub|j>|}><rsub|j\<in\>J><text| by
      >W<rsub|j>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|w<around*|(|i|)>=w<around*|(|j|)>|}>\<subseteq\><around*|{|1,\<ldots\>,n|}>
    </equation>

    If <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
    <math|w<around*|(|i|)>\<in\>w<around*|(|<around*|{|1,\<ldots\>,n|}>|)>>
    so that by [eq: <reference|eq 11.16.081>] there exists a <math|j\<in\>J>
    such that <math|w<around*|(|i|)>=w<rsub|\|J><around*|(|j|)>\<equallim\><rsub|j\<in\>J>w<around*|(|j|)>>
    proving that <math|w<around*|(|i|)>\<in\>W<rsub|j>>, hence
    <math|<around*|{|1,\<ldots\>,n|}>\<subseteq\><big|cup><rsub|j\<in\>J>W<rsub|j>>.
    As trivially <math|W<rsub|j>\<subseteq\><around*|{|1,\<ldots\>,n|}>> we
    have that <math|<big|cup><rsub|j\<in\>J>W<rsub|j>\<subseteq\><around*|{|1,\<ldots\>,n|}>>.
    So we have\ 

    <\equation>
      <label|eq 11.18.081><around*|{|1,\<ldots\>,n|}>=<big|cup><rsub|j\<in\>J>W<rsub|j>
    </equation>

    Let <math|k,l\<in\>J> with <math|k\<neq\>l>. Assume that
    <math|i\<in\>W<rsub|k><big|cap>W<rsub|l>> then
    <math|w<rsub|\|J><around*|(|k|)>=w<around*|(|k|)>=w<around*|(|i|)>=w<around*|(|l|)>=w<rsub|\|J><around*|(|l|)>>,
    using [eq: <reference|eq 11.16.081>] it follows then that <math|k=l>
    contradicting <math|k\<neq\>l>. So we have\ 

    <\equation>
      <label|eq 11.19.081>\<forall\>k,l\<in\>J<text| with >k\<neq\>l<text| we
      have >W<rsub|k><big|cap>W<rsub|l>=\<varnothing\>
    </equation>

    Define now\ 

    <\equation>
      <label|eq 11.20.081><around*|{|\<gamma\><rsub|j>|}><rsub|j\<in\>J><text|
      by >\<gamma\><rsub|j>=<big|sum><rsub|i\<in\>W<rsub|j>>\<beta\><rsub|i>
    </equation>

    We have now

    <\eqnarray*>
      <tformat|<table|<row|<cell|v>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.15.082>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets
      (1)>]><infix-and><around*|[|eqs:<reference|eq 11.18.081>,<reference|eq
      11.19.081>|]>>>|<cell|<big|sum><rsub|j\<in\>J><around*|(|<big|sum><rsub|i\<in\>W<rsub|j>>\<beta\><rsub|i>\<cdot\>w<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.17.081>]>>>|<cell|<big|sum><rsub|j\<in\>J><around*|(|<big|sum><rsub|i\<in\>W<rsub|j>>\<beta\><rsub|i>\<cdot\>w<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (2)>]>>>|<cell|<big|sum><rsub|j\<in\>J><around*|(|<around*|(|<big|sum><rsub|i\<in\>W<rsub|j>>\<beta\><rsub|i>|)>\<cdot\>w<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.20.081>]>>>|<cell|<big|sum><rsub|j\<in\>J>\<gamma\><rsub|j>\<cdot\>w<rsub|j><eq-number><label|eq
      11.21.081>>>>>
    </eqnarray*>

    As <math|J\<subseteq\><around*|{|1,\<ldots\>,n|}>> a finite set we have
    that <math|J> is finite so by [theorem: <reference|complex finite set
    condition>] there exists a <math|m\<in\>\<bbb-N\><rsub|0>> and a
    bijection

    <\equation*>
      \<sigma\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>J
    </equation*>

    Define now\ 

    <\equation>
      <label|eq 11.22.081><around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W<text|
      by >v<rsub|i>=w<rsub|\<sigma\><around*|(|i|)>>=w<around*|(|\<sigma\><around*|(|i|)>|)><text|
      and ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>F<text|
      by >\<alpha\><rsub|i>=\<gamma\><rsub|\<sigma\><around*|(|i|)>>
    </equation>

    Let <math|i,j\<in\><around*|{|1,\<ldots\>,m|}>> such that
    <math|v<rsub|i>=v<rsub|j>> then <math|w<rsub|\|J><around*|(|\<sigma\><around*|(|i|)>|)>\<equallim\><rsub|\<sigma\><around*|(|i|)>\<in\>J>w<around*|(|\<sigma\><around*|(|i|)>|)>=v<rsub|i>=v<rsub|j>=w<around*|(|\<sigma\><around*|(|j|)>|)>\<equallim\><rsub|\<sigma\><around*|(|j|)>\<in\>J>w<rsub|\|J><around*|(|\<sigma\><around*|(|j|)>|)>,>hence
    by [eq: <reference|eq 11.16.081>] we have that
    <math|\<sigma\><around*|(|i|)>=\<sigma\><around*|(|j|)>>. As
    <math|\<sigma\>> is injective it follows that <math|i=j>. So we conclude
    that\ 

    <\equation>
      <label|eq 11.23.081><around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>V<text|
      is a <with|font-series|bold|finite disjoint family>>
    </equation>

    Further if <math|x\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=w<around*|(|<around*|{|1,\<ldots\>,n|}>|)>>
    then by [theorem: <reference|eq 11.16.081>] there exists a
    <math|j\<in\>J> such that <math|x=w<around*|(|j|)>>. As
    <math|\<sigma\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>J> is a
    bijection there exists a <math|k\<in\><around*|{|1,\<ldots\>,m|}>> such
    that <math|j=\<sigma\><around*|(|k|)>>, hence
    <math|x=w<around*|(|\<sigma\><around*|(|k|)>|)>=v<rsub|k>\<in\><around*|{|v<rsub|i\|i\<in\><around*|{|1,\<ldots\>,m|}>>|}>>.
    So we have\ 

    <\equation>
      <label|eq 11.24.081><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<subseteq\><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>
    </equation>

    For the opposite inclusion let <math|x\<in\><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>>
    then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,m|}>> such that
    <math|x=v<rsub|i>=\<omega\><rsub|\<sigma\><around*|(|i|)>>\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    proving that <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>\<subseteq\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>.
    Combining this with [eq: <reference|eq 11.24.080>] results in\ 

    <\equation>
      <label|eq 11.25.081><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>
    </equation>

    Finally we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<gamma\><rsub|\<sigma\><around*|(|i|)>>\<cdot\>w<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>>>>|<cell|<big|sum><rsub|i\<in\>J>\<gamma\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|eq 11.21.081>]>>>|<cell|v>>>>
    </eqnarray*>

    The bove together with [eqs: <reference|eq 11.23.081>, <reference|eq
    11.25.081>] proves the theorem.
  </proof>

  The set of all linear combinations of a set is called the span of a set.

  <\definition>
    <label|linear span><index|<math|span<around*|(|W|)>>>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then\ 

    <\equation*>
      span<around*|(|W|)>=<around*|{|v\<in\>V\|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W<text|
      and >\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      such that >v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|}>
    </equation*>
  </definition>

  We can always assume that <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
  contains no zeroes as is shown in the following theorem.

  <\theorem>
    <label|linear span elminate zero factors>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> and <math|w\<in\>span<around*|(|W|)>> then there
    exists a <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F\\<around*|{|0|}>>
    such that\ 

    <\equation*>
      w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    As <math|w\<in\>span<around*|(|W|)>> there exists a
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W>
    and <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>F>
    such that <math|w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>.
    Let <math|I=<around*|{|i\<in\><around*|{|1,\<ldots\>,m|}>\|\<beta\><rsub|i>\<neq\>0|}>\<subseteq\><around*|{|1,\<ldots\>,m|}>>
    then <math|I> is finite and thus by [theorem: <reference|complex finite
    set condition>] there exists a <math|n\<in\>\<bbb-N\><rsub|0>> and a
    bijection <math|\<gamma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I>.
    Define\ 

    <\equation*>
      <around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      by >w<rsub|i>=v<rsub|\<gamma\><around*|(|i|)>><text| and
      ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F\\<around*|{|0|}><text|
      by >\<alpha\><rsub|i>=\<beta\><rsub|\<gamma\><around*|(|i|)>>
    </equation*>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|w>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>\\I>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\>I>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>\\I>0\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\>I>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of neutral element (2)>]>>>|<cell|<big|sum><rsub|i\<in\>I>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>v<rsub|\<gamma\><around*|(|i|)>>\<cdot\>\<beta\><rsub|\<gamma\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>>>>
    </eqnarray*>
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
    Let <math|v\<in\>W> and define

    <\equation*>
      <around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>><text|
      by >v<rsub|i>=v<text| and ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>><text|
      by >\<alpha\><rsub|i>=1
    </equation*>

    then\ 

    <\equation*>
      <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum general single>]>>\<alpha\><rsub|1>\<cdot\>v<rsub|1>=1\<cdot\>v=v
    </equation*>

    proving that <math|v\<in\>span<around*|(|W|)>> hence\ 

    <\equation*>
      W\<subseteq\>span<around*|(|W|)>
    </equation*>
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
    Let <math|v\<in\>span<around*|(|U|)>> then there exists
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>U>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that

    <\equation*>
      v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>
    </equation*>

    As <math|><math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>U>
    we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|v<rsub|i>\<subseteq\>U\<subseteq\>W> proving that
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>,
    so <math|v\<in\>span<around*|(|W|)>>.
  </proof>

  <\example>
    <label|linear span of empty set>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    then <math|span<around*|(|\<varnothing\>|)>=<around*|{|0|}>>
  </example>

  <\proof>
    Let <math|v\<in\>span<around*|(|\<varnothing\>|)>> then there exists
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<varnothing\>>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>\<subseteq\>F>
    such that <math|v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>.
    As <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<varnothing\>>
    we have by the definition of a family that the associated function of the
    family is <math|v:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>\<varnothing\>>,
    hence <math|<around*|{|1,\<ldots\>,n|}>=\<varnothing\>>. So that\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=<big|sum><rsub|i\<in\>\<varnothing\>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>\<equallim\><rsub|<text|[definition:
      <reference|sum generalized sum>]>>0
    </equation*>

    proving that

    <\equation*>
      span<around*|(|\<varnothing\>|)>=<around*|{|0|}>
    </equation*>

    \;
  </proof>

  Next we prove that the span of a set is a sub-space.

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
    First as <math|\<varnothing\>\<subseteq\>W> we have
    <math|<around*|{|0|}>=span<around*|(|\<varnothing\>|)>\<subseteq\>span<around*|(|W|)>>
    proving that\ 

    <\equation*>
      0\<in\>W <text|hence >W\<neq\>\<varnothing\>
    </equation*>

    Futher let <math|x,y\<in\>span<around*|(|W|)>> and
    <math|\<alpha\>,\<beta\>\<in\>F> then there exists
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>,
    <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    such that\ 

    <\equation>
      <label|eq 11.15.080>x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i><text|
      and >y=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>u<rsub|i>
    </equation>

    Define now

    <\equation*>
      <around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>\<subseteq\>V<text|
      by >w<rsub|i>=<choice|<tformat|<table|<row|<cell|v<rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|u<rsub|i-n><text| if
      >i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>
    </equation*>

    and\ 

    <\equation*>
      <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>\<subseteq\>F<text|
      by ><choice|<tformat|<table|<row|<cell|\<alpha\>\<cdot\>\<alpha\><rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<beta\>\<cdot\>\<beta\><rsub|i-n><text|
      if >i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>
    </equation*>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>\<gamma\><rsub|i>\<cdot\>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<gamma\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>\<gamma\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\>\<alpha\><rsub|i>|)>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>><around*|(|\<beta\>\<cdot\>\<beta\><rsub|i-n>|)>\<cdot\>u<rsub|i-n>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|vector space finite sum (1)>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+\<beta\>\<cdot\><big|sum><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>\<beta\><rsub|i-n>\<cdot\>u<rsub|i-n>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\><big|sum><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>\<beta\><rsub|i-n>\<cdot\>u<rsub|i-n><eq-number><label|eq
      11.16.080>>>>>
    </eqnarray*>

    Define now\ 

    <\equation*>
      \<lambda\>:<around*|{|n+1,\<ldots\>,n+m|}>\<rightarrow\><around*|{|1,\<ldots\>,m|}><text|
      by >\<lambda\><around*|(|i|)>=i-n
    </equation*>

    then we have:

    <\description>
      <item*|injectivity>If <math|\<lambda\><around*|(|i|)>=\<lambda\><around*|(|j|)>>
      then <math|i-n=j-n> so that <math|i=j>.

      <item*|surjectivity>If <math|j\<in\><around*|{|1,\<ldots\>,m|}>> then
      <math|1\<leqslant\>j\<leqslant\>m\<Rightarrow\>n+1\<leqslant\>j+n\<leqslant\>m+n>
      so that <math|j+n\<in\><around*|{|n+1,\<ldots\>,n+m|}>> and
      <math|\<lambda\><around*|(|j+n|)>=j+n-n=j>
    </description>

    So that\ 

    <\equation>
      <label|eq 11.17.080>\<lambda\>:<around*|{|n+1,\<ldots\>,n+m|}>\<rightarrow\><around*|{|1,\<ldots\>,m|}><text|
      by >\<lambda\><around*|(|i|)>=i-n<text| is a bijection>
    </equation>

    So we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>\<beta\><rsub|i-1>\<cdot\>u<rsub|i-1>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>\<beta\><rsub|\<lambda\><around*|(|i|)>>\<cdot\>u<rsub|\<lambda\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>u<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 11.15.080>]>>>|<cell|y>>>>
    </eqnarray*>

    Which by [eq: <reference|eq 11.16.080>] proves that\ 

    <\equation*>
      <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>\<gamma\><rsub|i>\<cdot\>w<rsub|i>=\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y
    </equation*>

    Hence we have proved that\ 

    <\equation*>
      \<forall\>x,y\<in\>W<text| and >\<alpha\>,\<beta\>\<in\>F<text| we have
      that >\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y\<in\>span<around*|(|W|)>
    </equation*>
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
    Let <math|v\<in\>span<around*|(|W|)>> then there exists a
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    such that\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>
    </equation*>

    As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|v<rsub|i>\<in\>W> and <math|W> is a subspace we have that
    <math|\<alpha\><rsub|i>\<cdot\>v<rsub|i>\<in\>W> so by [theorem:
    <reference|vector space finite sum (4)>]
    <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>\<in\>W>
    or <math|v\<in\>W>. This proves that <math|span<around*|(|W|)>\<subseteq\>W>
    which together with [theorem: <reference|linear span contains set>]
    proves that\ 

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
    [theorepm: <reference|linear span of span>] we have that\ 

    <\equation*>
      span<around*|(|W|)>=span<around*|(|span<around*|(|w|)>|)>
    </equation*>
  </proof>

  The span of a set is not changed if you remove from the set a vector that
  is a linear combination of different vectors of the subset. This is
  expressed in the following theorem.

  <\theorem>
    <label|linear span reducing set and keep span intact>Let
    \ <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> and <math|v\<in\>V> such that\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>
    </equation*>

    where <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W\\<around*|{|v|}>>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    then\ 

    <\equation*>
      span<around*|(|W|)>=span<around*|(|W\\<around*|{|v|}>|)>
    </equation*>
  </theorem>

  <\proof>
    First as <math|W\\<around*|{|v|}>\<subseteq\>W> we have by [theorem:
    <reference|linear span subsets>] that\ 

    <\equation>
      <label|eq 11.29.082>span<around*|(|W\\<around*|{|v|}>|)>\<subseteq\>span<around*|(|W|)>
    </equation>

    Let now <math|w\<in\>span<around*|(|W|)>> then there exists a
    <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    and <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that\ 

    <\equation*>
      w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<gamma\><rsub|i>\<cdot\>u<rsub|i>
    </equation*>

    Using [theorem: <reference|linear combination distinct>] there exist a
    finite <with|font-series|bold|disjoint> family
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W>
    and a family \ <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>F>
    such that\ 

    <\equation>
      <label|eq 11.30.082>w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>
    </equation>

    We have now for <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    either\ 

    <\description>
      <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >v<rsub|i>\<neq\>v>>Then <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W\\<around*|{|v|}>>
      so that by [eq: <reference|eq 11.30.082>]

      <\equation*>
        w\<in\>span<around*|(|W\\<around*|{|v|}>|)>
      </equation*>

      <item*|<math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}><text|
      >v<rsub|k>=v>>Then as \ <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W>
      is disjoint we have <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>\\<around*|{|k|}>>
      that <math|v<rsub|j>\<neq\>v>. Define now\ 

      <\equation>
        <label|eq 11.31.082><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m-1|}>>\<subseteq\>W\\<around*|{|v|}><text|
        by >x<rsub|i>=<choice|<tformat|<table|<row|<cell|v<rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>|<row|<cell|v<rsub|i+1><text|
        if >i\<in\><around*|{|k,\<ldots\>,m-1|}>>>|<row|<cell|w<rsub|i-m+1><text|
        if >i\<in\><around*|{|m,\<ldots\>,n+m-1|}>>>>>>
      </equation>

      and

      <\equation>
        <label|eq 11.32.082><around*|{|\<mu\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m-1|}>><text|
        by >\<mu\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<beta\><rsub|i><text|
        if >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>|<row|<cell|\<beta\><rsub|i+1><text|
        if >i\<in\><around*|{|k,\<ldots\>,m-1|}>>>|<row|<cell|\<beta\><rsub|k>\<cdot\>\<alpha\><rsub|i-m+1><text|
        if >i\<in\><around*|{|m,\<ldots\>,n+m-1|}>>>>>>
      </equation>

      and\ 

      <\equation>
        <label|eq 11.33.082>\<tau\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|m,\<ldots\>,n+m-1|}><text|
        by >\<tau\><around*|(|i|)>=i-m+1<text| which is trivially a
        bijection>
      </equation>

      and

      <\equation>
        <label|eq 11.34.082>\<rho\>:<around*|{|k,\<ldots\>,m-1|}>\<rightarrow\><around*|{|k+1,\<ldots\>,m|}><text|
        by >\<rho\><around*|(|i|)>=i+1<text| which is trivially a bijection>
      </equation>

      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,n+m-1|}>>\<mu\><rsub|i>\<cdot\>x<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,n+m-1|}>><around*|(|\<beta\><rsub|k>\<cdot\>\<alpha\><rsub|i-m+1>|)>\<cdot\>w<rsub|i-m+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,n+m-1|}>>\<beta\><rsub|k>\<cdot\><around*|(|\<alpha\><rsub|i-m+1>\<cdot\>w<rsub|i-m+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|vector space finite sum
        (1)>]>>>|<cell|\<beta\><rsub|k>\<cdot\><big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,n+m-1|}>>\<alpha\><rsub|i-m+1>\<cdot\>w<rsub|i-m+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.33.082>]>>>|<cell|\<beta\><rsub|k>\<cdot\><big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,n+m-1|}>>\<alpha\><rsub|\<tau\><around*|(|i|)>>\<cdot\>w<rsub|\<tau\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|\<beta\><rsub|k>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|\<beta\><rsub|k>\<cdot\>v>>|<row|<cell|>|<cell|=>|<cell|\<beta\><rsub|k>\<cdot\>v<rsub|k><eq-number><label|eq
        11.35.082>>>>>
      </eqnarray*>

      and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+m-1|}>>\<mu\><rsub|i>\<cdot\>x<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<mu\><rsub|i>\<cdot\>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m-1|}>>\<mu\><rsub|i>\<cdot\>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,n+m-1|}>>\<mu\><rsub|i>\<cdot\>x<rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.35.082>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<mu\><rsub|i>\<cdot\>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m-1|}>>\<mu\><rsub|i>\<cdot\>x<rsub|i>+\<beta\><rsub|k>\<cdot\>v<rsub|k>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.31.082>, <reference|eq
        11.32.082>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m-1|}>>\<beta\><rsub|i+1>\<cdot\>v<rsub|i+1>+\<beta\><rsub|k>\<cdot\>v<rsub|k>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.34.082>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m-1|}>>\<beta\><rsub|\<rho\><around*|(|i|)>>\<cdot\>v<rsub|\<rho\><around*|(|i|)>>+\<beta\><rsub|k>\<cdot\>v<rsub|k>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+\<beta\><rsub|k>\<cdot\>v<rsub|k>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i><big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.30.082>]>>>|<cell|>>|<row|<cell|w>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+m-1|}>>\<mu\><rsub|i>\<cdot\>x<rsub|i>>
      which as <math|<around*|{|\<upsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m-1|}>>\<subseteq\>W\\<around*|{|v|}>>
      [see: <reference|eq 11.31.082>] proves that
      <math|w\<in\>span<around*|(|W\\<around*|{|v|}>|)>>.
    </description>

    So in all cases we have <math|w\<in\>span<around*|(|W\\<around*|{|v|}>|)>>
    proving that <math|span<around*|(|W|)>\<subseteq\>span<around*|(|W\\<around*|{|v|}>|)>>
    which combined with [eq: <reference|eq 11.29.082>] proves that\ 

    <\equation*>
      span<around*|(|W\\<around*|{|v|}>|)>=span<around*|(|W|)>
    </equation*>
  </proof>

  \;

  <subsubsection|Linear (in)dependent sets>

  Disjoint families have a relation with finite sets as is expressed in the
  following two theorems:

  <\theorem>
    <label|linear finite set>Let <math|n\<in\>\<bbb-N\><rsub|0> >and
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    a finite disjoint set then <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    is a finite set with <math|card<around*|(|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=n>.
    further if <math|v:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>V> is the
    function defining <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then <math|v:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    is a bijection.
  </theorem>

  <\proof>
    Let <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subset\>V>
    a finite disjoint set then it is defined by a function
    <math|v:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>V>. Consider now the
    function <math|v:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    then we have:

    <\description>
      <item*|injectivity>If <math|v<around*|(|i|)>=v<around*|(|j|)>> then
      <math|v<rsub|i>=v<around*|(|i|)>=v<around*|(|j|)>=v<rsub|j>> so that
      <math|i=j>.

      <item*|surjectivity>This follows from the fact that

      <\equation*>
        v<around*|(|<around*|{|1,\<ldots\>,n|}>|)>=<around*|{|v<around*|(|i|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<equallim\><rsub|definition><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>
      </equation*>
    </description>

    So <math|v:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    is a bijection. By [theorems: <reference|complex finite set
    condition>,<reference|complex cardinality alternative>] it follows that
    <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>> is a
    finite set with <math|card<around*|(|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=n>.
  </proof>

  <\theorem>
    <label|linear finite set (1)>Let <math|V> be a finite set then there
    exists a finite disjoint set <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    such that <math|V=<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
  </theorem>

  <\proof>
    If <math|V> is a finite set then by [theorem: <reference|complex finite
    set condition>] there exists a bijection
    <math|v:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>V> defining a family
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>.
    If <math|v<rsub|i>=v<rsub|j>> then <math|v<around*|(|i|)>=v<rsub|i>=v<rsub|j>=v<around*|(|j|)>>
    proving as <math|v> is injective that <math|i=j>. Finally
    <math|V=v<around*|(|<around*|{|1,\<ldots\>,n|}>|)>=<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>.
  </proof>

  <\definition>
    <label|linear dependent set><dueto|Linear dependency>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then <math|W> <with|font-series|bold|is linear
    dependent >if there exist a <with|font-series|bold|finite disjoint family
    ><math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    such that there exist a finite family
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    satisfying <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<alpha\><rsub|i>\<neq\>0> \ such that
    <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>.
  </definition>

  <\definition>
    <label|linear independent set><dueto|Linear independency>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then <math|W> is <with|font-series|bold|linear
    independent> if <math|W> is <with|font-series|bold|not linear dependent>.
  </definition>

  <\theorem>
    <label|linear independent set alternative>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> then <math|W> is linear independent if and only if
    for every <with|font-series|bold|finite disjoint family
    ><math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    we have for every <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    satisfying <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>
    that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<alpha\><rsub|i>=0>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|W> is independent then <math|W>
      is not dependent. Hence for every finite disjoint family
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
      we have for every <math|><math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      satisfying <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<alpha\><rsub|i>\<neq\>0> that
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>\<neq\>0>.
      So if <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      satisfies <math|><math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>
      we must have that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<alpha\><rsub|i>=0> otherwise we reach a contradiction.

      <item*|<math|\<Leftarrow\>>>Assume that <math|W> is linear dependent
      then there exist a <with|font-series|bold|finite disjoint >family
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      with a <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|\<alpha\><rsub|k>\<neq\>0> such that
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>.
      Using the hypothesis we have then that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<alpha\><rsub|i>=0> contradicting <math|\<alpha\><rsub|k>=0>.
      Hence <math|W> is not linear dependent proving that <math|W> is linear
      dependent.
    </description>
  </proof>

  <\example>
    <label|linear independent empty set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    <math|\<varnothing\>> is linear independent.
  </example>

  <\proof>
    Assume that <math|\<varnothing\>> is linear dependent then there exists a
    finite disjoint family <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<varnothing\>>,
    using [proposition: <reference|family empty family condition>] it follows
    then that <math|<around*|{|1,\<ldots\>,n|}>=\<varnothing\>> so that we
    can never find a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>>
    such that <math|\<exists\>k\<in\>\<varnothing\>> with
    <math|\<alpha\><rsub|k>=0>. Hence <math|\<varnothing\>> is not linear
    dependent and must then by definitionbe linear independent.
  </proof>

  <\example>
    <label|linear independent singleton>Let
    \ <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|v\<in\>V> such that <math|v\<neq\>0> then <math|<around*|{|v|}>> is
    a linear independent set.
  </example>

  <\proof>
    Let <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|{|v|}>>
    be a finite disjoint family. If <math|n\<gtr\>1> then we have
    <math|v<rsub|0>=v=v<rsub|1>> so that <math|0=1> a contradiction. So for
    <math|n> we have either:

    <\description>
      <item*|<math|n=0>>Then <math|<around*|{|1,\<ldots\>,n|}>=<around*|{|1,\<ldots\>,0|}>=\<varnothing\>>
      so that <math|\<forall\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>>
      such that <math|<big|sum><rsub|i\<in\>\<varnothing\>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>
      we have that <math|\<forall\>i\<in\>\<varnothing\>>
      <math|\<alpha\><rsub|i>=0> is satified vacuously.

      <item*|<math|n=1>>Then for <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1|}>>>
      satisfying <math|<big|sum><rsub|i\<in\><around*|{|1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>
      we have as

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>\<alpha\><rsub|1>\<cdot\>v<rsub|1>=\<alpha\><rsub|1>\<cdot\>v
      </equation*>

      that <math|\<alpha\><rsub|1>\<cdot\>v=0>. Assume that
      <math|\<alpha\><rsub|1>\<neq\>0> then
      <math|v=<around*|(|\<alpha\><rsub|1>|)><rsup|-1>\<cdot\><around*|(|\<alpha\><rsub|1>\<cdot\>v|)>=0>
      contradicting <math|v\<neq\>0>. Hence <math|\<alpha\><rsub|1>=0> or
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,1|}>> we have
      <math|\<alpha\><rsub|i>=0>.
    </description>
  </proof>

  <\example>
    <label|linear dependent set containing neutral element>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> such that <math|0\<in\>W> then <math|W> is linear
    dependent.
  </example>

  <\proof>
    Define <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>1|}>>\<subseteq\>W>
    by <math|v<rsub|1>=0> and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>F>
    by <math|\<alpha\><rsub|1>=1\<neq\>0> then

    <\equation*>
      <big|sum><rsub|i\<in\><around*|{|1\<ldots\>,1|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum general single>]>>\<alpha\><rsub|1>\<cdot\>v<rsub|1>=\<alpha\><rsub|1>\<cdot\>0=0
    </equation*>

    proving as <math|\<alpha\><rsub|1>\<neq\>0> that <math|W> is linear
    dependent.
  </proof>

  Linear dependent sets can also be described as sets where one of the vector
  can be written as a linear combination of some other vectors, this is
  proved in the next theorem.\ 

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
      \<exists\>w\<in\>W<text| so that >\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W\\<around*|{|w|}><text|
      and >\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      such that >w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|W> is linear dependent there
      exists a finite disjoint family <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
      and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      where <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|\<alpha\><rsub|k>\<neq\>0> such that
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>.
      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>+\<alpha\><rsub|k>\<cdot\>v<rsub|k>>>>>
      </eqnarray*>

      so as <math|\<alpha\><rsub|k>\<neq\>0> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsub|k>>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of inverses (2)>]>>>|<cell|<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>-<around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|vector space finite sum
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>><around*|(|\<alpha\><rsub|k>|)><rsup|-1><around*|(|-<around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>><around*|(|<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)>|)>\<cdot\>v<rsub|i>>>>>
      </eqnarray*>

      So if we define\ 

      <\equation*>
        <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>><text|
        by >\<gamma\><rsub|i>=<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)>
      </equation*>

      then we have\ 

      <\equation>
        <label|eq 11.23.080>v<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>
      </equation>

      Further if <math|v<rsub|k>\<in\><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>>
      then <math|\<exists\>l\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|l\<neq\>k> such that <math|v<rsub|k>=v<rsub|l>>, as
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is disjoint we reach the contradiction <math|k=l>. Hence
      <math|v<rsub|k>\<nin\><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>>
      so as <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>\<subseteq\>W>
      we have <math|<around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>\<subseteq\>W\\<around*|{|w|}>>
      or\ 

      <\equation>
        <label|eq 11.24.080><around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<subseteq\>W\\<around*|{|w|}>
      </equation>

      As <math|<around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>> is finite there
      exists by [theorem: <reference|complex finite set condition>] there
      exists a bijection

      <\equation*>
        \<beta\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>
      </equation*>

      Define now\ 

      <\equation*>
        w=v<rsub|k><text|, ><around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><text|
        by >\<beta\><rsub|i>=\<gamma\><rsub|\<beta\><around*|(|i|)>><text|
        and ><around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W<text|
        by >w<rsub|i>=v<rsub|\<beta\><around*|(|i|)>>
      </equation*>

      Further take <math|w=v<rsub|k>> then if
      <math|w\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>>
      then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,m|}>> such that

      <\equation*>
        v<rsub|k>=w<rsub|i>=v<rsub|\<beta\><around*|(|i|)>>\<in\><around*|{|v<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>
      </equation*>

      contradicting [eq: <reference|eq 11.24.080>]. So we have\ 

      <\equation*>
        w\<nin\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>
      </equation*>

      Finally

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<gamma\><rsub|\<beta\><around*|(|i|)>>\<cdot\>v<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<gamma\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.23.080>]>>>|<cell|v<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|w>>>>
      </eqnarray*>

      \ <item*|<math|\<Leftarrow\>>>Let <math|w\<in\>W>,
      <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W>
      be a finite family such that <math|w\<nin\><around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>>
      and <math|<around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>F>
      such that <math|w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>.
      Using [theorem: <reference|linear combination distinct>] there exist
      then a <with|font-series|bold|finite disjoint family>
      <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
      and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      such that\ 

      <\equation>
        <label|eq 11.25.080>w=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i><text|
        and >w\<nin\><around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>=<around*|{|w<rsub|i>\|i\<in\><around*|{|1\<ldots\>,m|}>|}>
      </equation>

      Define then\ 

      <\equation*>
        <around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>W<text|
        by >v<rsub|n+1>=<choice|<tformat|<table|<row|<cell|w<text| if
        >i=n+1>>|<row|<cell|w<rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>
      </equation*>

      and\ 

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>F<text|
        by >\<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|-1<text| if
        >i=n+1>>|<row|<cell|\<alpha\><rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,n|}>>>>>>
      </equation*>

      Then if <math|i,j\<in\><around*|{|1,\<ldots\>,n+1|}>> with
      <math|v<rsub|i>=v<rsub|j>> we have either\ 

      <\description>
        <item*|<math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
        <math|w<rsub|i>=w<rsub|j>> and as
        <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
        is disjoint we have <math|i=j>.

        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>j=n+1>>Then
        <math|v<rsub|j>=w> and <math|v<rsub|i>=w<rsub|i>> so that
        <math|w=w<rsub|i>\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
        contradicting <math|w\<nin\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
        so this case never occurs.

        <item*|<math|i=n+1\<wedge\>j\<in\><around*|{|1,\<ldots\>,n|}>>>Then
        \ <math|v<rsub|i>=w> and <math|v<rsub|j>=w<rsub|j>> so that
        <math|w=w<rsub|j>\<in\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
        contradicting <math|w\<nin\><around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
        so this case never occurs.

        <item*|<math|i=j=n+1>>Then <math|i=j>
      </description>

      so in all valid cases we have <math|i=j>. This proves that\ 

      <\equation*>
        <around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>W<text|
        is a finite <with|font-series|bold|disjoint> family>
      </equation*>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|n+1|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>><rsub|>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>v<rsub|i>+\<beta\><rsub|n+1>\<cdot\>v<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>+<around*|(|-1|)>\<cdot\>w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.25.080>]>>>|<cell|w+<around*|(|-w|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      which as <math|\<beta\><rsub|n+1=>=-1\<neq\>0> proves that\ 

      <\equation*>
        W<text| is linear dependent>
      </equation*>
    </description>
  </proof>

  We have a simpler definition for (in)dependent sets of vectors if the sets
  are finite.

  <\theorem>
    <label|linear independent finite set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> a finite set [so that by [theorem:
    <reference|linear finite set (1)>] there exist as finite disjoint family
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    such that <math|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=W>]
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|W<text| is linear
      independent>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<forall\>i\<in\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      with ><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>=0<text|
      we have >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >\<alpha\><rsub|i>=0>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This follows from [theorem:
      <reference|linear independent set alternative>]

      <item*|<math|\<Leftarrow\>>>Let <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>W>
      a finite disjoint set and take <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>F>
      such that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>=0>.
      Using [theorem: <reference|linear finite set>] we have that\ 

      <\equation>
        <label|eq 11.18.080>w:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>W<text|
        is a bijection>
      </equation>

      and

      <\equation>
        <label|eq 11.19.080>u:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>U
        <text| and >u<rsup|-1>:U\<rightarrow\><around*|{|1,\<ldots\>,m|}><text|
        are bijections where >U=<around*|{|u<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<subseteq\>W
      </equation>

      Define now\ 

      <\equation*>
        v:w<rsup|-1><around*|(|U|)>\<rightarrow\>U<text| by
        >v<around*|(|i|)>=w<around*|(|i|)>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>Let <math|i,j\<in\>w<rsup|-1><around*|(|U|)>> such
        that <math|v<around*|(|i|)>=v<around*|(|j|)>> then
        <math|w<around*|(|i|)>=v<around*|(|i|)>=v<around*|(|j|)>=w<around*|(|j|)>>
        proving as <math|w> is a bijection that <math|i=j>.

        <item*|surjectivity>If <math|u\<in\>U> then as <math|U\<subseteq\>W>
        and <math|w:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>W> is surjective
        there exist a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|u=w<around*|(|i|)>>. From this it follows that
        <math|i\<in\>w<rsup|-1><around*|(|U|)>> so that
        <math|v<around*|(|i|)>=w<around*|(|i|)>=u>.
      </description>

      so that\ 

      <\equation>
        <label|eq 11.20\<point\>080>v:w<rsup|-1><around*|(|U|)>\<rightarrow\>U<text|
        is a bijection>
      </equation>

      Using the composition of bijections it follows that\ 

      <\equation>
        <label|eq 11.21.080>\<gamma\>=u<rsup|-1>\<circ\>v:w<rsup|-1><around*|(|U|)>\<rightarrow\><around*|{|1,\<ldots\>,m|}><text|
        is a bijection and >w<rsup|-1><around*|(|U|)>\<subseteq\><around*|[|1,\<ldots\>,n|]>
      </equation>

      Then for <math|i\<in\>w<rsup|-1><around*|(|U|)>> we have\ 

      <\equation>
        <label|eq 11.22.080>u<rsub|\<gamma\><around*|(|i|)>>=u<around*|(|\<gamma\><around*|(|i|)>|)>=u<around*|(|u<rsup|-1><around*|(|v<around*|(|i|)>|)>|)>=v<around*|(|i|)>=w<around*|(|i|)>=w<rsub|i>
      </equation>

      Deine now\ 

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
        by >\<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
        >i\<in\><around*|{|1,\<ldots\>,n|}>\\w<rsup|-1><around*|(|U|)>>>|<row|<cell|\<alpha\><rsub|\<gamma\><around*|(|i|)>><text|
        if >i\<in\>w<rsup|-1><around*|(|U|)>>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\w<rsup|-1><around*|(|U|)>>\<beta\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\>w<rsup|-1><around*|(|U|)>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\w<rsup|-1><around*|(|U|)>>0\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\>w<rsup|-1><around*|(|U|)>>\<alpha\><rsub|\<gamma\><around*|(|i|)>>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\>w<rsup|-1><around*|(|U|)>>\<alpha\><rsub|\<gamma\><around*|(|i|)>>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.22.080>]>>>|<cell|<big|sum><rsub|i\<in\>w<rsup|-1><around*|(|U|)>>\<alpha\><rsub|\<gamma\><around*|(|i|)>>\<cdot\>u<rsub|\<gamma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.21.080>] and [theorem: <reference|sum bijection on
        index>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      So by the hypothese we have that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<beta\><rsub|i>=0>. So if <math|i\<in\><around*|{|1,\<ldots\>,m|}>>
      then

      <\equation*>
        \<alpha\><rsub|i>=\<alpha\><rsub|\<gamma\><around*|(|\<gamma\><rsup|-1><around*|(|i|)>|)>>=\<beta\><rsub|<around*|(|\<gamma\><rsup|-1><around*|(|i|)>|)>>=0
      </equation*>

      Hence <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> we have
      <math|\<alpha\><rsub|i>=0>. So for every finite disjoint family
      <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
      we have if <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>F>
      satisfies \ <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>=0>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> we have
      <math|\<alpha\><rsub|i>=0>, proving that\ 

      <\equation*>
        W<text| is linear independent>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|linear dependent finite set>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> a finite set [so that by [theorem:
    <reference|linear finite set (1)>] there exist as finite disjoint family
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    such that <math|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=W>]
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|W<text| is linear
      dependent>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      satisfying >\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}><text| with
      >\<alpha\><rsub|k>\<neq\>0<text| such that
      ><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>=0>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that
      <math|\<forall\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      where <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|\<alpha\><rsub|k>\<neq\>0> we have that
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>\<neq\>0>.
      So if <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      is such that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>=0>
      we must have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|\<alpha\><rsub|i>=0> otherwise
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>\<neq\>0>.
      Hence by [theorem: <reference|linear independent finite set>] <math|W>
      would be linear independent contradicting the hypothesis that <math|W>
      is linear dependent. Hence we must have that
      <math|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      where <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|\<alpha\><rsub|k>\<neq\>0> such that
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>=0>.

      <item*|<math|\<Leftarrow\>>>This follows from the definition of linear
      independency.
    </description>
  </proof>

  From the above we have another characterization for a linear dependent
  finite set.

  <\theorem>
    <label|linear dependent finite set (1)>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> a finite set [so that by [theorem:
    <reference|linear finite set (1)>] there exist as finite disjoint family
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    such that <math|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=W>]
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|W<text| is linear
      dependent>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
      and a >k\<in\><around*|{|1,\<ldots\>,n|}><text| such that
      >w<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|W> is linear dependent we have by
      [theorem: <reference|linear dependent finite set>] that there exists a
      <math|<around*|{|\<alpha\>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      where <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|\<alpha\><rsub|k>\<neq\>0> such that
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>=0>.
      Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>+\<alpha\><rsub|k>\<cdot\>w<rsub|k>>>>>
      </eqnarray*>

      So as <math|\<alpha\><rsub|k>\<neq\>0> we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|w<rsub|k>>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of inverses (2)>]>>>|<cell|<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>-<around*|(|\<alpha\><rsub|i>\<cdot\>w<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|vector space finite sum
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>><around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|-<around*|(|\<alpha\><rsub|i>\<cdot\>w<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>><around*|(|<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)>|)>\<cdot\>w<rsub|i>>>>>
      </eqnarray*>

      So if we define

      <\equation*>
        <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\|<around*|{|k|}>><text|
        by >\<gamma\><rsub|i>=<around*|(|\<alpha\><rsub|k>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)>
      </equation*>

      then we have\ 

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<gamma\><rsub|i>\<cdot\>w<rsub|i>=w<rsub|k>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      be such that <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|w<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>.
      Define then\ 

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
        by >\<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|-1<text| if
        >i=k>>|<row|<cell|\<alpha\><rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>+\<beta\><rsub|k>\<cdot\>w<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|w<rsub|k>+<around*|(|-1|)>\<cdot\>w<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      which as <math|\<beta\><rsub|k>=-1\<neq\>0> proves by [theorem:
      <reference|linear dependent finite set>] that

      <\equation*>
        W<text| is linear dependent>
      </equation*>
    </description>
  </proof>

  <\corollary>
    <label|linear depdnent finite set (2)>Let
    \ <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over the field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    <math|W\<subseteq\>V> a finite set [so that by [theorem:
    <reference|linear finite set (1)>] there exist as finite disjoint family
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
    such that <math|<around*|{|w<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=W>]
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|W<text| is linear
      dependent>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}><text|
      and ><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<subseteq\>F<text|
      such that >w<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>|<cell|>>>>
    </eqnarray*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Define\ 

      <\equation*>
        L=<around*|{|l\<in\><around*|{|1,\<ldots\>,n|}>\|\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
        such that >w<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>|}>
      </equation*>

      then <math|L\<subseteq\><around*|{|1,\<ldots\>,n|}>> a finite set, so
      that <math|L> is finite, further by [theorem: <reference|linear
      dependent finite set (1)>] <math|L\<neq\>\<varnothing\>> hence
      <math|k=max<around*|(|L|)>> exist [see theorem: <reference|finite
      ordered sets have a maximum and minimum>]. So\ 

      <\equation>
        <label|eq 11.26.080>\<forall\>l\<in\>L<text| we have
        >l\<leqslant\>k<text| and >\<exists\><around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F<text|
        such that >w<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>
      </equation>

      Let <math|l\<in\><around*|{|k+1,\<ldots\>,n|}>>. Assume that
      <math|\<alpha\><rsub|l>\<neq\>0> then as <math|l\<neq\>k> we can define

      <\equation*>
        <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>><text|
        by >\<gamma\><rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1><text|
        if >i=k>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)><text|
        if >i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k,l|}>>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l|}>>\<gamma\><rsub|i>\<cdot\>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets
        (1)>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<gamma\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>\<gamma\><rsub|i>\<cdot\>w<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)>|)>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>><around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><around*|(|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|-\<alpha\><rsub|i>|)>|)>\<cdot\>w<rsub|i>+<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\>w<rsub|k>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|vector space finite sum
        (1)>]>>>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>><rsub|><around*|(|-\<alpha\><rsub|i>|)>\<cdot\>w<rsub|i>+<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\>w<rsub|k>>|<cell|>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1><around*|(|w<rsub|k>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i><rsub|>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|eq 11.26.080>]>>>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i><rsub|>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l.k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|l,k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i><rsub|>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\><rsub|l>|)><rsup|-1>\<cdot\><around*|(|\<alpha\><rsub|j>\<cdot\>v<rsub|l>|)>>|<cell|=>|<cell|>>|<row|<cell|v<rsub|l>>|<cell|>|<cell|>>>>
      </eqnarray*>

      Hence <math|l\<in\>L> so that by [eq: <reference|eq 11.26.080>]
      <math|l\<leqslant\>k> contradicting
      <math|l\<in\><around*|{|k+1,\<ldots\>,n|}>>. Hence we have\ 

      <\equation>
        <label|eq 11.27.080>\<forall\>l\<in\><around*|{|k+1,\<ldots\>,n|}><text|
        we have that <math|\<alpha\><rsub|l>=0>>
      </equation>

      Hence we have as

      <\equation*>
        <around*|{|1,\<ldots\>,k-1|}><big|cup><around*|{|k+1,\<ldots\>,n|}>=<around*|{|1,\<ldots\>,n|}>\\k<text|
        and ><around*|{|1,\<ldots\>,k-1|}><big|cap><around*|{|k+1,\<ldots\>,n|}>=\<varnothing\>
      </equation*>

      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|w<rsub|k>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.26.080>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>0\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>>>>
      </eqnarray*>

      <item*|<math|\<Leftarrow\>>>Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>>
      and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<subseteq\>F>
      such that <math|w<rsub|k>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>>.
      Define then

      <\equation*>
        <around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<subseteq\>F<text|
        by >\<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
        >i\<in\><around*|{|k+1,\<ldots\>,n|}>>>|<row|<cell|\<alpha\><rsub|i><text|
        if >i\<in\><around*|{|1,\<ldots\>,k-1|}>>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k+1,\<ldots\>,n|}>>0\<cdot\>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>\<beta\><rsub|i>\<cdot\>w>>|<row|<cell|>|<cell|=>|<cell|w<rsub|k>>>>>
      </eqnarray*>

      proving by [theorem: <reference|linear dependent finite set (1)>] that\ 

      <\equation*>
        W<text| is linear dependent>
      </equation*>
    </description>
  </proof>

  \;

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
      <item>Let <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>U>
      be a finite disjoint family and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      such that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>w<rsub|i>=0>.
      As <math|U\<subseteq\>W> we have that
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>,
      so as <math|W> is linear independent we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|\<alpha\><rsub|i>=0>. Hence <math|U> is linear independent.

      <item>As <math|U> is linear dependent there exists a finite disjoint
      family <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>U>
      and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
      where <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|\<alpha\><rsub|k>\<neq\>0> such that
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>=0>.
      As <math|U\<subseteq\>W> we have that
      <math|><math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>W>
      proving by definition of linear depdency that <math|W> is linear
      dependent.
    </enumerate>
  </proof>

  \;

  The following lemma will be important later when we define the concept of a
  dimension.

  <\lemma>
    <label|linear Steinitz lemma><dueto|Steinitz Lemma>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>. Suppose
    that <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V>
    is a finite disjoint family such that
    <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>> is
    linear independent and <math|T\<subseteq\>V> satisifies
    <math|span<around*|(|T|)>=V>. Then there exists a
    <math|T<rsub|n>\<subseteq\>T> with <math|card<around*|(|T<rsub|n>|)>=n>
    such that

    <\equation*>
      span<around*|(|<around*|(|T\\T<rsub|n>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=V.
    </equation*>
  </lemma>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|If
      0\<leqslant\>k\<leqslant\>n<text| then
      >\<exists\>T<rsub|k>\<subseteq\>T<text| with
      >card<around*|(|T<rsub|k>|)>=k<text| such that
      >span<around*|(|<around*|(|T\\T<rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>|}>=V
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>Take <math|T<rsub|0>=\<varnothing\>> then
      <math|card<around*|(|T<rsub|0>|)>=0> and

      <\equation*>
        V=span<around*|(|T|)>=span<around*|(|T<big|cup>\<varnothing\>|)>=span<around*|(|T<big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,0|}>|}>|)>
      </equation*>

      proving that <math|0\<in\>S>.

      <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>If
      <math|0\<leqslant\>k+1\<leqslant\>n> then <math|k\<less\>n> and as
      <math|k\<in\>S\<subseteq\>\<bbb-N\><rsub|0>> we have
      <math|0\<leqslant\>k> so that <math|0\<leqslant\>k\<less\>n>. Using the
      fact that <math|k\<in\>S> again we have that
      <math|\<exists\>T<rsub|k><rprime|'>\<subseteq\>T<text| with
      >card<around*|(|T<rprime|'><rsub|k>|)>=k<text| such that
      >span<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>=V>.
      Define\ 

      <\equation>
        <label|eq 11.46.083>T<rsub|k>=<around*|(|T\\T<rprime|'><rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>
      </equation>

      then we have\ 

      <\equation>
        <label|eq 11.47.083>span<around*|(|T<rsub|k>|)>=V
      </equation>

      As <math|e<rsub|k+1>\<in\>V=span<around*|(|T<rsub|k>|)>> there exists
      by [theorem: <reference|linear span elminate zero factors>] a
      <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>T<rsub|k>>
      and a <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>F\\<around*|{|0|}>>
      such that\ 

      <\equation>
        <label|eq 11.48.083>e<rsub|k+1>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<lambda\><rsub|i>\<cdot\>t<rsub|i>
      </equation>

      As <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>\<subseteq\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      a linear independent set we have by [theorem: <reference|linear
      (in)dependency properties (1)>] that

      <\equation>
        <label|eq 11.49.083><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}><text|
        is linear indepenent>
      </equation>

      Assume now that <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>\<equallim\><rsub|<text|[theorem:
      <reference|disjoint family property>]>><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>\\<around*|{|e<rsub|k+1>|}>>
      then by applying [theorem: <reference|linear dependent set alternative
      condition>] on [eq: <reference|eq 11.48.083>] it follows that
      <math|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>> is
      linear dependent contradicting [eq: <reference|eq 11.49.083>]. Hence
      there exists a <math|j\<in\><around*|{|1,\<ldots\>,m|}>> with

      <\equation>
        <label|eq 11.50.083>t<rsub|j>\<nin\><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>
      </equation>

      So we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|T<rsub|k>\\<around*|{|t<rsub|j>|}>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.46.083>]>>>|<cell|<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)>\\<around*|{|t<rsub|j>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)>\\<around*|{|t<rsub|j>|}>|)><big|cup><around*|(|<around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>\\<around*|{|t<rsub|j>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.50.083>]>>>|<cell|<around*|(|<around*|(|T\\T<rprime|'><rsub|k>|)>\\<around*|{|t<rsub|j>|}>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|class set difference and union ,
        intersection>]>>>|<cell|<around*|(|T\\<around*|(|T<rprime|'><rsub|k><big|cup><around*|{|t<rsub|j>|}>|)>|)><big|cup><around*|{|e<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}><eq-number><label|eq
        11.51.083>>>>>
      </eqnarray*>

      Let

      <\equation>
        <label|eq 11.52.083>T<rprime|'><rsub|k+1>=T<rprime|'><rsub|k><big|cup><around*|{|t<rsub|j>|}>
      </equation>

      and

      <\equation>
        <label|eq 11.53.083>T<rsub|k+1>=<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>
      </equation>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k+1|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|(|<around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}><big|cup><around*|{|e<rsub|k+1>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<around*|(|T\\T<rprime|'><rsub|k+1>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)><big|cup><around*|{|e<rsub|k+1>|}>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.52.083>]>>>|<cell|>>|<row|<cell|<around*|(|<around*|(|T\\<around*|(|T<rprime|'><rsub|k><big|cup><around*|{|t<rsub|j>|}>|)>|)><big|cup><around*|{|e<rsub|1>\|i\<in\><around*|{|1,\<ldots\>,k|}>|}>|)><big|cup><around*|{|e<rsub|k+1>|}>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.51.083>]>>>|<cell|>>|<row|<cell|<around*|(|T<rsub|k>\\<around*|{|t<rsub|j>|}>|)><big|cup><around*|{|e<rsub|k+1>|}>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 11.54.083>T<rsub|k+1>=<around*|(|T<rsub|k>\\<around*|{|t<rsub|j>|}>|)><big|cup><around*|{|e<rsub|k+1>|}>
      </equation>
    </description>

    TODO
  </proof>

  <subsection|Basis of a vector space>

  The idea of a basis of a vector space is a set that spans a vector space
  and is minimal. It it is the minimal set of vectors so that every vector
  can be written as a linear combination of basis vectors.

  <\definition>
    \;
  </definition>

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
    <associate|auto-19|<tuple|11.3|?>>
    <associate|auto-2|<tuple|11.1|?>>
    <associate|auto-20|<tuple|11.3.1|?>>
    <associate|auto-21|<tuple|11.3.2|?>>
    <associate|auto-22|<tuple|11.3.2.1|?>>
    <associate|auto-23|<tuple|disjoint family|?>>
    <associate|auto-24|<tuple|<with|mode|<quote|math>|span<around*|(|W|)>>|?>>
    <associate|auto-25|<tuple|11.3.2.2|?>>
    <associate|auto-26|<tuple|11.3.3|?>>
    <associate|auto-27|<tuple|11.4|?>>
    <associate|auto-28|<tuple|11.5|?>>
    <associate|auto-29|<tuple|11.6|?>>
    <associate|auto-3|<tuple|11.1.1|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i=0><rsup|n>x<rsub|i>>|?>>
    <associate|auto-6|<tuple|11.1.2|?>>
    <associate|auto-7|<tuple|11.1.3|?>>
    <associate|auto-8|<tuple|permutation|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<sigma\>>|?>>
    <associate|disjoint family|<tuple|disjoint family|?>>
    <associate|disjoint family property|<tuple|11.69|?>>
    <associate|eq 11.1.054|<tuple|11.1|?>>
    <associate|eq 11.10.054|<tuple|11.11|?>>
    <associate|eq 11.10.064|<tuple|11.10|?>>
    <associate|eq 11.11.054|<tuple|11.13|?>>
    <associate|eq 11.11.055|<tuple|11.12|?>>
    <associate|eq 11.13.055|<tuple|11.14|?>>
    <associate|eq 11.15.080|<tuple|11.26|?>>
    <associate|eq 11.15.082|<tuple|11.15|?>>
    <associate|eq 11.16.080|<tuple|11.27|?>>
    <associate|eq 11.16.081|<tuple|11.16|?>>
    <associate|eq 11.17.080|<tuple|11.28|?>>
    <associate|eq 11.17.081|<tuple|11.17|?>>
    <associate|eq 11.18.080|<tuple|11.39|?>>
    <associate|eq 11.18.081|<tuple|11.18|?>>
    <associate|eq 11.19.080|<tuple|11.40|?>>
    <associate|eq 11.19.081|<tuple|11.19|?>>
    <associate|eq 11.2.053|<tuple|11.2|?>>
    <associate|eq 11.20.081|<tuple|11.20|?>>
    <associate|eq 11.20\<point\>080|<tuple|11.41|?>>
    <associate|eq 11.21.080|<tuple|11.42|?>>
    <associate|eq 11.21.081|<tuple|11.21|?>>
    <associate|eq 11.22.080|<tuple|11.43|?>>
    <associate|eq 11.22.081|<tuple|11.22|?>>
    <associate|eq 11.23.080|<tuple|11.36|?>>
    <associate|eq 11.23.081|<tuple|11.23|?>>
    <associate|eq 11.24.080|<tuple|11.37|?>>
    <associate|eq 11.24.081|<tuple|11.24|?>>
    <associate|eq 11.25.080|<tuple|11.38|?>>
    <associate|eq 11.25.081|<tuple|11.25|?>>
    <associate|eq 11.26.080|<tuple|11.44|?>>
    <associate|eq 11.27.080|<tuple|11.45|?>>
    <associate|eq 11.29.082|<tuple|11.29|?>>
    <associate|eq 11.3.053|<tuple|11.3|?>>
    <associate|eq 11.30.082|<tuple|11.30|?>>
    <associate|eq 11.31.082|<tuple|11.31|?>>
    <associate|eq 11.32.082|<tuple|11.32|?>>
    <associate|eq 11.33.082|<tuple|11.33|?>>
    <associate|eq 11.34.082|<tuple|11.34|?>>
    <associate|eq 11.35.082|<tuple|11.35|?>>
    <associate|eq 11.4.053|<tuple|11.4|?>>
    <associate|eq 11.46.083|<tuple|11.46|?>>
    <associate|eq 11.47.083|<tuple|11.47|?>>
    <associate|eq 11.48.083|<tuple|11.48|?>>
    <associate|eq 11.49.083|<tuple|11.49|?>>
    <associate|eq 11.5.053|<tuple|11.5|?>>
    <associate|eq 11.50.083|<tuple|11.50|?>>
    <associate|eq 11.51.083|<tuple|11.51|?>>
    <associate|eq 11.52.083|<tuple|11.52|?>>
    <associate|eq 11.53.083|<tuple|11.53|?>>
    <associate|eq 11.54.083|<tuple|11.54|?>>
    <associate|eq 11.6.053|<tuple|11.6|?>>
    <associate|eq 11.7.053|<tuple|11.7|?>>
    <associate|eq 11.7.053.1|<tuple|11.8|?>>
    <associate|eq 11.9.053|<tuple|11.9|?>>
    <associate|linear (in)dependency properties (1)|<tuple|11.93|?>>
    <associate|linear Steinitz lemma|<tuple|11.94|?>>
    <associate|linear combination|<tuple|11.67|?>>
    <associate|linear combination distinct|<tuple|11.70|?>>
    <associate|linear depdnent finite set (2)|<tuple|11.92|?>>
    <associate|linear dependent finite set|<tuple|11.90|?>>
    <associate|linear dependent finite set (1)|<tuple|11.91|?>>
    <associate|linear dependent set|<tuple|11.82|?>>
    <associate|linear dependent set alternative condition|<tuple|11.88|?>>
    <associate|linear dependent set containing neutral
    element|<tuple|11.87|?>>
    <associate|linear disjoint family|<tuple|11.68|?>>
    <associate|linear finite set|<tuple|11.80|?>>
    <associate|linear finite set (1)|<tuple|11.81|?>>
    <associate|linear independent empty set|<tuple|11.85|?>>
    <associate|linear independent finite set|<tuple|11.89|?>>
    <associate|linear independent set|<tuple|11.83|?>>
    <associate|linear independent set alternative|<tuple|11.84|?>>
    <associate|linear independent singleton|<tuple|11.86|?>>
    <associate|linear span|<tuple|11.71|?>>
    <associate|linear span contains set|<tuple|11.73|?>>
    <associate|linear span elminate zero factors|<tuple|11.72|?>>
    <associate|linear span is a sub-space|<tuple|11.76|?>>
    <associate|linear span of empty set|<tuple|11.75|?>>
    <associate|linear span of span|<tuple|11.78|?>>
    <associate|linear span properties|<tuple|11.77|?>>
    <associate|linear span reducing set and keep span intact|<tuple|11.79|?>>
    <associate|linear span subsets|<tuple|11.74|?>>
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

      <tuple|<tuple|<with|mode|<quote|math>|span<around*|(|W|)>>>|<pageref|auto-23>>
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
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|11.3.3<space|2spc>Basis of a vector space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      11.4<space|2spc>Linear mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>

      11.5<space|2spc>Multilinear mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>

      11.6<space|2spc>Deteminant Functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>
    </associate>
  </collection>
</auxiliary>
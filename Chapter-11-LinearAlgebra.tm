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

  Next we define the sum<space|1em>of elements over a finite index set.

  <\definition>
    Let <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian semi-group
    with neutral element <math|0>, <math|I> a finite set and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> then we define
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> as follows:\ 

    <\enumerate>
      <item>If <math|I=\<varnothing\>> then
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0>

      <item>If <math|I\<neq\>\<varnothing\>> then as <math|I> is finite there
      exist a unique <math|n\<in\>\<bbb-N\>> [see theorem: <reference|finite
      uniqueness of size>] such that <math|n\<approx\>I>, as
      <math|S<rsub|n>=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|i\<less\>n|}>=<around*|{|0,\<ldots\>,n-1|}>>
      there exist a bijection <math|\<beta\>:<around*|{|0,\<ldots\>,n-1|}>\<rightarrow\>I>,
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
    <label|sum ring product (2)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
    be a Abelian semi-group, <math|\<alpha\>\<in\>A>, <math|I> a finite set
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>A> then\ 

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
    <label|sum of inverses (2)>Let <math|<around*|\<langle\>|A,+|\<rangle\>>>
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
        <label|eq 11.7.053><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n+1|}>>I<rsub|j>=J<big|cup>I<rsub|n+1><text|,
        <math|J,I<rsub|n+1>> are finite and
        >J<big|cap>I<rsub|n+1>=\<varnothing\>
      </equation>

      So we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|i\<in\><around*|{|0,\<ldots\>n|}>>I<rsub|i>>x<rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 11.7.053>] and [lemma: <reference|sum over two disjoint
        subsets>]>>>|<cell|<big|sum><rsub|i\<in\>J>x<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|n+1>>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|0,\<ldots\>,n|}>>I<rsub|j><rsub|>>x<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|n+1>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i=0><rsup|n><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|j>|)>+<big|sum><rsub|i\<in\>I<rsub|n+1>>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+1><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>x<rsub|i>|)>>>>>
      </eqnarray*>
    </description>
  </proof>

  <\corollary>
    <label|sum over disjoint subsets (1)>Let
    <math|<around*|\<langle\>|A,+|\<rangle\>>> be a Abelian group, <math|I> a
    finite set, <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>I>> a family of
    finite sets, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><big|cup><rsub|j\<in\>I>I<rsub|j>>>
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

  <section|Vector spaces >

  <subsection|Definition>

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
      if <math|x\<in\>V> with <math|\<alpha\>\<odot\>x=0<rsub|v>> then
      <math|x=0<rsub|v>>
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
    Let <math|<around*|\<langle\>|V,\<oplus\>,\<odot\>|\<rangle\>>> be a
    vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> and
    <math|W\<subseteq\>V> a sub-space then
    <math|<around*|\<langle\>|V,\<oplus\><rsub|\|W\<times\>W>,\<odot\><rsub|\|F\<odot\>W>|\<rangle\>>>
    is a vector space over <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
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

  Be aware thtat a vector space depends also on the field used, so for
  example <math|\<bbb-C\>> can be used to define another vector space, as is
  shown in the next example.

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
    <with|font-series|bold|complex> vector space.\ 
  </definition>

  Next we use an existing vector space and pairwise addition and scalar
  multiplication to define a function space. Later will use this to define
  more special function spaces that are sub-spaces of this function space.

  <\theorem>
    <label|vector space function space><dueto|function>Let
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

  \;

  <subsection|Linear dependency>

  <section|Linear mappings>

  <section|Multilinear mappings>

  <section|Deteminant Functions>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|10>
    <associate|page-first|302>
    <associate|page-medium|papyrus>
    <associate|section-nr|5>
    <associate|subsection-nr|2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|11|303>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|S<rsub|I>>|312>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|i\<leftrightarrowlim\><rsub|I>>j|312>>
    <associate|auto-12|<tuple|11.1.4|316>>
    <associate|auto-13|<tuple|11.2|?>>
    <associate|auto-14|<tuple|11.2.1|?>>
    <associate|auto-15|<tuple|vector space|?>>
    <associate|auto-16|<tuple|11.2.2|?>>
    <associate|auto-17|<tuple|complex vector space|?>>
    <associate|auto-18|<tuple|real vector space|?>>
    <associate|auto-19|<tuple|11.2.3|?>>
    <associate|auto-2|<tuple|11.1|303>>
    <associate|auto-20|<tuple|11.3|?>>
    <associate|auto-21|<tuple|11.4|?>>
    <associate|auto-22|<tuple|11.5|?>>
    <associate|auto-3|<tuple|11.1.1|303>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=0><rsup|n>x<rsub|i>>|303>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|<big|prod><rsub|i=0><rsup|n>x<rsub|i>>|303>>
    <associate|auto-6|<tuple|11.1.2|310>>
    <associate|auto-7|<tuple|11.1.3|312>>
    <associate|auto-8|<tuple|permutation|312>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<sigma\>>|312>>
    <associate|eq 11.1.054|<tuple|11.1|308>>
    <associate|eq 11.2.053|<tuple|11.2|311>>
    <associate|eq 11.3.053|<tuple|11.3|315>>
    <associate|eq 11.4.053|<tuple|11.4|315>>
    <associate|eq 11.5.053|<tuple|11.5|316>>
    <associate|eq 11.6.053|<tuple|11.7|318>>
    <associate|eq 11.7.053|<tuple|11.7|?>>
    <associate|eq 11.9.053|<tuple|11.9|?>>
    <associate|permutation definition|<tuple|11.23|312>>
    <associate|permutation group|<tuple|11.24|312>>
    <associate|permutation on subset|<tuple|11.25|312>>
    <associate|permutation transposition|<tuple|11.26|312>>
    <associate|permutation transposition properties|<tuple|11.27|313>>
    <associate|permutation {0,..,n and transposition|<tuple|11.28|314>>
    <associate|product finite product|<tuple|11.2|303>>
    <associate|sum alternative definition|<tuple|11.4|304>>
    <associate|sum alternative definition (1)|<tuple|11.14|308>>
    <associate|sum associativity|<tuple|11.22|311>>
    <associate|sum associativity simple|<tuple|11.21|310>>
    <associate|sum bijection on index|<tuple|11.32|?>>
    <associate|sum commutativity|<tuple|11.29|315>>
    <associate|sum finite sum|<tuple|11.1|303>>
    <associate|sum general equivalence|<tuple|11.31|317>>
    <associate|sum index is a product|<tuple|11.41|?>>
    <associate|sum of differences|<tuple|11.10|307>>
    <associate|sum of differences (1)|<tuple|11.20|309>>
    <associate|sum of finite sums|<tuple|11.9|306>>
    <associate|sum of finite sums (1)|<tuple|11.18|309>>
    <associate|sum of finite sums (2)|<tuple|11.37|?>>
    <associate|sum of inverses|<tuple|11.7|305>>
    <associate|sum of inverses (1)|<tuple|11.19|309>>
    <associate|sum of inverses (2)|<tuple|11.36|?>>
    <associate|sum of neutral element (1)|<tuple|11.15|308>>
    <associate|sum of neutral element (2)|<tuple|11.33|?>>
    <associate|sum of neutral elements|<tuple|11.5|304>>
    <associate|sum of sums|<tuple|11.6|305>>
    <associate|sum of sums (1)|<tuple|11.16|308>>
    <associate|sum of sums (2)|<tuple|11.34|?>>
    <associate|sum over disjoint subsets|<tuple|11.39|319>>
    <associate|sum over disjoint subsets (1)|<tuple|11.40|?>>
    <associate|sum over two disjoint subsets|<tuple|11.38|317>>
    <associate|sum ring product|<tuple|11.8|306>>
    <associate|sum ring product (1)|<tuple|11.17|308>>
    <associate|sum ring product (2)|<tuple|11.35|?>>
    <associate|vector space|<tuple|11.42|?>>
    <associate|vector space C real|<tuple|11.49|?>>
    <associate|vector space Q,R,C|<tuple|11.48|?>>
    <associate|vector space complex/real|<tuple|11.50|?>>
    <associate|vector space field|<tuple|11.47|?>>
    <associate|vector space function space|<tuple|11.51|?>>
    <associate|vector space properties (1)|<tuple|11.43|?>>
    <associate|vector space subspace|<tuple|11.44|?>>
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

      <with|par-left|<quote|1tab>|11.2.1<space|2spc>Definition and examples
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|11.2.2<space|2spc>Linear dependency
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      11.3<space|2spc>Linear mappings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>

      11.4<space|2spc>Multilinear mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      11.5<space|2spc>Deteminant Functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Internal Direct Sum>

  We will now extend the sum of two subsets of a vector space \ [see
  definition: <reference|vector space sum of sub-spaces>] to a sum of a
  finite family of subsets of a vector space.

  <\definition>
    <label|direct sum of sets>Let <math|V> be a vector space over a field
    <math|F>, <math|I> a finite set and <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    [a finite family of subsets of <math|V>] then the sum
    of<math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    noted as <math|<big|sum><rsub|i\<in\>I>V<rsub|i>> is defined as\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>V<rsub|i>=<around*|{|v\<in\>V\|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text|
      such that <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      >v=<big|sum><rsub|i\<in\>I>w<rsub|i>|}>\<subseteq\>V
    </equation*>
  </definition>

  <\example>
    <label|direct sum empty sum>Let <math|V> be a vector space over a field
    <math|F>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a empty family of sub spaces [see example: <reference|family empty
    family>]
  </example>

  <\proof>
    Use [example: <reference|family empty family>] to get a
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>
    then we have <math|0\<equallim\><rsub|<text|[definition: <reference|sum
    generalized sum>]>><big|sum><rsub|i\<in\>\<varnothing\>>v<rsub|i>> and
    vacuously <math|\<forall\>i\<in\>\<varnothing\>>
    <math|v<rsub|i>\<in\>V<rsub|i>>, proving that
    <math|0\<in\><big|sum><rsub|i\<in\>\<varnothing\>>V<rsub|i>>. Further if
    <math|v\<in\><big|sum><rsub|i\<in\>\<varnothing\>>V<rsub|i>> then there
    exist a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>
    such that <math|v=<big|sum><rsub|i\<in\>\<varnothing\>>v<rsub|i>\<equallim\><rsub|<text|[definition:
    <reference|sum generalized sum>]>>0> proving that
    <math|<big|sum><rsub|i\<in\>\<varnothing\>>V<rsub|i>\<subseteq\><around*|{|0|}>>,
    Hence we have

    <\equation*>
      <big|sum><rsub|i\<in\>\<varnothing\>>V<rsub|i>=<around*|{|0|}>
    </equation*>

    \;
  </proof>

  Some of the properties of finite sums of elements of the vector space
  transfer to the finite sum of a family of non empty subsets.

  <\theorem>
    <label|direct sum of sets properties>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|F> then we have for a finite set <math|I> and a finite
    family <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    of sub-spaces of <math|V> that

    <\enumerate>
      <item>If <math|I=<around*|{|k|}>> then we have
      \ <math|<big|sum><rsub|i\<in\><around*|{|k|}>>V<rsub|i>=V<rsub|k>>

      <item>If <math|\<sigma\>:J\<rightarrow\>I> is a bijection then we have
      <math|<big|sum><rsub|i\<in\>J>V<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I>V<rsub|i>>

      <item>If <math|k\<in\>I> then <math|<big|sum><rsub|i\<in\>I>V<rsub|i>=<around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>>

      <item>If <math|I=I<rsub|1><big|cup>I<rsub|2>> with
      <math|I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>> then
      <math|<big|sum><rsub|i\<in\>I>V<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>|)>>

      <item>If <math|I=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i>>
      with <math|\<forall\>i,j\<in\>I> if <math|i\<neq\>j> then
      <math|I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>> hen

      <\equation*>
        <big|sum><rsub|i\<in\>I>V<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>|)>
      </equation*>

      \;
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|v\<in\><big|sum><rsub|i\<in\><around*|{|k|}>>V<rsub|i>>
      then <math|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|k|}>>>
      such that <math|\<forall\>i\<in\><around*|{|k|}>> we have
      <math|v<rsub|i>\<in\>V<rsub|i>> and\ 

      <\equation*>
        v=<big|sum><rsub|i\<in\><around*|{|k|}>>v<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>v<rsub|k>\<in\>V<rsub|k>
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 12.1.1224><big|sum><rsub|i\<in\><around*|{|k|}>>V<rsub|i>\<subseteq\>V<rsub|k>
      </equation>

      Let <math|v\<in\>V<rsub|k>> and define
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|k|}>>\<subseteq\>V>
      by <math|v<rsub|k>=v> then <math|\<forall\>i\<in\><around*|{|k|}>> we
      have <math|v<rsub|i>=v\<in\>V<rsub|k>> and

      <\equation*>
        v=v<rsub|k>\<equallim\><rsub|<text|[theorem: <reference|sum general
        single>]>><big|sum><rsub|i\<in\><around*|{|k|}>>v<rsub|i>
      </equation*>

      proving that <math|v\<in\><big|sum><rsub|i\<in\><around*|{|k|}>>v<rsub|i>>.
      Hence <math|V<rsub|k>\<subseteq\><big|sum><rsub|i\<in\><around*|{|k|}>>V<rsub|i>>
      which combined with [eq: <reference|eq 12.1.1224>]\ 

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|k|}>>V<rsub|i>=V<rsub|k>
      </equation*>

      <item>Let <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> then there
      exist a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> with
      <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Define now\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>V<text| by
        >w<rsub|i>=v<rsub|\<sigma\><around*|(|i|)>>
      </equation*>

      then <math|\<forall\>i\<in\>J> we have
      <math|w<rsub|i>=v<rsub|\<sigma\><around*|(|i|)>>\<in\>V<rsub|\<sigma\><around*|(|i|)>>>
      and

      <\equation*>
        <big|sum><rsub|i\<in\>J>w<rsub|i>\<equallim\><big|sum><rsub|i\<in\>J>v<rsub|\<sigma\><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>><big|sum><rsub|i\<in\>I>v<rsub|i>=v
      </equation*>

      hence <math|v\<in\><big|sum><rsub|i\<in\>J>V<rsub|\<beta\><around*|(|i|)>>>
      proving that\ 

      <\equation>
        <label|eq 12.2.124><big|sum><rsub|i\<in\>I>V<rsub|i>\<subseteq\><big|sum><rsub|i\<in\>J>V<rsub|\<beta\><around*|(|i|)>>
      </equation>

      If <math|v\<in\><big|sum><rsub|i\<in\>J>V<rsub|\<beta\><around*|(|i|)>>>
      then there exist a <math|<around*|{|w<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>V>
      such that <math|\<forall\>i\<in\>J> we have
      <math|w<rsub|i>\<in\>V<rsub|\<beta\><around*|(|i|)>>> and
      <math|v=<big|sum><rsub|i\<in\>J>w<rsub|i>>. Define now\ 

      <\equation*>
        <around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text| by
        >v<rsub|i>=w<rsub|\<sigma\><rsup|-1><around*|(|i|)>>
      </equation*>

      then <math|\<forall\>i\<in\>I> we have
      <math|v<rsub|i>=v<rsub|\<sigma\><around*|(|\<sigma\><rsup|-1><around*|(|i|)>|)>>\<in\>V<rsub|\<sigma\><around*|(|\<sigma\><rsup|-1><around*|(|i|)>|)>>=V<rsub|i>>
      and\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>v<rsub|i>=<big|sum><rsub|i\<in\>I>w<rsub|\<sigma\><rsup|-1><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>><big|sum><rsub|i\<in\>J>w<rsub|i>=v
      </equation*>

      proving that <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>>. Hence
      <math|<big|sum><rsub|i\<in\>J>V<rsub|\<beta\><around*|(|i|)>>\<subseteq\><big|sum><rsub|i\<in\>J>V<rsub|\<beta\><around*|(|i|)>>>
      which combined with [eq: <reference|eq 12.2.124>]\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>V<rsub|i>=<big|sum><rsub|i\<in\>J>V<rsub|\<beta\><around*|(|i|)>>
      </equation*>

      <item>If <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> then
      <math|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\>I>> such that
      <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Let
      <math|w=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>> then as
      trivially <math|\<forall\>i\<in\>I\\<around*|{|k|}>>
      <math|v<rsub|i>\<in\>V<rsub|i>> we have that\ 

      <\equation*>
        w\<in\><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>
      </equation*>

      and

      <\equation*>
        v=<big|sum><rsub|i\<in\>I>v<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>v<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>+v<rsub|k>=w+v<rsub|k>
      </equation*>

      so, as <math|v<rsub|k>\<in\>V<rsub|k>>, it follows that
      <math|v\<in\><around*|(|<big|sum><rsub|i\<join\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>>.
      Hence\ 

      <\equation>
        <label|eq 12.3.125><big|sum><rsub|i\<in\>I>V<rsub|i>\<subseteq\><around*|(|<big|sum><rsub|i\<join\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>
      </equation>

      On the other hand if <math|v\<in\><around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>>
      then there exists a <math|u\<in\><big|sum><rsub|i\<join\>I\\<around*|{|k|}>>V<rsub|i>>
      and <math|w\<in\>V<rsub|k>> such that <math|v=u+v>. As
      <math|u\<in\><big|sum><rsub|i\<join\>I\\<around*|{|k|}>>V> there exist
      a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>\<subseteq\>V>
      such that <math|\<forall\>i\<in\>I\\<around*|{|k|}>>
      <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|u=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>>. Define now\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text| by
        >w<rsub|i>=<choice|<tformat|<table|<row|<cell|w<text| if
        >i=k>>|<row|<cell|v<rsub|i><text| if >i\<in\>I\\<around*|{|k|}>>>>>>
      </equation*>

      then we have\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>w<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>w<rsub|i>+<big|sum><rsub|i\<in\>k>w<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>><big|sum><rsub|i\<in\>I\\k>w<rsub|i>+w<rsub|k>=<big|sum><rsub|i\<in\>I\\k>v<rsub|i>+w=u+w
      </equation*>

      which, as <math|\<forall\>i\<in\>I>
      <math|w<rsub|i>=<choice|<tformat|<table|<row|<cell|w\<in\>V<rsub|k><text|
      if >i=k>>|<row|<cell|v<rsub|i>\<in\>V<rsub|i><text| if
      >i\<in\>I\\<around*|{|k|}>>>>>>\<in\>V<rsub|i>>, results in
      <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> proving that

      <\equation*>
        <around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>
      </equation*>

      which combined with [eq: <reference|eq 12.3.125>] proves that\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>V<rsub|i>=<around*|(|<big|sum><rsub|i\<join\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>
      </equation*>

      <item>If <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> then there
      exist a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> such
      that <math|\<forall\>i\<in\>I> we have <math|v<rsub|i>\<in\>V<rsub|i>>
      and <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Define\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1.2|}>>\<subseteq\>V<text|
        by >w<rsub|i>=<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|j>
      </equation*>

      If <math|i\<in\><around*|{|1,2|}>> then
      <math|\<forall\>j\<in\>I<rsub|i>\<subseteq\>I>
      <math|v<rsub|j>\<in\>V<rsub|j>> so we have\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,2|}> we have that
        w<rsub|i>\<in\><big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>
      </equation*>

      further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,,2|}>>w<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
      </eqnarray*>

      proving that <math|v\<in\><big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|j>|)>>.
      Hence\ 

      <\equation>
        <label|eq 12.3.124><big|sum><rsub|i\<in\>I>V<rsub|i>\<subseteq\><big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|j>|)>
      </equation>

      If <math|v\<in\><big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>|)>>
      then there exists a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,.2|}>>\<subseteq\>V>
      with <math|\<forall\>i\<in\><around*|{|1,2|}>>
      <math|v<rsub|i>\<in\><big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>> such
      that <math|v=<big|sum><rsub|i\<in\><around*|{|1,2|}>>v<rsub|i>>. Let
      <math|i\<in\><around*|{|1.2|}>> then there exist a
      <math|<around*|{|v<rsub|i,j>|}><rsub|j\<in\>I<rsub|i>>\<subseteq\>V>
      with <math|\<forall\>j\<in\>I<rsub|j>>
      <math|v<rsub|i,j>\<in\>V<rsub|j>> and
      <math|v<rsub|i>=<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|i,j><rsub|>>. We
      can then, as <math|I<rsub|1><big|cap>I<rsub|2>\<neq\>\<varnothing\>>,
      define

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text| by
        >w<rsub|i>=<choice|<tformat|<table|<row|<cell|v<rsub|1,i><text| if
        >i\<in\>I<rsub|1>>>|<row|<cell|v<rsub|2,i><text| if
        >i\<in\>I<rsub|2>>>>>>
      </equation*>

      then we have <math|\<forall\>i\<in\>I=I<rsub|1><big|cup>I<rsub|2>> that

      <\equation*>
        w<rsub|i>=<choice|<tformat|<table|<row|<cell|v<rsub|1,i>\<in\>V<rsub|i><text|
        if >i\<in\>I<rsub|1>>>|<row|<cell|v<rsub|2,i>\<in\>V<rsub|2><text| if
        >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i>
      </equation*>

      and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>w<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|1,i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsub|2,i>>>|<row|<cell|>|<cell|=>|<cell|v<rsub|1>+v<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,2|}>>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
      </eqnarray*>

      proving that <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>>. So
      <math|<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|j>|)>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>>
      which combined with [eq: <reference|eq 12.3.124>] gives

      <\equation*>
        <big|sum><rsub|i\<in\>I>V<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|j>|)>
      </equation*>

      <item>This is proved by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|If
        I=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i><text|
        with >\<forall\>i,j\<in\>I<text| if >i\<neq\>j<text| then
        >I<rsub|i><big|cap>I<rsub|j>=\<varnothing\><text|, then
        ><big|sum><rsub|i\<in\>I>V<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|i>|)>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|I=<big|cup><rsub|i\<in\><around*|{|1|}>>I<rsub|i>>
        [so we have automatically <math|\<forall\>i,j\<in\>I> if
        <math|i\<neq\>j> then <math|I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>>]
        then\ 

        <\equation*>
          <big|sum><rsub|i\<in\><around*|{|1|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>|)>\<equallim\><rsub|<around*|(|1|)>><big|sum><rsub|j\<in\>I<rsub|1>>V<rsub|i>\<equallim\><rsub|I=I<rsub|1>><big|sum><rsub|j\<in\>I>V<rsub|i>
        </equation*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
        <math|I=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>I<rsub|i>>
        with <math|\<forall\>i,j\<in\>I> if <math|i\<neq\>j> then
        <math|I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>>. Let
        <math|J<rsub|1>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i>>
        and <math|J<rsub|2>=I<rsub|m+1>> then

        <\equation*>
          J<rsub|1><big|cap>J<rsub|2>=<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i>|)><big|cap>J<rsub|2>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|I<rsub|i><big|cap>I<rsub|m+1>|)>=\<varnothing\>
        </equation*>

        and <math|I=J<rsub|1><big|cup>I<rsub|2>>. Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>V<rsub|i>>|<cell|\<equallim\><rsub|<around*|(|4|)>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>J<rsub|i>>V<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|3|)>>>|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|1|}>><around*|(|<big|sum><rsub|j\<in\>J<rsub|i>>V<rsub|j>|)>|)>+<big|sum><rsub|j\<in\>J<rsub|2>>V<rsub|j><rsub|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<big|sum><rsub|j\<in\>J<rsub|1>>V<rsub|j>+<big|sum><rsub|j\<in\>J<rsub|2>>V<rsub|j><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J<rsub|1>>V<rsub|j>+<big|sum><rsub|j\<in\>I<rsub|m+1>>V<rsub|j><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i>>V<rsub|j>|)>+<big|sum><rsub|j\<in\>I<rsub|m+1>>V<rsub|j><rsub|>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>|)>+<big|sum><rsub|j\<in\>I<rsub|m+1>>V<rsub|j><rsub|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|3|)>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>><around*|(|<big|sum><rsub|i\<in\>I<rsub|i>>V<rsub|j>|)>>>>>
        </eqnarray*>

        proving that <math|m+1\<in\>S>.
      </description>
    </enumerate>
  </proof>

  We consider now the case where we have a family of sub-spaces of a vector
  space.

  <\theorem>
    <label|direct sum of subspaces>If <math|V> is a vector space over a field
    <math|F> and <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    such that <math|\<forall\>i\<in\>I> <math|V<rsub|i>> is a sub space of
    <math|V> then

    <\enumerate>
      <item> <math|<big|sum><rsub|i\<in\>I>V<rsub|i>> is a sub space of
      <math|V>

      <item>If <math|J\<subseteq\>I> then
      <math|<big|sum><rsub|i\<in\>J>V<rsub|i>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>>

      <item>If <math|k\<in\>I> then <math|V<rsub|k>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<forall\>i\<in\>I> <math|V<rsub|i>> is a sub space of
      <math|V> we have that <math|0\<in\>V<rsub|i>>, so as
      <math|<big|sum><rsub|i\<in\>I>0=0> it follows that
      <math|0\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> proving that\ 

      <\equation*>
        \<varnothing\>\<neq\><big|sum><rsub|i\<in\>I>V<rsub|i>
      </equation*>

      Let <math|\<alpha\>\<in\>F> and <math|x,y\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>>
      then there exists a <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
      and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> such
      that <math|\<forall\>i\<in\>I> <math|x<rsub|i>,y<rsub|i>\<in\>V<rsub|i>>
      and <math|x=<big|sum><rsub|i\<in\>I>x<rsub|i>>,
      <math|y=<big|sum><rsub|i\<in\>I>y<rsub|i>>. As
      <math|\<forall\>i\<in\>I> <math|V<rsub|i>> is a subspace we have that
      <math|\<alpha\>\<cdot\>x<rsub|i>+y<rsub|i>\<in\>V<rsub|i>> and\ 

      <\equation*>
        \<alpha\>\<cdot\>x+y=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>\<equallim\><rsub|<text|[theorems:
        <reference|vector space finite sum (1)>, <reference|sum of sums
        (1)>]>><big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>+y<rsub|i>|)>
      </equation*>

      proving that <math|\<alpha\>\<cdot\>x+y\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>>.

      <item>If <math|v\<in\><big|sum><rsub|i\<in\>J>V<rsub|i>> then there
      exist a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>V> such
      that <math|\<forall\>i\<in\>J> <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>J>v<rsub|i>>. Define then

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text| by
        >w<rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
        >i\<in\>I\\J>>|<row|<cell|v<rsub|i><text| if >i\<in\>J>>>>>
      </equation*>

      then <math|\<forall\>i\<in\>I> we have <math|w<rsub|i>\<in\>V<rsub|i>>
      [as <math|0\<in\>V<rsub|i>>] and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I\\J>w<rsub|i>+<big|sum><rsub|i\<in\>J>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J>0+<big|sum><rsub|i\<in\>J>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
      </eqnarray*>

      Hence <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> proving\ 

      <\equation*>
        <big|sum><rsub|i\<in\>J>V<rsub|i>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>
      </equation*>

      <item>Let <math|k\<in\>I> and <math|v\<in\>V<rsub|k>>, define\ 

      <\equation*>
        <around*|{|v<rsub|i>|}><rsub|i\<in\>I><text| by
        >v<rsub|i>=<choice|<tformat|<table|<row|<cell|v<text| if
        >i=k>>|<row|<cell|0<text| if >i\<in\>I\\<around*|{|k|}>>>>>>
      </equation*>

      then, as <math|V<rsub|i><rprime|'>s> are sub-spaces of <math|V> hence
      containing <math|0> we have\ 

      <\equation*>
        \<forall\>i\<in\>I\\<around*|{|k|}><text| that
        >v<rsub|i>=<choice|<tformat|<table|<row|<cell|v\<in\>V<rsub|k><text|
        if >i=k>>|<row|<cell|0\<in\>V<rsub|i><text| if
        >i\<in\>I\\<around*|{|k|}>>>>>>\<in\>V<rsub|i>
      </equation*>

      Further\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>v<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>v<rsub|i>\<equallim\><rsub|<around*|[|theorem:<reference|sum
        general single>|]>><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>+v<rsub|k>=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>0+v=v
      </equation*>

      proving that <math|v\<in\><big|sum><rsub|i\<in\>I>v<rsub|i>>. Hence\ 

      <\equation*>
        V<rsub|k>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>
      </equation*>
    </enumerate>

    \ 
  </proof>

  If <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> then we can write
  <math|v> as <math|<big|sum><rsub|i\<in\>I>v<rsub|i>> where
  <math|v<rsub|i>\<in\>V<rsub|i>>, however this expansion is not unique,
  which is not very useful (compare this with the uniqueness of the expansion
  of a vector in a basis). To solve this we extend the concept of a direct
  sum of two subspaces [see definition: <reference|vector space internal
  direct sum>] to a direct sum of a finite family.

  <\definition>
    <label|direct sum><dueto|Internal Direct Sum>If <math|V> is a vector
    space over a field then

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I>V<rsub|i>
    </equation*>

    iff

    <\enumerate>
      <item><math|I> is a finite set

      <item><math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
      satisfies <math|\<forall\>i\<in\>I> <math|V<rsub|i>> is a sub space of
      <math|V>

      <item>If <math|v\<in\>V> then there exist a
      <with|font-series|bold|unique> family
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> such that
      <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>.
    </enumerate>
  </definition>

  <\example>
    <label|direct sum of a empty family>Let <math|V> be a vector space over a
    field <math|F>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a empty family of sub-spaces of <math|V> [see example: <reference|family
    empty family>] then

    <\equation*>
      <big|oplus><rsub|i\<in\>\<varnothing\>>V<rsub|i>=<around*|{|0|}>
    </equation*>
  </example>

  <\proof>
    If <math|v\<in\>\<oplus\><rsub|i\<in\>\<varnothing\>>V<rsub|i>> then
    there exist a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>
    such that <math|v=<big|sum><rsub|i\<in\>\<varnothing\>>v<rsub|i>\<equallim\><rsub|<text|[definition:
    <reference|sum generalized sum>]>>0> proving that

    <\equation*>
      <big|oplus><rsub|i\<in\>\<varnothing\>>V<rsub|i>\<subseteq\><around*|{|0|}>,
    </equation*>

    Use [example: <reference|family empty family>] to get a
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>
    then we have <math|0\<equallim\><rsub|<text|[definition: <reference|sum
    generalized sum>]>><big|sum><rsub|i\<in\>\<varnothing\>>v<rsub|i>> and
    vacuously <math|\<forall\>i\<in\>\<varnothing\>>
    <math|v<rsub|i>\<in\>V<rsub|i>>. If <math|<around*|{|w<rsub|i>|}><rsub|i\<in\>\<varnothing\>>\<subseteq\>V>
    is such that <math|0=<big|sum><rsub|i\<in\>\<varnothing\>>w<rsub|i>> then
    we have vacuously <math|v<rsub|i>=w<rsub|i>> hence
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>\<varnothing\>>=<around*|{|w<rsub|i>|}><rsub|i\<in\>\<varnothing\>>>
    proving uniqueness. Hence <math|0\<in\><big|oplus><rsub|i\<in\>\<varnothing\>>V<rsub|i>>
    so that\ 

    <\equation*>
      <big|oplus><rsub|i\<in\>\<varnothing\>>V<rsub|i>=<around*|{|0|}>
    </equation*>

    \;
  </proof>

  <\example>
    <label|direct sum singleton>If <math|V> is a vector space and <math|W> a
    sub-space then <math|W=<big|oplus><rsub|i\<in\><around*|{|k|}>>V<rsub|i>>
    where <math|V<rsub|k>=W>.
  </example>

  <\proof>
    <math|V<rsub|1>=W> is a subspace of <math|V> and if <math|v\<in\>V> we
    have for <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>V>
    that <math|v=<big|sum><rsub|i\<in\><around*|{|1|}>>v<rsub|i>> and if
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>> such that
    <math|v=<big|sum><rsub|i\<in\><around*|{|1|}>>w<rsub|i>> then
    <math|w<rsub|i>=v=v<rsub|i>> <math|\<forall\>i\<in\><around*|{|1|}>>.\ 
  </proof>

  We can rephrase the above definition in another way as follows\ 

  <\theorem>
    <label|direct sum decomposition>If <math|V> is a vector space over a
    field, <math|I> a finite set, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a finite family of sub-spaces of <math|V> then

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I>V<rsub|i>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      V=<big|sum><rsub|i\<in\>I>V<rsub|i><text| and >\<forall\>k\<in\>I<text|
      we have >V<rsub|k><big|cap><around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>=<around*|{|0|}>
    </equation*>
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|v\<in\>V> then, as
      <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>>, there exist a
      <with|font-series|bold|unique> <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
      such that <math|\<forall\>i\<in\>I> we have
      <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>, proving
      <math|V\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>>. As by
      [definition: <reference|direct sum of sets>]
      <math|<big|sum><rsub|i\<in\>I>V<rsub|i>\<subseteq\>V> we have\ 

      <\equation*>
        V=<big|sum><rsub|i\<in\>I>V<rsub|i>
      </equation*>

      Let <math|k\<in\>I>. If <math|v\<in\>V<rsub|k><big|cap><around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>>
      then <math|v\<in\>V<rsub|k>> and <math|v\<in\><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>>.
      So there exists a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>\<subseteq\>V>
      such that <math|\<forall\>i\<in\>I\\<around*|{|k|}>>
      <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>>. Define\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text| by
        >w<rsub|i>=<choice|<tformat|<table|<row|<cell|-v<text| if
        >i=k>>|<row|<cell|v<rsub|i><text| if
        >i\<in\>I\\<around*|{|k|}>>>>>>\<in\>V<rsub|i>
      </equation*>

      then\ 

      <\equation*>
        \<forall\>i\<in\>I<text| we have >w<rsub|i>\<in\><choice|<tformat|<table|<row|<cell|-v\<in\>V<rsub|k><text|
        if >i=k>>|<row|<cell|v<rsub|i>\<in\>V<rsub|i><text| if
        >i\<in\>I\\<around*|{|k|}>>>>>>\<in\>V<rsub|i>
      </equation*>

      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>w<rsub|i>+w<rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>+<around*|(|-v|)>>>|<row|<cell|>|<cell|=>|<cell|v+<around*|(|-v|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      Further for <math|<around*|{|u<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
      defined by <math|u<rsub|i>=0> we have <math|\<forall\>i\<in\>I>
      <math|u<rsub|i>=0\<in\>V<rsub|i>> and
      <math|0\<equallim\><rsub|<text|[theorem: <reference|sum of neutral
      element (2)>]>><big|sum><rsub|i\<in\>I>u<rsub|i>>, so, as
      <math|0\<in\>V> and <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>>, we
      have by <with|font-series|bold|uniqueness> that
      <math|\<forall\>i\<in\>I> <math|u<rsub|i>=w<rsub|i>>, hence
      <math|-v=w<rsub|k>=u<rsub|k>=0> proving that <math|v=0>. As
      <math|v\<in\>V<rsub|k><big|cap><around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>>
      was chosen arbitrary we conclude that\ 

      <\equation*>
        V<rsub|k><big|cap><around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>\<subseteq\><around*|{|0|}>
      </equation*>

      By [theorem: <reference|direct sum of subspaces>]
      <math|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>> is a
      sub-space of <math|V> and by the hypothesis <math|V<rsub|k>> is a
      subspace of <math|V> so we have <math|0\<in\>V<rsub|k><big|cap><around*|(|<big|sum><rsub|i\<in\>I\\<around*|{||}>>V<rsub|i>|)>>
      and it follows that\ 

      <\equation*>
        V<rsub|k><big|cap><around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>=<around*|{|0|}>
      </equation*>

      <\equation*>
        \;
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|v\<in\>V> then as
      <math|V=<big|sum><rsub|i\<in\>I>V<rsub|i>> there exists a
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> with
      <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Let
      <math|<around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> such that
      <math|\<forall\>i\<in\>I> <math|w<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Assume that
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<neq\><around*|{|w<rsub|i>|}><rsub|i\<in\>I>>
      then there exist a <math|k\<in\>I> such that
      <math|v<rsub|k>\<neq\>w<rsub|k>> and we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|v+<around*|(|-v|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>v<rsub|i>+<around*|(|-<big|sum><rsub|i\<in\>I>w<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|sum of sums (2)>, <reference|sum of inverses
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|v<rsub|i>-w<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|v<rsub|i>-w<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|k|}>><around*|(|v<rsub|i>-w<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|v<rsub|i>-w<rsub|i>|)>+<around*|(|v<rsub|k>-w<rsub|k>|)>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        w<rsub|k>-v<rsub|k>=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|v<rsub|i>-w<rsub|i>|)>
      </equation*>

      Now <math|w<rsub|k>-v<rsub|k>\<in\>V<rsub|k>> and
      <math|\<forall\>i\<in\>I\\<around*|{|k|}>>
      <math|v<rsub|i>-w<rsub|i>\<in\>V<rsub|i>> so that
      <math|w<rsub|k>-v<rsub|k>\<in\>V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>>,
      hence by the hypothesis we have that <math|w<rsub|k>-v<rsub|k>=0>
      contradicting <math|v<rsub|k>\<neq\>w<rsub|k>>. So we must have that
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>=<around*|{|w<rsub|i>|}><rsub|i\<in\>I>>.
      Proving that\ 

      <\equation*>
        V=<big|oplus><rsub|i\<in\>I>V<rsub|i>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|direct sum index union (1)>Let <math|V> be a vector space over a
    field <math|F>, <math|I<rsub|1>,I<rsub|2>> finite sets such that
    <math|I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>>, <math|U,W> sub-spaces
    of <math|V>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a finite family of sub-spaces of <math|V> such that\ 

    <\equation*>
      U=<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i><text|,
      >W=<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i><rsub|><text| and
      >V=U\<oplus\>W
    </equation*>

    then\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    As <math|U=<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i><text|,
    >W=<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i><rsub|>> we have by
    definition that

    <\equation>
      <label|eq 12.5.133>\<forall\>i\<in\>I<rsub|1><text| >V<rsub|i><text| is
      a sub-space of >U,V<text| and >\<forall\>i\<in\>I<rsub|2><text|
      >V<rsub|i><text| is a sub-space of >W,W
    </equation>

    \ <math|> Let <math|v\<in\>V> then there exists
    <with|font-series|bold|unique> <math|u\<in\>U> and a <math|w\<in\>W> such
    that\ 

    <\equation>
      <label|eq 12.5.132>v=u+w
    </equation>

    As <math|U=<big|oplus><rsub|i\<in\>I<rsub|1>>U<rsub|i>> and
    <math|W=<big|oplus><rsub|i\<in\>I<rsub|2>>W<rsub|i>><space|1em>there
    exists <with|font-series|bold|unique ><math|<around*|{|u<rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>U\<subseteq\>V>
    and <math|<around*|{|w<rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>W\<subseteq\>V>
    such that\ 

    <\equation>
      <label|eq 12.6.132>\<forall\>i\<in\>I<rsub|1><text|>
      u<rsub|i>\<in\>V<rsub|i>\<wedge\>\<forall\>i\<in\>I<rsub|2><text|
      >w<rsub|i>\<in\>V<rsub|i>\<wedge\>u=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsub|i>\<wedge\>w=<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>
    </equation>

    As <math|I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>> we can define

    <\equation*>
      <around*|{|v<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V<text|
      by >v<rsub|i>=<choice|<tformat|<table|<row|<cell|u<rsub|i><text| if
      >i\<in\>I<rsub|1>>>|<row|<cell|w<rsub|i><text| if
      >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i>
    </equation*>

    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>u<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|u+w>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 12.5.132>]>>>|<cell|v>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>v<rsub|i><text| and
      >\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2><text|
      >v<rsub|i>=<choice|<tformat|<table|<row|<cell|u<rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|1>>>|<row|<cell|w<rsub|i>\<in\>V<rsub|i><text| if
      >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i>
    </equation*>

    Let <math|<around*|{|z<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2>>
    <math|z<rsub|i>\<in\>V<rsub|i>> and <math|v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>z<rsub|i>>.
    Define then <math|u<rprime|'>,w<rprime|'>> by\ 

    <\equation>
      <label|eq 12.7.132>u<rprime|'>=<big|sum><rsub|i\<in\>I<rsub|1>>z<rsub|i><text|
      and >w<rprime|'>=<big|sum><rsub|i\<in\>I<rsub|2>>z<rsub|i>
    </equation>

    then we have that\ 

    <\equation*>
      u<rprime|'>+w<rprime|'>=<big|sum><rsub|i\<in\>I<rsub|1>>z<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>z<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>z<rsub|i>=v
    </equation*>

    As <math|\<forall\>i\<in\>I<rsub|1>> <math|V<rsub|i>> is a sub-space of
    <math|U>, <math|\<forall\>i\<in\>I<rsub|2>> is a sub-space of <math|W>
    [see: <reference|eq 12.5.133>] we have by [theorem: <reference|direct sum
    of subspaces>] that <math|u<rprime|'>\<in\>U> and
    <math|w<rprime|'>\<in\>W> so\ 

    <\equation*>
      u<rprime|'>+w<rprime|'>=v\<equallim\><rsub|<text|[eq: <reference|eq
      12.5.132>]>>u+w\<wedge\>u,u<rprime|'>\<in\>U\<wedge\>w,w<rprime|'>\<in\>W
    </equation*>

    Hence as <math|V=U\<oplus\>W> we have by the uniqueness of the
    decomposition that\ 

    <\equation>
      <label|eq 12.8.132>u=u<rprime|'>\<wedge\>w=w<rprime|'>
    </equation>

    Combining [eqs: <reference|eq 12.6.132>, <reference|eq 12.7.132>,
    <reference|eq 12.8.132>] we have\ 

    <\equation*>
      u=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsub|i>=u<rprime|'>=<big|sum><rsub|i\<in\>I<rsub|1>>z<rsub|i>\<wedge\>w=<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>=w<rprime|'>=<big|sum><rsub|i\<in\>I<rsub|2>>z<rsub|i>
    </equation*>

    Now as <math|U=<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>>,
    <math|W=<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>> we have by the above
    and uniqueness that\ 

    <\equation*>
      \<forall\>i\<in\>I<rsub|1> z<rsub|i>=u<rsub|i><infix-and>\<forall\>i\<in\>I<rsub|2><text|
      >z<rsub|i>=w<rsub|i>
    </equation*>

    hence we have <math|\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2>> that\ 

    <\equation*>
      v<rsub|i>=<choice|<tformat|<table|<row|<cell|u<rsub|i><text| if
      >i\<in\>I<rsub|1>>>|<row|<cell|w<rsub|i><text| if
      >i\<in\>I<rsub|2>>>>>>=<choice|<tformat|<table|<row|<cell|z<rsub|i><text|
      if >i\<in\>I<rsub|1>>>|<row|<cell|z<rsub|i><text| if
      >i\<in\>I<rsub|2>>>>>>=z<rsub|i>
    </equation*>

    proving that the decomposition of <math|v\<in\>V> is unique. Hence\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>
    </equation*>
  </proof>

  <\corollary>
    <label|direct sum index union (2)>Let <math|V> be a vector space over a
    field <math|F>, <math|I> a finite set, <math|k\<nin\>I,> <math|U> a
    sub-space of <math|V> <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I<big|cup><around*|{|k|}>>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a finite family of sub-spaces of <math|V> such that\ 

    <\equation*>
      \<forall\>i\<in\>I<text| >V<rsub|i><text| is a sub-space of <math|U>>
    </equation*>

    and\ 

    <\equation*>
      U=<big|oplus><rsub|i\<in\>I>V<rsub|i><text| and
      >V=U<big|oplus>V<rsub|k>
    </equation*>

    then

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I<big|cup><around*|{|k|}>>V<rsub|i>
    </equation*>
  </corollary>

  <\proof>
    \ Take <math|I<rsub|1>=I> and <math|I<rsub|2>=<around*|{|k|}>> then we
    have as <math|k\<nin\>I> that <math|I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>>.
    Further <math|\<forall\>i\<in\>I<rsub|1>> <math|V<rsub|i>> is a sub-space
    of <math|U> and <math|\<forall\>i\<in\>I<rsub|2>>
    <math|V<rsub|i>=V<rsub|k>> is a sub-space of <math|V<rsub|k>>. Further as
    <math|V<rsub|k>\<equallim\><rsub|<text|[example: <reference|direct sum
    singleton>]>><big|oplus><rsub|i\<in\><around*|{|k|}>>W<rsub|i>> and by
    the hypothesis <math|U=<big|oplus><rsub|i\<in\>I>V<rsub|i><text| and
    >V=U<big|oplus>V<rsub|k>> it follows from [theorem: <reference|direct sum
    index union (1)>] that\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I<big|cup><around*|{|k|}>>V<rsub|i>
    </equation*>
  </proof>

  <\theorem>
    <label|direct sum index union (3)>Let <math|V> be a vector space over a
    field <math|F>, <math|I> a finite set and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a family of sub-spaces of <math|V> such that

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I>V<rsub|i>
    </equation*>

    then we have:

    <\enumerate>
      <item>If <math|J\<subseteq\>I> we have that

      <\equation*>
        <big|sum><rsub|i\<in\>J>V<rsub|i>=<big|oplus><rsub|i\<in\>J>V<rsub|i>
      </equation*>

      <item>If <math|I=I<rsub|1><big|cup>I<rsub|2>> with
      <math|I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>> then\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i>=<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i><text|
        and ><big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i>=<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>
      </equation*>

      and

      <\equation*>
        V=<around*|(|<big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>
      </equation*>

      <item>If <math|k\<in\>I> then\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<big|oplus><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>
      </equation*>

      and

      <\equation*>
        V=<around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>\<oplus\>V<rsub|k>
      </equation*>
    </enumerate>

    <\note>
      By [theorem: <reference|direct sum of subspaces>] we have that
      <math|<big|sum><rsub|i\<in\>J>V<rsub|i>>,
      <math|<big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i>> and
      <math|<big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i>> are sub-spaces of
      <math|V> as is required for (1) and (2).
    </note>
  </theorem>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>Let <math|j\<in\><big|sum><rsub|i\<in\>J>V<rsub|i>> then there
      exists a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>V>
      such that <math|\<forall\>i\<in\>J> <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>J>v<rsub|>>. Assume that there exists
      also a <math|<around*|{|w<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>V> such
      that <math|\<forall\>i\<in\>J> <math|w<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>J>w<rsub|i>>. Define then\ 

      <\equation*>
        <around*|{|v<rprime|'><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text|
        by >v<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
        >i\<in\>I\\J>>|<row|<cell|v<rsub|i><text| if >i\<in\>J>>>>><text| and
        ><around*|{|w<rprime|'><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text|
        by >w<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
        >i\<in\>I\\J>>|<row|<cell|w<rsub|i><text| if >i\<in\>J>>>>>
      </equation*>

      then we have <math|\<forall\>i\<in\>I>\ 

      <\equation>
        <label|eq 12.9.132>v<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|0\<in\>V<rsub|i><text|
        if >i\<in\>I\\J>>|<row|<cell|u<rsub|i>\<in\>V<rsub|i><text| if
        >i\<in\>J>>>>>\<in\>V<rsub|i><text| and
        >w<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|0\<in\>V<rsub|i><text|
        if >i\<in\>I\\J>>|<row|<cell|w<rsub|i>\<in\>V<rsub|i><text| if
        >i\<in\>J>>>>>\<in\>V<rsub|i>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>v<rprime|'><rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I\\J>v<rprime|'><rsub|i>+<big|sum><rsub|i\<in\>J>v<rprime|'><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J>0+<big|sum><rsub|i\<in\>J>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|0+v>>|<row|<cell|>|<cell|=>|<cell|v<eq-number><label|eq
        12.10.132>>>|<row|<cell|<big|sum><rsub|i\<in\>I>w<rprime|'><rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I\\J>w<rprime|'><rsub|i>+<big|sum><rsub|i\<in\>J>w<rprime|'><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J>0+<big|sum><rsub|i\<in\>J>w<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|0+v>>|<row|<cell|>|<cell|=>|<cell|v<eq-number><label|eq
        12.11.132>>>>>
      </eqnarray*>

      As <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> we have by [eqs:
      <reference|eq 12.9.132>, <reference|eq 12.10.132> and <reference|eq
      12.11.132>] that <math|\<forall\>i\<in\>I> we have
      <math|v<rprime|'><rsub|i>=w<rprime|'><rsub|i>>. Hence\ 

      <\equation*>
        \<forall\>j\<in\>J<text| we have >v<rsub|i>=v<rprime|'><rsub|i>=w<rprime|'><rsub|i>=w<rsub|i>
      </equation*>

      proving that\ 

      <\equation*>
        <big|sum><rsub|i\<in\>J>V<rsub|i>=<big|oplus><rsub|i\<in\>J>V<rsub|i>
      </equation*>

      <item>As <math|I=I<rsub|1><big|cup>I<rsub|2>> we have <math|I<rsub|1>>,
      <math|I<rsub|2>> so that by (1) we have\ 

      <\equation>
        <label|eq 12.12.132><big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i>=<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i><text|
        and ><big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i>=<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>
      </equation>

      As <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> we have by [theorem:
      <reference|direct sum decomposition>] that
      <math|V=<big|sum><rsub|i\<in\>I>V<rsub|i>>, further by [theorem:
      <reference|direct sum of sets properties> (4)]
      <math|<big|sum><rsub|i\<in\>I>V<rsub|i>=<around*|(|<big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>+<around*|(|<big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>>
      so that\ 

      <\equation>
        <label|eq 12.13.132>V=<around*|(|<big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>+<around*|(|<big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>
      </equation>

      Let <math|v\<in\>V> then by the above there exist\ 

      <\equation>
        <label|eq 12.14.132>v<rsup|1>\<in\><big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i><text|,
        >v<rsup|2>\<in\><big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i><text| such
        that >v=v<rsup|1>+v<rsup|2>
      </equation>

      hence there exists <math|<around*|{|v<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V>
      and <math|<around*|{|v<rsub|i><rsup|2>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V>
      such that\ 

      <\equation>
        <label|eq 12.15.132>\<forall\>i\<in\>I<rsub|1><text|
        >v<rsup|1><rsub|i>\<in\>V<rsub|i><text|,
        >\<forall\>i\<in\>I<rsub|2><text|
        >v<rsup|2><rsub|i>\<in\>V<rsub|i><text|,
        >v<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i><text|
        and >v<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>
      </equation>

      Assume that there exist also\ 

      <\equation>
        <label|eq 12.16.132>w<rsup|1>\<in\><big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i><text|,
        >w<rsup|2>\<in\><big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i><text| such
        that >v=w<rsup|1>+w<rsup|2>
      </equation>

      then there exists <math|<around*|{|w<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V>
      and <math|<around*|{|w<rsub|i><rsup|2>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V>
      such that\ 

      <\equation>
        <label|eq 12.17.132>\<forall\>i\<in\>I<rsub|1><text|
        >w<rsup|1><rsub|i>\<in\>V<rsub|i><text|,
        >\<forall\>i\<in\>I<rsub|2><text|
        >w<rsup|2><rsub|i>\<in\>V<rsub|i><text|,
        >w<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i><text|
        and >w<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>
      </equation>

      As <math|I=I<rsub|1><big|cup>I<rsub|2>> and
      <math|I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>> we can define

      <\equation*>
        <around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text| by
        >v<rsub|i>=<choice|<tformat|<table|<row|<cell|v<rsup|1><rsub|i><text|
        by >i\<in\>I<rsub|1>>>|<row|<cell|v<rsup|2><rsub|i><text| by
        >i\<in\>I<rsub|2>>>>>><text| and ><around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text|
        by >w<rsub|i>==<choice|<tformat|<table|<row|<cell|w<rsup|1><rsub|i><text|
        by >i\<in\>I<rsub|1>>>|<row|<cell|w<rsup|2><rsub|i><text| by
        >i\<in\>I<rsub|2>>>>>>
      </equation*>

      then we have by [eqs: <reference|eq 12.15.132> and <reference|eq
      12.17.132>]\ 

      <\equation>
        <label|eq 12.18.132>\<forall\>i\<in\>I<text|
        >v<rsub|i>=<choice|<tformat|<table|<row|<cell|v<rsup|1><rsub|i>\<in\>V<rsub|i><text|
        if >i\<in\>I<rsub|1>>>|<row|<cell|v<rsup|1><rsub|i>\<in\>V<rsub|i><text|
        if >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i><text| and
        >w<rsub|i>=<choice|<tformat|<table|<row|<cell|w<rsup|1><rsub|i>\<in\>V<rsub|i><text|
        if >i\<in\>I<rsub|1>>>|<row|<cell|w<rsup|1><rsub|i>\<in\>V<rsub|i><text|
        if >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>v<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.15.132>]>>>|<cell|v<rsup|1>+v<rsup|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.14.132>]>>>|<cell|v<eq-number><label|eq
        12.19.132>>>|<row|<cell|<big|sum><rsub|i\<in\>I>w<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>w<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.17.132>]>>>|<cell|w<rsup|1>+w<rsup|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.16.132>]>>>|<cell|v<eq-number><label|eq
        12.20.132>>>>>
      </eqnarray*>

      As <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> we have by [eqs:
      <reference|eq 12.18.132>, <reference|eq 12.19.132> and <reference|eq
      12.20.132>] that\ 

      <\equation>
        <label|eq 12.21.132>\<forall\>i\<in\>I<text| >v<rsub|i>=w<rsub|i>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|1>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.15.132>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.21.132>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.17.132>]>>>|<cell|w<rsup|1>>>|<row|<cell|v<rsup|2>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.15.132>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|2>>v<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.21.132>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 12.17.132>]>>>|<cell|w<rsup|2>>>>>
      </eqnarray*>

      proving that

      <\equation*>
        v=v<rsup|1>+v<rsup|2>=w<rsup|1>+w<rsup|2>\<wedge\>v<rsup|1>=w<rsup|1>\<wedge\>v<rsup|2>=w<rsup|2>
      </equation*>

      So that we have, taking in account [eqs: <reference|eq 12.14.132>,
      <reference|eq 12.17.132>] and [definition: <reference|vector space
      internal direct sum>] that\ 

      <\equation*>
        V=<around*|(|<big|sum><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|sum><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|direct sum and bijection>If <math|V> is a vector space over a
    field, <math|I> finite, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a finite family of sub spaces of <math|V> and
    <math|\<sigma\>:J\<rightarrow\>I> a bijection such that
    <math|V=<big|oplus><rsub|i\<in\>J>V<rsub|\<sigma\><around*|(|i|)>>> then
    <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>>.
  </theorem>

  <\proof>
    As <math|V=<big|oplus><rsub|i\<in\>J>V<rsub|\<sigma\><around*|(|i|)>>> we
    have by [corollary: <reference|direct sum decomposition>] that

    <\equation>
      <label|eq 12.5.125>V=<big|sum><rsub|i\<in\>J>V<rsub|\<sigma\><around*|(|i|)>>
    </equation>

    and\ 

    <\equation>
      <label|eq 12.6.125>\<forall\>k\<in\>I<text| we have
      >V<rsub|\<sigma\><around*|(|k|)>><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|\<sigma\><around*|(|i|)>>=<around*|{|0|}>
    </equation>

    Now using [theorem: <reference|direct sum of sets properties>] we have
    that <math|<big|sum><rsub|i\<in\>J>V<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I>V<rsub|i>>
    so that [eq: <reference|eq 12.5.125>] becomes\ 

    <\equation>
      <label|eq 12.7.125>V=<big|sum><rsub|i\<in\>I>V<rsub|i>
    </equation>

    Let <math|l\<in\>I> and take <math|k=\<sigma\><rsup|-1><around*|(|l|)>\<in\>J>
    so that <math|l=\<sigma\><around*|(|k|)>>. Let
    <math|i\<in\>\<sigma\><around*|(|J\\<around*|{|k|}>|)>> then
    <math|\<exists\>j\<in\>J> with <math|j\<neq\>k> such that
    <math|i=\<sigma\><around*|(|j|)>>. Assume that <math|i=l> then
    <math|\<sigma\><around*|(|j|)>=i=l=\<sigma\><around*|(|k|)>\<Rightarrowlim\><rsub|\<sigma\><text|
    is injective>>j=k> contradicting <math|j\<neq\>k>, hence <math|i\<neq\>l>
    so that <math|i\<in\>\<sigma\><around*|(|J|)>\\<around*|{|l|}>>, proving
    that

    <\equation*>
      \<sigma\><around*|(|J\\<around*|{|k|}>|)>\<subseteq\>\<sigma\><around*|(|J|)>\\<around*|{|l|}>
    </equation*>

    On the other hand if <math|i\<in\>\<sigma\><around*|(|J|)>\\<around*|{|l|}>>
    then <math|\<exists\>j\<in\>J> such that
    <math|i=\<sigma\><around*|(|j|)>> and <math|i\<neq\>l>, assume that
    <math|j=k> then <math|i=\<sigma\><around*|(|j|)>=\<sigma\><around*|(|k|)>=l>
    contradicting <math|i\<neq\>l>, hence <math|j\<neq\>k> so that
    <math|i\<in\>\<sigma\><around*|(|J\\<around*|{|k|}>|)>>, proving,
    together with the above, that

    <\equation*>
      \<sigma\><around*|(|J|)>\\<around*|{|l|}>=\<sigma\><around*|(|J\\<around*|{|k|}>|)>
    </equation*>

    As <math|\<sigma\>:J\<rightarrow\>I> is a bijection we have that
    <math|\<sigma\><around*|(|J|)>=I> so that
    <math|><math|\<sigma\><around*|(|J\\<around*|{|k|}>|)>=I\\<around*|{|l|}>>
    hence\ 

    <\equation*>
      \<sigma\><rsub|\|J\\<around*|{|k|}>>:J\\<around*|{|k|}>\<rightarrow\>\<sigma\><around*|(|J\\<around*|{|k|}>|)>=I\\<around*|{|l|}><text|
      is a bijection>
    </equation*>

    Applying then [theorem: <reference|direct sum of sets properties>] we
    have that

    <\equation*>
      <big|sum><rsub|i\<in\>J\\<around*|{|k|}>>V<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>
    </equation*>

    so that

    <\equation*>
      V<rsub|l><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=V<rsub|\<sigma\><around*|(|k|)>><big|cap><big|sum><rsub|i\<in\>J\\<around*|{|k|}>>V<rsub|\<sigma\><around*|(|i|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.6.125>]>><around*|{|0|}>
    </equation*>

    Combining this with [eq: <reference|eq 12.7.125>] proves, using [theorem:
    <reference|direct sum decomposition>], that\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I>V<rsub|i>
    </equation*>
  </proof>

  The following exsmple shows that the direct interal sum defined in this
  section is indeed a extension of the internal direct sum in [definition:
  <reference|vector space internal direct sum>].

  <\example>
    <label|direct sum of two vector spaces>Let
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>\<subseteq\>\<cal-P\><around*|(|V|)>>
    be a family of two sub-spaces of a vector space over a field <math|F>
    then\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\><around*|{|1,2|}>>V<rsub|i>
    </equation*>

    then\ 

    <\equation*>
      V=V<rsub|1>\<oplus\>V<rsub|2>
    </equation*>
  </example>

  <\proof>
    If <math|V=<big|oplus><rsub|i\<in\><around*|{|1,2|}>>V<rsub|i>> then we
    have

    <\equation*>
      V\<equallim\><rsub|<text|[theorem: <reference|direct sum index union
      (3)>]>><around*|(|<big|sum><rsub|i\<in\><around*|{|1|}>>|)>\<oplus\>V<rsub|2>\<equallim\><rsub|<text|[theorem:
      <reference|direct sum of sets properties>]>>V<rsub|1>\<oplus\>V<rsub|2>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|direct sum dimension>Let <math|V> be a vector space over a field
    <math|F>, <math|n\<in\>\<bbb-N\>>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of \ finite dimensional sub-spaces of <math|V> such that\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>.,n|}>>V<rsub|i>
    </equation*>

    then <math|V> is finite dimensional and\ 

    <\equation*>
      dim<around*|(|V|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>dim<around*|(|V<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    W use mathematical induction for the proof, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
      where <math|V<rsub|i>> are finite dimensional then <math|V> is finite
      dimensional and >dim<around*|(|V|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>dim<around*|(|V<rsub|i>|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|V=<big|oplus><rsub|i\<in\><around*|{|1|}>>V<rsub|i>>
      then by [example: <reference|direct sum singleton>] <math|V=V<rsub|1>>,
      hence <math|V> is finite dimensional and

      <\equation*>
        dim<around*|(|V|)>=dim<around*|(|V<rsub|1>|)>=<big|sum><rsub|i\<in\><around*|{|1|}>>dim<around*|(|V<rsub|i>|)>
      </equation*>

      proving that <math|1\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Assume that
      <math|V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>n+1|}>>V<rsub|i>>
      where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>>
      <math|V<rsub|i>> is a finite dimensional sub-space of <math|F> then we
      have by [theorem: <reference|direct sum index union (3)>] that\ 

      <\equation>
        <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
        and >V=<around*|(|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>\<oplus\>V<rsub|n+1>
      </equation>

      As <math|n\<in\>S> \ <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
      is finite dimensional and\ 

      <\equation>
        <label|eq 12.12.127>dim<around*|(|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>dim<around*|(|V<rsub|i>|)>
      </equation>

      As <math|V<rsub|n+1>> is also finite dimensional we can apply [theorem:
      <reference|vector space internal direct sum dimension>] resulting in

      <\equation*>
        V=<around*|(|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>\<oplus\>V<rsub|n+1><text|
        is finite dimensional>
      </equation*>

      and\ 

      <\equation*>
        dim<around*|(|<around*|(|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>\<oplus\>V<rsub|n+1>|)>=dim<around*|(|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>+dim<around*|(|V<rsub|n+1>|)>
      </equation*>

      substituting the above in [eq: <reference|eq 12.12.127>] gives\ 

      <\equation*>
        dim<around*|(|V|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>dim<around*|(|V<rsub|i>|)>+dim<around*|(|V<rsub|n+1>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>dim<around*|(|V<rsub|i>|)>
      </equation*>

      \ proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\theorem>
    <label|direct sum and isomorphism>Let <math|V,W> be vector spaces over a
    field <math|F> such that <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> and
    <math|L:V\<rightarrow\>W> a linear isomorphism then\ 

    <\equation*>
      W=<big|oplus><rsub|i\<in\>I>L<around*|(|V<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|w\<in\>W> then as <math|L> is bijective there exist a
    <math|v\<in\>V> such that <math|L<around*|(|v|)>=W>. As
    <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> there exist a
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> such that
    <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
    <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Define then\ 

    <\equation*>
      <around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>W<text| by
      >w<rsub|i>=L<around*|(|v<rsub|i>|)>
    </equation*>

    then <math|\<forall\>i\<in\>I> <math|w<rsub|i>=L<around*|(|v<rsub|i>|)>\<in\>L<around*|(|W<rsub|i>|)>>
    and <math|w=L<around*|(|v|)>=L<around*|(|<big|sum><rsub|i\<in\>I>v<rsub|i>|)>=<big|sum><rsub|i\<in\>I>L<around*|(|v<rsub|i>|)>=<big|sum><rsub|i\<in\>I>w<rsub|i>>.
    Let <math|<around*|{|w<rprime|'><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>W>
    be such that <math|\<forall\>i\<in\>I>
    <math|w<rprime|'><rsub|i>\<in\>L<around*|(|V<rsub|i>|)>> and
    <math|w=<big|sum><rsub|i\<in\>I>w<rprime|'><rsub|i>>. Define\ 

    <\equation*>
      <around*|{|v<rprime|'><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text| by
      >L<rsup|-1><around*|(|w<rprime|'><rsub|i>|)>
    </equation*>

    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|v>|<cell|\<equallim\>>|<cell|L<rsup|-1><around*|(|w|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1><around*|(|<big|sum><rsub|i\<in\>I>w<rprime|'><rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L<rsup|-1><text|
      is linear>>>|<cell|<big|sum><rsub|i\<in\>I>L<rsup|-1><around*|(|w<rprime|'><rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>v<rprime|'><rsub|i>>>>>
    </eqnarray*>

    As <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> we have that
    <math|\<forall\>i\<in\>I> <math|v<rprime|'><rsub|i>=v<rsub|i>> so that
    <math|w<rsub|i>=L<around*|(|v<rsub|i>|)>=L<around*|(|v<rprime|'><rsub|i>|)>=L<around*|(|L<rsup|-1><around*|(|w<rprime|'><rsub|i>|)>|)>=w<rprime|'><rsub|i>>.
    Hence we have that\ 

    <\equation*>
      W=<big|oplus><rsub|i\<in\>I>L<around*|(|V<rsub|i>|)>
    </equation*>
  </proof>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|11>
    <associate|page-first|605>
    <associate|page-medium|beamer>
    <associate|section-nr|9>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|12|?>>
    <associate|direct sum|<tuple|12.5|?>>
    <associate|direct sum and bijection|<tuple|12.13|?>>
    <associate|direct sum and isomorphism|<tuple|12.16|?>>
    <associate|direct sum decomposition|<tuple|12.8|?>>
    <associate|direct sum dimension|<tuple|12.15|?>>
    <associate|direct sum empty sum|<tuple|12.2|?>>
    <associate|direct sum index union (1)|<tuple|12.9|?>>
    <associate|direct sum index union (2)|<tuple|12.10|?>>
    <associate|direct sum index union (3)|<tuple|12.11|?>>
    <associate|direct sum of a empty family|<tuple|12.6|?>>
    <associate|direct sum of sets|<tuple|12.1|?>>
    <associate|direct sum of sets properties|<tuple|12.3|?>>
    <associate|direct sum of subspaces|<tuple|12.4|?>>
    <associate|direct sum of two vector spaces|<tuple|12.14|?>>
    <associate|direct sum singleton|<tuple|12.7|?>>
    <associate|eq 12.1.1224|<tuple|12.1|?>>
    <associate|eq 12.10.132|<tuple|12.11|?>>
    <associate|eq 12.11.132|<tuple|12.12|?>>
    <associate|eq 12.12.127|<tuple|12.27|?>>
    <associate|eq 12.12.132|<tuple|12.13|?>>
    <associate|eq 12.13.132|<tuple|12.14|?>>
    <associate|eq 12.14.132|<tuple|12.15|?>>
    <associate|eq 12.15.132|<tuple|12.16|?>>
    <associate|eq 12.16.132|<tuple|12.17|?>>
    <associate|eq 12.17.132|<tuple|12.18|?>>
    <associate|eq 12.18.132|<tuple|12.19|?>>
    <associate|eq 12.19.132|<tuple|12.20|?>>
    <associate|eq 12.2.124|<tuple|12.2|?>>
    <associate|eq 12.20.132|<tuple|12.21|?>>
    <associate|eq 12.21.132|<tuple|12.22|?>>
    <associate|eq 12.3.124|<tuple|12.4|?>>
    <associate|eq 12.3.125|<tuple|12.3|?>>
    <associate|eq 12.5.125|<tuple|12.23|?>>
    <associate|eq 12.5.132|<tuple|12.6|?>>
    <associate|eq 12.5.133|<tuple|12.5|?>>
    <associate|eq 12.6.125|<tuple|12.24|?>>
    <associate|eq 12.6.132|<tuple|12.7|?>>
    <associate|eq 12.7.125|<tuple|12.25|?>>
    <associate|eq 12.7.132|<tuple|12.8|?>>
    <associate|eq 12.8.132|<tuple|12.9|?>>
    <associate|eq 12.9.132|<tuple|12.10|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Internal
      Direct Sum> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <assign|chapter-nr|11>

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
    <math|V>\ 

    <\enumerate>
      <item> <math|<big|sum><rsub|i\<in\>I>V<rsub|i>> is a sub space of
      <math|V>

      <item>If <math|J\<subseteq\>I> then
      <math|<big|sum><rsub|i\<in\>J>V<rsub|i>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>>

      <item>If <math|k\<in\>I> then <math|V<rsub|k>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>>
    </enumerate>

    then
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
    <label|direct sum singleton>If <math|V> is a vector space then and
    <math|W> a sub-space then <math|W=<big|oplus><rsub|i\<in\><around*|{|k|}>>V<rsub|i>>
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
    <math|F>, <math|n\<in\>\<bbb-N\>> finite such that\ 

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

  <chapter|Tensor product of vector spaces>

  Multilinear mappings are difficult to handle, the idea of the tensor
  product is to focus all attention a single pair of a vector space <math|P>
  and a fixed multilinear mapping between
  <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>> and
  <math|P> such that every multilinear mapping between
  <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>> and a
  vector space can be written as the composition of the fixed multilinear
  mapping and a linear mapping.

  <\definition>
    <label|tensor product><dueto|Tensor Product>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector spaces over a field <math|F> then
    <with|font-series|bold|a> <with|font-series|bold|tensor product>
    <with|font-series|bold|of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>> is a pair
    <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> where\ 

    <\enumerate>
      <item><math|P> is a vector space over the field <math|F>

      <item><math|\<nu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;P|)>>
      [see definition: <reference|multi multilinear mapping>]

      <item><math|span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>=P>

      <item><dueto|Universal Factorization property>If <math|U> is any vector
      space over <math|F> and <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>>
      then there exist a <math|h\<in\>Hom<around*|(|P,U|)>> such that
      <math|\<varphi\>=h\<circ\>\<nu\>>
    </enumerate>
  </definition>

  It turns out that the map <math|h> such that
  <math|\<varphi\>=h\<circ\>\<nu\>> is actually unique. Hence every
  multilinear mapping <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>>
  can be represented uniquely by a linear mapping
  <math|h\<in\>Hom<around*|(|P,U|)>> such thast
  <math|\<varphi\>=h\<circ\>\<nu\>>.

  <\theorem>
    <label|tensor product unique representation>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector spaces over a field <math|F>, <math|U> a vector
    space over the same field <math|F> and
    <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> a tensor product then
    <math|\<forall\>\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>>
    there exist a <with|font-series|bold|unique> linear mapping
    <math|h\<in\>Hom<around*|(|P,U|)>> such that
    <math|\<varphi\>=h\<circ\>\<nu\>>
  </theorem>

  <\proof>
    As <math|><math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> is a tensor
    product <math|P> is a vector space, <math|\<nu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;P|)>>,
    <math|P=span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>.
    Let <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>>
    then by definition there exist a <math|h\<in\>Hom<around*|(|P,U|)>> such
    that <math|\<varphi\>=h\<circ\>\<nu\>>. Assume that there exist a
    <math|k\<in\>Hom<around*|(|P,U|)>> such that
    <math|\<varphi\>=k\<circ\>\<nu\>>. Let <math|x\<in\>P> then, as
    <math|P=span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>,
    there exist by [theorem: <reference|linear span equivalence 1>] a
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that\ 

    <\equation>
      <label|eq 13.1.129>x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>y<rsub|i>
    </equation>

    If <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as
    <math|y<rsub|i>\<in\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    there exist a <math|z\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    such that <math|y<rsub|i>=\<nu\><around*|(|z|)>>. Hence
    <math|h<around*|(|y<rsub|i>|)>=h<around*|(|\<nu\><around*|(|z|)>|)>=<around*|(|h\<circ\>\<nu\>|)><around*|(|z|)>=\<varphi\><around*|(|z|)>=<around*|(|k\<circ\>\<nu\>|)><around*|(|z|)>=k<around*|(|\<nu\><around*|(|z|)>|)>=k<around*|(|y<rsub|i>|)>>
    proving that

    <\equation>
      <label|eq 13.2.129>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >h<around*|(|y<rsub|i>|)>=k<around*|(|y<rsub|i>|)>
    </equation>

    So we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|h<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.1.129>]>>>|<cell|h<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>y<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>h<around*|(|y<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.2.129>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>k<around*|(|y<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|k<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>y<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|k<around*|(|x|)>>>>>
    </eqnarray*>

    Which, as <math|x\<in\>P> was chosen arbitrary, proves that\ 

    <\equation*>
      h=k
    </equation*>
  </proof>

  We show now that given a finite family of vector spaces
  <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
  there exist a least one tensor product. First we introduce the concept of a
  free vector space which is a vector space created from a given set and
  field.\ 

  <\definition>
    <label|vector space free predefinition><index|<math|F<around*|(|X,F|)>>>Let
    <math|X> be a non empty set and <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    a field then <math|\<cal-F\><around*|(|X,F|)>> is defined by\ 

    <\equation*>
      \<cal-F\><around*|(|X,F|)>=<around*|{|f\<in\>F<rsup|X>\|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)><text|
      is finite>|}>\<subseteq\>F<rsup|X>
    </equation*>

    In other words <math|\<cal-F\><around*|(|X,F|)>> is the set of graphs of
    functions from <math|X> to <math|F> such that the functions are non zero
    for a finite number of elements in <math|F>.\ 
  </definition>

  Next we define the operators needed for a vector space.

  <\definition>
    <label|vector space free operations>Let <math|X> be a non empty set and a
    field <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then we define:

    <\enumerate>
      <item>If <math|f,g\<in\>\<cal-F\><around*|(|X,F|)>> then <math|f+g> is
      defined by <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>

      <item>If <math|f\<in\>\<cal-F\><around*|(|X,F|)>> and
      <math|\<alpha\>\<in\>F> then <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>

      <item><math|\<forall\>a\<in\>X> we define
      <math|\<delta\><rsub|a>:X\<rightarrow\>F> by
      <math|\<delta\><rsub|a><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1<text|
      if >x=a>>|<row|<cell|0<text| if >x\<in\>X\\<around*|{|a|}>>>>>>>
    </enumerate>
  </definition>

  Finally we define the free vector space.

  <\theorem>
    <label|vector space free><index|free vector space over a set>Let <math|X>
    be a set and <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    <math|<around*|\<langle\>|\<cal-F\><around*|(|X,F|)>,+,\<cdot\>|\<rangle\>>>
    [see the above definition] is a vector space over the field
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> where the neutral
    element is <math|C<rsub|0>>. This vector space is called the
    <with|font-series|bold|free vector space of X>.\ 
  </theorem>

  <\proof>
    Let <math|f,g\<in\>\<cal-F\><around*|(|X,F|)>>. If
    <math|x\<in\><around*|(|f+g|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
    then we have <math|<around*|(|f+g|)><around*|(|x|)>\<in\>F\\<around*|{|0|}>>
    so that <math|f<around*|(|x|)>+g<around*|(|x|)>\<neq\>0>. So we must have
    <math|f<around*|(|x|)>\<neq\>0\<vee\>g<around*|(|x|)>\<neq\>0> [otherwise
    <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>=0>],
    hence <math|x\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)><big|cup>g<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>,
    proving that

    <\equation*>
      <around*|(|f+g|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<subseteq\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)><big|cup>g<rsup|-1><around*|(|F\\<around*|{|0|}>|)>
    </equation*>

    As <math|f,g\<in\>\<cal-F\><around*|(|X,F|)>> we have that
    <math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>,><math|g<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
    are finite hence using [theorems: <reference|complex finite subset>,
    <reference|union of two finite sets is finite>] we have that
    <math|<around*|(|f+g|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>> is a
    finite set so that <math|f+g\<in\>\<cal-F\><around*|(|X,F|)>> and

    <\equation*>
      +:\<cal-F\><around*|(|X,F|)>\<times\>\<cal-F\><around*|(|X,F|)>\<rightarrow\>\<cal-F\><around*|(|X,F|)><text|
      is well defined>
    </equation*>

    Let <math|\<alpha\>\<in\>F> and <math|f\<in\>\<cal-F\><around*|(|X,F|)>>.
    If <math|x\<in\><around*|(|\<alpha\>\<cdot\>f|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
    then <math|\<alpha\>\<cdot\>f<around*|(|x|)>\<in\>F\\<around*|{|0|}>> so
    that <math|\<alpha\>\<cdot\>f<around*|(|x|)>\<neq\>0> hence we must have
    that <math|f<around*|(|x|)>\<neq\>0> or
    <math|x\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>> proving
    <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<subseteq\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
    [a finite set], so by [theorem: <reference|complex finite subset>]
    <math|><math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>> is finite or
    <math|\<alpha\>\<cdot\>f\<in\>\<cal-F\><around*|(|X,F|)>>, proving that\ 

    <\equation*>
      \<cdot\>:F\<times\>\<cal-F\><around*|(|X,F|)>\<rightarrow\>\<cal-F\><around*|(|X,F|)><text|
      is well defined>
    </equation*>

    Further for <math|C<rsub|0>:X\<rightarrow\>F> defined by
    <math|C<rsub|0><around*|(|x|)>=0> we have trivially that
    <math|<around*|(|C<rsub|0>|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>=\<varnothing\>>
    [which is finite] hence\ 

    <\equation*>
      C<rsub|0>\<in\>\<cal-F\><around*|(|X,F|)>
    </equation*>

    Next we check the axioms of a vector space:\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|\<cal-F\><around*|(|X,F|)>,+|\<rangle\>>>
      is a Abelian group:

      <\description>
        <item*|associativity>If <math|f,g,h\<in\>\<cal-F\><around*|(|X,F|)>>
        then we have <math|\<forall\>x\<in\>X> that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|f+<around*|(|g+h|)>|)><around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x|)>+<around*|(|g+h|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>+<around*|(|g<around*|(|x|)>+h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<around*|(|x|)>+g<around*|(|x|)>|)>+h<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f+g|)><around*|(|x|)>+h<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f+g|)>+h|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|f+<around*|(|g+h|)>=<around*|(|f+g|)>+h>

        <item*|commutatitivity>If <math|f,g\<in\>\<cal-F\><around*|(|X,F|)>>
        then we have <math|\<forall\>x\<in\>X> that\ 

        <\equation*>
          <around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>=g<around*|(|x|)>+f<around*|(|x|)>=<around*|(|g+f|)><around*|(|x|)>
        </equation*>

        proving that\ 

        <\equation*>
          f+g=g+f
        </equation*>

        <item*|neutral element>If <math|f\<in\>\<cal-F\><around*|(|X,F|)>>
        then we have <math|\<forall\>x\<in\>X> that\ 

        <\equation*>
          <around*|(|f+C<rsub|0>|)><around*|(|x|)>=f<around*|(|x|)>+C<rsub|0><around*|(|x|)>=f<around*|(|x|)>+0=f<around*|(|x|)>=0+f<around*|(|x|)>=C<rsub|0><around*|(|x|)>+f<around*|(|x|)>=<around*|(|C<rsub|0>+f|)><around*|(|x|)>
        </equation*>

        proving that\ 

        <\equation*>
          f+C<rsub|0>=f=C<rsub|0>+f
        </equation*>

        <item*|inverse element>Let <math|f\<in\>\<cal-F\><around*|(|X,F|)>>
        then define <math|<around*|(|-f|)>:X\<rightarrow\>F> by
        <math|<around*|(|-f|)><around*|(|x|)>=-f<around*|(|x|)>>. Let
        <math|x\<in\><around*|(|-f|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
        then <math|<around*|(|-f|)><around*|(|x|)>\<neq\>0\<Rightarrow\>-f<around*|(|x|)>\<neq\>0\<Rightarrow\>f<around*|(|x|)>\<neq\>0>,
        proving that <math|x\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>.
        Hence <math|><math|<around*|(|-f|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<subseteq\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
        [a finite set], proving that <math|<around*|(|-f|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
        is finite so that <math|-f\<in\>\<cal-F\><around*|(|X,F|)>>. Next
        <math|\<forall\>x\<in\>X> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|f+<around*|(|-f|)>|)><around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x|)>+<around*|(|-f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>+<around*|(|-<around*|(|f<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|C<rsub|0><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|<around*|(|-f|)>+f\<equallim\><rsub|commutativity>f+<around*|(|-f|)>=C<rsub|0>>
      </description>

      <item>Additional vector space axioms:

      <\enumerate>
        <item>If <math|\<alpha\>\<in\>F> and
        <math|f,g\<in\>\<cal-F\><around*|(|X,F|)>> we have
        <math|\<forall\>x\<in\>X> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|f+g|)>|)><around*|(|x|)>>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|f+g|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|f<around*|(|x|)>+g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|x|)>+\<alpha\>\<cdot\>g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>+<around*|(|\<alpha\>\<cdot\>g|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>f+\<alpha\>\<cdot\>g|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|><math|\<alpha\>\<cdot\><around*|(|f+g|)>=\<alpha\>\<cdot\>f+\<alpha\>\<cdot\>g>

        <item>If <math|\<alpha\>,\<beta\>\<in\>F> and
        <math|f\<in\>\<cal-F\><around*|(|X,F|)>> then we have
        <math|\<forall\>x\<in\>X> that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<alpha\>+\<beta\>|)>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<alpha\>+\<beta\>|)>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|x|)>+\<beta\>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>+<around*|(|\<beta\>\<cdot\>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|<around*|(|\<alpha\>+\<beta\>|)>\<cdot\>f=\<alpha\>\<cdot\>f+\<beta\>\<cdot\>f>.

        <item>If <math|\<alpha\>,\<beta\>\<in\>F> and
        <math|f\<in\>\<cal-F\><around*|(|X,F|)>> then we have
        <math|\<forall\>x\<in\>X> that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>f|)>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          <around*|(|\<alpha\>\<cdot\>\<beta\>|)>\<cdot\>f=\<alpha\>\<cdot\><around*|(|\<beta\>\<cdot\>f|)>
        </equation*>

        <item>If <math|<math|f\<in\>\<cal-F\><around*|(|X,Y|)>>> then
        <math|\<forall\>x\<in\>X> we have\ 

        <\equation*>
          <around*|(|1\<cdot\>f|)><around*|(|x|)>=1\<cdot\>f<around*|(|x|)>=f<around*|(|x|)>
        </equation*>

        proving that <math|1\<cdot\>f=f>
      </enumerate>
    </enumerate>
  </proof>

  We prove now that <math|<around*|{|\<delta\><rsub|a>\|a\<in\>X|}>> is a
  basis for for <math|\<cal-F\><around*|(|X,F|)>> and that <math|X> can be
  embedded in <math|\<cal-F\><around*|(|X,F|)>> using the injection
  <math|\<delta\>:X\<rightarrow\>\<cal-F\><around*|(|X,F|)>>.

  <\theorem>
    <label|vector space free basis and embedding>Let <math|X> be a non empty
    set and <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> a field then

    <\enumerate>
      <item><math|\<delta\>:X\<rightarrow\>\<cal-F\><around*|(|X,F|)>>
      defined by <math|\<delta\><around*|(|a|)>=\<delta\><rsub|a>> is a
      injection, hence <math|X> is embedded in
      <math|\<cal-F\><around*|(|X,F|)>> and\ 

      <\equation*>
        \<delta\>:X\<rightarrow\>\<delta\><around*|(|X|)><text| is a
        bijection>
      </equation*>

      <item><math|\<delta\><around*|(|X|)>=<around*|{|\<delta\><around*|(|a|)>\|a\<in\>X|}>=<around*|{|\<delta\><rsub|a>\|a\<in\>X|}>>
      is a basis of <math|\<cal-F\><around*|(|X,F|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First we must ensure that <math|\<forall\>a\<in\>X>
      <math|\<delta\><rsub|a>\<in\>\<cal-F\><around*|(|X,F|)>>, so let
      <math|x\<in\><around*|(|\<delta\><rsub|a>|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
      then we must have that <math|<around*|(|\<delta\><rsub|a>|)><around*|(|x|)>\<neq\>0>.
      As <math|<around*|(|\<delta\><rsub|a>|)><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1<text|
      if >x=a>>|<row|<cell|0<text| if >x\<in\>X\\<around*|{|a|}>>>>>>>, we
      must have that <math|x=a>, hence <math|><math|<around*|(|\<delta\><rsub|a>|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<subseteq\><around*|{|a|}>>
      a finite set. Hence

      <\equation*>
        \<forall\>a\<in\>X<text| we have >\<delta\><rsub|a>\<in\>\<cal-F\><around*|(|X,F|)>
      </equation*>

      and the following function is well defined

      <\equation*>
        \<delta\>:X\<rightarrow\>\<cal-F\><around*|(|X,F|)><text| >where
        \<delta\><around*|(|a|)>=\<delta\><rsub|a>
      </equation*>

      If <math|\<delta\><around*|(|a|)>=\<delta\><around*|(|b|)>> then
      <math|\<delta\><rsub|a>=\<delta\><rsub|b><rsub|>>. Assume that
      <math|a\<neq\>b> then <math|\<delta\><rsub|a><around*|(|b|)>\<equallim\><rsub|b\<in\>X\\<around*|{|a|}>>0>
      and <math|\<delta\><rsub|b><around*|(|b|)>=1>, as <math|1\<neq\>0> in a
      field, we have <math|\<delta\><rsub|a><around*|(|b|)>\<neq\>\<delta\><rsub|b><around*|(|b|)>>
      contradicting <math|\<delta\><rsub|a>=\<delta\><rsub|b>>, hence
      <math|a=b>. Hence

      <\equation*>
        \<delta\><text| is injective>
      </equation*>

      <item> <math|>Define\ 

      <\equation*>
        B=<around*|{|\<delta\><rsub|a>\|a\<in\>X|}>\<subseteq\>\<cal-F\><around*|(|X,F|)>
      </equation*>

      Let <math|I\<subseteq\>B>, <math|I> finite and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> such
      that <math|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i=0>. Let
      <math|j\<in\>I\<subseteq\>B> then <math|\<exists\>a\<in\>X> such that
      <math|j=\<delta\><around*|(|a|)>>. If
      <math|i\<in\>I\\<around*|{|j|}>\<subseteq\>B> then
      <math|\<exists\>b\<in\>X> such that <math|i=\<delta\><around*|(|b|)>>
      and as <math|i\<neq\>j> we must have <math|a\<neq\>b> hence
      <math|i<around*|(|a|)>=\<delta\><around*|(|b|)><around*|(|a|)>=\<delta\><rsub|b><around*|(|a|)>=0>.
      So we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)><around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i<around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|j|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|a|)>+<big|sum><rsub|i\<in\><around*|{|j|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|j|}>>\<alpha\><rsub|i>\<cdot\>0+\<alpha\><rsub|j>\<cdot\>j<around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>\<cdot\>j<around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>\<cdot\>\<delta\><around*|(|a|)><around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>\<cdot\>\<delta\><rsub|a><around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>>>>>
      </eqnarray*>

      So we have proved that\ 

      <\equation*>
        \<forall\>j\<in\>I<text| >\<alpha\><rsub|j>=0
      </equation*>

      from which it follows that

      <\equation>
        <label|eq 13.9.127>B<text| is linear independent>
      </equation>

      Next if <math|f\<in\>\<cal-F\><around*|(|X,F|)>> then
      <math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>> is finite and we have
      two cases to consider:

      <\description>
        <item*|<math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>=\<varnothing\>>>Then
        <math|f=C<rsub|0>> and, as <math|X> is non empty, there exist a
        <math|a\<in\>X>. Then we can write <math|f> as
        <math|f=C<rsub|0>=0\<cdot\>\<delta\><rsub|a>>. Hence if we define
        <math|I=<around*|{|\<delta\><rsub|a>|}>\<subseteq\>B> and
        <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|\<delta\><rsub|a>|}>>\<subseteq\>F>
        by <math|\<alpha\><rsub|\<delta\><rsub|a>>=0> we have that
        <math|f=0\<cdot\>\<delta\><rsub|a>=<big|sum><rsub|i\<in\><around*|{|\<delta\><rsub|a>|}>>\<alpha\><rsub|i>\<cdot\>i>.
        Hence

        <\equation*>
          f\<in\>span<around*|(|B|)>
        </equation*>

        <item*|<math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<neq\>\<varnothing\>>>Then
        <math|I=<around*|{|\<delta\><rsub|a>\|a\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>|}>\<subseteq\>B>
        is finite [see theorem: <reference|image of a finite set>] . As
        <math|\<delta\>> is injective we have that\ 

        <\equation*>
          \<delta\>:f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<rightarrow\>\<delta\><around*|(|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>|)>=<around*|{|\<delta\><rsub|a>\|a\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>|}><text|
          is a bijection>
        </equation*>

        Define now\ 

        <\equation*>
          <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I><text| by
          >\<alpha\><rsub|i>=f<around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>
        </equation*>

        \ \ then we have for <math|x\<in\>X> either

        <\description>
          <item*|<math|f<around*|(|x|)>=0>>Let <math|i\<in\>I> then
          \ <math|\<exists\>a\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
          such that <math|i=\<delta\><rsub|a>>, as
          <math|f<around*|(|a|)>\<neq\>0> we can not have that <math|a=x>
          [because then <math|f<around*|(|a|)>=f<around*|(|x|)>=0>], hence
          <math|i<around*|(|x|)>=\<delta\><rsub|a><around*|(|x|)>=0>. In
          other words

          <\equation*>
            \<forall\>i\<in\>I we have i<around*|(|x|)>=0
          </equation*>

          So

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)><around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>>>
          </eqnarray*>

          <item*|<math|f<around*|(|x|)>\<neq\>0>>As
          <math|f<around*|(|x|)>\<neq\>0> we have that
          <math|x\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>> so that
          <math|\<delta\><rsub|x>\<in\>I>. Let
          <math|i\<in\>I\\<around*|{|\<delta\><rsub|x>|}>> then
          <math|\<exists\>a\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
          with <math|a\<neq\>x> such that <math|i=\<delta\><rsub|a>>, hence
          <math|i<around*|(|x|)>=\<delta\><rsub|a><around*|(|x|)>\<equallim\><rsub|x\<neq\>a>0>.
          So

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)><around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|x>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>+<big|sum><rsub|i\<in\><around*|{|\<delta\><rsub|x>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|x>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>+\<alpha\><rsub|\<delta\><around*|(|x|)>>\<cdot\>\<delta\><rsub|x><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>,\<delta\><rsub|x>|}>>\<alpha\><rsub|i>\<cdot\>0+f<around*|(|\<delta\><rsup|-1><around*|(|\<delta\><rsub|x>|)>|)>\<cdot\>\<delta\><rsub|x><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<delta\><rsup|-1><around*|(|\<delta\><rsub|x>|)>|)>\<cdot\>\<delta\><rsub|x><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>>>
          </eqnarray*>
        </description>

        So in all cases we have <math|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)><around*|(|x|)>=f<around*|(|x|)>>
        proving that <math|f=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i>,
        so, as <math|I\<subseteq\>B>, we have\ 

        <\equation*>
          f\<in\>span<around*|(|B|)>
        </equation*>
      </description>

      So we have proved that <math|\<forall\>f\<in\>\<cal-F\><around*|(|X,F|)>>
      <math|f\<in\>span<around*|(|B|)>\<subseteq\>\<cal-F\><around*|(|X,F|)>>
      proving that <math|\<cal-F\><around*|(|X,F|)>\<subseteq\>span<around*|(|B|)>\<subseteq\>\<cal-F\><around*|(|X,F|)>>,
      hence <math|\<cal-F\><around*|(|X,F|)>=span<around*|(|B|)>> which as
      <math|B> is linear independent [see eq: <reference|eq 13.9.127>] proves
      that\ 

      <\equation*>
        B=\<delta\><around*|(|X|)><text| is a basis of
        >\<cal-F\><around*|(|X,F|)>
      </equation*>
    </enumerate>
  </proof>

  Giving a family <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
  of vector spaces over a field <math|F>, we can construct the free vector
  space <math|><math|<around*|\<langle\>|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>,+,\<cdot\>|\<rangle\>>>
  with basis <math|B=\<delta\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>.
  We want now to create a new vector space and a surjective mapping from
  <math|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>>
  to this new vector space such that all elements of the form

  <\equation*>
    \<delta\><rsub|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x+\<alpha\>\<cdot\>y,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>-\<delta\><rsub|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>-\<alpha\>\<cdot\>\<delta\><rsub|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,y,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>
  </equation*>

  are mapped on the neutral element of this newe vector space. The
  composition of <math|\<delta\>> and this new mapping will be a multilinear
  mapping from <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>>
  to this new space. The standard way to do this is by creating a factor
  space based on a sub-space so that the projection mapping maps this
  sub-space on the neutral element in the factor space [see theorems:
  <reference|vector space factor space>, <reference|vector space factor space
  projection>].\ 

  <\definition>
    <label|tensor null space>Let <math|n\<in\>\<bbb-N\>,<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces over a field <math|F> and
    <math|<around*|\<langle\>|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>,+,\<cdot\>|\<rangle\>>>
    the free vector space of <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    then

    <\equation*>
      \<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>\<subseteq\>\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>
    </equation*>

    is defined by\ 

    <\equation*>
      \<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-N\><rsub|i>
    </equation*>

    where\ 

    <\equation*>
      \<cal-N\><rsub|i>=<around*|{|\<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>-\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>-\<alpha\>\<cdot\>\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>\|v\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>V<rsub|i><text|,
      >x,y\<in\>V<rsub|i><text|, >\<alpha\>\<in\>F|}>
    </equation*>

    \ and for <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>V<rsub|i>>
    and <math|y\<in\>V<rsub|i>> we have

    <\equation*>
      \<forall\>k\<in\><around*|{|1,\<ldots\>,n|}><text| we have
      ><around*|(|<around*|[|i\<rightarrow\>y|]>x|)><rsub|k>=<choice|<tformat|<table|<row|<cell|y<text|
      if >k=i>>|<row|<cell|x<rsub|i><text| if
      >k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>
    </equation*>

    in other words\ 

    <\equation*>
      <around*|[|i\<rightarrow\>y|]>x=<around*|{|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|}>
    </equation*>
  </definition>

  <\definition>
    <label|tensor tensor product of spaces>Let
    <math|n\<in\>\<bbb-N\>,<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces over a field <math|F> nd
    <math|<around*|\<langle\>|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>,+,\<cdot\>|\<rangle\>>>
    the free vector space of <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    then <math|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>> is the factor
    space [see theorem: <reference|vector space factor space>]\ 

    <\equation*>
      \<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>/span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>
    </equation*>

    giving the vector space

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>,+,\<cdot\>|\<rangle\>>=<around*|\<langle\>|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>/span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>,+,\<cdot\>|\<rangle\>>
    </equation*>

    over the field <math|F>

    <\note>
      In the above definition we must use the span of
      <math|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>>
      because <math|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>>
      is not a sub-space of <math|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>>.
    </note>
  </definition>

  <\definition>
    <label|tensor product of vectors>Let <math|n\<in\>\<bbb-N\>,<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces over a field <math|F> then we define\ 

    <\equation*>
      \<odot\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>
      by\<odot\>=\<pi\>\<circ\>\<delta\>
    </equation*>

    where:\ 

    <\enumerate>
      <item><math|\<delta\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>,F|)>>
      is defined in [theorem: <reference|vector space free basis and
      embedding>] by\ 

      <\equation*>
        \<delta\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<delta\><rsub|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>><text|
        and >\<delta\><rsub|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>=<choice|<tformat|<table|<row|<cell|1<text|
        if ><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|0<text|
        if ><around*|(|\<Pi\><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>\\<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>>>>>
      </equation*>

      <item><math|\<pi\>:\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>,F|)>\<rightarrow\>\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>,F|)>/span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>>
      is defined in [theorem: <reference|vector space factor space
      projection>] by\ 

      <\equation*>
        \<pi\><around*|(|x|)>=<around*|{|y\|x-y\<in\>span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>|}>
      </equation*>
    </enumerate>

    If <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    then we note <math|\<odot\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>
    as <math|v<rsub|1>\<odot\>\<cdots\>\<odot\>v<rsub|n>> and call this the
    tensor product of the vectors <math|v<rsub|1>,\<ldots\>,v<rsub|n>>.\ 
  </definition>

  <\note>
    We use the word <with|font-series|bold|tensor product> for two different
    things. Given a family <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of vector spaces then we have a tensor product of
    <math|V<rsub|1>,\<ldots\>,V<rsub|n>> [see definition: <reference|tensor
    product>] or the tensor product of vectors in the above definition.\ 
  </note>

  The following theorem will be needed to prove the universal factorization
  property of a tensor product.

  <\theorem>
    <label|tensor universal property><dueto|Universal property>Let <math|X,Z>
    be vector spaces over a field <math|F>, <math|Y> a sub-space of <math|X>
    and <math|L\<in\>Hom<around*|(|X,Z|)>> such that
    <math|Y\<subseteq\>ker<around*|(|L|)>> then there exist a
    <with|font-series|bold|unique> <math|h\<in\>Hom<around*|(|X/Y,Z|)>> such
    that <math|L=h\<circ\>\<pi\><rsub|Y>>. Here <math|X/Y> and
    <math|\<pi\><rsub|Y>> are defined in [theorems: <reference|vector space
    factor space>, <reference|vector space factor space projection>].
  </theorem>

  <\proof>
    Let <math|x,y\<in\>X> such that <math|\<sim\><rsub|Y><around*|[|x|]>=\<sim\><rsub|Y><around*|[|y|]>>
    then <math|x-y\<in\>Y> hence, as <math|Y\<subseteq\>ker<around*|(|L|)>>
    we have <math|L<around*|(|x-y|)>=0>, so, as <math|L> is linear,
    <math|L<around*|(|x|)>-L<around*|(|y|)>=0\<Rightarrow\>L<around*|(|x|)>=L<around*|(|y|)>>.
    This allows use to define the function

    <\equation*>
      h:X/Y\<rightarrow\>Z<text| where >h<around*|(|\<sim\><around*|[|x|]>|)>=L<around*|(|x|)>
    </equation*>

    Let <math|\<sim\><rsub|Y><around*|[|x|]>,\<sim\><rsub|Y><around*|[|y|]>\<in\>X/Y>
    and <math|\<alpha\>\<in\>F> then\ 

    <\equation*>
      h<around*|(|\<sim\><rsub|Y><around*|[|x|]>+\<sim\><rsub|Y><around*|[|y|]>|)>=h<around*|(|\<sim\><rsub|Y><around*|[|x+y|]>|)>=L<around*|(|x+y|)>=L<around*|(|x|)>+L<around*|(|y|)>=h<around*|(|\<sim\><rsub|Y><around*|[|x|]>|)>+h<around*|(|\<sim\><rsub|Y><around*|[|y|]>|)>
    </equation*>

    and

    <\equation*>
      h<around*|(|\<alpha\>\<cdot\>\<sim\><rsub|Y><around*|[|x|]>|)>=h<around*|(|\<sim\><rsub|Y><around*|[|\<alpha\>\<cdot\>x|]>|)>=L<around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>L<around*|(|x|)>=\<alpha\>\<cdot\>h<around*|(|\<sim\><rsub|Y><around*|[|x|]>|)>
    </equation*>

    proving that\ 

    <\equation*>
      h\<in\>Hom<around*|(|X/Y,Z|)>
    </equation*>

    Further let <math|x\<in\>X> then <math|<around*|(|h\<circ\>\<pi\><rsub|Y>|)><around*|(|x|)>=h<around*|(|\<pi\><rsub|Y><around*|(|x|)>|)>=h<around*|(|\<sim\><rsub|Y><around*|[|x|]>|)>=L<around*|(|x|)>>
    so that\ 

    <\equation*>
      L=h\<circ\>\<pi\><rsub|Y>
    </equation*>

    Finally if <math|k\<in\>Hom<around*|(|X/Y,Z|)>> is such that
    <math|L=k\<circ\>\<pi\><rsub|Y>> then if
    <math|\<sim\><rsub|Y><around*|[|x|]>\<in\>X/Y> we have\ 

    <\equation*>
      h<around*|(|\<sim\><rsub|Y><around*|[|x|]>|)>=L<around*|(|x|)>=k<around*|(|\<pi\><rsub|Y><around*|(|x|)>|)>=k<around*|(|\<sim\><rsub|Y><around*|[|x|]>|)>
    </equation*>

    so that\ 

    <\equation*>
      h=k
    </equation*>
  </proof>

  We are now ready to prove that for every family
  <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> of
  vector spaces there exists a tensor product of
  <math|V<rsub|1>,\<ldots\>,V<rsub|n>>.

  <\theorem>
    <label|tensor product of spaces existence>Let
    <math|n\<in\>\<bbb-N\>,<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces over a field <math|F> then\ 

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>,\<odot\>|\<rangle\>>
    </equation*>

    is a tensor product [see definition: <reference|tensor product>] of
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>.
    Using [definition: <reference|tensor product>] we must prove that:

    <\enumerate>
      <item><math|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>> is a vector
      space over <math|F>

      <item><math|\<odot\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>|)>>

      <item><math|span<around*|(|\<odot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>=V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>>

      <item><dueto|Universal factorization property>If <math|U> is a vector
      space over <math|F> and <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>>
      then there exist a <math|h\<in\>Hom<around*|(|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>,U|)>>
      such that <math|\<varphi\>=h\<circ\>\<odot\>>.\ 

      <\note>
        Using [theorem: <reference|tensor product unique representation>]
        <math|h> is <with|font-series|bold|unique>
      </note>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>By [definition: <reference|tensor tensor product of spaces>]
      <math|<around*|\<langle\>|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>,+,\<cdot\>|\<rangle\>>>
      is a vector space over the field <math|F>

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
      <math|\<alpha\>\<in\>F>, <math|x,y\<in\>V<rsub|i>> and
      <math|v\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>V<rsub|i>>
      \ and take\ 

      <\equation*>
        <around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x+\<alpha\>\<cdot\>y,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>=<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v
      </equation*>

      <\equation*>
        <around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>=<around*|[|i\<rightarrow\>x|]>v
      </equation*>

      <\equation*>
        <around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,y,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>=<around*|[|i\<rightarrow\>y|]>v
      </equation*>

      then

      <\equation*>
        \<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>-\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>-\<alpha\>\<cdot\>\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>\<in\>\<cal-N\><around*|[|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|]>\<subseteq\>span<around*|(|\<cal-N\><around*|[|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|]>|)>
      </equation*>

      so that by [theorem: <reference|vector space factor space projection>]\ 

      <\equation>
        <label|eq 13.10.127>\<pi\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>-\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>-\<alpha\>\<cdot\>\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>|)>=0
      </equation>

      As by [theorem: <reference|vector space factor space projection>]
      <math|\<pi\>> is linear we have that\ 

      <\equation*>
        0=\<pi\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>-\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>-\<alpha\>\<cdot\>\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>|)>=\<pi\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>|)>-\<pi\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>|)>-\<alpha\>\<cdot\>\<pi\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>|)>
      </equation*>

      proving that\ 

      <\equation*>
        \<pi\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>|)>=\<pi\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>|)>+\<alpha\>\<cdot\>\<pi\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>|)>
      </equation*>

      hence\ 

      <\equation*>
        \<pi\><around*|(|\<delta\><around*|(|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v|)>|)>=\<pi\><around*|(|\<delta\><around*|(|<around*|[|i\<rightarrow\>x|]>v|)>|)>+\<alpha\>\<cdot\>\<pi\><around*|(|\<delta\><around*|(|<around*|[|y|]>v|)>|)>
      </equation*>

      which as <math|\<odot\>=\<pi\>\<circ\>\<delta\>> gives\ 

      <\equation*>
        \<odot\>*<around*|(|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v|)>=\<odot\><around*|(|<around*|[|i\<rightarrow\>x|]>v|)>+\<alpha\>\<cdot\>\<odot\><around*|(|<around*|[|i\<rightarrow\>y|]>v|)>
      </equation*>

      or\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<odot\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x+\<alpha\>\<cdot\>y,v<rsub|i+1>\<ldots\>v<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<odot\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x,v<rsub|i+1>\<ldots\>v<rsub|n>|)>+\<alpha\>\<cdot\>\<odot\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,y,v<rsub|i+1>\<ldots\>v<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving by [theorem: <reference|multi multilinear mapping alternative>]
      that\ 

      <\equation*>
        \<odot\><text| is multilinear hence
        >\<odot\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>|)>
      </equation*>

      <item>As <math|\<odot\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>>
      we have already that <math|\<odot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>\<subseteq\>V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>>,
      so that by [theorems: <reference|linear span subsets>,
      <reference|linear span properties>] that\ 

      <\equation>
        <label|eq 13.11.127>span<around*|(|\<odot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>\<subseteq\>V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>
      </equation>

      For the opposite inclusion, let <math|x\<in\>V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>>
      then as <math|\<pi\>> is a surjection [see theorem: <reference|vector
      space factor space projection>] there exists a
      <math|y\<in\>\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>>
      such that <math|x=\<pi\><around*|(|y|)>>. By [theorem:
      <reference|vector space free basis and embedding>] the set
      <math|<around*|{|\<delta\><around*|(|a|)>\|a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|>|}>>
      is a basis of <math|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>>,
      hence there exist a finite <math|I\<subseteq\><around*|{|\<delta\><around*|(|a|)>\|a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|>|}>>
      and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      such that <math|y=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i>.
      So\ 

      <\equation>
        <label|eq 13.12.127>x=\<pi\><around*|(|y|)>=\<pi\><around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)>\<equallim\><rsub|linearity
        of \<pi\>><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>\<pi\><around*|(|i|)>
      </equation>

      Now if <math|i\<in\>I\<subseteq\><around*|{|\<delta\><around*|(|a|)>\|a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|>|}>>
      then <math|\<exists\>a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
      such that <math|i=\<delta\><around*|(|a|)>>, hence
      <math|\<pi\><around*|(|i|)>=\<pi\><around*|(|\<delta\><around*|(|a|)>|)>=\<odot\><around*|(|a|)>\<in\>\<odot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>|)>>.
      Hence by [eq: <reference|eq 13.12.127>] it follows that
      <math|x\<in\>span<around*|(|\<odot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>.
      So we conclude that <math|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>\<subseteq\>span<around*|(|\<odot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>,
      which combined with [eq: <reference|eq 13.11.127>] gives

      <\equation*>
        span<around*|(|\<odot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>=V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>
      </equation*>

      <item>Using \ [theorem: <reference|vector space free basis and
      embedding>] we have that\ 

      <\equation*>
        \<delta\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>=<around*|{|\<delta\><around*|(|a|)>\|a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|}><text|
        is a basis for >\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>
      </equation*>

      and

      <\equation*>
        \<delta\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>\<delta\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>=<around*|{|\<delta\><around*|(|a|)>\|a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|}><text|
        is a bijection>
      </equation*>

      Let <math|x\<in\>\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
      then there exist a finite <math|I\<subseteq\><around*|{|\<delta\><around*|(|a|)>\|a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|}>>
      and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
      such that <math|x=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i>.
      Assume that there exists another finite
      <math|J\<subseteq\><around*|{|\<delta\><around*|(|a|)>\|a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|}>>
      and <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>J>\<subseteq\>J>
      such that <math|x=<big|sum><rsub|i\<in\>J>\<beta\><rsub|j>\<cdot\>i>.
      Then by [theorem: <reference|basis alternative (3)>] we have\ 

      <\equation>
        <label|eq 13.13.128>\<forall\>i\<in\>I\\J<text| that
        >\<alpha\><rsub|i>=0<text|, >\<forall\>J\\I<text| that
        >\<beta\><rsub|i>=0<text| and >\<forall\>i\<in\>I<big|cap>J<text|
        that >\<alpha\><rsub|i>=\<beta\><rsub|i>
      </equation>

      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>+<big|sum><rsub|i\<in\>I<big|cap>J>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.13.128>]>>>|<cell|<big|sum><rsub|i\<in\>I\\J>0\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.13.128>]>>>|<cell|<big|sum><rsub|i\<in\>I\\J>\<beta\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<beta\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>>>>>
      </eqnarray*>

      The above ensures that the following function is well defined\ 

      <\equation*>
        \<gamma\>:\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>,F|)>\<rightarrow\>U<text|
        by >\<gamma\><around*|(|x|)>=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)><text|where
        >x=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i<text|, >I<text|
        is finite>
      </equation*>

      If <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>>
      then if we define <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|\<delta\><around*|(|x|)>|}>>\<subseteq\>F>
      by <math|\<alpha\><rsub|\<delta\><around*|(|x|)>>=1> we have

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|\<delta\><around*|(|x|)>|}>>\<alpha\><rsub|i>\<cdot\>i=\<alpha\><rsub|\<delta\><around*|(|x|)>>\<cdot\>\<delta\><around*|(|x|)>=1\<cdot\>\<delta\><around*|(|x|)>=\<delta\><around*|(|x|)>
      </equation*>

      so that\ 

      <\equation*>
        <around*|(|\<gamma\>\<circ\>\<delta\>|)><around*|(|x|)>=\<gamma\><around*|(|\<delta\><around*|(|x|)>|)>=<big|sum><rsub|i\<in\><around*|{|\<delta\><around*|(|x|)>|}>>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>=\<alpha\><rsub|\<delta\><around*|(|x|)>>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|\<delta\><around*|(|x|)>|)>|)>=1\<cdot\>\<varphi\><around*|(|x|)>=\<varphi\><around*|(|x|)>
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 13.14.127>\<gamma\>\<circ\>\<delta\>=\<varphi\>
      </equation>

      Let <math|x,y\<in\>\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>,F|)>>
      and <math|\<alpha\>\<in\>F> then there exists finite
      <math|I,J\<subseteq\><around*|{|\<delta\><around*|(|a|)>\|a\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|}>>,
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F> and
      <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>J>\<subseteq\>F> with
      <math|x=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i> and
      <math|y=<big|sum><rsub|i\<in\>J>\<beta\><rsub|i>\<cdot\>i>. Define then\ 

      <\equation*>
        <around*|{|\<gamma\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F<text| by
        >\<gamma\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|i><text|
        if >i\<in\>I\\J>>|<row|<cell|\<alpha\>\<cdot\>\<beta\><rsub|i><text|
        if >j\<in\>J\\I>>|<row|<cell|\<alpha\><rsub|i>+\<alpha\>\<cdot\>\<beta\><rsub|i><text|
        if >i\<in\>I<big|cap>J>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I<big|cup>J>\<gamma\><rsub|i>\<cdot\>i>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J>\<gamma\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>J\\I>\<gamma\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J>\<gamma\><rsub|i>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>J\\I>\<alpha\>\<cdot\>\<beta\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<alpha\><rsub|i>+\<alpha\>\<cdot\>\<beta\><rsub|i>|)>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+\<alpha\>\<cdot\><big|sum><rsub|i\<in\>J\\I>\<beta\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J>\<alpha\><rsub|i>\<cdot\>i+\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|i>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J>\<alpha\><rsub|i>\<cdot\>i|)>+\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i\<in\>J\\I>\<beta\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|i>\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<big|cup>J>\<alpha\><rsub|i>\<cdot\>i+<big|sum><rsub|i\<in\>I<big|cup>J>\<beta\><rsub|i>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|x+\<alpha\>\<cdot\>y>>>>
      </eqnarray*>

      so that by definitiob of <math|\<gamma\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<gamma\><around*|(|x+\<alpha\>\<cdot\>y|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>I<big|cup>J>\<gamma\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>>|<cell|>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>I\\J>\<gamma\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>+<big|sum><rsub|i\<in\>J\\I>\<gamma\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>+<big|sum><rsub|i\<in\>I<big|cap>J>\<gamma\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>+<big|sum><rsub|i\<in\>J\\I>\<alpha\>\<cdot\>\<beta\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>+<big|sum><rsub|i\<in\>I<big|cap>J><around*|(|\<alpha\><rsub|i>+\<alpha\>\<cdot\>\<beta\><rsub|i>|)>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<wide*|<big|sum><rsub|i\<in\>I\\J>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>|\<wide-underbrace\>><rsub|<around*|(|1|)>>+<wide*|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>J\\I>\<beta\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>|\<wide-underbrace\>><rsub|<around*|(|2|)>>+<wide*|<big|sum><rsub|i\<in\>I<big|cap>J>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>|\<wide-underbrace\>><rsub|<around*|(|1|)>>+<wide*|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I<big|cap>J>\<beta\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>|\<wide-underbrace\>><rsub|<around*|(|2|)>>>|<cell|=>|<cell|>>|<row|<cell|<wide*|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>|\<wide-underbrace\>><rsub|<around*|(|1|)>>+<wide*|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>\<beta\><rsub|i>\<cdot\>\<varphi\><around*|(|\<delta\><rsup|-1><around*|(|i|)>|)>|\<wide-underbrace\>><rsub|<around*|(|2|)>>>|<cell|=>|<cell|>>|<row|<cell|\<gamma\><around*|(|x|)>+\<alpha\>\<cdot\>\<gamma\><around*|(|y|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|\<gamma\>> is linear, hence\ 

      <\equation>
        <label|eq 13.15.128>\<gamma\>\<in\>Hom<around*|(|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>,U|)>
      </equation>

      Let <math|x\<in\>\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>\<subseteq\>\<cal-F\><around*|(|<big|prod><rsub|i\<in\>I>V<rsub|i>,F|)>>
      then by [definition: <reference|tensor null space>] there exist a
      \ <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
      <math|v\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>V<rsub|i>>,
      <math|x,y\<in\>V<rsub|i>> and <math|\<alpha\>\<in\>F> such that\ 

      <\equation*>
        x=\<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>-\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>-\<alpha\>\<cdot\>\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>
      </equation*>

      Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<gamma\><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<gamma\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>-\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>-\<alpha\>\<cdot\>\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.15.128>]>>>|<cell|>>|<row|<cell|\<gamma\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v>|)>-\<gamma\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>x|]>v>|)>-\<alpha\>\<cdot\>\<gamma\><around*|(|\<delta\><rsub|<around*|[|i\<rightarrow\>y|]>v>|)>>|<cell|=>|<cell|>>|<row|<cell|\<gamma\><around*|(|\<delta\><around*|(|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v|)>|)>-\<gamma\><around*|(|\<delta\><around*|(|<around*|[|i\<rightarrow\>x|]>v|)>|)>-\<alpha\>\<cdot\>\<gamma\><around*|(|\<delta\><around*|(|<around*|[|i\<rightarrow\>y|]>v|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.14.127>]>>>|<cell|>>|<row|<cell|\<varphi\><around*|(|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v|)>-\<varphi\><around*|(|<around*|[|i\<rightarrow\>x|]>v|)>-\<alpha\>\<cdot\>\<varphi\><around*|(|<around*|[|i\<rightarrow\>y|]>v|)>>|<cell|=>|<cell|>>|<row|<cell|\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x+\<alpha\>\<cdot\>y,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>-\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>-\<alpha\>\<cdot\>\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,y,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|\<equallim\><rsub|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>>>|<cell|>>|<row|<cell|0>|<cell|=>|<cell|>>>>
      </eqnarray*>

      so that <math|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>\<subseteq\>ker<around*|(|\<gamma\>|)>>.
      By [theorem: <reference|linear mapping kernel and range are subspaces>]
      <math|ker<around*|(|\<gamma\>|)>> is a sub-space, hence using
      [theorems: <reference|linear span subsets>, <reference|linear span
      properties>] we have\ 

      <\equation>
        <label|eq 13.16.128>span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>\<subseteq\>ker<around*|(|\<gamma\>|)>
      </equation>

      Finally [eqs: <reference|eq 13.15.128> and <reference|eq 13.16.128>]
      allows us to apply \ [theorem: <reference|tensor universal property>]
      to find a <math|unique>

      <\equation*>
        h\<in\>Hom<around*|(|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,|)>/span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>,U|)>
      </equation*>

      such that\ 

      <\equation*>
        \<gamma\>=h\<circ\>\<pi\>
      </equation*>

      As <math|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,|)>/span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>\<equallim\><rsub|def>V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>>
      we have\ 

      <\equation*>
        \<exists\>!h\<in\>Hom<around*|(|V<rsub|1>\<odot\>\<ldots\>\<odot\>V<rsub|n>,U|)><text|
        with >\<gamma\>=h\<circ\>\<pi\>
      </equation*>

      Using then [eq: <reference|eq 13.14.127>] we have that
      <math|\<varphi\>=\<gamma\>\<circ\>\<delta\>=<around*|(|h\<circ\>\<pi\>|)>\<circ\>\<delta\>=h\<circ\><around*|(|\<pi\>\<circ\>\<rho\>|)>\<equallim\><rsub|<text|[definition:
      <reference|tensor product of vectors>]>>h\<circ\>\<odot\><rsub|<text|>>>
      giving:

      <\equation*>
        \<varphi\>=h\<circ\>\<odot\><text| where
        <math|h\<in\>Hom<around*|(|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>,U|)>>>
      </equation*>
    </enumerate>
  </proof>

  So given a family <math|<around*|{|V<rsub|I>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
  of vector spaces over a field we have proved that there exist a tensor
  product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>. Next we prove that this
  vector space is uniquely determined within a canonical linear isomorphism.

  <\theorem>
    <label|tensor product uniqueness>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector space over a field <math|F> then if
    <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Q,\<mu\>|\<rangle\>>> are tensor products of
    <math|V<rsub|1>,\<ldots\>,V<rsub|n>> then there exists a
    <with|font-series|bold|unique> linear isomorphism

    <\equation*>
      k:P\<rightarrow\>Q
    </equation*>

    such that

    <\equation*>
      k\<circ\>\<nu\>=\<mu\>
    </equation*>
  </theorem>

  <\proof>
    As <math|\<mu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;Q|)>> we
    have, as <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> is a tensor
    product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>, that there exist a
    <math|k\<in\>Hom<around*|(|P,Q|)>> such that\ 

    <\equation>
      <label|eq 13.1.127>k\<circ\>\<nu\>=\<mu\>
    </equation>

    Likewise, as <math|\<nu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;P|)>>
    we have, as <math|<around*|\<langle\>|Q,\<mu\>|\<rangle\>>> is a tensor
    product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>, that there exist a
    <math|h\<in\>Hom<around*|(|Q,P|)>> such that\ 

    <\equation>
      <label|eq 13.2.127>h\<circ\>\<mu\>=\<nu\>
    </equation>

    Next we have\ 

    <\equation>
      <label|eq 13.3.127>\<mu\>\<equallim\><rsub|<text|[eq: <reference|eq
      13.1.127>]>>k\<circ\>\<nu\>\<equallim\><rsub|<text|[eq: <reference|eq
      13.2.127>]>>k\<circ\><around*|(|h\<circ\>\<mu\>|)>=<around*|(|k\<circ\>h|)>\<circ\>\<mu\><text|
      and >\<nu\>\<equallim\><rsub|<text|[eq: <reference|eq
      13.2.127>]>>h\<circ\>\<mu\>\<equallim\><rsub|<text|[eq: <reference|eq
      13.1.127>]>>h\<circ\><around*|(|k\<circ\>\<nu\>|)>=<around*|(|h\<circ\>k|)>\<circ\>\<nu\>
    </equation>

    If <math|y\<in\>P> then as <math|P=span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
    there exist by [theorem: <reference|linear span (1)>] a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>F>
    and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    such that <math|y=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>y<rsub|i>>.
    As <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    we have by a consequence of the Axiom of Choice [see theorem:
    <reference|choice family on preimage>] that there exist a
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
    <math|\<nu\><around*|(|x<rsub|i>|)>=y<rsub|i>>. Let

    <\equation*>
      x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
      [a vector space by [theorem: <reference|vector space product of vector
      spaces>]]>
    </equation*>

    then we have\ 

    <\equation*>
      \<nu\><around*|(|x|)>=\<nu\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>\<nu\><around*|(|x<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>y<rsub|i>=y
    </equation*>

    \ or\ 

    <\equation>
      <label|eq 13.4.127>\<forall\>y\<in\>P <text| there exist a
      >x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
      such that >\<nu\><around*|(|x|)>=y
    </equation>

    Now if <math|y\<in\>P> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|h\<circ\>k|)><around*|(|y|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.4.127>]>>>|<cell|<around*|(|h\<circ\>k|)><around*|(|\<nu\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|h\<circ\>k|)>\<circ\>\<nu\>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.3.127>]>>>|<cell|\<nu\><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.4.127>]>>>|<cell|y>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|P><around*|(|y|)>>>>>
    </eqnarray*>

    proving that <math|\<forall\>y\<in\>P> we have
    <math|<around*|(|h\<circ\>k|)><around*|(|y|)>=Id<rsub|P><around*|(|y|)>>
    or\ 

    <\equation>
      <label|eq 13.5.127>h\<circ\>k=Id<rsub|P>
    </equation>

    If <math|y\<in\>Q> then as <math|Q=span<around*|(|\<mu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
    there exist by [theorem: <reference|linear span (1)>] a
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>F>
    and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<mu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    such that <math|y=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>y<rsub|i>>.
    As <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<mu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    we have by a consequence of the Axiom of Choice [see theorem:
    <reference|choice family on preimage>] that there exist a
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
    <math|\<mu\><around*|(|x<rsub|i>|)>=y<rsub|i>>. Let

    <\equation*>
      x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
      [a vector space by [theorem: <reference|vector space product of vector
      spaces>]]>
    </equation*>

    then we have\ 

    <\equation*>
      \<mu\><around*|(|x|)>=\<mu\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|x<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>y<rsub|i>=y
    </equation*>

    or\ 

    <\equation>
      <label|eq 13.6.127>\<forall\>y\<in\>Q<text| there exist a
      >x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
      such that >\<mu\><around*|(|x|)>=y
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|k\<circ\>h|)><around*|(|y|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.6.127>]>>>|<cell|<around*|(|k\<circ\>h|)><around*|(|\<mu\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|k\<circ\>h|)>\<circ\>\<mu\>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.3.127>]>>>|<cell|\<mu\><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.6.127>]>>>|<cell|y>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|Q><around*|(|y|)>>>>>
    </eqnarray*>

    proving that <math|\<forall\>y\<in\>P> we have
    <math|<around*|(|h\<circ\>k|)><around*|(|y|)>=Id<rsub|P><around*|(|y|)>>
    or\ 

    <\equation>
      <label|eq 13.7.127>k\<circ\>h=Id<rsub|Q>
    </equation>

    From [eqs: <reference|eq 13.5.127>, <reference|eq 13.7.127>] it follows,
    using [theorem: <reference|function bijection condition (2)>], that\ 

    <\equation*>
      k:Q\<rightarrow\>P<text| is a bijection>
    </equation*>

    and as <math|k> is linear we have together with [eq: <reference|eq
    13.1.127>] that

    <\equation*>
      k<text| is a linear isomorphism><infix-and>k\<circ\>\<nu\>=\<mu\>
    </equation*>

    Next we must prove that <math|k:Q\<rightarrow\>P> is unique. So assume
    that <math|k<rprime|'>\<in\>Hom<around*|(|P,Q|)>> such that
    <math|k<rprime|'>\<circ\>\<nu\>=\<mu\>>, then by [eq: <reference|eq
    13.1.127>]

    <\equation>
      <label|eq 13.8.127>k<rprime|'>\<circ\>\<nu\>=k\<circ\>\<nu\>
    </equation>

    Let <math|y\<in\>P> then by [eq: <reference|eq 13.4.127>] there exists a
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    such that <math|y=\<nu\><around*|(|x|)>> hence\ 

    <\equation*>
      k<rprime|'><around*|(|y|)>=k<rprime|'><around*|(|\<nu\><around*|(|x|)>|)>=<around*|(|k<rprime|'>\<circ\>\<nu\>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 13.8.127>]>><around*|(|k\<circ\>\<nu\>|)><around*|(|x|)>=k<around*|(|\<nu\><around*|(|x|)>|)>=k<around*|(|y|)>
    </equation*>

    proving that\ 

    <\equation*>
      k=k<rprime|'>
    </equation*>
  </proof>

  <\corollary>
    <label|tensor product uniqueness and existance>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector space over a field <math|F> and
    <math|<around*|\<langle\>|\<upsilon\>,Q|\<rangle\>>> a tensor product of
    <math|V<rsub|1>,\<ldots\>,V<rsub|n>> then

    <\enumerate>
      <item>There exist a <with|font-series|bold|unique >linear isomorphism

      <\equation*>
        k:V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>\<rightarrow\>Q
      </equation*>

      such that

      <\equation*>
        k\<circ\>\<odot\>=\<nu\>
      </equation*>

      <item>There exist a <with|font-series|bold|unique >linear isomorphism

      <\equation*>
        h:Q\<rightarrow\>V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>
      </equation*>

      such that

      <\equation*>
        h\<circ\>\<nu\>=\<odot\>
      </equation*>
    </enumerate>

    \ 
  </corollary>

  <\proof>
    Using [theorem: <reference|tensor product of spaces existence>]
    <math|<around*|\<langle\>|V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>,\<odot\>|\<rangle\>>>
    is a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>.

    <\enumerate>
      <item>By [theorem: <reference|tensor product uniqueness>] there exist a
      <with|font-series|bold|unique >linear isomorphism

      <\equation*>
        k:V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>\<rightarrow\>Q
      </equation*>

      such that

      <\equation*>
        k\<circ\>\<odot\>=\<nu\>
      </equation*>

      <item>By [theorem: <reference|tensor product uniqueness>] there exist a
      <with|font-series|bold|unique >linear isomorphism

      <\equation*>
        h:Q\<rightarrow\>V<rsub|1>\<odot\>\<cdots\>\<odot\>V<rsub|n>
      </equation*>

      such that

      <\equation*>
        h\<circ\>\<nu\>=\<odot\>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|tensor product singleton>Let <math|V> be a vector space over a
    field <math|F> and <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>>
    the family defined by <math|V<rsub|1>=V> then if we define

    <\equation*>
      \<mu\>:<big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>\<rightarrow\>V<text|
      by >\<mu\><around*|(|<around*|(|v|)>|)>=v
    </equation*>

    then we have:\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|V,\<mu\>|\<rangle\>><text| is a tensor
      product of <math|V<rsub|1>,\<ldots\>,V<rsub|1>>>>

      <item>If <math|<around*|\<langle\>|U,\<nu\>|\<rangle\>>> is another
      tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|1>> then there exist
      a linear isomorphism

      <\equation*>
        k:V\<rightarrow\>U
      </equation*>

      such that\ 

      <\equation*>
        \<nu\>:<big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>\<rightarrow\>U<text|
        is defined by >\<nu\><around*|(|<around*|(|v|)>|)>=k<around*|(|v|)>
      </equation*>

      <item>If <math|W> is a sub-space of <math|V> and
      <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-P\><around*|(|V|)>>
      is defined by <math|W<rsub|i>=W> then

      <\equation*>
        <around*|\<langle\>|k<around*|(|W|)>,\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>|\<rangle\>><text|
        is a tensor produce and >k*<around*|(|W|)><text| is a sub-space of >U
      </equation*>

      <item>If <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is a family of sub-spaces of <math|V> so that
      <math|V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>
      then we have, if we define for <math|i\<in\><around*|{|1,\<ldots\>,n|}><rsub|>>
      <math|<around*|{|W<rsub|j><rsup|i>|}><rsub|j\<in\><around*|{|1|}>>> by
      <math|W<rsub|1><rsup|i>=W<rsub|i>> that

      <\equation*>
        U=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>k<around*|(|W<rsub|i>|)>
      </equation*>

      and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>

      <\equation*>
        <around*|\<langle\>|k<around*|(|W<rsub|i>|)>,\<otimes\><rsub|\|<big|prod><rsub|j\<in\><around*|{|1|}>>W<rsub|j><rsup|i>>|\<rangle\>><text|
        is a tensor product of >W<rsub|1><rsup|i>,\<ldots\>,W<rsup|i><rsub|1><text|
        and >k<around*|(|W<rsub|i>|)><text| is a sub-space of >U
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|u,v\<in\>V<rsub|1>,\<alpha\>\<in\>F> then trivially
      <math|\<mu\><around*|(|<around*|(|u+\<alpha\>\<cdot\>v|)>|)>=u+\<alpha\>\<cdot\>v=\<mu\><around*|(|<around*|(|u|)>|)>+\<alpha\>\<cdot\>\<mu\><around*|(|<around*|(|v|)>|)>>,
      so we have\ 

      <\equation>
        <label|eq 13.19.135>\<mu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|1>;V|)>
      </equation>

      Let <math|v\<in\>V> then for <math|<around*|(|v|)>\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>>
      we have <math|\<mu\><around*|(|<around*|(|v|)>|)>=v> so that
      <math|V\<subseteq\>\<mu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>|)>>
      which, as <math|\<mu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>|)>\<subseteq\>V><math|>,
      proves that <math|V=\<mu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>|)>>.
      Using [theorem: <reference|linear span properties>] we have then\ 

      <\equation>
        <label|eq 13.20.135>V=span<around*|(|\<mu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>V<rsub|i>|)>|)>
      </equation>

      Let <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|1>;X|)>>
      and define\ 

      <\equation*>
        h:V\<rightarrow\>X<text| by >h<around*|(|v|)>=\<varphi\><around*|(|<around*|(|v|)>|)>
      </equation*>

      then for <math|u,v\<in\>V> and <math|\<alpha\>\<in\>F> we have

      <\equation*>
        h<around*|(|u+\<alpha\>\<cdot\>v|)>=\<varphi\><around*|(|<around*|(|u+\<alpha\>\<cdot\>v|)>|)>=\<varphi\><around*|(|<around*|(|u|)>|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|<around*|(|v|)>|)>=h<around*|(|u|)>+\<alpha\>\<cdot\>h<around*|(|v|)>
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 13.21.135>h\<in\>Hom<around*|(|V,X|)>
      </equation>

      If <math|x=<around*|(|v|)>\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>>
      then\ 

      <\equation*>
        <around*|(|h\<circ\>\<mu\>|)><around*|(|x|)>=h<around*|(|\<mu\><around*|(|<around*|(|v|)>|)>|)>=h<around*|(|v|)>=\<varphi\><around*|(|<around*|(|v|)>|)>=\<varphi\><around*|(|x|)>
      </equation*>

      resulting in\ 

      <\equation>
        <label|eq 13.22.139>h\<circ\>\<mu\>=\<varphi\>
      </equation>

      By [eqs: <reference|eq 13.19.135>, <reference|eq 13.20.135>,
      <reference|eq 13.21.135> and <reference|eq 13.22.139>] we have by the
      definition of the tensor product that

      <\equation>
        <label|eq 13.22.137><around*|\<langle\>|V,\<mu\>|\<rangle\>><text| is
        a tensor product of ><around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>
      </equation>

      <item>If <math|<around*|\<langle\>|U,\<nu\>|\<rangle\>>> is another
      tensor product of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>>
      then by [theorem: <reference|tensor product uniqueness>] there exist a
      <with|font-series|bold|unique> linear isomorphism
      <math|k:V\<rightarrow\>U> such that <math|k\<circ\>\<mu\>=\<nu\>>. Let
      <math|<around*|(|v|)>\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>>
      then

      <\equation*>
        \<nu\><around*|(|<around*|(|v|)>|)>=k<around*|(|\<mu\><around*|(|<around*|(|v|)>|)>|)>=k<around*|(|v|)>
      </equation*>

      so that\ 

      <\equation>
        <label|eq 13.23.137>\<nu\>:<big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>\<rightarrow\>U<text|
        is defined by >\<nu\><around*|(|<around*|(|v|)>|)>=k<around*|(|v|)>
      </equation>

      <item>As <math|W> is a sub-space of <math|V> we have by [theorem:
      <reference|linear mapping kernel and range are subspaces>] and the fact
      that <math|k:V\<rightarrow\>U> is a isomorphism, hence a linear
      mapping, that\ 

      <\equation>
        <label|eq 13.24.137>k<around*|(|W|)><text| is a sub-space of >U
      </equation>

      If <math|v\<in\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>|)>>
      then there exist a <math|<around*|(|w|)>\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>>
      such that

      <\equation*>
        v=\<nu\><around*|(|<around*|(|w|)>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 13.23.137>]>>k<around*|(|w|)>\<in\>k<around*|(|W|)>
      </equation*>

      proving that

      <\equation>
        <label|eq 13.25.138>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>|)>\<subseteq\>k<around*|(|W|)>,
      </equation>

      Using [theorem: <reference|linear span subsets>] on the above gives\ 

      <\equation>
        <label|eq 13.25.137>span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>|)>|)>\<subseteq\>span<around*|(|k<around*|(|W|)>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 13.24.137>]>\<wedge\><text|[theorem: <reference|linear
        span properties>]>>k<around*|(|W|)>
      </equation>

      If <math|v\<in\>k<around*|(|W|)>> then there exist a
      <math|w\<in\>W\<Rightarrow\><around*|(|w|)>\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>>
      such that <math|v=k<around*|(|w|)>>, hence by [eq: <reference|eq
      13.23.137>] <math|v=k<around*|(|w|)>=\<nu\><around*|(|<around*|(|w|)>|)>\<in\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>|)>>.
      Hence

      <\equation>
        k<around*|(|W|)>\<subseteq\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>|)>\<subseteq\>span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>|)>|)>=span<around*|(|\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>|)>|)>
      </equation>

      which combined with [eq: <reference|eq 13.25.137>] results in\ 

      <\equation>
        <label|eq 13.26.137>k<around*|(|W|)>=span<around*|(|\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>><around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>|)>|)>
      </equation>

      If <math|u,v\<in\>W<rsub|1>=W> and <math|\<alpha\>\<in\>F> then

      <\equation*>
        \<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>><around*|(|<around*|(|u+\<alpha\>\<cdot\>v|)>|)>=\<nu\><around*|(|<around*|(|u+\<alpha\>\<cdot\>v|)>|)>=\<nu\><around*|(|<around*|(|u|)>|)>+\<alpha\>\<cdot\>\<nu\><around*|(|<around*|(|v|)>|)>=\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>><around*|(|u|)>+\<alpha\>\<cdot\>\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>><around*|(|v|)>
      </equation*>

      proving that [using [eq: <reference|eq 13.25.138>]

      <\equation>
        <label|eq 13.27.137>\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>\<in\>Hom<around*|(|W<rsub|1>,\<ldots\>,W<rsub|1>;k<around*|(|W|)>|)>
      </equation>

      If <math|\<varphi\>\<in\>Hom<around*|(|W<rsub|1>,\<ldots\>,W<rsub|1>;Y|)>>
      then by [theorem: <reference|multi linear extension>] there exist a
      <math|\<psi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|1>;Y|)>>
      such that <math|\<psi\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>=\<varphi\>>.
      As <math|<around*|\<langle\>|U,\<nu\>|\<rangle\>>> is a tensor product
      of <math|V<rsub|1>,\<ldots\>,V<rsub|1>> there exist a
      <math|h:U\<rightarrow\>Y> such that <math|h\<circ\>\<nu\>=\<psi\>>,
      define <math|f:k<around*|(|W|)>\<rightarrow\>Y> by
      <math|f=h<rsub|\|k<around*|(|W|)>>>. Let
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f\<circ\>\<nu\><rsub|\|\<psi\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>>|)><around*|(|x|)>>|<cell|=>|<cell|f<around*|(|\<nu\><rsub|\|\<psi\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<nu\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|h<rsub|\|k<around*|(|W|)>><around*|(|\<nu\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.25.138>]>>>|<cell|h<around*|(|\<nu\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<in\><big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>>|<cell|\<psi\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 13.30.138><text|If >\<varphi\>\<in\>Hom<around*|(|W<rsub|1>,\<ldots\>,W<rsub|1>|)><text|
        then >f\<circ\>\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|i|}>>W<rsub|i>>=\<varphi\>
      </equation>

      Finally [eqs: <reference|eq 13.24.137>, <reference|eq 13.26.137>,
      <reference|eq 13.27.137> and <reference|eq 13.30.138>] proves that\ 

      <\equation*>
        <around*|\<langle\>|k<around*|(|W|)>,\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>|\<rangle\>><text|
        is a tensor space of <math|W<rsub|1>,\<ldots\>,W<rsub|1>> and
        >k<around*|(|W|)> <text|is a sub-space of > U
      </equation*>

      <item>First using (3) we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>

      <\equation*>
        <text|><around*|\<langle\>|k<around*|(|W<rsub|i>|)>,\<otimes\><rsub|\|<big|prod><rsub|j\<in\><around*|{|1|}>>W<rsub|j><rsup|i>>|\<rangle\>><text|
        is a tensor product of >W<rsub|1><rsup|i>,\<ldots\>,W<rsup|i><rsub|1><text|
        and >k<around*|(|W<rsub|i>|)><text| is a sub-space of >U
      </equation*>

      Further, as <math|V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>
      and <math|k:V\<rightarrow\>U> is a isomorphism, we have by [theorem:
      <reference|direct sum and isomorphism>] that

      <\equation*>
        U=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>k<around*|(|W<rsub|i>|)>
      </equation*>
    </enumerate>
  </proof>

  If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
  is a family of vector spaces over a field and
  <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> is
  a family of sub-spaces then a tensor product of
  <math|W<rsub|1>,\<ldots\>,W<rsub|n>> is in general not a sub-space of a
  tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>. However given a
  tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>> we can find a tensor
  product that is a sub-space of the given tensor product. This was proved in
  the previous theorem for the case <math|n=1> however it is also valid in
  the general case.

  <\theorem>
    <label|tensor sub spaces>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    family of vector spaces over a field <math|F>,
    <math|<around*|{|W<rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>> a
    family such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|W<rsub|i>> is a sub-space of <math|V<rsub|i>> and
    <math|<around*|\<langle\>|V,\<nu\>|\<rangle\>>> a tensor product
    of<space|3em> <math|V<rsub|1>,\<ldots\>,V<rsub|n>>. Define\ 

    <\equation*>
      W=span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)>
    </equation*>

    then\ 

    <\equation*>
      W<text| is a sub-space of >V<text| [hence a vector space]>
    </equation*>

    and

    <\equation*>
      <around*|\<langle\>|W,\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>|\<rangle\>><text|
      is a tensor product of >W<rsub|1>,\<ldots\>,W<rsub|n>
    </equation*>
  </theorem>

  <\proof>
    By [theorem: <reference|product inclusion>]
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    so that

    <\equation*>
      \<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>\<subseteq\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>\<subseteq\>span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>=V
    </equation*>

    so that by [theorems: <reference|linear span is a sub-space>,
    <reference|vector space sub-space is a vector space>]\ 

    <\equation*>
      W\<equallim\><rsub|definition>span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)><text|
      is a vector space that is a sub-space of >V
    </equation*>

    If <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>W<rsub|i>>,
    <math|u,v\<in\>X<rsub|i>> and <math|\<alpha\>\<in\>F > then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,u+\<alpha\>\<cdot\>v,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<nu\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,u+\<alpha\>\<cdot\>v,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<nu\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,u,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>\<nu\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,v,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,u,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,v,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.19129>\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>\<in\>Hom<around*|(|W<rsub|1>,\<ldots\>,W<rsub|n>;W|)>
    </equation>

    Next\ 

    <\equation>
      <label|eq 13.20.129>span<around*|(|\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)>=span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)>\<equallim\><rsub|def>W*
    </equation>

    Let <math|U> be a vector space over the field <math|F> and
    <math|\<varphi\>\<in\>Hom<around*|(|W<rsub|1>,\<ldots\>,W<rsub|n>;U|)>>
    then by [theorem: <reference|multi linear extension>] there exist a
    <math|\<psi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>> such
    that <math|\<psi\><rsub|\|<big|prod><rsub|i\<in\>1,\<ldots\>,n>W<rsub|i>>=\<varphi\>>.
    As <math|<around*|\<langle\>|V,\<nu\>|\<rangle\>>> is a tensor product
    there exist a <math|k\<in\>Hom<around*|(|V,U|)>> such that
    <math|\<psi\>=k\<circ\>\<nu\>>. Define <math|h=k<rsub|\|W>> then we have
    <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>
    that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|h\<circ\>\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>|)><around*|(|x|)>>|<cell|=>|<cell|h<around*|(|\<nu\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>\<subseteq\>W>>|<cell|h<rsub|\|W><around*|(|\<nu\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|k<around*|(|\<nu\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>>|<cell|\<psi\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.21.129>\<varphi\>=h\<circ\>\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>
    </equation>

    From [eqs: <reference|eq 13.19129>, <reference|eq 13.20.129> and
    <reference|eq 13.21.129>] we conclude that\ 

    <\equation*>
      <around*|\<langle\>|W,\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>|\<rangle\>><text|
      is a tensor product of >W<rsub|1>,\<ldots\>,W<rsub|n>
    </equation*>

    Finally

    As <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    we have

    <\equation*>
      \<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>=\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>\<subseteq\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>
    </equation*>

    so that

    <\equation*>
      W=span<around*|(|\<nu\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)>\<subseteq\>span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>=V
    </equation*>

    \;
  </proof>

  To simplify notation we use the following notation convention.

  <\convention>
    <label|tensor product convention>If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is a family of vector spaces over a field then a tensor product is a pair
    <math|<around*|\<langle\>|V,\<mu\>|\<rangle\>>> where <math|V> is a
    vector space and <math|\<mu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V|)>>.
    We have now two conventions:

    <\description-long>
      <item*|Focus on the vector space of a vector product>The notation\ 

      <\equation*>
        V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
      </equation*>

      means that <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> is a
      vector space and there exist a (unspecified) multilinear mapping
      <math|\<mu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>>
      such that <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<mu\>|\<rangle\>>>
      is a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>. More
      specific it means that:\ 

      <\enumerate>
        <item><math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> is a a
        vector space over the same field <math|F> as (1)

        <item>There exist a <math|\<mu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>>
        such that <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<mu\>|\<rangle\>>>
        is a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>> or more
        in detail:

        <\enumerate>
          <item><math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>=span<around*|(|\<mu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>

          <item>If <math|U> is a vector space and
          <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>>
          then there exist a\ 

          <\equation*>
            h:Hom<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,U|)>
          </equation*>

          such that\ 

          <\equation*>
            \<varphi\>=h\<circ\>\<mu\>
          </equation*>
        </enumerate>
      </enumerate>

      If <math|n=2> then we use the shorter notation\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2><text| for
        >V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
      </equation*>

      We slightly abuse our definition and says that
      <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> is a tensor
      product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>> when we actually should
      say that there exist a <math|\<mu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>>
      such that <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<ldots\>\<otimes\>V<rsub|n>,\<mu\>|\<rangle\>>>
      is a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>. In many
      cases we also use the notation <math|\<otimes\>> for the assumed
      multilinear mapping that makes <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
      part of a tensor product. \ 

      <item*|One vector space and more then one multilinear mapping>Then we
      use <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> for the
      vector space and different symbols like <math|\<otimes\>>,
      <math|\<oast\>>, <math|\<otimes\><rsub|1>>,
      <math|\<otimes\><rsub|i>><text-dots>for the multilinear mapping.
      Examples

      <\equation*>
        <around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>><text|>
      </equation*>

      <\equation*>
        <around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<oast\>|\<rangle\>>
      </equation*>

      <\equation*>
        <around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\><rsub|i>|\<rangle\>>
      </equation*>

      <\equation*>
        \<ldots\>
      </equation*>

      <item*|More then one vector space and multilinear mapping>Then we use
      different symbols <math|\<otimes\>>, <math|\<oast\>>, <math|\<odot\>>,
      <math|\<otimes\><rsub|i>> <text-dots> as shown in the following
      examples

      <\equation*>
        <around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>
      </equation*>

      <\equation*>
        <around*|\<langle\>|V<rsub|1>\<oast\>\<ldots\>\<oast\>V<rsub|n>,\<oast\>|\<rangle\>>
      </equation*>

      <\equation*>
        <around*|\<langle\>|V<rsub|1>\<otimes\><rsub|i>\<cdots\>\<otimes\><rsub|i>V<rsub|n>,\<otimes\><rsub|i>|\<rangle\>>
      </equation*>
    </description-long>
  </convention>

  Using the above convention we can rephrase [theorems: <reference|tensor
  product of spaces existence>, <reference|tensor product uniqueness>,
  <reference|tensor product singleton> and <reference|tensor sub spaces>].

  <\theorem>
    <label|tensor product of spaces existence (1)>Let
    <math|<around*|{|V<rsub|1>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a family of vector spaces over a field then there exists a tensor
    product\ 

    <\equation*>
      V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
    </equation*>
  </theorem>

  <\proof>
    See [theorem: \ <reference|tensor product of spaces existence>] and
    [convention: <reference|tensor product convention>].
  </proof>

  <\theorem>
    <label|tensor product uniqueness (1)>Let
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a family of vector spaces over a field <math|F> then for\ 

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>><text|,
      ><around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<oast\>|\<rangle\>><text|
      two tensor products based on >V<rsub|1>,\<ldots\>,V<rsub|n>
    </equation*>

    then there exists a unique linear isomorphism\ 

    <\equation*>
      k:V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>\<rightarrow\>V<rsub|1>\<oast\>\<ldots\>\<oast\>V<rsub|n>
    </equation*>

    such that\ 

    <\equation*>
      k\<circ\>\<otimes\>=\<oast\>
    </equation*>
  </theorem>

  <\proof>
    See [theorem: \ <reference|tensor product uniqueness>] and [convention:
    <reference|tensor product convention>].
  </proof>

  <\theorem>
    <label|tensor product singleton (1)>Let <math|V> be a vector space over a
    field <math|F> [defining the family of vector spaces
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>> where
    <math|V<rsub|1>=V>] and <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|1>,\<otimes\>|\<rangle\>>>
    a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|1>>. If we define

    <\equation*>
      \<oast\>:<big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>\<rightarrow\>V<text|
      by >\<oast\><around*|(|<around*|(|v|)>|)>=v
    </equation*>

    then we have:

    <\enumerate>
      <item><math|<around*|\<langle\>|V,\<oast\>|\<rangle\>><text| is a
      tensor product of >V<rsub|1>,\<ldots\>,V<rsub|1>> in other words
      <math|V<rsub|1>\<oast\>\<ldots\>\<oast\>V<rsub|1>=V>

      <item>If <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
      is another tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|1>> then
      here exists a isomorphism\ 

      <\equation*>
        k:V\<rightarrow\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|1>
      </equation*>

      such that

      <\equation*>
        \<otimes\>:<big|prod><rsub|i\<in\><around*|{|1|}>>V<rsub|i>\<rightarrow\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|1><text|
        we have >\<otimes\><around*|(|<around*|(|v|)>|)>=k<around*|(|v|)>
      </equation*>

      <item>If <math|W> is a sub-space of <math|V> then for
      <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-P\><around*|(|V|)>>
      defined by <math|W<rsub|1>=W> we have that there exist a tensor product
      <math|<around*|\<langle\>|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|1>,\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>|\<rangle\>>>
      of <math|W<rsub|1>,\<ldots\>,W<rsub|1>> such that\ 

      <\enumerate>
        <item><math|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|1>=k<around*|(|W|)>>

        <item><math|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|1>> is a
        sub-space of <math|V>
      </enumerate>

      <item>If <math|V=<big|oplus>W<rsub|i>> then, if we define
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|{|W<rsub|j><rsup|i>|}><rsub|j\<in\><around*|{|1|}>>> by
      <math|W<rsub|1><rsup|i>=W<rsub|i>>, we have that

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| there exist a
        tensor product >W<rsub|1><rsup|i>\<otimes\>\<cdots\>\<otimes\>W<rsup|i><rsub|1><text|
        of >W<rsub|1><rsup|i>,\<ldots\>,W<rsub|1><rsup|i>
      </equation*>

      such that\ 

      <\equation*>
        W<rsub|1><rsup|i>\<otimes\>\<cdots\>\<otimes\>W<rsub|1><rsup|i><text|
        is a subspace of >V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|1>
      </equation*>

      and

      <\equation*>
        V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|1>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|1><rsup|i>\<otimes\>\<cdots\>\<otimes\>W<rsup|i><rsub|1><rsup|<rsup|>>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    See [theorem: \ <reference|tensor product singleton>] and [convention:
    <reference|tensor product convention>]
  </proof>

  <\theorem>
    <label|tensor sub spaces (1)>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    family of vector spaces over a field <math|F>,
    <math|<around*|{|W<rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>> a
    family such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|W<rsub|i>> is a sub-space of <math|V<rsub|i>>. If
    <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
    is a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>> then if we
    define <math|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>=span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>V<rsub|i>|)>|)>>
    we have that

    <\equation*>
      <around*|\<langle\>|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>,\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>|\<rangle\>><text|
      is a tensor product of >W<rsub|1>,\<ldots\>,W<rsub|n>
    </equation*>

    and

    <\equation*>
      W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>\<subseteq\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
    </equation*>
  </theorem>

  <\proof>
    See [theorem: \ <reference|tensor sub spaces>] and [convention:
    <reference|tensor product convention>]
  </proof>

  We prove now some useful theorems about tensor products

  <\theorem>
    <label|tensor product zero>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector space over a field <math|F>, a tensor product
    <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> and
    <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    then we have\ 

    <\equation*>
      v<rsub|1>\<otimes\>\<cdots\>\<otimes\>v<rsub|n>=0\<Leftrightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >v<rsub|i>=0
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|v<rsub|1>\<otimes\>\<cdots\>\<otimes\>v<rsub|n>=0>.
      Assume <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|v<rsub|i>\<neq\>0> then by [theorem: <reference|linear mapping
      existance of non-zero linear mapping>] there exist a
      <math|L<rsub|i>\<in\>Hom<around*|(|V<rsub|i>,F|)>> such that
      <math|L<rsub|i><around*|(|v<rsub|i>|)>=1> then by [theorem:
      <reference|multi multilinear mapping from a family of linear mappings>]
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<rsub|i>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;F|)>>.
      As <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
      is a tensor product there exist a <math|h\<in\>Hom<around*|(|P,F|)>>
      such that <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<rsub|i>=h\<circ\>\<otimes\>>.
      Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|\<equallim\><rsub|\<mu\>v<rsub|1>\<otimes\>\<cdots\>\<otimes\>v<rsub|n>=0>>|<cell|h<around*|(|v<rsub|1>\<otimes\>\<cdots\>\<otimes\>v<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|h<around*|(|\<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|h\<circ\>\<otimes\>|)><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<rsub|i>|)><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>L<rsub|i><around*|(|v<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element (2)>]>>>|<cell|1>>>>
      </eqnarray*>

      giving the contradiction <math|0=1>. Hence we must have that
      <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|v<rsub|i>=0>.

      <item*|<math|\<Leftarrow\>>>This follows from [theorem:
      <reference|multi multilinear mappin one argument is 0>] and the fact
      that <math|\<otimes\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>>
    </description>
  </proof>

  <\lemma>
    <label|tensor product linear independency>Let
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>><space|1em>family
    of two vector spaces over a field <math|f> with a tensor product
    <math|<around*|\<langle\>|V<rsub|1>\<otimes\>V<rsub|2>,\<otimes\>|\<rangle\>>>.
    Take <math|z\<in\>V<rsub|1>\<otimes\>V<rsub|2>> and define

    <\equation*>
      K<rsub|z>=<around*|{|k\<in\>\<bbb-N\>\|\<exists\><around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>V<rsub|1>,<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>V<text|
      such that >z=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>u<rsub|i>\<otimes\>v<rsub|i>|}>
    </equation*>

    then

    <\equation*>
      K<rsub|z>\<neq\>0
    </equation*>

    so that by [theorem: <reference|complex NC is well ordered>]\ 

    <\equation*>
      k<rsub|z>=min<around*|(|K<rsub|z>|)><text| exist>
    </equation*>

    Then for every <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>\<subseteq\>V<rsub|1>,<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>\<subseteq\>V>
    such that\ 

    <\equation*>
      z=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>u<rsub|i>\<otimes\>v<rsub|i>
    </equation*>

    we have then that\ 

    <\equation*>
      <around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>><text|
      and ><around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>><text|
      are linear independent>
    </equation*>
  </lemma>

  <\proof>
    Let <math|z\<in\>V<rsub|1>\<otimes\>V<rsub|1>>. As by definition
    <math|V<rsub|1>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
    there exists by [theorem: <reference|linear span equivalence 1>] a
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that <math|z=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>>.
    As <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    their exist by [theorem: <reference|choice family on preimage>] a
    <math|<around*|{|<around*|(|u<rprime|'><rsub|i>,v<rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,.n|}>> we have
    <math|x<rsub|i>=\<otimes\><around*|(|u<rsub|i><rprime|'>,v<rsub|i>|)>>.
    Define <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>V<rsub|1>>
    by <math|u<rsub|i>=\<alpha\><rsub|i>\<cdot\>u<rprime|'><rsub|i>> then we
    have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>u<rsub|i>\<otimes\>v<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>u<rsub|i><rprime|'>|)>\<otimes\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\><around*|(|u<rprime|'><rsub|i>\<otimes\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>\<otimes\><around*|(|u<rprime|'><rsub|i>,v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|z>>>>
    </eqnarray*>

    proving that <math|n\<in\>K<rsub|z>> or\ 

    <\equation*>
      K<rsub|z>\<neq\>0
    </equation*>

    So by [theorem: <reference|complex NC is well ordered>]
    <math|k<rsub|z>=min<around*|(|K<rsub|z>|)>> exist. Let
    <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>\<subseteq\>V<rsub|1>>
    and <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>\<subseteq\>V<rsub|2>>
    such that <math|z=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>u<rsub|i>\<otimes\>v<rsub|i>>
    then we have:

    <\enumerate>
      <item>Assume that <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>>
      is linear dependent then by ]theorem: <reference|linear dependent
      family alternative>] there exists a
      <math|l\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>> and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<subseteq\>F>
      such that <math|u<rsub|l>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>>.
      Define now\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<subseteq\>V<rsub|2><text|
        by >w<rsub|i>=v<rsub|i>+\<alpha\><rsub|i>\<cdot\>v<rsub|l>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>w<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\><around*|(|v<rsub|i>+\<alpha\><rsub|i>\<cdot\>v<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>><around*|(|u<rsub|i>\<otimes\>v<rsub|i>+\<alpha\><rsub|i>\<cdot\><around*|(|u<rsub|i>\<otimes\>v<rsub|l>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<alpha\><rsub|i>\<cdot\><around*|(|u<rsub|i>\<otimes\>v<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>><around*|(|<around*|(|\<alpha\><rsub|i>\<cdot\>u<rsub|i>|)>\<otimes\>v<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>v<rsub|i>+<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>|)>\<otimes\>v<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>v<rsub|i>+u<rsub|l>\<otimes\>v<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>u<rsub|i>\<otimes\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|z>>>>
      </eqnarray*>

      Using [corollary: <reference|complex cardinality removing a element>]
      we have that <math|card<around*|(|<around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>|)>=k<rsub|z>-1>
      so that there exist a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,k<rsub|z>-1|}>\<rightarrow\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>
      hence if we define

      <\equation*>
        <around*|{|u<rprime|'><rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>-1|}>>\<subseteq\>V<rsub|1><text|
        by >u<rprime|'><rsub|i>=u<rsub|\<beta\><around*|(|i|)>><text| and
        ><around*|{|v<rprime|'><rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>-1|}>>\<subseteq\>V<rsub|2><text|
        by >v<rprime|'><rsub|i>=w<rsub|\<beta\><around*|(|i|)>>
      </equation*>

      then we have\ 

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>-1|}>>u<rprime|'><rsub|i>\<otimes\>v<rprime|'><rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>-1|}>>\<upsilon\><rsub|\<beta\><around*|(|i|)>>\<otimes\>w<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>w<rsub|i>=z<rsub|>
      </equation*>

      so that <math|k<rsub|z>-1\<in\>K<rsub|z>> contradicting
      <math|k<rsub|z>=min<around*|(|K<rsub|z>|)>>. Hence
      <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>>
      is not lineard dependent, proving that
      <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>>
      is linear dependent.

      <item>Assume that <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>>
      is linear dependent then by ]theorem: <reference|linear dependent
      family alternative>] there exists a
      <math|l\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>> and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<subseteq\>F>
      such that <math|u<rsub|l>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>>.
      Define now\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<subseteq\>V<rsub|1><text|
        by >w<rsub|i>=u<rsub|i>+\<alpha\><rsub|i>\<cdot\>u<rsub|l>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>w<rsub|i>\<otimes\>v<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>><around*|(|u<rsub|i>+\<alpha\><rsub|i>\<cdot\>u<rsub|l>|)>\<otimes\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>><around*|(|u<rsub|i>\<otimes\>v<rsub|i>+\<alpha\><rsub|i>\<cdot\><around*|(|u<rsub|l>\<otimes\>v<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<alpha\><rsub|i>\<cdot\><around*|(|u<rsub|l>\<otimes\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>><around*|(|u<rsub|l>\<otimes\><around*|(|\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>v<rsub|i>+u<rsub|l>\<otimes\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>u<rsub|i>\<otimes\>v<rsub|i>+u<rsub|l>\<otimes\>v<rsub|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>u<rsub|i>\<otimes\>v<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|z>>>>
      </eqnarray*>

      Using [corollary: <reference|complex cardinality removing a element>]
      we have that <math|card<around*|(|<around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>|)>=k<rsub|z>-1>
      so that there exist a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,k<rsub|z>-1|}>\<rightarrow\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>
      hence if we define

      <\equation*>
        <around*|{|u<rprime|'><rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>-1|}>>\<subseteq\>V<rsub|1><text|
        by >u<rprime|'><rsub|i>=w<rsub|\<beta\><around*|(|i|)>><text| and
        ><around*|{|v<rprime|'><rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>-1|}>>\<subseteq\>V<rsub|2><text|
        by >v<rprime|'><rsub|i>=v<rsub|\<beta\><around*|(|i|)>>
      </equation*>

      then we have\ 

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>-1|}>>u<rprime|'><rsub|i>\<otimes\>v<rprime|'><rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>-1|}>>w<rsub|\<beta\><around*|(|i|)>>\<otimes\>v<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>\\<around*|{|l|}>>w<rsub|i>\<otimes\>v<rsub|i>=z<rsub|>
      </equation*>

      so that <math|k<rsub|z>-1\<in\>K<rsub|z>> contradicting
      <math|k<rsub|z>=min<around*|(|K<rsub|z>|)>>. Hence
      <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>>
      is not lineard dependent, proving that
      <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|z>|}>>>
      is linear dependent.
    </enumerate>
  </proof>

  The following theorems will be important for induction arguments.

  <\theorem>
    <label|tensor product induction argument (2)>Let <math|n\<in\>\<bbb-N\>>
    and <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    be a family of vector spaces over <math|F>,

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>,\<otimes\><rsub|n>|\<rangle\>><text|
      a tensor product of >V<rsub|1>,\<ldots\>,V<rsub|n>
    </equation*>

    and

    <\equation*>
      <around*|\<langle\>|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>,\<otimes\>|\<rangle\>><text|
      a tensor product of >V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>,V<rsub|n+1>
    </equation*>

    then there exist a tensor product\ 

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>,\<otimes\><rsub|n+1>|\<rangle\>><text|
      of >V<rsub|1>,\<ldots\>,V<rsub|n+1>
    </equation*>

    such that\ 

    <\equation*>
      V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>=<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation*>
  </theorem>

  <\proof>
    Let <math|><math|V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>>
    be the vector space <math|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>>,
    so we have by definition\ 

    <\equation*>
      V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>=<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation*>

    Define now\ 

    <\equation>
      <label|eq 13.35.143>\<otimes\><rsub|n+1>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>\<rightarrow\><around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1><text|
      where <math|\<otimes\><rsub|n+1>> is defined by >
    </equation>

    <\equation*>
      \<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>=\<otimes\>*<around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>
    </equation*>

    Let <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>> and take
    <math|<around*|{|v<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|i|}>>>
    <math|\<alpha\>\<in\>F>, <math|u,v\<in\>V<rsub|i>> then we have for

    <\equation*>
      \<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>
    </equation*>

    either:

    <\description>
      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>+\<alpha\>\<cdot\>\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item*|<math|i=n+1>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,u+\<alpha\>\<cdot\>v|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,u|)>+\<alpha\>\<cdot\>\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </description>

    which proves that\ 

    <\equation>
      <label|eq 13.35.140>\<otimes\><rsub|n+1>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n+1>;<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>|)>
    </equation>

    If <math|v\<in\>\<otimes\><around*|(|<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>\<cdot\>V<rsub|n+1>|)>>
    then there exists a <math|v<rsub|1>\<in\>\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|1>|)>>
    and <math|v<rsub|2>\<in\>V<rsub|n+1>> such that
    <math|v=\<otimes\><around*|(|v<rsub|1>,v<rsub|2>|)>>. As
    <math|v<rsub|1>\<in\>\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,b|}>>V<rsub|1>|)>>
    there exist a <math|<around*|(|v<rsub|1,1>,\<ldots\>,v<rsub|1,n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|1>>
    such that <math|v<rsub|1>=\<otimes\><rsub|n><around*|(|v<rsub|1,1>,\<ldots\>,v<rsub|1,n>|)>>.
    So

    <\equation*>
      v=\<otimes\><around*|(|v<rsub|1>,v<rsub|2>|)>=\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1,1>,\<ldots\>,v<rsub|1,n>|)>,v<rsub|2>|)>\<equallim\><rsub|def>\<otimes\><rsub|n+1><around*|(|v<rsub|1,1>,\<ldots\>,v<rsub|1,n>,v<rsub|2>|)>\<in\>\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i><rsub|>|)>
    </equation*>

    Hence we have that\ 

    <\equation>
      <label|eq 13.36.142>\<otimes\><around*|(|<around*|(|\<otimes\><rsub|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>\<cdot\>V<rsub|n+1>|)>\<subseteq\>\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i><rsub|>|)>
    </equation>

    If <math|v\<in\>\<otimes\><around*|(|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>,V<rsub|n+1>|)>>
    then there exists a <math|v<rsub|1>\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>=span<around*|(|\<otimes\><rsub|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
    and <math|v<rsub|2>\<in\>V<rsub|n+1>> such that
    <math|v=\<otimes\><around*|(|v<rsub|1>,v<rsub|2>|)>>. As
    <math|v<rsub|1>\<in\>span<around*|(|\<otimes\><rsub|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
    there exist a finite <math|I\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    and a <math|<around*|{|\<alpha\><rsub|u>|}><rsub|u\<in\>I>\<subseteq\>F>
    such that <math|v<rsub|1>=<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u>.
    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|v>|<cell|=>|<cell|\<otimes\><around*|(|v<rsub|1>,v<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|\<otimes\><around*|(|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|u>\<cdot\>u,v<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|u\<in\>I>\<alpha\><rsub|\<alpha\>>\<cdot\>\<otimes\><around*|(|u,v<rsub|2>|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|span<around*|(|\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i><rsub|>|)>|)><text|
      [see eq: <reference|eq 13.36.142>]>>>>>
    </eqnarray*>

    proving\ 

    <\equation*>
      \<otimes\><around*|(|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>,V<rsub|n+1>|)>\<subseteq\>span<around*|(|\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i><rsub|>|)>|)>
    </equation*>

    Using [theorems: <reference|linear span subsets>, <reference|linear span
    of span>] we have\ 

    <\equation>
      <label|eq 13.38.143><around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>=span<around*|(|\<otimes\><around*|(|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<cdot\>V<rsub|n+1>|)>|)>\<subseteq\>span<around*|(|\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i><rsub|>|)>|)>
    </equation>

    By the definition of <math|\<otimes\><rsub|n+1>> [see eq: <reference|eq
    13.35.143>]

    <\equation*>
      \<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>\<subseteq\><around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation*>

    hence by [theorems: <reference|linear span subsets>]\ 

    <\equation*>
      span<around*|(|\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>|)>\<subseteq\>span<around*|(|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>|)>=<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation*>

    Combining the above with [eq: <reference|eq 13.38.143>] gives\ 

    <\equation>
      <label|eq 13.39.143>span<around*|(|\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>|)>=<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation>

    Let <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n+1>;U|)>>.
    Given <math|v\<in\>V<rsub|n+1>> define

    <\equation*>
      \<varphi\><rsub|v>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>U<text|
      by >\<varphi\><rsub|v><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>=\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,v|)>
    </equation*>

    then <math|\<varphi\><rsub|v>> is multilinear because <math|\<varphi\>>
    is multilinear. As <math|<around*|\<langle\>|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>,\<otimes\><rsub|n>|\<rangle\>>>
    is a tensor product there exist a <math|k<rsub|v>\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>,U|)>>
    such that\ 

    <\equation>
      <label|eq 13.36.141>k<rsub|v>\<circ\>\<otimes\><rsub|n>=\<varphi\><rsub|v>
    </equation>

    Let <math|u,v\<in\>V<rsub|n+1>>, <math|\<alpha\>\<in\>F> and
    <math|w\<in\>\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    then there exist a <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>
    such that <math|w=\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>.
    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|k<rsub|u+\<alpha\>\<cdot\>v><around*|(|w|)>>|<cell|=>|<cell|k<rsub|u+\<alpha\>\<cdot\>v><around*|(|\<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><rsub|u+\<alpha\>\<cdot\>v><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,u+\<alpha\>\<cdot\>v|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,u|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,v|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><rsub|u><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<varphi\><rsub|v><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|k<rsub|u><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>+\<alpha\>\<cdot\>k<rsub|v><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|k<rsub|u><around*|(|w|)>+\<alpha\>\<cdot\>k<rsub|v><around*|(|w|)><eq-number><label|eq
      13.36.140>>>>>
    </eqnarray*>

    Let <math|w\<in\>span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
    then there exists a finite set <math|I\<subseteq\>\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    such that

    <\equation*>
      w=<big|sum><rsub|z\<in\>I>\<alpha\><rsub|z>\<cdot\>z
    </equation*>

    Then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|k<rsub|u+\<alpha\>\<cdot\>v><around*|(|w|)>>|<cell|=>|<cell|k<rsub|u+\<alpha\>\<cdot\>v><around*|(|<big|sum><rsub|z\<in\>I>\<alpha\><rsub|z>\<cdot\>z|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|z\<in\>I>\<alpha\><rsub|z>\<cdot\>k<rsub|u+\<alpha\>\<cdot\>v><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|z\<in\>I>\<alpha\><rsub|z>\<cdot\><around*|(|k<rsub|u><around*|(|z|)>+\<alpha\>\<cdot\>k<rsub|v><around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|z\<in\>I>\<alpha\><rsub|z>\<cdot\>k<rsub|u><around*|(|z|)>+\<alpha\>\<cdot\><big|sum><rsub|z\<in\>I>\<alpha\><rsub|z>\<cdot\>k<rsub|v><around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|k<rsub|u><around*|(|w|)>+\<alpha\>\<cdot\>k<rsub|v><around*|(|w|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.37.140>\<forall\>u,v\<in\>V<rsub|n+1>,\<forall\>\<alpha\>\<in\>F<text|
      we have >k<rsub|u+\<alpha\>\<cdot\>v>=k<rsub|u>+\<alpha\>\<cdot\>k<rsub|v>
    </equation>

    Define\ 

    <\equation>
      <label|eq 13.43.144>\<psi\>:<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<cdot\>V<rsub|n+1>\<rightarrow\>U<text|
      by >\<psi\><around*|(|u,v|)>=k<rsub|v><around*|(|u|)>
    </equation>

    then we have for <math|x,y\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>,
    <math|\<alpha\>\<in\>F> and <math|v\<in\>V<rsub|n+1>>

    <\equation*>
      \<psi\><around*|(|x+\<alpha\>\<cdot\>y,v|)>=k<rsub|v><around*|(|x+\<alpha\>\<cdot\>y|)>=k<rsub|v><around*|(|x|)>+\<alpha\>\<cdot\>k<rsub|v><around*|(|y|)>=\<psi\><around*|(|x|)>+\<alpha\>\<cdot\>\<psi\><around*|(|y|)>
    </equation*>

    and for <math|v\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>,
    <math|x,y\<in\>V<rsub|n+1>>, <math|\<alpha\>\<in\>F> that\ 

    <\equation*>
      \<psi\><around*|(|v,x+\<alpha\>\<cdot\>y|)>=k<rsub|x+\<alpha\>\<cdot\>y><around*|(|v|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 13.37.140>]>>k<rsub|x><around*|(|v|)>+\<alpha\>\<cdot\>k<rsub|v><around*|(|v|)>=\<psi\><around*|(|v,x|)>+\<alpha\>*\<cdot\>\<psi\><around*|(|v,y|)>
    </equation*>

    From the above it follows that\ 

    <\equation>
      <label|eq 13.38.140>\<psi\>\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>,V<rsub|n+1>;U|)>
    </equation>

    As <math|<around*|\<langle\>|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>,\<otimes\>|\<rangle\>>>
    is a tensor product there exist a <math|h\<in\>Hom<around*|(|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>,U|)>>
    such that\ 

    <\equation>
      <label|eq 13.39.140>h\<circ\>\<otimes\>=\<psi\>
    </equation>

    Let <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|h\<circ\>\<otimes\><rsub|n+1>|)><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>>|<cell|=>|<cell|h<around*|(|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|h<around*|(|\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.39.140>]>>>|<cell|\<psi\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.43.144>]>>>|<cell|k<rsub|v<rsub|n+1>><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.36.141>]>>>|<cell|\<varphi\><rsub|v<rsub|n+1>><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,v<rsub|n+1>|)>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation>
      <label|eq 13.41.140>h\<circ\>\<otimes\><rsub|n+1>=\<varphi\>
    </equation>

    Finally from [eqs: <reference|eq 13.39.143>, <reference|eq 13.35.140> and
    <reference|eq 13.41.140>] it follows that\ 

    <\equation*>
      <around*|\<langle\>|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>,\<otimes\><rsub|n+1>|\<rangle\>><text|
      is a tensor product of >V<rsub|1>,\<ldots\>,V<rsub|n+1>
    </equation*>
  </proof>

  <\theorem>
    <label|tensor product induction argument>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    be a family of vector spaces over <math|F>. If\ 

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>,\<otimes\><rsub|n+1>|\<rangle\>><text|
      and ><around*|\<langle\>|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>,\<otimes\><rsub|n>|\<rangle\>><text|
      are tensor products>
    </equation*>

    then there exist a tensor product\ 

    <\equation*>
      <around*|\<langle\>|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>,\<otimes\>|\<rangle\>><text|
      of >V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n><text|
      and >V<rsub|n+1>
    </equation*>

    such that\ 

    <\equation*>
      V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>=<around*|(|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation*>
  </theorem>

  <\proof>
    Take the family <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
    by <math|W<rsub|1>=V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>
    and <math|W<rsub|2>=V<rsub|n+1>> of vector spaces. Using [theorem:
    <reference|tensor product of spaces existence>] there exist a tensor
    product <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> of
    <math|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>
    and <math|V<rsub|n+1>>, so\ 

    <\equation>
      <label|eq 13.22.129>\<nu\>\<in\>Hom<around*|(|<big|prod><rsub|i\<in\><around*|{|1,.2|}>>W<rsub|i>;P|)>
    </equation>

    <\equation>
      <label|eq 13.23.129>P=span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>|)>|)>
    </equation>

    <\equation>
      <label|eq 13.24.129>\<forall\>\<varphi\>\<in\>Hom<around*|(|<big|prod><rsub|i\<in\><around*|{|1,.2|}>>W<rsub|i>;U|)><text|
      there exist a >h\<in\>Hom<around*|(|P,U|)><text| such that
      >\<varphi\>=h\<circ\>\<nu\>
    </equation>

    Let <math|w\<in\>V<rsub|n+1>> and define\ 

    <\equation*>
      \<beta\><rsub|w>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1><text|
      by >\<beta\><rsub|w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>=\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,w|)>
    </equation*>

    then for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|\<alpha\>\<in\>F>, <math|u,v\<in\>V<rsub|i>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<beta\><rsub|w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>,w|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>,w|)>+\<alpha\>\<cdot\>\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>,w|)>>|<cell|=>|<cell|>>|<row|<cell|\<beta\><rsub|w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u,v<rsub|i+1>,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<beta\><rsub|w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,v,v<rsub|i+1>,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that

    <\equation>
      <label|eq 13.25.129>\<forall\>w\<in\>V<rsub|n+1><text| we have
      >\<beta\><rsub|w>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)>
    </equation>

    Further for <math|\<alpha\>\<in\>F> and <math|u,v\<in\>V<rsub|n+1>> we
    have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<beta\><rsub|u+\<alpha\>\<cdot\>v><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>|<cell|=>|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,\<mu\>+\<alpha\>\<cdot\>v|)>>>|<row|<cell|>|<cell|=>|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,\<mu\>|)>+\<alpha\>\<cdot\>\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,v|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\><rsub|u><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<beta\><rsub|v><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.26.129>\<beta\><rsub|u+\<alpha\>\<cdot\>v>=\<beta\><rsub|u>+\<alpha\>\<cdot\>\<beta\><rsub|v>
    </equation>

    As <math|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>
    is a tensor product of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    we have from [eq: <reference|eq 13.25.129>] that
    <math|\<forall\>w\<in\>V<rsub|n+1>> there exist a\ 

    <\equation>
      <label|eq 13.27.129>g<rsub|w>\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>,V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)><text|
      such that >\<beta\><rsub|w>=g<rsub|w>\<circ\>\<otimes\><rsub|n>
    </equation>

    Hence <math|\<forall\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>,
    <math|\<forall\>w\<in\>V<rsub|n+1>> we have\ 

    <\equation>
      <label|eq 13.28.129>g<rsub|w><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>=\<beta\><rsub|w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 13.25.129>]>>\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,w|)><rsub|<text|>>
    </equation>

    Define now\ 

    <\equation>
      <label|eq 13.29.129>\<varphi\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>\<rightarrow\>P<text|
      by >\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>=\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>
    </equation>

    then we have for <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>>,
    <math|u,v\<in\>V<rsub|i>> and <math|\<alpha\>\<in\>F> either:

    <\description>
      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>+\<alpha\>\<cdot\>\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item*|<math|i=n+1>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,u+\<alpha\>\<cdot\>v|)>>|<cell|=>|<cell|>>|<row|<cell|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,u|)>+\<alpha\>\<cdot\>\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v|)>>|<cell|=>|<cell|>>|<row|<cell|\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </description>

    proving that\ 

    <\equation>
      <label|eq 13.30.129>\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n+1>,P|)>
    </equation>

    As <math|V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>>
    is a tensor product of <math|V<rsub|1>,\<ldots\>.,V<rsub|n+1>> there
    exist a <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>,P|)>>
    such that <math|\<varphi\>=h\<circ\>\<otimes\><rsub|n+1>> or
    <math|\<forall\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>>
    we have\ 

    <\equation>
      <label|eq 13.31.129>h<around*|(|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>|)>=\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>
    </equation>

    Define now\ 

    <\equation>
      <label|eq 13.32.129>\<psi\>:<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>\<rightarrow\>V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1><text|
      by >\<psi\><around*|(|z,v|)>\<equallim\><rsub|<text|[eq: <reference|eq
      13.27.129>]>>g<rsub|v><around*|(|z|)>
    </equation>

    Then if <math|i\<in\><around*|{|1,2|}>> we have for
    <math|\<alpha\>\<in\>F> and <math|u,v\<in\>W<rsub|i>> and <math|>
    <math|>either:

    <\description>
      <item*|<math|i=1>>Then, as <math|W<rsub|i>=V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>,
      we have <math|u,v\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>,
      so that given <math|v<rsub|2>\<in\>V<rsub|n+1>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<psi\><around*|(|u+\<alpha\>\<cdot\>v,v<rsub|2>|)>>|<cell|=>|<cell|g<rsub|v<rsub|2>><around*|(|u+\<alpha\>\<cdot\>v<rsub|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.27.129>]>>>|<cell|g<rsub|v<rsub|2>><around*|(|u|)>+\<alpha\>\<cdot\>g<rsub|v<rsub|2>><around*|(|v|)>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><around*|(|u,v<rsub|2>|)>+\<alpha\>\<cdot\>\<psi\><around*|(|v,v<rsub|2>|)>>>>>
      </eqnarray*>

      <item*|<math|i=2>>Then <math|W<rsub|2>=V<rsub|n+1>> and
      <math|u,v\<in\>V<rsub|n+1>>, let <math|v<rsub|1>\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>.
      As <math|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>=span<around*|(|\<otimes\><rsub|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
      there exists by [theorem: <reference|linear span equivalence 1>] a
      <math|<around*|{|u<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>\<otimes\><rsub|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>>
      and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>F>
      such that <math|v<rsub|1>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>>.
      If <math|i\<in\><around*|{|1,\<ldots\>,l|}>> then for <math|u<rsub|i>>
      there exists a <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
      such that <math|u<rsub|i>=\<otimes\><rsub|n><around*|(|x|)>>, hence

      <\eqnarray*>
        <tformat|<table|<row|<cell|g<rsub|u+\<alpha\>\<cdot\>v><around*|(|u<rsub|i>|)>>|<cell|=>|<cell|g<rsub|u+\<alpha\>\<cdot\>v><around*|(|\<otimes\><rsub|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.27.129>]>>>|<cell|\<beta\><rsub|u+\<alpha\>\<cdot\>v><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.26.129>]>>>|<cell|\<beta\><rsub|u><around*|(|x|)>+\<alpha\>\<cdot\>\<beta\><rsub|v><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.27.129>]>>>|<cell|g<rsub|u><around*|(|\<otimes\><rsub|n><around*|(|x|)>|)>+\<alpha\>\<cdot\>g<rsub|v><around*|(|\<otimes\><rsub|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<rsub|u><around*|(|u<rsub|i>|)>+\<alpha\>\<cdot\>g<rsub|v><around*|(|u<rsub|i>|)>>>>>
      </eqnarray*>

      So that

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<psi\><around*|(|v<rsub|1>,u+\<alpha\>\<cdot\>v|)>>|<cell|=>|<cell|g<rsub|u+\<alpha\>\<cdot\>v><around*|(|v<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|g<rsub|u+\<alpha\>\<cdot\>v><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.27.129>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>g<rsub|u+\<alpha\>\<cdot\>v><around*|(|u<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\><around*|(|g<rsub|u><around*|(|u<rsub|i>|)>+\<alpha\>\<cdot\>g<rsub|v><around*|(|u<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>g<rsub|u><around*|(|u<rsub|i>|)>+\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>g<rsub|v><around*|(|u<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.27.129>]>>>|<cell|g<rsub|u><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>|)>+\<alpha\>\<cdot\>g<rsub|v><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>u<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|g<rsub|u><around*|(|v<rsub|1>|)>+\<alpha\>\<cdot\>g<rsub|v><around*|(|v<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><around*|(|v<rsub|1>,u|)>+\<alpha\>\<cdot\>\<psi\><around*|(|v<rsub|1>,v|)>>>>>
      </eqnarray*>
    </description>

    proving that <math|\<psi\>> is multilinear or\ 

    <\equation>
      <label|eq 13.33.129>\<psi\>\<in\>Hom<around*|(|W<rsub|1>,W<rsub|2>;V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)>=Hom<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>,V<rsub|n+1>;V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)>
    </equation>

    By [eq: <reference|eq 13.24.129>] we have that there exist a

    <\equation>
      <label|eq 13.34.129>k\<in\>Hom<around*|(|P,V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)><text|
      such that >\<psi\>=k\<circ\>\<nu\>
    </equation>

    Let <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    and <math|v\<in\>V<rsub|n+1>> then as
    <math|\<otimes\><rsub|n>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>>
    we have that <math|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>
    so that <math|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v|)>\<in\>P>
    is in the domain of <math|k> and we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|k<around*|(|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.34.129>]>><rsub|<text|>>>|<cell|\<psi\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.32.129>]>>>|<cell|g<rsub|v><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.28.129>]>>>|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,v|)><eq-number><label|eq
      13.35.129>>>>>
    </eqnarray*>

    As <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>,P|)>>
    and <math|k\<in\>Hom<around*|(|P,V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)>>
    it follows that\ 

    <\equation*>
      k\<circ\>h\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>,V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)>
    </equation*>

    If <math|z\<in\>\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>>
    then there exist a <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>>
    such that <math|z=\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>>
    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|k\<circ\>h|)><around*|(|z|)>>|<cell|=>|<cell|<around*|(|k\<circ\>h|)><around*|(|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|k<around*|(|h<around*|(|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.31.129>]>>>|<cell|k<around*|(|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.35.129>]>>>|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|z<eq-number><label|eq
      13.36.129>>>>>
    </eqnarray*>

    Next if <math|z\<in\>V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>=span<around*|(|\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>|)>>
    there exist a finite <math|I\<subseteq\>\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>>
    and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>F>
    such that <math|z=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i>.
    Hence\ 

    <\equation*>
      <around*|(|k\<circ\>h|)><around*|(|z|)>=<around*|(|k\<circ\>h|)><around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)>=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\><around*|(|k\<circ\>h|)><around*|(|i|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 13.36.129>]>><big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i=z
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 13.37.129>k\<circ\>h=Id<rsub|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>>
    </equation>

    Again as <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>,P|)>>
    and <math|k\<in\>Hom<around*|(|P,V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)>>
    it follows that

    <\equation>
      <label|eq 13.38.129>h\<circ\>k\<in\>Hom<around*|(|P,P|)>
    </equation>

    Let <math|v=<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>v<rsub|i>>,
    <math|w\<in\>V<rsub|n+1>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|h<around*|(|k<around*|(|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v|)>,w|)>|)>|)>>|<cell|=>|<cell|h<around*|(|k<around*|(|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,w|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.35.129>]>>>|<cell|h<around*|(|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,w|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.31.129>]>>>|<cell|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,w|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v|)>,w|)><eq-number><label|eq
      13.39.129>>>>>
    </eqnarray*>

    Let <math|z\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>=span<around*|(|\<otimes\><rsub|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
    then by [theorem: <reference|linear span equivalence 1>] there exist a
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>F>
    such that <math|z=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>.
    Using [theorem: <reference|choice family on preimage>] there exist a
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,l|}>>
    <math|\<otimes\><rsub|n><around*|(|y<rsub|i>|)>=z<rsub|i>>. So given
    <math|w\<in\>V<rsub|n+1>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|h<around*|(|k<around*|(|\<nu\><around*|(|z,w|)>|)>|)>>|<cell|=>|<cell|h<around*|(|k<around*|(|\<nu\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>,w|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\><text|
      is multilinear>>>|<cell|h<around*|(|k<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>\<nu\><around*|(|z<rsub|i>,w|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>h<around*|(|k<around*|(|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|y<rsub|i>|)>,w|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.39.129>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>\<nu\><around*|(|\<otimes\><rsub|n><around*|(|y<rsub|i>|)>,w|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>\<nu\><around*|(|z<rsub|i>,w|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\><text|
      is multilinear>>>|<cell|\<nu\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>,w|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|z,w|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.40.129>\<forall\>z\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n><text|
      and >w\<in\>V<rsub|n+1><text| that >h<around*|(|k<around*|(|\<nu\><around*|(|z,w|)>|)>|)>=\<nu\><around*|(|z,w|)>
    </equation>

    Let <math|z\<in\><big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>> then
    <math|z=<around*|(|z<rsub|1>,z<rsub|2>|)>> with
    <math|z<rsub|1>\<in\>W<rsub|1>=V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>
    and <math|z<rsub|2>\<in\>V<rsub|n+1>> then\ 

    <\equation>
      <label|eq 13.41.129>h<around*|(|k<around*|(|\<nu\><around*|(|z|)>|)>|)>=h<around*|(|k<around*|(|\<nu\><around*|(|z<rsub|1>,z<rsub|2>|)>|)>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 13.40.129>]>>\<nu\><around*|(|z,w|)>=\<nu\><around*|(|z|)>
    </equation>

    If <math|z\<in\>P=span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,.2|}>>W<rsub|i>|)>|)>>
    then by [theorem: <reference|linear span equivalence 1>] there exists a
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,2|}>>W|)><rsub|i>>
    and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>F>
    such that <math|z=<big|sum><rsub|i\<in\><around*|[|1,\<ldots\>,l|]>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>.
    Using [theorem: <reference|choice family on preimage>] there exist a
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,.2|}>>W<rsub|i>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,l|}>> we have
    <math|z<rsub|i>=\<nu\><around*|(|y<rsub|i>|)>>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|h\<circ\>k|)><around*|(|z|)>>|<cell|=>|<cell|h<around*|(|k<around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|h<around*|(|k<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>h<around*|(|k<around*|(|z<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>h<around*|(|k<around*|(|\<nu\><around*|(|y<rsub|i>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.41.129>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>\<nu\><around*|(|y<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|z>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.42.129>h\<circ\>k=Id<rsub|P>
    </equation>

    Now we are ready to consruct the tensor product, starting with the
    multilinear mapping. Define [see eq: <reference|eq 13.22.129>,
    <reference|eq 13.34.129>]

    <\equation>
      <label|eq 13.43.129>\<otimes\>:<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>\<rightarrow\>V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1><text|
      by >\<otimes\><around*|(|z,v|)>=k<around*|(|\<nu\><around*|(|z,v|)>|)>
    </equation>

    If <math|i\<in\><around*|{|1,2|}>> we have for <math|\<alpha\>\<in\>F>
    and <math|u,v\<in\>W<rsub|i>> either:\ 

    <\description>
      <item*|<math|i=1>>Then as <math|W<rsub|1>=V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>
      we have <math|u,v\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>
      and, as <math|\<nu\>> is multilinear and <math|k> linear, we have for
      <math|v<rsub|2>\<in\>V<rsub|n+1>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<otimes\><around*|(|u+\<alpha\>\<cdot\>v,v<rsub|2>|)>>|<cell|=>|<cell|k<around*|(|\<nu\><around*|(|u+\<alpha\>\<cdot\>v,v<rsub|2>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\><text|
        is multilinear>>>|<cell|k<around*|(|\<nu\><around*|(|u,v<rsub|2>|)>+\<alpha\>\<cdot\>\<nu\><around*|(|v,v<rsub|2>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|k<text|
        is linear>>>|<cell|k<around*|(|\<nu\><around*|(|u,v<rsub|2>|)>|)>+\<alpha\>\<cdot\>k<around*|(|\<nu\><around*|(|v,v<rsub|2>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<otimes\><around*|(|u,v<rsub|2>|)>+\<alpha\>\<cdot\>\<otimes\><around*|(|v,v<rsub|2>|)>>>>>
      </eqnarray*>

      <item*|<math|i=2>>Then as <math|W<rsub|i>=V<rsub|n+1>> we have
      <math|u,v\<in\>V<rsub|n+1>> and, as <math|\<nu\>> is multilinear and
      <math|k> linear, that for <math|v<rsub|1>\<in\>V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<otimes\><around*|(|v<rsub|1>,u+\<alpha\>\<cdot\>v|)>>|<cell|=>|<cell|k<around*|(|\<nu\><around*|(|v<rsub|1>,u+\<alpha\>\<cdot\>v|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\><text|
        is multilinear>>>|<cell|k<around*|(|\<nu\><around*|(|v<rsub|1>,u|)>+\<alpha\>\<cdot\>\<nu\><around*|(|v<rsub|1>,v|)>|)>>>|<row|<cell|>|<cell|=>|<cell|k<around*|(|\<nu\><around*|(|v<rsub|1>,u|)>|)>+\<alpha\>\<cdot\>\<nu\><around*|(|v<rsub|1>,v|)>>>|<row|<cell|>|<cell|=>|<cell|\<otimes\><around*|(|v<rsub|1>,u|)>+\<alpha\>\<cdot\>\<otimes\><around*|(|v<rsub|1>,v|)>>>>>
      </eqnarray*>
    </description>

    proving that\ 

    <\equation>
      <label|eq 13.44.129>\<otimes\>\<in\>Hom<around*|(|W<rsub|1>,W<rsub|2>;V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)>=Hom<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>,V<rsub|n+1>;V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>|)>
    </equation>

    By the definition of <math|\<otimes\>> [see: <reference|eq 13.43.129>] we
    have <math|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>|)>\<subseteq\>V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>>
    proving by [theorems: <reference|linear span subsets>, <reference|linear
    span properties>] that\ 

    <\equation>
      <label|eq 13.45.129>span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>|)>|)>\<subseteq\>V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>
    </equation>

    If <math|v\<in\>V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>=span<around*|(|\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>|)>>
    then there exists <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\>F>
    such that\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>v<rsub|i>
    </equation*>

    If <math|i\<in\><around*|{|1,\<ldots\>,l|}>> then as
    <math|v<rsub|i>\<in\>\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>>
    there exists a <math|<around*|(|u<rsub|1>,\<ldots\>,u<rsub|n+1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>>
    such that

    <\eqnarray*>
      <tformat|<table|<row|<cell|v<rsub|i>>|<cell|=>|<cell|\<otimes\><rsub|n+1><around*|(|u<rsub|1>,\<ldots\>,u<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.37.129>]>>>|<cell|k<around*|(|h<around*|(|\<otimes\><rsub|n+1><around*|(|u<rsub|1>,\<ldots\>,u<rsub|n+1>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.31.129>]>>>|<cell|k<around*|(|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|u<rsub|1>,\<ldots\>,u<rsub|n>|)>,u<rsub|n+1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.43.129>]>>>|<cell|\<otimes\><around*|(|\<otimes\><rsub|n><around*|(|u<rsub|1>,\<ldots\>,u<rsub|n>|)>,u<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<in\>>|<cell|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,.2|}>>W<rsub|i>|)>>>>>
    </eqnarray*>

    which proves that <math|v\<in\>span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>|)>|)>>.
    Hence <math|V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>\<subseteq\>span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>|)>|)>>
    and combining this with [eq: <reference|eq 13.45.129>] gives\ 

    <\equation>
      <label|eq 13.46.129>V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>=span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>|)>|)>
    </equation>

    Let <math|\<theta\>\<in\>Hom<around*|(|W<rsub|1>,W<rsub|2>;U|)>=Hom<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>,V<rsub|n+1>;U|)>>
    then by [eq: <reference|eq 13.24.129>] there exists a

    <\equation>
      <label|eq 13.47.129>f\<in\>Hom<around*|(|P,U|)><text| such that
      >\<theta\>=f\<circ\>\<nu\>
    </equation>

    as <math|f\<in\>Hom<around*|(|P,U|)>> and
    <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>,P|)>>
    we have that\ 

    <\equation>
      <label|eq 13.48.129>g=f\<circ\>h\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>,U|)>
    </equation>

    Further if <math|z=<around*|(|z<rsub|1>,z<rsub|2>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,.2|}>>W<rsub|i>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|g\<circ\>\<otimes\>|)><around*|(|z|)>>|<cell|=>|<cell|g<around*|(|\<otimes\><around*|(|z<rsub|1>,z<rsub|2>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.43.129>]>>>|<cell|g<around*|(|k<around*|(|\<nu\><around*|(|z<rsub|1>,z<rsub|2>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.48.129>]>>>|<cell|f<around*|(|h<around*|(|k<around*|(|\<nu\><around*|(|z<rsub|1>,z<rsub|2>|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.42.129>]>>>|<cell|f<around*|(|\<nu\><around*|(|z<rsub|1>,z<rsub|2>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.47.129>]>>>|<cell|\<theta\><around*|(|z<rsub|1>,z<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|\<theta\><around*|(|z|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.49.129>\<forall\>\<theta\>\<in\>Hom<around*|(|W<rsub|1>,W<rsub|2>;U|)><text|
      we have >\<exists\>g\<in\>Hom<around*|(|V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>,U|)><text|
      such that >\<theta\>=g\<circ\>\<otimes\>
    </equation>

    To conclude using [eqs: <reference|eq 13.43.129>, <reference|eq
    13.44.129>, <reference|eq 13.46.129>, <reference|eq 13.49.129>] it
    follows that\ 

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>,\<otimes\>|\<rangle\>><text|
      is a tensor product of >W<rsub|1>,W<rsub|2>
    </equation*>

    or using [convention: <reference|tensor product convention>]

    <\equation*>
      <around*|(|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1><text|
      is a tensor product and >V<rsub|1>\<otimes\><rsub|n+1>\<ldots\>\<otimes\><rsub|n+1>V<rsub|n+1>=<around*|(|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation*>
  </proof>

  <\corollary>
    <label|tensor product induction argument (2)>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    be family of vector spaces over a field <math|F> and
    <math|<around*|\<langle\>|V<rsub|1>\<otimes\><rsub|n+1>,\<ldots\>,\<otimes\><rsub|n+1>V<rsub|n+1>,\<otimes\><rsub|n+1>|\<rangle\>>>
    a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n+1>> then there
    exist a tensor product of <math|<around*|\<langle\>|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>,\<otimes\><rsub|n>|\<rangle\>>>
    of <math|V<rsub|1>,\<ldots\>,V<rsub|n>> and a tensor product
    <math|<around*|\<langle\>|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>,\<otimes\>|\<rangle\>>>
    of \ <math|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>,V<rsub|n+1>>
    such that\ 

    <\equation*>
      V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>=<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation*>
  </corollary>

  <\proof>
    By [theorem: <reference|tensor product of spaces existence (1)>] there
    exist a tensor product <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
    of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>, hence using the previous theorem
    [theorem: <reference|tensor product induction argument>] there exist also
    a tensor product <math|<around*|\<langle\>|<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>,\<otimes\>|\<rangle\>>>
    of <math|V<rsub|1>\<otimes\><rsub|n>\<ldots\>\<otimes\><rsub|n>V<rsub|n>.V<rsub|n+1>>
    such that

    <\equation*>
      V<rsub|1>\<otimes\><rsub|n+1>\<cdots\>\<otimes\><rsub|n+1>V<rsub|n+1>=<around*|(|V<rsub|1>\<otimes\><rsub|n>\<cdots\>\<otimes\><rsub|n>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
    </equation*>
  </proof>

  <\lemma>
    <label|tensor finite family of finite sets>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of finite sets then <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    is finite and <math|card<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>card<around*|(|X<rsub|i>|)>>
  </lemma>

  <\proof>
    We use induction to proof this, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If <around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is a family of finite sets then <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>
      <text| is finite and> card<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>card<around*|(|X<rsub|i>|)>>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Let <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>>
      is such that <math|X<rsub|1>> is finite. By [example:
      <reference|product of family with one element>] we have that
      <math|<big|prod><rsub|i\<in\><around*|{|1|}>>X<rsub|i>> is bijective
      with <math|X<rsub|1>>, hence <math|<big|prod><rsub|i\<in\><around*|{|1|}>>X<rsub|i>>
      is finite and <math|card<around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>X<rsub|i>|)>=card<around*|(|X<rsub|1>|)>=<big|prod><rsub|i\<in\><around*|{|1|}>>card<around*|(|X<rsub|i>|)>>.
      so <math|1\<in\>S>\ 

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
      be family of finite sets. As <math|n\<in\>S> we have that\ 

      <\equation>
        <label|eq 13.50.129><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><text|
        is finite and >card<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>card<around*|(|X<rsub|i>|)>
      </equation>

      Using [theorem: <reference|complex cardinality properties>] and the
      fact that <math|X<rsub|n+1>> is finite we have that\ 

      <\equation*>
        <around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>\<times\>X<rsub|n+1><text|
        is >finite<text| and >card<around*|(|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>\<times\>X<rsub|n+1>|)>=card<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>\<cdot\>card<around*|(|X<rsub|n+1>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 13.50.129>]>><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>card<around*|(|X<rsub|i>|)>
      </equation*>

      By [theorem: <reference|finite product of sets bijection>]
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>X> is
      bijective with <math|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>\<times\>X<rsub|n+1>><math|>
      so that <math|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>\<times\>X<rsub|n+1>>
      is finite and <math|card<around*|(|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>\<times\>X<rsub|n+1>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>card<around*|(|X<rsub|i>|)>>
      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  We introduce now the concept of a multi-index\ 

  <\definition>
    <label|tensor multi-index>Let <math|k\<in\>\<bbb-N\>,<around*|{|n<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<bbb-N\>>
    be finite family of natural numbers then set of multi-indexes named
    <math|\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>> is defined by

    <\equation*>
      \<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><around*|{|1,\<ldots\>,n<rsub|i>|}>
    </equation*>

    Using the previous lemma [lemma: <reference|tensor finite family of
    finite sets>] we have that that\ 

    <\equation*>
      card<around*|(|\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>n<rsub|i>
    </equation*>
  </definition>

  <\example>
    <math|\<Gamma\><around*|(|2,3|)>=<around*|{|<around*|(|1,1|)>,<around*|(|1,2|)>,<around*|(|1,3|)>,<around*|(|2,1|)>,<around*|(|2,2|)>,<around*|(|2,3|)>|}>>
  </example>

  <\theorem>
    <label|tensor multilinear mapping sum>Let <math|k\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    be a finite family of vector space over a field <math|F>, <math|V> a
    vector space over the same field, <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|k>;V|)>>
    a multilinear mapping, <math|<around*|{|n<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<bbb-N\>>
    and <math|<around*|{|w<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>><rsub|>\<subseteq\>V<rsub|i>>,
    <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>w<rsub|1,j>,\<ldots\>,<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k>|}>>w<rsub|k,j>|)>>|<cell|=>|<cell|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>|)>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    We prove this by induction on <math|k>, so let\ 

    <\equation*>
      S=<around*|{|k\<in\>\<bbb-N\>\|<text|If
      >\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|k>;V|)>,<around*|{|n<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>N,i\<in\><around*|{|1,\<ldots\>,m|}>,<around*|{|w<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>><text|
      then >\<varphi\><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>w<rsub|1,j>,\<ldots\>,<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k>|}>>w<rsub|k,j>|)>=<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Define <math|\<tau\>:<around*|{|1,\<ldots\>,n<rsub|1>|}>\<rightarrow\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|1>|)>=<big|prod><rsub|i\<in\><around*|{|1|}>><around*|{|1,\<ldots\>,n<rsub|i>|}>>
      where <math|\<tau\><around*|(|i|)>> is defined by
      <math|\<tau\><around*|(|i|)>=<around*|(|i|)>\<Rightarrow\>\<tau\><around*|(|i|)><rsub|1>=\<tau\><around*|(|i|)><around*|(|1|)>=i>
      then we have:\ 

      <\description>
        <item*|injectivity>If <math|\<tau\><around*|(|i|)>=\<tau\><around*|(|j|)>>
        then <math|i=\<tau\><around*|(|i|)><around*|(|1|)>=\<tau\><around*|(|j|)><around*|(|1|)>=j>

        <item*|surjectivity>If <math|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|1>|)>>
        then <math|\<gamma\>:<around*|{|1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|1>|}>>.
        Take <math|i=\<gamma\><around*|(|1|)>\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>
        then <math|\<forall\>j\<in\><around*|{|1|}>> we have
        <math|\<tau\><around*|(|i|)><around*|(|j|)>=i=\<gamma\><around*|(|1|)>=\<gamma\><around*|(|j|)>>
        proving that <math|\<tau\><around*|(|i|)>=\<gamma\>>.
      </description>

      proving that

      <\equation*>
        \<tau\>:<around*|{|1,\<ldots\>,n<rsub|1>|}>\<rightarrow\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|1>|)><text|
        is a bijection>
      </equation*>

      Let <math|<around*|{|w<rsub|1,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>V<rsub|1>>
      and <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|1>;V|)>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1><rsub|>|}>>w<rsub|1,j>|)>>|<cell|\<equallim\><rsub|\<varphi\><text|
        is multilinear>>>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<varphi\><around*|(|w<rsub|1,j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<varphi\><around*|(|w<rsub|1,\<tau\><around*|(|j|)><around*|(|1|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|1>|)>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>|)>>>>>
      </eqnarray*>

      proving that <math|1\<in\>S>.

      <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>Let
      <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|k+1>;V|)>>,
      <math|<around*|{|n<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>\<subseteq\>\<bbb-N\>>,
      <math|<around*|{|w<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>>
      where <math|i\<in\><around*|{|1,\<ldots\>,k+1|}>>. Define\ 

      <\equation*>
        \<psi\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>\<rightarrow\>V<text|
        by >\<psi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|k>,<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>>w<rsub|k+1,j>|)>
      </equation*>

      then trivially <math|\<psi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|k>;V|)>>.
      Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>w<rsub|1,j>,\<ldots\>,<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>>w<rsub|k+1,j>|)>>|<cell|=>|<cell|>>|<row|<cell|\<psi\><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>w<rsub|1,j>,\<ldots\>,<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k>|}>>w<rsub|k,j>|)>>|<cell|\<equallim\><rsub|k\<in\>S>>|<cell|>>|<row|<cell|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>\<psi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>,<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>>w<rsub|k+1,j>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k+1>|)>><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>,w<rsub|k+1,j>|)>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum index is a product>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|<around*|(|\<gamma\>,j|)>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>\<times\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>,w<rsub|k+1,j>|)>>|<cell|>|<cell|<eq-number><label|eq
        13.51.129>>>>>
      </eqnarray*>

      Define now\ 

      <\equation*>
        \<chi\>:\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>\<times\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>\<rightarrow\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k+1>|)>
      </equation*>

      where\ 

      <\equation*>
        \<chi\><around*|(|\<gamma\>,i|)><text| is defined by
        >\<chi\><around*|(|\<gamma\>,i|)><around*|(|j|)>=<choice|<tformat|<table|<row|<cell|i<text|
        if >j=k+1>>|<row|<cell|\<gamma\><around*|(|j|)><text| if
        >j\<in\><around*|{|1,\<ldots\>,k|}>>>>>>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>If <math|\<chi\><around*|(|\<gamma\>,r|)>=\<chi\><around*|(|\<zeta\>,s|)>>
        then <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,k|}>> we have

        <\equation*>
          \<gamma\><around*|(|j|)>=\<chi\><around*|(|\<gamma\>,r|)><around*|(|j|)>=\<chi\><around*|(|\<zeta\>,s|)><around*|(|j|)>=\<zeta\><around*|(|j|)>
        </equation*>

        proving that <math|\<gamma\>=\<zeta\>>. Further
        <math|><math|r=\<chi\><around*|(|\<gamma\>,r|)><around*|(|k+1|)>=\<chi\><around*|(|\<zeta\>,s|)><around*|(|k+1|)>=s>
        so that we have that <math|<around*|(|\<gamma\>,r|)>=<around*|(|\<zeta\>,s|)>>.

        <item*|surjectivity>If <math|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k+1>|)>>
        take then <math|\<zeta\>=\<gamma\><rsub|\|<around*|{|1,\<ldots\>,k|}>>>
        and <math|r=\<gamma\><around*|(|k+1|)>> then we have
        <math|\<chi\><around*|(|\<zeta\>,r|)><around*|(|j|)>=<choice|<tformat|<table|<row|<cell|r<text|
        if >j=k+1>>|<row|<cell|\<zeta\><around*|(|j|)><text| if
        >j\<in\><around*|{|1,\<ldots\>,k|}>>>>>>=<choice|<tformat|<table|<row|<cell|\<gamma\><around*|(|k+1|)><text|
        if >j\<in\>k+1>>|<row|<cell|\<gamma\><around*|(|j|)><text| if
        >j\<in\><around*|{|1,\<ldots\>,k|}>>>>>>=\<gamma\><around*|(|j|)>>.
        Hence <math|\<chi\><around*|(|\<zeta\>,r|)>=\<gamma\>> proving
        surjectivity.
      </description>

      Hence <math|\<chi\>:\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>\<times\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>\<rightarrow\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k+1>|)>>
      is a bijection. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|\<gamma\>,j|)>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>\<times\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>,w<rsub|k+1,j>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|<around*|(|\<gamma\>,j|)>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>\<times\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>>\<varphi\><around*|(|w<rsub|1,\<chi\><around*|(|\<gamma\>,j|)><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<chi\><around*|(|\<gamma\>,j|)><around*|(|k|)>>,w<rsub|k+1,\<chi\><around*|(|\<gamma\>,j|)><around*|(|k+1|)>>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k+1>|)>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k+1,\<gamma\><around*|(|k+1|)>>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      which combined with [eq: <reference|eq 13.51.129>] gives\ 

      <\equation*>
        \<varphi\><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>w<rsub|1,j>,\<ldots\>,<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k+1>|}>>w<rsub|k+1,j>|)>=<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k+1>|)>>\<varphi\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k+1,\<gamma\><around*|(|k+1|)>>|)>
      </equation*>

      proving that <math|k+1\<in\>S>.
    </description>
  </proof>

  <\lemma>
    <label|tensor product and sum of vector space>Let
    <math|k\<in\>\<bbb-N\>>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of vector spaces over a field <math|F>,<space|4em>
    <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
    a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>>,
    \ <math|<around*|{|n<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<bbb-N\>>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>> a family
    <math|<around*|{|W<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>>
    a satisfying\ 

    <\equation*>
      <text|<math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}><text|
      >W<rsub|i,j><text| is a sub-space of >V<rsub|i>>>
    </equation*>

    and

    <\equation*>
      V<rsub|i>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>W<rsub|i,j><text|
      [see definition ><reference|direct sum of sets><text|]>
    </equation*>

    then

    <\equation*>
      V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|k>=<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>
    </equation*>

    where <math|\<forall\>\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>\ 

    <\equation*>
      W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>=span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>W<rsub|i,\<gamma\><around*|(|i|)>>|)>|)>
    </equation*>

    and\ 

    <\equation*>
      <around*|\<langle\>|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>,\<otimes\><rsub|\|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>W<rsub|i,\<gamma\><around*|(|i|)>>>|\<rangle\>><text|
      is a tensor product of <math|W<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,W<rsub|k,\<gamma\><around*|(|k|)>>>>
    </equation*>

    with

    <\equation*>
      W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>\<subseteq\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
    </equation*>

    [see theorem: <reference|tensor sub spaces>].\ 
  </lemma>

  <\proof>
    Let <math|v=<around*|(|v<rsub|1>,\<ldots\>,v<rsub|k>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>>
    then by the hypothesis we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
    that there exist a <math|<around*|{|w<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>\<subseteq\>W<rsub|i>>
    such that <math|v<rsub|i>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>w<rsub|i,j>>.
    As <math|\<otimes\>> is multilinear we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|k><rsub|>|)>>|<cell|=>|<cell|\<otimes\><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>w<rsub|1,j>,\<ldots\>,<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|k>|}>>w<rsub|k,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|tensor multilinear mapping
      sum>]>>>|<cell|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\>n<rsub|1>,\<ldots\>,n<rsub|k>>\<otimes\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>|)><eq-number><label|eq
      13.52.130>>>>>
    </eqnarray*>

    As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>,
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>> we have
    <math|w<rsub|i,\<gamma\><around*|(|i|)>>\<in\>W<rsub|i,\<gamma\><around*|(|i|)>>>
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<otimes\><around*|(|w<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,w<rsub|k,\<gamma\><around*|(|k|)>>|)>>|<cell|\<in\>>|<cell|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>W<rsub|i,\<gamma\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>W<rsub|i,\<gamma\><around*|(|i|)>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>>>>>
    </eqnarray*>

    So using the above, [eq: <reference|eq 13.52.130>], the definition of the
    sum of sets <math|<text| [see definition ><reference|direct sum of
    sets><text|]>> it follows that\ 

    <\equation*>
      \<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|k><rsub|>|)>\<in\><big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>
    </equation*>

    or\ 

    <\equation*>
      \<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>|)>\<subseteq\><big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>
    </equation*>

    which using \ [theorem: <reference|linear span subsets>] gives\ 

    <\equation*>
      V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|k>=span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>|)>|)>\<subseteq\>span<around*|(|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>|)>
    </equation*>

    By \ [theorem: <reference|tensor sub spaces>]
    <math|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>>
    is a sub-space of <math|V=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|k>>
    so that by [theorem: <reference|direct sum of subspaces>]
    <math|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>>
    is a sub-space of <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>.
    Hence by [theorems: <reference|linear span subsets>, <reference|linear
    span properties>]

    <\equation*>
      <big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>=span<around*|(|<big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>|)>\<subseteq\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|k>
    </equation*>

    Combining the last two results proves then

    <\equation*>
      <big|sum><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|n<rsub|1>,\<ldots\>,n<rsub|k>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|k,\<gamma\><around*|(|k|)>>=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|k>
    </equation*>
  </proof>

  <\lemma>
    <label|tensor product and direct sum of two vector spaces>Let
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>>
    be a family of two vector spaces over a field and
    <math|<around*|\<langle\>|V<rsub|1>\<otimes\>V<rsub|2>,\<otimes\>|\<rangle\>>>
    a tensor product of <math|V<rsub|1>>,<math|V<rsub|2>> then

    <\enumerate>
      <item>If <math|V<rsub|1>=W<rsub|1>\<oplus\>W<rsub|2>>
      [<math|W<rsub|1>,W<rsub|2>> sub-spaces of <math|V<rsub|1>>] then we
      have that\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<around*|(|W<rsub|1>\<otimes\>V<rsub|2>|)>\<oplus\><around*|(|W<rsub|2>\<otimes\>V<rsub|2>|)>
      </equation*>

      where we have used [theorem: <reference|tensor sub spaces>] to define

      <\equation*>
        W<rsub|1>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|W<rsub|1>\<cdot\>V<rsub|2>|)>|)>\<subseteq\>V<rsub|1>\<otimes\>V<rsub|2><text|,
        >W<rsub|2>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|W<rsub|2>\<cdot\>V<rsub|2>|)>|)>\<subseteq\>V<rsub|1>\<otimes\>V<rsub|2>
      </equation*>

      so that\ 

      <\equation*>
        <around*|\<langle\>|W<rsub|1>\<otimes\>V<rsub|2>,\<otimes\><rsub|\|W<rsub|1>\<cdot\>V<rsub|2>>|\<rangle\>><text|
        and ><around*|\<langle\>|W<rsub|2>\<otimes\>V<rsub|2>,\<otimes\><rsub|\|W<rsub|2>\<cdot\>V<rsub|2>>|\<rangle\>><text|
        are tensor products of <math|W<rsub|1>,V<rsub|2><text| and
        >W<rsub|2>,V<rsub|2>>>
      </equation*>

      <item>If <math|V<rsub|2>=W<rsub|1>\<oplus\>W<rsub|2>>
      [<math|W<rsub|1>,W<rsub|2>> sub-spaces of <math|><math|V<rsub|2>>] then
      we have that\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<around*|(|V<rsub|1>\<otimes\>W<rsub|1>|)>\<oplus\><around*|(|V<rsub|2>\<otimes\>W<rsub|2>|)>
      </equation*>

      where we have used [theorem: <reference|tensor sub spaces>] to define

      <\equation*>
        V<rsub|1>\<otimes\>W<rsub|1>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>V<rsub|1>|)>|)>\<subseteq\>V<rsub|1>\<otimes\>V<rsub|2><text|,
        >V<rsub|1>\<otimes\>W<rsub|2>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>W<rsub|2>|)>|)>\<subseteq\>V<rsub|1>\<otimes\>V<rsub|2>
      </equation*>

      so that\ 

      <\equation*>
        <around*|\<langle\>|V<rsub|1>\<otimes\>W<rsub|1>,\<otimes\><rsub|\|V<rsub|1>\<cdot\>W<rsub|1>>|\<rangle\>><text|
        and ><around*|\<langle\>|V<rsub|1>\<otimes\>W<rsub|2>,\<otimes\><rsub|\|V<rsub|1>\<cdot\>W<rsub|2>>|\<rangle\>><text|
        are tensor products of <math|V<rsub|1>,W<rsub|1><text| and
        >V<rsub|1>,W<rsub|2>>>
      </equation*>
    </enumerate>

    Here we use [definition: <reference|finite product of two sets>] for
    <math|W<rsub|1>\<cdot\>V<rsub|2>>, <math|W<rsub|2>\<cdot\>V<rsub|2>>,
    <math|V<rsub|1>\<cdot\>W<rsub|1>> and
    <math|><math|V<rsub|1>\<cdot\>W<rsub|2>>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|v=<around*|(|v<rsub|1>,v<rsub|2>|)>\<in\>V<rsub|1>\<times\>V<rsub|2>>
      then as <math|V<rsub|1>=W<rsub|1>\<oplus\>W<rsub|2>> there exists
      <with|font-series|bold|unique> <math|w<rsub|1>\<in\>W<rsub|1>>,
      <math|w<rsub|2>\<in\>W<rsub|2>> such that
      <math|v<rsub|1>=w<rsub|1>+w<rsub|2>>. Hence
      <math|\<otimes\><around*|(|v|)>=\<otimes\><around*|(|w<rsub|1>+w<rsub|2>,v<rsub|2>|)>=\<otimes\><around*|(|w<rsub|1>,v<rsub|2>|)>+\<otimes\><around*|(|w<rsub|2>,v<rsub|2>|)>>
      where

      <\equation*>
        \<otimes\><around*|(|w<rsub|1>,v<rsub|2>|)>\<in\>\<otimes\><around*|(|W<rsub|1>\<cdot\>V<rsub|2>|)>\<subseteq\>span<around*|(|\<otimes\><around*|(|W<rsub|1>\<cdot\>V<rsub|2>|)>|)>=W<rsub|1>\<otimes\>V<rsub|2>
      </equation*>

      and

      <\equation*>
        \<otimes\><around*|(|w<rsub|2>,v<rsub|2>|)>\<in\>\<otimes\><around*|(|W<rsub|2>\<cdot\>V<rsub|2>|)>\<subseteq\>span<around*|(|\<otimes\><around*|(|W<rsub|2>\<cdot\>V<rsub|2>|)>|)>=W<rsub|2>\<otimes\>V<rsub|2>
      </equation*>

      hence <math|\<otimes\><around*|(|v|)>\<in\>W<rsub|1>\<otimes\>V<rsub|2>+W<rsub|2>\<otimes\>V<rsub|2>>.
      So <math|\<otimes\>*<around*|(|V<rsub|1>\<cdot\>V<rsub|2>|)>\<subseteq\>W<rsub|1>\<otimes\>V<rsub|2>+W<rsub|2>\<otimes\>V<rsub|2>>
      which using \ [theorem: <reference|linear span subsets>] gives\ 

      <\equation>
        <label|eq 13.53.129>V<rsub|1>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>V<rsub|2>|)>|)>\<subseteq\>span<around*|(|W<rsub|1>\<otimes\>V<rsub|2>+W<rsub|2>\<otimes\>V<rsub|2>|)>
      </equation>

      As <math|><math|W<rsub|1>\<otimes\>V<rsub|2>> and
      <math|W<rsub|2>\<otimes\>V<rsub|2>> are sub spaces of
      <math|V<rsub|1>\<otimes\>V<rsub|2>> [see theorem: <reference|tensor sub
      spaces>] we have by [theorem: <reference|direct sum of subspaces>] that
      <math|W<rsub|1>\<otimes\>V<rsub|2>+W<rsub|2>\<otimes\>V<rsub|2>> is a
      sub-space of <math|V<rsub|1>\<otimes\>V<rsub|2>>, hence using
      [theorems: <reference|linear span subsets>, <reference|linear span
      properties>] we have\ 

      <\equation*>
        W<rsub|1>\<otimes\>V<rsub|2>+W<rsub|2>\<otimes\>V<rsub|2>=span<around*|(|W<rsub|1>\<otimes\>V<rsub|2>+W<rsub|2>\<otimes\>V<rsub|2>|)>\<subseteq\>V<rsub|1>\<otimes\>V<rsub|2>
      </equation*>

      combining this with [eq: <reference|eq 13.53.129>] gives then

      <\equation>
        <label|eq 13.54.129>W<rsub|1>\<otimes\>V<rsub|2>+W<rsub|2>\<otimes\>V<rsub|2>=V<rsub|1>\<otimes\>V<rsub|2>
      </equation>

      Assume now that there exist a <math|x\<in\><around*|(|W<rsub|1>\<otimes\>V<rsub|2>|)><big|cap><around*|(|W<rsub|2>\<otimes\>V<rsub|2>|)>>
      with <math|x\<neq\>0>. Using [theorem: <reference|tensor product linear
      independency>] there exists <math|<around*|{|w<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>\<subseteq\>W<rsub|1>>,
      <math|<around*|{|v<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>\<subseteq\>V<rsub|2>>,
      <math|<around*|{|w<rsub|2,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>\<subseteq\>W<rsub|2>>,
      <math|<around*|{|v<rsub|2,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>\<subseteq\>V<rsub|2>>
      such that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>w<rsub|1,i>\<otimes\>v<rsub|1,i><eq-number><label|eq
        13.55.130>>>|<row|<cell|x>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>w<rsub|2,i>\<otimes\>v<rsub|2,i><eq-number><label|eq
        13.56.130>>>>>
      </eqnarray*>

      and <math|<around*|{|w<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>\<subseteq\>W<rsub|1>>,
      <math|<around*|{|v<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>\<subseteq\>V<rsub|2>>,
      <math|<around*|{|w<rsub|2,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>\<subseteq\>W<rsub|2>>,
      <math|<around*|{|v<rsub|2,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>\<subseteq\>V<rsub|2>>
      are linear independent. Using [theorem: <reference|linear mapping for
      independent set>] there exist a <math|L\<in\>Hom<around*|(|V<rsub|2>,F|)>>
      such that <math|L<around*|(|v<rsub|1,1>|)>=1> and
      <math|\<forall\>i\<in\><around*|{|2,\<ldots\>,k<rsub|x>|}>>
      <math|L<around*|(|v<rsub|1,i>|)>=0>. Let now
      <math|K\<in\>Hom<around*|(|V<rsub|1>,F|)>> then\ 

      <\equation*>
        K\<cdot\>L:V<rsub|1>\<times\>V<rsub|2>\<rightarrow\>F<text| by
        ><around*|(|K\<cdot\>L|)><around*|(|v<rsub|1>,v<rsub|2>|)>=K<around*|(|v<rsub|1>|)>\<cdot\>L<around*|(|v<rsub|2>|)>
      </equation*>

      then from the linearity of <math|K,L> it follows that
      <math|K\<cdot\>L\<in\>Hom<around*|(|V<rsub|1>,V<rsub|2>;F|)>>. As
      <math|<around*|\<langle\>|V<rsub|1>\<otimes\>V<rsub|2>,\<otimes\>|\<rangle\>>>
      is a tensor product of <math|V<rsub|1>>, <math|V<rsub|2>> there exist a
      <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>V<rsub|2>,F|)>> such that\ 

      <\equation>
        <label|eq 13.57.130>K\<cdot\>L=h\<circ\>\<otimes\>
      </equation>

      <\eqnarray*>
        <tformat|<table|<row|<cell|h<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.55.130>]>>>|<cell|h<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>w<rsub|1,i>\<otimes\>v<rsub|1,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|h<text|
        is linear>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>h<around*|(|w<rsub|1,i>\<otimes\>v<rsub|1,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>h<around*|(|\<otimes\><around*|(|w<rsub|1,i>,v<rsub|1,i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.57.130>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>><around*|(|K\<cdot\>L|)><around*|(|w<rsub|1,i>,v<rsub|1,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>K<around*|(|w<rsub|1,i>|)>\<cdot\>L<around*|(|v<rsub|1,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|2,\<ldots\>,k<rsub|x>|}>>K<around*|(|w<rsub|1,i>|)>\<cdot\>L<around*|(|v<rsub|1,i>|)>+<big|sum><rsub|i\<in\><around*|{|1|}>>K<around*|(|w<rsub|1,i>|)>\<cdot\>L<around*|(|v<rsub|1,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|2,\<ldots\>,k<rsub|x>|}>>K<around*|(|w<rsub|1,i>|)>\<cdot\>L<around*|(|v<rsub|1,i>|)>+K<around*|(|w<rsub|1,1>|)>\<cdot\>L<around*|(|v<rsub|1,1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|2,\<ldots\>,k<rsub|x>|}>>0\<cdot\>L<around*|(|v<rsub|1,i>|)>+K<around*|(|w<rsub|1,1>|)>\<cdot\>1>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|K<around*|(|w<rsub|1,1>|)>>>>>
      </eqnarray*>

      but we have also\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|h<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|eq 13.56.130>]>>>|<cell|h<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>w<rsub|2,i>\<otimes\>v<rsub|2,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>h<around*|(|w<rsub|2,i>\<otimes\>v<rsub|2,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>h<around*|(|\<otimes\><around*|(|w<rsub|2,i>,v<rsub|2,i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.57.130>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>><around*|(|K\<cdot\>L|)><around*|(|<around*|(|w<rsub|2,i>,v<rsub|2,i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>K<around*|(|w<rsub|2,i>|)>\<cdot\>L<around*|(|v<rsub|2,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>K<around*|(|w<rsub|2,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|K<text|
        is linear>>>|<cell|K<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>w<rsub|2,i>|)>>>>>
      </eqnarray*>

      so we have\ 

      <\equation>
        <label|eq 13.58.130>\<forall\>K\<in\>Hom<around*|(|V<rsub|1>,F|)><text|
        we have >K<around*|(|w<rsub|1,1>|)>=K<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>w<rsub|2,i>|)>
      </equation>

      So we can apply [theorem: <reference|linear mapping
      L(x)=L(y)=\<gtr\>x=y>] giving that <math|w<rsub|1,1>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>w<rsub|2,i>>.
      As <math|w<rsub|1,1>\<in\>W<rsub|1>> and
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>w<rsub|2,i>\<in\>W<rsub|2>>
      [as <math|W<rsub|2>> is a sub-space of <math|V<rsub|1>>] it follows
      that

      <\equation*>
        w<rsub|1,1>\<in\>W<rsub|1><big|cap>W<rsub|2>\<equallim\><rsub|V<rsub|1>=W<rsub|1>\<oplus\>W<rsub|2>><rsub|>=<around*|{|0|}>
      </equation*>

      proving that <math|w<rsub|1,1>=0>. However this means by [theorem:
      <reference|linear dependent family condition>] that
      <math|<around*|{|w<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>>
      is linear dependent contradicting the fact that
      <math|<around*|{|w<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>>
      is linear independent. Hence the assumption <math|x\<neq\>0> is wrong
      and we must have that <math|x=0> or
      <math|<around*|(|W<rsub|1>\<otimes\>V<rsub|2>|)><big|cap><around*|(|W<rsub|2>\<otimes\>V<rsub|2>|)>\<subseteq\><around*|{|0|}>>.
      This together with fact that by <math|W<rsub|1>\<otimes\>V<rsub|2>>,
      <math|W<rsub|2>\<otimes\>V<rsub|2>> are vector spaces so that
      <math|0\<in\><around*|(|W<rsub|1>\<otimes\>V<rsub|2>|)><big|cap><around*|(|W<rsub|2>\<otimes\>V<rsub|2>|)>>
      proves that\ 

      <\equation*>
        <around*|(|W<rsub|1>\<otimes\>V<rsub|2>|)><big|cap><around*|(|W<rsub|2>\<otimes\>V<rsub|2>|)>=<around*|{|0|}>
      </equation*>

      which together with [eq: <reference|eq 13.53.129>] proves that\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<around*|(|W<rsub|1>\<otimes\>V<rsub|2>|)>\<oplus\><around*|(|W<rsub|2>\<otimes\>V<rsub|2>|)>
      </equation*>

      <item>The proof is simular to the proof of (1). If
      <math|v=<around*|(|v<rsub|1>,v<rsub|2>|)>\<in\>V<rsub|1>\<cdot\>V<rsub|2>>
      then as <math|V<rsub|2>=W<rsub|1>\<oplus\>W<rsub|2>> there exists
      <with|font-series|bold|unique> <math|w<rsub|1>\<in\>W<rsub|1>>,
      <math|w<rsub|2>\<in\>W<rsub|2>> such that
      <math|v<rsub|2>=w<rsub|1>+w<rsub|2>>. Hence
      <math|\<otimes\><around*|(|v|)>=\<otimes\><around*|(|v<rsub|1>,w<rsub|1>+w<rsub|2>|)>=\<otimes\><around*|(|v<rsub|1>,w<rsub|1>|)>+\<otimes\><around*|(|v<rsub|1>,w<rsub|2>|)>>
      where

      <\equation*>
        \<otimes\><around*|(|v<rsub|1>,w<rsub|1>|)>\<in\>\<otimes\><around*|(|V<rsub|1>\<cdot\>W<rsub|1>|)>\<subseteq\>span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>W<rsub|1>|)>|)>=V<rsub|1>\<otimes\>W<rsub|1>
      </equation*>

      and

      <\equation*>
        \<otimes\><around*|(|v<rsub|1>,w<rsub|2>|)>\<in\>\<otimes\><around*|(|V<rsub|1>\<cdot\>W<rsub|2>|)>\<subseteq\>span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>W<rsub|2>|)>|)>=V<rsub|1>\<otimes\>W<rsub|2>
      </equation*>

      hence <math|\<otimes\><around*|(|v|)>\<in\>V<rsub|1>\<otimes\>W<rsub|1>+V<rsub|1>\<otimes\>W<rsub|2>>.
      So <math|\<otimes\>*<around*|(|V<rsub|1>\<cdot\>V<rsub|2>|)>\<subseteq\>V<rsub|1>\<otimes\>W<rsub|1>+V<rsub|1>\<otimes\>W<rsub|2>>
      which using \ [theorem: <reference|linear span subsets>] gives\ 

      <\equation>
        <label|eq 13.59.130>V<rsub|1>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>V<rsub|2>|)>|)>\<subseteq\>span<around*|(|V<rsub|1>\<otimes\>W<rsub|1>+V<rsub|1>\<otimes\>W<rsub|2>|)>
      </equation>

      As <math|><math|V<rsub|1>\<otimes\>W<rsub|1>> and
      <math|V<rsub|1>\<otimes\>W<rsub|2>> are sub spaces of
      <math|V<rsub|1>\<otimes\>V<rsub|2>> [see theorem: <reference|tensor sub
      spaces>] we have by [theorem: <reference|direct sum of subspaces>] that
      <math|V<rsub|1>\<otimes\>W<rsub|1>+V<rsub|1>\<otimes\>W<rsub|2>> is a
      sub-space of <math|V<rsub|1>\<otimes\>V<rsub|2>>, hence using
      [theorems: <reference|linear span subsets>, <reference|linear span
      properties>] we have\ 

      <\equation*>
        V<rsub|1>\<otimes\>W<rsub|1>+V<rsub|1>\<otimes\>W<rsub|2>=span<around*|(|V<rsub|1>\<otimes\>W<rsub|1>+V<rsub|1>\<otimes\>W<rsub|2>|)>\<subseteq\>V<rsub|1>\<otimes\>V<rsub|2>
      </equation*>

      combining this with [eq: <reference|eq 13.59.130>] gives then

      <\equation>
        <label|eq 13.60.130>W<rsub|1>\<otimes\>V<rsub|2>+W<rsub|2>\<otimes\>V<rsub|2>=V<rsub|1>\<otimes\>V<rsub|2>
      </equation>

      Assume now that there exist a <math|x\<in\><around*|(|V<rsub|1>\<otimes\>W<rsub|1>|)><big|cap><around*|(|V<rsub|1>\<otimes\>W<rsub|2>|)>>
      with <math|x\<neq\>0>. Using [theorem: <reference|tensor product linear
      independency>] there exists <math|<around*|{|v<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>\<subseteq\>V<rsub|1>>,
      <math|<around*|{|w<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>\<subseteq\>W<rsub|1>>,
      <math|<around*|{|v<rsub|2,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>\<subseteq\>V<rsub|1>>,
      <math|<around*|{|W<rsub|2,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>\<subseteq\>W<rsub|2>>
      such that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>v<rsub|1,i>\<otimes\>w<rsub|1,i><eq-number><label|eq
        13.61.130>>>|<row|<cell|x>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>v<rsub|2,i>\<otimes\>w<rsub|2,i><eq-number><label|eq
        13.62.130>>>>>
      </eqnarray*>

      and <math|<around*|{|v<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>\<subseteq\>V<rsub|1>>,
      <math|<around*|{|w<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>\<subseteq\>W<rsub|1>>,
      <math|<around*|{|v<rsub|2,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>\<subseteq\>V<rsub|1>>,
      <math|<around*|{|w<rsub|2,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>\<subseteq\>W<rsub|2>>
      are linear independent. Using [theorem: <reference|linear mapping for
      independent set>] there exist a <math|L\<in\>Hom<around*|(|V<rsub|1>,F|)>>
      such that <math|L<around*|(|v<rsub|1,1>|)>=1> and
      <math|\<forall\>i\<in\><around*|{|2,\<ldots\>,k<rsub|x>|}>>
      <math|L<around*|(|v<rsub|1,i>|)>=0>. Let now
      <math|K\<in\>Hom<around*|(|V<rsub|2>,F|)>> then\ 

      <\equation*>
        L\<cdot\>K:V<rsub|1>\<cdot\>V<rsub|2>\<rightarrow\>F<text| by
        ><around*|(|L\<cdot\>K|)><around*|(|v<rsub|1>,v<rsub|2>|)>=L<around*|(|v<rsub|1>|)>\<cdot\>K<around*|(|v<rsub|2>|)>
      </equation*>

      then from the linearity of <math|L,K> it follows that
      <math|L\<cdot\>K\<in\>Hom<around*|(|V<rsub|1>,V<rsub|2>;F|)>>. As
      <math|<around*|\<langle\>|V<rsub|1>\<otimes\>V<rsub|2>,\<otimes\>|\<rangle\>>>
      is a tensor product of <math|V<rsub|1>>, <math|V<rsub|2>> there exist a
      <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>V<rsub|2>,F|)>> such that\ 

      <\equation>
        <label|eq 13.63.130>L\<cdot\>K=h\<circ\>\<otimes\>
      </equation>

      <\eqnarray*>
        <tformat|<table|<row|<cell|h<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.61.130>]>>>|<cell|h<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>v<rsub|1,i>\<otimes\>w<rsub|1,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|h<text|
        is linear>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>h<around*|(|v<rsub|1,i>\<otimes\>w<rsub|1,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>h<around*|(|\<otimes\><around*|(|v<rsub|1,i>,w<rsub|1,i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.63.130>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>><around*|(|L\<cdot\>K|)><around*|(|v<rsub|1,i>,w<rsub|1,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>L<around*|(|v<rsub|1,i>|)>\<cdot\>K<around*|(|w<rsub|1,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|2,\<ldots\>,k<rsub|x>|}>>L<around*|(|v<rsub|1,i>|)>\<cdot\>K<around*|(|w<rsub|1,i>|)>+<big|sum><rsub|i\<in\><around*|{|1|}>>L<around*|(|v<rsub|1,i>|)>\<cdot\>K<around*|(|w<rsub|1,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|2,\<ldots\>,k<rsub|x>|}>>L<around*|(|v<rsub|1,i>|)>\<cdot\>K<around*|(|w<rsub|1,i>|)>+L<around*|(|v<rsub|1,1>|)>\<cdot\>K<around*|(|w<rsub|1,1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|2,\<ldots\>,k<rsub|x>|}>>0\<cdot\>L<around*|(|v<rsub|1,i>|)>+K<around*|(|w<rsub|1,1>|)>\<cdot\>1>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of neutral element
        (2)>]>>>|<cell|K<around*|(|w<rsub|1,1>|)>>>>>
      </eqnarray*>

      but we have also\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|h<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|eq 13.62.130>]>>>|<cell|h<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>v<rsub|2,i>\<otimes\>w<rsub|2,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>h<around*|(|v<rsub|2,i>\<otimes\>w<rsub|2,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>h<around*|(|\<otimes\><around*|(|v<rsub|2,i>,w<rsub|2,i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.63.130>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>><around*|(|L\<cdot\>K|)><around*|(|<around*|(|v<rsub|2,i>,w<rsub|2,i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>L<around*|(|w<rsub|2,i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>K<around*|(|w<rsub|2,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|K<text|
        is linear>>>|<cell|K<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>w<rsub|2,i>|)>>>>>
      </eqnarray*>

      so we have\ 

      <\equation>
        <label|eq 13.64.130>\<forall\>K\<in\>Hom<around*|(|V<rsub|1>,F|)><text|
        we have >K<around*|(|w<rsub|1,1>|)>=K<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>w<rsub|2,i>|)>
      </equation>

      So we can apply [theorem: <reference|linear mapping
      L(x)=L(y)=\<gtr\>x=y>] giving that <math|w<rsub|1,1>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>w<rsub|2,i>>.
      As <math|w<rsub|1,1>\<in\>W<rsub|1>> and
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l<rsub|x>|}>>L<around*|(|v<rsub|2,i>|)>\<cdot\>w<rsub|2,i>\<in\>W<rsub|2>>
      [as <math|W<rsub|2>> is a sub-space of <math|V<rsub|1>>] it follows
      that

      <\equation*>
        w<rsub|1,1>\<in\>W<rsub|1><big|cap>W<rsub|2>\<equallim\><rsub|V<rsub|1>=W<rsub|1>\<oplus\>W<rsub|2>><rsub|>=<around*|{|0|}>
      </equation*>

      proving that <math|w<rsub|1,1>=0>. However this means by [theorem:
      <reference|linear dependent family condition>] that
      <math|<around*|{|w<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>>
      is linear dependent contradicting the fact that
      <math|<around*|{|w<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|x>|}>>>
      is linear independent. Hence the assumption <math|x\<neq\>0> is wrong
      and we must have that <math|x=0> or
      <math|<around*|(|V<rsub|1>\<otimes\>W<rsub|1>|)><big|cap><around*|(|V<rsub|1>\<otimes\>W<rsub|2>|)>\<subseteq\><around*|{|0|}>>.
      This together with fact that by <math|V<rsub|1>\<otimes\>W<rsub|1>>,
      <math|V<rsub|1>\<otimes\>W<rsub|2>> are vector spaces so that
      <math|0\<in\><around*|(|V<rsub|1>\<otimes\>W<rsub|1>|)><big|cap><around*|(|V<rsub|1>\<otimes\>W<rsub|2>|)>>
      proves that\ 

      <\equation*>
        <around*|(|V<rsub|1>\<otimes\>W<rsub|1>|)><big|cap><around*|(|V<rsub|1>\<otimes\>W<rsub|2>|)>=<around*|{|0|}>
      </equation*>

      which together with [eq: <reference|eq 13.53.129>] proves that\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<around*|(|V<rsub|1>\<otimes\>W<rsub|1>|)>\<oplus\><around*|(|V<rsub|1>\<otimes\>W<rsub|2>|)>
      </equation*>
    </enumerate>
  </proof>

  \;

  <\lemma>
    <label|tensor product of direct sum and a vector space>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
    be vector spaces over a field <math|F> then\ 

    <\enumerate>
      <item>If <math|V<rsub|1>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>
      then if <math|<around*|\<langle\>|V<rsub|1>\<otimes\>V<rsub|2>,\<otimes\>|\<rangle\>>>
      is a tensor product of <math|V<rsub|1>>, <math|V<rsub|2>> we have\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>\<otimes\>V<rsub|2>
      </equation*>

      where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|W<rsub|i>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|W<rsub|i>\<cdot\>V<rsub|2>|)>|)>>
      so that <math|<around*|\<langle\>|W<rsub|i>\<otimes\>V<rsub|2>,\<otimes\><rsub|\|W<rsub|i>\<cdot\>V<rsub|2>>|\<rangle\>>>
      is a tensor product of \ <math|W<rsub|i>,V<rsub|2>> [see theorem:
      <reference|tensor sub spaces>]

      <item>If <math|V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>
      then if <math|<around*|\<langle\>|V<rsub|1>\<otimes\>V<rsub|2>,\<otimes\>|\<rangle\>>>
      is a tensor product of <math|V<rsub|1>>, <math|V<rsub|2>> we have\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|1>\<otimes\>W<rsub|i>
      </equation*>

      where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|V<rsub|1>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>W<rsub|i>|)>|)>>
      so that <math|<around*|\<langle\>|V<rsub|1>\<otimes\>W<rsub|i>,\<otimes\><rsub|\|V<rsub|1>\<cdot\>W<rsub|i>>|\<rangle\>>>
      is a tensor product of \ <math|V,W<rsub|i>> [see theorem:
      <reference|tensor sub spaces>]
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>We proceed by mathematical induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If <math|V<rsub|1>,V<rsub|2>>
        are vector spaces over a field >F<text| such that
        >V<rsub|1>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i><text|
        then >V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>\<otimes\>V<rsub|2>|}>
      </equation*>

      then we have that:\ 

      <\description>
        <item*|<math|1\<in\>S>>Then if <math|V<rsub|1>=<big|sum><rsub|i\<in\><around*|{|1|}>><rsup|\<oplus\>>W<rsub|i>>
        we have by [example: <reference|direct sum singleton>] that
        <math|V<rsub|1>=W<rsub|1>> and\ 

        <\equation*>
          V<rsub|1>\<otimes\>V<rsub|2>=W<rsub|1>\<otimes\>V<rsub|2>\<equallim\><rsub|<text|[example:
          <reference|direct sum singleton>]>><big|sum><rsub|i\<in\><around*|{|1|}>><rsup|\<oplus\>>W<rsub|i>\<otimes\>V<rsub|2>
        </equation*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
        <math|V<rsub|1>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>W<rsub|i>>
        then we have by [theorem: <reference|direct sum index union (3)>]
        that

        <\equation*>
          <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>W<rsub|i>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i><text|
          and >V<rsub|1>=<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>W<rsub|i>|)>\<oplus\>W<rsub|n+1>
        </equation*>

        or, if we take <math|V<rprime|'><rsub|1>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>W<rsub|i>>,
        that\ 

        <\equation>
          <label|eq 13.56.133>V<rprime|'><rsub|1>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i><text|
          and >V<rsub|1>=V<rprime|'><rsub|1>\<oplus\>W<rsub|n+1>
        </equation>

        By [lemma: <reference|tensor product and direct sum of two vector
        spaces>] we have then\ 

        <\equation>
          <label|eq 13.66.133>V<rsub|1>\<otimes\>V<rsub|2>=<around*|(|V<rprime|'><rsub|1>\<otimes\>V<rsub|2>|)>\<oplus\><around*|(|W<rsub|n+1>\<otimes\>V<rsub|2>|)>
        </equation>

        Further as <math|><math|V<rprime|'><rsub|1>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
        and >n\<in\>S> we have that\ 

        <\equation>
          <label|eq 13.67\<point\>133>V<rsub|1><rprime|'>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>\<otimes\>V<rsub|2>
        </equation>

        Using then [theorem: <reference|direct sum index union (1)>] on [eqs:
        <reference|eq 13.66.133> and <reference|eq 13.67\<point\>133>]
        results in\ 

        <\equation*>
          V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>W<rsub|i>\<otimes\>V<rsub|2>
        </equation*>

        proving that <math|n+1\<in\>S>
      </description>

      <item>We proceed by mathematical induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If <math|V<rsub|1>,V<rsub|2>>
        are vector spaces over a field >F<text| such that
        >V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i><text|
        then >V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|1>\<otimes\>W<rsub|i>|}>
      </equation*>

      then we have that:\ 

      <\description>
        <item*|<math|1\<in\>S>>Then if <math|V<rsub|2>=<big|sum><rsub|i\<in\><around*|{|1|}>><rsup|\<oplus\>>W<rsub|i>>
        we have by [example: <reference|direct sum singleton>] that
        <math|V<rsub|2>=W<rsub|1>> and\ 

        <\equation*>
          V<rsub|1>\<otimes\>V<rsub|2>=V<rsub|1>\<otimes\>W<rsub|1>\<equallim\><rsub|<text|[example:
          <reference|direct sum singleton>]>><big|oplus><rsub|i\<in\><around*|{|1|}>>V<rsub|i>\<otimes\>W<rsub|i>
        </equation*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If
        <math|V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>W<rsub|i>>
        then we have by [theorem: <reference|direct sum index union (3)>]
        that

        <\equation*>
          <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>W<rsub|i>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i><text|
          and >V<rsub|2>=<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>W<rsub|i>|)>\<oplus\>W<rsub|n+1>
        </equation*>

        or, if we take <math|V<rprime|'><rsub|12>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>W<rsub|i>>,
        that\ 

        <\equation>
          <label|eq 13.68.133>V<rprime|'><rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i><text|
          and >V<rsub|2>=V<rprime|'><rsub|2>\<oplus\>W<rsub|n+1>
        </equation>

        By [lemma: <reference|tensor product and direct sum of two vector
        spaces>] we have then\ 

        <\equation>
          <label|eq 13.69.133>V<rsub|1>\<otimes\>V<rsub|2>=<around*|(|V<rsub|1>\<otimes\>V<rprime|'><rsub|2>|)>\<oplus\><around*|(|V<rsub|1>\<otimes\>W<rsub|n+1>|)>
        </equation>

        Further as <math|><math|V<rprime|'><rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
        and >n\<in\>S> we have that\ 

        <\equation>
          <label|eq 13.70\<point\>133>V<rsub|1>\<otimes\>V<rprime|'><rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|1>\<otimes\>W<rsub|i>
        </equation>

        Using then [theorem: <reference|direct sum index union (1)>] on [eqs:
        <reference|eq 13.69.133> and <reference|eq 13.70\<point\>133>]
        results in\ 

        <\equation*>
          V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|1>\<otimes\>W<rsub|i>
        </equation*>

        proving that <math|n+1\<in\>S>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|tensor product of direct sum and a vector space (2)>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
    be vector spaces over a field <math|F> and <math|I> a finite set then\ 

    <\enumerate>
      <item>If <math|V<rsub|1>=<big|oplus><rsub|i\<in\>I>W<rsub|i>> then if
      <math|<around*|\<langle\>|V<rsub|1>\<otimes\>V<rsub|2>,\<otimes\>|\<rangle\>>>
      is a tensor product of <math|V<rsub|1>>, <math|V<rsub|2>> we have\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\>I>W<rsub|i>\<otimes\>V<rsub|2>
      </equation*>

      where <math|\<forall\>i\<in\>I> <math|W<rsub|i>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|W<rsub|i>\<cdot\>V<rsub|2>|)>|)>>
      so that <math|<around*|\<langle\>|W<rsub|i>\<otimes\>V<rsub|2>,\<otimes\><rsub|\|W<rsub|i>\<cdot\>V<rsub|2>>|\<rangle\>>>
      is a tensor product of \ <math|W<rsub|i>,V<rsub|2>> [see theorem:
      <reference|tensor sub spaces>]

      <item>If <math|V<rsub|2>=<big|oplus><rsub|i\<in\>I>W<rsub|i>> then if
      <math|<around*|\<langle\>|V<rsub|1>\<otimes\>V<rsub|2>,\<otimes\>|\<rangle\>>>
      is a tensor product of <math|V<rsub|1>>, <math|V<rsub|2>> we have\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\>I>V<rsub|1>\<otimes\>W<rsub|i>
      </equation*>

      where <math|\<forall\>i\<in\>I> <math|V<rsub|1>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>W<rsub|i>|)>|)>>
      so that <math|<around*|\<langle\>|V<rsub|1>\<otimes\>W<rsub|i>,\<otimes\><rsub|\|V<rsub|1>\<cdot\>W<rsub|i>>|\<rangle\>>>
      is a tensor product of \ <math|V,W<rsub|i>> [see theorem:
      <reference|tensor sub spaces>]
    </enumerate>
  </corollary>

  <\proof>
    \ As <math|I> is finite there exist a <math|n\<in\>\<bbb-N\>> and a
    bijection <math|\<beta\>:I\<rightarrow\><around*|{|1,\<ldots\>,n|}>>

    <\enumerate>
      <item>Define <math|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      by <math|U<rsub|i>=W<rsub|\<beta\><around*|(|i|)>>> then we have

      <\equation*>
        <big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>U<rsub|i>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
        <reference|direct sum and bijection>]>><big|oplus><rsub|i\<in\>I>W<rsub|i>=V<rsub|1>
      </equation*>

      Using the previous lemma [lemma: <reference|tensor product and direct
      sum of two vector spaces>] we have then that\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>U<rsub|i>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|\<beta\><around*|(|i|)>>\<otimes\>V<rsub|2>=\<equallim\><rsub|<text|[theorem:
        <reference|direct sum and bijection>]>><big|oplus><rsub|i\<in\>I>W<rsub|i>\<otimes\>V<rsub|2>
      </equation*>

      and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|U<rsub|i>\<otimes\>V<rsub|2>=span<around*|(|\<otimes\><around*|(|U<rsub|i>\<cdot\>V<rsub|2>|)>|)>>.
      Hence we have\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\>I>W<rsub|i>\<otimes\>V<rsub|2>
      </equation*>

      and if <math|i\<in\>I> we have, as <math|W<rsub|i>=W<rsub|\<beta\><around*|(|\<beta\><rsup|-1><around*|(|i|)>|)>>=U<rsub|\<beta\><rsup|-1><around*|(|i|)>>>,
      that

      <\equation*>
        W<rsub|i>\<otimes\>V<rsub|2>=U<rsub|\<beta\><rsup|-1><around*|(|i|)>>=span<around*|(|\<otimes\><around*|(|U<rsub|\<beta\><rsup|-1><around*|(|i|)>>\<cdot\>V<rsub|2>|)>|)>=span<around*|(|\<otimes\><around*|(|W<rsub|i>\<cdot\>V<rsub|2>|)>|)><rsub|>
      </equation*>

      <item>Define <math|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      by <math|U<rsub|i>=W<rsub|\<beta\><around*|(|i|)>>> then we have

      <\equation*>
        <big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>U<rsub|i>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
        <reference|direct sum and bijection>]>><big|oplus><rsub|i\<in\>I>W<rsub|i>=V<rsub|2>
      </equation*>

      Using the previous lemma [lemma: <reference|tensor product and direct
      sum of two vector spaces>] we have then that\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|1>\<otimes\>U<rsub|i>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|1>\<otimes\>W<rsub|\<beta\><around*|(|i|)>>=\<equallim\><rsub|<text|[theorem:
        <reference|direct sum and bijection>]>><big|oplus><rsub|i\<in\>I>V<rsub|1>\<otimes\>W<rsub|i>
      </equation*>

      and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|V<rsub|1>\<otimes\>U<rsub|i>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>U<rsub|i>|)>|)>>.
      Hence we have\ 

      <\equation*>
        V<rsub|1>\<otimes\>V<rsub|2>=<big|oplus><rsub|i\<in\>I>V<rsub|1>\<otimes\>W<rsub|i>
      </equation*>

      and if <math|i\<in\>I> we have, as <math|W<rsub|i>=W<rsub|\<beta\><around*|(|\<beta\><rsup|-1><around*|(|i|)>|)>>=U<rsub|\<beta\><rsup|-1><around*|(|i|)>>>,
      that

      <\equation*>
        V<rsub|1>\<otimes\>W<rsub|i>=U<rsub|\<beta\><rsup|-1><around*|(|i|)>>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>U<rsub|\<beta\><rsup|-1><around*|(|i|)>>|)>|)>=span<around*|(|\<otimes\><around*|(|V<rsub|1>\<cdot\>W<rsub|i>|)>|)><rsub|>
      </equation*>
    </enumerate>
  </proof>

  <\lemma>
    <label|tensor product of two direct sums>Let <math|V,W> be two vector
    spaces over a field such that\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i><text|
      and >W=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>W<rsub|i>
    </equation*>

    then if <math|<around*|\<langle\>|V\<otimes\>W,\<otimes\>|\<rangle\>>> is
    a tensor product of <math|V,W> we have

    <\equation*>
      V\<otimes\>W=<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k,l|)>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>
    </equation*>

    where as usual <math|\<forall\>\<gamma\>\<in\>\<Gamma\><around*|(|k,l|)>>
    <math|V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>=span<around*|(|\<otimes\><around*|(|V<rsub|\<gamma\><around*|(|1|)>>\<cdot\>W<rsub|\<gamma\><around*|(|2|)>>|)>|)>>
    so that <math|<around*|\<langle\>|V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>,\<otimes\><rsub|\|V<rsub|\<gamma\><around*|(|1|)>>\<cdot\>W<rsub|\<gamma\><around*|(|2|)>>>|\<rangle\>>>
    is a tensor product of \ <math|V<rsub|\<gamma\><around*|(|1|)>>\<cdot\>W<rsub|\<gamma\><around*|(|2|)>>>
    [see theorem: <reference|tensor sub spaces>]
  </lemma>

  <\proof>
    We use induction to prove this. Let <math|V> be a vector space over a
    field <math|F> such that <math|V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>>.
    Define

    <\equation*>
      S<rsub|V>=<around*|{|l\<in\>\<bbb-N\>\|<text|If <math|W<text| is a
      vector space over >F<text| with >W=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>W<rsub|i><text|
      then >V\<otimes\>W=<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k,l|)>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S<rsub|V>>>If <math|W=<big|oplus><rsub|i\<in\><around*|{|1|}>>W<rsub|i>>
      then we have by [example: <reference|direct sum singleton>] that
      <math|W=W<rsub|1>> so we can use [lemma: <reference|tensor product of
      direct sum and a vector space>] to get\ 

      <\equation>
        <label|eq 13.65.130>V\<otimes\>W=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>\<otimes\>W<rsub|1>
      </equation>

      Define

      <\equation*>
        \<tau\>:<around*|{|1,\<ldots\>,k|}>\<rightarrow\>\<Gamma\><around*|(|k,1|)><text|
        where >\<tau\><around*|(|i|)><text| is defined by
        >\<tau\><around*|(|i|)>=<around*|(|i,1|)><text| so that
        >\<tau\><around*|(|i|)><around*|(|1|)>=i\<wedge\>\<tau\><around*|(|i|)><around*|(|2|)>=1
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>If <math|\<tau\><around*|(|i|)>=\<tau\><around*|(|j|)>>
        then <math|i=\<gamma\><around*|(|i|)><around*|(|1|)>=\<gamma\><around*|(|j|)><around*|(|1|)>=j>
        proving injectivity.

        <item*|surjectivity>If <math|\<gamma\>\<in\>\<Gamma\><around*|(|k,1|)>>
        then <math|\<gamma\><around*|(|1|)>\<in\><around*|{|1,\<ldots\>,k|}>>
        and <math|\<gamma\><around*|(|2|)>\<in\><around*|{|1|}>\<Rightarrow\>\<gamma\><around*|(|2|)>=1>,
        hence if we take <math|i=\<gamma\><around*|(|1|)>> we have
        \ <math|\<tau\><around*|(|i|)><around*|(|1|)>=i=\<gamma\><around*|(|1|)>\<wedge\>\<tau\><around*|(|i|)><around*|(|2|)>=1=\<gamma\><around*|(|2|)>>
        proving that <math|\<tau\><around*|(|i|)>=\<gamma\>>.
      </description>

      so we conclude that

      <\equation>
        <label|eq 13.66.130>\<tau\>:<around*|{|1,\<ldots\>,k|}>\<rightarrow\>\<Gamma\><around*|(|k,1|)>
        <text| is a bijection with >\<tau\><around*|(|i|)><around*|(|1|)>=i\<wedge\>\<tau\><around*|(|i|)><around*|(|2|)>=1
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>\<otimes\>W<rsub|1>>|<cell|=>|<cell|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|\<tau\><around*|(|i|)><around*|(|1|)>>\<otimes\>W<rsub|\<tau\><around*|(|i|)><around*|(|2|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|direct sum and bijection>]>>>|<cell|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k,1|)>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>>>>>
      </eqnarray*>

      which together with [eq: <reference|eq 13.65.130>] proves that
      <math|1\<in\>S<rsub|V>>.

      <item*|<math|l\<in\>S\<Rightarrow\>l+1\<in\>S<rsub|V>>>If
      <math|W=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,l+1|}>>W<rsub|i>>
      then we have by [theorem: <reference|direct sum index union (3)>] that\ 

      <\equation*>
        <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>W<rsub|i>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>W<rsub|i><text|
        and >W=<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>W<rsub|i>|)>\<oplus\>W<rsub|l+1>
      </equation*>

      or\ 

      <\equation>
        <label|eq 13.73.133>W<rprime|'>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>W<rsub|i><text|
        and >W=W<rprime|'>\<oplus\>W<rsub|l+1><text| where
        >W<rprime|'>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>W<rsub|i>
      </equation>

      Hence using [lemma: <reference|tensor product and direct sum of two
      vector spaces>]\ 

      <\equation>
        <label|eq 13.74.133>V\<otimes\>W=<around*|(|V\<otimes\>W<rprime|'>|)>\<oplus\><around*|(|V\<otimes\>W<rsub|l+1>|)>
      </equation>

      As <math|l\<in\>S> and <math|W<rprime|'>\<equallim\><rsub|<text|[eq:
      <reference|eq 13.73.133>]>><big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>W<rsub|i>>
      we have that\ 

      <\equation>
        <label|eq 13.75.133>V\<otimes\>W<rprime|'>=<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k,l|)>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>
      </equation>

      Further, as <math|V=<big|oplus><rsub|i\<in\>1,\<ldots\>,k>V<rsub|i>>,
      we have by [lemma: <reference|tensor product of direct sum and a vector
      space>] that\ 

      <\equation>
        <label|eq 13.76.133>V\<otimes\>W<rsub|l+1>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>\<otimes\>W<rsub|l+1>
      </equation>

      Define\ 

      <\equation*>
        \<chi\>:<around*|{|1,\<ldots\>,k|}>\<rightarrow\><around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}><text|
        where >\<chi\><around*|(|i|)>=<around*|(|i,l+1|)>\<Rightarrow\>\<chi\><around*|(|i|)><around*|(|1|)>=i\<wedge\>\<chi\><around*|(|i|)><around*|(|2|)>=l+1
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>If <math|\<chi\><around*|(|i|)>=\<chi\><around*|(|j|)>>
        then <math|i=\<chi\><around*|(|i|)><around*|(|1|)>=\<chi\><around*|(|j|)><around*|(|1|)>=j>
        proving injectivity.

        <item*|surjectivity>Let <math|\<gamma\>\<in\><around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>>
        and take <math|i=\<gamma\><around*|(|1|)>> then we have
        <math|\<chi\><around*|(|i|)><around*|(|1|)>=i=\<gamma\><around*|(|1|)>>
        and <math|\<chi\><around*|(|i|)><around*|(|2|)>=l+1=\<gamma\><around*|(|2|)>>
        [as <math|\<gamma\><around*|(|2|)>\<in\><around*|{|l+1|}>>] so that
        <math|\<chi\><around*|(|i|)>=\<gamma\>>
      </description>

      So\ 

      <\equation>
        <label|eq 13.77.133>\<chi\>:<around*|{|1,\<ldots\>,k|}>\<rightarrow\><around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}><text|
        where >\<chi\><around*|(|i|)><around*|(|1|)>=i\<wedge\>\<chi\><around*|(|i|)><around*|(|2|)>=l+1<text|
        is a bijection>
      </equation>

      Using this bijection we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|V\<otimes\>W<rsub|l+1>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.76.133>]>>>|<cell|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>\<otimes\>W<rsub|l+1>>>|<row|<cell|>|<cell|=>|<cell|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|i>\<otimes\>W<rsub|l+1>>>|<row|<cell|>|<cell|=>|<cell|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|\<cal-X\><around*|(|i|)><around*|(|1|)>>\<otimes\>W<rsub|\<cal-X\><around*|(|i|)><around*|(|2|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.77.133>] and [theorem: <reference|direct sum and
        bijection>]>>>|<cell|<big|oplus><rsub|\<gamma\>\<in\><around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>>>>>
      </eqnarray*>

      so that\ 

      <\equation>
        <label|eq 13.78.133>V\<otimes\>W<rsub|l+1>=<big|oplus><rsub|\<gamma\>\<in\><around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>
      </equation>

      Now

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<Gamma\><around*|(|k,l+1|)>>|<cell|=>|<cell|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|1,\<ldots\>,l+1|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|(|<around*|{|1,\<ldots\>,l|}><big|cup><around*|{|l+1|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|finite product properties>]>>>|<cell|<around*|(|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|1,\<ldots\>,l|}>|)><big|cup><around*|(|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<Gamma\><around*|(|k,l|)><big|cup><around*|(|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>|)>>>>>
      </eqnarray*>

      and

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<Gamma\><around*|(|k,l|)><big|cap><around*|(|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>|)>>|<cell|=>|<cell|<around*|(|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|1,\<ldots\>,l|}>|)><big|cap><around*|(|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|finite product properties>]>>>|<cell|<around*|(|<around*|{|1,\<ldots\>,k|}><big|cap><around*|{|1,\<ldots\>,k|}>|)>\<cdot\><around*|(|<around*|{|1,\<ldots\>l|}><big|cap><around*|{|l+1|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|{|1,\<ldots\>,k|}><big|cap><around*|{|1,\<ldots\>,k|}>|)>\<cdot\>\<varnothing\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|product of a empty set is
        empty>]>>>|<cell|\<varnothing\>>>>>
      </eqnarray*>

      So we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<Gamma\><around*|(|k,l+1|)>>|<cell|=>|<cell|\<Gamma\><around*|(|k,l|)><big|cup><around*|(|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>|)>\<wedge\>\<Gamma\><around*|(|k,l|)><big|cap><around*|(|<around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>|)>=\<varnothing\>>>|<row|<cell|V\<otimes\>W<rprime|'>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.75.133>]>>>|<cell|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k,l|)>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>>>|<row|<cell|<label|eq
        13.78.133>V\<otimes\>W<rsub|l+1>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.78.133>]>>>|<cell|<big|oplus><rsub|\<gamma\>\<in\><around*|{|1,\<ldots\>,k|}>\<cdot\><around*|{|l+1|}>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>>>|<row|<cell|V\<otimes\>W>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.74.133>]>>>|<cell|<around*|(|V\<otimes\>W<rprime|'>|)>\<oplus\><around*|(|V\<otimes\>W<rsub|l+1>|)>>>>>
      </eqnarray*>

      which allows us to use [theorem: <reference|direct sum index union
      (1)>] to get\ 

      <\equation*>
        V\<otimes\>W=<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k,l+1|)>>V<rsub|\<gamma\><around*|(|1|)>>\<otimes\>W<rsub|\<gamma\><around*|(|2|)>>
      </equation*>

      which proves that\ 

      <\equation*>
        l+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|tensor product of direct sums>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be vector spaces over a field <math|V> such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|{|W<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|i>|}>>\<subseteq\>\<cal-P\><around*|(|V<rsub|i>|)>>
    is a family of sub-spaces of <math|V<rsub|i>> such that
    <math|V<rsub|i>=<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|i>|}>>W<rsub|i,j>>
    then we have for a tensor product <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
    that\ 

    <\equation*>
      V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>=<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>><around*|(|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>
    </equation*>

    where

    <\equation*>
      W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>><text|
      is a tensor product of >W<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,W<rsub|n,\<gamma\><around*|(|n|)>>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction on <math|n>, so let

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      are vector spaces, ><around*|{|W<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|i>|}>>\<subseteq\>\<cal-P\><around*|(|V<rsub|i>|)><text|,
      >V<rsub|i>=<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|i>|}>>W<rsub|i,j><text|,
      >i\<in\><around*|{|1,\<ldots\>,n|}><text| and
      <math|<around*|\<langle\>|V,\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
      a<space|1em>tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>><space|1em>then
      >V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>=<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>><text|
      where >W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>><text|
      is a tensor product of >W<rsub|1,\<gamma\><around*|(|1|)>>,\<ldots\>,W<rsub|n,\<gamma\><around*|(|n|)>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Let <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|1>,\<otimes\>|\<rangle\>>>
      be a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|1>> and
      <math|<around*|{|W<rsub|1,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>>
      a family of sub-spaces of <math|V<rsub|1>> such that
      <math|V<rsub|1>=<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|1>|}>>W<rsub|1,j>>.
      Using [theorem: <reference|tensor product singleton (1)>] \ there exist
      for every <math|j\<in\><around*|{|1,\<ldots\>,k<rsub|1>|}>> a tensor
      product <math|W<rsub|1,j>\<otimes\>\<cdots\>\<otimes\>W<rsub|1,j>> of
      <math|W<rsub|1,j>,\<ldots\>,W<rsub|1,j>> such that\ 

      <\equation*>
        V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|1>=<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|1>|}>>W<rsub|1,j>\<otimes\>\<cdots\>\<otimes\>W<rsub|1,j>
      </equation*>

      Define now

      <\equation*>
        \<kappa\>:<around*|{|1,\<ldots\>,k<rsub|1>|}>\<rightarrow\>\<Gamma\><around*|(|k<rsub|1>|)><text|
        by >\<kappa\><around*|(|i|)><around*|(|1|)>=i
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>If <math|i,j\<in\><around*|{|1,\<ldots\>,k<rsub|i>|}>>
        satisfies <math|\<kappa\><around*|(|i|)>=\<kappa\><around*|(|j|)>>
        then <math|i=\<kappa\><around*|(|i|)><around*|(|1|)>=\<kappa\><around*|(|j|)><around*|(|1|)>=j>
        proving injectivity.

        <item*|surjectivity>Let <math|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>|)>>
        then for <math|i=\<gamma\><around*|(|1|)>> we have
        <math|\<kappa\><around*|(|i|)><around*|(|1|)>=i=\<gamma\><around*|(|1|)>>
        proving that <math|\<kappa\><around*|(|i|)>=\<gamma\>> hence
        surjectivity.
      </description>

      proving that

      <\equation*>
        \<kappa\>:<around*|{|1,\<ldots\>,k|}>\<rightarrow\>\<Gamma\><around*|(|k<rsub|1>|)><text|
        where >\<kappa\><around*|(|i|)><around*|(|1|)>=i
      </equation*>

      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|1>>|<cell|=>|<cell|<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|1>|}>>W<rsub|1,j>\<otimes\>\<cdots\>\<otimes\>W<rsub|1,j>>>|<row|<cell|>|<cell|=>|<cell|<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|1>|}>>W<rsub|1,\<kappa\><around*|(|j|)><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|1,\<kappa\><around*|(|j|)><around*|(|1|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|direct sum and bijection>]>>>|<cell|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|1,\<gamma\><around*|(|1|)>>>>>>
      </eqnarray*>

      proving that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>,\<otimes\><rsub|n+1>|\<rangle\>>>
      be a tensor product of <math|V<rsub|1>,\<ldots\>,V<rsub|n>> and
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>>
      <math|<around*|{|W<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>>>
      a family of sub-spaces of <math|V<rsub|i>> such that
      <math|V<rsub|i>=<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>>W<rsub|i,j>>.
      Using [theorem: <reference|tensor product induction argument (2)>] we
      have that there exist a tensor product
      <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> of
      <math|V<rsub|1>,\<ldots\>,V<rsub|n>> and a tensor product
      <math|<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>\<circ\>V<rsub|n+1>>
      of <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>,
      <math|V<rsub|n+1>> such that\ 

      <\equation>
        <label|eq 13.92.138>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>=<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>\<otimes\>V<rsub|n+1>
      </equation>

      As <math|n\<in\>S> there exists <math|\<forall\>\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>>
      a tensor product <math|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>>
      of <math|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>>
      such that\ 

      <\equation>
        <label|eq 13.93.138>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>=<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>
      </equation>

      So we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.92.138>]>>>|<cell|>>|<row|<cell|<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>\<otimes\>V<rsub|n+1>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.93.138>]>>>|<cell|>>|<row|<cell|<around*|(|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<oplus\>V<rsub|n+1>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<otimes\><around*|(|<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>>W<rsub|n+1,j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|tensor product of direct sum and a vector
        space>]>>>|<cell|>>|<row|<cell|<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>><around*|(|<around*|(|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>>W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<otimes\>W<rsub|n+1,j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|tensor product of direct sum and a vector space
        (2)>]>>>|<cell|>>|<row|<cell|<big|oplus><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>><around*|(|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>><around*|(|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<otimes\>W<rsub|n+1,j>|)>>|<cell|>|<cell|<eq-number><label|eq
        13.94.138>>>>>
      </eqnarray*>

      Given <math|j\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>> define

      <\equation*>
        \<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>=<around*|{|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>\|\<gamma\><around*|(|n+1|)>=j|}>\<subseteq\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>
      </equation*>

      If <math|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>>
      then clearly <math|\<gamma\><around*|(|n<rsub|>+1|)>\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>>
      so that <math|\<gamma\>\<in\>\<Gamma\><rsup|\<gamma\><around*|(|n+1|)>><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>>
      proving that <math|\<gamma\>\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,k+1|}>>\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>>.
      Hence\ 

      <\equation*>
        \<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>=<big|cup><rsub|j\<in\><around*|{|k<rsub|1>,\<ldots\>,k<rsub|n+1>|}>>\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>
      </equation*>

      Let <math|i,j\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>> with
      <math|i\<neq\>j> then if <math|\<gamma\>\<in\>\<Gamma\><rsup|i><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)><big|cap>\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>>
      we would have the contradiction <math|\<gamma\><around*|(|n+1|)>=i\<neq\>j=\<gamma\><around*|(|n+1|)>>
      hence <math|><math|\<Gamma\><rsup|i><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)><big|cap>\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>=\<varnothing\>>.
      So\ 

      <\equation>
        <label|eq 13.95.138>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)><text|
        is the disjoint union of >\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)><text|
        >j\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>
      </equation>

      Further if we define\ 

      <\equation*>
        \<alpha\><rsub|j>:\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>\<rightarrow\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)><text|
        by >\<alpha\><around*|(|\<gamma\>|)>=\<gamma\><rsub|\|<around*|{|1,\<ldots\>,n|}>><text|
        [hence >\<alpha\><around*|(|\<gamma\>|)><around*|(|i|)>=\<gamma\><around*|(|i|)>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|]>
      </equation*>

      then we have:\ 

      <\description>
        <item*|injectivity>If <math|\<alpha\><rsub|j><around*|(|\<gamma\>|)>=\<alpha\><rsub|j><around*|(|\<delta\>|)>>
        then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|\<gamma\><around*|(|i|)>=\<alpha\><rsub|j><around*|(|\<gamma\>|)><around*|(|i|)>=\<alpha\><rsub|j><around*|(|\<delta\>|)><around*|(|i|)>=\<delta\><around*|(|i|)>>
        and <math|\<gamma\><around*|(|n+1|)>=j=\<delta\><around*|(|n+1|)>>,
        proving that <math|\<gamma\>=\<delta\>>.

        <item*|surjectivity>If <math|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>>
        define then <math|\<gamma\><rprime|'>\<in\>\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>>
        by <math|\<gamma\><rprime|'><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|j<text|
        if >i=n+1>>|<row|<cell|\<gamma\><around*|(|i|)><text| if
        >i\<in\><around*|{|1,\<ldots\>,n+1|}>>>>>>> then
        <math|\<alpha\><rsub|j><around*|(|\<gamma\><rprime|'>|)>=\<gamma\>>.
      </description>

      so we have that\ 

      <\equation>
        <label|eq 13.96.138>\<alpha\><rsub|j>:\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>\<rightarrow\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)><text|
        is a bijection with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
        \<alpha\><rsub|j><around*|(|\<gamma\>|)><around*|(|i|)>=\<gamma\><around*|(|i|)>
      </equation>

      So we have by [theorem: <reference|direct sum of sets properties>] and
      [eq: <reference|eq 13.95.138>] that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>><around*|(|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<otimes\>W<rsub|n+1,\<gamma\><around*|(|n+1|)>>>|<cell|=>|<cell|>>|<row|<cell|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>><around*|(|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>><around*|(|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<otimes\>W<rsub|n+1,\<gamma\><around*|(|n+1|)>>|)>>|<cell|\<equallim\><rsub|\<gamma\><around*|(|n+1|)>=j>>|<cell|>>|<row|<cell|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>><around*|(|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>><around*|(|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<otimes\>W<rsub|n+1,j>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.96.138>]>>>|<cell|>>|<row|<cell|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>><around*|(|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><rsup|j><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>><around*|(|W<rsub|1,\<alpha\><rsub|j><around*|(|\<gamma\>|)><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<alpha\><rsub|j><around*|(|\<gamma\>|)><around*|(|n|)>>|)>\<otimes\>W<rsub|n+1,j>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|direct sum and bijection>]>>>|<cell|>>|<row|<cell|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,k<rsub|n+1>|}>><around*|(|<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n>|)>><around*|(|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<otimes\>W<rsub|n+1,j>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.94.138>]>>>|<cell|>>|<row|<cell|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>>|<cell|>|<cell|>>>>
      </eqnarray*>

      or summarized

      <\equation>
        <label|eq 13.97.138>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>=<big|oplus><rsub|\<gamma\>\<in\>\<Gamma\><around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>><around*|(|W<rsub|1,\<gamma\><around*|(|1|)>>\<otimes\>\<cdots\>\<otimes\>W<rsub|n,\<gamma\><around*|(|n|)>>|)>\<otimes\>W<rsub|n+1,\<gamma\><around*|(|n+1|)>>
      </equation>

      Now as <math|>
    </description>

    \;
  </proof>

  \ 

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

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|11>
    <associate|page-first|572>
    <associate|section-nr|9>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|12|?>>
    <associate|auto-2|<tuple|13|?>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|F<around*|(|X,F|)>>|?>>
    <associate|auto-4|<tuple|free vector space over a set|?>>
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
    <associate|eq 13.1.127|<tuple|13.11|?>>
    <associate|eq 13.1.129|<tuple|13.1|?>>
    <associate|eq 13.10.127|<tuple|13.4|?>>
    <associate|eq 13.11.127|<tuple|13.5|?>>
    <associate|eq 13.12.127|<tuple|13.6|?>>
    <associate|eq 13.13.128|<tuple|13.7|?>>
    <associate|eq 13.14.127|<tuple|13.8|?>>
    <associate|eq 13.15.128|<tuple|13.9|?>>
    <associate|eq 13.16.128|<tuple|13.10|?>>
    <associate|eq 13.19.135|<tuple|13.19|?>>
    <associate|eq 13.19129|<tuple|13.32|?>>
    <associate|eq 13.2.127|<tuple|13.12|?>>
    <associate|eq 13.2.129|<tuple|13.2|?>>
    <associate|eq 13.20.129|<tuple|13.33|?>>
    <associate|eq 13.20.135|<tuple|13.20|?>>
    <associate|eq 13.21.129|<tuple|13.34|?>>
    <associate|eq 13.21.135|<tuple|13.21|?>>
    <associate|eq 13.22.129|<tuple|13.47|?>>
    <associate|eq 13.22.137|<tuple|13.23|?>>
    <associate|eq 13.22.139|<tuple|13.22|?>>
    <associate|eq 13.23.129|<tuple|13.48|?>>
    <associate|eq 13.23.137|<tuple|13.24|?>>
    <associate|eq 13.24.129|<tuple|13.49|?>>
    <associate|eq 13.24.137|<tuple|13.25|?>>
    <associate|eq 13.25.129|<tuple|13.50|?>>
    <associate|eq 13.25.137|<tuple|13.27|?>>
    <associate|eq 13.25.138|<tuple|13.26|?>>
    <associate|eq 13.26.129|<tuple|13.51|?>>
    <associate|eq 13.26.137|<tuple|13.29|?>>
    <associate|eq 13.27.129|<tuple|13.52|?>>
    <associate|eq 13.27.137|<tuple|13.30|?>>
    <associate|eq 13.28.129|<tuple|13.53|?>>
    <associate|eq 13.29.129|<tuple|13.54|?>>
    <associate|eq 13.3.127|<tuple|13.13|?>>
    <associate|eq 13.30.129|<tuple|13.55|?>>
    <associate|eq 13.30.138|<tuple|13.31|?>>
    <associate|eq 13.31.129|<tuple|13.56|?>>
    <associate|eq 13.32.129|<tuple|13.57|?>>
    <associate|eq 13.33.129|<tuple|13.58|?>>
    <associate|eq 13.34.129|<tuple|13.59|?>>
    <associate|eq 13.35.129|<tuple|13.60|?>>
    <associate|eq 13.35.130|<tuple|13.35|?>>
    <associate|eq 13.35.140|<tuple|13.36|?>>
    <associate|eq 13.35.143|<tuple|13.35|?>>
    <associate|eq 13.36.129|<tuple|13.61|?>>
    <associate|eq 13.36.140|<tuple|13.41|?>>
    <associate|eq 13.36.141|<tuple|13.40|?>>
    <associate|eq 13.36.142|<tuple|13.37|?>>
    <associate|eq 13.37.129|<tuple|13.62|?>>
    <associate|eq 13.37.140|<tuple|13.42|?>>
    <associate|eq 13.38.129|<tuple|13.63|?>>
    <associate|eq 13.38.140|<tuple|13.44|?>>
    <associate|eq 13.38.142|<tuple|13.38|?>>
    <associate|eq 13.38.143|<tuple|13.38|?>>
    <associate|eq 13.39.129|<tuple|13.64|?>>
    <associate|eq 13.39.140|<tuple|13.45|?>>
    <associate|eq 13.39.143|<tuple|13.39|?>>
    <associate|eq 13.4.127|<tuple|13.14|?>>
    <associate|eq 13.40.129|<tuple|13.65|?>>
    <associate|eq 13.41.129|<tuple|13.66|?>>
    <associate|eq 13.41.140|<tuple|13.46|?>>
    <associate|eq 13.41.141|<tuple|13.41|?>>
    <associate|eq 13.42.129|<tuple|13.67|?>>
    <associate|eq 13.43.129|<tuple|13.68|?>>
    <associate|eq 13.43.144|<tuple|13.43|?>>
    <associate|eq 13.44.129|<tuple|13.69|?>>
    <associate|eq 13.45.129|<tuple|13.70|?>>
    <associate|eq 13.46.129|<tuple|13.71|?>>
    <associate|eq 13.47.129|<tuple|13.72|?>>
    <associate|eq 13.48.129|<tuple|13.73|?>>
    <associate|eq 13.49.129|<tuple|13.74|?>>
    <associate|eq 13.5.127|<tuple|13.15|?>>
    <associate|eq 13.50.129|<tuple|13.75|?>>
    <associate|eq 13.51.129|<tuple|13.76|?>>
    <associate|eq 13.52.130|<tuple|13.77|?>>
    <associate|eq 13.53.129|<tuple|13.78|?>>
    <associate|eq 13.54.129|<tuple|13.79|?>>
    <associate|eq 13.55.130|<tuple|13.80|?>>
    <associate|eq 13.56.130|<tuple|13.81|?>>
    <associate|eq 13.56.133|<tuple|13.90|?>>
    <associate|eq 13.57.130|<tuple|13.82|?>>
    <associate|eq 13.58.130|<tuple|13.83|?>>
    <associate|eq 13.59.130|<tuple|13.84|?>>
    <associate|eq 13.6.127|<tuple|13.16|?>>
    <associate|eq 13.60.130|<tuple|13.85|?>>
    <associate|eq 13.61.130|<tuple|13.86|?>>
    <associate|eq 13.62.130|<tuple|13.87|?>>
    <associate|eq 13.63.130|<tuple|13.88|?>>
    <associate|eq 13.64.130|<tuple|13.89|?>>
    <associate|eq 13.65.130|<tuple|13.96|?>>
    <associate|eq 13.66.130|<tuple|13.97|?>>
    <associate|eq 13.66.133|<tuple|13.91|?>>
    <associate|eq 13.67\<point\>133|<tuple|13.92|?>>
    <associate|eq 13.68.133|<tuple|13.93|?>>
    <associate|eq 13.69.133|<tuple|13.94|?>>
    <associate|eq 13.7.127|<tuple|13.17|?>>
    <associate|eq 13.70\<point\>133|<tuple|13.95|?>>
    <associate|eq 13.73.133|<tuple|13.98|?>>
    <associate|eq 13.74.133|<tuple|13.99|?>>
    <associate|eq 13.75.133|<tuple|13.100|?>>
    <associate|eq 13.76.133|<tuple|13.101|?>>
    <associate|eq 13.77.133|<tuple|13.102|?>>
    <associate|eq 13.78.133|<tuple|13.103|?>>
    <associate|eq 13.8.127|<tuple|13.18|?>>
    <associate|eq 13.9.127|<tuple|13.3|?>>
    <associate|eq 13.92.138|<tuple|13.104|?>>
    <associate|eq 13.93.138|<tuple|13.105|?>>
    <associate|eq 13.94.138|<tuple|13.106|?>>
    <associate|eq 13.95.138|<tuple|13.107|?>>
    <associate|eq 13.96.138|<tuple|13.108|?>>
    <associate|eq 13.97.138|<tuple|13.109|?>>
    <associate|tensor finite family of finite sets|<tuple|13.29|?>>
    <associate|tensor multi-index|<tuple|13.30|?>>
    <associate|tensor multilinear mapping sum|<tuple|13.32|?>>
    <associate|tensor null space|<tuple|13.7|?>>
    <associate|tensor product|<tuple|13.1|?>>
    <associate|tensor product and direct sum of two vector
    spaces|<tuple|13.34|?>>
    <associate|tensor product and sum of vector space|<tuple|13.33|?>>
    <associate|tensor product convention|<tuple|13.19|?>>
    <associate|tensor product induction argument|<tuple|13.27|?>>
    <associate|tensor product induction argument (2)|<tuple|13.28|?>>
    <associate|tensor product linear independency|<tuple|13.25|?>>
    <associate|tensor product of direct sum and a vector
    space|<tuple|13.35|?>>
    <associate|tensor product of direct sum and a vector space
    (2)|<tuple|13.36|?>>
    <associate|tensor product of direct sums|<tuple|13.38|?>>
    <associate|tensor product of spaces existence|<tuple|13.13|?>>
    <associate|tensor product of spaces existence (1)|<tuple|13.20|?>>
    <associate|tensor product of two direct sums|<tuple|13.37|?>>
    <associate|tensor product of vectors|<tuple|13.10|?>>
    <associate|tensor product singleton|<tuple|13.17|?>>
    <associate|tensor product singleton (1)|<tuple|13.22|?>>
    <associate|tensor product unique representation|<tuple|13.2|?>>
    <associate|tensor product uniqueness|<tuple|13.15|?>>
    <associate|tensor product uniqueness (1)|<tuple|13.21|?>>
    <associate|tensor product uniqueness and existance|<tuple|13.16|?>>
    <associate|tensor product zero|<tuple|13.24|?>>
    <associate|tensor sub spaces|<tuple|13.18|?>>
    <associate|tensor sub spaces (1)|<tuple|13.23|?>>
    <associate|tensor tensor product of spaces|<tuple|13.8|?>>
    <associate|tensor universal property|<tuple|13.12|?>>
    <associate|vector space free|<tuple|13.5|?>>
    <associate|vector space free basis and embedding|<tuple|13.6|?>>
    <associate|vector space free operations|<tuple|13.4|?>>
    <associate|vector space free predefinition|<tuple|13.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|F<around*|(|X,F|)>>>|<pageref|auto-3>>

      <tuple|<tuple|free vector space over a set>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Internal
      Direct Sum> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Tensor
      product of vector spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
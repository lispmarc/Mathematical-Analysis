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
    <label|direct sum of sets>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|F>, <math|I> a finite set and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    [a finite family of subsets of <math|V>] then the sum
    of<math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    noted as <math|<big|sum><rsub|i\<in\>I>V<rsub|i>> is defined as\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>V<rsub|i>=<around*|{|v\<in\>V\|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text|
      such that <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      >v=<big|sum><rsub|i\<in\>I>w<rsub|i>|}>\<subseteq\>V
    </equation*>
  </definition>

  Some of the properties of finite sums of elements of the vector space
  transfer to the finite sum of a family of non emoty subsets.

  <\theorem>
    <label|direct sum of sets properties>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|F> then we have for a finite set <math|I>

    <\enumerate>
      <item>If <math|I=<around*|{|k|}>> for
      <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|k|}>>\<subseteq\>\<cal-P\><around*|(|V|)>>
      we have \ <math|<big|sum><rsub|i\<in\><around*|{|k|}>>V<rsub|i>=V<rsub|k>>

      <item>If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
      and <math|\<sigma\>:J\<rightarrow\>I> is a bijection we have
      <math|<big|sum><rsub|i\<in\>J>V<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I>V<rsub|i>>

      <item>If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
      and <math|k\<in\>I> then <math|<big|sum><rsub|i\<in\>I>V<rsub|i>=<around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>>

      <item>If <math|I=I<rsub|1><big|cup>I<rsub|2>> with
      <math|I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>> then
      <math|<big|sum><rsub|i\<in\>I>V<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>|)>>

      <item>If <math|I=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i>>
      with <math|\<forall\>i,j\<in\>I> if <math|i\<neq\>j> then
      <math|I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>> then

      <\equation*>
        <big|sum><rsub|i\<in\>I>V<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>V<rsub|j>|)>
      </equation*>
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

  We consider now the case where we have a family of sub spaces of a vector
  space.

  <\theorem>
    <label|direct sum of subspaces>If <math|V> is a vector space over a field
    <math|F> and <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    such that <math|\<forall\>i\<in\>I> <math|V<rsub|i>> is a sub space of
    <math|V> then <math|<big|sum><rsub|i\<in\>I>V<rsub|i>> is a sub space of
    <math|V>
  </theorem>

  <\proof>
    As <math|\<forall\>i\<in\>I> <math|V<rsub|i>> is a sub space of <math|V>
    we have that <math|0\<in\>V<rsub|i>>, so as
    <math|<big|sum><rsub|i\<in\>I>0=0> it follows that
    <math|0\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> proving that\ 

    <\equation*>
      \<varnothing\>\<neq\><big|sum><rsub|i\<in\>I>V<rsub|i>
    </equation*>

    Let <math|\<alpha\>\<in\>F> and <math|x,y\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>>
    then there exists a <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
    and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> such that
    <math|\<forall\>i\<in\>I> <math|x<rsub|i>,y<rsub|i>\<in\>V<rsub|i>> and
    <math|x=<big|sum><rsub|i\<in\>I>x<rsub|i>>,
    <math|y=<big|sum><rsub|i\<in\>I>y<rsub|i>>. As <math|\<forall\>i\<in\>I>
    <math|V<rsub|i>> is a subspace we have that
    <math|\<alpha\>\<cdot\>x<rsub|i>+y<rsub|i>\<in\>V<rsub|i>> and\ 

    <\equation*>
      \<alpha\>\<cdot\>x+y=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>\<equallim\><rsub|<text|[theorems:
      <reference|vector space finite sum (1)>, <reference|sum of sums
      (1)>]>><big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>+y<rsub|i>|)>
    </equation*>

    proving that <math|\<alpha\>\<cdot\>x+y\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>>.
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
    space over a field, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    such that <math|\<forall\>i\<in\>I> <math|V<rsub|i>> is a subspace of
    <math|V> the direct sum of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>>
    noted as <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> is defined by

    <\equation*>
      <big|oplus><rsub|i\<in\>I>=<around*|{|v\<in\>V\|<with|font-series|bold|\<exists\>!><around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subset\>V<text|
      with >\<forall\>i\<in\>I<text| >v<rsub|i>\<in\>V<rsub|i><text| such
      that >v=<big|sum><rsub|i\<in\>I>v<rsub|i><rsub|>|}>\<subseteq\>V
    </equation*>

    In other words <math|<big|oplus><rsub|i\<in\>I>V<rsub|i>> is the set of
    vectors that can be written as a <with|font-series|bold|unique> sum of
    vector in <math|V<rsub|i>>.
  </definition>

  <\example>
    <label|direct sum singleton>If <math|V> is a vector space then and
    <math|W> a sub-space then <math|W=<big|oplus><rsub|i\<in\><around*|{|1|}>>V<rsub|i>>
    where <math|V<rsub|1>=W>.
  </example>

  <\proof>
    <math|V<rsub|1>=W> is a subspace of <math|V> and if <math|v\<in\>V> we
    have for <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>V>
    that <math|v=<big|sum><rsub|i\<in\><around*|{|1|}>>v<rsub|i>> and if
    <math|<around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>> such that
    <math|v=<big|sum><rsub|i\<in\><around*|{|1|}>>w<rsub|i>> then
    <math|w<rsub|i>=v=v<rsub|i>> <math|\<forall\>i\<in\><around*|{|1|}>>.\ 
  </proof>

  We have the following necessary and sufficient condition for a vector space
  to be a direct sum.

  <\theorem>
    <label|direct sum conditions>Let <math|V> be a vector space over a field,
    <math|I> finite and <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    such that <math|\<forall\>i\<in\>I> <math|V<rsub|i>> is a sub space of
    <math|V> then\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>V<rsub|i>=<big|oplus><rsub|i\<in\>I>V<rsub|i>\<Leftrightarrow\>\<forall\>k\<in\>I<text|
      we have >V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<around*|{|0|}>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|k\<in\>I>. As
      <math|\<forall\>i\<in\>I> we have that <math|V<rsub|i>> is a sub-space
      of <math|V> it follows from [theorem: <reference|vector space sub-space
      is a vector space>] that <math|\<forall\>i\<in\>I> we have
      <math|0\<in\>V<rsub|i>>. So <math|0\<in\>V<rsub|k>> and as
      <math|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>0=0> we have
      <math|0\<in\><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>> so
      that <math|0\<in\>V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>>.
      Hence\ 

      <\equation>
        <label|eq 12.5.127><around*|{|0|}>\<in\>V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>
      </equation>

      On the other hand if <math|v\<in\>V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>>
      then <math|v\<in\>V<rsub|k>> and <math|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>\<subseteq\>V>
      such that <math|\<forall\>i\<in\>I\\<around*|{|k|}>> we have
      <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>>. Define now\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text| by
        >w<rsub|i>=<choice|<tformat|<table|<row|<cell|-v<text| if
        >i=k>>|<row|<cell|v<rsub|i><text| if >i\<in\>I\\<around*|{|k|}>>>>>>
      </equation*>

      then <math|\<forall\>i\<in\>I> we have

      <\equation*>
        w<rsub|i>=<choice|<tformat|<table|<row|<cell|-v\<in\>V<rsub|k><text|
        if >i=k>>|<row|<cell|v<rsub|i>\<in\>V<rsub|i><text| if
        >i\<in\>I\\<around*|{|k|}>>>>>>\<in\>V<rsub|i>
      </equation*>

      and\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>w<rsub|i>=<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>w<rsub|i>=v+w<rsub|k>=v+<around*|(|-v|)>=0
      </equation*>

      As we have also for <math|<around*|{|u<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>defined
      by <math|u<rsub|i>> that <math|\<forall\>i\<in\>I>
      <math|u<rsub|i>=0\<in\>V<rsub|i>> and
      <math|<big|sum><rsub|i\<in\>I>u<rsub|i>=0> we have, as
      <math|<big|sum><rsub|i\<in\>I>V<rsub|i>=<big|oplus><rsub|i\<in\>I>V<rsub|i>>,
      that <math|\<forall\>i\<in\>I> <math|w<rsub|i>=u<rsub|i>=0>. Hence
      <math|v=-w<rsub|k>=0> proving that <math|v\<in\><around*|{|0|}>>. Hence
      <math|V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>\<subseteq\><around*|{|0|}>>
      which combined with [eq: <reference|eq 12.5.127>] proves that\ 

      <\equation*>
        V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<around*|{|0|}>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|v\<in\><big|oplus><rsub|i\<in\>I>V<rsub|i>>
      then there exists a <with|font-series|bold|unique>
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V> such that
      <math|\<forall\>i\<in\>I> we have <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>V<rsub|i>>, hence
      <math|v\<in\><big|sum><rsub|i\<in\>I>v<rsub|i>> proving that\ 

      <\equation>
        <label|eq 12.6.127><big|oplus><rsub|i\<in\>I>V<rsub|i>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>
      </equation>

      If <math|v\<in\><big|sum><rsub|i\<in\>I>V<rsub|i>> then
      <math|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
      such that <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Assume that
      <math|\<exists\><around*|{|w<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
      with <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<neq\><around*|{|w<rsub|i>|}><rsub|i\<in\>I>>
      such that <math|\<forall\>i\<in\>I> <math|w<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>w<rsub|i>>. As
      <math|><math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<neq\><around*|{|w<rsub|i>|}><rsub|i\<in\>I>>
      there exists a <math|k\<in\>I> such that
      <math|v<rsub|k>\<neq\>w<rsub|k>>. Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|v+<around*|(|-v|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>v<rsub|i>+<around*|(|-<big|sum><rsub|i\<in\>I>w<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
        <reference|sum of sums (2)>, <reference|sum of inverses
        (2)>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|v<rsub|i>-w<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|v<rsub|i>-w<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|k|}>><around*|(|v<rsub|i>-w<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>><around*|(|v<rsub|i>-w<rsub|i>|)>+<around*|(|v<rsub|k>-w<rsub|k>|)>>>>>
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
      <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>=<around*|{|w<rsub|i>|}><rsub|i\<in\>I>>,
      proving that <math|v\<in\><big|oplus><rsub|i\<in\>I>V<rsub|i>>. Hence
      <math|<big|sum><rsub|i\<in\>I>V<rsub|i>\<subseteq\><big|oplus><rsub|i\<in\>I>V<rsub|i>>
      which combined with [eq: <reference|eq 12.6.127>] proves that\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>V<rsub|i>=<big|oplus><rsub|i\<in\>I>V<rsub|i>
      </equation*>
    </description>
  </proof>

  <\corollary>
    <label|direct sum decomposition>Let <math|V> be a vector space over a
    field <math|F>, <math|I> finite and <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a finite family of sub spaces of <math|V> then\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I>V<rsub|i>\<Leftrightarrow\>V=<big|sum><rsub|i\<in\>I>V<rsub|i><text|
      and >\<forall\>k\<in\>I<text| we have
      >V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<around*|{|0|}>
    </equation*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|v\<in\><big|oplus><rsub|i\<in\>I>V<rsub|i>>
      then there exists a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V>
      such that <math|\<forall\>i\<in\>I> we have
      <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>V<rsub|i>>, hence
      <math|v\<in\><big|sum><rsub|i\<in\>I>v<rsub|i>> proving that
      <math|<big|oplus><rsub|i\<in\>I>V<rsub|i>\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>>.
      As <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> it follows that
      <math|V\<subseteq\><big|sum><rsub|i\<in\>I>V<rsub|i>>. As by definition
      <math|><math|<big|sum><rsub|i\<in\>I>V<rsub|i>\<subseteq\>V> we have

      <\equation*>
        V=<big|sum><rsub|i\<in\>I>V<rsub|i>
      </equation*>

      Further as <math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> we have that
      <math|<big|sum><rsub|i\<in\>I>V<rsub|i>=<big|oplus><rsub|i\<in\>I>V> so
      that by the previous [theorem: <reference|direct sum conditions>] we
      have\ 

      <\equation*>
        \<forall\>k\<in\>I<text| we have >V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<around*|{|0|}>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|<text|>\<forall\>k\<in\>I<text| we
      have >V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<around*|{|0|}>>
      it follows by [theorem: <reference|direct sum conditions>] that
      <math|><math|<big|sum><rsub|i\<in\>I>V<rsub|i>=<big|oplus><rsub|i\<in\>I>V<rsub|i>>.
      Hence, as <math|V=<big|sum><rsub|i\<in\>I>V> we have\ 

      <\equation*>
        V=<big|oplus><rsub|i\<in\>I>V<rsub|i>
      </equation*>
    </description>
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
    <math|i\<in\>\<sigma\><around*|(|J\\<around*|{|k|}>|)>>, proving that

    <\equation*>
      \<sigma\><around*|(|J|)>\\<around*|{|l|}>\<subseteq\>\<sigma\><around*|(|J\\<around*|{|k|}>|)>
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
    <reference|direct sum conditions>], that\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I>V<rsub|i>
    </equation*>
  </proof>

  <\theorem>
    <label|direct sum induction argument>Let <math|V> be a vector space over
    a field <math|F>, <math|I> finite and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a family of sub-spaces of <math|V> such that\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\>I>V<rsub|i>
    </equation*>

    then <math|\<forall\>k\<in\>I> we have:\ 

    <\enumerate>
      <item><math|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<big|oplus><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>>

      <item><math|V=<around*|(|<big|oplus><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>\<oplus\>V<rsub|k>>
    </enumerate>
  </theorem>

  <\proof>
    As <math|><math|V=<big|oplus><rsub|i\<in\>I>V<rsub|i>> we have by
    [corollary: <reference|direct sum decomposition>] that

    <\equation>
      <label|eq 12.10.127>V=<big|sum><rsub|i\<in\>I>V<rsub|i><text| and
      >\<forall\>k\<in\>I<text| we have >V<rsub|k><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<around*|{|0|}>
    </equation>

    <\enumerate>
      <item>Let <math|l\<in\>I\\<around*|{|k|}>> and
      <math|v\<in\>V<rsub|l><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k,l|}>>V<rsub|i>>
      then <math|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k,l|}>>\<subseteq\>V>
      with <math|\<forall\>i\<in\>I\\<around*|{|k,l|}>>
      <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I\\<around*|{|k.l|}>>>. Define
      <math|<around*|{|w<rsub|i>|}><rsub|i\<in\>I\\<around*|{|l|}>>> by
      <math|w<rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
      >i=k>>|<row|<cell|v<rsub|i><text| if >i\<in\>I\\<around*|{|k,l|}>>>>>>>
      then as <math|0\<in\>V<rsub|k>> we have
      <math|\<forall\>i\<in\>I\\<around*|{|l|}>> that
      <math|w<rsub|i>\<in\>W<rsub|i>> and

      <\equation*>
        v=<big|sum><rsub|i\<in\>I\\<around*|{|l,k|}>>v<rsub|i>+0=<big|sum><rsub|i\<in\>I\\<around*|{|l,k|}>>w<rsub|i>+w<rsub|k>=<big|sum><rsub|i\<in\>I\\<around*|{|l,k|}>>w<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>w<rsub|i>=<big|sum><rsub|i\<in\>I\\<around*|{|l|}>>w<rsub|i>
      </equation*>

      proving that <math|v\<in\><big|sum><rsub|i\<in\>I\\<around*|{|l|}>>V<rsub|i>>.
      So <math|<big|sum><rsub|i\<in\>I\\<around*|{|k,l|}>>V<rsub|i>\<subseteq\><big|sum><rsub|i\<in\>I\\<around*|{|l|}>>V<rsub|i>>
      giving

      <\equation*>
        V<rsub|l><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k,l|}>>V<rsub|i>\<subseteq\>V<rsub|l><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|l|}>>V<rsub|i>\<equallim\><rsub|<text|[eq:
        <reference|eq 12.10.127>]>><around*|{|0|}>
      </equation*>

      Further as <math|V<rsub|l>> and <math|<big|sum><rsub|i\<in\>I\\<around*|{|k,l|}>>V<rsub|i>>
      are sub-space we have that <math|0\<in\>V<rsub|l><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k,l|}>>V<rsub|i>>
      which combined with the above proves that
      <math|V<rsub|l><big|cap><big|sum><rsub|i\<in\>I\\<around*|{|k,l|}>>V<rsub|i>=<around*|{|0|}>>.
      Applying then [theorem: <reference|direct sum conditions>] results in\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<big|oplus><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>
      </equation*>

      <item>Let <math|k\<in\>I> and <math|v\<in\>V> then
      <math|\<exists\><around*|{|v<rsub|i>|}><rsub|i\<in\>I\\<around*|{|k|}>>\<subseteq\>V>
      with <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Then

      <\equation*>
        v=<big|sum><rsub|i\<in\>I>v<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k|}>>v<rsub|i>\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>v<rsub|i>+v<rsub|k>
      </equation*>

      so that <math|v\<in\><big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>>,
      hence <math|V\<subseteq\><around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>>,
      as <math|<around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>\<subseteq\>V>
      it follows that <math|V=<around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>+V<rsub|k>>.
      Combining this with [eq: <reference|eq 12.10.127>] we have\ 

      <\equation*>
        V=<around*|(|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>\<oplus\>V<rsub|k>
      </equation*>

      As by (1) <math|<big|sum><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>=<big|oplus><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>>
      we have finally\ 

      <\equation*>
        V=<around*|(|<big|oplus><rsub|i\<in\>I\\<around*|{|k|}>>V<rsub|i>|)>\<oplus\>V<rsub|k>
      </equation*>
    </enumerate>

    \;
  </proof>

  The above theorem can be used in induction arguments as the following
  theorem shows.

  <\theorem>
    <label|direct sum dimension>Let <math|V> be a vector space over a field
    <math|F>, <math|n\<in\>\<bbb-N\>> finite and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a family of finite dimensional sub-spaces of <math|V> such that\ 

    <\equation*>
      V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>.,n|}>>V<rsub|i>
    </equation*>

    then <math|V> is finite dimensional and\ 

    <\equation*>
      dim<around*|(|V|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>dim<around*|(|V<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    W use mathematical induction the proof, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If V=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
      where <math|V<rsub|i>> are finite dimensional then <math|V> is finite
      diemsional and >dim<around*|(|V|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>dim<around*|(|V<rsub|i>|)>|}>
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
      <math|V=<big|oplus><rsub|i\<in\><around*|{|n+1|}>>V<rsub|i>> where
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|V<rsub|i>> is
      a finite dimensional sub-space of <math|F> then we have by [theorem:
      <reference|direct sum induction argument>] that\ 

      <\equation>
        <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>=<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i><text|
        and >V=<around*|(|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>\<oplus\>V<rsub|n+1>
      </equation>

      As <math|n\<in\>S> we have that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
      is finite dimensional and\ 

      <\equation>
        <label|eq 12.12.127>dim<around*|(|<big|oplus><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>dim<around*|(|V<rsub|i>|)>
      </equation>

      As <math|V<rsub|n+1>> is also finite dimensional we can use [theorem:
      <reference|vector space internal direct sum dimension>] giving that

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
    finite family of vector spaces over a field <math|F> then a
    <with|font-series|bold|tensor product> of
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is a pair <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> where\ 

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

  Notice that in the definition of a tensor product it is not guaranteed that
  there exist only one tensorproduct for a family of vector spaces. However
  the next theorem proves the tensor product (if it exist) is uniquely
  determined up to a canonical linear isomorphism.

  <\theorem>
    <label|tensor product uniqueness>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector space over a field <math|F> then if
    <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Q,\<mu\>|\<rangle\>>> be tensor products of
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then there exists a <with|font-series|bold|unique> blinear isomorphism

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
    product of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    that there exist a <math|k\<in\>Hom<around*|(|P,Q|)>> such that\ 

    <\equation>
      <label|eq 13.1.127>k\<circ\>\<nu\>=\<mu\>
    </equation>

    Likewise, as <math|\<nu\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;P|)>>
    we have, as <math|<around*|\<langle\>|Q,\<mu\>|\<rangle\>>> is a tensor
    product of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    that there exist a <math|h\<in\>Hom<around*|(|Q,P|)>> such that\ 

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
      x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>
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

    Now

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
      x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<alpha\><rsub|i>\<cdot\>x<rsub|i>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>
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

  TODO check this\ 

  Next we must prove that given a finite family of vector spaces we can
  construct a tensor product, that then wil et <with|font-series|bold|the>
  tensor product. First we show how we can given a set and a field
  <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> we can create a vector
  space that has this set as a 'basis'.

  <\definition>
    <label|vector space free predefinition><index|<math|F<around*|(|X,F|)>>>Let
    <math|X> be a non empty set and <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>>
    a field then <math|\<cal-F\><around*|(|X,F|)>> is defined by\ 

    <\equation*>
      \<cal-F\><around*|(|X,F|)>=<around*|{|f\<in\>F<rsup|X>\|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)><text|
      is finite>|}>\<subseteq\>F<rsup|X>
    </equation*>

    In other words <math|\<cal-F\><around*|(|X,F|)>> is the set of graphs of
    functions from <math|X> to <math|F> such that is non zero for a finite
    number of elements in <math|F>.\ 
  </definition>

  We define now the functions from <math|X> to <math|F> that will become the
  addition operator, scalar multiplication in
  <math|\<cal-F\><around*|(|X,F|)>> and the function to embed <math|X> in
  <math|\<cal-F\><around*|(|X,F|)>>.

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

  <\theorem>
    <label|vector space free><index|free vector space over a set>Let <math|X>
    be a set and <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> then
    <math|<around*|\<langle\>|\<cal-F\><around*|(|X,F|)>,+,\<cdot\>|\<rangle\>>>
    [see the above definition] is a vector space over the field
    <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> where the neutral
    element is <math|C<rsub|0>>. This vector space is called the
    <with|font-series|bold|free vector space over a set>.\ 
  </theorem>

  <\proof>
    Let <math|f,g\<in\>\<cal-F\><around*|(|X,F|)>>, if
    <math|x\<in\><around*|(|f+g|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
    then we have <math|<around*|(|f+g|)><around*|(|x|)>\<in\>F\\<around*|{|0|}>>
    so that <math|f<around*|(|x|)>+g<around*|(|x|)>\<neq\>0>. Then we must
    have <math|f<around*|(|x|)>\<neq\>0\<vee\>g<around*|(|x|)>\<neq\>0>
    [otherwise <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>=0>],
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
    finite set so that <math|f+g\<in\>\<cal-F\><around*|(|X,F|)>>\ 

    <\equation*>
      +:\<cal-F\><around*|(|X,F|)>\<times\>\<cal-F\><around*|(|X,F|)>\<rightarrow\>\<cal-F\><around*|(|X,F|)><text|
      is well defined>
    </equation*>

    Let <math|\<alpha\>\<in\>F> and <math|f\<in\>\<cal-F\><around*|(|X,F|)>>,
    if <math|x\<in\><around*|(|\<alpha\>\<cdot\>f|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
    then <math|\<alpha\>\<cdot\>f<around*|(|x|)>\<in\>F\\<around*|{|0|}>> so
    that <math|\<alpha\>\<cdot\>f<around*|(|x|)>\<neq\>0> hence we must have
    that <math|f<around*|(|x|)>\<neq\>0> or
    <math|x\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>. Hence
    <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<subseteq\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
    a finite set, so by [theorems: <reference|complex finite subset>]
    <math|><math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>> is finite or
    <math|\<alpha\>\<cdot\>f\<in\>\<cal-F\><around*|(|X,F|)>>, proving that\ 

    <\equation*>
      \<cdot\>:F\<times\>\<cal-F\><around*|(|X,F|)>\<rightarrow\>\<cal-F\><around*|(|X,F|)><text|
      is well defined>
    </equation*>

    Further for <math|C<rsub|0>:X\<rightarrow\>F> defined by
    <math|C<rsub|0><around*|(|x|)>=0> we have trivially that
    <math|<around*|(|C<rsub|0>|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>=\<varnothing\>>
    aa finite set hence\ 

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
        a finite set, proving that <math|<around*|(|-f|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
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
      </enumerate>
    </enumerate>
  </proof>

  We prove now that <math|<around*|{|\<delta\><rsub|a>\|a\<in\>X|}>> is a
  basis for for and that <math|X> can be embedded in
  <math|\<cal-F\><around*|(|X,F|)>> via the injection
  <math|\<delta\>:X\<rightarrow\>\<cal-F\><around*|(|X,F|)>>.

  <\theorem>
    <label|vector space free basis and embedding>Let <math|X> be a non empty
    set and <math|<around*|\<langle\>|F,+,\<cdot\>|\<rangle\>>> a field then

    <\enumerate>
      <item><math|\<delta\>:X\<rightarrow\>\<cal-F\><around*|(|X,F|)>>
      defined by <math|\<delta\><around*|(|a|)>=\<delta\><rsub|a>> is a
      injection, hence <math|X> is embedded in
      <math|\<cal-F\><around*|(|X,F|)>>

      <item><math|<around*|{|\<delta\><rsub|a>\|a\<in\>X|}>> is a basis of
      <math|X>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First we must ensure that <math|\<forall\>a\<in\>X>
      <math|\<delta\><rsub|a>\<in\>\<cal-F\><around*|(|X,F|)>>, so let
      <math|x\<in\><around*|(|\<delta\><rsub|a>|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
      then we must have that <math|<around*|(|\<delta\><rsub|a>|)><around*|(|x|)>\<neq\>0>,
      as <math|<around*|(|\<delta\><rsub|a>|)><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1<text|
      if >x=a>>|<row|<cell|0<text| if >x\<in\>X\\<around*|{|a|}>>>>>>>, we
      must have that <math|x=a> hence <math|><math|<around*|(|\<delta\><rsub|a>|)><rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<subseteq\><around*|{|a|}>>
      a finite set. So\ 

      <\equation*>
        \<forall\>a\<in\>X<text| we have >\<delta\><rsub|a>\<in\>\<cal-F\><around*|(|X,F|)>
      </equation*>

      So the following is well defined

      <\equation*>
        \<delta\>:X\<rightarrow\>\<cal-F\><around*|(|X,F|)><text| >where
        \<delta\><around*|(|a|)>=\<delta\><rsub|a>
      </equation*>

      If now <math|\<delta\><around*|(|a|)>=\<delta\><around*|(|b|)>> then
      <math|\<delta\><rsub|a>=\<delta\><rsub|b><rsub|>> and assume that
      <math|a\<neq\>b> then <math|\<delta\><rsub|a><around*|(|b|)>\<equallim\><rsub|b\<in\>X\\<around*|{|a|}>>0>
      and <math|\<delta\><rsub|b><around*|(|b|)>=1>, as <math|1\<neq\>0> in a
      field we have that <math|\<delta\><rsub|a><around*|(|b|)>\<neq\>\<delta\><rsub|b><around*|(|b|)>>
      contradicting <math|\<delta\><rsub|a>=\<delta\><rsub|b>>, hence
      <math|a=b>. So\ 

      <\equation*>
        \<delta\><text| is injective>
      </equation*>

      <item> <math|>Define\ 

      <\equation*>
        B=<around*|{|\<delta\><rsub|a>\|a\<in\>X|}>\<subseteq\>\<cal-F\><around*|(|X,F|)>
      </equation*>

      Let <math|I\<subseteq\>B>, <math|I> finite and
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>B>\<subseteq\>F> such
      that <math|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i=0>. Let
      <math|j\<in\>I> then <math|\<exists\>a\<in\>X> such that
      <math|j=\<delta\><around*|(|a|)>>. If <math|i\<in\>I\\<around*|{|j|}>>
      then <math|\<exists\>b\<in\>X> such that
      <math|i=\<delta\><around*|(|b|)>> and as <math|i\<neq\>j> we must have
      <math|a\<neq\>b> hence <math|i<around*|(|a|)>=\<delta\><around*|(|b|)><around*|(|a|)>=\<delta\><rsub|b><around*|(|a|)>=0>.
      So we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)><around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i<around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|j|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|a|)>+<big|sum><rsub|i\<in\><around*|{|j|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|j|}>>\<alpha\><rsub|i>\<cdot\>0+\<alpha\><rsub|j>\<cdot\>j<around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>\<cdot\>j<around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>\<cdot\>\<delta\><around*|(|a|)><around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>\<cdot\>\<delta\><rsub|a><around*|(|a|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|j>>>>>
      </eqnarray*>

      So we have proved that\ 

      <\equation*>
        \<forall\>i\<in\>I<text| >\<alpha\><rsub|i>=0
      </equation*>

      hence\ 

      <\equation>
        <label|eq 13.9.127>B<text| is linear independent>
      </equation>

      Next if <math|f\<in\>\<cal-F\><around*|(|X,F|)>> then
      <math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>> is finite and we have
      two cases to consider:

      <\description>
        <item*|<math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>=\<varnothing\>>>Then
        <math|f=C<rsub|0>> and as <math|X> is non empty a <math|a\<in\>X> and
        <math|0\<in\>F> such that <math|f=0\<cdot\>\<delta\><rsub|a>>. Hence
        if we define <math|I=<around*|{|\<delta\><rsub|a>|}>\<subseteq\>B>
        and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|\<delta\><rsub|a>|}>>\<subseteq\>F>
        by <math|\<alpha\><rsub|\<delta\><rsub|a>>=0> we have that
        <math|f=0\<cdot\>\<delta\><rsub|a>=<big|sum><rsub|i\<in\><around*|{|\<delta\><rsub|a>|}>>\<alpha\><rsub|i>\<cdot\>i>.
        Hence

        <\equation*>
          f\<in\>span<around*|(|B|)>
        </equation*>

        <item*|<math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<neq\>\<varnothing\>>>Then
        <math|\<exists\>a\<in\>X> such that <math|f<around*|(|a<rsub|0>|)>=0>
        and <math|a<rsub|0>\<nin\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
        \ As <math|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<subseteq\>X>
        is finite we have that \ <math|I=<around*|{|\<delta\><rsub|a>\|a\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>|}><big|cup><around*|{|\<delta\><rsub|a<rsub|0>>|}>>
        is finite. As <math|\<delta\>> is injective we have that\ 

        <\equation*>
          \<delta\>:f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>\<rightarrow\>\<delta\><around*|(|f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>|)>=<around*|{|\<delta\><rsub|a>\|a\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>|}><text|
          is a bijection>
        </equation*>

        Define now\ 

        <\equation*>
          <around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\>I><text| by
          >\<alpha\><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
          >i=\<delta\><rsub|a<rsub|0>>>>|<row|<cell|f<around*|(|\<delta\><rsup|-1><around*|(|i|)>|)><text|
          if <math|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>|}>>>>>>>>
        </equation*>

        \ \ then we have for <math|x\<in\>X> either

        <\description>
          <item*|<math|f<around*|(|x|)>=0>>Let
          <math|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>|}>> we have
          that <math|\<exists\>a\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
          such that <math|i=\<delta\><rsub|a>>, as
          <math|f<around*|(|a|)>\<neq\>0> we can not have that <math|a=x>
          [because then <math|f<around*|(|a|)>=f<around*|(|x|)>=0>], hence
          <math|\<delta\><rsub|a><around*|(|x|)>=0>. In other words

          <\equation*>
            \<forall\>i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>|}> we
            have i<around*|(|x|)>=0
          </equation*>

          So

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)><around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>+<big|sum><rsub|i\<in\><around*|{|a<rsub|0>|}>>\<alpha\><rsub|i>*\<cdot\>i<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|a<rsub|0>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>+\<alpha\><rsub|a<rsub|0>>\<cdot\>i<around*|(|\<delta\><rsub|a<rsub|0>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>|}>>\<alpha\><rsub|i>\<cdot\>0+0\<cdot\>i<around*|(|\<delta\><rsub|a<rsub|0>>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>>>
          </eqnarray*>

          <item*|<math|f<around*|(|x|)>\<neq\>0>>Then as
          <math|f<around*|(|a<rsub|0>|)>=0> we have that
          <math|x\<neq\>a<rsub|0>> so that
          <math|\<delta\><rsub|a<rsub|0>><around*|(|x|)>=0>. Further as
          <math|f<around*|(|x|)>\<neq\>0> we have that
          <math|x\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>> so that
          <math|\<delta\><rsub|x>\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>|}>>.
          Let <math|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>,\<delta\><rsub|x>|}>>
          then <math|\<exists\>a\<in\>f<rsup|-1><around*|(|F\\<around*|{|0|}>|)>>
          with <math|a\<neq\>a<rsub|0>,x> such that
          <math|i=\<delta\><rsub|a>>, hence
          <math|i<around*|(|x|)>=\<delta\><rsub|a><around*|(|x|)>\<equallim\><rsub|x\<neq\>a>0>.
          So

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)><around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>,\<delta\><rsub|x>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>+<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>+<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|x>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>,\<delta\><rsub|x>|}>>\<alpha\><rsub|i>\<cdot\>i<around*|(|x|)>+\<alpha\><rsub|\<delta\><rsub|\<alpha\><rsub|0>>>\<cdot\>\<delta\><rsub|a<rsub|0>><around*|(|x|)>+\<alpha\><rsub|\<delta\><around*|(|x|)>>\<cdot\>\<delta\><rsub|x><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I\\<around*|{|\<delta\><rsub|a<rsub|0>>,\<delta\><rsub|x>|}>>\<alpha\><rsub|i>\<cdot\>0+\<alpha\><rsub|\<delta\><rsub|\<alpha\><rsub|0>>>\<cdot\>0+f<around*|(|\<delta\><rsup|-1><around*|(|\<delta\><rsub|x>|)>|)>\<cdot\>\<delta\><rsub|x><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<delta\><rsup|-1><around*|(|\<delta\><rsub|x>|)>|)>\<cdot\>\<delta\><rsub|x><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>>>
          </eqnarray*>
        </description>

        So in all cases we have <math|<around*|(|<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i|)><around*|(|x|)>=f<around*|(|x|)>>
        proving that <math|f=<big|sum><rsub|i\<in\>I>\<alpha\><rsub|i>\<cdot\>i>,
        proving as <math|I\<subseteq\>B> that\ 

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

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|11>
    <associate|page-first|565>
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
    <associate|direct sum|<tuple|12.4|?>>
    <associate|direct sum and bijection|<tuple|12.8|?>>
    <associate|direct sum conditions|<tuple|12.6|?>>
    <associate|direct sum decomposition|<tuple|12.7|?>>
    <associate|direct sum dimension|<tuple|12.10|?>>
    <associate|direct sum induction argument|<tuple|12.9|?>>
    <associate|direct sum of sets|<tuple|12.1|?>>
    <associate|direct sum of sets properties|<tuple|12.2|?>>
    <associate|direct sum of subspaces|<tuple|12.3|?>>
    <associate|direct sum singleton|<tuple|12.5|?>>
    <associate|eq 12.1.1224|<tuple|12.1|?>>
    <associate|eq 12.10.127|<tuple|12.10|?>>
    <associate|eq 12.12.127|<tuple|12.12|?>>
    <associate|eq 12.2.124|<tuple|12.2|?>>
    <associate|eq 12.3.124|<tuple|12.4|?>>
    <associate|eq 12.3.125|<tuple|12.3|?>>
    <associate|eq 12.5.125|<tuple|12.7|?>>
    <associate|eq 12.5.127|<tuple|12.5|?>>
    <associate|eq 12.6.125|<tuple|12.8|?>>
    <associate|eq 12.6.127|<tuple|12.6|?>>
    <associate|eq 12.7.125|<tuple|12.9|?>>
    <associate|eq 13.1.127|<tuple|13.1|?>>
    <associate|eq 13.2.127|<tuple|13.2|?>>
    <associate|eq 13.3.127|<tuple|13.3|?>>
    <associate|eq 13.4.127|<tuple|13.4|?>>
    <associate|eq 13.5.127|<tuple|13.5|?>>
    <associate|eq 13.6.127|<tuple|13.6|?>>
    <associate|eq 13.7.127|<tuple|13.7|?>>
    <associate|eq 13.8.127|<tuple|13.8|?>>
    <associate|eq 13.9.127|<tuple|13.9|?>>
    <associate|tensor product|<tuple|13.1|?>>
    <associate|tensor product uniqueness|<tuple|13.2|?>>
    <associate|vector space free|<tuple|13.5|?>>
    <associate|vector space free basis and embedding|<tuple|13.6|?>>
    <associate|vector space free operations|<tuple|13.4|?>>
    <associate|vector space free predefinition|<tuple|13.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
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
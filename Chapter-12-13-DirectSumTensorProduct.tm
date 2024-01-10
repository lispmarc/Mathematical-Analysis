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
    finite family of vector spaces over a field <math|F> then
    <with|font-series|bold|a> <with|font-series|bold|tensor product>
    <with|font-series|bold|of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>>
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
    then <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> is the factor
    space [see theorem: <reference|vector space factor space>]\ 

    <\equation*>
      \<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>/span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>
    </equation*>

    giving the vector space

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,+,\<cdot\>|\<rangle\>>=<around*|\<langle\>|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>V<rsub|i>|)>/span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>,+,\<cdot\>|\<rangle\>>
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
      \<otimes\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
      by\<otimes\>=\<pi\>\<circ\>\<delta\>
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
    then we note <math|\<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>
    as <math|v<rsub|1>\<otimes\>\<cdots\>\<otimes\>v<rsub|n>> and call this
    the tensor product of the vectors <math|v<rsub|1>,\<ldots\>,v<rsub|n>>.\ 
  </definition>

  <\note>
    We use the word <with|font-series|bold|tensor product> for two different
    things. Given a family <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of vector spaces then we have a tensor product of
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    [see definition: <reference|tensor product>] or the tensor product of
    vectors in the above definition.\ 
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
  <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>.

  <\theorem>
    <label|tensor product of spaces existence>Let
    <math|n\<in\>\<bbb-N\>,<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces over a field <math|F> then\ 

    <\equation*>
      <around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>
    </equation*>

    is a tensor product [see definition: <reference|tensor product>] of
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>.
    Using [definition: <reference|tensor product>] we must prove that:

    <\enumerate>
      <item><math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> is a
      vector space over <math|F>

      <item><math|\<otimes\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>>

      <item><math|span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>

      <item><dueto|Universal factorization property>If <math|U> is a vector
      space over <math|F> and <math|\<varphi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>>
      then there exist a <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,U|)>>
      such that <math|\<varphi\>=h\<circ\>\<otimes\>>.\ 

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
      <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,+,\<cdot\>|\<rangle\>>>
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

      which as <math|\<otimes\>=\<pi\>\<circ\>\<delta\>> gives\ 

      <\equation*>
        \<otimes\>*<around*|(|<around*|[|i\<rightarrow\>x+\<alpha\>\<cdot\>y|]>v|)>=\<otimes\><around*|(|<around*|[|i\<rightarrow\>x|]>v|)>+\<alpha\>\<cdot\>\<otimes\><around*|(|<around*|[|i\<rightarrow\>y|]>v|)>
      </equation*>

      or\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x+\<alpha\>\<cdot\>y,v<rsub|i+1>\<ldots\>v<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,x,v<rsub|i+1>\<ldots\>v<rsub|n>|)>+\<alpha\>\<cdot\>\<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,y,v<rsub|i+1>\<ldots\>v<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving by [theorem: <reference|multi multilinear mapping alternative>]
      that\ 

      <\equation*>
        \<otimes\><text| is multilinear hence
        >\<otimes\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>
      </equation*>

      <item>As <math|\<otimes\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
      we have already that <math|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>\<subseteq\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>,
      so that by [theorems: <reference|linear span subsets>,
      <reference|linear span properties>] that\ 

      <\equation>
        <label|eq 13.11.127>span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>\<subseteq\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
      </equation>

      For the opposite inclusion, let <math|x\<in\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
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
      <math|\<pi\><around*|(|i|)>=\<pi\><around*|(|\<delta\><around*|(|a|)>|)>=\<otimes\><around*|(|a|)>\<in\>\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>|)>>.
      Hence by [eq: <reference|eq 13.12.127>] it follows that
      <math|x\<in\>span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>.
      So we conclude that <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>\<subseteq\>span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>,
      which combined with [eq: <reference|eq 13.11.127>] gives

      <\equation*>
        span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
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
      By [theorem: <reference|linear mapping kernal and range are subspaces>]
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

      As <math|\<cal-F\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,|)>/span<around*|(|\<cal-N\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>,F|)>|)>\<equallim\><rsub|def>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
      we have\ 

      <\equation*>
        \<exists\>!h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<ldots\>\<otimes\>V<rsub|n>,U|)><text|
        with >\<gamma\>=h\<circ\>\<pi\>
      </equation*>

      Using then [eq: <reference|eq 13.14.127>] we have that
      <math|\<varphi\>=\<gamma\>\<circ\>\<delta\>=<around*|(|h\<circ\>\<pi\>|)>\<circ\>\<delta\>=h\<circ\><around*|(|\<pi\>\<circ\>\<rho\>|)>\<equallim\><rsub|<text|[definition:
      <reference|tensor product of vectors>]>>h\<circ\>\<otimes\><rsub|<text|>>>
      giving:

      <\equation*>
        \<varphi\>=h\<circ\>\<otimes\><text| where
        <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,U|)>>>
      </equation*>
    </enumerate>
  </proof>

  So given a family <math|<around*|{|V<rsub|I>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
  of vector spaces over a field we have proved that there exist a tensor
  product of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>.
  Next we prove that this vector space is uniquely determined within a
  canonical linear isomorphism.

  <\theorem>
    <label|tensor product uniqueness>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector space over a field <math|F> then if
    <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Q,\<mu\>|\<rangle\>>> are tensor products of
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then there exists a <with|font-series|bold|unique> linear isomorphism

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
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then

    <\enumerate>
      <item>There exist a <with|font-series|bold|unique >linear isomorphism

      <\equation*>
        k:V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>\<rightarrow\>Q
      </equation*>

      such that

      <\equation*>
        k\<circ\>\<otimes\>=\<nu\>
      </equation*>

      <item>There exist a <with|font-series|bold|unique >linear isomorphism

      <\equation*>
        h:Q\<rightarrow\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
      </equation*>

      such that

      <\equation*>
        h\<circ\>\<nu\>=\<otimes\>
      </equation*>
    </enumerate>

    \ 
  </corollary>

  <\proof>
    Using [theorem: <reference|tensor product of spaces existence>]
    <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
    is a tensor product of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>.

    <\enumerate>
      <item>By [theorem: <reference|tensor product uniqueness>] here exist a
      <with|font-series|bold|unique >linear isomorphism

      <\equation*>
        k:V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>\<rightarrow\>Q
      </equation*>

      such that

      <\equation*>
        k\<circ\>\<otimes\>=\<nu\>
      </equation*>

      <item>By [theorem: <reference|tensor product uniqueness>] here exist a
      <with|font-series|bold|unique >linear isomorphism

      <\equation*>
        h:Q\<rightarrow\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
      </equation*>

      such that

      <\equation*>
        h\<circ\>\<nu\>=\<otimes\>
      </equation*>
    </enumerate>
  </proof>

  The above motivates us to use the following notation convention for tensor
  products.

  <\convention>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces then we note a tensor product as
    <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
    and <math|\<forall\>v=<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    we note <math|\<otimes\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>> as
    <math|v<rsub|1>\<otimes\>\<cdots\>\<otimes\>v<rsub|n>>. If we have to
    consider more then one tensor product of
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then can still use the notation <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>>
    to make the difference.
  </convention>

  We prove now some useful theorems about tensor products

  <\theorem>
    <label|tensor product zero>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector space over a field <math|F> and
    <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
    a tensor product of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    and <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
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

  If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
  is a family of vector spaces over a field and
  <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> is
  a family of sub-spaces then can have a tensor product
  <math|<around*|\<langle\>|P,\<mu\>|\<rangle\>>> of
  <math|><math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
  and a tensor product <math|<around*|\<langle\>|Q,\<nu\>|\<rangle\>>> of
  <math|><math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
  however it is not guaranteed that <math|Q\<subseteq\>P>. However it is
  possible to find a tensor product <math|<around*|\<langle\>|Q,\<nu\>|\<rangle\>>>
  that satisfies <math|Q\<subseteq\>P>. Which is expressed in the following
  theorem.

  <\theorem>
    <label|tensor sub soaces>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    family of vector spaces over a field <math|F>,
    <math|<around*|{|W<rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>> a
    family of sub-spaces of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    and <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
    a tensor space. Define\ 

    <\equation*>
      W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>=span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)>
    </equation*>

    then\ 

    <\equation*>
      <around*|\<langle\>|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>,\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>|\<rangle\>>
    </equation*>

    is a tensor product of <math|<around*|{|W<rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>>.
    Further we have

    <\equation*>
      W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>\<subseteq\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
    </equation*>

    <\note>
      By [theorem: <reference|product inclusion>]
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
      so the above makes sense.
    </note>
  </theorem>

  <\proof>
    If <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>W<rsub|i>>,
    <math|u,v\<in\>X<rsub|i>> and <math|\<alpha\>\<in\>F > then we have as
    <math|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>\<subseteq\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,u+\<alpha\>\<cdot\>v,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,u+\<alpha\>\<cdot\>v,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,u,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>\<otimes\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,v,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,u,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,v,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.19129>\<otimes\><rsub|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>>\<in\>Hom<around*|(|W<rsub|1>,\<ldots\>,W<rsub|n>;W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>|)>
    </equation>

    Next\ 

    <\equation>
      <label|eq 13.20.129>span<around*|(|\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)>=span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)>\<equallim\><rsub|def>W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>*
    </equation>

    Let <math|U> be a vector space over the field <math|F> and
    <math|\<varphi\>\<in\>Hom<around*|(|W<rsub|1>,\<ldots\>,W<rsub|n>;U|)>>
    then by [theorem: <reference|multi linear extension>] there exist a
    <math|\<psi\>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;U|)>> such
    that <math|\<psi\><rsub|\|<big|prod><rsub|i\<in\>1,\<ldots\>,n>W<rsub|i>>=\<varphi\>>.
    As <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\>|\<rangle\>>>
    is a tensor product there exist a <math|k\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>;U|)>>
    such that <math|\<psi\>=k\<circ\>\<otimes\>>. Define
    <math|h=k<rsub|\|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>>> then
    we have <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>
    that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|h\<circ\>\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>|)><around*|(|x|)>>|<cell|=>|<cell|h<around*|(|\<otimes\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>\<subseteq\>W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>>>|<cell|k<around*|(|\<otimes\><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.21.129>\<varphi\>=h\<circ\>\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>
    </equation>

    From [eqs: <reference|eq 13.19129>, <reference|eq 13.20.129> and
    <reference|eq 13.21.129>] we conclude that\ 

    <\equation*>
      <around*|\<langle\>|W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>,\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>>|\<rangle\>><text|
      is a tensor product of ><around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>
    </equation*>

    Finally

    As <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    we have

    <\equation*>
      \<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>=\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>\<subseteq\>\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>
    </equation*>

    <\equation*>
      W<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n>=span<around*|(|\<otimes\><rsub|\|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>W<rsub|i>|)>|)>\<subseteq\>span<around*|(|\<otimes\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>
    </equation*>

    \;
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

  The following theorem will be important for induction arguments.

  <\theorem>
    <label|tensor product induction argument>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    be a family of vector spaces over <math|F> with a tensor with a tensor
    product <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>,\<otimes\><rsub|n+1>|\<rangle\>>>
    and <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\><rsub|n>|\<rangle\>>>
    a tensor product of a <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then for <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
    defined by <math|W<rsub|1>=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
    and <math|W<rsub|2>=V<rsub|n+1>> we have a
    <math|\<otimes\>\<in\>Hom<around*|(|W<rsub|1>,W<rsub|2>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>W<rsub|n+1>|)>=Hom<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,V<rsub|m+1>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)>>
    such that <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>,\<otimes\>|\<rangle\>>>
    is a tensor product of <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>.
  </theorem>

  <\proof>
    Take the family <math|<around*|{|W<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
    by <math|W<rsub|1>=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> and
    <math|W<rsub|2>=V<rsub|n+1>> of vector spaces. Using [theorem:
    <reference|tensor product of spaces existence>] there exist a tensor
    product <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> for
    <math|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>> and
    <math|V<rsub|n+1>>, so\ 

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
      \<beta\><rsub|n,w>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>\<rightarrow\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1><text|
      by >\<beta\><rsub|n,w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>=\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,w|)>
    </equation*>

    then for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|\<alpha\>\<in\>F>, <math|u,v\<in\>V<rsub|i>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<beta\><rsub|n,w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u+\<alpha\>\<cdot\>v,v<rsub|i+1>,\<ldots\>,v<rsub|n>,w|)>>|<cell|=>|<cell|>>|<row|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u,v<rsub|i+1>,\<ldots\>,v<rsub|n>,w|)>+\<alpha\>\<cdot\>\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,v,v<rsub|i+1>,\<ldots\>,v<rsub|n>,w|)>>|<cell|=>|<cell|>>|<row|<cell|\<beta\><rsub|n,w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,u,v<rsub|i+1>,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<beta\><rsub|n,w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|i-1>,v,v<rsub|i+1>,v<rsub|i+1>,\<ldots\>,v<rsub|n>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that

    <\equation>
      <label|eq 13.25.129>\<forall\>w\<in\>V<rsub|n+1><text| we have
      >\<beta\><rsub|n,w>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)>
    </equation>

    Further for <math|\<alpha\>\<in\>F> and <math|u,v\<in\>V<rsub|n+1>> we
    have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<beta\><rsub|n,u+\<alpha\>\<cdot\>v><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>|<cell|=>|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,\<mu\>+\<alpha\>\<cdot\>v|)>>>|<row|<cell|>|<cell|=>|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,\<mu\>|)>+\<alpha\>\<cdot\>\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,v|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\><rsub|n,u><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>+\<alpha\>\<cdot\>\<beta\><rsub|n,v><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.26.129>\<beta\><rsub|n,u+\<alpha\>\<cdot\>v>=\<beta\><rsub|n,u>+\<alpha\>\<cdot\>\<beta\><rsub|n,v>
    </equation>

    As <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,\<otimes\><rsub|n>|\<rangle\>>>
    is a tensor product of <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    we have from [eq: <reference|eq 13.25.129>] that
    <math|\<forall\>w\<in\>V<rsub|n+1>> there exist a\ 

    <\equation>
      <label|eq 13.27.129>g<rsub|n,w>\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)><text|
      such that >\<beta\><rsub|n,w>=g<rsub|n,w>\<circ\>\<otimes\><rsub|n>
    </equation>

    Hence <math|\<forall\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>,
    <math|\<forall\>w\<in\>V<rsub|n+1>> we have\ 

    <\equation>
      <label|eq 13.28.129>g<rsub|n,w><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>=\<beta\><rsub|n,w><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<equallim\><rsub|<text|[eq:
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

    As <math|<around*|\<langle\>|V<rsub|1>\<otimes\>\<ldots\>\<otimes\>V<rsub|n+1>,\<otimes\><rsub|n+1>|\<rangle\>>>
    is a tensor product there exist a <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<ldots\>\<otimes\>V<rsub|n+1>,P|)>>
    such that <math|\<varphi\>=h\<circ\>\<otimes\><rsub|n+1>> or
    <math|\<forall\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>>
    we have\ 

    <\equation>
      <label|eq 13.31.129>h<around*|(|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>|)>=\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v<rsub|n+1>|)>
    </equation>

    Define now\ 

    <\equation>
      <label|eq 13.32.129>\<psi\>:<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>\<rightarrow\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1><text|
      by >\<psi\><around*|(|z,v|)>\<equallim\><rsub|<text|[eq: <reference|eq
      13.27.129>]>>g<rsub|n,v><around*|(|z|)>
    </equation>

    Then if <math|i\<in\><around*|{|1,2|}>> we have for
    <math|\<alpha\>\<in\>F> and <math|u,v\<in\>W<rsub|i>> either:

    <\description>
      <item*|<math|i=1>>Then as <math|W<rsub|i>=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
      we have <math|u,v\<in\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<psi\><around*|(|u+\<alpha\>\<cdot\>v,v<rsub|2>|)>>|<cell|=>|<cell|g<rsub|n,v<rsub|2>><around*|(|u+\<alpha\>\<cdot\>v<rsub|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.27.129>]>>>|<cell|g<rsub|n,v<rsub|2>><around*|(|u|)>+\<alpha\>\<cdot\>g<rsub|n,v<rsub|2>><around*|(|v|)>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><around*|(|u,v<rsub|2>|)>+\<alpha\>\<cdot\>\<psi\><around*|(|v,v<rsub|2>|)>>>>>
      </eqnarray*>

      <item*|<math|i=2>>Then as <math|W<rsub|2>=V<rsub|n+1>> we have
      <math|u,v\<in\>V<rsub|n+1>> and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<psi\><around*|(|v<rsub|1>,u+\<alpha\>\<cdot\>v|)>>|<cell|=>|<cell|g<rsub|n,u+\<alpha\>\<cdot\>v><around*|(|v<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.28.129>]>>>|<cell|\<beta\><rsub|n,u+\<alpha\>\<cdot\>v><around*|(|v<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 13.26.129>]>>>|<cell|\<beta\><rsub|n,u><around*|(|v<rsub|1>|)>+\<alpha\>\<cdot\>\<beta\><rsub|n,v><around*|(|v<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><around*|(|u,v<rsub|2>|)>+\<alpha\>\<cdot\>\<psi\><around*|(|v,v<rsub|2>|)>>>>>
      </eqnarray*>
    </description>

    proving that <math|\<psi\>> is multilinear or\ 

    <\equation>
      <label|eq 13.33.129>\<psi\>\<in\>Hom<around*|(|W<rsub|1>,W<rsub|2>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)>=Hom<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>,V<rsub|n+1>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)>
    </equation>

    As <math|<around*|\<langle\>|P,\<nu\>|\<rangle\>>> is a tensor product of
    <math|<big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>> there exist a

    <\equation>
      <label|eq 13.34.129>k\<in\>Hom<around*|(|P,V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)><text|
      such that >\<psi\>=k\<circ\>\<nu\>
    </equation>

    Let <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    and <math|v\<in\>V<rsub|n+1>> then as
    <math|\<otimes\><rsub|n>\<in\>Hom<around*|(|V<rsub|1>,\<ldots\>,V<rsub|n>;V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>|)>>
    we have that <math|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
    so that <math|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v|)>\<in\>P>
    in the domain of <math|k> and we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|k<around*|(|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.34.129>]>><rsub|<text|>>>|<cell|\<psi\><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>,v|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.32.129>]>>>|<cell|g<rsub|n,v><around*|(|\<otimes\><rsub|n><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.28.129>]>>>|<cell|\<otimes\><rsub|n+1><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>,v|)><eq-number><label|eq
      13.35.129>>>>>
    </eqnarray*>

    As <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<ldots\>\<otimes\>V<rsub|n+1>,P|)>>
    and <math|k\<in\>Hom<around*|(|P,V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)>>
    it follows that\ 

    <\equation*>
      k\<circ\>h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>,V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)>
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

    Next if <math|z\<in\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>=span<around*|(|\<otimes\><rsub|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>V<rsub|i>|)>|)>>
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

    Again as <math|h\<in\>Hom<around*|(|V<rsub|1>\<otimes\>\<ldots\>\<otimes\>V<rsub|n+1>,P|)>>
    and <math|k\<in\>Hom<around*|(|P,V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n+1>|)>>
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

    Let <math|z\<in\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>=span<around*|(|\<otimes\><rsub|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>|)>|)>>
    then by [theorem: <reference|linear span equivalence 1>] there exist a
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    and a <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>F>
    such that <math|z=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>.
    Using [theorem: <reference|choice family on preimage>] there exist a
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>V<rsub|i>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,l|}>>
    <math|\<otimes\><rsub|n><around*|(|y<rsub|i>|)>=z<rsub|i>>. So given
    <math|w\<in\>V<rsub|n+1>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|h<around*|(|k<around*|(|\<nu\><around*|(|z,w|)>|)>|)>>|<cell|=>|<cell|h<around*|(|k<around*|(|\<nu\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>,w|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|h<around*|(|k<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>\<nu\><around*|(|z<rsub|i>,w|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>h<around*|(|k<around*|(|\<nu\><around*|(|\<otimes\><rsub|n><around*|(|y<rsub|i>|)>,w|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 13.39.129>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>\<nu\><around*|(|\<otimes\><rsub|n><around*|(|y<rsub|i>|)>,w|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>\<nu\><around*|(|z<rsub|i>,w|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<alpha\><rsub|i>\<cdot\>z<rsub|i>,w|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|z,w|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 13.40.129>\<forall\>z\<in\>V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n><text|
      and >w\<in\>V<rsub|n+1><text| that >h<around*|(|k<around*|(|\<nu\><around*|(|z,w|)>|)>|)>=\<nu\><around*|(|z,w|)>
    </equation>

    Let <math|z\<in\><big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>> then
    <math|z=<around*|(|z<rsub|1>,z<rsub|2>|)>> with
    <math|z<rsub|1>\<in\>W<rsub|1>=V<rsub|1>\<otimes\>\<cdots\>\<otimes\>V<rsub|n>>
    and <math|z<rsub|2>\<in\>V<rsub|n+1>> then\ 

    <\equation*>
      h<around*|(|k<around*|(|\<nu\><around*|(|z|)>|)>|)>=h<around*|(|k<around*|(|\<nu\><around*|(|z<rsub|1>,z<rsub|2>|)>|)>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 13.40.129>]>>\<nu\><around*|(|z,w|)>=\<nu\><around*|(|z|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 13.41.129>\<forall\>z\<in\><big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i><text|
      we have >h<around*|(|k<around*|(|v<around*|(|z|)>|)>|)>=\<nu\><around*|(|z|)>
    </equation>

    If <math|z\<in\>P=span<around*|(|\<nu\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,.2|}>>W<rsub|i>|)>|)>>
    then by [theorem: <reference|linear span equivalence 1>] there exists a
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l|}>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,2|}>>W<rsub|i>>
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

    \ 

    \;
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
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|11>
    <associate|page-first|569>
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
    <associate|eq 13.1.127|<tuple|13.11|?>>
    <associate|eq 13.1.129|<tuple|13.1|?>>
    <associate|eq 13.10.127|<tuple|13.4|?>>
    <associate|eq 13.11.127|<tuple|13.5|?>>
    <associate|eq 13.12.127|<tuple|13.6|?>>
    <associate|eq 13.13.128|<tuple|13.7|?>>
    <associate|eq 13.14.127|<tuple|13.8|?>>
    <associate|eq 13.15.128|<tuple|13.9|?>>
    <associate|eq 13.16.128|<tuple|13.10|?>>
    <associate|eq 13.19129|<tuple|13.19|?>>
    <associate|eq 13.2.127|<tuple|13.12|?>>
    <associate|eq 13.2.129|<tuple|13.2|?>>
    <associate|eq 13.20.129|<tuple|13.20|?>>
    <associate|eq 13.21.129|<tuple|13.21|?>>
    <associate|eq 13.22.129|<tuple|13.22|?>>
    <associate|eq 13.23.129|<tuple|13.23|?>>
    <associate|eq 13.24.129|<tuple|13.24|?>>
    <associate|eq 13.25.129|<tuple|13.25|?>>
    <associate|eq 13.26.129|<tuple|13.26|?>>
    <associate|eq 13.27.129|<tuple|13.27|?>>
    <associate|eq 13.28.129|<tuple|13.28|?>>
    <associate|eq 13.29.129|<tuple|13.29|?>>
    <associate|eq 13.3.127|<tuple|13.13|?>>
    <associate|eq 13.30.129|<tuple|13.30|?>>
    <associate|eq 13.31.129|<tuple|13.31|?>>
    <associate|eq 13.32.129|<tuple|13.32|?>>
    <associate|eq 13.33.129|<tuple|13.33|?>>
    <associate|eq 13.34.129|<tuple|13.34|?>>
    <associate|eq 13.35.129|<tuple|13.35|?>>
    <associate|eq 13.36.129|<tuple|13.36|?>>
    <associate|eq 13.37.129|<tuple|13.37|?>>
    <associate|eq 13.38.129|<tuple|13.38|?>>
    <associate|eq 13.39.129|<tuple|13.39|?>>
    <associate|eq 13.4.127|<tuple|13.14|?>>
    <associate|eq 13.40.129|<tuple|13.40|?>>
    <associate|eq 13.41.129|<tuple|13.41|?>>
    <associate|eq 13.42.129|<tuple|13.42|?>>
    <associate|eq 13.5.127|<tuple|13.15|?>>
    <associate|eq 13.6.127|<tuple|13.16|?>>
    <associate|eq 13.7.127|<tuple|13.17|?>>
    <associate|eq 13.8.127|<tuple|13.18|?>>
    <associate|eq 13.9.127|<tuple|13.3|?>>
    <associate|tensor null space|<tuple|13.7|?>>
    <associate|tensor product|<tuple|13.1|?>>
    <associate|tensor product induction argument|<tuple|13.22|?>>
    <associate|tensor product linear independency|<tuple|13.21|?>>
    <associate|tensor product of spaces existence|<tuple|13.13|?>>
    <associate|tensor product of vectors|<tuple|13.10|?>>
    <associate|tensor product unique representation|<tuple|13.2|?>>
    <associate|tensor product uniqueness|<tuple|13.15|?>>
    <associate|tensor product uniqueness and existance|<tuple|13.16|?>>
    <associate|tensor product zero|<tuple|13.18|?>>
    <associate|tensor sub soaces|<tuple|13.19|?>>
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
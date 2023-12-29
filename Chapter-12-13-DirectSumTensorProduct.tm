<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <assign|chapter-nr|11>

  <chapter|Direct Sum>

  The purpose of this chapter is the extend the concept of direct sums
  introduced in [definition: \ <reference|vector space internal direct sum>].
  First we extend the define the sum of two subsets of a vector space.

  <\definition>
    <label|direct sum of two subsets>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|F> and <math|A,B\<subseteq\>V> then\ 

    <\equation*>
      A<big|cup>B=<around*|{|v=a+b\|a\<in\>A\<wedge\>b\<in\>B|}>
    </equation*>
  </definition>

  <\definition>
    <label|direct sum of sets>Let <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
    be a vector space over a field <math|F>, <math|I> a finite set and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    [a finite family of subsets of <math|V>] then the sum
    of<math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
    noted as <math|<big|sum><rsub|i\<in\>I>V<rsub|i>> is defined as\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>V<rsub|i>=<around*|{|v\<in\>V\|<around*|{|v<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>V<text|
      such that <math|\<forall\>i\<in\>I> <math|v<rsub|i>\<in\>V<rsub|i>> and
      >v=<big|sum><rsub|i\<in\>I>w<rsub|i>|}>
    </equation*>
  </definition>

  Some of the properties of finite sums of elements of the vector space
  transfer to the finite sum of a family of non emoty subsets.

  <\theorem>
    <label|direct sum of sets properties>Let
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> be a vector space
    over a field <math|F> then we have for a finite set <math|I>

    <\enumerate>
      <item>If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\><around*|{|k|}>>\<subseteq\>\<cal-P\><around*|(|V|)>>
      then <math|<big|sum><rsub|i\<in\><around*|{|k|}>>V<rsub|i>=V<rsub|k>>

      <item>If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|V|)>>
      then if <math|\<sigma\>:J\<rightarrow\>I> is a bijection then
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

      \ If <math|v\<in\><big|sum><rsub|i\<in\>J>V<rsub|\<beta\><around*|(|i|)>>>
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

      which as <math|\<forall\>i\<in\>I> <math|w<rsub|i>=<choice|<tformat|<table|<row|<cell|w\<in\>V<rsub|k><text|
      if >i=k>>|<row|<cell|v<rsub|i>\<in\>V<rsub|i><text| if
      >i\<in\>I\\<around*|{|k|}>>>>>>\<in\>V<rsub|i>>. Hence
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
      that <math|\<forall\>i<rsub|v<rsub|k>>\<in\>I> we have
      <math|v<rsub|i>\<in\>V<rsub|i>> and
      <math|v=<big|sum><rsub|i\<in\>I>v<rsub|i>>. Define\ 

      <\equation*>
        <around*|{|w<rsub|i>|}><rsub|i\<in\><around*|{|1.2|}>>\<subseteq\>V<text|
        by >w<rsub|i>=<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|j>
      </equation*>

      If <math|i\<in\><around*|{|1,2|}>> then
      <math|\<forall\>j\<in\>I<rsub|i>> <math|v<rsub|j>\<in\>V<rsub|j>> so we
      have\ 

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

      If <math|v\<in\><big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|j>|)>>
      then there exists a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,.2|}>>\<subseteq\>V>
      with <math|\<forall\>i\<in\><around*|{|1,2|}>>
      <math|v<rsub|i>\<in\>V<rsub|i>> such that
      <math|v=<big|sum><rsub|i\<in\><around*|{|1,2|}>>v<rsub|i>>. Let
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
        (1)>]>>>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>w<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|1,i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsub|2,i>>>|<row|<cell|>|<cell|=>|<cell|v<rsub|1>+v<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,2|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>v<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
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

  <chapter|Tensor Product>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|11>
    <associate|page-first|563>
    <associate|section-nr|9>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|12|?>>
    <associate|auto-2|<tuple|13|?>>
    <associate|direct sum of sets|<tuple|12.2|?>>
    <associate|direct sum of sets properties|<tuple|12.3|?>>
    <associate|direct sum of subspaces|<tuple|12.4|?>>
    <associate|direct sum of two subsets|<tuple|12.1|?>>
    <associate|eq 12.1.1224|<tuple|12.1|?>>
    <associate|eq 12.1.124|<tuple|12.1|?>>
    <associate|eq 12.2.124|<tuple|12.2|?>>
    <associate|eq 12.3.124|<tuple|12.4|?>>
    <associate|eq 12.3.125|<tuple|12.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Direct
      Sum> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Tensor
      Product> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
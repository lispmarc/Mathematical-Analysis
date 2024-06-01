<TeXmacs|2.1.4>

<style|generic>

<\body>
  \;

  <\theorem>
    Let <math|V> be<space|1em>vector space over a field <math|F>,
    <math|I<rsub|1>,I<rsub|2>> finite such that
    <math|I<rsub|1><big|cap>I<rsub|2>> and
    <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>\<cal-P\><around*|(|V|)>>
    a family of sub-spaces of <math|V> then\ 

    <\equation*>
      <big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>=<around*|(|<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>
    </equation*>

    \;
  </theorem>

  <\proof>
    If <math|v\<in\><big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>>
    then there exists a <with|font-series|bold|unique>
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2>>
    <math|v<rsub|i>\<in\>V<rsub|i>> and <math|v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>v<rsub|i>>.
    Define now

    <\equation*>
      <around*|{|v<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V<text|
      by >v<rsup|1><rsub|i>=v<rsub|i><text| and
      ><around*|{|v<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V<text|
      by <math|v<rsup|2><rsub|i>=v<rsub|i>> so that >\<forall\>i\<in\>I<text|
      >v<rsup|1><rsub|i>\<in\>V<rsub|i>\<wedge\>v<rsup|2><rsub|i>\<in\>V<rsub|i>
    </equation*>

    and <math|v<rsup|1>,v<rsup|2>> by\ 

    <\equation>
      <label|eq 12.10.131>v<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i><text|
      and >v<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>
    </equation>

    Then we have\ 

    <\equation*>
      v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>v<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>=v<rsup|1>+v<rsup|2>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 12.11.131>v=v<rsup|1>+v<rsup|2>
    </equation>

    Assume that there exists <math|<around*|{|w<rsub|i><rsup|1>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V>,
    <math|<around*|{|w<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1>>
    <math|w<rsup|1><rsub|i>\<in\>V<rsub|i>>,
    <math|\<forall\>i\<in\>I<rsub|2>> <math|w<rsup|2><rsub|i>\<in\>V<rsub|i>>
    and <math|v<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i>>,
    <math|v<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>>.
    Define then\ 

    <\equation*>
      <around*|{|w<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V<text|
      by >w<rsub|i>=<choice|<tformat|<table|<row|<cell|w<rsup|1><rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|1>>>|<row|<cell|w<rsup|2><rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i>
    </equation*>

    then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>w<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1>>w<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>=v<rsup|1>+v<rsup|2>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.11.131>]>>v
    </equation*>

    By the <with|font-series|bold|uniqueness> of
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    we must then have that <math|\<forall\>i\<in\>I>
    <math|v<rsub|i>=w<rsub|i>>, so <math|\<forall\>i\<in\>I<rsub|1>>
    <math|v<rsup|1><rsub|i>=v<rsub|i>=w<rsub|i>=w<rsup|1><rsub|i>> and
    <math|\<forall\>i\<in\>I<rsub|2>> <math|v<rsup|2><rsub|i>=v<rsub|i>=w<rsub|i>=w<rsup|2><rsub|i>>.
    Proving that\ 

    <\equation>
      <label|eq 12.12.131>v<rsup|1>\<in\><big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i><text|
      and >v<rsup|2>\<in\><big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i><text|
      and >v=v<rsup|1>+v<rsup|2>
    </equation>

    Assume now that there exists <math|u<rsup|1>\<in\><big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>>
    and <math|u<rsup|2>\<in\><big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>>
    such that <math|v=u<rsub|1>+u<rsub|2>> then there exists
    <with|font-series|bold|unique> <math|<around*|{|u<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V>,
    <math|<around*|{|u<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1>>
    <math|u<rsup|1><rsub|i>\<in\>V<rsub|i>>,
    <math|\<forall\>u\<in\>I<rsub|2>> <math|u<rsup|2><rsub|i>\<in\>V<rsub|i>>
    and <math|u<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsup|1><rsub|i>>,
    <math|u<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>u<rsup|2><rsub|i>>.
    Define then

    <\equation*>
      <around*|{|z<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V<text|
      by >z<rsub|i>=<choice|<tformat|<table|<row|<cell|u<rsup|1><rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|1>>>|<row|<cell|u<rsup|2><rsub|i>\<in\>V<rsub|i><text|
      if >i\<in\>I<rsub|2>>>>>>\<in\>V<rsub|i>
    </equation*>

    then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>z<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1>>z<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>z<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>u<rsup|2><rsub|i>=u<rsup|1>+u<rsup|2>=v
    </equation*>

    By the \ <with|font-series|bold|uniqueness> of
    <math|<around*|{|v<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    we must then have that <math|\<forall\>i\<in\>I>
    <math|v<rsub|i>=z<rsub|i>>, so <math|\<forall\>i\<in\>I<rsub|1>>
    <math|v<rsup|1><rsub|i>=v<rsub|i>=z<rsub|i>=u<rsup|1><rsub|i>> and
    <math|\<forall\>i\<in\>I<rsub|2>> <math|v<rsup|1><rsub|i>=v<rsub|i>=z<rsub|i>=u<rsup|2><rsub|i>>.
    Hence\ 

    <\equation*>
      u<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsup|1><rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i><rsup|1>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.10.131>]>>v<rsup|1><text| and
      >u<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|1>>u<rsup|2><rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsub|i><rsup|2>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.10.131>]>>v<rsup|2>
    </equation*>

    which together with [eq: <reference|eq 12.12.131>] proves that
    <math|v\<in\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>>.
    As <math|v\<in\><big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>>
    was choosen arbitrary it follows that\ 

    <\equation>
      <label|eq 12.13.131><big|oplus><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>V<rsub|i>\<subseteq\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>
    </equation>

    For the opposite inclusion, let <math|v\<in\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>|)>\<oplus\><around*|(|<big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>|)>>
    then there exists <with|font-series|bold|unique>
    <math|v<rsub|1>\<in\><big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>> and
    <math|v<rsub|2>\<in\><big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>> such
    that\ 

    <\equation>
      <label|eq 12.14.131>v=v<rsub|1>+v<rsub|2>
    </equation>

    As <math|v<rsub|1>\<in\><big|oplus><rsub|i\<in\>I<rsub|1>>V<rsub|i>> and
    <math|v<rsub|2>\<in\><big|oplus><rsub|i\<in\>I<rsub|2>>V<rsub|i>> there
    exist <with|font-series|bold|unique> <math|<around*|{|v<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V>
    , <math|<around*|{|v<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1>>
    <math|v<rsup|1><rsub|i>\<in\>V<rsub|i>>,
    <math|\<forall\>i\<in\>I<rsub|2>> <math|v<rsup|2><rsub|i>\<in\>V<rsub|i>>
    and <math|v<rsub|1>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i>>,
    <math|v<rsub|2>=<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>>.
    Define now\ 

    <\equation*>
      <around*|{|u<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V<text|
      by >u<rsub|i>=<choice|<tformat|<table|<row|<cell|v<rsup|1><rsub|i><text|
      if >i\<in\>I<rsub|1>>>|<row|<cell|v<rsup|2><rsub|i><text| if
      >i\<in\>I<rsub|2>>>>>>
    </equation*>

    then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>u<rsub|i>\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>><big|sum><rsub|i\<in\>I<rsub|1>>u<rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>u<rsub|i>=<big|sum><rsub|i\<in\>I<rsub|1>>v<rsup|1><rsub|i>+<big|sum><rsub|i\<in\>I<rsub|2>>v<rsup|2><rsub|i>=v<rsub|1>+v<rsub|2>\<equallim\><rsub|<text|[eq:
      <reference|eq 12.14.131>]>>v
    </equation*>

    proving\ 

    <\equation>
      <label|eq 12.15.131>v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>u<rsub|i><text|
      where >\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2><text| we have>
      u<rsub|i>\<in\>V<rsub|i>
    </equation>

    Assume that there exist another <math|<around*|{|w<rsub|i>|}><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>\<subseteq\>V>
    such that <math|\<forall\>i\<in\>I<rsub|1><big|cup>I<rsub|2>\<in\>V> and
    <math|v=<big|sum><rsub|i\<in\>I<rsub|1><big|cup>I<rsub|2>>w<rsub|i>>.
    Define then\ 

    <\equation*>
      <around*|{|w<rsup|1><rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>V<text|
      by >w<rsup|1><rsub|i>=w<rsub|i>\<in\>V<rsub|i><infix-and><around*|{|w<rsup|2><rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>V<text|
      by >w<rsup|2><rsub|i>\<in\>V<rsub|i>
    </equation*>

    and <math|w<rsup|1>,w<rsup|2>> by \ 

    <\equation*>
      w<rsup|1>=<big|sum><rsub|i\<in\>I<rsub|1>>w<rsup|1><rsub|i><text| and
      >w<rsup|2>=<big|sum><rsub|i\<in\>I<rsub|2>>w<rsup|2><rsub|i>
    </equation*>

    \;
  </proof>

  <\lemma>
    Let <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-R\>\<times\>\<bbb-R\>>
    satifying <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|a<rsub|i>\<leqslant\>b<rsub|i>> and
    <math|<around*|[|a<rsub|i+1>,b<rsub|i+1>|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|]>>
    then\ 

    <\enumerate-numeric>
      <item><math|\<exists\>a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b>
      such that <math|<around*|[|a,b|]>=<big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>>.

      <item>If <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|b<rsub|i>-a<rsub|i>|)>=0>
      then there exist a <math|a\<in\>\<bbb-R\>> such that
      <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|{|a|}>>
    </enumerate-numeric>
  </lemma>

  <\proof>
    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have that
    <math|<around*|[|a<rsub|i+1>,b<rsub|i+1>|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|]>>
    it follows that <math|a<rsub|i>\<leqslant\>a<rsub|i+1>\<wedge\>b<rsub|i+1>\<leqslant\>b<rsub|i>>
    so that <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is
    a increasing sequence and <math|<around*|{|b<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is decreasing sequence. Hence by [theorem: <reference|sequence increasing
    decreasing consequence>] we have that\ 

    <\equation>
      <label|eq 14.110.151><text|If >n,m\<in\>\<bbb-N\><rsub|0><text| with
      >n\<leqslant\>m<text| then >a<rsub|n>\<leqslant\>a<rsub|m>\<leqslant\>b<rsub|m>\<leqslant\>b<rsub|n>
    </equation>

    We have now\ 

    <\enumerate>
      <item>From [eq: <reference|eq 14.110.151>] it follows that
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|a<rsub|0>\<leqslant\>a<rsub|n>\<leqslant\>b<rsub|n>\<leqslant\>b<rsub|0>>
      so that <math|A=<around*|{|a<rsub|n>\|n\<in\>\<bbb-N\><rsub|0>|}>> is
      bounded above by <math|b<rsub|0>> and
      <math|B=<around*|{|b<rsub|n>\|n\<in\>\<bbb-N\><rsub|0>|}>> is bounded
      below by <math|a<rsub|0>>. As <math|\<bbb-R\>> is conditional complete
      [see theorem: <reference|complex RC is conditional complete>]
      <math|a=sup<around*|(|A|)>> and <math|b=inf<around*|(|B|)>> exist and

      <\equation>
        <label|eq 14.111.151>a=sup<around*|(|A|)>\<leqslant\>b<rsub|0><text|
        and >a<rsub|0>\<leqslant\>inf<around*|(|B|)>=b<text|>
      </equation>

      As <math|sup<around*|(|A|)>> is a upper bound of <math|A> and
      <math|inf<around*|(|B|)>> is a lower bound of <math|B> we have

      <\equation*>
        \<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        >a<rsub|i>\<leqslant\>a<text| and >b\<leqslant\>b<rsub|i><text| hence
        ><around*|[|a,b|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|]>
      </equation*>

      so that\ 

      <\equation>
        <label|eq 14.112.151><around*|[|a,b|]>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>
      </equation>

      For the opposite inclusion, let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|a<rsub|i>\<leqslant\>x\<leqslant\>b<rsub|i>> so that <math|x> is
      a upper bound of <math|A> and <math|x> is a lower bound of <math|B> so
      that <math|a=sup<around*|(|A|)>\<leqslant\>x\<wedge\>x\<leqslant\>inf<around*|(|B|)>=b>
      proving that <math|x\<in\><around*|[|a,b|]>>, hence
      \ <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>\<subseteq\><around*|[|a,b|]>>
      which together wit [eq: <reference|eq 14.112.151>] results in\ 

      <\equation*>
        <around*|[|a,b|]>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>
      </equation*>

      <item>Assume that <math|a\<less\>b> then
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|a<rsub|i>\<less\>a\<less\>b\<leqslant\>b<rsub|i>> so that
      <math|0\<less\>b-a\<less\>b<rsub|i>-a<rsub|i>>. As
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|b<rsub|i>-a<rsub|i>|)>=0>
      there exist a <math|N\<in\>\<bbb-N\><rsub|0>> such that
      <math|b<rsub|N>-a<rsub|N>=<around*|\||b<rsub|N>-a<rsub|N>|\|>\<less\>b-a>
      a contradiction. Hence we must have

      <\equation>
        <label|eq 14.113.151>b\<leqslant\>a
      </equation>

      Assume that <math|b\<less\>a> then as <math|b=inf<around*|(|B|)>> there
      exist a <math|i\<in\>\<bbb-N\><rsub|0>> such that
      <math|b\<leqslant\>b<rsub|i>\<less\>a>, further as
      <math|a=sup<around*|(|A|)>> there exist a
      <math|j\<in\>\<bbb-N\><rsub|0>> such that
      <math|b\<leqslant\>b<rsub|i>\<less\>a<rsub|j>\<leqslant\>a>. For
      <math|i,j> we have now the following possibilities to consider:\ 

      <\description>
        <item*|<math|i\<leqslant\>j>>Then we have
        <math|b<rsub|j>\<leqslant\>b<rsub|i>\<less\>a<rsub|j>> contradicting
        <math|a<rsub|j>\<leqslant\>b<rsub|j.>>

        <item*|<math|j\<less\>i>>Then we have
        <math|b<rsub|i>\<less\>a<rsub|j>\<leqslant\>a<rsub|i>> contradicting
        <math|a<rsub|i>\<leqslant\>b<rsub|i>>.
      </description>

      As in all cases we reach a contradiction the assumption must be false,
      hence <math|a\<leqslant\>b> which together with [eq: <reference|eq
      14.113.151>] proves that <math|a=b>, hence
      <math|<around*|[|a,b|]>=<around*|{|a|}>>, combining this with [eq:
      <reference|eq 14.113.151>] gives finally:\ 

      <\equation*>
        <big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|{|a|}>
      </equation*>
    </enumerate>
  </proof>

  \;

  <\lemma>
    <label|series lemma 14.342>Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\>|)>\\<around*|{|\<varnothing\>|}>>
    a finite family of non empty subsets of <math|\<bbb-R\>> such that
    <math|\<exists\>s\<in\>\<bbb-R\>> such that
    <math|\<forall\><around*|(|x<rsub|0>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i>>
    we have <math|<big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\>s> then it
    follows that <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
    <math|sup<around*|(|A<rsub|i>|)>> exists and
    <math|<big|sum><rsub|i=0><rsup|n>sup<around*|(|A<rsub|i>|)>\<leqslant\>s>
  </lemma>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
      <around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\>|)>\\<around*|{|\<varnothing\>|}><text|
      satifies >\<exists\>s\<in\>\<bbb-R\><text| such that
      >\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i><text|
      we have ><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\>s<text| then
      >\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}><text|
      >sup<around*|(|A<rsub|i>|)><text| exist and
      ><big|sum><rsub|i=0><rsup|n>x<rsub|i>\<leqslant\>s|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>Let <math|y\<in\>A<rsub|0>> then
      <math|y=<around*|(|x|)>\<in\><big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>>
      so that <math|x=<big|sum><rsub|i=0><rsup|0>y<rsub|0>\<leqslant\>s>
      proving that <math|A<rsub|0>> is bounded above by <math|s>, hence, as
      also <math|A<rsub|0>\<neq\>\<varnothing\>>, it follows from the
      conditional completeness of <math|\<bbb-R\>> [see theorem:
      <reference|complex RC is conditional complete>] that
      <math|sup<around*|(|A<rsub|0>|)>> exists and
      <math|sup<around*|(|A<rsub|0>|)>\<leqslant\>s\<Rightarrow\><big|sum><rsub|i=0><rsup|0>sup<around*|(|A<rsub|i>|)>\<leqslant\>s>.
      Hence <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\>|)>\\<around*|{|\<varnothing\>|}>>
      be such that <math|\<exists\>s\<in\>\<bbb-R\>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>A<rsub|i>>
      we have <math|<big|sum><rsub|i=0><rsup|n+1>x<rsub|i>\<leqslant\>s>. As
      <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n+1|}>>
      <math|A<rsub|i>\<neq\>\<varnothing\>>
      <math|<big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i>\<neq\>\<varnothing\>>,
      hence there exist a <math|y\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i>>.
      Then <math|\<forall\>z\<in\>A<rsub|n+1>> we have that
      <math|u=<around*|(|y<rsub|0>,\<ldots\>,y<rsub|n>,z|)>\<in\><big|prod><rsub|i=0><rsup|n+1>A<rsub|i>>
      so that <math|z+<big|sum><rsub|i=0><rsup|n>y<rsub|i>=<big|sum><rsub|i=0><rsup|n+1>u<rsub|i>\<leqslant\>s>
      or <math|z\<leqslant\>s-<big|sum><rsub|i=0><rsup|n>y<rsub|i>>. So
      <math|A<rsub|n+1>> is bounded above by
      <math|s-<big|sum><rsub|i=0><rsup|n>y<rsub|i>> which, as
      <math|A<rsub|n+1>\<neq\>\<varnothing\>>, proves by [theorem:
      <reference|complex RC is conditional complete>] that\ 

      <\equation*>
        sup<around*|(|A<rsub|n+1>|)><text| exist and
        >sup<around*|(|A<rsub|n+1>|)>\<leqslant\>s-<big|sum><rsub|i=0><rsup|n>y<rsub|i>
      </equation*>

      As <math|A<rsub|n+1>\<neq\>\<varnothing\>> there exist a
      <math|w\<in\>A<rsub|n+1>>. Take <math|v\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>A<rsub|i>>
      then <math|r=<around*|(|v<rsub|0>,\<ldots\>,v<rsub|n>,w|)>\<in\><big|prod><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>A<rsub|i>>
      so that <math|w+<big|sum><rsub|i=0><rsup|n>v<rsub|i>=<big|sum><rsub|i=0><rsup|n+1>r<rsub|i>\<leqslant\>s>
      proving that

      <\equation*>
        <big|sum><rsub|i=0><rsup|n>v<rsub|i>\<leqslant\>s-w
      </equation*>

      Hence, as <math|n\<in\>S>, we have that

      <\equation*>
        \<forall\>i\<in\><around*|{|0,\<ldots\>,n|}><text|
        >sup<around*|(|A<rsub|i>|)><text| exist and
        ><big|sum><rsub|i=0><rsup|n>sup<around*|(|A<rsub|i>|)>\<leqslant\>s-w
      </equation*>

      So <math|<big|sum><rsub|i=0><rsup|n+1>sup<around*|(|A<rsub|i>|)>=<big|sum><rsub|i=0><rsup|n>sup<around*|(|A<rsub|i>|)>+sup<around*|(|A<rsub|n+1>|)>\<leqslant\>s-w+sup<around*|(|A<rsub|n+1>|)>>,
      as further <math|w\<leqslant\>sup<around*|(|A<rsub|n+1>|)>\<Rightarrow\>-sup<around*|(||)>>
    </description>

    \ 
  </proof>

  \;

  <\theorem>
    <label|countable union of a finite family of countable sets is
    countable>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is such that
    <math|I\<neq\>\<varnothing\>\<wedge\>I> is finite and
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is countable then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is countable. In other words the
    union of a finite family of countable sets is countable. If in addition
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>\<neq\>\<varnothing\>> and
    <math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j>
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>> then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is denumerable.
  </theorem>

  <\proof>
    As <math|I> is finite and non empty there exist
    <math|n<rsub|0>\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> and a bijection
    <math|\<beta\>:n<rsub|0>\<rightarrow\>I>. Further as
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is countable there exist a
    surjection <math|\<alpha\><rsub|i>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|i>>
    [see theorem: <reference|countable set conditions (1)>].] Define now the
    function\ 

    <\equation*>
      g:n<rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      by >g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>
    </equation*>

    Now if <math|y\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> there exist a
    <math|l\<in\>I> such that <math|y\<in\>A<rsub|l>>, as <math|\<beta\>> is
    bijective there exists a <math|n\<in\>n<rsub|0>> such that
    <math|\<beta\><around*|(|n|)>=l>. As <math|\<alpha\><rsub|l>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|l>>
    is a surjection there exist a <math|m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<alpha\><rsub|l><around*|(|m|)>=y>. So

    <\equation*>
      g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>=\<alpha\><rsub|l><around*|(|m|)>=y
    </equation*>

    which proves that\ 

    <\equation*>
      g:n<rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Now by [theorem: <reference|denumerable product nxN is denumerable>]
    there exist a bijection <math|\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>n<rsub|0>\<times\>\<bbb-N\><rsub|0>>
    so that\ 

    <\equation*>
      g\<circ\>\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Using [theorem: <reference|countable set conditions (1)>] it follows that

    <\equation*>
      <big|cup><rsub|i\<in\>I>A<rsub|i><text| is countable>
    </equation*>

    Further if <math|\<forall\>i\<in\>I> <math|A<rsub|i>\<neq\>\<varnothing\>>
    and <math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j>
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>> then we can use a
    consequence of the axiom of choice [see theorem: <reference|choice Axiom
    of choice consequences>] to find a function\ 

    <\equation*>
      \<cal-C\>:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text| such
      that >\<forall\>i\<in\>I<text| >\<cal-C\><around*|(|i|)>\<in\>A<rsub|i>
    </equation*>

    If <math|\<cal-C\><around*|(|i|)>=\<cal-C\><around*|(|j|)>> then
    <math|\<cal-C\><around*|(|i|)>\<in\>A<rsub|i>> and
    <math|\<cal-C\><around*|(|i|)>=C<around*|(|j|)>\<in\>A<rsub|j>> so that
    <math|\<cal-C\><around*|(|i|)>\<in\>A<rsub|i><big|cap>A<rsub|j>\<Rightarrow\>A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>>.
    hence we must have <math|i=j> [if <math|i\<neq\>j> then
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>]. So
    <math|\<cal-C\>:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>> is a
    injection and <math|\<cal-C\>:I\<rightarrow\>\<cal-C\><around*|(|I|)>> is
    a bijection or <math|I\<approx\>\<cal-C\><around*|(|I|)>>, as <math|I> is
    countable it follows from [theorem: <reference|equipotence finite,
    denumerable , countable>] that <math|\<cal-C\><around*|(|I|)>> is
    denumerable. As <math|\<cal-C\><around*|(|I|)>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
    we have by [theorem: <reference|set containing a denumerable set is
    infinite>] that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is not finite,
    so as <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is countable we have
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is denumerable.
  </proof>

  \;

  We can now use the Baire category theorem to prove the open mapping
  theorem.

  \;

  <\theorem>
    <label|complete open mapping theorem><index|open mapping
    theorem><dueto|Open Mapping Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be Banach spaces and <math|L:X\<rightarrow\>Y> a
    <with|font-series|bold|surjective continuous linear> function then
    <math|L:X\<rightarrow\>Y> is a <with|font-series|bold|open> function.
  </theorem>

  <\proof>
    For <math|L> we have tow possible cases:

    <\description>
      <item*|<math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=0>>Then
      we have by [theorem: <reference|continuity operator norm (1)>]
      <math|\<forall\>x\<in\>X> <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>=0>
      proving that <math|\<forall\>x\<in\>X>
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>=<around*|{|0|}>>, as
      <math|L> is a surjection it follows that <math|Y=<around*|{|0|}>>. Let
      <math|U> be a open set in <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
      then <math|L<around*|(|U|)>=<around*|{|0|}>=Y> which is open in
      <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>.
      So it follows that in this case <math|L:X\<rightarrow\>Y> is a open
      function.

      <item*|<math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<neq\>0>>We
      split the proof in a set of smaller proofs.\ 

      <\equation>
        <label|eq 14.241.164>\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+><text|
        there exist a >\<lambda\>\<in\>\<bbb-R\><rsup|+><text| such that
        >B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<wide-bar\>>
      </equation>

      <\proof>
        Let <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> and <math|x\<in\>X> then
        using [theorem: <reference|complex Archimedean property consequence
        (1)>] there exist a <math|n\<in\>\<bbb-N\>> such that
        <math|<frac|2|\<delta\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>n>,
        hence <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<less\><frac|n\<cdot\>\<delta\>|2>>.
        Let <math|y=<frac|x|n>> then <math|x=n\<cdot\>y> and

        <\equation*>
          <around*|\<\|\|\>|y|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<frac|x|n>|\<\|\|\>><rsub|X>=<frac|1|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<less\><frac|1|n>\<cdot\><frac|n\<cdot\>\<delta\>|2>=<frac|\<delta\>|2>
        </equation*>

        proving that <math|x\<in\>n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>>.
        Hence we have\ 

        <\equation>
          <label|eq 14.242.164>X=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>
        </equation>

        As <math|L> is surjective

        <\eqnarray*>
          <tformat|<table|<row|<cell|Y>|<cell|=>|<cell|L<around*|(|X|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|family image and preimage>]>>>|<cell|<big|cup><rsub|n\<in\>\<bbb-N\>>L<around*|(|n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|linear mapping sum of
          sets>]>>>|<cell|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|Y>>>>
        </eqnarray*>

        hence\ 

        <\equation>
          <label|eq 14.243.164>Y=<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>
        </equation>

        Further <math|Y\<neq\>\<varnothing\>> [as <math|0\<in\>Y>] and
        <math|Y=Y<rsup|\<circ\>>> [using [theorem: <reference|topology open
        set and interior>] and the fact that <math|U> is open] so that by
        [eq: <reference|eq 14.243.164>]\ 

        <\equation>
          <label|eq 14.246.165>\<varnothing\>\<neq\><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>
        </equation>

        If <math|\<forall\>n\<in\>\<bbb-N\>>
        <math|<around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>=\<varnothing\>>
        then we have, as by [theorem: <reference|complete Baire Category>]
        <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>=<around*|\<langle\>|X,d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>|\<rangle\>>>
        is a Baire space, that <math|><math|<around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)>=\<varnothing\>>,
        contradicting [eq: <reference|eq 14.246.165>]. Hence there exist a
        <math|n\<in\>\<bbb-N\>> such that
        <math|<around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>\<neq\>\<varnothing\>>.
        So there exist a <math|z\<in\><around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>>and
        as <math|<around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>>
        is open there exist by [theorem: <reference|normed space and open
        sets>] a <math|\<beta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>>|<cell|\<subseteq\>>|<cell|<around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|normed space set operations>]>>>|<cell|<around*|(|n\<cdot\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>|)><rsup|\<circ\>>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|n\<cdot\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>>>>>
        </eqnarray*>

        so that\ 

        <\equation>
          <label|eq 14.247.165><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>
        </equation>

        Let <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>>
        then there exists <math|x<rsub|1>,x<rsub|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>>
        such that <math|x=x<rsub|1>-x<rsub|2>>, so
        <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|X>\<less\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>>
        or <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>>,
        proving

        <\equation>
          <label|eq 14.248.165>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>
        </equation>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>-L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>z>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|linear mapping sum of
          sets>]>>>|<cell|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>>>|<row|<cell|>|<cell|\<subseteq\><rsub|<text|[eq:
          <reference|eq 14.248.165>]>>>|<cell|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)><eq-number><label|eq
          14.249.165>>>>>
        </eqnarray*>

        If <math|y\<in\><big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>>
        then there exist a <math|x<rsub|1>\<in\><frac|1|n>*\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>>
        and a <math|x<rsub|2>\<in\><frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>>
        such that <math|y=x<rsub|1>-x<rsub|2>> or in other word
        <math|y\<in\><frac|1|n>*\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>>.
        So <math|<big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>\<subseteq\><frac|1|n>*\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>>,
        which combined with [eq: <reference|eq 14.249.165>] proves\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>>|<cell|\<subseteq\>>|<cell|<frac|1|n>*\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>>>|<row|<cell|>|<cell|\<subseteq\><rsub|<text|[eq:
          <reference|eq 14.247.165>]>>>|<cell|<wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>-<wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<subseteq\><rsub|<text|[eq:
          <reference|eq 14.249.165>]>>>|<cell|<wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<wide-bar\>><eq-number><label|eq
          14.250.165>>>>>
        </eqnarray*>

        Let <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|x,\<beta\>|)>>
        then by [theorem: <reference|normed space set operations>]
        <math|x-<frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|x,\<beta\>|)>>
        is open, hence <math|<big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>>
        is open. As <math|0=z-z\<in\><big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>>
        there exist by [theorem: <reference|normed space and open sets>] a
        <math|\<lambda\>\<in\>\<bbb-R\><rsup|+>> such that

        <\equation*>
          0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\><big|cup><rsub|x\<in\><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>\<cdot\>B<rsub|Y><around*|(|z,\<beta\>|)>|)>
        </equation*>

        which combined with [eq: <reference|eq 14.250.165>]\ 

        <\equation*>
          B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<wide-bar\>>
        </equation*>

        which proves [eq: <reference|eq 14.241.164>]
      </proof>

      Next we refine [eq: <reference|eq 14.241.164>] to show that\ 

      <\equation>
        <label|eq 14.251.165>If \<sigma\><rsub|0>\<in\>\<bbb-R\><rsup|+><text|
        then there exist a >\<lambda\>\<in\>\<bbb-R\><rsup|+><text| such that
        >B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,2\<cdot\>\<sigma\><rsub|o>|)>|)>
      </equation>

      <\proof>
        Using the Archimedean property of <math|\<bbb-R\>> [see theorem:
        <reference|complex Archimedean property consequence (1)>] there exist
        a <math|N\<in\>\<bbb-N\>> such that
        <math|<frac|1|N>\<less\>\<sigma\><rsub|0>>. Define
        <math|<around*|{|\<sigma\><rsub|n>|}><rsub|n\<in\>\<bbb-N\>>> by
        <math|\<sigma\><rsub|n>=<around*|(|<frac|1|N+1>|)><rsup|n>> then by
        [theorem: <reference|series power series in R>] we have that\ 

        <\equation*>
          <big|sum><rsub|n=1><rsup|\<infty\>>\<sigma\><rsub|n>=<big|sum><rsub|n=1><rsup|\<infty\>><around*|(|<frac|1|N+1>|)>=<frac|<frac|1|N+1>|1-<frac|1|N+1>>=<frac|<frac|1|N+1>|<frac|N+1-1|N+1>>=<frac|1|N>
        </equation*>

        proving that\ 

        <\equation>
          <label|eq 14.252.165><big|sum><rsub|n=1><rsup|\<infty\>>\<sigma\><rsub|n>=<frac|1|N>\<less\>\<sigma\><rsub|0>
        </equation>

        Now for all <math|n\<in\>\<bbb-N\><rsub|0>> we have by [eq:
        <reference|eq 14.241.164>] that there exist a
        <math|\<lambda\><rprime|'><rsub|n>\<in\>\<bbb-R\><rsup|+>> such that

        <\equation*>
          B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rprime|'><rsub|n>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)>|)>|\<wide-bar\>>
        </equation*>

        Define now <math|<around*|{|\<lambda\><rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
        by <math|\<lambda\><rsub|n>=min<around*|(|\<lambda\><rprime|'><rsub|n>,<frac|1|n+1>|)>>
        then we have\ 

        <\equation>
          <label|eq 14.253.165>\<forall\>n\<in\>\<bbb-N\><rsub|n><text|
          >B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|n>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)>|)>|\<wide-bar\>><text|
          and >\<lambda\><rsub|n>\<leqslant\><frac|1|n+1>
        </equation>

        Further using [example: <reference|limit 1/(a+i)>] and [theorem:
        <reference|limit sequence limited by a convergent real sequence>] it
        follows that\ 

        <\equation>
          <label|eq 14.254.165><below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0
        </equation>

        Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<sigma\><rsub|0>|)>><space|1em>We
        use now recursion to define a

        <\equation*>
          <around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>X<text|
          such that> \<forall\>n\<in\>\<bbb-N\><rsub|0><text|
          >x<rsub|n>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)><text|
          and ><around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<less\>\<lambda\><rsub|n+1>
        </equation*>

        As <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<sigma\><rsub|0>|)>>\ 

        \;

        \;
      </proof>

      \ 
    </description>

    \;
  </proof>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|open mapping theorem|?>>
    <associate|complete open mapping theorem|<tuple|5|?>>
    <associate|countable union of a finite family of countable sets is
    countable|<tuple|4|4>>
    <associate|eq 12.10.131|<tuple|1|1>>
    <associate|eq 12.11.131|<tuple|2|1>>
    <associate|eq 12.12.131|<tuple|3|1>>
    <associate|eq 12.13.131|<tuple|4|2>>
    <associate|eq 12.14.131|<tuple|5|2>>
    <associate|eq 12.15.131|<tuple|6|2>>
    <associate|eq 14.110.151|<tuple|7|3>>
    <associate|eq 14.111.151|<tuple|8|3>>
    <associate|eq 14.112.151|<tuple|9|3>>
    <associate|eq 14.113.151|<tuple|10|3>>
    <associate|eq 14.241.164|<tuple|11|?>>
    <associate|eq 14.242.164|<tuple|12|?>>
    <associate|eq 14.243.164|<tuple|13|?>>
    <associate|eq 14.246.165|<tuple|14|?>>
    <associate|eq 14.247.165|<tuple|15|?>>
    <associate|eq 14.248.165|<tuple|16|?>>
    <associate|eq 14.249.165|<tuple|17|?>>
    <associate|eq 14.250.165|<tuple|18|?>>
    <associate|eq 14.251.165|<tuple|19|?>>
    <associate|eq 14.252.165|<tuple|20|?>>
    <associate|eq 14.253.165|<tuple|21|?>>
    <associate|eq 14.254.165|<tuple|22|?>>
    <associate|series lemma 14.342|<tuple|3|3>>
  </collection>
</references>
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

  Just as with series of non negative real numbers, commutativity allows us
  to extend the definition of infinite sums for absolute convergent series in
  a Banach space.

  <\definition>
    <label|series absolute sum over a countable set><index|sum over a
    countable set><dueto|Absolute convergent series of a countable family>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    Banach space, <math|I> a countable set,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> a countable
    family in <math|X> then we say that <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>
    is absolute convergent if either:

    <\enumerate>
      <item><math|I> is finite

      <item><math|I<text| is denumerable and there exist a bijection
      <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such that
      <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>>>
      is absolute convergent [in other words
      <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
      converges]
    </enumerate>
  </definition>

  Just as in [corollary: <reference|series absolute convergence implies
  convergence>] absolute convergent series of countable families are
  convergent in a Banach space.

  TODO

  Another way of expressing the concept of absolute convergence of countable
  families is expressed in the following theorem.

  <\theorem>
    <label|series absolute convergence countable family>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a Banach space, <math|I> a countable set,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> a countable
    family in <math|X> then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent
      >\<Leftrightarrow\><text| ><big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><text|
      is convergent>
    </equation*>
  </theorem>

  <\proof>
    As <math|I> is countable we must consider two possibilities:\ 

    <\description>
      <item*|<math|I> is finite>Then we have:

      <\description>
        <item*|<math|\<Rightarrow\>>>Using [definition: <reference|series non
        negative numbers countable sums>] it follows that
        <math|<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        is convergent.

        <item*|<math|\<Leftarrow\>>>Using [definition: <reference|series
        absolute sum over a countable set>] it follows that
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent.
      </description>

      <item*|<math|I> is denumerable>Then we have:\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>
        is absolute convergent there exist a bijection
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
        is absolute convergent. Hence <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent or using [definition: <reference|series non negative
        numbers countable sums>]

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><text|
          is convergent>
        </equation*>

        <item*|<math|\<Leftarrow\>>>If <math|<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        is convergent we have by [definition: <reference|series non negative
        numbers countable sums>] that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent. Hence by [definition: <reference|series absolute sum
        over a countable set>]\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent>
        </equation*>
      </description>
    </description>

    \;
  </proof>

  Using the above definition we can extend [theorem: <reference|sum bijection
  on index>] from finite sums to countable absolute convergent sums.

  <\theorem>
    <label|series absolute convergence commutativity countable sums>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|I> a countable set,
    <math|\<beta\>:I\<rightarrow\>J> a bijection [hence <math|J> is also
    countable [see theorem: <reference|equipotence finite, denumerable ,
    countable>]] and <math|<big|sum><rsub|i\<in\>J>x<rsub|i>> a absolute
    convergent series in <math|X> then <math|<big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>>
    is absolute convergent and <math|<big|sum><rsub|i\<in\>J>x<rsub|i>=<big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>>.
  </theorem>

  <\proof>
    As <math|I> is countable we must consider two cases:\ 

    <\description>
      <item*|<math|I> is finite>Then <math|<big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>>
      converges by definition. and, as <math|J> is finite by [theorem:
      <reference|equipotence finite, denumerable , countable>], we can use
      [theorem: <reference|sum bijection on index>] to get
      <math|<big|sum><rsub|i\<in\>J>x<rsub|i>=<big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>>.

      <item*|<math|I> is denumerable>As <math|I> is denumerable there exist a
      bijection <math|\<alpha\>:\<bbb-N\><rsub|0>\<rightarrow\>I> allowing us
      to construct the bijection <math|\<beta\>\<circ\>\<alpha\>:\<bbb-N\><rsub|0>\<rightarrow\>J>.
      As <math|<big|sum><rsub|i\<in\>J>x<rsub|i>> is absolute convergent it
      follows from the definition that

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|i|)>><text|
        is absolute convergent and ><big|sum><rsub|i\<in\>J>x<rsub|i>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|i|)>>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>>
      </equation*>

      For <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>> defined by
      <math|y<rsub|i>=x<rsub|\<beta\><around*|(|i|)>>> we have
      <math|y<rsub|\<alpha\><around*|(|i|)>>=x<rsub|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>>>
      so that by the above <math|<big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|<around*|(|\<alpha\><around*|(|i|)>|)>>>
      is absolute convergent and <math|<big|sum><rsub|i\<in\>J>x<rsub|i>=<big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|\<alpha\><around*|(|i|)>>>.
      As <math|\<alpha\>:\<bbb-N\><rsub|0>\<rightarrow\>I> is a bijection it
      follows that\ 

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I>y<rsub|i><text|
        is absolute convergent and ><big|sum><rsub|i\<in\>I>x<rsub|\<beta\><around*|(|i|)>>=<big|sum><rsub|i\<in\>I>y<rsub|i>=<big|sum><rsub|i\<in\>J>x<rsub|i>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|series absolute convergence sum and scalar product>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space and <math|I> a countable set then we have:

    <\enumerate>
      <item>If <math|\<alpha\>\<in\>\<bbb-K\>> and
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> a absolute convergent series
      then <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>
      is a absolute convergent series and
      <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>>.

      <item>If <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> and
      <math|<big|sum><rsub|i\<in\>I>y<rsub|i>> are convergent series then
      <math|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>> is a
      absolute convergent series and <math|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    As <math|I> is countable we have either:\ 

    <\description>
      <item*|<math|I> is finite>Then (1) follows from [theorem:
      <reference|vector space finite sum (1)>] and (2) follows from [theorem:
      <reference|sum of sums (2)>].

      <item*|<math|I> is denumerable>Then we have:

      <\enumerate>
        <item>As <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute
        convergent there exist by definition a bijection
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
        is absolute convergent, hence <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent. Using [theorem: <reference|series absolute convergence
        sum and scalar product>] it follows that\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>=<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>|)><text|
          is a convergent series>
        </equation*>

        proving that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>>
        is absolute convergent. Hence by [definition: <reference|series
        absolute sum over a countable set>]\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)><text|
          is absolute convergent>
        </equation*>

        Further using [theorem: <reference|series absolute convergence equals
        convergence only in Banach space>]
        <math|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>
        converges and we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|series absolute convergence sum and scalar
          product>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>>>>>
        </eqnarray*>

        or

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\>I>x<rsub|i>
        </equation*>

        <item>As <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> and
        <math|<big|sum><rsub|i\<in\>I>y<rsub|i>> are absolute convergent
        there exist bijections <math|\<alpha\>:\<bbb-N\><rsub|0>\<rightarrow\>I>
        and <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> so that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<alpha\><around*|(|i|)>>>
        and <math|<big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|\<beta\><around*|(|i|)>>>
        are absolute convergent, or \ As <math|\<alpha\><rsup|-1>\<circ\>\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>>
        is a bijection it follows from [theorem: <reference|series absolute
        convergence commutativity>] that <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<alpha\><around*|(|<around*|(|\<alpha\><rsup|-1>\<circ\>\<beta\>|)><around*|(|i|)>|)>>>
        is absolute convergent. As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
        we have <math|x<rsub|\<alpha\><around*|(|<around*|(|\<alpha\><rsup|-1>\<circ\>\<beta\>|)><around*|(|i|)>|)>>=x<rsub|\<alpha\><around*|(|\<alpha\><rsup|-1><around*|(|\<beta\><around*|(|i|)>|)>|)>>=x<rsub|\<beta\><around*|(|i|)>>>
        proves that\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>><text|
          and ><big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|\<beta\><around*|(|i|)>><text|
          are absolute convergent>
        </equation*>

        Hence by definition\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>><text|
          and ><big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>><text|
          are convergent>
        </equation*>

        Using [theorem: <reference|series absolute convergence sum and scalar
        product>] it follows that

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>|)><text|
          converges>
        </equation*>

        As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
        <math|<around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        we have by the above and the dominant convergence [theorem:
        <reference|series dominant convergence>] that
        \ <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent proving that\ 

        <\equation*>
          <big|sum><rsub|i=0><rsup|\<infty\>><around*|(|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|)><text|
          is absolute convergent>
        </equation*>

        Further using [theorem: <reference|series absolute convergence equals
        convergence only in Banach space>] we have then that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|)>>
        is convergent and we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|x<rsub|\<beta\><around*|(|i|)>>+y<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|series absolute convergence sum and scalar
          product>]>>>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>+<big|sum><rsub|i=0><rsup|\<infty\>>y<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i\<in\>I>x<rsub|i>+<big|sum><rsub|i\<in\>I>y<rsub|i>
        </equation*>
      </enumerate>
    </description>
  </proof>

  <\lemma>
    <label|lemma 14.360.158>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|I,J> sets, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>X>
    and a bijection <math|\<beta\>:I\<rightarrow\>J> then\ 

    <\equation*>
      <around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
      is finite>|}>=<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>J\<wedge\>H<text|
      is finite>|}>
    </equation*>

    \ 
  </lemma>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|s\<in\><around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
      is finite>|}>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|\<exists\>H\<subseteq\>I<text|
      >H<text| finite such that >s=<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|\<exists\>H\<subseteq\>I<text|
      >H<text| finite such that >s\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>><big|sum><rsub|i\<in\>\<beta\><around*|(|H|)>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>|<cell|\<Leftrightarrowlim\><rsub|\<beta\><text|
      is bijection>>>|<cell|>>|<row|<cell|\<exists\>H\<subseteq\>J<text|
      >H<text| finite such that ><big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>|<cell|\<Leftrightarrow\>>|<cell|>>|<row|<cell|s\<in\><around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>J\<wedge\>H<text|
      is finite>|}>>|<cell|>|<cell|>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|series absolute convergence alternative definition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|I> a countable set then we have\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent in
      >X<text| >\<Leftrightarrow\><text| >sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
      is finite>|}>|)><text| exist>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|I> is countable we have two cases
      to consider:\ 

      <\description>
        <item*|<math|I> is finite>Then <math|\<forall\>x\<in\><around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H
        is fiinite|}>> we have that <math|\<exists\>H> finite with
        <math|H\<subseteq\>I> so that <math|x=<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<in\>><math|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H
        is fiinite|}>> so that <math|sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H
        is finite|}>|)>=<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        exists

        <item*|<math|I> is denumerable>Then there exist a bijection
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. As
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent we
        have by definition that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        is convergent, hence by [theorem: <reference|series non negative
        numbers equivalences>]

        <\equation*>
          sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>\<bbb-N\><rsub|0>\<wedge\>H<text|
          is finite>|}>|)><text| exist>
        </equation*>

        As <math|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>\<bbb-N\>\<wedge\>H<text|
        is finite>|}>\<equallim\><rsub|<text|[lemma: <reference|lemma
        14.360.158>]>><around*|{|<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
        is finite>|}>> so that\ 

        <\equation*>
          sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
          is finite>|}>|)><text| exist>
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>As <math|I> is countable we have two cases
      to consider:\ 

      <\description>
        <item*|<math|I> is finite>Then by definition
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent.

        <item*|<math|I> is denumerable>As <math|I> is denumerable there exist
        a bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. By the
        hypothesis <math|sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|H\<subseteq\>I\<wedge\>H<text|
        is finite>|}>|)>> exist so that by [lemma: <reference|lemma
        14.360.158>]\ 

        <\equation*>
          sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\|H\<subseteq\>\<bbb-N\><rsub|0>\<wedge\>H<text|
          is finite>|}>|)><text| exist >
        </equation*>

        which by [theorem: <reference|series non negative numbers
        equivalences>] proves that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        converges, hence using [definition: <reference|series absolute sum
        over a countable set>] <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is
        absolute convergent.
      </description>
    </description>
  </proof>

  We can now extend [theorem: <reference|series absolute convergence
  equivalences>] to the case of absolute convergent series with a countable
  index.

  <\theorem>
    <label|series absolute convergence of countable families condition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|I> a countable set then we have

    <\equation*>
      <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exist a
      finite >H\<subseteq\>I<text| such that >\<forall\>K\<subseteq\>I<text|
      with <math|K> finite and >K<big|cap>H=\<varnothing\><text| we have
      ><big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Take <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.
      As <math|I> is countable we must consider two cases:

      <\description>
        <item*|<math|I> is finite>Take <math|H=I> then if
        <math|K\<subseteq\>I> with <math|K<big|cap>H=\<varnothing\>> then
        <math|K=K<big|cap>I=K<big|cap>H=\<varnothing\>> so that
        <math|<big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>\<varnothing\>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<equallim\><rsub|<text|[definition:
        <reference|sum generalized sum>]>>0\<less\>\<varepsilon\>>

        <item*|<math|I> is denumerable>As
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent there
        exist a bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>
        such that <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
        is absolute convergent. Using [theorem: <reference|series absolute
        convergence equivalences>] there exist a finite
        <math|H<rprime|'>\<subseteq\>\<bbb-N\><rsub|0>> such that
        <math|\<forall\>K\<subseteq\>\<bbb-N\><rsub|0>> with
        <math|K<big|cap>H<rprime|'>=\<varnothing\>> we have
        <math|<big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take <math|H=\<beta\><around*|(|H<rprime|'>|)>> then <math|H> is
        finite and if <math|L\<subseteq\>I> with <math|L> finite and
        <math|L<big|cap>H=\<varnothing\>>. Them we have
        <math|\<varnothing\>=\<beta\><rsup|-1><around*|(|L<big|cap>H|)>\<equallim\><rsub|<text|[theorem:
        <reference|function function and intersection and
        union>]>>\<beta\><rsup|-1><around*|(|L|)><big|cap>\<beta\><rsup|-1><around*|(|H|)>=\<beta\><rsup|-1><around*|(|L|)><big|cap>H<rprime|'>>
        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|L|)>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        As <math|\<beta\><rsub|\|\<beta\><rsup|-1>>\<of\>\<beta\><rsup|-1><around*|(|L|)>\<rightarrow\>\<beta\><around*|(|\<beta\><rsup|-1><around*|(|L|)>|)>=L>
        is a bijection we have by [theorem: <reference|sum bijection on
        index>] that <math|<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|L|)>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>=<big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>As <math|I> is countable we must consider
      two cases:

      <\description>
        <item*|<math|I> is finite>By definition we have that
        <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent.

        <item*|<math|I> is denumerable>Then there exist a bijection
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the hypothesis
        there exist a finite <math|H<rprime|'>\<subseteq\>I> such that
        <math|\<forall\>K\<subseteq\>H> with <math|K> finite and
        <math|K<big|cap>H=\<varnothing\>> we have
        <math|<big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take <math|H=\<beta\><rsup|-1><around*|(|H<rprime|'>|)>\<subseteq\>\<bbb-N\><rsub|0>>
        and let <math|L\<subseteq\>\<bbb-N\><rsub|0>> with <math|K> finite
        and <math|L<big|cap>H=\<varnothing\>>. Then we have that

        <\equation*>
          \<varnothing\>=\<beta\><around*|(|L<big|cap>H|)>\<equallim\><rsub|\<beta\><text|
          is a bijection and [theorem: <reference|function function and
          intersection and union>]>>\<beta\><around*|(|L|)><big|cap>\<beta\><around*|(|H|)>=\<beta\><around*|(|K|)><big|cap>H<rprime|'>
        </equation*>

        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>\<beta\><around*|(|L|)>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        As <math|\<beta\><rsub|\|L>:L\<rightarrow\>\<beta\><around*|(|L|)>>
        is a bijection we have by [theorem: <reference|sum bijection on
        index>] that <math|<big|sum><rsub|i\<in\>\<beta\><around*|(|L|)>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        Using \ [theorem: <reference|series absolute convergence
        equivalences>] it follows then that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
        is absolute convergent. Hence by [definition: <reference|series
        absolute sum over a countable set>] it follows that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent>
        </equation*>
      </description>
    </description>
  </proof>

  We have now the following extension of the dominant convergent series.

  <\theorem>
    <label|series absolute convergence dominant convergence><dueto|Dominant
    Convergence>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space, <math|I> a countable set,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> such that
    there exist a <math|<around*|{|s<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><around*|[|0,\<ldots\>,\<infty\>|[>>
    such that <math|<big|sum><rsub|i\<in\>I>s<rsub|i>> is convergent and
    <math|\<forall\>i\<in\>I> we have <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\>s<rsub|i>>
    then <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent and
    <math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\>I>s<rsub|i>>
  </theorem>

  <\proof>
    As <math|I> is countable we must consider two possibilities for <math|I>\ 

    <\description>
      <item*|<math|I> is finite>Then by definition
      <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> is absolute convergent and\ 

      <\equation*>
        <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|[theorem:
        <reference|normed triangle inequality>]>><big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|[theorem:
        <reference|sum of real numbers and
        inequality>]>><big|sum><rsub|i\<in\>I>s<rsub|i>
      </equation*>

      \ 

      <item*|<math|I> is denumerable>Then as
      <math|<big|sum><rsub|i\<in\>I>s<rsub|i>> is absolute convergent there
      exist a bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such
      that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|s<rsub|i>|\<\|\|\>>>
      is absolute convergent, hence <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|s<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
      is convergent. As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|<around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<leqslant\>s<rsub|\<beta\><around*|(|i|)>>>
      it follows from [theorem: <reference|series absolute dominant
      convergence>] that

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>><text|
        converges>
      </equation*>

      and

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=0><rsup|\<infty\>>s<rsub|\<beta\><around*|(|i|)>>.
      </equation*>

      So by [definition: <reference|series absolute sum over a countable
      set>]

      <\equation*>
        <big|sum><rsub|i\<in\>I>x<rsub|i><text| is absolute convergent>
      </equation*>

      Further by [theorem: <reference|series absolute convergence equals
      convergence only in Banach space>] <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>
      converges and\ 

      <\equation*>
        <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>\<equallim\><rsub|<text|[definition:
        <reference|sum of a countable set>]>><around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=0><rsup|\<infty\>>s<rsub|\<beta\><around*|(|i|)>>\<equallim\><rsub|<text|[definition:
        <reference|sum of a countable set>]>><big|sum><rsub|i\<in\>I>x<rsub|i>
      </equation*>
    </description>
  </proof>

  We can also extend [lemma: <reference|lemma 14.356.158>] to the following
  lemma:

  <\lemma>
    <label|lemma 14.364.159>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space, <math|I> a countable,
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>> a absolute convergent series
    then <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    finite <math|K\<subseteq\>I> such that:

    <\enumerate>
      <item><math|\<forall\>L\<subseteq\>I> with <math|L> finite and
      <math|K<big|cap>L=\<varnothing\>> we have
      <math|<big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>

      <item><math|\<forall\>H\<subseteq\>I> with <math|H> finite and
      <math|K\<subseteq\>H> we have <math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>
    </enumerate>
  </lemma>

  <\proof>
    As <math|I> is countable we have two cases to consider:

    <\description>
      <item*|<math|I> is finite>Take <math|K=I> then we have:

      <\enumerate>
        <item>If <math|L\<subseteq\>I> with <math|K<big|cap>L=\<varnothing\>>
        then we have <math|L=I<big|cap>L\<equallim\><rsub|K=I>K<big|cap>L=\<varnothing\>>
        so that\ 

        <\equation*>
          <big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>\<varnothing\>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<equallim\><rsub|<text|[definition:
          <reference|sum generalized sum>]>>0\<less\>\<varepsilon\>
        </equation*>

        <item>If <math|H\<subseteq\>I> with <math|K\<subseteq\>H> then as
        <math|K=I> we have <math|H=I=K> so that\ 

        <\equation*>
          <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<less\>\<varepsilon\>
        </equation*>
      </enumerate>

      <item*|<math|I> is denumerable>Then by definition there exist a
      bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I> such that

      <\equation>
        <label|eq 14.211.159><big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>><text|
        is absolute convergent>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then using [lemma:
      <reference|lemma 14.356.158>] there exists a
      <math|K<rprime|'>\<subseteq\>\<bbb-N\><rsub|0>> such that\ 

      <\equation>
        <label|eq 14.212.159>\<forall\>L\<subseteq\>\<bbb-N\><rsub|0><text|
        with >L<text| finite >K<rprime|'><big|cap>L=\<varnothing\><text| we
        have ><around*|\<\|\|\>|<big|sum><rsub|i\<in\>L>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      <\equation>
        <label|eq 14.213.159>\<forall\>H\<subseteq\>\<bbb-N\><rsub|0><text|
        with >H<text| finite and >K<rprime|'>\<subseteq\>H<text| then
        ><around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>-<big|sum><rsub|i\<in\>H>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      Define <math|K=\<beta\><around*|(|K<rprime|'>|)>> then
      <math|K\<subseteq\>I> and by [theorem: <reference|image of a finite
      set>] <math|K> is finite. Then we have:\ 

      <\enumerate>
        <item>If <math|L\<subseteq\>I> with <math|L> finite and
        <math|K<big|cap>L=\<varnothing\>> then we have
        <math|\<beta\><rsup|-1><around*|(|L|)>\<subseteq\>\<beta\><rsup|-1><around*|(|I|)>=\<bbb-N\><rsub|0>>
        and <math|\<beta\><rsup|-1><around*|(|K|)><big|cap>\<beta\><rsup|-1><around*|(|L|)>\<equallim\><rsub|<text|[theorem:
        <reference|function function and intersection and
        union>]>>\<beta\><rsup|-1><around*|(|K<big|cap>L|)>=\<beta\><rsup|-1><around*|(|\<varnothing\>|)>=\<varnothing\>>.
        So using [eq: <reference|eq 14.212.159>] we have that
        <math|<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|L|)>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>>.
        As <math|\<beta\><rsub|\|\<beta\><rsup|-1><around*|(|L|)>>:\<beta\><rsup|-1><around*|(|L|)>\<rightarrow\>\<beta\><around*|(|\<beta\><rsup|-1><around*|(|L|)>|)>=L>
        is a bijection we have by [theorem: <reference|sum bijection on
        index>] that <math|<big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|L|)>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>
        proving

        <\equation*>
          <big|sum><rsub|i\<in\>L><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>

        <item>If <math|H\<subseteq\>I> with <math|H> finite and
        <math|K\<subseteq\>H> then as <math|\<beta\><rsup|-1>:I\<rightarrow\>\<bbb-N\><rsub|0>>
        is a bijection we have that <math|\<beta\><rsup|-1><around*|(|H|)>=<around*|(|\<beta\><rsup|-1>|)><around*|(|H|)>>
        is finite and <math|K<rprime|'>=\<beta\><rsup|-1><around*|(|\<beta\><around*|(|K<rprime|'>|)>|)>=\<beta\><rsup|-1><around*|(|K|)>\<subseteq\>\<beta\><rsup|-1><around*|(|H|)>>.
        So using [eq: <reference|eq 14.213.159>] we have

        <\equation>
          <label|eq 14.214.159><around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>-<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|H|)>>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>\<less\>\<varepsilon\>.
        </equation>

        As

        <\equation*>
          \<beta\><rsub|\|\<beta\><rsup|-1><around*|(|H|)>>:\<beta\><rsup|-1><around*|(|H|)>\<rightarrow\>\<beta\><around*|(|\<beta\><rsup|-1><around*|(|H|)>|)>=H<text|
          is a bijection>
        </equation*>

        is a bijection we have by [theorem: <reference|sum bijection on
        index>] that

        <\equation>
          <label|eq 14.215.159><big|sum><rsub|i\<in\>H>x<rsub|i>=<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|H|)>>x<rsub|\<beta\><around*|(|i|)>>
        </equation>

        proving

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|sum of a countable set>]>>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 14.215.159>]>>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>-<big|sum><rsub|i\<in\>\<beta\><rsup|-1><around*|(|H|)>>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 14.214.159>]>>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        or summarized

        <\equation*>
          <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation*>
      </enumerate>
    </description>
  </proof>

  Next we prove associativity of absolute convergence.

  <\theorem>
    <label|series absolute convergent countable associativity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|I,K> countable sets,
    <math|<around*|{|K<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|K|)>>
    a <with|font-series|bold|pairwise disjoint >family of subsets of <math|K>
    such that <math|<big|cup><rsub|i\<in\>I>K<rsub|i>=K> and
    <math|<big|sum><rsub|i\<in\>K>x<rsub|i>> a absolute convergent series
    then we have:\ 

    <\enumerate>
      <item><math|\<forall\>i\<in\>I> <math|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>>
      is absolute convergent.

      <item><math|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>>
      is absolute convergent.

      <item><math|<big|sum><rsub|i\<in\>K>x<rsub|i>=<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ As <math|<big|sum><rsub|i\<in\>K>x<rsub|i>> is absolute convergent it
    follows from [theorem: <reference|series absolute convergence countable
    family>] that\ 

    <\equation*>
      <big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><text| is
      a convergent series of non negative numbers>
    </equation*>

    Using then the associativity of series of non negative numbers [see
    theorem: <reference|series non negative numbers associativity>] it
    follows that\ 

    <\equation>
      <label|eq 14.216.159>\<forall\>i\<in\>I<text|
      ><big|sum><rsub|j\<in\>K<rsub|i>><around*|\<\|\|\>|x<rsub|j>|\<\|\|\>><text|
      converges and ><big|sum><rsub|i\<in\>K><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>><around*|\<\|\|\>|x<rsub|j>|\<\|\|\>>|)>
    </equation>

    Using [theorem: <reference|series absolute convergence dominant
    convergence>] on the above we have that

    <\equation>
      <label|eq 14.217.159>\<forall\>i\<in\>I<text| that
      ><big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j><text| is absolute converges
      and ><around*|\<\|\|\>|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|\<\|\|\>>\<leqslant\><big|sum><rsub|j\<in\>K<rsub|i>><around*|\<\|\|\>|x<rsub|j>|\<\|\|\>>
    </equation>

    Using dominant convergence [see theorem: <reference|series absolute
    convergence dominant convergence>] on [eqs: <reference|eq 14.216.159>,
    <reference|eq 14.217.159>] proves that\ 

    <\equation>
      <label|eq 14.218.159><big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)><text|
      is absolute convergent>
    </equation>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. \ As
    <math|<big|sum><rsub|i\<in\>K>x<rsub|i>> is absolute convergent we have
    by [lemma: <reference|lemma 14.364.159>] there exist a finite
    <math|G\<subseteq\>K> such that\ 

    <\equation>
      <label|eq 14.219.161>\<forall\>H\<subseteq\>K<text| with >H<text|
      finite and >G\<subseteq\>H<text| we have
      ><around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\>H>x<rsub|i>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3>
    </equation>

    Define <math|J=<around*|{|i\<in\>I\|K<rsub|i><big|cap>G\<neq\>\<varnothing\>|}>\<subseteq\>I>.
    If <math|x\<in\>G\<subseteq\>K=<big|cup><rsub|i\<in\>I>K<rsub|i>> then
    there exist a <math|i\<in\>I> such that
    <math|x\<in\>G<big|cap>K<rsub|i>\<Rightarrow\>G<big|cap>K<rsub|i>\<neq\>\<varnothing\>\<Rightarrow\>i\<in\>J>
    so that <math|x\<in\><big|cup><rsub|j\<in\>J><around*|(|K<rsub|j><big|cap>G|)>>
    proving that <math|G\<subseteq\><big|cup><rsub|j\<in\>J><around*|(|K<rsub|j><big|cap>G|)>\<subseteq\>G>
    so that

    <\equation>
      <label|eq 14.219.160>G=<big|cup><rsub|j\<in\>J><around*|(|K<rsub|j><big|cap>G|)>
    </equation>

    Assume that <math|J> is not finite then as
    <math|<around*|{|K<rsub|j><big|cap>G|}><rsub|j\<in\>J>> is a family of
    pairwise disjoint non empty sets if follows from [theorem:
    <reference|infinite family of pairwise disjoint non empty sets is
    infinite>] that <math|G=<big|cup><rsub|i\<in\>J><around*|(|K<big|cap>N<rsub|i>|)>>
    is infinite, contradicting the fact that <math|G> was finite. Hence\ 

    <\equation>
      <label|eq 14.220.159>J<text| is finite>
    </equation>

    As by [eq: <reference|eq 14.218.159>]
    <math|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)><text|>>
    is absolute convergent we can use [lemma: <reference|lemma 14.364.159>]
    again to find a finite <math|L\<subseteq\>I> such that
    <math|\<forall\>H\<subseteq\>I> with <math|H> finite and
    <math|L\<subseteq\>H> we have

    <\equation*>
      <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>H><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3>
    </equation*>

    Take <math|M=J<big|cup>L> then using [eq: <reference|eq 14.220.159>]
    <math|M> is finite, <math|M\<subseteq\>I> and <math|L\<subseteq\>H> so
    that\ 

    <\equation>
      <label|eq 14.221.519><around*|\<\|\|\>|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3>
    </equation>

    By [eq: <reference|eq 14.217.159>] <math|\<forall\>i\<in\>M\<subseteq\>I>
    <math|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>> is absolute convergent
    we have by [lemma: <reference|lemma 14.364.159>] that there exist a
    finite <math|M<rsub|i>\<subseteq\>K<rsub|i>> such that

    <\equation>
      <label|eq 14.223.159.1>\<forall\>H\<subseteq\>K<rsub|i><text| with
      >H<text| finite and >M<rsub|i>\<subseteq\>H<text| we have
      ><around*|\<\|\|\>|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>-<big|sum><rsub|j\<in\>H>x<rsub|j>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3\<cdot\>card<around*|(|M|)>>
    </equation>

    Now <math|\<forall\>i\<in\>M> define <math|N<rsub|i>=M<rsub|i><big|cup><around*|(|K<rsub|i><big|cap>G|)>>
    a finite set then we have <math|N<rsub|i>\<subseteq\>K<rsub|i>> and
    <math|M<rsub|i>\<subseteq\>N<rsub|i>> so that by the above [eq:
    <reference|eq 14.222.159>] we have\ 

    <\equation>
      <label|eq 14.222.159>\<forall\>i\<in\>M<text| we have
      ><around*|\<\|\|\>|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>-<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3\<cdot\>card<around*|(|M|)>>
    </equation>

    Now we have\ 

    <\equation*>
      G\<equallim\><rsub|<text|[eq: <reference|eq
      14.219.160>]>><big|cup><rsub|j\<in\>J><around*|(|K<rsub|j><big|cap>G|)>\<subseteq\><big|cup><rsub|j\<in\>J><around*|(|M<rsub|j><big|cup><around*|(|K<rsub|j><big|cap>G|)>|)>=<big|cup><rsub|j\<in\>M>N<rsub|j>\<subseteq\><rsub|N<rsub|j>\<subseteq\>K<rsub|j>><big|cup><rsub|j\<in\>M>K<rsub|j>\<subseteq\>K
    </equation*>

    So that by [eq: <reference|eq 14.219.161>] we have\ 

    <\equation>
      <label|eq 14.225.161><around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>|\<\|\|\>>\<less\><frac|\<varepsilon\>|3>
    </equation>

    Further\ 

    <\equation>
      <label|eq 14.226.161>\<forall\>i,j\<in\>M<text| with >i\<neq\>j<text|
      we have >N<rsub|i><big|cap>N<rsub|j>\<subseteq\>K<rsub|i><big|cap>K<rsub|j>=\<varnothing\>\<Rightarrow\>N<rsub|i><big|cap>N<rsub|j>=\<varnothing\>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>+<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>Nj>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>|\<\|\|\>>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 14.225.161>>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\>M>N<rsub|j>>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.226.161>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>+<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 14.221.519>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|)>-<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>+<frac|\<varepsilon\>|3>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\>M><around*|(|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>|\<nobracket\>>-<around*|\<nobracket\>|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>+<frac|\<varepsilon\>|3>>|<cell|\<leqslant\><rsub|M<text|
      is finite>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<big|sum><rsub|i\<in\>M><around*|\<\|\|\>|<big|sum><rsub|j\<in\>N<rsub|i>>x<rsub|j>-<big|sum><rsub|j\<in\>K<rsub|i>>|\<\|\|\>>+<frac|\<varepsilon\>|3>>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 14.223.159.1>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<big|sum><rsub|i\<in\>M><frac|\<varepsilon\>|3\<cdot\>card<around*|(|M|)>>+<frac|\<varepsilon\>|3>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
    </eqnarray*>

    So given <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have that
    <math|0\<leqslant\><around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    so that by [theorem: <reference|complex Archimedean property consequence
    (2)>] <math|><math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>K>x<rsub|i>-<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>|\<\|\|\>>>
    proving\ 

    <\equation>
      <label|eq 14.227\<point\>161><big|sum><rsub|i\<in\>K>x<rsub|i>=<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>K<rsub|i>>x<rsub|j>|)>
    </equation>

    Finally (1) is proved by [eq: <reference|eq 14.217.159>] , (2) by \ [eq:
    <reference|eq 14.218.159>] and (3) by [eq: <reference|eq
    14.227\<point\>161>].
  </proof>

  As a application of the above theorem we prove distributivity for absolute
  convergent series in <math|\<bbb-R\>>.

  <\theorem>
    <label|series distributivity>Let <math|I,J> be countable sets,
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> the Banach
    space of the real numbers [see theorem: <reference|complete set of real
    numbers>] and <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>,
    <math|<big|sum><rsub|i\<in\>J>y<rsub|j>> absolute convergent series in
    <math|\<bbb-R\>> then <math|<big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J><around*|(|x<rsub|i>,y<rsub|j>|)>>
    is absolute convergent and

    <\equation*>
      <big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J><around*|(|x<rsub|i>,y<rsub|j>|)>=<around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i>|)>\<cdot\><around*|(|<big|sum><rsub|i\<in\>J>y<rsub|j>|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>,
    <math|<big|sum><rsub|i\<in\>J>y<rsub|j>> are absolute convergent we have
    by [theorem: <reference|series absolute convergence alternative
    definition>] that

    <\equation*>
      s=sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\||x<rsub|i>|\|>\|H\<subseteq\>I\<wedge\>H<text|
      is finite>|}>|)><text| and >t=sup<around*|(|<around*|{|<big|sum><rsub|\<iota\>H><around*|\||y<rsub|i>|\|>\|H\<subseteq\>J\<wedge\>H<text|
      is finite>|}>|)><text| exists>
    </equation*>

    Let <math|H> be a finite subset of <math|I\<times\>J>. As
    <math|\<pi\><rsub|1>:H\<rightarrow\>\<pi\><rsub|1><around*|(|H|)>> and
    <math|\<pi\><rsub|2>:H\<rightarrow\>\<pi\><rsub|2><around*|(|H|)>> are
    surjective we have that <math|\<pi\><rsub|1><around*|(|H|)>,\<pi\><rsub|2><around*|(|H|)>>
    are finite [see theorem: <reference|surjection f:A-\<gtr\>B if A is
    finite then B is finite>]. Further if
    <math|<around*|(|i,j|)>\<in\>H\<subseteq\>I\<times\>J> then
    <math|i=\<pi\><rsub|1><around*|(|<around*|(|i,j|)>|)>\<in\>\<pi\><rsub|1><around*|(|H|)>>
    and <math|j=\<pi\><rsub|2><around*|(|<around*|(|i,j|)>|)>\<in\>\<pi\><rsub|2><around*|(|H|)>>
    proving that <math|<around*|(|i,j|)>\<in\>\<pi\><rsub|1><around*|(|H|)>\<times\>\<pi\><rsub|2><around*|(|H|)>>
    or\ 

    <\equation*>
      H\<subseteq\>\<pi\><rsub|1><around*|(|H|)>\<times\>\<pi\><rsub|2><around*|(|H|)>
    </equation*>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>H><around*|\||x<rsub|i>\<cdot\>y<rsub|j>|\|>>|<cell|=>|<cell|<big|sum><rsub|\<alpha\>\<in\>H><around*|(|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|j>|\|>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|(|\<pi\><rsub|1><around*|(|H|)>\<times\>\<pi\><rsub|2><around*|(|H|)>|)>\\H><around*|(|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|j>|\|>|)>+<big|sum><rsub|<around*|(|i,j|)>\<in\>H><around*|(|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|j>|\|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<pi\><rsub|1><around*|(|H|)>\<times\>\<pi\><rsub|2><around*|(|H|)>><around*|(|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|j>|\|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[corollary:
      <reference|sum distributivity>]>>>|<cell|<around*|(|<big|sum><rsub|i\<in\>\<pi\><rsub|1><around*|(|H|)>><around*|\||x<rsub|i>|\|>|)>\<cdot\><around*|(|<big|sum><rsub|i\<in\>\<pi\><rsub|2><around*|(|H|)>><around*|\||y<rsub|i>|\|>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|s\<cdot\>t>>>>
    </eqnarray*>

    From the above it follows that <math|<around*|{|<big|sum><rsub|i\<in\>H><around*|\||x<rsub|i>\<cdot\>y<rsub|i>|\|>\|H\<subseteq\>I\<wedge\>H<text|
    is finite>|}>> has the upper bound <math|s\<cdot\>t> so that by the
    conditional completeness of <math|\<bbb-R\>> [see theorem:
    <reference|complex RC is conditional complete>]
    <math|sup<around*|(|<around*|{|<big|sum><rsub|i\<in\>H><around*|\||x<rsub|i>\<cdot\>y<rsub|i>|\|>\|H\<subseteq\>I\<wedge\>H<text|
    is finite>|}>|)>> exist. Hence using [theorem: <reference|series absolute
    convergence alternative definition>]\ 

    <\equation>
      <label|eq 14.228.161><big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J><around*|(|x<rsub|i>\<cdot\>x<rsub|j>|)><text|
      is absolute convergent>
    </equation>

    Next we prove that\ 

    <\equation>
      <label|eq 14.229.161>I\<times\>J=<big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)><text|
      and >\<forall\>i,j\<in\>I<text| with >i\<neq\>j<text| we have
      ><around*|(|<around*|{|i|}>\<times\>J|)><big|cap><around*|(|<around*|{|j|}><big|cap>J|)>=\<varnothing\>
    </equation>

    <\proof>
      As <math|\<forall\>i\<in\>I> we have
      <math|<around*|{|i|}>\<times\>J\<subseteq\>I\<times\>J> it follows that
      <math|<big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)>\<subseteq\>I\<times\>J>,
      further if <math|<around*|(|r,s|)>\<in\>I\<times\>J> we have
      <math|r\<in\>I\<wedge\>s\<in\>J> so that
      <math|<around*|(|r,s|)>\<in\><around*|{|r|}>\<times\>J\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)>>
      or <math|I\<times\>J\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)>>.
      Hence\ 

      <\equation*>
        I\<times\>J=<big|cup><rsub|i\<in\>I><around*|(|<around*|{|i|}>\<times\>J|)>
      </equation*>

      Further if <math|i,j\<in\>I> with <math|i\<neq\>j> then if
      <math|<around*|(|r,s|)>\<in\><around*|(|<around*|{|i|}>\<times\>J|)><big|cap><around*|(|<around*|{|j|}><big|cap>J|)>>
      then <math|r=i\<wedge\>r=j\<Rightarrow\>i=j> contradicting
      <math|i\<neq\>j> so we have\ 

      <\equation*>
        <around*|(|<around*|{|i|}>\<times\>J|)><big|cap><around*|(|<around*|{|j|}><big|cap>J|)>=\<varnothing\><text|
        >\<forall\>i,j\<in\>I<text| with >i\<neq\>j
      </equation*>
    </proof>

    Let \ <math|i\<in\>I> and take <math|<around*|(|r,s|)>,<around*|(|r<rprime|'>,s<rprime|'>|)>\<in\><around*|{|i|}>\<times\>J>
    such that <math|\<pi\><rsub|2><around*|(|<around*|(|r,s|)>|)>=\<pi\><rsub|2><around*|(|<around*|(|r<rprime|'>,s<rprime|'>|)>|)>>
    then <math|r=i=r<rprime|'>> and <math|s=s<rprime|'>> so that
    <math|<around*|(|r,s|)>=<around*|(|r<rprime|'>,s<rprime|'>|)>>. Further
    if <math|j\<in\>J> then <math|<around*|(|i,j|)>\<in\><around*|{|i|}>\<times\>J>
    and <math|\<pi\><rsub|2><around*|(|<around*|(|i,j|)>|)>=j>. So we have
    that

    <\equation>
      <label|eq 14.230.161>\<forall\>i\<in\>I<text| we have that
      >\<pi\><rsub|2>:<around*|{|i|}>\<times\>J\<rightarrow\>J<text| is a
      bijection>
    </equation>

    Using the previous theorem [theorem: <reference|series absolute
    convergent countable associativity>] on [eqs: <reference|eq 14.228.161>,
    <reference|eq 14.229.161>]

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J><around*|(|x<rsub|i>\<cdot\>y<rsub|j>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|<around*|(|r,s|)>\<in\><around*|{|i|}>\<times\>J><around*|(|x<rsub|r>\<cdot\>y<rsub|s>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|r,s|)>\<in\><around*|{|i|}>\<times\>J\<Rightarrow\>x<rsub|r>=x<rsub|i>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|<around*|(|r,s|)>\<in\><around*|{|i|}>\<times\>J><around*|(|x<rsub|i>\<cdot\>y<rsub|\<pi\><rsub|2><around*|(|r,s|)>><rsub|>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|series absolute convergence sum and scalar
      product>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i>\<cdot\><big|sum><rsub|<around*|(|r,s|)>>y<rsub|\<pi\><rsub|2><around*|(|r,s|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|series absolute convergence commutativity countable
      sums>]>\<wedge\><text|[eq: <reference|eq
      14.230.161>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|(|x<rsub|i\<cdot\>><big|sum><rsub|j\<in\>J><rsub|>y<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|series absolute convergence sum and scalar
      product>]>>>|<cell|<around*|(|<big|sum><rsub|i\<in\>I>x<rsub|i>|)>\<cdot\><around*|(|<big|sum><rsub|j\<in\>J>y<rsub|j>|)>>>>>
    </eqnarray*>
  </proof>

  \;

  <\definition>
    <label|diff (i-\<gtr\>x)><index|<math|<around*|(|i\<rightarrow\>x|)>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of sets, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>n|}>>X<rsub|j>>
    then we define\ 

    <\equation*>
      <around*|(|i\<rightarrow\>x|)>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j><text|
      by >t\<rightarrow\><around*|(|i\<rightarrow\>x|)><around*|(|t|)><text|
      where ><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t<text|
      if >j=i>>>>>
    </equation*>

    In other words <math|<around*|(|i\<rightarrow\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i,>x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>
  </definition>

  <\lemma>
    <label|lemma 16.24.178>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of sets, <math|U\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>n|}>\\<around*|{|i|}>>X<rsub|j>>
    then

    <\equation*>
      <around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>
    </equation*>
  </lemma>

  <\proof>
    Let <math|t\<in\><around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>
    then <math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>\<in\>U> hence
    <math|\<pi\><rsub|i><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)>\<in\>\<pi\><rsub|i><around*|(|U|)>>.As

    <\equation*>
      \<pi\><rsub|i><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)>=<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|i>\<equallim\><rsub|det>t
    </equation*>

    it follows that <math|t\<in\>\<pi\><rsub|i><around*|(|U|)>>. Hence we
    have\ 

    <\equation*>
      <around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.25.178>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of vector spaces over the field <math|\<bbb-K\>>,
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    and <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have

    <\enumerate>
      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>=x>

      <item><math|\<forall\>s,t\<in\>X<rsub|i><text| we have
      ><around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|s|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t-s|)>>

      <item><math|\<forall\>t\<in\>X<rsub|i><text| we have
      ><around*|(|i\<rightarrow\>x|)><around*|(|t|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t|)>+<around*|(|i\<rightarrow\>x|)><around*|(|0|)>>

      <item><math|\<forall\>s\<in\>X<rsub|i>> we have
      <math|x+<around*|(|i\<rightarrow\>0|)><around*|(|s|)>=<around*|(|i\<rightarrow\>x|)><around*|(|s+x<rsub|i>|)>>
    </enumerate>

    where <math|0\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|i>>
    is defined by <math|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><math|Let j\<in\><around*|{|1,\<ldots\>,n|}>> then we have

      <\equation*>
        <around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
        if >j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|x<rsub|i><text|
        if >i=j>>>>>=x<rsub|j>
      </equation*>

      proving that\ 

      <\equation*>
        <around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>=x
      </equation*>

      <item>Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|s|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|k>-<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|s|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
        if >k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t<text|
        if >k=i>>>>>-<choice|<tformat|<table|<row|<cell|x<rsub|k><text| if
        >k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|s<text|
        if >k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0<text|
        if >k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t-s<text|
        if >k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|i\<rightarrow\>0|)><around*|(|t-s|)>>>>>
      </eqnarray*>

      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>>

      <item>
    </enumerate>

    \;
  </proof>

  <\definition>
    <label|diff delta function><index|<math|\<Delta\><rsub|i,j>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of vector spaces, <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|x\<in\>X<rsub|i>> then we define\ 

    <\equation*>
      \<Delta\><rsub|i,j>:X<rsub|i>\<rightarrow\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|k><text|
      by >\<Delta\><rsub|i,j><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|x<text|
      if >i=j>>|<row|<cell|0<rsub|j><text| if >i\<neq\>j>>>>><text| where
      >0<rsub|j><text| is the neutral element in <math|X<rsub|j>>>
    </equation*>

    In other words <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we
    have <math|\<Delta\><rsub|i,i><around*|(|x|)>=x\<in\>X<rsub|i>\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|k>>
    and <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
    we have <math|\<Delta\><rsub|i,j><around*|(|x|)>=0<rsub|j>\<in\>X<rsub|j>\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|k>>.
  </definition>

  We have now the following lemmas\ 

  \;

  <\theorem>
    <label|continuity L(X,L(Y,Z)) is isometric with L(X,Y;Z)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then we can construct a linear
    isometric isomorphism\ 

    <\equation*>
      \<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)>
    </equation*>

    between <math|L<around*|(|X,Y;Z|)>> and
    <math|L<around*|(|X,L<around*|(|Y,Z|)>|)>>. Hence by [theorem:
    <reference|normed isometry and inverse>], if we take
    <math|\<psi\>=\<varphi\><rsup|-1>> then\ 

    <\equation*>
      \<psi\>:L<around*|(|X,L<around*|(|Y,Z|)>|)>\<rightarrow\>L<around*|(|X,Y;Z|)><text|
      is a linear isometric isomorphism>
    </equation*>

    In other words <math|L<around*|(|X,L<around*|(|Y,Z|)>|)>> and
    <math|L<around*|(|X,Y;Z|)>> are isometric [see definition:
    <reference|normed linear isometry>] or

    <\equation*>
      L<around*|(|X,L<around*|(|Y,Z|)>|)>\<approx\>L<around*|(|X,Y;Z|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|L\<in\>L<around*|(|X,Y;Z|)>> and given <math|x\<in\>X> define\ 

    <\equation>
      <label|eq 14.75.149>L<rsub|x>:Y\<rightarrow\>Z<text| by
      >L<rsub|x><around*|(|y|)>=L<around*|(|x,y|)>
    </equation>

    If <math|r,s\<in\>Y> and <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

    <\equation*>
      L<rsub|x><around*|(|r+\<alpha\>\<cdot\>s|)>=L<around*|(|x,r+\<alpha\>\<cdot\>s|)>\<equallim\><rsub|<text|multilinearity>>L<around*|(|x,r|)>+\<alpha\>\<cdot\>L<around*|(|x,s|)>=L<rsub|x><around*|(|r|)>+\<alpha\>\<cdot\>L<rsub|x><around*|(|s|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 14.76.149>L<rsub|x>\<in\>Hom<around*|(|Y,Z|)>
    </equation>

    Further for <math|r\<in\>Y> we have\ 

    <\equation*>
      <around*|\<\|\|\>|L<rsub|x><around*|(|r|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|L<around*|(|x,r|)>|\<\|\|\>><rsub|Z>\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|Y>
    </equation*>

    proving by [theorem: <reference|continuity linear mapping (1)>] and
    [definition: <reference|continuity operator norm>] that

    <\equation>
      <label|eq 14.77.149>\<forall\>x\<in\>X<text|
      >L<rsub|x>\<in\>L<around*|(|Y,Z|)><text| and
      ><around*|\<\|\|\>|L<rsub|x>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation>

    The above allows us, given <math|L\<in\>L<around*|(|X,Y;Z|)>>, define\ 

    <\equation>
      <label|eq 14.78.149>\<varphi\><rsub|L>:X\<rightarrow\>L<around*|(|Y,Z|)><text|
      by >\<varphi\><rsub|L><around*|(|x|)>=L<rsub|x>
    </equation>

    Then if <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> we have for
    <math|r\<in\>Y> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y|)>|)><around*|(|r|)>>|<cell|=>|<cell|L<rsub|x+\<alpha\>\<cdot\>y><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<around*|(|x+\<alpha\>\<cdot\>y,r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|multilinearity>>>|<cell|L<around*|(|x,r|)>+\<alpha\>\<cdot\>L<around*|(|y,r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<rsub|x><around*|(|r|)>+\<alpha\>\<cdot\>L<rsub|y><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|\<varphi\><rsub|L><around*|(|y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L><around*|(|y|)>|)><around*|(|r|)>>>>>
    </eqnarray*>

    proving that <math|\<varphi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y|)>=\<varphi\><rsub|L><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L><around*|(|y|)>>.
    Hence

    <\equation>
      <label|eq 14.79.149>\<varphi\><rsub|L>\<in\>Hom<around*|(|X,L<around*|(|Y,Z|)>|)>
    </equation>

    For <math|x\<in\>X> we have\ 

    <\equation*>
      <around*|\<\|\|\>|\<varphi\><rsub|L><around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>><around*|\<\|\|\>|L<rsub|x>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.77.149>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation*>

    proving by [theorem: <reference|continuity linear mapping (1)>] and
    [definition: <reference|continuity operator norm>] that

    <\equation>
      <label|eq 14.80.149>\<varphi\><rsub|L>\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      and ><around*|\<\|\|\>|\<varphi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    The above let us define\ 

    <\equation>
      <label|eq 14.81.150>\<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      by >\<varphi\><around*|(|L|)>=\<varphi\><rsub|L>
    </equation>

    Let <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y;Z|)>> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then for <math|x\<in\>X> we have
    <math|\<forall\>r\<in\>Y> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x><around*|(|r|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x,r|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x,r|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x,r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>|)><rsub|x><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>|)><around*|(|r|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x>=<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>>.
    Hence\ 

    <\equation*>
      \<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>><around*|(|x|)>=<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x>=<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>=\<varphi\><rsub|L<rsub|1>><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>><around*|(|x|)>=<around*|(|\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>|)><around*|(|x|)>
    </equation*>

    proving that <math|\<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>>=\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>>.
    So\ 

    <\equation*>
      \<varphi\><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>=\<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>>=\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>=\<varphi\><around*|(|L<rsub|1>|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|L<rsub|2>|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 14.82.149>\<varphi\>\<in\>Hom<around*|(|L<around*|(|X,Y;Z|)>,L<around*|(|X,L<around*|(|Y,Z|)>|)>|)><text|>
    </equation>

    Further giving <math|L\<in\>L<around*|(|X,Y;Z|)>> we have\ 

    <\equation*>
      <around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>=<around*|\<\|\|\>|\<varphi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.80.149>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation*>

    giving by \ [theorem: <reference|continuity linear mapping (1)>]

    <\equation>
      <label|eq 14.83.150>\<varphi\>\<in\>L<around*|(|<around*|(|L<around*|(|X,Y;Z|)>,L<around*|(|X,L<around*|(|Y,Z|)>|)>|)>|)><text|
      and ><around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    Next we will define the inverse mapping of <math|\<varphi\>>. Let
    <math|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>> and define\ 

    <\equation>
      <label|eq 14.84.149>\<psi\><rsub|L>:X\<cdot\>Y\<rightarrow\>Z<text| by
      >\<psi\><rsub|L><around*|(|x,y|)>=<around*|(|L<around*|(|x|)>|)><around*|(|y|)>
    </equation>

    Let <math|x,y\<in\>X>, <math|r\<in\>Y> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y,r|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x+\<alpha\>\<cdot\>y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>>>|<cell|<around*|(|L<around*|(|x|)>+\<alpha\>\<cdot\>L<around*|(|y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|\<psi\><rsub|L><around*|(|x,r|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|y,r|)>>>>>
    </eqnarray*>

    and for <math|x\<in\>X>, <math|r,s\<in\>Y> and
    <math|\<alpha\>\<in\>\<bbb-K\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|L><around*|(|x,r+\<alpha\>\<cdot\>s|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r+\<alpha\>\<cdot\>s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L<around*|(|x|)>\<in\>L<around*|(|Y,Z|)>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|x|)>|)><around*|(|s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|\<psi\><rsub|L><around*|(|x,r|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|x,s|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<psi\><rsub|L>\<in\>Hom<around*|(|X,Y;Z|)>
    </equation*>

    If <math|<around*|(|x,y|)>\<in\>X\<cdot\>Y> then\ 

    <\equation*>
      <around*|\<\|\|\>|\<psi\><rsub|L><around*|(|x,y|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|<around*|(|L<around*|(|x|)>|)><around*|(|y|)>|\<\|\|\>><rsub|Z>\<leqslant\><rsub|L<around*|(|x|)>\<in\>L<around*|(|Y,Z|)>><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y><rsub|>
    </equation*>

    proving by [theorems: <reference|continuity multilinear mapping (1)>,
    <reference|continuity operator norm of multilinear mappings (1)>] that\ 

    <\equation>
      <label|eq 14.85.150>\<psi\><rsub|L>\<in\>L<around*|(|X,Y;Z|)><text| and
      ><around*|\<\|\|\>|\<psi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    The above allows use to define\ 

    <\equation>
      <label|eq 14.86.150>\<psi\>:L<around*|(|X,L<around*|(|Y,Z|)>|)>\<rightarrow\>L<around*|(|X,Y;Z|)><text|
      by >\<psi\><around*|(|L|)>=\<psi\><rsub|L>
    </equation>

    where by [eq: <reference|eq 14.85.150>]\ 

    <\equation>
      <label|eq 14.87.150>\<forall\>L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      ><around*|\<\|\|\>|\<psi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>=<around*|\<\|\|\>|\<psi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    Let <math|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>> and
    <math|x\<in\>X>, <math|y\<in\>Y> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<varphi\><around*|(|\<psi\><around*|(|L|)>|)>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.81.150>]>>>|<cell|<around*|(|<around*|(|\<varphi\><rsub|\<psi\><around*|(|L|)>>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>>>|<cell|<around*|(|\<psi\><around*|(|L|)>|)><rsub|x><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|\<psi\><around*|(|L|)><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.86.150>]>>>|<cell|\<psi\><rsub|L><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|y|)>>>>>
    </eqnarray*>

    so that <math|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>=L<around*|(|x|)>>
    from which it follows that <math|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>=L>.
    Hence we have that\ 

    <\equation>
      <label|eq 14.88.150>\<varphi\>\<circ\>\<psi\>=Id<rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    On the other hand if <math|L\<in\>L<around*|(|X,Y;Z|)>> and
    <math|<around*|(|x,y|)>\<in\>X\<cdot\>Y> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|)><around*|(|x,y|)>>|<cell|=>|<cell|<around*|(|\<psi\><around*|(|\<varphi\><around*|(|L|)>|)>|)><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.86.150>]>>>|<cell|\<psi\><rsub|\<varphi\><around*|(|L|)>><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|<around*|(|\<varphi\><around*|(|L|)>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.81.150>]>>>|<cell|<around*|(|<around*|(|\<varphi\><rsub|L>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>>>|<cell|L<rsub|x><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<around*|(|x,y|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>=L>,
    hence\ 

    <\equation>
      <label|eq 14.89.150>\<psi\>\<circ\>\<varphi\>=Id<rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    From [eqs: <reference|eq 14.88.150>, <reference|eq 14.89.150>] it follows
    by [theorem: <reference|function bijection condition (2)>] that
    <math|\<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    is a bijection. Combining this with ]eq: <reference|eq 14.82.149>] proves
    that\ 

    <\equation>
      <label|eq 14.90.150>\<varphi\><text| is a linear isomorphism>
    </equation>

    Finally we have for <math|L\<in\>L<around*|(|X,Y;Z|)>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>|<cell|\<equallim\>>|<cell|<around*|\<\|\|\>|Id<rsub|L<around*|(|X,Y;Z|)>><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.89.150>]>>>|<cell|<around*|\<\|\|\>|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<psi\><around*|(|\<varphi\><around*|(|L|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.87.150>]>>>|<cell|<around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>>>>>
    </eqnarray*>

    which combined with [eq: <reference|eq 14.83.150>] proves that
    <math|<around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>.
    This together with [eq: <reference|eq 14.90.150>] proves that\ 

    <\equation*>
      \<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      is a linear isometric isomorphism>
    </equation*>
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the
    normed space of real (complex) numbers with the canonical norm,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, a open set <math|U\<subseteq\>\<bbb-K\>>, <math|x\<in\>U>
    and

    <\equation*>
      f:U\<rightarrow\>L<rsup|n><around*|(|\<bbb-K\>;X|)><text| a function>
    </equation*>

    then\ 

    <\equation*>
      f<text| is Frèchet differentiable at <math|x>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      f<rsub|<around*|[|n|]>><text| is differentiable at >X<text| with
      differential ><around*|(|D<rsup|>f<around*|(|x|)>|)><rsub|<around*|[|n|]>>
    </equation*>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|h,k\<in\>\<bbb-K\>> and
      <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|h+\<alpha\>\<cdot\>k|)>>|<cell|=>|<cell|D
        f<around*|(|x|)><around*|(|h+\<alpha\>\<cdot\>k|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|D
        f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;X|)>|)>>>|<cell|<around*|(|D
        f<around*|(|x|)><around*|(|h|)>+\<alpha\>\<cdot\>D
        f<around*|(|x|)><around*|(|k|)>|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>+\<alpha\>\<cdot\>D
        f<around*|(|x|)><around*|(|k|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|h|)>+\<alpha\>\<cdot\><around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|k|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 16.45.185><around*|(|D f<around*|(|x|)>|)><rsub|<around*|[|h|]>>\<in\>Hom<around*|(|\<bbb-K\>,X|)>
      </equation>

      Further if <math|h\<in\>\<bbb-K\>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|D
        f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;X|)>|)>\<Rightarrow\>D
        f<around*|(|x|)><around*|(|h|)>\<in\>L<rsup|n><around*|(|\<bbb-K\>;X|)>>>|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|\<bbb-K\>;X|)>>\<cdot\><big|prod><rsub|i=1><rsup|n>1>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|\<bbb-K\>;X|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|D
        f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;X|)>|)>><rsub|>>|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;X|)>|)>>\<cdot\><around*|\||h|\|>>>>>
      </eqnarray*>

      proving by [theorem: <reference|continuity linear mapping (1)>] and
      [eq: <reference|eq 16.45.185>] that <math|<around*|(|D
      f<around*|(|x|)>|)><rsub|<around*|[|n|]>>> is continuous or\ 

      <\equation>
        <label|eq 16.46.185><around*|(|D f<around*|(|x|)>|)><rsub|<around*|[|n|]>>\<in\>L<around*|(|\<bbb-K\>,Y|)>
      </equation>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As <math|f> is
      Frèchet differentiable at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\||h|\|>\<less\>\<delta\>> we have\ 

      <\equation>
        <label|eq 16.47.185><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|\<bbb-K\>;X|)>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<rsub|<around*|[|h|]>><around*|(|x+h|)>-f<rsub|<around*|[|h|]>><around*|(|x|)>-<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>><around*|(|h|)>|\<\|\|\>><rsub|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-f<around*|(|x|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-D
        f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>;X|)>>\<cdot\><big|prod><rsub|i=1><rsup|1>1>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>;X|)>>>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.47.185>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
      </eqnarray*>

      This proves that\ 

      <\equation*>
        f<rsub|<around*|[|h|]>><text| is Frèchet differentiable at <math|x>
        with <math|D<around*|(| f<around*|[|n|]>|)><around*|(|x|)>=<around*|(|D
        f<around*|(|x|)>|)><rsub|<around*|[|n|]>>>>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|f<rsub|<around*|[|n|]>>> is
      Frèchet differential at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        \<forall\>h\<in\>U<rsub|x><text| with
        ><around*|\||h|\|>\<less\>\<delta\><text| we have
        ><around*|\<\|\|\>|f<rsub|<around*|[|n|]>><around*|(|x+h|)>-f<rsub|<around*|[|n|]>><around*|(|x|)>-D<around*|(|f<rsub|<around*|[|n|]>>|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
      </equation>

      \;
    </description>

    \;
  </proof>

  <subsubsection|Product of <math|n>-times differentiable functions>

  <\lemma>
    <label|lemma 16.104.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then

    <\equation*>
      ev:L<around*|(|X,Y|)>\<cdot\>X\<rightarrow\>Y<text| defined by
      >ev<around*|(|L,x|)>=L<around*|(|x|)>
    </equation*>

    is of class <math|C<rsup|\<infty\>>>. Further
    <math|\<forall\>L\<in\>L<around*|(|X,Y|)>> and <math|x\<in\>X> we have\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>ev<around*|(|L,x|)>=D
      ev<around*|(|L,x|)>=ev<around*|(|L,\<ast\>|)>+ev<around*|(|\<ast\>,x|)>
    </equation*>

    [see theorem: <reference|diff bilinear mappings are infinite times
    differentiable>].
  </lemma>

  <\proof>
    Using [theorem: <reference|diff bilinear mappings are infinite times
    differentiable>] it is enough to prove that <math|ev> is a bilinear
    continuous function or in other words
    <math|ev\<in\>L<around*|(|L<around*|(|X,Y|)>,X;Y|)>>. Let
    <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>>, <math|x\<in\>X> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|ev<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>,x|)>>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|L<rsub|1>,x|)>+\<alpha\>\<cdot\>ev<around*|(|L<rsub|2>,x|)>>>>>
    </eqnarray*>

    and for <math|L\<in\>L<around*|(|X,Y|)>>, <math|x,y\<in\>X> and
    <math|\<alpha\>\<in\>\<bbb-K\>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|ev<around*|(|L,x+\<alpha\>\<cdot\>y|)>>|<cell|=>|<cell|L<around*|(|x+\<alpha\>\<cdot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x|)>+\<alpha\>\<cdot\>L<around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|L,x|)>+\<alpha\>\<cdot\>ev<around*|(|L,y|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      ev\<in\>Hom<around*|(|L<around*|(|X,Y|)>,X;Y|)>
    </equation*>

    Let <math|<around*|(|L,x|)>\<in\>L<around*|(|X,Y|)>\<cdot\>X> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|ev<around*|(|L,x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity linear mapping (1)>] that\ 

    <\equation*>
      ev\<in\>L<around*|(|L<around*|(|X,Y|)>,X;Y|)>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.105.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| is a >n<text|-times differentiable at >x
    </equation*>

    then for <math|h\<in\>X> we have that there exist a open set <math|V>
    with <math|x\<in\>V\<subseteq\>U>

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y<text|
      defined by ><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)><around*|(|h|)>
    </equation*>

    is <math|<around*|(|n-1|)>>-times differentiable at <math|x>. Further
    <math|\<forall\>k,h,x\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>|)><around*|(|k|)>>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>|)><around*|(|k|)>|)><around*|(|h|)>>>>>
    </eqnarray*>
  </lemma>

  <\proof>
    As <math|f> is <math|n>-times differentiable at <math|x> and
    <math|1\<less\>n> we have by [theorem: <reference|diff D^f=D^(n-1)D^1f>]
    that there exist a open set <math|V> such that
    <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V> we have
    that <math|f> is <math|1>-times differentiable at <math|y> and the
    function\ 

    <\equation>
      D<rsup|1>f:V\<rightarrow\>L<around*|(|X,Y|)><text| defined by
      ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)>
    </equation>

    is <math|<around*|(|n-1|)>>-times differentiable. Given <math|v\<in\>X>
    define\ 

    <\equation>
      \<varphi\><rsub|v>:U\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text| by
      >\<varphi\><rsub|v><around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>
    </equation>

    Then we have for <math|y\<in\>X>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.122.194>\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>=D<rsup|<around*|[|1|]>>f<text|
      and >\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>=C<rsub|v>
    </equation>

    So that <math|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>> is
    <math|<around*|(|n-1|)>>-times differentiable at <math|x> and
    <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>> is <math|\<infty\>>-times
    differentiable at <math|x> [see theorem: <reference|diff constant
    function is infinitely times differentiable>] it follows by [theorem:
    <reference|diff higher order differentiation and vector functions>] that\ 

    <\equation>
      <label|eq 16.123.194>\<varphi\><rsub|v><text| is
      ><around*|(|n-1|)><text|-times differentiable at >x
    </equation>

    As <math|1\<less\>n> it follows that <math|1\<in\><around*|{|1,\<ldots\>,n-1|}>>
    so that by [theorem: <reference|diff n-times and m-times
    differentiability>] <math|\<varphi\><rsub|v>> is <math|1>-times
    differentiable at <math|x>, hence using \ [theorem: <reference|diff
    differential of a vector valued function>] it follows that

    <\equation*>
      \<pi\><rsub|1>\<circ\>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=\<pi\><rsub|1>\<circ\>D
      \<varphi\><rsub|v><around*|(|x|)>=D<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.122.194>]>>D<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|2|]>>f<around*|(|x|)>
    </equation*>

    and\ 

    <\equation*>
      \<pi\><rsub|2>\<circ\>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=\<pi\><rsub|2>\<circ\>D\<varphi\><rsub|v><around*|(|x|)>=D<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.122.194>]>>D<around*|(|C<rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[theorem:
      <reference|diff constant function is infinitely times
      differentiable>]>>C<rsub|1,0><rsub|>
    </equation*>

    So that\ 

    <\equation>
      <label|eq 16.124.194>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>,C<rsub|1,0><rsub|>|)><rsub|\<ast\>>
    </equation>

    Given <math|h\<in\>X> we can, as <math|\<forall\>y\<in\>V> <math|f> is
    <math|1>-times differentiable at <math|y>, define

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y<text|
      by ><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|y|)>|)><around*|(|h|)>
    </equation*>

    Let <math|h\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.125.194>D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>=ev\<circ\>\<varphi\><rsub|h>
    </equation>

    As <math|ev> is of <math|\<infty\>>-times differentiable by [lemma:
    <reference|lemma 16.104.194>] and <math|\<varphi\><rsub|v>> is by [eq:
    <reference|eq 16.123.194>] <math|<around*|(|n-1|)>>-times differentiable
    at <math|x> it follows that\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)><text| is
      ><around*|(|n-1|)><text|-times differentiable at >x
    </equation*>

    Given that <math|1\<less\>n> it follows that
    <math|1\<in\><around*|{|1,\<ldots\>,n-1|}>> so that by [theorem:
    <reference|diff n-times and m-times differentiability>]
    <math|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>> is <math|1>-times
    differentiable at <math|x> then for <math|k\<in\>Z> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>|)><around*|(|k|)>>|<cell|=>|<cell|<around*|(|D<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.125.194>]>>>|<cell|<around*|(|D<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|<around*|(|D
      ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>\<circ\>D
      \<varphi\><rsub|h><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
      ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.104.194>]>>>|<cell|<around*|(|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.124.194>]>>>|<cell|<around*|(|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\><around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>,C<rsub|1,0><rsub|>|)><rsub|\<ast\>>|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>,C<rsub|1,0><rsub|>|)><rsub|\<ast\>><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)><around*|(|k|)>,C<rsub|1,0><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)><around*|(|k|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,0|)>+ev<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)><around*|(|k|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|0|)>+<around*|(|<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>|)><around*|(|k|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>|)><around*|(|k|)>|)><around*|(|h|)>>>>>
    </eqnarray*>
  </proof>

  We have a variant of the previous lemma for differential classes.

  <\lemma>
    <label|lemma 16.106.194>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> open and
    <math|f:U\<rightarrow\>Y> is a function of <math|C<rsup|n>> and
    <math|h\<in\>X> then\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y<text|
      defined by ><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)><around*|(|h|)>
    </equation*>

    is of class <math|C<rsup|n-1>>.
  </lemma>

  <\proof>
    As <math|f> is of class <math|C<rsup|n>> we have by [theorem:
    <reference|diff f is of class C^n if D^1f u=is of class C^n-1>] that
    <math|\<forall\>x\<in\>U> <math|f> is <math|1>-times differentiable at
    <math|x> and\ 

    <\equation>
      <label|eq 16.126.194>D<rsup|<around*|[|1|]>>f:U\<rightarrow\>L<around*|(|X,Y|)><text|
      defined by ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><text|
      is of class >C<rsup|<around*|[|n-1|]>>
    </equation>

    Given <math|v\<in\>X> define

    <\equation*>
      \<varphi\><rsub|v>:U\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text| by
      >\<varphi\><rsub|v><around*|(|x,D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v|)>
    </equation*>

    then we have for <math|x\<in\>U>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.127.194>\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>=D<rsup|<around*|[|1|]>>f<text|
      and >\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>=C<rsub|v>
    </equation>

    So that <math|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>> is
    <math|<around*|(|n-1|)>>-times differentiable at <math|x> and
    <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>> is <math|\<infty\>>-times
    differentiable at <math|x> [see theorem: <reference|diff constant
    function is infinitely times differentiable>] it follows by [theorem:
    <reference|diff higher order differentiation and vector functions>] that\ 

    <\equation>
      <label|eq 16.128.194>\<varphi\><rsub|v><text| is of class >C<rsup|n-1>
    </equation>

    As <math|1\<less\>n> it follows that <math|1\<in\><around*|{|1,\<ldots\>,n-1|}>>
    and thus by [theorem: <reference|diff C^n and C^m>] that
    <math|\<varphi\><rsub|v>> is of class <math|C<rsup|1>>. \ Hence
    <math|\<varphi\><rsub|v>> is <math|1>-times differentiable at <math|x>,
    so that by [theorem: <reference|diff differential of a vector valued
    function>] it follows that

    <\equation*>
      \<pi\><rsub|1>\<circ\>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=\<pi\><rsub|1>\<circ\>D
      \<varphi\><rsub|v><around*|(|x|)>=D<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.127.194>]>>D<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|2|]>>f<around*|(|x|)>
    </equation*>

    and\ 

    <\equation*>
      \<pi\><rsub|2>\<circ\>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=\<pi\><rsub|2>\<circ\>D\<varphi\><rsub|v><around*|(|x|)>=D<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.127.194>]>>D<around*|(|C<rsub|v>|)><around*|(|x|)>\<equallim\><rsub|<text|[theorem:
      <reference|diff constant function is infinitely times
      differentiable>]>>C<rsub|1,0><rsub|>
    </equation*>

    So that\ 

    <\equation>
      <label|eq 16.129.194>D<rsup|<around*|[|1|]>>\<varphi\><rsub|v><around*|(|x|)>=<around*|(|D<rsup|<around*|[|2|]>>f<around*|(|x|)>,C<rsub|1,0><rsub|>|)><rsub|\<ast\>>
    </equation>

    Given <math|h\<in\>X> we can, as <math|\<forall\>y\<in\>U> <math|f> is
    <math|1>-times differentiable at <math|y>, define

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y<text|
      by ><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|y|)>|)><around*|(|h|)>
    </equation*>

    Let <math|h\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.130.194>D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)>=ev\<circ\>\<varphi\><rsub|h>
    </equation>

    As <math|ev> is of class <math|C<rsup|\<infty\>>> by [lemma:
    <reference|lemma 16.104.194>] and <math|\<varphi\><rsub|h>> is by [eq:
    <reference|eq 16.128.194>] of class <math|C<rsup|n-1>> it follows that\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f<around*|(|\<ast\>|)><around*|(|h|)><text| is
      of class >C<rsup|n-1>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 16.107.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| is a >n<text|-times differentiable at >x
    </equation*>

    then there exist a open set <math|V> in <math|X> with
    <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
    <math|D<rsup|<around*|[|1|]>>f<around*|(|y|)>> exist and

    <\equation*>
      \<Delta\>f:V\<cdot\>X\<rightarrow\>Y<text| defined by
      >\<Delta\>f<around*|(|x,h|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|h|)>
    </equation*>

    is of <math|<around*|(|n-1|)>>-times differentiable at <math|x>.
  </lemma>

  <\proof>
    As <math|1\<less\>n> we have by [theorem: <reference|diff
    D^f=D^(n-1)D^1f>] that there exist a open set <math|V> with
    <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V> <math|f>
    is <math|1>-times differentiable at <math|y> and\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<around*|(|X,Y|)><text| where
      ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>>f<around*|(|y|)><text|
      is ><around*|(|n-1|)><text| times differentiable at >x
    </equation*>

    This allows us to define the functions\ 

    <\equation*>
      \<Delta\>f:V\<cdot\>X\<rightarrow\>Y<text| by
      >\<Delta\>f<around*|(|x,h|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)><around*|(|h|)>
    </equation*>

    <\equation*>
      \<varphi\>:U\<times\>X\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text|
      by >\<varphi\><around*|(|x,h|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>
    </equation*>

    Given <math|x\<in\>V>, <math|h\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|h>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|x,h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<pi\><rsub|1>\<circ\>\<varphi\>=D<rsup|<around*|[|1|]>>f<text| and
      >\<pi\><rsub|2>\<circ\>\<varphi\>=\<pi\><rsub|2>
    </equation*>

    As <math|D<rsup|<around*|[|1|]>>f> is <math|<around*|(|n-1|)>>-times
    differentiable at <math|x>, and <math|\<pi\><rsub|2>> is
    <math|\<infty\>>-times differentiable at <math|x> [see theorem:
    <reference|diff projection functon is infinite times differentiable>] it
    follows from [theorem: <reference|diff higher order differentiation and
    vector functions>] that\ 

    <\equation*>
      \<varphi\><text| is ><around*|(|n-1|)><text|-times differentiable at >x
    </equation*>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|ev\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|ev<around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|1>f<around*|(|x|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|\<Delta\>f<around*|(|x,h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<Delta\>f=ev\<circ\>\<varphi\>
    </equation*>

    As <math|\<varphi\>> is <math|<around*|(|n-1|)>>-times differentiable at
    <math|x> and <math|ev> is <math|\<infty\>>-times differentiable at
    <math|x> [see lemma: <reference|lemma 16.104.194>] it follows from the
    generalized chain rule [theorem: <reference|diff chain rule higher
    order>] that <math|\<Delta\>f> is <math|<around*|(|n-1|)>>-times
    differentiable at <math|x>.
  </proof>

  \;

  <\lemma>
    <label|lemma 16.108.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| a function of class >C<rsup|n>
    </equation*>

    [so that <math|\<forall\>x\<in\>U> <math|f> is <math|1>-times
    differentiable at <math|x> by [theorem: <reference|diff f is of class C^n
    if D^1f u=is of class C^n-1>] then

    <\equation*>
      \<Delta\>f:V\<cdot\>X\<rightarrow\>Y<text| defined by
      >\<Delta\>f<around*|(|x,h|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|h|)>
    </equation*>

    is of class <math|C<rsup|n>>.
  </lemma>

  <\proof>
    As <math|1\<less\>n> we have by [theorem: <reference|diff f is of class
    C^n if D^1f u=is of class C^n-1>] that <math|\<forall\>x\<in\>U> <math|f>
    is <math|1>-times differentiable at <math|y> and\ 

    <\equation*>
      D<rsup|<around*|[|1|]>>f:V\<rightarrow\>L<around*|(|X,Y|)><text| where
      ><around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>>f<around*|(|x|)><text|
      is of class >C<rsup|n-1>
    </equation*>

    This allows us to define the functions\ 

    <\equation*>
      \<Delta\>f:V\<cdot\>X\<rightarrow\>Y<text| by
      >\<Delta\>f<around*|(|x,h|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>|)><around*|(|h|)>
    </equation*>

    <\equation*>
      \<varphi\>:U\<times\>X\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text|
      by >\<varphi\><around*|(|x,h|)>=<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>
    </equation*>

    Given <math|x\<in\>V>, <math|h\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|h>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|x,h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<pi\><rsub|1>\<circ\>\<varphi\>=D<rsup|<around*|[|1|]>>f<text| and
      >\<pi\><rsub|2>\<circ\>\<varphi\>=\<pi\><rsub|2>
    </equation*>

    As <math|D<rsup|<around*|[|1|]>>f> is of class <math|C<rsup|n-1>>, and
    <math|\<pi\><rsub|2>> is of class <math|C<rsup|\<infty\>>> [see theorem:
    <reference|diff projection functon is infinite times differentiable>] it
    follows from [theorem: <reference|diff higher order differentiation
    classes>] that\ 

    <\equation*>
      \<varphi\><text| is of class >C<rsup|n>
    </equation*>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|ev\<circ\>\<varphi\>|)><around*|(|x,h|)>>|<cell|=>|<cell|ev<around*|(|\<varphi\><around*|(|x,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|1>f<around*|(|x|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|\<Delta\>f<around*|(|x,h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<Delta\>f=ev\<circ\>\<varphi\>
    </equation*>

    As <math|\<varphi\>> is of class <math|C<rsup|n-1>> and <math|ev> is of
    class <math|C<rsup|\<infty\>>> [see lemma: <reference|lemma 16.104.194>]
    it follows from the generalized chain rule [theorem: <reference|diff
    chain rule higher order class>] that <math|\<Delta\>f> is of class
    <math|C<rsup|n-1>>.
  </proof>

  <\lemma>
    <label|lemma 16.190.122>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space based on the product
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>], <math|U> a open set in
    <math|X>, and <math|f:U\<rightarrow\>L<around*|(|X,Y|)>> a continuous
    function then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> the
    function

    <\equation*>
      f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>:X\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      defined by ><around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|x|)>=f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation*>

    [see definition: <reference|diff unprojection>] is continuous.
  </lemma>

  <\proof>
    Let <math|x\<in\>U>. First as <math|f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>>
    and <math|I<rsup|<around*|[|i,o|]>>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>=L<around*|(|X<rsub|i>,X|)>>
    [see \ definition: <reference|diff unprojection>] so that

    <\equation>
      <label|eq 16.261.222>f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>\<in\>L<around*|(|X<rsub|i>,Y|)>,
    </equation>

    proving that <math|><math|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>>
    is well defined. Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
    <math|f> is continuous there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>y\<in\>X> with
    <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|max>\<less\>\<delta\>> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>>.
    Let <math|h\<in\>X<rsub|i>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|y|)>-<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|z|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|y|)>|)><around*|(|h|)>-<around*|(|<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h|)>-<around*|(|f<around*|(|x|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|y|)><around*|(|I<rsup|<around*|[|i,o|]>><around*|(|h|)>|)>-f<around*|(|x|)><around*|(|I<rsup|<around*|[|i,o|]>><around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|y|)>-f<around*|(|x|)>|)><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|x|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|I<rsup|<around*|[|i,0|]>><around*|(|h|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|lemma 16.24.178>]>>>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|i>>>>>
    </eqnarray*>

    Hence using [theorem: <reference|continuity norm on L(X,Y)>] we have\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|y|)>-<around*|(|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<leqslant\><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>
    </equation*>

    proving that <math|f<around*|(|\<ast\>|)>\<circ\>I<rsup|<around*|[|i,0|]>>>
    is continuous.
  </proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a <with|font-series|bold|Banach> space,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space over <math|\<bbb-R\>> based on the product
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>], <math|U> a open set in
    <math|X>, <math|f:U\<rightarrow\>Y> such that <math|\<forall\>x\<in\>U>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> has a
    <math|i>-partial derivate <math|D<rsub|x,i>f> at <math|x> and the
    function

    <\equation*>
      D<rsub|i>f:U\<rightarrow\>L<around*|(|X<rsub|i>;Y|)><text| defined by
      >D<rsub|i>f<around*|(|x|)>=D<rsub|x,i>f
    </equation*>

    is continuous. Then <math|f> is of class <math|C<rsup|1>> and\ 

    <\equation*>
      D<rsub|x>f=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|x,i>f\<circ\>\<pi\><rsub|i>|)>
    </equation*>

    So if we define\ 

    <\equation*>
      D f:U\<rightarrow\>L<around*|(|X;Y|)>:<around*|(|D
      f|)><around*|(|x|)>=D<rsub|x>f
    </equation*>

    then\ 

    <\equation*>
      D f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Given
    <math|h=<around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>\<in\>X> and
    <math|i\<in\><around*|{|0,\<ldots\>,n|}>> define
    <math|h<rsup|<around*|\<langle\>|i|\<rangle\>>>> by\ 

    <\equation>
      <label|eq 16.280.125.1>h<rsup|<around*|\<langle\>|i|\<rangle\>>>=<choice|<tformat|<table|<row|<cell|<big|sum><rsub|j=1><rsup|i>I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)><text|
      if >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|0<text| if
      >i=0>>>>>
    </equation>

    then we have\ 

    <\equation>
      <label|eq 16.281.125>h<rsup|<around*|\<langle\>|n|\<rangle\>>>\<equallim\><rsub|n\<in\>\<bbb-N\>\<Rightarrow\>n\<neq\>0><big|sum><rsub|j=1><rsup|n>I<rsup|<around*|[|j,0|]>>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>]>><rsup|>h
    </equation>

    Given <math|i\<in\><around*|{|0,\<ldots\>,n|}>> then we have either:

    <\description>
      <item*|<math|i=0>>Then\ 

      <\equation*>
        <around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>=<around*|\<\|\|\>|h<rsup|<around*|\<langle\>|0|\<rangle\>>>|\<\|\|\>><rsub|max>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|max>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>
      </equation*>

      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>>Then for
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> we have

      <\description>
        <item*|<math|k\<in\><around*|{|1,\<ldots\>,i|}>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j=1><rsup|i>I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|i><around*|(|I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.24.178>]>><rsup|>>|<cell|<big|sum><rsub|j=1><rsup|i>\<delta\><rsub|j,k>\<cdot\>h<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|h<rsub|k>>>>>
        </eqnarray*>

        so that <math|<around*|\<\|\|\>|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>|\<\|\|\>><rsub|k>=<around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>>

        \;

        <item*|<math|k\<in\><around*|{|i+1,\<ldots\>,n|}>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j=1><rsup|i>I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|i><around*|(|I<rsup|<around*|[|j,0|]>><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.24.178>]>><rsup|>>|<cell|<big|sum><rsub|j=1><rsup|i>\<delta\><rsub|j,k>\<cdot\>h<rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}><text|
          >k\<neq\>j>>|<cell|0>>>>
        </eqnarray*>

        so that <math|><math|<around*|\<\|\|\>|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>|\<\|\|\>><rsub|k>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|k>\<leqslant\><around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>>
      </description>

      proving that <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|\<\|\|\>|<around*|(|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)><rsub|k>|\<\|\|\>><rsub|k>\<leqslant\><around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>>.
      Hence\ 

      <\equation*>
        <around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|k>\|k\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>\|k\<in\><around*|{|1,\<ldots\>n|}>|}>|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|max>
      </equation*>
    </description>

    So we have that\ 

    <\equation>
      <label|eq 16.282.125>\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}><text|
      we have ><around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max><text|
      for every >h\<in\>X
    </equation>

    By the hypothesis we have that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>

    <\equation>
      <label|eq 18.283.124>D<rsub|i>f:U\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      by >D<rsub|i>f<around*|(|x|)>=D<rsub|x,i>f<text| is a continuous
      function>
    </equation>

    Let <math|x\<in\>U> then as <math|U> is open there exist a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> so that\ 

    <\equation>
      <label|eq 16.284.124>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>U
    </equation>

    Define now\ 

    <\equation>
      <label|eq 16.285.124>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>\<rightarrow\>Y<text|
      by >g<around*|(|y|)>=f<around*|(|y|)>-f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>-x<rsub|i>|)>
    </equation>

    Then <math|g<around*|(|x|)>=f<around*|(|x|)>-f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<cdot\><around*|(|x<rsub|i>-x<rsub|i>|)>=0>
    which proves that\ 

    <\equation>
      <label|eq 16.286.124>g<around*|(|x|)>=0
    </equation>

    Define

    <\equation>
      <label|eq 16.284.124>L:X\<rightarrow\>Y<text| by
      >L<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<cdot\>y<rsub|i>
    </equation>

    then we can rewrite [eq: <reference|eq 16.285.124>] as\ 

    <\equation>
      <label|eq 16.288.125>g=f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>-C<rsub|f<around*|(|x|)>>-L<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>+C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>>
    </equation>

    If <math|y,z\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> then we have
    that

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|y+\<alpha\>\<cdot\>z|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y+\<alpha\>\<cdot\>z|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>+\<alpha\>\<cdot\>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>+\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)><around*|(|z<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|y|)>+\<alpha\>\<cdot\>L<around*|(|z|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.289.124>L\<in\>Hom<around*|(|X,Y|)>
    </equation>

    Further for every <math|y\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<cdot\><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>|)>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|max>>>>>
    </eqnarray*>

    So using [theorem: <reference|continuity linear mapping (1)>] it follows
    that\ 

    <\equation*>
      L\<in\>L<around*|(|X,Y|)>
    </equation*>

    By [theorem: <reference|diff linear mapping is infinite times
    differentiable>] <math|L> is <math|\<infty\>>-times differentiable on
    <math|X> and <math|D<rsub|y>L=L>. So using [theorems: <reference|diff
    differentiability is a local property>, <reference|diff constant function
    is differentiable> and <reference|diff differentiability is a local
    property>] on [eq: <reference|eq 16.288.125>] proves that

    <\equation>
      <label|eq 16.290.126>\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)><text|
      g is Frèchet differentiable at >y
    </equation>

    Using [theorem: <reference|diff Frechet differentation implies partial
    differentiability >] <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>

    <\equation>
      <label|eq 16.200.124>D<rsub|y,i>L<text| exist and
      >D<rsub|y,i>L=L\<circ\>I<rsup|<around*|[|i,0|]>>
    </equation>

    Further if <math|k\<in\>X<rsub|i>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L\<circ\>I<rsup|<around*|[|i,0|]>>|)><around*|(|k|)>>|<cell|=>|<cell|L<around*|(|I<rsup|<around*|[|i,0|]>><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>D<rsub|j>f<around*|(|x|)><around*|(|I<rsup|<around*|[|i,0|]>><around*|(|k|)>|)><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.24.178>]>><rsup|>>|<cell|<big|sum><rsub|j=1><rsup|n>D<rsub|j>f<around*|(|x|)><around*|(|\<delta\><rsub|i,j>\<cdot\>k|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>\<delta\><rsub|i,j>\<cdot\>D<rsub|j>f<around*|(|x|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|i>f<around*|(|x|)><around*|(|k|)>>>>>
    </eqnarray*>

    which proves that <math|L\<circ\>I<rsup|<around*|[|i,0|]>>=D<rsub|i>f<around*|(|x|)>>,
    substituting this in [eq: <reference|eq 16.290.124>] gives that

    <\equation>
      <label|eq 16.291.124>\<forall\>y\<in\>X<text|
      >D<rsub|y,i>L=D<rsub|i>f<around*|(|x|)>
    </equation>

    Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as <math|f> is Frèchet
    differentiable at <math|y> it follows from [theorem: <reference|diff
    partial differentiation is local>] that\ 

    <\equation>
      <label|eq 16.292.125>D<rsub|y,i>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>><text|
      exists and >D<rsub|y,i>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>=D<rsub|y,i>f
    </equation>

    further by [example: <reference|diff constant function and partial
    differentiation>]\ 

    <\equation>
      <label|eq 16.293.125>D<rsub|y,i>C<rsub|f<around*|(|x|)>><text|,
      >D<rsub|y,i>C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>><text|exists
      and >D<rsub|y,i>C<rsub|f<around*|(|x|)>>=C<rsub|0><text|, ><text|,
      >D<rsub|y,i>C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>>=C<rsub|0>
    </equation>

    Further by [theorem: <reference|diff partial differentiation is local>]
    we have that\ 

    <\equation>
      <label|eq 16.294.125>D<rsub|y,i>L<text| exists and
      >D<rsub|y,i>L=D<rsub|i>f<around*|(|x|)>
    </equation>

    Using [theorem: <reference|diff partial differential properties>]
    together with [eqs: <reference|eq 16.288.125>, <reference|eq 16.292.125>,
    <reference|eq 16.293.125>, <reference|eq 16.294.125>] we have that
    <math|D<rsub|y,i>g> exists and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|y,i>g>|<cell|=>|<cell|D<rsub|y,i><around*|(|f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>-C<rsub|f<around*|(|x|)>>-L<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>+C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|y,i>f<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>-D<rsub|y,i>C<rsub|f<around*|(|x|)>>-D<rsub|y,i>L<rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>+D<rsub|y,i>C<rsub|<big|sum><rsub|i=1><rsup|n>f<around*|(|x|)><around*|(|x<rsub|i>|)>>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|y,i>f-C<rsub|0>-D<rsub|i>f<around*|(|x|)>+C<rsub|0>>>|<row|<cell|>|<cell|\<equallim\><rsub|C<rsub|0><text|
      is neutral element>>>|<cell|D<rsub|y,i>f-D<rsub|i>f<around*|(|x|)>>>>>
    </eqnarray*>

    so that <math|\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>
    we have\ 

    <\equation>
      <label|eq 16.295.125>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >D<rsub|y,i>g<text| exists and \ >D<rsub|y,i>g=D<rsub|y,i>f-D<rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>
    </equation>

    this allows us to define\ 

    <\equation>
      <label|eq 16.296.125>D<rsub|i>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      by ><around*|(|D<rsub|i>g|)><around*|(|y|)>=D<rsub|i,y>g=D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>
    </equation>

    As for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> <math|D<rsub|i>f> is
    continuous there exists <math|\<delta\><rsub|2,i>\<in\>\<bbb-R\><rsup|+>>
    such that if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|2,i>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\><rsub|1>|)>>
    then

    <\equation*>
      <around*|\<\|\|\>|D<rsub|i>g<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.296.125>]>><around*|\<\|\|\>|D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<less\><frac|\<varepsilon\>|n>.
    </equation*>

    So if <math|\<delta\><rsub|2>=min<around*|(|<around*|{|\<delta\><rsub|2,i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then we have\ 

    <\equation>
      <label|eq 16.297.125>\<forall\>h\<in\>X<text| with
      ><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>\<less\>\<delta\><rsub|2><text|
      we have ><around*|\<\|\|\>|D<rsub|i>g<around*|(|x+h|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>=<around*|\<\|\|\>|D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<less\><frac|\<varepsilon\>|n>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<around*|(|x+h|)>>|<cell|\<equallim\><rsub|<text|[eqs:
      <reference|eq 16.280.125.1>, <reference|eq
      16.281.125>]>>>|<cell|g<around*|(|x+h<rsup|<around*|\<langle\>|h|\<rangle\>>>|)>-g<around*|(|x+h<rsup|<around*|\<langle\>|0|\<rangle\>>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of differences (1)>]>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|g<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>-g<around*|(|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|)>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 16.298.125><around*|\<\|\|\>|g<around*|(|x+h|)>|\<\|\|\>><rsub|Y>\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|g<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>-g<around*|(|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|)>|\<\|\|\>>
    </equation>

    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then by [eq: <reference|eq
    16.282.125>] we have <math|<around*|\<\|\|\>|h<rsup|<around*|[|i|]>>|\<\|\|\>><rsub|max>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>\<less\>\<delta\><rsub|2>>
    so that <math|<around*|\<\|\|\>|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>,<around*|\<\|\|\>|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>\<less\>\<delta\><rsub|2>>.
    Using then the mean value theorem [theorem: <reference|diff mean value
    theorem (4)>] and ]eq: <reference|eq 16.290.126>] we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>-g<around*|(|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>-x-h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>+t\<cdot\><around*|(|x+h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>-<around*|(|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>|)>|)>>g|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>-h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|x+h<rsup|<around*|\<langle\>|i|\<rangle\>>>+t\<cdot\><around*|(|h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>-h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>>g|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>|<cell|>|<cell|<eq-number><label|eq
      16.300.126>>>>>
    </eqnarray*>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>+t\<cdot\><around*|(|h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>-h<rsup|<around*|\<langle\>|i|\<rangle\>>>|)>|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>h<rsup|<around*|\<langle\>|i|\<rangle\>>>+t\<cdot\>h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>+<around*|\<\|\|\>|t\<cdot\>h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<equallim\><rsub|t\<in\><around*|[|0,1|]>\<Rightarrow\>0\<leqslant\>1-t,t>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i|\<rangle\>>>|\<\|\|\>><rsub|max>+t\<cdot\><around*|\<\|\|\>|h<rsup|<around*|\<langle\>|i-1|\<rangle\>>>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 16.282.125>]>>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>+t\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\><rsub|2>>>>>
    </eqnarray*>

    so that by [

    \ 

    \;
  </proof>

  <\render-proof|Proof>
    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t|)>-x|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\><rsub|<wide*|t|\<wide-underbrace\>><rsub|i>>\<ldots\>x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|0,\<ldots\><wide*|t-x<rsub|i>|\<wide-underbrace\>>\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|0,\<ldots\>0,<wide*|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>|\<wide-underbrace\>><rsub|i>,0\<ldots\>.0|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>\<less\>\<delta\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|mac>><around*|(|x,\<delta\>|)>|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>
    </equation*>

    Define then\ 

    <\equation>
      <label|eq 16.280.126>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>Y<text|
      by >g<around*|(|t|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>
    </equation>

    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then <math|y\<in\>I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|mac>><around*|(|x,\<delta\>|)>>
    so that <math|f> has a <math|i>-partial differential
    <math|D<rsub|y,i>f<rsub|>> at <math|y>. So by definition the function\ 

    <\equation*>
      f<rsup|<around*|[|i,y|]>>=f\<circ\><around*|(|I<rsup|<around*|[|i,y|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,y|]>>|)><rsup|-1><around*|(|U|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|y<rsub|i>=t>. Let
    <math|\<forall\>s\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have for <math|y=I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>x<rsub|n>|)>>

    <\equation*>
      I<rsup|<around*|[|i,y|]>><around*|(|s|)>=<around*|(|y<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,y<rsub|n>|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>=I<rsup|<around*|[|i,x|]>><around*|(|s|)>
    </equation*>

    so that <math|g<around*|(|s|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=f<around*|(|I<rsup|<around*|[|i,y|]>><around*|(|s|)>|)>>.
    Hence <math|g=<around*|(|f<rsup|<around*|[|i,y|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>>
    proving by [theorem: <reference|diff differentiability is a local
    property>] that <math|g> is Fréchet differentiable at <math|y<rsub|i>=t>
    and <math|D<rsub|t>g=D<rsub|y<rsub|i>><around*|(|f<rsup|<around*|[|i,y|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>=D<rsub|y,i>f>.
    To summarize\ 

    <\equation*>
      \<forall\>t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)><text|
      >g<text| has a >i<text|-partial differential at >t<text| with
      >D<rsub|t>g=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|t|)>,i>f
    </equation*>

    So we can define the function\ 

    <\equation>
      <label|eq 12.281.126>D g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      by >D<rsub|g><around*|(|t|)>=D<rsub|t>g
    </equation>

    Then <math|\<forall\>t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have

    <\equation*>
      D g<around*|(|t|)>=D<rsub|t>g=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|t|)>,i>f=D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=D<rsub|i>f<around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>><around*|(|t|)>|)>=<around*|(|<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>|)><around*|(|t|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 16.282.126>D g=<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>
    </equation>

    As <math|D<rsub|i>f> is continuous and
    <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>>
    is continuous [see theorems: <reference|lemma 16.24.178>,
    <reference|continuity and subspace topology (2)>] it follows that <math|D
    g> is continuous. Combining this with the above proves that

    <\equation*>
      g<text| is of class >C<rsup|1>
    </equation*>

    Let <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then we have by the mean value theorem [corollary: <reference|diff mean
    value theorem (3.1)>] that\ 

    <\equation>
      <label|eq 16.283.126><around*|\<\|\|\>|g<around*|(|y|)>-g<around*|(|z|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|><rsub|y+t\<cdot\><around*|(|z-y|)>>g|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|><rsub|y+t\<cdot\><around*|(|z-y|)>>g>|<cell|=>|<cell|D
      g<around*|(|y+t\<cdot\><around*|(|z-y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.282.126>]>>>|<cell|D>>>>
    </eqnarray*>
  </render-proof>

  <\lemma>
    <label|lemma 16.201.126>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space based on the product
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>],
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|U> a open set in <math|U>,
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>U>,
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\>|)>\<subseteq\>U>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and <math|f:U\<rightarrow\>Y> a
    function such that <math|\<forall\>y\<in\>U> <math|f> has a
    <math|i>-partial differential at <math|y> and the function

    <\equation*>
      D<rsub|i>f:U\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text| where
      >D<rsub|i>f<around*|(|y|)>=D<rsub|y,i>f<text|>
    </equation*>

    is continuous then <math|\<forall\>y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|z|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y+t\<cdot\><around*|(|z-y|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|i>
    </equation*>
  </lemma>

  <\render-proof|Proof>
    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t|)>-x|\<\|\|\>><rsub|max>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\><rsub|<wide*|t|\<wide-underbrace\>><rsub|i>>\<ldots\>x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|0,\<ldots\><wide*|t-x<rsub|i>|\<wide-underbrace\>>\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|0,\<ldots\>0,<wide*|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>|\<wide-underbrace\>><rsub|i>,0\<ldots\>.0|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>\<less\>\<delta\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|mac>><around*|(|x,\<delta\>|)>|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>
    </equation*>

    Define then\ 

    <\equation>
      <label|eq 16.280.126>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>Y<text|
      by >g<around*|(|t|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>
    </equation>

    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then <math|y\<in\>I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|mac>><around*|(|x,\<delta\>|)>>
    so that <math|f> has a <math|i>-partial differential
    <math|D<rsub|y,i>f<rsub|>> at <math|y>. So by definition the function\ 

    <\equation*>
      f<rsup|<around*|[|i,y|]>>=f\<circ\><around*|(|I<rsup|<around*|[|i,y|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,y|]>>|)><rsup|-1><around*|(|U|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|y<rsub|i>=t>. Let
    <math|\<forall\>s\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have for <math|y=I<rsup|<around*|[|i,x|]>><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>x<rsub|n>|)>>

    <\equation*>
      I<rsup|<around*|[|i,y|]>><around*|(|s|)>=<around*|(|y<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,y<rsub|n>|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>=I<rsup|<around*|[|i,x|]>><around*|(|s|)>
    </equation*>

    so that <math|g<around*|(|s|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=f<around*|(|I<rsup|<around*|[|i,y|]>><around*|(|s|)>|)>>.
    Hence <math|g=<around*|(|f<rsup|<around*|[|i,y|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>>
    proving by [theorem: <reference|diff differentiability is a local
    property>] that <math|g> is Fréchet differentiable at <math|y<rsub|i>=t>
    and <math|D<rsub|t>g=D<rsub|y<rsub|i>><around*|(|f<rsup|<around*|[|i,y|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>=D<rsub|y,i>f>.
    To summarize\ 

    <\equation*>
      \<forall\>t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)><text|
      >g<text| has a >i<text|-partial differential at >t<text| with
      >D<rsub|t>g=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|t|)>,i>f
    </equation*>

    So we can define the function\ 

    <\equation>
      <label|eq 16.281.126>D g:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>L<around*|(|X<rsub|i>,Y|)><text|
      by >D<rsub|g><around*|(|t|)>=D<rsub|t>g
    </equation>

    Then <math|\<forall\>t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have

    <\equation*>
      D g<around*|(|t|)>=D<rsub|t>g=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|t|)>,i>f=D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>=D<rsub|i>f<around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>><around*|(|t|)>|)>=<around*|(|<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>|)><around*|(|t|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 16.282.126>D g=<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    </equation>

    As <math|D<rsub|i>f> is continuous and
    <math|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|0,\<delta\>|)>>>
    is continuous [see theorems: <reference|lemma 16.24.178>,
    <reference|continuity and subspace topology (2)>] it follows that <math|D
    g> is continuous. Combining this with the above proves that

    <\equation*>
      g<text| is of class >C<rsup|1>
    </equation*>

    Let <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then we have by the mean value theorem [corollary: <reference|diff mean
    value theorem (3.1)>] that\ 

    <\equation>
      <label|eq 16.283.126><around*|\<\|\|\>|g<around*|(|z|)>-g<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|><rsub|y+t\<cdot\><around*|(|z-y|)>>g|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|i>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|D g<around*|(|y+t\<cdot\><around*|(|z-y|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.282.126>]>>>|<cell|<around*|(|<around*|(|D<rsub|i>f|)>\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>|)><around*|(|y+t\<cdot\><around*|(|z-y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y+t\<cdot\><around*|(|x-y|)>|)>|)>>>>>
    </eqnarray*>

    which combined with [eqs: <reference|eq 16.280.126>, <reference|eq
    16.283.126>] gives\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|z|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y+t\<cdot\><around*|(|z-y|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|i>
    </equation*>
  </render-proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a <with|font-series|bold|Banach> space,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space over <math|\<bbb-R\>> based on the product
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>], <math|U> a open set in
    <math|X> and <math|f:U\<rightarrow\>Y> is a function. If
    <math|\<forall\><around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
    we have <math|\<forall\>x\<in\>U> that the partial differential
    \ <math|D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f> of
    order <math|m> at <math|x> exist and the function\ 

    <\equation*>
      D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f:U\<rightarrow\>L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><text|
      defined by >D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>><around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>
    </equation*>

    is continuous. Then

    <\equation*>
      f<text| is of class >C<rsup|m>
    </equation*>
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      S=<around*|{|m\<in\>\<bbb-N\>\|If \<forall\><around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><text|
      we have >\<forall\>x\<in\>U<text| that
      >D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f<text|
      exist and> the function D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f:U\<rightarrow\>L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><rsub|><text|
      defined by >D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f<around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f<text|
      is continuous then >f<text| is of class >C<rsup|m>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>This follows the definition of partial
      differentials of order <math|m=1> and the previous theorem [theorem:
      <reference|diff continuous partial differentials implies
      differentiability>].

      <item*|<math|m\<in\>S>>Let <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      and fix <math|i<rsub|m+1>\<in\><around*|{|1,\<ldots\>,n|}>> then
      <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m+1|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      and by the hypothesis we have that <math|\<forall\>x\<in\>U>
      <math|D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f>
      exist and\ 

      <\equation*>
        D<rsup|<around*|[|m+1|]>><rsub|i<rsub|m+1>\<ldots\>i<rsub|1>>f:U\<rightarrow\>L<rsub|m+1><around*|(|X<rsub|i<rsub|m+1>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><text|
        defined by >D<rsup|<around*|[|m+1|]>><rsub|i<rsub|m+1>\<ldots\>i<rsub|1>>f<around*|(|x|)>=D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f
      </equation*>

      is continuous. Given <math|x\<in\>U> we have, as
      <math|D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f>
      exist, that there exist a <math|V<rsub|x>> with
      <math|x\<in\>V<rsub|x>\<subseteq\>U> such that
      <math|\<forall\>y\<in\>V> <math|D<rsub|x,i<rsub|m>,\<ldots\>,i<rsub|1>>f>
      exist and the function\ 

      <\equation*>
        D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f:V<rsub|x>\<rightarrow\>L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><text|
        defined by >D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f<around*|(|y|)>=D<rsup|<around*|[|m|]>><rsub|y,i<rsub|m>\<ldots\>i<rsub|1>>f
      </equation*>

      has a <math|i<rsub|m+1>>-partial differential at <math|x>.
      <math|D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f>
      is then defined to be <math|D<rsub|x,i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f|)>>.
      As <math|x\<in\>V<rsub|x>> we have that
      <math|D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f>
      exist, so we can define

      <\equation*>
        D<rsub|i<rsub|m>\<ldots\>i<rsub|1>><rsup|<around*|[|m|]>>f:U\<rightarrow\>L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;Y|)><text|
        by >D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f<around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x,i<rsub|m>\<ldots\>i<rsub|1>>f
      </equation*>

      If <math|x\<in\>U> then <math|\<forall\>y\<in\>V<rsub|x>> we have
      <math|D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>><rsub|><around*|(|y|)>=D<rsup|<around*|[|m|]>><rsub|y,i<rsub|m>\<ldots\>i<rsub|1>>f=D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f<around*|(|y|)>>
      proving that

      <\equation*>
        D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f=<around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f|)><rsub|\|V<rsub|x>>
      </equation*>

      Using the fact that partial differentiability is local [see theorem:
      <reference|diff partial differentiation is local>] we conclude that
      <math|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f> is
      <math|i<rsub|m+1>>-partial differentiable at <math|x> and

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|<around*|[|m+1|]>><rsub|i<rsub|m+1>\<ldots\>i<rsub|1>>f<around*|(|x|)>>|<cell|=>|<cell|D<rsup|<around*|[|m+1|]>><rsub|x,i<rsub|m+1>\<ldots\>i<rsub|1>>f>>|<row|<cell|>|<cell|=>|<cell|D<rsup|><rsub|x,i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|V<rsub|x>,i<rsub|m>\<ldots\>i<rsub|1>>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x,i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f|)><rsub|\|V<rsub|x>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|theorem:
        <reference|diff partial differentiation is
        local>]>>>|<cell|D<rsub|x,i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f|)>>>>>
      </eqnarray*>

      Hence if we define\ 

      <\equation*>
        D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>:U\<rightarrow\>L<around*|(|X<rsub|i<rsub|m+1>>,L<rsub|m><around*|(|X<rsub|i<rsub|m>>\<ldots\>X<rsub|i<rsub|1>>;<rsub|>|)>|)>=L<rsub|m+1><around*|(|X<rsub|i<rsub|m+1>>\<ldots\>X<rsub|i<rsub|1>>;Y|)>
      </equation*>

      where

      <\equation*>
        D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)><around*|(|x|)>=D<rsub|x,i<rsub|m+1>><around*|(|<around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>|)>
      </equation*>

      then <math|D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>=D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>>.
      As <math|D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>>
      is continuous it follows that <math|D<rsub|i<rsub|m+1>><around*|(|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>.i<rsub|1>>f|)>>
      is continuous. Applying then the previous theorem [theorem:
      <reference|diff continuous partial differentials implies
      differentiability>] it follows that
      <math|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f> is of
      class <math|C<rsup|1>>. Using [theorem: <reference|diff C^n and C^m>]
      it follows that <math|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>\<ldots\>i<rsub|1>>f>
      is of class <math|C<rsup|0>> meaning that
      <math|D<rsup|<around*|[|m|]>><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> is
      continuous. As this is true for every
      <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      and <math|m\<in\>S> we conclude that <math|f> is of class
      <math|C<rsup|m>>.\ 

      \ 
    </description>

    \;
  </proof>

  <\conjecture>
    <label|conjecture 16.245.134>Let <math|\<sigma\>\<in\>\<bbb-R\><rsup|+>>
    with <math|\<sigma\>\<leqslant\>\<rho\>> then
    <math|\<forall\>y\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>|\<wide-bar\>>>
    there exist a <with|font-series|bold|unique
    ><math|x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    such that <math|f<around*|(|x|)>=y>
  </conjecture>

  <\proof>
    Given <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>>
    and <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>>
    define <math|T<rsub|y>=y+T<around*|(|x|)>\<in\>X> then we have

    <\equation*>
      <around*|\<\|\|\>|T<rsub|y><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|y+T<around*|(|x|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>>\<leqslant\><rsub|<text|[eq:
      <reference|eq 16.351.134>]>><around*|\<\|\|\>|y|\<\|\|\>>+<frac|1|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<less\><frac|\<sigma\>|2>+<frac|\<sigma\>|2>=\<sigma\>
    </equation*>

    or <math|T<rsub|y>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<sigma\>|)>>.
    Hence we can define the function\ 

    <\equation*>
      T<rsub|y>:B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>
      by T<rsub|y><around*|(|x|)>=y+T<around*|(|x|)>
    </equation*>

    so that\ 

    <\equation*>
      T<rsub|y>=C<rsub|y>+T<text|>
    </equation*>

    Hence as <math|C<rsub|y>> is of class <math|C<rsup|\<infty\>>> [see
    example: <reference|diff constant function is infinitely times
    differentiable>] and <math|T> is of class <math|C<rsup|n>> [see eq:
    <reference|eq 16.347.135>] it follows that\ 

    <\equation*>
      T<rsub|y><text| is of class >C<rsup|n>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)><text|
      >D<rsub|x>T<rsub|y>=D<rsub|x>C<rsub|y>+D<rsub|x>T=D<rsub|x>T
    </equation*>

    Hence <math|\<forall\>x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>>
    we have <math|<around*|\<\|\|\>|D<rsub|x>T<rsub|y>|\<\|\|\>><rsub|L<around*|(|X,X|)>>=<around*|\<\|\|\>|D<rsub|x>T|\<\|\|\>><rsub|L<around*|(|X,X|)>>\<leqslant\><rsub|<text|[eq:
    <reference|eq 16.350.134>]>><frac|1|2><rsub|<text|>>>. As <math|X> is a
    Banach space and <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    is convex we can apply the mean value theorem [theorem: <reference|diff
    mean value theorem (2)>] giving that\ 

    <\equation*>
      \<forall\>x<rsub|1>,x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>><text|
      we have ><around*|\<\|\|\>|T<rsub|y><around*|(|x<rsub|1>|)>-T<rsub|y><around*|(|x<rsub|2>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>>
    </equation*>

    proving that <math|<around*|(|T<rsub|y>|)><rsub|\|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>>
    is a contraction [see definition: <reference|metric contraction>]. As
    \ <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    is closed and <math|X> is a Banach space it follows from [theorem:
    <reference|complete closed subset of a complete space is complete>] that
    <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    is a Banach space. So we can use the Banach fixed point theorem [see:
    <reference|metric Banach fixed point theorem>] there exist a
    <with|font-series|bold|unique> <math|x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<sigma\>|)>|\<wide-bar\>>>
    such that <math|<around*|(|T<rsub|y>|)><rsub|\|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>><around*|(|x|)>=x>.
    Hence

    <\equation*>
      0=T<rsub|y><around*|(|x|)>-x=y+T<around*|(|x|)>-x=y+Id<rsub|X><around*|(|x|)>-f<around*|(|x|)>-x=y+x-f<around*|(|x|)>-x=y-f<around*|(|x|)>
    </equation*>

    so that\ 

    <\equation*>
      f<around*|(|x|)>=y
    </equation*>

    Further if <math|x<rprime|'>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
    satisfies <math|f<around*|(|x<rprime|'>|)>=y> then

    <\equation*>
      <around*|(|T<rsub|y>|)><rsub|\|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>><around*|(|x|)>=T<rsub|y><around*|(|x<rprime|'>|)>=y+T<around*|(|x<rprime|'>|)>=y+Id<rsub|X><around*|(|x<rprime|'>|)>-f<around*|(|x<rprime|'>|)>=y+x<rprime|'>-y=x<rprime|'>
    </equation*>

    which as <math|x> was unique proves that <math|x=x<rprime|'>>. So we have
    found a unique <math|x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>>
  </proof>

  <\conjecture>
    <label|conjecture 16.246.135>There exist a
    <math|\<chi\>\<in\>\<bbb-R\><rsup|+>> with <math|\<chi\>\<less\>\<rho\>>
    such that for

    <\equation*>
      U<rsub|\<chi\>>=B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<chi\>|)><big|cap>f<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>|)><text|
      >
    </equation*>

    we have\ 

    <\equation*>
      f<rsub|\|U<rsub|<lprime|`>x>>:U<rsub|\<chi\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)><text|
      is a bijection>
    </equation*>

    <\note>
      As <math|f> is of class <math|C<rsup|n>> it is of class
      <math|C<rsup|0>> hence continuous, so <math|U<rsub|\<chi\>>> is a open
      set\ 
    </note>
  </conjecture>

  <\proof>
    Take <math|\<chi\>=<frac|\<sigma\>|2>\<in\>\<bbb-R\><rsup|+>> then
    <math|\<chi\>\<less\>\<sigma\>\<leqslant\>\<rho\>> and we have for
    <math|f<rsub|\|U<rsub|<lprime|`>x>>:U<rsub|\<chi\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>>
    that

    <\description>
      <item*|surjectivity>Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>>
      then <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>|\<wide-bar\>>>.
      Using the previous conjecture [conjecture: <reference|conjecture
      16.245.134>] there exist a <with|font-series|bold|unique>
      <math|x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>|\<wide-bar\>>>
      such that\ 

      <\equation>
        <label|eq 16.353.135>f<around*|(|x|)>=y
      </equation>

      We prove now by contradiction that\ 

      <\equation>
        <label|eq 16.354.135><around*|\<\|\|\>|x|\<\|\|\>>\<neq\>\<chi\>
      </equation>

      <\proof>
        Assume that <math|<around*|\<\|\|\>|x|\<\|\|\>>=\<chi\>>. As
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>>
        we have that <math|<around*|\<\|\|\>|y|\<\|\|\>>\<less\><frac|\<chi\>|2>>
        hence if we define <math|\<varepsilon\>=<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>.
        As <math|f> is of class <math|C<rsup|n>> <math|f> is of class
        <math|C<rsup|0>> hence continuous. So there exist a
        <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such that if
        <math|z\<in\>U> with <math|<around*|\<\|\|\>|x-z|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|z|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Take now <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,<frac|\<sigma\>|4>|)>>
        and <math|x<rsub|1>=<around*|(|1+<frac|\<delta\>|\<chi\>>|)>\<cdot\>x>
        then we have <math|<around*|\<\|\|\>|x<rsub|1>-x|\<\|\|\>>=<around*|\<\|\|\>|x+<frac|\<delta\>|\<chi\>>\<cdot\>x-x|\<\|\|\>>=<frac|\<delta\>|\<chi\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<equallim\><rsub|<around*|\<\|\|\>|x|\<\|\|\>>=\<chi\>>\<delta\>\<less\>\<delta\><rprime|'>>
        so that

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rsub|1>|)>|\<\|\|\>>\<less\>\<varepsilon\>=<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x+f<around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.353.135>]>>>|<cell|<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<chi\>|2>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          f<around*|(|x<rsub|1>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|2>|)>|\<wide-bar\>>
        </equation*>

        Using the previous conjecture [conjecture: <reference|conjecture
        16.245.134>] again there exist a <math|x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<sigma\>|4>|)>|\<wide-bar\>>=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>|\<wide-bar\>>>
        such that

        <\equation*>
          f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>
        </equation*>

        Further we have\ 

        <\equation*>
          <around*|\<\|\|\>|x<rsub|1>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|1+<frac|\<delta\>|\<chi\>>|)>\<cdot\>x|\<\|\|\>>=<around*|(|1+<frac|\<delta\>|\<chi\>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>=<around*|(|1+<frac|\<delta\>|\<chi\>>|)>\<cdot\>\<chi\>=\<chi\>+\<delta\>=<frac|\<sigma\>|2>+\<delta\>\<less\><frac|\<sigma\>|2>+<frac|\<sigma\>|4>\<less\>\<sigma\>\<leqslant\>\<rho\>
        </equation*>

        so that

        <\equation>
          <label|eq 16.355.135>x<rsub|1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>
        </equation>

        Further <math|x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<chi\>|2>|)>|\<wide-bar\>>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<chi\>|)>|\<wide-bar\>>>

        \;
      </proof>

      <item*|injectivity>
    </description>

    \;
  </proof>

  <\proof>
    For the function\ 

    <\equation*>
      f<rsub|\|U<rsub|\<rho\>>>:U<rsub|\<rho\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>
    </equation*>

    we have:\ 

    <\description>
      <item*|surjectivity>Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>>
      then <math|y\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>|\<wide-bar\>>>
      so that by the previous conjecture [conjecture: <reference|conjecture
      16.245.136>]\ 

      <\equation>
        <label|eq 16.359.136><text|There exist a
        <with|font-series|bold|unique >>x\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>|\<wide-bar\>><text|
        such that >f<around*|(|x|)>=y\<less\><frac|\<rho\>|2>
      </equation>

      We prove now by contradiction that\ 

      <\equation>
        <label|eq 16.360.136><around*|\<\|\|\>|x|\<\|\|\>>\<neq\><frac|\<rho\>|2>
      </equation>

      <\proof>
        Assume that <math|<around*|\<\|\|\>|x|\<\|\|\>>=<frac|\<rho\>|2>>. As
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>>
        we have that <math|<around*|\<\|\|\>|y|\<\|\|\>>\<less\><frac|\<rho\>|2>>
        so that <math|\<varepsilon\>=<frac|\<rho\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>.
        As <math|f> is of class <math|C<rsup|n>> <math|f> is of class
        <math|C<rsup|0>> hence continuous, so there exist a
        <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such that if
        <math|z\<in\>U> with <math|<around*|\<\|\|\>|x-z|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        then we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|z|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Define <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,<frac|\<rho\>|2>|)>\<in\>\<bbb-R\><rsup|+>>
        and <math|x<rsub|1>=<around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\>x>
        then we have\ 

        <\equation*>
          <around*|\<\|\|\>|x-x<rsub|1>|\<\|\|\>>=<around*|\<\|\|\>|x-<around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\>x|\<\|\|\>>=<around*|\<\|\|\>|<frac|2\<cdot\>\<delta\>|\<rho\>>\<cdot\>x|\<\|\|\>>=<frac|2\<cdot\>\<delta\>|\<rho\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<equallim\><rsub|<around*|\<\|\|\>|x|\<\|\|\>>=<frac|\<rho\>|2>><frac|2\<cdot\>\<delta\>|\<rho\>>\<cdot\><frac|\<rho\>|2>=\<delta\>\<less\>\<delta\><rprime|'>
        </equation*>

        so that\ 

        <\equation*>
          <around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rsub|1>|)>|\<\|\|\>>\<less\>\<varepsilon\>=<frac|\<rho\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>
        </equation*>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x+f<around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<rho\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.359.136>]]>>>|<cell|<frac|\<rho\>|2>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<rho\>|2>>>>>
        </eqnarray*>

        proving that <math|f<around*|(|x<rsub|1>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|\<rho\>|2>|)>|\<wide-bar\>>>.
        Hence we can use [conjecture: <reference|conjecture 16.245.136>]
        again to get a\ 

        <\equation>
          <label|eq 16.361.136><text|There exist a
          <with|font-series|bold|unique> >x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>|\<wide-bar\>><text|
          such that >f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>
        </equation>

        Now as <math|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\>x|\<\|\|\>>=<around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<equallim\><rsub|<around*|\<\|\|\>|x|\<\|\|\>>=<frac|\<rho\>|2>><around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>\<cdot\><frac|\<rho\>|2>=<frac|\<rho\>|2>+\<delta\>\<less\><frac|\<rho\>|2>+<frac|\<rho\>|2>=\<rho\>>
        proving that <math|x<rsub|1>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>|\<wide-bar\>>>.
        Hence by the uniqueness in [eq: <reference|eq 16.361.136>] it follows
        that

        <\equation>
          <label|eq 16.362.136>x<rsub|1>=x<rsub|2>
        </equation>

        As <math|x<rsub|2>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\>|)>|\<wide-bar\>>>
        we have that\ 

        <\equation*>
          <around*|\<\|\|\>|x<rsub|2>|\<\|\|\>>\<leqslant\>\<rho\>\<less\>\<rho\>\<cdot\><around*|(|1+<frac|2\<cdot\>\<delta\>|\<rho\>>|)>=\<rho\>
        </equation*>

        \;
      </proof>

      <item*|injectivity>
    </description>

    \;
  </proof>

  <\proof>
    First we define the following translations

    <\equation*>
      \<forall\>y\<in\>X<text| define >\<tau\><rsub|X,y>:X\<rightarrow\>X<text|
      by >\<tau\><rsub|X,y><around*|(|z|)>=y+z
    </equation*>

    <\equation*>
      \<forall\>y\<in\>Y<text| define <math|\<tau\><rsub|Y,y>:Y\<rightarrow\>Y<text|
      by >\<tau\><rsub|Y,y><around*|(|z|)>=y+z>>
    </equation*>

    Note that we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<tau\><rsub|X,y>\<circ\>\<tau\><rsub|X,-y>|)><around*|(|z|)>>|<cell|=>|<cell|\<tau\><rsub|X,y><around*|(|\<tau\><rsub|X,-y><around*|(|z|)>|)>=\<tau\><rsub|X,y><around*|(|<around*|(|-y|)>+z|)>=y+<around*|(|-y|)>+z=Id<rsub|X><around*|(|z|)>>>|<row|<cell|<around*|(|\<tau\><rsub|X,-y>\<circ\>\<tau\><rsub|X,y>|)><around*|(|z|)>>|<cell|=>|<cell|\<tau\><rsub|X,-y><around*|(|\<tau\><rsub|X,y><around*|(|z|)>|)>=\<tau\><rsub|X,y><around*|(|y+z|)>=<around*|(|-y|)>+y+z=Id<rsub|X><around*|(|z|)>>>|<row|<cell|<around*|(|\<tau\><rsub|Y,y>\<circ\>\<tau\><rsub|Y,-y>|)><around*|(|z|)>>|<cell|=>|<cell|\<tau\><rsub|Y,y><around*|(|\<tau\><rsub|Y,-y><around*|(|z|)>|)>=\<tau\><rsub|Y,y><around*|(|<around*|(|-y|)>+z|)>=y+<around*|(|-y|)>+z=Id<rsub|X><around*|(|z|)>>>|<row|<cell|<around*|(|\<tau\><rsub|Y,-y>\<circ\>\<tau\><rsub|Y,y>|)><around*|(|z|)>>|<cell|=>|<cell|\<tau\><rsub|Y,-y><around*|(|\<tau\><rsub|Y,y><around*|(|z|)>|)>=\<tau\><rsub|Y,y><around*|(|y+z|)>=<around*|(|-y|)>+y+z=Id<rsub|X><around*|(|z|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.382.139>\<forall\>y\<in\>X<text| >\<tau\><rsub|X,y><text|
      is a bijection and ><around*|(|\<tau\><rsub|X,y>|)><rsup|-1>=\<tau\><rsub|X,-y>
    </equation>

    <\equation>
      <label|eq 16.383.139>\<forall\>y\<in\>Y<text| >\<tau\><rsub|Y,y><text|
      is a bijection and ><around*|(|\<tau\><rsub|Y,y>|)><rsup|-1>=\<tau\><rsub|Y,-y>
    </equation>

    Further using [example: <reference|diff translation is infinite
    differentiable>] it follows that

    <\equation*>
      \<forall\>y\<in\>X<text| >\<tau\><rsub|X,y><text| is of class
      >C<rsup|\<infty\>><text| and >\<forall\>y\<in\>Y<text|
      >\<tau\><rsub|Y,y><text| is of class >C<rsup|\<infty\>><text|>
    </equation*>

    \;

    <\equation*>
      \;
    </equation*>

    \;
  </proof>

  So by the above and [eqs: <reference|eq 16.382.139>, <reference|eq
  16.383.139>] it follows tha

  <\equation>
    <label|eq 16.384.139>\<forall\>y\<in\>X<text| >\<tau\><rsub|X,y><text| is
    a diffeomorphism of class >\<cap\>\<forall\>y\<in\>Y<text|
    >\<tau\><rsub|Y,y><text| is a diffeomorphism of class >C<rsup|\<infty\>>
  </equation>

  Define\ 

  <\equation>
    <label|eq 16.382.139>h=\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>\<tau\><rsub|X,x<rsub|0>>:<around*|(|\<tau\><rsub|X,x<rsub|0>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y
  </equation>

  As <math|x<rsub|0>\<in\>U> that <math|\<tau\><rsub|X,x<rsub|0>><around*|(|0|)>=x<rsub|0>+0=x<rsub|0>\<in\>U>
  so that <math|0\<in\><around*|(|\<tau\><rsub|X,x<rsub|0>>|)><rsup|-1><around*|(|U|)>>,
  further we have

  <\eqnarray*>
    <tformat|<table|<row|<cell|h<around*|(|0|)>>|<cell|=>|<cell|<around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>\<tau\><rsub|X,x<rsub|0>>|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|\<tau\><rsub|X,x<rsub|0>><around*|(|0|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|x<rsub|0>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|0<eq-number><label|eq
    16.383.139>>>>>
  </eqnarray*>

  Further as <math|f> is of class <math|C<rsup|n>> and
  <math|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>>,
  <math|\<tau\><rsub|X,x<rsub|0>>> are of class <math|C<rsup|\<infty\>>> it
  follows from the chain rule [theorem: <reference|diff chain rule higher
  order class>] that <math|h> is of class <math|C<rsup|n>> and\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|D<rsub|0>h>|<cell|=>|<cell|D<rsub|0><around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>\<tau\><rsub|X,x<rsub|0>>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|0><around*|(|<around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f|)>\<circ\>\<tau\><rsub|X,x<rsub|0>>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|\<tau\><rsub|X,x<rsub|0>><around*|(|0|)>><around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f|)>\<circ\>D<rsub|0>\<tau\><rsub|X,x<rsub|0>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
    <reference|diff translation is infinite
    differentiable>]>>>|<cell|D<rsub|\<tau\><rsub|X,x<rsub|0>><around*|(|0|)>><around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f|)>\<circ\>Id<rsub|X>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x<rsub|0>><around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|x<rsub|0>|)>>\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>\<circ\>D<rsub|x<rsub|0>>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
    <reference|diff translation is infinite
    differentiable>]>>>|<cell|Id<rsub|Y>\<circ\>D<rsub|x<rsub|0>>f>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x<rsub|0>>f>>>>
  </eqnarray*>

  Hence as <math|D<rsub|x<rsub|0>>f\<in\>L<around*|(|X,Y|)>> is a bijection
  <math|D<rsub|0>h> is a isomorphism. So the conditions for [proposition:
  <reference|proposition 16.249.138>] are satisifed. Hence there exist open
  sets <math|U<rsub|0>>, <math|V<rsub|0>> with <math|0\<in\>U<rsub|0>>,
  <math|0\<in\>V<rsub|0>> such that\ 

  <\equation>
    <label|eq 16.387.138>h<rsub|\|U<rsub|0>>:U<rsub|0>\<rightarrow\>V<rsub|0><text|
    is a diffeomorphism of class >C<rsup|n>
  </equation>

  Define now <math|U<rsub|x<rsub|0>>=<around*|(|\<tau\><rsub|X,-x<rsub|0>>|)><rsup|-1><around*|(|U<rsub|0>|)>>,
  <math|V<rsub|x<rsub|0>>=<around*|(|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>|)><rsup|-1><around*|(|V<rsub|0>|)>=\<tau\><rsub|Y,f<around*|(|x<rsub|0>|)>><around*|(|V<rsub|0>|)>>
  then, as <math|><math|\<tau\><rsub|X,-x<rsub|0>>>,<math|\<tau\><rsub|Y,-f<around*|(|x<rsub|0>|)>>>
  are of class <math|C<rsup|\<infty\>>>, <math|U<rsub|x<rsub|0>>> is open in
  <math|X> and <math|V<rsub|x<rsub|0>>> is open in <math|Y>. From
  <math|\<tau\><rsub|X,-x<rsub|0>><around*|(|x<rsub|0>|)>=0\<in\>U<rsub|0>>
  it follows that <math|x<rsub|0>\<in\>U<rsub|x<rsub|0>>>, further
  <math|f<around*|(|x<rsub|0>|)>=\<tau\><rsub|X,f<around*|(|x<rsub|0>|)>><around*|(|0|)>\<in\>V<rsub|x<rsub|0>>>.
  So we have\ 

  <\equation*>
    U<rsub|x<rsub|0>>,V<rsub|x<rsub|0>><text| are open,
    >x<rsub|0>\<in\>U<rsub|x<rsub|0>><text| and
    >f<around*|(|x<rsub|0>|)>\<in\>V<rsub|x<rsub|0>>
  </equation*>

  Using \ [theorem: <reference|function restriction of a function>] we have
  that\ 

  <\equation*>
    \<tau\><rsub|X,>
  </equation*>

  Define then the following bijection [see <reference|function composition
  injectivity, surjectivity and bijectivity (1)>]

  <\equation*>
    g=\<tau\><rsub|Y,f<around*|(|x<rsub|0>|)>>\<circ\>h<rsub|\|U<rsub|0>>\<circ\>\<tau\><rsub|X,-x<rsub|0>>:U<rsub|x<rsub|0>>=<around*|(|\<tau\><rsub|X,-x<rsub|0>>|)><rsup|-1><around*|(|U<rsub|0>|)>\<rightarrow\>\<tau\><rsub|><rsub|>
  </equation*>

  \;

  \;

  <\proof>
    Define\ 

    <\equation*>
      \<sigma\>:\<bbb-R\>\<rightarrow\>X<text| by
      >\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>=x\<cdot\><around*|(|1-t|)>+t\<cdot\>y
    </equation*>

    Take <math|W=\<sigma\><rsup|-1><around*|(|U|)>> then as <math|\<sigma\>>
    is of class <math|C<rsup|1>>, hence continuous [see lemma:
    <reference|lemma 16.135.200>] it follows that <math|W> is open. Let
    <math|t\<in\><around*|[|0,1|]>> then <math|\<sigma\><around*|(|t|)>=<around*|(|1-t|)>\<cdot\>x+y\<in\>U>
    so that <math|t\<in\>\<sigma\><rsup|-1><around*|(|U|)>>, hence we have

    <\equation*>
      <around*|[|0,1|]>\<subseteq\>\<sigma\><rsup|-1><around*|(|U|)>=W
    </equation*>

    Then for\ 

    <\equation*>
      \<sigma\><rsub|\|W>:W\<rightarrow\>X
    </equation*>

    we have that <math|\<sigma\><rsub|\|W><around*|(|W|)>=\<sigma\><around*|(|W|)>=\<sigma\><around*|(|\<sigma\><rsup|-1><around*|(|U|)>|)>\<subseteq\>U>.
    Hence the following function is well defined:

    <\equation*>
      f\<circ\>\<sigma\><rsub|\|W>:W\<rightarrow\>\<bbb-R\>
    </equation*>

    Let <math|t\<in\>W> then by [see lemma: <reference|lemma 16.135.200>]
    <math|\<sigma\>> is differentiable at <math|x> with
    <math|D<rsub|t>\<sigma\>\<in\>L<around*|(|\<bbb-R\>,X|)>> defined by

    <\equation*>
      D<rsub|t>\<sigma\><around*|(|h|)>=h\<cdot\><around*|(|y-x|)>.
    </equation*>

    So using [theorem: <reference|diff differentiability is a local
    property>] it follows that <math|\<sigma\><rsub|\|W>> is differentiable a
    <math|t> with <math|D<rsub|t>\<sigma\><rsub|\|W>=D<rsub|t>\<sigma\>>.
    Further, as <math|f> is of class <math|C<rsup|1>>, <math|f> is
    differentiable at <math|\<sigma\><around*|(|t|)>>. Using the chain rule
    [see theorem: <reference|diff chain rule>] it follows that
    <math|f\<circ\>\<sigma\><rsub|\|W>> is differentiable at <math|t> and

    <\equation>
      <label|eq 16.183.200>D<rsub|t><around*|(|f\<circ\>\<sigma\><rsub|\|W>|)>=D<rsub|\<sigma\><rsub|\|W><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>\<equallim\><rsub|t\<in\>W>D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>
    </equation>

    Define <math|g> by\ 

    <\equation*>
      g:<around*|[|0,1|]>\<rightarrow\>\<bbb-R\><text| by
      >g=<around*|(|f\<circ\>\<sigma\><rsub|\|W>|)><rsub|\|<around*|[|0,1|]>>
    </equation*>

    As <math|f> is of class <math|C<rsup|1>>, hence of class <math|C<rsup|0>>
    [see theorem: <reference|diff C^n and C^m>], it follows that <math|f> is
    continuous. Further <math|\<sigma\>> is continuous, hence by [theorem:
    <reference|continuity and subspace topology (2)>]
    <math|\<sigma\><rsub|\|w>> is continuous so that
    <math|f\<circ\>\<sigma\><rsub|\|W>> is continuous. Using [theorem:
    <reference|continuity and subspace topology (2)>] again we have that\ 

    <\equation>
      <label|eq 16.184.200>g<text| is continuous.>
    </equation>

    Further for <math|t\<in\><around*|]|0,1|[>> we have
    <math|g<rsub|\|<around*|]|0,1|]>><around*|(|t|)>\<equallim\><rsub|t\<in\><around*|]|0,1|[>>g<around*|(|t|)>\<equallim\><rsub|t\<in\><around*|]|0,1|[>\<subseteq\><around*|[|0,1|]>><around*|(|f\<circ\>\<sigma\><rsub|\|W>|)><around*|(|t|)>\<equallim\><rsub|t\<in\><around*|]|0,1|]>><around*|(|f\<circ\>\<sigma\><rsub|\|W>|)><rsub|<around*|]|0,1|[>>>
    so that <math|g<rsub|\|<around*|]|0,1|[>>=<around*|(|f\<circ\>\<sigma\><rsub|\|W>|)><rsub|<around*|]|0,1|[>>>.
    As <math|<around*|]|0,1|[>\<subseteq\>W> and
    <math|f\<circ\>\<sigma\><rsub|\|W>> is differentiable at <math|t\<in\>W>
    it follows from [theorem: <reference|diff differentiability is a local
    property>] that <math|><math|<around*|(|f\<circ\>\<sigma\><rsub|\|W>|)><rsub|<around*|]|0,1|[>>>
    is differentiable at <math|t >with

    <\equation*>
      D<rsub|t><around*|(|f\<circ\>\<sigma\><rsub|\|W>|)><rsub|<around*|]|0,1|[>>=D<rsub|t><around*|(|f\<circ\>\<sigma\><rsub|\|W>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.183.200>]>>D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>.
    </equation*>

    Hence\ 

    <\equation>
      <label|eq 16.185.200>\<forall\>t\<in\><around*|]|0,1|[><text|
      >g<rsub|\|<around*|]|0,1|[>><text| is differentiable at >t<text| with
      >D<rsub|t><around*|(|g<rsub|\|<around*|]|0,1|[>>|)>=D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>
    </equation>

    Because of [eqs: <reference|eq 16.184.200> and <reference|eq 16.185.200>]
    we can use Lagrange's theorem [theorem: <reference|diff Lagrange
    theorem>] to find a <math|\<zeta\>\<in\><around*|]|0,1|[>> so that\ 

    <\equation>
      <label|eq 16.186.200>g<around*|(|1|)>-g<around*|(|0|)>=<around*|(|g<rsub|<around*|]|0,1|[>>|)><rprime|'><rsub|\<zeta\>>\<cdot\><around*|(|1-0|)>=<around*|(|g<rsub|<around*|]|0,1|[>>|)><rprime|'><rsub|\<zeta\>>
    </equation>

    Take <math|z=x+\<zeta\>\<cdot\><around*|(|y-x|)>=\<sigma\><around*|(|\<zeta\>|)>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|y|)>-f<around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x+1\<cdot\><around*|(|y-x|)>|)>-f<around*|(|x+0\<cdot\><around*|(|y-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<sigma\><around*|(|1|)>|)>-f<around*|(|\<sigma\><around*|(|0|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|1,0\<in\><around*|[|0,1|]>>>|<cell|f<around*|(|\<sigma\><rsub|\|W><around*|(|1|)>|)>-f<around*|(|\<sigma\><rsub|\|W><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<circ\>\<sigma\><rsub|\|W>|)><around*|(|1|)>-<around*|(|f\<circ\>\<sigma\><rsub|\|w>|)><around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|1,0\<in\><around*|[|0,1|]>>>|<cell|<around*|(|f\<circ\>\<sigma\><rsub|\|W>|)><rsub|\|<around*|[|0,1|]>><around*|(|1|)>-<around*|(|f\<circ\>\<sigma\><rsub|\|w>|)><rsub|\|<around*|[|0,1|]>><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|1|)>-g<around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.186.200>]>>>|<cell|<around*|(|g<rsub|<around*|]|0,1|[>>|)><rprime|'><rsub|\<zeta\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate and frechet
      differential>]>>>|<cell|D<rsub|\<zeta\>><around*|(|g<rsub|\|<around*|]|0,1|[>>|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.185.200>]>>>|<cell|<around*|(|D<rsub|\<sigma\><around*|(|\<zeta\>|)>>f\<circ\>D<rsub|\<zeta\>>\<sigma\>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|\<sigma\><around*|(|\<zeta\>|)>>f<around*|(|D<rsub|\<zeta\>>\<sigma\><around*|(|1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.135.200>]>>>|<cell|D<rsub|\<sigma\><around*|(|\<zeta\>|)>>f<around*|(|y-x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|z=\<sigma\><around*|(|\<zeta\>|)>>>|<cell|D<rsub|z>f<around*|(|y-x|)>>>>>
    </eqnarray*>
  </proof>

  Main value theorem from Dieudonne contains a error

  <\lemma>
    <label|lemma 16.148.201>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>,
    <math|x\<in\><around*|[|a,b|[>>, <math|f:<around*|[|a,b|]>\<rightarrow\>X>
    a function that has a derivative at <math|x> then given
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<lambda\>\<in\><around*|]|x,b|]>> such that
    <math|\<forall\>\<zeta\>\<in\><around*|[|x,\<lambda\>|[>> we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>-f<rprime|'><rsub|x>\<cdot\><around*|(|\<zeta\>-x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|(|\<zeta\>-x|)>
    </equation*>
  </lemma>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As
    <math|x\<in\><around*|[|a,b|[>> we have either:\ 

    <\description>
      <item*|<math|x=a>>Then by [definition: <reference|diff derivate on a
      closed interval>] <math|f> has a right derivative at <math|a=x> and
      <math|f<rprime|'><rsub|x>=f<rprime|'><rsub|+,x>>.

      <item*|<math|x\<in\><around*|]|a,b|[>>>Then by [definition:
      <reference|diff derivate on a closed interval>]
      <math|f<rsub|\|<around*|]|a,b|[>>> has a derivative at <math|x> and
      <math|f<rprime|'><rsub|x>=<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><rsub|x>>.
      Using [theorem: <reference|diff left and right derivate and
      derivate>(2)] it follows that <math|f> has a right derivative at
      <math|x> and <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><rsub|,x>=f<rprime|'><rsub|+,x>>
      so that <math|f<rprime|'><rsub|x>=f<rprime|'><rsub|+,x>>
    </description>

    So in all cases we have that\ 

    <\equation>
      <label|eq 16.196.201>f<text| has a right derivative at <math|x> and
      >f<rprime|'><rsub|x>=f<rprime|'><rsub|+,x>
    </equation>

    Using the definition of a right derivative there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that if
    <math|0\<less\>h\<less\>\<delta\>> and <math|x+h\<in\><around*|[|a,b|]>>
    then

    <\equation>
      <label|eq 16.197.201><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|+,x>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation>

    Take <math|\<lambda\>=min<around*|(|x+\<delta\>,b|)>> so that, as
    <math|x\<less\>x+\<delta\>\<wedge\>x\<less\>b>,
    <math|\<lambda\>\<in\><around*|]|x,b|]>> <math|>then for
    <math|\<zeta\>\<in\><around*|[|x,\<lambda\>|[>> we have either:

    <\description>
      <item*|<math|\<zeta\>=x>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>-f<rsub|x><rprime|'>\<cdot\><around*|(|\<zeta\>-x|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|\<zeta\>=x>>|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<zeta\>|)>-f<rprime|'><rsub|+,x>\<cdot\><around*|(|\<zeta\>-\<zeta\>|\<nobracket\>>|)>\<\|\|\>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|0|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\><around*|(|\<zeta\>-x|)>>>>>
      </eqnarray*>

      <item*|<math|x\<less\>\<zeta\>>>Then
      <math|0\<less\>\<zeta\>-x\<less\>\<lambda\>-x\<leqslant\><around*|(|x+\<delta\>|)>-x=\<delta\>>
      and \ <math|x+<around*|(|\<zeta\>-x|)>=\<zeta\>\<in\><around*|[|a,b|]>>
      [because <math|<rigid|a\<leqslant\>x\<less\>\<zeta\>\<wedge\>\<zeta\>\<less\>\<lambda\>\<leqslant\>b>>]
      so that we can use [eq: <reference|eq 16.197.201>] [where we take
      <math|h=\<zeta\>-x>] to get\ 

      <\equation>
        <label|eq 16.198.201><around*|\<\|\|\>|<frac|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>|\<zeta\>-x>-f<rprime|'><rsub|+,x>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|x+<around*|(|\<zeta\>-x|)>|)>-f<around*|(|x|)>|\<zeta\>-x>-f<rprime|'><rsub|+,x>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation>

      hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>-f<rprime|'><rsub|x>\<cdot\><around*|(|\<zeta\>-x|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.196.201>]>>>|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>-f<rprime|'><rsub|+,x>\<cdot\><around*|(|\<zeta\>-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|\<zeta\>-x|)>\<cdot\><around*|(|<frac|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>|\<zeta\>-x>-f<rprime|'><rsub|+,x>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<zeta\>-x|\|>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>|\<zeta\>-x>-f<rprime|'><rsub|+,x>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<less\>\<zeta\>>>|<cell|<around*|(|\<zeta\>-x|)>\<cdot\><around*|\<\|\|\>|<frac|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>|\<zeta\>-x>-f<rprime|'><rsub|+,x>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.198.201>]>>>|<cell|\<varepsilon\>\<cdot\><around*|(|\<zeta\>-x|)>>>>>
      </eqnarray*>
    </description>

    Hence in both cases we have that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|x|)>-f<rprime|'><rsub|x>\<cdot\><around*|(|\<zeta\>-x|)>|\<\|\|\>>\<leqslant\>\<zeta\>\<cdot\><around*|(|\<zeta\>-x|)>
    </equation*>
  </proof>

  <\theorem>
    <label|diff mean value theorem (5)><dueto|Main Value Theorem (V)>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|f:<around*|[|a,b|]>\<rightarrow\>X>,
    <math|\<varphi\>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> continuous
    functions such that there exist a denumerable set
    <math|E\<subseteq\><around*|[|a,b|]>> for which
    <math|\<forall\>x\<in\><around*|[|a,b|]>\\E> <math|f> and
    <math|\<varphi\>> has derivatives <math|f<rprime|'><rsub|x>> and
    <math|\<varphi\><rprime|'><rsub|x>> at <math|x> with
    <math|<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\>\<varphi\><rprime|'><rsub|x>>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>>.
  </theorem>

  <\proof>
    As <math|E> is denumerable there exist a bijection
    <math|\<rho\>:\<bbb-N\>\<rightarrow\>E>. Define for
    <math|\<beta\>\<in\><around*|[|a,b|]>>
    <math|\<xi\><around*|(|\<beta\>|)>\<in\><around*|[|0,\<infty\>|[>> as
    follows\ 

    <\equation*>
      \<xi\><around*|(|\<beta\>|)>=<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>><frac|1|2<rsup|n>>\<equallim\><rsub|<text|[definition:
      <reference|sum generalized sum>]>><choice|<tformat|<table|<row|<cell|0<text|
      if ><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>=\<varnothing\>>>|<row|<cell|<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>><frac|1|2<rsup|n>><text|
      if ><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>\<neq\>\<varnothing\>>>>>>
    </equation*>

    Note that <math|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>>
    is finite because by [theorem: <reference|complex Archimedean property
    consequence (1)>] there exist a <math|n\<in\>\<bbb-N\>> such that
    <math|\<beta\>\<leqslant\>n>, hence <math|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>\<subseteq\><around*|{|1,\<ldots\>,n|}>>,
    so the sum <math|<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>><frac|1|2<rsup|n>>>
    is well defined. Further as <math|\<rho\><around*|(|\<bbb-N\>|)>=E\<subseteq\><around*|[|a,b|]>>
    we have <math|\<forall\>i\<in\>\<bbb-N\>> that
    <math|a\<leqslant\>\<rho\><around*|(|i|)>> so that
    <math|\<rho\><around*|(|i|)>\<nless\>a>, hence
    <math|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>a|}>=\<varnothing\>>.
    Hence\ 

    <\equation>
      <label|eq 16.199.201>\<xi\><around*|(|a|)>=0
    </equation>

    Define for <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    <math|A<rsub|\<varepsilon\>>> by\ 

    <\equation*>
      A<rsub|\<varepsilon\>>=<around*|{|\<beta\>\<in\><around*|[|a,b|]>\|\<forall\>\<gamma\>\<in\><around*|[|a,\<beta\>|[>\<vDash\><around*|\<\|\|\>|f<around*|(|\<gamma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<gamma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<gamma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<gamma\>|)>|}>\<subseteq\><around*|[|a,b|]>
    </equation*>

    Then for <math|\<beta\>=a> \ <math|<around*|[|a,\<beta\>|[>=\<varnothing\>>
    so that <math|\<forall\>\<gamma\>\<in\><around*|[|a,\<beta\>|[>\<vDash\><around*|\<\|\|\>|f<around*|(|\<gamma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<gamma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<gamma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<gamma\>|)>>
    is satisfied vacuously so that

    <\equation>
      <label|eq 16.200.201>a\<in\>A<rsub|\<varepsilon\>><text| hence
      >A<rsub|\<varepsilon\>>\<neq\>\<varnothing\>
    </equation>

    If <math|\<beta\>\<in\>A<rsub|\<varepsilon\>>> then for
    <math|\<xi\>\<in\><around*|[|a,\<beta\>|]>> we have for all
    <math|\<lambda\>\<in\><around*|[|a,\<xi\>|[>> that
    <math|a\<leqslant\>\<lambda\>\<less\>\<xi\>\<leqslant\>\<beta\>> hence
    <math|\<gamma\>\<in\><around*|[|a,\<beta\>|[>> so that

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|\<gamma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<gamma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<gamma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<gamma\>|)>
    </equation*>

    which proves that <math|\<xi\>\<in\>A<rsub|\<varepsilon\>>>. Hence

    <\equation>
      <label|eq 16.201.201>\<forall\>\<beta\>\<in\>A<rsub|\<varepsilon\>><text|
      we have ><around*|[|a,\<beta\>|]>\<subseteq\>A<rsub|\<varepsilon\>>
    </equation>

    As <math|\<varnothing\>\<neq\>A<rsub|\<varepsilon\>>> and
    <math|A<rsub|\<varepsilon\>>> is bounded above by <math|b> [because
    <math|A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,b|]>>] it follows
    from the conditional completeness of the real numbers [see theorem:
    <reference|complex RC is conditional complete>] that
    <math|sup<around*|(|A<rsub|\<varepsilon\>>|)>> exist. As
    <math|A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,b|]>> we have
    <math|\<forall\>\<zeta\>\<in\>A<rsub|\<varepsilon\>>> that
    <math|a\<leqslant\>\<zeta\>\<leqslant\>b> proving that
    <math|a\<leqslant\>sup<around*|(|A<rsub|\<varepsilon\>>|)>\<leqslant\>b>.
    So if we take <math|\<sigma\>=sup<around*|(|A<rsub|\<varepsilon\>>|)>>
    then we have

    <\equation>
      <label|eq 16.202.201>\<sigma\>=sup<around*|(|A<rsub|\<varepsilon\>>|)><text|
      and >\<sigma\>\<in\><around*|[|a,b|]>
    </equation>

    If <math|\<zeta\>\<in\><around*|[|a,\<sigma\>|[>> then
    <math|\<zeta\>\<less\>\<sigma\>=sup<around*|(|A<rsub|\<varepsilon\>>|)>>
    so that there exist a <math|\<beta\>\<in\>A<rsub|\<varepsilon\>>> such
    that <math|a\<leqslant\>\<zeta\>\<less\>\<beta\>\<leqslant\>sup<around*|(|A<rsub|\<varepsilon\>>|)>=\<sigma\>>
    so that <math|\<zeta\>\<in\><around*|[|a,\<beta\>|[>\<subseteq\><around*|[|a,\<beta\>|]>>.
    As by [eq: <reference|eq 16.201.201>]
    <math|<around*|[|a,\<beta\>|]>\<subseteq\>A<rsub|\<varepsilon\>>> it
    follows that <math|\<zeta\>\<in\>A<rsub|\<varepsilon\>>>. Hence

    <\equation*>
      <around*|[|a,\<sigma\>|[>\<subseteq\>A<rsub|\<varepsilon\>>
    </equation*>

    Further as <math|\<beta\>\<in\>A<rsub|\<varepsilon\>>> and
    <math|\<zeta\>\<in\><around*|[|a,\<beta\>|]>> it follows that <math|>
    <math|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<gamma\>|)>>
    so, as <math|\<zeta\>\<in\><around*|[|a,\<sigma\>|[>> was chosen
    arbitrary, it follows that <math|\<sigma\>\<in\>A<rsub|\<varepsilon\>>>.
    Hence we have\ 

    <\equation>
      <label|eq 16.203.201><around*|[|a,\<sigma\>|]>\<subseteq\>A<rsub|\<varepsilon\>>
    </equation>

    Assume that <math|x\<in\>A<rsub|\<varepsilon\>>\\<around*|[|a,\<sigma\>|]>>
    then, as <math|x\<in\>A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,b|]>>
    so that <math|a\<leqslant\>x>, we must have, as
    <math|x\<nin\><around*|[|a,\<sigma\>|]>>, that <math|\<sigma\>\<less\>x>
    which contradicts the fact that <math|x\<leqslant\>sup<around*|(|A<rsub|\<varepsilon\>>|)>=\<sigma\>>.
    Hence <math|A<rsub|\<varepsilon\>>\\<around*|[|a,\<sigma\>|]>=\<varnothing\>>,
    so if <math|x\<in\>A<rsub|\<varepsilon\>>> then we must have
    <math|x\<in\><around*|[|a,\<sigma\>|]>> proving that
    <math|A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,\<sigma\>|]>> which
    combined with [eq: <reference|eq 16.203.201>] results in\ 

    <\equation>
      <label|eq 16.204.201><around*|[|a,\<sigma\>|]>=A<rsub|\<varepsilon\>>
    </equation>

    Take <math|\<alpha\>,\<beta\>\<in\><around*|[|a,b|]>> with
    <math|\<alpha\>\<less\>\<beta\>>. If <math|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>>
    then we have <math|\<rho\><around*|(|n|)>\<less\>\<alpha\>\<less\>\<beta\>>
    so that <math|<rigid|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>>>
    proving that <math|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>\<subseteq\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>>.
    We consider now the following cases for
    <math|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>>:\ 

    <\description>
      <item*|<math|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>=\<varnothing\>>>Then
      <math|\<xi\><around*|(|\<alpha\>|)>=0\<leqslant\>\<xi\><around*|(|\<beta\>|)>>

      <item*|<math|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>\<neq\>\<varnothing\>>>Then,
      as <math|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>\<subseteq\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>>,
      we have that <math|<rigid|<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>\<neq\>\<varnothing\>>>
      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<xi\><around*|(|\<beta\>|)>>|<cell|=>|<cell|<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>><frac|1|2<rsup|n>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>><frac|1|2<rsup|n>>+<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>\\<around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>><frac|1|2<rsup|n>>>>|<row|<cell|>|<cell|\<geqslant\>>|<cell|<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>><frac|1|2<rsup|n>>>>|<row|<cell|>|<cell|=>|<cell|\<xi\><around*|(|\<alpha\>|)>>>>>
      </eqnarray*>
    </description>

    proving in all cases that <math|\<xi\><around*|(|\<alpha\>|)>\<leqslant\>\<xi\><around*|(|\<beta\>|)>>.
    Hence\ 

    <\equation>
      <label|eq 16.205.201>\<forall\>\<alpha\>,\<beta\>\<in\><around*|[|a,b|]><text|
      with >\<alpha\>\<less\>\<beta\><text| we have
      >0\<leqslant\>\<xi\><around*|(|\<alpha\>|)>\<leqslant\>\<xi\><around*|(|\<beta\>|)>
    </equation>

    As <math|\<sigma\>\<in\>A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,b|]>>
    we have that <math|a\<leqslant\>\<sigma\>> and we have then two cases to
    consider:

    <\description>
      <item*|<math|a=\<sigma\>>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|0+0+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-\<sigma\>|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>>>>
      </eqnarray*>

      <item*|<math|a\<less\>\<sigma\>>>Choose
      <math|\<zeta\>\<in\>\<bbb-R\><rsup|+>>. By the continuity of
      <math|\<varphi\>> at <math|\<sigma\>> there exist a
      <math|\<delta\><rsub|\<varphi\>>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        \<forall\>\<alpha\>\<in\><around*|]|\<sigma\>-\<delta\><rsub|\<varphi\>>,a+\<delta\><rsub|\<varphi\>>|[><big|cap><around*|[|a,b|]><text|
        we have ><around*|\||\<varphi\><around*|(|\<alpha\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\><frac|\<zeta\>|2>
      </equation*>

      further using the continuity of <math|f> at <math|\<sigma\>> there
      exist a <math|\<delta\><rsub|f>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        \<forall\>\<alpha\>\<in\><around*|]|\<sigma\>-\<delta\><rsub|f>,\<sigma\>+\<delta\><rsub|f>|[><big|cap><around*|[|a,b|]><text|
        we have ><around*|\<\|\|\>|f<around*|(|\<alpha\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<less\><frac|\<zeta\>|2>
      </equation*>

      Take <math|\<delta\>=min<around*|(|\<delta\><rsub|\<varphi\>>,\<delta\><rsub|f>,\<sigma\>-a|)>\<in\>\<bbb-R\><rsup|+>>
      [because <math|a\<less\>\<sigma\>>] \ then as
      <math|\<sigma\>-\<delta\>\<less\>\<sigma\>> there exist a
      <math|\<beta\>\<in\>\<bbb-R\>> such that
      <math|\<sigma\>-\<delta\>\<less\>\<beta\>\<less\>\<sigma\>\<less\>\<sigma\>+\<delta\>>
      . As <math|\<delta\>\<leqslant\>\<sigma\>-a> we have that
      <math|a\<leqslant\>\<sigma\>-\<delta\>\<less\>\<beta\>>, further, as
      <math|\<sigma\>\<in\>A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,b|]>>,
      it follows that <math|\<beta\>\<less\>\<sigma\>\<leqslant\>b>. Hence we
      conclude that <math|a\<leqslant\>\<beta\>\<leqslant\>b> and
      <math|\<sigma\>-\<delta\>\<less\>\<beta\>\<less\>\<sigma\>+\<delta\>>,
      which, as <math|\<delta\>\<leqslant\>\<delta\><rsub|f>,\<delta\><rsub|\<varphi\>>>,
      proves that <math|\<beta\>\<in\><around*|]|\<sigma\>-\<delta\><rsub|\<varphi\>>,\<sigma\>+\<delta\><rsub|\<varphi\>>|[><big|cap><around*|]|\<sigma\>-\<delta\><rsub|f>,\<sigma\>+\<delta\><rsub|f>|[><big|cap><around*|[|a,b|]>>.
      Hence we have that\ 

      <\equation>
        <label|eq 16.206.202><around*|\||\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\><frac|\<zeta\>|2><text|
        and ><around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<less\><frac|\<zeta\>|2>
      </equation>

      Next

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>>|<cell|=>|<cell|\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>=\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<around*|\||\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.206.202>>>>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<frac|\<zeta\>|2><eq-number><label|eq
        16.207.201.1>>>>>
      </eqnarray*>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>+f<around*|(|\<sigma\>|)>-f<around*|(|\<beta\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|\<beta\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.206.202>]>>>|<cell|<around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>|\<\|\|\>>+<frac|\<zeta\>|2>>>|<row|<cell|>|<cell|\<leqslant\><rsub|\<sigma\>\<in\>A<rsub|\<varepsilon\>>\<wedge\>a\<leqslant\>\<beta\>\<less\>\<sigma\>>>|<cell|\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<beta\>|)>+<frac|\<zeta\>|2>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 16.207.201.1>]>>>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<frac|\<zeta\>|2>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<beta\>|)>+<frac|\<zeta\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<beta\>|)>+\<zeta\>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.205.201>]>\<wedge\>\<beta\>\<less\>\<sigma\>>>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>+\<zeta\>>>>>
      </eqnarray*>

      As <math|\<zeta\>> was chosen arbitrary it follows from [theorem:
      <reference|complex Archimedean property consequence (2)>] that

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>
      </equation*>
    </description>

    So in all possible cases for <math|\<sigma\>> we have\ 

    <\equation>
      <label|eq 16.207.201><around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>
    </equation>

    Suppose now that <math|\<sigma\>\<less\>b> then we have for
    <math|\<sigma\>> the following possibilities in relation to <math|E>:

    <\description>
      <item*|<math|\<sigma\>\<nin\>E>>Then <math|\<varphi\>,f> have a
      derivative at <math|\<sigma\>>. <space|0.2spc>As
      <math|a\<leqslant\>\<sigma\>\<less\>b> it follows from [lemma:
      <reference|lemma 16.148.201>] that there exists
      <math|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>\<in\><around*|]|\<sigma\>,b|]>>
      such that

      <\equation*>
        \<forall\>\<zeta\>\<in\><around*|[|\<sigma\>,\<lambda\><rsub|\<varphi\>>|[><text|
        ><around*|\||\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>|\|>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>
      </equation*>

      <\equation*>
        \<forall\>\<zeta\>\<in\><around*|[|\<sigma\>,\<lambda\><rsub|f>|]><text|
        ><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>-f<rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>
      </equation*>

      <math|> So if <math|\<zeta\>\<in\><around*|[|\<sigma\>,min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>|[>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><rsub|\<sigma\>><rprime|'>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>>|<cell|=>|<cell|\<varphi\><rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>-<around*|(|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|)>+\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||\<varphi\><rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>-<around*|(|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|)>|\|>+\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)><eq-number><label|eq
        16.208.201>>>>>
      </eqnarray*>

      and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>-f<rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+f<rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>-f<rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+<around*|\<\|\|\>|f<rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+<around*|\<\|\|\>|f<rprime|'><rsub|\<sigma\>>|\<\|\|\>>\<cdot\><around*|\||\<zeta\>-\<sigma\>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<zeta\>\<in\><around*|[|\<sigma\>,min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>|[>\<Rightarrow\>\<sigma\>\<leqslant\>\<zeta\>>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+<around*|\<\|\|\>|f<rprime|'><rsub|\<sigma\>>|\<\|\|\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|hypothesis>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+\<varphi\><rprime|'><rsub|\<sigma\>>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|[|eq:<reference|eq
        16.208.201>|]>>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>>>>>
      </eqnarray*>

      proving\ 

      <\equation>
        <label|eq 16.209.201><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>+f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.209.201>]>>>|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.207.201>]>>>|<cell|\<varphi\><around*|(|\<zeta\>|)>-<wide*|\<varphi\><around*|(|\<sigma\>|)>|\<wide-underbrace\>><rsub|1>+<wide*|\<varepsilon\>\<cdot\><around*|(|\<zeta\>-\<sigma\>|)>|\<wide-underbrace\>><rsub|2>+<wide*|\<varphi\><around*|(|\<sigma\>|)>|\<wide-underbrace\>><rsub|1>-\<varphi\><around*|(|a|)>+<wide*|\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>|\<wide-underbrace\>><rsub|2>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+<wide*|\<varepsilon\>\<cdot\><around*|(|\<zeta\>-a|)>|\<wide-underbrace\>><rsub|2>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|\<sigma\>\<less\>\<zeta\>\<wedge\><text|[eq:
        <reference|eq 16.205.201>]>>>|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<zeta\>|)>>>>>
      </eqnarray*>

      So\ 

      <\equation*>
        \<forall\>\<zeta\>\<in\><around*|[|\<sigma\>,min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>|[><text|
        we have ><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<zeta\>|)>
      </equation*>

      As <math|\<sigma\>\<in\>A<rsub|\<varepsilon\>>> we have also\ 

      <\equation*>
        \<forall\>\<zeta\>\<in\><around*|[|a,\<sigma\>|[><text|
        \ ><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<zeta\>|)>
      </equation*>

      so that\ 

      <\equation*>
        \<forall\>\<zeta\>\<in\><around*|[|a,min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>|[><text|
        ><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<zeta\>|)>
      </equation*>

      proving that <math|min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>\<in\>A<rsub|\<varepsilon\>>>
      so that <math|min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>\<leqslant\>sup<around*|(|A<rsub|\<varepsilon\>>|)>=\<sigma\>>.
      As <math|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>\<in\><around*|]|\<sigma\>,b|]>>
      we have <math|\<sigma\>\<less\>min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>>
      leading to the contradiction <math|\<sigma\>\<less\>\<sigma\>>. Hence
      this case leads to a contradiction.

      <item*|<math|\<sigma\>\<in\>E>>Then there exist a
      <math|m\<in\>\<bbb-N\>> such that <math|\<sigma\>=\<rho\><around*|(|m|)>>.
      As <math|f,\<varphi\>> are continuous at <math|\<sigma\>> there exists
      <math|\<gamma\><rsub|f>,\<gamma\><rsub|\<varphi\>>\<in\>\<bbb-R\><rsup|+>>
      such that\ 

      <\equation*>
        \<forall\>\<alpha\>\<in\><around*|]|\<sigma\>-\<gamma\><rsub|\<varphi\>>,\<sigma\>+\<gamma\><rsub|\<varphi\>>|[><big|cap><around*|[|a,b|]><text|
        we have ><around*|\||\<varphi\><around*|(|\<alpha\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\><frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>
      </equation*>

      and\ 

      <\equation*>
        \<forall\>\<alpha\>\<in\><around*|]|\<sigma\>-\<gamma\><rsub|f>,\<sigma\>+\<gamma\><rsub|f>|[><big|cap><around*|[|a,b|]><text|
        we have ><around*|\<\|\|\>|f<around*|(|\<alpha\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>
      </equation*>

      As we assumed that <math|\<sigma\>\<less\>b> it follows that
      <math|\<mu\>=min<around*|(|b-\<sigma\>,\<gamma\><rsub|\<varphi\>>,\<gamma\><rsub|f>|)>\<in\>\<bbb-R\><rsup|+>>.
      If <math|\<zeta\>\<in\><around*|[|\<sigma\>,\<sigma\>+\<mu\>|[>> then
      <math|a\<leqslant\>\<sigma\>\<leqslant\>\<zeta\>\<less\>\<sigma\>+\<mu\>\<leqslant\>b-\<sigma\>,<text|
      >\<sigma\>+\<gamma\><rsub|\<varphi\>>,<text|
      >\<sigma\>+\<gamma\><rsub|f>> so that
      <math|\<zeta\>\<in\><around*|]|\<sigma\>-\<gamma\><rsub|\<varphi\>>,\<sigma\>+\<gamma\><rsub|\<varphi\>>|[><big|cap><around*|]|\<sigma\>-\<gamma\><rsub|f>,\<sigma\>+\<gamma\><rsub|f>|[><big|cap><around*|[|a,b|]>>
      and we must have that

      <\equation>
        <label|eq 16.211.202><around*|\||\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\><frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>\<wedge\><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>
      </equation>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>+f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.211.202>>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.207.201>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\>*<around*|(|\<zeta\>|)>-\<varphi\><around*|(|\<zeta\>|)>+\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+<around*|\||\<varphi\>*<around*|(|\<sigma\>|)>-\<varphi\><around*|(|\<zeta\>|)>|\|>+\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 16.211.202>>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>|<cell|=>|<cell|>>|<row|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><frac|1|2<rsup|m>>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<sigma\>|)>>|<cell|=>|<cell|>>|<row|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><frac|1|2<rsup|m>>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<sigma\>|}>><frac|1|2<rsup|n>>>|<cell|\<equallim\><rsub|\<sigma\>=\<rho\><around*|(|m|)>>>|<cell|>>|<row|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>=\<sigma\>|}>>\<varepsilon\>\<cdot\><frac|1|2<rsup|m>>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<sigma\>|}>><frac|1|2<rsup|n>>>|<cell|=>|<cell|>>|<row|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<leqslant\>\<sigma\>|}>><frac|1|2<rsup|n>>>|<cell|\<leqslant\><rsub|\<sigma\>\<leqslant\>\<zeta\>>>|<cell|>>|<row|<cell|TODO
        problem we must have \<sigma\>\<less\>\<zeta\> instedad of
        \<sigma\>\<leqslant\>\<zeta\>>|<cell|>|<cell|>>|<row|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<zeta\>|}>><frac|1|2<rsup|m>>>|<cell|=>|<cell|>>|<row|<cell|\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<zeta\>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<forall\>\<zeta\>\<in\><around*|[|\<sigma\>,\<sigma\>+\<mu\>|[><text|
        ><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<zeta\>|)>
      </equation*>

      As <math|\<sigma\>\<in\>A<rsub|\<varepsilon\>>> we have also\ 

      <\equation*>
        \<forall\>\<zeta\>\<in\><around*|[|a,\<sigma\>|[><text|
        \ ><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<zeta\>|)>
      </equation*>

      so that\ 

      <\equation*>
        \<forall\>\<zeta\>\<in\><around*|[|\<sigma\>,\<sigma\>+\<mu\>|[><text|
        ><text| \ ><around*|\<\|\|\>|f<around*|(|\<zeta\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<zeta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<zeta\>-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|\<zeta\>|)>
      </equation*>

      proving that <math|\<sigma\>+\<mu\>\<in\>A<rsub|\<varepsilon\>>>. Hence
      <math|\<sigma\>\<less\>\<sigma\>+\<mu\>\<leqslant\>sup<around*|(|A<rsub|\<varepsilon\>>|)>\<leqslant\>\<sigma\>>
      giving the contradiction <math|\<sigma\>\<less\>\<sigma\>>.
    </description>

    As in all cases we have a contradiction the assumption
    <math|\<sigma\>\<less\>b> must be false, hence we must have
    <math|\<sigma\>=b>, then by [eq: <reference|eq 16.207.201>] we have that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|b-a|)>+\<varepsilon\>\<cdot\>\<xi\><around*|(|b|)>
    </equation*>

    As <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> was chosen arbitrary it
    follows from [theorem: <reference|complex Archimedean property
    consequence (2)>] that

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>
    </equation*>
  </proof>

  \;

  <\corollary>
    <label|diff mean value theorem (8)><dueto|Main Value Theorem (VI)>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|f:<around*|[|a,b|]>\<rightarrow\>X>,
    <math|\<varphi\>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> continuous
    functions such that <math|\<forall\>x\<in\><around*|[|a,b|]>> <math|f>
    and <math|\<varphi\>> has a derivative <math|f<rprime|'><rsub|x>> and
    <math|\<varphi\><rprime|'><rsub|x>> at <math|x> with
    <math|<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\>\<varphi\><rprime|'><rsub|x>>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>>.
  </corollary>

  <\proof>
    Let <math|E=<around*|{|a+<around*|(|b-a|)>\<cdot\><frac|1|n>\|n\<in\>\<bbb-N\><rsub|0>|}>>
    then as <math|\<forall\>n\<in\>\<bbb-N\>> we have that
    <math|0\<less\><frac|1|n>\<less\>1\<Rightarrowlim\><rsub|0\<less\>b-a>0\<less\><around*|(|b-a|)>\<cdot\><frac|1|n>\<less\><around*|(|b-a|)>\<Rightarrow\>a\<less\>a+<around*|(|b-a|)>\<cdot\><frac|1|n>\<less\>b>
    it follows that <math|E\<subseteq\><around*|[|a,b|]>>. Define
    <math|\<rho\>:\<bbb-N\>\<rightarrow\>E<text| by
    >\<rho\>=a+<around*|(|b-a|)>\<cdot\><frac|1|n>> then clearly
    <math|\<rho\>> is surjective. Further if
    <math|\<rho\><around*|(|n|)>=\<rho\><around*|(|n<rprime|'>|)> then
    ><math|a+<around*|(|b-a|)>\<cdot\><frac|1|n>=a+<around*|(|b-a|)>\<cdot\><frac|1|n<rsub|<rprime|'>>>\<Rightarrowlim\><rsub|a\<less\>b><frac|1|n>=<frac|1|n<rprime|'>>>
    so that <math|n=n<rprime|'>>, which proves that <math|\<rho\>> is
    injective. Hence we have a bijection <math|\<rho\>> between
    <math|\<bbb-N\>> and <math|E > so that <math|E> is denumerable. As
    <math|\<forall\>x\<in\><around*|[|a,b|]>> <math|f<rprime|'><rsub|x>>,
    <math|\<varphi\><rprime|'><rsub|x>> exists with
    <math|<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\>\<varphi\><rprime|'><rsub|x>>
    the same applies for <math|<around*|[|a,b|]>\\E>, so applying [theorem:
    <reference|diff mean value theorem (5)>] proves that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>
    </equation*>
  </proof>

  <\corollary>
    <label|diff mean value theorem (6)><dueto|Main value Theorem (VII)>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|f:<around*|[|a,b|]>\<rightarrow\>Y> a continuous
    function such that there exist a denumerable set
    <math|E\<subseteq\><around*|[|a,b|]>> so that
    <math|\<forall\>x\<in\><around*|[|a,b|]>\\E> <math|f<rprime|'><rsub|x>>
    exists and <math|<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\>M>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>
  </corollary>

  <\proof>
    Define <math|\<varphi\>:\<bbb-R\>\<rightarrow\>\<bbb-R\>> by
    <math|\<varphi\><around*|(|x|)>=M\<cdot\><around*|(|x-a|)>><space|1em>then
    by [examples: <reference|diff derivate on [a,b] of a constant
    function>,<reference|diff derivate on [a,b] of a constant function>] and
    [theorems: <reference|diff differentiability on a closed set>,
    <reference|diff derivate on [a,b] linearity>] it follows that
    <math|\<forall\>t\<in\><around*|[|a,b|]>\\E> <math|\<varphi\>> has a
    derivative at <math|t> with <math|\<varphi\><rprime|'><rsub|t>=x>. So
    using [theorem: <reference|diff mean value theorem (5)>] it follows that:

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>=M\<cdot\><around*|(|b-a|)>-M\<cdot\><around*|(|a-a|)>=M\<cdot\><around*|(|b-a|)>
    </equation*>
  </proof>

  <\corollary>
    <label|diff mean value theorem (7)><dueto|Main Value Theorem (VIII)>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|f:<around*|[|a,b|]>\<rightarrow\>Y> a continuous
    function such that <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|f<rprime|'><around*|(|x|)>> exists and
    <math|<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\>M> then
    <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>.
  </corollary>

  <\proof>
    Let <math|E=<around*|{|a+<around*|(|b-a|)>\<cdot\><frac|1|n>\|n\<in\>\<bbb-N\><rsub|0>|}>>
    then as <math|\<forall\>n\<in\>\<bbb-N\>> we have that
    <math|0\<less\><frac|1|n>\<less\>1\<Rightarrowlim\><rsub|0\<less\>b-a>0\<less\><around*|(|b-a|)>\<cdot\><frac|1|n>\<less\><around*|(|b-a|)>\<Rightarrow\>a\<less\>a+<around*|(|b-a|)>\<cdot\><frac|1|n>\<less\>b>
    it follows that <math|E\<subseteq\><around*|[|a,b|]>>. Define
    <math|\<rho\>:\<bbb-N\>\<rightarrow\>E<text| by
    >\<rho\>=a+<around*|(|b-a|)>\<cdot\><frac|1|n>> then clearly
    <math|\<rho\>> is surjective. Further if
    <math|\<rho\><around*|(|n|)>=\<rho\><around*|(|n<rprime|'>|)> then
    ><math|a+<around*|(|b-a|)>\<cdot\><frac|1|n>=a+<around*|(|b-a|)>\<cdot\><frac|1|n<rsub|<rprime|'>>>\<Rightarrowlim\><rsub|a\<less\>b><frac|1|n>=<frac|1|n<rprime|'>>>
    so that <math|n=n<rprime|'>>, which proves that <math|\<rho\>> is
    injective. Hence we have a bijection <math|\<rho\>> between
    <math|\<bbb-N\>> and <math|E > so that <math|E> is denumerable. As
    <math|\<forall\>x\<in\><around*|[|a,b|]>> we have that
    <math|f<rprime|'><rsub|x>> exist and <math|<around*|\<\|\|\>|f<rprime|'><rsub|x>|\<\|\|\>>\<leqslant\>M>
    the same applies to <math|<around*|[|a,b|]>\\Y>. So by the previous
    corollary [corollary: <reference|diff mean value theorem (6)>] it follows
    that <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>.
  </proof>

  <\lemma>
    <label|lemma 16.202.127>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|m\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a <with|font-series|bold|Banach> space,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the normed space over <math|\<bbb-R\>> based on the product
    <math|<rigid|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> [see
    definition: <reference|normed maximum norm>], <math|U> a open set in
    <math|X>, <math|x\<in\>U>, <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> with
    <math|B<rsup|><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\>|)>\<subseteq\>U>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and a function

    <\equation*>
      f:U\<rightarrow\>Y
    </equation*>

    such that <math|\<forall\>y\<in\>U> \ <math|f> has a <math|i>-partial
    derivative <math|D<rsub|y,i>f> at <math|y> and the function

    <\equation*>
      D<rsub|i>f:U\<rightarrow\>L<around*|(|X<rsub|i>;Y|)><text| defined by
      >D<rsub|i>f<around*|(|y|)>=D<rsub|y,i>f
    </equation*>

    is continuous. Then if <math|u,v\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    we have that\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|u+t\<cdot\><around*|(|v-u|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>

    exists and

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|u|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|v|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|u+t\<cdot\><around*|(|v-u|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>
  </lemma>

  <\proof>
    We have

    <\eqnarray*>
      <tformat|<table|<row|<cell|t\<in\><around*|(|I<rsup|i,<around*|[|x|]>>|)><rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\>|)>|)>>|<cell|\<Leftrightarrow\>>|<cell|I<rsup|<around*|[|i,x|]>><around*|(|t|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|I<rsup|<around*|[|i,x|]>><around*|(|t|)>-x|\<\|\|\>><rsub|max>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\><wide*|t|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>-<around*|(|x<rsub|1>,\<ldots\><wide*|x<rsub|i>|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|max>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|<around*|(|0,\<ldots\><wide*|t-x<rsub|i>|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|max>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|0|\<\|\|\>><rsub|1>,\<ldots\><wide*|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>|\<wide-underbrace\>><rsub|i>\<ldots\><around*|\<\|\|\>|0|\<\|\|\>><rsub|n>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|t-x<rsub|i>|\<\|\|\>><rsub|i>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>>>>
    </eqnarray*>

    so that TODO

    <\equation>
      <label|eq 16.280.127>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>=<around*|(|I<rsup|i,<around*|[|x|]>>|)><rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\>|)>|)>\<subseteq\><around*|(|I<rsup|i,<around*|[|x|]>>|)><rsup|-1><around*|(|U|)>=U<rsub|<around*|[|i,x|]>><text|
      hence >I<rsup|<around*|[|i,x|]>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>|)>\<subseteq\>U
    </equation>

    Define <math|h=f\<circ\>I<rsup|<around*|[|i,x|]>>> [see theorem:
    <reference|function composition of functions is a fucntion>] so that\ 

    <\equation>
      <label|eq 16.281.127>h:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>\<rightarrow\>Y<text|
      is defined by >h<around*|(|t|)>=f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>
    </equation>

    Let <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    and define <math|z=I<rsup|<around*|[|i,x|]>><around*|(|y|)>> then by [eq:
    <reference|eq 16.280.127>] <math|z\<in\>U>, hence <math|z> has a
    <math|i>-partial derivative at <math|z>. Then by definition <math|>the
    function\ 

    <\equation*>
      f\<circ\><around*|(|I<rsup|<around*|[|i,z|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,z|]>>|)><rsup|-1><around*|(|U|)>>:<around*|(|I<rsup|<around*|[|i,z|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y<text|>
    </equation*>

    is Fréchet differentiable at <math|z<rsub|i>> and
    <math|D<rsub|i>f<around*|(|z|)>=D<rsub|z,i>f=D<rsub|z<rsub|i>><around*|(|f\<circ\><around*|(|I<rsup|<around*|[|i,z|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,z|]>>|)><rsup|-1><around*|(|U|)>>|)>>.
    Let <math|s\<in\>X<rsub|i>> then <math|I<rsup|<around*|[|i,z|]>><around*|(|s|)>=<around*|(|z<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>z<rsub|n>|)>\<equallim\><rsub|z=I<rsup|<around*|[|i,x|]>><around*|(|y|)>><around*|(|I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|1>|)>\<ldots\><wide*|s|\<wide-underbrace\>><rsub|i>\<ldots\>I<rsup|<around*|[|i,x|]>><around*|(|x<rsub|n>|)>|)>=<around*|(|x<rsub|1>,\<ldots\><wide*|s|\<wide-underbrace\>>\<ldots\>x<rsub|n><rsub|i>|)>=I<rsup|<around*|[|i,x|]>><around*|(|s|)>>
    proving that <math|I<rsup|<around*|[|i,z|]>>=I<rsup|<around*|[|i,x|]>>>,
    further <math|z<rsub|i>=<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y|)>|)><rsub|i>=<around*|(|x<rsub|1>,\<ldots\><wide*|y|\<wide-underbrace\>><rsub|i>\<ldots\>,x<rsub|n>|)>=y>.
    So we have that the function\ 

    <\equation*>
      f<rsup|<around*|[|i,x|]>>:f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>:<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y
    </equation*>

    is Fréchet differentiable at <math|y> and
    <math|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y|)>|)>=D<rsub|I<rsup|<around*|[|i,x|]>><around*|(|y|)>,i>f=D<rsub|y><around*|(|f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>|)>=D<rsub|y>f<rsup|<around*|[|i,x|]>>><math|>.
    Let <math|t\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|h<around*|(|t|)>>|<cell|=>|<cell|<around*|(|f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>|)><around*|(|t|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>><around*|(|t|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|t|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,t|)>\<subseteq\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>>|<cell|f<around*|(|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>><around*|(|t|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<circ\><around*|(|I<rsup|<around*|[|i,x|]>>|)><rsub|\|<around*|(|I<rsup|<around*|[|i,x|]>>|)><rsup|-1><around*|(|U|)>>|)><around*|(|t|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|[|i,x|]>><around*|(|t|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      h=<around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>
    </equation*>

    So using [theorem: <reference|diff differentiability is a local
    property>] it follows that <math|\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x,\<delta\>|)>>
    <math|h> is Fréchet differentiable at <math|y> and

    <\equation>
      <label|eq 16.282.127>D<rsub|y>h=D<rsub|y><around*|(|f<rsup|<around*|[|i,x|]>>|)><rsub|\|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\>|)>>=D<rsub|y>f<rsup|<around*|[|i,x|]>>=D<rsub|I<rsup|<around*|[|i,x|]>>,i>f=D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y|)>|)><rsub|>
    </equation>

    Hence if we define\ 

    <\equation*>
      D h:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x,\<delta\>|)>\<rightarrow\>D
      h<around*|(|y|)>=D<rsub|y>h=D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|y|)>|)>
    </equation*>

    then <math|D h=D<rsub|i>f\<circ\>I<rsup|<around*|[|i,x|]>>>. As by the
    hypothesis <math|D<rsub|i>f> is continuous and
    <math|I<rsup|<around*|[|i,x|]>>> is continuous by [lemma:
    <reference|lemma 16.24.178>] it follows that <math|D h> is continuous. So
    we have proved that\ 

    <\equation*>
      h<text| is of class >C<rsup|1>
    </equation*>

    Using the mean value theorem [corollary: <reference|diff mean value
    theorem (3.1)>] we have for <math|u,v\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x,\<delta\>|)>>
    that

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|u+t\<cdot\><around*|(|v-u|)>>h|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>

    exist and\ 

    <\equation*>
      <around*|\<\|\|\>|h<around*|(|u|)>-h<around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|u-v|\<\|\|\>><rsub|i>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|u+t\<cdot\><around*|(|v-u|)>>h|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>

    Using [eqs: <reference|eq 16.281.127>, <reference|eq 16.282.127>] we have
    that\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|u+t\<cdot\><around*|(|v-u|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>

    exist and\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|u|)>|)>-f<around*|(|I<rsup|<around*|[|i,x|]>>|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|u-v|\<\|\|\>><rsub|i>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|i>f<around*|(|I<rsup|<around*|[|i,x|]>><around*|(|u+t\<cdot\><around*|(|v-u|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>
  </proof>

  \;

  \;

  <\lemma>
    <label|lemma 20.206.204>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>>
    is such that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<in\>\<cal-I\><rsub|<around*|[||[>>>
    then <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>=<around*|[|a,b|[>>
    where <math|a=min<around*|(|<around*|{|begin<around*|(|I<rsub|i>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    and <math|b=max<around*|(|<around*|{|end<around*|(|I<rsub|i>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
  </lemma>

  <\proof>
    If <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>
    then there exist a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>I<rsub|i>=<around*|[|begin<around*|(|I<rsub|i>|)>,end<around*|(|I<rsub|i>|)>|[>>,
    hence <math|begin<around*|(|I<rsub|i>|)>\<leqslant\>x\<less\>end<around*|(|I<rsub|i>|)>>,
    as <math|>

    <\equation*>
      a=min<around*|(|<around*|{|begin<around*|(|I<rsub|i>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<leqslant\>begin<around*|(|I<rsub|i>|)>
    </equation*>

    <\equation*>
      end<around*|(|I<rsub|i>|)>\<leqslant\>max<around*|(|<around*|{|end<around*|(|I<rsub|i>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=b
    </equation*>

    it follows that <math|a\<leqslant\>x\<less\>b> or
    <math|x\<in\><around*|[|a,b|[>>. Hence we have that\ 

    <\equation>
      <label|eq 20.208.204><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<subseteq\><around*|[|a,b|[>
    </equation>

    As <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<in\>\<cal-S\><rsub|<around*|[||[>>>
    there exist <math|c,d\<in\>\<bbb-R\>> with <math|c\<less\>d> such that\ 

    <\equation>
      <label|eq 20.209.204><around*|[|c,d|[>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<subseteq\><around*|[|a,b|[><text|
      so that by [theorem: <reference|generalized intervals and boundaries>]
      >a\<leqslant\>c\<wedge\>d\<leqslant\>b
    </equation>

    As <math|a=min<around*|(|<around*|{|begin<around*|(|I<rsub|i>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then there exist <math|l\<in\>I> such that
    <math|a=begin<around*|(|I<rsub|l>|)>\<less\>end<around*|(|I<rsub|l>|)>>
    so that <math|a\<in\>I<rsub|l>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|l>=<around*|[|c,d|[>>
    so that <math|c\<leqslant\>a>, combining this with [eq: <reference|eq
    20.200.204>] proves\ 

    <\equation*>
      a=c
    </equation*>

    As <math|b=max<around*|(|<around*|{|end<around*|(|I<rsub|i>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    there exist a <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|b=end<around*|(|I<rsub|k>|)>>, hence
    <math|<rigid|<around*|[|begin<around*|(|I<rsub|k>|)>,end<around*|(|I<rsub|k>|)>|[>=I<rsub|k>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|l>=<around*|[|c,d|[>>>
    so that by [theorem: <reference|generalized intervals and boundaries>]
    <math|b=end<around*|(|I<rsub|k>|)>\<leqslant\>d>. Combining this with
    [eq: <reference|eq 20.209.204>] proves finally that\ 

    <\equation*>
      b=d
    </equation*>

    proving that\ 

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>=<around*|[|a,b|[>
    </equation*>

    \;
  </proof>

  <\lemma>
    <label|lemma 20.207.204>Let <math|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>,
    <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>>
    pairwise disjoint such that <math|<rigid|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<in\>\<cal-I\><rsub|<around*|[||[>>>>
    then there exist a bijection <math|\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>>
    such that\ 

    <\equation*>
      <big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|\<sigma\><around*|(|i|)>>\<in\>\<cal-S\><rsub|<around*|[||[>><text|
      and ><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>=<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|\<sigma\><around*|[|i|]>>|)><big|sqcup>I<rsub|\<sigma\><around*|(|n|)>>
    </equation*>

    \ 
  </lemma>

  <\proof>
    By [lemma: <reference|lemma 20.207.204>] we have that
    <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>=<around*|[|a,b|[>>
    with <math|b=max<around*|(|<around*|{|end<around*|(|I<rsub|i>|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>,
    so there exist a <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|b=end<around*|(|I<rsub|k>|)>>. Take
    <math|\<sigma\>=<around*|(|n\<leftrightarrowlim\><rsub|n>k|)>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>>
    [see definition: <reference|permutation transposition>]. Then
    <math|\<sigma\><around*|(|n|)>=k> so that

    <\equation>
      <label|eq 20.210.204><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>\<equallim\><rsub|<text|[theorem:
      <reference|family union of family set and
      surjections>]>><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>=<around*|[|a,b|[><text|
      where >end<around*|(|I<rsub|\<sigma\><around*|[|n|]>>|)>=b
    </equation>

    Let <math|x\<in\><around*|[|a,begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>|[>>
    then <math|x\<in\><around*|[|a,b|[>> and
    <math|x\<less\>begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>> so
    that <math|x\<nin\><around*|[|begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>,b|[>>
    hence\ 

    <\equation>
      <label|eq 20.211.204><around*|[|a,begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>|[>\<subseteq\><around*|[|a,b|[>\\<around*|[|begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>,b|[>
    </equation>

    If <math|x\<in\><around*|[|a,b|[>\\<around*|[|begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>,b|[>>
    then <math|a\<leqslant\>x\<less\>b> and we have either
    <math|x\<geqslant\>begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>>
    or <math|b\<less\>x>. The only choice that not conflicts with
    <math|a\<leqslant\>x\<less\>b> is <math|x\<geqslant\>begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>>
    so that <math|x\<in\><around*|[|begin<around*|(|I<rsub|\<sigma\><around*|(|i|)>>|)>,b|[>>
    hence <math|<around*|[|a,b|[>\\<around*|[|begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>,b|[>\<subseteq\><around*|[|begin<around*|(|I<rsub|\<sigma\><around*|(|i|)>>|)>,b|[>>.
    Combining this with [eq: <reference|eq 20.211.204>] results in\ 

    <\equation>
      <label|eq 20.212.204><around*|[|a,begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>|[>=<around*|[|a,b|[>\\<around*|[|begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>,b|[>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.210.204>]>><around*|[|a,b|[>\\I<rsub|\<sigma\><around*|(|n|)>>
    </equation>

    Let <math|x\<in\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|\<sigma\><around*|(|i|)>>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>>
    then there exist a <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> such that
    <math|x\<in\>I<rsub|\<sigma\><around*|(|i|)>>>, as
    <math|<rigid|i\<neq\>n\<Rightarrowlim\><rsub|\<sigma\><text| is a
    bijection>>\<sigma\><around*|(|i|)>\<neq\>\<sigma\><around*|(|j|)>>> we
    have that <math|x\<nin\>I<rsub|\<sigma\><around*|(|n|)>>>, hence
    <math|x\<in\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>\\I<rsub|\<sigma\><around*|(|n|)>>>.
    So\ 

    <\equation>
      <label|eq 20.213.204><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|\<sigma\><around*|(|i|)>>\<subseteq\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)>\\I<rsub|\<sigma\><around*|(|n|)>>
    </equation>

    If <math|x\<in\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)>\\I<rsub|\<sigma\><around*|(|n|)>>>
    then there exist <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>I<rsub|\<sigma\><around*|(|i|)>>> and
    <math|x\<nin\>I<rsub|\<sigma\><around*|(|n|)>>> from which it follows
    that <math|i\<neq\>n>, hence <math|i\<in\><around*|{|n-1|}>> so that
    <math|x\<in\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|i>>.
    So <math|<rigid|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)>\\I<rsub|\<sigma\><around*|(|n|)>>>\<subseteq\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|\<sigma\><around*|(|i|)>>>
    which combined with [eq: <reference|eq 20.213.204>] proves that\ 

    <\equation*>
      <big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|\<sigma\><around*|(|i|)>>=<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)>\\I<rsub|\<sigma\><around*|(|n|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.210.204>]>><around*|[|a,b|[>\\I<rsub|\<sigma\><around*|(|n|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.212.204>]>><around*|[|a,begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>|[>
    </equation*>

    As <math|\<varnothing\>\<neq\>I<rsub|\<sigma\><around*|(|1|)>>\<subseteq\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|\<sigma\><around*|(|i|)>>=<around*|[|a,begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>|]>>
    we have that <math|><math|<around*|[|a,begin<around*|(|I<rsub|\<sigma\><around*|(|n|)>>|)>|[>\<in\>\<cal-I\><rsub|<around*|[||[>>>.
    Hence we have that\ 

    <\equation*>
      <big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>I<rsub|\<sigma\><around*|(|i|)>>\<in\>\<cal-I\><rsub|<around*|[||[>>
    </equation*>

    and\ 

    <\equation*>
      <big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>=<around*|(|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)>\\I<rsub|\<sigma\><around*|(|i|)>>|)><big|sqcup>I<rsub|\<sigma\><around*|(|n|)>>=
    </equation*>

    \ <math|>

    \ 
  </proof>

  <\lemma>
    <label|lemma 20.208.204>Let <math|I<rsub|1>,I<rsub|2>\<in\>\<cal-I\><rsub|<around*|[||[>>>
    be such that <math|I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>> and
    <math|I<rsub|1><big|sqcup>I<rsub|2>\<in\>\<cal-I\><rsub|<around*|[||[>>>
    then <math|l<around*|(|I<rsub|1><big|sqcup>I<rsub|2>|)>=l<around*|(|I<rsub|1>|)>+l<around*|(|I<rsub|2>|)>>
  </lemma>

  <\proof>
    As <math|I<rsub|1>>, <math|I<rsub|2>>,
    <math|\<in\>\<cal-I\><rsub|<around*|[||[>>> there exist
    <math|a,b,c,d\<in\>\<bbb-R\>> with <math|a\<less\>b\<wedge\>c\<less\>d\<wedge\>e\<less\>f>
    such that\ 

    <\equation*>
      I<rsub|1>=<around*|[|a,b|[><text|, >I<rsub|2>=<around*|[|c,d|[>
    </equation*>

    Further as <math|><math|I<rsub|1><big|sqcup>I<rsub|2>\<in\>\<cal-I\><rsub|<around*|[||[>>>
    it follows from [lemma: <reference|lemma 20.206.204>] that\ 

    <\equation*>
      I<rsub|1><big|sqcup>I<rsub|2>=<around*|[|e,f|[><text| where
      >e=min<around*|(|a,c|)><text| and >f=max<around*|(|b,d|)>
    </equation*>

    If <math|a=c> then <math|a\<in\><around*|[|a,b|[>=I<rsub|1>> and
    <math|a=c\<in\><around*|[|c,d|[>=I<rsub|2>> so that
    <math|a\<in\>I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>> which is a
    contradiction. Hence we must have that <math|a\<neq\>c> and we can always
    assume that <math|a\<less\>c> [otherwise excabge <math|I<rsub|1>> and
    <math|I<rsub|2>>. If <math|c\<less\>b> then
    <math|c\<in\><around*|[|a,b|[>> which as <math|c\<in\><around*|[|c,d|[>>
    would mean that <math|c\<in\>I<rsub|1><big|cap>I<rsub|2>=\<varnothing\>>
    a contradiction. Hence we must have that

    <\equation>
      <label|eq 20.214.204>b\<leqslant\>c
    </equation>

    As <math|c\<less\>d> we have that <math|b\<less\>d> so that
    <math|e=min<around*|(|a,c|)>=a> and <math|f=max<around*|(|b,d|)>=d> and
    we have that\ 

    <\equation>
      <label|eq 20.215.204>I<rsub|1><big|sqcup>I<rsub|2>=<around*|[|a,d|[>
    </equation>

    As <math|a\<less\>b\<leqslant\>c\<less\>d> it follows from the above that
    <math|I<rsub|1><big|sqcup>I<rsub|2>>, as <math|b\<nless\>b> we have
    <math|b\<nin\><around*|[|a,b|[>=I<rsub|1>> so that we must have that
    <math|b\<in\>I<rsub|2>> hence <math|c\<leqslant\>b>. Combining this with
    [eq: <reference|eq 20.214.204>] proves that\ 

    <\equation>
      <label|eq 20.216.204>b=c
    </equation>

    Finaly we have that\ 

    <\equation*>
      l<around*|(|I<rsub|1><big|sqcup>I<rsub|2>|)>=l<around*|(|<around*|[|a,d|[>|)>=d-a=d-b+b-a\<equallim\><rsub|<text|[eq:
      <reference|eq 20.216.204>]>>d-c+b-a=l<around*|(|I<rsub|2>|)>+l<around*|(|I<rsub|1>|)>=l<around*|(|I<rsub|1>|)>+l<around*|(|I<rsub|2>|)>
    </equation*>
  </proof>

  We use now mathematical induction to extend the above reasult.

  <\lemma>
    <label|lemma 20.209.204>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>>
    pairwise disjoint such that <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<in\>\<cal-I\><rsub|<around*|[||[>>>
    then\ 

    <\equation*>
      l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>
    </equation*>
  </lemma>

  <\proof>
    We use induction to prove this, so take\ 

    <\equation*>
      \<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>><text|
      is pairwise disjoint and ><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<in\>\<cal-I\><rsub|<around*|[||[>><text|
      then ><rigid|l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>>
      then we have <math|l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1|}>>I<rsub|1>|)>=l<around*|(|I<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>l<around*|(|I<rsub|i>|)>>
      so that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>\<bbb-N\>>>Let
      <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>>
      pairwise disjoint such that <math|<rigid|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|i>\<in\>\<cal-I\><rsub|<around*|[||[>>>>.
      As <math|n+1\<in\><around*|{|2,\<ldots\>,\<infty\>|}>> we can use
      [lemma: <reference|lemma 20.207.204>] to find a bijection

      <\equation*>
        \<sigma\>:<around*|{|1,\<ldots\>,n+1|}>\<rightarrow\><around*|{|1,\<ldots\>,n+1|}>
      </equation*>

      such that

      <\equation>
        <label|eq 20.217.204><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|[|i|]>>\<in\>\<cal-S\><rsub|<around*|[||[>>
      </equation>

      <\equation>
        <label|eq 20.218.204><text| ><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|\<sigma\><around*|(|i|)>>=<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)><big|sqcup>I<rsub|\<sigma\><around*|(|n+1|)>>
      </equation>

      As <math|n\<in\>S> we have that\ 

      <\equation>
        <label|eq 20.219.204>l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(||)>>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|\<sigma\><around*|(|i|)>>|)>
      </equation>

      Further we have as <math|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)><big|cap>I<rsub|\<sigma\><around*|(|n+1|)>>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|I<rsub|\<sigma\><around*|(|i|)>><big|cap>I<rsub|\<sigma\><around*|(|n+1|)>>|)>=\<varnothing\>>
      so that by [lemma: <reference|lemma 20.208.204>]\ 

      <\equation>
        <label|eq 20.220.204>l<around*|(|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)><big|sqcup>I<rsub|\<sigma\><around*|(|n+1|)>>|)>=l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)>+l<around*|(|I<rsub|\<sigma\><around*|(|n+1|)>>|)>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.218.204>]>>>|<cell|l<around*|(|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)><big|sqcup>I<rsub|\<sigma\><around*|(|n+1|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.220.204>>>>|<cell|l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|\<sigma\><around*|(|i|)>>|)>+l<around*|(|I<rsub|\<sigma\><around*|(|n+1|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.219.204>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|\<sigma\><around*|(|i|)>>|)>+l<around*|(|I<rsub|\<sigma\><around*|(|n+1|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>l<around*|(|I<rsub|\<sigma\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum commutativity>]>>>|<cell|<big|sum><rsub|i=1><rsup|n+1>l<around*|(|I<rsub|i>|)>>>>>
      </eqnarray*>

      which proves that <math|n+1\<in\>S>.
    </description>
  </proof>

  We extend now the above theorem from <math|\<cal-I\><rsub|<around*|[||[>>>
  to <math|\<cal-S\><rsub|<around*|[||[>>> proving that <math|l> is additive
  on the semi-ring <math|\<cal-S\><rsub|<around*|[||[>>>.

  <\corollary>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\><rsub|<around*|[||[>>>
    pairwise disjoint such that <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<in\>\<cal-S\><rsub|<around*|[||[>>>
    then

    <\equation*>
      l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>
    </equation*>
  </corollary>

  <\proof>
    Let <math|N=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|I<rsub|i>\<neq\>\<varnothing\>|}>>
    then we have either:\ 

    <\description>
      <item*|<math|N=\<varnothing\>>>Then\ 

      <\equation*>
        l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>|)>=l<around*|(|\<varnothing\>|)>=0=<big|sum><rsub|i=1><rsup|n>0=<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>
      </equation*>

      <item*|<math|N\<neq\>\<varnothing\>>>Then as
      <math|\<varnothing\>\<neq\>N> is finite there exist a bijection
      <math|m\<in\><around*|{|1,\<ldots\>,n|}>> and a bijection
      <math|<rigid|\<beta\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>N>>.
      Further we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family union intersection and empty
        set>]>>>|<cell|l<around*|(|<big|sqcup><rsub|i\<in\>N>I<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family union of family set and
        surjections>]>>>|<cell|l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|\<sigma\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 20.209.204>]>>>|<cell|<big|sum><rsub|i=1><rsup|m>l<around*|(|I<rsub|\<sigma\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>l<around*|(|I<rsub|\<sigma\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\>N>l<around*|(|I<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>N>l<around*|(|I<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\N>0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>N>l<around*|(|I<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\N>l<around*|(|I<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>l<around*|(|I<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>>>>>
      </eqnarray*>
    </description>

    So in all cases we have\ 

    <\equation*>
      l<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 20.211.204>Let <math|I,J\<in\>\<cal-S\><rsub|<around*|[||[>>>
    such that <math|I\<subseteq\>J> then <math|l<around*|(|I|)>\<leqslant\>l<around*|(|J|)>>
    [in other words <math|l> is sub-additive].
  </lemma>

  <\proof>
    As <math|\<cal-S\><rsub|<around*|[||[>>=\<cal-I\><rsub|<around*|[||[>><big|cup><around*|{|\<varnothing\>|}>>
    we have for <math|I> either:\ 

    <\description>
      <item*|<math|I=\<varnothing\>>>Then
      <math|l<around*|(|I|)>=0\<leqslant\>l<around*|(|J|)>>.

      <item*|<math|I\<neq\>\<varnothing\>>>Then as <math|I\<subseteq\>J>
      <math|J\<neq\>\<varnothing\>> so that
      <math|I,J\<in\>\<cal-I\><rsub|<around*|[||[>>> and there exist a
      <math|a,b,c,d\<in\>\<bbb-R\>> with <math|a\<less\>b\<wedge\>c\<less\>d>
      such that <math|I=<around*|[|a,b|[>\<wedge\>J=<around*|[|c,d|[>>.
      Applying then [theorem: <reference|generalized intervals and
      boundaries>(9)] we have that <math|c\<leqslant\>a\<wedge\>b\<leqslant\>d>
      hence <math|l<around*|(|I|)>=b-a\<leqslant\>d-c=l<around*|(|J|)>>.
    </description>
  </proof>

  Having established additivity of <math|l> on the semi-ring
  <math|\<cal-S\><rsub|<around*|[||[>>> we prove that is a pre-measure.

  <\theorem>
    <label|measure length function is a pre-measure>The function
    <math|l:\<cal-S\><rsub|<around*|[||[>>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a pre-measure on the semi-ring <math|\<cal-S\><rsub|<around*|[||[>>>
  </theorem>

  <\proof>
    We have:\ 

    <\enumerate>
      <item><math|l<around*|(|\<varnothing\>|)>\<equallim\><rsub|def>0>

      <item>Let <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><rsub|<around*|[||[>>>
      be pairwise disjoint such that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>\<in\>\<cal-S\><rsub|<around*|[||[>>>.
      For <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>> we have either:\ 

      <\description>
        <item*|<math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>=\<varnothing\>>>Then
        <math|\<forall\>i\<in\>\<bbb-N\>> we have
        <math|I<rsub|i>=\<varnothing\>> so that
        <math|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>0=0=l<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>|)>>

        <item*|<math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>\<neq\>\<varnothing\>>>Then
        \ <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>\<in\>\<cal-I\><rsub|<around*|[||[>>>
        and there exist <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> such
        that\ 

        <\equation*>
          <big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>=<around*|[|a,b|[>
        </equation*>

        Let <math|n\<in\>\<bbb-N\>> then we have either
        <math|I<rsub|n>\<in\>\<cal-I\><rsub|<around*|[||[>>\<Rightarrow\>I<rsub|n>=<around*|[|a<rsub|n>,b<rsub|n>|[>>,
        <math|a<rsub|n>,b<rsub|n>\<in\>\<bbb-R\><text|>> with
        <math|a<rsub|n>\<less\>b<rsub|n>> or
        <math|I<rsub|n>=\<varnothing\>=<around*|[|a<rsub|n>,b<rsub|n>|[>>
        where <math|a<rsub|n>=b<rsub|n>=0>. In other words we have that\ 

        <\equation*>
          \<forall\>n\<in\>\<bbb-N\><text| that
          >I<rsub|n>=<around*|[|a<rsub|n>,b<rsub|n>|[><text| where
          <math|a<rsub|n>,b<rsub|n>\<in\>\<bbb-R\><text| with
          >a<rsub|n>\<leqslant\>b<rsub|n>>>
        </equation*>

        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
        <math|0\<less\>\<varepsilon\>\<less\>b-a>. Define

        <\equation*>
          <around*|{|I<rsup|><rsub|n,\<varepsilon\>>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>><text|
          by >I<rsub|n,\<varepsilon\>>=<around*|[|a<rsub|n>-<frac|\<varepsilon\>|2<rsup|n>>,b<rsub|n>|[><text|
          and ><around*|{|I<rsup|\<circ\>><rsub|n,\<varepsilon\>>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>><text|
          by >I<rsup|\<circ\>><rsub|n,\<varepsilon\>>=<around*|]|a<rsub|n>-<frac|\<varepsilon\>|2<rsup|n>>,b<rsub|n>|[>
        </equation*>

        Let <math|x\<in\><around*|[|a,b-\<varepsilon\>|]>> then
        <math|a\<leqslant\>x\<leqslant\>b-\<varepsilon\>\<less\>b> so that
        <math|x\<in\><around*|[|a,b|[>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>>,
        hence there exist a <math|n\<in\>\<bbb-N\>> such that
        <math|x\<in\>I<rsub|n>> or

        <\equation*>
          a<rsub|n>\<leqslant\>x\<less\>b<rsub|n>\<Rightarrow\>a<rsub|n>-<frac|\<varepsilon\>|2<rsup|n>>\<less\>a<rsub|n>\<leqslant\>x\<less\>b<rsub|n>\<Rightarrow\>x\<in\><around*|]|a<rsub|n>-<frac|\<varepsilon\>|2<rsup|n>>,b<rsub|n>|[>=I<rsup|\<circ\>><rsub|n,\<varepsilon\>>
        </equation*>

        Hence\ 

        <\equation*>
          <around*|[|a,b-\<varepsilon\>|]>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>>I<rsup|\<circ\>><rsub|n,\<varepsilon\>>
        </equation*>

        As <math|><math|<around*|[|a,b-\<varepsilon\>|]>> is compact [see
        theorem: <reference|compact Heine Borel (1)>] there exist a finite
        <math|I\<in\>\<bbb-N\>> such that
        <math|<around*|[|a,b-\<varepsilon\>|[>\<subseteq\><big|cup><rsub|i\<in\>F>I<rsup|\<circ\>><rsub|n,\<varepsilon\>>>.
        Take then <math|N<rsub|\<varepsilon\>>=max<around*|(|I<big|cup><around*|{|1|}>|)>>
        then we have\ 

        <\equation*>
          <around*|[|a,b-\<varepsilon\>|]>\<subseteq\><big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>I<rsup|\<circ\>><rsub|n,\<varepsilon\>>
        </equation*>

        So we have\ 

        <\equation*>
          <around*|[|a,b-\<varepsilon\>|[>\<subseteq\><around*|[|a,b-\<varepsilon\>|]>\<subseteq\><big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>I<rsup|\<circ\>><rsub|n,\<varepsilon\>>\<subseteq\><big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>I<rsub|n,\<varepsilon\>>
        </equation*>

        <\equation*>
          \;
        </equation*>
      </description>

      \ <math|>ss
    </enumerate>

    \;
  </proof>

  As <math|A\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
  we have that

  <\equation>
    A=A<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><below|=|<text|[theorem:
    <reference|family distributivity>]>><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<big|cap>A<rsub|i>|)>
  </equation>

  Further as <math|\<cal-S\>> is a semi-ring hence <math|\<cap\>>-stable ir
  follows also that\ 

  <\equation>
    <around*|{|A<big|cap>A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>
  </equation>

  Define\ 

  <\equation>
    <around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text| by
    >C<rsub|i>=<choice|<tformat|<table|<row|<cell|A<big|cap>A<rsub|1><text|
    if >i=1>>|<row|<cell|<around*|(|A<big|cap>A<rsub|i>|)>\\<big|cup><rsub|j\<in\><around*|{|2,\<ldots\>,i-1|}>><around*|(|A<big|cap>A<rsub|j>|)><text|
    if >i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>
  </equation>

  Using [lemma: <reference|lemma 20.161.201>] it follows that\ 

  <\equation>
    <label|eq 20.201.217><around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
    is pairwise disjoint>
  </equation>

  Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have either:\ 

  <\description>
    <item*|<math|i=1>>Define <math|<around*|{|D<rsub|1,i>|}><rsub|i\<in\><around*|{|1|}>>>
    by <math|D<rsub|1,1>=C<rsub|1>=A<big|cap>A<rsub|1>\<in\>\<cal-S\>> then
    for <math|n<rsub|1>=1> <math|<around*|{|D<rsub|1,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<cal-S\>>
    is pairwise disjoint and <math|C<rsub|1>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>D<rsub|1,i>>.

    <item*|<math|i\<in\><around*|{|2,\<ldots\>,n|}>>>Then
    <math|C<rsub|i>=<around*|(|A<big|cap>A<rsub|i>|)>\\<big|cup><rsub|j\<in\><around*|{|2,\<ldots\>,i-1|}>><around*|(|A<big|cap>A<rsub|j>|)>>.
    As <math|<around*|(|A<big|cap>A<rsub|i>|)>,<around*|(|A<big|cap>A|)>\<in\>\<cal-S\>>
    it follows from [lemma: <reference|lemma 20.204.217>] there exist a
    pairwise disjoint <math|<around*|{|D<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>\<subseteq\>\<cal-S\>>
    such that <math|C<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>D<rsub|i,j>>
  </description>

  Hence we have\ 

  <\equation*>
    \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
    >\<exists\><around*|{|D<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>\<subseteq\>\<cal-S\><text|
    pairwise disjoint such that >
  </equation*>

  \;

  TODO check if we need this theorem

  <\theorem>
    Let <math|n,m\<in\>\<bbb-N\>>,, <math|<around*|{|R<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-R\><rsup|n>>,
    <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
      ><around*|{|I<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>
      with R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i,j>
    </equation*>

    and\ 

    <\equation*>
      <around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>><text|
      such that ><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|j>
    </equation*>

    then we have\ 

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i,j>|)>
    </equation*>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >I<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i,j>
    </equation*>
  </theorem>

  <\proof>
    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
      such that ><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i,j>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}><text|
      >x<rsub|j>\<in\>I<rsub|i,j>\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|k,j>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|k,j>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 20.324.224><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|k,j>|)>
    </equation>

    Let <math|i\<in\><around*|{|1,\<ldots\>,m|}>> then as
    <math|R<rsub|i>\<in\>\<cal-R\><rsup|n>>
    <math|\<varnothing\>\<neq\>R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i,j>>
    it follows from [theorem: <reference|product product is not empty>] that
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
    I<rsub|i,j>\<neq\>\<varnothing\>>. Hence by [theorem: <reference|product
    projection function>]

    <\equation*>
      \<forall\>j\<in\><around*|{|1,\<ldots\>,n|}><text|
      >\<pi\><rsub|j>:R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i,j>\<rightarrow\>I<rsub|j><text|
      is surjective>
    </equation*>

    Let <math|j\<in\><around*|{|1,\<ldots\>,n|}>> then if
    <math|t\<in\>I<rsub|i,j>> there exists by the above a
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i,j>=R<rsub|i>>
    such that <math|\<pi\><rsub|j><around*|(|x|)>=t>. As
    <math|R<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>=<big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|k>>
    it follows that <math|x\<in\><big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|k>>
    so that <math|t=\<pi\><rsub|j><around*|(|x|)>\<in\>I<rsub|j>>. Hence we
    have that\ 

    <\equation>
      <label|eq 20.325.224>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|,
      >\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}><text|
      >I<rsub|i,j>\<subseteq\>I<rsub|j>
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|k,j>|)>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}><text|
      >x<rsub|j>\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|k,j>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|\<exists\>k\<in\><around*|{|1,\<ldots\>,m|}>
      such that x<rsub|j>\<in\>I<rsub|k,j>>|<cell|\<Rightarrowlim\><rsub|<text|[eq:
      <reference|eq 20.325.224>]>>>|<cell|>>|<row|<cell|x<rsub|j>\<in\>I<rsub|j>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|j>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that <math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|k,j>|)>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>>.
    Combining this with [eq: <reference|eq 20.325.224>] results in\ 

    <\equation>
      <label|eq 20.326\<point\>224><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i,j>|)>
    </equation>

    As <math|><math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>\<equallim\><rsub|<text|[eq:
    <reference|eq 20.326\<point\>224>]>><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i,j>|)>>
    it follows from \ [theorem: <reference|choice product equality>] that\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
      >I<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>I<rsub|i,j>
    </equation*>
  </proof>

  \;

  TODO end check we need this theorm

  \;

  <\proof>
    Let <math|x\<in\>\<bbb-R\>>. Define

    <\equation*>
      x-g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>> by
      <around*|(|x-g|)><around*|(|t|)>=x-g<around*|(|t|)><text| [which is
      well defined because >x\<in\>\<bbb-R\><text|]>
    </equation*>

    Let <math|t\<in\><around*|{|f+g\<less\>x|}>> then

    <\equation*>
      f<around*|(|t|)>+g<around*|(|t|)>=<around*|(|f+g|)><around*|(|t|)>\<less\>x\<Rightarrowlim\><rsub|0\<leqslant\>f<around*|(|t|)>+g<around*|(|t|)>\<less\>x\<Rightarrow\>g<around*|(|t|)>\<in\>\<bbb-R\>>f<around*|(|t|)>\<less\>x-g<around*|(|t|)>
    </equation*>

    <math|>Using the densitiy of <math|\<bbb-Q\>> in
    <math|<wide|\<bbb-R\>|\<wide-bar\>>> [see theorem: <reference|extended
    density>] there exist a <math|q\<in\>\<bbb-Q\>> such that
    <math|f<around*|(|t|)>\<less\>q\<less\>x-g<around*|(|t|)>> or
    <math|f<around*|(||)>> hence <math|t\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|x-g\<gtr\>q|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|x-g\<gtr\>q|}>|)>>.
    So\ 

    <\equation>
      <label|eq 20.422.227><around*|{|f+g\<less\>x|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|x-g\<gtr\>q|}>|)>
    </equation>

    Further if <math|t\<in\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|x-q\<gtr\>q|}>|)>>
    then there exist a <math|q\<in\>\<bbb-Q\>> such that
    <math|<rigid|t\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|x-q\<gtr\>q|}>>>,
    hence <math|f<around*|(|t|)>\<less\>q\<wedge\>q\<less\>x-g<around*|(|t|)>>
    so that <math|f<around*|(|t|)>\<less\>x-g<around*|(|t|)>>. If
    <math|g<around*|(|t|)>=\<infty\>> then
    <math|0\<leqslant\>f<around*|(|t|)>\<less\>-\<infty\>> a contradiction,
    hence, as <math|0\<leqslant\>g<around*|(|t|)>>, it follows that
    <math|g<around*|(|t|)>\<in\>\<bbb-R\>>. So from
    <math|f<around*|(|t|)>\<less\>x-g<around*|(|t|)>> it follows that
    <math|<around*|(|f+g|)><around*|(|t|)>=f<around*|(|t|)>+g<around*|(|t|)>\<less\>x>
    or <math|t\<in\><around*|{|f+g\<less\>x|}>>. Hence
    <rigid|<math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|x-q\<gtr\>q|}>|)>\<subseteq\><around*|{|f+g\<less\>x|}>>>
    which combined with [eq: <reference|eq 20.422.227>] proves\ 

    <\equation*>
      <around*|{|f+g\<less\>x|}>=<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|x-g\<gtr\>q|}>|)>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|simple measurable (1)>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    a simple function then\ 

    <\equation*>
      S<around*|[|X,\<cal-A\>|]>=<around*|{|f\<in\>\<cal-S\><around*|[|X|]>\|\<forall\>y\<in\>f<around*|(|X|)><text|
      we have >f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>|}>
    </equation*>
  </theorem>

  <\proof>
    Let <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then
    <math|f\<in\>\<cal-S\><around*|[|X|]>> and <math|f> is
    <math|\<cal-A\>>-measurable. Take <math|y\<in\>f<around*|(|X|)>> then, as
    <math|f\<in\>\<cal-S\><around*|[|X|]>>, <math|y\<in\>\<bbb-R\>>. So we
    can use [theorem: <reference|measurable function comparisation>] to get
    <math|f<rsup|-1><around*|(|<around*|{|y|}>|)>=<around*|{|f=y|}>\<in\>\<cal-A\>>.
    Hence

    <\equation*>
      f\<in\><around*|{|f\<in\>\<cal-S\><around*|[|X|]>\|\<forall\>y\<in\>f<around*|(|X|)><text|
      we have >f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>|}>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 20.443.229>\<cal-S\><around*|[|X,\<cal-A\>|]>\<subseteq\><around*|{|f\<in\>\<cal-S\><around*|[|X|]>\|\<forall\>y\<in\>f<around*|(|X|)><text|
      we have >f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>|}>
    </equation>

    Let <math|f\<in\><around*|{|f\<in\>\<cal-S\><around*|[|X|]>\|\<forall\>y\<in\>f<around*|(|X|)><text|
    we have >f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>|}>>. As
    <math|f\<in\>\<cal-S\><around*|(|X|)>> there exist by [theorem:
    <reference|simple function alternative>] a <math|n\<in\>\<bbb-N\>> and a
    bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>f<around*|(|X|)>>
    such that <math|X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)>>.
    Hence\ 

    <\equation>
      <label|eq 20.444.229>X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|)><text|
      and >|\<nobracket\>>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >f<rsup|-1><around*|(|\<beta\><around*|(|i|)>|)><below|\<in\>|\<beta\><around*|(|i|)>\<in\>f<around*|(|X|)>>\<cal-A\>
    </equation>

    Take <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    then as <math|f<rsup|-1><around*|(|B|)>\<subseteq\>X> we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<rsup|-1><around*|(|B|)>>|<cell|=>|<cell|X<big|cap>f<rsup|-1><around*|(|B|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)>|)><big|cap>f<rsup|-1><around*|(|B|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)><big|cap>f<rsup|-1><around*|(|B|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function function and intersection and
      union>]>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}><big|cap>B|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 20.445.229>f<rsup|-1><around*|(|B|)>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}><big|cap>B|)>
    </equation>

    For <math|\<beta\><around*|(|i|)>> we have either:\ 

    <\description>
      <item*|<math|\<beta\><around*|(|i|)>\<in\>B>>Then
      <math|<around*|{|\<beta\><around*|(|i|)>|}><big|cap>B=<around*|{|\<beta\><around*|(|i|)>|}>>
      so that <math|><math|f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}><big|cap>B|)>=f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)><below|\<in\>|<text|[eq:
      <reference|eq 20.444.229>]>>\<cal-A\>>

      <item*|<math|\<beta\><around*|(|i|)>\<nin\>B>>Then
      <math|<around*|{|\<beta\><around*|(|i|)>|}><big|cap>B=<around*|{|\<beta\><around*|(|i|)>|}>=\<varnothing\>>
      so that <math|f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}><big|cap>B|)>=\<varnothing\>\<in\>\<cal-A\>>
    </description>

    so that in all cases <math|f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}><big|cap>B|)>\<in\>\<cal-A\>>.
    Hence <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}><big|cap>B|)>\<in\>\<cal-A\>>
    which by [eq: <reference|eq 20.445.229>] proves that
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>. As
    <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>> was
    choosen arbitrary this concludes the proof.
  </proof>

  \;

  <\proof>
    As <math|g\<in\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>|]>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>|]>>
    with <math|g<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>> it
    follows from [theorem: <reference|measure integral extension>] that\ 

    <\equation>
      <label|eq 20.568.240>g\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]><text|
      and ><big|int>g d\<mu\>=<big|int><rsup|+>g d\<mu\>\<less\>\<infty\>
    </equation>

    Using [theorem: <reference|measure integral properties (2)>] we have that
    <math|<around*|\||g|\|>\<less\>\<infty\>> <math|\<mu\>>-a.e. or as
    <math|g<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>> that
    <math|g\<neq\>\<infty\>> <math|\<mu\>>-a.e.. In other words there exist a
    <math|N<rsub|1>\<in\>\<cal-A\>> with <math|\<mu\><around*|(|N<rsub|1>|)>=0>
    such that\ 

    <\equation>
      <label|eq 20.569.240>A=<around*|{|x\<in\>X\|g<around*|(|x|)>=\<infty\>|}>\<subseteq\>N<rsub|1>
    </equation>

    Further by the hypothesis ther exist a <math|N<rsub|2>\<in\>\<cal-A\>>
    with <math|\<mu\><around*|(|N<rsub|2>|)>=0> such that\ 

    <\equation>
      <label|eq 20.570.240>B=<around*|{|x\<in\>X\|\<neg\><around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)><text|
      exists with ><below|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)><text|
      and >\<forall\>n\<in\>\<bbb-N\><text|
      \ ><around*|\||f<rsub|n><around*|(|x|)>|\|>\<leqslant\>g<around*|(|x|)>|>|)>|}>\<subseteq\>N<rsub|2>
    </equation>

    Let <math|N=N<rsub|1><big|cup>N<rsub|2>> then <math|N\<in\>\<cal-A\>> and
    <math|\<mu\><around*|(|N|)>\<leqslant\>\<mu\><around*|(|N<rsub|1>|)>+\<mu\><around*|(|N<rsub|2>|)>=0+0=0>
    so that\ 

    <\equation>
      <label|eq 20.571.240>\<mu\><around*|(|N|)>=0<text| and
      >A<big|cup>B\<subseteq\>N
    </equation>

    As <math|N\<in\>\<cal-A\>\<Rightarrow\>X\\N\<in\>\<cal-A\>> we have using
    [theorems: <reference|measurable function charasteristic product> and
    <reference|measure integral f+ f- are measurable>] that\ 

    <\equation>
      <label|eq 20.572.240>\<cal-X\><rsub|X\\N>\<cdot\>f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\<wedge\><around*|\||\<cal-X\><rsub|X\\A>\<cdot\>f|\|>\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>,\<cal-X\><rsub|X\\N>\<cdot\>g\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>
    </equation>

    <\equation>
      <label|eq 20.573.240>\<forall\>n\<in\>\<bbb-N\><text|
      >\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\<wedge\><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|>\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>
    </equation>

    Let <math|x\<in\>X> then we have either:

    <\description>
      <item*|<math|x\<in\>N>>Then we have\ 

      <\equation*>
        <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>=0\<less\>\<infty\>
      </equation*>

      <\equation*>
        <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>=0=<below|lim|n\<rightarrow\>\<infty\>>0=<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>
      </equation*>

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><text| ><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>=0\<leqslant\>0=<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>
      </equation*>

      <item*|<math|x\<in\>X\\N>>Then we have\ 

      <\equation*>
        <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>=g<around*|(|x|)><below|\<less\>|x\<nin\>A\<wedge\><text|[eq:
        <reference|eq 20.569.240>]>>\<infty\>
      </equation*>

      <\equation*>
        <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>=f<around*|(|x|)>\<equallim\><rsub|x\<nin\>B><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>
      </equation*>

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><text| ><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>=<around*|\||f<rsub|n><around*|(|x|)>|\|><below|\<leqslant\>|x\<nin\>B>g<around*|(|x|)>=<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>
      </equation*>
    </description>

    which proves that in all cases we have

    <\equation>
      <label|eq 20.574.240>\<forall\>x\<in\>X<text|
      ><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>\<less\>\<infty\>\<wedge\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
    </equation>

    <\equation>
      <label|eq 20.575.240>\<forall\>x\<in\>X<text| we have
      >\<forall\>n\<in\>\<bbb-N\><text| that
      ><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)><below|\<less\>|<text|[eq:
      <reference|eq 20.575.240>]>>\<infty\><text| or
      ><around*|(|\<cal-X\><rsub|X\\N>|)><around*|(|X|)>\<subseteq\>\<bbb-R\>
    </equation>

    Using [theorem: <reference|almost everywhere and characteristic>] we have
    also\ 

    <\equation>
      <label|eq 20.576.240>f=\<cal-X\><rsub|X\\N>\<cdot\>f<text|
      >\<mu\><text|-a.e. and >\<forall\>n\<in\>\<bbb-N\><text| that
      >f<rsub|n>=\<cal-X\><rsub|X\\N>\<cdot\>f<text| >\<mu\><text|-a.e.>
    </equation>

    Applying now [theorem: <reference|measure integral and a.e. equalitiy>]
    we get\ 

    <\equation>
      <label|eq 20.577.240>\<cal-X\><rsub|X\\N>\<cdot\>g\<in\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>|]><text|
      and ><big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>d\<mu\>=<big|int>g
      d\<mu\><below|\<less\>|g\<in\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>|]>>\<infty\>
    </equation>

    Using [eqs: <reference|eq 20.575.240>] and ]theorem: <reference|non
    negative integral scalar product, sum inequality>] we have
    <math|\<forall\>n\<in\>\<bbb-N\>> that

    <\equation>
      <label|eq 20.578.240><big|int><rsup|+><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|>d\<mu\>\<leqslant\><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>d\<mu\>\<equallim\><rsub|<text|[theorem:
      <reference|measure integral extension>]>><big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>d\<mu\><below|\<less\>|<text|[eq:
      <reference|eq 20.577.240>]>>\<infty\>
    </equation>

    From the above we have using [theorem: <reference|measure integral
    extension>] that <math|<around*|\||\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|\|>\<in\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>|]><text|>>,
    hence using [theorem: <reference|measure integral alternative>] and
    <math|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n><below|\<in\>|<text|[eq:
    <reference|eq 20.573.240>]>>\<cal-M\><around*|[|X,\<cal-A\>|]>> <math|>it
    follows that <math|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>\<in\>\<cal-L\><around*|[|X,\<cal-A\>|]>>.
    As <math|f<rsub|n>=\<cal-X\><rsub|X\\N>\<cdot\>f> <math|\<mu\>>-a.e. [see
    eq: <reference|eq 20.570.240>], <math|f<rsub|n>,\<cal-X\><rsub|X\\N>\<cdot\>f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>>
    we have from \ [theorem: <reference|measure integral and a.e. equalitiy>]
    that <math|f<rsub|n>\<in\>\<cal-L\><around*|[|X\<less\>\<cal-A\>,\<mu\>|]>>
    and <math|<big|int>f<rsub|n>d\<mu\>=<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>d\<mu\>>.
    Summarized we have\ 

    <\equation>
      <label|eq 20.579.240>\<forall\>n\<in\>\<bbb-N\><text| that
      >f<rsub|n>\<in\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>|]><text| and
      ><big|int>f<rsub|n>d\<mu\>=<big|int><around*|(|\<cal-X\><rsub|A>\<cdot\>f<rsub|n>|)>d\<mu\>
    </equation>

    Let <math|x\<in\>X,n\<in\>\<bbb-N\>>. As by [eq: <reference|eq
    20.574.240>] <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>=<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>
    it follows from [corollary: <reference|extended limit absolute value>]
    that\ 

    <\equation>
      <label|eq 20.580.240><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|\||<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>|\|>=<below|lim|n\<rightarrow\>\<infty\>><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>
    </equation>

    As by [eq: <reference|eq 20.575.240>] we have
    <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>>
    we have using [theorem: <reference|extended limit properties>] that\ 

    <\equation>
      <label|eq 20.581.240><below|lim|n\<rightarrow\>\<infty\>><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)><below|\<less\>|<text|[eq:
      <reference|eq 20.574.240>]>>\<infty\>
    </equation>

    which after substituting in [eq: <reference|eq 20.580.240>] yields\ 

    <\equation>
      <label|eq 20.582.240><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>\<less\>\<infty\>
    </equation>

    As <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|>,><math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>g|\|>\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>>
    [see eqs: <reference|eq 20.572.240>, <reference|eq 20.573.240>] we can
    use [theorem: <reference|non negative integral scalar product, sum
    inequality>] resulting in \ <math|<big|int><rsup|+><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|>d\<mu\>\<leqslant\><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>d\<mu\><math|<below|\<less\>|<text|[eq:
    <reference|eq 20.577.240>]>>\<infty\>>> which by [theorem:
    <reference|measure integral extension>] proves that
    <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|>\<in\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>|]>>.
    As further <math|f=\<cal-X\><rsub|X\\N>\<cdot\>f> <math|\<mu\>>-a.e. we
    can use [theorem: <reference|measure integral and a.e. equalitiy>] to get

    <\equation>
      <label|eq 20.583.240>f\<in\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>|]><text|
      and ><big|int>f d\<mu\>=<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>d\<mu\>
    </equation>

    Further from [eq: <reference|eq 20.582.240>[ we have\ 

    <\equation*>
      <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|X|)>\<subseteq\>\<bbb-R\>
    </equation*>

    \;
  </proof>

  \;

  \;

  \;

  <\lemma>
    <label|lemma 20.470.246>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space, <math|p\<in\><around*|[|1,\<infty\>|[>> then
    <math|<around*|\<langle\>|L<rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>,<around*|\<\|\|\>||\<\|\|\>><rsub|Lp>|\<rangle\>>>
    is a Banach space.
  </lemma>

  <\proof>
    Using [theorem: <reference|LP spaces normed space>] it follows that\ 

    <\equation*>
      <around*|\<langle\>|L<rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>,<around*|\<\|\|\>||\<\|\|\>><rsub|Lp>|\<rangle\>><text|
      is a normed space>
    </equation*>

    So it remains to prove that <math|<around*|\<langle\>|L<rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>,<around*|\<\|\|\>||\<\|\|\>><rsub|Lp>|\<rangle\>>>
    is a Banach space. We use [theorem: <reference|series absolute
    convergence equals convergence only in Banach space>] stating that a
    normed space is complete if and only if every absolute convergent series
    is convergent. So let <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>L<rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>>
    be a absolute convergent series. Then by definition\ 

    <\equation>
      <label|eq 20.650.246><big|sum><rsub|i=1><rsup|\<infty\>><around*|\<\|\|\>|f|\<\|\|\>><rsub|i><text|
      converges to a element in ><around*|[|0,\<infty\>|[>\<subseteq\>\<bbb-R\>
    </equation>

    As <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>L<rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>>
    there exist a <math|<around*|{|F<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-L\><rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>>
    such that\ 

    <\equation>
      <label|eq 20.651.246>\<forall\>f<rsub|i>=<around*|[|F<rsub|i>|]><rsub|p>
    </equation>

    As <math|<around*|{|F<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-L\><rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>>
    we have using [theorem: <reference|LP spaces absolute value>]
    <math|<around*|{|<around*|\||F<rsub|i>|\|>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-L\><rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>>
    hence using [theorem: <reference|LP spaces finite sum>] that\ 

    <\equation>
      <label|eq 20.652.246><around*|{|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i>|\|>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-L\><rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>
    </equation>

    So using the definition of <math|><math|\<cal-L\><rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>>
    we have that\ 

    <\equation>
      <label|eq 20.653.246>\<forall\>n\<in\>\<bbb-N\><text|
      ><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i>|\|>|)><rsup|p>\<subseteq\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-R\>|]>
    </equation>

    Using [theorem: <reference|measure integral extension>] we have that\ 

    <\equation>
      <label|eq 20.654.246>\<forall\>n\<in\>\<bbb-N\><text|
      ><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i>|\|>|)><rsup|p>\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<wedge\><big|int><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i>|\|>|)><rsup|p>d\<mu\>=<big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i>|\|>|)><rsup|p>d\<mu\>\<less\>\<infty\>
    </equation>

    Given <math|n\<in\>\<bbb-N\>> and <math|x\<in\>X> we have that
    <math|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i><around*|(|x|)>|\|>\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i><around*|(|x|)>|\|>+<around*|\||F<rsub|n+1><around*|(|x|)>|\|>=<big|sum><rsub|i=1><rsup|n+1><around*|\||F<rsub|i><around*|(|x|)>|\|>>
    which together with the monotonity of the power function [see theorem:
    <reference|exp generalized power properties>] we have\ 

    <\equation>
      <label|eq 20.655.246>\<forall\>x\<in\>X<text| we have
      >\<forall\>n\<in\>\<bbb-N\><text| ><big|sum><rsub|i=1><rsup|n><around*|\||F<rsup|i><around*|(|x|)>|\|>\<leqslant\><big|sum><rsub|i=1><rsup|n+1><around*|\||F<rsub|i><around*|(|x|)>|\|>\<wedge\><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsup|i><around*|(|x|)>|\|>|)><rsup|p>\<leqslant\><around*|(|<big|sum><rsub|i=1><rsup|n+1><around*|\||F<rsup|i><around*|(|x|)>|\|>|)><rsup|p>
    </equation>

    Hence using [theorem: <reference|lemma 20.477.246>] it follows that
    <math|g<around*|(|x|)>\<equallim\><rsub|def><around*|(|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>=<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>>
    is well defined and <math|> \ 

    <\equation>
      <label|eq 20.656.246><label|eq 19.536.038>g<around*|(|x|)>=<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>=<around*|(|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>
    </equation>

    Using the above together with [eq: <reference|eq 20.654.246>] allows us
    to use [theorem: <reference|measurable function sup inf limit>] proving
    that

    <\equation>
      <label|eq 20.657.246>g=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsup|n><rsub|i=1><around*|\||F<rsub|i>|\|>|)><rsup|p>\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>.<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    The conditions for the Monotone Convergence Theorem [see theorem:
    <reference|Monotone Convergence Theorem (1)>] are now satisfied by [eq:
    <reference|eq 20.654.246>, <reference|eq 20.656.246>, <reference|eq
    20.657.246>], hence we have that\ 

    <\equation>
      <label|eq 20.658.246><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+><around*|(|<big|sum><rsup|n><rsub|i=1><around*|\||F<rsub|i>|\|>|)><rsup|p>
      d\<mu\> <text| exist and ><big|int><rsup|+>g
      d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+><around*|(|<big|sum><rsup|n><rsub|i=1><around*|\||F<rsub|i>|\|>|)><rsup|p>d\<mu\>
    </equation>

    Further, using the monotonicity of the integral [see theorem:
    <reference|non negative integral scalar product, sum inequality>] on [eq:
    <reference|eq 20.655.246>] we have\ 

    <\equation>
      <label|eq 20.659.246>\<forall\>n\<in\>\<bbb-N\>
      <big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsup|i><around*|(|x|)>|\|>|)><rsup|p>d\<mu\>\<leqslant\><big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n+1><around*|\||F<rsup|i><around*|(|x|)>|\|>|)><rsup|p>d\<mu\>
    </equation>

    so that by [theorem: <reference|extended limit increasing / decreasing
    sequence exist>]\ 

    <\equation>
      <label|eq 20.660.246><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+><around*|(|<big|sum><rsup|n><rsub|i=1><around*|\||F<rsub|i>|\|>|)><rsup|p>d\<mu\>=sup<around*|(|<around*|{|<around*|(|<big|sum><rsup|n><rsub|i=1><around*|\||F<rsub|i>|\|>|)><rsup|p>\|n\<in\>\<bbb-N\>|}>|)>
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i>|\|>|)><rsup|p>d\<mu\>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.654.246>]>>>|<cell|<big|int><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsup|i><around*|(|x|)>|\|>|)><rsup|p>d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i>|\|>|\<\|\|\>><rsub|p>|)><rsup|p>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|exp generalized power properties>],><around*|\<\|\|\>||\<\|\|\>><rsub|p>
      <text|is a norm>>>|<cell|<around*|(|<big|sum><rsup|n><rsub|i=1><around*|\<\|\|\>|<around*|\||F<rsub|i>|\|>|\<\|\|\>><rsub|p>|)><rsup|p>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 20.479.246>]>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|p>|)><rsup|p>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
      <reference|exp generalized power properties>]>>>|<cell|<around*|(|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|p>\|n\<in\>\<bbb-N\>|}>|)>|)><rsup|p>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|extended infinite sum>]>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|p>|)><rsup|p>>>>>
    </eqnarray*>

    hence

    <\equation>
      <label|eq 20.661.246><big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i>|\|>|)><rsup|p>d\<mu\>\<leqslant\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|p>|)><rsup|p>
    </equation>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsup|+>g
      d\<mu\>>|<cell|\<equallim\><rsub|<text|[eq: <reference|eq
      20.658.246>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+><around*|(|<big|sum><rsup|n><rsub|i=1><around*|\||F<rsub|i>|\|>|)><rsup|p>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 20.660.246>>>>|<cell|sup<around*|(|<around*|{|<big|int><rsup|+><around*|(|<big|sum><rsup|n><rsub|i=1><around*|\||F<rsub|i>|\|>|)><rsup|p>\|n\<in\>\<bbb-N\>|}>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 20.661.246>]>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|p>|)><rsup|p>>>|<row|<cell|>|<cell|<below|\<less\>|<text|[eq:
      <reference|eq 20.650.246>]>>>|<cell|\<infty\>>>>>
    </eqnarray*>

    which as also <math|g\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>.<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    proves by [theorem: <reference|measure integral extension>] proves that\ 

    <\equation>
      <label|eq 20.662.246>g\<in\>\<cal-L\><around*|[|X,\<cal-A\>,\<mu\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    Using [theorem: <reference|measure integral properties (2)>] it follows
    from the above that\ 

    <\equation>
      <label|eq 20.663.246>N=<around*|{|x\<in\>X\|<around*|\||g<around*|(|x|)>|\|>=\<infty\>|}>\<in\>\<cal-A\><infix-and>\<mu\><around*|(|N|)>=\<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||g<around*|(|x|)>|\|>=\<infty\>|}>|)>=0
    </equation>

    If <math|x\<in\>X\\N> we must have that
    <math|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>=<around*|\||g<around*|(|x|)>|\|>\<less\>\<infty\>>,
    which proves that <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||F<rsub|i><around*|(|x|)>|\|>\<less\>\<infty\>>
    [otherwise we have <math|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>=\<infty\><rsup|p>\<equallim\><rsub|def>\<infty\>>].
    To summarize we have proved that\ 

    <\equation*>
      \<forall\>x\<in\>X\\N<text| we have
      ><big|sum><rsub|i=1><rsup|\<infty\>><rsub|><around*|\||F<rsub|i><around*|(|x|)>|\|>\<less\>\<infty\>
    </equation*>

    Using Dominant Convergence [see theorem: <reference|series absolute
    dominant convergence>] on the above for the Banach space
    <math|<around*|\<langle\>|\<bbb-C\>,\<\|\|\>|\<rangle\>>> proves that

    <\equation>
      <label|eq 20.664.246>\<forall\>x\<in\>X\\N<text|
      ><big|sum><rsub|i=1><rsup|\<infty\>>F<rsub|i><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>F<rsub|i><around*|(|x|)>\<in\>\<bbb-K\><text|
      exist>
    </equation>

    Define now\ 

    <\equation>
      <label|eq 20.665.246>F:X\<rightarrow\>\<bbb-K\><text| by
      >F<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>F<rsub|i><around*|(|x|)><text|
      if >x\<in\>X\\N>>|<row|<cell|0<text| if >x\<in\>N>>>>>
    </equation>

    As <math|<around*|{|F<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-L\><rsup|p><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-K\>|]>\<Rightarrowlim\><rsub|<text|[definition:
    <reference|LP spaces>]>><around*|{|F<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-K\>|]>>,
    further using [theorems: <reference|measurable function charasteristic
    product>,<reference|complex measurable function properties>] it follows
    that <math|<around*|{|\<cal-X\><rsub|X\\N>\<cdot\>F<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-K\>|]>>.
    Using now [theorems: <reference|measurable function sum (finite
    1)>,<reference|complex measurable function properties>] it follows that\ 

    <\equation>
      <label|eq 20.666.246><around*|{|<big|sum><rsub|i=1><rsup|n>F<rsub|i>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-K\>|]><text|
      and ><around*|{|<big|sum><rsub|i=1><rsup|n><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>F<rsub|i>|)>|}>\<subseteq\>\<cal-M\><around*|[|X,\<b-A\>,\<bbb-K\>|]>
    </equation>

    If <math|x\<in\>X> then

    <\equation>
      <label|eq 20.667.246><below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>F<rsub|i>|)><around*|(|x|)>|)>=<choice|<tformat|<table|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>F<rsub|i><around*|(|x|)><text|
      if >x\<in\>X\\N>>|<row|<cell|<below|lim|i\<rightarrow\>> 0<text| if
      >x\<in\>N>>>>>=F<around*|(|x|)>
    </equation>

    Hence using [theorems: <reference|measurable function sup inf limit>,
    <reference|complex measurable function properties>] it follows that\ 

    <\equation>
      <label|eq 20.669.247>F\<in\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-K\>|]><text|
      and by [lemma: <reference|lemma 20.447.245>] that
      <math|<around*|\||F|\|><rsup|p>\<in\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-K\>|]>>>
    </equation>

    Let <math|n\<in\>\<bbb-N\>> then for <math|x\<in\>X> we have either:

    <\description>
      <item*|<math|x\<in\>X\\N>>Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<big|sum><rsub|i=1><rsup|n><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>F<rsub|i>|)>|\|><rsup|p>>|<cell|=>|<cell|<around*|\||<big|sum><rsub|i=1><rsup|n>F<rsub|i><around*|(|x|)>|\|><rsup|p>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
        <reference|exp generalized power properties>]>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
        <reference|exp generalized power properties>]>>>|<cell|<around*|(|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n><around*|\||F<rsub|i><around*|(|x|)>|\|>\|n\<in\>\<bbb-N\>|}>|)>|)><rsup|p>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|extended infinite sum>]>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||F<rsub|i><around*|(|x|)>|\|>|)><rsup|p>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.656.246>]>>>|<cell|g<around*|(|x|)>>>>>
      </eqnarray*>

      Next

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||F<around*|(|x|)>|\|><rsup|p>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.667.246>]>>>|<cell|<around*|\||<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>F<rsub|i><around*|(|x|)>|\|><rsup|p>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 20.476.246>]>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|\||<big|sum><rsub|i=1><rsup|n>F<rsub|i><around*|(|x|)>|\|><rsup|p>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[theorem:
        <reference|limit and lower or upper
        bound>]>>>|<cell|g<around*|(|x|)>>>>>
      </eqnarray*>

      <item*|<math|x\<in\>N>>Then <math|<around*|\||F<around*|(|x|)>|\|><rsup|p>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.665.246>]>>0\<leqslant\>g<around*|(|x|)>>
    </description>

    proving that\ 

    <\equation>
      <label|eq 20.670.247>\<forall\>x\<in\>X<text|
      ><around*|\||F<around*|(|x|)>|\|><rsup|p>\<leqslant\>g<around*|(|x|)>
    </equation>

    As <math|g\<in\>\<cal-L\><rsup|><around*|[|X,\<cal-A\>,\<mu\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    [see eq: <reference|eq 20.662.246>], <math|<around*|\||F<around*|(|x|)>|\|><rsup|p>\<in\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-K\>|]>>
    [see eq: <reference|eq 20.669.247>] it follows from the above and
    [theorem: <reference|measure integral domination theorem>

    \ 

    <\equation*>
      \;
    </equation*>

    <\equation*>
      \;
    </equation*>

    \;
  </proof>

  \;

  \;

  \;

  <\equation>
    <label|eq 20.507.231><around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
  </equation>

  \;

  \;

  \;

  <\theorem>
    <label|non negative function as limit of simple functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    and <math|f\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    then there exists a sequence <math|<around*|{|f<rsub|k>|}><rsub|k\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|[>>
    such that <math|\<forall\>x\<in\>X> we have

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><text| we have
      >f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>
    </equation*>

    and\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)><text|
      exists and >f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>
    </equation*>

    In other words we have that\ 

    <\equation*>
      f=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>
    </equation*>
  </theorem>

  <\proof>
    The strategy of the proof is, given <math|n\<in\>\<bbb-N\>>, to divide
    <math|f<around*|(|X|)><big|cap><around*|[|0,n|[>> in
    <math|n\<cdot\>2<rsup|n>> intervals of the form
    <math|<around*|[|<frac|k-1|2<rsup|n>>,<frac|k|2<rsup|n>>|[>> and
    aproximate <math|f> by <math|f<rsub|n>> where

    <\equation*>
      f<rsub|n><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<frac|k-1|2<rsup|n>><text|
      if >x\<in\>f<around*|(|X|)><big|cap><around*|[|0,n|[><text| where
      >k<text| satisfies> x\<in\>f<rsup|-1><around*|(|<around*|[|<frac|k-1|2<rsup|n>>,<frac|k|2<rsup|n>>|[>|)>>>|<row|<cell|n<text|
      if >x\<in\>X\\<around*|(|<big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>|)>>>>>>
    </equation*>

    and prove that <math|f=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>>
    \ The following illustrates this for <math|n=2> and <math|X=\<bbb-R\>>
    here

    <\equation*>
      <block*|<tformat|<twith|table-lborder|0ln>|<table|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|0,1/4|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=0/4>>|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|1/4,2/4|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=1/4>>|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|2/4,3/4|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=2/4>>|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|3/4,4/4|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=3/4>>|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|4/4,5/4|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=4/4>>|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|5/4,6/4|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=5/4>>|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|6/4,7/4|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=6/4>>|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|7/4,8/4|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=7/4>>|<row|<cell|x>|<cell|\<in\>>|<cell|f<rsup|-1><around*|(|<around*|[|8/4,\<infty\>|[>|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|2><around*|(|x|)>=2>>>>>
    </equation*>

    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<rsub|2>>|<cell|=>|<cell|\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|0,<frac|1|4>|[>|)>>\<cdot\><frac|0|4>+\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|<frac|1|4>,<frac|2|4>|[>|)>>\<cdot\><frac|1|4>+\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|<frac|2|4>,<frac|3|4>|[>|)>>\<cdot\><frac|2|4>+\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|<frac|3|4>,<frac|4|4>|[>|)>>\<cdot\><frac|3|4>+\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|<frac|4|4>,<frac|5|4>|[>|)>>\<cdot\><frac|4|4>+\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|<frac|5|4>,<frac|6|4>|[>|)>>\<cdot\><frac|5|4>+\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|<frac|6|4>,<frac|7|4>|[>|)>>\<cdot\><frac|7|4>+\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|<frac|7|4>,<frac|8|4>|[>|)>>\<cdot\><frac|7|4>+\<cal-X\><rsub|f<rsup|-1><around*|(|<around*|[|<frac|8|4>,\<infty\>|[>|)>>\<cdot\><frac|8|4><eq-number><label|eq
      20.490.249>>>>>
    </eqnarray*>

    \;

    <small-figure|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|0.410009gw|0.539996gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-auto-crop|true|gr-color|red|gr-snap|<tuple>|gr-arrow-begin|o|gr-line-width|2ln|gr-arrow-end|\<less\>|<graphics||<text-at|<math|>|<point|-4.4|0.4>>|<with|dash-style|10|<line|<point|-4|-3.2>|<point|8.0|-3.2>>>|<with|dash-style|10|<line|<point|-4|-2.4>|<point|8.0|-2.4>>>|<with|dash-style|10|<line|<point|-4|-0.8>|<point|8.0|-0.8>>>|<with|dash-style|10|<line|<point|-4|1.6>|<point|8.0|1.6>>>|<with|dash-style|10|<line|<point|-4|2.4>|<point|8.0|2.4>>>|<text-at|<math|1/4>|<point|-5|-3.2>>|<text-at|<math|2/4>|<point|-5|-2.4>>|<text-at|<math|3/4>|<point|-5|-1.6>>|<text-at|4/4|<point|-5|-0.8>>|<text-at|<math|5/4>|<point|-5|0>>|<text-at|<math|6/4>|<point|-5|0.8>>|<text-at|<math|7/4>|<point|-5|1.6>>|<text-at|<math|8/4>|<point|-5|2.4>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|0/4>|<point|-5|-4>>>|<with|color|red|arrow-end|\<less\>|dash-style|10|line-width|2ln|arrow-begin|o|<line|<point|-4|-4>|<point|-3.6|-4.0>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-3.6|-3.2>|<point|-3.0|-3.2>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-3|-2.4>|<point|-2.0|-2.4>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-2|-1.6>|<point|2.0|-1.6>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|2|-0.8>|<point|3.2|-0.8>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|3.2|0>|<point|4.0|0.0>>>|<with|color|blue|dash-style|10|<line|<point|7.6|1.6>|<point|7.6|-4.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|<with|font-series|bold|>>|<point|-2|3.4>>>|<with|color|blue|dash-style|10|<line|<point|7.2|2.4>|<point|7.2|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4.66401|2.4>|<point|4.6|-4.0>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.66401|2.4>|<point|7.2|2.4>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|dash-style|10|<line|<point|-4|0.8>|<point|8.0|0.8>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.6|0>|<point|8.0|0.0>>>|<with|line-width|2ln|<smooth|<point|-4|-4>|<point|-3.6|-3.2>|<point|-3.0|-2.4>|<point|-2.0|-1.6>|<point|2.0|-0.8>|<point|3.2|0.0>|<point|4.0|0.8>|<point|4.6|2.4>|<point|6.0|3.2>|<point|7.2|2.4>|<point|7.6|0.8>|<point|8.0|0.0>>>|<with|color|blue|dash-style|10|<smooth|<point|3.98431|0.8>|<point|3.92462627331658|-4.08966133086387>>>|<with|color|blue|dash-style|10|<smooth|<point|3.2|0>|<point|3.17809895488821|-4.08966133086387>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|dash-style|10|<smooth|<point|8|0>|<point|-4.01213784892181|-0.0230519910041011>>>|<with|color|blue|dash-style|10|<line|<point|1.99945|-0.8>|<point|1.96008069850509|-4.07001587511576>>>|<with|color|blue|dash-style|10|<line|<point|-0.0267421371674196|-1.19818878909354>|<point|0.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|-2|-1.6>|<point|-1.96901045111787|-4.07001587511576>>>|<with|color|blue|dash-style|10|<line|<point|-3.03442803818049|-2.4>|<point|-3.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|-3.6202|-3.2>|<point|-3.6|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4.26597|1.6>|<point|4.18616880539754|-4.06682431538563>>>|<with|color|blue|dash-style|10|<line|<point|7.47761|1.56977>|<point|7.49818097631962|-3.98453829871676>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.0216|0.808622>|<point|4.26845482206641|0.829193676412224>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.3096|1.56977>|<point|4.65931340124355|1.56976782643207>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.21018|1.59034>|<point|7.41589495965075|1.59033933059929>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.45704|0.829194>|<point|7.55989548882127|0.808622172245006>>>>>|<label|figure
    20.6.234><math|f> apprimated by <math|f<rsub|2>>>

    \;

    Now for the details of the proof. Define\ 

    <\equation>
      <label|eq 20.500.231><around*|{|I<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|\<bbb-N\>|)><text|
      by >I<rsub|n>=<around*|{|i\<in\>\<bbb-N\>\|i\<leqslant\>n\<cdot\>2<rsup|n>|}>=<around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>|}>
    </equation>

    Let <math|n\<in\>\<bbb-N\>>. Define for <math|k\<in\>I<rsub|n>>\ 

    <\equation>
      <label|eq 20.501.231>A<rsub|n,k>=<around*|{|x\<in\>X\|<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|n>|}>=f<rsup|-1><around*|(|<around*|[|<frac|k-1|2<rsup|n>>,<frac|k|2<rsup|n>>|[>|)>
    </equation>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>A<rsub|n,k>>|<cell|\<Leftrightarrow\>>|<cell|<frac|k-1|2<rsup|n>>\<leqslant\>x\<wedge\>x\<less\><frac|k|2<rsup|n>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|f\<geqslant\><frac|k-1|2<rsup|n>>|}>\<wedge\>x\<in\><around*|{|f\<less\><frac|k|2<rsup|n>>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|f\<geqslant\><frac|k-1|2<rsup|n>>|}><big|cap><around*|{|f\<less\><frac|k|2<rsup|n>>|}>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation>
      <label|eq 20.502.231>A<rsub|n,k>=<around*|{|f\<geqslant\><frac|k-1|2<rsup|n>>|}><big|cap><around*|{|f\<less\><frac|k|2<rsup|n>>|}>
    </equation>

    As <math|f> is <math|\<cal-A\>>-measurable it follows from [theorem:
    <reference|measurable function alternative (1)>] that
    <math|<around*|{|f\<geqslant\><frac|k-1|2<rsup|n>>|}>,<around*|{|f\<less\><frac|k|2<rsup|n>>|}>\<in\>\<cal-A\>>
    so that\ 

    <\equation>
      <label|eq 20.503.231>\<forall\>k\<in\>I<rsub|n> we have
      A<rsub|n,k>\<in\>\<cal-A\><text|>
    </equation>

    As <math|I<rsub|n>=<around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>|}>> is
    finite hence countable it follows from [theorem: <reference|measure
    countable union is in sigma algebra>] that

    <\equation>
      <label|eq 20.504.231><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>\<in\>\<cal-A\>
    </equation>

    Let <math|l,k\<in\>I<rsub|n>> with <math|l\<neq\>k> then we may assume
    that <math|l\<less\>k\<Rightarrow\>l\<leqslant\>k-1> [otherwise
    interchange <math|l> and <math|k>]. Assume that
    <math|x\<in\>A<rsub|n,k><big|cap>A<rsub|n,l>> then
    <math|<frac|l-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|l|2<rsup|n>>\<leqslant\><frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>>
    leading to the contradiction <math|f<around*|(|x|)>\<less\>f<around*|(|x|)>>,
    hence the assumption is wrong and we have that
    <math|><math|A<rsub|n,k><big|cap>A<rsub|n,l>=\<varnothing\>>. In other
    words we have proved that

    <\equation>
      <label|eq 20.505.231><around*|{|A<rsub|n,k>|}><rsub|k\<in\>I<rsub|n>><text|
      is pairwise disjoint>
    </equation>

    Given <math|n\<in\>\<bbb-N\>> define

    <\equation*>
      <around*|{|B<rsub|n,k>|}><rsub|k\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>\<subseteq\>\<cal-A\><text|
      by >B<rsub|n,k>=<choice|<tformat|<table|<row|<cell|A<rsub|n,k><text| if
      >k\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>|}>=I<rsub|n>>>|<row|<cell|X\\<around*|(|<big|sqcup><rsub|i\<in\>I<rsub|n>>A<rsub|n,k>|)><text|
      if >k=n\<cdot\>2<rsup|n>+1>>>>><below|\<in\>|<text|[eq: <reference|eq
      20.503.231>, <reference|eq 20.504.231>]>>\<cal-A\>
    </equation*>

    <\equation*>
      <around*|{|f<rsub|n,k>|}><rsub|k\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>\<subseteq\><around*|[|0,\<infty\>|[><text|
      by >f<rsub|n,k>=<choice|<tformat|<table|<row|<cell|<frac|k-1|2<rsup|n>><text|
      if >k\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|k>|}>=I<rsub|n>>>|<row|<cell|n<text|
      if >k=n\<cdot\>2<rsup|n>+1>>>>>
    </equation*>

    Using [lemma: <reference|lemma 20.371.262>] together with [eq:
    <reference|eq 20.505.231>] it follows then that\ 

    <\equation>
      <label|eq 20.503.261><around*|{|B<rsub|n,k>|}><rsub|k\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>\<subseteq\>\<cal-A\><text|
      is pairwise disjoint and ><big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>B<rsub|n,k>=X
    </equation>

    Define now\ 

    <\equation>
      <label|eq 20.504.261>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >f<rsub|n>=<big|sum><rsub|i=1><rsup|n\<cdot\>2<rsup|n>+1>f<rsub|n,k>\<cdot\>\<cal-X\><rsub|X,B<rsub|n,k>>
    </equation>

    Using then [theorem: <reference|simple function measurable (1)>] together
    with [eq: <reference|eq 20.503.261>] proves that\ 

    <\equation>
      <label|eq 20.507.231><around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    </equation>

    \;

    Define the following functions [one for each <math|n\<in\>\<bbb-N\>>]

    <\equation>
      <label|eq 20.506.231>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      where >f<rsub|n><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<frac|k-1|2<rsup|n>><text|
      if >x\<in\>A<rsub|n,k>>>|<row|<cell|n<text| if
      >x\<in\>X\\<around*|(|<big|sqcup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>|)>>>>>>\<in\><around*|[|0,\<infty\>|[>
    </equation>

    <\note>
      <math|f<rsub|n>> is a well defined function because:\ 

      <\enumerate>
        <item>Define the \ <math|f<rsub|n>=<around*|(|<big|cup><rsub|k\<in\>I<rsub|n>><around*|(|A<rsub|n,k>\<times\><around*|{|<frac|k-1|2<rsup|n>>|}>|)>|)><big|cup><around*|(|<around*|(|X\\<around*|(|<big|sqcup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>|)>|)>\<times\><around*|{|n|}>|)>\<subseteq\>X\<times\>\<bbb-R\>>

        <item>Let <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>f<rsub|n>>
        then for <math|x> we have either:\ 

        <\description>
          <item*|<math|x\<in\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>>Then
          <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\><big|cup><rsub|k\<in\>I<rsub|n>><around*|(|A<rsub|n,k>\<times\><around*|{|<frac|k-1|2<rsup|n>>|}>|)>>
          so there exist a <math|k<rsub|1>,k<rsub|2>\<in\>I<rsub|n>> such
          that <math|<around*|(|x,y|)>\<in\>A<rsub|n,k<rsub|1>>\<times\><around*|{|<frac|k<rsub|1>-1|2<rsup|n>>|}>\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>A<rsub|n,k<rsub|2>>\<times\><around*|{|<frac|k<rsub|2>-1|2<rsup|n>>|}>>.
          Assume that <math|k<rsub|1>\<neq\>k<rsub|2>> then we have
          <math|x\<in\>A<rsub|n,k<rsub|1>><big|cap>A<rsub|n,k<rsub|2>>=\<varnothing\>>
          a contradiction. So we must have that <math|k<rsub|1>=k<rsub|2>> so
          that <math|y=<frac|k<rsub|1>-1|2<rsup|n>>=<frac|k<rsub|2>-1|2<rsup|n>>=y<rprime|'>>.\ 

          <item*|<math|x\<in\>X\\<around*|(|<big|sqcup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>|)>>>Then
          <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\><around*|(|X\\<around*|(|<big|sqcup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>|)>|)>\<times\><around*|{|n|}>>
          so that <math|y=n=y<rprime|'>>
        </description>

        As in all cases we <math|y=y<rprime|'>> it follows that
        <math|f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is
        indeed a well defined function.
      </enumerate>
    </note>

    \;

    Let <math|n\<in\>\<bbb-N\>> and take <math|x\<in\>f<rsup|-1><around*|(|<around*|[|0,n|[>|)>>
    then <math|0\<leqslant\>f<around*|(|x|)>\<less\>n>. Define
    <math|B<rsub|x>=<around*|{|k\<in\>I<rsub|n>\|f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>|}>\<subseteq\>I<rsub|n>>
    a finite set. As <math|n\<cdot\>2<rsup|n>\<in\>I<rsub|n>> and
    <math|f<around*|(|x|)>\<less\>n=<frac|n\<cdot\>2<rsup|n>|2<rsup|n>>> we
    have that <math|n\<cdot\>2<rsup|n>\<in\>B<rsub|x>> so that
    <math|B<rsub|x>\<neq\>\<varnothing\>>. Hence
    <math|l=min<around*|(|B<rsub|x>|)>> exist. There are two possible cases
    for <math|l>

    <\description>
      <item*|<math|l=1>>Then <math|<frac|1-1|2<rsup|n>>=0\<leqslant\>f<around*|(|x|)>\<less\><frac|1|2<rsup|n>>>
      so that <math|x\<in\>A<rsub|n,1>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>

      <item*|<math|1\<less\>l>>Then <math|1\<leqslant\>l-1\<less\>l\<leqslant\>n\<cdot\>2<rsup|n>>
      so that <math|l-1\<in\>I<rsub|n>>. As
      <math|l-1\<less\>l=min<around*|(|B<rsub|x>|)>> we must have that
      <math|<frac|l-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|l|2<rsup|n>>>
      so that <math|x\<in\>A<rsub|n,l>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>
    </description>

    So we have proved that <math|f<rsup|-1><around*|(|<around*|[|0,n|[>|)>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>.
    For the opposite inclusion, we have for <math|k\<in\>I<rsub|n>> that
    <math|<rigid|A<rsub|n,k>=f<rsup|-1><around*|(|<around*|[|<frac|k-1|2<rsup|n>>,<frac|k|2<rsup|n>>|[>|)><below|\<subseteq\>|<frac|k|2<rsup|n>>\<leqslant\><frac|n\<cdot\>2<rsup|n>|2<rsup|n>>>f<rsup|-1><around*|(|<around*|[|0,1|[>|)>>>.
    So it follows that <math|<big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>=f<rsup|-1><around*|(|<around*|[|0,1|[>|)>>.
    Summarized we have

    <\equation>
      <label|eq 20.508.231>\<forall\>n\<in\>\<bbb-N\><text| we have
      >f<rsup|-1><around*|(|<around*|[|0,n|[>|)>=<big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>
    </equation>

    Let <math|x\<in\>X> and <math|n\<in\>\<bbb-N\>> then we have to check the
    following possible cases

    <\description>
      <item*|<math|f<around*|(|x|)>\<less\>n>>Then
      <math|x\<in\>f<rsup|-1><around*|(|<around*|[|0,n|[>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.508.231>]>><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>
      hence there exist a <math|k\<in\>I<rsub|n>> [which is unique by [eq:
      <reference|eq 20.505.231>]] such that <math|x\<in\>A<rsub|n,k>>, hence
      using the definition of <math|f<rsub|n>> [see eq: <reference|eq
      20.506.231>] it follows that <math|f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>>.
      As <math|x\<in\>A<rsub|n,k>> we have also
      <math|<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>>
      so that\ 

      <\equation*>
        f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)><text| and
        ><text| >f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>
      </equation*>

      <item*|<math|n\<leqslant\>f<around*|(|x|)>>>Then
      <math|x\<nin\>f<rsup|-1><around*|(|<around*|[|0,n|[>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.508.231>]>><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>
      so that <math|x\<in\>X\\<big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>
      and from [eq: <reference|eq 20.506.231>] we have that

      <\equation*>
        f<rsub|n><around*|(|x|)>=n<text| and
        <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)>>>
      </equation*>
    </description>

    Summarizing the above we have three results

    <\equation>
      <label|eq 20.509.231>\<forall\>x\<in\>X<text| we have
      >f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)>
    </equation>

    <\equation>
      <label|eq 20.510.231>\<forall\>x\<in\>X<text|,
      <math|\<forall\>n\<in\>\<bbb-N\>> with >f<around*|(|x|)>\<less\>n<text|
      there exist a >k\<in\>I<rsub|n><text| with
      >f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2>
    </equation>

    <\equation>
      <label|eq 20.511.231>\<forall\>x\<in\>X<text|,
      >\<forall\>n\<in\>\<bbb-N\><text| with
      >n\<leqslant\>f<around*|(|x|)><text| we have
      >f<rsub|n><around*|(|x|)>=n
    </equation>

    Next we show that <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>>
    is increasing. Let <math|x\<in\>X> then we have for
    <math|n\<in\>\<bbb-N\>> either:

    <\description>
      <item*|<math|f<around*|(|x|)>\<less\>n>>Then
      <math|f<around*|(|x|)>\<less\>n,n+1> so using [eq: <reference|eq
      20.510.231>] there exists <math|k\<in\>I<rsub|n>,l\<in\>I<rsub|n+1>>
      such that

      <\equation*>
        f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>\<wedge\>f<rsub|n+1><around*|(|x|)>=<frac|l-1|2<rsup|n+1>>\<leqslant\>f<around*|(|x|)>\<less\><frac|l|2<rsup|n+1>>
      </equation*>

      From this it follows that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|k-1|2<rsup|n>>\<less\><frac|l-1|2<rsup|n+1>>>|<cell|\<Rightarrow\>>|<cell|<frac|2\<cdot\>k-2|2<rsup|n+1>>\<less\><frac|l|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|2\<cdot\>k-2\<less\>l>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|2\<cdot\>k-2\<leqslant\>l-1>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|2\<cdot\>k-2|2<rsup|n+1>>\<leqslant\><frac|l-1|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|k-1|2<rsup|n>>\<leqslant\><frac|l-1|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>>>>>
      </eqnarray*>

      proving

      <\equation*>
        f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>
      </equation*>

      <item*|<math|n\<leqslant\>f<around*|(|x|)>\<less\>n+1>>Then by [eq:
      <reference|eq 20.509.231>] <math|f<rsub|n><around*|(|x|)>=n> and by
      [eq: <reference|eq 20.510.231>] there exist a <math|k\<in\>I<rsub|n+1>>
      such that <math|f<rsub|n+1><around*|(|x|)>=*<frac|k-1|2<rsup|n+1>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n+1>>>.
      As <math|n\<leqslant\>f<around*|(|x|)>> it follows that

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<less\><frac|k|2<rsup|n+1>>>|<cell|\<Rightarrow\>>|<cell|n\<cdot\>2<rsup|n+1>\<less\>k>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n\<cdot\>2<rsup|n+1>\<leqslant\>k-1>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n\<leqslant\><frac|k-1|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>>>>>
      </eqnarray*>

      proving\ 

      <\equation*>
        f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>
      </equation*>

      <item*|<math|n+1\<leqslant\>f<around*|(|x|)>>>Then
      <math|n,n+1\<leqslant\>f<around*|(|x|)>> so that by [eq: <reference|eq
      20.509.231>] <math|f<rsub|n><around*|(|x|)>=n\<less\>n+1=f<rsub|n+1><around*|(|x|)>>
      so that we have again\ 

      <\equation*>
        f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>
      </equation*>
    </description>

    So we have proved that\ 

    <\equation>
      <label|eq 20.500.232>\<forall\>x\<in\>X<text| we have
      >\<forall\>n\<in\>\<bbb-N\><text| that
      >f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>
    </equation>

    Using then [theorem: <reference|extended limit increasing / decreasing
    sequence exist>] on the above it follows that\ 

    <\equation>
      <label|eq 20.501.232>\<forall\>x\<in\>X<text|
      ><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)><text|
      exists and ><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>
    </equation>

    Let <math|x\<in\>X>. Using [eq: <reference|eq 20.509.231>] we have that
    <math|\<forall\>n\<in\>\<bbb-N\>> <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)>>
    so that\ 

    <\equation>
      <label|eq 20.502.232>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>\<leqslant\>f<around*|(|x|)>
    </equation>

    For the opposite inclusion. Assume that
    <math|><math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>f<around*|(|x|)>>
    then

    <\equation*>
      sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\>\<bbb-R\>
    </equation*>

    and for <math|f<around*|(|x|)>> we have either:\ 

    <\description>
      <item*|<math|f<around*|(|x|)>=\<infty\>>>By [theorem:
      <reference|complex Archimedean property consequence (1)>] there exist a
      <math|n\<in\>\<bbb-N\>> such that <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>n\<less\>\<infty\>=f<around*|(|x|)>>.
      Using then [eq: <reference|eq 20.511.231>] we have
      <math|f<rsub|n><around*|(|x|)>=n> so that
      <math|n=f<rsub|n><around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>n>
      leading to the contradiction <math|n\<less\>n>.

      <item*|<math|f<around*|(|x|)>\<less\>\<infty\>>>As
      <math|f<around*|(|x|)>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>\<gtr\>0>.
      there exist by [theorem: <reference|complex 0\<less\>x^n\<less\>e>] a
      <math|n<rsub|1>\<in\>\<bbb-N\>> such that

      <\equation*>
        <frac|1|2<rsup|n<rsub|1>>>\<less\>f<around*|(|x|)>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>
      </equation*>

      Further using [theorem: <reference|complex Archimedean property
      consequence (1)>] there exist a <math|n<rsub|2>\<in\>\<bbb-N\>> such
      that <math|f<around*|(|x|)>\<less\>n<rsub|2>>. Let
      <rigid|<math|n=max<around*|(|n<rsub|1>,n<rsub|2>|)>>> then
      <math|f<around*|(|x|)>\<less\>n> so that by [eq: <reference|eq
      20.510.231>] there exist a <math|k\<in\>I<rsub|n>> such that
      <math|f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>>.
      Then <math|f<around*|(|x|)>-f<rsub|n><around*|(|x|)>\<less\><frac|k|2<rsup|n>>-<frac|k-1|2<rsup|n>>=<frac|1|2<rsup|n>>\<less\><frac|1|2<rsup|n<rsub|1>>>\<less\>f<around*|(|x|)>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>>
      so that <math|<rigid|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>\<less\>f<rsub|n><around*|(|x|)>>>
      which as <math|f<rsub|n><around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>>
      is a contradiction.\ 
    </description>

    As in all cases we reach a contradiction the assumption is invalid and we
    must have that <math|<rigid|f<around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)><around*|\||n\<in\>\<bbb-N\>|\<nobracket\>>|}>|)>>>
    which combined with [eq: <reference|eq 20.502.232>] proves that
    <math|<rigid|f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)><around*|\||n\<in\>\<bbb-N\>|\<nobracket\>>|}>|)>>>,
    hence using [eq: <reference|eq 20.501.232>] we have\ 

    <\equation*>
      \<forall\>x\<in\>X<text| we have ><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)><text|
      exist and >f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>
    </equation*>
  </proof>

  \;

  <small-figure|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|0.410009gw|0.539996gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-auto-crop|true|gr-color|red|gr-snap|<tuple>|gr-arrow-begin|o|gr-line-width|2ln|gr-arrow-end|\<less\>|gr-fill-color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/ridged-brushed-medium.png|1gu|>|<graphics||<text-at|<math|>|<point|-4.4|0.4>>|<with|dash-style|10|<line|<point|-4|-3.2>|<point|8.0|-3.2>>>|<with|dash-style|10|<line|<point|-4|-2.4>|<point|8.0|-2.4>>>|<with|dash-style|10|<line|<point|-4|-0.8>|<point|8.0|-0.8>>>|<with|dash-style|10|<line|<point|-4|1.6>|<point|8.0|1.6>>>|<with|dash-style|10|<line|<point|-4|2.4>|<point|8.0|2.4>>>|<text-at|<math|1/4>|<point|-5|-3.2>>|<text-at|<math|2/4>|<point|-5|-2.4>>|<text-at|<math|3/4>|<point|-5|-1.6>>|<text-at|4/4|<point|-5|-0.8>>|<text-at|<math|5/4>|<point|-5|0>>|<text-at|<math|6/4>|<point|-5|0.8>>|<text-at|<math|7/4>|<point|-5|1.6>>|<text-at|<math|8/4>|<point|-5|2.4>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|0/4>|<point|-5|-4>>>|<with|color|red|arrow-end|\<less\>|dash-style|10|line-width|2ln|arrow-begin|o|<line|<point|-4|-4>|<point|-3.6|-4.0>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-3.6|-3.2>|<point|-3.0|-3.2>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-3|-2.4>|<point|-2.0|-2.4>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-2|-1.6>|<point|2.0|-1.6>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|2|-0.8>|<point|3.2|-0.8>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|3.2|0>|<point|4.0|0.0>>>|<with|color|blue|dash-style|10|<line|<point|7.6|1.6>|<point|7.6|-4.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|<with|font-series|bold|>>|<point|-2|3.4>>>|<with|color|blue|dash-style|10|<line|<point|7.2|2.4>|<point|7.2|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4.66401|2.4>|<point|4.6|-4.0>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.66401|2.4>|<point|7.2|2.4>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|dash-style|10|<line|<point|-4|0.8>|<point|8.0|0.8>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.6|0>|<point|8.0|0.0>>>|<with|line-width|2ln|<smooth|<point|-4|-4>|<point|-3.6|-3.2>|<point|-3.0|-2.4>|<point|-2.0|-1.6>|<point|2.0|-0.8>|<point|3.2|0.0>|<point|4.0|0.8>|<point|4.6|2.4>|<point|6.0|3.2>|<point|7.2|2.4>|<point|7.6|0.8>|<point|8.0|0.0>>>|<with|color|blue|dash-style|10|<smooth|<point|3.98431|0.8>|<point|3.92462627331658|-4.08966133086387>>>|<with|color|blue|dash-style|10|<smooth|<point|3.2|0>|<point|3.17809895488821|-4.08966133086387>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|dash-style|10|<smooth|<point|8|0>|<point|-4.01213784892181|-0.0230519910041011>>>|<with|color|blue|dash-style|10|<line|<point|1.99945|-0.8>|<point|1.96008069850509|-4.07001587511576>>>|<with|color|blue|dash-style|10|<line|<point|-0.0267421371674196|-1.19818878909354>|<point|0.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|-2|-1.6>|<point|-1.96901045111787|-4.07001587511576>>>|<with|color|blue|dash-style|10|<line|<point|-3.03442803818049|-2.4>|<point|-3.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|-3.6202|-3.2>|<point|-3.6|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4.26597|1.6>|<point|4.18616880539754|-4.06682431538563>>>|<with|color|blue|dash-style|10|<line|<point|7.47761|1.56977>|<point|7.49818097631962|-3.98453829871676>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.0216|0.808622>|<point|4.26845482206641|0.829193676412224>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.3096|1.56977>|<point|4.65931340124355|1.56976782643207>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.21018|1.59034>|<point|7.41589495965075|1.59033933059929>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.45704|0.829194>|<point|7.55989548882127|0.808622172245006>>>>>|<label|figure
  20.6.234><math|f> apprimated by <math|f<rsub|2>>>

  \;

  \;

  \;

  \;

  <small-figure|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|0.410009gw|0.539996gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-auto-crop|true|gr-snap|<tuple|grid
  point>|gr-dash-style|10|<graphics||<text-at|<math|>|<point|-4.4|0.4>>|<with|dash-style|10|<line|<point|-4|-3.2>|<point|8.0|-3.2>>>|<with|dash-style|10|<line|<point|-4|-2.4>|<point|8.0|-2.4>>>|<with|dash-style|10|<line|<point|-4|-0.8>|<point|8.0|-0.8>>>|<with|dash-style|10|<line|<point|-4|1.6>|<point|8.0|1.6>>>|<with|dash-style|10|<line|<point|-4|2.4>|<point|8.0|2.4>>>|<text-at|<math|1/4>|<point|-5|-3.2>>|<text-at|<math|2/4>|<point|-5|-2.4>>|<text-at|<math|3/4>|<point|-5|-1.6>>|<text-at|4/4|<point|-5|-0.8>>|<text-at|<math|5/4>|<point|-5|0>>|<text-at|<math|6/4>|<point|-5|0.8>>|<text-at|<math|7/4>|<point|-5|1.6>>|<text-at|<math|8/4>|<point|-5|2.4>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|0/4>|<point|-5|-4>>>|<with|color|red|arrow-end|\<less\>|dash-style|10|line-width|2ln|arrow-begin|o|<line|<point|-4|-4>|<point|-3.6|-4.0>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-3.6|-3.2>|<point|-3.0|-3.2>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-3|-2.4>|<point|-2.0|-2.4>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|-2|-1.6>|<point|2.0|-1.6>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|2|-0.8>|<point|3.2|-0.8>>>|<with|color|red|line-width|2ln|arrow-begin|o|arrow-end|\<less\>|<line|<point|3.2|0>|<point|4.0|0.0>>>|<with|color|blue|dash-style|10|<line|<point|7.6|1.6>|<point|7.6|-4.0>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|<text-at|<math|<with|font-series|bold|>>|<point|-2|3.4>>>|<with|color|blue|dash-style|10|<line|<point|7.2|2.4>|<point|7.2|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4.66401|2.4>|<point|4.6|-4.0>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.66401|2.4>|<point|7.2|2.4>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|dash-style|10|<line|<point|-4|0.8>|<point|8.0|0.8>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.6|0>|<point|8.0|0.0>>>|<with|line-width|2ln|<smooth|<point|-4|-4>|<point|-3.6|-3.2>|<point|-3.0|-2.4>|<point|-2.0|-1.6>|<point|2.0|-0.8>|<point|3.2|0.0>|<point|4.0|0.8>|<point|4.6|2.4>|<point|6.0|3.2>|<point|7.2|2.4>|<point|7.6|0.8>|<point|8.0|0.0>>>|<with|color|blue|dash-style|10|<smooth|<point|3.98431|0.8>|<point|3.92462627331658|-4.08966133086387>>>|<with|color|blue|dash-style|10|<smooth|<point|3.2|0>|<point|3.17809895488821|-4.08966133086387>>>|<with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/vintage/wood-xdark.png|1gu|>|dash-style|10|<smooth|<point|8|0>|<point|-4.01213784892181|-0.0230519910041011>>>|<with|color|blue|dash-style|10|<line|<point|1.99945|-0.8>|<point|1.96008069850509|-4.07001587511576>>>|<with|color|blue|dash-style|10|<line|<point|-0.0267421371674196|-1.19818878909354>|<point|0.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|-2|-1.6>|<point|-1.96901045111787|-4.07001587511576>>>|<with|color|blue|dash-style|10|<line|<point|-3.03442803818049|-2.4>|<point|-3.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|-3.6202|-3.2>|<point|-3.6|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4.26597|1.6>|<point|4.18616880539754|-4.06682431538563>>>|<with|color|blue|dash-style|10|<line|<point|7.47761|1.56977>|<point|7.49818097631962|-3.98453829871676>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.0216|0.808622>|<point|4.26845482206641|0.829193676412224>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|4.3096|1.56977>|<point|4.65931340124355|1.56976782643207>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.21018|1.59034>|<point|7.41589495965075|1.59033933059929>>>|<with|color|red|arrow-end|\<less\>|line-width|2ln|arrow-begin|o|<line|<point|7.45704|0.829194>|<point|7.55989548882127|0.808622172245006>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|-3.59556|-4.0471>|<point|-2.99899126868633|-3.9853816642413>|<point|-3.61613639370287|-4.00595316840852>|<point|-3.59556488953565|-3.20366450588702>|<point|-2.99899126868633|-3.1830930017198>|<point|-3.06070578118799|-4.02652467257574>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|-3.06071|-4.00595>|<point|-3.04013427702077|-3.9853816642413>|<point|-1.99098756449266|-2.42194734753274>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|-2.99899|-3.98538>|<point|-3.0|-4.0>|<point|-3.0|-2.4>|<point|-2.0|-2.4>|<point|-2.0|-4.0>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|-2|-4>|<point|-2.0|-1.6>|<point|2.0|-1.6>|<point|2.0|-4.0>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|2|-4>|<point|2.0|-0.8>|<point|3.2|-0.8>|<point|3.2|-4.0>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|3.2|-4>|<point|3.2|0.0>|<point|4.0|0.0>|<point|4.0|-4.0>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|4|-4>|<point|4.0|0.8>|<point|4.2|0.8>|<point|4.2|-4.0>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|4.2|-4>|<point|4.2|1.6>|<point|4.6|1.6>|<point|4.6|-4.0>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|4.6|-4>|<point|4.6|2.4>|<point|7.2|2.4>|<point|7.2|-4.0>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|7.2|-4>|<point|7.2|1.6>|<point|7.4|1.6>|<point|7.4|-4.0>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|7.4|0.8>|<point|7.4|-4.0>|<point|7.6|-4.0>|<point|7.6|0.8>>>|<with|color|none|arrow-end|\<less\>|fill-color|light
  grey|line-width|0.5ln|arrow-begin|o|<cline|<point|7.6|-4>|<point|7.6|0.0>|<point|8.0|0.0>|<point|8.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|-3.6|-4>|<point|-3.6|-3.2>>>|<with|color|blue|dash-style|10|<line|<point|-3|-4>|<point|-3.0|-2.4>>>|<with|color|blue|dash-style|10|<line|<point|-2|-1.6>|<point|-2.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|2|-0.8>|<point|2.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|3.2|0>|<point|3.2|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4|0.8>|<point|4.0|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4.20104|1.54835>|<point|4.2|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|4.6|2.4>|<point|4.6|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|7.2|2.4>|<point|7.2|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|7.4|1.6>|<point|7.4|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|7.6|0.8>|<point|7.6|-4.0>>>|<with|color|blue|dash-style|10|<line|<point|8|0>|<point|8.0|-4.0>>>|<with|dash-style|10|<line|<point|-2|-1.6>|<point|-4.0|-1.6>>>>>|<label|figure
  20.6.234><math|f> apprimated by <math|f<rsub|2>>>

  \;

  \;

  \;

  \;

  <\lemma>
    <label|lemma 20.477.246>Let <math|p\<in\><around*|[|1,\<infty\>|[>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><around*|[|0,\<infty\>|[>>
    be such that <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|x<rsub|i>\<leqslant\>x<rsub|i+1>> then we have\ 

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| and
      ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>><text|
      exists where ><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\<in\><around*|[|0,\<infty\>|]>
    </equation*>

    and\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|<rsub|i>>|)><rsup|<around*|[|p|]>>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|<around*|[|p|]>>=<around*|(|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>|)><rsup|<around*|[|p|]>>
    </equation*>
  </lemma>

  <\proof>
    As <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|0\<leqslant\>x<rsub|i>\<leqslant\>x<rsub|i+1>> it follows from
    [lemma: <reference|lemma 20.505.265>] that
    <math|0\<leqslant\><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\<leqslant\><around*|(|x<rsub|i+1>|)><rsup|<around*|[|p|]>>>
    so that by [theorems: <reference|extended limit increasing / decreasing
    sequence exist>,<reference|extended limit properties>] it follows that\ 

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i><text| exist,
      ><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>><text|
      exist, >0\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\>\<bbb-N\>|}>|)><text|
      and >0\<leqslant\><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>=sup<around*|(|<around*|{|<around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\|i\<in\>\<bbb-N\>|}>|)>
    </equation*>

    Let <math|i\<in\>\<bbb-N\>> then for <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
    we have either:\ 

    <\description>
      <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>>>Then
      <math|<around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\<leqslant\>\<infty\>=\<infty\><rsup|<around*|[|p|]>>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|<around*|[|p|]>>>

      <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<neq\>\<infty\>>>Then
      as <math|x<rsub|i>,sup<around*|(|<around*|{|x<rsub|i>\|i\<in\>\<bbb-N\>|}>|)>\<in\><around*|[|0,\<infty\>|[>>
      and <math|x<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\>\<bbb-N\>|}>|)>>
      we have by [theorem: <reference|exp generalized power properties>]

      <\equation*>
        <around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>=<around*|(|x<rsub|i>|)><rsup|p>\<leqslant\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|p>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|<around*|[|p|]>>
      </equation*>
    </description>

    which proves that <math|\<forall\>i\<in\>\<bbb-N\><text|
    ><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\<leqslant\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|<around*|[|p|]>>>.
    In other words <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|<around*|[|p|]>>>
    is a upper bound of <math|<around*|{|<around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\|i\<in\>\<bbb-N\>|}>>
    from which it follows that

    <\equation>
      <label|eq 20.637.246><below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>=sup<around*|(|<around*|{|<around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\|i\<in\>\<bbb-N\>|}>|)>\<leqslant\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|<around*|[|p|]>>
    </equation>

    For <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>>
    we have the following cases to examine:

    <\description>
      <item*|<math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>=\<infty\>>>Then
      <math|><math|\<infty\>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>><below|\<leqslant\>|<text|[eq:
      <reference|eq 20.637.246>]>><around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|<around*|[|p|]>>\<leqslant\>\<infty\>>
      so that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|<around*|[|p|]>>=\<infty\>
      </equation*>

      <item*|<math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\<neq\>\<infty\>>>Then
      <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|<around*|(|x<rsub|i><rsup|>|)><rsup|<around*|[|p|]>>\<leqslant\>sup<around*|(|<around*|{|<around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\|i\<in\>\<bbb-N\>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\<less\>\<infty\>>
      so that <math|<around*|(|x<rsub|i>|)><rsup|p>,<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|<around*|[|p|]>>\<in\><around*|[|0,1|[>>
      by [theorem: <reference|exp generalized power>]
      <math|x<rsub|i>\<leqslant\><around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|p>|)><rsup|<frac|1|p>>>
      hence <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\>\<bbb-N\>|}>|)>\<leqslant\><around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|p>|)><rsup|<frac|1|p>>\<less\>\<infty\>>.
      Hence using [lemma: <reference|lemma 20.476.246>] it follows that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|p>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|p>
      </equation*>
    </description>

    So in all cases we have\ 

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>|)><rsup|p>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)><rsup|p>
    </equation*>
  </proof>

  \;

  \;

  <\note>
    In contrast with the definition of <math|\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    <math|f\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    can in principle atain the value <math|\<infty\>>.
  </note>

  <\note>
    If <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> then
    <math|f\<in\>\<cal-S\><around*|[|X|]>>,
    <math|f<around*|(|X|)>\<subset\><around*|[|0,\<infty\>|[>> and
    <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    so that <math|<rigid|f\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,\<bbb-R\>|]>>>
    which proves that\ 

    <\equation*>
      \<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-R\>|]>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation*>
  </note>

  \;

  so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>-<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>>|<cell|=>|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|f<rsub|1><rsup|-1><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>|)>|)>|)><rsub|i>-<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|f<rsub|1><rsup|-1><around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsub|1><rsup|-1>|)><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>|)><rsub|i>-<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsub|1><rsup|-1>|)><around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
    <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>p<rsub|j>-<around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>q<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>p<rsub|j>-<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>q<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|p<rsub|j>-q<rsub|j>|)>>>>>
  </eqnarray*>

  hence\ 

  <\equation>
    <label|eq 21.27.273>\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text| we
    have ><around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>-<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>=<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|p<rsub|j>-q<rsub|j>|)>
  </equation>

  \;

  so that\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>-f<rsub|2><around*|(|\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>|)><rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>|)><rsub|i>-<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>|)><rsub|i>>|<cell|=>|<cell|>>|<row|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>|)>-<around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+q<rsub|i>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>|)>-<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+q<rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>|)>-M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+q<rsub|i>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|p<rsub|i>-q<rsub|i>|)>>|<cell|<below|=|<text|[eq:
    <reference|eq 21.27.273>]>>>|<cell|>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>-<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>-f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>>|<cell|>|<cell|>>>>
  </eqnarray*>

  Hence we have\ 

  <\equation>
    <label|eq 21.30.273>f<rsub|2><around*|(|\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>-f<rsub|2><around*|(|\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>=f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>-f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>
  </equation>

  \;

  \;

  \;

  <\lemma>
    <label|lemma 20.613.279>Let <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
    be a family of two sets then we have:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X<rsub|1>>
      <math|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|1,x|]>>=X<rsub|2>>

      <item><math|\<forall\>y\<in\>X<rsub|2>>
      <math|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|2,y|]>>=X<rsub|1>>

      <item><math|\<forall\>x\<in\>X<rsub|1><text| that
      <math|\<varnothing\><rsub|<around*|[|1,x|]>>=\<varnothing\>> and
      <math|\<forall\>y\<in\>X<rsub|2>> we have
      <math|\<varnothing\><rsub|<around*|[|2,y|]>>=\<varnothing\>>>>

      <item><math|\<forall\>x\<in\>X<rsub|1>,>
      <math|\<forall\>B\<subseteq\>X<rsub|1>\<cdot\>X<rsub|2>>
      <math|<around*|(|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>\\B|)><rsub|<around*|[|1,x|]>>=X<rsub|2>\\B<rsub|<around*|[|1,x|]>>>

      <item><math|\<forall\>y\<in\>X<rsub|1>,>
      <math|\<forall\>B\<subseteq\>X<rsub|1>\<cdot\>X<rsub|2>>
      <math|<around*|(|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>\\B|)><rsub|<around*|[|2,y|]>>=X<rsub|1>\\B<rsub|<around*|[|2,y|]>>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>>,
      <math|x\<in\>X<rsub|1>> then <math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsub|<around*|[|1,x|]>>=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsub|<around*|[|1,x|]>>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>>,
      <math|y\<in\>X<rsub|2>> then <math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsub|<around*|[|2,y|]>>=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsub|<around*|[|2,y|]>>>

      <item>Let <math|A<rsub|1>\<subseteq\>X<rsub|1>>,
      <math|A<rsub|2>\<subseteq\>X<rsub|2>> then we have

      <\enumerate>
        <item><math|\<forall\>x\<in\>X<rsub|1><text| we have
        ><around*|(|A<rsub|1>\<times\>A<rsub|2>|)><rsub|<around*|[|1,x|]>>=<choice|<tformat|<table|<row|<cell|A<rsub|2><text|
        if >x\<in\>A<rsub|1>>>|<row|<cell|\<varnothing\><text| if
        >x\<in\>X<rsub|1>\\A<rsub|1>>>>>>>

        <item><math|\<forall\>y\<in\>X<rsub|2><text| we have
        ><around*|(|A<rsub|1>\<times\>A<rsub|2>|)><rsub|<around*|[|2,y|]>>=<choice|<tformat|<table|<row|<cell|A<rsub|1><text|
        if >y\<in\>A<rsub|2>>>|<row|<cell|\<varnothing\><text| if
        >y\<in\>X<rsub|2>\\A<rsub|2>>>>>>>
      </enumerate>

      <item>Let <math|A,B\<subseteq\>X<rsub|1>\<cdot\>X<rsub|2>> and
      <math|x\<in\>X<rsub|1>> then <math|<around*|(|A<big|cap>B|)><rsub|<around*|[|1,x|]>>=A<rsub|<around*|[|1,x|]>><big|cap>A<rsub|<around*|[|1,x|]>>>

      <item>Let <math|A,B\<subseteq\>X<rsub|1>\<cdot\>X<rsub|2>> and
      <math|y\<in\>X<rsub|2>> then <math|<around*|(|A<big|cap>B|)><rsub|<around*|[|2,y|]>>=A<rsub|<around*|[|2,y|]>><big|cap>A<rsub|<around*|[|2,y|]>>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X<rsub|1>>. If <math|y\<in\>X<rsub|2>> then
      <math|<around*|(|x,y|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>> so that
      <math|y\<in\><around*|{|y\<in\>X<rsub|2>\|<around*|(|x,y|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>|}>=<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|1,x|]>>>.
      Hence <math|X<rsub|2>\<subseteq\><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|1,x|]>>>
      and as by definition <math|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|1,x|]>>\<subseteq\>X<rsub|2>>
      it follows that\ 

      <\equation*>
        <around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|1,x|]>>=X<rsub|2>
      </equation*>

      <item>Let <math|y\<in\>X<rsub|2>>. If <math|x\<in\>X<rsub|1>> then
      <math|<around*|(|x,y|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>> so that
      <math|x\<in\><around*|{|x\<in\>X<rsub|2>\|<around*|(|x,y|)>\<in\>X<rsub|1>\<cdot\>X<rsub|2>|}>=<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|2,y|]>>>.
      Hence <math|X<rsub|1>\<subseteq\><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|2,y|]>>>
      and as by definition <math|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|1,y|]>>\<subseteq\>X<rsub|1>>
      it follows that\ 

      <\equation*>
        <around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)><rsub|<around*|[|1,y|]>>=X<rsub|1>
      </equation*>

      <item>Let <math|x\<in\>X<rsub|1>> then
      <math|\<varnothing\><rsub|<around*|[|1,x|]>>=<around*|{|y\<in\>X<rsub|2>\|<around*|(|x,y|)>\<in\>\<varnothing\>|}>=\<varnothing\>>.
      Let <math|y\<in\>X<rsub|2>> then <rigid|<math|\<varnothing\><rsub|<around*|[|2,y|]>>=<around*|{|x\<in\>X<rsub|1>\|<around*|(|x,y|)>\<in\>\<varnothing\>|}>=\<varnothing\>>.>

      <item>Let <math|x\<in\>X<rsub|1>> and
      <math|B\<subseteq\>X<rsub|1>\<cdot\>X<rsub|2>>. Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\><around*|(|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>\\B|)><rsub|<around*|[|1,x|]>>>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>X<rsub|2>\<wedge\><around*|(|x,y|)>\<in\><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>\\B>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|x\<in\>X<rsub|1>>>|<cell|y\<in\>X<rsub|2>\<wedge\><around*|(|x,y|)>\<nin\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>X<rsub|2>\<wedge\>y\<nin\><around*|{|y\<in\>X<rsub|2>\|<around*|(|x,y|)>\<in\>B|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>X<rsub|2>\<wedge\>x\<nin\>B<rsub|<around*|[|1,x|]>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>X<rsub|2>\\B<rsub|<around*|[|1,x|]>>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        <around*|(|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>\\B|)><rsub|<around*|[|1,x|]>>=X<rsub|2>\\B<rsub|<around*|[|1,x|]>>
      </equation*>

      <item>Let <math|y\<in\>X<rsub|2>> and
      <math|B\<subseteq\>X<rsub|1>\<cdot\>X<rsub|2>>. Then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>\\B|)><rsub|<around*|[|2,y|]>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X<rsub|1>\<wedge\><around*|(|x,y|)>\<in\><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>\\B>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|y\<in\>X<rsub|2>>>|<cell|x\<in\>X<rsub|1>\<wedge\><around*|(|x,y|)>\<nin\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X<rsub|1>\<wedge\>x\<nin\><around*|{|x\<in\>X<rsub|1>\|<around*|(|x,y|)>\<in\>B|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X<rsub|1>\<wedge\>x\<nin\>B<rsub|<around*|[|2,y|]>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X<rsub|1>\\B<rsub|<around*|[|2,y|]>>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        <around*|(|<around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>\\B|)><rsub|<around*|[|2,y|]>>=X<rsub|1>\\B<rsub|<around*|[|2,y|]>>
      </equation*>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>>
      and <math|x\<in\>X<rsub|1>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsub|<around*|[|1,x|]>>>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>X<rsub|2>\<wedge\><around*|(|x,y|)>\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>X<rsub|2>\<wedge\>\<exists\>i\<in\>I<text|
        such that ><around*|(|x,y|)>\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        such that >y\<in\><around*|{|y\<in\>X<rsub|2>\|<around*|(|x,y|)>\<in\>A<rsub|i>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        such that >y\<in\><around*|(|A<rsub|i>|)><rsub|<around*|[|1,x|]>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsub|<around*|[|1,x|]>>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        <around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsub|<around*|[|1,x|]>>=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsub|<around*|[|1,x|]>>
      </equation*>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|X<rsub|1>\<cdot\>X<rsub|2>|)>>
      and <math|y\<in\>X<rsub|2>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsub|<around*|[|2,y|]>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X<rsub|1>\<wedge\><around*|(|x,y|)>\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X<rsub|1>\<wedge\>\<exists\>i\<in\>I<text|
        such that ><around*|(|x,y|)>\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        such that >x\<in\><around*|{|x\<in\>X<rsub|1>\|<around*|(|x,y|)>\<in\>A<rsub|i>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I<text|
        such that >c\<in\><around*|(|A<rsub|i>|)><rsub|<around*|[|2,y|]>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsub|<around*|[|2,y|]>>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        <around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><rsub|<around*|[|2,y|]>>=<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>|)><rsub|<around*|[|2,y|]>>
      </equation*>

      <item>Let <math|A<rsub|1>\<subseteq\>X<rsub|1>>,
      <math|A<rsub|2>\<subseteq\>X<rsub|2>> then we have:\ 

      <\enumerate>
        <item>Let <math|x\<in\>X<rsub|1>> then we have either:\ 

        <\description>
          <item*|<math|x\<in\>A<rsub|1>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|y\<in\><around*|(|A<rsub|1>\<cdot\>A<rsub|2>|)><rsub|<around*|[|1,x|]>>>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>X<rsub|2>\<wedge\><around*|(|x,y|)>\<in\>A<rsub|1>\<cdot\>A<rsub|2>>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|x\<in\>A<rsub|1>\<wedge\>A<rsub|2>\<subseteq\>X<rsub|2>>>|<cell|y\<in\>A<rsub|2>>>>>
          </eqnarray*>

          which proves that\ 

          <\equation*>
            <around*|(|A<rsub|1>\<cdot\>A<rsub|2>|)><rsub|<around*|[|1,x|]>>=A<rsub|2>
          </equation*>

          <item*|<math|x\<in\>X<rsub|1>\\A<rsub|1>>>Then if
          <math|y\<in\><around*|(|A<rsub|1>\<cdot\>A<rsub|2>|)><rsub|<around*|[|1,x|]>>>
          we have that <math|<around*|(|x,y|)>\<in\>A<rsub|1>\<cdot\>A<rsub|2>\<Rightarrow\>x\<in\>A<rsub|1>>
          which contradicts with <math|x\<in\>X<rsub|1>\\A<rsub|1>>. Hence we
          must have that\ 

          <\equation*>
            <around*|(|A<rsub|1>\<cdot\>A<rsub|2>|)><rsub|<around*|[|1,x|]>>=\<varnothing\>
          </equation*>
        </description>

        <item>Let <math|y\<in\>X<rsub|2>> then we have either:\ 

        <\description>
          <item*|<math|y\<in\>A<rsub|2>>>Then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|x\<in\><around*|(|A<rsub|1>\<cdot\>A<rsub|2>|)><rsub|<around*|[|2,y|]>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X<rsub|1>\<wedge\><around*|(|x,y|)>\<in\>A<rsub|1>\<cdot\>A<rsub|2>>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|y\<in\>A<rsub|2>\<wedge\>A<rsub|1>\<subseteq\>X<rsub|1>>>|<cell|x\<in\>A<rsub|1>>>>>
          </eqnarray*>

          which proves that\ 

          <\equation*>
            <around*|(|A<rsub|1>\<cdot\>A<rsub|2>|)><rsub|<around*|[|2,y|]>>=A<rsub|1>
          </equation*>

          <item*|<math|y\<in\>X<rsub|2>\\A<rsub|2>>>Then if
          <math|x\<in\><around*|(|A<rsub|1>\<cdot\>A<rsub|2>|)><rsub|<around*|[|2,y|]>>>
          we have that <math|<around*|(|x,y|)>\<in\>A<rsub|1>\<cdot\>A<rsub|2>\<Rightarrow\>y\<in\>A<rsub|2>>
          which contradicts with <math|y\<in\>X<rsub|2>\\A<rsub|2>>. Hence we
          must have that\ 

          <\equation*>
            <around*|(|A<rsub|1>\<cdot\>A<rsub|2>|)><rsub|<around*|[|2,y|]>>=\<varnothing\>
          </equation*>
        </description>
      </enumerate>

      <item>Let <math|x\<in\>X<rsub|1>>, <math|A,B\<subseteq\>X<rsub|1>\<cdot\>X<rsub|2>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\><around*|(|A<big|cap>B|)><rsub|<around*|[|1,x|]>>>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|{|y\<in\>X<rsub|2>\|<around*|(|x,y|)>\<in\>A<big|cap>B|}>>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|x\<in\>X<rsub|1>>>|<cell|<around*|(|x,y|)>\<in\>A<big|cap>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\>A\<wedge\><around*|(|x,y|)>\<in\>B>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|x\<in\>X<rsub|1>>>|<cell|y\<in\><around*|{|y\<in\>X<rsub|2>\|<around*|(|x,y|)>\<in\>A|}>\<wedge\>y\<in\><around*|{|y\<in\>X<rsub|2>\|<around*|(|x,y|)>\<in\>B|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>A<rsub|<around*|[|1,x|]>>\<wedge\>y\<in\>B<rsub|<around*|[|1,x|]>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>A<rsub|<around*|[|1,x|]>><big|cap>B<rsub|<around*|[|1,x|]>>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation*>
        <around*|(|A<big|cap>B|)><rsub|<around*|[|1,x|]>>=A<rsub|<around*|[|1,x|]>><big|cap>B<rsub|<around*|[|1,x|]>>
      </equation*>

      <item>Let <math|y\<in\>X<rsub|2>>, <math|A,B\<subseteq\>X<rsub|1>\<cdot\>X<rsub|2>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|A<big|cap>B|)><rsub|<around*|[|2,y|]>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|x\<in\>X<rsub|1>\|<around*|(|x,y|)>\<in\>A<big|cap>B|}>>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|y\<in\>X<rsub|2>>>|<cell|<around*|(|x,y|)>\<in\>A<big|cap>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\>A\<wedge\><around*|(|x,y|)>\<in\>B>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|y\<in\>X<rsub|2>>>|<cell|x\<in\><around*|{|x\<in\>X<rsub|1>\|<around*|(|x,y|)>\<in\>A|}>\<wedge\>x\<in\><around*|{|x\<in\>X<rsub|1>\|<around*|(|x,y|)>\<in\>B|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A<rsub|<around*|[|2,y|]>>\<wedge\>x\<in\>B<rsub|<around*|[|2,y|]>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A<rsub|<around*|[|2,y|]>><big|cap>B<rsub|<around*|[|2,y|]>>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation*>
        <around*|(|A<big|cap>B|)><rsub|<around*|[|2,y|]>>=A<rsub|<around*|[|2,y|]>><big|cap>B<rsub|<around*|[|2,y|]>>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\proof>
    Let <math|x\<in\>X<rsub|1>> then we have
    <math|\<forall\>y\<in\>X<rsub|2>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||f|\|><rsub|<around*|[|1,x|]>><around*|(|y|)>=<around*|\||f|\|><around*|(|x,y|)>=<around*|\||f<around*|(|x,y|)>|\|>=<around*|\||f<rsub|<around*|[|1,x|]>><around*|(|y|)>|\|>=<around*|\||f<rsub|<around*|[|1,x|]>>|\|><around*|(|y|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|f<rsup|+>|)><rsub|<around*|[|1,x|]>><around*|(|y|)>=f<rsup|+><around*|(|x,y|)>=max<around*|(|f<around*|(|x,y|)>,0|)>=max<around*|(|f<rsub|<around*|[|1,x|]>><around*|(|y|)>,0|)>=<around*|(|f<rsub|<around*|[|1,x|]>>|)><rsup|+><around*|(|y|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|f<rsup|->|)><rsub|<around*|[|1,x|]>><around*|(|y|)>=f<rsup|-><around*|(|x,y|)>=-min<around*|(|f<around*|(|x,y|)>,0|)>=-min<around*|(|f<rsub|<around*|[|1,x|]>><around*|(|y|)>,0|)>=<around*|(|f<rsub|<around*|[|1,x|]>>|)><rsup|-><around*|(|y|)>>|<cell|>>>>
    </eqnarray*>

    so we have\ 

    <\equation>
      <label|eq 20.1012.280>\<forall\>x\<in\>X<rsub|1><text| we have
      ><around*|\||f|\|><rsub|<around*|[|1,x|]>>=<around*|\||f<rsub|<around*|[|1,x|]>>|\|>\<wedge\><around*|(|f<rsup|+>|)><rsub|<around*|[|1,x|]>>=<around*|(|f<rsub|<around*|[|1,x|]>>|)><rsup|+>\<wedge\><around*|(|f<rsup|->|)><rsub|<around*|[|1,x|]>>=<around*|(|f<rsub|<around*|[|1,x|]>>|)><rsup|->
    </equation>

    Likewise if <math|x\<in\>X<rsub|2>> then have
    <math|\<forall\>y\<in\>X<rsub|1>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||f|\|><rsub|<around*|[|2,x|]>><around*|(|y|)>=<around*|\||f|\|><around*|(|y,x|)>=<around*|\||f<around*|(|y,x|)>|\|>=<around*|\||f<rsub|<around*|[|2,y|]>><around*|(|y|)>|\|>=<around*|\||f<rsub|<around*|[|2,x|]>>|\|><around*|(|y|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|f<rsup|+>|)><rsub|<around*|[|2,x|]>><around*|(|y|)>=f<rsup|+><around*|(|y,x|)>=max<around*|(|f<around*|(|y,x|)>,0|)>=max<around*|(|f<rsub|<around*|[|2,x|]>><around*|(|y|)>,0|)>=<around*|(|f<rsub|<around*|[|2,x|]>>|)><rsup|+><around*|(|y|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|f<rsup|->|)><rsub|<around*|[|2,x|]>><around*|(|y|)>=f<rsup|-><around*|(|y,x|)>=-min<around*|(|f<around*|(|y,x|)>,0|)>=-min<around*|(|f<rsub|<around*|[|2,x|]>><around*|(|y|)>,0|)>=<around*|(|f<rsub|<around*|[|2,x|]>>|)><rsup|-><around*|(|y|)>>|<cell|>>>>
    </eqnarray*>

    which proves that\ 

    <\equation>
      <label|eq 20.1013.280><label|eq 20.1012.280>\<forall\>x\<in\>X<rsub|2><text|
      we have ><around*|\||f|\|><rsub|<around*|[|2,x|]>>=<around*|\||f<rsub|<around*|[|2,x|]>>|\|>\<wedge\><around*|(|f<rsup|+>|)><rsub|<around*|[|2,x|]>>=<around*|(|f<rsub|<around*|[|2,x|]>>|)><rsup|+>\<wedge\><around*|(|f<rsup|->|)><rsub|<around*|[|2,x|]>>=<around*|(|f<rsub|<around*|[|2,x|]>>|)><rsup|->
    </equation>

    As <math|f\<in\>\<cal-L\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<subseteq\>\<cal-M\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    it follows from [theorem: <reference|measure integral alternative>] that

    <\equation>
      <label|eq 20.1014.280><around*|\||f|\|>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      and ><big|int><rsup|+><around*|\||f
      |\|>d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>\<less\>\<infty\>
    </equation>

    and by [lemma: <reference|lemma 20.629.280>] that

    <\equation>
      <label|eq 20.1015.280>\<forall\>x\<in\>X<rsub|1><text|
      >f<rsub|<around*|[|1,x|]>>\<in\>\<cal-M\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      and >\<forall\>x\<in\>X<text| >f<rsub|<around*|[|2.x|]>>\<in\>\<cal-M\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    Using then Tonelli's theorem [see theorem: <reference|Tonelli theorem
    (1)>] we have that\ 

    <\equation>
      <label|eq 20.1016.280>I<rsub|1>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      where >I<rsub|1>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >I<rsub|1><around*|(|x|)>=<big|int><rsup|+><around*|\||f|\|><rsub|<around*|[|2,x|]>>d\<mu\><rsub|1>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.1013.280>]>><big|int><rsup|+><around*|\||f<rsub|<around*|[|2,x|]>>|\|>d\<mu\><rsub|1>
    </equation>

    <\equation>
      <label|eq 20.2017.280>I<rsub|2>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      where >I<rsub|2>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >I<rsub|2><around*|(|x|)>=<big|int><rsup|+><around*|\||f|\|><rsub|<around*|[|1,x|]>>d\<mu\><rsub|2>\<equallim\><rsub|<text|[eq:
      <reference|eq 20.1012.280>]>><big|int><rsup|+><around*|\||f<rsub|<around*|[|1,x|]>>|\|>d\<mu\><rsub|2>
    </equation>

    <\equation>
      <label|eq 20.1018.280><big|int><rsup|+>I<rsub|1>d\<mu\><rsub|2>=<big|int><rsup|+>I<rsub|2>d\<mu\><rsub|1>=<big|int><rsup|+><around*|\||f|\|>
      d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)><below|\<less\>|<text|[eq:
      <reference|eq 20.1014.280>]>>\<infty\>
    </equation>

    So <math|I<rsub|1>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<wedge\><big|int><rsup|+>I<rsub|1>d\<mu\><rsub|2>\<less\>\<infty\>>
    and <math|I<rsub|2>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<wedge\><rsup|><big|int><rsup|+>I<rsub|2>d\<mu\><rsub|1>\<less\>\<infty\>>
    which proves that <math|I<rsub|1>\<in\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<wedge\>I<rsub|2>\<in\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>.
    Hence using [theorem: <reference|measure integral properties (2)>] and
    the fact that <math|I<rsub|1>> and <math|I<rsub|2>> are non negatuve we
    have that\ 

    <\equation*>
      N<rsub|1>=<around*|{|x\<in\>X<rsub|1>\|I<rsub|2><around*|(|x|)>=\<infty\>|}>\<in\>\<cal-A\><rsub|1><text|
      and >\<mu\><rsub|1><around*|(|<around*|{|x\<in\>X<rsub|1>\|I<rsub|2><around*|(|x|)>=\<infty\>|}>|)>=0
    </equation*>

    <\equation*>
      N<rsub|2>=<around*|{|x\<in\>X<rsub|2>\|I<rsub|1><around*|(|x|)>=\<infty\>|}>\<in\>\<cal-A\><rsub|2><text|
      and >\<mu\><rsub|2><around*|(|<around*|{|x\<in\>X<rsub|2>\|I<rsub|1><around*|(|x|)>=\<infty\>|}>|)>=0
    </equation*>

    Define now\ 

    <\equation*>
      D<rsub|1>=<around*|{|x\<in\>X<rsub|1>\|f<rsub|<around*|[|1,x|]>>\<nin\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}><text|
      and >D<rsub|2>=<around*|{|x\<in\>X<rsub|2>\|f<rsub|<around*|[|2,x|]>>\<nin\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>
    </equation*>

    Let <math|x\<in\>D<rsub|1>> then, as by [eq: <reference|eq 20.1015.280>]
    <math|f<rsub|<around*|[|1,x|]>>\<in\>\<cal-M\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>,
    it follows from [theorem: <reference|measure integral alternative>] that
    <math|I<rsub|2><around*|(|x|)><below|=|<text|[eq: <reference|eq
    20.2017.280>]>><big|int><rsup|+><around*|\||f<rsub|<around*|[|1,x|]>>|\|>d\<mu\><rsub|2>=\<infty\>>
    so that <math|x\<in\>N<rsub|1>> which proves that
    <math|D<rsub|1>\<subseteq\>N<rsub|1>>. Likewise if
    <math|x\<in\>D<rsub|2>> then, as by [eq: <reference|eq 20.1015.280>]
    <math|f<rsub|<around*|[|2,x|]>>\<in\>\<cal-M\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>,
    it follows from [theorem: <reference|measure integral alternative>] that
    <math|I<rsub|1><around*|(|x|)><below|=|<text|[eq: <reference|eq
    20.2017.280>]>><big|int><rsup|+><around*|\||f<rsub|<around*|[|2,x|]>>|\|>d\<mu\><rsub|1>=\<infty\>>
    so that <math|x\<in\>N<rsub|2>> which proves that
    <math|D<rsub|2>\<subseteq\>N<rsub|2>>. To summarize we have proved that\ 

    <\equation>
      <label|eq 20.1019.280>D<rsub|1>=<around*|{|x\<in\>X<rsub|1>\|f<rsub|<around*|[|1,x|]>>\<nin\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>\<subseteq\>N<rsub|1><text|
      with >N<rsub|1>\<in\>\<cal-A\><rsub|1>\<wedge\>\<mu\><rsub|1><around*|(|N<rsub|1>|)>=0<text|>
    </equation>

    <\equation>
      <label|eq 20.1020.280>D<rsub|2>=<around*|{|x\<in\>X<rsub|2>\|f<rsub|<around*|[|2,x|]>>\<nin\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>\<subseteq\>N<rsub|2><text|
      with >N<rsub|2>\<in\>\<cal-A\><rsub|2>\<wedge\>\<mu\><rsub|2><around*|(|N<rsub|2>|)>=0
    </equation>

    Define now\ 

    \;
  </proof>

  \;

  <\theorem>
    <label|measurable function sum>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space, <math|f,g\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    then <math|f+g\<in\><rigid|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>>
    where <math|f+g> is defined pointwise by\ 

    <\equation*>
      f+g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text| where
      ><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>
    </equation*>

    <\note>
      The condition <math|f,g\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
      is neccesary to ensure that <math|\<forall\>x\<in\>X>
      <math|f<around*|(|x|)>+g<around*|(|x|)>> is well defined and
      <math|0\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>>.
    </note>

    <\note>
      If <math|f,g\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,\<bbb-R\>|]>>
      then <math|f,g\<in\>\<cal-M\><around*|[|X,\<cal-A\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
      and <math|f<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|[>>,
      <math|<rigid|g<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|[>>\<Rightarrow\><around*|(|f+g|)><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|[>>
      so that <math|f+g\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>,\<bbb-R\>|]>>
    </note>
  </theorem>

  <\proof>
    Let <math|x\<in\>\<bbb-R\>>. If <math|t\<in\><around*|{|f+g\<less\>x|}>>
    then <math|f<around*|(|t|)>+g<around*|(|t|)>\<less\>x>. As
    <math|0\<leqslant\>f<around*|(|t|)>+g<around*|(|t|)>\<less\>x\<in\>\<bbb-R\>>
    <math|f<around*|(|t|)>,g<around*|(|t|)>\<in\>\<bbb-R\>> so that
    <math|f<around*|(|t|)>\<less\>x-g<around*|(|t|)>>. Using the density of
    <math|\<bbb-Q\>> in <math|\<bbb-R\>> [see theorem: <reference|complex
    densitiy theorem>] there exists a <math|q\<in\>\<bbb-Q\>> such that
    <math|f<around*|(|t|)>\<less\>q\<less\>x-g<around*|(|t|)>> hence

    <\equation*>
      f<around*|(|t|)>\<less\>q\<wedge\>g<around*|(|t|)>\<less\>x-q\<Rightarrow\>t\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
    </equation*>

    which proves that\ 

    <\equation>
      <label|eq 20.422.227><around*|{|f+g\<less\>x|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
    </equation>

    If <math|t\<in\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>>
    then there exists a <math|q\<in\>\<bbb-Q\>> such that
    <math|<rigid|t\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>>>
    hence <math|f<around*|(|t|)>\<less\>q\<wedge\>g<around*|(|t|)>\<less\>x-q\<Rightarrow\>f<around*|(|t|)>+g<around*|(|t|)>\<less\>x-q+q=x>
    or <math|t\<in\><around*|{|f+g\<less\>x|}>>. So
    <math|<rigid|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>\<subseteq\><around*|{|f+g\<less\>x|}>>>
    which combined with [eq: <reference|eq 20.422.227>] results in\ 

    <\equation*>
      <around*|{|f+g\<less\>x|}>=<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
    </equation*>

    Let <math|q\<in\>\<bbb-Q\>> then as <math|f,g> is
    <math|\<cal-A\>>-measurable <rigid|<math|<around*|{|f\<less\>q|}>,<around*|{|g\<less\>x-q|}>\<in\>\<cal-A\>\<Rightarrow\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>\<in\>\<cal-A\>>,>
    using [theorem: <reference|measure countable union is in sigma algebra>]
    and the fact that <math|\<bbb-Q\>> is countable [see theorem:
    <reference|complex embedding>] it follows that
    <rigid|<math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>\<in\>\<cal-A\>>>
    hence we have\ 

    <\equation*>
      <around*|{|f+g\<less\>x|}>\<in\>\<cal-A\>
    </equation*>

    As <math|x\<in\>\<bbb-R\>> was choosen arbitrary it follows from the
    above that <math|f+g> is <math|\<cal-A\>>-measurable.
  </proof>

  The sum of real valued measurable functions is also defined for real valued
  functions

  TODO extend this to if <math|\<forall\>x\<in\>X>
  <math|f<around*|(|x|)>+g<around*|(|x|)>> is defined\ 

  <\theorem>
    <label|measurable function sum (finite)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|f,g\<in\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-R\>|]>> then
    <math|f+g\<in\>\<cal-M\><around*|[|X,\<cal-A\>,\<bbb-R\>|]>> where
    <math|f+g> is defined pointwise by\ 

    <\equation*>
      f+g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text| where
      ><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x\<in\>\<bbb-R\>>. If <math|t\<in\><around*|{|f+g\<less\>x|}>>
    then <math|f<around*|(|t|)>+g<around*|(|t|)>\<less\>x>. As
    <math|f<around*|(|t|)>,g<around*|(|t|)>\<in\>\<bbb-R\>> we have
    <math|f<around*|(|t|)>\<less\>x-g<around*|(|t|)>>. Using the density of
    <math|\<bbb-Q\>> in <math|\<bbb-R\>> [see theorem: <reference|complex
    densitiy theorem>] there exists a <math|q\<in\>\<bbb-Q\>> such that
    <math|f<around*|(|t|)>\<less\>q\<less\>x-g<around*|(|t|)>> hence

    <\equation*>
      f<around*|(|t|)>\<less\>q\<wedge\>g<around*|(|t|)>\<less\>x-q\<Rightarrow\>t\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
    </equation*>

    which proves that\ 

    <\equation>
      <label|eq 20.421.227><around*|{|f+g\<less\>x|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
    </equation>

    If <math|t\<in\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>>
    then there exists a <math|q\<in\>\<bbb-Q\>> such that
    <math|t<rigid|\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>>>
    hence <math|f<around*|(|t|)>\<less\>q\<wedge\>g<around*|(|t|)>\<less\>x-q\<Rightarrow\>f<around*|(|t|)>+g<around*|(|t|)>\<less\>x-q+q=x>
    or <math|t\<in\><around*|{|f+g\<less\>x|}>>. So
    <math|<rigid|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>\<subseteq\><around*|{|f+g\<less\>x|}>>>
    which combined with [eq: <reference|eq 20.421.227>] results in\ 

    <\equation*>
      <around*|{|f+g\<less\>x|}>=<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
    </equation*>

    Let <math|q\<in\>\<bbb-Q\>> then as <math|f,g> is
    <math|\<cal-A\>>-measurable <rigid|<math|<around*|{|f\<less\>q|}>,<around*|{|g\<less\>x-q|}>\<in\>\<cal-A\>\<Rightarrow\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>\<in\>\<cal-A\>>>,
    using [theorem: <reference|measure countable union is in sigma algebra>]
    and the fact that <math|\<bbb-Q\>> is countable [see theorem:
    <reference|complex embedding>] it follows that
    <rigid|<math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>\<in\>\<cal-A\>>>
    hence we have\ 

    <\equation*>
      <around*|{|f+g\<less\>x|}>\<in\>\<cal-A\>
    </equation*>

    As <math|x\<in\>\<bbb-R\>> was choosen arbitrary it follows from the
    above that <math|f+g> is <math|\<cal-A\>>-measurable.
  </proof>

  \;

  <\theorem>
    <label|Fubini's Theorem><dueto|Fubini's Theorem>Let
    <math|<around*|\<langle\>|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>|\<rangle\>>>
    be measurable spaces where <math|\<mu\><rsub|1>,\<mu\><rsub|2>> are
    <math|\<sigma\>>-finite measures and <math|f\<in\>\<cal-L\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    then\ 

    <\enumerate>
      <item><math|D<rsub|1>=<around*|{|x\<in\>X<rsub|1>\|f<around*|(|x,.|)>\<nin\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>\<in\>\<cal-A\><rsub|1><text|
      and <math|\<mu\><rsub|2><around*|(|D<rsub|1>|)>=0>>>\ 

      <item><math|D<rsub|2>=<around*|{|x\<in\>X<rsub|2>\|f<around*|(|.,x|)>\<nin\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>\<in\>\<cal-A\><rsub|2><text|
      and >\<mu\><rsub|1><around*|(|D<rsub|1>|)>=0>

      <item>We have for the function\ 

      <\equation*>
        I<rsub|f,1>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
        defined by >I<rsub|f,1><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<big|int>f<around*|(|.,x|)>d\<mu\><rsub|1><text|
        if >x\<in\>X<rsub|2>\\D<rsub|1>>>|<row|<cell|0<text| if
        >x\<in\>D<rsub|1>>>>>>
      </equation*>

      that

      <\equation*>
        I<rsub|f,1>\<in\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,\<bbb-R\>|]>
      </equation*>

      and\ 

      <\equation*>
        <big|int>f d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>=<big|int>I<rsub|f,1>d\<mu\><rsub|2>
      </equation*>

      <item>We have for the function\ 

      <\equation*>
        I<rsub|f,2>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
        defined by >I<rsub|f,2><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<big|int>f<around*|(|x,.|)>d\<mu\><rsub|2><text|
        if >x\<in\>X<rsub|1>\\D<rsub|2>>>|<row|<cell|0<text| if
        >x\<in\>D<rsub|1>>>>>>
      </equation*>

      that

      <\equation*>
        I<rsub|f,2>\<in\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,\<bbb-R\>|]>
      </equation*>

      and\ 

      <\equation*>
        <big|int>f d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>=<big|int>I<rsub|f,2>d\<mu\><rsub|1>
      </equation*>
    </enumerate>

    <\note>
      Using the convention [convention: <reference|integral convention>] the
      theorem can be restated in a slightly less exaxt form as:\ 

      <\equation*>
        f<around*|(|x,.|)>\<in\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
        >\<mu\><rsub|1><text|-a.e.>
      </equation*>

      <\equation*>
        f<around*|(|.,x|)>\<in\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
        >\<mu\><rsub|2><text|-a.e.>
      </equation*>

      <\equation*>
        <big|int>f d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>=<big|int><around*|(|<big|int>f<around*|(|x,.|)>d\<mu\><rsub|2>|)>\<mu\><rsub|1><around*|(|d
        x|)>=<big|int><around*|(|<big|int>f<around*|(|x,y|)>\<mu\><rsub|2><around*|(|d
        y|)>|)>\<mu\><rsub|1><around*|(|d x|)>
      </equation*>

      <\equation*>
        <big|int>f d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>=<big|int><around*|(|<big|int>f<around*|(|.,x|)>d\<mu\><rsub|1>|)>\<mu\><rsub|2><around*|(|d
        x|)>=<big|int><around*|(|<big|int>f<around*|(|x,y|)>\<mu\><rsub|1><around*|(|d
        x|)>|)>\<mu\><rsub|2><around*|(|d y|)>
      </equation*>
    </note>
  </theorem>

  <\proof>
    Let <math|x\<in\>X<rsub|1>> then we have for <math|y\<in\>X<rsub|2>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|f<around*|(|x,.|)>|)><rsup|+><around*|(|y|)>=max<around*|(|f<around*|(|x,.|)><around*|(|y|)>,0|)>=max<around*|(|f<around*|(|x,y|)>,0|)>=f<rsup|+><around*|(|x,y|)>=<around*|(|f<rsup|+>|)><around*|(|x,.|)><around*|(|y|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|f<around*|(|x,.|)>|)><rsup|-><around*|(|y|)>=-min<around*|(|f<around*|(|x,.|)><around*|(|y|)>,0|)>=-min<around*|(|f<around*|(|x,y|)>,0|)>=f<rsup|-><around*|(|x,y|)>=<around*|(|f<rsup|->|)><around*|(|x,.|)><around*|(|y|)>>|<cell|>>>>
    </eqnarray*>

    Likewise for <math|x\<in\>X<rsub|2>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|f<around*|(|.,x|)>|)><rsup|+><around*|(|y|)>=max<around*|(|f<around*|(|.,x|)><around*|(|y|)>,0|)>=max<around*|(|f<around*|(|y,x|)>,0|)>=f<rsup|+><around*|(|y,x|)>=<around*|(|f<rsup|+>|)><around*|(|.,x|)><around*|(|y|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|f<around*|(|.,x|)>|)><rsup|-><around*|(|y|)>=-min<around*|(|f<around*|(|.,x|)><around*|(|y|)>,0|)>=-min<around*|(|f<around*|(|y,x|)>,0|)>=f<rsup|-><around*|(|y,x|)>=<around*|(|f<rsup|->|)><around*|(|.,x|)><around*|(|y|)>>|<cell|>>>>
    </eqnarray*>

    which proves that\ 

    <\equation>
      <label|eq 20.1012.280>\<forall\>x\<in\>X<rsub|1><text| we have
      ><around*|(|f<around*|(|x,.|)>|)><rsup|+>=<around*|(|f<rsup|+>|)><rsup|><around*|(|x,.|)><text|
      and ><around*|(|f<around*|(|x,.|)>|)><rsup|->=<around*|(|f<rsup|->|)><around*|(|x,.|)>
    </equation>

    <\equation>
      <label|eq 20.1013.280>\<forall\>x\<in\>X<rsub|2><text| we have
      ><around*|(|f<around*|(|.,x|)>|)><rsup|+>=<around*|(|f<rsup|+>|)><rsup|><around*|(|.,x|)><text|
      and ><around*|(|f<around*|(|.,x|)>|)><rsup|->=<around*|(|f<rsup|->|)><around*|(|.,x|)>
    </equation>

    As <math|f\<in\>\<cal-L\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    we have by definition of the integral [see definition: <reference|measure
    integral> that\ 

    <\equation>
      <label|eq 20.1014.280>f<rsup|+>,f<rsup|->\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      and ><big|int><rsup|+>f<rsup|+>d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>\<less\>\<infty\>\<wedge\><big|int><rsup|+>f<rsup|->d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>\<less\>\<infty\>
    </equation>

    Using [lemma: <reference|lemma 20.629.280>] on the above it follows that\ 

    <\equation>
      \<forall\>x\<in\>X<rsub|1><text| ><around*|(|f<rsup|+>|)><around*|(|x,.|)>,<around*|(|f<rsup|->|)><around*|(|x,.|)>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|>
    </equation>

    <\equation>
      \<forall\>x\<in\>X<rsub|2><text| ><around*|(|f<rsup|+>|)><around*|(|.,x|)>,<around*|(|f<rsup|->|)><around*|(|.,x|)>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    As <math|f<rsup|+>,f<rsup|->\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    [see eq: <reference|eq 20.1014.280>] it follows from Tonelli's theorem
    [see theorem: <reference|Tonelli theorem (1)>] that

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|I<rsub|f<rsup|+>,1>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|R|\<wide-bar\>>|]><text|
      where >I<rsub|f<rsup|+>,1>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\><text|>|\<wide-bar\>><text|
      by >I<rsub|f<rsup|+>,1><around*|(|x|)>=<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|.,x|)>d\<mu\><rsub|1>>|<cell|<eq-number><label|eq
      20.1017.280>>>|<row|<cell|>|<cell|I<rsub|f<rsup|->,1>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|R|\<wide-bar\>>|]><text|
      where >I<rsub|f<rsup|->,1>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\><text|>|\<wide-bar\>><text|
      by >I<rsub|f<rsup|->,1><around*|(|x|)>=<big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|.,x|)>d\<mu\><rsub|1>>|<cell|<eq-number><label|eq
      20.1018.280>>>|<row|<cell|>|<cell|I<rsub|f<rsup|+>,2>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      where >I<rsub|f<rsup|+>,2>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >I<rsub|f<rsup|+>,2><around*|(|x|)>=<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|x,.|)>d\<mu\><rsub|2>>|<cell|<eq-number><label|eq
      20.1019.280>>>|<row|<cell|>|<cell|I<rsub|f<rsup|->,2>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      where >I<rsub|f<rsup|->,2>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >I<rsub|f<rsup|->,2><around*|(|x|)>=<big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|x,.|)>d\<mu\><rsub|2>>|<cell|<eq-number><text|><label|eq
      20.1020.280>>>|<row|<cell|>|<cell|<big|int><rsup|+>I<rsub|f<rsup|+>,1>d\<mu\><rsub|2>=<big|int><rsup|+>I<rsub|f<rsup|+>,2>d\<mu\><rsub|1>=<big|int>f<rsup|+>d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>\<less\>\<infty\>>|<cell|<eq-number><label|eq
      20.1021.280>>>|<row|<cell|>|<cell|<big|int><rsup|+>I<rsub|f<rsup|->,1>d\<mu\><rsub|2>=<big|int><rsup|+>I<rsub|f<rsup|->,2>d\<mu\><rsub|1>=<big|int>f<rsup|->d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>\<less\>\<infty\>>|<cell|<eq-number><label|eq
      20.1022.280>>>>>
    </eqnarray*>

    Using [theorem: <reference|measure integral extension>] on the above we
    have that <math|I<rsub|f<rsup|+>,1>,I<rsub|f<rsup|->,1>\<in\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    and <math|<rigid|I<rsub|f<rsup|+>,2>,I<rsub|f<rsup|->,2>\<in\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>>
    so that by [theorem: <reference|non negative integral finite integral>]
    it follows that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|N<rsub|f<rsup|+>,1>=<around*|{|x\<in\>X<rsub|2>\|I<rsub|f<rsup|+>,1><around*|(|x|)>=\<infty\>|}>\<wedge\>\<mu\><rsub|2><around*|(|N<rsub|f<rsup|+>,1>|)>=0>|<cell|<eq-number><label|eq
      20.1023.280>>>|<row|<cell|>|<cell|N<rsub|f<rsup|->,1>=<around*|{|x\<in\>X<rsub|2>\|I<rsub|f<rsup|->,1><around*|(|x|)>=\<infty\>|}>\<wedge\>\<mu\><rsub|2><around*|(|N<rsub|f<rsup|->,1>|)>=0>|<cell|<eq-number><label|eq
      20.1024.280>>>|<row|<cell|>|<cell|N<rsub|f<rsup|+>,2>=<around*|{|x\<in\>X<rsub|1>\|I<rsub|f<rsup|+>,2><around*|(|x|)>=\<infty\>|}>\<wedge\>\<mu\><rsub|1><around*|(|N<rsub|f<rsup|+>,2>|)>=0>|<cell|<eq-number><label|eq
      20.1025.280>>>|<row|<cell|>|<cell|N<rsub|f<rsup|->,2>=<around*|{|x\<in\>X<rsub|1>\|I<rsub|f<rsup|->,2><around*|(|x|)>=\<infty\>|}>\<wedge\>\<mu\><rsub|1><around*|(|N<rsub|f<rsup|->,2>|)>=0>|<cell|<eq-number><label|eq
      20.1026.280>>>>>
    </eqnarray*>

    Further as <math|f\<in\>\<cal-L\><around*|{|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|}>\<Rightarrow\>\<cal-M\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    we have by [lemma: <reference|lemma 20.629.280>] that\ 

    <\equation>
      <label|eq 20.1027.280>\<forall\>x\<in\>X<rsub|1><text|
      >f<around*|(|x,.|)>\<in\>\<cal-M\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      and >\<forall\>x\<in\>X<rsub|2><text|
      >f<around*|(|.,x|)>\<in\>\<cal-M\><around*|[|X<rsub|1>\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    Define

    <\equation*>
      D<rsub|1>=<around*|{|x\<in\>X<rsub|1>\|f<around*|(|x,.|)>\<nin\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>
    </equation*>

    <\equation*>
      D<rsub|2>=<around*|{|x\<in\>X<rsub|2>\|f<around*|(|.,x|)>\<nin\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>
    </equation*>

    For <math|D<rsub|1>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|x\<in\>D<rsub|1>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|f<around*|(|x,.|)>\<nin\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|f<around*|(|x,.|)>\<in\>\<cal-M\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      by [eq: <reference|eq 20.1027.280>]>>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsup|+><around*|(|f<around*|(|x,.|)>|)><rsup|+>d\<mu\><rsub|2>=\<infty\><text|
      or ><big|int><rsup|+><around*|(|f<around*|(|x,.|)>|)><rsup|->d\<mu\><rsub|2>=\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1012.280>]>>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|x,.|)>d\<mu\><rsub|2>=\<infty\><text|
      or ><big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|x,.|)>d\<mu\><rsub|2>=\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1019.280>, <reference|eq
      20.1020.280>]>>>|<cell|>>|<row|<cell|>|<cell|I<rsub|f<rsup|+>,2><around*|(|x|)>=\<infty\><text|
      or >I<rsub|f<rsup|->,2><around*|(|x|)>=\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1025.280>,<reference|eq
      20.1026.280>]>>>|<cell|>>|<row|<cell|>|<cell|x\<in\>N<rsub|f<rsup|+>,2><big|cup>N<rsub|f<rsup|->,2>>|<cell|>>>>
    </eqnarray*>

    So we have that\ 

    <\equation>
      <label|eq 20.1028.280>D<rsub|1>\<in\>\<cal-A\><rsub|1><text| and
      >\<mu\><rsub|1><around*|(|D<rsub|1>|)>=0
    </equation>

    For <math|D<rsub|2>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|x\<in\>D<rsub|2>>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|f<around*|(|.,x|)>\<nin\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|f<around*|(|x,.|)>\<in\>\<cal-M\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      by [eq: <reference|eq 20.1027.280>]>>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsup|+><around*|(|f<around*|(|.,x|)>|)><rsup|+>d\<mu\><rsub|1>=\<infty\><text|
      or ><big|int><rsup|+><around*|(|f<around*|(|.,x|)>|)><rsup|->d\<mu\><rsub|1>=\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1013.280>]>>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|.,x|)>d\<mu\><rsub|1>=\<infty\><text|
      or ><big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|.,x|)>d\<mu\><rsub|1>=\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1017.280>, <reference|eq
      20.1018.280>]>>>|<cell|>>|<row|<cell|>|<cell|I<rsub|f<rsup|+>,1><around*|(|x|)>=\<infty\><text|
      or >I<rsub|f<rsup|->,1><around*|(|x|)>=\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1023.280>,<reference|eq
      20.1024.280>]>>>|<cell|>>|<row|<cell|>|<cell|x\<in\>N<rsub|f<rsup|+>,1><big|cup>N<rsub|f<rsup|->,1>>|<cell|>>>>
    </eqnarray*>

    So we have that\ 

    <\equation>
      <label|eq 20.1029.280>D<rsub|2>\<in\>\<cal-A\><rsub|2><text| and
      >\<mu\><rsub|2><around*|(|D<rsub|2>|)>=0
    </equation>

    Define now\ 

    <\equation*>
      I<rsub|f,1>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >I<rsub|f,1><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<big|int>f<around*|(|.,x|)>d\<mu\><rsub|1><text|
      if >x\<in\>X<rsub|2>\\D<rsub|1>>>|<row|<cell|0<text| if
      >x\<in\>D<rsub|1>>>>>>
    </equation*>

    <\equation*>
      I<rsub|f,2>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >I<rsub|f,2<rsub|>><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<big|int><around*|(|x,.|)>d\<mu\><rsub|2><text|
      if >x\<in\>X<rsub|1>\\D<rsub|2>>>|<row|<cell|0<text| if
      >x\<in\>D<rsub|2>>>>>>
    </equation*>

    As by [eqs: <reference|eq 20.1017.280>,<reference|eq 20.1018.280>]
    <math|I<rsub|f<rsup|+>,1>,I<rsub|f<rsup|->,1>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    it follows from\ 
  </proof>

  \;

  <\theorem>
    <label|Fubini's theorem><dueto|Fubini's Theorem>Let
    <math|<around*|\<langle\>|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>|\<rangle\>>>
    be measurable spaces whee <math|\<mu\><rsub|1>,\<mu\><rsub|2>> is
    <math|\<sigma\>>-finite and <math|f\<in\>\<cal-L\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|]>>
    then we have \ 

    <\equation*>
      D<rsub|1>=<around*|{|x\<in\>X<rsub|1>\|f<around*|(|x,.|)>\<in\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>|]>|}>\<wedge\>\<mu\><rsub|1><around*|(|X<rsub|1>\\D<rsub|1>|)>=0
    </equation*>

    <\equation*>
      D<rsub|2>=<around*|{|x\<in\>X<rsub|2>\|f<around*|(|.,x|)>\<in\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>|]>|}>\<wedge\>\<mu\><rsub|2><around*|(|X<rsub|2>\\D<rsub|2>|)>=0
    </equation*>

    <\equation*>
      I<rsub|f,1>\<in\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>|]><text|
      where >I<rsub|f,1>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>
      <text|is defined by >I<rsub|f,1><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<big|int>f<around*|(|x,.|)>d\<mu\><rsub|2><text|
      if <math|x\<in\>D<rsub|1>>>>>|<row|<cell|0<text| if
      >x\<in\>X<rsub|1>\\D<rsub|1>>>>>>
    </equation*>

    <\equation*>
      I<rsub|f,2>\<in\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>|]><text|
      where >I<rsub|f,2>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>
      <text|is defined by >I<rsub|f,2><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<big|int>f<around*|(|.,x|)>d\<mu\><rsub|1><text|
      if <math|x\<in\>D<rsub|2>>>>>|<row|<cell|0<text| if
      >x\<in\>X<rsub|2>\\D<rsub|2>>>>>>
    </equation*>

    <\equation*>
      <big|int>I<rsub|f,1>d\<mu\><rsub|1>=<big|int>I<rsub|f,2>d\<mu\><rsub|2>=<big|int>f
      d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|f\<in\>\<cal-L\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|]>>
    we have by definition [theorem: <reference|measure integral>] that\ 

    <\equation>
      <label|eq 20.1010.281>f\<in\>\<cal-M\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<wedge\>f<rsup|+>,f<rsup|->\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    <\equation>
      <label|eq 20.1011.281><big|int><rsup|+>f<rsup|+>d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>\<less\>\<infty\><text|
      and ><big|int><rsup|+>f<rsup|->d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>\<less\>\<infty\>
    </equation>

    <\equation>
      <big|int>f d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>=<big|int>f
      <rsup|+>d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>-<big|int>f<rsup|->
      d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)>
    </equation>

    Using Tonelli's Theorem [theorem: <reference|Tonelli theorem (1)>] on
    [eq: <reference|eq 20.1010.281>] proves that\ 

    <\equation>
      \<forall\>x\<in\>X<rsub|1><text| ><around*|(|f<rsup|+>|)><around*|(|x,.|)>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      and >\<forall\>x\<in\>X<rsub|2><text|
      ><around*|(|f<rsup|->|)><around*|(|.,x|)>\<in\>\<cal-M\><rsup|+><around*|(|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|)>
    </equation>

    <\equation>
      <label|eq 20.1014.281>I<rsup|+><rsub|f,1>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      where >I<rsup|+><rsub|f,1>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      is defined by >I<rsub|f,1><rsup|+><around*|(|x|)>=<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|x,.|)>d\<mu\><rsub|2>
    </equation>

    <\equation>
      <label|eq 20.1015.281>I<rsup|+><rsub|f,2>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      where >I<rsup|+><rsub|f,2>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      is defined by >I<rsub|f,2><rsup|+><around*|(|x|)>=<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|.,x|)>d\<mu\><rsub|1>
    </equation>

    <\equation>
      <label|eq 20.1016.281>I<rsup|-><rsub|f,1>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      where >I<rsup|-><rsub|f,1>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      is defined by >I<rsub|f,1><rsup|-><around*|(|x|)>=<big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|x,.|)>d\<mu\><rsub|2>
    </equation>

    <\equation>
      <label|eq 20.1017.281>I<rsup|-><rsub|f,2>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      where >I<rsup|-><rsub|f,2>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      is defined by >I<rsub|f,2><rsup|-><around*|(|x|)>=<big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|.,x|)>d\<mu\><rsub|1>
    </equation>

    <\equation>
      <label|eq 20.1018.281><big|int><rsup|+>I<rsup|+><rsub|f,1>d\<mu\><rsub|1>=<big|int><rsup|+>I<rsup|+><rsub|f,2>d\<mu\><rsub|1>=<big|int><rsup|+>f<rsup|+>d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)><below|\<less\>|<text|[eq:
      <reference|eq 20.1011.281>]>>\<infty\>
    </equation>

    <\equation*>
      \;
    </equation*>

    <\equation>
      <label|eq 20.1019.281><big|int><rsup|+>I<rsup|-><rsub|f,1>d\<mu\><rsub|1>=<big|int><rsup|->I<rsup|-><rsub|f,2>d\<mu\><rsub|1>=<big|int><rsup|->f<rsup|->d<around*|(|\<mu\><rsub|1>\<otimes\>\<mu\><rsub|2>|)><below|\<less\>|<text|[eq:
      <reference|eq 20.1011.281>]>>\<infty\>
    </equation>

    Using [theorem: <reference|non negative integral finite integral>] on
    [eqs: <reference|eq 20.1014.281>, <reference|eq 20.1015.281>,
    <reference|eq 20.1016.281>, <reference|eq 20.1017.281>] and [eqs:
    <reference|eq 20.1018.281>, <reference|eq 20.1019.281>] results in\ 

    <\equation>
      <label|eq 20.1020.281>N<rsup|+><rsub|f,1>=<around*|{|x\<in\>X<rsub|1>\|I<rsup|+><rsub|f,1><around*|(|x|)>\<neq\>\<infty\>|}>\<in\>\<cal-A\><rsub|1>\<wedge\>\<mu\><around*|(|X<rsub|1>\\N<rsup|+><rsub|f,1>|)>=0
    </equation>

    <\equation>
      <label|eq 20.1021.281>N<rsup|+><rsub|f,2>=<around*|{|x\<in\>X<rsub|2>\|I<rsup|+><rsub|f,2><around*|(|x|)>\<neq\>\<infty\>|}>\<in\>\<cal-A\><rsub|2>\<wedge\>\<mu\><around*|(|X<rsub|2>\\N<rsub|f,1><rsup|+>|)>=0
    </equation>

    <\equation>
      <label|eq 20.1022.281>N<rsup|-><rsub|f,1>=<around*|{|x\<in\>X<rsub|1>\|I<rsup|-><rsub|f,1><around*|(|x|)>\<neq\>\<infty\>|}>\<in\>\<cal-A\><rsub|1>\<wedge\>\<mu\><around*|(|X<rsub|1>\\N<rsub|f,1><rsup|+>|)>=0
    </equation>

    <\equation>
      <label|eq 20.1023.281>N<rsup|-><rsub|f,2>=<around*|{|x\<in\>X<rsub|2>\|I<rsup|-><rsub|f,2><around*|(|x|)>\<neq\>\<infty\>|}>\<in\>\<cal-A\><rsub|2>\<wedge\>\<mu\><around*|(|X<rsub|2>\\N<rsub|f,2><rsup|->|)>=0
    </equation>

    As <math|f\<in\>\<cal-M\><around*|[|X<rsub|1>\<cdot\>X<rsub|2>,\<cal-A\><rsub|1>\<otimes\>\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    [see eq: <reference|eq 20.1010.281>] it follows from [lemma:
    <reference|lemma 20.629.280>] that\ 

    <\equation>
      <label|eq 20.1024.281>\<forall\>x\<in\>X<rsub|1><text|
      >f<around*|(|x,.|)>\<in\>\<cal-M\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      and >\<forall\>x\<in\>X<rsub|2><text|
      >f<around*|(|.,x|)>\<in\>\<cal-M\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    Now we have the following equivalences

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|x\<in\>D<rsub|1>=<around*|{|x\<in\>X<rsub|1>\|f<around*|(|x,.|)>\<in\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|<math|f<around*|(|x,.|)>\<in\>\<cal-M\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      by [eq: <reference|eq 20.1024.281>]>>>>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsup|+><around*|(|f<around*|(|x,.|)>|)><rsup|+>d\<mu\><rsub|2>\<less\>\<infty\>\<wedge\><big|int><rsup|+><around*|(|f<around*|(|x,.|)>|)><rsup|->d\<mu\><rsub|2>\<less\>\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[lemma:
      <reference|lemma 20.635.281>]>>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|x,.|)>d\<mu\><rsub|2>\<less\>\<infty\>\<wedge\><big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|x,.|)>d\<mu\><rsub|2>\<less\>\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1014.281>, <reference|eq
      20.1016.281>]>>>|<cell|>>|<row|<cell|>|<cell|I<rsup|+><rsub|f,1><around*|(|x|)>\<less\>\<infty\>\<wedge\>I<rsup|-><rsub|f,1><around*|(|x|)>\<less\>\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1020.281>, <reference|eq
      20.1022.281>]>>>|<cell|>>|<row|<cell|>|<cell|x\<in\>N<rsup|+><rsub|f,1><big|cap>N<rsup|-><rsub|f,1>>|<cell|>>>>
    </eqnarray*>

    and

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|x\<in\>D<rsub|2>=<around*|{|x\<in\>X<rsub|2>\|f<around*|(|.,x|)>\<in\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|<math|f<around*|(|.,x|)>\<in\>\<cal-M\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]><text|
      by [eq: <reference|eq 20.1024.281>]>>>>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsup|+><around*|(|f<around*|(|.,x|)>|)><rsup|+>d\<mu\><rsub|1>\<less\>\<infty\>\<wedge\><big|int><rsup|+><around*|(|f<around*|(|.,x|)>|)><rsup|->d\<mu\><rsub|1>\<less\>\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[lemma:
      <reference|lemma 20.635.281>]>>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|.,x|)>d\<mu\><rsub|1>\<less\>\<infty\>\<wedge\><big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|.,x|)>d\<mu\><rsub|1>\<less\>\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1015.281>, <reference|eq
      20.1017.281>]>>>|<cell|>>|<row|<cell|>|<cell|I<rsup|+><rsub|f,2><around*|(|x|)>\<less\>\<infty\>\<wedge\>I<rsup|-><rsub|f,2><around*|(|x|)>\<less\>\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|\<Updownarrow\>|<text|[eqs:
      <reference|eq 20.1021.281>, <reference|eq
      20.1023.281>]>>>|<cell|>>|<row|<cell|>|<cell|x\<in\>N<rsup|+><rsub|f,2><big|cap>N<rsup|-><rsub|f,2>>|<cell|>>>>
    </eqnarray*>

    Using the above if follows that\ 

    <\equation>
      <label|eq 20.1025.281>D<rsub|1>=N<rsup|+><rsub|f,1><big|cap>N<rsup|-><rsub|f,1><text|
      and >D<rsub|2>=N<rsup|+><rsub|f,2><big|cap>N<rsup|-><rsub|f,2>
    </equation>

    Now <math|><math|X<rsub|1>\\<around*|(|N<rsup|+><rsub|f,1><big|cap>N<rsup|-><rsub|f,1>|)>\<in\>\<cal-A\><rsub|1>>,
    <math|X<rsub|2>\\<around*|(|N<rsup|+><rsub|f,2><big|cap>N<rsup|-><rsub|f,2>|)>\<in\>\<cal-A\><rsub|2>>
    and\ 

    <\equation*>
      \<mu\><rsub|1><around*|(|X<rsub|1>\\<around*|(|N<rsup|+><rsub|f,1><big|cap>N<rsup|-><rsub|f,1>|)>|)>=\<mu\><rsub|1><around*|(|<around*|(|X<rsub|1>\\N<rsup|+><rsub|f,1>|)><big|cup><around*|(|X<rsub|1>\\N<rsup|-><rsub|f,1>|)>|)>\<leqslant\>\<mu\><rsub|1><around*|(|X<rsub|1>\\N<rsup|+><rsub|f,1>|)>+\<mu\><rsub|1><around*|(|X<rsub|1>\\N<rsup|-><rsub|f,1>|)>=0<text|
      and>
    </equation*>

    <\equation*>
      \<mu\><rsub|2><around*|(|X<rsub|2>\\<around*|(|N<rsup|+><rsub|f,2><big|cap>N<rsup|-><rsub|f,2>|)>|)>=\<mu\><rsub|2><around*|(|<around*|(|X<rsub|2>\\N<rsup|+><rsub|f,2>|)><big|cup><around*|(|X<rsub|2>\\N<rsup|-><rsub|f,2>|)>|)>\<leqslant\>\<mu\><rsub|2><around*|(|X<rsub|2>\\N<rsup|+><rsub|f,2>|)>+\<mu\><rsub|2><around*|(|X<rsub|2>\\N<rsup|-><rsub|f,2>|)>=0
    </equation*>

    which combined with [eq: <reference|eq 20.1025.281>] proves that\ 

    <\equation>
      <label|eq 20.1026.281>D<rsub|1>=<around*|{|x\<in\>X<rsub|1>\|f<around*|(|x,.|)>\<in\>\<cal-L\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,\<mu\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>\<in\>\<cal-A\><rsub|1><text|
      and >\<mu\><rsub|1><around*|(|X<rsub|1>\\D<rsub|1>|)>=0
    </equation>

    <\equation>
      <label|eq 20.1027.281>D<rsub|2>=<around*|{|x\<in\>X<rsub|2>\|f<around*|(|.,x|)>\<in\>\<cal-L\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,\<mu\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>|}>\<in\>\<cal-A\><rsub|2><text|
      and >\<mu\><rsub|2><around*|(|X<rsub|2>\\D<rsub|2>|)>=0
    </equation>

    The above allows us to define\ 

    <\equation>
      <label|eq 20.1028.281>I<rsub|f,1>:X<rsub|1>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >I<rsub|f,1><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<big|int>f<around*|(|x,.|)>d\<mu\><rsub|2><text|
      if >x\<in\>D<rsub|1>>>|<row|<cell|0>>>>>
    </equation>

    <\equation>
      <label|eq 20.1029.281>I<rsub|f,2>:X<rsub|2>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><text|
      by >I<rsub|f,2><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<big|int>f<around*|(|.,x|)>d\<mu\><rsub|1><text|
      if >x\<in\>D<rsub|2>>>|<row|<cell|0>>>>>
    </equation>

    As by [eqs: <reference|eq 20.1014.281>, <reference|eq 20.1016.281>] and
    [eqs: <reference|eq 20.1015.281>, <reference|eq 20.1017.281>]
    <math|I<rsup|+><rsub|f,1>>, <math|I<rsup|-><rsub|f,1>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    and <rigid|<math|I<rsup|+><rsub|f,2>>,
    <math|I<rsup|-><rsub|f,2>\<in\>\<cal-M\><rsup|+><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>>
    it follows from [theorem: <reference|measurable function restriction
    (1)>] and [eqs: <reference|eq 20.1026.281>,<reference|eq 20.1027.281>]
    that

    <\equation>
      <label|eq 20.1030.281><around*|(|I<rsup|+><rsub|f,1>|)><rsub|\|D<rsub|1>>,<around*|(|I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>\<in\>\<cal-M\><rsup|+><around*|[|D<rsub|1>,<around*|(|\<cal-A\><rsub|1>|)><rsub|\|D<rsub|1>>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<wedge\><around*|(|I<rsup|+><rsub|f,2>|)><rsub|\|D<rsub|2>>,<around*|(|I<rsup|-><rsub|f,2>|)><rsub|\|D<rsub|2>>\<in\>\<cal-M\><rsup|+><around*|[|D<rsub|2>,<around*|(|\<cal-A\><rsub|2>|)><rsub|\|D<rsub|2>>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    Further we have <math|\<forall\>x\<in\>D<rsub|1>\<equallim\><rsub|<text|[eq:
    <reference|eq 20.1025.281>]>>N<rsup|+><rsub|f,1><big|cap>N<rsup|-><rsub|f,1>>
    so that\ 

    <\equation*>
      <around*|(|I<rsup|+><rsub|f,1>|)><rsub|\|D<rsub|1>><around*|(|x|)>=I<rsup|+><rsub|f,1><around*|(|x|)>\<less\>\<infty\>\<wedge\><around*|(|I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>><around*|(|x|)>=I<rsup|-><rsub|f,1><around*|(|x|)>\<less\>\<infty\>
    </equation*>

    proving that <math|<around*|(|I<rsup|+><rsub|f,1>|)><rsub|\|D<rsub|1>>-<around*|(|I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>>
    is well defined. This together with [eq: <reference|eq 20.1030.281>]
    allows us to use [theorem: <reference|measurable function properties
    (1)>] from which it follows that\ 

    <\equation>
      <label|eq 20.1031.281><around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>=<around*|(|I<rsup|+><rsub|f,1>|)><rsub|\|D<rsub|1>>-<around*|(|I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>\<in\>\<cal-M\><around*|[|D<rsub|1><rsub|1><rsub|1>,<around*|(|\<cal-A\><rsub|1>|)><rsub|\|D<rsub|1>>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    Likewise we have <math|\<forall\>x\<in\>D<rsub|2>\<equallim\><rsub|<text|[eq:
    <reference|eq 20.1025.281>]>>N<rsup|+><rsub|f,2><big|cap>N<rsup|-><rsub|f,2>>
    so that\ 

    <\equation*>
      <around*|(|I<rsup|+><rsub|f,2>|)><rsub|\|D<rsub|1>><around*|(|x|)>=I<rsup|+><rsub|f,2><around*|(|x|)>\<less\>\<infty\>\<wedge\><around*|(|I<rsup|-><rsub|f,2>|)><rsub|\|D<rsub|2>><around*|(|x|)>=I<rsup|-><rsub|f,2><around*|(|x|)>\<less\>\<infty\>
    </equation*>

    proving that <math|<around*|(|I<rsup|+><rsub|f,2>|)><rsub|\|D<rsub|2>>-<around*|(|I<rsup|-><rsub|f,2>|)><rsub|\|D<rsub|2>>>
    is well defined. This together with [eq: <reference|eq 20.1030.281>]
    allows us to use [theorem: <reference|measurable function properties
    (1)>] from which it follows that\ 

    <\equation>
      <label|eq 20.1032.281><around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>=<around*|(|I<rsup|+><rsub|f,1>|)><rsub|\|D<rsub|1>>-<around*|(|I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>\<in\>\<cal-M\><around*|[|D<rsub|2>,<around*|(|\<cal-A\><rsub|2>|)><rsub|<around*|\||D<rsub|2>|\|>>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    Using now [theorem: <reference|measurable function extension>] on [eqs:
    <reference|eq 20.1031.281>,<reference|eq 20.1032.281>] proves that\ 

    <\equation>
      <label|eq 20.1033.281><around*|(|<around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>|)><rsub|D<rsub|1>\<uparrow\>X<rsub|1>>\<in\>\<cal-M\><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<wedge\><around*|(|<around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|2>>|)><rsub|D<rsub|2>\<uparrow\>X<rsub|2>>\<in\>\<cal-M\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    Let <math|x\<in\>X<rsub|1>> then we have either:\ 

    <\description>
      <item*|<math|x\<in\>D<rsub|1>>><math|>Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>|)><rsub|D<rsub|1>\<uparrow\>X<rsub|1>><around*|(|x|)>>|<cell|=>|<cell|<around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|I<rsup|+><rsub|f,1><around*|(|x|)>-I<rsup|-><rsub|f,1><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eqs:
        <reference|eq 20.1014.281>, <reference|eq
        20.1016.281>]>>>|<cell|<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|x,.|)>d\<mu\><rsub|2>-<big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|x,.|)>d\<mu\><rsub|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 20.635.281>]>>>|<cell|<big|int><rsup|+><around*|(|f<around*|(|x,.|)>|)><rsup|+>d\<mu\><rsub|2>-<big|int><rsup|+><around*|(|f<around*|(|x,.|)>|)><rsup|->d\<mu\><rsub|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<in\>D<rsub|1>\<wedge\>definition
        <big|int>>>|<cell|<big|int>f<around*|(|x,.|)>d\<mu\><rsub|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.1028.281>]>>>|<cell|I<rsub|f,1><around*|(|x|)>>>>>
      </eqnarray*>

      <item*|<math|x\<in\>X<rsub|1>\\D<rsub|1>>>Then
      <math|<around*|(|<around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>|)><rsub|D<rsub|1>\<uparrow\>X<rsub|1>><around*|(|x|)>=0\<equallim\><rsub|<text|[eq:
      <reference|eq 20.1028.281>]>>I<rsub|f,1><around*|(|x|)>>
    </description>

    Further if \ <math|x\<in\>X<rsub|2>> then we have either:\ 

    <\description>
      <item*|<math|x\<in\>D<rsub|2>>><math|>Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|I<rsup|+><rsub|f,2>-I<rsup|-><rsub|f,2>|)><rsub|\|D<rsub|2>>|)><rsub|D<rsub|2>\<uparrow\>X<rsub|2>><around*|(|x|)>>|<cell|=>|<cell|<around*|(|I<rsup|+><rsub|f,2>-I<rsup|-><rsub|f,2>|)><rsub|\|D<rsub|2>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><around*|(|x|)>>|<row|<cell|>|<cell|=>|<cell|I<rsup|+><rsub|f,1><around*|(|x|)>-I<rsup|-><rsub|f,1><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eqs:
        <reference|eq 20.1015.281>, <reference|eq
        20.1017.281>]>>>|<cell|<big|int><rsup|+><around*|(|f<rsup|+>|)><around*|(|.,x|)>d\<mu\><rsub|1>-<big|int><rsup|+><around*|(|f<rsup|->|)><around*|(|.,x|)>d\<mu\><rsub|1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 20.635.281>]>>>|<cell|<big|int><rsup|+><around*|(|f<around*|(|.,x|)>|)><rsup|+>d\<mu\><rsub|1>-<big|int><rsup|+><around*|(|f<around*|(|.,x|)>|)><rsup|->d\<mu\><rsub|1>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<in\>D<rsub|2>\<wedge\>definition
        <big|int>>>|<cell|<big|int>f<around*|(|.,x|)>d\<mu\><rsub|1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 20.1029.281>]>>>|<cell|I<rsub|f,2><around*|(|x|)>>>>>
      </eqnarray*>

      <item*|<math|x\<in\>X<rsub|2>\\D<rsub|2>>>Then
      <math|<around*|(|<around*|(|I<rsup|+><rsub|f,2>-I<rsup|-><rsub|f,2>|)><rsub|\|D<rsub|2>>|)><rsub|D<rsub|2>\<uparrow\>X<rsub|2>><around*|(|x|)>=0\<equallim\><rsub|<text|[eq:
      <reference|eq 20.1029.281>]>>I<rsub|f,2><around*|(|x|)>>
    </description>

    From the above it follows that\ 

    <\equation>
      <label|eq 20.1034.281>I<rsub|f,1>=<around*|(|<around*|(|I<rsup|+><rsub|f,1>-I<rsup|-><rsub|f,1>|)><rsub|\|D<rsub|1>>|)><rsub|D<rsub|1>\<uparrow\>X<rsub|1>><text|
      and >I<rsub|f,2>=<around*|(|<around*|(|I<rsup|+><rsub|f,2>-I<rsup|-><rsub|f,2>|)><rsub|\|D<rsub|1>>|)><rsub|D<rsub|1>\<uparrow\>X<rsub|1>>
    </equation>

    Which combined with [eq: <reference|eq 20.1033.281>] proves that\ 

    <\equation>
      <label|eq 20.1035.281>I<rsub|f,1>\<in\>\<cal-M\><rsub|><around*|[|X<rsub|1>,\<cal-A\><rsub|1>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<wedge\>I<rsub|f,2>\<in\>\<cal-M\><around*|[|X<rsub|2>,\<cal-A\><rsub|2>,<wide|\<bbb-R\>|\<wide-bar\>>|]>
    </equation>

    <\equation*>
      \;
    </equation*>

    \;
  </proof>

  \;

  Applying the above theorem on the cases of linear isomorphisms between
  <math|\<bbb-R\>> and <math|\<bbb-R\>> or between <math|\<bbb-R\><rsup|n>>
  and <math|\<bbb-R\><rsup|n>> gives.

  <\theorem>
    <label|measurability of image of a measurable set by a isomorphism>We
    have\ 

    <\enumerate>
      <item>If <math|T:\<bbb-R\>\<rightarrow\>\<bbb-R\>> is a linear
      isomorphism then <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>
      we have that <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>

      <item>Let <math|n\<in\>\<bbb-N\>> and
      <math|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> a linear
      isomorphism then <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
      we have that <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using [corollary: <reference|continuity homemorphism between K>]
      it follows that <math|T> is a homeomorphism. Hence by [theorem:
      <reference|measurability of image of a measurable set by a
      homeomorphism>] we have <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>
      that <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>.

      <item>Using [corollary: <reference|continuity homemorphism between
      powers of R>] it follows that <math|T> is a homeomorphism. Hence by
      [theorem: <reference|measurability of image of a measurable set by a
      homeomorphism>] we have <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
      that <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>.
    </enumerate>
  </proof>

  We see now how the Borel measures <math|\<lambda\>> and
  <math|\<lambda\><rsup|n>> behaves under a linear transformation. First we
  need a little lemma.

  <\theorem>
    <label|measure Borel measure of T(A)>Let
    <math|T:\<bbb-R\>\<rightarrow\>\<bbb-R\>> be a linear isomorphism then we
    have <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>> that

    <\equation*>
      \<lambda\><around*|(|T<around*|(|A|)>|)>=\<lambda\><around*|(|T<around*|(|<around*|[|0,1|[>|)>|)>\<cdot\>\<lambda\><around*|(|A|)>
    </equation*>

    <\note>
      We use the previous theorem [theorem: <reference|measurability of image
      of a measurable set by a isomorphism>] to ensure that
      <math|T<around*|(|<around*|[|0,1|[>|)>>,
      <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>> so that
      <math|\<lambda\><around*|(|T<around*|(|A|)>|)>>,
      <math|\<lambda\><around*|(|T<around*|(|<around*|[|0,1|[>|)>|)>> is well
      defined.
    </note>
  </theorem>

  <\proof>
    First we prove that\ 

    <\equation*>
      \<mu\>:\<cal-B\><around*|[|\<bbb-R\>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      defined by >\<mu\><around*|(|A|)>=\<lambda\><around*|(|T<around*|(|A|)>|)><text|>
    </equation*>

    is a translation invariant Radon measure. First\ 

    <\equation>
      <label|eq 21.1079.291>\<mu\><around*|(|\<varnothing\>|)>=\<lambda\>*<around*|(|T<around*|(|\<varnothing\>|)>|)>=\<lambda\><around*|(|\<varnothing\>|)>=0
    </equation>

    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\>|]>>
    be pairwise disjoint. Given <math|i,j\<in\>\<bbb-N\>> with
    <math|i\<neq\>j> and assume that <math|<rigid|T<around*|(|A<rsub|i>|)><big|cap>T<around*|(|A<rsub|j>|)>\<neq\>\<varnothing\>>>,
    then there exist a <math|x\<in\>T<around*|(|A<rsub|i>|)><big|cap>T<around*|(|A<rsub|j>|)>>,
    so there exist <math|a\<in\>A<rsub|i>> and <math|b\<in\>A<rsub|j>> such
    that <math|T<around*|(|a|)>=x=T<around*|(|b|)>>, as <math|T> is a
    bijection it follows that <math|a=b> so that
    <math|a\<in\>A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>> a contradiction,
    hence we must have that <math|<rigid|T<around*|(|A<rsub|i>|)><big|cap>T<around*|(|A<rsub|j>|)>=\<varnothing\>>>.
    Hence we have that\ 

    <\equation*>
      <around*|{|T<around*|(|A<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\>><below|\<subseteq\>|<text|
      [theorem: <reference|measurability of image of a measurable set by a
      isomorphism>]>>\<cal-B\><around*|[|\<bbb-R\>|]><text| is pairwise
      disjoint>
    </equation*>

    So we have\ 

    <\equation*>
      \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<lambda\><around*|(|T<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|family image and preimage>]>>\<lambda\>*<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>T<around*|(|A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><around*|(|T<around*|(|A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>

    which together with [eq: <reference|eq 21.1079.291>] proves that\ 

    <\equation*>
      \<mu\><text| is a measure on >\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation*>

    As <math|T:\<bbb-R\>\<rightarrow\>\<bbb-R\>> is a linear isomorphism it
    follows from [theorem: <reference|continuity homemorphism between K>]
    <math|T> is a homeomorphism. Let <math|x\<in\>\<bbb-R\>> then as
    <math|\<lambda\>> is locally finite [see theorem: <reference|Borel
    measure on R and R^n are locally finite>] there exist a open set <math|V>
    such that <math|T<around*|(|x|)>\<in\>V> and
    <math|\<lambda\><around*|(|V|)>\<less\>\<infty\>>, take
    <math|U=T<rsup|-1><around*|(|V|)>> then <math|U> is open [as <math|T> is
    continuous] and <math|x\<in\>U>, further
    <math|\<mu\><around*|(|U|)>=\<lambda\><around*|(|T<around*|(|U|)>|)>=\<lambda\><around*|(|T<around*|(|T<rsup|-1><around*|(|V|)>|)>|)>\<equallim\><rsub|<text|[theorem:
    <reference|function preimage of image>]>>\<lambda\><around*|(|V|)>\<less\>\<infty\>>.
    In other words given <math|x\<in\>\<bbb-R\>> we found a open set <math|U>
    with <math|x\<in\>U> and <math|\<mu\><around*|(|U|)>\<less\>\<infty\>>
    which proves by definition that <math|\<mu\>> is locally finite. Applying
    then [theorem: <reference|measurable locally finiteness>] it follows that
    <math|\<mu\>> is also compact finite so that by [theorem:
    <reference|measure Radon condition>] which proves by [definition:
    <reference|Radon measure>] that\ 

    <\equation*>
      \<mu\><text| is a Radon measure>
    </equation*>

    Next let <math|x\<in\>\<bbb-R\>> and <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>
    then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\>T<around*|(|A+x|)>>|<cell|\<Leftrightarrow\>>|<cell|y=T<around*|(|a+x|)><text|
      where >a\<in\>A>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|T<text|
      is linear>>>|<cell|y=T<around*|(|a|)>+T<around*|(|x|)><text| where
      >a\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y=b+T<around*|(|x|)>
      where \ b\<in\>T<around*|(|A|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>T<around*|(|A|)>+T<around*|(|x|)>>>>>
    </eqnarray*>

    which proves that <math|T<around*|(|A+x|)>=T<around*|(|A|)>+T<around*|(|x|)>>.
    Hence we have

    <\equation*>
      \<mu\><around*|(|A+x|)>=\<lambda\><around*|(|T<around*|(|A+x|)>|)>=\<lambda\><around*|(|T<around*|(|A|)>+T<around*|(|x|)>|)>\<equallim\><rsub|\<lambda\><text|
      is translation invariant>>\<lambda\><around*|(|T<around*|(|A|)>|)>=\<mu\><around*|(|A|)>
    </equation*>

    which proves that\ 

    <\equation*>
      \<lambda\><text| is translation invariant>
    </equation*>

    Finally using [theorem: <reference|measure Radon and Borel measure on R>]
    we have that

    <\equation*>
      \<lambda\><around*|(|T<around*|(|A|)>|)>=\<mu\><around*|(|A|)>=\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\><around*|(|A|)>=\<mu\><around*|(|T<around*|(|<around*|[|0,1|[>|)>|)>\<cdot\>\<lambda\><around*|(|A|)>
    </equation*>

    which proves that\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><text| we have
      >\<lambda\><around*|(|T<around*|(|A|)>|)>=\<mu\><around*|(|T<around*|(|<around*|[|0,1|[>|)>|)>\<cdot\>\<lambda\><around*|(|A|)>
    </equation*>
  </proof>

  In as similar fashion we can extend the previous theorem to
  <math|\<lambda\><rsup|n>>.

  <\theorem>
    <label|measure Borel measure of T(A)(1)>Let <math|n\<in\>\<bbb-N\>>,
    <math|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> be a linear
    isomorphism then we have <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    that

    <\equation*>
      \<lambda\><rsup|n><around*|(|T<around*|(|A|)>|)>=\<lambda\><rsup|n><around*|(|T<around*|(|<around*|[|0,1<rsup|n>|[>|)>|)>\<cdot\>\<lambda\><rsup|n><around*|(|A|)>
    </equation*>

    <\note>
      We use the previous [theorem: <reference|measurability of image of a
      measurable set by a isomorphism>] to ensure that
      <math|T<around*|(|<around*|[|0,1|[>|)>>,
      <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
      so that <math|\<lambda\><around*|(|T<around*|(|A|)>|)>>,
      <math|\<lambda\><around*|(|T<around*|(|<around*|[|0,1|[>|)>|)>> is well
      defined.
    </note>
  </theorem>

  <\proof>
    First we prove that\ 

    <\equation*>
      \<mu\>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      defined by >\<mu\><around*|(|A|)>=\<lambda\><around*|(|T<around*|(|A|)>|)><text|>
    </equation*>

    is a translation invariant Radon measure. First\ 

    <\equation>
      <label|eq 21.1080.291>\<mu\><around*|(|\<varnothing\>|)>=\<lambda\>*<around*|(|T<around*|(|\<varnothing\>|)>|)>=\<lambda\><around*|(|\<varnothing\>|)>=0
    </equation>

    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    be pairwise disjoint. Given <math|i,j\<in\>\<bbb-N\>> with
    <math|i\<neq\>j> and assume that <math|<rigid|T<around*|(|A<rsub|i>|)><big|cap>T<around*|(|A<rsub|j>|)>\<neq\>\<varnothing\>>>,
    then there exist a <math|x\<in\>T<around*|(|A<rsub|i>|)><big|cap>T<around*|(|A<rsub|j>|)>>,
    so there exist <math|a\<in\>A<rsub|i>> and <math|b\<in\>A<rsub|j>> such
    that <math|T<around*|(|a|)>=x=T<around*|(|b|)>>, as <math|T> is a
    bijection it follows that <math|a=b> so that
    <math|a\<in\>A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>> a contradiction,
    hence we must have that <math|<rigid|T<around*|(|A<rsub|i>|)><big|cap>T<around*|(|A<rsub|j>|)>=\<varnothing\>>>.
    Hence we have that\ 

    <\equation*>
      <around*|{|T<around*|(|A<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\>><below|\<subseteq\>|<text|
      [theorem: <reference|measurability of image of a measurable set by a
      isomorphism>]>>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]><text| is
      pairwise disjoint>
    </equation*>

    So we have\ 

    <\equation*>
      \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<lambda\><around*|(|T<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|family image and preimage>]>>\<lambda\>*<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>T<around*|(|A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><around*|(|T<around*|(|A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>

    which together with [eq: <reference|eq 21.1079.291>] proves that\ 

    <\equation*>
      \<mu\><text| is a measure on >\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation*>

    As <math|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> is a linear
    isomorphism it follows from [theorem: <reference|continuity homemorphism
    between K>] <math|T> is a homeomorphism. Let
    <math|x\<in\>\<bbb-R\><rsup|n>> then as <math|\<lambda\><rsup|n>> is
    locally finite [see theorem: <reference|Borel measure on R and R^n are
    locally finite>] there exist a open set <math|V> such that
    <math|T<around*|(|x|)>\<in\>V> and <math|\<lambda\><around*|(|V|)>\<less\>\<infty\>>,
    take <math|U=T<rsup|-1><around*|(|V|)>> then <math|U> is open [as
    <math|T> is continuous] and <math|x\<in\>U>, further
    <math|\<mu\><around*|(|U|)>=\<lambda\><rsup|n><around*|(|T<around*|(|U|)>|)>=\<lambda\><rsup|n><around*|(|T<around*|(|T<rsup|-1><around*|(|V|)>|)>|)>\<equallim\><rsub|<text|[theorem:
    <reference|function preimage of image>]>>\<lambda\><rsup|n><around*|(|V|)>\<less\>\<infty\>>.
    In other words given <math|x\<in\>\<bbb-R\><rsup|n>> we found a open set
    <math|U> with <math|x\<in\>U> and <math|\<mu\><around*|(|U|)>\<less\>\<infty\>>
    which proves by definition that <math|\<mu\>> is locally finite. Applying
    then [theorem: <reference|measurable locally finiteness>] it follows that
    <math|\<mu\>> is also compact finite so that by [theorem:
    <reference|measure Radon condition>] which proves by [definition:
    <reference|Radon measure>] that\ 

    <\equation*>
      \<mu\><text| is a Radon measure>
    </equation*>

    Next let <math|x\<in\>\<bbb-R\><rsup|n>> and
    <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\>T<around*|(|A+x|)>>|<cell|\<Leftrightarrow\>>|<cell|y=T<around*|(|a+x|)><text|
      where >a\<in\>A>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|T<text|
      is linear>>>|<cell|y=T<around*|(|a|)>+T<around*|(|x|)><text| where
      >a\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y=b+T<around*|(|x|)>
      where \ b\<in\>T<around*|(|A|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>T<around*|(|A|)>+T<around*|(|x|)>>>>>
    </eqnarray*>

    which proves that <math|T<around*|(|A+x|)>=T<around*|(|A|)>+T<around*|(|x|)>>.
    Hence we have

    <\equation*>
      \<mu\><around*|(|A+x|)>=\<lambda\><rsup|n><around*|(|T<around*|(|A+x|)>|)>=\<lambda\><rsup|n><around*|(|T<around*|(|A|)>+T<around*|(|x|)>|)>\<equallim\><rsub|\<lambda\><text|
      is translation invariant>>\<lambda\><rsup|n><around*|(|T<around*|(|A|)>|)>=\<mu\><around*|(|A|)>
    </equation*>

    which proves that\ 

    <\equation*>
      \<lambda\><rsup|n><text| is translation invariant>
    </equation*>

    Finally using [theorem: <reference|measure Radon and Borel measure on
    R^n>] we have that

    <\equation*>
      \<lambda\><rsup|n><around*|(|T<around*|(|A|)>|)>=\<mu\><around*|(|A|)>=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<lambda\><rsup|n><around*|(|A|)>=\<mu\><around*|(|T<around*|(|<around*|[|0,1|[>|)><rsup|n>|)>\<cdot\>\<lambda\><rsup|n><around*|(|A|)>
    </equation*>

    which proves that\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]><text| we have
      >\<lambda\><rsup|n><around*|(|T<around*|(|A|)>|)>=\<mu\><around*|(|T<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>\<cdot\>\<lambda\><rsup|n><around*|(|A|)>
    </equation*>
  </proof>

  \;

  \;

  <\lemma>
    <label|lemma 21.578.291>Let <math|n\<in\>\<bbb-N\>>,
    <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> the canonical basis
    in <math|\<bbb-R\><rsup|n>> [see example: <reference|basis F^n>],
    <math|<rigid|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>> a
    linear isomorphism such that <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|\<cal-M\><around*|(|T;E,E|)><rsub|i,j>=\<delta\><rsub|i,j>\<cdot\>M<rsub|i,i>>
    where <math|0\<leqslant\>M<rsub|i,i>> then we have\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]><text| we have
      >\<lambda\><rsup|n><around*|(|T<around*|(|A|)>|)>=<around*|\||det<around*|(|T|)>|\|>\<cdot\>\<lambda\><rsup|n><around*|(|A|)>
    </equation*>
  </lemma>

  <\proof>
    Using the previous [theorem: <reference|measure Borel measure of T(A)
    (1)>] we have that\ 

    <\equation>
      <label|eq 21.1081.291>\<lambda\><rsup|n><around*|(|T<around*|(|A|)>|)>=\<lambda\><rsup|n><around*|(|T<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>\<cdot\>\<lambda\><rsup|n><around*|(|A|)>
    </equation>

    As <math|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> is a linear
    isomorphism we have\ 

    <\equation>
      <label|eq 21.1082.291>0<below|\<neq\>|<text|[theorem:
      <reference|determinant det(L) properties>]>>det<around*|(|L|)>\<equallim\><rsub|<text|[theoremL
      <reference|determinant of matrix and linear
      transformation>]>>det<around*|(|\<cal-M\><around*|(|T;E,E|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|matrix determinant of a diagonal
      matrix>]>><big|prod><rsub|i=1><rsup|n>M<rsub|i,i>
    </equation>

    From the above it follows that\ 

    <\equation>
      <label|eq 21.1083.291>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >0\<less\>M<rsub|i,i>
    </equation>

    Define\ 

    <\equation*>
      M\<in\>\<bbb-R\><rsup|n><text| by >M=<around*|(|M<rsub|1,1>,\<ldots\>,M<rsub|n,n>|)><text|
      in other words >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we
      have >M<rsub|i>=M<rsub|i,i>
    </equation*>

    Using the relation between a linear transformation and its matrix we have\ 

    <\equation>
      <label|eq 21.1084.291>\<forall\>x\<in\>\<bbb-R\><rsup|n><text| we have
      >T<around*|(|x|)>=\<equallim\><rsub|<text|[example: <reference|matrix
      linear map application (1)>]>><big|sum><rsub|j=1><rsup|n>\<cal-M\><around*|(|T;E,E|)>=<big|sum><rsub|j=1><rsup|n>\<delta\><rsub|j,i>\<cdot\>M<rsub|i,i>\<cdot\>x<rsub|j>=M<rsub|i,i>\<cdot\>x<rsub|i>
    </equation>

    Now we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\>T<around*|(|<around*|[|0,1|[><rsup|n>|)>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>x\<in\><around*|[|0,1|[><rsup|n><text|
      such that >y=T<around*|(|x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>x\<in\>\<bbb-R\><rsup|n><text|
      such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|0\<leqslant\>x<rsub|i>\<less\>1<text| and
      >y=T<around*|(|x|)>>>>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|<text|[eq:
      <reference|eq 21.1084.291>]>>>|<cell|\<exists\>x\<in\>\<bbb-R\><rsup|n><text|
      such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|0\<leqslant\>x<rsub|i>\<less\>1<text| and
      >y<rsub|i>=M<rsub|i,i>\<cdot\>x<rsub|i>>>>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|0\<neq\>M<rsub|i,i>>>|<cell|<text|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|0\<leqslant\><frac|y<rsub|i>|M<rsub|i,i>>\<less\>1>>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|0\<less\>M<rsub|i,i>>>|<cell|<text|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|0\<leqslant\>y<rsub|i>\<less\>M<rsub|i,i>>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|[|0,M|[>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation>
      <label|eq 21.1085.291>T<around*|(|<around*|[|0,1|[><rsup|n>|)>=<around*|[|0,M|[>
    </equation>

    Hence we have\ 

    <\equation*>
      \<lambda\><rsup|n><around*|(|t<around*|(|<around*|[|0,1<rsup|n>|[>|)>|)>=\<lambda\><rsup|n><around*|(|<around*|[|0,M|[>|)>=vol<rsup|n><around*|(|<around*|[|0,M|[>|)>=<big|prod><rsub|i=1><rsup|n><around*|(|M<rsub|i>-0|)>=<big|prod><rsub|i=1><rsup|n>M<rsub|i,i>\<equallim\><rsub|<text|[eq:
      <reference|eq 21.1082.291>]>>det<around*|(|L|)>
    </equation*>

    Substituring this result in [eq: <reference|eq 21.1081.291>] it follows
    that\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]><text| we have
      >\<lambda\><rsup|n><around*|(|T<around*|(|A|)>|)>=det<around*|(|L|)>\<cdot\>\<lambda\><rsup|n><around*|(|A|)>
    </equation*>
  </proof>

  \;

  s by [theorem: <reference|spectral unitary operator properties>]
  <math|U<rsup|-1>> is a isomorphism we have by [theorem: <reference|Lebesgue
  borel measures are Radon measures>,<reference|measure create a new measure
  based on a measure and a linear isomorphism>] we have that\ 

  <\equation>
    <label|eq 21.1087.291>\<lambda\><rsup|n><around*|[|U<rsup|-1>|]>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
    defined by >\<lambda\><rsup|n><around*|[|U<rsup|-1>|]><around*|(|A|)>=\<lambda\><rsup|n><around*|(|<around*|(|U<rsup|-1>|)><around*|(|A|)>|)><text|
    is a Radon measure>
  </equation>

  and by [theorem: <reference|measure Borel measure of T(A) (1)>]\ 

  \;

  <\lemma>
    <label|lemma 21.579.291>Let <math|n\<in\>\<bbb-N\>>,
    <math|U:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> be a unitary
    transformation [using the canonical inner product defined in [example:
    <reference|inner product on R^n>]] then we have that\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><text| we have
      >\<lambda\><rsup|n><around*|(|<around*|(|U<rsup|-1>|)><around*|(|A|)>|)>=\<lambda\><rsup|n><around*|(|A|)>
    </equation*>

    <\note>
      <label|note 21.580.291>Using [theorem: <reference|spectral unitary
      operator properties>] <math|U<rsup|-1>> is a linear isomorphism, hence
      by [theorem: <reference|continuity homemorphism between K>]
      <math|U<rsup|-1>> is a homeomorphism so that by [theorem:
      <reference|measurability of image of a measurable set by a
      homeomorphism>] <math|<rigid|U<rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>>
      from which it follows that <math|\<lambda\><around*|(|U<rsup|-1><around*|(|A|)>|)>>
      is well defined.
    </note>
  </lemma>

  <\proof>
    First note that by [theorem: <reference|normed norm on finite dimensional
    spaces are equivalent>] all norms on <math|\<bbb-R\><rsup|n>> are
    equivalent, so if <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>> is the
    canonical norm on <math|\<bbb-R\>> [see example: <reference|normed
    maximum norm R^n>] and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> is the
    Euclidean norm on <math|\<bbb-R\>> \ [definition: <reference|inner
    euclidean norm real numbers>] then\ 

    <\equation>
      <label|eq 21.1086.291>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>
    </equation>

    As by [theorem: <reference|spectral unitary operator properties>]
    <math|U<rsup|-1>> is a isomorphism we have by [theorem:
    <reference|measure Borel measure of T(A) (1)>] that

    <\equation>
      <label|eq 21.1087.291>\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><text|
      we have >\<lambda\><rsup|n><around*|(|<around*|(|U<rsup|-1>|)><around*|(|A|)>|)>=\<kappa\>\<cdot\>\<lambda\><rsup|n><around*|(|A|)><text|
      where >\<kappa\>=\<lambda\><rsup|n><around*|(|<around*|(|U<rsup|-1>|)><around*|(|<around*|[|0,1|[><rsup|n>|)>|)>
    </equation>

    Take the open ball <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>\<less\>1|}>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    then by the above we have\ 

    <\equation>
      <label|eq 21.1088.291>\<lambda\><rsup|n><around*|(|<around*|(|U<rsup|-1>|)><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>|)>=\<kappa\>\<cdot\>\<lambda\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>
    </equation>

    Further we have by [theorem: <reference|spectral unitary operator
    properties>] that

    <\equation>
      <label|eq 21.1089.291>U<text| is a >linear isometry
    </equation>

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>\<less\>1>>|<row|<cell|>|<cell|<below|\<Leftrightarrow\>|<text|[eq:
      <reference|eq 21.1089.291>]>>>|<cell|<around*|\<\|\|\>|U<around*|(|x|)>|\<\|\|\>><rsub|e>\<less\>1>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|U<around*|(|x|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|U<rsup|-1>|)><around*|(|U<around*|(|x|)>|)>\<in\>U<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>U<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>>>>>
    </eqnarray*>

    which proves that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>=U<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>>.
    Substituting this in [eq: <reference|eq 21.1088.291>] gives\ 

    <\equation>
      <label|eq 21.1090.291>\<lambda\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>=\<kappa\>\<cdot\>\<lambda\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>
    </equation>

    Let <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>>
    then we have <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>\<less\>1>. Let
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have

    <\equation*>
      -x<rsub|i>,x<rsub|i><below|\<leqslant\>|<text|[theorem:
      <reference|complex sqrt x\<less\>sqrt
      x^2>]>><around*|\||x<rsub|i>|\|>=<sqrt|x<rsub|i><rsup|2>><below|\<leqslant\>|<text|[theoren:
      <reference|complex root is strictly
      increasing>]>><sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>\<less\>1
    </equation*>

    so that <math|-1\<less\>x<rsub|i>\<less\>1> or
    <math|x<rsub|i>\<in\><around*|[|-1,1|[>>. Hence we have proved that
    <math|x\<in\><around*|[|-1,1|[><rsup|n>> so that
    \ <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>\<subseteq\><around*|[|-1,1|[><rsup|n>>
    from which it follows that <math|\<lambda\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|<around*|[|-1,1|[><rsup|n>|)><below|=|<text|[theorem:
    <reference|measure Lebesgue measure space on
    R^n>]>>vol<rsup|n><around*|(|<around*|[|-1,1|[>|)>=2<rsup|n>\<less\>\<infty\>>.
    In other words <math|>

    <\equation>
      <label|eq 21.1091.291>\<lambda\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>\<less\>\<infty\>
    </equation>

    Further if <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|<sqrt|n>>|[>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>we have
    <math|0\<less\>x<rsub|i>\<less\><frac|1|<sqrt|n>>> so that

    <\equation*>
      <around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>><below|\<leqslant\>|<text|[theorem:
      <reference|complex root is strictly
      increasing>]>><sqrt|<big|sum><rsub|i=1><rsup|n><frac|1|n>>=<sqrt|n\<cdot\><frac|1|n>>=1
    </equation*>

    which prove that <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|<sqrt|n>>|[>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>>
    so that\ 

    <\equation*>
      0\<less\>n\<cdot\><frac|1|<sqrt|n>>=vol<rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|<sqrt|n>>|[>|)>=\<lambda\><rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|<sqrt|n>>|[>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>
    </equation*>

    Hence\ 

    <\equation>
      <label|eq 21.1092.291>0\<less\>\<lambda\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>
    </equation>

    the above together with [eq: <reference|eq 21.1091.291>] allows us to
    multiply both sides of [eq: <reference|eq 21.1090.291>] by
    <math|<frac|1|\<lambda\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|0,1|)>|)>>>
    to get <math|\<kappa\>=1>. Substituting this in [eq: <reference|eq
    21.1087.291>] gives\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><text| we have
      >\<lambda\><rsup|n><around*|(|<around*|(|U<rsup|-1>|)><around*|(|A|)>|)>=\<lambda\><rsup|n><around*|(|A|)>
    </equation*>
  </proof>

  <\equation*>
    \<forall\>x\<in\>\<bbb-R\><rsup|n><text|
    ><around*|(|f\<circ\>T|)><around*|(|x|)>=f<around*|(|T<around*|(|x|)>|)><below|=|<text|[eq:
    <reference|eq 21.1110.291>]>><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|T<around*|(|x|)>|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsub|n>\<circ\>T|)><around*|(|x|)>
  </equation*>

  ---------------------------------------------------------------------------------------------------------

  \;

  <\definition>
    <label|Holder continuity><dueto|Hölder continuity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|\<alpha\>\<in\><around*|]|0,1|]>>,
    <math|C\<in\><around*|[|0,\<infty\>|[>> then a function
    <math|f:X\<rightarrow\>Y> is a Hölder continuous function of index
    <math|\<alpha\>> with Hölder constant <math|C> if

    <\equation*>
      \<forall\>x,y\<in\>X<text| we have ><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>C\<cdot\><around*|(|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>|)><rsup|\<alpha\>>
    </equation*>
  </definition>

  <\theorem>
    <label|Holder continuity implies continuity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|\<alpha\>\<in\><around*|]|0,1|]>>,
    <math|C\<in\><around*|[|0,\<infty\>|[>> and <math|f:X\<rightarrow\>Y> a
    Hölder continuous function of index <math|\<alpha\>> with Hölder constant
    <math|C> then <math|f> is continuous.
  </theorem>

  <\proof>
    As <math|f> is Hölder continuous we have that

    <\equation*>
      \<forall\>x,y\<in\>X<text| we have ><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>C\<cdot\><around*|(|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>|)><rsup|\<alpha\>>
    </equation*>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as
    <math|0\<less\>\<alpha\>> we can take take then
    <math|\<delta\>=<around*|(|<frac|\<varepsilon\>|C+1>|)><rsup|<frac|1|\<alpha\>>>\<in\>\<bbb-R\><rsup|+>>.
    If then <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>C\<cdot\><around*|(|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>|)><rsup|\<alpha\>><below|\<less\>|<text|[theorem:
      <reference|exp generalized power properties>]>>C\<cdot\>\<delta\><rsup|<frac|1|\<alpha\>>><below|=|<text|[theoren:
      <reference|exp generalized power properties>]>>C\<cdot\><around*|(|<frac|\<varepsilon\>|C+1>|)><rsup|<frac|1|\<alpha\>>\<cdot\>\<alpha\>>=C\<cdot\><frac|\<varepsilon\>|C+1>\<less\>\<varepsilon\><rsup|>
    </equation*>

    which proves that <math|f> is continuous.
  </proof>

  <\lemma>
    <label|lemma 21.587.292>Let <math|n,m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    the normed space equiped with the canonical maximum norm [see
    <reference|normed maximum norm R^n>],
    <math|\<alpha\>\<in\><around*|[|0,1|[>>,
    <math|C\<in\><around*|[|0,\<infty\>|[>> and
    <math|f:\<bbb-R\><rsup|n>\<rightarrow\>R<rsup|m>> a Hölder continuous
    function of index <math|\<alpha\>> with Hölder constant <math|C> then we
    have <math|\<forall\>c\<in\>\<bbb-R\><rsup|n>> and
    <math|s\<in\>\<bbb-R\><rsup|+>> that\ 

    <\equation*>
      f<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|c<rsub|i>-s,c<rsub|i>+s|]>|)>\<subseteq\>C\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|f<rsub|i><around*|(|c|)>-C\<cdot\>s<rsup|\<alpha\>>,f<rsub|i><around*|(|c|)>+C\<cdot\>s<rsup|\<alpha\>>|]>
    </equation*>

    where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|f<rsub|i>=\<pi\><rsub|i>\<circ\>f>. In particular if
    <math|I=<around*|[|a,b|]>> such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|b<rsub|i>-a<rsub|i>=l\<in\><around*|[|0,\<infty\>|[>> and
    <math|f<around*|(|I|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|m>|]>>
    then we have\ 

    <\equation*>
      \<lambda\><rsup|m><around*|(|I|)>\<leqslant\><around*|(|2<rsup|1-\<alpha\>>\<cdot\>C|)><rsup|m>\<cdot\><around*|(|\<lambda\><rsup|n><around*|(|I|)>|)><rsup|\<alpha\>\<cdot\>m/n>
    </equation*>
  </lemma>

  <\proof>
    As <math|f> is a \ Hölder continuous function of index <math|\<alpha\>>
    with Hölder constnat <math|C> we have\ 

    <\equation>
      <label|eq 21.1121.292>\<forall\>x,y\<in\>\<bbb-R\><rsup|n><text| we
      have ><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|m>\<leqslant\>C\<cdot\><around*|(|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>|)><rsup|\<alpha\>>
    </equation>

    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|c<rsub|i>-s,c<rsub|i>+s|]>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\><rsup|n><text|
      and >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >x<rsub|i>\<in\><around*|[|c<rsub|i>-s,c<rsub|i>+s|[>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\><rsup|n><text|
      and >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >c<rsub|i>-s\<leqslant\>x<rsub|i>\<leqslant\>c<rsub|i>+s>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\><rsup|n><text|
      and >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      c<rsub|i>-x<rsub|i>\<less\>s\<wedge\>x<rsub|i>-c<rsub|i>\<less\>s>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\><rsup|n><text|
      and >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      <around*|\||c<rsub|i>-x<rsub|i>|\|>\<less\>s>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\><rsup|n><text|
      and ><around*|\<\|\|\>|c-x|\<\|\|\>><rsub|n>\<less\>s>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|\<\|\|\>|c-x|\<\|\|\>><rsub|m>|}>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation*>
      <big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|c<rsub|i>-s,c<rsub|i>+s|]>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|\<\|\|\>|c-x|\<\|\|\>><rsub|m>\<leqslant\>s|}>
    </equation*>

    So if <math|y\<in\>f<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|c<rsub|i>-s,c<rsub|i>+s|]>|)>>
    then <math|\<exists\>x\<in\>\<bbb-R\><rsup|n>> with
    <math|<around*|\<\|\|\>|c-x|\<\|\|\>><rsub|m>\<leqslant\>s> such that
    <math|y=f<around*|(|x|)>>. Using then [eq: <reference|eq 21.1121.292>]
    gives\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|c|)>-f<around*|(|x|)>|\<\|\|\>><rsub|m>\<leqslant\>C\<cdot\><around*|(|<around*|\<\|\|\>|c-x|\<\|\|\>><rsub|n>|)><rsup|\<alpha\>>
    </equation*>

    Hence given <math|i\<in\><around*|{|1,\<ldots\>,m|}>> we have\ 

    <\equation*>
      f<rsub|i><around*|(|c|)>-f<rsub|i><around*|(|x|)>,f<rsub|i><around*|(|x|)>-f<rsub|i><around*|(|c|)>\<leqslant\><around*|\||f<rsub|i><around*|(|c|)>-f<rsub|i><around*|(|x|)>|\|>\<leqslant\><around*|\<\|\|\>|f<around*|(|c|)>-f<around*|(|x|)>|\<\|\|\>><rsub|m>\<leqslant\>C\<cdot\><around*|(|<around*|\<\|\|\>|c-x|\<\|\|\>><rsub|n>|)><rsup|\<alpha\>><below|\<leqslant\>|<text|[theorem:
      <reference|exp generalized power properties>]>>C\<cdot\>s<rsup|\<alpha\>>
    </equation*>

    so that <math|f<rsub|i><around*|(|c|)>-C\<cdot\>s<rsup|\<alpha\>>\<leqslant\>f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i><around*|(|c|)>+C\<cdot\>s<rsup|\<alpha\>>>
    or <math|y<rsub|i>=f<rsub|i><around*|(|x|)>\<in\><around*|[|f<rsub|i><around*|(|c|)>-C\<cdot\>s<rsup|\<alpha\>>,f<rsub|i><around*|(|c|)>+C\<cdot\>s<rsup|\<alpha\>>|]>>.
    Hence we have <math|y\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|f<rsub|i><around*|(|c|)>-C\<cdot\>s<rsup|\<alpha\>>,f<rsub|i><around*|(|c|)>+C\<cdot\>s<rsup|\<alpha\>>|]>>
    which proves that\ 

    <\equation>
      <label|eq 21.1122.292>f<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|c<rsub|i>-s,c<rsub|i>+s|]>|)>\<subseteq\>C\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|f<rsub|i><around*|(|c<rsub|i>|)>-C\<cdot\>s<rsup|\<alpha\>>,f<rsub|i><around*|(|c<rsub|i>|)>+C\<cdot\>s<rsup|\<alpha\>>|]>
    </equation>

    Let <math|I=<around*|[|a,b|]>> such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|b<rsub|i>-a<rsub|i>=l\<in\><around*|[|0,\<infty\>|[>> and
    <math|f<around*|(|I|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|m>|]>>.
    Then we have <rigid|<math|\<lambda\><rsup|n><around*|(|I|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>=l<rsup|n>>>
    so that by [theorem: <reference|exp generalized power properties>]

    <\equation>
      <label|eq 21.1123.292>l=<around*|(|\<lambda\><rsup|n><around*|(|I|)>|)><rsup|<frac|1|n>>
    </equation>

    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<around*|(|a<rsub|i>+<frac|b<rsub|i>-a<rsub|i>|2>|)>-<frac|b<rsub|i>-a<rsub|i>|2>,<around*|(|a<rsub|i>+<frac|b<rsub|i>-a<rsub|i>|2>|)>+<frac|b<rsub|i>-a<rsub|i>|2>|]>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<around*|(|a<rsub|i>+<frac|l|2>|)>-<frac|l|2>,<around*|(|a<rsub|i>+<frac|l|2>|)>+<frac|l|2>|]><eq-number><label|eq
      21.1124.292>>>>>
    </eqnarray*>

    Hence we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><rsup|m><around*|(|I|)>>|<cell|=>|<cell|\<lambda\><rsup|m><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 21.1124.292>]>>>|<cell|\<lambda\><rsup|m><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<around*|(|a<rsub|i>+<frac|l|2>|)>-<frac|l|2>,<around*|(|a<rsub|i>+<frac|l|2>|)>+<frac|l|2>|]>|)>>>|<row|<cell|>|<cell|<below|\<leqslant\>|<text|[eq:
      <reference|eq 21.1122.292>]>>>|<cell|\<lambda\><rsup|m><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|f<rsub|i><around*|(|a<rsub|i>+<frac|l|2>|)>-C\<cdot\><around*|(|<frac|l|2>|)><rsup|\<alpha\>>,f<rsub|i><around*|(|a<rsub|i>+<frac|l|2>|)>+C\<cdot\><around*|(|<frac|l|2>|)><rsup|\<alpha\>>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|m><around*|(|2\<cdot\>C<around*|(|<frac|l|2>|)><rsup|\<alpha\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|2\<cdot\>C<around*|(|<frac|l|2>|)><rsup|\<alpha\>>|)><rsup|m>>>|<row|<cell|>|<cell|=>|<cell|<frac|2<rsup|m>|2<rsup|\<alpha\>\<cdot\>m>>\<cdot\>C<rsup|m>\<cdot\>f<rsup|\<alpha\>\<cdot\>m>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
      <reference|eq 21.1123.292>]>>>|<cell|<frac|2<rsup|m>|2<rsup|\<alpha\>\<cdot\>m>>\<cdot\>C<rsup|m>\<cdot\><around*|(|\<lambda\><rsup|n><around*|(|I|)><rsup|<frac|1|n>>|)><rsup|\<alpha\>\<cdot\>m>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|exp generalized power properties>]>>>|<cell|<around*|(|2<rsup|<around*|(|1-\<alpha\>|)>>\<cdot\>C|)><rsup|m><around*|(|\<lambda\><rsup|n><around*|(|I|)>|)><rsup|\<alpha\>\<cdot\><frac|m|n>>>>>>
    </eqnarray*>
  </proof>

  <\lemma>
    <label|lemma 21.590.292>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable spaces, <math|\<cal-S\>> a semi-ring [see definition:
    <reference|measure semi-ring>] such that
    <math|\<sigma\><around*|[|S|]>=\<cal-A\>> and <math|\<mu\>,\<nu\>> two
    measures on <math|\<cal-A\>> such that <math|\<forall\>A\<in\>\<cal-S\>>
    we have <math|\<mu\><around*|(|A|)>\<leqslant\>\<nu\><around*|(|A|)>\<less\>\<infty\>>.
    If there exist a <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>>
    such that <math|X=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> and
    <math|\<forall\>i\<in\>\<bbb-N\>> <math|A<rsub|i>\<leqslant\>A<rsub|i+1>>
    then we have

    <\equation*>
      \<forall\>A\<in\>\<cal-A\><text| we have
      >\<mu\><around*|(|A|)>\<leqslant\>\<nu\><around*|(|A|)>
    </equation*>
  </lemma>

  <\proof>
    As <math|\<forall\>A\<in\>\<cal-S\>> we have
    <math|\<mu\><around*|(|A|)>\<leqslant\>\<nu\><around*|(|A|)>\<less\>\<infty\>>
    we can define\ 

    <\equation>
      <label|eq 21.1125.292>\<rho\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      by >\<rho\><around*|(|A|)>=\<nu\><around*|(|A|)>-\<mu\><around*|(|A|)>
    </equation>

    As <math|\<mu\>,\<nu\>> are measures we have that\ 

    <\equation*>
      \<rho\><around*|(|\<varnothing\>|)>=\<nu\><around*|(|\<varnothing\>|)>-\<mu\><around*|(|\<varnothing\>|)>=0-0=0
    </equation*>

    and <math|\<forall\><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>>
    pairwise disjoint such that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-S\>>
    we have as <math|0\<leqslant\>\<nu\><around*|(|A|)>-\<mu\><around*|(|A|)>\<less\>\<infty\>>
    that by [theorem: <reference|extended infinite sum properties>] that

    <\equation*>
      \<rho\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=\<nu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>-\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<nu\><around*|(|B<rsub|i>|)>-<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<nu\><around*|(|B<rsub|i>|)>-\<mu\><around*|(|B<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<rho\><around*|(|B<rsub|i>|)>
    </equation*>

    which proves [see definition: <reference|measure pre-measure>] that\ 

    <\equation*>
      \<rho\><text| is a pre-measure on >\<b-S\>
    </equation*>

    By [theorem: <reference|measure extending pre-measure to a measure>] we
    can extend <math|\<rho\>> to a <with|font-series|bold|unique> measure
    <math|<wide|\<rho\>|~>> on <math|\<sigma\><around*|[|\<cal-S\>|]>=\<cal-A\>>.
    In other words

    <\equation>
      <label|eq 21.1126.292><wide|\<rho\>|~><text| is a measure on
      >\<cal-A\>=\<sigma\><around*|[|\<cal-S\>|]><text| such that
      ><around*|(|<wide|\<rho\>|~>|)><rsub|\|\<cal-S\>>=\<rho\>
    </equation>

    and\ 

    <\equation>
      <label|eq 21.1127.292>If \<tau\><text| is a other measure on
      <math|\<cal-A\><text| such that >>>\<tau\><rsub|\|\<cal-S\>>=\<rho\><text|
      then >\<tau\>=\<rho\>
    </equation>

    Define\ 

    <\equation>
      <label|eq 21.1128.292>\<omega\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      by >\<omega\><around*|(|A|)>=\<rho\><around*|(|A|)>+\<mu\><around*|(|A|)>
    </equation>

    then we we have that

    <\equation*>
      \<omega\><around*|(|\<varnothing\>|)>=\<rho\><around*|(|\<varnothing\>|)>+\<mu\><around*|(|\<varnothing\>|)>=0+0=0
    </equation*>

    and <math|\<forall\><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\>>
    such that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-S\>>
    then we have, as <math|\<mu\>> and <math|<wide|\<rho\>|~>> are measures
    on <math|\<cal-A\>=\<sigma\><around*|[|\<cal-S\>|]>>, that
    <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>
    and <math|\<rho\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<equallim\><rsub|<text|[eq:
    <reference|eq 21.1127.292>]>><wide|\<rho\>|~><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><wide|\<rho\>|~><around*|(|B<rsub|i>|)>\<equallim\><rsub|<text|[eq:
    <reference|eq 21.1127.292>]>><big|sum><rsub|i=1><rsup|\<infty\>>\<rho\><around*|(|B<rsub|i>|)>>.
    Hence using \ [theorem: <reference|extended infinite sum properties>] we
    have that\ 

    <\equation*>
      \<omega\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=\<rho\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>+\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<rho\><around*|(|B<rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<rho\><around*|(|B<rsub|i>|)>+\<mu\><around*|(|B<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<omega\><around*|(|B<rsub|i>|)>
    </equation*>

    which proves [see definition: <reference|measure pre-measure>] that\ 

    <\equation*>
      \<omega\><text| is a pre-measure on >\<cal-S\>
    </equation*>

    By [theorem: <reference|measure extending pre-measure to a measure>] we
    can extend <math|\<omega\>> to a <with|font-series|bold|unique >measure
    <math|<wide|\<omega\>|~>> on <math|\<sigma\><around*|[|S|]>=\<cal-A\>>.
    In other words\ 

    <\equation>
      <label|eq 21.1129.292><wide|\<omega\>|~><text| is a measure on
      >\<cal-A\><text| and ><around*|(|<wide|\<omega\>|~>|)><rsub|\|\<cal-S\>>=\<omega\>
    </equation>

    and\ 

    <\equation>
      <label|eq 21.1130.292><text|If >\<tau\><text| is a other measure on
      >\<cal-A\><text| such that >\<tau\><rsub|\|\<cal-S\>>=\<omega\><text|
      then >\<tau\>=\<omega\>
    </equation>

    As <math|\<forall\>A\<in\>\<cal-S\>> we have
    <math|><math|\<omega\><around*|(|A|)>=\<rho\><around*|(|A|)>+\<mu\><around*|(|A|)>\<equallim\><rsub|<text|[eq:
    <reference|eq 21.1125.292>]>>\<nu\><around*|(|A|)>-\<mu\><around*|(|A|)>+\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>=\<nu\><rsub|\|\<cal-S\>><around*|(|A|)>>
    it follows that <math|><math|\<nu\><rsub|\|\<cal-S\>>=\<omega\>>, hence
    using [eq: <reference|eq 21.1130.292>] it follows that\ 

    <\equation>
      <label|eq 21.1131.292><wide|\<omega\>|~>=\<nu\>
    </equation>

    As <math|\<mu\>,<wide|\<rho\>|~>> are measures on
    <math|\<cal-A\>=\<sigma\><around*|[|\<cal-S\>|]>> we have by [theorem:
    <reference|measure sum and scalar product of measures>] that
    <math|<wide|\<rho\>|~>+\<mu\>> is a measure on
    <math|\<cal-A\>=\<sigma\><around*|[|\<cal-S\>|]>>. Further we have
    <math|\<forall\>A\<in\>\<cal-S\>> that

    <\equation*>
      <around*|(|<wide|\<rho\>|~>+\<mu\>|)><rsub|\|\<cal-S\>>=<around*|(|<wide|\<rho\>|~>+\<mu\>|)><around*|(|A|)>=<wide|\<rho\>|~><around*|(|A|)>+\<mu\><around*|(|A|)><below|=|<text|[eq:
      <reference|eq 21.1126.292>]>>\<rho\><around*|(|A|)>+\<mu\><around*|(|A|)><below|=|<text|[eq
      <reference|eq 21.1128.292>]>>\<omega\><around*|(|A|)>
    </equation*>

    so that <math|<around*|(|<wide|\<rho\>|~>+\<mu\>|)><rsub|\|\<cal-S\>>=\<omega\>>.
    Hence using [eq: <reference|eq 21.1130.292>] it follows that\ 

    <\equation*>
      <wide|\<rho\>|~>+\<mu\>=\<omega\><below|=|<text|[eq: <reference|eq
      21.1131.292>]>>\<nu\>
    </equation*>

    Let <math|A\<in\>\<cal-A\>> then we have either:\ 

    <\description>
      <item*|<math|\<mu\><around*|(|A|)>=\<infty\>>>Then we have
      <math|\<nu\><around*|(|A|)>=<wide|\<rho\>|~><around*|(|A|)>+\<mu\><around*|(|A|)>=<wide|\<rho\>|~><around*|(|A|)>+\<infty\>=\<infty\>>
      so that <math|\<nu\><around*|(|A|)>=\<infty\>> hence
      <math|<rigid|\<mu\><around*|(|A|)>=\<infty\>\<leqslant\>\<infty\>=\<nu\><around*|(|A|)>>>
      so that in this case we have <math|\<mu\><around*|(|A|)>\<leqslant\>\<nu\><around*|(|A|)>>.

      <item*|<math|\<mu\><around*|(|A|)>\<less\>\<infty\>>>Then from
      <math|\<nu\><around*|(|A|)>=<wide|\<rho\>|~><around*|(|A|)>+\<mu\><around*|(|A|)>>
      we have by [theorem: <reference|extended x+z=y+z=\<gtr\>x-y>] that
      <rigid|<math|\<nu\><around*|(|A|)>-\<mu\><around*|(|A|)>=<wide|\<rho\>|~><around*|(|A|)>\<geqslant\>0>>
      so that <math|\<mu\><around*|(|A|)>\<less\>\<nu\><around*|(|A|)>>.
    </description>

    hence we have proved that

    <\equation*>
      \<forall\>A\<in\>\<cal-A\><text| we have
      >\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|A|)>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 21.591.>Let <math|n\<in\>\<bbb-N\>>,
    <math|I\<in\>\<cal-R\><rsup|n><rsub|<around*|[||[>>> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exists
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>,N\<in\>\<bbb-N\>>,
    <math|<rigid|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>\<subseteq\>\<cal-R\><rsup|n><rsub|<around*|[||[>>>>
    pairwise disjoint such that\ 

    <\equation*>
      \<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
    </equation*>
  </lemma>

  -------------------------------------------------------------------------------------

  <\proof>
    If <math|\<cal-F\>=\<varnothing\>> then we have
    <math|\<forall\><around*|(|Z,Y|)>\<in\>\<cal-F\>> that
    <math|<around*|(|Z,Y|)>\<preccurlyeq\><around*|(|Y,L|)>> vacuously which
    as <math|<around*|(|Y,L|)>\<in\>\<cal-E\><rsub|X,Y,L>> proves that
    <math|\<cal-F\>=\<varnothing\>> has a upper bound in
    <math|\<cal-E\><rsub|X,Y,L>>. So we only have to prove the lemma for the
    case where <math|\<cal-F\>\<neq\>\<varnothing\>>.\ 

    Let <math|\<cal-F\>> be a chain in <math|\<cal-E\><rsub|X,Y,L>> and
    define\ 

    <\equation>
      <label|eq 14.290.294>R=<big|cup><rsub|<around*|(|Z,K|)>\<in\>\<cal-F\>>Z
    </equation>

    As <math|\<forall\><around*|(|Z,K|)>\<in\>\<cal-F\>> <math|Z> is a vector
    space we have <math|0\<in\>Z> so that <math|0\<in\>R> which proves that\ 

    <\equation>
      <label|eq 14.291.294>R\<neq\>0
    </equation>

    Let <math|x,y\<in\>R> and <math|\<alpha\>\<in\>\<bbb-R\>> then there
    exists <math|<around*|(|Z<rsub|x>,K<rsub|x>|)>,<around*|(|Z<rsub|y>,K<rsub|y>|)>\<in\>\<cal-F\>>
    such that <math|x\<in\>Z<rsub|x>\<wedge\>y\<in\>Z<rsub|y>>. As
    <math|\<cal-F\>> is a chain we have either:\ 

    <\description>
      <item*|<math|<around*|(|Z<rsub|x>,K<rsub|x>|)>\<preccurlyeq\><around*|(|Z<rsub|y>,K<rsub|y>|)>>>Then
      <math|Z<rsub|x>\<subseteq\>Z<rsub|y>> so that
      <math|x,y\<in\>Z<rsub|y>\<Rightarrow\>x+\<alpha\>\<cdot\>y\<in\>Z<rsub|y>\<subseteq\>R>.

      <item*|<math|<around*|(|Z<rsub|y>,K<rsub|y>|)>\<preccurlyeq\><around*|(|Z<rsub|x>,K<rsub|x>|)>>>Then
      <math|Z<rsub|y>\<subseteq\>Z<rsub|x>> so that
      <math|x,y\<in\>Z<rsub|x>\<Rightarrow\>x+\<alpha\>\<cdot\>y\<in\>Z<rsub|x>\<subseteq\>R>.
    </description>

    so in all cases we have <math|x+\<alpha\>\<cdot\>y\<in\>R>. This together
    with [eq: <reference|eq 14.291.294>] proves [see theorem:
    <reference|vector space subspace>] that\ 

    <\equation>
      <label|eq 14.292.294>R<text| is a real vector space>
    </equation>

    Further we have <math|\<forall\><around*|(|Z,K|)>\<in\>\<cal-F\>\<subseteq\>\<cal-E\><rsub|X,Y,L>>
    that <math|Y\<subseteq\>Z> so that we have\ 

    <\equation>
      <label|eq 14.293.291>Y\<subseteq\>\<bbb-R\>
    </equation>

    Define now <math|G=<big|cup><rsub|<around*|(|Z,K|)>\<in\>\<cal-F\>>K\<subseteq\>R\<times\>\<bbb-R\>>
    [note that as <math|K> is a function from <math|Z> to <math|\<bbb-R\>>
    <math|K\<subseteq\>Z\<times\>\<bbb-R\>\<subseteq\>R\<times\>\<bbb-R\>>].
    If <math|<around*|(|x,y|)>,<around*|(|x,y<rprime|'>|)>\<in\>G> then there
    exist <math|<around*|(|Z<rsub|1>,K<rsub|1>|)>,<around*|(|Z<rsub|2>,K<rsub|2>|)>\<in\>\<cal-F\>>
    such that <math|<around*|(|x,y|)>\<in\>K<rsub|1>\<wedge\><around*|(|x,y<rprime|'>|)>\<in\>K<rsub|2>>
    or using the definition of functions that
    <math|y=K<rsub|1><around*|(|x|)>\<wedge\>y<rprime|'>=K<rsub|2><around*|(|x|)>>,
    further we have <math|x\<in\>Z<rsub|1><big|cap>Z<rsub|2>>. As
    <math|\<cal-F\>> is a chain we have either:

    <\description>
      <item*|<math|<around*|(|Z<rsub|1>,K<rsub|1>|)>\<preccurlyeq\><around*|(|Z<rsub|2>,K<rsub|2>|)>>>Then
      <math|K<rsub|1>=<around*|(|K<rsub|2>|)><rsub|\|Z<rsub|1>>> so that
      <math|y=K<rsub|1><around*|(|x|)>=<around*|(|K<rsub|2>|)><rsub|\|Z<rsub|1>><around*|(|x|)>=K<rsub|2><around*|(|x|)>=y<rprime|'>>

      <item*|<math|<around*|(|Z<rsub|2>,K<rsub|2>|)>\<preccurlyeq\><around*|(|Z<rsub|1>,K<rsub|1>|)>>>Then
      <math|K<rsub|2>=<around*|(|X<rsub|1>|)><rsub|\|Z<rsub|2>>> so that
      <math|y=K<rsub|1><around*|(|x|)>=<around*|(|K<rsub|1>|)><rsub|\|Z<rsub|2>><around*|(|x|)><rsub|>=K<rsub|2><around*|(|x|)>=y<rprime|'>>
    </description>

    so in all cases we have <math|y=y<rprime|'>> which proves that\ 

    <\equation*>
      G:R\<rightarrow\>\<bbb-R\><text| is a partial function>
    </equation*>

    If <math|x\<in\>R> then there exist a
    <math|<around*|(|Z,K|)>\<in\>\<cal-F\>> such that
    <math|x\<in\>Z=dom<around*|(|K|)>> so there exist a
    <math|y\<in\>\<bbb-R\>> such that <math|<around*|(|x,y|)>\<in\>K> which
    proves that <math|x\<in\>dom<around*|(|G|)>>. Hence using [theorem:
    <reference|function condition (1)>[ it follows that\ 

    <\equation>
      <label|eq 14.294.294>G:R\<rightarrow\>\<bbb-R\><text| is a function>
    </equation>

    If <math|x\<in\>R> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|y=G<around*|(|x|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,y|)>\<in\>G>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\><around*|(|Z,K|)>\<in\>\<cal-F\><text|
      with ><around*|(|x,y|)>\<in\>K>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\><around*|(|Z,K|)>\<in\>\<cal-F\><text|
      with <math|x\<in\>Z\<wedge\>y=K<around*|(|x|)>>>>>>>
    </eqnarray*>

    so we have\ 

    <\equation>
      <label|eq 14.295.294>G:R\<rightarrow\>\<bbb-R\><text| is defined by
      >G<around*|(|x|)>=K*<around*|(|z|)> where
      <around*|(|Z,K|)>\<in\>\<cal-F\>\<wedge\>x\<in\>Z
    </equation>

    Let <math|x,y\<in\>R> and <math|\<alpha\>\<in\>\<bbb-R\>> then there
    exists <math|<around*|(|Z<rsub|1>,K<rsub|1><rsub|>|)>,<around*|(|Z<rsub|2>,K<rsub|2>|)>\<in\>\<cal-F\>>
    such that <math|x\<in\>Z<rsub|1>\<wedge\>y\<in\>Z<rsub|2>>. As
    <math|\<cal-F\>> is a chain we have either:\ 

    <\description>
      <item*|<math|<around*|(|Z<rsub|1>,K<rsub|1>|)>\<preccurlyeq\><around*|(|Z<rsub|2>,K<rsub|2>|)>>>Then
      <math|x,y\<in\>Z<rsub|2>\<Rightarrow\>x+\<alpha\>\<cdot\>y\<in\>Z<rsub|2>>
      so that

      <\equation*>
        G<around*|(|x+\<alpha\>\<cdot\>y|)>=K<rsub|2><around*|(|x+\<alpha\>\<cdot\>y|)>=K<rsub|2><around*|(|x|)>+\<alpha\>\<cdot\>K<rsub|2><around*|(|y|)>=G<around*|(|x|)>+\<alpha\>\<cdot\>G<around*|(|y|)>
      </equation*>

      <item*|<math|<around*|(|Z<rsub|2>,K<rsub|2>|)>\<preccurlyeq\><around*|(|Z<rsub|1>,K<rsub|1>|)>>>Then
      <math|x,y\<in\>Z<rsub|1>\<Rightarrow\>x+\<alpha\>\<cdot\>y\<in\>Z<rsub|1>>
      so that

      <\equation*>
        G<around*|(|x+\<alpha\>\<cdot\>y|)>=K<rsub|1><around*|(|x+\<alpha\>\<cdot\>y|)>=K<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>K<rsub|1><around*|(|y|)>=G<around*|(|x|)>+\<alpha\>\<cdot\>G<around*|(|y|)>
      </equation*>
    </description>

    which proves that <math|G> is a linear function. Hence

    <\equation>
      <label|eq 14.296.294>G\<in\>L<around*|(|R,\<bbb-R\>|)>
    </equation>

    Let <math|y\<in\>Y> then\ 

    \;
  </proof>

  -----------------------------------------------------------------\U

  \;

  <\lemma>
    <label|lemma 21.589.295>Let <math|m\<in\>\<bbb-N\>>,
    <math|a\<in\>\<bbb-R\><rsup|n>> and <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
    then <math|\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|a,\<delta\>|)>=<around*|]|a-\<delta\>,a+\<delta\>|[>>
    and <math|<wide|\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|a,\<delta\>|)>|\<wide-bar\>>=<around*|[|a,b|]>>
  </lemma>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|a,\<delta\>|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|x-a|\<\|\|\>><rsub|n>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|max<around*|(|<around*|\||x<rsub|i>-a<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|)>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      <around*|\||x<rsub|i>-a<rsub|i>|\|>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >x<rsub|i>-a<rsub|i>,a<rsub|i>-x<rsub|i>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>-\<delta\>\<less\>x<rsub|i>\<less\>a<rsub|i>+\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a-\<delta\>,a+\<delta\>|[>>>|<row|<cell|x\<in\><wide|\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|a,\<delta\>|)>|\<wide-bar\>>>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|x-a|\<\|\|\>><rsub|n>\<leqslant\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|max<around*|(|<around*|\||x<rsub|i>-a<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|)>\<leqslant\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      <around*|\||x<rsub|i>-a<rsub|i>|\|>\<leqslant\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >x<rsub|i>-a<rsub|i>,a<rsub|i>-x<rsub|i>\<leqslant\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>-\<delta\>\<leqslant\>x<rsub|i>\<leqslant\>a<rsub|i>+\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a-\<delta\>,a+\<delta\>|]>>>>>
    </eqnarray*>
  </proof>

  \;

  ----------------------------------------------------------------------\V

  <\lemma>
    Let <math|n\<in\>\<bbb-N\>>, <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    then there exist a <math|<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|x<rsub|i>,\<delta\><rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\>>>
    such that <math|>
  </lemma>

  <\lemma>
    Let <math|n\<in\>\<bbb-N\>>, <math|U> a open set in
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>> and
    <math|T:U\<rightarrow\>\<bbb-R\><rsup|n>> a function that is
    <math|C<rsup|1>> on <math|U> [see definitions: <reference|diff class
    C^n>,<reference|diff C^n on a set>]. Let <math|E\<subseteq\>U> such that
    <math|<around*|(|\<lambda\><rsup|n>|)><rsup|\<ast\>><around*|(|E|)>=0>
    where <math|<around*|(|\<lambda\><rsup|n>|)><rsup|\<star\>>> is the outer
    measure definted in [definition: <reference|measure Lebesgue measure
    space on R^n>] then we have\ 

    <\equation*>
      T<around*|(|E|)>\<in\>\<cal-L\><rsup|n><around*|[|\<bbb-R\><rsup|n>|]>
    </equation*>

    and\ 

    <\equation*>
      <wide|\<lambda\><rsup|n>|\<wide-bar\>><around*|(|T<around*|(|E|)>|)>=0
    </equation*>

    where <math|><math|<wide|\<lambda\><rsup|n>|\<wide-bar\>>> is the
    Lebesgue measure on the set of <math|\<cal-L\><rsup|n><around*|[|\<bbb-R\><rsup|n>|]>>
    measurable sets.\ 
  </lemma>

  <\proof>
    Let <math|E\<subseteq\>U> such that <math|<around*|(|\<lambda\><rsup|n>|)><rsup|\<ast\>><around*|(|E|)>=0>.
    Given <math|m,p\<in\>\<bbb-N\>> define\ 

    <\equation>
      <label|eq 21.1127\<point\>300>E<rsub|m,p>=<around*|{|y\<in\>E\|\<forall\>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|y,<frac|1|p>|)><text|
      we have ><around*|\<\|\|\>|T<around*|(|x|)>-T<around*|(|y|)>|\<\|\|\>><rsub|n>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>|}>
    </equation>

    Let <math|y\<in\>U> then as \ <math|T> is <math|C<rsup|1>> on <math|U> T
    is differentiable at <math|y>. Then given
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have by [theorem:
    <reference|diff differentiability alternative definitions>] a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>x\<in\>U> with <math|0\<less\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>\<less\>\<delta\><rsub|1>>
    we have\ 

    <\equation>
      <label|eq 21.1128\<point\>300><frac|<around*|\<\|\|\>|T<around*|(|y|)>-T<around*|(|x|)>-D<rsub|y>T<around*|(|x-y|)>|\<\|\|\>><rsub|n>|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>>\<less\>\<varepsilon\>
    </equation>

    hence we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|T<around*|(|y|)>-T<around*|(|x|)><rsub|n>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|T<around*|(|y|)>-T<around*|(|x|)>-D<rsub|y>T<around*|(|x-y|)>+D<rsub|y>T<around*|(|x-y|)>|\<\|\|\>><rsub|n>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|T<around*|(|y|)>-T<around*|(|x|)>-D<rsub|y>T<around*|(|x-y|)>|\<\|\|\>><rsub|n>+<around*|\<\|\|\>|D<rsub|y>T<around*|(|x-y|)>|\<\|\|\>><rsub|n>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|T<around*|(|y|)>-T<around*|(|x|)>-D<rsub|y>T<around*|(|x-y|)>|\<\|\|\>><rsub|n>+<around*|\<\|\|\>|D<rsub|y>T|\<\|\|\>><rsub|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>>>|<row|<cell|>|<cell|<below|\<less\>|<text|[eq:
      <reference|eq 21.1128\<point\>300>]>>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>+<around*|\<\|\|\>|D<rsub|y>T|\<\|\|\>><rsub|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varepsilon\>+<around*|\<\|\|\>|D<rsub|y>T|\<\|\|\>><rsub|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>>|)>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>>>|<row|<cell|>|<cell|=>|<cell|M<around*|(|y,\<varepsilon\>|)>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n><text|
      where >M<around*|(|y,\<varepsilon\>|)>=\<varepsilon\>+<around*|\<\|\|\>|D<rsub|y>T|\<\|\|\>><rsub|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>><eq-number><label|eq
      21.1229.300>>>>>
    </eqnarray*>

    As <math|y\<in\>U> and <math|U> is open there exist a
    <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|y,\<delta\><rsub|1>|)>\<in\>U>.
    Using the Using the Archimedean property of the real numbers [see
    theorem: <reference|complex Archimedean property consequence (1)>] we can
    find <math|m,p\<in\>\<bbb-N\>> such that
    <math|M<around*|(|y,\<varepsilon\>|)>\<leqslant\>m> and
    <math|<frac|1|p>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>.
    If <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|y,<frac|1|p>|)>>
    then we have either:\ 

    <\description>
      <item*|<math|x=y>>Then <math|<around*|\<\|\|\>|T<around*|(|x|)>-T<around*|(|y|)>|\<\|\|\>><rsub|n>=0\<leqslant\>0=m\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>>

      <item*|<math|x\<neq\>y>>Then <math|0\<less\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>\<less\><frac|1|p>\<less\>\<delta\>>
      so that <math|<around*|\<\|\|\>|T<around*|(|x|)>-T<around*|(|y|)>|\<\|\|\>><rsub|n><below|\<less\>M<around*|(|y,\<varepsilon\>|)>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>\<leqslant\>m\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>|>><math|>
    </description>

    This proves that that <math|\<forall\>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|y,<frac|1|p>|)>>
    we have <math|<around*|\<\|\|\>|T<around*|(|x|)>-T<around*|(|y|)>|\<\|\|\>><rsub|n>\<leqslant\>m\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n>>
    or <math|y\<in\>E<rsub|m,p>> [see eq: <reference|eq
    21.1127\<point\>300>], hence we must conclude that
    <math|E\<subseteq\><big|cup><rsub|<around*|(|m,p|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\>>E<rsub|m,p>>.
    As trivial <math|E<rsub|m,p>\<subseteq\>E> it follows that\ 

    <\equation>
      <label|eq 21.1130.300>E=<big|cup><rsub|<around*|(|m,p|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\>>E<rsub|m,p>
    </equation>

    As <math|<around*|(|\<lambda\><rsup|n>|)><rsup|\<ast\>>> is a outer
    measure and <math|\<forall\>m,p\<in\>\<bbb-N\>> we have
    <math|E<rsub|m,p>\<subseteq\>E> it follows that
    <math|<around*|(|\<lambda\><rsup|n>|)><rsup|\<ast\>><around*|(|E<rsub|m,p>|)>\<leqslant\><around*|(|\<lambda\><rsup|n>|)><rsup|\<ast\>><around*|(|E|)>=0>
    which proves that\ 

    <\equation*>
      \<forall\><around*|(|m,p|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\><text| we
      have ><around*|(|\<lambda\><rsup|n>|)><rsup|\<ast\>><around*|(|E<rsub|m,p>|)>=0
    </equation*>

    \;
  </proof>

  <\lemma>
    Let <math|n\<in\>\<bbb-N\>>, <math|a,b\<in\>\<bbb-R\><rsup|n>> with
    <math|a\<leqslant\>b>, <math|\<varepsilon\>,\<delta\>\<in\>\<bbb-R\><rsup|\<ast\>>>
    then there exist a <math|m\<in\>\<bbb-N\>> and a
    <math|<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x<rsub|i>,\<delta\><rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    such that:

    <\enumerate>
      <item><math|\<forall\>i\<in\>\<bbb-N\>>
      <math|\<delta\><rsub|i>\<less\>\<delta\>>

      <item><math|<around*|[|a,b|[>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|x<rsub|i>,\<delta\><rsub|i>|)>>

      <item><math|<big|sum><rsub|i=1><rsup|n><wide|\<lambda\>|\<wide-bar\>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|x<rsub|i>,\<delta\><rsub|i>|)>|)>\<less\>vol<rsup|n><around*|(|<around*|[|a,b|[>|)>+\<varepsilon\>>
    </enumerate>
  </lemma>

  <\proof>
    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then there\ 
  </proof>

  \;

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by induction so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If <math|B\<subseteq\>A>,
        <math|x\<in\>B<rsup|\<circ\>>> and >f<text| is >n<text|-times
        differentiable at <math|x> then<math|<text|<math|<text| >f<rsub|\|B>>
        is >n<text|-times differentiable at >x<text| and
        >D<rsub|x><rsup|<around*|[|n|]>>f<rsub|\|B>=D<rsub|x><rsup|<around*|[|n|]>>f>>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f> is <math|1>-times differentiable
        at <math|x\<in\>B<rsup|\<circ\>>> then by definition <math|f> is
        Fréchet differentiable at <math|x> and
        <math|D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f>. Using [theorem:
        <reference|diff differentiability is a local property>]
        <math|f<rsub|\|B>> is Fréchet differentiable at <math|x> and
        <math|D<rsub|x>f<rsub|\|B>=D<rsub|x>f>. Hence <math|f<rsub|\|B>> is
        <math|1>-times differentiable at <math|x> and

        <\equation*>
          D<rsub|x><rsup|<around*|[|1|]>>f<rsub|\|B>=D<rsub|x>f<rsub|\|B>=D<rsub|x>f=D<rsub|x><rsup|1>f.
        </equation*>

        From this it follows that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|B\<subseteq\>A>, <math|x\<in\>B<rsup|\<circ\>>> such that
        <math|f> is <math|<around*|(|n+1|)>>-times differentiable at
        <math|x\<in\>B<rsup|\<circ\>>> then by [definition: <reference|diff
        higher order differentiation>] there exist a open set <math|V> with
        <math|x\<in\>V\<subseteq\>A> such that <math|\<forall\>y\<in\>V>
        <math|f> is <math|n>-times differentiable at <math|y> and the
        function\ 

        <\equation>
          <label|eq 16.133.6>D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
        </equation>

        is Fréchet differentiable at <math|x> with\ 

        <\equation>
          <label|eq 16.134.6>D<rsup|<around*|[|n+1|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>
        </equation>

        As <math|x\<in\>B<rsup|\<circ\>>> there exist a open set <math|U> so
        that <math|x\<in\>U\<subseteq\>B>. Define <math|W=U<big|cap>V> then
        <math|\<forall\>y\<in\>W> we have, as <math|W\<subseteq\>V>, that
        <math|f> is <math|n>-times differentiable at <math|y>, further by
        [theorem: <reference|topology open set and interior>]
        <math|y\<in\>W<rsup|0>=W\<subseteq\>V\<subseteq\>A>, hence as
        <math|n\<in\>S> it follows then that <math|f<rsub|\|W>> is
        <math|n>-times differentiable at <math|y> with

        <\equation>
          <label|eq 16.135.6>D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|W>=D<rsup|<around*|[|n|]>><rsub|y>f
        </equation>

        So we can define the function\ 

        <\equation>
          <label|eq 16.136.6>D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|W>:W\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|W><around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|W><below|=|<text|[eq:
          <reference|eq 16.135.6>]>>D<rsup|<around*|[|n|]>><rsub|y>f
        </equation>

        As <math|\<forall\>y\<in\>W> we have
        <math|D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|W><around*|(|y|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.136.6>]>>D<rsup|<around*|[|n|]>><rsub|y>f\<equallim\><rsub|<text|[eq:
        <reference|eq 16.133.6>]>>D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>>
        it follows that\ 

        <\equation>
          <label|eq 16.137.6>D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|W>=<around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><rsub|\|W>
        </equation>

        As <math|x\<in\>W<below|=|<text|[theorem: <reference|topology open
        set and interior>]>>W<rsup|\<circ\>>> and
        <math|D<rsup|<around*|[|n|]>><rsub|V>f> is Fréchet differentiable at
        <math|x> it follows from [theorem: <reference|diff differentiability
        is a local property>] that <math|<around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><rsub|\|W>>
        is differentiable at <math|x> and
        <math|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)><rsub|\|W>=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>>.
        Combining this result with [eq: <reference|eq 16.137.6>] proves that\ 

        <\equation>
          <label|eq 16.138.6>D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|W><text|
          is differentiable at >x<text| and
          >D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|W>f<rsub|\|W>|)>=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>
        </equation>

        By [definition: <reference|diff higher order differentiation>] and
        the fact that <math|x\<in\>W\<subseteq\>U\<subseteq\>B> it follows
        then that\ 

        <\equation*>
          f<rsub|\|B><text| is ><around*|(|n+1|)><text|-times differentiable
          at >x
        </equation*>

        with\ 

        <\equation*>
          D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|B>=D<rsub|x><around*|(|\<cal-W\>|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.138.6>]>>D<rsub|x><around*|(|\<cal-V\>|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.134.6>]>>D<rsup|<around*|[|n+1|]>><rsub|x>f
        </equation*>

        which proves that <math|n+1>.

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If there exists a
        >B\<subseteq\>A<text|, <math|x\<in\>B<rsup|0>> such that
        >f<rsub|\|B><text| is >n<text|-times differential at <math|x> then
        >f<text| is >n<text|-times differentiable with
        >D<rsup|<around*|[|n|]>><rsub|x>f=D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|B>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>Assume that there exist a
        <math|B\<subseteq\>A>, <math|x\<in\>B<rsup|\<circ\>>> such that
        <math|f<rsub|\|B>> is <math|1>-times differentiable at <math|x>.
        Using [definition: <reference|diff higher order differentiation>]
        <math|f<rsub|\|B>> is Fréchet differentiable at <math|x> with
        <math|D<rsup|<around*|[|1|]>><rsub|x>f<rsub|\|B>=D<rsub|x>f<rsub|\|B>>
        so that by [theorem: <reference|diff differentiability is a local
        property>] <math|f> is Fréchet differentiable at <math|x> with
        <math|D<rsub|x>f=D<rsub|x>f<rsub|\|B>>. Hence by [definition:
        <reference|diff higher order differentiation>] <math|f> is
        <math|1>-times Fréchet differentiable at <math|x> with

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|x>f<below|=|def>D<rsub|x>f=D<rsub|x>f<rsub|\|B><below|=|def>D<rsup|<around*|[|1|]>><rsub|x>f<rsub|\|B>
        </equation*>

        which proves that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|B\<subseteq\>A>, <math|x\<in\>B<rsup|\<circ\>>> such that
        <math|f<rsub|\|B>> is <math|<around*|(|n+1|)>>-times differentiable
        at <math|x>. By [definition: <reference|diff higher order
        differentiation>] there exist a open set <math|V> with
        <math|x\<in\>V\<subseteq\>B> such that <math|\<forall\>y\<in\>V> we
        have that <math|f<rsub|\|B>> is <math|n>-times differentiable at
        <math|y> and the function\ 

        <\equation*>
          \<cal-V\>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text| defined
          by >\<cal-V\><around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|B>
        </equation*>

        is Fréchet differentiable at <math|x> and\ 

        <\equation>
          <label|eq 16.139.6>D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|B>=D<rsub|x>\<cal-V\>
        </equation>

        As <math|n\<in\>\<cal-S\>> we have
        <math|\<forall\>y\<in\>V<rsup|\<circ\>><below|=|<text|[theorem:
        <reference|topology open set and interior>]>>V\<subseteq\>B\<subseteq\>A>
        that <math|f> is <math|n>-times differentiable at <math|y> with

        <\equation>
          <label|eq 16.140.6>D<rsup|<around*|[|n|]>><rsub|y>f=D<rsup|<around*|[|n|]>><rsub|y>f<rsub|\|B>
        </equation>

        Define

        <\equation*>
          \<cal-W\>:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text| by
          >\<cal-W\><around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
        </equation*>

        then <math|\<forall\>y\<in\>V> we have
        <math|\<cal-W\><around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f\<equallim\><rsub|<text|[eq:
        <reference|eq 16.140.6>]>>D<rsup|<around*|[|n|]>><rsub|x>f<rsub|\|B>=\<cal-V\><around*|(|y|)>>
        which proves that\ 

        <\equation*>
          \<cal-W\>=\<cal-V\>
        </equation*>

        Hence <math|\<cal-W\>> is Fréchet differentiable at <math|x> with
        <math|D<rsub|x>\<cal-W\>=D<rsub|x>\<cal-V\>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.139.6>]>>D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|B>>.
        By [definition: <reference|diff higher order differentiation>] it
        follows that <math|f> is <math|<around*|(|n+1|)>>-times
        differentiable with\ 

        <\equation*>
          D<rsup|<around*|[|n+1|]>><rsub|x>f=D<rsub|x>\<cal-W\>=D<rsup|<around*|[|n+1|]>><rsub|x>f<rsub|\|B>
        </equation*>

        So we have that\ 

        <\equation*>
          n+1\<in\>\<cal-S\>
        </equation*>
      </description>
    </description>

    \;
  </proof>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by induction so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f<text| is >n<text|-times
        differentiable at <math|x<text| then >f<text| has a >n<text|-the
        derivative at >x<text| and >f<rsup|<around*|(|n|)>><rsub|x>=D<rsup|<around*|[|n|]>><rsub|x>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|n=1>>If <math|f> is <math|1>-times differentiable at
        <math|x> then by definition <math|f> is Fréchet differentiable at
        <math|x> and <math|D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f>.
        Using [theorem: <reference|diff derivate and frechet differential>]
        <math|f> has a derivative at <math|x> and

        <\equation*>
          f<rprime|'><rsub|x>=D<rsub|x>f<around*|(|1|)>=D<rsub|x>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>=D<rsub|x><rsup|<around*|[|1|]>>f*<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>
        </equation*>

        Hence by definition <math|f> has a <math|1>-the derivative at
        <math|x> with <math|f<rsub|x><rsup|<around*|(|1|)>>=f<rsub|x><rprime|'>=D<rsub|x><rsup|<around*|[|1|]>>f*<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>
        proving that <math|1\<in\>S>.

        <item*|<math|1\<less\>n>>If <math|f> is
        <math|<around*|(|n+1|)>>-times differentiable at <math|x> then there
        exist a open set <math|V> with <math|x\<in\>V\<subseteq\>U> such that
        <math|\<forall\>y\<in\>V> <math|f> is <math|n>-times differentiable
        at <math|x> and the function\ 

        <\equation*>
          D<rsup|<around*|[|n|]>><rsub|V>f:V\<rightarrow\>L<rsub|n><around*|(|\<bbb-K\>;X|)><text|
          defined by >D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|n|]>>f
        </equation*>

        is Fréchet differentiable at <math|x>. Let
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the Fréchet
        differentiability at <math|x> [see definition: <reference|diff
        differentiability>] there exist a
        <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
        <math|\<forall\>h\<in\>V<rsub|x>> with
        <math|<around*|\||h|\|>\<less\>\<delta\>> we have\ 

        <\equation>
          <label|eq 16.52.189><around*|\<\|\|\>|D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|x+h|)>-D<rsup|<around*|[|n|]>><rsub|V>f<around*|(|x|)>-<around*|(|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|X;Y|)>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\||h|\|>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Further we have\ 

        <\equation>
          <label|eq 16.53.189>D<rsub|x><rsup|<around*|[|n+1|]>>f=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|V>f|)>\<in\>L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>,X|)>|)>=L<rsub|n+1><around*|(|\<bbb-K\>;X|)>
        </equation>

        As <math|n\<in\>S> we have, as <math|\<forall\>y\<in\>V> <math|f> is
        <math|n>-times differentiable at <math|y>, that

        <\equation>
          <label|eq 16.54.189>f<text| has a >n<text|-the derivative at
          >y<text| with >f<rsup|<around*|(|n|)>><rsub|y>=D<rsub|y><rsup|<rsub|><around*|[|n|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>
        </equation>

        So we can define the function

        <\equation*>
          f<rsup|<around*|(|n|)>>:V\<rightarrow\>X<text| by
          >f<rsup|<around*|(|n|)>><around*|(|y|)>=f<rsup|<around*|(|n|)>><rsub|y>
        </equation*>

        Then for <math|h\<in\>V<rsub|x>> with
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\><around*|(|D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|1|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-<around*|(|D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsub|x+h><rsup|<around*|(|n|)>>-f<rsub|x><rsup|<around*|(|n|)>>-<around*|(|D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.54.189>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsub|x+h><rsup|n>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsub|x><rsup|n>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsub|x+h><rsup|n>f-D<rsub|x><rsup|n>f-D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsub|x+h><rsup|n>f-D<rsub|x><rsup|n>f-D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\||1|\|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsub|x+h><rsup|n>f-D<rsub|x><rsup|n>f-D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.53.189>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.52.189>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
        </eqnarray*>

        hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>|h>-D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|h>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>>|<around*|\||h|\|>>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
        </eqnarray*>
      </description>

      proving that <math|f<rsup|<around*|(|n|)>>:V\<rightarrow\>Y> has a
      derivative at <math|x> with\ 

      <\equation*>
        <around*|(|f<rsup|<around*|(|n|)>>|)><rprime|'><rsub|x>=D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>
      </equation*>

      So by definition <math|f> has a <math|<around*|(|n+1|)>>-the derivative
      <math|f<rsup|<around*|(|n+1|)>><rsub|x>=<around*|(|f<rsup|<around*|(|n|)>>|)><rprime|'><rsub|x>=D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>
      proving that

      <\equation*>
        n+1\<in\>S
      </equation*>

      <item*|<math|\<Leftarrow\>>>We use induction to prove this, so define

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >f<text| has a >n<text|-the
        derivative at >x<text| then >f<text| is >n<text|-times
        >differentiable at x<text| with >f<rsub|x><rsup|<around*|(|n|)>>=D<rsub|x><rsup|<around*|[|n|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|f> has a <math|1>-the derivative at
        <math|x> then <math|f> has a derivative at <math|x>, hence by
        [theorem: <reference|diff derivate and frechet differential>]
        <math|f> is Fréchet differentiable at <math|x> [hence <math|1>-times
        differentiable at <math|x>] and

        <\equation*>
          f<rsub|x><rsup|<around*|(|1|)>>=f<rsub|x><rprime|'>=D<rsub|x>f<around*|(|1|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|<wide*|1:,\<ldots\>,:1|\<wide-underbrace\>><rsub|1>|)>
        </equation*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> has a
        <math|<around*|(|n+1|)>>-the derivative
        <math|f<rsup|<around*|(|n+1|)>><around*|(|x|)>> at <math|x> then, as
        <math|1\<less\>n+1>, there exist a open set <math|V> with
        <math|x\<in\>V\<subseteq\>U> such that <math|\<forall\>y\<in\>V>
        <math|f> has a <math|n>-the derivative
        <math|f<rsub|y><rsup|<around*|(|n|)>>> at <math|y> and that\ 

        <\equation*>
          f<rsup|<around*|(|n|)>>:V\<rightarrow\>Y<text| defined by
          >f<rsup|<around*|(|n|)>><around*|(|y|)>=f<rsup|<around*|(|n|)>><rsub|y>
        </equation*>

        has a derivative at <math|x> and\ 

        <\equation>
          <label|eq 16.55.189>f<rsup|<around*|(|n+1|)>><rsub|x>=<around*|(|f<rsup|<around*|(|n|)>>|)><rprime|'><rsub|x>
        </equation>

        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the above
        there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
        <math|\<forall\>h\<in\>V<rsub|x>> with
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have\ 

        <\equation>
          <label|eq 16.56.189><around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>|h>-f<rsup|<around*|(|n+1|)>><rsub|x>|\<\|\|\>>\<less\>\<varepsilon\>
        </equation>

        As <math|n\<in\>S> we have that <math|f> is <math|n>-times
        differentiable at every <math|y\<in\>V> and
        <rigid|<math|f<rsup|<around*|(|n|)>><rsub|y>=D<rsub|y><rsup|<around*|[|n|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>.
        So for\ 

        <\equation*>
          D<rsup|<around*|[|n|]>>f:V\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          defined by >D<rsup|<around*|[|n|]>>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
        </equation*>

        we have <math|\<forall\>y\<in\>V> that
        <math|D<rsup|<around*|[|n|]>>f<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>=f<rsup|<around*|(|n|)>><rsub|y>>.
        Hence

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><rsub|x>|h>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>|h>-f<rsup|<around*|(|n+1|)>><rsub|x>|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.56.189>]>>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        After multiplying by <math|<around*|\||h|\|>> and taking in account
        that

        <\equation*>
          <around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|x+0|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>-0\<cdot\>f<rsup|<around*|(|n+1|)>><rsub|x>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\||0|\|>
        </equation*>

        it follows that <math|\<forall\>h\<in\>V<rsub|x>> with
        <math|<around*|\||h|\|>\<less\>\<delta\>> we have

        <\equation>
          <label|eq 16.58.189><around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><rsub|x>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Define\ 

        <\equation*>
          L<rsub|x><rprime|'>:\<bbb-K\><rsup|n>\<rightarrow\>Y<text| by
          >L<rprime|'><rsub|x><around*|(|k|)>=f<rsup|<around*|(|n+1|)>><rsub|x>\<cdot\><big|prod><rsub|i=1><rsup|n>k<rsub|i><rsup|>
        </equation*>

        then\ 

        <\equation>
          <label|eq 16.59.189>L<rprime|'><rsub|x><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>=f<rsup|<around*|(|n+1|)>><around*|(|x|)>
        </equation>

        and by [example: <reference|continuity K^n>] we have that
        <math|L<rprime|'><rsub|x>\<in\>L<rsup|n><around*|(|\<bbb-K\>;X|)>>,
        define

        <\equation*>
          L<rsub|x>=\<cal-I\><rsub|n,\<bbb-K\>,X><rsup|-1><around*|(|L<rprime|'><rsub|x>|)>\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)><text|
          so that >h\<cdot\>L<rsub|x>\<in\>L<rsub|n><around*|(|\<bbb-K\>;X|)>
        </equation*>

        then we have by [theorem: <reference|diff linear to multilinear>]
        that

        <\equation>
          <label|eq 16.60.189>L<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>=L<rprime|'><rsub|x><around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>\<equallim\><rsub|<text|[eq:
          <reference|eq 16.59.189>]>>f<rsup|<around*|[|n+1|]>><rsub|x>
        </equation>

        Define

        <\equation>
          <label|eq 16.61.189>K<rsub|x>:\<bbb-K\>\<rightarrow\>L<rsup|n><around*|(|\<bbb-K\>;Y|)><text|
          by >K<rsub|x><around*|(|h|)>=h\<cdot\>L<rsub|x>
        </equation>

        then by [example: <reference|continuity norm L(x)=a.x>]\ 

        <\equation*>
          K<rsub|x>\<in\>L<around*|(|\<bbb-K\>,L<rsub|n><around*|(|\<bbb-K\>;X|)>|)>=L<rsub|n+1><around*|(|\<bbb-K\>;X|)>
        </equation*>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)>-K<rsub|x><around*|(|h|)>|\<\|\|\>><rsub|L<rsub|n><around*|(|\<bbb-K\>;X|)>>>|<cell|\<leqslant\><rsub|<text|[lemma:
          <reference|lemma 16.72.189>]]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)>-K<rsub|x><around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 16.54.187>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-K<rsub|x><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>|\<nobracket\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.61.189>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>L<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>>|\<nobracket\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.60.189>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|\<nobracket\>|D<rsup|<around*|[|n|]>>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|<around*|[|n|]>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsub|x><rsup|<around*|[|n+1|]>>|\<\|\|\>>|\<nobracket\>>>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.58.189>]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|D<rsup|<around*|[|n|]>>f> is Fréchet
        differentiable at <math|x> and that
        <math|D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>=K<rsub|x>>.
        Hence\ 

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable at
          >x<text| with >D<rsub|x><rsup|<around*|[|n+1|]>>f=K<rsub|x>
        </equation*>

        Further we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsub|x><rsup|<around*|[|n+1|]>>f<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>|<cell|=>|<cell|K<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|K<rsub|x><around*|(|1|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.61.189>]>>>|<cell|1\<cdot\>L<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.60.189>]>>>|<cell|f<rsub|x><rsup|<around*|(|n+1|)>>>>>>
        </eqnarray*>

        so that we have\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  \;

  <\theorem>
    <label|diff derivate and local minimum and maximum>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the normed
    space of real numbers, <math|A\<subseteq\>\<bbb-R\>>,
    <math|f:A\<rightarrow\>\<bbb-R\>> a function then we have

    <\enumerate>
      <item>If there exist a open set <math|V> with
      <math|x<rsub|0>\<in\>V\<subseteq\>A> such that
      <math|\<forall\>x\<in\>V> <math|f<rsup|<around*|(|2|)>><rsub|x>> exist
      and <math|f<rsup|<around*|(|2|)>><rsub|x>\<geqslant\>0> then
      <math|x<rsub|0>> is a local weak minimum.

      <item>If there exist a open set <math|V> with
      <math|x<rsub|0>\<in\>V\<subseteq\>A> such that
      <math|\<forall\>x\<in\>V> <math|f<rsup|<around*|(|2|)>><rsub|x>> exist
      and <math|f<rsup|<around*|(|2|)>><rsub|x>\<leqslant\>0> then
      <math|x<rsub|0>> is a local weak maximum.
    </enumerate>

    <\note>
      Let <math|x\<in\>V> then by [theorem: <reference|topology every element
      of a open set in a normed space is a limit point>] <math|x> is a limit
      point of <math|V>, hence <math|x\<in\>V<rprime|'>>. As
      <math|V\<subseteq\>A> we have by [theorem: <reference|topology limit
      points and subsets>] that <math|V<rprime|'>\<subseteq\>A<rprime|'>> so
      that <math|x> is a limit point of <math|A> which is needed for the
      derivatieve at <math|x> to even exist.
    </note>
  </theorem>

  <\proof>
    As <math|f> has a <math|2>-the derivative on <math|V> it follows from
    [theorem: <reference|diff higher order derivate on a open set (1)>] that
    <math|\<forall\>x\<in\>V> <math|f> has a <math|1>-the derivative at
    <math|x> and the function

    <\equation*>
      f<rprime|'>:V\<rightarrow\>X<text| defined by
      <math|f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|x>>>
    </equation*>

    has a derivative at every <math|x\<in\>V> and
    <math|f<rsup|<around*|(|2|)>><rsub|x>=<around*|(|f<rprime|'>|)><rprime|'><rsub|x>>.
    As <math|x<rsub|0>> is a extremum it follows from [theorem:
    <reference|diff derivate and local extremum>] that\ 

    <\equation>
      <label|eq 16.154.141>f<rprime|'><around*|(|x<rsub|0>|)>=0
    </equation>

    <\enumerate>
      <item>As <math|V> is open there exists a <math|\<delta\>\<gtr\>0> such
      that <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V>
      hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        <text|we have> f<rsup|<around*|(|2|)>><around*|(|x|)>\<geqslant\>0
      </equation*>

      Using [corollary: <reference|diff increasing decreasing function>] it
      follows that <math|f<rprime|'>> is increasing on
      <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>, hence we
      have\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>
        f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x<rsub|0>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.154.141>]>>0<text| and
        >\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[><text|
        >0\<equallim\><rsub|<text|[eq: <reference|eq
        16.154.141>]>>f<rprime|'><around*|(|x<rsub|0>|)>\<leqslant\>f<rprime|'><around*|(|x|)>
      </equation*>

      So using [corollary: <reference|diff increasing decreasing function>]
      <math|f> is decreasing on <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>\<Rightarrow\>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>>
      we have <math|<rigid|f<around*|(|x|)>\<geqslant\>f<around*|(|x<rsub|0>|)>>>
      and <math|f> is increasing on <math|<around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[>\<Rightarrow\>\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|o>+\<delta\>|[>>
      we have <math|f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>>.
      Hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        <text|we have> f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)><text|
        or >x<rsub|0><text| is a local weak minimum>.
      </equation*>

      <item>As <math|V> is open there exists a <math|\<delta\>\<gtr\>0> such
      that <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V>
      hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        <text|we have> f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0
      </equation*>

      So using [corollary: <reference|diff increasing decreasing function>]
      it follows that <math|f<rprime|'>> is decreasing on
      <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>, hence we
      have\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>
        0\<equallim\><rsub|<text|[eq: <reference|eq
        16.154.141>]>>f<rprime|'><around*|(|x<rsub|0>|)>\<leqslant\>f<rprime|'><around*|(|x|)><text|
        and >\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[><text|
        >f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x<rsub|0>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.154.141>]>>0
      </equation*>

      So using [corollary: <reference|diff increasing decreasing function>]
      <math|f> is increasing on <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>\<Rightarrow\>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>>
      we have <math|f<around*|(|x<rsub|0>|)>\<geqslant\>f<around*|(|x|)>> and
      <math|f> is decreasing on <math|<around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[>\<Rightarrow\>\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|o>+\<delta\>|[>>
      we have <math|f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>>.
      Hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        <text|we have> f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)><text|
        or >x<rsub|0><text| is a local weak maximum>.
      </equation*>
    </enumerate>
  </proof>

  Actually we can extend the above to a maximum and minimum on a interval
  instead of a local weak minimum or local weak maximum.

  TODO

  <\theorem>
    Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the
    normed space of real numbers, <math|A\<subseteq\>X>, <math|a,b\<in\>A>
    with <math|a\<leqslant\>b>, <math|<around*|[|a,b|]>\<subseteq\>A>,
    <math|f:A\<rightarrow\>\<bbb-R\>> a function such that <math|f> has a
    <math|2>-the derivative on <math|A<rsup|\<circ\>>> and that there exist a
    <math|x<rsub|0>\<in\><around*|[|a,b|]>> with
    <math|f<rprime|'><around*|(|x<rsub|0>|)>=0> then we have:

    <\enumerate>
      <item>If <math|\<forall\>x\<in\>U> <math|0\<leqslant\>f<rsup|<around*|(|2|)>><around*|(|x|)>>
      then <math|\<forall\>x\<in\><around*|[|a,b|]>>
      <math|f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>> [in other
      words <math|f<around*|(|x<rsub|0>|)>> is the minimum of
      <math|f<around*|(|<around*|[|a,b|]>|)>>.

      <item>If <math|\<forall\>x\<in\>U> <math|0\<leqslant\>f<rsup|<around*|(|2|)>><around*|(|x|)>>
      then <math|\<forall\>x\<in\><around*|[|a,b|]>>
      <math|f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>> [in other
      words <math|f<around*|(|x<rsub|0>|)>> is the maximum of
      <math|f<around*|(|<around*|[|a,b|]>|)>>.
    </enumerate>

    <\note>
      Let <math|x\<in\>V> then by [theorem: <reference|topology every element
      of a open set in a normed space is a limit point>] <math|x> is a limit
      point of <math|V>, hence <math|x\<in\>V<rprime|'>>. As
      <math|V\<subseteq\>A> we have by [theorem: <reference|topology limit
      points and subsets>] that <math|V<rprime|'>\<subseteq\>A<rprime|'>> so
      that <math|x> is a limit point of <math|A> which is needed for the
      derivatieve at <math|x> to even exist.
    </note>
  </theorem>

  <\proof>
    If <math|a=b> then <math|<around*|[|a,b|]>=<around*|{|x<rsub|0>|}>> and
    the theorem is trivial true. So we must only prove the theorem for the
    case <math|a\<less\>b>.

    <\enumerate>
      <item>From the previous theorem [theorem:<reference|diff derivate and
      local minimum and maximum>] it follows that <math|x<rsub|0>> is a local
      weak minimum of <math|f> hence there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.137.195>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        we have f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>
      </equation>

      Assume that there exist a <math|y\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> then
      <math|y\<neq\>x<rsub|0>>, so we have either:

      <\description>
        <item*|<math|y\<less\>x<rsub|0>>>Then
        <math|max<around*|(|x<rsub|0>-\<delta\>,y|)>\<less\>x<rsub|0>> so
        there exist a <math|z\<in\>\<bbb-R\>> such that
        <math|x<rsub|0>-\<delta\>,y\<less\>z\<less\>x<rsub|0>> hence by [eq:
        <reference|eq 16.137.195>] we have\ 

        <\equation>
          <label|eq 16.138.195>f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|z|)>
        </equation>

        Further using [theorem: <reference|diff second derivate convex
        concave>] <math|f> is convex on <math|<around*|[|y,x<rsub|0>|]>> so
        that

        <\equation>
          <label|eq 16.139.195>f<around*|(|z|)>\<leqslant\><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>
        </equation>

        As <math|0\<less\>x<rsub|0>-z> and by assumption
        <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> it follows
        that

        <\equation>
          <label|eq 16.140.195>f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>\<less\>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z+z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<gtr\><rsub|<text|[eq:
          <reference|eq 16.140.195>]>>>|<cell|<frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 16.139.195>]>>>|<cell|f<around*|(|z|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 16.138.195>]>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        leading to the contradiction <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|x<rsub|0>|)>>.

        <item*|<math|x<rsub|0>\<less\>y>>Then
        <math|x<rsub|0>\<less\>min<around*|(|y,x<rsub|0>+\<delta\>|)>> so
        there exist a <math|z\<in\>\<bbb-R\>> such that
        <math|x<rsub|0>\<less\>z\<less\>y,x<rsub|0>+\<delta\>> hence by [eq:
        <reference|eq 16.137.195>] we have\ 

        <\equation>
          <label|eq 16.141.195>f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|z|)>
        </equation>

        Further using [theorem: <reference|diff second derivate convex
        concave>] <math|f> is convex on <math|<around*|[|x<rsub|0>,y|]>> so
        that

        <\equation>
          <label|eq 16.142.195>f<around*|(|z|)>\<leqslant\><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>
        </equation>

        As <math|0\<less\>z-x<rsub|0>> and
        <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> [by
        assumption] we have

        <\equation>
          <label|eq 16.143.195>f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>\<less\>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z+z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|\<gtr\><rsub|<text|[eq:
          <reference|eq 16.143.195>]>>>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 16.142.195>]>>>|<cell|f*<around*|(|z|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
          <reference|eq 16.141.195>]>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        leading to the contradiction <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|x<rsub|0>|)>>.
      </description>

      As in all cases we have a contradiction the assumption must be false,
      so it follows that\ 

      <\equation*>
        \<forall\>x\<in\><around*|[|a,b|]><text| we have
        >f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>
      </equation*>

      <item>From the previous theorem [theorem:<reference|diff derivate and
      local minimum and maximum>] it follows that <math|x<rsub|0>> is a local
      weak maximum of <math|f> hence there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation>
        <label|eq 16.144.195>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        we have f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
      </equation>

      Assume that there exist a <math|y\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|y|)>> then we can not
      have <math|y=x<rsub|0>>, hence we must consider the following cases:

      <\description>
        <item*|<math|y\<less\>x<rsub|0>>>Then
        <math|max<around*|(|x<rsub|0>-\<delta\>,y|)>\<less\>x<rsub|0>> so
        there exist a <math|z\<in\>\<bbb-R\>> with
        <math|x<rsub|0>-\<delta\>,y\<less\>z\<less\>x<rsub|0>>. Applying [eq:
        <reference|eq 16.144.195>] gives\ 

        <\equation>
          <label|eq 16.145.195>f<around*|(|z|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
        </equation>

        Further using [theorem: <reference|diff second derivate convex
        concave>] <math|f> is concave on <math|<around*|[|y,x<rsub|0>|]>> so
        that

        <\equation>
          <label|eq 16.146.195><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>\<leqslant\>f<around*|(|z|)>
        </equation>

        As <math|0\<less\>x<rsub|0>-z> and by the assumption
        <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|y|)>> it follows
        that

        <\equation>
          <label|eq 16.147.195>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>\<less\>f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z+z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.147.195>]>>>|<cell|<frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
          <reference|eq 16.146.195>]>>>|<cell|f<around*|(|z|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
          <reference|eq 16.145.195>]>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        leading to the contradiction <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|x<rsub|0>|)>>.

        <item*|<math|x<rsub|0>\<less\>y>>Then
        <math|x<rsub|0>\<less\>min<around*|(|y,x<rsub|0>+\<delta\>|)>> so
        there exist a <math|z\<in\>\<bbb-R\>> with
        <math|x<rsub|0>\<less\>z\<less\>y,x<rsub|0>+\<delta\>>. Applying [eq:
        <reference|eq 16.144.195>] gives\ 

        <\equation>
          <label|eq 16.148.195>f<around*|(|z|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
        </equation>

        Further using [theorem: <reference|diff second derivate convex
        concave>] <math|f> is concave on <math|<around*|[|x<rsub|0>,y|]>> so
        that

        <\equation>
          <label|eq 16.149.195><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>\<leqslant\>f<around*|(|z|)>
        </equation>

        As <math|0\<less\>z-x<rsub|0>> and by assumption
        <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|y|)>> it follows
        that\ 

        <\equation>
          <label|eq 16.150.195>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>\<less\>f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z+z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 16.150.195>]>>>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|<around*|(|y-x<rsub|0>|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
          <reference|eq 16.149.195>]>>>|<cell|f<around*|(|z|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
          <reference|eq 16.148.195>]>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        leading to the contradiction <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|x<rsub|0><rsub|>|)>>.
      </description>

      As in all cases we have a contradiction the assumption must be false,
      so it follows that\ 

      <\equation*>
        \<forall\>x\<in\><around*|[|a,b|]><text| we have
        >f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
      </equation*>
    </enumerate>
  </proof>

  \;

  <\corollary>
    <label|diff f is of class C^n if D^1f u=is of class C^n-1>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, a open set <math|A\<subseteq\>X>, <math|x\<in\>A>
    and <math|f:A\<rightarrow\>Y> a function then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is >C<rsup|n><text| at
      >x>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|\<exists\>V<text|
      open with >x\<in\>V\<subseteq\>A<text| such that >f<text| is
      >1<text|-times differentiable on >V>|<cell|>>|<row|<cell|>|<cell|<text|and
      >D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
      defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f>|<cell|>>|<row|<cell|>|<cell|<text|is
      >C<rsup|<around*|[|n-1|]>><text| at >x>|<cell|>>>>
    </eqnarray*>
  </corollary>

  <\corollary>
    <label|diff f is of class C^n if D^1f u=is of class C^n-1 (1)>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be two normed spaces, <math|A\<subseteq\>X>, <math|V> a open set in
    <math|X> with <math|x\<in\>V\<subseteq\>A> and <math|f:A\<rightarrow\>Y>
    a function then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f<text| is >C<rsup|n><text| on
      >V>|<cell|>>|<row|<cell|>|<cell|\<Updownarrow\>>|<cell|>>|<row|<cell|>|<cell|f<text|
      is >1<text|-times differentiable on >V<text| and
      >>|<cell|>>|<row|<cell|>|<cell|D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
      defined by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f<text|
      is >C<rsup|n-1><text| on >V>|<cell|>>>>
    </eqnarray*>
  </corollary>

  ff

  <\theorem>
    <label|diff higher order differentiation classes>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>
    and <math|f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    a function then we have\ 

    <\equation*>
      f<text| is ><text|>C<rsup|n><text| at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,k|}><text| we have
      >\<pi\><rsub|i>\<circ\>f<text| is >C<rsup|n><text| at >x
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [example: <reference|continuity norm
      of projection operator>] it follows that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<in\>L<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,Y<rsub|i>|)>>.
      So, as <math|f> is <math|C<rsup|n>> at <math|x>, it follows from
      [lemma: <reference|lemma 16.97.193>] that
      <math|\<pi\><rsub|1>\<circ\>f> is <math|C<rsup|n>> at <math|x>.

      <item*|<math|\<Leftarrow\>>>If <math|n=0> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|0>> at <math|x> so that
      <math|\<pi\><rsub|i>\<circ\>f> is continuous at <math|x>, using
      \ [theorem: <reference|continuity product and continuous functions>] it
      follows that <math|f> is continuous at <math|x> proving that <math|f>
      is <math|C<rsup|0>> at <math|x>. Hence we just have to prove the
      remaining case where <math|n\<in\>\<bbb-N\>>. For this we will use
      induction so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        \ <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
        is a normed space, ><around*|{|<around*|\<langle\>|Y<rsub|i>|\<rangle\>>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        a family of normed spaces, <math|A\<subseteq\>X<text|,
        <math|x\<in\>A> and >f:A\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|j><text|
        a function such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        >\<pi\><rsub|i>\<circ\>f<text| is >C<rsup|n><text| at <math|x> then
        >f<text| is >C<rsup|n><text| at >x>}>|\<nobracket\>>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>Using [lemma: <reference|lemma 16.139.181>]
        there exist a open set <math|V> with <math|x\<in\>V\<subseteq\>U>
        such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable on
        <math|V> [hence Fréchet differentiable on <math|V>] and the function
        \ 

        <\equation>
          <label|eq 16.128.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation>

        is <math|C<rsup|0>> at <math|x> hence continuous at <math|x>. Let
        <math|y\<in\>V> then using [theorem <reference|diff differential of a
        vector valued function>] it follows that <math|f> is Fréchet
        differentiable at <math|f> [hence <math|f> is <math|1>-times
        differentiable at <math|y>] and <math|<rigid|D<rsup|><rsub|y>f=<around*|(|D<rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><around*|(|\<pi\><rsub|k>\<circ\>f|)><rsup|>|)><rsub|\<ast\>>>>
        allowing us to define the function

        <\equation>
          <label|eq 16.129.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|y>|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f\<equallim\><rsub|def>D<rsub|y>f
        </equation>

        that satisfies\ 

        <\equation>
          <label|eq 16.130.181>\<forall\>y\<in\>V<text|
          >D<rsup|<around*|[|1|]>><rsup|><rsub|y>f=<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><rsup|>|)><rsub|\<ast\>>
        </equation>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have for
        <math|y\<in\>V> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.128.181>]>>>|<cell|>>|<row|<cell|\<cal-K\><around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.130.181>]>>>|<cell|>>|<row|<cell|D<rsub|y><rsup|<around*|[|1|]>>f>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.129.181>]>>>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.131.181>D<rsup|<around*|[|1|]>><rsub|V>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
        <math|\<forall\>y\<in\>V> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation*>

        As <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is continuous at <math|x> it follows that
        <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous at <math|x>, hence using [theorem:
        <reference|continuity product and continuous functions>]
        <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous at <math|x>. As <math|\<cal-K\>> is continuous [see
        lemma: <reference|lemma 16.98.194>] we conclude from [eq:
        <reference|eq 16.131.181>] that <math|D<rsup|<around*|[|1|]>><rsub|V>f>
        is continuous at <math|x>. So <math|f> is <math|C<rsup|1>> at
        <math|x>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then as
        <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|n+1>> at <math|x> it
        follows from [lemma: <reference|lemma 16.139.181>] that there exist a
        open set <math|V> with <math|x\<in\>V\<subseteq\>U> such that
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable on
        <math|V> and the function\ 

        <\equation>
          <label|eq 16.132.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|i>\<circ\>f|)><text|
          is >C<rsup|n><text| at >x
        </equation>

        Consider now the function [see definition: <reference|diff vector
        functions>] \ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:V\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>
        </equation*>

        defined by\ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|z|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|z|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|z|)>|)>
        </equation*>

        then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>> that
        <math|\<forall\>z\<in\>V>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i>*<around*|(|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>,\<ldots\>,<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation*>

        So, as <math|D<rsup|<around*|[|1|]>><rsub|C><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is <math|C<rsup|n>> at <math|x>, we have that
        <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x>. As <math|n\<in\>S> it follows that\ 

        <\equation>
          <label|eq 16.133.181><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
          is >C<rsup|n><text| at >x
        </equation>

        Let <math|y\<in\>V> then as <math|\<pi\><rsub|i>\<circ\>f> is
        <math|1>-time differentiable at <math|y> it is Fréchet differentiable
        at <math|y> and it follows from [theorem: <reference|diff
        differential of a vector valued function>] that <math|f> if Fréchet
        differentiable at <math|y> with <math|<rigid|D<rsub|y>f=<around*|(|D<rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>>.
        Hence we have that <math|f> is <math|1>-times differentiable on
        <math|V> and for the function\ 

        <\equation>
          <label|eq 16.134.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
          where >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation>

        we have\ 

        <\equation>
          <label|eq 16.135.181>\<forall\>y\<in\>V<text| that
          >D<rsup|<around*|[|1|]>><rsub|Y>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f=<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have that for
        <math|y\<in\>V> \ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)><rsub|\<ast\>>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.132.181>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.135.181>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsub|V><rsup|<around*|[|1|]>>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.136.181>D<rsup|<around*|[|1|]>><rsub|V>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        As by [eq: <reference|eq 16.133.181>]
        <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x> we have by [lemmas: <reference|lemma
        16.97.193>, <reference|lemma 16.98.194>] that
        <math|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x>, hence
        <math|D<rsup|<around*|[|1|]>><rsub|V>f> is
        <math|C<rsup|<around*|[|n|]>>> at <math|x>. Applying then [theorem:
        <reference|diff f is of class C^n if D^1f u=is of class C^n-1>]
        proves that <math|f> is <math|C<rsup|n+1>> at <math|x>, hence\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|diff higher order differentiation classes>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|A\<subseteq\>X>, <math|x\<in\>A>
    and <math|f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    a function then we have\ 

    <\equation*>
      f<text| is ><text|>C<rsup|n><text| at >x
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,k|}><text| we have
      >\<pi\><rsub|i>\<circ\>f<text| is >C<rsup|n><text| at >x
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [example: <reference|continuity norm
      of projection operator>] it follows that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<in\>L<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,Y<rsub|i>|)>>.
      So, as <math|f> is <math|C<rsup|n>> at <math|x>, it follows from
      [lemma: <reference|lemma 16.97.193>] that
      <math|\<pi\><rsub|1>\<circ\>f> is <math|C<rsup|n>> at <math|x>.

      <item*|<math|\<Leftarrow\>>>If <math|n=0> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|0>> at <math|x> so that
      <math|\<pi\><rsub|i>\<circ\>f> is continuous at <math|x>, using
      \ [theorem: <reference|continuity product and continuous functions>] it
      follows that <math|f> is continuous at <math|x> proving that <math|f>
      is <math|C<rsup|0>> at <math|x>. Hence we just have to prove the
      remaining case where <math|n\<in\>\<bbb-N\>>. For this we will use
      induction so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        \ <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
        is a normed space, ><around*|{|<around*|\<langle\>|Y<rsub|i>|\<rangle\>>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        a family of normed spaces, <math|A\<subseteq\>X<text|,
        <math|x\<in\>A> and >f:A\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|j><text|
        a function such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        >\<pi\><rsub|i>\<circ\>f<text| is >C<rsup|n><text| at <math|x> then
        >f<text| is >C<rsup|n><text| at >x>}>|\<nobracket\>>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>Using [lemma: <reference|lemma 16.139.181>]
        there exist a open set <math|V> with <math|x\<in\>V\<subseteq\>U>
        such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable on
        <math|V> [hence Fréchet differentiable on <math|V>] and the function
        \ 

        <\equation>
          <label|eq 16.128.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation>

        is <math|C<rsup|0>> at <math|x> hence continuous at <math|x>. Let
        <math|y\<in\>V> then using [theorem <reference|diff differential of a
        vector valued function>] it follows that <math|f> is Fréchet
        differentiable at <math|f> [hence <math|f> is <math|1>-times
        differentiable at <math|y>] and <math|<rigid|D<rsup|><rsub|y>f=<around*|(|D<rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><around*|(|\<pi\><rsub|k>\<circ\>f|)><rsup|>|)><rsub|\<ast\>>>>
        allowing us to define the function

        <\equation>
          <label|eq 16.129.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|y>|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f\<equallim\><rsub|def>D<rsub|y>f
        </equation>

        that satisfies\ 

        <\equation>
          <label|eq 16.130.181>\<forall\>y\<in\>V<text|
          >D<rsup|<around*|[|1|]>><rsup|><rsub|y>f=<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><rsup|>|)><rsub|\<ast\>>
        </equation>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have for
        <math|y\<in\>V> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.128.181>]>>>|<cell|>>|<row|<cell|\<cal-K\><around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.130.181>]>>>|<cell|>>|<row|<cell|D<rsub|y><rsup|<around*|[|1|]>>f>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.129.181>]>>>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.131.181>D<rsup|<around*|[|1|]>><rsub|V>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
        <math|\<forall\>y\<in\>V> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation*>

        As <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is continuous at <math|x> it follows that
        <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous at <math|x>, hence using [theorem:
        <reference|continuity product and continuous functions>]
        <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous at <math|x>. As <math|\<cal-K\>> is continuous [see
        lemma: <reference|lemma 16.98.194>] we conclude from [eq:
        <reference|eq 16.131.181>] that <math|D<rsup|<around*|[|1|]>><rsub|V>f>
        is continuous at <math|x>. So <math|f> is <math|C<rsup|1>> at
        <math|x>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then as
        <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|n+1>> at <math|x> it
        follows from [lemma: <reference|lemma 16.139.181>] that there exist a
        open set <math|V> with <math|x\<in\>V\<subseteq\>U> such that
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable on
        <math|V> and the function\ 

        <\equation>
          <label|eq 16.132.181>D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|i>\<circ\>f|)><text|
          is >C<rsup|n><text| at >x
        </equation>

        Consider now the function [see definition: <reference|diff vector
        functions>] \ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:V\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>
        </equation*>

        defined by\ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|z|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|z|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|z|)>|)>
        </equation*>

        then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>> that
        <math|\<forall\>z\<in\>V>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i>*<around*|(|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>,\<ldots\>,<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|\<nobracket\>>|)><around*|(|z|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation*>

        So, as <math|D<rsup|<around*|[|1|]>><rsub|C><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is <math|C<rsup|n>> at <math|x>, we have that
        <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x>. As <math|n\<in\>S> it follows that\ 

        <\equation>
          <label|eq 16.133.181><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
          is >C<rsup|n><text| at >x
        </equation>

        Let <math|y\<in\>V> then as <math|\<pi\><rsub|i>\<circ\>f> is
        <math|1>-time differentiable at <math|y> it is Fréchet differentiable
        at <math|y> and it follows from [theorem: <reference|diff
        differential of a vector valued function>] that <math|f> if Fréchet
        differentiable at <math|y> with <math|<rigid|D<rsub|y>f=<around*|(|D<rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>>.
        Hence we have that <math|f> is <math|1>-times differentiable on
        <math|V> and for the function\ 

        <\equation>
          <label|eq 16.134.181>D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
          where >D<rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation>

        we have\ 

        <\equation>
          <label|eq 16.135.181>\<forall\>y\<in\>V<text| that
          >D<rsup|<around*|[|1|]>><rsub|Y>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f=<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have that for
        <math|y\<in\>V> \ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)><rsub|\<ast\>>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.132.181>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.135.181>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsub|V><rsup|<around*|[|1|]>>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.136.181>D<rsup|<around*|[|1|]>><rsub|V>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        As by [eq: <reference|eq 16.133.181>]
        <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x> we have by [lemmas: <reference|lemma
        16.97.193>, <reference|lemma 16.98.194>] that
        <math|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> at <math|x>, hence
        <math|D<rsup|<around*|[|1|]>><rsub|V>f> is
        <math|C<rsup|<around*|[|n|]>>> at <math|x>. Applying then [theorem:
        <reference|diff f is of class C^n if D^1f u=is of class C^n-1>]
        proves that <math|f> is <math|C<rsup|n+1>> at <math|x>, hence\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\proof>
    If <math|n=0> then, as <math|f> is <math|C<rsup|0>> at <math|x> and
    <math|g> is <math|C<rsup|0>> at <math|f<around*|(|x|)>>, we have that
    <math|f> is continuous at <math|x> and <math|g> is continuous at
    <math|f<around*|(|x|)>>. Using \ [theorem: <reference|continuity
    composition>] it follows that <math|g\<circ\>f> is continuous at
    <math|x>, hence <math|C<rsup|0>> at <math|x>. This proves the theorem for
    the case <math|n=0> and we are left with proving the theorem for the case
    <math|n\<in\>\<bbb-N\>>. We do this by induction so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
      are normed spaces, ><text|<math|A\<subseteq\>X>,> x\<in\>A<text|,
      >B\<subseteq\>Y<text|, >f:A\<rightarrow\>Y<text|,
      ><rigid|g:B\<rightarrow\>Z><text| such that
      \ >f<around*|(|A|)>\<subseteq\>B<text|, >f<text| is >C<rsup|n><text| at
      >x<text| and g is >C<rsup|n><text| at >f<around*|(|x|)><text| then
      >g\<circ\>f<text| is >C<rsup|n><text| at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>As <math|f> is <math|C<rsup|1>> at <math|x>
      there exist a open set <math|W<rsub|1>> with
      <math|x\<in\>W<rsub|1>\<subseteq\>A> such that <math|f> is
      <math|1>-times differentiable on <math|W<rsub|1>> [hence Fréchet
      differentiable on <math|W<rsub|1>>] and the function\ 

      <\equation>
        <label|eq 16.142.181>D<rsup|<around*|[|1|]>><rsub|W>f:W<rsub|1>\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
        is continuous at >x
      </equation>

      As <math|g> is <math|C<rsup|1>> at <math|f<around*|(|x|)>> there exist
      a open set <math|W<rsub|2>> with <math|f<around*|(|x|)>\<in\>W<rsub|2>\<subseteq\>B>
      such that <math|g> is <math|1>-times differentiable on <math|W<rsub|2>>
      [hence Fréchet differentiable on <math|W<rsub|2>>] and the function\ 

      <\equation>
        <label|eq 16.143.181>D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g:W<rsub|2>\<rightarrow\>L<around*|(|Y,Z|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>g<text|
        is continuous at >f<around*|(|x|)>
      </equation>

      As <math|f> is <math|C<rsup|1>> at <math|x> we have by [theorem:
      <reference|diff C^n and C^m>] that <math|f> is <math|C<rsup|0>> at
      <math|x> hence

      <\equation>
        <label|eq 16.144.181.1>f<text| is continuous at <math|x>>
      </equation>

      So there exist a open set <math|W<rsub|3>> such that
      <math|x\<in\>W<rsub|3>> and <math|f<around*|(|W<rsub|3>|)>\<subseteq\>W<rsub|2>>.
      Take <math|W=W<rsub|1><big|cap>W<rsub|3>> then <math|x\<in\>W> and
      <math|f<around*|(|W|)>\<subseteq\>W<rsub|2>>. \ Let <math|y\<in\>W>
      then, as <math|f> is Fréchet differentiable at <math|y> [because
      <math|W\<subseteq\>W<rsub|1>>] and <math|g> is Fréchet differentiable
      at <math|f<around*|(|y|)>> [because
      <math|f<around*|(|y|)>\<in\>W<rsub|2>>], it follows from [theorem:
      <reference|diff chain rule (1)>] that <math|g\<circ\>f> is Fréchet
      differentiable at <math|y> with <math|D<rsub|y><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f>.
      So <math|g\<circ\>f> is Fréchet differentiable on <math|W> hence
      <math|1>-times differentiable on <math|W> and for the function\ 

      <\equation>
        <label|eq 16.144.181>D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>:W\<rightarrow\>L<around*|(|X,Z|)><text|
        defined by <math|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|y><around*|(|g\<circ\>f|)>>>
      </equation>

      we have\ 

      <\equation>
        <label|eq 16.145.181>\<forall\>y\<in\>W<text| that
        >D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f
      </equation>

      Define the function\ 

      <\equation*>
        h:W\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
        by >h<around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>
      </equation*>

      then we have for <math|y\<in\>W> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.143.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|\|W<rsub|2>>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|f<rsub|\|W><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W>|)><around*|(|y|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.142.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f<around*|(|y|)>>>|<row|<cell|>|<cell|<below|\<equallim\>|y\<in\>W\<subseteq\>W<rsub|1>>>|<cell|<around*|(|D<rsup|<around*|[|1|)>><rsub|W<rsub|1>>f|)><rsub|\|W><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>h=<around*|\<nobracket\>|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W>|)>\<equallim\><rsub|><text|
        and >\<pi\><rsub|2>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f|)><rsub|\|W>
      </equation*>

      As <math|f> is continuous at <math|x> [see eq: <reference|eq
      16.144.181.1>] it follows from [theorem: <reference|continuity and
      subspace topology (5)>] that <math|f<rsub|\|W>> is continuous at
      <math|x>, further using [eq: <reference|eq 16.143.181>]
      <math|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g> is continuous at
      <math|f<around*|(|x|)>> so it follows from [theorem:
      <reference|continuity composition>] that
      <math|><math|<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f<rsub|\|W>>
      is continuous at <math|x>, hence <math|\<pi\><rsub|1>\<circ\>h> is
      continuous at <math|x>. Further by [eq: <reference|eq 16.142.181>]
      <math|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f> is continuous at
      <math|x> hence <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f|)><rsub|\|W>>
      is continuous at <math|x> proving that <math|\<pi\><rsub|2>\<circ\>h>
      is continuous at <math|x>. So using [theorem: <reference|continuity
      product and continuous functions>] we conclude that\ 

      <\equation>
        <label|eq 16.147.181>h<text| is continuous at >x
      </equation>

      Let <math|y\<in\>W> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g\<circ\>D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.145.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>|)><rsub|\|W><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation*>
        <around*|(|\<circ\>|)>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>|)><rsub|\|W>
      </equation*>

      <\equation*>
        \;
      </equation*>

      By [lemma: <reference|lemma 16.101.194>] <math|<around*|(|\<circ\>|)>>
      is continuous and by [eq: <reference|eq 16.147.181>] <math|h> is
      continuous at <math|x> so that <math|<around*|(|\<circ\>|)>\<circ\>h>
      is continuous at <math|x> or using the above that
      <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>|)><rsub|\|W>>
      is continuous at <math|x>. Applying then [theorem:
      <reference|continuity and subspace topology (6)>] it follows that
      <math|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>> is
      continuous at <math|x>. Hence <math|g\<circ\>f> is <math|C<rsup|1>> at
      <math|x> which proves that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|f> is
      <math|C<rsup|n+1>> at <math|x> it follows from [theorem:
      <reference|diff f is of class C^n if D^1f u=is of class C^n-1>] that
      there exist a open set <math|W<rsub|1>\<subseteq\>A> such that <math|f>
      is <math|1>-times differentiable on <math|W<rsub|1>> [hence Fréchet
      differentiable on <math|W<rsub|1>>] and\ 

      <\equation>
        <label|eq 16.148.181>D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f:W<rsub|1>\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f<text|
        is >C<rsup|n><text| at >x
      </equation>

      Likewise as <math|g> is <math|C<rsup|n+1>> at <math|f<around*|(|x|)>>
      it follows that there exist a open set <math|W<rsub|2>> with
      <math|f<around*|(|x|)>\<in\>W<rsub|2>\<subseteq\>B> such that <math|g>
      is <math|1>-times differentiable on <math|W<rsub|2>> and\ 

      <\equation>
        <label|eq 16.149.181>D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g:W<rsub|2>\<rightarrow\>L<around*|(|Y,Z|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>g<text|
        is >C<rsup|n><text| at >x
      </equation>

      As <math|f> is <math|C<rsup|n+1>> at <math|x> <math|f> is
      <math|C<rsup|0>> at <math|x> [see theorem: <reference|diff C^n and
      C^m>] hence\ 

      <\equation>
        <label|eq 16.150.181>f<text| is continuous at >x
      </equation>

      So there exist a open set <math|W<rsub|3>> with <math|x\<in\>W<rsub|3>>
      such that <math|f<around*|(|W<rsub|3>|)>\<subseteq\>W<rsub|2>>. Take
      <math|W=W<rsub|3><big|cap>W<rsub|1>> then <math|x\<in\>W<text| and
      >f<around*|(|W|)>\<subseteq\>W<rsub|2>>. Let <math|y\<in\>W> then, as
      <math|f> is Fréchet differentiable at <math|y> [because
      <math|W\<subseteq\>W<rsub|1>>] and <math|g> is Fréchet differentiable
      at <math|f<around*|(|y|)>> [because
      <math|f<around*|(|y|)>\<in\>f<around*|(|W|)>\<subseteq\>W<rsub|2>>], it
      follows from [theorem: <reference|diff chain rule (1)>] that
      <math|g\<circ\>f> is Fréchet differentiable at <math|y> with
      <math|D<rsub|y><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f>.
      So <math|g\<circ\>f> is <math|1>-times differentiable on <math|W> and
      for the function\ 

      <\equation>
        <label|eq 16.151.181>D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>:W\<rightarrow\>L<around*|(|X,Z|)><text|
        defined by <math|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|y><around*|(|g\<circ\>f|)>>>
      </equation>

      we have\ 

      <\equation>
        <label|eq 16.152.181>\<forall\>y\<in\>W<text| that
        >D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f
      </equation>

      Define\ 

      <\equation*>
        h:W\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
        by >h<around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>
      </equation*>

      then we have for <math|y\<in\>W> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:<space|1em><reference|eq
        16.149.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g<around*|(|f<rsub|\|W><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W>|)><around*|(|y|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsup|<around*|[|1|]>><rsub|y>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|y>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.148.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f<around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f|)><rsub|\|W><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation>
        <around*|(|\<pi\><rsub|1>\<circ\>h|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W><text|
        and >\<pi\><rsub|2>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f|)><rsub|\|W>
      </equation>

      As <math|f> is <math|C<rsup|n+1>> at <math|x> we have by [theorem:
      <reference|diff C^n and C^m>] that<math|f> is <math|C<rsup|n>> at
      <math|x>. Next using [theorem: <reference|diff restriction of a
      function of class C^n>] it follows that <math|f<rsub|\|W>> is
      <math|C<rsup|n>> at <math|x>. Further by \ [eq: <reference|eq
      16.149.181>] <math|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g> is
      <math|C<rsup|n>> at <math|x>. Hence using the fact that <math|n\<in\>S>
      we conclude that <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|W<rsub|2>>g|)>\<circ\>f<rsub|\|W><text|
      is >C<rsup|n> at x> proving that\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>h<text| is >C<rsup|n><text| at >x
      </equation*>

      By [eq: <reference|eq 16.148.181>] <math|D<rsup|<around*|[|1|]>><rsub|W<rsub|1>>f>
      is <math|C<rsup|n>> at <math|x> therefore, using [theorem:
      <reference|diff restriction of a function of class C^n>] it follows
      that <math|<around*|(|D<rsup|<around*|[|1|]>>f|)><rsub|\|W>> is
      <math|C<rsup|n>> at <math|x> which proves that\ 

      <\equation*>
        \<pi\><rsub|2>\<circ\>h<text| is <math|C<rsup|n>> at <math|x>>
      </equation*>

      Using the above together with [lemma: <reference|diff higher order
      differentiation classes>] it follows that\ 

      <\equation>
        <label|eq 16.154.181>h<text| is >C<rsup|n><text| at >x
      </equation>

      Let <math|y\<in\>W> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|<around*|(|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g<rsub|>\<circ\>D<rsub|y><rsup|<around*|[|1|]>>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.152.181>]>>>|<cell|D<rsub|y><rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.151.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>|)><rsub|\|W><around*|(|y|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><rsub|\|W>=<around*|(|\<circ\>|)>\<circ\>h
      </equation*>

      Now using [lemma: <reference|lemma 16.101.194>]
      <math|<around*|(|\<circ\>|)>> is <math|C<rsup|n>> on
      <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>> and by [eq:
      <reference|eq 16.154.181>] <math|h> is <math|C<rsup|n>> at <math|x>.
      Using <math|n\<in\>S> again it follows that
      <math|<around*|(|\<circ\>|)>\<circ\>h> is <math|C<rsup|n>> at <math|x>,
      hence <math|<around*|(|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>|)><rsub|\|W>>
      is <math|C<rsup|n>> at <math|x>. Applying then [theorem:
      <reference|diff restriction of a function of class C^n>] proves that
      <math|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>> is
      <math|C<rsup|n>> at <math|x> which by [theorem: <reference|diff f is of
      class C^n if D^1f u=is of class C^n-1>] proves that <math|g\<circ\>f>
      is <math|C<rsup|n+1>> at <math|x> so that\ 

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.135.200>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed vector space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    the normed spaces of real numbers, <math|x,y\<in\>X> and <math|a,b> with
    <math|a\<less\>b> then we have that the function

    <\equation*>
      \<sigma\>:<around*|[|a,b|]>\<rightarrow\>X<text| defined by
      >\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>
    </equation*>

    is <math|C<rsup|1>> on <math|<around*|[|a,b|]>>. Further
    <math|\<forall\>t\<in\><around*|[|a,b|]>>
    <math|D<rsub|t>\<sigma\>\<in\>L<around*|(|\<bbb-R\>,X|)>> is defined by

    <\equation*>
      D<rsub|t>\<sigma\>:\<bbb-R\>\<rightarrow\>X<text| where
      <math|D<rsub|t>\<sigma\><around*|(|h|)>=h\<cdot\><around*|(|y-x|)>>>
    </equation*>

    so that by [theorem: <reference|diff derivate and frechet differential>]
    <math|\<sigma\><rprime|'><rsub|t>> exist and

    <\equation*>
      \<sigma\><rprime|'><rsub|t>\<equallim\><rsub|<text|[theorem:
      <reference|diff derivate and frechet
      differential>]>>D<rsub|t>\<sigma\><around*|(|1|)>=y-x
    </equation*>
  </lemma>

  <\proof>
    First by [theorem: <reference|topology every element of a generalized
    interval is a limit point>] we have <math|\<forall\>t\<in\><around*|[|a,b|]>>
    that <math|t> is a limit point of <math|<around*|[|a,b|]>>, so, using
    [theorem: <reference|diff tangent cone and limit point>],
    <math|S<rsub|<around*|[|a,b|]>><around*|(|t|)>=\<bbb-R\>>. In other words

    <\equation>
      <label|eq 16.277.12>\<forall\>t\<in\>\<bbb-R\><text| we have
      >S<rsub|<around*|[|a,b|]>><around*|(|t|)>=\<bbb-R\>
    </equation>

    Define

    <\equation*>
      L:\<bbb-R\>\<rightarrow\>X<text| by
      >L<around*|(|h|)>=h\<cdot\><around*|(|y-x|)>
    </equation*>

    then by [theorem: <reference|continuity norm L(x)=a.x>]
    <math|L\<in\>L<around*|(|X,\<bbb-R\>|)>>. Let
    <math|t\<in\><around*|[|a,b|]>>, <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    then if <math|h\<in\>\<bbb-R\><rsub|x>> with
    <math|<around*|\||h|\|>\<less\>1> we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<sigma\><around*|(|t+h|)>-\<sigma\><around*|(|t|)>-L<around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|x+<around*|(|t+h|)>\<cdot\><around*|(|y-x|)>-<around*|(|x+t\<cdot\><around*|(|y-x|)>|)>-h\<cdot\><around*|(|y-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h\<cdot\><around*|(|y-x|)>-h\<cdot\><around*|(|y-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>>>>
    </eqnarray*>

    proving that <math|\<sigma\>> is Fréchet differentiable at <math|t> with

    <\equation*>
      D<rsup|<around*|[|1|]>><rsub|t>\<sigma\>=D<rsub|t>\<sigma\>=L<rsub|\|S<rsub|<around*|[|a,b|]>><around*|(|t|)>>\<equallim\><rsub|<text|[eq:<reference|eq
      16.277.12>]>>L
    </equation*>

    Hence we have that <math|\<sigma\>> is <math|1>-times differentiable on
    <math|\<bbb-R\>> and the function\ 

    <\equation*>
      D<rsup|<around*|[|1|]>> \<sigma\>:<around*|[|a,b|]>\<rightarrow\>L<around*|(|X,\<bbb-R\>|)><text|
      defined by >D<rsup|<around*|[|1|]>>\<sigma\><around*|(|t|)>=D<rsup|<around*|[|1|]>><rsub|t>\<sigma\>=L
    </equation*>

    is equal to the constant function <math|C<rsub|L>>. As by [theorem:
    <reference|continuity constant function>] <math|C<rsub|L>> is continuous
    it follows that <math|D<rsup|<around*|[|1|]>>\<sigma\>> is continuous,
    hence <math|\<sigma\>> is <math|C<rsup|1>> on <math|<around*|[|a,b|]>>.
  </proof>

  <\proof>
    Take <math|x,y\<in\>C>. Define the function\ 

    <\equation*>
      \<sigma\>:<around*|[|0,1|]>\<rightarrow\>X<text| by
      >\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>
    </equation*>

    then by [lemma: <reference|lemma 16.135.200>]\ 

    <\equation>
      <label|eq 16.284.12>\<sigma\><text| is >C<rsup|1><text| on
      ><around*|[|0,1|]><text| and >\<forall\>t\<in\><around*|[|0,1|]><text|
      >D<rsub|t>\<sigma\>=L<text| where >L:\<bbb-R\>\<rightarrow\>X<text| is
      defined by >L<around*|(|h|)>=h\<cdot\>*<around*|(|y-x|)>
    </equation>

    Let <math|t\<in\><around*|[|0,1|]>> then as <math|x,y\<in\>C> and
    <math|C> is convex we have that <math|\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>\<in\>C>
    so that\ 

    <\equation>
      <label|eq 16.285.12>\<sigma\><around*|(|<around*|[|0,1|]>|)>\<subseteq\>C\<subseteq\>A
    </equation>

    As <math|f> is <math|C<rsup|1>> on <math|C> and <math|\<sigma\>> is
    <math|C<rsup|1>> on <math|<around*|[|0,1|]>> we have by [theorem:
    <reference|diff chain rule higher order class>] that\ 

    <\equation>
      <label|eq 16.286.12>f\<circ\>\<sigma\>:<around*|[|0,1|]>\<rightarrow\>Y<text|
      is >C<rsup|1><text| on ><around*|[|0,1|]>
    </equation>

    and <math|\<forall\>t\<in\><around*|[|0,1|]>> that <math|\<sigma\>> is
    Fréchet differentiable at <math|t> and <math|f> is differentiable at
    <math|\<sigma\><around*|(|t|)>> so that by the chain rule [theorem:
    <reference|diff chain rule>]

    <\equation>
      <label|eq 16.287.12>\<forall\>t\<in\><around*|[|0,1|]><text|
      >f\<circ\>\<sigma\><text| is Fréchet differentiable at >t<text| with
      >D<rsub|t><around*|(|f\<circ\>\<sigma\>|)>=D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>
    </equation>

    Let <math|t\<in\><around*|[|0,1|]>> then by the above and [theorem:
    <reference|diff derivate and frechet differential>]
    <math|f\<circ\>\<sigma\>> has a derivative at <math|t> and\ 

    <\equation*>
      <around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t>=D<rsub|t><around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.287.12>]>><around*|(|D<rsub|\<sigma\><around*|(|t|)>>f\<circ\>D<rsub|t>\<sigma\>|)><around*|(|1|)>=D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|D<rsub|\<sigma\>><around*|(|1|)>|)><below|=|<text|[eq:
      <reference|eq 16.284.12>]>>D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|y-x|)>
    </equation*>

    hence\ 

    <\equation>
      <label|eq 16.288.12>\<forall\>t\<in\><around*|[|0,1|]><text| we have
      ><around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t>=D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|y-x|)>
    </equation>

    As <math|f\<circ\>\<sigma\>> is <math|C<rsup|1>> on
    <math|<around*|[|0,1|]>> it follows from [theorem: <reference|diff C^1
    and derivates (1)>] that\ 

    <\equation*>
      <around*|(|f\<circ\>\<sigma\>|)><rprime|'>:<around*|[|0,1|]>\<rightarrow\>Y<text|
      defined by ><around*|(|f\<circ\>\<sigma\>|)><rprime|'><around*|(|t|)>=<around*|(|f\<circ\>\<sigma\>|)><rprime|'><rsub|t><text|
      is continuous>
    </equation*>

    Using then the fundamental theorem of calculus [theorem: <reference|diff
    fundamental theorem of calculus (2)>] that

    <\equation*>
      <around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>-<around*|(|f\<circ\>\<sigma\>|)><around*|(|0|)>=<big|int><rsub|0><rsup|1><around*|(|f\<circ\>\<sigma\>|)><rprime|'>
    </equation*>

    which as <math|f<around*|(|x|)>=f<around*|(|x+0\<cdot\><around*|(|y-x|)>|)>=f<around*|(|\<sigma\><around*|(|0|)>|)>=<around*|(|f\<circ\>\<sigma\>|)><around*|(|0|)>>
    and <math|f<around*|(|y|)>=f<around*|(|x+1\<cdot\><around*|(|y-x|)>|)>=f<around*|(|\<sigma\><around*|(|1|)>|)>=<around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>>
    results in\ 

    <\equation>
      <label|eq 16.289.12>f<around*|(|x|)>-f<around*|(|y|)>=<big|int><rsub|0><rsup|1><around*|(|f\<circ\>\<sigma\>|)><rprime|'>
    </equation>

    Now <math|\<forall\>t\<in\><around*|[|0,1|]>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f\<circ\>\<sigma\>|)><rprime|'><around*|(|t|)>|\<\|\|\>><rsub|Y>>|<cell|<below|=|<text|[eq:
      <reference|eq 16.288.12>]>>>|<cell|<around*|\<\|\|\>|D<rsub|\<sigma\><around*|(|t|)>>f<around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D<rsub|\<sigma\><around*|(|t|)>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|<below|\<leqslant\>|t\<in\><around*|[|0,1|]>\<subseteq\>C\<wedge\>hypothesis>>|<cell|k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>

    Using then [theorem: <reference|rieman integral properties> (4)] on the
    above gives <math|<big|int><rsub|0><rsup|1><around*|(|f\<circ\>\<sigma\>|)><rprime|'>\<leqslant\><around*|(|k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>|)>\<cdot\><around*|(|1-0|)>=k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>
    which combined with [eq: <reference|eq 16.289.12>] proves finally that\ 

    <\equation*>
      f<around*|(|x|)>-f<around*|(|y|)>\<leqslant\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>
    </equation*>
  </proof>

  \;

  <\theorem>
    <label|diff mean value theorem (3)><dueto|Mean Value Theorem (III)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|A\<subseteq\>X>, <math|x,y\<in\>X> such that
    <math|L<rsub|x,y>\<subseteq\>A> and <math|f:A\<rightarrow\>Y> a function
    such that

    <\enumerate>
      <item><math|f> is Fréchet differentiable on <math|L<rsub|x,y>>

      <item><math|D f:L<rsub|x,y>\<rightarrow\><around*|(|X,Y|)>> defined by
      <math|D f<around*|(|z|)>=D<rsub|z>f> is continuous
    </enumerate>

    then\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)><text|>
    </equation*>

    exists and

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>
    </equation*>
  </theorem>

  <\proof>
    As <math|f> is <math|C<rsup|1>> on <math|A> we have by [theorem:
    <reference|diff C^n on a set condition>] that <math|f> is <math|1>-times
    differentiable on <math|A> and that <math|D<rsup|<around*|[|1|]>>f:A\<rightarrow\>L<rsub|1><around*|[|X;Y|]>=L<around*|(|X,Y|)>>
    defined by <math|D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f<below|=|def>D<rsub|x>f>.
    Hence we have that\ 

    <\equation*>
      f<text| is >1<text|-times differentiable on >A
    </equation*>

    and\ 

    <\equation*>
      D f:A\<rightarrow\>L<around*|(|X,Y|)><text| defined by >D
      f<around*|(|x|)>=D<rsub|x>f<text| is continuous.>
    </equation*>

    Further by \ [lemma: <reference|lemma 16.144.201>] <math|L<rsub|x,y>> is
    compact so that by [theorem: <reference|compact and continuous
    functions>] <math|D f<around*|(|L<rsub|x,y>|)>> is compact. Applying then
    [theorem: <reference|compact and bounded>] proves that <math|D
    f<around*|(|L<rsub|x,y>|)>> is bounded, hence there exist a
    <math|M\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>L<rsub|1>,L<rsub|2>\<in\>D f<around*|(|L<rsub|x,y>|)>> we
    have \ <math|<around*|\<\|\|\>|L<rsub|1>-L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>M>.
    Let <math|\<zeta\>\<in\>L<rsub|x,y>\<subseteq\>A> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|\<zeta\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|D
      f<around*|(|\<zeta\>|)>-D f<around*|(|x|)>+D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D
      f<around*|(|\<zeta\>|)>-D f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|<below|\<leqslant\>|\<zeta\>,x\<in\>L<rsub|x,y>\<Rightarrow\>D
      f<around*|(|x|)>,D f<around*|(|\<zeta\>|)>\<in\>D
      f<around*|(|L<rsub|x,y>|)>>>|<cell|M+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>>>
    </eqnarray*>

    proving that <math|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>=<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<zeta\>|)>|\<\|\|\>>\|\<zeta\>\<in\>L<rsub|x,y>|}>> is
    bounded above by <math|><math|<rigid|M+<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>. As
    <math|\<bbb-R\>> is conditionally complete [see theorem:
    <reference|complex RC is conditional complete>] and
    <math|<rigid|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>\<neq\>\<varnothing\>>>
    [because <math|x\<in\>L<rsub|x,y>\<Rightarrow\>L<rsub|x,y>\<neq\>\<varnothing\>>]
    it follows that\ 

    <\equation*>
      sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)><text|
      exist>
    </equation*>

    As <math|L<rsub|x,y>> is convex [see lemma: <reference|lemma
    16.144.201>], <math|x,y\<in\>L<rsub|x,y>>,
    <math|L<rsub|x,y>\<subseteq\>A> and <math|\<forall\>\<zeta\>\<in\>L<rsub|x,y>>

    <\equation*>
      <around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)><rsub|>
    </equation*>

    it follows from [theorem: <reference|diff mean value theorem (2)>] that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D<rsub|\<zeta\>>f|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<zeta\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>
    </equation*>
  </proof>

  \;

  TODO delete this after the above is proved

  <\lemma>
    <label|lemma 16.105.194>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U> a open set in <math|X>, <math|x\<in\>U>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and\ 

    <\equation*>
      f:U\<rightarrow\>Y<text| a function that is >n<text|-times
      differentiable at >x
    </equation*>

    then for <math|h\<in\>X> there exist a open set <math|V> with
    <math|x\<in\>V\<subseteq\>A> such that the function

    <\equation*>
      D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>:V\<rightarrow\>Y<text|
      defined by ><around*|(|D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>=D
      <rsub|y>f<around*|(|h|)>
    </equation*>

    is <math|<around*|(|n-1|)>>-times differentiable at <math|x>. Further
    <math|\<forall\>k,h\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsub|x><rsup|><around*|(|D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>|)>|)><around*|(|k|)>>|<cell|=>|<cell|<around*|(|<around*|(|D<rsub|x><rsup|<around*|[|2|]>>f|)><around*|(|k|)>|)><around*|(|h|)>>>>>
    </eqnarray*>
  </lemma>

  <\proof>
    As <math|f> is <math|n>-times differentiable at <math|x> and
    <math|1\<less\>n> we have by [theorem: <reference|diff D^f=D^(n-1)D^1f>]
    that there exist a open set <math|V> with <math|x\<in\>V\<subseteq\>U>
    such that <math|\<forall\>y\<in\>V> we have that <math|f> is
    <math|1>-times differentiable at <math|y> and the function

    <\equation>
      D<rsup|<around*|[|1|]>> f:V\<rightarrow\>L<around*|(|X,Y|)><text|
      defined by >D<rsup|<around*|[|1|]>>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f=D<rsub|y>f
    </equation>

    is <math|<around*|(|n-1|)>>-times differentiable at <math|x>. Given
    <math|v\<in\>X> define\ 

    <\equation>
      <label|eq 16.226.141>\<varphi\><rsub|v>:V\<rightarrow\>L<around*|(|X,Y|)>\<cdot\>X<text|
      by >\<varphi\><rsub|v><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsup|>f<around*|(|y|)>,v<rsup|>|)>=<around*|(|D<rsub|y>f,v|)>
    </equation>

    Then we have for <math|y\<in\>X>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsup|>f<around*|(|y|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|y|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<varphi\><rsub|v><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|D<rsup|<around*|[|1|]>>
      f<around*|(|y|)>,v<rsup|>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|v>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.122.194>\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>=D<rsup|<around*|[|1|]>><rsup|>f<text|
      and >\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>=C<rsub|v>
    </equation>

    As <math|D<rsup|<around*|[|1|]>> f> is <math|<around*|(|n-1|)>>-times
    differentiable at <math|x> and <math|C<rsub|v>> is <math|\<infty\>>-times
    differentiable at <math|x> [see example: <reference|diff constant
    function is infinitely times differentiable>] it follows that
    <math|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>> is
    <math|<around*|(|n-1|)>>-times differentiable at <math|x> and
    <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>> is also
    <math|<around*|(|n-1|)>>-times differentiable. From [theorem:
    <reference|diff higher order differentiation and vector functions>] it
    follows then that\ 

    <\equation>
      <label|eq 16.123.194>\<varphi\><rsub|v><text| is
      ><around*|(|n-1|)><text|-times differentiable at >x
    </equation>

    As <math|1\<less\>n> it follows that <math|1\<in\><around*|{|1,\<ldots\>,n-1|}>>
    so that by [theorem: <reference|diff n-times and m-times
    differentiability>] <math|\<varphi\><rsub|v>> is <math|1>-times
    differentiable at <math|x> [hence Fréchet differentiable at <math|x>] so
    that by [theorem: <reference|diff differential of a vector valued
    function>] <math|><math|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>>,
    <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>> are Fréchet
    differentiable at <math|x> and

    <\equation*>
      \<pi\><rsub|1>\<circ\>D<rsup|><rsub|x>\<varphi\><rsub|v><below|=|<text|[theorem:
      <reference|diff differential of a vector valued
      function>]>>D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.122.194>]>>D<rsub|x><around*|(|D<rsup|<around*|[|1|]>><rsup|>f|)>=D<rsub|x><rsup|<around*|[|2|]>>f
    </equation*>

    <\equation*>
      \<pi\><rsub|2>\<circ\>D<rsub|x><rsup|>\<varphi\><rsub|v><below|=|<text|[theorem:
      <reference|diff differential of a vector valued
      function>]>>D<rsub|x><around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.122.194>]>>D<rsub|x>C<rsub|v>\<equallim\><rsub|<text|[example:
      <reference|diff constant function is infinitely times
      differentiable>]>>C<rsub|0>
    </equation*>

    So that

    <\equation>
      <label|eq 16.124.194>D<rsub|x><rsup|>\<varphi\><rsub|v>=<around*|(|D<rsup|<around*|[|2|]>><rsub|x>f,C<rsub|0>|)><rsub|\<ast\>>
    </equation>

    Given <math|h\<in\>X> we can, as by [theorem: <reference|diff n-times and
    m-times differentiability>] \ <math|\<forall\>y\<in\>V> <math|f> is
    <math|1>-times differentiable at <math|y> [hence Fréchet differentiable
    at <math|y>], define

    <\equation*>
      D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>:V\<rightarrow\>Y<text| by
      ><around*|(|D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>=D<rsub|y><rsup|>f<around*|(|h|)>
    </equation*>

    Let <math|h\<in\>X> then we have for <math|y\<in\>V>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|y|)>>|<cell|=>|<cell|D<rsup|><rsub|y>f<around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsub|y><rsup|>f,h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|\<varphi\><rsub|h><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|y|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.125.194>D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>=ev\<circ\>\<varphi\><rsub|h>
    </equation>

    As <math|ev> is of <math|\<infty\>>-times differentiable by [lemma:
    <reference|lemma 16.104.194>] and <math|\<varphi\><rsub|v>> is
    <math|<around*|(|n-1|)>>-times differentiable at <math|x> by [eq:
    <reference|eq 16.123.194>] it follows from the chain rule [see theorem:
    <reference|diff chain rule higher order>] that\ 

    <\equation*>
      D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)><text| is
      ><around*|(|n-1|)><text|-times differentiable at >x
    </equation*>

    Given that <math|1\<less\>n> it follows that
    <math|1\<in\><around*|{|1,\<ldots\>,n-1|}>> so that by [theorem:
    <reference|diff n-times and m-times differentiability>]
    <math|D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>> is <math|1>-times
    differentiable at <math|x>, then for <math|k\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsub|x><rsup|><around*|(|D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>|)>|)><around*|(|k|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.125.194>]>>>|<cell|<around*|(|D<rsub|x><rsup|><around*|(|ev\<circ\>\<varphi\><rsub|h>|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|<around*|(|D
      <rsub|\<varphi\><rsub|h><around*|(|x|)>>ev\<circ\>D<rsub|x>
      \<varphi\><rsub|h>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.226.141>]>>>|<cell|<around*|(|D<rsub|<around*|(|D
      f<around*|(|x|)>,h|)>>ev\<circ\>D<rsub|x>
      \<varphi\><rsub|h>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.104.194>]>>>|<cell|<around*|(|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>|)><around*|(|k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 16.124.194>]>>>|<cell|<around*|(|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\><around*|(|D<rsup|<around*|[|2|]>><rsub|x>f,C<rsub|0><rsub|>|)><rsub|\<ast\>>|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|<around*|(|D<rsup|<around*|[|2|]>><rsub|x>f,C<rsub|0><rsub|>|)><rsub|\<ast\>><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|k|)>,C<rsub|0><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|<around*|[|2|]>><rsub|x>f<around*|(|k|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|<around*|[|1|]>>f<around*|(|x|)>,0|)>+ev<around*|(|D<rsub|x><rsup|<around*|[|2|]>>f<around*|(|k|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)><around*|(|0|)>+<around*|(|<around*|(|D<rsub|x><rsup|<around*|[|2|]>>f|)><around*|(|k|)>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsub|x><rsup|<around*|[|2|]>>f<around*|(|k|)>|)><around*|(|h|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <around*|(|D<rsub|x><rsup|><around*|(|D<rsup|>f<around*|(|\<ast\>|)><around*|(|h|)>|)>|)><around*|(|k|)>=<around*|(|D<rsub|x><rsup|<around*|[|2|]>>f<around*|(|k|)>|)><around*|(|h|)>
    </equation*>
  </proof>

  We prove this by induction, so define\ 

  <\equation*>
    S=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|<text|If
    >f<text| has a >n<text|-the derivative
    >f<rsup|<around*|(|n|)>><rsub|x><text| at >x\<in\>A<text| then there
    exist a open <math|V> with <math|x\<in\>V\<subseteq\>A> such that
    >\<forall\>y\<in\>V<text| >f<text| has a derivative
    >f<rprime|'><rsub|y><text| at >y<text| and
    <math|<rigid|f<rprime|'><rsub|V>:V\<rightarrow\>X> defined by
    >>f<rprime|'><rsub|V><around*|(|y|)>=f<rprime|'><rsub|x><text| has a
    ><around*|(|n-1|)><text|-the derivative at >x<text| with
    ><rigid|<around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>><rsub|x>=f<rsup|<around*|(|n|)>><rsub|x>>|}>
  </equation*>

  then we have:\ 

  <\description>
    <item*|<math|2\<in\>S>>As <math|f> has a <math|2>-the derivative at
    <math|x> there exist by definition [definition: <reference|diff higher
    order derivate>] a open set <math|V> with <math|x\<in\>V\<subseteq\>A>
    such that <math|f> has a <math|1>-the derivative at <math|x> such that\ 

    <\equation*>
      f<rprime|'>:V\<rightarrow\>X<text| defined by
      >f<rprime|'><around*|(|y|)>=f<rsup|<around*|(|1|)>><rsub|y><below|=|def>f<rprime|'><rsub|y>
    </equation*>

    has a derivative [hence a <math|1>-the derivative] at <math|x> with
    <math|f<rsup|<around*|(|2|)>><rsub|x>=<around*|(|f<rsub|><rprime|'>|)><rprime|'><rsub|x>\<equallim\><rsub|def><around*|(|f<rprime|'>|)><rsup|<around*|(|n|)>><rsub|x>>
    from which it follows that <math|2\<in\>S>.

    <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> has a
    <math|<around*|(|n+1|)>>-the derivative at <math|x> it follows by
    definition that there exists a open set <math|V> with
    <math|x\<in\>V\<subseteq\>A> such that <math|\<forall\>y\<in\>V> <math|f>
    has a <math|n>-the derivative at <math|y> and

    <\equation>
      <label|eq 16.209.304.1>f<rsup|<around*|(|n|)>><rsub|V>:V\<rightarrow\>X<text|
      where >f<rsup|<around*|(|n|)>><rsub|V><around*|(|y|)>=f<rsup|<around*|(|n|)>><rsub|y><text|
      has a derivative at x and>f<rsup|<around*|(|n+1|)>><rsub|x>=<around*|(|f<rsup|<around*|(|n|)>><rsub|V>|)><rprime|'><rsub|x>
    </equation>

    Let <math|y\<in\>V> then as <math|f> has a <math|n>-the derivative at
    <math|y> and <math|n\<in\>S> there exist a open set <math|V<rsub|y>> such
    that <math|y\<in\>V<rsub|y>\<subseteq\>A>,
    <math|\<forall\>z\<in\>V<rsub|y>> <math|f> has a derivative
    <math|f<rprime|'><rsub|z>> at <math|z> and the function\ 

    <\equation>
      <label|eq 16.209.304>f<rprime|'><rsub|V<rsub|y>>:V<rsub|y>\<rightarrow\>X<text|
      defined by >f<rprime|'><rsub|V<rsub|y>><around*|(|z|)>=f<rprime|'><rsub|z>
    </equation>

    has a <math|<around*|(|n-1|)>>-the derivative at <math|y> with\ 

    <\equation>
      <label|eq 16.210.304><around*|(|f<rsup|<rprime|'>><rsub|V<rsub|y>>|)><rsup|<around*|(|n-1|)>><rsub|y>=f<rsup|<around*|(|n|)>><rsub|y>
    </equation>

    Let <math|W<rsub|y>=V<rsub|y><big|cap>V> then
    <math|y\<in\>W<rsub|y>\<subseteq\>V,V<rsub|y>> then we have by [theorem:
    <reference|diff higher order derivativing is local>] that

    <\equation>
      <label|eq 16.211.304><around*|(|f<rprime|'><rsub|V<rsub|y>>|)><rsub|\|W<rsub|y>>:W<rsub|y>\<rightarrow\>X<text|
      defined by ><around*|(|f<rprime|'><rsub|V<rsub|y>>|)><rsub|\|W<rsub|y>><around*|(|z|)>=f<rprime|'><rsub|V<rsub|y>><around*|(|z|)>=f<rprime|'><rsub|z>
    </equation>

    has a <math|<around*|(|n-1|)>>-the derivative at <math|y> with\ 

    <\equation>
      <label|eq 16.212.304><around*|(|<around*|(|f<rprime|'><rsub|V<rsub|y>>|)><rsub|\|W<rsub|y>>|)><rsup|<around*|(|n-1|)>><rsub|y>=<around*|(|f<rprime|'><rsub|V<rsub|y>>|)><rsup|<around*|(|n-1|)>><rsub|y><below|=|<text|[eq:
      <reference|eq 16.210.304>]>>f<rsup|<around*|(|n|)>><rsub|y>
    </equation>

    Let <math|y\<in\>V> then as <math|y\<in\>V<rsub|y>> we have
    <math|y\<in\>V<rsub|y><big|cap>V=W<rsub|y>> it follows that <math|f> has
    a derivative at <math|y> so that we can define\ 

    <\equation>
      <label|eq 16.213.304>f<rprime|'><rsub|V>:V\<rightarrow\>X<text| defined
      by >f<rprime|'><rsub|V><around*|(|y|)>=f<rprime|'><rsub|y>
    </equation>

    As <math|\<forall\>z\<in\>W<rsub|y>> we have
    <math|<around*|(|f<rprime|'><rsub|V<rsub|y>>|)><rsub|\|W<rsub|y>><around*|(|z|)><below|=|<text|[eq:
    <reference|eq 16.210.304>]>>f<rprime|'><rsub|z><below|=|<text|[eq:
    <reference|eq 16.213.304>]>>f<rprime|'><rsub|V><around*|(|y|)>> which
    proves that\ 

    <\equation>
      <label|eq 16.214.304><around*|(|f<rprime|'><rsub|V>|)><rsub|\|W<rsub|y>>=<around*|(|f<rprime|'><rsub|V<rsub|y>>|)><rsub|\|W<rsub|y>>
    </equation>

    As <math|><math|<around*|(|f<rprime|'><rsub|V<rsub|y>>|)><rsub|\|W<rsub|y>>>
    has a <math|<around*|(|n-1|)>>-the derivative at <math|y\<in\>W<rsub|y>>
    it follows from the above that <math|<around*|(|f<rprime|'><rsub|V>|)><rsub|\|W<rsub|y>>>
    has a <math|<around*|(|n-1|)>>-the derivative at <math|y> with

    <\equation>
      <label|eq 16.215.304><around*|(|<around*|(|f<rprime|'><rsub|V>|)><rsub|\|W<rsub|y>>|)><rsup|<around*|(|n-1|)>><rsub|y>=<around*|(|<around*|(|f<rprime|'><rsub|V>|)><rsub|\|W<rsub|y>>|)><rsup|<around*|(|n-1|)>><rsub|y>
    </equation>

    Using now [theorem: <reference|diff higher order derivativing is local>]
    it follows that <math|f<rprime|'><rsub|V>> has a
    <math|<around*|(|n-1|)>>-the derivative at <math|y> and\ 

    <\equation>
      <label|eq 16.216.304><around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>><rsub|y>=<around*|(|<around*|(|f<rprime|'><rsub|V>|)><rsub|\|W<rsub|y>>|)><rsup|<around*|(|n-1|)>><rsub|y><below|=|<text|[eq:
      <reference|eq 16.215.304>]>><around*|(|<around*|(|f<rprime|'><rsub|V>|)><rsub|\|W<rsub|y>>|)><rsup|<around*|(|n-1|)>><rsub|y><below|=|<text|[eq:
      <reference|eq 16.212.304>]>>f<rsup|<around*|(|n|)>><rsub|y>
    </equation>

    So we can define\ 

    <\equation*>
      <around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>>:V\<rightarrow\>X<text|
      where ><around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>><around*|(|y|)>=<around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>><rsub|y>
    </equation*>

    As <math|\<forall\>y\<in\>V> <math|><math|<around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>><around*|(|y|)>=<around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>><rsub|y><below|=|<text|[eq:
    <reference|eq 16.216.304>]>>f<rsup|<around*|(|n|)>><rsub|y><below|=|<text|[eq:
    <reference|eq 16.209.304.1>]>><around*|(|f<rsub|V>|)><rsup|<around*|(|n|)>><around*|(|y|)>>
    it follows that\ 

    <\equation*>
      <around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>>=<around*|(|f<rsub|V>|)><rsup|<around*|(|n|)>>
    </equation*>

    which, as <math|<around*|(|f<rsub|V>|)><rsup|<around*|(|n|)>>> has a
    derivative at <math|x>, proves that <math|<around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n-1|)>>>
    has a derivative at <math|x> with <math|<around*|(|<around*|(|f<rprime|'><rsub|V>|)><rsup|*<around*|(|n-1|)>>|)><rprime|'><rsub|x>=<around*|(|f<rsub|V><rsup|<around*|(|n|)>>|)><rprime|'><rsub|x><below|=|<text|[eq:
    <reference|eq 16.209.304.1>>>f<rsup|<around*|(|n+1|)>><rsub|x>>. So by
    definition <math|f<rprime|'><rsub|V>> has a <math|n>-the derivative at
    <math|x> with <math|<around*|(|f<rprime|'><rsub|V>|)><rsup|<around*|(|n|)>><rsub|x>=<around*|(|<around*|(|f<rprime|'><rsub|V>|)><rsup|*<around*|(|n-1|)>>|)><rprime|'><rsub|x>=f<rsup|<around*|(|n+1|)>><rsub|x>>.
    Hence as <math|<around*|(|n+1|)>-1=n> it follows that <math|n+1\<in\>S>.
  </description>

  \;

  \;

  \;

  <\theorem>
    <label|diff C^(n+m)>Let <math|n,m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|A\<subseteq\>X>, <math|U > a open set in <math|X> with
    <math|U\<subseteq\>A> and <math|<rigid|f:A\<rightarrow\>Y>> a function
    that is <math|C<rsup|n+m>> on <math|U> [hence by [theorem:
    <reference|diff C^n and C^m>] is also <math|C<rsup|n>> on <math|U>] so
    that the following functions are well defined [see definition:
    <reference|diff class C^n>]

    <\equation*>
      D<rsup|<around*|[|n+m|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|n+m|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f
    </equation*>

    <\equation*>
      D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f
    </equation*>

    then <math|D<rsup|<around*|[|n|]>><rsub|U>f> is <math|C<rsup|m>> on
    <math|U> and for\ 

    <\equation*>
      D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)><text|
      defined by >D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsub|x><rsup|<around*|[|m|]>><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>
    </equation*>

    we have

    <\equation*>
      D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>=D<rsup|<around*|[|n+m|]>><rsub|U>f
    </equation*>
  </theorem>

  <\note>
    <math|L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|[lemma:
    <reference|lemma 16.61.207>]>>L<rsub|n+m><around*|(|X;Y|)>>
  </note>

  <\proof>
    We prove this by induction on <math|m>, so let <math|n\<in\>\<bbb-N\>>\ 

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|<text|If >f<text| is
      >C<rsup|n+m><text| on <math|U> then
      >D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      defined by ><rigid|D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f><text|
      is <math|C<rsup|m><text| on <math|U> and for
      >D<rsup|<around*|[|n+m|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)>>>
      defined by D<rsup|<around*|[|n+m|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f<text|
      we have ><rigid|D<rsup|<around*|[|n+m|]>><rsub|U>f=D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>><text|
      where >D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.61.207>]>>L<rsub|n+m><around*|(|X;Y|)><text| is
      defined by >D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S<rsub|n>>>If <math|f> is <math|C<rsup|n+1>> on
      <math|U> then by definition <math|f> is <math|<around*|(|n+1|)>>-times
      differentiable \ on <math|U> and\ 

      <\equation>
        <label|eq 16.85.181>D<rsup|<around*|[|n+1|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+1><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n+1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n+1|]>><rsub|x>f<text|
        is continuous>
      </equation>

      Using [theorem: <reference|diff higher order differentiation on a open
      set (1)>] it follows that <math|f> is <math|n>-times differentiable on
      <math|U> and\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f
      </equation*>

      is Fréchet differentiable on <math|U>, hence\ 

      <\equation>
        <label|eq 16.172.10>D<rsup|<around*|[|n|]>><rsub|U>f<text| is
        >1<text|-times differentiable on >U
      </equation>

      and <math|\<forall\>x\<in\>U> we have

      <\equation>
        <label|eq 16.86.181>D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>\<equallim\><rsub|def>D<rsup|><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><below|=|<text|[theorem:
        <reference|diff higher order differentiation on a open set
        (1)>]>>D<rsup|<around*|[|n+1|]>><rsub|x>f<below|=|<text|[eq:
        <reference|eq 16.85.181>]>>D<rsup|<around*|[|n+1|]>><rsub|U>f<around*|(|x|)>
      </equation>

      Hence if we define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>
      </equation*>

      then <math|\<forall\>x\<in\>U> we have
      <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><below|=|<text|[eq:
      <reference|eq 16.86.181>]>>D<rsup|<around*|[|n+1|]>><rsub|U>f<around*|(|x|)>>
      proving that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>=D<rsup|<around*|[|n+1|]>><rsub|U>f
      </equation*>

      As <math|D<rsup|<around*|[|n+1|]>><rsub|U>f> is continuous [see eq:
      <reference|eq 16.85.181>] it follows that
      <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>>
      is continuous, combining this with [eq: <reference|eq 16.172.10>]
      proves by definition that

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|U>f<text| is >C<rsup|1><text| on >U
      </equation*>

      which proves that <math|1\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>If
      <math|f> is <math|C<rsup|n+<around*|(|m+1|)>>> on <math|U> then by
      definition <math|f> is <math|<around*|(|n+m|)>+1> differentiable on
      <math|U> and\ 

      <\equation>
        <label|eq 16.87.181>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|x>f<text|
        is continuous>
      </equation>

      Using [theorem: <reference|diff higher order differentiation on a open
      set (1)>] it follows that <math|f> is <math|<around*|(|n+m|)>>-times
      differentiable on <math|U> and\ 

      <\equation*>
        D<rsup|<around*|[|n+m|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|n+m|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f
      </equation*>

      is Fréchet differentiable on <math|U>, hence\ 

      <\equation>
        <label|eq 16.175.10>D<rsup|<around*|[|n+m|]>><rsub|U>f<text| is
        >1<text|-times differentiable on >U
      </equation>

      and <math|\<forall\>x\<in\>U>

      <\equation>
        <label|eq 16.88.181>D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>\<equallim\><rsub|def>D<rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)><below|=|<text|[theorem:
        <reference|diff higher order differentiation on a open set
        (1)>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|x>f<below|=|<text|[eq:
        <reference|eq 16.87.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f<around*|(|x|)>
      </equation>

      Hence if we define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>
      </equation*>

      then we have <math|\<forall\>x\<in\>U> that
      <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.88.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f<around*|(|x|)>>
      proving that\ 

      <\equation>
        <label|eq 16.89.181>D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>=D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f
      </equation>

      As by [theorem: <reference|diff C^n and C^m>] <math|f> is
      <math|C<rsup|n+m>> on <math|U> and <math|m\<in\>S<rsub|n>> it follow
      that\ 

      <\equation>
        <label|eq 16.178.11>D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f<text|
        is >C<rsup|m><text| on >U
      </equation>

      and for\ 

      <\equation*>
        D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>
      </equation*>

      we have\ 

      <\equation>
        <label|eq 16.90.181>D<rsup|<around*|[|n+m|]>><rsub|U>f=D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>
      </equation>

      As <math|D<rsup|<around*|[|n+m|]>><rsub|U>f> is <math|1>-times
      differentiable on <math|U> [see eq: <reference|eq 16.175.10>] it
      follows from the above that <math|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>>
      is <math|1>-times differentiable on <math|U>. In other words
      <math|\<forall\>x\<in\>U> <math|><math|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>>
      is Fréchet differentiable at <math|x>, hence by definition we have that

      <\equation>
        <label|eq 16.183.200>D<rsup|<around*|[|n|]>><rsub|U>f<text| is
        ><around*|(|m+1|)><text|-times differentiable on >U
      </equation>

      iwith

      <\equation>
        <label|eq 16.179.10><rigid|D<rsup|<around*|[|m+1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>=D<rsub|x><around*|(|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>|)>>
      </equation>

      So if we define

      <\equation>
        <label|eq 16.180.10>D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|m+1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>
      </equation>

      then <math|\<forall\>x\<in\>U> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>>|<cell|<below|=|<text|[eq:
        <reference|eq 16.179.10>]>>>|<cell|D<rsub|x><around*|(|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x><rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.90.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)><around*|(|x|)>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>=D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.89.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f
      </equation*>

      As <math|D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f> is
      continuous [see eq: <reference|eq 16.87.181>] it follows that
      <math|D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>>
      is continuous. As also <math|D<rsup|<around*|[|n|]>><rsub|U>f> is
      <math|<around*|(|m+1|)>>-times differentiable [see eq: <reference|eq
      16.183.200>] we have by definition that\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|U>f<text| is >C<rsup|m+1><text| on >U
      </equation*>

      \ So we have proved that <math|D<rsup|<around*|[|n|]>>f> is
      <math|C<rsup|m+1>> on <math|U> and <math|D<rsup|<around*|[|m+1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+<around*|(|m+1|)>|]>>f>
      which proves that\ 

      <\equation*>
        n+1\<in\>S<rsub|n>
      </equation*>
    </description>
  </proof>

  \;

  <\theorem>
    <label|diff C^(n+m)>Let <math|n,m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|A\<subseteq\>X>, <math|U > a open set in <math|X> with
    <math|U\<subseteq\>A> and <math|<rigid|f:A\<rightarrow\>Y>> a function
    that is <math|C<rsup|n+m>> on <math|U> [hence by [theorem:
    <reference|diff C^n and C^m>] is also <math|C<rsup|n>> on <math|U>] so
    that the following functions are well defined [see definition:
    <reference|diff class C^n>]

    <\equation*>
      D<rsup|<around*|[|n+m|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|n+m|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f
    </equation*>

    <\equation*>
      D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      where >D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f
    </equation*>

    then <math|D<rsup|<around*|[|n|]>><rsub|U>f> is <math|C<rsup|m>> on
    <math|U> and for\ 

    <\equation*>
      D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)><text|
      defined by >D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsub|x><rsup|<around*|[|m|]>><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>
    </equation*>

    we have

    <\equation*>
      D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>=D<rsup|<around*|[|n+m|]>><rsub|U>f
    </equation*>

    <\note>
      <math|L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.61.207>]>>L<rsub|n+m><around*|(|X;Y|)>>
    </note>
  </theorem>

  <\proof>
    We prove this by induction on <math|m>, so let <math|n\<in\>\<bbb-N\>>\ 

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|<text|If >f<text| is
      >C<rsup|n+m><text| on <math|U> then
      >D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      defined by ><rigid|D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f><text|
      is <math|C<rsup|m><text| on <math|U> and for
      >D<rsup|<around*|[|n+m|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)>>>
      defined by D<rsup|<around*|[|n+m|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f<text|
      we have ><rigid|D<rsup|<around*|[|n+m|]>><rsub|U>f=D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>><text|
      where >D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|m><around*|(|X;L<rsub|n><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.61.207>]>>L<rsub|n+m><around*|(|X;Y|)><text| is
      defined by >D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S<rsub|n>>>If <math|f> is <math|C<rsup|n+1>> on
      <math|U> then by definition <math|f> is <math|<around*|(|n+1|)>>-times
      differentiable \ on <math|U> and\ 

      <\equation>
        <label|eq 16.85.181>D<rsup|<around*|[|n+1|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+1><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n+1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n+1|]>><rsub|x>f<text|
        is continuous>
      </equation>

      Using [theorem: <reference|diff higher order differentiation on a open
      set (1)>] it follows that <math|f> is <math|n>-times differentiable on
      <math|U> and\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f
      </equation*>

      is Fréchet differentiable on <math|U>, hence\ 

      <\equation>
        <label|eq 16.172.10>D<rsup|<around*|[|n|]>><rsub|U>f<text| is
        >1<text|-times differentiable on >U
      </equation>

      and <math|\<forall\>x\<in\>U> we have

      <\equation>
        <label|eq 16.86.181>D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>\<equallim\><rsub|def>D<rsup|><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><below|=|<text|[theorem:
        <reference|diff higher order differentiation on a open set
        (1)>]>>D<rsup|<around*|[|n+1|]>><rsub|x>f<below|=|<text|[eq:
        <reference|eq 16.85.181>]>>D<rsup|<around*|[|n+1|]>><rsub|U>f<around*|(|x|)>
      </equation>

      Hence if we define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>
      </equation*>

      then <math|\<forall\>x\<in\>U> we have
      <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><below|=|<text|[eq:
      <reference|eq 16.86.181>]>>D<rsup|<around*|[|n+1|]>><rsub|U>f<around*|(|x|)>>
      proving that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>=D<rsup|<around*|[|n+1|]>><rsub|U>f
      </equation*>

      As <math|D<rsup|<around*|[|n+1|]>><rsub|U>f> is continuous [see eq:
      <reference|eq 16.85.181>] it follows that
      <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>>
      is continuous, combining this with [eq: <reference|eq 16.172.10>]
      proves by definition that

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|U>f<text| is >C<rsup|1><text| on >U
      </equation*>

      which proves that <math|1\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>If
      <math|f> is <math|C<rsup|n+<around*|(|m+1|)>>> on <math|U> then by
      definition <math|f> is <math|<around*|(|n+m|)>+1> differentiable on
      <math|U> and\ 

      <\equation>
        <label|eq 16.87.181>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|x>f<text|
        is continuous>
      </equation>

      Using [theorem: <reference|diff higher order differentiation on a open
      set (1)>] it follows that <math|f> is <math|<around*|(|n+m|)>>-times
      differentiable on <math|U> and\ 

      <\equation*>
        D<rsup|<around*|[|n+m|]>><rsub|U>f:U\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|n+m|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n+m|]>><rsub|x>f
      </equation*>

      is Fréchet differentiable on <math|U>, hence\ 

      <\equation>
        <label|eq 16.175.10>D<rsup|<around*|[|n+m|]>><rsub|U>f<text| is
        >1<text|-times differentiable on >U
      </equation>

      and <math|\<forall\>x\<in\>U>

      <\equation>
        <label|eq 16.88.181>D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>\<equallim\><rsub|def>D<rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)><below|=|<text|[theorem:
        <reference|diff higher order differentiation on a open set
        (1)>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|x>f<below|=|<text|[eq:
        <reference|eq 16.87.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f<around*|(|x|)>
      </equation>

      Hence if we define\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        where >D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>
      </equation*>

      then we have <math|\<forall\>x\<in\>U> that
      <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 16.88.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f<around*|(|x|)>>
      proving that\ 

      <\equation>
        <label|eq 16.89.181>D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>=D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f
      </equation>

      As by [theorem: <reference|diff C^n and C^m>] <math|f> is
      <math|C<rsup|n+m>> on <math|U> and <math|m\<in\>S<rsub|n>> it follow
      that\ 

      <\equation>
        <label|eq 16.178.11>D<rsup|<around*|[|n|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|n|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|n|]>><rsub|x>f<text|
        is >C<rsup|m><text| on >U
      </equation>

      and for\ 

      <\equation*>
        D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|n+m><around*|(|X;Y|)><text|
        defined by >D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|m|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>
      </equation*>

      we have\ 

      <\equation>
        <label|eq 16.90.181>D<rsup|<around*|[|n+m|]>><rsub|U>f=D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>
      </equation>

      As <math|D<rsup|<around*|[|n+m|]>><rsub|U>f> is <math|1>-times
      differentiable on <math|U> [see eq: <reference|eq 16.175.10>] it
      follows from the above that <math|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>>
      is <math|1>-times differentiable on <math|U>. In other words
      <math|\<forall\>x\<in\>U> <math|><math|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>>
      is Fréchet differentiable at <math|x>, hence by definition we have that

      <\equation>
        <label|eq 16.183.200>D<rsup|<around*|[|n|]>><rsub|U>f<text| is
        ><around*|(|m+1|)><text|-times differentiable on >U
      </equation>

      iwith

      <\equation>
        <label|eq 16.179.10><rigid|D<rsup|<around*|[|m+1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>=D<rsub|x><around*|(|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>|)>>
      </equation>

      So if we define

      <\equation>
        <label|eq 16.180.10>D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>:U\<rightarrow\>L<rsub|n+m+1><around*|(|X;Y|)><text|
        by >D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>=D<rsup|<around*|[|m+1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>
      </equation>

      then <math|\<forall\>x\<in\>U> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)><around*|(|x|)>>|<cell|<below|=|<text|[eq:
        <reference|eq 16.179.10>]>>>|<cell|D<rsub|x><around*|(|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|x><rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|m|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.90.181>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)><around*|(|x|)>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>=D<rsup|<around*|[|1|]>><rsub|U><around*|(|D<rsup|<around*|[|n+m|]>><rsub|U>f|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 16.89.181>]>>D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f
      </equation*>

      As <math|D<rsup|<around*|[|<around*|(|n+m|)>+1|]>><rsub|U>f> is
      continuous [see eq: <reference|eq 16.87.181>] it follows that
      <math|D<rsup|<around*|[|m+1|]>><rsub|U><around*|(|D<rsup|<around*|[|n|]>><rsub|U>f|)>>
      is continuous. As also <math|D<rsup|<around*|[|n|]>><rsub|U>f> is
      <math|<around*|(|m+1|)>>-times differentiable [see eq: <reference|eq
      16.183.200>] we have by definition that\ 

      <\equation*>
        D<rsup|<around*|[|n|]>><rsub|U>f<text| is >C<rsup|m+1><text| on >U
      </equation*>

      \ So we have proved that <math|D<rsup|<around*|[|n|]>>f> is
      <math|C<rsup|m+1>> on <math|U> and <math|D<rsup|<around*|[|m+1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+<around*|(|m+1|)>|]>>f>
      which proves that\ 

      <\equation*>
        n+1\<in\>S<rsub|n>
      </equation*>
    </description>
  </proof>

  \;

  <\lemma>
    <label|lemma 16.97.193>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|L\<in\>L<around*|(|Y,Z|)>>,
    <math|A\<subseteq\>X>, <math|U> a open set in <math|X> with
    <math|U\<subseteq\>A> and <math|<rigid|f:A\<rightarrow\>Y>> ia function
    that is <math|C<rsup|n>> on <math|U> then <math|L\<circ\>f> is
    <math|C<rsup|n>> on <math|U>.
  </lemma>

  <\proof>
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have either:\ 

    <\description>
      <item*|<math|n=0>>As <math|f> is <math|C<rsup|0>> on <math|U> we have
      that <math|f<rsub|\|U>:U\<rightarrow\>Y> is continuous, as
      <math|L\<in\>L<around*|(|Y,Z|)>> hence continuous it follows that
      <math|L\<circ\>f<rsub|\|U>> is continuous. Let <math|x\<in\>U> then
      <math|<around*|(|L\<circ\>f|)><rsub|\|U><around*|(|x|)>=<around*|(|L\<circ\>f|)><around*|(|x|)>=L<around*|(|f<around*|(|x|)>|)>\<equallim\><rsub|x\<in\>U>L<around*|(|f<rsub|\|U><around*|(|x|)>|)>=<around*|(|L\<circ\>f<rsub|\|U>|)><around*|(|x|)>>
      which proves that <math|<around*|(|L\<circ\>f|)><rsub|\|U>=L\<circ\>f<rsub|\|U>>.
      Hence <math|<around*|(|L\<circ\>f|)><rsub|\|U>> is continuous which
      proves that <math|L\<circ\>f> is of class <math|C<rsup|n>>.

      <item*|<math|n\<in\>\<bbb-N\>>>We use induction to prove this, so
      define

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
        are normed spaces, >A\<subseteq\>X<text|, >U<text| a open set in
        <math|X<text|with >U\<subseteq\>A<text| and >f:A\<rightarrow\>Y> is
        >C<rsup|n><text| on >U<text| then
        <math|\<forall\>L\<in\>L<around*|(|Y,X|)><text| we have
        >L\<circ\>f<text| is >C<rsup|\<infty\>><text| on >U>>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|f> is <math|C<rsup|1>> on <math|U> we
        have by definition that <math|f> is <math|1>-times differentiable on
        <math|U> [hence Fréchet differentiable on <math|U>] and the function\ 

        <\equation>
          <label|eq 16.221.300>D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f=D<rsub|x>f
        </equation>

        is continuous. Let <math|x\<in\>U> then as <math|f> is Fréchet
        differentiable at <math|x> it follows from [corollary:
        <reference|diff composition with a linear mapping>] that
        <math|L\<circ\>f> is Fréchet differentiable at <math|x>, hence
        <math|1>-times differentiable at <math|x> with\ 

        <\equation>
          <label|eq 16.222.300>D<rsup|<around*|[|1|]>><rsub|x><around*|(|L\<circ\>f|)>=D<rsub|x><around*|(|L\<circ\>f|)>=L\<circ\>D
          <rsub|x>f=L\<circ\>D<rsup|<around*|[|1|]>><rsub|x>f
        </equation>

        So <math|L\<circ\>f> is <math|1>-times differentiable on <math|U> and
        we can define the function\ 

        <\equation>
          <label|eq 16.223.300>D<rsup|<around*|[|1|]>><rsub|U><around*|(|L\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Z|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|U><around*|(|L\<circ\>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|L\<circ\>f|)>
        </equation>

        Let <math|x\<in\>U> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|U>f|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
          <reference|eq 16.221.300>]>>>|<cell|L\<circ\>D<rsup|<around*|[|1|]>><rsub|x><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.222.300>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|x><around*|(|L\<circ\>f|)>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
          <reference|eq 16.223.300>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|U><around*|(|L\<circ\>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        which proves that\ 

        <\equation*>
          <around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|U>f=D<rsup|<around*|[|1|]>><rsub|U><around*|(|L\<circ\>f|)>
        </equation*>

        As <math|D<rsup|<around*|[|1|]>><rsub|U>f> is continuous and
        <math|<around*|(|L\<circ\>\<ast\>|)>> is continuous by [lemma:
        <reference|lemma 16.93.193>] it follows that
        <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|L\<circ\>f|)>> is
        continuous. Hence we have by definition that <math|L\<circ\>f> is
        <math|C<rsup|1>> on <math|U> which proves that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>If <math|f> is
        <math|C<rsup|n+1>> on <math|U> then using [theorem: <reference|diff f
        is of class C^n if D^1f u=is of class C^n-1 (1)>] it follows that
        <math|f> is <math|1>-times differentiable on <math|U> [hence Fréchet
        differentiable on <math|U>] and the function

        <\equation>
          <label|eq 16.224.300>D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<rsub|1><around*|(|X;Y|)>=L<around*|(|X,Y|)><text|
          where >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f
        </equation>

        is <math|C<rsup|n>> on <math|U>. Let <math|x\<in\>U> then as <math|f>
        is Fréchet differentiable at <math|x> it follows from [corollary:
        <reference|diff composition with a linear mapping>] that
        <math|L\<circ\>f> is Fréchet differentiable at <math|x>, hence
        <math|1>-times differentiable at <math|x> with\ 

        <\equation>
          <label|eq 16.225.300>D<rsup|<around*|[|1|]>><rsub|x><around*|(|L\<circ\>f|)>=D<rsub|x><around*|(|L\<circ\>f|)>=L\<circ\>D
          <rsub|x>f=L\<circ\>D<rsup|<around*|[|1|]>><rsub|x>f
        </equation>

        So we can define\ 

        <\equation>
          <label|eq 16.226.300>D<rsub|U><rsup|<around*|[|1|]>><around*|(|L\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Y|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|U><around*|(|L\<circ\>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|L\<circ\>f|)>
        </equation>

        then we have for <math|x\<in\>U> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|U>f|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.224.300>]>>>|<cell|<around*|(|L\<circ\>\<ast\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|x>f|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>D<rsup|<around*|[|1|]>><rsub|x>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.225.300>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|x><around*|(|L\<circ\>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.226.300>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|U><around*|(|L\<circ\>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        which proves that\ 

        <\equation*>
          <around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|U>f=D<rsup|<around*|[|1|]>><rsub|U><around*|(|L\<circ\>f|)>
        </equation*>

        As <math|D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<around*|(|X,Y|)>>
        is <math|C<rsup|n>> on <math|U>, <math|<around*|(|L\<circ\>\<star\>|)>\<in\>L<around*|(|L<around*|(|X,Y|)>,L<around*|(|X,Z|)>|)>>
        [see lemma: <reference|lemma 16.93.193>] and <math|n\<in\>S> it
        follows that <math|<around*|(|L\<circ\>\<ast\>|)>\<circ\>D<rsup|<around*|[|1|]>><rsub|U>f>
        is of class <math|C<rsup|n>>, hence
        <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|L\<circ\>f|)>> is
        <math|C<rsup|n>> on <math|U>. So by [theorem: <reference|diff f is of
        class C^n if D^1f u=is of class C^n-1 (1)>] it follows that
        <math|L\<circ\>f> is <math|C<rsup|n>> on <math|U> which proves that

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|diff higher order differentiation and vector functions>Let
    <math|n\<in\>\<bbb-N\>>, <math|k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, a tangential spanned set
    <math|A\<subseteq\>X>, <math|x<rsub|0>\<in\>A> and
    <math|f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    then we have\ 

    <\equation*>
      f<text| is >n<text|-times differentiable at >x<rsub|0>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,k|}><text| we have
      >\<pi\><rsub|i>\<circ\>f<text| is >n<text|-times differentiable at
      >x<rsub|0>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [example: <reference|continuity norm
      of projection operator>] it follows that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<in\>L<around*|(|X,Y<rsub|i>|)>>. So, as <math|f>
      is <math|n>-times differentiable at <math|x>, it follows from [lemma:
      <reference|lemma 16.96.193>] that <math|\<pi\><rsub|i>\<circ\>f> is
      <math|n>-times differentiable at <math|x>.

      <item*|<math|\<Leftarrow\>>>We use induction to prove this, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|Let
        <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
        be a normed space, ><around*|{|<around*|\<langle\>|Y<rsub|i>|\<rangle\>>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        be normed spaces,<math|<text| >A\<subseteq\>X<text|,
        >x\<in\>A<rsup|\<circ\>><text| and
        >f:A\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|j><text|
        a function such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        >\<pi\><rsub|i>\<circ\>f<text| is >n<text|-times differentiable at
        >x<text| then >f<text| is >n<text|-times differentiable at
        >x>}>|\<nobracket\>>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable at
        <math|x<rsub|0>> it follows that <math|\<pi\><rsub|i>\<circ\>f> is
        Fréchet differentiable at <math|x<rsub|0>>. Hence using [theorem:
        <reference|diff differential of a vector valued function>] <math|f>
        is Fréchet differentiable at <math|x<rsub|0>> proving that <math|f>
        is <math|1>-times differentiable at <math|x<rsub|0>>. So we conclude
        that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then as
        <math|\<pi\><rsub|i>\<circ\>f> is <math|<around*|(|n+1|)>>-times
        differentiable at <math|x> it follows from [theorem: <reference|diff
        D^f=D^(n-1)D^1f>] that there exist a open set <math|V<rsub|i>> with
        <math|x\<in\>V<rsub|i>\<subseteq\>A> such that
        <math|\<forall\>y\<in\>V<rsub|i>> <math|\<pi\><rsub|i>\<circ\>f> is
        <math|1>-times differentiable at <math|y> and\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V<rsub|i>><around*|(|\<pi\><rsub|i>\<circ\>f|)><rsub|>:V<rsub|i>\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          defined by >D<rsub|V<rsub|i>><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><text|>
        </equation*>

        is <math|n>-times differentiable at <math|x>. Take
        <math|V=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,k|}>>V<rsub|j>>
        then <math|x\<in\>V\<subseteq\>A>. As <math|\<forall\>y\<in\>V>
        <math|y\<in\>V<rsub|i>> it follows that
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable,
        hence we can define\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|i>\<circ\>f|)>=D<rsub|V<rsub|i>><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|y|)>
        </equation*>

        so that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|i>><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><rsub|\|V>
        </equation*>

        As <math|V> is open it follows that <math|V<below|=|<text|[theorem:
        <reference|topology open set and interior>]>>V<rsup|\<circ\>>> so
        that <math|x\<in\>V<rsup|\<circ\>>> hence we can use [theorem:
        <reference|diff higher order differentiation is local>] to prove that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)><text|
          is >n<text|-tmes differentiable at >x
        </equation*>

        Now for\ 

        <\equation>
          <label|eq 16.90.194><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:V\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)><text|><rsub|>
        </equation>

        defined by [see definition: <reference|diff vector functions>]

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>
        </equation*>

        we have for <math|y\<in\>V>, <math|i\<in\><around*|{|1,\<ldots\>,k|}>>
        that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>|)><around*|(|y|)>,\<ldots\>,<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|\<pi\><rsub|i>\<circ\>><math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>>.
        Hence, as <math|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is <math|n>-times differentiable at <math|x>, we have proved that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>\ 

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:V\<rightarrow\>L<around*|(|X,Y<rsub|i>|)>
        </equation*>

        is <math|n>-times differentiable at <math|x>. As <math|n\<in\>S> it
        follows that\ 

        <\equation>
          <label|eq 16.91.194><around*|(|D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|V><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
          is >n<text|-times differentiable at >x
        </equation>

        As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable at
        <math|y\<in\>V> it follows that <math|\<pi\><rsub|i>\<circ\>f> is
        Fréchet differentiable at <math|y>, hence using [theorem:
        <reference|diff differential of a vector valued function>] <math|f>
        is Fréchet differentiable at <math|y> and

        <\equation>
          <label|eq 16.92.194>D<rsub|y><rsup|<around*|[|1|]>>f=D<rsub|y>f=<around*|(|D<rsup|><rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>
        </equation>

        allowing us to define\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|V>f:V\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
          by >D <rsup|<around*|[|1|]>><rsub|V>f<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>f
        </equation*>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] we have that for
        <math|y\<in\>V>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|y|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\>*<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|y|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|y|)>|)><rsub|\<ast\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|y><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.92.194>>>>|<cell|*>>|<row|<cell|D
          <rsub|y><rsup|<around*|[|1|]>>f>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D
          <rsup|<around*|[|1|]>>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>> f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation*>

        As <math|><math|<around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|n>-times differentiable at <math|x> by [eq: <reference|eq
        16.91.194>], it follows from [lemmas: <reference|lemma 16.98.194>,
        <reference|lemma 16.97.193>] that
        <math|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|n>-times differentiable at <math|x> so that
        <math|D<rsup|<around*|[|1|]>>f> is <math|n>-times differentiable at
        <math|x>. Hence using [theorem: <reference|diff D^f=D^(n-1)D^1f>] it
        follows that\ 

        <\equation*>
          f<text| is ><around*|(|n+1|)><text|-times differentiable at >x
        </equation*>

        proving that

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|diff higher order differentiation classes>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|k\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite family of normed spaces, <math|A\<subseteq\>X>, <math|U> a open
    set in <math|X> with <math|U\<subseteq\>A> and
    <math|f:A\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    a function then we have\ 

    <\equation*>
      f<text| is ><text|>C<rsup|n><text| on <math|U>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,k|}><text| we have
      >\<pi\><rsub|i>\<circ\>f<text| is >C<rsup|n><text| on >U
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [example: <reference|continuity norm
      of projection operator>] it follows that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<in\>L<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,Y<rsub|i>|)>>.
      So, as <math|f> is <math|C<rsup|n>> on <math|U>, it follows from
      [lemma: <reference|lemma 16.97.193>] that
      <math|\<pi\><rsub|1>\<circ\>f> is <math|C<rsup|n>> on <math|U>.

      <item*|<math|\<Leftarrow\>>>If <math|n=0> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
      <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|0>> on <math|U> so that
      <math|<around*|(|\<pi\><rsub|i>\<circ\>f|)><rsub|\|U>> is continuous.
      As <math|\<forall\>x\<in\>U> <rigid|<math|<around*|(|\<pi\><rsub|i>\<circ\>f|)><rsub|\|U><around*|(|x|)>=<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>=\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>=\<pi\><rsub|i><around*|(|f<rsub|\|U><around*|(|x|)>|)>=<around*|(|\<pi\><rsub|i>\<circ\>f<rsub|U>|)><around*|(|x|)>>>
      it follows that <math|<rigid|<around*|(|\<pi\><rsub|i>\<circ\>f|)><rsub|\|U>=\<pi\><rsub|i>\<circ\>f<rsub|\|U>>>.
      Hence <math|\<pi\><rsub|i>\<circ\>f<rsub|\|U>> is continuous so that
      using \ [theorem: <reference|continuity product and continuous
      functions>] it follows that <math|f<rsub|U>> is continuous which proves
      that <math|f> is <math|C<rsup|0>> at <math|x>. Hence we just have to
      prove the remaining case where <math|n\<in\>\<bbb-N\>>. For this we
      will use induction so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        \ <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
        is a normed space, ><around*|{|<around*|\<langle\>|Y<rsub|i>|\<rangle\>>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
        a family of normed spaces, <math|A\<subseteq\>X<text|, <math|U> a
        open set in >X<text| with >U\<subseteq\>A<text| and>
        f:A\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|j><text|
        a function such that >\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        >\<pi\><rsub|i>\<circ\>f<text| is >C<rsup|n><text| on <math|U> then
        >f<text| is >C<rsup|n><text| on >U>}>|\<nobracket\>>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|1>> on <math|U> it
        follows that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>>
        <math|\<pi\><rsub|i>\<circ\>f> is <math|1>-times differentiable
        [hence Fréchet differentiable on <math|U>] and the functions

        <\equation>
          <label|eq 16.230.300>D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)>:U\<rightarrow\>L<rsub|n><around*|(|X;Y<rsub|i>|)><text|
          where >D<rsup|<around*|[|1|]><rsub|>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>=D<rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation>

        are continuous. Using [theorem <reference|diff differential of a
        vector valued function>] it follows that <math|f> is Fréchet
        differentiable (hence <math|1>-times differentiable) on <math|U> with\ 

        <\equation>
          <label|eq 16.231.300>\<forall\>x\<in\>U<text|
          >D<rsub|x>f=<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>D<rsub|x><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        So we can define the function

        <\equation>
          <label|eq 16.232.300>D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f
        </equation>

        Using <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194> we have
        <math|\<forall\>x\<in\>U> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.230.300>]>>>|<cell|>>|<row|<cell|\<cal-K\><around*|(|D<rsub|x><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsub|x><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.231.300>]>>>|<cell|>>|<row|<cell|D<rsub|x><rsup|<around*|[|1|]>>f>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.232.300>]>>>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        which proves that\ 

        <\equation>
          <label|eq 16.233.300>D<rsup|<around*|[|1|]>><rsub|U>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        Let <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then
        <math|\<forall\>x\<in\>U> we have that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation*>

        As <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is continuous it follows that <math|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous. By [theorem: <reference|continuity product and
        continuous functions>] <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous which as <math|\<cal-K\>> is continuous [see \ lemma:
        <reference|lemma 16.98.194>] proves that
        <math|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is continuous. Combining this fact with [eq: <reference|eq
        16.233.300>] proves that <math|D<rsup|<around*|[|1|]>><rsub|U>f> is
        continuous which finally proves that <math|f> is <math|C<rsup|1>> on
        <math|U>. Hence <math|f> is <math|C<rsup|1>> on <math|U>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|i\<in\><around*|{|1,\<ldots\>,k|}>> then as
        <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|n+1>> on <math|U> it
        follows from [theorem: <reference|diff f is of class C^n if D^1f u=is
        of class C^n-1 (1)>] that <math|\<pi\><rsub|i>\<circ\>f> is
        <math|1>-times differentiable on <math|U> and the function

        <\equation>
          <label|eq 16.234.300>D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Y<rsub|i>|)><text|
          where >D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|\<pi\><rsub|i>\<circ\>f|)><text|
          is >C<rsup|n><text| on >U
        </equation>

        Consider now the function [see definition: <reference|diff vector
        functions>] \ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>
        </equation*>

        defined by\ 

        <\equation*>
          <around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)>
        </equation*>

        then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>> that
        <math|\<forall\>x\<in\>U>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|z|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<pi\><rsub|i>*<around*|(|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|\<nobracket\>>|)><around*|(|x|)>,\<ldots\>,<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|\<nobracket\>>|)><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<nobracket\>|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|\<nobracket\>>|)><around*|(|x|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>=D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)>
        </equation*>

        As <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        is <math|C<rsup|n>> on <math|U> it follows from the above that\ 

        <\equation*>
          \<pi\><rsub|i>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
          is >C<rsup|n><text| on >U
        </equation*>

        As <math|n\<in\>S> it follows that\ 

        <\equation>
          <label|eq 16.235.300><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><text|
          is >C<rsup|n><text| on >U
        </equation>

        As <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|1>> on <math|U>
        <math|\<pi\><rsub|1>\<circ\>f> is <math|1>-times differentiable
        [hence Fréchet differentiable on <math|U>] it follows from [theorem:
        <reference|diff differential of a vector valued function>] that
        <math|f> is Fréchet differentiable on <math|U> [hence <math|1>-times
        differentiable on <math|U>] and we have for the function\ 

        <\equation>
          <label|eq 16.236.300>D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|(|1,\<ldots\>k|)>>Y<rsub|x>|)><text|
          where >D<rsup|<around*|[|1|]>><rsub|U>f*<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f
        </equation>

        that

        <\equation>
          <label|eq 16.237.300>\<forall\>x\<in\>U<text|
          >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>=D<rsub|x><rsup|<around*|[|1|]>>f=D<rsub|x>f=<around*|(|D<rsub|x><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|x><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        Consider now <math|\<cal-K\>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>L<around*|(|X,Y<rsub|i>|)>\<rightarrow\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>Y<rsub|i>|)>>
        defined in [lemma: <reference|lemma 16.98.194>] then we have
        <math|\<forall\>x\<in\>U> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>|)><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-K\><around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)><around*|(|x|)>|)><rsub|\<ast\>>>|<cell|<below|=|<text|[eq:
          <reference|eq 16.234.300>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsub|y><rsup|<around*|[|1|]>><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.237.300>]>>>|<cell|>>|<row|<cell|<around*|(|D<rsub|U><rsup|<around*|[|1|]>>f|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.238.300>D<rsup|<around*|[|1|]>><rsub|U>f=\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>
        </equation>

        As by [eq: <reference|eq 16.235.300>]
        <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> on <math|U> it follows from \ [lemmas:
        <reference|lemma 16.97.193>, <reference|lemma 16.98.194>] that
        <math|\<cal-K\>\<circ\><around*|(|D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,D<rsup|<around*|[|1|]>><rsub|U><around*|(|\<pi\><rsub|k>\<circ\>f|)>|)><rsub|\<ast\>>>
        is <math|C<rsup|n>> on <math|U> so that by [eq: <reference|eq
        16.238.300>] <math|D<rsup|<around*|[|1|]>><rsub|U>f> is
        <math|C<rsup|<around*|[|n|]>>> on <math|U>. Applying then [theorem:
        <reference|diff f is of class C^n if D^1f u=is of class C^n-1 (1)>]
        proves that <math|f> is <math|C<rsup|n+1>> at <math|x>, hence\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|diff chain rule higher order><index|chain rule higher order
    differentiation><index|higher order differentiation chain
    rule><dueto|General Chain Rule>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|A\<subseteq\>X> a tangential spanning set,
    <math|x<rsub|0>\<in\>A>, <math|B\<subseteq\>Y> a tangential spanning set
    and <math|f:A\<rightarrow\>Y>, <math|<rigid|g:B\<rightarrow\>Z>>
    functions such that <math|f<around*|(|A|)>\<subseteq\>B>, <math|f> is
    <math|n>-times differentiable on <math|x<rsub|0>> and <math|g> is
    <math|n>-times differentiable on <math|f<around*|(|x<rsub|0>|)>> then\ 

    <\equation*>
      g\<circ\>f:A\<rightarrow\>Y<text| is >n<text|-times differentiable at
      >x<rsub|0>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction on <math|n>, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
      are normed spaces,><text| <math|A\<subseteq\>X>,
      >x\<in\>A<rsup|\<circ\>><text|,><text| >B\<subseteq\>Y<text|,
      >f:A\<rightarrow\>Y<text|, ><rigid|g:B\<rightarrow\>Z><text| such that
      \ >f<around*|(|A|)>\<subseteq\>B<text|,
      >f<around*|(|x|)>\<in\>B<rsup|\<circ\>><text|, >f<text| is
      >n<text|-times differentiable at >x<text| and >g<text| is
      >n<text|-times differentiable at >f<around*|(|x|)><text| then
      >g\<circ\>f<text| is >n<text|-times differentiable at >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>As <math|f> is <math|1>-times differentiable at
      <math|x> and <math|g> is <math|1>-times differentiable at
      <math|f<around*|(|x|)>> we have by definition that <math|f> is Fréchet
      differentiable at <math|x> and <math|g> is Fréchet differentiable at
      <math|f<around*|(|x|)>>. So using the chain rule [theorem:
      <reference|diff chain rule>] it follows that <math|g\<circ\>f> is
      Fréchet differentiable at <math|x>. Hence <math|g\<circ\>f> is
      <math|1>-times differentiable at <math|x> which proves that
      <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|f> is
      <math|<around*|(|n+1|)>>-times differentiable at <math|x>, it follows
      from [theorem: <reference|diff n-times and m-times differentiability>]
      that

      <\equation>
        <label|eq 16.101.194>f<text| is >n<text|-times differentiable at >x
      </equation>

      and using [theorem: <reference|diff D^f=D^(n-1)D^1f>] that there exist
      a open <math|V<rsub|1>> in <math|X> with
      <math|x\<in\>V<rsub|1>\<subseteq\>A> such that
      <math|\<forall\>y\<in\>V<rsub|1>> we have that <math|f> is
      <math|1>-times differentiable at <math|y> and that the function

      <\equation*>
        D<rsub|V<rsub|1>><rsup|<around*|[|1|]>>f:V<rsub|1>\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsub|V<rsub|1>><rsup|<around*|[|1|]>>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f\<equallim\><rsub|def>D<rsub|y>f<text|
        is >n<text|-times differentiable at >x
      </equation*>

      Likewise, as <math|g> is <math|<around*|(|n+1|)>>-times differentiable
      at <math|f<around*|(|x|)>> there exist a open set <math|V<rsub|2>> with
      <rigid|<math|f<around*|(|x|)>\<in\>V<rsub|2>\<subseteq\>B>> such that
      <math|\<forall\>z\<in\>V<rsub|2>> <math|g> is <math|1>-times
      differentiable at <math|z> and that the function\ 

      <\equation>
        <label|eq 16.102.194>D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g:V<rsub|2>\<rightarrow\>L<around*|(|Y,Z|)><text|
        where >D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g<around*|(|z|)>=D<rsub|z><rsup|<around*|[|1|]>>g\<equallim\><rsub|def>D<rsub|x>g<text|
        is >n<text|-times differentiable at >f<around*|(|x|)>
      </equation>

      As <math|f> is Fréchet differentiable at <math|x> [because <math|f> is
      <math|1>-times differentiable at <math|x\<in\>V<rsub|1>>] <math|f> is
      by [theorem: <reference|diff differentiable function is continuous>]
      continuous at <math|x>, hence as <math|f<around*|(|x|)>\<in\>V<rsub|2>>
      there exist a open <math|U<rprime|'>> with <math|x\<in\>U<rprime|'>>
      such that <math|f<around*|(|U<rprime|'>|)>\<subseteq\>V<rsub|2>>. Take
      <math|W=V<rsub|1><big|cap>U<rprime|'>> then
      <math|x\<in\>W\<subseteq\>A> and <math|f<around*|(|W|)>\<subseteq\>f<around*|(|U<rprime|'>|)>\<subseteq\>V<rsub|2>\<subseteq\>B>.
      For the function

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|W>f:W\<rightarrow\>L<around*|(|X,Y|)><text|
        defined by >D<rsup|<around*|[|1|]>><rsub|W>f<around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>>f=D<rsub|y>f
      </equation*>

      we have that <math|D<rsup|<around*|[|1|]>><rsub|W>f=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|1>>f|)><rsub|\|W>>
      so that by [theorem: <reference|diff higher order differentiation is
      local>]\ 

      <\equation>
        <label|eq 16.103.194>D<rsup|<around*|[|1|]>><rsub|W>f<text| is
        >n<text|-times differentiable at >x
      </equation>

      As <math|\<forall\>y\<in\>W> <math|y\<in\>V<rsub|1>>,
      <math|f<around*|(|y|)>\<in\>f<around*|(|W|)>\<subseteq\>V<rsub|2>>,
      <math|f> is <math|1>-times differentiable at <math|y> [hence Fréchet
      differentiable at <math|y>] and <math|g> is <math|1>-times
      differentiable at <math|f<around*|(|y|)>> [hence Fréchet differentiable
      at <math|f<around*|(|y|)>>] it follows from [theorem: <reference|diff
      chain rule (1)>] that <math|g\<circ\>f> is Fréchet differentiable at
      <math|y> [hence <math|1>-times differentiable at <math|y>] with

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|y><around*|(|g\<circ\>f|)>=D<rsub|y><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|y|)>>g\<circ\>D<rsub|y>f=D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g\<circ\>D<rsub|y><rsup|<around*|[|1|]>>f
      </equation*>

      This allows us to define\ 

      <\equation>
        <label|eq 16.104.194>D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>:W\<rightarrow\>L<around*|(|X,Z|)><text|
        by >D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>=D<rsub|y><rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g\<circ\>D<rsub|y><rsup|<around*|[|1|]>>f
      </equation>

      Define

      <\equation*>
        h:W\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
        by >h<around*|(|y|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|y|)>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>
      </equation*>

      then we have for <math|y\<in\>W> that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|<around*|(|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.102.194>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|y\<in\>W>>|<cell|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g<around*|(|f<rsub|\|W><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g|)>\<circ\>f<rsub|\|W>|)><around*|(|y|)>>>>>
      </eqnarray*>

      and

      <\equation*>
        <around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|y|)>=\<pi\><rsub|2><around*|(|h<around*|(|y|)>|)>=\<pi\><rsub|2><around*|(|<around*|(|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>|)>=D<rsub|y><rsup|<around*|[|1|]>>f=D<rsup|<around*|[|1|]>><rsub|W>f<around*|(|y|)>
      </equation*>

      proving that\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g|)>\<circ\>f<rsub|\|W><text|
        and >\<pi\><rsub|2>\<circ\>h=D<rsup|<around*|[|1|]>><rsub|W>f
      </equation*>

      By [eq: <reference|eq 16.101.194>] <math|f> is <math|n>-times
      differentiable at <math|x> so that, using [theorem: <reference|diff
      higher order differentiation is local>], <math|f<rsub|\|W>> is
      <math|n>-times differentiable at <math|x>, further by [eq:
      <reference|eq 16.102.194>] <math|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g>
      is <math|n>-times differentiable at <math|f<around*|(|x|)>>. So using
      the fact that <math|n\<in\>S> it follows that
      <math|<around*|(|D<rsup|<around*|[|1|]>><rsub|V<rsub|2>>g|)>\<circ\>f<rsub|\|W>>
      is <math|n>-times differentiable at <math|x> which proves that
      \ <math|\<pi\><rsub|1>\<circ\>h<text| is >n<text|-times differentiable
      at >x>. As also by [eq: <reference|eq 16.103.194>]
      <math|D<rsup|<around*|[|1|]>><rsub|W>f=\<pi\><rsub|2>\<circ\>h> is
      <math|n>-times differentiable at <math|x> it follows that
      <math|\<pi\><rsub|1>\<circ\>h> and <math|\<pi\><rsub|2>\<circ\>h> are
      <math|n>-times differentiable at <math|x>. Combining this with
      [theorem: <reference|diff higher order differentiation and vector
      functions>] proves that

      <\equation>
        <label|eq 16.105.194>h<text| is <math|n>-times differentiable at >x
      </equation>

      Let <math|y\<in\>W> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|<around*|\<nobracket\>|D<rsub|f<around*|(|y|)>><rsup|<around*|[|1|]>>g,D<rsub|y><rsup|<around*|[|1|]>>f|)>|\<nobracket\>>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|y|)>><rsup|1>g\<circ\>D<rsub|y><rsup|<around*|[|1|]>>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.104.194>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)><around*|(|y|)>>>>>
      </eqnarray*>

      which proves that

      <\equation*>
        D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h
      </equation*>

      As by [lemma: <reference|lemma 16.101.194>]
      <math|<around*|(|\<circ\>|)>> is <math|n>-times differentiable on
      <math|><math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>> and <math|h>
      is <math|n>-times differentiable on <math|x> and
      <math|h<around*|(|W|)>\<subseteq\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>>
      it follows from <math|n\<in\>S> that
      <math|<around*|(|\<circ\>|)>\<circ\>h> is <math|n>-times differentiable
      at <math|x>. Hence <math|D<rsup|<around*|[|1|]>><rsub|W><around*|(|g\<circ\>f|)>>
      is <math|n>-times differentiable at <math|x>. Using then [theorem:
      <reference|diff D^f=D^(n-1)D^1f>] proves that <math|g\<circ\>f> is
      <math|<around*|(|n+1|)>>-times differentiable at <math|x> so that

      <\equation*>
        n+1\<in\>S
      </equation*>
    </description>
  </proof>

  <\proof>
    We prove this by induction on <math|n>, so define

    <\equation*>
      S<rsub|X>=<around*|{|n\<in\>\<bbb-N\>\|Let
      <around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>><around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>><text|
      be normed spaces, <math|B\<subseteq\>Y> a tangential spanning set,
      <math|f:A\<rightarrow\>Y<text| a function that is >n<text|-times
      differentiable at >x<rsub|0><text| with
      >f<around*|(|A|)>\<subseteq\>B<text|, >g:B\<rightarrow\>Z<text| a
      function that is >n<text|-times differentiable at
      >f<around*|(|x<rsub|0>|)><text|>> then >g\<circ\>f<text| is
      >n<text|-times differentiable at >x<rsub|0>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S<rsub|X>>>If <math|f:A\<rightarrow\>Y> is
      <math|1>-times differentiable [hence Fréchet differentiable] at
      <math|x<rsub|0>>, <math|f<around*|(|A|)>\<subseteq\>B> and
      <math|g:B\<rightarrow\>Z> is <math|1>-times differentiable [Fréchet
      differentiable] at <math|f<around*|(|x<rsub|0>|)>> we have by the chain
      rule [theorem: <reference|diff chain rule>] that <math|f\<circ\>g> is
      Fréchet differentiable at <math|x<rsub|0>> hence <math|1>-times
      differentiable at <math|x<rsub|0>>. So <math|1\<in\>S<rsub|X>>.

      <item*|<math|n\<in\>S<rsub|X>\<Rightarrow\>n+1\<in\>S<rsub|X>>>Let
      <math|f:A\<rightarrow\>Y> be <math|<around*|(|n+1|)>>-times
      differentiable at <math|x<rsub|0>>,
      <math|f<around*|(|A|)>\<subseteq\>B> and <math|g:B\<rightarrow\>Z> be
      <math|<around*|(|n+1|)>>-times differentiable at
      <math|f<around*|(|x<rsub|0>|)>>. Using [theorem: <reference|diff
      D^f=D^(n-1)D^1f>] we have that <math|f> is <math|1>-times
      differentiable [hence Fréchet differentiable] on <math|A>, <math|g> is
      <math|1>-times differentiable [hence Fréchet differentiable] on
      <math|A> and

      <\equation>
        <label|eq 16.207.310>D<rsup|<around*|[|1|]>>f:A\<rightarrow\>L<around*|(|X,Y|)><text|
        by >D<rsup|<around*|[|1|]>>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f=D<rsub|x>f<text|
        is >n<text|-times differentiable at >x<rsub|0>
      </equation>

      \ and

      <\equation>
        <label|eq 16.208.310>D<rsup|<around*|[|1|]>>g:B\<rightarrow\>L<around*|(|Y,Z|)><text|
        by >D<rsup|<around*|[|2|]>>g<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>g=D<rsub|y>g<text|
        is >n<text|-times differentiable at >f<around*|(|x<rsub|0>|)>
      </equation>

      Let <math|x\<in\>A> then as <math|f> is Fréchet differentiable at
      <math|x> and <math|g> is Fréchet differentiable at
      <math|f<around*|(|x|)>> it follows from the chain rule that
      <math|g\<circ\>f> is Fréchet differentiable [hence <math|1>-times
      differentiable] at <math|x> with

      <\equation>
        <label|eq 16.209.310>D<rsup|<around*|[|1|]>><rsub|x><around*|(|g\<circ\>f|)>=D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f=D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g\<circ\>D<rsup|<around*|[|1|]>><rsub|x>f\<in\>L<around*|(|X,Z|)>
      </equation>

      So we can define\ 

      <\equation>
        <label|eq 16.210.310>D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>:A\<rightarrow\>L<around*|(|X,Z|)><text|
        where >D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|g\<circ\>f|)>
      </equation>

      Define now\ 

      <\equation>
        <label|eq 16.211.310>h:A\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
        by >h<around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>
      </equation>

      then we have <math|\<forall\>x\<in\>A> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.211.310>]>>>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.208.310>]>>>|<cell|D<rsup|<around*|[|1|]>>g<around*|(|f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.211.310>]>>>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|x>f>>|<row|<cell|>|<cell|<below|=|<text|[eq:
        <reference|eq 16.207.310>]>>>|<cell|D<rsup|<around*|[|1|]>>f<around*|(|x|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation>
        <label|eq 16.212.310>\<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f<text|
        and >\<pi\><rsub|2>\<circ\>h=D<rsup|1>f
      </equation>

      As <math|f> is <math|<around*|(|n+1|)>>-times differentiable at
      <math|x<rsub|0>> it follows from [theorem: <reference|diff n-times and
      m-times derivating>] that <math|f> is <math|n>-times differentiable at
      <math|x<rsub|0>>, further by [eq: <reference|eq 16.208.310>]
      <math|D<rsup|<around*|[|1|]>>g> is <math|n>-times differentiable at
      <math|f<around*|(|x<rsub|0>|)>> so using the fact that
      <math|n\<in\>S<rsub|X>> it follows that
      <math|<around*|(|D<rsup|<around*|[|1|]>>g|)>\<circ\>f> is
      <math|n>-times differentiable at <math|x<rsub|0>> or using [eq:
      <reference|eq 16.212.310>]\ 

      <\equation*>
        \<pi\><rsub|1>\<circ\>h<text| is >n<text|-times differentiable at
        >x<rsub|0>
      </equation*>

      Further as by [eq: <reference|eq 16.207.310>] <math|D<rsup|1>f> is
      <math|n>-times differentiable at <math|x<rsub|0>> so that by [eq:
      <reference|eq 16.212.310>]\ 

      <\equation*>
        \<pi\><rsub|2>\<circ\>h<text| is >n<text|-times differentiable at
        >x<rsub|0>
      </equation*>

      Using the above on [theorem: <reference|diff higher order
      differentiation and vector functions>] proves that

      <\equation>
        <label|eq 16.213.310>h<text| is >n<text|-times differentiable at
        >x<rsub|0>
      </equation>

      Let <math|x\<in\>A> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g\<circ\>D<rsup|<around*|[|1|]>><rsub|x>f>>|<row|<cell|>|<cell|<below|=|<text|[eq:
        <reference|eq 16.209.310>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|x><around*|(|g\<circ\>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 16.210.310>]>>>|<cell|D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><around*|(|x|)>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation>
        <label|eq 16.214.310>D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h
      </equation>

      Now <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>> is open in
      <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>> so that by
      [theorem: <reference|diff tangential spanning set examples>]
      <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>><math|> is a
      tangential spanning set, <math|h<around*|(|A|)>\<subseteq\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>>,
      <math|<around*|(|\<circ\>|)>> is <math|n>-times differentiable at
      <math|h<around*|(|x<rsub|0>|)>> [see lemma: <reference|lemma
      16.101.194>], <math|h> is <math|n>-times differentiable at
      <math|x<rsub|0>> [see eq: <reference|eq 16.213.310>] so that as
      <math|n\<in\>S<rsub|X>> it follows that
      <math|<around*|(|\<circ\>|)>\<circ\>h> is <math|n>-times differentiable
      at <math|x<rsub|0>>. Using this result in [eq: <reference|eq
      16.214.310>] proves that\ 

      <\equation*>
        D<rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)><text| is
        >n<text|-times differentiable at >x<rsub|0>
      </equation*>

      Hence using [theorem: <reference|diff D^f=D^(n-1)D^1f>] it follows that\ 

      <\equation*>
        g\<circ\>f<text| is ><around*|(|n+1|)><text|-times differentiable at
        >x<rsub|0>
      </equation*>

      which proves that\ 

      <\equation*>
        n+1\<in\>S<rsub|X>
      </equation*>
    </description>
  </proof>

  <\proof>
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have either:\ 

    <\description>
      <item*|<math|n=0>>Then as <math|f> is <math|C<rsup|0>> on
      <math|U=dom<around*|(|f|)>> <math|f> is continuous, likewise as
      <math|g> is <math|C<rsup|0>> on <math|V=dom<around*|(|g|)>> <math|g> is
      continuous. Hence using [theorem: <reference|continuity composition
      (1)>] it follows that <math|g\<circ\>f> is continuous or in other words
      <math|g\<circ\>f> is <math|C<rsup|0>> on <math|U>.

      <item*|<math|n\<in\>\<bbb-N\>>>We use induction to prove this case, so
      define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|
        are normed spaces, >U<text| a open set in >X<text|, >V<text| a open
        set in >Y<text|, >f:U\<rightarrow\>Y<text| a function that is
        >C<rsup|n><text| on >U<text|and >g:V\<rightarrow\>Z<text| a function
        that is >C<rsup|n><text| on >V<text| such that
        \ >f<around*|(|U|)>\<subseteq\>V<text| then >g\<circ\>f<text| is
        >C<rsup|n><text| on >U|}>
      </equation*>

      then we have either:\ 

      <\description>
        <item*|<math|1\<in\>S>>As <math|f> is <math|C<rsup|1>> on <math|U>
        <math|f> is <math|1>-times differentiable [hence Fréchet
        differentiable] on <math|U>and the function\ 

        <\equation>
          <label|eq 16.244.300>D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<around*|(|X,Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f<text|
          is continuous>
        </equation>

        As <math|g> is <math|C<rsup|1>> on <math|V> <math|g> is
        <math|1>-times differentiable [hence Fréchet differentiable] on
        <math|V> and the function\ 

        <\equation>
          <label|eq 16.245.300>D<rsup|<around*|[|1|]>><rsub|V>g:V\<rightarrow\><around*|(|Y,Z|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V>g<around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>g<text|
          is continuous>
        </equation>

        Using [theorem: <reference|diff chain rule>] it follows that
        <math|g\<circ\>f> is Fréchet differentiable [hence <math|1>-times
        differentiable] on <math|U> with <math|\<forall\>x\<in\>U>
        <math|D<rsup|<around*|[|1|]>><rsub|x><around*|(|g\<circ\>f|)>=D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f>.
        So if we define\ 

        <\equation>
          <label|eq 16.246.300>D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Z|)><text|
          by >D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|g\<circ\>f|)>
        </equation>

        then we have\ 

        <\equation>
          <label|eq 16.247.300>\<forall\>x\<in\>U<text|
          >D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)><around*|(|x|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
        </equation>

        Define the function\ 

        <\equation>
          <label|eq 16.248.300>h:U\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
          by >h<around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>
        </equation>

        then we have for <math|x\<in\>U> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g>>|<row|<cell|>|<cell|<below|=|<text|[eq:
          <reference|eq 16.245.300>]>\<wedge\>f<around*|(|x|)>\<in\>V>>|<cell|D<rsup|<around*|[|1|]>><rsub|V>g<around*|(|f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|V>g\<circ\>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|x>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.244.300>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          \<pi\><rsub|1>\<circ\>h=D<rsup|<around*|[|1|]>><rsub|V>g\<circ\>f<text|
          and >\<pi\><rsub|2>\<circ\>h=D<rsup|<around*|[|1|]>><rsub|U>f
        </equation*>

        As <math|f> is <math|C<rsup|1>> on <math|U> it follows from [theorem:
        <reference|diff C^n and C^m>] that <math|f> is <math|C<rsup|0>> on
        <math|U> hence continuous, as further
        <math|D<rsup|<around*|[|1|]>><rsub|V>g> is continuous it follows that
        <math|D<rsup|<around*|[|1|]>><rsub|V>g\<circ\>f> is continuous which
        proves that <math|\<pi\><rsub|1>\<circ\>h> is continuous. Further
        from the continuity of <math|D<rsup|<around*|[|1|]>><rsub|U>f> it
        follows that <math|\<pi\><rsub|2>\<circ\>h> is continuous. So using
        [theorem: <reference|continuity product and continuous functions>] we
        conclude that\ 

        <\equation>
          <label|eq 16.249.300>h<text| is ontinuous>
        </equation>

        Let <math|x\<in\>U> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|u|)>>g,D<rsup|<around*|[|1|]>><rsub|U>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g\<circ\>D<rsup|<around*|[|1|]>><rsub|U>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.247.300>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        which proves that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h
        </equation*>

        As <math|h> is continuous [see eq: <reference|eq 16.249.300>] and
        <math|<around*|(|\<circ\>|)>> is continuous by \ [lemma:
        <reference|lemma 16.101.194>] it follows that
        <math|<around*|(|\<circ\>|)>\<circ\>h> is continuous so that
        <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)>> is
        continuous. This proves that <math|g\<circ\>f> is of <math|C<rsup|1>>
        on <math|U> which proves that\ 

        <\equation*>
          1\<in\>S
        </equation*>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As <math|f> is
        <math|C<rsup|n+1>> on <math|U> it follows from [theorem:
        <reference|diff f is of class C^n if D^1f u=is of class C^n-1 (1)>]
        that <math|f> is <math|1>-times differentiable [hence Fréchet
        differentiable] on <math|U> and\ 

        <\equation>
          <label|eq 16.250.300>D<rsup|<around*|[|1|]>><rsub|U>f:U\<rightarrow\>L<around*|(|X,Y|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x>f<text|
          is >C<rsup|n><text| on >U
        </equation>

        As <math|g> is <math|C<rsup|n+1>> on <math|V> it follows from
        [theorem: <reference|diff f is of class C^n if D^1f u=is of class
        C^n-1 (1)>] that <math|g> is <math|1>-times differentiable [hence
        Fréchet differentiable] on <math|V> and\ 

        <\equation>
          <label|eq 16.251.300>D<rsup|<around*|[|1|]>><rsub|V>g:V\<rightarrow\>L<around*|(|Y,Z|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|V><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y>g<text|
          is >C<rsup|n><text| on >V
        </equation>

        Using [theorem: <reference|diff chain rule>] it follows that
        <math|g\<circ\>f> is Fréchet differentiable [hence <math|1>-times
        differentiable] on <math|U> with <math|\<forall\>x\<in\>U>
        <math|D<rsup|<around*|[|1|]>><rsub|x><around*|(|g\<circ\>f|)>=D<rsub|x><around*|(|g\<circ\>f|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f>.
        So if we define\ 

        <\equation>
          <label|eq 16.252.300>D<rsub|U><rsup|<around*|[|1|]>><around*|(|g\<circ\>f|)>:U\<rightarrow\>L<around*|(|X,Z|)><text|
          defined by >D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)><around*|(|x|)>=D<rsup|<around*|[|1|]>><rsub|x><around*|(|g\<circ\>f|)>
        </equation>

        then we have\ 

        <\equation>
          <label|eq 16.253.300>\<forall\>x\<in\>U<text|
          >D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)><around*|(|x|)>=D<rsub|f<around*|(|x|)>>g\<circ\>D<rsub|x>f
        </equation>

        Define now the function

        <\equation>
          <label|eq 16.254.300>h:U\<rightarrow\>L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)><text|
          by >h<around*|(|x|)>=<around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>
        </equation>

        then we have <math|\<forall\>x\<in\>U> that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g>>|<row|<cell|>|<cell|<below|=|<text|[eq:
          <reference|eq 16.251.300>]>\<wedge\>f<around*|(|x|)>\<in\>V>>|<cell|D<rsup|<around*|[|1|]>><rsub|V>g<around*|(|f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|<around*|[|1|]>><rsub|V>g\<circ\>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|<around*|[|1|]>><rsub|f<around*|(|x|)>>g,D<rsup|<around*|[|1|]>><rsub|x>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|1|]>><rsub|x>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.244.300>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|U>f<around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 16.255.300>\<pi\><rsub|1>\<circ\>h=D<rsup|<around*|[|1|]>><rsub|V>g\<circ\>f<text|
          and >\<pi\><rsub|2>\<circ\>h=D<rsup|<around*|[|1|]>><rsub|U>f
        </equation>

        As <math|f> is <math|C<rsup|n+1>> on <math|U> we have by [theorem:
        <reference|diff C^n and C^m>] that <math|f> is <math|C<rsup|n>> on
        <math|U>, as further <math|D<rsup|<around*|[|1|]>><rsub|V>g> is
        <math|C<rsup|n>> on <math|V> [see eq: <reference|eq 16.251.300>] and
        <math|n\<in\>S> it follows that <math|D<rsup|<around*|[|a|]>><rsub|V>g\<circ\>f>
        is <math|C<rsup|n>> on <math|U>. Using then [eq: <reference|eq
        16.255.300>] it follows that <math|\<pi\><rsub|1>\<circ\>h> is
        <math|C<rsup|n>> on <math|U>. As by [eq: <reference|eq 16.250.300>]
        <math|D<rsup|<around*|[|1|]>><rsub|U>f> is <math|C<rsup|n>> on
        <math|U> we have also that <math|\<pi\><rsub|2>\<circ\>h> is
        <math|C<rsup|n>> on <math|U>. Using now [lemma: <reference|diff
        higher order differentiation classes>] it follows that\ 

        <\equation>
          <label|eq 16.256.300>h<text| is >C<rsup|n><text| on >U
        </equation>

        Let <math|x\<in\>U> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|<around*|(|D<rsub|f<around*|(|x|)>><rsup|<around*|[|1|]>>g,D<rsub|x><rsup|<around*|[|1|]>>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|x|)>><rsup|<around*|[|1|]>>g<rsub|>\<circ\>D<rsub|x><rsup|<around*|[|1|]>>f>>|<row|<cell|>|<cell|=>|<cell|D<rsub|f<around*|(|x|)>>g<rsub|>\<circ\>D<rsub|x><rsup|>f>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 16.253.300>]>>>|<cell|D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h
        </equation*>

        Now using \ [lemma: <reference|lemma 16.101.194>]
        <math|<around*|(|\<circ\>|)>> is <math|C<rsup|n>> on
        <math|L<around*|(|Y,Z|)>\<cdot\>L<around*|(|X,Y|)>> and by [eq:
        <reference|eq 16.256.300>] <math|h> is <math|C<rsup|n>> on <math|U>.
        Using then the fact that <math|n\<in\>S> it follows that
        <math|<around*|(|\<circ\>|)>\<circ\>h> is <math|C<rsup|n>> on
        <math|U> from which it follows that
        <math|D<rsup|<around*|[|1|]>><rsub|U><around*|(|g\<circ\>f|)>> is
        <math|C<rsup|n>> on <math|U>. So by \ [theorem: <reference|diff f is
        of class C^n if D^1f u=is of class C^n-1 (1)>] <math|g\<circ\>f> is
        <math|C<rsup|n+1>> on <math|U> which proves that\ 

        <\equation*>
          n+1\<in\>S
        </equation*>
      </description>
    </description>
  </proof>

  <\description>
    <item*|<math|x=a>>Then <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|a|)>=f<around*|(|x|)>>.
    As this result is independent of the sign of
    <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rsub|x><rsup|<around*|(|2|)>>>
    we have\ 

    <\equation*>
      <choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
      if >\<forall\>x\<in\><around*|]|a,b|[>
      <around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rsub|x><rsup|<around*|(|2|)>>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
      if <math|\<forall\>x\<in\><around*|]|a,b|[>
      >><around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rsup|<around*|(|2|)>><rsub|x>\<leqslant\>0>>>>>
    </equation*>

    <item*|<math|x=b>>Then <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|b|)>=f<around*|(|x|)>>.
    As this result is independent of the sign of
    <math|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rsup|<around*|(|2|)>><around*|(|x|)>>
    we have\ 

    <\equation*>
      <choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
      if >f<rsup|<around*|(|2|)>><rsub|x>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
      if >f<rsup|<around*|(|2|)>><rsub|x>\<leqslant\>0>>>>>
    </equation*>

    <item*|<math|x\<in\><around*|]|a,b|[>>>Then\ 

    <\equation*>
      <frac|x-a|b-a>+<frac|b-x|b-a>=<frac|x-a+b-x|b-a>=1
    </equation*>

    so by multiplying both sides by <math|f<around*|(|x|)>> we have
    <math|f<around*|(|x|)>=<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>+<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>
    so that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>-<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>|<cell|>|<cell|>>|<row|<cell|<frac|b-x|b-a>\<cdot\>f<around*|(|a|)>+<frac|x-a|b-a>\<cdot\>f<around*|(|b|)>-<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>-<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>|b-a>\<cdot\><around*|(|f<around*|(|b|)>-f<around*|(|x|)>|)>-<frac|b-x|b-a>\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|a|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|<around*|(|b-x|)>\<cdot\><around*|(|x-a|)>|b-a>\<cdot\><frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|<frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>|)>>|<cell|>|<cell|<eq-number><label|eq
      16.242.310>>>>>
    </eqnarray*>

    TODO\ 

    Using the definition of higher order derivatives we have that
    <math|\<forall\>y\<in\><around*|[|a,b|]>>
    <math|f<rsub|\|<around*|[|a,b|]>>> has a derivative at <math|y> and the
    function\ 

    <\equation>
      <label|eq 16.243.310><around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\><text|
      defined by ><around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><around*|(|y|)>=<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y>
    </equation>

    has a derivative at <math|x> with

    <\equation>
      <label|eq 16.244.310><around*|(|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'>|)><rprime|'><rsub|x>=<around*|(|f<rsup|><rsub|\|<around*|[|a,b|]>>|)><rsup|<around*|(|2|)>><rsub|x>
    </equation>

    As <math|<around*|[|a,x|]>\<subseteq\><around*|[|a,b|]>>,
    <math|<around*|[|x,b|]>\<subseteq\><around*|[|a,b|]>> we have by
    Lagrange's theorem [theorem: <reference|diff Lagrange theorem (1)>] that
    there exists <math|y<rsub|1>\<in\><around*|]|a,x|[>>,
    <math|y<rsub|2>\<in\><around*|]|x,b|[>> such that\ 

    <\equation*>
      f<rsub|\|<around*|[|a,b|]>><around*|(|x|)>-f<rsub|\|<around*|[|a,b|]>><around*|(|a|)>=<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y<rsub|1>>\<cdot\><around*|(|x-a|)><text|
      and >f<rsub|\|<around*|[|a,b|]>><around*|(|b|)>-f<rsub|\|<around*|[|a,b|]>><around*|(|x|)>=<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y<rsub|2>>\<cdot\><around*|(|b-x|)>
    </equation*>

    which at <math|f<rsub|\|<around*|[|a,b|]>><around*|(|x|)>\<equallim\><rsub|x\<in\><around*|[|a,b|]>>f<around*|(|x|)>>,
    <math|f<rsub|\|<around*|[|a,b|]>><around*|(|a|)>=a> and
    <math|f<rsub|\|<around*|[|a,b|]>><around*|(|b|)>=f<around*|(|b|)>> gives\ 

    <\equation>
      <label|eq 16.245.310>f<around*|(|x|)>-f<around*|(|b|)>=<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y<rsub|1>>\<cdot\><around*|(|x-a|)><text|
      and >f<around*|(|b|)>-f<around*|(|x|)>=<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y<rsub|2>>\<cdot\><around*|(|b-x|)>
    </equation>

    Substityting [eq: <reference|eq 16.245.310>] in [eq: <reference|eq
    16.242.310>] gives\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|<frac|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y<rsub|2>>\<cdot\><around*|(|b-x|)>|b-x>-<frac|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y<rsub|1>>\<cdot\><around*|(|x-a|)>|x-a>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y<rsub|2>>-<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|y<rsub|1>>|)>>|<cell|<below|=|<text|[eq:
      <reference|eq 16.243.310>]>>>|<cell|>>|<row|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><around*|(|y<rsub|2>|)>-<around*|(|f<rsub|\|<around*|[|a,b|]>>|)><rprime|'><rsub|><around*|(|y<rsub|1>|)>|)>>|<cell|>|<cell|<eq-number><label|eq
      16.246.310>>>>>
    </eqnarray*>

    \;

    \;

    As <math|\<forall\>x\<in\>A<rsup|\<circ\>>> [a open set] <math|f> has a
    <math|2>-the derivative it follows from [theorem: <reference|diff higher
    order derivate on a open set (1)>] that <math|f> has a derivative at
    every <math|x\<in\>A<rsup|\<circ\>>> and the function

    <\equation>
      <label|eq 16.143.200>f<rprime|'>:A<rsup|\<circ\>>\<rightarrow\>\<bbb-R\><text|
      where >f<rprime|'><rsub|><around*|(|x|)>=f<rprime|'><rsub|x><text| has
      >\<forall\>x\<in\>A<rsup|\<circ\>><text| a derivate at >x<text| with
      <math|f<rsup|<around*|(|2|)>><rsub|x>=<around*|(|f<rprime|'>|)><rprime|'><rsub|x>>>
    </equation>

    \;

    <math|>As <math|<around*|[|a,x|]>,<around*|[|x,b|]>\<subseteq\><around*|[|a,b|]>\<subseteq\>A<rsup|\<circ\>>>
    we can apply Lagrange's theorem [corollary: <reference|diff Lagrange
    theorem (1)>] on to find <math|y<rsub|1>\<in\><around*|]|a,x|[>>,
    <math|y<rsub|2>\<in\><around*|]|x,b|[>> such that\ 

    <\equation>
      <label|eq 16.135.195>f<around*|(|x|)>-f<around*|(|a|)>=f<rprime|'><rsub|y<rsub|1>>\<cdot\><around*|(|x-a|)><text|
      and >f<around*|(|b|)>-f<around*|(|x|)>=f<rprime|'><rsub|y<rsub|2>>\<cdot\><around*|(|b-x|)>
    </equation>

    Combining [eq: <reference|eq 16.134.195>] and [eq: <reference|eq
    16.135.195>] gives\ 

    <\equation>
      <label|eq 16.136.195><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|f<rprime|'><around*|(|y<rsub|2>|)>-f<rprime|'><around*|(|y<rsub|1>|)>|)>
    </equation>

    As <math|y<rsub|1>\<in\><around*|]|a,x|[>>,
    <math|y<rsub|2>\<in\><around*|]|x,b|[>> we have
    <math|a\<less\>y<rsub|1>\<less\>x\<less\>y<rsub|2>\<less\>b> so that
    <math|y<rsub|1>\<less\>y<rsub|2>> and
    <math|<around*|[|y<rsub|1>,y<rsub|2>|]>\<subseteq\><around*|[|a,b|]>\<subseteq\>A<rsup|\<circ\>>>.
    Hence using [eq: <reference|eq 16.143.200>] we can apply Lagrange's
    theorem [theorem: <reference|diff Lagrange theorem (1)>] on
    <math|f<rprime|'>> to find a <math|z\<in\><around*|]|y<rsub|1>,y<rsub|2>|[>>
    such that\ 

    <\equation*>
      f<rprime|'><around*|(|y<rsub|2>|)>-f<rprime|'><around*|(|y<rsub|1>|)>=<around*|(|f<rsup|<around*|(|1|)>>|)><rprime|'><rsub|z>\<cdot\><around*|(|y<rsub|2>-y<rsub|1>|)>=f<rsub|z><rsup|<around*|(|2|)>>\<cdot\><around*|(|y<rsub|2>-y<rsub|1>|)>
    </equation*>

    substituting this in [eq: <reference|eq 16.136.195>] gives

    <\equation*>
      <frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\>f<rsup|<around*|(|2|)>><around*|(|z|)>
    </equation*>

    Now as <math|x\<in\><around*|[|a,b|]>> we have that
    <math|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<geqslant\>0>
    so that\ 

    <\equation*>
      <choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
      if >\<forall\>x\<in\><around*|]|a,b|[>
      f<rsup|<around*|(|2|)>><around*|(|x|)>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
      if <math|\<forall\>x\<in\><around*|]|a,b|[>
      >>f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0>>>>>
    </equation*>
  </description>

  So in all cases we have <math|<choice|<tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)><text|
  if >\<forall\>x\<in\><around*|]|a,b|[> f<rsup|<around*|(|2|)>><around*|(|x|)>\<geqslant\>0>>|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)><text|
  if <math|\<forall\>x\<in\><around*|]|a,b|[>
  >>f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0>>>>>> proving that\ 

  <\enumerate>
    <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
    <math|0\<leqslant\>f<rsup|<around*|(|2|)>><rsup|><around*|(|x|)>> then
    <math|f> is convex on <math|<around*|[|a,b|]>>

    <item>If <math|\<forall\>x\<in\><around*|]|a,b|[>>
    <math|f<rsup|<around*|(|2|)>><around*|(|x|)>\<leqslant\>0> then <math|f>
    is concave on <math|<around*|[|a,b|]>>
  </enumerate>

  \;

  <\proof>
    As <math|f> is of class <math|C<rsup|n+1>> it follows that <math|f> is
    <math|<around*|(|n+1|)>>-times differentiable on <math|U> and the
    function

    <\equation*>
      D<rsup|<around*|[|n+1|]>>f:U\<rightarrow\>L<rsub|n+1><around*|(|X;Y|)><text|
      defined by >D<rsup|<around*|[|n+1|]>>f<around*|(|y|)>=D<rsup|<around*|[|n+1|]>><rsub|y>f<text|
      is continuous>
    </equation*>

    Let <math|x\<in\>U> then as <math|f> is <math|<around*|(|n+1|)>>-times
    differentiable at <math|x> we have by definition that <math|f> is
    <math|n>-times differentiable on <math|U> and\ 

    <\equation*>
      D<rsup|<around*|[|n|]>>f:U\<rightarrow\>L<rsub|n><around*|(|X;Y|)><text|
      defined by >D<rsup|<around*|[|n|]>>f<around*|(|y|)>=D<rsup|<around*|[|n|]>><rsub|y>f
    </equation*>

    is Fréchet differentiable [hence <math|1>-timese differentiable] at
    <math|x> with <math|D<rsup|<around*|[|n+1|]>><rsub|x>f=D<rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>>.
    As <math|x\<in\>U> was choosen arbitrary it follows that
    <math|D<rsup|<around*|[|n|]>>f> is <math|1>-times differentiable on
    <math|U> and <math|\<forall\>x\<in\>U>
    <math|<rigid|D<rsup|<around*|[|1|]>><rsub|x><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+1|]>><rsub|x>f>>.
    Define then\ 

    <\equation*>
      D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)>:U\<rightarrow\>L<around*|(|X,L<rsub|n><around*|(|X;Y|)>|)>=L<rsub|n+1><around*|(|X;Y|)><text|
      by >D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)>
    </equation*>

    then <math|\<forall\>y\<in\>U> we have
    <math|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>=D<rsup|<around*|[|1|]>><rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+1|]>><rsub|y>f=D<rsup|<around*|[|n+1|]>>f<around*|(|y|)>>
    which proves that <math|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)>=D<rsup|<around*|[|n+1|]>>f>.
    \ As <math|D<rsup|<around*|[|n+1|]>>f> is continuous it follows that
    <math|D<rsup|<around*|[|1|]>><around*|(|D<rsup|<around*|[|n|]>>f|)>> is
    also continuous from which it follows that\ 

    <\equation*>
      D<rsup|<around*|[|n|]>>f<text| is of class >C<rsup|1>
    </equation*>

    Let <math|y\<in\>U> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<around*|(|y|)>>|<cell|=>|<cell|D<rsup|<around*|[|n|]>><rsub|y>f<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>x<rsub|n>><around*|(|D<rsup|<around*|[|n|]>><rsub|y>f|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|D<rsup|<around*|[|n|]>>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n|]>>f|)><around*|(|y|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      g=<around*|(|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n|]>>f|)>
    </equation*>

    By [lemma: <reference|lemma 16.159.206>]
    <math|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>> is <math|C<rsup|\<infty\>>>
    on <math|L<rsub|n><around*|(|X;Y|)>> and as
    <math|D<rsup|<around*|[|n|]>>f> is <math|C<rsup|1>> on <math|U>, it
    follows from the chain rule [see theorem: <reference|diff chain rule
    higher order class>] that\ 

    <\equation>
      <label|eq 16.230.206>g=ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n|]>>f<text|
      is >C<rsup|1><text| on >U
    </equation>

    and <math|\<forall\>y\<in\>U> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|y>g>|<cell|=>|<cell|D<rsub|y><around*|(|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n|]>>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|diff chain rule>]>>>|<cell|D<rsub|D<rsup|<around*|[|n|]>>f<around*|(|y|)>>ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 16.159.206>]>>>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsub|y><around*|(|D<rsup|<around*|[|n|]>>f|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n+1|]>><rsub|y>f>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      D<rsub|y>g=ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n+1|]>><rsub|y>f
    </equation*>

    Hence if <math|h\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|y>g<around*|(|h|)>>|<cell|=>|<cell|<around*|(|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>>\<circ\>D<rsup|<around*|[|n+1|]>><rsub|y>f|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<rsub|x<rsub|1>,\<ldots\>,x<rsub|n>><around*|(|D<rsup|<around*|[|n+1|]>><rsub|y>f<around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|n+1|]>><rsub|y>f<around*|(|h|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|<around*|[|n+1|]>><rsub|y>f<around*|(|h:x<rsub|1>:\<ldots\>:x<rsub|n>|)>>>>>
    </eqnarray*>

    The lemma is then proved by the above and [eq: <reference|eq
    16.230.206>].
  </proof>

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Fubini's Theorem|<tuple|61|80>>
    <associate|Fubini's theorem|<tuple|63|83>>
    <associate|Holder continuity|<tuple|72|92>>
    <associate|Holder continuity implies continuity|<tuple|73|92>>
    <associate|auto-1|<tuple|open mapping theorem|5>>
    <associate|auto-10|<tuple|higher order differentiation chain rule|?>>
    <associate|auto-2|<tuple|sum over a countable set|8>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|<around*|(|i\<rightarrow\>x|)>>|18>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<Delta\><rsub|i,j>>|19>>
    <associate|auto-5|<tuple|1|23>>
    <associate|auto-6|<tuple|1|67>>
    <associate|auto-7|<tuple|2|71>>
    <associate|auto-8|<tuple|3|72>>
    <associate|auto-9|<tuple|chain rule higher order differentiation|?>>
    <associate|complete open mapping theorem|<tuple|5|5>>
    <associate|conjecture 16.245.134|<tuple|32|38>>
    <associate|conjecture 16.246.135|<tuple|33|39>>
    <associate|continuity L(X,L(Y,Z)) is isometric with
    L(X,Y;Z)|<tuple|21|19>>
    <associate|countable union of a finite family of countable sets is
    countable|<tuple|4|4>>
    <associate|diff (i-\<gtr\>x)|<tuple|17|18>>
    <associate|diff C^(n+m)|<tuple|94|?>>
    <associate|diff chain rule higher order|<tuple|99|?>>
    <associate|diff delta function|<tuple|20|19>>
    <associate|diff derivate and local minimum and maximum|<tuple|81|104>>
    <associate|diff f is of class C^n if D^1f u=is of class
    C^n-1|<tuple|85|108>>
    <associate|diff f is of class C^n if D^1f u=is of class C^n-1
    (1)|<tuple|86|108>>
    <associate|diff higher order differentiation and vector
    functions|<tuple|97|?>>
    <associate|diff higher order differentiation classes|<tuple|98|111>>
    <associate|diff mean value theorem (3)|<tuple|90|119>>
    <associate|diff mean value theorem (5)|<tuple|36|45>>
    <associate|diff mean value theorem (6)|<tuple|38|50>>
    <associate|diff mean value theorem (7)|<tuple|39|50>>
    <associate|diff mean value theorem (8)|<tuple|37|50>>
    <associate|eq 12.10.131|<tuple|1|1>>
    <associate|eq 12.11.131|<tuple|2|1>>
    <associate|eq 12.12.131|<tuple|3|1>>
    <associate|eq 12.13.131|<tuple|4|2>>
    <associate|eq 12.14.131|<tuple|5|2>>
    <associate|eq 12.15.131|<tuple|6|2>>
    <associate|eq 12.281.126|<tuple|97|35>>
    <associate|eq 14.110.151|<tuple|7|2>>
    <associate|eq 14.111.151|<tuple|8|2>>
    <associate|eq 14.112.151|<tuple|9|3>>
    <associate|eq 14.113.151|<tuple|10|3>>
    <associate|eq 14.211.159|<tuple|23|13>>
    <associate|eq 14.212.159|<tuple|24|14>>
    <associate|eq 14.213.159|<tuple|25|14>>
    <associate|eq 14.214.159|<tuple|26|14>>
    <associate|eq 14.215.159|<tuple|27|14>>
    <associate|eq 14.216.159|<tuple|28|15>>
    <associate|eq 14.217.159|<tuple|29|15>>
    <associate|eq 14.218.159|<tuple|30|15>>
    <associate|eq 14.219.160|<tuple|32|15>>
    <associate|eq 14.219.161|<tuple|31|15>>
    <associate|eq 14.220.159|<tuple|33|15>>
    <associate|eq 14.221.519|<tuple|34|15>>
    <associate|eq 14.222.159|<tuple|36|16>>
    <associate|eq 14.223.159.1|<tuple|35|15>>
    <associate|eq 14.225.161|<tuple|37|16>>
    <associate|eq 14.226.161|<tuple|38|16>>
    <associate|eq 14.227\<point\>161|<tuple|39|17>>
    <associate|eq 14.228.161|<tuple|40|17>>
    <associate|eq 14.229.161|<tuple|41|17>>
    <associate|eq 14.230.161|<tuple|42|18>>
    <associate|eq 14.241.164|<tuple|11|5>>
    <associate|eq 14.242.164|<tuple|12|5>>
    <associate|eq 14.243.164|<tuple|13|6>>
    <associate|eq 14.246.165|<tuple|14|6>>
    <associate|eq 14.247.165|<tuple|15|6>>
    <associate|eq 14.248.165|<tuple|16|6>>
    <associate|eq 14.249.165|<tuple|17|6>>
    <associate|eq 14.250.165|<tuple|18|6>>
    <associate|eq 14.251.165|<tuple|19|7>>
    <associate|eq 14.252.165|<tuple|20|7>>
    <associate|eq 14.253.165|<tuple|21|7>>
    <associate|eq 14.254.165|<tuple|22|7>>
    <associate|eq 14.290.294|<tuple|303|95>>
    <associate|eq 14.291.294|<tuple|304|95>>
    <associate|eq 14.292.294|<tuple|305|95>>
    <associate|eq 14.293.291|<tuple|306|96>>
    <associate|eq 14.294.294|<tuple|307|96>>
    <associate|eq 14.295.294|<tuple|308|96>>
    <associate|eq 14.296.294|<tuple|309|96>>
    <associate|eq 14.75.149|<tuple|43|19>>
    <associate|eq 14.76.149|<tuple|44|20>>
    <associate|eq 14.77.149|<tuple|45|20>>
    <associate|eq 14.78.149|<tuple|46|20>>
    <associate|eq 14.79.149|<tuple|47|20>>
    <associate|eq 14.80.149|<tuple|48|20>>
    <associate|eq 14.81.150|<tuple|49|20>>
    <associate|eq 14.82.149|<tuple|50|21>>
    <associate|eq 14.83.150|<tuple|51|21>>
    <associate|eq 14.84.149|<tuple|52|21>>
    <associate|eq 14.85.150|<tuple|53|21>>
    <associate|eq 14.86.150|<tuple|54|21>>
    <associate|eq 14.87.150|<tuple|55|21>>
    <associate|eq 14.88.150|<tuple|56|22>>
    <associate|eq 14.89.150|<tuple|57|22>>
    <associate|eq 14.90.150|<tuple|58|22>>
    <associate|eq 16.101.194|<tuple|441|?>>
    <associate|eq 16.102.194|<tuple|442|?>>
    <associate|eq 16.103.194|<tuple|443|?>>
    <associate|eq 16.104.194|<tuple|444|?>>
    <associate|eq 16.105.194|<tuple|445|?>>
    <associate|eq 16.122.194|<tuple|386|120>>
    <associate|eq 16.123.194|<tuple|387|120>>
    <associate|eq 16.124.194|<tuple|388|121>>
    <associate|eq 16.125.194|<tuple|389|121>>
    <associate|eq 16.126.194|<tuple|69|26>>
    <associate|eq 16.127.194|<tuple|70|26>>
    <associate|eq 16.128.181|<tuple|355|111>>
    <associate|eq 16.128.194|<tuple|71|26>>
    <associate|eq 16.129.181|<tuple|356|112>>
    <associate|eq 16.129.194|<tuple|72|26>>
    <associate|eq 16.130.181|<tuple|357|112>>
    <associate|eq 16.130.194|<tuple|73|27>>
    <associate|eq 16.131.181|<tuple|358|112>>
    <associate|eq 16.132.181|<tuple|359|112>>
    <associate|eq 16.133.181|<tuple|360|113>>
    <associate|eq 16.133.6|<tuple|314|98>>
    <associate|eq 16.134.181|<tuple|361|113>>
    <associate|eq 16.134.6|<tuple|315|99>>
    <associate|eq 16.135.181|<tuple|362|113>>
    <associate|eq 16.135.195|<tuple|473|?>>
    <associate|eq 16.135.6|<tuple|316|99>>
    <associate|eq 16.136.181|<tuple|363|114>>
    <associate|eq 16.136.195|<tuple|474|?>>
    <associate|eq 16.136.6|<tuple|317|99>>
    <associate|eq 16.137.195|<tuple|332|105>>
    <associate|eq 16.137.6|<tuple|318|99>>
    <associate|eq 16.138.195|<tuple|333|105>>
    <associate|eq 16.138.6|<tuple|319|99>>
    <associate|eq 16.139.195|<tuple|334|105>>
    <associate|eq 16.139.6|<tuple|320|100>>
    <associate|eq 16.140.195|<tuple|335|106>>
    <associate|eq 16.140.6|<tuple|321|100>>
    <associate|eq 16.141.195|<tuple|336|106>>
    <associate|eq 16.142.181|<tuple|364|114>>
    <associate|eq 16.142.195|<tuple|337|106>>
    <associate|eq 16.143.181|<tuple|365|114>>
    <associate|eq 16.143.195|<tuple|338|106>>
    <associate|eq 16.143.200|<tuple|472|?>>
    <associate|eq 16.144.181|<tuple|367|114>>
    <associate|eq 16.144.181.1|<tuple|366|114>>
    <associate|eq 16.144.195|<tuple|339|107>>
    <associate|eq 16.145.181|<tuple|368|114>>
    <associate|eq 16.145.195|<tuple|340|107>>
    <associate|eq 16.146.195|<tuple|341|107>>
    <associate|eq 16.147.181|<tuple|369|115>>
    <associate|eq 16.147.195|<tuple|342|107>>
    <associate|eq 16.148.181|<tuple|370|115>>
    <associate|eq 16.148.195|<tuple|343|107>>
    <associate|eq 16.149.181|<tuple|371|116>>
    <associate|eq 16.149.195|<tuple|344|107>>
    <associate|eq 16.150.181|<tuple|372|116>>
    <associate|eq 16.150.195|<tuple|345|107>>
    <associate|eq 16.151.181|<tuple|373|116>>
    <associate|eq 16.152.181|<tuple|374|116>>
    <associate|eq 16.154.141|<tuple|331|104>>
    <associate|eq 16.154.181|<tuple|376|117>>
    <associate|eq 16.172.10|<tuple|412|?>>
    <associate|eq 16.175.10|<tuple|415|?>>
    <associate|eq 16.178.11|<tuple|418|?>>
    <associate|eq 16.179.10|<tuple|421|?>>
    <associate|eq 16.180.10|<tuple|422|?>>
    <associate|eq 16.183.200|<tuple|420|43>>
    <associate|eq 16.184.200|<tuple|118|43>>
    <associate|eq 16.185.200|<tuple|119|43>>
    <associate|eq 16.186.200|<tuple|120|43>>
    <associate|eq 16.196.201|<tuple|121|44>>
    <associate|eq 16.197.201|<tuple|122|44>>
    <associate|eq 16.198.201|<tuple|123|45>>
    <associate|eq 16.199.201|<tuple|124|45>>
    <associate|eq 16.200.124|<tuple|86|32>>
    <associate|eq 16.200.201|<tuple|125|45>>
    <associate|eq 16.201.201|<tuple|126|45>>
    <associate|eq 16.202.201|<tuple|127|46>>
    <associate|eq 16.203.201|<tuple|128|46>>
    <associate|eq 16.204.201|<tuple|129|46>>
    <associate|eq 16.205.201|<tuple|130|46>>
    <associate|eq 16.206.202|<tuple|131|47>>
    <associate|eq 16.207.201|<tuple|133|47>>
    <associate|eq 16.207.201.1|<tuple|132|47>>
    <associate|eq 16.207.310|<tuple|446|?>>
    <associate|eq 16.208.201|<tuple|134|47>>
    <associate|eq 16.208.310|<tuple|447|?>>
    <associate|eq 16.209.201|<tuple|135|48>>
    <associate|eq 16.209.304|<tuple|391|?>>
    <associate|eq 16.209.304.1|<tuple|390|?>>
    <associate|eq 16.209.310|<tuple|448|?>>
    <associate|eq 16.210.304|<tuple|392|?>>
    <associate|eq 16.210.310|<tuple|449|?>>
    <associate|eq 16.211.202|<tuple|136|49>>
    <associate|eq 16.211.304|<tuple|393|?>>
    <associate|eq 16.211.310|<tuple|450|?>>
    <associate|eq 16.212.304|<tuple|394|?>>
    <associate|eq 16.212.310|<tuple|451|?>>
    <associate|eq 16.213.304|<tuple|395|?>>
    <associate|eq 16.213.310|<tuple|452|?>>
    <associate|eq 16.214.304|<tuple|396|?>>
    <associate|eq 16.214.310|<tuple|453|?>>
    <associate|eq 16.215.304|<tuple|397|?>>
    <associate|eq 16.216.304|<tuple|398|?>>
    <associate|eq 16.221.300|<tuple|423|?>>
    <associate|eq 16.222.300|<tuple|424|?>>
    <associate|eq 16.223.300|<tuple|425|?>>
    <associate|eq 16.224.300|<tuple|426|?>>
    <associate|eq 16.225.300|<tuple|427|?>>
    <associate|eq 16.226.141|<tuple|385|120>>
    <associate|eq 16.226.300|<tuple|428|?>>
    <associate|eq 16.230.206|<tuple|475|?>>
    <associate|eq 16.230.300|<tuple|432|?>>
    <associate|eq 16.231.300|<tuple|433|?>>
    <associate|eq 16.232.300|<tuple|434|?>>
    <associate|eq 16.233.300|<tuple|435|?>>
    <associate|eq 16.234.300|<tuple|436|?>>
    <associate|eq 16.235.300|<tuple|437|?>>
    <associate|eq 16.236.300|<tuple|438|?>>
    <associate|eq 16.237.300|<tuple|439|?>>
    <associate|eq 16.238.300|<tuple|440|?>>
    <associate|eq 16.242.310|<tuple|467|?>>
    <associate|eq 16.243.310|<tuple|468|?>>
    <associate|eq 16.244.300|<tuple|454|?>>
    <associate|eq 16.244.310|<tuple|469|?>>
    <associate|eq 16.245.300|<tuple|455|?>>
    <associate|eq 16.245.310|<tuple|470|?>>
    <associate|eq 16.246.300|<tuple|456|?>>
    <associate|eq 16.246.310|<tuple|471|?>>
    <associate|eq 16.247.300|<tuple|457|?>>
    <associate|eq 16.248.300|<tuple|458|?>>
    <associate|eq 16.249.300|<tuple|459|?>>
    <associate|eq 16.250.300|<tuple|460|?>>
    <associate|eq 16.251.300|<tuple|461|?>>
    <associate|eq 16.252.300|<tuple|462|?>>
    <associate|eq 16.253.300|<tuple|463|?>>
    <associate|eq 16.254.300|<tuple|464|?>>
    <associate|eq 16.255.300|<tuple|465|?>>
    <associate|eq 16.256.300|<tuple|466|?>>
    <associate|eq 16.261.222|<tuple|74|29>>
    <associate|eq 16.277.12|<tuple|377|117>>
    <associate|eq 16.280.125.1|<tuple|75|30>>
    <associate|eq 16.280.126|<tuple|100|36>>
    <associate|eq 16.280.127|<tuple|137|51>>
    <associate|eq 16.281.125|<tuple|76|30>>
    <associate|eq 16.281.126|<tuple|101|36>>
    <associate|eq 16.281.127|<tuple|138|51>>
    <associate|eq 16.282.125|<tuple|77|31>>
    <associate|eq 16.282.126|<tuple|102|36>>
    <associate|eq 16.282.127|<tuple|139|52>>
    <associate|eq 16.283.126|<tuple|103|36>>
    <associate|eq 16.284.12|<tuple|378|118>>
    <associate|eq 16.284.124|<tuple|82|31>>
    <associate|eq 16.285.12|<tuple|379|118>>
    <associate|eq 16.285.124|<tuple|80|31>>
    <associate|eq 16.286.12|<tuple|380|118>>
    <associate|eq 16.286.124|<tuple|81|31>>
    <associate|eq 16.287.12|<tuple|381|118>>
    <associate|eq 16.288.12|<tuple|382|118>>
    <associate|eq 16.288.125|<tuple|83|31>>
    <associate|eq 16.289.12|<tuple|383|118>>
    <associate|eq 16.289.124|<tuple|84|32>>
    <associate|eq 16.290.126|<tuple|85|32>>
    <associate|eq 16.291.124|<tuple|87|33>>
    <associate|eq 16.292.125|<tuple|88|33>>
    <associate|eq 16.293.125|<tuple|89|33>>
    <associate|eq 16.294.125|<tuple|90|33>>
    <associate|eq 16.295.125|<tuple|91|33>>
    <associate|eq 16.296.125|<tuple|92|33>>
    <associate|eq 16.297.125|<tuple|93|33>>
    <associate|eq 16.298.125|<tuple|94|33>>
    <associate|eq 16.300.126|<tuple|95|34>>
    <associate|eq 16.353.135|<tuple|104|39>>
    <associate|eq 16.354.135|<tuple|105|39>>
    <associate|eq 16.355.135|<tuple|106|40>>
    <associate|eq 16.359.136|<tuple|107|40>>
    <associate|eq 16.360.136|<tuple|108|40>>
    <associate|eq 16.361.136|<tuple|109|41>>
    <associate|eq 16.362.136|<tuple|110|41>>
    <associate|eq 16.382.139|<tuple|114|42>>
    <associate|eq 16.383.139|<tuple|115|42>>
    <associate|eq 16.384.139|<tuple|113|42>>
    <associate|eq 16.387.138|<tuple|116|42>>
    <associate|eq 16.45.185|<tuple|59|23>>
    <associate|eq 16.46.185|<tuple|60|23>>
    <associate|eq 16.47.185|<tuple|61|23>>
    <associate|eq 16.52.189|<tuple|322|101>>
    <associate|eq 16.53.189|<tuple|323|101>>
    <associate|eq 16.54.189|<tuple|324|101>>
    <associate|eq 16.55.189|<tuple|325|102>>
    <associate|eq 16.56.189|<tuple|326|102>>
    <associate|eq 16.58.189|<tuple|327|103>>
    <associate|eq 16.59.189|<tuple|328|103>>
    <associate|eq 16.60.189|<tuple|329|103>>
    <associate|eq 16.61.189|<tuple|330|103>>
    <associate|eq 16.85.181|<tuple|411|?>>
    <associate|eq 16.86.181|<tuple|413|?>>
    <associate|eq 16.87.181|<tuple|414|?>>
    <associate|eq 16.88.181|<tuple|416|?>>
    <associate|eq 16.89.181|<tuple|417|?>>
    <associate|eq 16.90.181|<tuple|419|?>>
    <associate|eq 16.90.194|<tuple|429|?>>
    <associate|eq 16.91.194|<tuple|430|?>>
    <associate|eq 16.92.194|<tuple|431|?>>
    <associate|eq 18.283.124|<tuple|78|31>>
    <associate|eq 19.536.038|<tuple|186|63>>
    <associate|eq 20.1010.281|<tuple|251|83>>
    <associate|eq 20.1011.281|<tuple|252|83>>
    <associate|eq 20.1012.280|<tuple|233|81>>
    <associate|eq 20.1013.280|<tuple|234|81>>
    <associate|eq 20.1014.280|<tuple|235|81>>
    <associate|eq 20.1014.281|<tuple|255|83>>
    <associate|eq 20.1015.280|<tuple|225|78>>
    <associate|eq 20.1015.281|<tuple|256|83>>
    <associate|eq 20.1016.280|<tuple|226|78>>
    <associate|eq 20.1016.281|<tuple|257|83>>
    <associate|eq 20.1017.280|<tuple|238|81>>
    <associate|eq 20.1017.281|<tuple|258|83>>
    <associate|eq 20.1018.280|<tuple|239|81>>
    <associate|eq 20.1018.281|<tuple|259|83>>
    <associate|eq 20.1019.280|<tuple|240|81>>
    <associate|eq 20.1019.281|<tuple|260|83>>
    <associate|eq 20.1020.280|<tuple|241|81>>
    <associate|eq 20.1020.281|<tuple|261|84>>
    <associate|eq 20.1021.280|<tuple|242|81>>
    <associate|eq 20.1021.281|<tuple|262|84>>
    <associate|eq 20.1022.280|<tuple|243|81>>
    <associate|eq 20.1022.281|<tuple|263|84>>
    <associate|eq 20.1023.280|<tuple|244|81>>
    <associate|eq 20.1023.281|<tuple|264|84>>
    <associate|eq 20.1024.280|<tuple|245|81>>
    <associate|eq 20.1024.281|<tuple|265|84>>
    <associate|eq 20.1025.280|<tuple|246|81>>
    <associate|eq 20.1025.281|<tuple|266|85>>
    <associate|eq 20.1026.280|<tuple|247|81>>
    <associate|eq 20.1026.281|<tuple|267|85>>
    <associate|eq 20.1027.280|<tuple|248|81>>
    <associate|eq 20.1027.281|<tuple|268|85>>
    <associate|eq 20.1028.280|<tuple|249|82>>
    <associate|eq 20.1028.281|<tuple|269|85>>
    <associate|eq 20.1029.280|<tuple|250|82>>
    <associate|eq 20.1029.281|<tuple|270|85>>
    <associate|eq 20.1030.281|<tuple|271|85>>
    <associate|eq 20.1031.281|<tuple|272|85>>
    <associate|eq 20.1032.281|<tuple|273|85>>
    <associate|eq 20.1033.281|<tuple|274|86>>
    <associate|eq 20.1034.281|<tuple|275|86>>
    <associate|eq 20.1035.281|<tuple|276|86>>
    <associate|eq 20.201.217|<tuple|156|58>>
    <associate|eq 20.2017.280|<tuple|227|78>>
    <associate|eq 20.208.204|<tuple|140|52>>
    <associate|eq 20.209.204|<tuple|141|52>>
    <associate|eq 20.210.204|<tuple|142|53>>
    <associate|eq 20.211.204|<tuple|143|53>>
    <associate|eq 20.212.204|<tuple|144|53>>
    <associate|eq 20.213.204|<tuple|145|53>>
    <associate|eq 20.214.204|<tuple|146|54>>
    <associate|eq 20.215.204|<tuple|147|54>>
    <associate|eq 20.216.204|<tuple|148|54>>
    <associate|eq 20.217.204|<tuple|149|55>>
    <associate|eq 20.218.204|<tuple|150|55>>
    <associate|eq 20.219.204|<tuple|151|55>>
    <associate|eq 20.220.204|<tuple|152|55>>
    <associate|eq 20.324.224|<tuple|157|58>>
    <associate|eq 20.325.224|<tuple|158|59>>
    <associate|eq 20.326\<point\>224|<tuple|159|59>>
    <associate|eq 20.421.227|<tuple|232|79>>
    <associate|eq 20.422.227|<tuple|231|79>>
    <associate|eq 20.443.229|<tuple|161|60>>
    <associate|eq 20.444.229|<tuple|162|60>>
    <associate|eq 20.445.229|<tuple|163|60>>
    <associate|eq 20.490.249|<tuple|201|67>>
    <associate|eq 20.500.231|<tuple|202|67>>
    <associate|eq 20.500.232|<tuple|216|70>>
    <associate|eq 20.501.231|<tuple|203|68>>
    <associate|eq 20.501.232|<tuple|217|71>>
    <associate|eq 20.502.231|<tuple|204|68>>
    <associate|eq 20.502.232|<tuple|218|71>>
    <associate|eq 20.503.231|<tuple|205|68>>
    <associate|eq 20.503.261|<tuple|208|68>>
    <associate|eq 20.504.231|<tuple|206|68>>
    <associate|eq 20.504.261|<tuple|209|68>>
    <associate|eq 20.505.231|<tuple|207|68>>
    <associate|eq 20.506.231|<tuple|211|69>>
    <associate|eq 20.507.231|<tuple|210|69>>
    <associate|eq 20.508.231|<tuple|212|69>>
    <associate|eq 20.509.231|<tuple|213|70>>
    <associate|eq 20.510.231|<tuple|214|70>>
    <associate|eq 20.511.231|<tuple|215|70>>
    <associate|eq 20.568.240|<tuple|164|61>>
    <associate|eq 20.569.240|<tuple|165|61>>
    <associate|eq 20.570.240|<tuple|166|61>>
    <associate|eq 20.571.240|<tuple|167|61>>
    <associate|eq 20.572.240|<tuple|168|61>>
    <associate|eq 20.573.240|<tuple|169|61>>
    <associate|eq 20.574.240|<tuple|170|61>>
    <associate|eq 20.575.240|<tuple|171|61>>
    <associate|eq 20.576.240|<tuple|172|62>>
    <associate|eq 20.577.240|<tuple|173|62>>
    <associate|eq 20.578.240|<tuple|174|62>>
    <associate|eq 20.579.240|<tuple|175|62>>
    <associate|eq 20.580.240|<tuple|176|62>>
    <associate|eq 20.581.240|<tuple|177|62>>
    <associate|eq 20.582.240|<tuple|178|62>>
    <associate|eq 20.583.240|<tuple|179|62>>
    <associate|eq 20.637.246|<tuple|219|73>>
    <associate|eq 20.650.246|<tuple|180|63>>
    <associate|eq 20.651.246|<tuple|181|63>>
    <associate|eq 20.652.246|<tuple|182|63>>
    <associate|eq 20.653.246|<tuple|183|63>>
    <associate|eq 20.654.246|<tuple|184|63>>
    <associate|eq 20.655.246|<tuple|185|63>>
    <associate|eq 20.656.246|<tuple|186|63>>
    <associate|eq 20.657.246|<tuple|187|63>>
    <associate|eq 20.658.246|<tuple|188|64>>
    <associate|eq 20.659.246|<tuple|189|64>>
    <associate|eq 20.660.246|<tuple|190|64>>
    <associate|eq 20.661.246|<tuple|191|64>>
    <associate|eq 20.662.246|<tuple|192|64>>
    <associate|eq 20.663.246|<tuple|193|65>>
    <associate|eq 20.664.246|<tuple|194|65>>
    <associate|eq 20.665.246|<tuple|195|65>>
    <associate|eq 20.666.246|<tuple|196|65>>
    <associate|eq 20.667.246|<tuple|197|65>>
    <associate|eq 20.669.247|<tuple|198|65>>
    <associate|eq 20.670.247|<tuple|199|66>>
    <associate|eq 21.1079.291|<tuple|277|87>>
    <associate|eq 21.1080.291|<tuple|278|88>>
    <associate|eq 21.1081.291|<tuple|279|90>>
    <associate|eq 21.1082.291|<tuple|280|90>>
    <associate|eq 21.1083.291|<tuple|281|90>>
    <associate|eq 21.1084.291|<tuple|282|90>>
    <associate|eq 21.1085.291|<tuple|283|90>>
    <associate|eq 21.1086.291|<tuple|285|91>>
    <associate|eq 21.1087.291|<tuple|286|91>>
    <associate|eq 21.1088.291|<tuple|287|91>>
    <associate|eq 21.1089.291|<tuple|288|91>>
    <associate|eq 21.1090.291|<tuple|289|91>>
    <associate|eq 21.1091.291|<tuple|290|91>>
    <associate|eq 21.1092.291|<tuple|291|91>>
    <associate|eq 21.1121.292|<tuple|292|92>>
    <associate|eq 21.1122.292|<tuple|293|93>>
    <associate|eq 21.1123.292|<tuple|294|93>>
    <associate|eq 21.1124.292|<tuple|295|93>>
    <associate|eq 21.1125.292|<tuple|296|94>>
    <associate|eq 21.1126.292|<tuple|297|94>>
    <associate|eq 21.1127.292|<tuple|298|94>>
    <associate|eq 21.1127\<point\>300|<tuple|310|97>>
    <associate|eq 21.1128.292|<tuple|299|94>>
    <associate|eq 21.1128\<point\>300|<tuple|311|97>>
    <associate|eq 21.1129.292|<tuple|300|94>>
    <associate|eq 21.1130.292|<tuple|301|94>>
    <associate|eq 21.1130.300|<tuple|313|98>>
    <associate|eq 21.1131.292|<tuple|302|95>>
    <associate|eq 21.1229.300|<tuple|312|97>>
    <associate|eq 21.27.273|<tuple|220|74>>
    <associate|eq 21.30.273|<tuple|221|74>>
    <associate|figure 20.6.234|<tuple|3|72>>
    <associate|lemma 14.360.158|<tuple|10|10>>
    <associate|lemma 14.364.159|<tuple|14|13>>
    <associate|lemma 16.104.194|<tuple|23|23>>
    <associate|lemma 16.105.194|<tuple|91|120>>
    <associate|lemma 16.106.194|<tuple|25|26>>
    <associate|lemma 16.107.194|<tuple|26|27>>
    <associate|lemma 16.108.194|<tuple|27|28>>
    <associate|lemma 16.135.200|<tuple|89|117>>
    <associate|lemma 16.148.201|<tuple|35|44>>
    <associate|lemma 16.190.122|<tuple|28|29>>
    <associate|lemma 16.201.126|<tuple|30|35>>
    <associate|lemma 16.202.127|<tuple|40|50>>
    <associate|lemma 16.24.178|<tuple|18|18>>
    <associate|lemma 16.25.178|<tuple|19|18>>
    <associate|lemma 16.97.193|<tuple|96|?>>
    <associate|lemma 20.206.204|<tuple|41|52>>
    <associate|lemma 20.207.204|<tuple|42|53>>
    <associate|lemma 20.208.204|<tuple|43|54>>
    <associate|lemma 20.209.204|<tuple|44|54>>
    <associate|lemma 20.211.204|<tuple|46|56>>
    <associate|lemma 20.470.246|<tuple|50|63>>
    <associate|lemma 20.477.246|<tuple|53|72>>
    <associate|lemma 20.613.279|<tuple|56|74>>
    <associate|lemma 21.578.291|<tuple|69|89>>
    <associate|lemma 21.579.291|<tuple|70|90>>
    <associate|lemma 21.587.292|<tuple|74|92>>
    <associate|lemma 21.589.295|<tuple|77|96>>
    <associate|lemma 21.590.292|<tuple|75|94>>
    <associate|lemma 21.591.|<tuple|76|95>>
    <associate|measurability of image of a measurable set by a
    isomorphism|<tuple|64|87>>
    <associate|measurable function sum|<tuple|57|78>>
    <associate|measurable function sum (finite)|<tuple|60|79>>
    <associate|measure Borel measure of T(A)|<tuple|65|87>>
    <associate|measure Borel measure of T(A)(1)|<tuple|67|88>>
    <associate|measure length function is a pre-measure|<tuple|47|56>>
    <associate|non negative function as limit of simple
    functions|<tuple|51|66>>
    <associate|note 21.580.291|<tuple|71|91>>
    <associate|series absolute convergence alternative
    definition|<tuple|11|11>>
    <associate|series absolute convergence commutativity countable
    sums|<tuple|8|8>>
    <associate|series absolute convergence countable family|<tuple|7|8>>
    <associate|series absolute convergence dominant
    convergence|<tuple|13|13>>
    <associate|series absolute convergence of countable families
    condition|<tuple|12|12>>
    <associate|series absolute convergence sum and scalar
    product|<tuple|9|9>>
    <associate|series absolute convergent countable
    associativity|<tuple|15|14>>
    <associate|series absolute sum over a countable set|<tuple|6|8>>
    <associate|series distributivity|<tuple|16|17>>
    <associate|series lemma 14.342|<tuple|3|3>>
    <associate|simple measurable (1)|<tuple|49|60>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||<with|mode|<quote|math>|f>
      apprimated by <with|mode|<quote|math>|f<rsub|2>>>|<pageref|auto-6>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||<with|mode|<quote|math>|f>
      apprimated by <with|mode|<quote|math>|f<rsub|2>>>|<pageref|auto-7>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||<with|mode|<quote|math>|f>
      apprimated by <with|mode|<quote|math>|f<rsub|2>>>|<pageref|auto-8>>
    </associate>
    <\associate|idx>
      <tuple|<tuple|open mapping theorem>|<pageref|auto-1>>

      <tuple|<tuple|sum over a countable set>|<pageref|auto-2>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|i\<rightarrow\>x|)>>>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|\<Delta\><rsub|i,j>>>|<pageref|auto-4>>

      <tuple|<tuple|chain rule higher order
      differentiation>|<pageref|auto-9>>

      <tuple|<tuple|higher order differentiation chain
      rule>|<pageref|auto-10>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|2tab>|1<space|2spc>Product of
      <with|mode|<quote|math>|n>-times differentiable functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>
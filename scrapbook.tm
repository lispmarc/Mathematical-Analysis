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
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|countable union of a finite family of countable sets is
    countable|<tuple|4|?>>
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
    <associate|series lemma 14.342|<tuple|3|3>>
  </collection>
</references>
<TeXmacs|2.1.2>

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
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|eq 12.10.131|<tuple|1|1|../../.Xmacs/texts/scratch/no_name_6.tm>>
    <associate|eq 12.11.131|<tuple|2|1|../../.Xmacs/texts/scratch/no_name_6.tm>>
    <associate|eq 12.12.131|<tuple|3|1|../../.Xmacs/texts/scratch/no_name_6.tm>>
    <associate|eq 12.13.131|<tuple|4|2|../../.Xmacs/texts/scratch/no_name_6.tm>>
    <associate|eq 12.14.131|<tuple|5|2|../../.Xmacs/texts/scratch/no_name_6.tm>>
    <associate|eq 12.15.131|<tuple|6|2|../../.Xmacs/texts/scratch/no_name_6.tm>>
  </collection>
</references>
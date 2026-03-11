’
äC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Userprofile.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Userprofile  
{ 
public 

int 
	ProfileId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

string 
	FirstName 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 

string 
? 

MiddleName 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
LastName 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

string 
? 
CallingName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

byte 
[ 
] 
? 
ProfilePhoto 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 

ReferredBy 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
Gender 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateOnly 
? 
DateOfBirthOfficial (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

DateOnly 
? 
DateOfBirthActual &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

string 
? 
MobileNumber 
{  !
get" %
;% &
set' *
;* +
}, -
public   

string   
?   
AlternateNumber   "
{  # $
get  % (
;  ( )
set  * -
;  - .
}  / 0
public"" 

string"" 
?"" 
PersonalEmail""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
public$$ 

string$$ 
?$$ 
MaritalStatus$$  
{$$! "
get$$# &
;$$& '
set$$( +
;$$+ ,
}$$- .
public&& 

string&& 
?&& 
Nationality&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public(( 

virtual(( 
Employee(( 
Employee(( $
{((% &
get((' *
;((* +
set((, /
;((/ 0
}((1 2
=((3 4
null((5 9
!((9 :
;((: ;
})) ˜≠
ëC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Userauthentication.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Userauthentication '
{ 
public 

int 
UserId 
{ 
get 
; 
set  
;  !
}" #
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
=& '
null( ,
!, -
;- .
public 

string 
PasswordHash 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

bool 
? 
IsFirstLogin 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
LastLoginAt  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
UserRole 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

virtual 
ICollection 
< 
Assessmentform -
>- .
Assessmentforms/ >
{? @
getA D
;D E
setF I
;I J
}K L
=M N
newO R
ListS W
<W X
AssessmentformX f
>f g
(g h
)h i
;i j
public 

virtual 
ICollection 
< 
Assessmentreview /
>/ 0
Assessmentreviews1 B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V
ListW [
<[ \
Assessmentreview\ l
>l m
(m n
)n o
;o p
public   

virtual   
ICollection   
<   

Assignment   )
>  ) *+
AssignmentAssignedByNavigations  + J
{  K L
get  M P
;  P Q
set  R U
;  U V
}  W X
=  Y Z
new  [ ^
List  _ c
<  c d

Assignment  d n
>  n o
(  o p
)  p q
;  q r
public"" 

virtual"" 
ICollection"" 
<"" 

Assignment"" )
>"") *
AssignmentEmployees""+ >
{""? @
get""A D
;""D E
set""F I
;""I J
}""K L
=""M N
new""O R
List""S W
<""W X

Assignment""X b
>""b c
(""c d
)""d e
;""e f
public$$ 

virtual$$ 
ICollection$$ 
<$$ 
Auditlog$$ '
>$$' (
	Auditlogs$$) 2
{$$3 4
get$$5 8
;$$8 9
set$$: =
;$$= >
}$$? @
=$$A B
new$$C F
List$$G K
<$$K L
Auditlog$$L T
>$$T U
($$U V
)$$V W
;$$W X
public&& 

virtual&& 
ICollection&& 
<&& 
Budgetallocation&& /
>&&/ 0,
 BudgetallocationAllocatedByUsers&&1 Q
{&&R S
get&&T W
;&&W X
set&&Y \
;&&\ ]
}&&^ _
=&&` a
new&&b e
List&&f j
<&&j k
Budgetallocation&&k {
>&&{ |
(&&| }
)&&} ~
;&&~ 
public(( 

virtual(( 
ICollection(( 
<(( 
Budgetallocation(( /
>((/ 0)
BudgetallocationEmployeeUsers((1 N
{((O P
get((Q T
;((T U
set((V Y
;((Y Z
}(([ \
=((] ^
new((_ b
List((c g
<((g h
Budgetallocation((h x
>((x y
(((y z
)((z {
;(({ |
public** 

virtual** 
ICollection** 
<** "
Budgetperiodallocation** 5
>**5 6#
Budgetperiodallocations**7 N
{**O P
get**Q T
;**T U
set**V Y
;**Y Z
}**[ \
=**] ^
new**_ b
List**c g
<**g h"
Budgetperiodallocation**h ~
>**~ 
(	** Ä
)
**Ä Å
;
**Å Ç
public,, 

virtual,, 
ICollection,, 
<,, 
Bulkoperationlog,, /
>,,/ 0
Bulkoperationlogs,,1 B
{,,C D
get,,E H
;,,H I
set,,J M
;,,M N
},,O P
=,,Q R
new,,S V
List,,W [
<,,[ \
Bulkoperationlog,,\ l
>,,l m
(,,m n
),,n o
;,,o p
public.. 

virtual.. 
ICollection.. 
<.. "
Departmentheadapproval.. 5
>..5 6#
Departmentheadapprovals..7 N
{..O P
get..Q T
;..T U
set..V Y
;..Y Z
}..[ \
=..] ^
new.._ b
List..c g
<..g h"
Departmentheadapproval..h ~
>..~ 
(	.. Ä
)
..Ä Å
;
..Å Ç
public00 

virtual00 
Employee00 
Employee00 $
{00% &
get00' *
;00* +
set00, /
;00/ 0
}001 2
=003 4
null005 9
!009 :
;00: ;
public22 

virtual22 
ICollection22 
<22 
Feedback22 '
>22' (
	Feedbacks22) 2
{223 4
get225 8
;228 9
set22: =
;22= >
}22? @
=22A B
new22C F
List22G K
<22K L
Feedback22L T
>22T U
(22U V
)22V W
;22W X
public44 

virtual44 
ICollection44 
<44 "
Hrfeedbackformresponse44 5
>445 6#
Hrfeedbackformresponses447 N
{44O P
get44Q T
;44T U
set44V Y
;44Y Z
}44[ \
=44] ^
new44_ b
List44c g
<44g h"
Hrfeedbackformresponse44h ~
>44~ 
(	44 Ä
)
44Ä Å
;
44Å Ç
public66 

virtual66 
ICollection66 
<66 
Hrfeedbackform66 -
>66- .
Hrfeedbackforms66/ >
{66? @
get66A D
;66D E
set66F I
;66I J
}66K L
=66M N
new66O R
List66S W
<66W X
Hrfeedbackform66X f
>66f g
(66g h
)66h i
;66i j
public88 

virtual88 
ICollection88 
<88 
Internalopportunity88 2
>882 3!
Internalopportunities884 I
{88J K
get88L O
;88O P
set88Q T
;88T U
}88V W
=88X Y
new88Z ]
List88^ b
<88b c
Internalopportunity88c v
>88v w
(88w x
)88x y
;88y z
public:: 

virtual:: 
ICollection:: 
<:: 
Leadershipauditlog:: 1
>::1 2
Leadershipauditlogs::3 F
{::G H
get::I L
;::L M
set::N Q
;::Q R
}::S T
=::U V
new::W Z
List::[ _
<::_ `
Leadershipauditlog::` r
>::r s
(::s t
)::t u
;::u v
public<< 

virtual<< 
ICollection<< 
<<< 
Loginattempt<< +
><<+ ,
Loginattempts<<- :
{<<; <
get<<= @
;<<@ A
set<<B E
;<<E F
}<<G H
=<<I J
new<<K N
List<<O S
<<<S T
Loginattempt<<T `
><<` a
(<<a b
)<<b c
;<<c d
public>> 

virtual>> 
ICollection>> 
<>> %
Managernominationtracking>> 8
>>>8 9&
Managernominationtrackings>>: T
{>>U V
get>>W Z
;>>Z [
set>>\ _
;>>_ `
}>>a b
=>>c d
new>>e h
List>>i m
<>>m n&
Managernominationtracking	>>n á
>
>>á à
(
>>à â
)
>>â ä
;
>>ä ã
public@@ 

virtual@@ 
ICollection@@ 
<@@ "
Mentorfeedbacktracking@@ 5
>@@5 6#
Mentorfeedbacktrackings@@7 N
{@@O P
get@@Q T
;@@T U
set@@V Y
;@@Y Z
}@@[ \
=@@] ^
new@@_ b
List@@c g
<@@g h"
Mentorfeedbacktracking@@h ~
>@@~ 
(	@@ Ä
)
@@Ä Å
;
@@Å Ç
publicBB 

virtualBB 
ICollectionBB 
<BB 

NominationBB )
>BB) *#
NominationDeptHeadUsersBB+ B
{BBC D
getBBE H
;BBH I
setBBJ M
;BBM N
}BBO P
=BBQ R
newBBS V
ListBBW [
<BB[ \

NominationBB\ f
>BBf g
(BBg h
)BBh i
;BBi j
publicDD 

virtualDD 
ICollectionDD 
<DD 

NominationDD )
>DD) *$
NominationL1managerUsersDD+ C
{DDD E
getDDF I
;DDI J
setDDK N
;DDN O
}DDP Q
=DDR S
newDDT W
ListDDX \
<DD\ ]

NominationDD] g
>DDg h
(DDh i
)DDi j
;DDj k
publicFF 

virtualFF 
ICollectionFF 
<FF 

NominationFF )
>FF) *$
NominationL2managerUsersFF+ C
{FFD E
getFFF I
;FFI J
setFFK N
;FFN O
}FFP Q
=FFR S
newFFT W
ListFFX \
<FF\ ]

NominationFF] g
>FFg h
(FFh i
)FFi j
;FFj k
publicHH 

virtualHH 
ICollectionHH 
<HH 

NominationHH )
>HH) *&
NominationNominatedByUsersHH+ E
{HHF G
getHHH K
;HHK L
setHHM P
;HHP Q
}HHR S
=HHT U
newHHV Y
ListHHZ ^
<HH^ _

NominationHH_ i
>HHi j
(HHj k
)HHk l
;HHl m
publicJJ 

virtualJJ 
ICollectionJJ 
<JJ 

NominationJJ )
>JJ) *"
NominationNomineeUsersJJ+ A
{JJB C
getJJD G
;JJG H
setJJI L
;JJL M
}JJN O
=JJP Q
newJJR U
ListJJV Z
<JJZ [

NominationJJ[ e
>JJe f
(JJf g
)JJg h
;JJh i
publicLL 

virtualLL 
ICollectionLL 
<LL 

NominationLL )
>LL) *%
NominationReviewedByUsersLL+ D
{LLE F
getLLG J
;LLJ K
setLLL O
;LLO P
}LLQ R
=LLS T
newLLU X
ListLLY ]
<LL] ^

NominationLL^ h
>LLh i
(LLi j
)LLj k
;LLk l
publicNN 

virtualNN 
ICollectionNN 
<NN "
NominationreviewmetricNN 5
>NN5 6#
NominationreviewmetricsNN7 N
{NNO P
getNNQ T
;NNT U
setNNV Y
;NNY Z
}NN[ \
=NN] ^
newNN_ b
ListNNc g
<NNg h"
NominationreviewmetricNNh ~
>NN~ 
(	NN Ä
)
NNÄ Å
;
NNÅ Ç
publicPP 

virtualPP 
ICollectionPP 
<PP  
OrganizationalpolicyPP 3
>PP3 4.
"OrganizationalpolicyCreatedByUsersPP5 W
{PPX Y
getPPZ ]
;PP] ^
setPP_ b
;PPb c
}PPd e
=PPf g
newPPh k
ListPPl p
<PPp q!
Organizationalpolicy	PPq Ö
>
PPÖ Ü
(
PPÜ á
)
PPá à
;
PPà â
publicRR 

virtualRR 
ICollectionRR 
<RR  
OrganizationalpolicyRR 3
>RR3 46
*OrganizationalpolicyPublishedByNavigationsRR5 _
{RR` a
getRRb e
;RRe f
setRRg j
;RRj k
}RRl m
=RRn o
newRRp s
ListRRt x
<RRx y!
Organizationalpolicy	RRy ç
>
RRç é
(
RRé è
)
RRè ê
;
RRê ë
publicTT 

virtualTT 
ICollectionTT 
<TT %
OrganizationwideobjectiveTT 8
>TT8 9&
OrganizationwideobjectivesTT: T
{TTU V
getTTW Z
;TTZ [
setTT\ _
;TT_ `
}TTa b
=TTc d
newTTe h
ListTTi m
<TTm n&
Organizationwideobjective	TTn á
>
TTá à
(
TTà â
)
TTâ ä
;
TTä ã
publicVV 

virtualVV 
ICollectionVV 
<VV 
PayrollVV &
>VV& '"
PayrollApprovedByUsersVV( >
{VV? @
getVVA D
;VVD E
setVVF I
;VVI J
}VVK L
=VVM N
newVVO R
ListVVS W
<VVW X
PayrollVVX _
>VV_ `
(VV` a
)VVa b
;VVb c
publicXX 

virtualXX 
ICollectionXX 
<XX 
PayrollXX &
>XX& ' 
PayrollEmployeeUsersXX( <
{XX= >
getXX? B
;XXB C
setXXD G
;XXG H
}XXI J
=XXK L
newXXM P
ListXXQ U
<XXU V
PayrollXXV ]
>XX] ^
(XX^ _
)XX_ `
;XX` a
publicZZ 

virtualZZ 
ICollectionZZ 
<ZZ 
PeerfeedbackqueueZZ 0
>ZZ0 1
PeerfeedbackqueuesZZ2 D
{ZZE F
getZZG J
;ZZJ K
setZZL O
;ZZO P
}ZZQ R
=ZZS T
newZZU X
ListZZY ]
<ZZ] ^
PeerfeedbackqueueZZ^ o
>ZZo p
(ZZp q
)ZZq r
;ZZr s
public\\ 

virtual\\ 
ICollection\\ 
<\\ 
Policyviolation\\ .
>\\. /(
PolicyviolationEmployeeUsers\\0 L
{\\M N
get\\O R
;\\R S
set\\T W
;\\W X
}\\Y Z
=\\[ \
new\\] `
List\\a e
<\\e f
Policyviolation\\f u
>\\u v
(\\v w
)\\w x
;\\x y
public^^ 

virtual^^ 
ICollection^^ 
<^^ 
Policyviolation^^ .
>^^. /+
PolicyviolationEscalatedToUsers^^0 O
{^^P Q
get^^R U
;^^U V
set^^W Z
;^^Z [
}^^\ ]
=^^^ _
new^^` c
List^^d h
<^^h i
Policyviolation^^i x
>^^x y
(^^y z
)^^z {
;^^{ |
public`` 

virtual`` 
ICollection`` 
<`` 
Policyviolation`` .
>``. /*
PolicyviolationReportedByUsers``0 N
{``O P
get``Q T
;``T U
set``V Y
;``Y Z
}``[ \
=``] ^
new``_ b
List``c g
<``g h
Policyviolation``h w
>``w x
(``x y
)``y z
;``z {
publicbb 

virtualbb 
ICollectionbb 
<bb  
Profilechangerequestbb 3
>bb3 4/
#ProfilechangerequestApprovedByUsersbb5 X
{bbY Z
getbb[ ^
;bb^ _
setbb` c
;bbc d
}bbe f
=bbg h
newbbi l
Listbbm q
<bbq r!
Profilechangerequest	bbr Ü
>
bbÜ á
(
bbá à
)
bbà â
;
bbâ ä
publicdd 

virtualdd 
ICollectiondd 
<dd  
Profilechangerequestdd 3
>dd3 4%
ProfilechangerequestUsersdd5 N
{ddO P
getddQ T
;ddT U
setddV Y
;ddY Z
}dd[ \
=dd] ^
newdd_ b
Listddc g
<ddg h 
Profilechangerequestddh |
>dd| }
(dd} ~
)dd~ 
;	dd Ä
publicff 

virtualff 
ICollectionff 
<ff 
	Promotionff (
>ff( )$
PromotionApprovedByUsersff* B
{ffC D
getffE H
;ffH I
setffJ M
;ffM N
}ffO P
=ffQ R
newffS V
ListffW [
<ff[ \
	Promotionff\ e
>ffe f
(fff g
)ffg h
;ffh i
publichh 

virtualhh 
ICollectionhh 
<hh 
	Promotionhh (
>hh( )"
PromotionEmployeeUsershh* @
{hhA B
gethhC F
;hhF G
sethhH K
;hhK L
}hhM N
=hhO P
newhhQ T
ListhhU Y
<hhY Z
	PromotionhhZ c
>hhc d
(hhd e
)hhe f
;hhf g
publicjj 

virtualjj 
ICollectionjj 
<jj 
Promotionhistoryjj /
>jj/ 0
Promotionhistoriesjj1 C
{jjD E
getjjF I
;jjI J
setjjK N
;jjN O
}jjP Q
=jjR S
newjjT W
ListjjX \
<jj\ ]
Promotionhistoryjj] m
>jjm n
(jjn o
)jjo p
;jjp q
publicll 

virtualll 
ICollectionll 
<ll 
Recognitiondetailll 0
>ll0 1
Recognitiondetailsll2 D
{llE F
getllG J
;llJ K
setllL O
;llO P
}llQ R
=llS T
newllU X
ListllY ]
<ll] ^
Recognitiondetailll^ o
>llo p
(llp q
)llq r
;llr s
publicnn 

virtualnn 
ICollectionnn 
<nn 
Recognitionrewardnn 0
>nn0 1&
RecognitionrewardEmployeesnn2 L
{nnM N
getnnO R
;nnR S
setnnT W
;nnW X
}nnY Z
=nn[ \
newnn] `
Listnna e
<nne f
Recognitionrewardnnf w
>nnw x
(nnx y
)nny z
;nnz {
publicpp 

virtualpp 
ICollectionpp 
<pp 
Recognitionrewardpp 0
>pp0 13
'RecognitionrewardSubmittedByNavigationspp2 Y
{ppZ [
getpp\ _
;pp_ `
setppa d
;ppd e
}ppf g
=pph i
newppj m
Listppn r
<ppr s
Recognitionreward	pps Ñ
>
ppÑ Ö
(
ppÖ Ü
)
ppÜ á
;
ppá à
publicrr 

virtualrr 
ICollectionrr 
<rr 
Refreshtokenrr +
>rr+ ,
Refreshtokensrr- :
{rr; <
getrr= @
;rr@ A
setrrB E
;rrE F
}rrG H
=rrI J
newrrK N
ListrrO S
<rrS T
RefreshtokenrrT `
>rr` a
(rra b
)rrb c
;rrc d
publictt 

virtualtt 
ICollectiontt 
<tt 
Reporttt %
>tt% &
Reportstt' .
{tt/ 0
gettt1 4
;tt4 5
settt6 9
;tt9 :
}tt; <
=tt= >
newtt? B
ListttC G
<ttG H
ReportttH N
>ttN O
(ttO P
)ttP Q
;ttQ R
publicvv 

virtualvv 
ICollectionvv 
<vv 

Rewardtypevv )
>vv) *
Rewardtypesvv+ 6
{vv7 8
getvv9 <
;vv< =
setvv> A
;vvA B
}vvC D
=vvE F
newvvG J
ListvvK O
<vvO P

RewardtypevvP Z
>vvZ [
(vv[ \
)vv\ ]
;vv] ^
publicxx 

virtualxx 
ICollectionxx 
<xx $
Selfassessmentattachmentxx 7
>xx7 8%
Selfassessmentattachmentsxx9 R
{xxS T
getxxU X
;xxX Y
setxxZ ]
;xx] ^
}xx_ `
=xxa b
newxxc f
Listxxg k
<xxk l%
Selfassessmentattachment	xxl Ñ
>
xxÑ Ö
(
xxÖ Ü
)
xxÜ á
;
xxá à
publiczz 

virtualzz 
ICollectionzz 
<zz 
Selfassessmentzz -
>zz- .
Selfassessmentszz/ >
{zz? @
getzzA D
;zzD E
setzzF I
;zzI J
}zzK L
=zzM N
newzzO R
ListzzS W
<zzW X
SelfassessmentzzX f
>zzf g
(zzg h
)zzh i
;zzi j
public|| 

virtual|| 
ICollection|| 
<|| 
Teamworkload|| +
>||+ ,
Teamworkloads||- :
{||; <
get||= @
;||@ A
set||B E
;||E F
}||G H
=||I J
new||K N
List||O S
<||S T
Teamworkload||T `
>||` a
(||a b
)||b c
;||c d
}}} ◊
ãC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\TemplateLogo.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Templatelogo !
{ 
public 

int 
LogoId 
{ 
get 
; 
set  
;  !
}" #
public

 

string

 
LogoName

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
=

) *
null

+ /
!

/ 0
;

0 1
public 

byte 
[ 
] 
	LogoImage 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 

DateTime 
? 
	CreatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
ICollection 
< 
Certificatetemplate 2
>2 3 
Certificatetemplates4 H
{I J
getK N
;N O
setP S
;S T
}U V
=W X
newY \
List] a
<a b
Certificatetemplateb u
>u v
(v w
)w x
;x y
} ç
ãC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Teamworkload.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Teamworkload !
{ 
public 

int 

WorkloadId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 
TeamId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

int 
ManagerUserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
MemberCount 
{ 
get  
;  !
set" %
;% &
}' (
public 

decimal 
AvgWorkload 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

decimal 
WorkloadVariance #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

int 
TasksDistributed 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

DateOnly 
EvaluationDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Userauthentication %
ManagerUser& 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
=@ A
nullB F
!F G
;G H
} Ù 
êC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Slareviewtracking.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Slareviewtracking &
{ 
public 

int 
ReviewTrackingId 
{  !
get" %
;% &
set' *
;* +
}, -
public

 

int

 
Slaid

 
{

 
get

 
;

 
set

 
;

  
}

! "
public 

int 

EmployeeId 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 

ReviewerId 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 

ReviewType 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

string 
ReviewCycle 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 

DateTime 
Deadline 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
? 
SubmittedAt  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

string 
ComplianceStatus "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 

int 
? 
FormId 
{ 
get 
; 
set !
;! "
}# $
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public   

DateTime   
?   
	UpdatedAt   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public"" 

string"" 
?"" 
ReviewerRole"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public$$ 

ulong$$ 
?$$ 
IsManagerSelfReview$$ %
{$$& '
get$$( +
;$$+ ,
set$$- 0
;$$0 1
}$$2 3
public&& 

int&& 
?&& 
ManagerReviewerId&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
public(( 

virtual(( 
Employee(( 
Employee(( $
{((% &
get((' *
;((* +
set((, /
;((/ 0
}((1 2
=((3 4
null((5 9
!((9 :
;((: ;
public** 

virtual** 
Assessmentform** !
?**! "
Form**# '
{**( )
get*** -
;**- .
set**/ 2
;**2 3
}**4 5
public,, 

virtual,, 
Employee,, 
Reviewer,, $
{,,% &
get,,' *
;,,* +
set,,, /
;,,/ 0
},,1 2
=,,3 4
null,,5 9
!,,9 :
;,,: ;
public.. 

virtual.. 
Sla.. 
Sla.. 
{.. 
get..  
;..  !
set.." %
;..% &
}..' (
=..) *
null..+ /
!../ 0
;..0 1
}// ˛
éC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Slanotification.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Slanotification $
{ 
public 

int 
NotificationId 
{ 
get  #
;# $
set% (
;( )
}* +
public

 

int

 
Slaid

 
{

 
get

 
;

 
set

 
;

  
}

! "
public 

int 

EmployeeId 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
NotificationType "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 

string 
NotificationSubject %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
null6 :
!: ;
;; <
public 

string 
NotificationBody "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 

DateTime 
SentAt 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
DeliveryStatus  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

DateTime 
? 
ReadAt 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
Channel 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 

virtual 
Employee 
Employee $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

virtual 
Sla 
Sla 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
} Ê
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Slahistory.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Slahistory 
{ 
public 

int 
SlahistoryId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
Slaid

 
{

 
get

 
;

 
set

 
;

  
}

! "
public 

string 

ChangeType 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

string 
? 
ChangedFrom 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
	ChangedTo 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
? 
ChangedByEmployeeId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

int 
? !
ReferenceEscalationId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

string 
? 
Reason 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
Metadata 
{ 
get !
;! "
set# &
;& '
}( )
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Employee 
? 
ChangedByEmployee .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 

virtual 
Slaescalation  
?  !
ReferenceEscalation" 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public   

virtual   
Sla   
Sla   
{   
get    
;    !
set  " %
;  % &
}  ' (
=  ) *
null  + /
!  / 0
;  0 1
}!!  !
åC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Slaescalation.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Slaescalation "
{ 
public 

int 
EscalationId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
Slaid

 
{

 
get

 
;

 
set

 
;

  
}

! "
public 

string 
Reason 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
EscalationLevel !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 

int !
EscalatedToEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
EscalationStatus "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 

DateTime 
? 
EscalationDeadline '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

DateTime 
? 

ResolvedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
?  
ResolvedByEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
? 
ResolutionComments %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

int 
? 
SubmittedBy 
{ 
get !
;! "
set# &
;& '
}( )
public   

int   !
SubmittedByEmployeeId   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
public"" 

DateTime"" 
?"" 
SubmittedAt""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
public$$ 

virtual$$ 
Employee$$ 
EscalatedToEmployee$$ /
{$$0 1
get$$2 5
;$$5 6
set$$7 :
;$$: ;
}$$< =
=$$> ?
null$$@ D
!$$D E
;$$E F
public&& 

virtual&& 
Employee&& 
?&& 
ResolvedByEmployee&& /
{&&0 1
get&&2 5
;&&5 6
set&&7 :
;&&: ;
}&&< =
public(( 

virtual(( 
Sla(( 
Sla(( 
{(( 
get((  
;((  !
set((" %
;((% &
}((' (
=(() *
null((+ /
!((/ 0
;((0 1
public** 

virtual** 
ICollection** 
<** 

Slahistory** )
>**) *
Slahistories**+ 7
{**8 9
get**: =
;**= >
set**? B
;**B C
}**D E
=**F G
new**H K
List**L P
<**P Q

Slahistory**Q [
>**[ \
(**\ ]
)**] ^
;**^ _
public,, 

virtual,, 
Employee,, 
SubmittedByEmployee,, /
{,,0 1
get,,2 5
;,,5 6
set,,7 :
;,,: ;
},,< =
=,,> ?
null,,@ D
!,,D E
;,,E F
}-- «
åC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Slacompliance.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Slacompliance "
{ 
public 

int 
ComplianceId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
DepartmentId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
? 
TeamId 
{ 
get 
; 
set !
;! "
}# $
public 

string 
Period 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

DateOnly 
PeriodStartDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

DateOnly 
PeriodEndDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

int 
	TotalSlas 
{ 
get 
; 
set  #
;# $
}% &
public 

int 

OnTimeSlas 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 
BreachedSlas 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
ExtendedSlas 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
PendingSlas 
{ 
get  
;  !
set" %
;% &
}' (
public 

decimal 
?  
CompliancePercentage (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public   

DateTime   
CalculatedAt    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
public"" 

int"" 
?"" 
CalculatedBy"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public$$ 

DateTime$$ 
	CreatedAt$$ 
{$$ 
get$$  #
;$$# $
set$$% (
;$$( )
}$$* +
public&& 

DateTime&& 
?&& 
	UpdatedAt&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public(( 

virtual(( 
Employee(( 
?(( "
CalculatedByNavigation(( 3
{((4 5
get((6 9
;((9 :
set((; >
;((> ?
}((@ A
public** 

virtual** 

Department** 

Department** (
{**) *
get**+ .
;**. /
set**0 3
;**3 4
}**5 6
=**7 8
null**9 =
!**= >
;**> ?
}++ Û4
ÇC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Sla.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Sla 
{ 
public 

int 
Slaid 
{ 
get 
; 
set 
;  
}! "
public

 

string

 
Slatype

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
=

( )
null

* .
!

. /
;

/ 0
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 

EmployeeId 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 
DepartmentId 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
?  
AssignedToEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

DateTime 
Deadline 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
? 
ClosedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
ComplianceStatus "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 

DateTime 
? 

ReopenedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
?  
ReopenedByEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

int 
? 
ReopenExtensionDays #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   

string   
?   
ReopenReason   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public"" 

string"" 
?"" 
RelatedEntityType"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
public$$ 

int$$ 
?$$ 
RelatedEntityId$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 

int&& 
?&& 
	CreatedBy&& 
{&& 
get&& 
;&&  
set&&! $
;&&$ %
}&&& '
public(( 

int(( 
CreatedByEmployeeId(( "
{((# $
get((% (
;((( )
set((* -
;((- .
}((/ 0
public** 

DateTime** 
?** 
	CreatedAt** 
{**  
get**! $
;**$ %
set**& )
;**) *
}**+ ,
public,, 

DateTime,, 
?,, 
	UpdatedAt,, 
{,,  
get,,! $
;,,$ %
set,,& )
;,,) *
},,+ ,
public.. 

int.. 
ReopenCount.. 
{.. 
get..  
;..  !
set.." %
;..% &
}..' (
public00 

bool00 
IsAutoClosed00 
{00 
get00 "
;00" #
set00$ '
;00' (
}00) *
public22 

DateTime22 
?22  
LastNotificationSent22 )
{22* +
get22, /
;22/ 0
set221 4
;224 5
}226 7
public44 

virtual44 
Employee44 
?44 
AssignedToEmployee44 /
{440 1
get442 5
;445 6
set447 :
;44: ;
}44< =
public66 

virtual66 

Department66 

Department66 (
{66) *
get66+ .
;66. /
set660 3
;663 4
}665 6
=667 8
null669 =
!66= >
;66> ?
public88 

virtual88 
Employee88 
Employee88 $
{88% &
get88' *
;88* +
set88, /
;88/ 0
}881 2
=883 4
null885 9
!889 :
;88: ;
public:: 

virtual:: 
Employee:: 
?:: 
ReopenedByEmployee:: /
{::0 1
get::2 5
;::5 6
set::7 :
;::: ;
}::< =
public<< 

virtual<< 
ICollection<< 
<<< 
Slaescalation<< ,
><<, -
Slaescalations<<. <
{<<= >
get<<? B
;<<B C
set<<D G
;<<G H
}<<I J
=<<K L
new<<M P
List<<Q U
<<<U V
Slaescalation<<V c
><<c d
(<<d e
)<<e f
;<<f g
public>> 

virtual>> 
ICollection>> 
<>> 

Slahistory>> )
>>>) *
Slahistories>>+ 7
{>>8 9
get>>: =
;>>= >
set>>? B
;>>B C
}>>D E
=>>F G
new>>H K
List>>L P
<>>P Q

Slahistory>>Q [
>>>[ \
(>>\ ]
)>>] ^
;>>^ _
public@@ 

virtual@@ 
ICollection@@ 
<@@ 
Slanotification@@ .
>@@. /
Slanotifications@@0 @
{@@A B
get@@C F
;@@F G
set@@H K
;@@K L
}@@M N
=@@O P
new@@Q T
List@@U Y
<@@Y Z
Slanotification@@Z i
>@@i j
(@@j k
)@@k l
;@@l m
publicBB 

virtualBB 
ICollectionBB 
<BB 
SlareviewtrackingBB 0
>BB0 1
SlareviewtrackingsBB2 D
{BBE F
getBBG J
;BBJ K
setBBL O
;BBO P
}BBQ R
=BBS T
newBBU X
ListBBY ]
<BB] ^
SlareviewtrackingBB^ o
>BBo p
(BBp q
)BBq r
;BBr s
}CC ≤
óC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Selfassessmentattachment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class $
Selfassessmentattachment -
{ 
public 

int 
AttachmentId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
AssessmentId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
? 

UploadedBy 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
FileName 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

string 
FilePath 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

string 
? 
FileType 
{ 
get !
;! "
set# &
;& '
}( )
public 

long 
? 
FileSize 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
AttachmentNote !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

int 
? 
DisplayOrder 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
? 

UploadedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Selfassessment !

Assessment" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public   

virtual   
Userauthentication   %
?  % & 
UploadedByNavigation  ' ;
{  < =
get  > A
;  A B
set  C F
;  F G
}  H I
}!! ∂
çC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Selfassessment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Selfassessment #
{ 
public 

int 
AssessmentId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
FormId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

int 

EmployeeId 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
? 
SubmittedAt  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
Status 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual 
ICollection 
< 
Assessmentdetail /
>/ 0
Assessmentdetails1 B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V
ListW [
<[ \
Assessmentdetail\ l
>l m
(m n
)n o
;o p
public 

virtual 
ICollection 
< "
Departmentheadapproval 5
>5 6#
Departmentheadapprovals7 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
=] ^
new_ b
Listc g
<g h"
Departmentheadapprovalh ~
>~ 
(	 Ä
)
Ä Å
;
Å Ç
public 

virtual 
Userauthentication %
Employee& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
null? C
!C D
;D E
public 

virtual 
Assessmentform !
Form" &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
public 

virtual 
ICollection 
< $
Selfassessmentattachment 7
>7 8%
Selfassessmentattachments9 R
{S T
getU X
;X Y
setZ ]
;] ^
}_ `
=a b
newc f
Listg k
<k l%
Selfassessmentattachment	l Ñ
>
Ñ Ö
(
Ö Ü
)
Ü á
;
á à
} ™
ÉC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Role.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Role 
{ 
public 

int 
RoleId 
{ 
get 
; 
set  
;  !
}" #
public

 

string

 
RoleName

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
=

) *
null

+ /
!

/ 0
;

0 1
public 

string 
RoleCode 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

bool 
? 
IsSystemRole 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
ICollection 
< !
Employeedetailsmaster 4
>4 5"
Employeedetailsmasters6 L
{M N
getO R
;R S
setT W
;W X
}Y Z
=[ \
new] `
Lista e
<e f!
Employeedetailsmasterf {
>{ |
(| }
)} ~
;~ 
} ˝
ÉC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Risk.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Risk 
{ 
public 

int 
RiskId 
{ 
get 
; 
set  
;  !
}" #
public

 

int

 
?

 
DepartmentId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 

string 
? 
RiskType 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 

TrendGraph 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
PeriodStart  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateTime 
? 
	PeriodEnd 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

DateTime 
? 
	CreatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 

Department 
? 

Department )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} •
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Rewardtype.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Rewardtype 
{ 
public 

int 
RewardTypeId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

string

 
RewardCategory

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
=

/ 0
null

1 5
!

5 6
;

6 7
public 

string 

RewardName 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

bool 
? 
IsActive 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 
? 
	CreatedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Userauthentication %
?% &
CreatedByNavigation' :
{; <
get= @
;@ A
setB E
;E F
}G H
public 

virtual 
ICollection 
< 
Nominationparameter 2
>2 3 
Nominationparameters4 H
{I J
getK N
;N O
setP S
;S T
}U V
=W X
newY \
List] a
<a b
Nominationparameterb u
>u v
(v w
)w x
;x y
public 

virtual 
ICollection 
< 
Recognitiondetail 0
>0 1
Recognitiondetails2 D
{E F
getG J
;J K
setL O
;O P
}Q R
=S T
newU X
ListY ]
<] ^
Recognitiondetail^ o
>o p
(p q
)q r
;r s
} ﬁ
ÖC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Review.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Review 
{ 
public 

int 
ReviewId 
{ 
get 
; 
set "
;" #
}$ %
public

 

int

 
?

 
GoalId

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 

string 
? 
GoalName 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
Comments 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

int 
SubmittedBy 
{ 
get  
;  !
set" %
;% &
}' (
public 

DateTime 
? 
SubmittedAt  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

virtual 
Goal 
? 
Goal 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Employee !
SubmittedByNavigation 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
=@ A
nullB F
!F G
;G H
} å
ÖC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Report.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Report 
{ 
public 

int 
ReportId 
{ 
get 
; 
set "
;" #
}$ %
public

 

string

 
?

 
Title

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 

string 
? 
Summary 
{ 
get  
;  !
set" %
;% &
}' (
public 

int 
? 
GeneratedBy 
{ 
get !
;! "
set# &
;& '
}( )
public 

DateTime 
? 
SubmissionDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

string 
? 
PdfPath 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
? 
	ExcelPath 
{ 
get "
;" #
set$ '
;' (
}) *
public 

virtual 
Userauthentication %
?% &!
GeneratedByNavigation' <
{= >
get? B
;B C
setD G
;G H
}I J
} “
ãC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Refreshtoken.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Refreshtoken !
{ 
public 

int 
TokenId 
{ 
get 
; 
set !
;! "
}# $
public

 

int

 
UserId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

string 
Token 
{ 
get 
; 
set "
;" #
}$ %
=& '
null( ,
!, -
;- .
public 

DateTime 
	ExpiresAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

bool 
	IsRevoked 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	RevokedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
	IpAddress 
{ 
get "
;" #
set$ '
;' (
}) *
public 

virtual 
Userauthentication %
User& *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
} Ö!
êC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Recognitionstatus.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Recognitionstatus &
{ 
public 

int 
NominationId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
OpportunityId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 

int 
NomineeEmployeeId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
NominationType  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

int !
NominatedByEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
? 
Justification  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
?  
ReviewedByEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
? 
ReviewRemarks  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateTime 
SubmittedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
? 

ReviewedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

virtual 
Employee 
NominatedByEmployee /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
null@ D
!D E
;E F
public   

virtual   
ICollection   
<   $
Nominationparametervalue   7
>  7 8%
Nominationparametervalues  9 R
{  S T
get  U X
;  X Y
set  Z ]
;  ] ^
}  _ `
=  a b
new  c f
List  g k
<  k l%
Nominationparametervalue	  l Ñ
>
  Ñ Ö
(
  Ö Ü
)
  Ü á
;
  á à
public"" 

virtual"" 
ICollection"" 
<"" (
Nominationvisibilitytracking"" ;
>""; <)
Nominationvisibilitytrackings""= Z
{""[ \
get""] `
;""` a
set""b e
;""e f
}""g h
=""i j
new""k n
List""o s
<""s t)
Nominationvisibilitytracking	""t ê
>
""ê ë
(
""ë í
)
""í ì
;
""ì î
public$$ 

virtual$$ 
Employee$$ 
NomineeEmployee$$ +
{$$, -
get$$. 1
;$$1 2
set$$3 6
;$$6 7
}$$8 9
=$$: ;
null$$< @
!$$@ A
;$$A B
public&& 

virtual&& 
Recognitiondetail&& $
Opportunity&&% 0
{&&1 2
get&&3 6
;&&6 7
set&&8 ;
;&&; <
}&&= >
=&&? @
null&&A E
!&&E F
;&&F G
public(( 

virtual(( 
Employee(( 
?(( 
ReviewedByEmployee(( /
{((0 1
get((2 5
;((5 6
set((7 :
;((: ;
}((< =
})) ë
êC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Recognitionreward.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Recognitionreward &
{ 
public 

int 
RewardId 
{ 
get 
; 
set "
;" #
}$ %
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

string 
? 

RewardType 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
AmountGrade 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
Reason 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
? 

RewardDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? 
SubmittedBy 
{ 
get !
;! "
set# &
;& '
}( )
public 

virtual 
Userauthentication %
Employee& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
null? C
!C D
;D E
public 

virtual 
Userauthentication %
?% &!
SubmittedByNavigation' <
{= >
get? B
;B C
setD G
;G H
}I J
} ‡
êC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Recognitiondetail.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Recognitiondetail &
{ 
public 

int 
OpportunityId 
{ 
get "
;" #
set$ '
;' (
}) *
public

 

string

 
OpportunityName

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
=

0 1
null

2 6
!

6 7
;

7 8
public 

int 
DepartmentId 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
RewardTypeId 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
Requirements 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
EligibilityCriteria &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

DateOnly 
Deadline 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
PostedByUserId 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public   

virtual   

Department   

Department   (
{  ) *
get  + .
;  . /
set  0 3
;  3 4
}  5 6
=  7 8
null  9 =
!  = >
;  > ?
public"" 

virtual"" 
Userauthentication"" %
PostedByUser""& 2
{""3 4
get""5 8
;""8 9
set"": =
;""= >
}""? @
=""A B
null""C G
!""G H
;""H I
public$$ 

virtual$$ 
ICollection$$ 
<$$ 
Recognitionstatus$$ 0
>$$0 1
Recognitionstatuses$$2 E
{$$F G
get$$H K
;$$K L
set$$M P
;$$P Q
}$$R S
=$$T U
new$$V Y
List$$Z ^
<$$^ _
Recognitionstatus$$_ p
>$$p q
($$q r
)$$r s
;$$s t
public&& 

virtual&& 

Rewardtype&& 

RewardType&& (
{&&) *
get&&+ .
;&&. /
set&&0 3
;&&3 4
}&&5 6
=&&7 8
null&&9 =
!&&= >
;&&> ?
}'' Ÿ
èC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Promotionhistory.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Promotionhistory %
{ 
public 

int 
	HistoryId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 
EmployeeUserId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 

int 
PromotionId 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
? 
FromRole 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
ToRole 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

decimal 
SalaryChange 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateOnly 
PromotionDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

DateTime 

RecordedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Userauthentication %
EmployeeUser& 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
nullC G
!G H
;H I
public 

virtual 
	Promotion 
	Promotion &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
} °#
àC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Promotion.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
	Promotion 
{ 
public 

int 
PromotionId 
{ 
get  
;  !
set" %
;% &
}' (
public

 

int

 
EmployeeUserId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 

int 
DepartmentId 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
OldRole 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
NewRole 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 

decimal 
? 
	OldSalary 
{ 
get  #
;# $
set% (
;( )
}* +
public 

decimal 
	NewSalary 
{ 
get "
;" #
set$ '
;' (
}) *
public 

decimal 
? 
IncrementPercentage '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

DateOnly 
PromotionDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
? 
Justification  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
? 
ApprovedByUserId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public   

int   
?   
NominationId   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
public"" 

DateTime"" 
	CreatedAt"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
public$$ 

DateTime$$ 
?$$ 

ApprovedAt$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 

DateTime&& 
?&& 
	UpdatedAt&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public(( 

virtual(( 
Userauthentication(( %
?((% &
ApprovedByUser((' 5
{((6 7
get((8 ;
;((; <
set((= @
;((@ A
}((B C
public** 

virtual** 

Department** 

Department** (
{**) *
get**+ .
;**. /
set**0 3
;**3 4
}**5 6
=**7 8
null**9 =
!**= >
;**> ?
public,, 

virtual,, 
Userauthentication,, %
EmployeeUser,,& 2
{,,3 4
get,,5 8
;,,8 9
set,,: =
;,,= >
},,? @
=,,A B
null,,C G
!,,G H
;,,H I
public.. 

virtual.. 

Nomination.. 
?.. 

Nomination.. )
{..* +
get.., /
;../ 0
set..1 4
;..4 5
}..6 7
public00 

virtual00 
ICollection00 
<00 
Promotionhistory00 /
>00/ 0
Promotionhistories001 C
{00D E
get00F I
;00I J
set00K N
;00N O
}00P Q
=00R S
new00T W
List00X \
<00\ ]
Promotionhistory00] m
>00m n
(00n o
)00o p
;00p q
}11 œ
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Projectgoalfeedback.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Projectgoalfeedback (
{ 
public 

int 

FeedbackId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 
EmployeeMasterId

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 

int 
	ProjectId 
{ 
get 
; 
set  #
;# $
}% &
public 

int 
GoalId 
{ 
get 
; 
set  
;  !
}" #
public 

string 
FeedbackText 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

int 
Rating 
{ 
get 
; 
set  
;  !
}" #
public 

DateTime 
SubmittedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
	UpdatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual !
Employeedetailsmaster (
EmployeeMaster) 7
{8 9
get: =
;= >
set? B
;B C
}D E
=F G
nullH L
!L M
;M N
public 

virtual 
Goal 
Goal 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

virtual 
Project 
Project "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
} î
éC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Projectemployee.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Projectemployee $
{ 
public 

int 
	ProjectId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

DateTime 
? 

AssignedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
	IsPrimary 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual !
Employeedetailsmaster (
Employee) 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
=@ A
nullB F
!F G
;G H
public 

virtual 
Project 
Project "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
} ˆ1
ÜC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Project.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Project 
{ 
public 

int 
	ProjectId 
{ 
get 
; 
set  #
;# $
}% &
public

 

string

 
ProjectName

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
=

, -
null

. 2
!

2 3
;

3 4
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 

ClientName 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
BusinessUnit 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 

Department 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
EngagementModel "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
? 
Status 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateOnly 
	StartDate 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateOnly 
? 
EndDate 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
? 
ResourceOwnerId 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? #
ResourceOwnerEmployeeId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public   

int   
?   
L1approverId   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
public"" 

int"" 
?""  
L1approverEmployeeId"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
public$$ 

int$$ 
?$$ 
L2approverId$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
public&& 

int&& 
?&&  
L2approverEmployeeId&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
public(( 

bool(( 
?(( 
IsDeletable(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public** 

DateTime** 
?** 
	CreatedAt** 
{**  
get**! $
;**$ %
set**& )
;**) *
}**+ ,
public,, 

DateTime,, 
?,, 
	UpdatedAt,, 
{,,  
get,,! $
;,,$ %
set,,& )
;,,) *
},,+ ,
public.. 

virtual.. 
ICollection.. 
<.. "
Departmentheadapproval.. 5
>..5 6#
Departmentheadapprovals..7 N
{..O P
get..Q T
;..T U
set..V Y
;..Y Z
}..[ \
=..] ^
new.._ b
List..c g
<..g h"
Departmentheadapproval..h ~
>..~ 
(	.. Ä
)
..Ä Å
;
..Å Ç
public00 

virtual00 
ICollection00 
<00 
Feedback00 '
>00' (
	Feedbacks00) 2
{003 4
get005 8
;008 9
set00: =
;00= >
}00? @
=00A B
new00C F
List00G K
<00K L
Feedback00L T
>00T U
(00U V
)00V W
;00W X
public22 

virtual22 
ICollection22 
<22 
Goal22 #
>22# $
Goals22% *
{22+ ,
get22- 0
;220 1
set222 5
;225 6
}227 8
=229 :
new22; >
List22? C
<22C D
Goal22D H
>22H I
(22I J
)22J K
;22K L
public44 

virtual44 !
Employeedetailsmaster44 (
?44( )
L1approverEmployee44* <
{44= >
get44? B
;44B C
set44D G
;44G H
}44I J
public66 

virtual66 !
Employeedetailsmaster66 (
?66( )
L2approverEmployee66* <
{66= >
get66? B
;66B C
set66D G
;66G H
}66I J
public88 

virtual88 
ICollection88 
<88 
Projectemployee88 .
>88. /
Projectemployees880 @
{88A B
get88C F
;88F G
set88H K
;88K L
}88M N
=88O P
new88Q T
List88U Y
<88Y Z
Projectemployee88Z i
>88i j
(88j k
)88k l
;88l m
public:: 

virtual:: 
ICollection:: 
<:: 
Projectgoalfeedback:: 2
>::2 3 
Projectgoalfeedbacks::4 H
{::I J
get::K N
;::N O
set::P S
;::S T
}::U V
=::W X
new::Y \
List::] a
<::a b
Projectgoalfeedback::b u
>::u v
(::v w
)::w x
;::x y
public<< 

virtual<< !
Employeedetailsmaster<< (
?<<( )!
ResourceOwnerEmployee<<* ?
{<<@ A
get<<B E
;<<E F
set<<G J
;<<J K
}<<L M
}== ø
ìC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Profilechangerequest.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class  
Profilechangerequest )
{ 
public 

int 
	RequestId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 
UserId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

string 
?  
NewEmployeeCompanyId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

string 
? 
NewEmail 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
Reason 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
? 
ApprovedByUserId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
AdminRemarks 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
RequestedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
? 
ProcessedAt  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

virtual 
Userauthentication %
?% &
ApprovedByUser' 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 

virtual 
Userauthentication %
User& *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
} Ò
éC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Policyviolation.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Policyviolation $
{ 
public 

int 
ViolationId 
{ 
get  
;  !
set" %
;% &
}' (
public

 

int

 
EmployeeUserId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 

int 
? 
PolicyId 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
ViolationType 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 

string 
Severity 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
ReportedByUserId 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateOnly 
ReportedDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
? 
EscalatedToUserId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
? 
ResolutionNotes "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
? 

ResolvedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public   

virtual   
Userauthentication   %
EmployeeUser  & 2
{  3 4
get  5 8
;  8 9
set  : =
;  = >
}  ? @
=  A B
null  C G
!  G H
;  H I
public"" 

virtual"" 
Userauthentication"" %
?""% &
EscalatedToUser""' 6
{""7 8
get""9 <
;""< =
set""> A
;""A B
}""C D
public$$ 

virtual$$  
Organizationalpolicy$$ '
?$$' (
Policy$$) /
{$$0 1
get$$2 5
;$$5 6
set$$7 :
;$$: ;
}$$< =
public&& 

virtual&& 
Userauthentication&& %
ReportedByUser&&& 4
{&&5 6
get&&7 :
;&&: ;
set&&< ?
;&&? @
}&&A B
=&&C D
null&&E I
!&&I J
;&&J K
}'' Ç
êC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Peerfeedbackqueue.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Peerfeedbackqueue &
{ 
public 

int 
QueueId 
{ 
get 
; 
set !
;! "
}# $
public

 

int

 !
SubmittedByEmployeeId

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 

int 
RecipientEmployeeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
FeedbackContent !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 

bool 
IsAnonymous 
{ 
get !
;! "
set# &
;& '
}( )
public 

bool 
? 
IsProfessional 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
? 

IsRelevant 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
? 
ApprovedByHrid 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

DateTime 
? 

ApprovedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Userauthentication %
?% &
ApprovedByHr' 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public   

virtual   
Employee   
RecipientEmployee   -
{  . /
get  0 3
;  3 4
set  5 8
;  8 9
}  : ;
=  < =
null  > B
!  B C
;  C D
public"" 

virtual"" 
Employee"" 
SubmittedByEmployee"" /
{""0 1
get""2 5
;""5 6
set""7 :
;"": ;
}""< =
=""> ?
null""@ D
!""D E
;""E F
}## Å
ãC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Peerfeedback.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Peerfeedback !
{ 
public 

int 
PeerFeedbackId 
{ 
get  #
;# $
set% (
;( )
}* +
public

 

int

 
?

 
PeerEmployeeId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 

string 
? 
PeerName 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
Comments 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

bool 
IsAnonymous 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
? !
SubmittedByEmployeeId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

DateTime 
SubmittedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
ManagerReviewed 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual !
Employeedetailsmaster (
?( )
PeerEmployee* 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 

virtual !
Employeedetailsmaster (
?( )
SubmittedByEmployee* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} ∏
ÜC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Payroll.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Payroll 
{ 
public 

int 
	PayrollId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 
EmployeeUserId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 

int 
DepartmentId 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
PayrollPeriod 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 

decimal 
? 
	OldSalary 
{ 
get  #
;# $
set% (
;( )
}* +
public 

decimal 
	NewSalary 
{ 
get "
;" #
set$ '
;' (
}) *
public 

decimal 
? 
IncrementPercentage '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

DateOnly 
EffectiveDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
? 
ApprovedByUserId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
Notes 
{ 
get 
; 
set  #
;# $
}% &
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public   

DateTime   
?   

ApprovedAt   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public"" 

virtual"" 
Userauthentication"" %
?""% &
ApprovedByUser""' 5
{""6 7
get""8 ;
;""; <
set""= @
;""@ A
}""B C
public$$ 

virtual$$ 

Department$$ 

Department$$ (
{$$) *
get$$+ .
;$$. /
set$$0 3
;$$3 4
}$$5 6
=$$7 8
null$$9 =
!$$= >
;$$> ?
public&& 

virtual&& 
Userauthentication&& %
EmployeeUser&&& 2
{&&3 4
get&&5 8
;&&8 9
set&&: =
;&&= >
}&&? @
=&&A B
null&&C G
!&&G H
;&&H I
}'' Ï
ÇC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Otp.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Otp 
{ 
public 

int 
OtpId 
{ 
get 
; 
set 
;  
}! "
public

 

string

 
Email

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
=

& '
null

( ,
!

, -
;

- .
public 

string 
OtpCode 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 

string 
OtpType 
{ 
get 
;  
set! $
;$ %
}& '
=( )
null* .
!. /
;/ 0
public 

DateTime 
	ExpiresAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

bool 
? 
IsUsed 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
UsedAt 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
	IpAddress 
{ 
get "
;" #
set$ '
;' (
}) *
} Â
òC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Organizationwideobjective.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class %
Organizationwideobjective .
{ 
public 

int 
ObjectiveId 
{ 
get  
;  !
set" %
;% &
}' (
public

 

string

 
?

 
Title

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 
DepartmentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
? 
TimelineStart "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
? 
TimelineEnd  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
? 
	CreatedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
? 
	CreatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Userauthentication %
?% &
CreatedByNavigation' :
{; <
get= @
;@ A
setB E
;E F
}G H
public 

virtual 

Department 
? 

Department )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 

virtual 
ICollection 
< $
Organizationgoalfeedback 7
>7 8%
Organizationgoalfeedbacks9 R
{S T
getU X
;X Y
setZ ]
;] ^
}_ `
=a b
newc f
Listg k
<k l%
Organizationgoalfeedback	l Ñ
>
Ñ Ö
(
Ö Ü
)
Ü á
;
á à
} Ì
óC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Organizationgoalfeedback.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class $
Organizationgoalfeedback -
{ 
public 

int 
OrgGoalFeedbackId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public

 

int

 #
OrganizationObjectiveId

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 

int !
SubmittedByEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

int 
? 
ManagerEmployeeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

int 
Rating 
{ 
get 
; 
set  
;  !
}" #
public 

string 
? 
FeedbackComments #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

string 
FeedbackFrom 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

bool 
IsAnonymous 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Employee 
? 
ManagerEmployee ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 

virtual %
Organizationwideobjective ,!
OrganizationObjective- B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
nullS W
!W X
;X Y
public   

virtual   
Employee   
SubmittedByEmployee   /
{  0 1
get  2 5
;  5 6
set  7 :
;  : ;
}  < =
=  > ?
null  @ D
!  D E
;  E F
}!! ˇ!
ìC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Organizationalpolicy.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class  
Organizationalpolicy )
{ 
public 

int 
PolicyId 
{ 
get 
; 
set "
;" #
}$ %
public

 

string

 

PolicyName

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
=

+ ,
null

- 1
!

1 2
;

2 3
public 

string 
Category 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
ComplianceGuidance %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

string 
? 
DocumentUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
DocumentName 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
DocumentType 
{  !
get" %
;% &
set' *
;* +
}, -
public 

long 
? 
DocumentSize 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
DocumentUploadedAt '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

bool 
IsPublished 
{ 
get !
;! "
set# &
;& '
}( )
public   

DateTime   
?   
PublishedAt    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
public"" 

int"" 
?"" 
PublishedBy"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
public$$ 

int$$ 
CreatedByUserId$$ 
{$$  
get$$! $
;$$$ %
set$$& )
;$$) *
}$$+ ,
public&& 

DateTime&& 
	CreatedAt&& 
{&& 
get&&  #
;&&# $
set&&% (
;&&( )
}&&* +
public(( 

DateTime(( 
?(( 
	UpdatedAt(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
public** 

virtual** 
Userauthentication** %
CreatedByUser**& 3
{**4 5
get**6 9
;**9 :
set**; >
;**> ?
}**@ A
=**B C
null**D H
!**H I
;**I J
public,, 

virtual,, 
ICollection,, 
<,, 
Policyviolation,, .
>,,. /
Policyviolations,,0 @
{,,A B
get,,C F
;,,F G
set,,H K
;,,K L
},,M N
=,,O P
new,,Q T
List,,U Y
<,,Y Z
Policyviolation,,Z i
>,,i j
(,,j k
),,k l
;,,l m
public.. 

virtual.. 
Userauthentication.. %
?..% &!
PublishedByNavigation..' <
{..= >
get..? B
;..B C
set..D G
;..G H
}..I J
}// æ
ëC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Oneononediscussion.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Oneononediscussion '
{ 
public 

int 
DiscussionId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
HostEmployeeId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 

int !
ParticipantEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
MeetingLink 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 

string 
? 
Agenda 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
ScheduledAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? 
DurationMinutes 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

bool 
? 
	IsPrivate 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
? 
RecordingLink  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
Notes 
{ 
get 
; 
set  #
;# $
}% &
public 

int 
	CreatedBy 
{ 
get 
; 
set  #
;# $
}% &
public   

DateTime   
	CreatedAt   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public"" 

DateTime"" 
?"" 
	UpdatedAt"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public$$ 

virtual$$ !
Employeedetailsmaster$$ (
CreatedByNavigation$$) <
{$$= >
get$$? B
;$$B C
set$$D G
;$$G H
}$$I J
=$$K L
null$$M Q
!$$Q R
;$$R S
public&& 

virtual&& !
Employeedetailsmaster&& (
HostEmployee&&) 5
{&&6 7
get&&8 ;
;&&; <
set&&= @
;&&@ A
}&&B C
=&&D E
null&&F J
!&&J K
;&&K L
public(( 

virtual(( !
Employeedetailsmaster(( (
ParticipantEmployee(() <
{((= >
get((? B
;((B C
set((D G
;((G H
}((I J
=((K L
null((M Q
!((Q R
;((R S
})) ﬁ
õC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Nominationvisibilitytracking.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class (
Nominationvisibilitytracking 1
{ 
public 

int 

TrackingId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 
NominationId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
ViewedByEmployeeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

DateTime 
ViewedAt 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
ActionTaken 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Recognitionstatus $

Nomination% /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
null@ D
!D E
;E F
public 

virtual 
Employee 
ViewedByEmployee ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
} ‰
ïC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Nominationreviewmetric.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class "
Nominationreviewmetric +
{ 
public 

int 
MetricId 
{ 
get 
; 
set "
;" #
}$ %
public

 

int

 
NominationId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
ReviewedByUserId 
{  !
get" %
;% &
set' *
;* +
}, -
public 

decimal 
? 

MeritScore 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

decimal 
? 
DiversityScore "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

bool 
? 
ConflictOfInterest #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

string 
? 
ReviewNotes 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

DateTime 

ReviewedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 

Nomination 

Nomination (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
null9 =
!= >
;> ?
public 

virtual 
Userauthentication %
ReviewedByUser& 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
nullE I
!I J
;J K
} ‘
óC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Nominationparametervalue.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class $
Nominationparametervalue -
{ 
public 

int 
ValueId 
{ 
get 
; 
set !
;! "
}# $
public

 

int

 
NominationId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
ParameterId 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
? 
ParameterValue !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Recognitionstatus $

Nomination% /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
null@ D
!D E
;E F
public 

virtual 
Nominationparameter &
	Parameter' 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
nullA E
!E F
;F G
} —
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Nominationparameter.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Nominationparameter (
{ 
public 

int 
ParameterId 
{ 
get  
;  !
set" %
;% &
}' (
public

 

int

 
RewardTypeId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

string 
ParameterName 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 

string 
ParameterType 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 

bool 
? 

IsRequired 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
? 
	SortOrder 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
PlaceholderText "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

int 
? 
MinimumValue 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
? 
MaximumValue 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
ICollection 
< $
Nominationparametervalue 7
>7 8%
Nominationparametervalues9 R
{S T
getU X
;X Y
setZ ]
;] ^
}_ `
=a b
newc f
Listg k
<k l%
Nominationparametervalue	l Ñ
>
Ñ Ö
(
Ö Ü
)
Ü á
;
á à
public 

virtual 

Rewardtype 

RewardType (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
null9 =
!= >
;> ?
} Ã:
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Nomination.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Nomination 
{ 
public 

int 
NominationId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
OpportunityId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 

int 
NomineeUserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
NominationType  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

int 
NominatedByUserId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
Justification  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int  
CurrentApprovalLevel #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
? 
L1managerUserId 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
L1reviewRemarks "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
? 
L1reviewedAt !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
? 
L1status 
{ 
get !
;! "
set# &
;& '
}( )
public   

int   
?   
L2managerUserId   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public"" 

string"" 
?"" 
L2reviewRemarks"" "
{""# $
get""% (
;""( )
set""* -
;""- .
}""/ 0
public$$ 

DateTime$$ 
?$$ 
L2reviewedAt$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
public&& 

string&& 
?&& 
L2status&& 
{&& 
get&& !
;&&! "
set&&# &
;&&& '
}&&( )
public(( 

int(( 
?(( 
DeptHeadUserId(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
public** 

string** 
?** !
DeptHeadReviewRemarks** (
{**) *
get**+ .
;**. /
set**0 3
;**3 4
}**5 6
public,, 

DateTime,, 
?,, 
DeptHeadReviewedAt,, '
{,,( )
get,,* -
;,,- .
set,,/ 2
;,,2 3
},,4 5
public.. 

string.. 
?.. 
DeptHeadStatus.. !
{.." #
get..$ '
;..' (
set..) ,
;.., -
}... /
public00 

int00 
?00 
ReviewedByUserId00  
{00! "
get00# &
;00& '
set00( +
;00+ ,
}00- .
public22 

string22 
?22 
ReviewRemarks22  
{22! "
get22# &
;22& '
set22( +
;22+ ,
}22- .
public44 

DateTime44 
?44 

ReviewedAt44 
{44  !
get44" %
;44% &
set44' *
;44* +
}44, -
public66 

DateTime66 
SubmittedAt66 
{66  !
get66" %
;66% &
set66' *
;66* +
}66, -
public88 

virtual88 
Userauthentication88 %
?88% &
DeptHeadUser88' 3
{884 5
get886 9
;889 :
set88; >
;88> ?
}88@ A
public:: 

virtual:: 
Userauthentication:: %
?::% &
L1managerUser::' 4
{::5 6
get::7 :
;::: ;
set::< ?
;::? @
}::A B
public<< 

virtual<< 
Userauthentication<< %
?<<% &
L2managerUser<<' 4
{<<5 6
get<<7 :
;<<: ;
set<<< ?
;<<? @
}<<A B
public>> 

virtual>> 
ICollection>> 
<>> %
Managernominationtracking>> 8
>>>8 9&
Managernominationtrackings>>: T
{>>U V
get>>W Z
;>>Z [
set>>\ _
;>>_ `
}>>a b
=>>c d
new>>e h
List>>i m
<>>m n&
Managernominationtracking	>>n á
>
>>á à
(
>>à â
)
>>â ä
;
>>ä ã
public@@ 

virtual@@ 
Userauthentication@@ %
NominatedByUser@@& 5
{@@6 7
get@@8 ;
;@@; <
set@@= @
;@@@ A
}@@B C
=@@D E
null@@F J
!@@J K
;@@K L
publicBB 

virtualBB 
ICollectionBB 
<BB "
NominationreviewmetricBB 5
>BB5 6#
NominationreviewmetricsBB7 N
{BBO P
getBBQ T
;BBT U
setBBV Y
;BBY Z
}BB[ \
=BB] ^
newBB_ b
ListBBc g
<BBg h"
NominationreviewmetricBBh ~
>BB~ 
(	BB Ä
)
BBÄ Å
;
BBÅ Ç
publicDD 

virtualDD 
UserauthenticationDD %
NomineeUserDD& 1
{DD2 3
getDD4 7
;DD7 8
setDD9 <
;DD< =
}DD> ?
=DD@ A
nullDDB F
!DDF G
;DDG H
publicFF 

virtualFF 
InternalopportunityFF &
OpportunityFF' 2
{FF3 4
getFF5 8
;FF8 9
setFF: =
;FF= >
}FF? @
=FFA B
nullFFC G
!FFG H
;FFH I
publicHH 

virtualHH 
ICollectionHH 
<HH 
	PromotionHH (
>HH( )

PromotionsHH* 4
{HH5 6
getHH7 :
;HH: ;
setHH< ?
;HH? @
}HHA B
=HHC D
newHHE H
ListHHI M
<HHM N
	PromotionHHN W
>HHW X
(HHX Y
)HHY Z
;HHZ [
publicJJ 

virtualJJ 
UserauthenticationJJ %
?JJ% &
ReviewedByUserJJ' 5
{JJ6 7
getJJ8 ;
;JJ; <
setJJ= @
;JJ@ A
}JJB C
}KK ê
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Momsharing.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Momsharing 
{ 
public 

int 
	SharingId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 
Momid

 
{

 
get

 
;

 
set

 
;

  
}

! "
public 

int 
SharedByEmployeeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

int  
SharedWithEmployeeId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

DateTime 
SharedAt 
{ 
get "
;" #
set$ '
;' (
}) *
public 

virtual 
Mom 
Mom 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

virtual 
Employee 
SharedByEmployee ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 

virtual 
Employee 
SharedWithEmployee .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
null? C
!C D
;D E
} π

ëC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Momdiscussionpoint.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Momdiscussionpoint '
{ 
public 

int 
PointId 
{ 
get 
; 
set !
;! "
}# $
public

 

int

 
Momid

 
{

 
get

 
;

 
set

 
;

  
}

! "
public 

string 
	PointText 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 

int 

PointOrder 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual 
Mom 
Mom 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
} É
åC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Momactionitem.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Momactionitem "
{ 
public 

int 
ActionItemId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
Momid

 
{

 
get

 
;

 
set

 
;

  
}

! "
public 

string 
TaskDescription !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 

int  
AssignedToEmployeeId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

DateOnly 
DueDate 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public!! 

virtual!! 
Employee!! 
AssignedToEmployee!! .
{!!/ 0
get!!1 4
;!!4 5
set!!6 9
;!!9 :
}!!; <
=!!= >
null!!? C
!!!C D
;!!D E
public## 

virtual## 
Mom## 
Mom## 
{## 
get##  
;##  !
set##" %
;##% &
}##' (
=##) *
null##+ /
!##/ 0
;##0 1
}$$ ÷"
ÇC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Mom.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Mom 
{ 
public 

int 
Momid 
{ 
get 
; 
set 
;  
}! "
public 

int 
? 
	MeetingId 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
MeetingTitle 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

string 
MeetingType 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 

DateTime 
MeetingDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
MeetingLink 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
	Attendees 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public"" 

string"" 
?""  
CommentsObservations"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
public$$ 

int$$ !
SubmittedByEmployeeId$$ $
{$$% &
get$$' *
;$$* +
set$$, /
;$$/ 0
}$$1 2
public)) 

string)) 
SubmittedByRole)) !
{))" #
get))$ '
;))' (
set))) ,
;)), -
})). /
=))0 1
null))2 6
!))6 7
;))7 8
public.. 

bool.. 
?.. 

IsEditable.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
public00 

DateTime00 
	CreatedAt00 
{00 
get00  #
;00# $
set00% (
;00( )
}00* +
public22 

DateTime22 
?22 
	UpdatedAt22 
{22  
get22! $
;22$ %
set22& )
;22) *
}22+ ,
public44 

virtual44 
Meeting44 
?44 
Meeting44 #
{44$ %
get44& )
;44) *
set44+ .
;44. /
}440 1
public66 

virtual66 
ICollection66 
<66 
Momactionitem66 ,
>66, -
Momactionitems66. <
{66= >
get66? B
;66B C
set66D G
;66G H
}66I J
=66K L
new66M P
List66Q U
<66U V
Momactionitem66V c
>66c d
(66d e
)66e f
;66f g
public88 

virtual88 
ICollection88 
<88 
Momdiscussionpoint88 1
>881 2
Momdiscussionpoints883 F
{88G H
get88I L
;88L M
set88N Q
;88Q R
}88S T
=88U V
new88W Z
List88[ _
<88_ `
Momdiscussionpoint88` r
>88r s
(88s t
)88t u
;88u v
public:: 

virtual:: 
ICollection:: 
<:: 

Momsharing:: )
>::) *
Momsharings::+ 6
{::7 8
get::9 <
;::< =
set::> A
;::A B
}::C D
=::E F
new::G J
List::K O
<::O P

Momsharing::P Z
>::Z [
(::[ \
)::\ ]
;::] ^
public<< 

virtual<< 
Employee<< 
SubmittedByEmployee<< /
{<<0 1
get<<2 5
;<<5 6
set<<7 :
;<<: ;
}<<< =
=<<> ?
null<<@ D
!<<D E
;<<E F
}== Î"
ïC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Mentorfeedbacktracking.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class "
Mentorfeedbacktracking +
{ 
public 

int 

TrackingId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 
SmeId

 
{

 
get

 
;

 
set

 
;

  
}

! "
public 

int 
MentorEmployeeId 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
MenteeEmployeeId 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
SkillIdReference 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
Rating 
{ 
get 
; 
set  
;  !
}" #
public 

string 
? 
FeedbackComments #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

int !
SubmittedByEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
FeedbackFrom 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

bool 
IsAnonymous 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
? 
ReviewedByHrid 
{  
get! $
;$ %
set& )
;) *
}+ ,
public   

string   
?   
HrreviewComments   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 

DateTime"" 
	CreatedAt"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
public$$ 

DateTime$$ 
?$$ 

ReviewedAt$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 

virtual&& 
Employee&& 
MenteeEmployee&& *
{&&+ ,
get&&- 0
;&&0 1
set&&2 5
;&&5 6
}&&7 8
=&&9 :
null&&; ?
!&&? @
;&&@ A
public(( 

virtual(( 
Employee(( 
MentorEmployee(( *
{((+ ,
get((- 0
;((0 1
set((2 5
;((5 6
}((7 8
=((9 :
null((; ?
!((? @
;((@ A
public** 

virtual** 
Userauthentication** %
?**% &
ReviewedByHr**' 3
{**4 5
get**6 9
;**9 :
set**; >
;**> ?
}**@ A
public,, 

virtual,, 
MasterSkill,, &
SkillIdReferenceNavigation,, 9
{,,: ;
get,,< ?
;,,? @
set,,A D
;,,D E
},,F G
=,,H I
null,,J N
!,,N O
;,,O P
public.. 

virtual.. 
Lndsme.. 
Sme.. 
{.. 
get..  #
;..# $
set..% (
;..( )
}..* +
=.., -
null... 2
!..2 3
;..3 4
public00 

virtual00 
Employee00 
SubmittedByEmployee00 /
{000 1
get002 5
;005 6
set007 :
;00: ;
}00< =
=00> ?
null00@ D
!00D E
;00E F
}11 ‘
çC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Mentorfeedback.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Mentorfeedback #
{ 
public 

int 
MentorFeedbackId 
{  !
get" %
;% &
set' *
;* +
}, -
public

 

int

 
?

 
MentorEmployeeId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 

string 
? 

MentorName 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
Comments 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

int 
Rating 
{ 
get 
; 
set  
;  !
}" #
public 

int 
? !
SubmittedByEmployeeId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

int 
? 
SubmittedByLegacyId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

bool 
IsAnonymous 
{ 
get !
;! "
set# &
;& '
}( )
public 

DateTime 
SubmittedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Employee 
? 
SubmittedByEmployee 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} é
ëC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Meetingparticipant.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Meetingparticipant '
{ 
public 

int 
ParticipantId 
{ 
get "
;" #
set$ '
;' (
}) *
public

 

int

 
	MeetingId

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 

int 

EmployeeId 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 

Rsvpstatus 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

DateTime 
? 
RsvpresponseDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

string 
? 
Rsvpcomments 
{  !
get" %
;% &
set' *
;* +
}, -
public   

DateTime   
	InvitedAt   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public"" 

DateTime"" 
	CreatedAt"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
public$$ 

DateTime$$ 
?$$ 
	UpdatedAt$$ 
{$$  
get$$! $
;$$$ %
set$$& )
;$$) *
}$$+ ,
public&& 

virtual&& 
Employee&& 
Employee&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
=&&3 4
null&&5 9
!&&9 :
;&&: ;
public(( 

virtual(( 
Meeting(( 
Meeting(( "
{((# $
get((% (
;((( )
set((* -
;((- .
}((/ 0
=((1 2
null((3 7
!((7 8
;((8 9
})) Õ
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Meetingmom.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Meetingmom 
{ 
public 

int 
Momid 
{ 
get 
; 
set 
;  
}! "
public

 

string

 
MeetingTitle

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
null

/ 3
!

3 4
;

4 5
public 

DateOnly 
MeetingDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
Notes 
{ 
get 
; 
set "
;" #
}$ %
=& '
null( ,
!, -
;- .
public 

int 
? 
	CreatedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 
? 

EmployeeId 
{ 
get  
;  !
set" %
;% &
}' (
public 

DateTime 
? 
	CreatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Employee 
? 
Employee %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} π
ÜC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Meeting.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Meeting 
{ 
public 

int 
	MeetingId 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
MeetingTitle 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

string 
MeetingType 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 

DateTime 
MeetingDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
MeetingLink 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
Agenda 
{ 
get 
;  
set! $
;$ %
}& '
public## 

int## !
ScheduledByEmployeeId## $
{##% &
get##' *
;##* +
set##, /
;##/ 0
}##1 2
public%% 

string%% 
Status%% 
{%% 
get%% 
;%% 
set%%  #
;%%# $
}%%% &
=%%' (
null%%) -
!%%- .
;%%. /
public'' 

DateTime'' 
	CreatedAt'' 
{'' 
get''  #
;''# $
set''% (
;''( )
}''* +
public)) 

DateTime)) 
?)) 
	UpdatedAt)) 
{))  
get))! $
;))$ %
set))& )
;))) *
}))+ ,
public++ 

virtual++ 
ICollection++ 
<++ 
Meetingparticipant++ 1
>++1 2
Meetingparticipants++3 F
{++G H
get++I L
;++L M
set++N Q
;++Q R
}++S T
=++U V
new++W Z
List++[ _
<++_ `
Meetingparticipant++` r
>++r s
(++s t
)++t u
;++u v
public-- 

virtual-- 
ICollection-- 
<-- 
Mom-- "
>--" #
Moms--$ (
{--) *
get--+ .
;--. /
set--0 3
;--3 4
}--5 6
=--7 8
new--9 <
List--= A
<--A B
Mom--B E
>--E F
(--F G
)--G H
;--H I
public// 

virtual// 
Employee// 
ScheduledByEmployee// /
{//0 1
get//2 5
;//5 6
set//7 :
;//: ;
}//< =
=//> ?
null//@ D
!//D E
;//E F
}00 —
äC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\MasterSkill.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
MasterSkill  
{ 
public 

int 
SkillId 
{ 
get 
; 
set !
;! "
}# $
public

 

string

 
	SkillName

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
=

* +
null

, 0
!

0 1
;

1 2
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
Category 
{ 
get !
;! "
set# &
;& '
}( )
public 

virtual 
ICollection 
< 
Lndapproval *
>* +
Lndapprovals, 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ListM Q
<Q R
LndapprovalR ]
>] ^
(^ _
)_ `
;` a
public 

virtual 
ICollection 
< 
Lndassignment ,
>, -
Lndassignments. <
{= >
get? B
;B C
setD G
;G H
}I J
=K L
newM P
ListQ U
<U V
LndassignmentV c
>c d
(d e
)e f
;f g
public 

virtual 
ICollection 
< "
Lndemployeeskillmapper 5
>5 6#
Lndemployeeskillmappers7 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
=] ^
new_ b
Listc g
<g h"
Lndemployeeskillmapperh ~
>~ 
(	 Ä
)
Ä Å
;
Å Ç
public 

virtual 
ICollection 
< 
Lndsme %
>% &
Lndsmes' .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
new? B
ListC G
<G H
LndsmeH N
>N O
(O P
)P Q
;Q R
public 

virtual 
ICollection 
< "
Mentorfeedbacktracking 5
>5 6#
Mentorfeedbacktrackings7 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
=] ^
new_ b
Listc g
<g h"
Mentorfeedbacktrackingh ~
>~ 
(	 Ä
)
Ä Å
;
Å Ç
} ∆
ìC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Managerreviewcomment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class  
Managerreviewcomment )
{ 
public 

int 
ReviewCommentId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public

 

int

 
ManagerEmployeeId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 

int 
TargetEmployeeId 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? 
TargetGoalId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
? $
TargetOrganizationGoalId (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

int 
Rating 
{ 
get 
; 
set  
;  !
}" #
public 

string 
? 
ReviewComment  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
SubmittedAt  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateTime 
? 

ModifiedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

virtual 
Employee 
ManagerEmployee +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
null< @
!@ A
;A B
public   

virtual   
Employee   
TargetEmployee   *
{  + ,
get  - 0
;  0 1
set  2 5
;  5 6
}  7 8
=  9 :
null  ; ?
!  ? @
;  @ A
public"" 

virtual"" 
Goal"" 
?"" 

TargetGoal"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
}## ”
òC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Managernominationtracking.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class %
Managernominationtracking .
{ 
public 

int 

TrackingId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 
NominationId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
ViewedByUserId 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
ViewedAt 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
ActionTaken 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 

Nomination 

Nomination (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
null9 =
!= >
;> ?
public 

virtual 
Userauthentication %
ViewedByUser& 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
nullC G
!G H
;H I
} «
ãC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Loginattempt.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Loginattempt !
{ 
public 

int 
	AttemptId 
{ 
get 
; 
set  #
;# $
}% &
public

 

string

 
Email

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
=

& '
null

( ,
!

, -
;

- .
public 

DateTime 
AttemptTime 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
IsSuccessful 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
	IpAddress 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
	UserAgent 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
FailureReason  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
? 
UserId 
{ 
get 
; 
set !
;! "
}# $
public 

virtual 
Userauthentication %
?% &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} ˆ
ÖC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Lndsme.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Lndsme 
{ 
public 

int 
SmeId 
{ 
get 
; 
set 
;  
}! "
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 
SkillId 
{ 
get 
; 
set !
;! "
}# $
public 

int 
? 
AttachmentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
?  
ApprovedByEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

DateOnly 
? 

ApprovedOn 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateOnly 
? 
	CreatedOn 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

bool 
? 
IsActive 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual 
Employee 
? 
ApprovedByEmployee /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 

virtual 
Lndattachment  
?  !

Attachment" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 

virtual 
Employee 
Employee $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

virtual 
ICollection 
< 
Lndassignment ,
>, -
Lndassignments. <
{= >
get? B
;B C
setD G
;G H
}I J
=K L
newM P
ListQ U
<U V
LndassignmentV c
>c d
(d e
)e f
;f g
public   

virtual   
ICollection   
<   "
Mentorfeedbacktracking   5
>  5 6#
Mentorfeedbacktrackings  7 N
{  O P
get  Q T
;  T U
set  V Y
;  Y Z
}  [ \
=  ] ^
new  _ b
List  c g
<  g h"
Mentorfeedbacktracking  h ~
>  ~ 
(	   Ä
)
  Ä Å
;
  Å Ç
public"" 

virtual"" 
MasterSkill"" 
Skill"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
=""3 4
null""5 9
!""9 :
;"": ;
}## ï
ïC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Lndemployeeskillmapper.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class "
Lndemployeeskillmapper +
{ 
public 

int 
MapperId 
{ 
get 
; 
set "
;" #
}$ %
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 
SkillId 
{ 
get 
; 
set !
;! "
}# $
public 

int 
Rating 
{ 
get 
; 
set  
;  !
}" #
public 

int 
UpdatedByEmployeeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

int 
CreatedByEmployeeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateOnly 
? 
	CreatedOn 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

DateOnly 
? 
	UpdatedOn 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Employee 
CreatedByEmployee -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
null> B
!B C
;C D
public 

virtual 
Employee 
Employee $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

virtual 
MasterSkill 
Skill $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

virtual 
Employee 
UpdatedByEmployee -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
null> B
!B C
;C D
} À
åC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Lndattachment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Lndattachment "
{ 
public 

int 
AttachmentId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

string

 
FileName

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
=

) *
null

+ /
!

/ 0
;

0 1
public 

string 
FilePath 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

long 
? 
FileSize 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
AttachmentType  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

int 
CreatedByEmployeeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateOnly 
? 
	CreatedOn 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Employee 
CreatedByEmployee -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
null> B
!B C
;C D
public 

virtual 
ICollection 
< 
Lndapproval *
>* +
Lndapprovals, 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ListM Q
<Q R
LndapprovalR ]
>] ^
(^ _
)_ `
;` a
public 

virtual 
ICollection 
< 
Lndsme %
>% &
Lndsmes' .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
new? B
ListC G
<G H
LndsmeH N
>N O
(O P
)P Q
;Q R
} ˚ 
åC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Lndassignment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Lndassignment "
{ 
public 

int 
AssignmentId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
MenteeEmployeeId

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 

int 
SmeId 
{ 
get 
; 
set 
;  
}! "
public 

int 
SkillId 
{ 
get 
; 
set !
;! "
}# $
public 

DateTime 
? 
Deadline 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

string 
? 
ProofFilePath  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
CompletionNotes "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

int 
? 
CompletionRating  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
CreatedByEmployeeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateOnly 
? 
	CreatedOn 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 
UpdatedByEmployeeId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   

DateOnly   
?   
	UpdatedOn   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public"" 

virtual"" 
Employee"" 
CreatedByEmployee"" -
{"". /
get""0 3
;""3 4
set""5 8
;""8 9
}"": ;
=""< =
null""> B
!""B C
;""C D
public$$ 

virtual$$ 
ICollection$$ 
<$$ 
Lndapproval$$ *
>$$* +
Lndapprovals$$, 8
{$$9 :
get$$; >
;$$> ?
set$$@ C
;$$C D
}$$E F
=$$G H
new$$I L
List$$M Q
<$$Q R
Lndapproval$$R ]
>$$] ^
($$^ _
)$$_ `
;$$` a
public&& 

virtual&& 
Employee&& 
MenteeEmployee&& *
{&&+ ,
get&&- 0
;&&0 1
set&&2 5
;&&5 6
}&&7 8
=&&9 :
null&&; ?
!&&? @
;&&@ A
public(( 

virtual(( 
MasterSkill(( 
Skill(( $
{((% &
get((' *
;((* +
set((, /
;((/ 0
}((1 2
=((3 4
null((5 9
!((9 :
;((: ;
public** 

virtual** 
Lndsme** 
Sme** 
{** 
get**  #
;**# $
set**% (
;**( )
}*** +
=**, -
null**. 2
!**2 3
;**3 4
public,, 

virtual,, 
Employee,, 
?,, 
UpdatedByEmployee,, .
{,,/ 0
get,,1 4
;,,4 5
set,,6 9
;,,9 :
},,; <
}-- Â
äC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Lndapproval.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Lndapproval  
{ 
public 

int 

ApprovalId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

string

 
ApprovalType

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
null

/ 3
!

3 4
;

4 5
public 

int 
? 
AssignmentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
? 
SkillId 
{ 
get 
; 
set "
;" #
}$ %
public 

int 
? 
AttachmentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

int 
RequesterEmployeeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

int 
? 
ApproverEmployeeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

string 
? 
Notes 
{ 
get 
; 
set  #
;# $
}% &
public 

DateOnly 
? 
RequestedOn  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateOnly 
? 
	UpdatedOn 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
Employee 
? 
ApproverEmployee -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public   

virtual   
Lndassignment    
?    !

Assignment  " ,
{  - .
get  / 2
;  2 3
set  4 7
;  7 8
}  9 :
public"" 

virtual"" 
Lndattachment""  
?""  !

Attachment""" ,
{""- .
get""/ 2
;""2 3
set""4 7
;""7 8
}""9 :
public$$ 

virtual$$ 
Employee$$ 
RequesterEmployee$$ -
{$$. /
get$$0 3
;$$3 4
set$$5 8
;$$8 9
}$$: ;
=$$< =
null$$> B
!$$B C
;$$C D
public&& 

virtual&& 
MasterSkill&& 
?&& 
Skill&&  %
{&&& '
get&&( +
;&&+ ,
set&&- 0
;&&0 1
}&&2 3
}'' Ü
ëC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Leadershipauditlog.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Leadershipauditlog '
{ 
public 

int 
LogId 
{ 
get 
; 
set 
;  
}! "
public

 

int

 
?

 
UserId

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 

string 
? 
Action 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
TargetTable 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 
TargetId 
{ 
get 
; 
set  #
;# $
}% &
public 

DateTime 
? 
	Timestamp 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
Status 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual 
Userauthentication %
?% &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} ª
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Internalopportunity.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Internalopportunity (
{ 
public 

int 
OpportunityId 
{ 
get "
;" #
set$ '
;' (
}) *
public

 

string

 
OpportunityName

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
=

0 1
null

2 6
!

6 7
;

7 8
public 

int 
DepartmentId 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
Requirements 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
EligibilityCriteria &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

DateOnly 
Deadline 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
PostedByUserId 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 

Department 

Department (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
null9 =
!= >
;> ?
public   

virtual   
ICollection   
<   

Nomination   )
>  ) *
Nominations  + 6
{  7 8
get  9 <
;  < =
set  > A
;  A B
}  C D
=  E F
new  G J
List  K O
<  O P

Nomination  P Z
>  Z [
(  [ \
)  \ ]
;  ] ^
public"" 

virtual"" 
Userauthentication"" %
PostedByUser""& 2
{""3 4
get""5 8
;""8 9
set"": =
;""= >
}""? @
=""A B
null""C G
!""G H
;""H I
}## ‰
ïC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Hrfeedbackformresponse.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class "
Hrfeedbackformresponse +
{ 
public 

int 

ResponseId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 
FormId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

int !
SubmittedByEmployeeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
FormResponse 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

DateTime 
? 
SubmittedAt  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
? 
ReviewedByHrid 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

DateTime 
? 

ReviewedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
HrreviewComments #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Hrfeedbackform !
Form" &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
public 

virtual 
Userauthentication %
?% &
ReviewedByHr' 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public   

virtual   
Employee   
SubmittedByEmployee   /
{  0 1
get  2 5
;  5 6
set  7 :
;  : ;
}  < =
=  > ?
null  @ D
!  D E
;  E F
}!! Õ
çC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Hrfeedbackform.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Hrfeedbackform #
{ 
public 

int 
FormId 
{ 
get 
; 
set  
;  !
}" #
public

 

string

 
FormName

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
=

) *
null

+ /
!

/ 0
;

0 1
public 

string 
? 
FormDescription "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
FormType 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

int 
CreatedByHrid 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? $
DistributedToEmployeeIds +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 

DateTime 
? 
Deadline 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Userauthentication %
CreatedByHr& 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
=@ A
nullB F
!F G
;G H
public 

virtual 
ICollection 
< "
Hrfeedbackformresponse 5
>5 6#
Hrfeedbackformresponses7 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
=] ^
new_ b
Listc g
<g h"
Hrfeedbackformresponseh ~
>~ 
(	 Ä
)
Ä Å
;
Å Ç
} À
éC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Goalprogresslog.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Goalprogresslog $
{ 
public 

int 

ProgressId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 
GoalId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

int 
? 
	UpdatedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
? 
	UpdatedOn 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 
ProgressPercent 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
Source 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual 
Goal 
Goal 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

virtual !
Employeedetailsmaster (
?( )
UpdatedByNavigation* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} £
äC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\GoalComment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
GoalComment  
{ 
public 

int 
Goalcommentid 
{ 
get "
;" #
set$ '
;' (
}) *
public

 

int

 
GoalId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

string 
? 
GoalComment1 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? 
CommentedBy 
{ 
get !
;! "
set# &
;& '
}( )
public 

DateTime 
? 
CommentedOn  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

virtual !
Employeedetailsmaster (
?( )!
CommentedByNavigation* ?
{@ A
getB E
;E F
setG J
;J K
}L M
public 

virtual 
Goal 
Goal 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
} ∑
îC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Goalchecklistprogress.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class !
Goalchecklistprogress *
{ 
public 

int 
ChecklistProgressId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public

 

int

 
ChecklistId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 

int 
? 
UserId 
{ 
get 
; 
set !
;! "
}# $
public 

bool 
? 
IsCompleted 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
? 
CompletedOn  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

virtual 
GoalChecklist  
	Checklist! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
public 

virtual !
Employeedetailsmaster (
?( )
User* .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} Ì
åC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\GoalChecklist.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
GoalChecklist "
{ 
public 

int 
ChecklistId 
{ 
get  
;  !
set" %
;% &
}' (
public

 

int

 
GoalId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

string 
? 
	ItemTitle 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
ItemDescription "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

bool 
? 
IsShared 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 
? 
AddedBy 
{ 
get 
; 
set "
;" #
}$ %
public 

int 
? 
AddedFor 
{ 
get 
; 
set  #
;# $
}% &
public 

virtual !
Employeedetailsmaster (
?( )
AddedByNavigation* ;
{< =
get> A
;A B
setC F
;F G
}H I
public 

virtual !
Employeedetailsmaster (
?( )
AddedForNavigation* <
{= >
get? B
;B C
setD G
;G H
}I J
public 

virtual 
Goal 
Goal 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

virtual 
ICollection 
< !
Goalchecklistprogress 4
>4 5#
Goalchecklistprogresses6 M
{N O
getP S
;S T
setU X
;X Y
}Z [
=\ ]
new^ a
Listb f
<f g!
Goalchecklistprogressg |
>| }
(} ~
)~ 
;	 Ä
} ã
çC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\GoalAttachment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
GoalAttachment #
{ 
public 

int 
Goalattachmentsid  
{! "
get# &
;& '
set( +
;+ ,
}- .
public

 

int

 
GoalId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

string 
? 
AttachmentTitle "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
? 
Attachments 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 

AttachedBy 
{ 
get  
;  !
set" %
;% &
}' (
public 

DateTime 
? 

AttachedOn 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
? 
IsProofOfCompletion $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

int 
? 
LinkedApprovalId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

virtual !
Employeedetailsmaster (
?( ) 
AttachedByNavigation* >
{? @
getA D
;D E
setF I
;I J
}K L
public 

virtual 
Goal 
Goal 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

virtual 
GoalApproval 
?  
LinkedApproval! /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} Í
çC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\GoalAssignment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
GoalAssignment #
{ 
public 

int 
AssignmentId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
GoalId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

int 
? 

AssignedBy 
{ 
get  
;  !
set" %
;% &
}' (
public 

int 
? 

AssignedTo 
{ 
get  
;  !
set" %
;% &
}' (
public 

DateTime 
? 

AssignedOn 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
? 
IsAcknowledged 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
? 
AcknowledgedOn #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

int 
? 
AcknowledgedBy 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual !
Employeedetailsmaster (
?( )$
AcknowledgedByNavigation* B
{C D
getE H
;H I
setJ M
;M N
}O P
public 

virtual !
Employeedetailsmaster (
?( ) 
AssignedByNavigation* >
{? @
getA D
;D E
setF I
;I J
}K L
public 

virtual !
Employeedetailsmaster (
?( ) 
AssignedToNavigation* >
{? @
getA D
;D E
setF I
;I J
}K L
public 

virtual 
Goal 
Goal 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
} ó
ãC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\GoalApproval.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
GoalApproval !
{ 
public 

int 

ApprovalId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 
GoalId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

string 
? 
ApprovalType 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? 
RequestedBy 
{ 
get !
;! "
set# &
;& '
}( )
public 

DateTime 
? 
RequestedOn  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
? 

ApprovedBy 
{ 
get  
;  !
set" %
;% &
}' (
public 

DateTime 
? 

ApprovedOn 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
ApprovalStatus !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

virtual !
Employeedetailsmaster (
?( ) 
ApprovedByNavigation* >
{? @
getA D
;D E
setF I
;I J
}K L
public 

virtual 
Goal 
Goal 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

virtual 
ICollection 
< 
GoalAttachment -
>- .
GoalAttachments/ >
{? @
getA D
;D E
setF I
;I J
}K L
=M N
newO R
ListS W
<W X
GoalAttachmentX f
>f g
(g h
)h i
;i j
public 

virtual !
Employeedetailsmaster (
?( )!
RequestedByNavigation* ?
{@ A
getB E
;E F
setG J
;J K
}L M
} Û<
ÉC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Goal.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Goal 
{ 
public 

int 
GoalId 
{ 
get 
; 
set  
;  !
}" #
public

 

string

 
?

 
GoalType

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
? 
	ProjectId 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
	GoalTitle 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
GoalDescription "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
? 
Goalcreatedat "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
? 
	Goalendat 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 
	CreatedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 

Goalstatus 
{ 
get  #
;# $
set% (
;( )
}* +
public 

int 
? 

ReopenedBy 
{ 
get  
;  !
set" %
;% &
}' (
public 

DateTime 
? 

ReopenedOn 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
? 
ReopenUntil  
{! "
get# &
;& '
set( +
;+ ,
}- .
public   

int   
?   
ClosedBy   
{   
get   
;   
set    #
;  # $
}  % &
public"" 

DateTime"" 
?"" 
ClosedOn"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
public$$ 

string$$ 
?$$ 
ClosureReason$$  
{$$! "
get$$# &
;$$& '
set$$( +
;$$+ ,
}$$- .
public&& 

virtual&& !
Employeedetailsmaster&& (
?&&( )
ClosedByNavigation&&* <
{&&= >
get&&? B
;&&B C
set&&D G
;&&G H
}&&I J
public(( 

virtual(( !
Employeedetailsmaster(( (
?((( )
CreatedByNavigation((* =
{((> ?
get((@ C
;((C D
set((E H
;((H I
}((J K
public** 

virtual** 
ICollection** 
<** 
Feedback** '
>**' (
	Feedbacks**) 2
{**3 4
get**5 8
;**8 9
set**: =
;**= >
}**? @
=**A B
new**C F
List**G K
<**K L
Feedback**L T
>**T U
(**U V
)**V W
;**W X
public,, 

virtual,, 
ICollection,, 
<,, 
GoalApproval,, +
>,,+ ,
GoalApprovals,,- :
{,,; <
get,,= @
;,,@ A
set,,B E
;,,E F
},,G H
=,,I J
new,,K N
List,,O S
<,,S T
GoalApproval,,T `
>,,` a
(,,a b
),,b c
;,,c d
public.. 

virtual.. 
ICollection.. 
<.. 
GoalAssignment.. -
>..- .
GoalAssignments../ >
{..? @
get..A D
;..D E
set..F I
;..I J
}..K L
=..M N
new..O R
List..S W
<..W X
GoalAssignment..X f
>..f g
(..g h
)..h i
;..i j
public00 

virtual00 
ICollection00 
<00 
GoalAttachment00 -
>00- .
GoalAttachments00/ >
{00? @
get00A D
;00D E
set00F I
;00I J
}00K L
=00M N
new00O R
List00S W
<00W X
GoalAttachment00X f
>00f g
(00g h
)00h i
;00i j
public22 

virtual22 
ICollection22 
<22 
GoalChecklist22 ,
>22, -
GoalChecklists22. <
{22= >
get22? B
;22B C
set22D G
;22G H
}22I J
=22K L
new22M P
List22Q U
<22U V
GoalChecklist22V c
>22c d
(22d e
)22e f
;22f g
public44 

virtual44 
ICollection44 
<44 
GoalComment44 *
>44* +
GoalComments44, 8
{449 :
get44; >
;44> ?
set44@ C
;44C D
}44E F
=44G H
new44I L
List44M Q
<44Q R
GoalComment44R ]
>44] ^
(44^ _
)44_ `
;44` a
public66 

virtual66 
ICollection66 
<66 
Goalprogresslog66 .
>66. /
Goalprogresslogs660 @
{66A B
get66C F
;66F G
set66H K
;66K L
}66M N
=66O P
new66Q T
List66U Y
<66Y Z
Goalprogresslog66Z i
>66i j
(66j k
)66k l
;66l m
public88 

virtual88 
ICollection88 
<88  
Managerreviewcomment88 3
>883 4!
Managerreviewcomments885 J
{88K L
get88M P
;88P Q
set88R U
;88U V
}88W X
=88Y Z
new88[ ^
List88_ c
<88c d 
Managerreviewcomment88d x
>88x y
(88y z
)88z {
;88{ |
public:: 

virtual:: 
Project:: 
?:: 
Project:: #
{::$ %
get::& )
;::) *
set::+ .
;::. /
}::0 1
public<< 

virtual<< 
ICollection<< 
<<< 
Projectgoalfeedback<< 2
><<2 3 
Projectgoalfeedbacks<<4 H
{<<I J
get<<K N
;<<N O
set<<P S
;<<S T
}<<U V
=<<W X
new<<Y \
List<<] a
<<<a b
Projectgoalfeedback<<b u
><<u v
(<<v w
)<<w x
;<<x y
public>> 

virtual>> !
Employeedetailsmaster>> (
?>>( ) 
ReopenedByNavigation>>* >
{>>? @
get>>A D
;>>D E
set>>F I
;>>I J
}>>K L
public@@ 

virtual@@ 
ICollection@@ 
<@@ 
Review@@ %
>@@% &
Reviews@@' .
{@@/ 0
get@@1 4
;@@4 5
set@@6 9
;@@9 :
}@@; <
=@@= >
new@@? B
List@@C G
<@@G H
Review@@H N
>@@N O
(@@O P
)@@P Q
;@@Q R
}AA ’
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Formprogresstracker.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Formprogresstracker (
{ 
public 

int 
	TrackerId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 
AssignmentId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

bool 
? 
	Initiated 
{ 
get  
;  !
set" %
;% &
}' (
public 

bool 
? 
SentToEmployee 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
? 
EmployeeCompleted "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

bool 
? 
SentToManager 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

bool 
? 
ManagerCompleted !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

bool 
? 
SentToDeptHead 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 
? 
SentToLeadership !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

DateTime 
? 
LastUpdated  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

virtual 

Assignment 

Assignment (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
null9 =
!= >
;> ?
}  
óC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Feedbackquestionresponse.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class $
Feedbackquestionresponse -
{ 
public 

int 

ResponseId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 

FeedbackId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 

QuestionId 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 
? 
RatingValue 
{ 
get !
;! "
set# &
;& '
}( )
public 

bool 
? 
BooleanValue 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
	TextValue 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
SelectedOptions "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Feedback 
Feedback $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

virtual 
Feedbackquestion #
Question$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
} ™
èC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Feedbackquestion.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Feedbackquestion %
{ 
public 

int 

QuestionId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

string

 
QuestionCode

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
null

/ 3
!

3 4
;

4 5
public 

string 
QuestionText 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

string 
? 
QuestionDescription &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

string 
FeedbackType 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

string 
ResponseType 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

int 
? 
RatingScaleMin 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 
RatingScaleMax 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
RatingScaleLabels $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

string 
? 
ChoiceOptions  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
DisplayOrder 
{ 
get !
;! "
set# &
;& '
}( )
public 

bool 
? 

IsRequired 
{ 
get !
;! "
set# &
;& '
}( )
public   

bool   
?   
IsActive   
{   
get   
;    
set  ! $
;  $ %
}  & '
public"" 

DateTime"" 
	CreatedAt"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
public$$ 

DateTime$$ 
?$$ 
	UpdatedAt$$ 
{$$  
get$$! $
;$$$ %
set$$& )
;$$) *
}$$+ ,
public&& 

virtual&& 
ICollection&& 
<&& $
Feedbackquestionresponse&& 7
>&&7 8%
Feedbackquestionresponses&&9 R
{&&S T
get&&U X
;&&X Y
set&&Z ]
;&&] ^
}&&_ `
=&&a b
new&&c f
List&&g k
<&&k l%
Feedbackquestionresponse	&&l Ñ
>
&&Ñ Ö
(
&&Ö Ü
)
&&Ü á
;
&&á à
}'' Ç
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Feedbackedithistory.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Feedbackedithistory (
{ 
public 

int 
	HistoryId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 

FeedbackId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 
EditedByEmployeeId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
OriginalContent !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 

string 
UpdatedContent  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

string 
? 
ChangeReason 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
EditedAt 
{ 
get "
;" #
set$ '
;' (
}) *
public 

virtual 
Employee 
EditedByEmployee ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 

virtual 
Feedback 
Feedback $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
} Ù.
áC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Feedback.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Feedback 
{ 
public 

int 

FeedbackId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

string

 
FeedbackType

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
null

/ 3
!

3 4
;

4 5
public 

int 
? !
SubmittedByEmployeeId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

int 
RecipientEmployeeId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

int 
? 
RelatedGoalId 
{ 
get  #
;# $
set% (
;( )
}* +
public 

int 
? 
RelatedProjectId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
? 
RelatedMentorId 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? %
RelatedOrganizationGoalId )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 

int 
? 
Rating 
{ 
get 
; 
set !
;! "
}# $
public 

string 
? 
Comments 
{ 
get !
;! "
set# &
;& '
}( )
public 

bool 
IsAnonymous 
{ 
get !
;! "
set# &
;& '
}( )
public 

bool 
BiasFlag 
{ 
get 
; 
set  #
;# $
}% &
public   

bool   
FairnessFlag   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
public"" 

bool"" #
IsApprovedForPeerReview"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
public$$ 

string$$ 
Status$$ 
{$$ 
get$$ 
;$$ 
set$$  #
;$$# $
}$$% &
=$$' (
null$$) -
!$$- .
;$$. /
public&& 

int&& 
?&& 
ReviewedByHrid&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public(( 

string(( 
?(( 
HrreviewComments(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public** 

DateTime** 
	CreatedAt** 
{** 
get**  #
;**# $
set**% (
;**( )
}*** +
public,, 

DateTime,, 
?,, 
	UpdatedAt,, 
{,,  
get,,! $
;,,$ %
set,,& )
;,,) *
},,+ ,
public.. 

DateTime.. 
?.. 
SubmittedAt..  
{..! "
get..# &
;..& '
set..( +
;..+ ,
}..- .
public00 

virtual00 
ICollection00 
<00 
Feedbackedithistory00 2
>002 3!
Feedbackedithistories004 I
{00J K
get00L O
;00O P
set00Q T
;00T U
}00V W
=00X Y
new00Z ]
List00^ b
<00b c
Feedbackedithistory00c v
>00v w
(00w x
)00x y
;00y z
public22 

virtual22 
ICollection22 
<22 $
Feedbackquestionresponse22 7
>227 8%
Feedbackquestionresponses229 R
{22S T
get22U X
;22X Y
set22Z ]
;22] ^
}22_ `
=22a b
new22c f
List22g k
<22k l%
Feedbackquestionresponse	22l Ñ
>
22Ñ Ö
(
22Ö Ü
)
22Ü á
;
22á à
public44 

virtual44 
Employee44 
RecipientEmployee44 -
{44. /
get440 3
;443 4
set445 8
;448 9
}44: ;
=44< =
null44> B
!44B C
;44C D
public66 

virtual66 
Goal66 
?66 
RelatedGoal66 $
{66% &
get66' *
;66* +
set66, /
;66/ 0
}661 2
public88 

virtual88 
Employee88 
?88 
RelatedMentor88 *
{88+ ,
get88- 0
;880 1
set882 5
;885 6
}887 8
public:: 

virtual:: 
Project:: 
?:: 
RelatedProject:: *
{::+ ,
get::- 0
;::0 1
set::2 5
;::5 6
}::7 8
public<< 

virtual<< 
Userauthentication<< %
?<<% &
ReviewedByHr<<' 3
{<<4 5
get<<6 9
;<<9 :
set<<; >
;<<> ?
}<<@ A
public>> 

virtual>> 
Employee>> 
?>> 
SubmittedByEmployee>> 0
{>>1 2
get>>3 6
;>>6 7
set>>8 ;
;>>; <
}>>= >
}?? ò
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Engagement.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Engagement 
{ 
public 

int 
EngagementId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
?

 
DepartmentId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 

decimal 
? 
EngagementScore #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

DateTime 
? 
PeriodStart  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateTime 
? 
	PeriodEnd 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

decimal 
? 

TrendScore 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

DateTime 
? 
	CreatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 

Department 
? 

Department )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} ú^
îC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Employeedetailsmaster.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class !
Employeedetailsmaster *
{ 
public 

int 
EmployeeMasterId 
{  !
get" %
;% &
set' *
;* +
}, -
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 
RoleId 
{ 
get 
; 
set  
;  !
}" #
public 

int 
DepartmentId 
{ 
get !
;! "
set# &
;& '
}( )
public 

virtual 

Department 

Department (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
null9 =
!= >
;> ?
public 

virtual 
ICollection 
< "
Departmentheadapproval 5
>5 6#
Departmentheadapprovals7 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
=] ^
new_ b
Listc g
<g h"
Departmentheadapprovalh ~
>~ 
(	 Ä
)
Ä Å
;
Å Ç
public 

virtual 
Employee 
Employee $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

virtual 
ICollection 
< 
GoalApproval +
>+ ,-
!GoalApprovalApprovedByNavigations- N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
=] ^
new_ b
Listc g
<g h
GoalApprovalh t
>t u
(u v
)v w
;w x
public 

virtual 
ICollection 
< 
GoalApproval +
>+ ,.
"GoalApprovalRequestedByNavigations- O
{P Q
getR U
;U V
setW Z
;Z [
}\ ]
=^ _
new` c
Listd h
<h i
GoalApprovali u
>u v
(v w
)w x
;x y
public 

virtual 
ICollection 
< 
GoalAssignment -
>- .3
'GoalAssignmentAcknowledgedByNavigations/ V
{W X
getY \
;\ ]
set^ a
;a b
}c d
=e f
newg j
Listk o
<o p
GoalAssignmentp ~
>~ 
(	 Ä
)
Ä Å
;
Å Ç
public 

virtual 
ICollection 
< 
GoalAssignment -
>- ./
#GoalAssignmentAssignedByNavigations/ R
{S T
getU X
;X Y
setZ ]
;] ^
}_ `
=a b
newc f
Listg k
<k l
GoalAssignmentl z
>z {
({ |
)| }
;} ~
public 

virtual 
ICollection 
< 
GoalAssignment -
>- ./
#GoalAssignmentAssignedToNavigations/ R
{S T
getU X
;X Y
setZ ]
;] ^
}_ `
=a b
newc f
Listg k
<k l
GoalAssignmentl z
>z {
({ |
)| }
;} ~
public   

virtual   
ICollection   
<   
GoalAttachment   -
>  - .
GoalAttachments  / >
{  ? @
get  A D
;  D E
set  F I
;  I J
}  K L
=  M N
new  O R
List  S W
<  W X
GoalAttachment  X f
>  f g
(  g h
)  h i
;  i j
public"" 

virtual"" 
ICollection"" 
<"" 
GoalChecklist"" ,
>"", -+
GoalChecklistAddedByNavigations"". M
{""N O
get""P S
;""S T
set""U X
;""X Y
}""Z [
=""\ ]
new""^ a
List""b f
<""f g
GoalChecklist""g t
>""t u
(""u v
)""v w
;""w x
public$$ 

virtual$$ 
ICollection$$ 
<$$ 
GoalChecklist$$ ,
>$$, -,
 GoalChecklistAddedForNavigations$$. N
{$$O P
get$$Q T
;$$T U
set$$V Y
;$$Y Z
}$$[ \
=$$] ^
new$$_ b
List$$c g
<$$g h
GoalChecklist$$h u
>$$u v
($$v w
)$$w x
;$$x y
public&& 

virtual&& 
ICollection&& 
<&& 
Goal&& #
>&&# $#
GoalClosedByNavigations&&% <
{&&= >
get&&? B
;&&B C
set&&D G
;&&G H
}&&I J
=&&K L
new&&M P
List&&Q U
<&&U V
Goal&&V Z
>&&Z [
(&&[ \
)&&\ ]
;&&] ^
public(( 

virtual(( 
ICollection(( 
<(( 
GoalComment(( *
>((* +
GoalComments((, 8
{((9 :
get((; >
;((> ?
set((@ C
;((C D
}((E F
=((G H
new((I L
List((M Q
<((Q R
GoalComment((R ]
>((] ^
(((^ _
)((_ `
;((` a
public** 

virtual** 
ICollection** 
<** 
Goal** #
>**# $$
GoalCreatedByNavigations**% =
{**> ?
get**@ C
;**C D
set**E H
;**H I
}**J K
=**L M
new**N Q
List**R V
<**V W
Goal**W [
>**[ \
(**\ ]
)**] ^
;**^ _
public,, 

virtual,, 
ICollection,, 
<,, 
Goal,, #
>,,# $%
GoalReopenedByNavigations,,% >
{,,? @
get,,A D
;,,D E
set,,F I
;,,I J
},,K L
=,,M N
new,,O R
List,,S W
<,,W X
Goal,,X \
>,,\ ]
(,,] ^
),,^ _
;,,_ `
public.. 

virtual.. 
ICollection.. 
<.. !
Goalchecklistprogress.. 4
>..4 5#
Goalchecklistprogresses..6 M
{..N O
get..P S
;..S T
set..U X
;..X Y
}..Z [
=..\ ]
new..^ a
List..b f
<..f g!
Goalchecklistprogress..g |
>..| }
(..} ~
)..~ 
;	.. Ä
public00 

virtual00 
ICollection00 
<00 
Goalprogresslog00 .
>00. /
Goalprogresslogs000 @
{00A B
get00C F
;00F G
set00H K
;00K L
}00M N
=00O P
new00Q T
List00U Y
<00Y Z
Goalprogresslog00Z i
>00i j
(00j k
)00k l
;00l m
public22 

virtual22 
ICollection22 
<22 
Oneononediscussion22 1
>221 22
&OneononediscussionCreatedByNavigations223 Y
{22Z [
get22\ _
;22_ `
set22a d
;22d e
}22f g
=22h i
new22j m
List22n r
<22r s
Oneononediscussion	22s Ö
>
22Ö Ü
(
22Ü á
)
22á à
;
22à â
public44 

virtual44 
ICollection44 
<44 
Oneononediscussion44 1
>441 2+
OneononediscussionHostEmployees443 R
{44S T
get44U X
;44X Y
set44Z ]
;44] ^
}44_ `
=44a b
new44c f
List44g k
<44k l
Oneononediscussion44l ~
>44~ 
(	44 Ä
)
44Ä Å
;
44Å Ç
public66 

virtual66 
ICollection66 
<66 
Oneononediscussion66 1
>661 22
&OneononediscussionParticipantEmployees663 Y
{66Z [
get66\ _
;66_ `
set66a d
;66d e
}66f g
=66h i
new66j m
List66n r
<66r s
Oneononediscussion	66s Ö
>
66Ö Ü
(
66Ü á
)
66á à
;
66à â
public88 

virtual88 
ICollection88 
<88 
Peerfeedback88 +
>88+ ,%
PeerfeedbackPeerEmployees88- F
{88G H
get88I L
;88L M
set88N Q
;88Q R
}88S T
=88U V
new88W Z
List88[ _
<88_ `
Peerfeedback88` l
>88l m
(88m n
)88n o
;88o p
public:: 

virtual:: 
ICollection:: 
<:: 
Peerfeedback:: +
>::+ ,,
 PeerfeedbackSubmittedByEmployees::- M
{::N O
get::P S
;::S T
set::U X
;::X Y
}::Z [
=::\ ]
new::^ a
List::b f
<::f g
Peerfeedback::g s
>::s t
(::t u
)::u v
;::v w
public<< 

virtual<< 
ICollection<< 
<<< 
Project<< &
><<& '&
ProjectL1approverEmployees<<( B
{<<C D
get<<E H
;<<H I
set<<J M
;<<M N
}<<O P
=<<Q R
new<<S V
List<<W [
<<<[ \
Project<<\ c
><<c d
(<<d e
)<<e f
;<<f g
public>> 

virtual>> 
ICollection>> 
<>> 
Project>> &
>>>& '&
ProjectL2approverEmployees>>( B
{>>C D
get>>E H
;>>H I
set>>J M
;>>M N
}>>O P
=>>Q R
new>>S V
List>>W [
<>>[ \
Project>>\ c
>>>c d
(>>d e
)>>e f
;>>f g
public@@ 

virtual@@ 
ICollection@@ 
<@@ 
Project@@ &
>@@& ')
ProjectResourceOwnerEmployees@@( E
{@@F G
get@@H K
;@@K L
set@@M P
;@@P Q
}@@R S
=@@T U
new@@V Y
List@@Z ^
<@@^ _
Project@@_ f
>@@f g
(@@g h
)@@h i
;@@i j
publicBB 

virtualBB 
ICollectionBB 
<BB 
ProjectemployeeBB .
>BB. /
ProjectemployeesBB0 @
{BBA B
getBBC F
;BBF G
setBBH K
;BBK L
}BBM N
=BBO P
newBBQ T
ListBBU Y
<BBY Z
ProjectemployeeBBZ i
>BBi j
(BBj k
)BBk l
;BBl m
publicDD 

virtualDD 
ICollectionDD 
<DD 
ProjectgoalfeedbackDD 2
>DD2 3 
ProjectgoalfeedbacksDD4 H
{DDI J
getDDK N
;DDN O
setDDP S
;DDS T
}DDU V
=DDW X
newDDY \
ListDD] a
<DDa b
ProjectgoalfeedbackDDb u
>DDu v
(DDv w
)DDw x
;DDx y
publicFF 

virtualFF 
RoleFF 
RoleFF 
{FF 
getFF "
;FF" #
setFF$ '
;FF' (
}FF) *
=FF+ ,
nullFF- 1
!FF1 2
;FF2 3
}GG ∂
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Employeecertificate.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Employeecertificate (
{ 
public 

int 
CertificateId 
{ 
get "
;" #
set$ '
;' (
}) *
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 

TemplateId 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
AreaOfAchievement #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 

DateTime 
? 
	IssueDate 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
CertificateFilePath %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
null6 :
!: ;
;; <
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 
string 
SerialNumber 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
EmployeeName 
{  !
get" %
;% &
set' *
;* +
}, -
public 

virtual 
ICollection 
< #
Certificatenotification 6
>6 7$
Certificatenotifications8 P
{Q R
getS V
;V W
setX [
;[ \
}] ^
=_ `
newa d
Liste i
<i j$
Certificatenotification	j Å
>
Å Ç
(
Ç É
)
É Ñ
;
Ñ Ö
public 

virtual 
Employee 
Employee $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

virtual 
Certificatetemplate &
Template' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
null@ D
!D E
;E F
} Õ’
áC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Employee.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Employee 
{ 
public 

int 

EmployeeId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

string

 
EmployeeCompanyId

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
=

2 3
null

4 8
!

8 9
;

9 :
public 

string 
EmploymentType  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

string 
EmploymentStatus "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 

DateOnly 
JoiningDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateOnly 
? 
ConfirmationDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

DateOnly 
? 
ExitDate 
{ 
get  #
;# $
set% (
;( )
}* +
public 

int 
? &
ReportingManagerEmployeeId *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

string 
? 
WorkLocation 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
EmployeeType 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

int 
? 
NoticePeriodDays  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

bool 
? 
IsActive 
{ 
get 
;  
set! $
;$ %
}& '
public   

DateTime   
	CreatedAt   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public"" 

DateTime"" 
?"" 
	UpdatedAt"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public$$ 

int$$ 
?$$ 
CreatedByUserId$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 

int&& 
?&& 
UpdatedByUserId&& 
{&&  !
get&&" %
;&&% &
set&&' *
;&&* +
}&&, -
public(( 

virtual(( 
ICollection(( 
<(( 
Address(( &
>((& '
	Addresses((( 1
{((2 3
get((4 7
;((7 8
set((9 <
;((< =
}((> ?
=((@ A
new((B E
List((F J
<((J K
Address((K R
>((R S
(((S T
)((T U
;((U V
public** 

virtual** 
ICollection** 
<** #
Certificatenotification** 6
>**6 7$
Certificatenotifications**8 P
{**Q R
get**S V
;**V W
set**X [
;**[ \
}**] ^
=**_ `
new**a d
List**e i
<**i j$
Certificatenotification	**j Å
>
**Å Ç
(
**Ç É
)
**É Ñ
;
**Ñ Ö
public,, 

virtual,, 
ICollection,, 
<,, 
Changerequest,, ,
>,,, -
Changerequests,,. <
{,,= >
get,,? B
;,,B C
set,,D G
;,,G H
},,I J
=,,K L
new,,M P
List,,Q U
<,,U V
Changerequest,,V c
>,,c d
(,,d e
),,e f
;,,f g
public.. 

virtual.. 
ICollection.. 
<.. 
Employeecertificate.. 2
>..2 3 
Employeecertificates..4 H
{..I J
get..K N
;..N O
set..P S
;..S T
}..U V
=..W X
new..Y \
List..] a
<..a b
Employeecertificate..b u
>..u v
(..v w
)..w x
;..x y
public00 

virtual00 
ICollection00 
<00 !
Employeedetailsmaster00 4
>004 5"
Employeedetailsmasters006 L
{00M N
get00O R
;00R S
set00T W
;00W X
}00Y Z
=00[ \
new00] `
List00a e
<00e f!
Employeedetailsmaster00f {
>00{ |
(00| }
)00} ~
;00~ 
public22 

virtual22 
ICollection22 
<22 
Feedback22 '
>22' (&
FeedbackRecipientEmployees22) C
{22D E
get22F I
;22I J
set22K N
;22N O
}22P Q
=22R S
new22T W
List22X \
<22\ ]
Feedback22] e
>22e f
(22f g
)22g h
;22h i
public44 

virtual44 
ICollection44 
<44 
Feedback44 '
>44' ("
FeedbackRelatedMentors44) ?
{44@ A
get44B E
;44E F
set44G J
;44J K
}44L M
=44N O
new44P S
List44T X
<44X Y
Feedback44Y a
>44a b
(44b c
)44c d
;44d e
public66 

virtual66 
ICollection66 
<66 
Feedback66 '
>66' ((
FeedbackSubmittedByEmployees66) E
{66F G
get66H K
;66K L
set66M P
;66P Q
}66R S
=66T U
new66V Y
List66Z ^
<66^ _
Feedback66_ g
>66g h
(66h i
)66i j
;66j k
public88 

virtual88 
ICollection88 
<88 
Feedbackedithistory88 2
>882 3!
Feedbackedithistories884 I
{88J K
get88L O
;88O P
set88Q T
;88T U
}88V W
=88X Y
new88Z ]
List88^ b
<88b c
Feedbackedithistory88c v
>88v w
(88w x
)88x y
;88y z
public:: 

virtual:: 
ICollection:: 
<:: "
Hrfeedbackformresponse:: 5
>::5 6#
Hrfeedbackformresponses::7 N
{::O P
get::Q T
;::T U
set::V Y
;::Y Z
}::[ \
=::] ^
new::_ b
List::c g
<::g h"
Hrfeedbackformresponse::h ~
>::~ 
(	:: Ä
)
::Ä Å
;
::Å Ç
public<< 

virtual<< 
ICollection<< 
<<< 
Employee<< '
><<' (+
InverseReportingManagerEmployee<<) H
{<<I J
get<<K N
;<<N O
set<<P S
;<<S T
}<<U V
=<<W X
new<<Y \
List<<] a
<<<a b
Employee<<b j
><<j k
(<<k l
)<<l m
;<<m n
public>> 

virtual>> 
ICollection>> 
<>> 
Lndapproval>> *
>>>* +(
LndapprovalApproverEmployees>>, H
{>>I J
get>>K N
;>>N O
set>>P S
;>>S T
}>>U V
=>>W X
new>>Y \
List>>] a
<>>a b
Lndapproval>>b m
>>>m n
(>>n o
)>>o p
;>>p q
public@@ 

virtual@@ 
ICollection@@ 
<@@ 
Lndapproval@@ *
>@@* +)
LndapprovalRequesterEmployees@@, I
{@@J K
get@@L O
;@@O P
set@@Q T
;@@T U
}@@V W
=@@X Y
new@@Z ]
List@@^ b
<@@b c
Lndapproval@@c n
>@@n o
(@@o p
)@@p q
;@@q r
publicBB 

virtualBB 
ICollectionBB 
<BB 
LndassignmentBB ,
>BB, -+
LndassignmentCreatedByEmployeesBB. M
{BBN O
getBBP S
;BBS T
setBBU X
;BBX Y
}BBZ [
=BB\ ]
newBB^ a
ListBBb f
<BBf g
LndassignmentBBg t
>BBt u
(BBu v
)BBv w
;BBw x
publicDD 

virtualDD 
ICollectionDD 
<DD 
LndassignmentDD ,
>DD, -(
LndassignmentMenteeEmployeesDD. J
{DDK L
getDDM P
;DDP Q
setDDR U
;DDU V
}DDW X
=DDY Z
newDD[ ^
ListDD_ c
<DDc d
LndassignmentDDd q
>DDq r
(DDr s
)DDs t
;DDt u
publicFF 

virtualFF 
ICollectionFF 
<FF 
LndassignmentFF ,
>FF, -+
LndassignmentUpdatedByEmployeesFF. M
{FFN O
getFFP S
;FFS T
setFFU X
;FFX Y
}FFZ [
=FF\ ]
newFF^ a
ListFFb f
<FFf g
LndassignmentFFg t
>FFt u
(FFu v
)FFv w
;FFw x
publicHH 

virtualHH 
ICollectionHH 
<HH 
LndattachmentHH ,
>HH, -
LndattachmentsHH. <
{HH= >
getHH? B
;HHB C
setHHD G
;HHG H
}HHI J
=HHK L
newHHM P
ListHHQ U
<HHU V
LndattachmentHHV c
>HHc d
(HHd e
)HHe f
;HHf g
publicJJ 

virtualJJ 
ICollectionJJ 
<JJ "
LndemployeeskillmapperJJ 5
>JJ5 64
(LndemployeeskillmapperCreatedByEmployeesJJ7 _
{JJ` a
getJJb e
;JJe f
setJJg j
;JJj k
}JJl m
=JJn o
newJJp s
ListJJt x
<JJx y#
Lndemployeeskillmapper	JJy è
>
JJè ê
(
JJê ë
)
JJë í
;
JJí ì
publicLL 

virtualLL 
ICollectionLL 
<LL "
LndemployeeskillmapperLL 5
>LL5 6+
LndemployeeskillmapperEmployeesLL7 V
{LLW X
getLLY \
;LL\ ]
setLL^ a
;LLa b
}LLc d
=LLe f
newLLg j
ListLLk o
<LLo p#
Lndemployeeskillmapper	LLp Ü
>
LLÜ á
(
LLá à
)
LLà â
;
LLâ ä
publicNN 

virtualNN 
ICollectionNN 
<NN "
LndemployeeskillmapperNN 5
>NN5 64
(LndemployeeskillmapperUpdatedByEmployeesNN7 _
{NN` a
getNNb e
;NNe f
setNNg j
;NNj k
}NNl m
=NNn o
newNNp s
ListNNt x
<NNx y#
Lndemployeeskillmapper	NNy è
>
NNè ê
(
NNê ë
)
NNë í
;
NNí ì
publicPP 

virtualPP 
ICollectionPP 
<PP 
LndsmePP %
>PP% &%
LndsmeApprovedByEmployeesPP' @
{PPA B
getPPC F
;PPF G
setPPH K
;PPK L
}PPM N
=PPO P
newPPQ T
ListPPU Y
<PPY Z
LndsmePPZ `
>PP` a
(PPa b
)PPb c
;PPc d
publicRR 

virtualRR 
ICollectionRR 
<RR 
LndsmeRR %
>RR% &
LndsmeEmployeesRR' 6
{RR7 8
getRR9 <
;RR< =
setRR> A
;RRA B
}RRC D
=RRE F
newRRG J
ListRRK O
<RRO P
LndsmeRRP V
>RRV W
(RRW X
)RRX Y
;RRY Z
publicTT 

virtualTT 
ICollectionTT 
<TT  
ManagerreviewcommentTT 3
>TT3 40
$ManagerreviewcommentManagerEmployeesTT5 Y
{TTZ [
getTT\ _
;TT_ `
setTTa d
;TTd e
}TTf g
=TTh i
newTTj m
ListTTn r
<TTr s!
Managerreviewcomment	TTs á
>
TTá à
(
TTà â
)
TTâ ä
;
TTä ã
publicVV 

virtualVV 
ICollectionVV 
<VV  
ManagerreviewcommentVV 3
>VV3 4/
#ManagerreviewcommentTargetEmployeesVV5 X
{VVY Z
getVV[ ^
;VV^ _
setVV` c
;VVc d
}VVe f
=VVg h
newVVi l
ListVVm q
<VVq r!
Managerreviewcomment	VVr Ü
>
VVÜ á
(
VVá à
)
VVà â
;
VVâ ä
publicXX 

virtualXX 
ICollectionXX 
<XX 

MeetingmomXX )
>XX) *
MeetingmomsXX+ 6
{XX7 8
getXX9 <
;XX< =
setXX> A
;XXA B
}XXC D
=XXE F
newXXG J
ListXXK O
<XXO P

MeetingmomXXP Z
>XXZ [
(XX[ \
)XX\ ]
;XX] ^
publicZZ 

virtualZZ 
ICollectionZZ 
<ZZ 
MeetingparticipantZZ 1
>ZZ1 2
MeetingparticipantsZZ3 F
{ZZG H
getZZI L
;ZZL M
setZZN Q
;ZZQ R
}ZZS T
=ZZU V
newZZW Z
ListZZ[ _
<ZZ_ `
MeetingparticipantZZ` r
>ZZr s
(ZZs t
)ZZt u
;ZZu v
public\\ 

virtual\\ 
ICollection\\ 
<\\ 
Meeting\\ &
>\\& '
Meetings\\( 0
{\\1 2
get\\3 6
;\\6 7
set\\8 ;
;\\; <
}\\= >
=\\? @
new\\A D
List\\E I
<\\I J
Meeting\\J Q
>\\Q R
(\\R S
)\\S T
;\\T U
public^^ 

virtual^^ 
ICollection^^ 
<^^ 
Mentorfeedback^^ -
>^^- .
Mentorfeedbacks^^/ >
{^^? @
get^^A D
;^^D E
set^^F I
;^^I J
}^^K L
=^^M N
new^^O R
List^^S W
<^^W X
Mentorfeedback^^X f
>^^f g
(^^g h
)^^h i
;^^i j
public`` 

virtual`` 
ICollection`` 
<`` "
Mentorfeedbacktracking`` 5
>``5 61
%MentorfeedbacktrackingMenteeEmployees``7 \
{``] ^
get``_ b
;``b c
set``d g
;``g h
}``i j
=``k l
new``m p
List``q u
<``u v#
Mentorfeedbacktracking	``v å
>
``å ç
(
``ç é
)
``é è
;
``è ê
publicbb 

virtualbb 
ICollectionbb 
<bb "
Mentorfeedbacktrackingbb 5
>bb5 61
%MentorfeedbacktrackingMentorEmployeesbb7 \
{bb] ^
getbb_ b
;bbb c
setbbd g
;bbg h
}bbi j
=bbk l
newbbm p
Listbbq u
<bbu v#
Mentorfeedbacktracking	bbv å
>
bbå ç
(
bbç é
)
bbé è
;
bbè ê
publicdd 

virtualdd 
ICollectiondd 
<dd "
Mentorfeedbacktrackingdd 5
>dd5 66
*MentorfeedbacktrackingSubmittedByEmployeesdd7 a
{ddb c
getddd g
;ddg h
setddi l
;ddl m
}ddn o
=ddp q
newddr u
Listddv z
<ddz {#
Mentorfeedbacktracking	dd{ ë
>
ddë í
(
ddí ì
)
ddì î
;
ddî ï
publicff 

virtualff 
ICollectionff 
<ff 
Momactionitemff ,
>ff, -
Momactionitemsff. <
{ff= >
getff? B
;ffB C
setffD G
;ffG H
}ffI J
=ffK L
newffM P
ListffQ U
<ffU V
MomactionitemffV c
>ffc d
(ffd e
)ffe f
;fff g
publichh 

virtualhh 
ICollectionhh 
<hh 
Momhh "
>hh" #
Momshh$ (
{hh) *
gethh+ .
;hh. /
sethh0 3
;hh3 4
}hh5 6
=hh7 8
newhh9 <
Listhh= A
<hhA B
MomhhB E
>hhE F
(hhF G
)hhG H
;hhH I
publicjj 

virtualjj 
ICollectionjj 
<jj 

Momsharingjj )
>jj) *'
MomsharingSharedByEmployeesjj+ F
{jjG H
getjjI L
;jjL M
setjjN Q
;jjQ R
}jjS T
=jjU V
newjjW Z
Listjj[ _
<jj_ `

Momsharingjj` j
>jjj k
(jjk l
)jjl m
;jjm n
publicll 

virtualll 
ICollectionll 
<ll 

Momsharingll )
>ll) *)
MomsharingSharedWithEmployeesll+ H
{llI J
getllK N
;llN O
setllP S
;llS T
}llU V
=llW X
newllY \
Listll] a
<lla b

Momsharingllb l
>lll m
(llm n
)lln o
;llo p
publicnn 

virtualnn 
ICollectionnn 
<nn (
Nominationvisibilitytrackingnn ;
>nn; <)
Nominationvisibilitytrackingsnn= Z
{nn[ \
getnn] `
;nn` a
setnnb e
;nne f
}nng h
=nni j
newnnk n
Listnno s
<nns t)
Nominationvisibilitytracking	nnt ê
>
nnê ë
(
nnë í
)
nní ì
;
nnì î
publicpp 

virtualpp 
ICollectionpp 
<pp $
Organizationgoalfeedbackpp 7
>pp7 84
(OrganizationgoalfeedbackManagerEmployeespp9 a
{ppb c
getppd g
;ppg h
setppi l
;ppl m
}ppn o
=ppp q
newppr u
Listppv z
<ppz {%
Organizationgoalfeedback	pp{ ì
>
ppì î
(
ppî ï
)
ppï ñ
;
ppñ ó
publicrr 

virtualrr 
ICollectionrr 
<rr $
Organizationgoalfeedbackrr 7
>rr7 88
,OrganizationgoalfeedbackSubmittedByEmployeesrr9 e
{rrf g
getrrh k
;rrk l
setrrm p
;rrp q
}rrr s
=rrt u
newrrv y
Listrrz ~
<rr~ %
Organizationgoalfeedback	rr ó
>
rró ò
(
rrò ô
)
rrô ö
;
rrö õ
publictt 

virtualtt 
ICollectiontt 
<tt 
Peerfeedbackqueuett 0
>tt0 1/
#PeerfeedbackqueueRecipientEmployeestt2 U
{ttV W
getttX [
;tt[ \
settt] `
;tt` a
}ttb c
=ttd e
newttf i
Listttj n
<ttn o
Peerfeedbackqueue	tto Ä
>
ttÄ Å
(
ttÅ Ç
)
ttÇ É
;
ttÉ Ñ
publicvv 

virtualvv 
ICollectionvv 
<vv 
Peerfeedbackqueuevv 0
>vv0 11
%PeerfeedbackqueueSubmittedByEmployeesvv2 W
{vvX Y
getvvZ ]
;vv] ^
setvv_ b
;vvb c
}vvd e
=vvf g
newvvh k
Listvvl p
<vvp q
Peerfeedbackqueue	vvq Ç
>
vvÇ É
(
vvÉ Ñ
)
vvÑ Ö
;
vvÖ Ü
publicxx 

virtualxx 
ICollectionxx 
<xx 
Recognitionstatusxx 0
>xx0 11
%RecognitionstatusNominatedByEmployeesxx2 W
{xxX Y
getxxZ ]
;xx] ^
setxx_ b
;xxb c
}xxd e
=xxf g
newxxh k
Listxxl p
<xxp q
Recognitionstatus	xxq Ç
>
xxÇ É
(
xxÉ Ñ
)
xxÑ Ö
;
xxÖ Ü
publiczz 

virtualzz 
ICollectionzz 
<zz 
Recognitionstatuszz 0
>zz0 1-
!RecognitionstatusNomineeEmployeeszz2 S
{zzT U
getzzV Y
;zzY Z
setzz[ ^
;zz^ _
}zz` a
=zzb c
newzzd g
Listzzh l
<zzl m
Recognitionstatuszzm ~
>zz~ 
(	zz Ä
)
zzÄ Å
;
zzÅ Ç
public|| 

virtual|| 
ICollection|| 
<|| 
Recognitionstatus|| 0
>||0 10
$RecognitionstatusReviewedByEmployees||2 V
{||W X
get||Y \
;||\ ]
set||^ a
;||a b
}||c d
=||e f
new||g j
List||k o
<||o p
Recognitionstatus	||p Å
>
||Å Ç
(
||Ç É
)
||É Ñ
;
||Ñ Ö
public~~ 

virtual~~ 
Employee~~ 
?~~ $
ReportingManagerEmployee~~ 5
{~~6 7
get~~8 ;
;~~; <
set~~= @
;~~@ A
}~~B C
public
ÄÄ 

virtual
ÄÄ 
ICollection
ÄÄ 
<
ÄÄ 
Review
ÄÄ %
>
ÄÄ% &
Reviews
ÄÄ' .
{
ÄÄ/ 0
get
ÄÄ1 4
;
ÄÄ4 5
set
ÄÄ6 9
;
ÄÄ9 :
}
ÄÄ; <
=
ÄÄ= >
new
ÄÄ? B
List
ÄÄC G
<
ÄÄG H
Review
ÄÄH N
>
ÄÄN O
(
ÄÄO P
)
ÄÄP Q
;
ÄÄQ R
public
ÇÇ 

virtual
ÇÇ 
ICollection
ÇÇ 
<
ÇÇ 
Sla
ÇÇ "
>
ÇÇ" #$
SlaAssignedToEmployees
ÇÇ$ :
{
ÇÇ; <
get
ÇÇ= @
;
ÇÇ@ A
set
ÇÇB E
;
ÇÇE F
}
ÇÇG H
=
ÇÇI J
new
ÇÇK N
List
ÇÇO S
<
ÇÇS T
Sla
ÇÇT W
>
ÇÇW X
(
ÇÇX Y
)
ÇÇY Z
;
ÇÇZ [
public
ÑÑ 

virtual
ÑÑ 
ICollection
ÑÑ 
<
ÑÑ 
Sla
ÑÑ "
>
ÑÑ" #
SlaEmployees
ÑÑ$ 0
{
ÑÑ1 2
get
ÑÑ3 6
;
ÑÑ6 7
set
ÑÑ8 ;
;
ÑÑ; <
}
ÑÑ= >
=
ÑÑ? @
new
ÑÑA D
List
ÑÑE I
<
ÑÑI J
Sla
ÑÑJ M
>
ÑÑM N
(
ÑÑN O
)
ÑÑO P
;
ÑÑP Q
public
ÜÜ 

virtual
ÜÜ 
ICollection
ÜÜ 
<
ÜÜ 
Sla
ÜÜ "
>
ÜÜ" #$
SlaReopenedByEmployees
ÜÜ$ :
{
ÜÜ; <
get
ÜÜ= @
;
ÜÜ@ A
set
ÜÜB E
;
ÜÜE F
}
ÜÜG H
=
ÜÜI J
new
ÜÜK N
List
ÜÜO S
<
ÜÜS T
Sla
ÜÜT W
>
ÜÜW X
(
ÜÜX Y
)
ÜÜY Z
;
ÜÜZ [
public
àà 

virtual
àà 
ICollection
àà 
<
àà 
Slacompliance
àà ,
>
àà, -
Slacompliances
àà. <
{
àà= >
get
àà? B
;
ààB C
set
ààD G
;
ààG H
}
ààI J
=
ààK L
new
ààM P
List
ààQ U
<
ààU V
Slacompliance
ààV c
>
ààc d
(
ààd e
)
ààe f
;
ààf g
public
ää 

virtual
ää 
ICollection
ää 
<
ää 
Slaescalation
ää ,
>
ää, -/
!SlaescalationEscalatedToEmployees
ää. O
{
ääP Q
get
ääR U
;
ääU V
set
ääW Z
;
ääZ [
}
ää\ ]
=
ää^ _
new
ää` c
List
ääd h
<
ääh i
Slaescalation
ääi v
>
ääv w
(
ääw x
)
ääx y
;
ääy z
public
åå 

virtual
åå 
ICollection
åå 
<
åå 
Slaescalation
åå ,
>
åå, -.
 SlaescalationResolvedByEmployees
åå. N
{
ååO P
get
ååQ T
;
ååT U
set
ååV Y
;
ååY Z
}
åå[ \
=
åå] ^
new
åå_ b
List
ååc g
<
ååg h
Slaescalation
ååh u
>
ååu v
(
ååv w
)
ååw x
;
ååx y
public
éé 

virtual
éé 
ICollection
éé 
<
éé 
Slaescalation
éé ,
>
éé, -/
!SlaescalationSubmittedByEmployees
éé. O
{
ééP Q
get
ééR U
;
ééU V
set
ééW Z
;
ééZ [
}
éé\ ]
=
éé^ _
new
éé` c
List
ééd h
<
ééh i
Slaescalation
ééi v
>
éév w
(
ééw x
)
ééx y
;
ééy z
public
êê 

virtual
êê 
ICollection
êê 
<
êê 

Slahistory
êê )
>
êê) *
Slahistories
êê+ 7
{
êê8 9
get
êê: =
;
êê= >
set
êê? B
;
êêB C
}
êêD E
=
êêF G
new
êêH K
List
êêL P
<
êêP Q

Slahistory
êêQ [
>
êê[ \
(
êê\ ]
)
êê] ^
;
êê^ _
public
íí 

virtual
íí 
ICollection
íí 
<
íí 
Slanotification
íí .
>
íí. /
Slanotifications
íí0 @
{
ííA B
get
ííC F
;
ííF G
set
ííH K
;
ííK L
}
ííM N
=
ííO P
new
ííQ T
List
ííU Y
<
ííY Z
Slanotification
ííZ i
>
ííi j
(
ííj k
)
íík l
;
ííl m
public
îî 

virtual
îî 
ICollection
îî 
<
îî 
Slareviewtracking
îî 0
>
îî0 1(
SlareviewtrackingEmployees
îî2 L
{
îîM N
get
îîO R
;
îîR S
set
îîT W
;
îîW X
}
îîY Z
=
îî[ \
new
îî] `
List
îîa e
<
îîe f
Slareviewtracking
îîf w
>
îîw x
(
îîx y
)
îîy z
;
îîz {
public
ññ 

virtual
ññ 
ICollection
ññ 
<
ññ 
Slareviewtracking
ññ 0
>
ññ0 1(
SlareviewtrackingReviewers
ññ2 L
{
ññM N
get
ññO R
;
ññR S
set
ññT W
;
ññW X
}
ññY Z
=
ññ[ \
new
ññ] `
List
ñña e
<
ññe f
Slareviewtracking
ññf w
>
ññw x
(
ññx y
)
ññy z
;
ññz {
public
òò 

virtual
òò  
Userauthentication
òò %
?
òò% & 
Userauthentication
òò' 9
{
òò: ;
get
òò< ?
;
òò? @
set
òòA D
;
òòD E
}
òòF G
public
öö 

virtual
öö 
Userprofile
öö 
?
öö 
Userprofile
öö  +
{
öö, -
get
öö. 1
;
öö1 2
set
öö3 6
;
öö6 7
}
öö8 9
}õõ ¥
ïC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Departmentheadapproval.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class "
Departmentheadapproval +
{ 
public 

int 

ApprovalId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 
	ProjectId 
{ 
get 
; 
set  #
;# $
}% &
public 

int 
AssessmentId 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 

ApprovedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 

ApprovedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

bool "
AcknowledgedByEmployee &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

DateTime 
? 
AcknowledgedAt #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

string 
? 
EmployeeComments #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

virtual 
Userauthentication % 
ApprovedByNavigation& :
{; <
get= @
;@ A
setB E
;E F
}G H
=I J
nullK O
!O P
;P Q
public 

virtual 
Selfassessment !

Assessment" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public   

virtual   !
Employeedetailsmaster   (
Employee  ) 1
{  2 3
get  4 7
;  7 8
set  9 <
;  < =
}  > ?
=  @ A
null  B F
!  F G
;  G H
public"" 

virtual"" 
Project"" 
Project"" "
{""# $
get""% (
;""( )
set""* -
;""- .
}""/ 0
=""1 2
null""3 7
!""7 8
;""8 9
}## ú
èC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Departmentbudget.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Departmentbudget %
{ 
public 

int 
BudgetId 
{ 
get 
; 
set "
;" #
}$ %
public

 

int

 
DepartmentId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 

FiscalYear 
{ 
get 
;  
set! $
;$ %
}& '
public 

decimal 
TotalBudget 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

decimal 
? 
AllocatedAmount #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

decimal 
? 
UtilizedAmount "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

decimal 
? !
UtilizationPercentage )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 

int 
? 
	Headcount 
{ 
get 
;  
set! $
;$ %
}& '
public 

decimal 
? 
AvgCostPerEmployee &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
ICollection 
< 
Budgetallocation /
>/ 0
Budgetallocations1 B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V
ListW [
<[ \
Budgetallocation\ l
>l m
(m n
)n o
;o p
public   

virtual   
ICollection   
<   "
Budgetperiodallocation   5
>  5 6#
Budgetperiodallocations  7 N
{  O P
get  Q T
;  T U
set  V Y
;  Y Z
}  [ \
=  ] ^
new  _ b
List  c g
<  g h"
Budgetperiodallocation  h ~
>  ~ 
(	   Ä
)
  Ä Å
;
  Å Ç
public"" 

virtual"" 

Department"" 

Department"" (
{"") *
get""+ .
;"". /
set""0 3
;""3 4
}""5 6
=""7 8
null""9 =
!""= >
;""> ?
}## ê8
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Department.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Department 
{ 
public 

int 
DepartmentId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

string

 
DepartmentName

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
=

/ 0
null

1 5
!

5 6
;

6 7
public 

decimal 
? 
BudgetAllocated #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

string 
? 

CostCenter 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
DepartmentCode  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 
HodEmployeeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 

int 
? 
ParentDepartmentId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
? 
Status 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual 
ICollection 
< 
Budgetallocation /
>/ 0
Budgetallocations1 B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V
ListW [
<[ \
Budgetallocation\ l
>l m
(m n
)n o
;o p
public   

virtual   
ICollection   
<   
Departmentbudget   /
>  / 0
Departmentbudgets  1 B
{  C D
get  E H
;  H I
set  J M
;  M N
}  O P
=  Q R
new  S V
List  W [
<  [ \
Departmentbudget  \ l
>  l m
(  m n
)  n o
;  o p
public"" 

virtual"" 
ICollection"" 
<"" !
Employeedetailsmaster"" 4
>""4 5"
Employeedetailsmasters""6 L
{""M N
get""O R
;""R S
set""T W
;""W X
}""Y Z
=""[ \
new""] `
List""a e
<""e f!
Employeedetailsmaster""f {
>""{ |
(""| }
)""} ~
;""~ 
public$$ 

virtual$$ 
ICollection$$ 
<$$ 

Engagement$$ )
>$$) *
Engagements$$+ 6
{$$7 8
get$$9 <
;$$< =
set$$> A
;$$A B
}$$C D
=$$E F
new$$G J
List$$K O
<$$O P

Engagement$$P Z
>$$Z [
($$[ \
)$$\ ]
;$$] ^
public&& 

virtual&& 
ICollection&& 
<&& 
Internalopportunity&& 2
>&&2 3!
Internalopportunities&&4 I
{&&J K
get&&L O
;&&O P
set&&Q T
;&&T U
}&&V W
=&&X Y
new&&Z ]
List&&^ b
<&&b c
Internalopportunity&&c v
>&&v w
(&&w x
)&&x y
;&&y z
public(( 

virtual(( 
ICollection(( 
<(( %
Organizationwideobjective(( 8
>((8 9&
Organizationwideobjectives((: T
{((U V
get((W Z
;((Z [
set((\ _
;((_ `
}((a b
=((c d
new((e h
List((i m
<((m n&
Organizationwideobjective	((n á
>
((á à
(
((à â
)
((â ä
;
((ä ã
public** 

virtual** 
ICollection** 
<** 
Payroll** &
>**& '
Payrolls**( 0
{**1 2
get**3 6
;**6 7
set**8 ;
;**; <
}**= >
=**? @
new**A D
List**E I
<**I J
Payroll**J Q
>**Q R
(**R S
)**S T
;**T U
public,, 

virtual,, 
ICollection,, 
<,, 
	Promotion,, (
>,,( )

Promotions,,* 4
{,,5 6
get,,7 :
;,,: ;
set,,< ?
;,,? @
},,A B
=,,C D
new,,E H
List,,I M
<,,M N
	Promotion,,N W
>,,W X
(,,X Y
),,Y Z
;,,Z [
public.. 

virtual.. 
ICollection.. 
<.. 
Recognitiondetail.. 0
>..0 1
Recognitiondetails..2 D
{..E F
get..G J
;..J K
set..L O
;..O P
}..Q R
=..S T
new..U X
List..Y ]
<..] ^
Recognitiondetail..^ o
>..o p
(..p q
)..q r
;..r s
public00 

virtual00 
ICollection00 
<00 
Risk00 #
>00# $
Risks00% *
{00+ ,
get00- 0
;000 1
set002 5
;005 6
}007 8
=009 :
new00; >
List00? C
<00C D
Risk00D H
>00H I
(00I J
)00J K
;00K L
public22 

virtual22 
ICollection22 
<22 
Slacompliance22 ,
>22, -
Slacompliances22. <
{22= >
get22? B
;22B C
set22D G
;22G H
}22I J
=22K L
new22M P
List22Q U
<22U V
Slacompliance22V c
>22c d
(22d e
)22e f
;22f g
public44 

virtual44 
ICollection44 
<44 
Sla44 "
>44" #
Slas44$ (
{44) *
get44+ .
;44. /
set440 3
;443 4
}445 6
=447 8
new449 <
List44= A
<44A B
Sla44B E
>44E F
(44F G
)44G H
;44H I
}55 €
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Competency.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Competency 
{ 
public 

int 
CompetencyId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
FormId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

string 
? 
Name 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 
Description 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 
DisplayOrder 
{ 
get "
;" #
set$ '
;' (
}) *
public 

virtual 
ICollection 
< 
Assessmentdetail /
>/ 0
Assessmentdetails1 B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V
ListW [
<[ \
Assessmentdetail\ l
>l m
(m n
)n o
;o p
public 

virtual 
Assessmentform !
Form" &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
} ˜
åC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Changerequest.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Changerequest "
{ 
public 

int 
	RequestId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

string 

ChangeType 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 

string 
?  
NewEmployeeCompanyId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

string 
? 
NewEmail 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
CurrentValue 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
NewValue 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
Reason 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 
? 
RequestedByUserId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

int 
? 
ApprovedByUserId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
AdminRemarks 
{  !
get" %
;% &
set' *
;* +
}, -
public   

DateTime   
RequestedAt   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public"" 

DateTime"" 
?"" 
ProcessedAt""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
public$$ 

string$$ 
?$$ 
CurrentPassword$$ "
{$$# $
get$$% (
;$$( )
set$$* -
;$$- .
}$$/ 0
public&& 

virtual&& 
Employee&& 
Employee&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
=&&3 4
null&&5 9
!&&9 :
;&&: ;
}'' ¯
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Certificatetemplate.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Certificatetemplate (
{ 
public 

int 

TemplateId 
{ 
get 
;  
set! $
;$ %
}& '
public

 

string

 
TemplateName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
null

/ 3
!

3 4
;

4 5
public 

string 
TemplateType 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

string 
TemplateLayout  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

int 
LogoId 
{ 
get 
; 
set  
;  !
}" #
public 

DateTime 
? 
	CreatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

int 
? 

EmployeeId 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
EmployeeName 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 

string 
? 
Achievement 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

bool 
IsFinalized 
{ 
get !
;! "
set# &
;& '
}( )
=* +
false, 1
;1 2
public 

virtual 
ICollection 
< $
Certificatecustomization 7
>7 8%
Certificatecustomizations9 R
{S T
getU X
;X Y
setZ ]
;] ^
}_ `
=a b
newc f
Listg k
<k l%
Certificatecustomization	l Ñ
>
Ñ Ö
(
Ö Ü
)
Ü á
;
á à
public   

virtual   
ICollection   
<   
Employeecertificate   2
>  2 3 
Employeecertificates  4 H
{  I J
get  K N
;  N O
set  P S
;  S T
}  U V
=  W X
new  Y \
List  ] a
<  a b
Employeecertificate  b u
>  u v
(  v w
)  w x
;  x y
public"" 

virtual"" 
Templatelogo"" 
?""  
Logo""! %
{""& '
get""( +
;""+ ,
set""- 0
;""0 1
}""2 3
}## ∏
ñC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Certificatenotification.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class #
Certificatenotification ,
{ 
public 

int 
NotificationId 
{ 
get  #
;# $
set% (
;( )
}* +
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 
CertificateId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
NotificationMessage %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
null6 :
!: ;
;; <
public 

DateTime 
? 
SentAt 
{ 
get !
;! "
set# &
;& '
}( )
public 

bool 
? 
IsRead 
{ 
get 
; 
set "
;" #
}$ %
public 

virtual 
Employeecertificate &
Certificate' 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
nullC G
!G H
;H I
public 

virtual 
Employee 
Employee $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
} Ô
óC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Certificatecustomization.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class $
Certificatecustomization -
{ 
public 

int 
CustomizationId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public

 

int

 

TemplateId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

string 
? 
ColorScheme 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
	FontStyle 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
Elements 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

int 

ModifiedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
? 

ModifiedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

virtual 
Certificatetemplate &
Template' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
null@ D
!D E
;E F
} ˚	
ñC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\CertificateBaseTemplate.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class #
CertificateBaseTemplate ,
{ 
[		 
Key		 
]		 
public

 
int

 

BaseTemplateId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

string 
TemplateName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
CssClass 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
PreviewImage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
} ï
èC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Bulkoperationlog.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Bulkoperationlog %
{ 
public 

int 
LogId 
{ 
get 
; 
set 
;  
}! "
public

 

int

 
PerformedByUserId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 

string 
OperationType 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 

int 
TotalRecords 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
SuccessCount 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
FailureCount 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
ErrorDetails 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
FileName 
{ 
get !
;! "
set# &
;& '
}( )
public 

DateTime 
PerformedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

virtual 
Userauthentication %
PerformedByUser& 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
nullF J
!J K
;K L
} È
ïC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Budgetperiodallocation.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class "
Budgetperiodallocation +
{ 
public 

int 
PeriodAllocationId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public

 

int

 
BudgetId

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
public 

string 
Period 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

int 

PeriodYear 
{ 
get 
;  
set! $
;$ %
}& '
public 

decimal 
AllocatedAmount "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

decimal 
UtilizedAmount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

decimal !
UtilizationPercentage (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

int 
AllocatedByUserId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateTime 
AllocatedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
? 
	UpdatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
Notes 
{ 
get 
; 
set  #
;# $
}% &
public!! 

virtual!! 
Userauthentication!! %
AllocatedByUser!!& 5
{!!6 7
get!!8 ;
;!!; <
set!!= @
;!!@ A
}!!B C
=!!D E
null!!F J
!!!J K
;!!K L
public## 

virtual## 
Departmentbudget## #
Budget##$ *
{##+ ,
get##- 0
;##0 1
set##2 5
;##5 6
}##7 8
=##9 :
null##; ?
!##? @
;##@ A
}$$ …
èC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Budgetallocation.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Budgetallocation %
{ 
public 

int 
AllocationId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
DepartmentId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
? 
EmployeeUserId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
AllocationType  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

decimal 
Amount 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 

GoalStatus 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
Notes 
{ 
get 
; 
set  #
;# $
}% &
public 

int 
AllocatedByUserId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateTime 
AllocatedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? 
BudgetId 
{ 
get 
; 
set  #
;# $
}% &
public 

decimal 
? 
UtilizedAmount "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

decimal 
? !
UtilizationPercentage )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public   

DateTime   
?   
	UpdatedAt   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public%% 

string%% 
?%% 
Period%% 
{%% 
get%% 
;%%  
set%%! $
;%%$ %
}%%& '
public'' 

int'' 
?'' 

PeriodYear'' 
{'' 
get''  
;''  !
set''" %
;''% &
}''' (
public)) 

virtual)) 
Userauthentication)) %
AllocatedByUser))& 5
{))6 7
get))8 ;
;)); <
set))= @
;))@ A
}))B C
=))D E
null))F J
!))J K
;))K L
public++ 

virtual++ 
Departmentbudget++ #
?++# $
Budget++% +
{++, -
get++. 1
;++1 2
set++3 6
;++6 7
}++8 9
public-- 

virtual-- 

Department-- 

Department-- (
{--) *
get--+ .
;--. /
set--0 3
;--3 4
}--5 6
=--7 8
null--9 =
!--= >
;--> ?
public// 

virtual// 
Userauthentication// %
?//% &
EmployeeUser//' 3
{//4 5
get//6 9
;//9 :
set//; >
;//> ?
}//@ A
}00 Í
áC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Auditlog.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Auditlog 
{ 
public 

int 
LogId 
{ 
get 
; 
set 
;  
}! "
public

 

int

 
?

 
UserId

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 

string 
Action 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

string 
? 
Details 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
? 
	IpAddress 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
	Timestamp 
{ 
get  #
;# $
set% (
;( )
}* +
public 

virtual 
Userauthentication %
?% &
User' +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} ¢
âC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Assignment.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 

Assignment 
{ 
public 

int 
AssignmentId 
{ 
get !
;! "
set# &
;& '
}( )
public

 

int

 
FormId

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 

int 

EmployeeId 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 

AssignedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

DateTime 
? 

AssignedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

DateTime 
? 
Deadline 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
Action 
{ 
get 
;  
set! $
;$ %
}& '
public 

virtual 
Userauthentication % 
AssignedByNavigation& :
{; <
get= @
;@ A
setB E
;E F
}G H
=I J
nullK O
!O P
;P Q
public 

virtual 
Userauthentication %
Employee& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
null? C
!C D
;D E
public 

virtual 
Assessmentform !
Form" &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
public 

virtual 
ICollection 
< 
Formprogresstracker 2
>2 3 
Formprogresstrackers4 H
{I J
getK N
;N O
setP S
;S T
}U V
=W X
newY \
List] a
<a b
Formprogresstrackerb u
>u v
(v w
)w x
;x y
} «
èC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Assessmentreview.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Assessmentreview %
{ 
public 

int 
ReviewId 
{ 
get 
; 
set "
;" #
}$ %
public

 

int

 
DetailId

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
public 

int 

ReviewerId 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
ReviewerRole 
{  !
get" %
;% &
set' *
;* +
}, -
public 

int 
? 
Rating 
{ 
get 
; 
set !
;! "
}# $
public 

string 
? 
Comments 
{ 
get !
;! "
set# &
;& '
}( )
public 

DateTime 
? 

ReviewedAt 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
? 
ReviewStatus 
{  !
get" %
;% &
set' *
;* +
}, -
public 

virtual 
Assessmentdetail #
Detail$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
public 

virtual 
Userauthentication %
Reviewer& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
null? C
!C D
;D E
} û
çC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Assessmentform.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Assessmentform #
{ 
public 

int 
FormId 
{ 
get 
; 
set  
;  !
}" #
public

 

string

 
?

 
Name

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
public 

string 
? 
Type 
{ 
get 
; 
set "
;" #
}$ %
public 

int 
? 
	CreatedBy 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
DeliveryEnablement %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

DateTime 
? 
	CreatedAt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

virtual 
ICollection 
< 

Assignment )
>) *
Assignments+ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
newG J
ListK O
<O P

AssignmentP Z
>Z [
([ \
)\ ]
;] ^
public 

virtual 
ICollection 
< 

Competency )
>) *
Competencies+ 7
{8 9
get: =
;= >
set? B
;B C
}D E
=F G
newH K
ListL P
<P Q

CompetencyQ [
>[ \
(\ ]
)] ^
;^ _
public 

virtual 
Userauthentication %
?% &
CreatedByNavigation' :
{; <
get= @
;@ A
setB E
;E F
}G H
public 

virtual 
ICollection 
< 
Selfassessment -
>- .
Selfassessments/ >
{? @
getA D
;D E
setF I
;I J
}K L
=M N
newO R
ListS W
<W X
SelfassessmentX f
>f g
(g h
)h i
;i j
public 

virtual 
ICollection 
< 
Slareviewtracking 0
>0 1
Slareviewtrackings2 D
{E F
getG J
;J K
setL O
;O P
}Q R
=S T
newU X
ListY ]
<] ^
Slareviewtracking^ o
>o p
(p q
)q r
;r s
} ‚
èC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Assessmentdetail.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Assessmentdetail %
{ 
public 

int 
DetailId 
{ 
get 
; 
set "
;" #
}$ %
public

 

int

 
AssessmentId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

int 
CompetencyId 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 
? 
EmployeeRating 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
EmployeeComments #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

virtual 
Selfassessment !

Assessment" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
null= A
!A B
;B C
public 

virtual 
ICollection 
< 
Assessmentreview /
>/ 0
Assessmentreviews1 B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V
ListW [
<[ \
Assessmentreview\ l
>l m
(m n
)n o
;o p
public 

virtual 

Competency 

Competency (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
null9 =
!= >
;> ?
} ≥
ÜC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\Entities\Address.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
Entities  (
;( )
public 
partial 
class 
Address 
{ 
public 

int 
	AddressId 
{ 
get 
; 
set  #
;# $
}% &
public

 

int

 

EmployeeId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

string 
AddressType 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 

string 
? 

DoorNumber 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
? 
Street 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
? 
Landmark 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
Area 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 
City 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 
State 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
? 
Country 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
? 
PinCode 
{ 
get  
;  !
set" %
;% &
}' (
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public   

DateTime   
?   
	UpdatedAt   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public"" 

virtual"" 
Employee"" 
Employee"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
=""3 4
null""5 9
!""9 :
;"": ;
}## …
åC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\SkillDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class 
SkillDto 
{ 
public 
int 
SkillId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	SkillName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
SkillDto 
( 
int 
skillId #
,# $
string% +
	skillName, 5
)5 6
{		 	
SkillId

 
=

 
skillId

 
;

 
	SkillName 
= 
	skillName !
;! "
} 	
} 
} Å
ïC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\RewardResponseDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class 
RewardResponseDto "
{ 
public 
int 
RewardTypeId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
RewardCategory $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 

RewardName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
bool		 
IsActive		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
DateTime

 
	CreatedAt

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
} 
} ö
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\MasterSkillDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class 
MasterSkillDto 
{ 
public 
int 
SkillId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	SkillName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 ∆
ôC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\LogoUploadResponseDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class !
LogoUploadResponseDto &
{ 
public 
int 
LogoId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
LogoName 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
} 
}		 è
ãC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\GoalDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class 
GoalDto 
{ 
public 
int 
GoalId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	GoalTitle 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
GoalDescription %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
}		 ˇ
õC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\GeneratedCertificateDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class #
GeneratedCertificateDto (
{ 
public 
int 
CertificateId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
CertificateFilePath		 )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
=		8 9
$str		: <
;		< =
public 
DateTime 
	IssueDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
byte 
[ 
] 
? 

PdfContent !
{" #
get$ '
;' (
set) ,
;, -
}. /
public #
GeneratedCertificateDto &
(& '
)' (
{) *
}+ ,
public #
GeneratedCertificateDto &
(& '
int 
certificateId 
, 
string 
certificateFilePath &
,& '
DateTime 
	issueDate 
, 
byte 
[ 
] 
? 

pdfContent 
) 
{ 	
CertificateId 
= 
certificateId )
;) *
CertificateFilePath 
=  !
certificateFilePath" 5
;5 6
	IssueDate 
= 
	issueDate !
;! "

PdfContent 
= 

pdfContent #
;# $
} 	
} 
} ù
èC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\EmployeeDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class 
EmployeeDto 
{ 
public 
int 

EmployeeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
EmployeeName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
DepartmentName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
}		 ƒ
ïC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\EmployeeBasicInfo.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class 
EmployeeBasicInfo "
{ 
public 
int 
EmployeeMasterId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 

EmployeeId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 ´
öC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\CertificateTemplateDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class "
CertificateTemplateDto '
{ 
public 
int 

TemplateId 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
TemplateName		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
=		1 2
null		3 7
!		7 8
;		8 9
public 
string 
TemplateType "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 
string 
TemplateLayout $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 
int 
LogoId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
? 

EmployeeId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
EmployeeName "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 
string 
Achievement !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 
bool 
IsFinalized 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ï
†C:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\CertificateTemplateRequestDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class )
CertificateTemplateRequestDto .
{ 
public 
string 
TemplateName "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public		 
string		 
TemplateType		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
=		1 2
null		3 7
!		7 8
;		8 9
public 
string 
TemplateLayout $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
[ 	
Required	 
] 
public 
int 
LogoId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 

EmployeeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
EmployeeName "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 
string 
Achievement !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
$str2 4
;4 5
} 
} √
ìC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Response\BaseTemplateDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Response% -
{ 
public 

class 
BaseTemplateDto  
{ 
public 
int 
BaseTemplateId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
TemplateName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
string		 
CssClass		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public 
string 
PreviewImage "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} †
íC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\SkillRequestDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class 
SkillRequestDto  
{ 
public 
string 
Keyword 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
} 
} €	
ìC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\RewardRequestDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class 
RewardRequestDto !
{ 
public 
string 
RewardCategory $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 

RewardName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
	CreatedBy		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
}

 
} º
óC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\NominationRequestDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class  
NominationRequestDto %
{ 
public 
int 
	ManagerId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

EmployeeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
RewardTypeId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Reason 
{ 
get "
;" #
set$ '
;' (
}) *
}		 
}

 Æ
óC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\LogoUploadRequestDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class  
LogoUploadRequestDto %
{ 
public 
	IFormFile 
LogoFile !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
} 
}		 û
ëC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\GoalRequestDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class 
GoalRequestDto 
{ 
public 
string 
Keyword 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
} 
} ≤
†C:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\GenerateCertificateRequestDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class )
GenerateCertificateRequestDto .
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public		 
int		 

EmployeeId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public 
int 

TemplateId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ô
îC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\EmployeeBasicInfo.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class 
EmployeeBasicInfo "
{ 
public 
int 
EmployeeMasterId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 

EmployeeId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
LastName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
DepartmentName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} È
ôC:\Users\sandhiya.ramesh\Desktop\MVP\MVP_Backend\Relevantz.EEPZ.AutomatedCertificationSystem\Relevantz.EEPZ.Common\DTOs\Request\BaseTemplateRequestDto.cs
	namespace 	
	Relevantz
 
. 
EEPZ 
. 
Common 
.  
DTOs  $
.$ %
Request% ,
{ 
public 

class "
BaseTemplateRequestDto '
{ 
public 
string 
TemplateName "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public		 
string		 
CssClass		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
=		- .
null		/ 3
!		3 4
;		4 5
public 
	IFormFile 
Image 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
} 
} 
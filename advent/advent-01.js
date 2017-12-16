// -----------------------------------------------------------------------------
// Advent of Code 2017

const raw_str  = `93842744946836323593516414113745734662731646873375367697794874
33749179185568461296233353611992672753778126935276769885424719553291616136172298
88315662625415127885258239794969787446217853629534182213737756332281552759226779
12131154186353631748761321962343748876263249313712418412428737834938359192384218
79116421481543826222278152238576762132577763214642569545298668935216911493462229
62978697827354814717138432152595295919637772849363287261829118325688841777949512
48378281872982447861758727132992717662466966312574844533471251762333732322453821
58656142179687576388951175953419286858673221138553912229576523123114871637487978
77585577748392189656833328233313717573974623426274425625414923384351725461398147
63551474879758596859365271617376449291193451272731497623251587845959469314477381
73246311763677997888425452294562823751136515271874725143582623717324394587398371
29852336838659542671414871773534523765724971268589592143346894918223514669817439
39282883139853557697994855117494235529359923916244245752783336254761488883557169
67628454862834463357834291788479677576561681171516128495737923155533438413156639
15512883134989464631754653688631932857351262232578967211517161819554853494118493
92339141664323493219928792873499328191359195189555614566159891372218754835615994
93342981595678961836562435436285673764213941758954489582656271121429555455368545
28941698162496126196395336491837748377632214297593797155227164222493392632666555
77875869276678982559471169882781319743813885142748338525526956797134248365363484
49273149415872522111522749448188993159814183411853994579147867385867619467777654
94316981428792896665255212943982274185651226595566487245495115925561751313614271
74717746982245665436175957427532441423644385897293569394833874663634772242834778
43889679221229344974441624448489853764111425798141258155246636844914711222931548
72264729895374424268255156216646394269471563149789598164317419429482686856157858
68513262626197312726653977113814597452812181965151559178776946631867325996889128
78149242688741584822831861748845817871681621697944472377688658368145698614861456
518138376989688166921187224726942589996534179549171859786241718727295379`

const naturals = str.split('').map(Number)

//
// Problem 1 <Part 1>
//

function advent_1A(list) {
   const max      = list.length
   const circular = (position, vector, mod) => (position + vector) % mod

   return list.reduce(
      (sum, item, i, arr) => item === arr[circular(i, 1, max)] ? sum + item : sum,
      0
   )
}

advent_1A(naturals)

//
// Problem 1 <Part 2>
//

function advent_1B(list) {
   const half     = list.length * 0.5
   const max      = list.length
   const circular = (position, vector, mod) => (position + vector) % mod

   return list.reduce(
      (sum, item, i, arr) => item === arr[circular(i, half, max)] ? sum + item : sum,
      0
   )
}

advent_1B(naturals)

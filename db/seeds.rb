puts "Adding Gk"
u = User.create name: 'Gk', email: 'gk@gk.com', role: :admin, password: '1234'


puts "Add some Metrics"
ht = Metric.create title: 'Height', aliases: ['ht'], unit: 'in'
wt = Metric.create title: 'Weight', aliases: ['wt', 'lbs'], unit: 'lb'
wst = Metric.create title: 'Waist', aliases: ['wst'], unit: 'in'
rhr = Metric.create title: 'Resting Heart Rate', aliases: ['pulse', 'heart-rate', 'rhr'], unit: 'bpm'
systolic = Metric.create title: 'Systolic Blood Pressure', aliases: ['sbp', 'systolic'], unit: 'mm Hg'
diastolic = Metric.create title: 'Diastolic Blood Pressure', aliases: ['dbp', 'diastolic'], unit: 'mm Hg'
pbf = Metric.create title: 'Percent Body Fat', aliases: ['pbf', 'bodyfat'], unit: '%'
bmi = Metric.create title: 'Body Mass Index', aliases: ['bmi'], unit: 'bmi'
bmi = Metric.create title: 'Sleep', aliases: ['slp'], unit: 'hours'
bmi = Metric.create title: 'Workout', aliases: ['wkout']



am = Equipment.create title: 'Ab Mat', aliases: ['ab']
rope = Equipment.create title: 'Climbing Rope', aliases: ['rope']
pub = Equipment.create title: 'Pullup Bar', aliases: ['bar']
box = Equipment.create title: "Plyo Box", unit_type: 'inch', aliases: ['box']
# box_24 = Equipment.create title: "24 Inch Plyo Box", unit_type: 'inch', unit: 24, parent_id: box.id
# box_30 = Equipment.create title: "30 Inch Plyo Box", unit_type: 'inch', unit: 30, parent_id: box.id
rings = Equipment.create title: 'Rings', aliases: ['rng']
jr = Equipment.create title: 'Jump Rope', aliases: ['jr']
rower = Equipment.create title: 'Rower', aliases: ['row', 'c2']
ghd = Equipment.create title: 'Glute Ham Developer', aliases: ['ghd']
band = Equipment.create title: 'Resistance Band', aliases: ['band']
vest = Equipment.create title: 'Weighted Vest', aliases: ['vest']

kb = Equipment.create title: 'Kettle Bell', aliases: ['kb']
# kb_53 = Equipment.create title: '35lb Kettle Bell', unit_type: 'lb', unit: 35, parent_id: kb.id
# kb_53 = Equipment.create title: '53lb Kettle Bell', unit_type: 'lb', unit: 53, parent_id: kb.id
# kb_53 = Equipment.create title: '70lb Kettle Bell', unit_type: 'lb', unit: 70, parent_id: kb.id

bb = Equipment.create title: 'Bar Bell', unit_type: 'lb', unit: 45, aliases: ['bb']

db = Equipment.create title: 'Dumb Bell', aliases: ['db']
# db_25 = Equipment.create title: '25lb Dumb Bell', unit_type: 'lb', unit: 25, aliases: 'db', parent_id: db.id
# db_30 = Equipment.create title: '30lb Dumb Bell', unit_type: 'lb', unit: 30, aliases: 'db', parent_id: db.id
# db_40 = Equipment.create title: '40lb Dumb Bell', unit_type: 'lb', unit: 40, aliases: 'db', parent_id: db.id
# db_50 = Equipment.create title: '50lb Dumb Bell', unit_type: 'lb', unit: 50, aliases: 'db', parent_id: db.id

mb = Equipment.create title: 'Medicine Ball', aliases: ['mb']
sb = Equipment.create title: 'Slam Ball', aliases: ['sb']
paras = Equipment.create title: 'Parallettes', aliases: ['para']
tire = Equipment.create title: 'Tire', aliases: ['tire']


# movement_type:
# 	- mobility
# 	- warmup 
# 	- body-weight
# 	- hold 
# 	- lifting

run = Movement.create title: 'Run', measured_by: :distance, 	aliases: [ 'run', 'rn', 'running' ]
backrun = Movement.create title: 'Backwards Run', measured_by: :distance, 	aliases: [ 'brun', 'brn' ]
sdrun = Movement.create title: 'Sideways Run', measured_by: :distance, 	aliases: [ 'siderun', 'sdrn' ]
krkrun = Movement.create title: 'Karaoke Run', measured_by: :distance, 	aliases: [ 'karaoke', 'krkrun' ]
sprint = Movement.create title: 'Sprint', measured_by: :distance, aliases: [ 'sp', 'spr', 'sprint', 'spnt' ]
carry = Movement.create title: 'Carry', measured_by: :distance, aliases: [ 'cry' ], description: 'Aside from Farmer Carry and Buddy Carry, a generic carry task. May have to carry medicine balls, sandbags, plates, who knows.'
row = Movement.create title: 'Row', measured_by: :distance, equipment_id: rower.id, aliases: [ 'rowing', 'rower', 'rw' ]
pushup = Movement.create title: 'Pushup', aliases: [ 'psu', 'push', 'pushup', 'pup' ]
pushup = Movement.create title: 'Decline Pushup', aliases: [ 'dpsu', 'dpush', 'dpushup', 'dpup' ]
pushup = Movement.create title: 'Hand Release Pushup', aliases: [ 'hrpu', 'hrpush', 'hrpup' ]
pushup = Movement.create title: 'Diamond Pushup', aliases: [ 'dpu', 'dpush', 'dpup' ]
pullup = Movement.create title: 'Pullup', equipment_id: pub.id, aliases: [ 'pu', 'pull', 'pull up' ]
jumping_pullup = Movement.create title: 'Jumping Pullup', equipment_id: pub.id, aliases: [ 'jpu', 'jump pu', 'jumping pu', 'jump pull', 'jmpu' ]
l_pullup = Movement.create title: 'L-Pullup', equipment_id: pub.id, aliases: [ 'lpu', 'lpull', 'lpullup' ]
chin = Movement.create title: 'Chinup', equipment_id: pub.id, aliases: [ 'chin', 'chn', 'chinup' ]
ctb = Movement.create title: 'Chest to Bar Pullup', equipment_id: pub.id, aliases: [ 'ctb', 'c2b', 'chest to bar' ]
ttb = Movement.create title: 'Toe to Bar', equipment_id: pub.id, aliases: [ 'ttb', 't2b', 'toe2bar' ]
kte = Movement.create title: 'Knee to Elbow', equipment_id: pub.id, aliases: [ 'kte', 'k2e' ]
rope = Movement.create title: 'Rope Climb', equipment_id: rope.id, aliases: [ 'rp', 'rpc', 'rope' ]
ll_rope = Movement.create title: 'Legless Rope Climb', equipment_id: rope.id, aliases: [ 'llrc', 'llrpc' ]
abmat = Movement.create title: 'Abmat Situp', equipment_id: am.id, aliases: [ 'absu', 'abmat', 'abmatsu' ]
ghd_situp = Movement.create title: 'GHD Situp', equipment_id: ghd.id, aliases: [ 'ghd', 'ghdsu' ]
hspu = Movement.create title: 'Handstand Pushup', aliases: [ 'hspu' ]
hh = Movement.create title: 'Handstand Hold', measured_by: :time, aliases: [ 'hh', 'handhold', 'hsh' ]
hsw = Movement.create title: 'Handstand Walk', measured_by: :distance, aliases: [ 'hsw', 'hw' ]
du = Movement.create title: 'Double Under', equipment_id: jr.id, aliases: [ 'du', 'dus', 'double-under' ]
su = Movement.create title: 'Single Under', equipment_id: jr.id, parent_id: du, aliases: [ 'su', 'sus', 'single-under' ]
boxjump = Movement.create title: 'Box Jump', equipment_id: box.id, aliases: [ 'bj', 'box', 'boxjump', 'bxj' ]
boxjump = Movement.create title: 'Box Step Up', equipment_id: box.id, aliases: [ 'bxsu', 'stepup', 'boxstep' ]
boxjump = Movement.create title: 'Box Jumpover', equipment_id: box.id, aliases: [ 'bjo', 'boxo', 'boxjpo' ]
plank = Movement.create title: 'Plank Hold', measured_by: :time, aliases: [ 'plk', 'plank' ]
airsquat = Movement.create title: 'Air Squat', aliases: [ 'squat', 'asq', 'sq' ]
airsquat = Movement.create title: 'Jumping Squat', aliases: [ 'jsq', 'jump squat' ]
burpee = Movement.create title: 'Burpee', aliases: [ 'brp', 'burp' ]
otbb = Movement.create title: 'Over the Bar Burpee', equipment_id: bb.id, aliases: [ 'otbb', 'overbarburpee' ]
bfb = Movement.create title: 'Bar Facing Burpee', equipment_id: bb.id, aliases: [ 'bfb' ]
otbb = Movement.create title: 'Burpee Pullup', equipment_id: pub.id, aliases: [ 'brppull', 'brpull', 'brppu', 'brpu' ]
kbs = Movement.create title: 'Kettlebell Swing', equipment_id: kb.id, aliases: [ 'kbs', 'kb swing' ]
lunge = Movement.create title: 'Lunge', aliases: [ 'lng' ]
rev_lunge = Movement.create title: 'Reverse Lunge', aliases: [ 'revlng' ]
waking_lunge = Movement.create title: 'Walking Lunge', aliases: [ 'wlng' ]
waking_lunge = Movement.create title: 'Overhead Walking Lunge', aliases: [ 'ohwlng' ]
waking_lunge = Movement.create title: 'Jumping Lunge', aliases: [ 'jlng' ]
hr = Movement.create title: 'Hollow Rock', aliases: [ 'hr', 'rock', 'hollowrock' ]
superman = Movement.create title: 'Superman', aliases: [ 'sup' ]
mc = Movement.create title: 'Mountain Climber', aliases: [ 'mc', 'mtclimber' ]
rd = Movement.create title: 'Ring Dip', equipment_id: rings.id, aliases: [ 'rdip', 'rd', 'dip' ]
rd = Movement.create title: 'Bench Dip', aliases: [ 'bdip', 'bd', 'bnchdip' ]
fc = Movement.create title: 'Farmer Carry', aliases: [ 'fc', 'farmer' ]
wb = Movement.create title: 'Wall Ball', equipment_id: mb.id, aliases: [ 'wb', 'wallball', 'wallballshot' ]
sb = Movement.create title: 'Slam Ball', equipment_id: sb.id, aliases: [ 'sb', 'ballslam' ]
vu = Movement.create title: 'V Up', aliases: [ 'vu' ]
vu = Movement.create title: 'Bear Crawl', aliases: [ 'bc', 'brcwl' ]
vu = Movement.create title: 'Inch Worm', aliases: [ 'iwrm', 'inwrm' ]
vu = Movement.create title: 'Broad Jump', aliases: [ 'bjmp', 'bdjp' ]
vu = Movement.create title: 'Burpee Broad Jump', aliases: [ 'bpbdjp' ]
vu = Movement.create title: 'Burpee Box Jump', aliases: [ 'bpbxjp' ]
vu = Movement.create title: 'Jumping Jack', aliases: [ 'jj', 'jacks' ]
vu = Movement.create title: 'Skater', aliases: [ 'skt', 'sk8', 'sktr' ]
vu = Movement.create title: 'High Knee', aliases: [ 'hknee' ]
vu = Movement.create title: 'Butt Kicker', aliases: [ 'bkick' ]
vu = Movement.create title: 'Duck Walk', aliases: [ 'dwlk' ]
vu = Movement.create title: 'L Sit', aliases: [ 'ls', 'lst' ], equipment_id: paras.id
vu = Movement.create title: 'Wall Sit', aliases: [ 'wls', 'wlst' ]
vu = Movement.create title: 'Calf Raise', aliases: [ 'crs', 'cr' ]
vu = Movement.create title: 'Single Leg Calf Raise', aliases: [ 'scrs', 'scr', 'slcr' ]
vu = Movement.create title: 'Bicycle Situp', aliases: [ 'bsu', 'bicycle' ]
vu = Movement.create title: 'Russian Twist', aliases: [ 'rtw' ]
vu = Movement.create title: 'Tuck Jump', aliases: [ 'tjmp' ]
vu = Movement.create title: 'Wall Walk', aliases: [ 'ww' ]
vu = Movement.create title: 'Atomic Situp', aliases: [ 'asu' ]
vu = Movement.create title: 'Ski Hop', aliases: [ 'ski', 'skih', 'skijump' ]
vu = Movement.create title: 'Buddy Carry', aliases: [ 'budc', 'bdycr' ]
vu = Movement.create title: 'Reverse Plank', measured_by: :time, aliases: [ 'rplk', 'rplank', 'revplk' ]
vu = Movement.create title: 'Tire Flip', equipment_id: tire.id, aliases: [ 'tflp', 'tflip' ]
vu = Movement.create title: 'Rope Pulse', aliases: [ 'rpls' ], equipment_id: rope.id
vu = Movement.create title: 'Back Extension', aliases: [ 'be', 'bex' ], equipment_id: ghd.id


bs = Movement.create title: 'Back Squat', equipment_id: bb.id, aliases: [ 'bs', 'bsq', 'backsq' ]
fs = Movement.create title: 'Front Squat', equipment_id: bb.id, aliases: [ 'fs', 'fsq', 'frontsq' ]
m = Movement.create title: 'Pistol Squat', aliases: [ 'pst', 'pstl', 'psq' ]
m = Movement.create title: 'Monkey Squat', aliases: [ 'mnkysq', 'monkeysq' ]
ohs = Movement.create title: 'Overhead Squat', equipment_id: bb.id, aliases: [ 'ohs', 'ohsq', 'osq' ]
m = Movement.create title: 'Overhead Lunge', equipment_id: bb.id, aliases: [ 'olng', 'ohlng', 'ohl' ]
m = Movement.create title: 'Front-Rack Lunge', equipment_id: bb.id, aliases: [ 'frlng', 'frl', 'flng' ]
sn = Movement.create title: 'Snatch', equipment_id: bb.id, aliases: [ 'sn', 'sntch', 'snch' ]
ps = Movement.create title: 'Power Snatch', parent_id: sn.id, equipment_id: bb.id, aliases: [ 'psn', 'psntch', 'psnch', 'pwrsn' ]
hps = Movement.create title: 'Hang Power Snatch', parent_id: sn.id, equipment_id: bb.id, aliases: [ 'hpsn', 'hpsntch', 'hngpsn', 'hngpwrsn' ]
gto = Movement.create title: 'Ground to Overhead', equipment_id: bb.id, aliases: [ 'gto', 'g2o', 'gndtoh' ]
dl = Movement.create title: 'Deadlift', equipment_id: bb.id, aliases: [ 'dl', 'dlft', 'ddl' ]
thruster = Movement.create title: 'Thruster', equipment_id: bb.id, aliases: [ 'thr', 'thrst', 'thrstr' ]
db_thruster = Movement.create title: 'Dumbell Thruster', parent_id: thruster.id, equipment_id: db.id, aliases: [ 'dbthr', 'dbthrst', 'dbthrstr' ]
db_thruster = Movement.create title: 'Man Maker', equipment_id: db.id, aliases: [ 'mm', 'mmkr', 'manmkr' ]
clu = Movement.create title: 'Cluster', equipment_id: bb.id, description: 'Squat Clean Thruster', aliases: [ 'clst', 'clstr', 'sqclnthr' ]
cln = Movement.create title: 'Clean', equipment_id: bb.id, aliases: [ 'cl', 'cln' ]
cln = Movement.create title: 'Medicine Ball Clean', equipment_id: mb.id, aliases: [ 'mbcl', 'mbcln' ]
pc = Movement.create title: 'Power Clean', parent_id: cln.id, equipment_id: bb.id, aliases: [ 'pc', 'pwrcl', 'pcl', 'pcln', 'pwrcln' ]
hpc = Movement.create title: 'Hang Power Clean', parent_id: cln.id, equipment_id: bb.id, aliases: [ 'hpc', 'hpcl', 'hpcln' ]
hpc = Movement.create title: 'Hang Squat Clean', parent_id: cln.id, equipment_id: bb.id, aliases: [ 'hsc', 'hsqcl', 'hscln' ]
sqc = Movement.create title: 'Squat Clean', parent_id: cln.id, equipment_id: bb.id, aliases: [ 'sqc', 'sqcl', 'sqcln' ]
cj = Movement.create title: 'Clean & Jerk', equipment_id: bb.id, aliases: [ 'cj', 'c&j', 'clnjrk', 'cln&jrk' ]
bp = Movement.create title: 'Bench Press', aliases: [ 'bp', 'bench', 'bpress' ], equipment_id: bb.id
press = Movement.create title: 'Press', equipment_id: bb.id, aliases: [ 'ps' ]
s2o = Movement.create title: 'Shoulder to Overhead', equipment_id: bb.id, aliases: [ 's2o', 'sto' ]
m = Movement.create title: 'Good Morning', equipment_id: bb.id, aliases: [ 'gm' ]
m = Movement.create title: 'Single Led Deadlift', equipment_id: kb.id, aliases: [ 'sldl' ]
m = Movement.create title: 'Sumo Deadlift', equipment_id: bb.id, aliases: [ 'sumodl' ]
m = Movement.create title: 'Romainian Deadlift', equipment_id: bb.id, aliases: [ 'rdl', 'rmdl' ]
m = Movement.create title: 'Bulgarian Split Squat', equipment_id: bb.id, aliases: [ 'bspsq', 'bssq' ]
m = Movement.create title: 'Military Press', equipment_id: bb.id, aliases: [ 'mp', 'milps' ]
pp = Movement.create title: 'Push Press', equipment_id: bb.id, aliases: [ 'pp', 'pshps' ]
pj = Movement.create title: 'Push Jerk', equipment_id: bb.id, aliases: [ 'pj', 'pshjrk' ]
pj = Movement.create title: 'Split Jerk', equipment_id: bb.id, aliases: [ 'sj', 'sjrk', 'spjk' ]
sdhp = Movement.create title: 'Sumo Deadlift High Pull', equipment_id: bb.id, aliases: [ 'sdhp', 'sumo' ]
sdhp = Movement.create title: 'Windshield Wiper', equipment_id: bb.id, aliases: [ 'wiper', 'wsw' ]
sdhp = Movement.create title: 'Barbell Rollout', equipment_id: bb.id, aliases: [ 'ro', 'bbro' ]
tgu = Movement.create title: 'Turkish Get Up', equipment_id: kb.id, aliases: [ 'tgu' ]
mu = Movement.create title: 'Muscle Up', equipment_id: rings.id, aliases: [ 'mu' ]
rr = Movement.create title: 'Ring Row', equipment_id: rings.id, aliases: [ 'rr', 'rngrow' ]
ring_push = Movement.create title: 'Ring Pushup', equipment_id: rings.id, aliases: [ 'rp', 'rpsu', 'rpup' ]
ring_push = Movement.create title: 'Ring Handstand Pushup', equipment_id: rings.id, aliases: [ 'rhsp', 'rhspsu', 'rhspup' ]
bmu = Movement.create title: 'Bar Muscle Up', equipment_id: pub.id, aliases: [ 'bmu' ]
uprow = Movement.create title: 'Upright Row', equipment_id: bb.id, aliases: [ 'uprow', 'urow' ]
uprow = Movement.create title: 'Curl', equipment_id: db.id, aliases: [ 'bicep', 'bcurl', 'crl' ]


# max_squat = Workout.create title: 'Max Squat', workout_type: :max, total_duration: 15*60
# max_squat.workout_segments.create content: "15 mins to find 2rm Back Squat", duration: 15*60, to_record: :weight, seq: 1
# max_squat.workout_movements.create movement: bs, m_rx: '2 Rep Max', equipment_id: bb.id

cindy = Workout.create title: 'Cindy', cover_img: "http://cooeecrossfit.com.au/wp-content/uploads/2013/05/WOD_Cindy.jpg"
cindy.workout_segments.create content: "5 pullups\r\n10 push ups\r\n15 air squats", segment_type: :amrap, duration: 20*60
# cindy.workout_movements.create movement: pullup
# cindy.workout_movements.create movement: pushup
# cindy.workout_movements.create movement: airsquat

murph = Workout.create title: 'Murph (Straight)', cover_img: 'http://crossfitlakeland.com/wp-content/uploads/2014/05/murph-wod4-630x630.jpg'
murph.workout_segments.create content: "run 1 mile", segment_type: :ft, seq: 1
murph.workout_segments.create content: "100 pullups", segment_type: :ft, seq: 2
murph.workout_segments.create content: "200 pushups", segment_type: :ft, seq: 3
murph.workout_segments.create content: "300 air squats", segment_type: :ft, seq: 4
murph.workout_segments.create content: "run 1 mile", segment_type: :ft, seq: 5
# murph.workout_movements.create movement: run, m_rx: '20lb vest', equipment_id: vest.id
# murph.workout_movements.create movement: pullup, m_rx: '20lb vest', equipment_id: vest.id
# murph.workout_movements.create movement: pushup, m_rx: '20lb vest', equipment_id: vest.id
# murph.workout_movements.create movement: airsquat, m_rx: '20lb vest', equipment_id: vest.id

murph = Workout.create title: 'Murph (Partitioned)', cover_img: 'http://crossfitlakeland.com/wp-content/uploads/2014/05/murph-wod4-630x630.jpg'
murph.workout_segments.create content: "run 1 mile", segment_type: :ft, seq: 1
murph.workout_segments.create content: "5 pullups\r\n10 push ups\r\n15 air squats", segment_type: :rft, seq: 2, repeat_count: 5 # 20
murph.workout_segments.create content: "run 1 mile", segment_type: :ft, seq: 3

fran = Workout.create title: 'Fran', cover_img: "https://cdn2.omidoo.com/sites/default/files/imagecache/full_width/images/bydate/201503/crossfitempirical142.jpg"
fran.workout_segments.create content: "21 15 9\r\nThrusters @ 95/65\r\nPullups", segment_type: :ft
# fran.workout_movements.create movement: thruster, m_rx: '95 lbs'
# fran.workout_movements.create movement: pullup

glen = Workout.create title: 'Glen', cover_img: "http://www.crossfitnyc.com/wp-content/uploads/2013/12/glenincountry.jpg"
glen.workout_segments.create content: "30 GTO @135lbs/95lbs", segment_type: 'ft', seq: 1
glen.workout_segments.create content: "Run 1 mile", segment_type: 'ft', seq: 2
glen.workout_segments.create content: "10 Rope Climbs", segment_type: 'ft', seq: 3
glen.workout_segments.create content: "Run 1 mile", segment_type: 'ft', seq: 4
glen.workout_segments.create content: "100 Burpees", segment_type: 'ft', seq: 5


helen = Workout.create title: 'Helen', cover_img: "https://d1s2fu91rxnpt4.cloudfront.net/legacy/Helen1.jpg"
helen.workout_segments.create content: "Run 400m\r\n21 kettlbell swings\r\n12 pullups", segment_type: :rft, repeat_count: 3
# helen.workout_movements.create movement: run, m_rx: '400 meters'
# helen.workout_movements.create movement: kbs, m_rx: '53 lbs'
# helen.workout_movements.create movement: pullup

accumulate = Workout.create title: 'Test Accumulate'
accumulate.workout_segments.create content: "Plank Hold; accumulate 1 minute", segment_type: :accumulate, duration: 60


emom = Workout.create title: 'Test EMOM'
emom.workout_segments.create content: "1 high hang squat clean\r\n1 squat clean from above knee\r\n1 squat clean @ 2/3 body-weight", segment_type: :emom, repeat_count: 5, repeat_interval: 10

emom = Workout.create title: 'Test Tabata'
emom.workout_segments.create content: "DB bent rows", segment_type: :tabata, repeat_count: 8, repeat_interval: 30

t1 = Workout.create title: 'Test Script AMRAP'
t1.workout_segments.create content: "Do Something", segment_type: :amrap, duration: 10, seq: 1
t1.workout_segments.create content: "Rest", segment_type: :rest, duration: 10, seq: 2
t1.workout_segments.create content: "Do Something Else", segment_type: :amrap, duration: 10, seq: 3


t2 = Workout.create title: 'Test Script FT'
t2.workout_segments.create content: "Run around the block", segment_type: :ft, seq: 1
t2.workout_segments.create content: "Rest", segment_type: :rest, duration: 10, seq: 2
t2.workout_segments.create content: "40 Pushups", segment_type: :ft, seq: 3
t2.workout_segments.create content: "Rest", segment_type: :rest, duration: 10, seq: 4
t2.workout_segments.create content: "40 Squats", segment_type: :ft, seq: 5


t3 = Workout.create title: 'Test Script RFT Buy In'
t3.workout_segments.create content: "100 Pullup Buy in", segment_type: :ft, seq: 1
t3.workout_segments.create content: "Rest", segment_type: :rest, duration: 10, seq: 2
t3.workout_segments.create content: "3 Rounds: \r\n 30 Squats\r\n30pushups\r\n30 DUs", segment_type: :rft, repeat_count: 3, seq: 3


dt = Workout.create title: 'DT', cover_img: "http://www.snoridgecrossfit.com/typepad/6a0115705a348d970b01a3fceab052970b.jpg"
dt.workout_segments.create content: "12 Deadlifts\r\n9 Hang Power Cleans\r\n6 Push Jerks", segment_type: :rft, repeat_count: 5
dt.workout_movements.create movement: dl, m_rx: '155 lbs'
dt.workout_movements.create movement: hpc, m_rx: '155 lbs'
dt.workout_movements.create movement: pj, m_rx: '155 lbs'



# # aug23 = Workout.create title: '1384', 
# # aug23.workout_segments.create content: "2 4 6 8 10 12... \r\nGTO @135/95\r\nT2B", duration: 600, to_record: :reps, segment_type: :amrap
# # aug23.workout_movements.create movement: gto, m_rx: '135 lbs'
# # aug23.workout_movements.create movement: ttb

# aug25 = Workout.create title: '825'
# aug25.workout_segments.create content: "Round 1: \r\nRow 500m \r\n 40 pushups \r\n 20 T2B", segment_type: 'ft', seq: 1
# aug25.workout_segments.create content: "Rest", duration: 4*60, segment_type: :rest, seq: 2
# aug25.workout_segments.create content: "Round 2: \r\nRow 500m\r\n40 pushups\r\n20 T2B", segment_type: 'ft', seq: 3
# aug25.workout_movements.create movement: row, m_rx: '500 meters'
# aug25.workout_movements.create movement: pushup
# aug25.workout_movements.create movement: ttb






# daniel = Workout.create title: 'Daniel'
# daniel.workout_segments.create content: "50 Pullups", segment_type: :ft
# daniel.workout_segments.create content: "400m Run", segment_type: :ft
# daniel.workout_segments.create content: "21 Thrusters", segment_type: :ft
# daniel.workout_segments.create content: "800m Run", segment_type: :ft
# daniel.workout_segments.create content: "21 Thrusters", segment_type: :ft
# daniel.workout_segments.create content: "400m Run", segment_type: :ft
# daniel.workout_segments.create content: "50 Pullups", segment_type: :ft
# daniel.workout_movements.create movement: run
# daniel.workout_movements.create movement: thruster, m_rx: '95 lbs'
# daniel.workout_movements.create movement: pullup

# badger = Workout.create title: 'Badger'
# badger.workout_segments.create content: "30 Squat Cleans\r\n30 Pullups\r\n800m Run", segment_type: :rft, repeat_count: 3
# badger.workout_movements.create movement: run, m_rx: '800 meters'
# badger.workout_movements.create movement: sqc, m_rx: '95 lbs'
# badger.workout_movements.create movement: pullup



# danny = Workout.create title: 'Danny', workout_type: :amrap
# danny.workout_segments.create content: "30 Box Jumps\r\n20 Push Press\r\n30 Pull Ups", to_record: :reps, duration: 20*60
# danny.workout_movements.create movement: boxjump, m_rx: "24 \""
# danny.workout_movements.create movement: pp, m_rx: '115 lbs'
# danny.workout_movements.create movement: pullup

# glen = Workout.create title: 'Glen', workout_type: 'ft', cover_img: "http://www.crossfitnyc.com/wp-content/uploads/2013/12/glenincountry.jpg"
# glen.workout_segments.create content: "30 GTO @135lbs/95lbs", seq: 1
# glen.workout_segments.create content: "Run 1 mile", seq: 2
# glen.workout_segments.create content: "10 Rope Climbs", seq: 3
# glen.workout_segments.create content: "Run 1 mile", seq: 4
# glen.workout_segments.create content: "100 Burpees", seq: 5


# hansen = Workout.create title: 'Hansen', workout_type: :rft, cover_img: "http://crossfit310.com/wp-content/uploads/2016/09/HeroDanielHansen.jpg"
# hansen.workout_segments.create content: "30 Kettbell Swings\r\n30 Burpees\r\n30 GHD Situps", to_record: :time, repeat_count: 5
# hansen.workout_movements.create movement: kbs, m_rx: '53 lbs'
# hansen.workout_movements.create movement: burpee
# hansen.workout_movements.create movement: ghd_situp

# tyler = Workout.create title: 'Tyler', workout_type: :rft, cover_img: "http://superhumancoach.com/wp-content/uploads/2013/06/Sumo-deadlift-high-pull.jpg"
# tyler.workout_segments.create content: "7 Muscle Ups\r\n 21 Sumo Deadlift Hi-Pull @95lbs", to_record: :time, repeat_count: 5

# migr = Workout.create title: 'Migraine'
# migr.workout_segments.create content: "1000m row\r\n100 Double Unders", to_record: :time, seq: 1
# migr.workout_segments.create content: "900m row\r\n90 Double Unders", to_record: :time, seq: 2
# migr.workout_segments.create content: "800m row\r\n80 Double Unders", to_record: :time, seq: 3
# migr.workout_segments.create content: "700m row\r\n70 Double Unders", to_record: :time, seq: 4
# migr.workout_segments.create content: "600m row\r\n60 Double Unders", to_record: :time, seq: 5
# migr.workout_segments.create content: "500m row\r\n50 Double Unders", to_record: :time, seq: 6
# migr.workout_segments.create content: "400m row\r\n40 Double Unders", to_record: :time, seq: 7
# migr.workout_segments.create content: "300m row\r\n30 Double Unders", to_record: :time, seq: 8
# migr.workout_segments.create content: "200m row\r\n20 Double Unders", to_record: :time, seq: 9
# migr.workout_segments.create content: "100m row\r\n10 Double Unders", to_record: :time, seq: 10

# belcher = Workout.create title: 'Belcher', workout_type: :ft
# belcher.workout_segments.create content: "100 Burpees", to_record: :time, seq: 1

# seven_up = Workout.create title: 'Seven-Up', workout_type: :rft
# seven_up.workout_segments.create content: "7 Air Squats\r\n7 Burpees\r\n7 situps", to_record: :time, repeat_count: 7


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Politician.destroy_all
Issue.destroy_all
Stance.destroy_all

#sens
besa = Politician.create({:first_name=>"Bernard", :last_name=>"Sanders", :party=>"ID", :chamber=>"house", :state=>"VT", :img_url=> "https://www.congress.gov/img/member/s000033_200.jpg"})

cobo = Politician.create({:first_name=>"Cory", :last_name=>"Booker", :party=>"D", :chamber=>"senate", :state=>"NJ", :img_url => "https://www.congress.gov/img/member/b001288_200.jpg"})

micr = Politician.create({:first_name=>"Michael", :last_name=>"Crapo", :party=>"R", :chamber=>"senate", :state=>"ID", :img_url => "https://www.congress.gov/img/member/115_sr_id_crapo_mike_200.jpg"})

tecr = Politician.create({:first_name=>"Ted", :last_name=>"Cruz", :party=>"R", :chamber=>"senate", :state=>"TX", :img_url => "https://www.congress.gov/img/member/c001098_200.jpg"})

kigi = Politician.create({:first_name=>"Kirsten", :last_name=>"Gillibrand", :party=>"D", :chamber=>"senate", :state=>"NY", :img_url => "https://www.congress.gov/img/member/g000555_200.jpg"})

ligr = Politician.create({:first_name=>"Lindsey", :last_name=>"Graham", :party=>"R", :chamber=>"senate", :state=>"SC", :img_url => "https://www.congress.gov/img/member/g000359_200.jpg"})

kaha = Politician.create({:first_name=>"Kamala", :last_name=>"Harris", :party=>"D", :chamber=>"senate", :state=>"CA", :img_url => "https://www.congress.gov/img/member/h001075_200.jpg"})

mimc = Politician.create({:first_name=>"Mitch", :last_name=>"McConnell", :party=>"R", :chamber=>"senate", :state=>"KY", :img_url => "https://www.congress.gov/img/member/m000355_200.jpg"})

miro = Politician.create({:first_name=>"Mitt", :last_name=>"Romney", :party=>"R", :chamber=>"senate", :state=>"UT", :img_url => "https://www.congress.gov/img/member/r000615_200.jpg"})

elwa = Politician.create({:first_name=>"Elizabeth", :last_name=>"Warren", :party=>"D", :chamber=>"senate", :state=>"MA", :img_url => "https://www.congress.gov/img/member/w000817_200.jpg"})

#reps
joca = Politician.create({:first_name=>"Joaquín", :last_name=>"Castro", :party=>"D", :chamber=>"house", :state=>"TX", :img_url => "https://www.congress.gov/img/member/114_rp_tx_20_castro_joaquin_200.jpg"})

lich = Politician.create({:first_name=>"Liz", :last_name=>"Cheney", :party=>"R", :chamber=>"house", :state=>"WY", :img_url => "https://www.congress.gov/img/member/115_RP_WY_0_Cheney_Liz.jpg"})

tuga = Politician.create({:first_name=>"Tulsi", :last_name=>"Gabbard", :party=>"D", :chamber=>"house", :state=>"HI", :img_url => "https://www.congress.gov/img/member/114_rp_hi_2_gabbard_tulsi_200.jpg"})

balo = Politician.create({:first_name=>"Barry", :last_name=>"Loudermilk", :party=>"R", :chamber=>"house", :state=>"GA", :img_url => "https://www.congress.gov/img/member/114_rp_ga_11_loudermilk_barry_200.jpg"})

kemc = Politician.create({:first_name=>"Kevin", :last_name=>"McCarthy", :party=>"R", :chamber=>"house", :state=>"CA", :img_url => "https://www.congress.gov/img/member/114_rp_ca_23_mccarthy_kevin_200.jpg"})

aloc = Politician.create({:first_name=>"Alexandria", :last_name=>"Ocasio-Cortez", :party=>"D", :chamber=>"house", :state=>"NY", :img_url => "https://www.congress.gov/img/member/o000172_200.jpg"})

ilom = Politician.create({:first_name=>"Ilhan", :last_name=>"Omar", :party=>"D", :chamber=>"house", :state=>"MN", :img_url => "https://www.congress.gov/img/member/o000173_200.jpg"})

stsc = Politician.create({:first_name=>"Steve", :last_name=>"Scalise", :party=>"R", :chamber=>"house", :state=>"LA", :img_url => "https://www.congress.gov/img/member/114_rp_la_1_scalise_steve_200.jpg"})

llsm = Politician.create({:first_name=>"Lloyd", :last_name=>"Smucker", :party=>"R", :chamber=>"house", :state=>"PA", :img_url => "https://www.congress.gov/img/member/115_rp_pa_16_smucker_lloyd_200.jpg"})

ratl = Politician.create({:first_name=>"Rashida", :last_name=>"Tlaib", :party=>"D", :chamber=>"house", :state=>"MI", :img_url => "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Rashida_Tlaib%2C_official_portrait%2C_116th_Congress_%28cropped_2%29.jpg/440px-Rashida_Tlaib%2C_official_portrait%2C_116th_Congress_%28cropped_2%29.jpg"})


abo = Issue.create(topic:"Abortion", approval_statement: "", disapproval_statement: "")
imm = Issue.create(topic:"Immigration", approval_statement: "", disapproval_statement: "")
gun = Issue.create(topic:"Guns", approval_statement: "", disapproval_statement: "")
mar = Issue.create(topic:"Marijuana", approval_statement: "", disapproval_statement: "")
cli = Issue.create(topic:"Climate Change", approval_statement: "", disapproval_statement: "")
hel = Issue.create(topic:"Healthcare", approval_statement: "", disapproval_statement: "")
cor = Issue.create(topic:"Corruption", approval_statement: "", disapproval_statement: "")
imp = Issue.create(topic:"Imperialism", approval_statement: "", disapproval_statement: "")
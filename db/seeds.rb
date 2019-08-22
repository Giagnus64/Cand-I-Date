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


abo_pro = "I believe women are autonomous beings and have control over their on bodies.;Reproductive rights are human rights.;Reproductive rights are human rights.;#METOO;Restricting reproductive rights is a form of eugenics."

abo_anti = "Abortion? Thanks,I hate it.;I dominate women as they are my property.;Rape is in God's plan. #Drake;Abortion is murder.;Fuck you, I got mine.;Defund planned parenthood.;Coat hangers are multi-purpose."

imm_pro = "The U.S. was built by and for immigrants.;It's legal to seek asylum in the U.S.;We should aim to help those in need.;Detention centers are concentration camps.;#FUCKICE."
imm_anti = "Immigration? Thanks, I hate it.;Fuck you, I got mine. #BuildTheWall;White is right.;I hate strangers.;Columbus day is not racist, it's about Italian pride."

gun_pro = "America has a gun problem.;There is not need for citizens to have assault rifles.;The NRA are evil lobbyists."
gun_anti ="Gun Control? Thanks, I hate it.;I am a gold star member of the NRA.;We shouldn't take away guns from 10 year old girls on their birthdays.;Mah guns protect me from da guvm't."

mar_pro = "Legalize it, brah. 🥦;Alcohol is more dangerous than marijuana, and it's legal.;Prescriptions drugs have a higher chance of killing you than marijuana.;The war on drugs does more harm than good."
mar_anti = "Marijuana? Thanks, I hate it.;Marijuana is a gateway drug to premarital sex.;I want more slave labor for our prisons.;Marijuana is a gateway drug to premarital sex.;I want more slave labor for our prisons.; Reefer is for satan worshippers."

cli_pro = "We must take action to preserve Mother Earth.;We should be stewards of the Earth.;The Earth shouldn't be ruined by greedy fucks."
cli_anti = "Climate Change is fake news.;I don't believe in Science and I support natural gas.;Coal companies are still relevant.;I'm a greedy fuck who is ruining the earth.;I'll lease my land to gas companies if I fucking want to.;#NotInMyBackYard"

hea_pro = "Healthcare is a human right.;We shouldn't make money off of sick people.;Insulin is a human right."
hea_anti = "Public health care? Thanks, I hate it.;#HealthCareIsAPriveligeNotARight;I want to make money off of sick people.;Perdue is my #1 campaign contributor.;If people get sick, it's their fault.;I value money more than I value human lives." 

cor_pro = "Fuck you, I got my power and who cares how I got it.;#Macciavelli.; I'm a politician for the money. #superPACS4lyfe;i'm a politician for the benefits.;I'm happy to represent the 1%."
cor_anti = "Corruption? Thanks, I hate it.;Most of my campaign funds come from independent donors.;The U.S. is an oligarchy.;It's morally deficient for a society to have billionaires."

imp_pro = "Fuck you, I got mine. #Imperialist;I'm a colonizer.;I support the troops because they keep me in power. I'm pro-monsanto. America has Big Dick Energy.;Liberalism is fucking great."
imp_anti = "Imperialism? Thanks, I hate it.;We shouldn't pursue reckless adventures abroad, we should rebuild America's strength at home.;America's military is overcompensation for our poor treatment of our citizens."

abo = Issue.create(topic:"Abortion", approval_statement: abo_pro, disapproval_statement: abo_anti)
imm = Issue.create(topic:"Immigration", approval_statement: imm_pro, disapproval_statement: imm_anti)
gun = Issue.create(topic:"Gun Control", approval_statement: gun_pro, disapproval_statement:gun_anti )
mar = Issue.create(topic:"Marijuana", approval_statement: mar_pro, disapproval_statement: mar_anti)
cli = Issue.create(topic:"Climate Change", approval_statement: cli_pro, disapproval_statement: cli_anti)
hea = Issue.create(topic:"Healthcare", approval_statement: hea_pro, disapproval_statement: hea_anti)
cor = Issue.create(topic:"Corruption", approval_statement: cor_pro, disapproval_statement: cor_anti)
imp = Issue.create(topic:"Imperialism", approval_statement: imp_pro, disapproval_statement: imp_anti)

# Politician.all.each do |politician|
#     puts "##{politician[:first_name] + " " + politician[:last_name]}"
#     Issue.all.each do |issue|
#         puts "Stance.create(politician_id:#{(politician[:first_name][0] + politician[:first_name][1] + politician[:last_name][0] + politician[:last_name][1]).downcase+".id"}, issue_id:#{(issue[:topic].slice(0..2)).downcase+".id"}, support: true)"
#     end
#     puts "    "
# end

#Bernard Sanders
Stance.create(politician_id:besa.id, issue_id:abo.id, support: true)
Stance.create(politician_id:besa.id, issue_id:imm.id, support: true)
Stance.create(politician_id:besa.id, issue_id:gun.id, support: true)
Stance.create(politician_id:besa.id, issue_id:mar.id, support: true)
Stance.create(politician_id:besa.id, issue_id:cli.id, support: true)
Stance.create(politician_id:besa.id, issue_id:hea.id, support: true)
Stance.create(politician_id:besa.id, issue_id:cor.id, support: false)
Stance.create(politician_id:besa.id, issue_id:imp.id, support: false)

#Cory Booker
Stance.create(politician_id:cobo.id, issue_id:abo.id, support: true)
Stance.create(politician_id:cobo.id, issue_id:imm.id, support: true)
Stance.create(politician_id:cobo.id, issue_id:gun.id, support: false)
Stance.create(politician_id:cobo.id, issue_id:mar.id, support: true)
Stance.create(politician_id:cobo.id, issue_id:cli.id, support: true)
Stance.create(politician_id:cobo.id, issue_id:hea.id, support: true)
Stance.create(politician_id:cobo.id, issue_id:cor.id, support: true)
Stance.create(politician_id:cobo.id, issue_id:imp.id, support: true)
    
#Michael Crapo
Stance.create(politician_id:micr.id, issue_id:abo.id, support: false)
Stance.create(politician_id:micr.id, issue_id:imm.id, support: false)
Stance.create(politician_id:micr.id, issue_id:gun.id, support: false)
Stance.create(politician_id:micr.id, issue_id:mar.id, support: false)
Stance.create(politician_id:micr.id, issue_id:cli.id, support: false)
Stance.create(politician_id:micr.id, issue_id:hea.id, support: false)
Stance.create(politician_id:micr.id, issue_id:cor.id, support: true)
Stance.create(politician_id:micr.id, issue_id:imp.id, support: true)
    
#Ted Cruz
Stance.create(politician_id:tecr.id, issue_id:abo.id, support: false)
Stance.create(politician_id:tecr.id, issue_id:imm.id, support: false)
Stance.create(politician_id:tecr.id, issue_id:gun.id, support: false)
Stance.create(politician_id:tecr.id, issue_id:mar.id, support: false)
Stance.create(politician_id:tecr.id, issue_id:cli.id, support: false)
Stance.create(politician_id:tecr.id, issue_id:hea.id, support: false)
Stance.create(politician_id:tecr.id, issue_id:cor.id, support: true)
Stance.create(politician_id:tecr.id, issue_id:imp.id, support: true)
    
#Kirsten Gillibrand
Stance.create(politician_id:kigi.id, issue_id:abo.id, support: true)
Stance.create(politician_id:kigi.id, issue_id:imm.id, support: true)
Stance.create(politician_id:kigi.id, issue_id:gun.id, support: true)
Stance.create(politician_id:kigi.id, issue_id:mar.id, support: true)
Stance.create(politician_id:kigi.id, issue_id:cli.id, support: true)
Stance.create(politician_id:kigi.id, issue_id:hea.id, support: true)
Stance.create(politician_id:kigi.id, issue_id:cor.id, support: false)
Stance.create(politician_id:kigi.id, issue_id:imp.id, support: false)
    
#Lindsey Graham
Stance.create(politician_id:ligr.id, issue_id:abo.id, support: false)
Stance.create(politician_id:ligr.id, issue_id:imm.id, support: false)
Stance.create(politician_id:ligr.id, issue_id:gun.id, support: false)
Stance.create(politician_id:ligr.id, issue_id:mar.id, support: false)
Stance.create(politician_id:ligr.id, issue_id:cli.id, support: false)
Stance.create(politician_id:ligr.id, issue_id:hea.id, support: false)
Stance.create(politician_id:ligr.id, issue_id:cor.id, support: true)
Stance.create(politician_id:ligr.id, issue_id:imp.id, support: true)
    
#Kamala Harris
Stance.create(politician_id:kaha.id, issue_id:abo.id, support: true)
Stance.create(politician_id:kaha.id, issue_id:imm.id, support: false)
Stance.create(politician_id:kaha.id, issue_id:gun.id, support: true)
Stance.create(politician_id:kaha.id, issue_id:mar.id, support: false)
Stance.create(politician_id:kaha.id, issue_id:cli.id, support: true)
Stance.create(politician_id:kaha.id, issue_id:hea.id, support: false)
Stance.create(politician_id:kaha.id, issue_id:cor.id, support: true)
Stance.create(politician_id:kaha.id, issue_id:imp.id, support: true)
    
#Mitch McConnell
Stance.create(politician_id:mimc.id, issue_id:abo.id, support: false)
Stance.create(politician_id:mimc.id, issue_id:imm.id, support: false)
Stance.create(politician_id:mimc.id, issue_id:gun.id, support: false)
Stance.create(politician_id:mimc.id, issue_id:mar.id, support: false)
Stance.create(politician_id:mimc.id, issue_id:cli.id, support: false)
Stance.create(politician_id:mimc.id, issue_id:hea.id, support: false)
Stance.create(politician_id:mimc.id, issue_id:cor.id, support: true)
Stance.create(politician_id:mimc.id, issue_id:imp.id, support: true)
    
#Mitt Romney
Stance.create(politician_id:miro.id, issue_id:abo.id, support: false)
Stance.create(politician_id:miro.id, issue_id:imm.id, support: false)
Stance.create(politician_id:miro.id, issue_id:gun.id, support: false)
Stance.create(politician_id:miro.id, issue_id:mar.id, support: false)
Stance.create(politician_id:miro.id, issue_id:cli.id, support: false)
Stance.create(politician_id:miro.id, issue_id:hea.id, support: false)
Stance.create(politician_id:miro.id, issue_id:cor.id, support: true)
Stance.create(politician_id:miro.id, issue_id:imp.id, support: true)
    
#Elizabeth Warren
Stance.create(politician_id:elwa.id, issue_id:abo.id, support: true)
Stance.create(politician_id:elwa.id, issue_id:imm.id, support: true)
Stance.create(politician_id:elwa.id, issue_id:gun.id, support: true)
Stance.create(politician_id:elwa.id, issue_id:mar.id, support: true)
Stance.create(politician_id:elwa.id, issue_id:cli.id, support: true)
Stance.create(politician_id:elwa.id, issue_id:hea.id, support: true)
Stance.create(politician_id:elwa.id, issue_id:cor.id, support: false)
Stance.create(politician_id:elwa.id, issue_id:imp.id, support: nil) 
    
#Joaquin Castro 
Stance.create(politician_id:joca.id, issue_id:abo.id, support: true)
Stance.create(politician_id:joca.id, issue_id:imm.id, support: true)
Stance.create(politician_id:joca.id, issue_id:gun.id, support: nil) 
Stance.create(politician_id:joca.id, issue_id:mar.id, support: true)
Stance.create(politician_id:joca.id, issue_id:cli.id, support: true)
Stance.create(politician_id:joca.id, issue_id:hea.id, support: true)
Stance.create(politician_id:joca.id, issue_id:cor.id, support: true)
Stance.create(politician_id:joca.id, issue_id:imp.id, support: true)
    
#Liz Cheney
Stance.create(politician_id:lich.id, issue_id:abo.id, support: false)
Stance.create(politician_id:lich.id, issue_id:imm.id, support: false)
Stance.create(politician_id:lich.id, issue_id:gun.id, support: false)
Stance.create(politician_id:lich.id, issue_id:mar.id, support: false)
Stance.create(politician_id:lich.id, issue_id:cli.id, support: false)
Stance.create(politician_id:lich.id, issue_id:hea.id, support: false)
Stance.create(politician_id:lich.id, issue_id:cor.id, support: true)
Stance.create(politician_id:lich.id, issue_id:imp.id, support: true)
    
#Tulsi Gabbard
Stance.create(politician_id:tuga.id, issue_id:abo.id, support: true)
Stance.create(politician_id:tuga.id, issue_id:imm.id, support: true)
Stance.create(politician_id:tuga.id, issue_id:gun.id, support: true)
Stance.create(politician_id:tuga.id, issue_id:mar.id, support: true)
Stance.create(politician_id:tuga.id, issue_id:cli.id, support: true)
Stance.create(politician_id:tuga.id, issue_id:hea.id, support: true)
Stance.create(politician_id:tuga.id, issue_id:cor.id, support: nil)
Stance.create(politician_id:tuga.id, issue_id:imp.id, support: nil)
    
#Barry Loudermilk
Stance.create(politician_id:balo.id, issue_id:abo.id, support: false)
Stance.create(politician_id:balo.id, issue_id:imm.id, support: false)
Stance.create(politician_id:balo.id, issue_id:gun.id, support: false)
Stance.create(politician_id:balo.id, issue_id:mar.id, support: false)
Stance.create(politician_id:balo.id, issue_id:cli.id, support: false)
Stance.create(politician_id:balo.id, issue_id:hea.id, support: false)
Stance.create(politician_id:balo.id, issue_id:cor.id, support: false)
Stance.create(politician_id:balo.id, issue_id:imp.id, support: false)
    
#Kevin McCarthy
Stance.create(politician_id:kemc.id, issue_id:abo.id, support: false)
Stance.create(politician_id:kemc.id, issue_id:imm.id, support: false)
Stance.create(politician_id:kemc.id, issue_id:gun.id, support: false)
Stance.create(politician_id:kemc.id, issue_id:mar.id, support: false)
Stance.create(politician_id:kemc.id, issue_id:cli.id, support: false)
Stance.create(politician_id:kemc.id, issue_id:hea.id, support: false)
Stance.create(politician_id:kemc.id, issue_id:cor.id, support: true)
Stance.create(politician_id:kemc.id, issue_id:imp.id, support: true)
    
#Alexandria Ocasio-Cortez
Stance.create(politician_id:aloc.id, issue_id:abo.id, support: true)
Stance.create(politician_id:aloc.id, issue_id:imm.id, support: true)
Stance.create(politician_id:aloc.id, issue_id:gun.id, support: true)
Stance.create(politician_id:aloc.id, issue_id:mar.id, support: true)
Stance.create(politician_id:aloc.id, issue_id:cli.id, support: true)
Stance.create(politician_id:aloc.id, issue_id:hea.id, support: true)
Stance.create(politician_id:aloc.id, issue_id:cor.id, support: false)
Stance.create(politician_id:aloc.id, issue_id:imp.id, support: false)
    
#Ilhan Omar
Stance.create(politician_id:ilom.id, issue_id:abo.id, support: true)
Stance.create(politician_id:ilom.id, issue_id:imm.id, support: true)
Stance.create(politician_id:ilom.id, issue_id:gun.id, support: true)
Stance.create(politician_id:ilom.id, issue_id:mar.id, support: true)
Stance.create(politician_id:ilom.id, issue_id:cli.id, support: true)
Stance.create(politician_id:ilom.id, issue_id:hea.id, support: true)
Stance.create(politician_id:ilom.id, issue_id:cor.id, support: false)
Stance.create(politician_id:ilom.id, issue_id:imp.id, support: false)
    
#Steve Scalise
Stance.create(politician_id:stsc.id, issue_id:abo.id, support: false)
Stance.create(politician_id:stsc.id, issue_id:imm.id, support: false)
Stance.create(politician_id:stsc.id, issue_id:gun.id, support: false)
Stance.create(politician_id:stsc.id, issue_id:mar.id, support: false)
Stance.create(politician_id:stsc.id, issue_id:cli.id, support: false)
Stance.create(politician_id:stsc.id, issue_id:hea.id, support: false)
Stance.create(politician_id:stsc.id, issue_id:cor.id, support: true)
Stance.create(politician_id:stsc.id, issue_id:imp.id, support: true)
    
#Lloyd Smucker
Stance.create(politician_id:llsm.id, issue_id:abo.id, support: false)
Stance.create(politician_id:llsm.id, issue_id:imm.id, support: false)
Stance.create(politician_id:llsm.id, issue_id:gun.id, support: false)
Stance.create(politician_id:llsm.id, issue_id:mar.id, support: false)
Stance.create(politician_id:llsm.id, issue_id:cli.id, support: false)
Stance.create(politician_id:llsm.id, issue_id:hea.id, support: false)
Stance.create(politician_id:llsm.id, issue_id:cor.id, support: true)
Stance.create(politician_id:llsm.id, issue_id:imp.id, support: true)
    
#Rashida Tlaib
Stance.create(politician_id:ratl.id, issue_id:abo.id, support: true)
Stance.create(politician_id:ratl.id, issue_id:imm.id, support: true)
Stance.create(politician_id:ratl.id, issue_id:gun.id, support: true)
Stance.create(politician_id:ratl.id, issue_id:mar.id, support: true)
Stance.create(politician_id:ratl.id, issue_id:cli.id, support: true)
Stance.create(politician_id:ratl.id, issue_id:hea.id, support: true)
Stance.create(politician_id:ratl.id, issue_id:cor.id, support: false)
Stance.create(politician_id:ratl.id, issue_id:imp.id, support: false)
   
    
u1 = User.create(
    first_name: "Gianfranco",
    last_name: "Nuschese",
    email: "gn@gn.com",
    password: "loginbro"
)
u2 = User.create(
    first_name: "Alessandra",
    last_name: "Vertrees",
    email: "alessandra@vertrees.com",
    password: "password"
)

class Politician < ApplicationRecord
    has_many :stances
    has_many :issues, through: :stances
    has_many :follows
    has_many :users, through: :follows
    validates :first_name, :last_name, :state, :img_url, :party, :chamber, presence: true

    #concat first_name and Last_Name
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    #custom method to make sure this politician hasnt already seen this user
    def has_seen
        if self.users.include?(user)
            return true
        else 
            return false
        end
    end

    #generate bio via there stance on certain issues
    # topic:"Abortion", 
    # topic:"Immigration"
    # topic:"Gun Control"
    # topic:"Marijuana", 
    # topic:"Climate Change",
    # topic:"Healthcare",
    # topic:"Corruption",
    # topic:"Imperialism"
    def bio
        bio_sentences = []
        self.stances.each do |stance|
            if stance.support
                bio_sentences << stance.issue.generate_approval_statement
            else
                bio_sentences << stance.issue.generate_disapproval_statement
            end
        end
        bio_sentences.shuffle.join(" ")
        
    end

    def liz_img_url
        urls = [
        "https://vignette.wikia.nocookie.net/memoryalpha/images/9/9b/Dolim.jpg/revision/latest?cb=20170928191347&path-prefix=en",
        "https://media.wired.com/photos/5c1d52f303ddbb5c215d5a38/master/pass/Poaching-530333753-w.jpg",
        "https://www.mmogold.com/media/__sized__/products/xindirep-crop-c0-5__0-5-540x540.png",
        "http://themysticalspiral.com/wp-content/uploads/2016/11/reptilian_humanoid-248x300.jpg",
        "http://startrek-forever-rpg.wdfiles.com/local--files/sindareen/IMGP0424.jpg",
        "https://vignette.wikia.nocookie.net/memoryalpha/images/3/3e/Linus.jpg/revision/latest?cb=20190124015733&path-prefix=en",
        "https://i.pinimg.com/564x/d3/1c/d3/d31cd3b9707994509b0dd861045630ac.jpg",
        "https://i.pinimg.com/564x/d8/19/a7/d819a74d4f3492a165f9b285138b5e9e.jpg",
        "https://i.pinimg.com/564x/e5/ef/6c/e5ef6cd16af7fb450ad2413dff4a9735.jpg",
        "http://www.theviewscreen.com/wp-content/uploads/2010/10/arena1-300x227.jpg",
        "https://cdn.pastemagazine.com/www/articles/2019/03/05/MacDeMarco_YT_Main.png",
        ]
        urls.sample
    end


    def assign_stances(stance_hash)
        stance_hash.each do |topic, support|
            issue = Issue.find_by(topic: topic)
            new_stance = self.stances.create(issue: issue, support: support)
        end
    end


    def self.chamber_array
        ["Senate", "House", "Other/Local Respresentative"]
    end
    def self.party_array
        [{
            name: "Democrat",
            abbreviation: "D"
        },
        {
            name: "Republican",
            abbreviation: "R"
        },
        {
            name:"Independent", 
            abbreviation: "I"
        },
        {
            name: "Green", 
            abbreviation: "G"
        }
        ]
    end

    def self.state_array
        [
            {
                "name": "Alabama",
                "abbreviation": "AL"
            },
            {
                "name": "Alaska",
                "abbreviation": "AK"
            },
            {
                "name": "Arizona",
                "abbreviation": "AZ"
            },
            {
                "name": "Arkansas",
                "abbreviation": "AR"
            },
            {
                "name": "California",
                "abbreviation": "CA"
            },
            {
                "name": "Colorado",
                "abbreviation": "CO"
            },
            {
                "name": "Connecticut",
                "abbreviation": "CT"
            },
            {
                "name": "Delaware",
                "abbreviation": "DE"
            },
            {
                "name": "District Of Columbia",
                "abbreviation": "DC"
            },
            {
                "name": "Florida",
                "abbreviation": "FL"
            },
            {
                "name": "Georgia",
                "abbreviation": "GA"
            },
            {
                "name": "Hawaii",
                "abbreviation": "HI"
            },
            {
                "name": "Idaho",
                "abbreviation": "ID"
            },
            {
                "name": "Illinois",
                "abbreviation": "IL"
            },
            {
                "name": "Indiana",
                "abbreviation": "IN"
            },
            {
                "name": "Iowa",
                "abbreviation": "IA"
            },
            {
                "name": "Kansas",
                "abbreviation": "KS"
            },
            {
                "name": "Kentucky",
                "abbreviation": "KY"
            },
            {
                "name": "Louisiana",
                "abbreviation": "LA"
            },
            {
                "name": "Maine",
                "abbreviation": "ME"
            },
            {
                "name": "Maryland",
                "abbreviation": "MD"
            },
            {
                "name": "Massachusetts",
                "abbreviation": "MA"
            },
            {
                "name": "Michigan",
                "abbreviation": "MI"
            },
            {
                "name": "Minnesota",
                "abbreviation": "MN"
            },
            {
                "name": "Mississippi",
                "abbreviation": "MS"
            },
            {
                "name": "Missouri",
                "abbreviation": "MO"
            },
            {
                "name": "Montana",
                "abbreviation": "MT"
            },
            {
                "name": "Nebraska",
                "abbreviation": "NE"
            },
            {
                "name": "Nevada",
                "abbreviation": "NV"
            },
            {
                "name": "New Hampshire",
                "abbreviation": "NH"
            },
            {
                "name": "New Jersey",
                "abbreviation": "NJ"
            },
            {
                "name": "New Mexico",
                "abbreviation": "NM"
            },
            {
                "name": "New York",
                "abbreviation": "NY"
            },
            {
                "name": "North Carolina",
                "abbreviation": "NC"
            },
            {
                "name": "North Dakota",
                "abbreviation": "ND"
            },
            {
                "name": "Ohio",
                "abbreviation": "OH"
            },
            {
                "name": "Oklahoma",
                "abbreviation": "OK"
            },
            {
                "name": "Oregon",
                "abbreviation": "OR"
            },
            {
                "name": "Pennsylvania",
                "abbreviation": "PA"
            },
            {
                "name": "Rhode Island",
                "abbreviation": "RI"
            },
            {
                "name": "South Carolina",
                "abbreviation": "SC"
            },
            {
                "name": "South Dakota",
                "abbreviation": "SD"
            },
            {
                "name": "Tennessee",
                "abbreviation": "TN"
            },
            {
                "name": "Texas",
                "abbreviation": "TX"
            },
            {
                "name": "Utah",
                "abbreviation": "UT"
            },
            {
                "name": "Vermont",
                "abbreviation": "VT"
            },
            {
                "name": "Virginia",
                "abbreviation": "VA"
            },
            {
                "name": "Washington",
                "abbreviation": "WA"
            },
            {
                "name": "West Virginia",
                "abbreviation": "WV"
            },
            {
                "name": "Wisconsin",
                "abbreviation": "WI"
            },
            {
                "name": "Wyoming",
                "abbreviation": "WY"
            }
        ]
    end
    #State Array?
    #Party Array?
end
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
                bio_sentences << stance.issue.approval_statement
            else
                bio_sentences << stance.issue.disapproval_statement
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

    #State Array?
    #Party Array?
end
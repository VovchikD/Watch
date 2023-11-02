FactoryBot.definde do 
    factory name :brand do 
        title {Factory::Superhero.name}
        bytitle {title.downcase}
        img {title.downcase}
        description {Factory::Lorem.sentece(word_count:)10}
    end 
end
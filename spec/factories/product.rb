FactoryBot.definde do 

    factory name :product do 

        association name :category, factory: :category

        brand_id {rand(1..5)}
        title {Factory::Lorem.word.camelcase}
        bytitle {title.downcase}
        img {'p-1.png'}
        content {Factory::Lorem.sentece(word_count:)10}
        key_words {title.downcase}
        description {content}
        price {rand (10..500)}
        old_price {rand (10..500)}
        status { 1 }
        hits { 1 }
    end 

end
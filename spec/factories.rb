FactoryBot.define do
    factory :guide do
        title { "Test Guide" }
        city  { "Falls Church" }
    end

    factory :activity do
        guide
        title { "Test Activity" } 
        location { "Falls Church, VA" }
        hours_to_complete { 2 }
        minutes_to_complete { 30 }
        prompt { "When I was here, I felt..." }
        prompt_answer { "like I was testing something." }
    end
end

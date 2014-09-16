namespace :generator do


  desc "Generate 3 leagues with discussion and comments"
  task :data_generator => :environment do

      3.times do
        team = Team.create(name: Faker::Lorem.word, 
                               description: Faker::Lorem.paragraph,
                               location: "Vancouver")
        tournament = Tournament.create(name: Faker::Company.bs,
                              location: "Vancouver",
                              date: Time.now,
                              description: Faker::Lorem.paragraph,
                              team_id: team.id)
        member = Member.create(name: Faker::Name.name,
                               location: "Vancouver", 
                               description: Faker::Lorem.paragraph,
                               team_id: team.id)

        # 5.times do
        #     discussion = league.discussions.create(title: Faker::Company.bs,
        #                               body: Faker::Lorem.paragraph,
        #                               member_id: member.id,
        #                               league_id: league.id)
        #     2.times do
        #       discussion.comments.create(body: Faker::Lorem.paragraph,
        #                                  discussion_id: discussion.id,
        #                                  member_id: member.id)
        #     end
        # end
      end

  end
end


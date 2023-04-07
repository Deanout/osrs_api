class OsrsApiService
  BASE_URL = 'https://secure.runescape.com'

  def self.player_data(username)
    response = connection.get("/m=hiscore_oldschool/index_lite.ws?player=#{username}")

    if response.success?
      # Process and return the data
      process_data(response.body, username)
    else
      # Handle errors
      nil
    end
  end

  def self.connection
    Faraday.new(BASE_URL) do |conn|
      conn.request :url_encoded
      conn.adapter Faraday.default_adapter
    end
  end

  def self.process_data(data, username)
    # Process the data as needed
    skills = data.split("\n")[0..23]
        skills.map.with_index do |skill, index|
            rank, level, experience = skill.split(',')
            PlayerDetail.create(
                player_name: username,
                skill_id: index,
                rank: rank.to_i,
                level: level.to_i,
                experience: experience.to_i
            )
        end
    end
end

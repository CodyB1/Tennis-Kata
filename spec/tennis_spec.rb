require "./tennis.rb"

describe Tennis do 
    before (:each) do
        @tennis = described_class.new
    end

    
    it "plays the game" do
        result = @tennis.play_game

        expect(result).to eq("We have a winner")

    end 

    it "gets the initial score" do
        result = @tennis.get_initial_score

        expect(result).to eq([0, 0])

    end 

    it "plays a point" do
        result = @tennis.play_point

        expect(result).to eq("Player 1 wins point" || "Player 2 wins point" )

    end 
    
    
    
end
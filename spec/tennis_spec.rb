require "./tennis.rb"

describe Tennis do 
    before (:each) do
        @tennis = described_class.new
    end

    
    it "plays the game" do
        result = @tennis.play_game

        expect(result).to eq("We have a winner")

    end 

    it "gets the initian score" do
        result = @tennis.get_initial_score

        expect(result).to eq([0, 0])

    end 
    
    
end
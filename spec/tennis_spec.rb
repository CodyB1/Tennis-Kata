require "./tennis.rb"

describe Tennis do 
    before (:each) do
        @tennis = described_class.new
    end

    
    it "plays the game" do
        result = @tennis.play_game


        expect(result).to eq(result)

    end 

    it "gets the initial score" do
        result = @tennis.get_initial_score

        expect(result).to eq([0, 0])

    end 

    it "plays a point" do
        result = @tennis.play_point

        expect(result).to eq(result)

    end 

    it "updates score to winning player" do
        
        result = @tennis.update_score(2, [50,40])

        expect(result).to eq([40, 40])

    end 

    it "check for a winner" do
        
        result = @tennis.check_for_a_winner([40,60])

        expect(result).to eq("Player 2 wins")

    end 
    
    
end
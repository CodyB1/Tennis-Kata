require "./tennis.rb"

describe Tennis do 
    before (:each) do
        @tennis = described_class.new
    end

    
    it "plays the game" do
        result = @tennis.play_game

        expect(result).to eq("We have a winner")

    end 

    it "starts game" do
        result = @tennis.start_game

        expect(result).to eq("Love-Love")

    end 
    
    
end
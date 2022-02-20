class Tennis 

    def get_initial_score
        return [0, 0]
    end
    

    def play_point
        winner = rand()
        if (winner > 0.5) 
            pointWinner =  1
           
        else 
            pointWinner = 2
        end

        return pointWinner
    end


    def update_score(pointWinner, score)
        
        if (pointWinner == 1)
            if(score[0] < 30)
                score[0] += 15
            elsif (score[0] == 40 && score[1] == 50)
                score[1] -= 10
            else
                score[0] += 10
            end
        elsif (pointWinner == 2)
            if (score[1] < 30)
                score[1] += 15
            
            elsif (score[0] == 50 && score[1] == 40)
                score[0] -= 10
            else
                score[1] += 10
            end
        else 
            return "This point winner is not valid"
        end

        return score
    end

    def check_for_a_winner(score)
        if (score[0] > 40 && score[1] < 40)
            return "Player 1 wins"
        elsif (score[1] > 40 && score[0] < 40)
            return "Player 2 wins"
        elsif (score[0] == 60 && score[1] == 40)
             return "Player 1 wins"
        
        elsif (score[0] == 40 && score[1] == 60)
             return "Player 2 wins"
            
        else
            return "No winner"
        end
    end

    def get_point_text(winner, pointWinner, score)
        if winner == "No winner"
            visibleScore = score.dup
            if score[0] == 50
                visibleScore[0] = "A"
            elsif score[1] == 50
                visibleScore[1] = "A"
            end

        else
            visibleScore = score.dup
            if score[0] == 50
                visibleScore[0] = "Game"
            elsif score[1] == 50
                visibleScore[1] = "Game"
            elsif score[0] == 60
                visibleScore[0] = "Game"
            elsif score[1] == 60
                visibleScore[0] = "Game"
            end

        end

        
    
    end

    def play_game
        ##start game - score is love love 
        score = get_initial_score()
        winner = "No winner"

        while winner == "No winner" do
            ## play a ball 
            pointWinner = play_point()
            ## update score to winning player
            score = update_score(pointWinner, score)
            ## check if winner 

                ## if a player score > 40 and the other scores < 40 -  winner
                ## if player score = 40 an the others score = 40 - deuce 
                    ##play a ball 
                    ##update score to winning player - Advantage player
                    ## if player score one one point while in advantage - winner
                    ## if the other player scores - update score player to = 40 
                    ##play ball
            
            winner = check_for_a_winner(score)

            get_point_text(winner, pointWinner, score)


        end

        puts winner
        
        
    end


end 

## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
    SELECT * FROM TEAM 
    ORDER BY NAME;
    
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
    SELECT * FROM PLAYER WHERE NAME = 'S%' AND COUNTRY <>'SOUTH AFRICA'
    ORDER BY NAME DESC;
    
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
    SELECT EVENT_NO, CLOCK_IN_SECONDS FROM EVENT
    ORDER BY EVENT_NO ASC;
    
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
    SELECT EVENT_NO FROM EVENT WHERE RAID_POINTS+DEFENDING_POINTS >= 3
    ORDER BY EVENT_NO ASC;
    
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
    SELECT NAME FROM PLAYER WHERE COUNTRY = 'INDIA' OR 'IRAN'
    ORDER BY NAME ASC;
    
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
    SELECT NAME FROM PLAYER WHERE COUNTRY <> 'INDIA' AND 'IRAN'
    ORDER BY NAME ASC;
    
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
    SELECT NAME FROM SKILL WHERE NAME ='DEFEND%'
    ORDER BY NAME ASC;
    
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
    SELECT STADIUM_NAME FROM VENUE WHERE STADIUM_NAME ='%Complex'
    ORDER BY STADIUM_NAME ASC;
    
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
    SELECT WINNER_TEAM_ID, SCORE FROM OUTCOME WHERE SCORE < 35
    ORDER BY ID DESC;
    
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
    SELECT * FROM GAME WHERE GAME_DATE BETWEEN TO_DATE('JANUARY2020','MONTHYYYY') AND TO_DATE('MARCH2020','MONTHYYYY')
    ORDER BY ID DESC;
    
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
    SELECT PLAYER.NAME FROM PLAYER,EVENT WHERE PLAYER.ID = EVENT.RAIDER_ID
    ORDER BY NAME ASC;
    
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
    SELECT EVENT.EVENT_NO, EVENT.RAID_POINTS, EVENT.DEFENDING_POINTS FROM EVENT,GAME WHERE EVENT.INNINGS_ID = GAME.FIRST_INNINGS_ID AND GAME.GAME_DATE ='2020-01-26'
    ORDER BY EVENT.EVENT_NO ASC;
    
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
    SELECT TEAM.NAME FROM TEAM,OUTCOME,GAME WHERE TEAM.ID=OUTCOME.WINNER_TEAM_ID AND GAME.GAME_DATE=TO_DATE('2020-03-09','YYYY-MM-DD') 
    ORDER BY TEAM.NAME ASC;
    
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
    SELECT PLAYER.NAME FROM PLAYER,OUTCOME,GAME WHERE PLAYER.ID=OUTCOME.PLAYER_OF_MATCH AND GAME.GAME_DATE=TO_DATE('2020-03-09','YYYY-MM-DD') 
    ORDER BY PLAYER.NAME ASC;
    
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
    SELECT PLAYER.NAME FROM PLAYER,SKILL WHERE SKILL.NAME ='ALL ROUNDER'
    ORDER BY PLAYER.NAME ASC;
    
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
    SELECT VENUE.STADIUM_NAME FROM VENUE,GAME WHERE VENUE.ID=GAME.VENUE_ID AND  GAME_DATE=TO_DATE('2020-03-09','YYYY-MM-DD') 
    ORDER BY VENUE.STADIUM_NAME ASC;
    
-- 17. **Write a query to display the Coach's name of the team `Iran`**
    SELECT TEAM.COACH FROM TEAM WHERE TEAM.NAME='IRAN';
    
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
    SELECT EVENT.EVENT_NO, EVENT.DEFENDING_POINTS FROM EVENT,PLAYER WHERE PLAYER.NAME = 'Fazel Atrachali'
    ORDER BY EVENT.EVENT_NO ASC;
    
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
    SELECT TEAM.NAME FROM TEAM,OUTCOME,GAME WHERE TEAM.ID = OUTCOME.WINNER_TEAM_ID AND GAME.GAME_DATE= TO_DATE('MARCH2020','MONTHYYYY')
    ORDER BY TEAM.NAME ASC;
    
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
    SELECT PLAYER.NAME FROM PLAYER,OUTCOME,GAME WHERE PLAYER.ID=PLAYER_OF_MATCH AND GAME.GAME_DATE = TO_DATE('MARCH2020','MONTHYYYY');

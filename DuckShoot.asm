.MODEL HUGE
.STACK 100
.DATA 
    
    ; for multi digit print
    number dw ?
    count1 db ?
    countDigits dw 0

    page_number db 1

    splash_screen db ' ', 0ah, 0dh
    db '     /====================================================================\', 0ah, 0dh
db '     ||                                                                  ||', 0ah, 0dh
db '     ||     8888888b.  888     888  .d8888b.  888    d8P                 ||', 0ah, 0dh
db '     ||     888  "Y88b 888     888 d88P  Y88b 888   d8P                  ||', 0ah, 0dh
db '     ||     888    888 888     888 888    888 888  d8P                   ||', 0ah, 0dh
db '     ||     888    888 888     888 888        888d88K                    ||', 0ah, 0dh
db '     ||     888    888 888     888 888        8888888b                   ||', 0ah, 0dh
db '     ||     888    888 888     888 888    888 888  Y88b                  ||', 0ah, 0dh
db '     ||     888  .d88P Y88b. .d88P Y88b  d88P 888   Y88b                 ||', 0ah, 0dh
db '     ||     8888888P"   "Y88888P"   "Y8888P"  888    Y88b                ||', 0ah, 0dh
db '     ||                                                                  ||', 0ah, 0dh
db '     ||                                                                  ||', 0ah, 0dh
db '     ||                                                                  ||', 0ah, 0dh
db '     ||      .d8888b.  888    888  .d88888b.   .d88888b. 88888888888     ||', 0ah, 0dh
db '     ||     d88P  Y88b 888    888 d88P" "Y88b d88P" "Y88b    888         ||', 0ah, 0dh
db '     ||     Y88b.      888    888 888     888 888     888    888         ||', 0ah, 0dh
db '     ||      "Y888b.   8888888888 888     888 888     888    888         ||', 0ah, 0dh
db '     ||         "Y88b. 888    888 888     888 888     888    888         ||', 0ah, 0dh
db '     ||           "888 888    888 888     888 888     888    888         ||', 0ah, 0dh
db '     ||     Y88b  d88P 888    888 Y88b. .d88P Y88b. .d88P    888         ||', 0ah, 0dh
db '     ||      "Y8888P"  888    888  "Y88888P"   "Y88888P"     888         ||', 0ah, 0dh
db '     ||                                                                  ||', 0ah, 0dh
db '     \====================================================================/', 0ah, 0dh
  DB   '$',0ah,0dh 

    Title_Screen DB '  ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  DB   '             ====================================================',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh                                        
  DB   '            ||              *    DUCK SHOOT     *               ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||--------------------------------------------------||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||           Move cursor to shoot ducks             ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh   
  DB   '            ||           Game consists of 2 levels:             ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||           Level 1: 1 Duck at a time              ||',0ah,0dh
  DB   '            ||           Level 2: Multiple Ducks at a time      ||',0ah,0dh 
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '             ====================================================',0ah,0dh
  DB   '$',0ah,0dh 

    game_end DB '  ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  DB   '             ====================================================',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh                                        
  DB   '            ||              *    DUCK SHOOT     *               ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||--------------------------------------------------||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||                    GAME ENDED                    ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||             THANK YOU FOR PLAYING :)             ||',0ah,0dh   
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||                  PRESS ANY KEY                   ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '             ====================================================',0ah,0dh
  DB   '$',0ah,0dh 
    
    game_paused DB '  ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  DB   '             ====================================================',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh                                        
  DB   '            ||              *     GAME PAUSED     *             ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||--------------------------------------------------||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||           Move cursor to shoot ducks             ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh   
  DB   '            ||           RESUME: PRESS SPACEBAR                 ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||           EXIT TO MAIN MENU: PRESS ESC           ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh 
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '             ====================================================',0ah,0dh
  DB   '$',0ah,0dh 

    menu_screen DB '  ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  db   '                                                                 ',0ah,0dh
  DB   '             ====================================================',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh                                        
  DB   '            ||              *    DUCK SHOOT     *               ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||--------------------------------------------------||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||           Move cursor to shoot ducks             ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh   
  DB   '            ||           Level 1: PRESS 1                       ||',0ah,0dh
  DB   '            ||           Level 2: PRESS 2                       ||',0ah,0dh 
  DB   '            ||           High Scores:  Press 3                  ||',0ah,0dh
  DB   '            ||                                                  ||',0ah,0dh 
  DB   '            ||                                                  ||',0ah,0dh
  DB   '             ====================================================',0ah,0dh
  DB   '$',0ah,0dh 

    msg_player db 'Enter Your Name: $'
    msg_score1 db 'Your Score is: $'
    msg_scores db 'SCORES: $'
    player_name db 30 DUP('$') 
    player_name_count dw 0

    ; Background
    msg_lives db 'Lives: ', 0
    msg_score db 'Score: ', 0
    msg_shots db 'Shots: ', 0
    msg_round db 'Round: ', 0

    lives db 5
    score dw 0
    shots dw 0
    round db 1
    round_sleep dw 3
    round_condition dw 5

    ; Duck 
    duck_x dw 220
    duck_y dw 170
    duck_increment_x dw 1 ; 1 for +ve, 2 for -ve, 0 for no movement 
    duck_increment_y dw 2 ; 1 for +ve, 2 for -ve, 0 for no movement
    duck_speed dw 1

    ; Duck 
    duck_x2 dw 150
    duck_y2 dw 170
    duck_increment_x_2 dw 2 ; 1 for +ve, 2 for -ve, 0 for no movement 
    duck_increment_y_2 dw 2 ; 1 for +ve, 2 for -ve, 0 for no movement
    duck_speed2 dw 1



    ; for random duck movement
    right_collision dw 0
    left_collision dw 1
    bottom_collision dw 1
    top_collision dw 1

    ; for random duck movement
    right_collision2 dw 0
    left_collision2 dw 1
    bottom_collision2 dw 1
    top_collision2 dw 1

    duck_rightup_3 DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,02h,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,0Fh,0Fh,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,0Fh,0Fh,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,0Fh,02h,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,0Fh,02h,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Fh,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Fh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,0Fh,00h,00h,00h,0Fh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,0Fh,00h,07h,0Fh,0Fh,0Fh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,07h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,0Fh,00h,00h,00h,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Fh,0Fh,0Fh,0Fh,0Fh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_rightup_2         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,02h,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Fh,07h,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,0Fh,0Fh,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,0Fh,0Fh,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,0Fh,02h,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Fh,07h,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,0Fh,02h,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,02h,02h,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,07h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Fh,0Fh,0Fh,02h,02h,02h,02h,07h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,00h,00h,00h,0Fh,0Fh,02h,07h,07h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,0Fh,07h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,02h,02h,00h,00h,00h,00h,00h,00h,07h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Fh,00h,0Fh,00h,00h,00h,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Fh,0Fh,0Fh,0Fh,0Fh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_rightup_1         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,02h,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,0Fh,0Fh,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,0Fh,0Fh,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,0Fh,02h,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,0Fh,02h,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Fh,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,07h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Fh,07h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,0Fh,00h,00h,00h,0Fh,0Fh,00h,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Fh,0Fh,0Fh,0Fh,0Fh,0Ch,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32
    
    duck_rightup dw 1
    duck_rightup_time dw 5
    duck_rightup_bool dw 1

    duck_rightup2 dw 1
    duck_rightup_time2 dw 5
    duck_rightup_bool2 dw 0

    duck_rightdown_1         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,07h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,0Fh,00h,00h,07h,0Fh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,00h,0Fh,0Dh     ;  6
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh     ;  7
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Ch,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,07h,0Fh,0Fh,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,07h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,07h,02h,02h,02h,02h,0Fh,0Fh,0Fh,0Fh,02h,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,07h,02h,02h,02h,0Fh,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,07h,02h,02h,02h,0Fh,0Fh,0Fh,0Fh,02h,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,07h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_rightdown_2         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,00h,0Dh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Fh,00h,0Dh,0Fh,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Fh,00h,00h,00h,07h,07h,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Ch,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,00h,00h,00h,0Fh,0Fh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh     ; 21
        DB 0Dh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,0Fh,0Fh,0Fh,02h,0Dh,0Dh     ; 22
        DB 0Dh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh     ; 23
        DB 0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,0Fh,0Fh,0Fh,02h,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_rightdown_3         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Ch,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Fh,0Fh,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,0Fh,0Fh,0Fh,02h,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,0Fh,0Fh,0Fh,02h,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,07h,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,07h,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_rightdown dw 1
    duck_rightdown_time dw 5
    duck_rightdown_bool dw 0

    duck_rightdown2 dw 1
    duck_rightdown_time2 dw 5
    duck_rightdown_bool2 dw 0

    duck_falling_1      DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Dh,0Fh,0Fh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Fh,0Fh,0Fh,00h,00h,0Dh,0Dh,0Fh,0Dh,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Fh,0Fh,00h,00h,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,00h,0Ch,0Ch,0Ch,0Fh,0Fh,00h,00h,00h,0Fh,00h,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Fh,0Ch,0Ch,0Ch,0Fh,0Fh,00h,00h,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Fh,0Ch,0Ch,0Fh,0Fh,00h,00h,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,00h,00h,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,00h,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,02h,02h,0Fh,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,02h,0Fh,0Fh,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,02h,00h,00h,00h,00h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,00h,00h,00h,00h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,00h,00h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_falling_2    DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Fh,0Fh,0Dh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,0Dh,0Fh,0Dh,0Dh,00h,00h,0Fh,0Fh,0Fh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,00h,00h,0Fh,0Fh,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,00h,0Fh,00h,00h,00h,0Fh,0Fh,0Ch,0Ch,0Ch,00h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,00h,00h,0Fh,0Fh,0Ch,0Ch,0Ch,0Fh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,00h,00h,0Fh,0Fh,0Ch,0Ch,0Fh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,00h,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,0Fh,02h,02h,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,0Fh,00h,0Fh,0Fh,02h,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,00h,00h,00h,00h,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,00h,00h,00h,00h,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,00h,00h,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_falling dw 1
    duck_falling_time dw 2
    duck_falling_bool dw 0

    duck_falling2 dw 1
    duck_falling_time2 dw 2
    duck_falling_bool2 dw 0

    duck_leftdown_1         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,07h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Fh,07h,00h,00h,0Fh,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Fh,00h,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ;  7
        DB 0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Ch,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,0Fh,0Fh,07h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,07h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,02h,0Fh,0Fh,0Fh,0Fh,02h,02h,02h,02h,07h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,0Fh,02h,02h,02h,07h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,02h,0Fh,0Fh,0Fh,0Fh,02h,02h,02h,07h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,07h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_leftdown_2         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Dh,00h,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,0Fh,0Dh,00h,0Fh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,07h,07h,00h,00h,00h,0Fh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Ch,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Fh,0Fh,00h,00h,00h,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh     ; 20
        DB 0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh     ; 21
        DB 0Dh,0Dh,02h,0Fh,0Fh,0Fh,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Dh     ; 22
        DB 0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Dh     ; 23
        DB 0Dh,0Dh,02h,0Fh,0Fh,0Fh,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_leftdown_3         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Ch,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,0Fh,0Fh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,02h,0Fh,0Fh,0Fh,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,02h,0Fh,0Fh,0Fh,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,07h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,07h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32 

    duck_leftdown dw 1
    duck_leftdown_time dw 5
    duck_leftdown_bool dw 0

    duck_leftdown2 dw 1
    duck_leftdown_time2 dw 5
    duck_leftdown_bool2 dw 0

    duck_leftup_1         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,02h,0Fh,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,02h,0Fh,0Fh,0Fh,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,07h,0Fh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,02h,0Fh,0Fh,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,02h,0Fh,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,02h,0Fh,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,07h,0Fh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Dh,0Dh,0Dh,02h,02h,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,00h,00h,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,07h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,07h,02h,02h,02h,02h,0Fh,0Fh,0Fh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,07h,07h,02h,0Fh,0Fh,00h,00h,00h,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,07h,0Fh,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,07h,00h,00h,00h,00h,00h,00h,02h,02h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,00h,00h,00h,0Fh,00h,0Fh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Fh,0Fh,0Fh,0Fh,0Fh,0Ch,0Ch,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_leftup_2         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,02h,0Fh,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,02h,0Fh,0Fh,0Fh,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,02h,0Fh,0Fh,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,02h,0Fh,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,02h,0Fh,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,0Fh,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,07h,0Fh,0Fh,00h,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,00h,0Fh,0Fh,00h,00h,00h,0Fh,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Ch,0Fh,0Fh,0Fh,0Fh,0Fh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_leftup_3         DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,02h,0Fh,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,02h,0Fh,0Fh,0Fh,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,02h,0Fh,0Fh,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,02h,0Fh,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,02h,0Fh,00h,0Fh,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,0Fh,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh     ; 12
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,0Fh,0Dh     ; 13
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Fh,00h,00h,00h,0Fh,00h,00h,00h,00h,00h,00h,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Fh,0Fh,0Fh,07h,00h,0Fh,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,07h,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,00h,00h,00h,0Fh,00h,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Fh,0Fh,0Fh,0Fh,0Fh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_leftup dw 1
    duck_leftup_time dw 5
    duck_leftup_bool dw 0

    duck_leftup2 dw 1
    duck_leftup_time2 dw 5
    duck_leftup_bool2 dw 1

    duck_hit   DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  0
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  1
        DB 0Dh,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  2
        DB 0Dh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  3
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,0Fh,0Fh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ;  4
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,0Fh,0Fh,00h,00h,0Fh,0Fh,0Dh,0Ch,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh     ;  5
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,02h,02h,0Fh,0Fh,0Fh,0Fh,0Fh,02h,0Ch,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh     ;  6
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,02h,02h,02h,02h,0Fh,0Fh,0Fh,0Fh,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  7
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,02h,02h,02h,02h,02h,0Fh,0Fh,02h,02h,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  8
        DB 0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,02h,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ;  9
        DB 0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,02h,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 10
        DB 0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,0Fh,00h,00h,00h,00h,0Dh,0Dh,02h,02h,02h,02h,02h,02h,02h,02h,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 11
        DB 0Dh,0Dh,00h,00h,00h,0Fh,00h,0Fh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,02h,02h,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 12
        DB 0Dh,0Dh,00h,00h,00h,0Fh,0Fh,0Fh,0Dh,0Fh,00h,00h,00h,00h,0Dh,0Dh,0Fh,02h,02h,02h,02h,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 13
        DB 0Dh,0Dh,00h,0Fh,0Fh,0Dh,0Fh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,0Dh,00h,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 14
        DB 0Dh,0Dh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 15
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,0Dh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh     ; 16
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,00h,00h,0Dh,0Dh     ; 17
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh,0Dh     ; 18
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,00h,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh     ; 19
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Dh,0Dh,0Dh,0Dh,00h,00h,00h,0Fh,0Fh,0Fh,0Fh,0Fh,00h,0Fh,0Fh,0Fh,00h,00h,00h,00h,00h,0Dh,0Dh,0Dh,0Dh     ; 20
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Fh,0Fh,00h,00h,00h,0Dh,0Dh,0Dh,0Dh     ; 21
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,00h,0Fh,0Dh,0Dh,0Dh,0Dh     ; 22
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh,0Fh,0Fh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 23
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,00h,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 24
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,07h,0Ch,0Ch,0Fh,0Fh,0Fh,0Ch,0Ch,0Dh,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 25
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Ch,0Ch,0Fh,0Fh,0Fh,0Fh,0Dh,0Ch,0Ch,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 26
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Fh,0Fh,0Fh,0Dh,0Dh,0Dh,0Ch,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 27
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,00h,00h,0Dh,0Dh,0Dh,0Dh,0Ch,0Ch,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 28
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 29
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 30
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 31
        DB 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh     ; 32

    duck_hit_bool dw 0
    duck_hit_time dw 10

    duck_hit_bool2 dw 0
    duck_hit_time2 dw 10

    ; mouse events
    mouse_status    dw  0      ; Variable to store mouse status
    left_button     equ 1      ; Value representing the left mouse button
    xcoor dw 0
    ycoor dw 0
    bool_collision_x db 0
    bool_collision_y db 0
    count db 0

    bkground_color db 0Bh

    ; file handling
    filename db "example.txt", 0
	handle dw ?
	buffer db 3 dup(' ')
    buffer1 db 1000 dup(' ')
    newline db 13, 10, '$'
    colon db ': '
.CODE


titleScreen proc

    mov cx, 30
    mov si, offset player_name
    mov player_name_count, 0
    clear_string:

        mov al, '$'
        mov [si], al
        inc si
        loop clear_string

    ; video mode
    MOV AH, 0
    MOV AL, 3h
    INT 10h

    ;CLEAR SCREEN
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H

    MOV AH, 9
    XOR DH, DH
    LEA DX, Title_Screen
    INT 21H

    ;moving the cursor and ask name
    MOV DL, 25
    MOV DH, 20
    MOV BH, 0
    MOV AH, 02h
    int 10h

    MOV AH,09
    MOV DH,0
    MOV DX, offset msg_player
    INT 21H

    ;MOVE THE CURSOR THEN TAKE THE PLAYER NAME
    MOV DL, 42
    MOV DH, 20
    MOV BH, 0
    MOV AH, 02h
    int 10h
    

    ; check for escape key press
    mov ah, 0
    int 16H

    cmp al, 1Bh
    mov page_number, 0
    je end_title_screen

    mov page_number, 1
    MOV AH,0AH
    MOV DX,offset player_name
    INT 21H

    mov si, offset player_name
    
    count_characters:

        inc player_name_count
        mov al, [si]
        cmp al, 0Dh
        je end_count_characters
        inc si
    jmp count_characters

    end_count_characters:
    sub player_name_count, 3

    mov page_number, 2

    end_title_screen:
    ret

titleScreen endp

menuScreen proc

    xor ax, ax
    xor bx, bx
    xor cx, cx
    xor dx, dx

    ; video mode
    MOV AH, 0
    MOV AL, 3h
    INT 10h

    ;CLEAR SCREEN
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H

    MOV AH, 9
    XOR DH, DH
    LEA DX, menu_screen
    INT 21H

    
    menu_input:

        ; waiting for input
        MOV ah, 0
        INT 16H 

        CMP AL,'1'
        je level1

        cmp al, '2'
        je level2

        cmp al, '3'
        je highscores
        
        cmp al, 1Bh
        je returnTo_title_screen

        jmp continue_menu_input

        level1:
        mov page_number, 3
        jmp end_menu

        level2:
        mov page_number, 4
        jmp end_menu

        highscores:
        mov page_number, 5
        jmp end_menu

        ;highscores:
        ;mov page_number, 5
        ;jmp end_menu

        returnTo_title_screen:
        mov page_number, 1
        jmp end_menu

        continue_menu_input:
        jmp menu_input
        
    

    end_menu:
    ret

menuScreen endp

highscoreScreen proc

    ; video mode
    MOV AH, 0
    MOV AL, 3h
    INT 10h

    ;CLEAR SCREEN
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H

    mov ah, 3Dh
    mov al, 0
	mov dx, offset filename
	int 21h  ; create file... 
	mov handle, ax

    mov bx, handle

    ; Read from the file
    MOV AH, 3Fh            ; Service to read from file
    MOV CX, 1000            ; Number of bytes to read
    MOV DX, OFFSET buffer1  ; Load address of buffer into DX
    INT 21h                ; Call DOS interrupt to read from file

    mov dx, offset msg_scores
    mov ah, 9
    int 21h

    MOV DL, 0
    MOV DH, 1
    MOV BH, 0
    MOV AH, 02h
    int 10h

    mov ax, 0
    mov ah, 09
    mov dx, 0
    mov dx, offset buffer1
    int 21h

    mov bx, handle
	mov ah, 3eh
	int 21h ; close file... 

    ; check for escape key press
    mov ah, 0
    int 16H

    mov page_number, 2

    ret    
highscoreScreen endp

DRAW_STATIC proc
    ;Draw BackGround
        MOV BH,0
        mov dx, 0
        MOV AH,0Ch
        MOV AL,bkground_color
        
    background_y:

        mov cx, 0
        background_x:
            INT 10H
            INC CX
            CMP CX, 320
        JNZ background_x

        INC DX

        cmp dx, 170
        je change_color
        jmp no_change

        change_color:
            mov al, 30h
        
        no_change:
        CMP DX, 200
    JNZ background_y

    ;draw Word Score
        ;move the cursor
            mov dh, 24
            mov dl, 70
            mov ah,02h
            int 10h
            
        ;draw 'Score'
            mov ah,0eh
            mov di,6
            mov si,0
            mov bl,7
            DrawScore:
                mov al,[msg_score+si]
                int 10h
                inc dl
                inc si
                dec di
            jnz DrawScore

        ;move cursor
            mov dh,24
            mov dl, 15
            mov ah,02h
            int 10h
        ;draw 'lives'
            mov bl,7
            mov ah,0eh
            mov di,6
            mov si,0
        DrawScore1:
            mov al,[msg_lives+si]
            int 10h
            inc dl
            inc si
            dec di
        jnz DrawScore1

        ;move cursor
            mov dh, 24
            mov dl, 1
            mov ah,02h
            int 10h
        ;draw 'shots'
            mov bl,7
            mov ah,0eh
            mov di,6
            mov si,0
        DrawScore2:
            mov al,[msg_shots+si]
            int 10h
            inc dl
            inc si
            dec di
        jnz DrawScore2

        ;move cursor
            mov dh, 22
            mov dl, 1
            mov ah,02h
            int 10h
        ;draw 'shots'
            mov bl,7
            mov ah,0eh
            mov di,6
            mov si,0
        DrawScore3:
            mov al,[msg_round+si]
            int 10h
            inc dl
            inc si
            dec di
        jnz DrawScore3
    
    ret

DRAW_STATIC endp

draw_duck proc ; duck 1

    mov dx, duck_y
    sub dx, 33
    
    MOV BH,0
    MOV AH,0Ch

    duck_y_axis:

        mov cx, duck_x
        sub cx, 33
        duck_x_axis:
            
            mov al, [si]
            cmp al, 0Dh
            je draw_back
            jmp draw_same

            draw_back:
            mov al, bkground_color

            draw_same:
            int 10h

            inc cx
            inc si

            cmp cx, duck_x
            jne duck_x_axis

        inc dx
    cmp Dx, duck_y
    jne duck_y_axis

    ret

draw_duck endp

draw_duck2 proc ; duck 2

    mov dx, duck_y2
    sub dx, 33
    
    MOV BH,0
    MOV AH,0Ch

    duck_y_axis1:

        mov cx, duck_x2
        sub cx, 33
        duck_x_axis1:
            
            mov al, [si]
            cmp al, 0Dh
            je draw_back1
            jmp draw_same1

            draw_back1:
            mov al, bkground_color

            draw_same1:
            int 10h

            inc cx
            inc si

            cmp cx, duck_x2
            jne duck_x_axis1

        inc dx
    cmp Dx, duck_y2
    jne duck_y_axis1

    ret

draw_duck2 endp

changeDuckSprite proc ; duck 1

    ; resetting sprites
    mov duck_falling_bool, 0
    mov duck_falling, 1
    mov duck_falling_time, 5

    mov duck_rightup_bool, 0
    mov duck_rightup, 1
    mov duck_rightup_time, 5

    mov duck_rightdown_bool, 0
    mov duck_rightdown, 1
    mov duck_rightdown_time, 5

    mov duck_leftup_bool, 0
    mov duck_leftup, 1
    mov duck_leftup_time, 5

    mov duck_leftdown_bool, 0
    mov duck_leftdown, 1
    mov duck_leftdown_time, 5

    mov duck_hit_bool, 0
    mov duck_hit_time, 10

    ; changing sprites

    duck_increment_x0:
    cmp duck_increment_x, 0
    je continue1
    jmp duck_increment_x1

        continue1: ; duck_increment_x = 0, so duck can only move up and down or hit condition
        cmp duck_increment_y, 2
        je duck_moving_up
        
        cmp duck_increment_y, 1
        je duck_moving_down
        jmp duckhit

        duck_moving_up: 
        mov duck_rightup_bool, 1
        jmp end_changeDuckSprite

        duck_moving_down:
        mov duck_falling_bool, 1
        jmp end_changeDuckSprite

        duckhit:
        mov duck_hit_bool, 1
        jmp end_changeDuckSprite
    
    duck_increment_x1:
    cmp duck_increment_x, 1
    je continue2
    jmp duck_increment_x2

        continue2: ;duck_increment_x = 1, so duck can only move right, rightup, rightdown
        cmp duck_increment_y, 0
        je duck_moving_right

        cmp duck_increment_y, 1
        je duck_moving_rightdown
        jmp duck_moving_rightup

        duck_moving_right: ; to be done
        mov duck_rightup_bool, 1
        jmp end_changeDuckSprite

        duck_moving_rightup: 
        mov duck_rightup_bool, 1
        jmp end_changeDuckSprite

        duck_moving_rightdown: 
        mov duck_rightdown_bool, 1
        jmp end_changeDuckSprite

    duck_increment_x2:
    
        continue3: ;duck_increment_x = 2, so duck can only move left, leftup, leftdown
        cmp duck_increment_y, 0
        je duck_moving_left

        cmp duck_increment_y, 1
        je duck_moving_leftdown
        jmp duck_moving_leftup

        duck_moving_left: ; to be done
        mov duck_leftup_bool, 1
        jmp end_changeDuckSprite

        duck_moving_leftup: ; to be done
        mov duck_leftup_bool, 1
        jmp end_changeDuckSprite

        duck_moving_leftdown: ;to be done
        mov duck_leftdown_bool, 1
        jmp end_changeDuckSprite


    end_changeDuckSprite:
    ret
changeDuckSprite endp

changeDuckSprite2 proc ; duck 2

    ; resetting sprites
    mov duck_falling_bool2, 0
    mov duck_falling2, 1
    mov duck_falling_time2, 5

    mov duck_rightup_bool2, 0
    mov duck_rightup2, 1
    mov duck_rightup_time2, 5

    mov duck_rightdown_bool2, 0
    mov duck_rightdown2, 1
    mov duck_rightdown_time2, 5

    mov duck_leftup_bool2, 0
    mov duck_leftup2, 1
    mov duck_leftup_time2, 5

    mov duck_leftdown_bool2, 0
    mov duck_leftdown2, 1
    mov duck_leftdown_time2, 5

    mov duck_hit_bool2, 0
    mov duck_hit_time2, 10

    ; changing sprites

    duck_increment_x02:
    cmp duck_increment_x_2, 0
    je continue12
    jmp duck_increment_x12

        continue12: ; duck_increment_x = 0, so duck can only move up and down or hit condition
        cmp duck_increment_y_2, 2
        je duck_moving_up2
        
        cmp duck_increment_y_2, 1
        je duck_moving_down2
        jmp duckhit2

        duck_moving_up2: 
        mov duck_rightup_bool2, 1
        jmp end_changeDuckSprite2

        duck_moving_down2:
        mov duck_falling_bool2, 1
        jmp end_changeDuckSprite2

        duckhit2:
        mov duck_hit_bool2, 1
        jmp end_changeDuckSprite2
    
    duck_increment_x12:
    cmp duck_increment_x_2, 1
    je continue22
    jmp duck_increment_x22

        continue22: ;duck_increment_x = 1, so duck can only move right, rightup, rightdown
        cmp duck_increment_y_2, 0
        je duck_moving_right2

        cmp duck_increment_y_2, 1
        je duck_moving_rightdown2
        jmp duck_moving_rightup2

        duck_moving_right2: ; to be done
        mov duck_rightup_bool2, 1
        jmp end_changeDuckSprite2

        duck_moving_rightup2: 
        mov duck_rightup_bool2, 1
        jmp end_changeDuckSprite2

        duck_moving_rightdown2: 
        mov duck_rightdown_bool2, 1
        jmp end_changeDuckSprite2

    duck_increment_x22:
    
        continue32: ;duck_increment_x = 2, so duck can only move left, leftup, leftdown
        cmp duck_increment_y_2, 0
        je duck_moving_left2

        cmp duck_increment_y_2, 1
        je duck_moving_leftdown2
        jmp duck_moving_leftup2

        duck_moving_left2: ; to be done
        mov duck_leftup_bool2, 1
        jmp end_changeDuckSprite2

        duck_moving_leftup2: ; to be done
        mov duck_leftup_bool2, 1
        jmp end_changeDuckSprite2

        duck_moving_leftdown2: ;to be done
        mov duck_leftdown_bool2, 1
        jmp end_changeDuckSprite2


    end_changeDuckSprite2:
    ret
changeDuckSprite2 endp

leftFrameCollision proc ; duck 1

    cmp duck_x, 33
    je change_movement1
    jmp no_collision1

    change_movement1:
    mov duck_increment_x, 1

    mov ax, left_collision
    mov duck_increment_y, ax
    inc left_collision

    call changeDuckSprite

    cmp left_collision, 3
    je reset_left_collision
    jmp no_collision1

    reset_left_collision:
    mov left_collision, 0

    no_collision1:
    ret
leftFrameCollision endp

leftFrameCollision2 proc ; duck 2

    cmp duck_x2, 33
    je change_movement12
    jmp no_collision12

    change_movement12:
    mov duck_increment_x_2, 1

    mov ax, left_collision2
    mov duck_increment_y_2, ax
    inc left_collision2

    call changeDuckSprite2

    cmp left_collision2, 3
    je reset_left_collision2
    jmp no_collision12

    reset_left_collision2:
    mov left_collision2, 0

    no_collision12:
    ret
leftFrameCollision2 endp

rightFrameCollision proc ; duck 1

    cmp duck_x, 320
    je change_movement2
    jmp no_collision2

    change_movement2:
    mov duck_increment_x, 2

    mov ax, right_collision
    mov duck_increment_y, ax
    inc right_collision

    call changeDuckSprite

    cmp right_collision, 3
    je reset_right_collision
    jmp no_collision2

    reset_right_collision:
    mov right_collision, 0

    no_collision2:
    ret
rightFrameCollision endp

rightFrameCollision2 proc ; duck 2

    cmp duck_x2, 320
    je change_movement22
    jmp no_collision22

    change_movement22:
    mov duck_increment_x_2, 2

    mov ax, right_collision2
    mov duck_increment_y_2, ax
    inc right_collision2

    call changeDuckSprite2

    cmp right_collision2, 3
    je reset_right_collision2
    jmp no_collision22

    reset_right_collision2:
    mov right_collision2, 0

    no_collision22:
    ret
rightFrameCollision2 endp

bottomFrameCollision proc ; duck 1

    cmp duck_y, 170
    je change_movement3
    jmp no_collision3

    change_movement3:
    mov duck_increment_y, 2

    mov ax, bottom_collision
    mov duck_increment_x, ax
    inc bottom_collision

    call changeDuckSprite

    cmp bottom_collision, 3
    je reset_bottom_collision
    jmp no_collision3

    reset_bottom_collision:
    mov bottom_collision, 1

    no_collision3:

    ret
bottomFrameCollision endp

bottomFrameCollision2 proc ; duck 2

    cmp duck_y2, 170
    je change_movement32
    jmp no_collision32

    change_movement32:
    mov duck_increment_y_2, 2

    mov ax, bottom_collision2
    mov duck_increment_x_2, ax
    inc bottom_collision2

    call changeDuckSprite2

    cmp bottom_collision2, 3
    je reset_bottom_collision2
    jmp no_collision32

    reset_bottom_collision2:
    mov bottom_collision2, 1

    no_collision32:

    ret
bottomFrameCollision2 endp

topFrameCollision proc ; duck 1

    cmp duck_y, 33
    je change_movement4
    jmp no_collision4

    change_movement4:
    dec lives
    mov duck_y, 170

    ;Draw BackGround
        mov dx, 0
        MOV AH,0Ch
        MOV AL,bkground_color
        
    background_y1:

        mov cx, 0
        ; sub cx, 33
        background_x1:
            INT 10H
            INC CX
            CMP CX, 320
        JNZ background_x1

        INC DX
        
        no_change1:
        CMP DX, 33
    JNZ background_y1

    mov duck_increment_y, 2
    
    mov ax, top_collision
    mov duck_increment_x, ax
    inc top_collision

    call changeDuckSprite

    cmp top_collision, 3
    je reset_top_collision
    jmp no_collision4

    reset_top_collision:
    mov top_collision, 1
    

    no_collision4:
    ret
topFrameCollision endp

topFrameCollision2 proc ; duck 2

    cmp duck_y2, 33
    je change_movement42
    jmp no_collision42

    change_movement42:
    dec lives
    mov duck_y2, 170

    ;Draw BackGround
        mov dx, 0
        MOV AH,0Ch
        MOV AL,bkground_color
        
    background_y12:

        mov cx, 0
        ; sub cx, 33
        background_x12:
            INT 10H
            INC CX
            CMP CX, 320
        JNZ background_x12

        INC DX
        
        no_change12:
        CMP DX, 33
    JNZ background_y12

    mov duck_increment_y_2, 2
    
    mov ax, top_collision2
    mov duck_increment_x_2, ax
    inc top_collision2

    call changeDuckSprite2

    cmp top_collision2, 3
    je reset_top_collision2
    jmp no_collision42

    reset_top_collision2:
    mov top_collision2, 1
    

    no_collision42:
    ret
topFrameCollision2 endp

duckMovement proc ; duck 1

    cmp duck_increment_x, 0
    je duckMovement1
    jmp duckMovement2

    duckMovement1:
    jmp nowIncrementY

    duckMovement2:
    cmp duck_increment_x, 1
    je duckMovement3
    jmp duckMovement4

    duckMovement3:
    mov ax, duck_speed
    add duck_x, ax
    jmp nowIncrementY

    duckMovement4:
    mov ax, duck_speed
    sub duck_x, ax
    jmp nowIncrementY

    nowIncrementY:

    cmp duck_increment_y, 0
    je duckMovement5
    jmp duckMovement6

    duckMovement5:
    jmp endDuckMovement

    duckMovement6:
    cmp duck_increment_y, 1
    je duckMovement7
    jmp duckMovement8

    duckMovement7:
    mov ax, duck_speed
    add duck_y, ax
    jmp endDuckMovement

    duckMovement8:
    mov ax, duck_speed
    sub duck_y, ax
    jmp endDuckMovement

    endDuckMovement:
    ret
duckMovement ENDP

duckMovement_2 proc ; duck 2

    cmp duck_increment_x_2, 0
    je duckMovement12
    jmp duckMovement22

    duckMovement12:
    jmp nowIncrementY2

    duckMovement22:
    cmp duck_increment_x_2, 1
    je duckMovement32
    jmp duckMovement42

    duckMovement32:
    mov ax, duck_speed2
    add duck_x2, ax
    jmp nowIncrementY2

    duckMovement42:
    mov ax, duck_speed2
    sub duck_x2, ax
    jmp nowIncrementY2

    nowIncrementY2:

    cmp duck_increment_y_2, 0
    je duckMovement52
    jmp duckMovement62

    duckMovement52:
    jmp endDuckMovement2

    duckMovement62:
    cmp duck_increment_y_2, 1
    je duckMovement72
    jmp duckMovement82

    duckMovement72:
    mov ax, duck_speed2
    add duck_y2, ax
    jmp endDuckMovement2

    duckMovement82:
    mov ax, duck_speed2
    sub duck_y2, ax
    jmp endDuckMovement2

    endDuckMovement2:
    ret
duckMovement_2 ENDP

Sleep PROC

    mov cx, round_sleep
    sleep_times:

        push cx
        MOV CX, 32767
        Sleep_Loop:
        LOOP Sleep_Loop
    pop cx
    loop sleep_times

    ret        
Sleep ENDP

Sleep2 PROC

    mov cx, round_sleep
    sleep_times2:

        push cx
        MOV CX, 16384
        Sleep_Loop2:
        LOOP Sleep_Loop2
    pop cx
    loop sleep_times2

    ret        
Sleep2 ENDP

drawLivesShotsScore proc

    mov count, 0
    mov ax, score
    
    continuepushing1:
        mov bx, 10
        mov dx, 0
        div bx
        push dx
        inc count
        cmp ax, 0
        jne continuepushing1

    ;move cursor
    mov dh, 24
    mov dl, 76
    mov ah,02h
    mov di, 3
    int 10h

    continuepopping1:
        ; mov dx, 0
        pop dx
        mov dh, 0
        mov al, dl
        mov bl, 7
        add al, 48
        mov AH, 0eh
        int 10h
        dec count
        dec di
        cmp count,0
        jne continuepopping1
            

    ;move cursor
    mov dh,24
    mov dl, 21
    mov ah,02h
    int 10h
    ; print lives
    mov ah, 0eh
    mov bl, 7 
    mov al, lives
    add al, '0'
    int 10h

    ;move cursor
    mov dh,22
    mov dl, 7
    mov ah,02h
    int 10h
    ; print round
    mov ah, 0eh
    mov bl, 7 
    mov al, round
    add al, '0'
    int 10h


    mov count, 0
    mov ax, shots
    
    continuepushing:
        mov bx, 10
        mov dx, 0
        div bx
        push dx
        inc count
        cmp ax, 0
        jne continuepushing

    ;move cursor
    mov dh, 24
    mov dl, 7
    mov ah,02h
    mov di, 3
    int 10h

    continuepopping:
        ; mov dx, 0
        pop dx
        mov dh, 0
        mov al, dl
        mov bl, 7
        add al, 48
        mov AH, 0eh
        int 10h
        dec count
        dec di
        cmp count,0
        jne continuepopping



    ret
drawLivesShotsScore endp

mouseDuckCollision proc ; duck 1

    ; Check for mouse events
    ; Set up mouse interrupt

    mov ax, 3
    int 33h
    mov mouse_status, bx   ; Store mouse status in mouse_status variable
    mov xcoor, cx
    mov ycoor, dx

    mov ax, xcoor
    mov bx, 2
    mov dx, 0
    div bx
    mov xcoor, ax

    ; Check if the left mouse button is pressed
    test mouse_status, left_button
    jnz left_click_detected   ; Jump if left mouse button is pressed
    jmp no_left_click2

    left_click_detected:
    inc shots

    mov cx, 1111111111111111b
delay_loop:
    loop delay_loop
    mov cx, 1111111111111111b
delay_loop1:
    loop delay_loop1
    mov cx, 1111111111111111b
delay_loop2:
    loop delay_loop2
    mov cx, 1111111111111111b
delay_loop3:
    loop delay_loop3
    mov cx, 1111111111111111b
delay_loop4:
    loop delay_loop4
    mov cx, 1111111111111111b
delay_loop5:
    loop delay_loop5

    ; checking for duck colision
    mov dx, duck_y
    sub dx, 33
    duck_y_box:
        mov cx, duck_x
        sub cx, 33
        duck_x_box:

            cmp cx, xcoor
            je collision_detected
            jmp no_collision_detected

            collision_detected:
            mov bool_collision_x, 1

            no_collision_detected:
            inc cx

            cmp cx, duck_x
            jne duck_x_box
        
        cmp dx, ycoor
        je collision_detected1
        jmp no_collision_detected1

        collision_detected1:
        mov bool_collision_y, 1

        no_collision_detected1:
        inc dx

        cmp dx, duck_y
        jne duck_y_box

    cmp bool_collision_x, 1
    je check_collision_y
    jmp no_left_click

    check_collision_y:
    cmp bool_collision_y, 1
    je collision_detected2
    jmp no_left_click

    collision_detected2:
    inc score
    mov duck_increment_x, 0
    mov duck_increment_y, 0    
    call changeDuckSprite
    jmp no_left_click2

    no_left_click:
    mov bool_collision_x, 0
    mov bool_collision_y, 0

        ; checking for duck colision
    mov dx, duck_y2
    sub dx, 33
    duck_y_box2:
        mov cx, duck_x2
        sub cx, 33
        duck_x_box2:

            cmp cx, xcoor
            je collision_detected_2
            jmp no_collision_detected2

            collision_detected_2:
            mov bool_collision_x, 1

            no_collision_detected2:
            inc cx

            cmp cx, duck_x2
            jne duck_x_box2
        
        cmp dx, ycoor
        je collision_detected12
        jmp no_collision_detected12

        collision_detected12:
        mov bool_collision_y, 1

        no_collision_detected12:
        inc dx

        cmp dx, duck_y2
        jne duck_y_box2

    cmp bool_collision_x, 1
    je check_collision_y2
    jmp no_left_click2

    check_collision_y2:
    cmp bool_collision_y, 1
    je collision_detected22
    jmp no_left_click2

    collision_detected22:
    inc score
    mov duck_increment_x_2, 0
    mov duck_increment_y_2, 0    
    call changeDuckSprite2

    no_left_click2:
    mov bool_collision_x, 0
    mov bool_collision_y, 0

    ret 
mouseDuckCollision endp

change_duck_sprite proc ; duck 1

    cmp duck_rightup_bool, 1
        je duckrightup_label 
        jmp other_label1

            duckrightup_label:
                dec duck_rightup_time
                cmp duck_rightup, 1
                je duckrightup1_label

                cmp duck_rightup, 2
                je duckrightup2_label

                cmp duck_rightup, 3
                je duckrightup3_label

                duckrightup1_label:
                    mov si, offset duck_rightup_1
                    cmp duck_rightup_time, 0
                    je inc_duckrightup_label1
                    jmp no_inc_duckrightup_label1
                    inc_duckrightup_label1:
                    inc duck_rightup
                    mov duck_rightup_time, 5
                    no_inc_duckrightup_label1:
                    jmp continue_label

                duckrightup2_label:
                    mov si, offset duck_rightup_2
                    cmp duck_rightup_time, 0
                    je inc_duckrightup_label2
                    jmp no_inc_duckrightup_label2
                    inc_duckrightup_label2:
                    inc duck_rightup
                    mov duck_rightup_time, 5
                    no_inc_duckrightup_label2:
                    jmp continue_label

                duckrightup3_label:
                    mov si, offset duck_rightup_3
                    cmp duck_rightup_time, 0
                    je inc_duckrightup_label3
                    jmp no_inc_duckrightup_label3
                    inc_duckrightup_label3:
                    mov duck_rightup, 1
                    mov duck_rightup_time, 5
                    no_inc_duckrightup_label3:
                    jmp continue_label
        
        other_label1:

        cmp duck_rightdown_bool, 1
        je duckrightdown_label
        jmp other_label2

            duckrightdown_label:
                dec duck_rightdown_time
                cmp duck_rightdown, 1
                je duckrightdown1_label

                cmp duck_rightdown, 2
                je duckrightdown2_label

                cmp duck_rightdown, 3
                je duckrightdown3_label

                duckrightdown1_label:
                    mov si, offset duck_rightdown_1
                    cmp duck_rightdown_time, 0
                    je inc_duckrightdown_label1
                    jmp no_inc_duckrightdown_label1
                    inc_duckrightdown_label1:
                    inc duck_rightdown
                    mov duck_rightdown_time, 5
                    no_inc_duckrightdown_label1:
                    jmp continue_label

                duckrightdown2_label:
                    mov si, offset duck_rightdown_2
                    cmp duck_rightdown_time, 0
                    je inc_duckrightdown_label2
                    jmp no_inc_duckrightdown_label2
                    inc_duckrightdown_label2:
                    mov duck_rightdown, 1
                    mov duck_rightdown_time, 5
                    no_inc_duckrightdown_label2:
                    jmp continue_label

                duckrightdown3_label:
                    mov si, offset duck_rightdown_3
                    cmp duck_rightdown_time, 0
                    je inc_duckrightdown_label3
                    jmp no_inc_duckrightdown_label3
                    inc_duckrightdown_label3:
                    mov duck_rightdown, 1
                    mov duck_rightdown_time, 5
                    no_inc_duckrightdown_label3:
                    jmp continue_label
        
        other_label2:

        cmp duck_leftdown_bool, 1
        je duckleftdown_label
        jmp other_label3

            duckleftdown_label:
                dec duck_leftdown_time
                cmp duck_leftdown, 1
                je duckleftdown1_label

                cmp duck_leftdown, 2
                je duckleftdown2_label

                cmp duck_leftdown, 3
                je duckleftdown3_label

                duckleftdown1_label:
                    mov si, offset duck_leftdown_1
                    cmp duck_leftdown_time, 0
                    je inc_duckleftdown_label1
                    jmp no_inc_duckleftdown_label1
                    inc_duckleftdown_label1:
                    inc duck_leftdown
                    mov duck_leftdown_time, 5
                    no_inc_duckleftdown_label1:
                    jmp continue_label

                duckleftdown2_label:
                    mov si, offset duck_leftdown_2
                    cmp duck_leftdown_time, 0
                    je inc_duckleftdown_label2
                    jmp no_inc_duckleftdown_label2
                    inc_duckleftdown_label2:
                    mov duck_leftdown, 1
                    mov duck_leftdown_time, 5
                    no_inc_duckleftdown_label2:
                    jmp continue_label

                duckleftdown3_label:
                    mov si, offset duck_leftdown_3
                    cmp duck_leftdown_time, 0
                    je inc_duckleftdown_label3
                    jmp no_inc_duckleftdown_label3
                    inc_duckleftdown_label3:
                    mov duck_leftdown, 1
                    mov duck_leftdown_time, 5
                    no_inc_duckleftdown_label3:
                    jmp continue_label

        other_label3:
        
        cmp duck_leftup_bool, 1
        je duckleftup_label
        jmp other_label4

            duckleftup_label:
                dec duck_leftup_time
                cmp duck_leftup, 1
                je duckleftup1_label

                cmp duck_leftup, 2
                je duckleftup2_label

                cmp duck_leftup, 3
                je duckleftup3_label

                duckleftup1_label:
                    mov si, offset duck_leftup_1
                    cmp duck_leftup_time, 0
                    je inc_duckleftup_label1
                    jmp no_inc_duckleftup_label1
                    inc_duckleftup_label1:
                    inc duck_leftup
                    mov duck_leftup_time, 5
                    no_inc_duckleftup_label1:
                    jmp continue_label

                duckleftup2_label:
                    mov si, offset duck_leftup_2
                    cmp duck_leftup_time, 0
                    je inc_duckleftup_label2
                    jmp no_inc_duckleftup_label2
                    inc_duckleftup_label2:
                    mov duck_leftup, 1
                    mov duck_leftup_time, 5
                    no_inc_duckleftup_label2:
                    jmp continue_label

                duckleftup3_label:
                    mov si, offset duck_leftup_3
                    cmp duck_leftup_time, 0
                    je inc_duckleftup_label3
                    jmp no_inc_duckleftup_label3
                    inc_duckleftup_label3:
                    mov duck_leftup, 1
                    mov duck_leftup_time, 5
                    no_inc_duckleftup_label3:
                    jmp continue_label
                
        other_label4:
        
        cmp duck_falling_bool, 1
        je duckfalling_label
        jmp other_label5

            duckfalling_label:
                dec duck_falling_time
                cmp duck_falling, 1
                je duckfalling1_label

                cmp duck_falling, 2
                je duckfalling2_label

                duckfalling1_label:
                    mov si, offset duck_falling_1
                    cmp duck_falling_time, 0
                    je inc_duckfalling_label1
                    jmp no_inc_duckfalling_label1
                    inc_duckfalling_label1:
                    inc duck_falling
                    mov duck_falling_time, 2
                    no_inc_duckfalling_label1:
                    jmp continue_label

                duckfalling2_label:
                    mov si, offset duck_falling_2
                    cmp duck_falling_time, 0
                    je inc_duckfalling_label2
                    jmp no_inc_duckfalling_label2
                    inc_duckfalling_label2:
                    mov duck_falling, 1
                    mov duck_falling_time, 2
                    no_inc_duckfalling_label2:
                    jmp continue_label

        other_label5:
        
        cmp duck_hit_bool, 1
        je duckhit_label
        jmp other_label6

            duckhit_label:
                dec duck_hit_time


                mov si, offset duck_hit
                cmp duck_hit_time, 0
                je inc_duckhit_label1
                jmp no_inc_duckhit_label1
                inc_duckhit_label1:
                mov duck_hit_time, 10
                mov duck_increment_x, 0
                mov duck_increment_y, 1   
                call changeDuckSprite
                no_inc_duckhit_label1:
                jmp continue_label

        other_label6:
        continue_label:
    
    ret

change_duck_sprite endp

change_duck_sprite2 proc ; duck 2

    cmp duck_rightup_bool2, 1
        je duckrightup_label2
        jmp other_label12

            duckrightup_label2:
                dec duck_rightup_time2
                cmp duck_rightup2, 1
                je duckrightup1_label2

                cmp duck_rightup2, 2
                je duckrightup2_label2

                cmp duck_rightup2, 3
                je duckrightup3_label2

                duckrightup1_label2:
                    mov si, offset duck_rightup_1
                    cmp duck_rightup_time2, 0
                    je inc_duckrightup_label12
                    jmp no_inc_duckrightup_label12
                    inc_duckrightup_label12:
                    inc duck_rightup2
                    mov duck_rightup_time2, 5
                    no_inc_duckrightup_label12:
                    jmp continue_label2

                duckrightup2_label2:
                    mov si, offset duck_rightup_2
                    cmp duck_rightup_time2, 0
                    je inc_duckrightup_label22
                    jmp no_inc_duckrightup_label22
                    inc_duckrightup_label22:
                    inc duck_rightup2
                    mov duck_rightup_time2, 5
                    no_inc_duckrightup_label22:
                    jmp continue_label2

                duckrightup3_label2:
                    mov si, offset duck_rightup_3
                    cmp duck_rightup_time2, 0
                    je inc_duckrightup_label32
                    jmp no_inc_duckrightup_label32
                    inc_duckrightup_label32:
                    mov duck_rightup2, 1
                    mov duck_rightup_time2, 5
                    no_inc_duckrightup_label32:
                    jmp continue_label2
        
        other_label12:

        cmp duck_rightdown_bool2, 1
        je duckrightdown_label2
        jmp other_label22

            duckrightdown_label2:
                dec duck_rightdown_time2
                cmp duck_rightdown2, 1
                je duckrightdown1_label2

                cmp duck_rightdown2, 2
                je duckrightdown2_label2

                cmp duck_rightdown2, 3
                je duckrightdown3_label2

                duckrightdown1_label2:
                    mov si, offset duck_rightdown_1
                    cmp duck_rightdown_time2, 0
                    je inc_duckrightdown_label12
                    jmp no_inc_duckrightdown_label12
                    inc_duckrightdown_label12:
                    inc duck_rightdown2
                    mov duck_rightdown_time2, 5
                    no_inc_duckrightdown_label12:
                    jmp continue_label2

                duckrightdown2_label2:
                    mov si, offset duck_rightdown_2
                    cmp duck_rightdown_time2, 0
                    je inc_duckrightdown_label22
                    jmp no_inc_duckrightdown_label22
                    inc_duckrightdown_label22:
                    mov duck_rightdown2, 1
                    mov duck_rightdown_time2, 5
                    no_inc_duckrightdown_label22:
                    jmp continue_label2

                duckrightdown3_label2:
                    mov si, offset duck_rightdown_3
                    cmp duck_rightdown_time2, 0
                    je inc_duckrightdown_label32
                    jmp no_inc_duckrightdown_label32
                    inc_duckrightdown_label32:
                    mov duck_rightdown2, 1
                    mov duck_rightdown_time2, 5
                    no_inc_duckrightdown_label32:
                    jmp continue_label2
        
        other_label22:

        cmp duck_leftdown_bool2, 1
        je duckleftdown_label2
        jmp other_label32

            duckleftdown_label2:
                dec duck_leftdown_time2
                cmp duck_leftdown2, 1
                je duckleftdown1_label2

                cmp duck_leftdown2, 2
                je duckleftdown2_label2

                cmp duck_leftdown2, 3
                je duckleftdown3_label2

                duckleftdown1_label2:
                    mov si, offset duck_leftdown_1
                    cmp duck_leftdown_time2, 0
                    je inc_duckleftdown_label12
                    jmp no_inc_duckleftdown_label12
                    inc_duckleftdown_label12:
                    inc duck_leftdown2
                    mov duck_leftdown_time2, 5
                    no_inc_duckleftdown_label12:
                    jmp continue_label2

                duckleftdown2_label2:
                    mov si, offset duck_leftdown_2
                    cmp duck_leftdown_time2, 0
                    je inc_duckleftdown_label22
                    jmp no_inc_duckleftdown_label22
                    inc_duckleftdown_label22:
                    mov duck_leftdown2, 1
                    mov duck_leftdown_time2, 5
                    no_inc_duckleftdown_label22:
                    jmp continue_label

                duckleftdown3_label2:
                    mov si, offset duck_leftdown_3
                    cmp duck_leftdown_time2, 0
                    je inc_duckleftdown_label32
                    jmp no_inc_duckleftdown_label32
                    inc_duckleftdown_label32:
                    mov duck_leftdown2, 1
                    mov duck_leftdown_time2, 5
                    no_inc_duckleftdown_label32:
                    jmp continue_label2

        other_label32:
        
        cmp duck_leftup_bool2, 1
        je duckleftup_label2
        jmp other_label42

            duckleftup_label2:
                dec duck_leftup_time2
                cmp duck_leftup2, 1
                je duckleftup1_label2

                cmp duck_leftup2, 2
                je duckleftup2_label2

                cmp duck_leftup2, 3
                je duckleftup3_label2

                duckleftup1_label2:
                    mov si, offset duck_leftup_1
                    cmp duck_leftup_time2, 0
                    je inc_duckleftup_label12
                    jmp no_inc_duckleftup_label12
                    inc_duckleftup_label12:
                    inc duck_leftup2
                    mov duck_leftup_time2, 5
                    no_inc_duckleftup_label12:
                    jmp continue_label2

                duckleftup2_label2:
                    mov si, offset duck_leftup_2
                    cmp duck_leftup_time2, 0
                    je inc_duckleftup_label22
                    jmp no_inc_duckleftup_label22
                    inc_duckleftup_label22:
                    mov duck_leftup2, 1
                    mov duck_leftup_time2, 5
                    no_inc_duckleftup_label22:
                    jmp continue_label2

                duckleftup3_label2:
                    mov si, offset duck_leftup_3
                    cmp duck_leftup_time2, 0
                    je inc_duckleftup_label32
                    jmp no_inc_duckleftup_label32
                    inc_duckleftup_label32:
                    mov duck_leftup2, 1
                    mov duck_leftup_time2, 5
                    no_inc_duckleftup_label32:
                    jmp continue_label2
                
        other_label42:
        
        cmp duck_falling_bool2, 1
        je duckfalling_label2
        jmp other_label52

            duckfalling_label2:
                dec duck_falling_time2
                cmp duck_falling2, 1
                je duckfalling1_label2

                cmp duck_falling2, 2
                je duckfalling2_label2

                duckfalling1_label2:
                    mov si, offset duck_falling_1
                    cmp duck_falling_time2, 0
                    je inc_duckfalling_label12
                    jmp no_inc_duckfalling_label12
                    inc_duckfalling_label12:
                    inc duck_falling2
                    mov duck_falling_time2, 2
                    no_inc_duckfalling_label12:
                    jmp continue_label2

                duckfalling2_label2:
                    mov si, offset duck_falling_2
                    cmp duck_falling_time2, 0
                    je inc_duckfalling_label22
                    jmp no_inc_duckfalling_label22
                    inc_duckfalling_label22:
                    mov duck_falling2, 1
                    mov duck_falling_time2, 2
                    no_inc_duckfalling_label22:
                    jmp continue_label2

        other_label52:
        
        cmp duck_hit_bool2, 1
        je duckhit_label2
        jmp other_label62

            duckhit_label2:
                dec duck_hit_time2


                mov si, offset duck_hit
                cmp duck_hit_time2, 0
                je inc_duckhit_label12
                jmp no_inc_duckhit_label12
                inc_duckhit_label12:
                mov duck_hit_time2, 10
                mov duck_increment_x_2, 0
                mov duck_increment_y_2, 1   
                call changeDuckSprite2
                no_inc_duckhit_label12:
                jmp continue_label2

        other_label62:
        continue_label2:
    
    ret

change_duck_sprite2 endp

level1Refresh proc

    mov lives, 5
    mov score, 0
    mov shots, 0
    mov round, 1
    mov round_sleep, 3
    mov round_condition, 5

    ; Duck 
    mov duck_x, 220
    mov duck_y, 170
    mov duck_increment_x, 1 ; 1 for +ve, 2 for -ve, 0 for no movement 
    mov duck_increment_y, 2 ; 1 for +ve, 2 for -ve, 0 for no movement
    mov duck_speed, 1

    mov duck_x2, 150
    mov duck_y2, 170
    mov duck_increment_x_2, 2 ; 1 for +ve, 2 for -ve, 0 for no movement 
    mov duck_increment_y_2, 2 ; 1 for +ve, 2 for -ve, 0 for no movement
    mov duck_speed2, 1


    ; for random duck movement
    mov right_collision, 0
    mov left_collision, 1
    mov bottom_collision, 1
    mov top_collision, 1

    ; for random duck movement
    mov right_collision2, 0
    mov left_collision2, 1
    mov bottom_collision2, 1
    mov top_collision2, 1

    mov duck_rightup, 1
    mov duck_rightup_time, 5
    mov duck_rightup_bool, 1

    mov duck_rightup2, 1
    mov duck_rightup_time2, 5
    mov duck_rightup_bool2, 0
 
    mov duck_rightdown, 1
    mov duck_rightdown_time, 5
    mov duck_rightdown_bool, 0

    mov duck_rightdown2, 1
    mov duck_rightdown_time2, 5
    mov duck_rightdown_bool2, 0
 
    mov duck_falling, 1
    mov duck_falling_time, 2
    mov duck_falling_bool, 0

    mov duck_falling2, 1
    mov duck_falling_time2, 2
    mov duck_falling_bool2, 0
 
    mov duck_leftdown, 1
    mov duck_leftdown_time, 5
    mov duck_leftdown_bool, 0

    mov duck_leftdown2, 1
    mov duck_leftdown_time2, 5
    mov duck_leftdown_bool2, 0
 
    mov duck_leftup, 1
    mov duck_leftup_time, 5
    mov duck_leftup_bool, 0

    mov duck_leftup2, 1
    mov duck_leftup_time2, 5
    mov duck_leftup_bool2, 1
 
    mov duck_hit_bool, 0
    mov duck_hit_time, 10

    mov duck_hit_bool2, 0
    mov duck_hit_time2, 10

    ; mouse events
    mov mouse_status, 0      ; Variable to store mouse status
    mov xcoor, 0
    mov ycoor, 0
    mov bool_collision_x, 0
    mov bool_collision_y, 0
    mov count, 0

    mov bkground_color, 0Bh

    ret
level1Refresh endp

pauseScreen proc

    ; video mode
    MOV AH, 0
    MOV AL, 3h
    INT 10h

    ;CLEAR SCREEN
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H

    MOV AH, 9
    XOR DH, DH
    LEA DX, game_paused
    INT 21H

    
    pause_input:

        ; waiting for input
        MOV ah, 0
        INT 16H 
        
        cmp al, 1Bh
        je returnTo_menu_screen

        cmp AX, 3920H
        je end_pause

        jmp continue_pause_input

        returnTo_menu_screen:
        mov page_number, 2
        jmp end_pause

        continue_pause_input:
        jmp pause_input

    end_pause:
    ret

pauseScreen endp

multidigit_print proc

    mov count1, 0
    Pushing:

        mov ax, number
        mov dx, 0
        mov bx, 10
        div bx
        push dx
        mov number, ax
        inc count1
        cmp ax, 0
        jne Pushing

    mov al, count1
    xor ah, ah
    mov countDigits, ax

    print:
        cmp count1, 0
        je exit
        dec count1
        pop dx
        add dx, 48
        mov ah, 02h
        int 21h
        jmp print

    exit:

        ret

multidigit_print endp

endScreen proc

    ; video mode
    MOV AH, 0
    MOV AL, 3h
    INT 10h

    ;CLEAR SCREEN
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H

    MOV AH, 9
    XOR DH, DH
    LEA DX, game_end
    INT 21H

    ;moving the cursor and ask name
    MOV DL, 25
    MOV DH, 20
    MOV BH, 0
    MOV AH, 02h
    int 10h

    MOV AH,09
    MOV DH,0
    MOV DX, offset msg_score1
    INT 21H

    ;MOVE THE CURSOR THEN TAKE THE PLAYER NAME
    MOV DL, 42
    MOV DH, 20
    MOV BH, 0
    MOV AH, 02h
    int 10h

    mov ax, score
    mov number, AX
    call multidigit_print

    ; check for any key press
    mov ah, 0
    int 16H
    
    mov page_number, 2

    end_screen:
    ret

endScreen endp

ConvertNumberToString PROC
    ; Convert AX to a string representation in buffer
    mov ax, score
    MOV DI, OFFSET buffer    ; Pointer to the buffer
    ADD DI, 3              ; Move DI to the end of the buffer
    mov bx, 10

ConvertLoop:
    XOR DX, DX              ; Clear DX for division
    DIV bx                  ; Divide BX:DX by SI (10)
    ADD DL, '0'             ; Convert remainder to ASCII
    DEC DI                  ; Move DI back one position in the buffer
    MOV [DI], DL            ; Store ASCII character in buffer
    CMP AX, 0               ; Check if quotient is zero
    JNZ ConvertLoop         ; If not, continue loop
    RET

ConvertNumberToString ENDP

update_score_file proc

    mov ah, 3Dh
    mov al, 1
	mov dx, offset filename
	int 21h  ; create file... 
	mov handle, ax

    mov al, 2
	mov bx, handle
	mov cx, 0
	mov dx, 0
	mov ah, 42h
	int 21h ; seek... 

	mov bx, handle
	mov dx, offset player_name
    add dx, 2
	mov cx, player_name_count
	mov ah, 40h
	int 21h ; write to file... 

    mov bx, handle
	mov dx, offset colon
	mov cx, 2
	mov ah, 40h
	int 21h ; write to file... 

    call ConvertNumberToString
    mov bx, handle
	mov dx, offset buffer
	mov cx, 3
	mov ah, 40h
	int 21h ; write to file... 

    mov bx, handle
	mov dx, offset newline
	mov cx, 2
	mov ah, 40h
	int 21h ; write to file... 

	mov bx, handle
	mov ah, 3eh
	int 21h ; close file... 

    ret

update_score_file endp

level1Screen proc
    ; video mode
    MOV AH, 0
    MOV AL, 13h
    INT 10h

    ;CLEAR SCREEN
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H

    call level1Refresh
    call DRAW_STATIC

    mov ax, 1
    int 33h


    ; mov ax, 2
    ; int 33h

    infloop: 

        call change_duck_sprite
        call draw_duck
        call sleep
        call rightFrameCollision
        call leftFrameCollision
        call bottomFrameCollision
        call topFrameCollision
        call duckMovement
        call drawLivesShotsScore
        call mouseDuckCollision

        ; changing round
        mov ax, 5
        sub al, lives
        add ax, score

        cmp ax, round_condition
        je change_round
        jmp same_round

        change_round:

            cmp round_condition, 11
            jg same_round
            inc round
            dec round_sleep
            add round_condition, 5

        same_round:

        cmp lives, 0
        je end_level1

        ;   Checking if the player has pressed any key or not.

        MOV AH, 1H
        INT 16H
        JZ No_Input

        MOV AH, 0H
        INT 16H
        CMP AL, 27D ;   Checking if the player has pressed the Escape key or not.
        je pause_screen
        cmp al, 049
        je change_background
        jmp No_Input

        change_background:

            cmp bkground_color, 0Bh
            je night_mode1
            mov bkground_color, 0Bh
            jmp continue

            night_mode1:
            mov bkground_color, 01h
            jmp continue


        pause_screen:
        call pauseScreen
        cmp page_number, 2
        je end_level1

        continue:
        
        ; video mode
        MOV AH, 0
        MOV AL, 13h
        INT 10h

        ;CLEAR SCREEN
        MOV AX, 0600H
        MOV BH, 7
        MOV CX, 0
        MOV DX ,184FH
        INT 10H

        call DRAW_STATIC

    mov ax, 1
    int 33h

        No_Input:
        
    jmp infloop

    end_level1:
    call endScreen
    call update_score_file

    ret 
level1Screen endp

level2Screen proc
    ; video mode
    MOV AH, 0
    MOV AL, 13h
    INT 10h

    ;CLEAR SCREEN
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H

    call level1Refresh
    call DRAW_STATIC

    mov ax, 1
    int 33h

    infloop2:

        continue_label1:
        
        call change_duck_sprite
        call draw_duck
        call duckMovement
        call rightFrameCollision
        call leftFrameCollision
        call bottomFrameCollision
        call topFrameCollision
        call mouseDuckCollision

        ; call mouseDuckCollision2
        call change_duck_sprite2
        call draw_duck2
        call duckMovement_2
        call rightFrameCollision2
        call leftFrameCollision2
        call bottomFrameCollision2
        call topFrameCollision2
        

        call drawLivesShotsScore
        

        ; changing round

        call sleep2
        mov ax, 5
        sub al, lives
        add ax, score

        cmp ax, round_condition
        je change_round1
        jmp same_round1

        change_round1:

            cmp round_condition, 11
            jg same_round1
            inc round
            dec round_sleep
            add round_condition, 5

        same_round1:

        cmp lives, 0
        je end_level2

        cmp shots, 50
        je end_level2

        ;   Checking if the player has pressed any key or not.

        MOV AH, 1H
        INT 16H
        JZ No_Input1

        MOV AH, 0H
        INT 16H
        CMP AL, 27D ;   Checking if the player has pressed the Escape key or not.
        je pause_screen2
        cmp al, 049
        je change_background2
        jmp No_Input1

        change_background2:

            cmp bkground_color, 0Bh
            je night_mode
            mov bkground_color, 0Bh
            jmp continue_2

            night_mode:
            mov bkground_color, 01h
            jmp continue_2


        pause_screen2:
        call pauseScreen
        cmp page_number, 2
        je end_level2

        continue_2:
        ; video mode
        MOV AH, 0
        MOV AL, 13h
        INT 10h

        ;CLEAR SCREEN
        MOV AX, 0600H
        MOV BH, 7
        MOV CX, 0
        MOV DX ,184FH
        INT 10H

        call DRAW_STATIC

    mov ax, 1
    int 33h

        No_Input1:
        
    jmp infloop2

    end_level2:
    call endScreen
    call update_score_file
    ret 
level2Screen endp

splashScreen proc

    ; video mode
    MOV AH, 0
    MOV AL, 3h
    INT 10h

    ;CLEAR SCREEN
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H
    
    ;preparing registers for printing
    mov bl,01h
    mov ah,0eh
    mov di,7
    mov si,0

    MOV AH, 9
    XOR DH, DH
    LEA DX, splash_screen
    INT 21H

    mov ah, 0
    int 16h

    
    ret

splashScreen endp

MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    call splashScreen

    Game_loop:

        mov al, page_number

        cmp al, 0
        je end_game_label

        cmp al, 1
        je title_screen_label

        cmp page_number, 2
        je menu_label

        cmp page_number, 3
        je level1_label

        cmp page_number, 4
        je level2_label

        cmp page_number, 5
        je highscore_label

        title_screen_label:
        call titleScreen
        jmp continue_game_loop

        menu_label:
        call menuScreen
        jmp continue_game_loop

        level1_label:
        call level1Screen
        jmp continue_game_loop

        level2_label:
        call level2Screen
        jmp continue_game_loop

        highscore_label:
        call highscoreScreen
        jmp continue_game_loop
        
        continue_game_loop:
        jmp Game_loop

    end_game_label:
    MOV AX, 0600H
    MOV BH, 7
    MOV CX, 0
    MOV DX ,184FH
    INT 10H
    
    mov ah, 4ch
    int 21h
    
MAIN ENDP

END MAIN


; INT 16h / AH = 00h - get keystroke from keyboard (no echo).
; return:
; AH = BIOS scan code.
; AL = ASCII character.
; (if a keystroke is present, it is removed from the keyboard buffer).
; Back to Top 

; INT 16h / AH = 01h - check for keystroke in the keyboard buffer.
; return:
; ZF = 1 if keystroke is not available.
; ZF = 0 if keystroke available.
; AH = BIOS scan code.
; AL = ASCII character.
; (if a keystroke is present, it is not removed from the keyboard buffer).

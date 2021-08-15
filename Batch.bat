@echo off
echo CLI Titanfall 2 sound seperator
setlocal enabledelayedexpansion enableextensions
:restart
set /p Input="Input Path:"
cd /d %Input%
cd ..\
set origin=%CD%
if not exist %origin%\converted_sounds\ mkdir "%origin%\converted_sounds\"
cd "%origin%\converted_sounds\"
set Conv=%CD%
if exist "%origin%\log.txt" del "%origin%\log.txt"

cd "%input%"
for /f %%A in ('dir ^| find "File(s)"') do set OriginalTotalfileCount=%%A

for %%i in (*) do (
    cd %input%
if exist "%Conv%\%%~ni.mp3" ( 
    set /a CompressedTotalfileCount+=1
    set /a Percent="((CompressedTotalfileCount*100)/OriginalTotalfileCount)"
    echo [skip  ][ !CompressedTotalfileCount!/!OriginalTotalfileCount!--!Percent!%% ][ Already Created: %%i ]
    ) else (    
        ffmpeg -i "%%i" -vn -ar 44100 -ac 2 -loglevel quiet -q:a 0 "%Conv%\%%~ni.mp3" 
            cd %Conv%
               set /a CompressedTotalfileCount+=1
               set /a Percent="((CompressedTotalfileCount*100)/OriginalTotalfileCount)"
               echo [FFmpeg][ !CompressedTotalfileCount!/!OriginalTotalfileCount!--!Percent!%% ][ %%i ]
    ) 
)
:skip 

::Main split
    cd %Conv%
    if not exist "%origin%\Dialogue" mkdir "%origin%\Dialogue" > NUL
        set Dialogue="%origin%\Dialogue"
            set /a number=0
        for %%i in (*diag_* *imc* *mcor*) do (
            copy /y %%i %Dialogue% > NUL
            set /a number+=1
            echo [Split1][ !number!--???%% ][*diag_* *imc* *mcor*][%%i]







        )





::Titans

    ::Vanguard
                            set Enemy=Vanguard
                            set Org=imc
                            set Type=Titan
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Tone
                            set Enemy=Tone
                            set Org=imc
                            set Type=Titan
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Scorch    
                            set Enemy=Scorch
                            set Org=imc
                            set Type=Titan
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Ronin
                            set Enemy=Ronin
                            set Org=imc
                            set Type=Titan
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Northstar
                            set Enemy=Northstar
                            set Org=imc
                            set Type=Titan
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Legion
                            set Enemy=legion
                            set Org=imc
                            set Type=Titan
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Ion
                            set Enemy=Ion
                            set Org=imc
                            set Type=Titan
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::BT
                            set Enemy=Ion
                            set Org=imc
                            set Type=Titan
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
:skip2
:: Main Bosses
    set Modes=*_amphp_* *_bh_* *_arena* *_aslt_* *_bombr_* *_ctf_* *_extract_* *_ffa_* *_fortwar_* *_freea_* *_front* *_gnrc_* *_hp_* *_kc_* *_lts* *_mfd* *_mp_* *_mtitan_* *_mw_* *_gnrc_* *_phunt_* *_pvp_* *_scoring_* *_tmfd_* *_tw_* *_raid_*
    ::Kane
                            set Enemy=Kane
                            set Org=imc
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Ash
                            set Enemy=Ash
                            set Org=imc
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
            set Multidir="%origin%\%Type%\%Enemy%_multiplayer"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
                for %%i in (%modes%) do (
                move %%i "%origin%\%Type%\%Enemy%_Multiplayer" > NUL
                    )
                    
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
        copy /y /b "%multidir%" "%origin%\%enemy%_multiplayer.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 and %enemy%_multiplayer.mp3 created ]
    ::Richter
    
                            set Enemy=Richter
                            set Org=imc
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Viper
                            set Enemy=Viper
                            set Org=imc
                            set Org2=mcor
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Slone
                            set Enemy=Slone
                            set Org=imc
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 created ]
    ::Sarah Briggs
                            set Enemy=Sarah
                            set Org=mcor
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
            set Multidir="%origin%\%Type%\%Enemy%_multiplayer"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
                for %%i in (%modes%) do (
                move %%i "%origin%\%Type%\%Enemy%_Multiplayer" > NUL
                    )
                    
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
        copy /y /b "%multidir%" "%origin%\%enemy%_multiplayer.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 and %enemy%_multiplayer.mp3 created ]
    ::Kuben Blisk
                            set Enemy=Blisk
                            set Org=imc
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
            set Multidir="%origin%\%Type%\%Enemy%_multiplayer"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
                for %%i in (%modes%) do (
                move %%i "%origin%\%Type%\%Enemy%_Multiplayer" > NUL
                    )
                    
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
        copy /y /b "%multidir%" "%origin%\%enemy%_multiplayer.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 and %enemy%_multiplayer.mp3 created ]
    ::Barker
                            set Enemy=Barker
                            set Org=mcor
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
            set Multidir="%origin%\%Type%\%Enemy%_multiplayer"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
                for %%i in (%modes%) do (
                move %%i "%origin%\%Type%\%Enemy%_Multiplayer" > NUL
                    )
                    
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
        copy /y /b "%multidir%" "%origin%\%enemy%_multiplayer.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 and %enemy%_multiplayer.mp3 created ]
    ::Gates
                            set Enemy=Gates
                            set Org=mcor
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
            set Multidir="%origin%\%Type%\%Enemy%_multiplayer"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
                for %%i in (%modes%) do (
                move %%i "%origin%\%Type%\%Enemy%_Multiplayer" > NUL
                    )
                    
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
        copy /y /b "%multidir%" "%origin%\%enemy%_multiplayer.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 and %enemy%_multiplayer.mp3 created ]
    ::Marder
                            set Enemy=Marder
                            set org=imc
                            set Type=MainCharacters
            cd %Conv%
            if not exist "%origin%\%Type%\%Enemy%" mkdir "%origin%\%Type%\%Enemy%" > NUL
            set Enemydir="%origin%\%Type%\%Enemy%"
            set Multidir="%origin%\%Type%\%Enemy%_multiplayer"
        echo [Split ][ %Filenum%--??%% ][ Created %Type%\%Enemy% folder ]
                    set /a number=0
            for %%i in (*diag_%Enemy%* *_%Org%_%Enemy%* *diag_gs_titan%Enemy%*) do (
                copy /y %%i "%origin%\%Type%\%Enemy%" > NUL 
                    set /a number+=1
                    echo [Split ][ !number!--???%% ]
                )
                    echo [Split ][ !number!--100%% ] [ !number! files copied ]
        cd %Enemydir%
                for %%i in (%modes%) do (
                move %%i "%origin%\%Type%\%Enemy%_Multiplayer" > NUL
                    )
                    
            for %%i in (*_L2* *_L3* *_L4*) do ( del %%i )
        copy /y /b "%Enemydir%" "%origin%\%Enemy%.mp3" > NUL
        copy /y /b "%multidir%" "%origin%\%enemy%_multiplayer.mp3" > NUL
                    echo [Split ][ .wav ----> .mp3 ] [ %Enemy%.mp3 and %enemy%_multiplayer.mp3 created ]
:END

                    echo [Done  ][ 99999/99999--100%%][ File conversion complete! ]

    timeout 6
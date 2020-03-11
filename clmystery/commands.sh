set -e
# Remove previous files generated
rm -f clues.txt id_card_*.txt ultimate_suspect.txt

# Search for the main 3 CLUES
grep -R CLUE mystery > clues.txt

# Found the suspects that has all the 4 id cards found (CLUE:2)
cat mystery/memberships/Museum_of_Bash_History \
    mystery/memberships/Terminal_City_Library \
    mystery/memberships/Delta_SkyMiles\
    mystery/memberships/AAA \
    | sort \
    | uniq -c \
    | grep '4.*' -o \
    | cut -d ' ' -f2,3 > id_card_suspects.txt

# Create a list of only men (CLUE:1)
cat mystery/people \
    | tr '	' ,  \
    | cut -d ',' -f1,2 \
    | grep ',M' \
    | cut -d ',' -f1 > men.txt

# Filter the id_card_suspects considering only men (CLUE: 1)
cat men.txt id_card_suspects.txt \
    | sort \
    | uniq -c \
    | grep '2.*' -o \
    | cut -d ' ' -f2,3 > id_card_suspects_men.txt

# Considering the id_card_suspects_men.txt, filter only who has at
# least 6 of Height from vehicle database (CLUE: 1)
cat id_card_suspects_men.txt \
    | xargs -L 1 -I@ grep -A 1 @ mystery/vehicles \
    | grep -B 1 'Height: 6' \
    | grep Owner:  \
    | cut -d ':' -f2 \
    | awk '$1=$1' > id_card_suspects_men_tall.txt

# After found new evidences by interviewing: Annabel Church
# Blue Honda car, it has a specifc plate, but this doesn't matter.
cat id_card_suspects_men_tall.txt \
    | xargs -L 1 -I@ grep -B 2 @ mystery/vehicles \
    | grep -C 1 'Color: Blue' \
    | grep -A 2 'Make: Honda' \
    | grep Owner: \
    | cut -d : -f2 \
    | awk '$1=$1' > ultimate_suspect.txt

# Interview the ultimate_suspect.txt !
echo "FINAL INTERVIEW ----"
cat mystery/interviews/interview-9620713
echo "--------------------"

grep -qi $(md5sum ultimate_suspect.txt | cut -d ' ' -f1)  encoded \
    && echo CORRECT\! GREAT WORK, GUMSHOE. \
    || echo SORRY, TRY AGAIN.

echo "Murder: " $(cat ultimate_suspect.txt)

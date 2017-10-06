# cerner_2^5_2017 #

[1:100]BOOL doors;

FOR i FROM 1 TO 100 DO
    doors[i] := FALSE
OD;

FOR i FROM 1 TO 100 DO
    FOR k FROM i BY i TO 100 DO
        doors[k] := NOT doors[k]
    OD
OD;

FOR i FROM 1 TO 100 DO
    printf(($g" door: "gl$,i,(doors[i]|"open"|"close")))
OD
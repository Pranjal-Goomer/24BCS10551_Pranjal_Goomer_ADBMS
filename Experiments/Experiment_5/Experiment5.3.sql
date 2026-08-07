DO $$

    DECLARE 
        AGE INT: = 18;
        BEGIN
        IF AGE > 18 THEN 
        RAISE NOTICE 'Your age is % AND YOU ARE ELGIBLE TO VOTE', AGE;
        END IF;

        RAISE NOTICE 'YOU ARE INSIDE BEGIN END BLOCK';
        END;

$$
       


DO $$

    DECLARE 
        AGE INT: = 17;
        BEGIN
        IF AGE > 18 THEN 
        RAISE NOTICE 'Your age is % AND YOU ARE ELGIBLE TO VOTE', AGE;

        ELSE
        RAISE NOTICE 'Your age is % AND YOU ARE NOT ELGIBLE TO VOTE', AGE;
        END IF;

        RAISE NOTICE 'YOU ARE INSIDE BEGIN END BLOCK';
        END;

$$
       


DO $$

    DECLARE 
        VAL INT: = 17;
        BEGIN
        IF VAL > 18 THEN 
        RAISE NOTICE 'Your age is % AND YOU ARE ELGIBLE TO VOTE', VAL;

        ELSE IF VAL > 10 && VAL < 20 then
        RAISE NOTICE 'Your age is % AND RANGE BETWEEN 11 TO 20', VAL;

        ELSE
        RAISE NOTICE 'Your age is % AND YOU ARE NOT ELGIBLE TO VOTE', VAL;
        END IF;

        RAISE NOTICE 'YOU ARE INSIDE BEGIN END BLOCK';
        END;

$$
       
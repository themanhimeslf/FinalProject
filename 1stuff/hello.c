//#include <stdio.h>
//#include <stdlib.h>

main() {

    int lucky = 23;

    printf("Value: %i \n", lucky);
    printf("Adress: %p \n", &lucky);

    char hello[] = "tester";

    char *str = malloc(4);

    str[0] = 'h';
    str[1] = 'e';
    str[2] = 'y';
    str[3] = '\0';

    struct humanoid {
        char dna [50];
        int  age;
        float weight;
    };
    

    
    return 0;
}

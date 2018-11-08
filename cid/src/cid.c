/*
 ============================================================================
 Name        : cid.c
 Author      : Vasilije Blaženi
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#define VERZIJA "V0.1   08.11.2018."

#include <stdio.h>
#include <stdlib.h>


unsigned char
duzina_tipa_podatka( char format[] )
{	// Podrazumeva se da je pri dodeli vrednosti nizu naredaba za one koje predstavljaju format ("%...") izvrsena provera i da su svi formati ispravni.
	char	*p = format + 1;	// preskakanje '%' na pocetku specifikatora formata
	short	br_kar;


	if( sscanf( p, "%hdc", &br_kar ) == 1 )	// %nc
		return br_kar;

	if( *p == 'c' || strncmp( p, "hh", 2 ) == 0 )	// p, %hhd, %hhu, %hho, %hhx, %hhX
		return sizeof( char );

	if( *p == 'h' )	// %hd, %hu, %ho, %hx, %hX
		return sizeof( short );

	if( strchr( "duoxX", *p ) != NULL )	// %d, %u, %o, %x, %X
		return sizeof( int );

	if( strcmp( p, "ld" ) == 0 )
		return sizeof( long );

	if( *p == 'l' )	// %la, %lA, %le, %lE, %lf, %lF, %lg, %lG
		return sizeof( float );

	if( *p == 'l' )	// %lf
		return sizeof( float );

	if( strchr( "aAeEfFgG", *p ) != NULL )	// %a, %A, %e, %E, %f, %F, %g, %G

		return sizeof( int );

	if( *p == 'L' )	// %La, %LA, %Le, %LE, %Lf, %LF, %Lg, %LG
		return sizeof( long double );

	errx( EXIT_FAILURE, "%s(): GRESKA: Nepostojeci specifikator formata %s\n",
		__func__, format );
}


int main( void )
{
	char	red[ 1000 ];
	FILE	*pok_dat;


puts("Pocetak\n"); /* prints  */

	while( 1 )
	{
		if( fgets( red, sizeof red, pok_dat ) == NULL )
		{
			if (feof( fp )) {
			              // We're at the end of the file.
			              return EXIT_SUCCESS;
			          } else {
			              // An error occurred.
			              perror ("fgets()");
			              return EXIT_FAILURE;
			          }
		      puts( buffer );

		}


		if( strcmp ( red, "-p\n" ) == 0 )
		{
		}

		// Obrada zahteva za veličinu tipova podataka:

		else if( strcmp ( red, "%c\n" ) == 0 )
			printf( "%d", sizeof( char ) );
		else if( strcmp ( red, "%hd\n" ) == 0 )
			printf( "%d", sizeof( short ) );
		else if( strcmp ( red, "%d\n" ) == 0 )
			printf( "%d", sizeof( int ) );
		else if( strcmp ( red, "%ld\n" ) == 0 )
			printf( "%d", sizeof( long ) );
		else if( strcmp ( red, "%t\n" ) == 0 )
			printf( "%d", sizeof( time_t ) );
		else if( strcmp ( red, "%f\n" ) == 0 )
			printf( "%d", sizeof( float ) );
		else if( strcmp ( red, "%lf\n" ) == 0 )
			printf( "%d", sizeof( double ) );
		else if( strcmp ( red, "%Lf\n" ) == 0 )
			printf( "%d", sizeof( long double ) );

		// Obrada zahteva za otvaranje/obrazovanje datoteke:

		else
		{	// ime datoteke
			red[ strlen( red ) - 1 ] = '\0';	// izbacivanje '\n' s kraja reda

			if( ( pok_dat = fopen( red, "r+" ) == NULL ) {
			      perror ("fopen()");
			      return EXIT_FAILURE;
			  }
		}
	}

	return EXIT_SUCCESS;
}

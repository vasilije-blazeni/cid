#! /usr/bin/gawk -f

C_program = "cid"

func duzina_tipa_podatka( format,     )
{
	if( strmatch
match(STRING, REGEXP [, ARRAY])'
     The `match' function searches STRING for the longest, leftmost
     substring matched by the regular expression, REGEXP.  It returns
     the character position, or "index", at which that substring begins
     (one, if it starts at the beginning of STRING).  If no match is
     found, it returns zero.

	if( match( format, /%(c|hh[duoxX])/ )
		print "%c"
	else if( match( format, /%[[:digit:]c/ )
	{
		print "%c"
	}
		
		    "%(((h{0,2})[duoxX])|(l|L)?f|[[:digit:]]c)";

	if( getline duzina_tipa[ format ] < c_program )

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






				if( strcmp( format, "%c" ) == 0 )
				else if( strcmp( format, "%hhu" ) == 0 )
				else if( strcmp( format, "%hd" ) == 0 )
				else if( strcmp( format, "%hu" ) == 0 )
				else if( strcmp( format, "%d" ) == 0 )
				else if( strcmp( format, "%u" ) == 0 )
				else if( strcmp( format, "%ld" ) == 0 )
				else if( strcmp( format, "%f" ) == 0 )
				else if( strcmp( format, "%lf" ) == 0 )
				else if( strcmp( format, "%Lf" ) == 0 )









	print format |& C_program
	C_program |& getline
}


func otvori_datoteku( datoteka )
{
	print datoteka |& C_program
	odziv = ( C_program |& getline bafer )

	if( !( odziv == 1 && bafer == "EOK" ) )
	{
		print "\notvori_datoteku(", datoteka, "): GRESKA: " > "/dev/stderr"

		if( odziv == 1 )	// bafer != "EOK"
			print "nema EOK\n\n" > "/dev/stderr"
		else if( odziv == -1 )
			print ERRNO "\n" > "/dev/stderr"
		else
			print "EOF\n" > "/dev/stderr"

		exit
	}
}


BEGIN	\
{
	for( i = 0; i < ARGC; i++ )
	{
		if( ARGV[ i ] == "-i" )
			izv = 1

		if( ARGV[ i ] == "-i" )
			delete ARGV[ i ]
	}

	for( i = 0; i < ARGC; i++ )
	{
		if( izv )
			printf "%s ", ARGV[ i ]
	}

	if( izv )
		print "\n"
}

izv && ime_dat != FILENAME
{
	printf "\nDatoteka \"%s\":\n\n", ime_dat = FILENAME
}

{
	for( i = 1; i < NF; i++ )
		print "naredba[", i, "] =", $i
}

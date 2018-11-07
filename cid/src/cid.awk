#! /usr/bin/gawk -f

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

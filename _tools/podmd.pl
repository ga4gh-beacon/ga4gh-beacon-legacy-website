#!/usr/bin/perl -w

use Data::Dumper;
use File::Basename;
use POSIX qw(strftime);
use YAML::XS qw(LoadFile);

no warnings 'uninitialized';

=markdown
The "podmd.pl" script parses inline documentation from - now various - code files
and writes it to a given output directory, in the format of Jekyll-compatible
Markdown files, i.e. including a YAML header.

* location: `__Jekyll_site_directory__/_tools/`

Processing the input files is based on parameters provided in the "podmd.yaml"
configuration file. Please have a look for examples there.

For now, the functions of the script are optimised for use in the
[Progenetix](http://info.progenetix.org) documentation environment but may be
adapted for other purposes.

=cut

my $here_path   =   File::Basename::dirname( eval { ( caller() )[1] } );

my $config      =   LoadFile($here_path.'/podmd.yaml') or die print 'Content-type: text'."\n\n¡No podmd.yaml file in this path!";
my $today			  =		strftime("%F", gmtime());
my $out_dir			=		$here_path.'/'.$config->{output_dir};
mkdir $out_dir;

foreach my $scope (keys %{ $config->{packages} }) {

	my $package		=		$config->{packages}->{$scope};
	my $in_dir		=		$package->{input};
	if ($in_dir =~ /^\.\.?\//) {
		$in_dir			=		$here_path.'/'.$in_dir }

	opendir DIR, $in_dir;
	my @cFiles  	=   grep( /\.\w+?$/, readdir(DIR));
	close DIR;

	foreach my $cfName (@cFiles) {

		if (! grep{ $cfName =~ /$_$/ } @{ $package->{extensions} }) { next }

		print Dumper($cfName);

		my $cFile		=		join('/', $in_dir, $cfName);
		open  FILE, "$cFile" or die "No file $cFile $!";
		local   $/;          	# no input separator
		my @podData =   split(/\r\n?|\n/, <FILE>);
		close FILE;

		my $flag		=		-1;
		my @md;

=markdown
For the scanned files, comment lines are read in if they are between one of the
`md_starts` and `md_stops` markers, which can be defined as global parameters
or package specific.

=cut

		foreach my $line (@podData) {
			if (grep{ $line =~ /^$_/ } @{ $config->{md_stops} },  @{ $package->{md_stops} }) { $flag = -1 }
			if ($flag == 1) { push(@md, $line) }
			if (grep{ $line =~ /^$_/ } @{ $config->{md_starts} },  @{ $package->{md_starts} }) { $flag = 1 }
		}

		if (! grep{ /.../ } @md) { next }

=markdown
No file is created if there isn't any content in the text buffer.

If documentation has been found, the YAML-prefixed markdown file is created in
the `output_dir` target directory.

The [YAML header](https://progenetix.github.io/progenetix-site-template/howto/yamlheader/)
contains directives and parameters for the processing of the page through the
[__Jekyll__](https://jekyllrb.com) website generation engine.

=cut

		my $mdFile	=		join('/', $out_dir, join('-', $config->{output_pre}, $scope, $cfName));
		$mdFile			=~	s/\.\w+?$/.md/;
		my $mdFtxt	=		<<END;
---
title: "$scope::$cfName $package->{language} Code Documentation"
layout: default
www_link: $package->{web_project_link}
excerpt_separator: <!--more-->
date: $today
category:
  - $config->{category}
tags:
  - $package->{language}
  - $scope
END

		foreach (@{ $config->{tags} }) { $mdFtxt .=	"  - ".$_."\n" }
		foreach (@{ $package->{tags} }) { $mdFtxt .=	"  - ".$_."\n" }

		$mdFtxt			.=		<<END;
---

## {{ page.title }}

<!--more-->

END

		if ($package->{web_source_link}) {
			$mdFtxt .=	"* [Source Link](".$package->{web_source_link}.'/'.$cfName.") \n" }

		$mdFtxt			.=	"\n".join("\n", @md)."\n";

		print 			Dumper($mdFile);
		open				(FILE, ">", $mdFile) || warn 'output file '.$mdFile.' could not be created.';;
		print				FILE  $mdFtxt;
		close 			FILE;

	}
}

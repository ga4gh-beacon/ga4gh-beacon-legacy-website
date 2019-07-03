#!/usr/bin/perl

=podmd
The bootstrap_site is a utility for creating the structure of __Progenetix 
Jekyll Website Template__ based websites. The current functions are:

* create list pages for all categories defined in `_config.yml`, separate for
standard (alphabetically sorted) and reverse date sorted categories
* as for categories, do the same for tags
* check/add collections directories

Additional options:

* with the argument `-update y`, users will be prompted if they want to download
the newest `style.css` and `layout.css` files from the "Progenetix :: Template"
repository - this will overwrite the existing files!

=cut

use File::Basename;
use File::Copy;
use LWP::Simple;
use YAML::XS qw(LoadFile DumpFile);
use Data::Dumper;

binmode STDOUT, ":utf8";

my %args        =   @ARGV;

$args{-master}	||=	'progenetix/progenetix-site-template';
$args{-update}	||=	'n';

my @cat_blocks  =   qw(General Products);

my $here_path   =   File::Basename::dirname( eval { ( caller() )[1] } );
my $base_path   =   $here_path.'/..';
our $config     =   LoadFile($base_path.'/_config.yml') or die "¡No _config.yml file in this path!";

print $base_path."\n";

# updating the layout and css files from the master repo
# be sure to add css modifications to "site_style.css", since "style.css"
# gets overwritten
if ($base_path !~ /$args{-master}/) {

	my $base_url	=		'https://raw.githubusercontent.com/'.$args{-master}.'/master';
	my @master_f	=		('_layouts/default.html', 'assets/css/style.css');

	if ($args{-update} =~ /y/i)	 {

		foreach (@master_f) {

			my $url			=		$base_url.'/'.$_;
			my $file		=		$base_path.'/'.$_;
			if ($args{-prompt} =~ /y/i) {
				print <<END;

################################################################################

updating $_ from $args{-master}

$url => $file

Please hit ENTER to proceed, or type "n" to skip:
END
				my $resp = <STDIN>;
				if ($resp =~ /^n/i) {
					print "skipped $_\n\n";
					next;
				}
			}
			getstore($url, $file);
			print "updated $_\n\n";

}}}

my @items;
my $template    =   $base_path.'/_templates/_tags.md';
my $type_path   =   $base_path.'/tags';

#tags
$template       =   $base_path.'/_templates/_tags.md';
$type_path      =   $base_path.'/tags';
@items          =   @{ $config->{cloud_tags} };
mkdir $type_path;
foreach (@items) { copy($template, $type_path.'/'.$_.'.md') }
foreach (@items) { print $type_path.'/'.$_.'.md'."\n" }

$template       =   $base_path.'/_templates/_tags_year_sorted.md';
@items          =   @{ $config->{tags_year_sorted} };
foreach (@items) { copy($template, $type_path.'/'.$_.'.md') }
foreach (@items) { print $type_path.'/'.$_.'.md'."\n" }

#categories
$template       =   $base_path.'/_templates/_categories.md';
$type_path      =   $base_path.'/categories';
mkdir $type_path;
@items          =   ();
foreach $cat_block (keys %{ $config->{nav_cat_blocks} }) {
  if ($config->{nav_cat_blocks}->{$cat_block} =~ /\,categories\,/) {
    push(
     @items,
     keys %{ $config->{$cat_block} },
    );
  }
}
foreach (@items) { copy($template, $type_path.'/'.$_.'.md') }
foreach (@items) { print $type_path.'/'.$_.'.md'."\n" }

$template       =   $base_path.'/_templates/_categories_year_sorted.md';
@items          =   @{ $config->{categories_year_sorted} };
foreach (@items) { copy($template, $type_path.'/'.$_.'.md') }
foreach (@items) { print $type_path.'/'.$_.'.md'."\n" }

mkdir $base_path.'/'.$config->{collections_dir};
foreach my $coll (keys %{ $config->{collections} }) {
  mkdir $base_path.'/'.$config->{collections_dir}.'/_'.$coll;
  print $base_path.'/'.$config->{collections_dir}.'/_'.$coll."\n";
}

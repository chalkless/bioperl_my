#!/usr/bin/perl

# pmid2abst.pl
# Nakazato T.
# '07-05-17-Thu.    Ver. 1
# '07-10-03-Wed.    Ver. 1.001 bug fix
# '19-09-06-Fri.    Ver. 1.01  utf-8-ized

use Bio::Biblio;

$debug = 1;

$file_in = $ARGV[0];
$i = 0;

open (IN, "$file_in") or die $!;
@pmid_list = <IN>;
close (IN);

while(@pmid_list) {
    foreach $_ (@pmid_list) {
        $_ =~ s/\r//g;
        $_ =~ s/\n//g;
    }

    # 100 PMID ごとに分割
    my @pmid_sub = splice(@pmid_list,0,100);
    my $pmid_str = join(",",@pmid_sub);

    print $pmid_str."\n" if ($debug == 2);

    $i++;

    # ファイルに出力する
    my $file_out = $file_in;
    $file_out =~ s/.txt//;
    $file_out =~ s/\.pmid(s|)//;
    $file_out = $file_out.".".(sprintf "%03d", $i+0);

    print $file_out."\n";
    $rslt_xml = getxml($pmid_str);

    open (OUT, ">$file_out.abst.xml");
    print OUT $rslt_xml;
    close OUT;
}

exit (0);


# NCBI に問い合わせてXMLを取得
sub getxml {
    my ($pmids) = @_;

    sleep 4;            # sleep 3-4 sec.
    my $biblio = Bio::Biblio->new(-access => 'eutils');
    my $xml = $biblio->get_by_id($pmids);

    return $xml;

    1;
}

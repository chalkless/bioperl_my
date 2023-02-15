# BioPerl

## BioPerl のインストール（2019 ver.）
次々に新しい何かが出てきて、しょっちゅうここの項目を書き換えなばならない。。。

まぁ、昔はソースをコンパイルして、というか、その前に必要なものを次々インストールしてというかできなくて、ﾋｰﾋｰいいながらやっていたので　BioPerl のインストールは難しいと言われていたことを思うと、隔世の感がある。

```
$ conda search bioperl
Loading channels: done
No match found for: bioperl. Search: *bioperl*
# Name                       Version           Build  Channel             
perl-bioperl                 1.6.924               4  bioconda            
perl-bioperl                 1.6.924               6  bioconda            
perl-bioperl                 1.6.924      pl5.22.0_5  bioconda            
perl-bioperl                 1.6.924      pl5.22.0_7  bioconda            
perl-bioperl                   1.7.2        pl526_10  bioconda            
perl-bioperl                   1.7.2         pl526_8  bioconda            
perl-bioperl                   1.7.2         pl526_9  bioconda            
perl-bioperl-core            1.6.924               1  bioconda            
perl-bioperl-core            1.6.924      pl5.22.0_0  bioconda            
perl-bioperl-core            1.6.924      pl5.22.0_2  bioconda            
perl-bioperl-core              1.7.2         pl526_3  bioconda            
perl-bioperl-core           1.007002         pl526_0  bioconda            
perl-bioperl-core           1.007002         pl526_1  bioconda            
perl-bioperl-run            1.006900               1  bioconda            
perl-bioperl-run            1.006900               2  bioconda            
perl-bioperl-run            1.006900      pl5.22.0_0  bioconda            
perl-bioperl-run            1.007002         pl526_3  bioconda            
perl-bundle-bioperl            2.1.9         pl526_0  bioconda     
```

ここまで出てくれればあとは一発

```
$ conda install perl-bioperl
```
で終了である。（最初にやったときはエラーが出たけどw）

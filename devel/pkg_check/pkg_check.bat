:: export pkg dir
svn export c:\svn\dcr\pkg\ c:\svn\dcr\devel\pkg_check\tests\
svn export c:\svn\mefa\pkg\mefa c:\svn\dcr\devel\pkg_check\tests\mefa
svn export c:\svn\mefa\pkg\mefa4 c:\svn\dcr\devel\pkg_check\tests\mefa4
:: update R packages
R CMD BATCH --vanilla c:\svn\dcr\devel\pkg_check\updates.R c:\svn\dcr\devel\pkg_check\tests\updates.Rout
:: change dir to test
cd c:\svn\dcr\devel\pkg_check\tests\
:: export pkg dirs from svn
R CMD build pbapply
R CMD build dclone
R CMD build dcmle
R CMD build detect
R CMD build PVAClone
R CMD build sharx
R CMD build ResourceSelection
R CMD build mefa
R CMD build mefa4
:: check pkgs
R CMD check pbapply*.tar.gz --as-cran
R CMD check dclone*.tar.gz --as-cran
R CMD check dcmle*.tar.gz --as-cran
R CMD check detect*.tar.gz --as-cran
R CMD check PVAClone*.tar.gz --as-cran
R CMD check sharx*.tar.gz --as-cran
R CMD check ResourceSelection*.tar.gz --as-cran
R CMD check mefa*.tar.gz --as-cran
R CMD check mefa4*.tar.gz --as-cran
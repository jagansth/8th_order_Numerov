module params
  integer(8) i, j, evalcount, ifirst, isecond
  real(8) normF
  real(8), parameter :: hbar=1.05457180013d-34
  real(8), parameter :: mu=13.38095184d-27
  real(8), parameter :: Ese=1.602176620898d-19
  real(8), parameter :: Lse=1.0d-9
  real(8), parameter :: Cse=hbar**2/(2.0d0*mu*Lse**2*Ese)
!------------------------------------------------------------------------------
  real(8), parameter :: De=-5.214d0
  real(8), parameter :: a=0.0376647834d0
  real(8), parameter :: xe=0.1208d0
  real(8), parameter :: xmin=0.09d0
  real(8), parameter :: xmax=0.3d0
  integer(8), parameter :: mesh=800
  real(8), parameter :: dx=abs(xmax-xmin)/dble(mesh)
  real(8), parameter :: dx2=dx**2
!----------------------------------------------------------------------------
! TOTAL WORKING MATRICES WITHOUT BLAS AND LAPACK LIBRARIES
  real(8), allocatable :: x(:), v(:), Vmat(:,:), Amat(:,:), Bmat(:,:), &
           BmatInv(:,:), Tmat(:,:), Hmat(:,:), Psi(:,:), Prob(:,:)
!---------------------------------------------------------------------------
! TOTAL WORKING MATRICES AND VARIABLES WITH BLAS AND LAPACK LIBRARIES
  integer(8) INFO
  integer(8), parameter :: KD=3
  character(len=1), parameter :: JOBZ='V', UPLO='U'
  integer(8), parameter :: M=mesh, N=mesh, LDA=mesh, LWORK1=mesh, &
              LDZ=mesh, LDAB=KD+1, LWORK2=2*N**2+5*N+1, LIWORK=5*N+3
  real(8), allocatable :: IPIV(:), WORK1(:), AB(:,:), W(:), &
                          Z(:,:), WORK2(:), IWORK(:)
end module params

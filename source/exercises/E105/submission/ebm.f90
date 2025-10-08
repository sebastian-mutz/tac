program ebm
  implicit none

  !----------------------------------------------------------
  ! Physical parameters
  !----------------------------------------------------------

  ! Constants
  real, parameter :: SB_SIGMA  = 5.7e-8       ! Stefan-Boltzmann constant [W/(m^2*K^4)]
  real, parameter :: PI        = 3.141592653589793

  ! Sun parameters
  real, parameter :: T_SOL     = 5800.0      ! Sun temperature [K]
  real, parameter :: R_SOL     = 6.96e8      ! Sun radius [m]

  ! Earth parameters
  real, parameter :: R         = 1.5e11      ! Earth-Sun distance [m]
  real, parameter :: ALBEDO_0  = 0.3         ! Albedo
  real, parameter :: TRANSM_0  = 0.64262     ! Transmissivity

  ! Heat capacity

  ! Note: Heat capacity is given in J/(K*m^2) to simplify calculations.

  ! The specific heat capacity of air (Cp) is ~1000 J/(kg*K) or, given the density
  ! of air (ro) of 1 kg/m^3, the volumetric heat capacity Cv of ~1000 J/(K*m^3).
  ! [ Cv=Cp*ro=1000 J/(K*m^3) ].

  ! In ro*Cp*dT/dt=dQ/dx, Q is heat flow in W/m^2 or J/(s*m^2), which is given by
  ! f_net. To get dT, we need to divide heat flow by a unit of length. In this exercise,
  ! volumetric heat capacity (c=ro*cp) is already multiplied by 10000 (m), i.e. the
  ! average thickness of the troposphere, and therefore skip the division of the heat
  ! flow by length.

  ! Example:
  ! C_AT= ro*Cp*H where H is the height of the troposphere (~10km).


  ! Heat capacities [J/(K*m^2)]
  real, parameter :: C_AT      = 1.0e7   ! C_AT - heat capacity: atmosphere only
  real, parameter :: C_OS      = 2.0e8   ! C_OS - heat capacity: ocean surface 50m (real ca. 70m)
  real, parameter :: C_OU      = 1.0e9   ! C_OU - heat capacity: upper ocean layer 250m (real ca. 360m)
  real, parameter :: C_OD      = 1.6e10  ! C_OD - heat capacity: ocean 3900m, 70% of Earth surface

  !----------------------------------------------------------
  ! Model parameters
  !----------------------------------------------------------
  integer, parameter :: nt   = 50          ! number of time steps
  integer, parameter :: i_dt = 10          ! time step [days]

  !----------------------------------------------------------
  ! Variables
  !----------------------------------------------------------
  integer :: i
  real :: dt, ck
  real :: F_SOL, PHI_SOL, E_0, F_SW_IN_0, T_EARTH
  real :: f_sw_in, f_sw_out, f_lw_out, f_net
  real :: temp(nt), x(nt)

  !----------------------------------------------------------
  ! 1) Sun's radiative flux
  !----------------------------------------------------------
  F_SOL   = SB_SIGMA * T_SOL**4
  PHI_SOL = F_SOL * 4.0 * PI * R_SOL**2

  print *, 'F_SOL   =', F_SOL
  print *, 'PHI_SOL =', PHI_SOL

  !----------------------------------------------------------
  ! 2) Solar constant (mean incoming shortwave radiation)
  !----------------------------------------------------------
  E_0 = PHI_SOL / (4.0 * PI * R**2)
  F_SW_IN_0 = E_0 / 4.0

  print *, 'E_0       =', E_0
  print *, 'F_SW_IN_0 =', F_SW_IN_0

  !----------------------------------------------------------
  ! 3) Predicted Earth temperature (no atmosphere)
  !----------------------------------------------------------
  T_EARTH = ((E_0 * (1.0 - ALBEDO_0)) / (4.0 * SB_SIGMA))**0.25
  print *, 'T_EARTH (no atmosphere) =', T_EARTH

  !----------------------------------------------------------
  ! 4) Time evolution of temperature
  !----------------------------------------------------------
  dt = 60.0 * 60.0 * 24.0 * real(i_dt)
  ck = C_AT                       ! choose heat capacity

  temp = 0.0
  x    = 0.0
  temp(1) = 300.0                 ! initial temperature [K]

  do i = 1, nt - 1
     f_sw_in  = F_SW_IN_0
     f_sw_out = ALBEDO_0 * f_sw_in
     f_lw_out = 0.95 * SB_SIGMA * temp(i)**4
     f_net    = f_sw_in - f_sw_out - f_lw_out * TRANSM_0

     temp(i+1) = temp(i) + dt * (f_net / ck)
     x(i+1) = x(i) + real(i_dt)
  end do

  print *, 'Final temperature (K):', temp(nt)
  print *, 'Temperature evolution:'
  do i = 1, nt
     print '(I4,2X,F10.3)', i, temp(i)
  end do

end program ebm

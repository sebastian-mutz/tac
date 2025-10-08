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


  !==========================================================
  ! YOUR TASKS ARE BELOW


  !----------------------------------------------------------
  ! Additional variables

  ! Declare additional variables that you need for your calculations here.


  !----------------------------------------------------------
  ! 1) Calculate the sun's output F_SOL and radiative flux PHI_SOL

  ! YOUR CODE GOES HERE


  !----------------------------------------------------------
  ! 2) Calculate F_SW_IN_0, the mean incoming shorwave radiation per
  !    area on Earth in W/m^2, i.e. the solar constant.

  ! YOUR CODE GOES HERE


  !----------------------------------------------------------
  ! 3) Calculate the predicted temperature on Earth T_EARTH assuming no atmosphere

  ! YOUR CODE GOES HERE


  ! Note: You'll notice that the temperature of task 3 deviates somewhat from the actual temperature on Earth.
  ! What we need is to consider greenhouse gas related transmissivity.

  !----------------------------------------------------------
  ! 4) Let temperature evolve over time!

  ! Initialise temperature and let it evolve over time until it reaches equilibrium.
  ! Make sure to include albedo and transmissivity in your calculations.

  ! HINT: To calculate temperature change for a specific time step based on net incoming radiation,
  ! remember dT (change in temperature) = dQ (change in heat/energy) / C (heat capacity), incoming
  ! radiation is measured in W/m^2 (J/(s*m^2)) and heat capacity is given in J/(K*m^2) here.

  ! Note: When calculating the radiation emitted by Earth, a multiplication by the factor of 0.95 is
  ! necessary to take into consideration the emissive propertiesof the Earth's surface.

  ! 4-a: Initialise temperature at 300K and let it evolve using a heat capacity of the atmosphere only.
  ! 4-b: Change the initial temperature, run your code again and see what happens. Does this make sense?
  ! 4-c: Pick a different heat capacity and see what happens. Does this make sense?

  ! YOUR CODE GOES HERE

end program ebm

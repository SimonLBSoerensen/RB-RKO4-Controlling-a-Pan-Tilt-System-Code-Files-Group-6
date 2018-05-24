% Simscape(TM) Multibody(TM) version: 5.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(8).translation = [0.0 0.0 0.0];
smiData.RigidTransform(8).angle = 0.0;
smiData.RigidTransform(8).axis = [0.0 0.0 0.0];
smiData.RigidTransform(8).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [196.09619599999999 22.5 216.56300000000002];  % mm
smiData.RigidTransform(1).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(1).axis = [0 1 0];
smiData.RigidTransform(1).ID = 'B[MMCcfHkTaiPnO0sSz:-:MXGk9mv5IRYI5KCXk:MP1Q9bpe87duwt7LU]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [146.607361 -5.499403 20.037673999999999];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(2).ID = 'F[MMCcfHkTaiPnO0sSz:-:MXGk9mv5IRYI5KCXk:MP1Q9bpe87duwt7LU]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-69.703000000000003 -114.05 188.538048];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = 'B[MyiyGxEp1YhicYz7n:-:MMCcfHkTaiPnO0sSz]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [0 22.504999999999999 -62.437431000000004];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(4).axis = [-0.70710678118654746 0.70710678118654757 0];
smiData.RigidTransform(4).ID = 'F[MyiyGxEp1YhicYz7n:-:MMCcfHkTaiPnO0sSz]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [-21.313023999999999 -134.070347 460.09382700000003];  % mm
smiData.RigidTransform(5).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(5).axis = [-1 -0 -0];
smiData.RigidTransform(5).ID = 'AssemblyGround[MXGk9mv5IRYI5KCXk:Mc1gIuMh1P0tz3Qa5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-21.313023999999999 -134.070347 460.09382700000003];  % mm
smiData.RigidTransform(6).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(6).axis = [-1 -0 -0];
smiData.RigidTransform(6).ID = 'AssemblyGround[MXGk9mv5IRYI5KCXk:MP1Q9bpe87duwt7LU]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-21.313023999999999 -134.070347 460.09382700000003];  % mm
smiData.RigidTransform(7).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(7).axis = [-1 -0 -0];
smiData.RigidTransform(7).ID = 'AssemblyGround[MXGk9mv5IRYI5KCXk:MDy4jGSTKPBZja1mE]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-95.560539000000006 -276.41434300000003 240.58237199999999];  % mm
smiData.RigidTransform(8).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(8).axis = [0 -0 1];
smiData.RigidTransform(8).ID = 'SixDofRigidTransform[MMCcfHkTaiPnO0sSz]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(5).mass = 0.0;
smiData.Solid(5).CoM = [0.0 0.0 0.0];
smiData.Solid(5).MoI = [0.0 0.0 0.0];
smiData.Solid(5).PoI = [0.0 0.0 0.0];
smiData.Solid(5).color = [0.0 0.0 0.0];
smiData.Solid(5).opacity = 0.0;
smiData.Solid(5).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.64999995600000005;  % kg
smiData.Solid(1).CoM = [-0.00069899999999999997 22.495098000000002 84.396453999999991];  % mm
smiData.Solid(1).MoI = [3957.2720000000004 19703.953999999998 15986.865999999998];  % kg*mm^2
smiData.Solid(1).PoI = [0.032999999999999995 0.14199999999999999 -0.029999999999999999];  % kg*mm^2
smiData.Solid(1).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(1).opacity = 1.000000000;
smiData.Solid(1).ID = 'JFH*:*57694abdacdf6b5618543e18';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.019074932400000001;  % kg
smiData.Solid(2).CoM = [-204.20260999999999 -5.6368980000000004 20.012378000000002];  % mm
smiData.Solid(2).MoI = [0.23799999999999999 19.004000000000001 19.004999999999999];  % kg*mm^2
smiData.Solid(2).PoI = [-0 -0 -0];  % kg*mm^2
smiData.Solid(2).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(2).opacity = 1.000000000;
smiData.Solid(2).ID = 'JFL*:*57694abdacdf6b5618543e18';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.0190724325;  % kg
smiData.Solid(3).CoM = [104.797996 -5.6369579999999999 20.012395999999999];  % mm
smiData.Solid(3).MoI = [0.23799999999999999 19.003 19.003];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 -0];  % kg*mm^2
smiData.Solid(3).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(3).opacity = 1.000000000;
smiData.Solid(3).ID = 'JFP*:*57694abdacdf6b5618543e18';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.79999960999999997;  % kg
smiData.Solid(4).CoM = [-49.702748999999997 -5.6366880000000004 20.019203000000001];  % mm
smiData.Solid(4).MoI = [8603.7890000000007 8088.1410000000005 16453.564000000002];  % kg*mm^2
smiData.Solid(4).PoI = [-0.014999999999999999 0.013000000000000001 0.0030000000000000001];  % kg*mm^2
smiData.Solid(4).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(4).opacity = 1.000000000;
smiData.Solid(4).ID = 'JFT*:*57694abdacdf6b5618543e18';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 1.9289760899999999;  % kg
smiData.Solid(5).CoM = [-69.702747000000002 0.70644000000000007 174.39419000000001];  % mm
smiData.Solid(5).MoI = [63414.409000000007 52809.370000000003 96996.95199999999];  % kg*mm^2
smiData.Solid(5).PoI = [-2035.126 -0.014999999999999999 -0.050999999999999997];  % kg*mm^2
smiData.Solid(5).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(5).opacity = 1.000000000;
smiData.Solid(5).ID = 'JFD*:*57694abdacdf6b5618543e18';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = -1.4918123802916669e-14;  % deg
smiData.RevoluteJoint(1).ID = '[MMCcfHkTaiPnO0sSz:-:MXGk9mv5IRYI5KCXk:MP1Q9bpe87duwt7LU]';

smiData.RevoluteJoint(2).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(2).ID = '[MyiyGxEp1YhicYz7n:-:MMCcfHkTaiPnO0sSz]';


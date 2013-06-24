function retIrradiance_PerArea = radRetIrradiancePerDegrees2AndEyeLengthToRetIrradiancePerArea(retIrradiance_PerDegrees2,eyeLength)
% retIrradiance_PerArea = radRetIrradiancePerDegrees2AndEyeLengthToRetIrradiancePerArea(retIrradiance_PerDegrees2,eyeLength)
%
% Convert retinal irradiance measured in units of Y/deg^2 to units of
% Y/x^2, where x is a unit of distance (m, cm, mm, um, etc.) and
% Y is a measure of light amount (Watts, Joules, quanta/sec, quanta, etc.)
%
% Eye length should be passed in units of x.
%
% See also: PsychRadiometric, radRetIrradiancePerAreaAndEyeLengthToRetIrradiancePerDegrees2.
%
% 6/23/13  dhb  Wrote it.

% Convert x to degrees.  The routine DegreesToRetinalMM does not
% actually care whether the input is in mm, it just needs its
% two arguments to be in the same units.
xPerDegree = DegreesToRetinalMM(1,eyeLength);
areaPerDegrees2 = xPerDegree^2;
retIrradiance_PerArea = retIrradiance_PerDegrees2/areaPerDegrees2;


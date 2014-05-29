%% Optical Mapping Signal Analysis - Action Potential

% Filter Signal (cmd: butter, filtfilt, filter)
data = [time,flipup(y)] %y value is either atrial or ventricle signal
plot(data);
[B,A] = butter(4,0.75); %where N = 4, sampling freq is 100Hz, creates a mHz normalized filter cutoff (m/50 = 0.75)
subplot(211),plot(data);
set(gca,'YDir','reverse');
subplot(212),plot(filtfilt(B,A,data));
set(gca,'YDir','reverse');

% Peak Analysis: Find Maxima (findpeaks)
% Find APD (width by 'diff'- but need to know the minima)

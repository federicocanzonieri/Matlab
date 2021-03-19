function out_sig = myfft(in_sig)
out_sig = fftshift(fft(ifftshift(in_sig)));
end

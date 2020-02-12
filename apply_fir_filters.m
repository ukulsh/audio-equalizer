function y = apply_fir_filters(data,Fs,gain)
% return composit data


filter_obj = fir_low_pass(170,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(1);


filter_obj = fir_band_pass(170,310,Fs);
dummy_data = filter(filter_obj,data);
composite_data = composite_data + dummy_data * gain(2);



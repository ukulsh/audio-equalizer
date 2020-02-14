function y = apply_fir_filters(data,Fs,gain)
% return composit data


filter_obj = fir_low_pass(170,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(1);


filter_obj = fir_band_pass(170,310,Fs);
dummy_data = filter(filter_obj,data);
composite_data = composite_data + dummy_data * gain(2);


filter_obj = fir_band_pass(310,600,Fs);
dummy_data = filter(filter_obj,data);
composite_data = composite_data + dummy_data * gain(3);


filter_obj = fir_band_pass(600,1000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = composite_data + dummy_data * gain(4);

filter_obj = fir_band_pass(1000,3000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = composite_data + dummy_data * gain(5);

filter_obj = fir_band_pass(3000,6000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = composite_data + dummy_data * gain(6);

filter_obj = fir_band_pass(6000,12000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = composite_data + dummy_data * gain(7);

filter_obj = fir_band_pass(12000,14000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = composite_data + dummy_data * gain(8);


y = composite_data;
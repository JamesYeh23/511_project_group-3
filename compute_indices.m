function indices_table = compute_indices(out)
    % Extract Time and Data for each variable
    time = out.Cp.time;

    Cp_data = out.Cp.signals.values;
    MAP_data = out.MAP.signals.values;
    TPR_data = out.TPR.signals.values;
    HR_data = out.HR.signals.values;

    % Pre-infusion period indices (t < 1 hour)
    pre_infusion_indices = (time >= 0.5) &(time < 1);

    % Simulation window (t = 1 to t = 25)
    simulation_indices = (time >= 1) & (time <= 25);

    % Pre-infusion (Equilibrium) value
    Cp_eq = mean(Cp_data(pre_infusion_indices));
    MAP_eq = mean(MAP_data(pre_infusion_indices));
    TPR_eq = mean(TPR_data(pre_infusion_indices));
    HR_eq = mean(HR_data(pre_infusion_indices));

    % Exteme value in stimulation window
    Cp_max = max(Cp_data(simulation_indices));
    MAP_min = min(MAP_data(simulation_indices));
    TPR_min = min(TPR_data(simulation_indices));
    HR_max = max(HR_data(simulation_indices));

    % Average Percent Change from Pre-Infusion Levels
    % Avoid division by zero for Cp_eq
    if Cp_eq == 0
        Cp_percent_change = zeros(size(Cp_data(simulation_indices)));
    else
        Cp_percent_change = ((Cp_data(simulation_indices) - Cp_eq) / Cp_eq) * 100;
    end

    MAP_percent_change = ((MAP_data(simulation_indices) - MAP_eq) / MAP_eq) * 100;
    TPR_percent_change = ((TPR_data(simulation_indices) - TPR_eq) / TPR_eq) * 100;
    HR_percent_change = ((HR_data(simulation_indices) - HR_eq) / HR_eq) * 100;
    Cp_avg_percent_change = mean(Cp_percent_change);
    MAP_avg_percent_change = mean(MAP_percent_change);
    TPR_avg_percent_change = mean(TPR_percent_change);
    HR_avg_percent_change = mean(HR_percent_change);

    % (iv) Standard Deviation Around the Mean (in Percent)
    Cp_std_percent = std(Cp_percent_change);
    MAP_std_percent = std(MAP_percent_change);
    TPR_std_percent = std(TPR_percent_change);
    HR_std_percent = std(HR_percent_change);

    % Compile data into a table
    variables = {'Cp' ; 'MAP'; 'TPR'; 'HR'};

    equilibrium_values = [Cp_eq; MAP_eq; TPR_eq; HR_eq];
    extreme_values = [Cp_max; MAP_min; TPR_min; HR_max];
    avg_percent_change = [Cp_avg_percent_change; MAP_avg_percent_change; TPR_avg_percent_change; HR_avg_percent_change];
    std_percent_change = [Cp_std_percent; MAP_std_percent; TPR_std_percent; HR_std_percent];

    indices_table = table(variables, equilibrium_values, extreme_values, avg_percent_change, std_percent_change, ...
        'VariableNames', {'Variable', 'Equilibrium Value', 'Extreme Value', 'Avg Percent Change', 'Std Percent Change'});

    % Display the table
    disp(indices_table);
end

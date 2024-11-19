function plot_results(app, out)
    % Plot Cp on app.CpAxes
    plot(app.CpAxes, out.Cp.time, out.Cp.signals.values);
    title(app.CpAxes, 'Cp');
    ylabel(app.CpAxes, 'Cp (µg/L)');
    ylim(app.CpAxes, [0 150]);
    grid(app.CpAxes, 'on');
    xlabel(app.CpAxes, '');

    % Plot MAP on app.MAPAxes
    plot(app.MAPAxes, out.MAP.time, out.MAP.signals.values);
    title(app.MAPAxes, 'MAP');
    ylabel(app.MAPAxes, 'MAP (mmHg)');
    ylim(app.MAPAxes, [0 200]);
    grid(app.MAPAxes, 'on');
    xlabel(app.MAPAxes, '');

    % Plot TPR on app.TPRAxes
    plot(app.TPRAxes, out.TPR.time, out.TPR.signals.values);
    title(app.TPRAxes, 'TPR');
    ylabel(app.TPRAxes, 'TPR (RU)');
    ylim(app.TPRAxes, [0 30]);
    grid(app.TPRAxes, 'on');
    xlabel(app.TPRAxes, '');

    % Plot HR on app.HRAxes
    plot(app.HRAxes, out.HR.time, out.HR.signals.values);
    title(app.HRAxes, 'HR');
    xlabel(app.HRAxes, 'Time (hours)');
    ylabel(app.HRAxes, 'HR (bpm)');
    ylim(app.HRAxes, [0 300]);
    grid(app.HRAxes, 'on');
    xlabel(app.HRAxes, '');
end


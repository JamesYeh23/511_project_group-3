function plot_results(out)
    % Close any existing figures
    close all;
    
    % Create a new figure window
    figure;
    
    % Plot Signal 1
    subplot(4,1,1)
    plot(out.Cp.time, out.Cp.signals.values);
    title('Cp');
    ylabel('Cp(microg/L)');
    ylim([0 150]);
    grid on;
    
    % Plot Signal 2
    subplot(4,1,2);
    plot(out.MAP.time, out.MAP.signals.values);
    title('MAP');
    ylabel('MAP(mmHg)');
    ylim([0 200]);
    grid on;
    
    % Plot Signal 3
    subplot(4,1,3);
    plot(out.TPR.time, out.TPR.signals.values);
    title('TPR');
    ylabel('TPR(RU)');
    ylim([0 30]);
    grid on;
    
    % Plot Signal 4
    subplot(4,1,4);
    plot(out.HR.time, out.HR.signals.values);
    title('HR');
    xlabel('Time (hours)');
    ylabel('HR(bpm)');
    ylim([0 300]);
    grid on;
    
    % Add a super title to the figure
    sgtitle('System Response Over Time');
end

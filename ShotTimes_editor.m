function ShotTimes = ShotTimes_editor(app)
    % 1) Original-like pattern:
    % ShotTimes = [1.00, 1.00, 5.00, 5.00, 5.25, 5.50, 10.00, 15.00, 20.00, 24.75];
    
    % % 2) Mostly early and small increments:
    % ShotTimes = [1.00, 1.00, 1.00, 1.00, 1.25, 2.00, 2.00, 2.25, 2.25, 2.25];
    % 
    % % 3) Three clusters of doses:
    % ShotTimes = [1.00, 1.00, 1.00, 3.00, 3.25, 3.25, 6.00, 6.00, 6.25, 6.50];
    % 
    % % 4) Many early doses all close together:
    % ShotTimes = [1.00, 1.00, 1.00, 1.00, 1.00, 2.00, 2.00, 2.00, 2.00, 2.00];
    % 
    % % 5) Early cluster, then identical plateau:
    % ShotTimes = [1.00, 1.00, 5.00, 5.00, 5.25, 5.50, 10.00, 10.00, 10.00, 10.00];
    % 
    % % 6) Slight variations early and mid:
    % ShotTimes = [1.00, 1.25, 1.25, 1.25, 5.25, 5.50, 10.00, 10.00, 20.00, 24.75];
    % 
    % % 7) Small increments at start, spread later:
    ShotTimes = [1.00, 1.00, 1.00, 2.00, 2.25, 2.25, 10.00, 15.00, 20.00, 20.25];
    % 
    % % 8) Mostly in a narrow range early on:
    % ShotTimes = [1.00, 1.00, 5.00, 5.00, 5.25, 5.25, 5.50, 5.50, 6.00, 6.00];
    % 
    % % 9) Gradual start, then one large jump at the end:
    % ShotTimes = [1.00, 1.50, 2.00, 2.00, 2.00, 2.25, 2.25, 2.25, 2.25, 24.75];
    % 
    % % 10) Clustered at start and mid, with a jump at the end:
    % ShotTimes = [1.00, 1.00, 1.00, 5.00, 5.00, 5.00, 5.25, 5.50, 10.00, 24.75];

end
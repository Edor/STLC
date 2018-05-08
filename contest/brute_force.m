function output = brute_force()
attacks = ["JPEG", "JPEG2000", "AWGN", "RESIZE", "MOTION FILTER", "SHARPENING FILTER", "GAUSSIAN FILTER", "BLUR", "HIST EQUALIZATION", "MEDIAN"];
A1 = nchoosek(attacks, 1);
A2 = nchoosek(attacks, 2);
A3 = nchoosek(attacks, 3);
final = [];
for i=1:size(A2,1)
   temp = perms(A2(i,:));
   final = [final; temp];
end
final = [horzcat(A1,zeros(size(A1,1),1)); final];
final = horzcat(final, zeros(size(final,1),1));
for i=1:size(A3,1)
   temp = perms(A3(i,:));
   final = [final; temp];
end
end
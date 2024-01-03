clear all;

data = readtable('survey lung cancer.csv');

toConvert = data.Properties.VariableNames(3:end-1);
data{:, toConvert} = data{:, toConvert} - 1;

data.GENDER = grp2idx(categorical(data.GENDER)) - 1;

data.LUNG_CANCER = grp2idx(categorical(data.LUNG_CANCER)) - 1;

data.AGE = normalize(data.AGE);

X = data(:, 1:end-1);
y = data.LUNG_CANCER;

rng(2012);
idx = randperm(size(X, 1));
trainRatio = 0.8;
trainIdx = idx(1:round(trainRatio * length(idx)));
testIdx = idx(round(trainRatio * length(idx)) + 1:end);

X_train = X(trainIdx, :);
y_train = y(trainIdx, :);
X_test = X(testIdx, :);
y_test = y(testIdx, :);

X_train_mat = table2array(X_train);
X_test_mat = table2array(X_test);

hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize, 'trainlm');

net.divideParam.trainRatio = 80/100;
net.divideParam.valRatio = 1/100;
net.divideParam.testRatio = 19/100;

[net, tr] = train(net, X_train_mat', y_train');

y_pred = round(net(X_test_mat'))';

accuracy = sum(y_pred == y_test) / length(y_test);
disp(['Accuracy of the model used is : ', num2str(accuracy)]);
disp('Neural network training and evaluation completed successfully!');

view(net)

figure;
plot(tr.epoch, tr.perf);
xlabel('Epoch');
ylabel('Performance (Error)');
title('Training Performance');

figure, plotperform(tr)

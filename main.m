

% cost in a seperate file and load its handle to fobj���ڵ������ļ��ж���ɱ��������������ص�fobj 
% The initial parameters are:
%__________________________________________
% fobj = @YourCostFunction
% dim = number of variables
% Max_iteration = maximum number of generations
% SearchAgents_no = number of search agents
% lb=[lb1,lb2,...,lbn] where lbn is the lower bound of variable n
% ub=[ub1,ub2,...,ubn] where ubn is the upper bound of variable n
% If all the variables have equal lower bound, define lb and ub as two single number numbers

% WOA: [Best_score,Best_pos,WOA_cg_curve]=WOA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj)




clear all
clc

SearchAgents_no=30; % Number of search agents����������

Function_name='F1'; % Name of the test function that can be from F1 to F23 (Table 1,2,3 in the paper)

Max_iteration=500; % Maximum numbef of iterations

% Load details of the selected benchmark function��������ѡ��׼���Ժ�������ϸ��Ϣ
[lb,ub,dim,fobj]=Get_Functions_details(Function_name);

[Best_score,Best_pos,WOA_cg_curve]=WOA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj);

figure('Position',[269   240   660   290])
%Draw search space
subplot(1,2,1);
func_plot(Function_name);
title('Parameter space')
xlabel('x_1');
ylabel('x_2');
zlabel([Function_name,'( x_1 , x_2 )'])

%Draw objective space
subplot(1,2,2);
semilogy(WOA_cg_curve,'Color','r')
title('Objective space')
xlabel('Iteration');
ylabel('Best score obtained so far');

axis tight
grid on
box on
legend('WOA')

display(['The best solution obtained by WOA is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by WOA is : ', num2str(Best_score)]);

        




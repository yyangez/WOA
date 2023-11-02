

% This function initialize the first population of search agents，此函数初始化第一批搜索代理
function Positions=initialization(SearchAgents_no,dim,ub,lb)

%设置种子
seed = 1;
rng(seed);

Boundary_no= size(ub,2); % numnber of boundaries，计算出第二个维度的大小,即列向量的大小，下面提到了如果变量的ub一样则ub可为设置一个double数值，则size（ub）= [1,1]



% If the boundaries of all variables are equal and user enter a signle
% number for both ub and lb
if Boundary_no==1
    Positions=rand(SearchAgents_no,dim).*(ub-lb)+lb;%产生范围内的随机数
end

% If each variable has a different lb and ub
if Boundary_no>1
    for i=1:dim
        ub_i=ub(i);
        lb_i=lb(i);
        Positions(:,i)=rand(SearchAgents_no,1).*(ub_i-lb_i)+lb_i;%产生范围内的随机数
    end
end
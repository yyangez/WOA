

% This function initialize the first population of search agents���˺�����ʼ����һ����������
function Positions=initialization(SearchAgents_no,dim,ub,lb)

%��������
seed = 1;
rng(seed);

Boundary_no= size(ub,2); % numnber of boundaries��������ڶ���ά�ȵĴ�С,���������Ĵ�С�������ᵽ�����������ubһ����ub��Ϊ����һ��double��ֵ����size��ub��= [1,1]



% If the boundaries of all variables are equal and user enter a signle
% number for both ub and lb
if Boundary_no==1
    Positions=rand(SearchAgents_no,dim).*(ub-lb)+lb;%������Χ�ڵ������
end

% If each variable has a different lb and ub
if Boundary_no>1
    for i=1:dim
        ub_i=ub(i);
        lb_i=lb(i);
        Positions(:,i)=rand(SearchAgents_no,1).*(ub_i-lb_i)+lb_i;%������Χ�ڵ������
    end
end
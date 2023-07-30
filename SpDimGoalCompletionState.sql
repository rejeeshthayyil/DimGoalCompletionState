create proc SpDimGoalCompletionState
AS
BEGIN
DECLARE @Count INT =1
DECLARE @GoalCompletionStateId int

WHILE @Count<=10
begin
set @GoalCompletionStateId=@Count
insert into Report.DimGoalCompletionstate (GoalCompletionstateId) 
values(@GoalCompletionStateId)

set @Count=@Count+1
end
end

exec SpDimGoalCompletionState


select * from Report.DimGoalCompletionstate


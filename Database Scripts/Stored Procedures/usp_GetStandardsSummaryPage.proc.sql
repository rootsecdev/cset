-- =============================================
-- Author:		hansbk
-- Create date: 8/1/2018
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[usp_GetStandardsSummaryPage]
	@assessment_id int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    EXECUTE [dbo].[FillEmptyQuestionsForAnalysis]  @Assessment_Id	
	execute [dbo].[usp_getStandardsSummary] @assessment_id

END

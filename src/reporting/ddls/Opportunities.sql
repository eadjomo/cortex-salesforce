#-- Copyright 2022 Google LLC
#--
#-- Licensed under the Apache License, Version 2.0 (the "License");
#-- you may not use this file except in compliance with the License.
#-- You may obtain a copy of the License at
#--
#--     https://www.apache.org/licenses/LICENSE-2.0
#--
#-- Unless required by applicable law or agreed to in writing, software
#-- distributed under the License is distributed on an "AS IS" BASIS,
#-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#-- See the License for the specific language governing permissions and
#-- limitations under the License.

CREATE OR REPLACE VIEW `{{ project_id_tgt }}.{{ dataset_reporting_tgt_sfdc }}.Opportunities`
  OPTIONS(description = 'View for Opportunity Table')
AS (
  SELECT
    Opportunities.OpportunityId,
    Opportunities.AccountId,
    Opportunities.RecordTypeId,
    Opportunities.Name,
    Opportunities.Amount,
    Opportunities.CampaignId,
    Opportunities.CloseDate,
    Opportunities.ContactId,
    Opportunities.CreatedById,
    Opportunities.CreatedDatestamp,
    Opportunities.Description,
    Opportunities.Fiscal,
    Opportunities.FiscalQuarter,
    Opportunities.FiscalYear,
    Opportunities.ForecastCategory,
    Opportunities.ForecastCategoryName,
    Opportunities.HasOpenActivity,
    Opportunities.HasOpportunityLineItem,
    Opportunities.HasOverDueTask,
    Opportunities.IsClosed,
    Opportunities.LastReferencedDatestamp,
    Opportunities.IsWon,
    Opportunities.LastActivityDate,
    Opportunities.LastAmountChangedHistoryId,
    Opportunities.LastCloseDateChangedHistoryId,
    Opportunities.LeadSource,
    Opportunities.LastViewedDatestamp,
    Opportunities.NextStep,
    Opportunities.OwnerId,
    Opportunities.PriceBook2Id,
    Opportunities.Probability,
    Opportunities.StageName,
    Opportunities.Type,
    Opportunities.LastModifiedById,
    Opportunities.LastModifiedDatestamp
  FROM
    `{{ project_id_src }}.{{ dataset_cdc_processed_sfdc }}.opportunities` AS Opportunities
);

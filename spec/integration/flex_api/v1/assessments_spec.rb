##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Assessments' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.assessments.create(category_id: 'category_id', category_name: 'category_name', segment_id: 'segment_id', user_name: 'user_name', user_email: 'user_email', agent_id: 'agent_id', offset: '-0.0300', metric_id: 'metric_id', metric_name: 'metric_name', answer_text: 'answer_text', answer_id: 'answer_id', questionnaire_id: 'questionnaire_id', token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'CategoryId' => 'category_id',
        'CategoryName' => 'category_name',
        'SegmentId' => 'segment_id',
        'UserName' => 'user_name',
        'UserEmail' => 'user_email',
        'AgentId' => 'agent_id',
        'Offset' => '-0.0300',
        'MetricId' => 'metric_id',
        'MetricName' => 'metric_name',
        'AnswerText' => 'answer_text',
        'AnswerId' => 'answer_id',
        'QuestionnaireId' => 'questionnaire_id',
    }
    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Assessments',
        data: values,
        headers: headers,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "assessment_id": "123",
          "offset": "0.0",
          "report": true,
          "weight": "1",
          "agent_id": "5d80ee80-7608-55df-b2b2-5ab5608b9831",
          "segment_id": "dbdf1f7b-c776-5e78-9676-98a397fb3cdc",
          "user_name": "Supervisor",
          "user_email": "supervisor@example.com",
          "answer_id": "ed8697d3-558d-46c3-9b73-cd21cd93cbb3",
          "answer_text": "Fair",
          "timestamp": "1657329694199",
          "assessment": {
              "questionnaire": {
                  "questionnaire_id": "7326e997-a84c-57cd-9186-bb94db0def2b",
                  "name": "Customer Experience",
                  "question": {
                      "id": "41518739-4e38-5871-bb01-d9f6e0cd1377",
                      "name": "Active listening",
                      "category": {
                          "id": "4b4e78e4-4f05-49e2-bf52-0973c5cde418",
                          "name": "Good for Training"
                      }
                  }
              }
          },
          "url": "https://flex-api.twilio.com/v1/Insights/QM/Assessments/123"
      }
      ]
    ))

    actual = @client.flex_api.v1.assessments.create(category_id: 'category_id', category_name: 'category_name', segment_id: 'segment_id', user_name: 'user_name', user_email: 'user_email', agent_id: 'agent_id', offset: '-0.0300', metric_id: 'metric_id', metric_name: 'metric_name', answer_text: 'answer_text', answer_id: 'answer_id', questionnaire_id: 'questionnaire_id')

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.assessments('assessment_id').update(offset: '-0.0300', answer_text: 'answer_text', answer_id: 'answer_id', token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Offset' => '-0.0300', 'AnswerText' => 'answer_text', 'AnswerId' => 'answer_id', }
    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Assessments/assessment_id',
        data: values,
        headers: headers,
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "assessment_id": "dbdf1f7b-c776-5e78-9676-98a397fb3cdc",
          "offset": "0.0",
          "report": true,
          "weight": "1",
          "agent_id": "5d80ee80-7608-55df-b2b2-5ab5608b9831",
          "segment_id": "0105be7a-9b87-51f1-8df8-aa74ddb9c4a7",
          "user_name": "Supervisor",
          "user_email": "supervisor@example.com",
          "answer_id": "ed8697d3-558d-46c3-9b73-cd21cd93cbb3",
          "answer_text": "Fair",
          "timestamp": "1657329694199",
          "assessment": {
              "questionnaire": {
                  "questionnaire_id": "7326e997-a84c-57cd-9186-bb94db0def2b",
                  "name": "Customer Experience",
                  "question": {
                      "id": "41518739-4e38-5871-bb01-d9f6e0cd1377",
                      "name": "Active listening",
                      "category": {
                          "id": "4b4e78e4-4f05-49e2-bf52-0973c5cde418",
                          "name": "Good for Training"
                      }
                  }
              }
          },
          "url": "https://flex-api.twilio.com/v1/Insights/QM/Assessments/dbdf1f7b-c776-5e78-9676-98a397fb3cdc"
      }
      ]
    ))

    actual = @client.flex_api.v1.assessments('assessment_id').update(offset: '-0.0300', answer_text: 'answer_text', answer_id: 'answer_id')

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.assessments.list(token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Assessments',
        headers: headers,
    ))).to eq(true)
  end

  it "receives read_by_segment_id responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "assessments": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "assessment_id": "123",
                  "offset": "0.0",
                  "report": true,
                  "weight": "1",
                  "agent_id": "5d80ee80-7608-55df-b2b2-5ab5608b9831",
                  "segment_id": "dbdf1f7b-c776-5e78-9676-98a397fb3cdc",
                  "user_name": "Supervisor",
                  "user_email": "supervisor@example.com",
                  "answer_id": "ed8697d3-558d-46c3-9b73-cd21cd93cbb3",
                  "answer_text": "Fair",
                  "timestamp": "1657329694199",
                  "assessment": {
                      "questionnaire": {
                          "questionnaire_id": "7326e997-a84c-57cd-9186-bb94db0def2b",
                          "name": "Customer Experience",
                          "question": {
                              "id": "41518739-4e38-5871-bb01-d9f6e0cd1377",
                              "name": "Active listening",
                              "category": {
                                  "id": "4b4e78e4-4f05-49e2-bf52-0973c5cde418",
                                  "name": "Good for Training"
                              }
                          }
                      }
                  },
                  "url": "https://flex-api.twilio.com/v1/Insights/QM/Assessments/123"
              }
          ],
          "meta": {
              "first_page_url": "https://flex-api.twilio.com/v1/Insights/QM/Assessments?SegmentId=dbdf1f7b-c776-5e78-9676-98a397fb3cdc&PageSize=50&Page=0",
              "key": "assessments",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://flex-api.twilio.com/v1/Insights/QM/Assessments?SegmentId=dbdf1f7b-c776-5e78-9676-98a397fb3cdc&PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.flex_api.v1.assessments.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "assessments": [],
          "meta": {
              "first_page_url": "https://flex-api.twilio.com/v1/Insights/QM/Assessments?SegmentId=dbdf1f7b-c776-5e78-9676-98a397fb3cdc&PageSize=50&Page=0",
              "key": "assessments",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://flex-api.twilio.com/v1/Insights/QM/Assessments?SegmentId=dbdf1f7b-c776-5e78-9676-98a397fb3cdc&PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.flex_api.v1.assessments.list()

    expect(actual).to_not eq(nil)
  end
end
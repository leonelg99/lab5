class PhoneValidator
    include HTTParty
    base_uri "https://phonevalidation.abstractapi.com/v1/"

    def initialize(phone)
        @phone  = phone
    end

    def valid?
        response = self.class.get("/", {
            query: {
                api_key: Rails.application.credentials.abstractapi_api_key,
                phone: @phone
            }
        })
        #response is from argentine
        response["country_code"] == "AR" && response["is_valid"] == true
    end
end
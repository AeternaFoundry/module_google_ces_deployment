variable "ces_deployments" {
  description = <<EOT
Map of ces_deployments, attributes below
Required:
    - app
    - app_version
    - display_name
    - location
    - channel_profile (block):
        - channel_type (optional)
        - disable_barge_in_control (optional)
        - disable_dtmf (optional)
        - persona_property (optional, block):
            - persona (optional)
        - profile_id (optional)
        - web_widget_config (optional, block):
            - modality (optional)
            - security_settings (optional, block):
                - allowed_origins (optional)
                - enable_origin_check (optional)
                - enable_public_access (optional)
                - enable_recaptcha (optional)
            - theme (optional)
            - web_widget_title (optional)
        - whatsapp_config (optional, block):
            - phone_number (optional)
            - phone_number_id (required)
            - waba_id (required)
Optional:
    - deletion_policy
    - project
    - instagram_credentials (block):
        - auth_code (optional)
        - auth_code_wo (optional)
        - auth_code_wo_version (optional)
        - conversation_profile_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - whatsapp_credentials (block):
        - auth_code (optional)
        - auth_code_wo (optional)
        - auth_code_wo_version (optional)
        - business_account_id (required)
        - conversation_profile_id (optional)
        - phone_number (required)
        - pin (optional)
        - pin_wo (optional)
        - pin_wo_version (optional)
        - waba_id (required)
EOT

  type = map(object({
    app             = string
    app_version     = string
    display_name    = string
    location        = string
    deletion_policy = optional(string)
    project         = optional(string)
    channel_profile = object({
      channel_type             = optional(string)
      disable_barge_in_control = optional(bool)
      disable_dtmf             = optional(bool)
      persona_property = optional(object({
        persona = optional(string)
      }))
      profile_id = optional(string)
      web_widget_config = optional(object({
        modality = optional(string)
        security_settings = optional(object({
          allowed_origins      = optional(list(string))
          enable_origin_check  = optional(bool)
          enable_public_access = optional(bool)
          enable_recaptcha     = optional(bool)
        }))
        theme            = optional(string)
        web_widget_title = optional(string)
      }))
      whatsapp_config = optional(object({
        phone_number    = optional(string)
        phone_number_id = string
        waba_id         = string
      }))
    })
    instagram_credentials = optional(object({
      auth_code               = optional(string)
      auth_code_wo            = optional(string)
      auth_code_wo_version    = optional(string)
      conversation_profile_id = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    whatsapp_credentials = optional(object({
      auth_code               = optional(string)
      auth_code_wo            = optional(string)
      auth_code_wo_version    = optional(string)
      business_account_id     = string
      conversation_profile_id = optional(string)
      phone_number            = string
      pin                     = optional(string)
      pin_wo                  = optional(string)
      pin_wo_version          = optional(string)
      waba_id                 = string
    }))
  }))
}


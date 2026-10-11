resource "google_ces_deployment" "ces_deployments" {
  for_each = var.ces_deployments

  app             = each.value.app
  app_version     = each.value.app_version
  display_name    = each.value.display_name
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  channel_profile {
    channel_type             = each.value.channel_profile.channel_type
    disable_barge_in_control = each.value.channel_profile.disable_barge_in_control
    disable_dtmf             = each.value.channel_profile.disable_dtmf
    dynamic "persona_property" {
      for_each = each.value.channel_profile.persona_property != null ? [each.value.channel_profile.persona_property] : []
      content {
        persona = persona_property.value.persona
      }
    }
    profile_id = each.value.channel_profile.profile_id
    dynamic "web_widget_config" {
      for_each = each.value.channel_profile.web_widget_config != null ? [each.value.channel_profile.web_widget_config] : []
      content {
        modality = web_widget_config.value.modality
        dynamic "security_settings" {
          for_each = web_widget_config.value.security_settings != null ? [web_widget_config.value.security_settings] : []
          content {
            allowed_origins      = security_settings.value.allowed_origins
            enable_origin_check  = security_settings.value.enable_origin_check
            enable_public_access = security_settings.value.enable_public_access
            enable_recaptcha     = security_settings.value.enable_recaptcha
          }
        }
        theme            = web_widget_config.value.theme
        web_widget_title = web_widget_config.value.web_widget_title
      }
    }
    dynamic "whatsapp_config" {
      for_each = each.value.channel_profile.whatsapp_config != null ? [each.value.channel_profile.whatsapp_config] : []
      content {
        phone_number    = whatsapp_config.value.phone_number
        phone_number_id = whatsapp_config.value.phone_number_id
        waba_id         = whatsapp_config.value.waba_id
      }
    }
  }

  dynamic "instagram_credentials" {
    for_each = each.value.instagram_credentials != null ? [each.value.instagram_credentials] : []
    content {
      auth_code               = instagram_credentials.value.auth_code
      auth_code_wo            = instagram_credentials.value.auth_code_wo
      auth_code_wo_version    = instagram_credentials.value.auth_code_wo_version
      conversation_profile_id = instagram_credentials.value.conversation_profile_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "whatsapp_credentials" {
    for_each = each.value.whatsapp_credentials != null ? [each.value.whatsapp_credentials] : []
    content {
      auth_code               = whatsapp_credentials.value.auth_code
      auth_code_wo            = whatsapp_credentials.value.auth_code_wo
      auth_code_wo_version    = whatsapp_credentials.value.auth_code_wo_version
      business_account_id     = whatsapp_credentials.value.business_account_id
      conversation_profile_id = whatsapp_credentials.value.conversation_profile_id
      phone_number            = whatsapp_credentials.value.phone_number
      pin                     = whatsapp_credentials.value.pin
      pin_wo                  = whatsapp_credentials.value.pin_wo
      pin_wo_version          = whatsapp_credentials.value.pin_wo_version
      waba_id                 = whatsapp_credentials.value.waba_id
    }
  }
}


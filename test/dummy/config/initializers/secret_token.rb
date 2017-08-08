# frozen_string_literal: true

Dummy::Application.config.secret_token = 'qwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyui'
Dummy::Application.config.secret_key_base = 'qwertyui' if Dummy::Application.config.respond_to?(:secret_key_base)

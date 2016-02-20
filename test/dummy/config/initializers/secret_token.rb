Dummy::Application.config.secret_token    = 'qwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyuiqwertyui'
Dummy::Application.config.secret_key_base = 'qwertyui' if Dummy::Application.config.respond_to?(:secret_key_base)

require 'test_helper'

describe FlagIconsRails::Rails::Engine do
  it "adds gem's assets to assets paths" do
    assets_paths = Rails.application.config.assets.paths

    assets_paths.must_include(path_to_assets('images'))
    assets_paths.must_include(path_to_assets('stylesheets'))
  end

  def path_to_assets(assets_type)
    File.join(FlagIconsRails.root, 'app', 'assets', assets_type)
  end
end

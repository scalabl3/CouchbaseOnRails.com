class SitemapController < ApplicationController
  include SitemapHelper
  respond_to :xml
  layout nil
  
  def index

    @other = [
      { :url => "/", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "index") },
      { :url => "/server", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "server") },
      { :url => "/libcouchbase", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "libcouchbase") },
      { :url => "/gems", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "gems") },
      { :url => "/rails", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "cbrails") },
      { :url => "/first-model", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "first_model") },
      { :url => "/irb", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "irb") },
      { :url => "/learn", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "learn") },
      { :url => "/understand", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "understand") },
      { :url => "/operations", :priority => 0.5, :change_frequency => "monthly", :last_modified => get_last_modified("main_app", "operations") }
    ]
        
    headers["Content-Type"] = "application/xml; charset=utf-8"
    render :layout => false, :content_type => "application/xml; charset=utf-8"
  end

end

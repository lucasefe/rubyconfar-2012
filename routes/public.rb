require 'cuba/contrib/text_helpers'
require './lib/helper'

class Public < Cuba

  plugin Helper
  plugin Cuba::TextHelpers
  plugin Cuba::Render
  plugin Cuba::Sugar
  settings.store(:template_engine, "slim")

  define do

    helpers do

      def notify_new_proposal(proposal, email)
        Malone.deliver to: email,
          from: Configuration.default_email,
          subject: t.proposal.notification.subject,
          html: partial("proposals/notification_#{current_locale}")
      end

      def current?(path)
        req.path == path
      end

      def link_to(title, path)
        localized_path = "/#{current_locale}#{path}"
        classes = current?(localized_path) ? "active" : ""
        "<a href='#{localized_path}' class='#{classes}'><span>#{title}</span></a>"
      end
    end

    on localized do

      on "sponsoring" do
        res.write view("pages/sponsoring_#{current_locale}")
      end

      on "ruby-fun-day" do
        res.write view("pages/rfd_#{current_locale}")
      end

      on "2011" do
        @subscriber = Subscriber.new
        res.write view("past/2011_#{current_locale}")
      end

      on "proposals" do
        on post, param(:proposal) do |proposal|
          @proposal= Proposal.new(proposal)
          if @proposal.save
            notify_new_proposal @proposal, @proposal.author_email
            notify_new_proposal @proposal, Configuration.default_email
            res.write partial("proposals/created")
          else
            res.write partial("proposals/form")
          end
        end

        on default do
          res.redirect "/"
        end
      end

      on "subscribers" do
        on post, param(:subscriber) do |subscriber|
          @subscriber = Subscriber.new(subscriber)
          if @subscriber.save
            res.write "<div id='party'><span></span><b>Ok.</b> We'll keep you posted.</div>"
          else
            res.write partial("subscribers/form")
          end
        end

        on default do
          res.redirect "/"
        end
      end

      on default do
        @subscriber = Subscriber.new
        @proposal = Proposal.new
        res.write page("index")
      end

    end

    on default do
      res.redirect "/es"
    end
  end
end

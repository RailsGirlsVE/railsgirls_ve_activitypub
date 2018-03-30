class ActorSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :type, :inbox, :outbox

  def id
    account_url(object)
  end

  def type
    'Person'
  end

  def inbox
    "#{account_url(object)}/inbox"
  end

  def outbox
    "#{account_url(object)}/outbox"
  end
end

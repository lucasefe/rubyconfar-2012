class Proposal < Sequel::Model

  self.raise_on_save_failure = false

  plugin :validation_helpers

  def validate
    super
    validates_presence [:author_email], message: lambda { R18n.t.proposal.is_not_present }
  end

end

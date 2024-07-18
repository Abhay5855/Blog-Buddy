module ApplicationHelper

  def user_initials(email)
    name_part = email.split('@').first
    initials = name_part.split('.').map { |part| part[0] }.join.upcase
    initials
  end     
end

class Search < ActiveRecord::Base

  def programs
    @programs ||= find_programs
  end

private
  def find_programs
    programs = Program.order(:name)
    programs = programs.where(department_id: department) if department.present?
    programs = programs.where("city like ?", "%#{city}%") if city.present?
    programs = programs.joins(:lots).where("lots.price <= ? ", price)
    programs = programs.joins(:lots).where("lots.typo like ?", "%#{typo}%")
    programs
  end
end

module PetsHelper
  def pet_tasks
    result = "<table>"
    if session[:user_id]
      user= User.find(session[:user_id])
      user.pets.each do |p|
        result << "<tr>"
        result << "<td>#{p.name}</td>"
        p.tasks.each do |t|
        result << "<td>#{link_to t.name, edit_task_path(t)}</td>"
        result << "</tr>"
        end
        result << "</table>"
      end
    end
    result.html_safe
  end
end

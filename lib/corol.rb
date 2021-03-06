module Corol
  colors = {
  #### Text Colors Codes ####
      RED:"\e[31m",                    
      WHITE:"\e[0m",
      BLACK:"\e[30m",
      GREEN:"\e[32m",
      YELLOW:"\e[33m",
      BLUE:"\e[34m",
      MAGENTA:"\e[35m",
      CYAN:"\e[36m",
      LIGHT_RED:"\e[91m",
      LIGHT_GREEN:"\e[92m",
      LIGHT_YELLOW:"\e[93m",
      LIGHT_BLUE:"\e[94m",
      LIGHT_MAGENTA:"\e[95m",
      LIGHT_CYAN:"\e[96m"
  }
  back_colors = {
  #### BackGround Colors Codes ####
      BACK_RED:"\e[41m",
      BACK_GREEN:"\e[42m",
      BACK_YELLOW:"\e[43m",
      BACK_BLUE:"\e[44m",
      BACK_MAGENTA:"\e[45m",
      BACK_CYAN:"\e[46m",
      BACK_LIGHT_RED:"\e[101m",
      BACK_LIGHT_GREEN:"\e[102m",
      BACK_LIGHT_YELLOW:"\e[103m",
      BACK_LIGHT_BLUE:"\e[104m",
      BACK_LIGHT_MAGENTA:"\e[105m",
      BACK_LIGHT_CYAN:"\e[106m"
  }
  formatting = {
  #### Formatting Codes ####
      BOLD:"\e[1m",
      DIM:"\e[2m",
      UND_LINE:"\e[4m",
      HIDDEN:"\e[8m"
  }
  hash_lists = [colors,back_colors,formatting] #array defined for store all hashs

  hash_lists.size.times do |l|
    hash_lists[l].keys.size.times do |i|
      define_method(hash_lists[l].keys[i].downcase) do   # This will define 30 methods with all hash keys . And we downcased them. 
        return hash_lists[l].values[i]+"#{self}"+"\e[0m" # Every line have to  end with "\e[0m" . Its also color code for white.
      end
    end
  end
end

class String ; include Corol ; end #we include module to use methods as instance methods

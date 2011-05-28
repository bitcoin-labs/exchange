
TOKEN_CHARS = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz".split('')

def randomToken(n)
  Array.new(n) { TOKEN_CHARS[rand(TOKEN_CHARS.size)] }.join
end




class UsersController < ApplicationController

  def register
    respond_to do |format|
      format.html
    end
  end

  def create
    @user = User.new(params[:user])
    
    @user.email = params[:email]
    @user.token = randomToken(8)
    
    @user.password = params[:password]
    @user.save!
    redirect_to @user
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      give_token
    else
      redirect_to '/'
    end
  end


#  def login
#    respond_to do |format|
#      format.html
#    end
#  end
#
#  def register
#    respond_to do |format|
#      format.html
#    end
#  end
#
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
#
#  def new
#    @user = User.new
#
#    respond_to do |format|
#      format.html # new.html.erb
#      format.xml  { render :xml => @user }
#    end
#  end
#
#  def create
#    @user = User.new(params[:user])
#
#    respond_to do |format|
#      if @user.save
#        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
#        format.xml  { render :xml => @user, :status => :created, :location => @user }
#      else
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
#      end
#    end
#  end

end

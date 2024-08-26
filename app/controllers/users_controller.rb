class UsersController < ApplicationController
  # POST /users or /users.json
  def create
    Rails.logger.info "UsersController#create called"
    Rails.logger.info "Params: #{params.inspect}"
    
    @user = User.new(user_params)
    
    Rails.logger.info "User object created: #{@user.inspect}"
    
    if @user.save
      Rails.logger.info "User saved successfully"
      session[:user_id] = @user.id
      redirect_to root_path, notice: "User created successfully! Welcome, #{@user.username}!"
    else
      Rails.logger.error "User save failed. Errors: #{@user.errors.full_messages}"
      flash.now[:alert] = @user.errors.full_messages.join(", ")
      render :new
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy!
    session[:user_id] = nil

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
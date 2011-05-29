class CashTransactionsController < ApplicationController
  # GET /cash_transactions
  # GET /cash_transactions.xml
  def index
    @cash_transactions = CashTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cash_transactions }
    end
  end

  # GET /cash_transactions/1
  # GET /cash_transactions/1.xml
  def show
    @cash_transaction = CashTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cash_transaction }
    end
  end

  # GET /cash_transactions/new
  # GET /cash_transactions/new.xml
  def new
    @cash_transaction = CashTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cash_transaction }
    end
  end

  # GET /cash_transactions/1/edit
  def edit
    @cash_transaction = CashTransaction.find(params[:id])
  end

  # POST /cash_transactions
  # POST /cash_transactions.xml
  def create
    @cash_transaction = CashTransaction.new(params[:cash_transaction])

    respond_to do |format|
      if @cash_transaction.save
        format.html { redirect_to(@cash_transaction, :notice => 'Cash transaction was successfully created.') }
        format.xml  { render :xml => @cash_transaction, :status => :created, :location => @cash_transaction }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cash_transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cash_transactions/1
  # PUT /cash_transactions/1.xml
  def update
    @cash_transaction = CashTransaction.find(params[:id])

    respond_to do |format|
      if @cash_transaction.update_attributes(params[:cash_transaction])
        format.html { redirect_to(@cash_transaction, :notice => 'Cash transaction was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cash_transaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cash_transactions/1
  # DELETE /cash_transactions/1.xml
  def destroy
    @cash_transaction = CashTransaction.find(params[:id])
    @cash_transaction.destroy

    respond_to do |format|
      format.html { redirect_to(cash_transactions_url) }
      format.xml  { head :ok }
    end
  end
end

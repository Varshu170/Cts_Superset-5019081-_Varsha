CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment(p_loan_amount IN NUMBER, p_interest_rate IN NUMBER, p_duration_years IN NUMBER) RETURN NUMBER IS
    v_monthly_installment NUMBER;
BEGIN
    v_monthly_installment := (p_loan_amount * (p_interest_rate / 100) / 12) / (1 - POWER(1 + (p_interest_rate / 100) / 12, -p_duration_years * 12));
    RETURN v_monthly_installment;
END CalculateMonthlyInstallment;

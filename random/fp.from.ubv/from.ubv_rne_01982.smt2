(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 11974297020700510253031491654136470306) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00001001000000100010101001101100100110000001101011110001001111111100011010011111001110100100001010100110110001011001101100100010))
;; x should be 11974297020700510253031491654136470306
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47A20454D93035E2))))
(check-sat)
(exit)

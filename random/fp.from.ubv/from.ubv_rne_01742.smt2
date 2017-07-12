(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 13661737634943824214) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011110110011000001111011111111011111001011010010111000101010110))
;; x should be 13661737634943824214
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x43E7B307BFDF2D2E))))
(check-sat)
(exit)

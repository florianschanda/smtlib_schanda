(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 309218065) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00010010011011100100101100010001))
;; x should be 309218065
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10000011011 #b0010011011100100101100010001000000000000000000000000))))
(check-sat)
(exit)

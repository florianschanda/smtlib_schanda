(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1302484535) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001101101000100101011000110111))
;; x should be 1302484535
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x41D368958DC00000))))
(check-sat)
(exit)

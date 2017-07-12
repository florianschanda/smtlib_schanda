(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 14385082427625079219) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1100011110100010000101000100000010100011010011101000000110110011))
;; x should be 14385082427625079219
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)

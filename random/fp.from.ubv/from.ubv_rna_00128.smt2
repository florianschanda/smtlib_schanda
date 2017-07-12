(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 88) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b01011000))
;; x should be 88
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x5580))))
(check-sat)
(exit)

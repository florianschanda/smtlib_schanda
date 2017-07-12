(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 49148) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1011111111111100))
;; x should be 49148
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7A00)))
(check-sat)
(exit)

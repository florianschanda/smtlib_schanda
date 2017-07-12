(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 31426) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0111101011000010))
;; x should be 31426
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r ((_ to_fp 5 11) #x77AC)))
(check-sat)
(exit)

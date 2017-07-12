(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 106) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01101010))
;; x should be 106
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r (fp #b0 #b10101 #b1010100000)))
(check-sat)
(exit)

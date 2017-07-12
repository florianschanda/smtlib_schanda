(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3018657629) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10110011111011010000111101011101))
;; x should be 3018657629
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)

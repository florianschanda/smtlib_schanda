(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 1754783678399971981) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0001100001011010001111100111010101010000101011110000001010001101))
;; x should be 1754783678399971981
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)

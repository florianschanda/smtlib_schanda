(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 49152) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1100000000000000))
;; x should be 49152
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r (fp #b0 #b10001110 #b10000000000000000000000)))
(check-sat)
(exit)

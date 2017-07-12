(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1073741827) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01000000000000000000000000000011))
;; x should be 1073741827
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r (fp #b0 #b10011101 #b00000000000000000000000)))
(check-sat)
(exit)

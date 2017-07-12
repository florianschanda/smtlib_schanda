(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 24239) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0101111010101111))
;; x should be 24239
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r (fp #b0 #b10001101 #b01111010101111000000000)))
(check-sat)
(exit)

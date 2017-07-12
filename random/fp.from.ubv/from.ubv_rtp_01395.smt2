(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3221225474) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11000000000000000000000000000010))
;; x should be 3221225474
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r (fp #b0 #b10000011110 #b1000000000000000000000000000010000000000000000000000)))
(check-sat)
(exit)

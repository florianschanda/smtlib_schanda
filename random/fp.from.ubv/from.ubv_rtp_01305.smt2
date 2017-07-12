(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2147483651) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10000000000000000000000000000011))
;; x should be 2147483651
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10000011110 #b0000000000000000000000000000011000000000000000000000)))
(check-sat)
(exit)

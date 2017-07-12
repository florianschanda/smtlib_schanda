(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 4611686018427387905) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0100000000000000000000000000000000000000000000000000000000000001))
;; x should be 4611686018427387905
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10000111101 #b0000000000000000000000000000000000000000000000000001)))
(check-sat)
(exit)

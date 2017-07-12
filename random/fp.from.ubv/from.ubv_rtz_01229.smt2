(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2698225068) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10100000110100111010010110101100))
;; x should be 2698225068
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r (fp #b0 #b10000011110 #b0100000110100111010010110101100000000000000000000000)))
(check-sat)
(exit)

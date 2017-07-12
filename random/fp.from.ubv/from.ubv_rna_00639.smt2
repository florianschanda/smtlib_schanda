(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 16385) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0100000000000001))
;; x should be 16385
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r ((_ to_fp 11 53) #x40D0004000000000)))
(check-sat)
(exit)

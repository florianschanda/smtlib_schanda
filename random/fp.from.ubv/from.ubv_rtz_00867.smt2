(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 49152) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1100000000000000))
;; x should be 49152
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r ((_ to_fp 11 53) #x40E8000000000000)))
(check-sat)
(exit)

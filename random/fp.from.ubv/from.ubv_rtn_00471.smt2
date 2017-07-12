(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 195) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11000011))
;; x should be 195
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r ((_ to_fp 8 24) #x43430000)))
(check-sat)
(exit)

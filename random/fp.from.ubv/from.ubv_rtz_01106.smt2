(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 1911940480) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01110001111101011110010110000000))
;; x should be 1911940480
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r ((_ to_fp 8 24) #x4EE3EBCB)))
(check-sat)
(exit)

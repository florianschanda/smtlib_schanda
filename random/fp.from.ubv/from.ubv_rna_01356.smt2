(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3221225473) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11000000000000000000000000000001))
;; x should be 3221225473
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r ((_ to_fp 8 24) #x4F400000)))
(check-sat)
(exit)

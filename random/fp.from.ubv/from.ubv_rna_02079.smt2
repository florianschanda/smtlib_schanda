(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 85070591730234615865843651857942052865) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;; x should be 85070591730234615865843651857942052865
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7E800000)))
(check-sat)
(exit)

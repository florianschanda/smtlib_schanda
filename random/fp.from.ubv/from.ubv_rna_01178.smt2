(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2074246831) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01111011101000100111111010101111))
;; x should be 2074246831
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4EF744FD)))
(check-sat)
(exit)

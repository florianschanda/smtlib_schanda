(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1998246273) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01110111000110101101000110000001))
;; x should be 1998246273
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4EEE35A3)))
(check-sat)
(exit)

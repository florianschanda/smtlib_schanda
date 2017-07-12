(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 16386) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100000000000010))
;; x should be 16386
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r ((_ to_fp 8 24) #x46800400)))
(check-sat)
(exit)

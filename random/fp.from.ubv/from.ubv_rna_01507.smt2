(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4611686018427387902) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011111111111111111111111111111111111111111111111111111111111110))
;; x should be 4611686018427387902
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r ((_ to_fp 8 24) #x5E800000)))
(check-sat)
(exit)

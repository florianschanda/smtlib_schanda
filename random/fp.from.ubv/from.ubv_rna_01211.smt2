(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3000668004) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10110010110110101000111101100100))
;; x should be 3000668004
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41E65B51EC800000)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3680167837) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11011011010110101110011110011101))
;; x should be 3680167837
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41EB6B5CF3A00000)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 11520) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0010110100000000))
;; x should be 11520
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.geq r ((_ to_fp 11 53) #x40C6800000000000)))
(check-sat)
(exit)

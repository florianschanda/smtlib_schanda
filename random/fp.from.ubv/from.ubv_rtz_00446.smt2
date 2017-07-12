(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 214) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11010110))
;; x should be 214
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r ((_ to_fp 8 24) #x43560000)))
(check-sat)
(exit)

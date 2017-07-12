(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2147483646) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01111111111111111111111111111110))
;; x should be 2147483646
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41DFFFFFFF800000)))
(check-sat)
(exit)

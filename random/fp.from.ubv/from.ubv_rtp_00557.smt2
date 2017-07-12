(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2546) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0000100111110010))
;; x should be 2546
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.geq r ((_ to_fp 5 11) #x68F9)))
(check-sat)
(exit)

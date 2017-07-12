(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2693847451) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10100000100100001101100110011011))
;; x should be 2693847451
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)

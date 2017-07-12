(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 228246355) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00001101100110101100001101010011))
;; x should be 228246355
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4D59AC36)))
(check-sat)
(exit)

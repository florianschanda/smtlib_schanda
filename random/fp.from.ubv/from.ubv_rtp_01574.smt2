(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 6905515570203803696) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0101111111010101010100011101001011111000111011010100000000110000))
;; x should be 6905515570203803696
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)

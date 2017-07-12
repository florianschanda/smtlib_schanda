(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 13268600105220455404) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1011100000100011100010010111111011100010011000000011101111101100))
;; x should be 13268600105220455404
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x43E704712FDC4C07)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4360481306114492725) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011110010000011100010101010010100100100101011111000100100110101))
;; x should be 4360481306114492725
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r (fp #b0 #b10111100 #b11100100000111000101011)))
(check-sat)
(exit)

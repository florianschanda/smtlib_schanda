(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 161435216131785543849801171029194159687) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01111001011100110100101010101011101101110110000011000111111100011101101010111101010100011101100100101000011101111011011001000111))
;; x should be 161435216131785543849801171029194159687
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47DE5CD2AAEDD832))))
(check-sat)
(exit)

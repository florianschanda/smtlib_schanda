(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 99981134976021912813392319434279889675) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01001011001101111010101010001010010001100111110010111110111010101111110111010101101101101011100001001110010100000010101100001011))
;; x should be 99981134976021912813392319434279889675
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)

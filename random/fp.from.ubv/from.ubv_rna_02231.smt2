(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 195860285118164124379553044455355672058) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10010011010110010101000110011101000010101110010110100110100110101100011111110110101101111011000001111101000001010110010111111010))
;; x should be 195860285118164124379553044455355672058
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)

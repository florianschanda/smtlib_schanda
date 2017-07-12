(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 136083173081735340102176846955763852917) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01100110011000001010101001110001101001000100010110000110100000111010010101110000100111010101000011001111010000011110011001110101))
;; x should be 136083173081735340102176846955763852917
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)

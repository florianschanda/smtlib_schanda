(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 24968471999126440795807015685779866068) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00010010110010001100000010110110110001010111111010000111010111011111100001110011010100000110101101011011100111111100000111010100))
;; x should be 24968471999126440795807015685779866068
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)

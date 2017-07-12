(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 97571209512055182556179196655538566031) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01001001011001111000100000001010100011000000100110011011001111100000101010111101000011001011111001010000010000000111001110001111))
;; x should be 97571209512055182556179196655538566031
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b11111101 #b00100101100111100010001))))
(check-sat)
(exit)

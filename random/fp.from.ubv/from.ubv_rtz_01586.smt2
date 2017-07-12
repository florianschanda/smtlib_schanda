(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 5526044892445826652) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0100110010110000011101001000110100101011000110000101111001011100))
;; x should be 5526044892445826652
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10111101 #b00110010110000011101001))))
(check-sat)
(exit)

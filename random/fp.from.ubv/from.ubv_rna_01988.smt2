(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 76107610385726026609542030061108894386) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00111001010000011100101011100110110001001111110000000110100010111000110010000001001010001000101111010001000111101001101010110010))
;; x should be 76107610385726026609542030061108894386
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x47CCA0E573627E03))))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 53579353373446615385906599455512622190) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00101000010011110000001000010011010000001101101010110011011110100001001101010000111000101001110000011001001010000111010001101110))
;; x should be 53579353373446615385906599455512622190
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x47C4278109A06D5A))))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 93726476123806660395901617301577858247) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01000110100000110001000000001100110001010110111100011101110001001001000010110011010000011010010101000001101100001111110011000111))
;; x should be 93726476123806660395901617301577858247
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)

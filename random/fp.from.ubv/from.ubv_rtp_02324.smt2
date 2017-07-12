(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 287201293084726504190937060046563446005) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11011000000100001111010100000000101100100000010110110011011011111100000100100110001010101101001001000101110110000000110011110101))
;; x should be 287201293084726504190937060046563446005
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)

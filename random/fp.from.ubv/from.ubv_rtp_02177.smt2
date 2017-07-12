(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 254901490196079143621091014624757188772) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10111111110001000011110111000100110001011011000001010011000100000010100011010110101001110000110011100001111110001000100010100100))
;; x should be 254901490196079143621091014624757188772
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)

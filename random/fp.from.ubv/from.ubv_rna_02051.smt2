(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 155227853622089002411566193232483192448) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01110100110001111100110000010001111110110011101101001011111101000101100010001010110011000110011000100100001100000000111010000000))
;; x should be 155227853622089002411566193232483192448
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b11111101 #b11010011000111110011000))))
(check-sat)
(exit)

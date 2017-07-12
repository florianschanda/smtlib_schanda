(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 95445714966189613377862473581127961738) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01000111110011100010110100010001101110010001111001100111110100001000111110001110010100000111001001101011101011101000110010001010))
;; x should be 95445714966189613377862473581127961738
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.leq r (fp #b0 #b11111101 #b00011111001110001011010))))
(check-sat)
(exit)

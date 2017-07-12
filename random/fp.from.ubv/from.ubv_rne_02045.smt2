(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 108299384930210689094444889911275654388) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01010001011110011011001111101101010010110111011111001111111001111110001010110011100111111000011011101011000101011000110011110100))
;; x should be 108299384930210689094444889911275654388
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x47D45E6CFB52DDF4))))
(check-sat)
(exit)

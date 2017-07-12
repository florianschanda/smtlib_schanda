(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 17503356690087645465) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1111001011101000011010100010110001000001101000011001000100011001))
;; x should be 17503356690087645465
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)

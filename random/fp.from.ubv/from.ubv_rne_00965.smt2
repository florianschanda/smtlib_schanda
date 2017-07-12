(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 559462648) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00100001010110001011100011111000))
;; x should be 559462648
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10011100 #b00001010110001011100100))))
(check-sat)
(exit)

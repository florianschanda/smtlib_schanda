(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3454572246) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001101111010001001011011010110))
;; x should be 3454572246
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x4F4DE897))))
(check-sat)
(exit)

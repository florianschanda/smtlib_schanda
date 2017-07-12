(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 15795307563455364672) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1101101100110100001101001000101010110101110011000011111001000000))
;; x should be 15795307563455364672
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x5F5B3435))))
(check-sat)
(exit)

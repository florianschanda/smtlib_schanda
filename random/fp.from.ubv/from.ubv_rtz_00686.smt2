(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 23554) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0101110000000010))
;; x should be 23554
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x46B80400))))
(check-sat)
(exit)

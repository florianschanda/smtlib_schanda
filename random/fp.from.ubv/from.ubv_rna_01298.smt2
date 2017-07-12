(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3029204491) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10110100100011011111111000001011))
;; x should be 3029204491
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x4F348DFE))))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3996582785) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11101110001101110000001110000001))
;; x should be 3996582785
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x4F6E3704))))
(check-sat)
(exit)

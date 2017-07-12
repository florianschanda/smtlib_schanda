(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1073741824) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01000000000000000000000000000000))
;; x should be 1073741824
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)

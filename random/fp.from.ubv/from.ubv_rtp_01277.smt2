(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 2269021274) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000111001111101000010001011010))
;; x should be 2269021274
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 9444) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0010010011100100))
;; x should be 9444
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x709D))))
(check-sat)
(exit)

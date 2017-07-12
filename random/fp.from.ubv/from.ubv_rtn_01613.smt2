(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 5926553244898057073) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0101001000111111010110001100011010101000100101100101101101110001))
;; x should be 5926553244898057073
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)

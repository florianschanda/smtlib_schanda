(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 59276465) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000011100010000111110010110001))
;; x should be 59276465
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x418C43E588000000))))
(check-sat)
(exit)

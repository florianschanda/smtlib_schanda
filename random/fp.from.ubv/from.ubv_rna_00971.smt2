(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 837861780) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00110001111100001100000110010100))
;; x should be 837861780
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x4E47C306))))
(check-sat)
(exit)

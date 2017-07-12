(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 17271399351155237885) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1110111110110000010101100011001110111011100001010010001111111101))
;; x should be 17271399351155237885
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x43EDF60AC67770A4))))
(check-sat)
(exit)

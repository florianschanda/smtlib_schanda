(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 139591988518733981274502835189975264079) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01101001000001000111000001100110110010101011010110010100101110000100101000001111110111101111000010100000001100101010101101001111))
;; x should be 139591988518733981274502835189975264079
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)

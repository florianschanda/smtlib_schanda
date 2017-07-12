(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 39047) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1001100010000111))
;; x should be 39047
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x78C5))))
(check-sat)
(exit)

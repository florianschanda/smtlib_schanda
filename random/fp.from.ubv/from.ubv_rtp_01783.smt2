(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 13835058055282163711) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1011111111111111111111111111111111111111111111111111111111111111))
;; x should be 13835058055282163711
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)

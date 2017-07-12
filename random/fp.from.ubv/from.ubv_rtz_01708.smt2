(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 13835058055282163708) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011111111111111111111111111111111111111111111111111111111111100))
;; x should be 13835058055282163708
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b01111111111111111111111))))
(check-sat)
(exit)

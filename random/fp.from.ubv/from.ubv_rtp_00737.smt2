(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 36448) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1000111001100000))
;; x should be 36448
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x470E6000))))
(check-sat)
(exit)

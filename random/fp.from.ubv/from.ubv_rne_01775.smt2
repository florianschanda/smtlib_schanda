(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 10846469902751600503) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1001011010000110011001101110100011010100011110011000111101110111))
;; x should be 10846469902751600503
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)

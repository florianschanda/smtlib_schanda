(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 6678465685612861319) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0101110010101110101011010010100000110011100101110001011110000111))
;; x should be 6678465685612861319
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)

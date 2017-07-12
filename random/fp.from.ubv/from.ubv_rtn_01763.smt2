(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 10189893494731032834) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1000110101101001110001100010010100100100100000011100100100000010))
;; x should be 10189893494731032834
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)

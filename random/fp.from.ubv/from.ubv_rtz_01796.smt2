(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 12807628722010470611) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011000110111101110101100111011100000110100001100011100011010011))
;; x should be 12807628722010470611
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x43E637BACEE0D0C7))))
(check-sat)
(exit)

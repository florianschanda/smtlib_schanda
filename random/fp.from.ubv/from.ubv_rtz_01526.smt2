(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3262967013070368822) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0010110101001000011000110011010111011111111000000111000000110110))
;; x should be 3262967013070368822
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x5E35218C))))
(check-sat)
(exit)

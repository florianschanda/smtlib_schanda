(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 30777477198397755606626347765695383625) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00010111001001111000011011001000010111101100111101111111010111111100110011111101011101100010000010011101101110100000100001001001))
;; x should be 30777477198397755606626347765695383625
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x7DB93C36))))
(check-sat)
(exit)

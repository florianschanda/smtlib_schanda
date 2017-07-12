(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3896067698478180438) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0011011000010001100111001110110111110100101010100110100001010110))
;; x should be 3896067698478180438
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x5E584673))))
(check-sat)
(exit)

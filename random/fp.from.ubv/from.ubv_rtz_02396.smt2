(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 256738969146628947185183029465381167411) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11000001001001100010000001111001101101000100110101100111110010011111100011010100000000110100101001000000100111010110000100110011))
;; x should be 256738969146628947185183029465381167411
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x7F412620))))
(check-sat)
(exit)

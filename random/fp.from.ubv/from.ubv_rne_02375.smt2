(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 315270596344014939131431256146607622615) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11101101001011101110100010000000010110000001100010011010110100000011001001101010001011010101001111111100110011000100100111010111))
;; x should be 315270596344014939131431256146607622615
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47EDA5DD100B0313))))
(check-sat)
(exit)

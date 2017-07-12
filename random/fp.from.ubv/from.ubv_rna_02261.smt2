(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 228867770871550847018725235432857896391) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10101100001011100101010001001110011111011000011101101010000010010100100010111000100001011000100110111000011011011000010111000111))
;; x should be 228867770871550847018725235432857896391
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x7F2C2E54))))
(check-sat)
(exit)

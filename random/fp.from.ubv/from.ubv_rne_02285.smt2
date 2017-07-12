(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 275331776621264826114369766559911179364) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11001111001000101111100010101000101010100011101100111001001010111010100010100101111001000010011111010000000110101111010001100100))
;; x should be 275331776621264826114369766559911179364
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x7F4F22F9))))
(check-sat)
(exit)

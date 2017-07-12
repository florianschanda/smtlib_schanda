(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 67926787298526156830341758593771557477) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00110011000110100011100100101110101011000101001000010110000110101100011101111100000110000101001101011010011010001101001001100101))
;; x should be 67926787298526156830341758593771557477
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)

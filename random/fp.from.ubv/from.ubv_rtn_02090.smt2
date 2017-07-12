(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 87259070777594976428126790025244481533) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01000001101001010111110001011000111111110110101100000010011011110111101001010010010110010110111100000110111100101001011111111101))
;; x should be 87259070777594976428126790025244481533
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)

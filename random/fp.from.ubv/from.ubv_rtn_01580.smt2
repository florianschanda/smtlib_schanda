(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 7788693168287275676) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0110110000010110111111110010101110011000010001100101101010011100))
;; x should be 7788693168287275676
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)

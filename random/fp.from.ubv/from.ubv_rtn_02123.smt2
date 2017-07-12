(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 106935470267039405411044667101488513650) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01010000011100110000010110111110000000000101111110111011101110000010110110011011000011101110010111101101000010101000001001110010))
;; x should be 106935470267039405411044667101488513650
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47D41CC16F8017EE))))
(check-sat)
(exit)

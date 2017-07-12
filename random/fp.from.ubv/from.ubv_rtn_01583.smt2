(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 7844470501927505152) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0110110011011101001010000101110000010110011010110100110100000000))
;; x should be 7844470501927505152
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)

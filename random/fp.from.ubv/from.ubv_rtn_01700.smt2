(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 9954106845640385752) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1000101000100100000101110110111111011110101011011110010011011000))
;; x should be 9954106845640385752
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r ((_ to_fp 8 24) #x5F0A2417)))
(check-sat)
(exit)

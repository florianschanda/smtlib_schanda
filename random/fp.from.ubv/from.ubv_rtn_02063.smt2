(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 107552929587477563634364767187141959320) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01010000111010011111000011010110010010111111101001011000010111101111000101100010100101111010011101010011110110001001111010011000))
;; x should be 107552929587477563634364767187141959320
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)

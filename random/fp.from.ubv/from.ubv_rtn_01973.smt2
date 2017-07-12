(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 6425087479157368393526506135814270601) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00000100110101010110110101000101001100101110110000101110001100000001101010100111001001010000111000010000110010011110111010001001))
;; x should be 6425087479157368393526506135814270601
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 238734709887072138890895360072768502047) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10110011100110101010000111110101100101100100100110101111001010110110010001111101100101011010100001011111010101110011100100011111))
;; x should be 238734709887072138890895360072768502047
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)

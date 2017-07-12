(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 18439506083172811697) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111111111100110010010010001011000000001001010111000001110110001))
;; x should be 18439506083172811697
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)

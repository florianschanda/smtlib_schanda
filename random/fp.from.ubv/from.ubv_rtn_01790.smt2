(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 11882377176741162519) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1010010011100110101011110001011000110010110111011010111000010111))
;; x should be 11882377176741162519
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x43E49CD5E2C65BB5)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 687969906) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00101001000000011001011001110010))
;; x should be 687969906
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x41C480CB39000000)))
(check-sat)
(exit)

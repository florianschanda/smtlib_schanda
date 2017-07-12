(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 959503558) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00111001001100001101110011000110))
;; x should be 959503558
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r ((_ to_fp 11 53) #x41CC986E63000000)))
(check-sat)
(exit)

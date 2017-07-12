(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 836182591) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00110001110101110010001000111111))
;; x should be 836182591
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)

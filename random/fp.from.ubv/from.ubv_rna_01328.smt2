(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 4053431356) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11110001100110100111010000111100))
;; x should be 4053431356
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)

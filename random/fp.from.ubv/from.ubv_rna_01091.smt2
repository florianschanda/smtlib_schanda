(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 1420344596) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01010100101010001011110100010100))
;; x should be 1420344596
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)

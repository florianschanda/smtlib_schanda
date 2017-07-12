(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 14641385083537474319) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1100101100110000101001100010100011111011111101000100001100001111))
;; x should be 14641385083537474319
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.leq r (_ +oo 5 11)))
(check-sat)
(exit)

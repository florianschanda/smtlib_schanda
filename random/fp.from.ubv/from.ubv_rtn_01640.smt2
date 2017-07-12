(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 5017415647921699598) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0100010110100001011100001111001011001000110110111111101100001110))
;; x should be 5017415647921699598
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)

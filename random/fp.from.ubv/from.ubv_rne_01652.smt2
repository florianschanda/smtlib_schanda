(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 8422473137363006851) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0111010011100010101000101011000110111010110010101011010110000011))
;; x should be 8422473137363006851
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r ((_ to_fp 8 24) #x5EE9C545)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 110135181606945743516795357217147422352) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01010010110110110100001110110000111100100011100001010011101101001101111101100100111000111011010100010110100011011000011010010000))
;; x should be 110135181606945743516795357217147422352
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)

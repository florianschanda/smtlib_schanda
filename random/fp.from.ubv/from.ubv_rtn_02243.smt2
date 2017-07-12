(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 187235511055365936173467726635316174510) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10001100110111000011111101101011110110011011100011000111110000011100000110000100111010110001101111001010100101100101111010101110))
;; x should be 187235511055365936173467726635316174510
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 38217610922184727760612008753735879737) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00011100110000000111000110110010010110111111111000001011010000110010100010101001000000110010100111111111000110110100110000111001))
;; x should be 38217610922184727760612008753735879737
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r ((_ to_fp 11 53) #x47BCC071B25BFE0B)))
(check-sat)
(exit)

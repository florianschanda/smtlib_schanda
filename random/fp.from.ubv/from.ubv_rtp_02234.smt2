(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 203951649678534923443502529548189458962) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10011001011011111010100010101111110010011010001100000111001000001101111000111101100111001111000100000011111001000110001000010010))
;; x should be 203951649678534923443502529548189458962
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r (fp #b0 #b11111110 #b00110010110111110101001)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 160072260822453688786693663219869508544) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01111000011011001100101111001001001010111011100101000001011111110010010001100111011001010010110000001010000110110110001111000000))
;; x should be 160072260822453688786693663219869508544
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47DE1B32F24AEE50))))
(check-sat)
(exit)

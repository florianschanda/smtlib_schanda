(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 324288334705450517987571894695527746415) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11110011111101111010100101010100010010110010111111010010101010111101101000011011101000110000001001110001100010001000101101101111))
;; x should be 324288334705450517987571894695527746415
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r ((_ to_fp 11 53) #x47EE7EF52A8965FA)))
(check-sat)
(exit)

(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 313224510264274475498989181186009655752) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11101011101001001101100010101011010001011001000010101010001111011010101000000101110011111100110100000000000000101110100111001000))
;; x should be 313224510264274475498989181186009655752
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)

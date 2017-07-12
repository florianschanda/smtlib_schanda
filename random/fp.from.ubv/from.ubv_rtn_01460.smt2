(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4227894024960086804) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0011101010101100011111110011011100100001101111100001001100010100))
;; x should be 4227894024960086804
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)

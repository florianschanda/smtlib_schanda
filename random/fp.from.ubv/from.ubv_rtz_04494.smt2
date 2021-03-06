(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10110010111111110000111001111000001110011101000111111111101111000001000000000000010101101101001111010111011110101110011101111110))
;; x should be 237926912427649877985969540784855902078

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11111110 #b01100101111111100001110))))
(check-sat)
(exit)

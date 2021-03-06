(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b11001100010010001101111001111111101101001111111001001001000111101000111010001111000010010101001011110110101010010011111111100101))
;; x should be -68741497594077753596886541325798129691

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTZ x)))
(assert (not (fp.geq r (fp #b1 #b11111100 #b10011101101110010000110))))
(check-sat)
(exit)

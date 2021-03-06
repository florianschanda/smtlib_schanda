(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00011010010111001010000100001100101111111001101111110110110101111010111000110011110100100101111001110110111011110101101010001100))
;; x should be 35040885679377340986108641177926326924

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b11111011 #b10100101110010100001000)))
(check-sat)
(exit)

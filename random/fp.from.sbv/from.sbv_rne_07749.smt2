(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b0000110110101000011011110100101011011110010001101011111110011101))
;; x should be 984158885927894941

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNE x)))
(assert (fp.leq r (fp #b0 #b10000111010 #b1011010100001101111010010101101111001000110101111111)))
(check-sat)
(exit)

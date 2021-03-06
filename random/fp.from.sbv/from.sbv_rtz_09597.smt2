(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsle x #b11100110000001101110110100111000111100111101101100001011111100011000100011111110010111000110001011010100111111010111011101111011))
;; x should be -34523962665933768942383902020023257221

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTZ x)))
(assert (fp.leq r (fp #b1 #b11110 #b1111111111)))
(check-sat)
(exit)

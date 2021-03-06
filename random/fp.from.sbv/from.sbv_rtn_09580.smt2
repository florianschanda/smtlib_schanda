(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b11011110111100011011001001000101000001010101101100101000000100110111001000011100010101100010101100011010011011010111110111000011))
;; x should be -43938792576469956186617183321317343805

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (fp.eq r (fp #b1 #b10001111100 #b0000100001110010011011011101011111010101001001101100)))
(check-sat)
(exit)

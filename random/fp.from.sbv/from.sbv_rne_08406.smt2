(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1100000001001101000100111000011001010000011001001001011000110100))
;; x should be -4589990977625352652

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (fp.eq r (fp #b1 #b10111100 #b11111101100101110110010)))
(check-sat)
(exit)

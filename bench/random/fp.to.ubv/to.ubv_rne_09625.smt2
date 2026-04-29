(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10011000110010111010111)))
;; x should be Float32(0x4ACC65D7 [Rational(13395415, 2), 6697707.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 6697708

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011001100011001011101100))
;; z should be 6697708

(assert (= y z))
(check-sat)
(exit)

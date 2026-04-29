(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00000110111011010000001)))
;; x should be Float32(0x4A837681 [Rational(8615553, 2), 4307776.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be 4307776

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010000011011101101000000))
;; z should be 4307776

(assert (= y z))
(check-sat)
(exit)

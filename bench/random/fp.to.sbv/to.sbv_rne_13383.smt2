(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00011011101110101000000)))
;; x should be Float32(0x4A0DDD40 [Rational(2324304), 2324304.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 2324304

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001000110111011101010000))
;; z should be 2324304

(assert (= y z))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001000 #b10110110001100111000011)))
;; x should be Float32(0x445B19C3 [Rational(14358979, 16384), 876.402527])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 876

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000001101101100))
;; z should be 876

(assert (= y z))
(check-sat)
(exit)

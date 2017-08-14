(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10111101 #b00111011110110011010011)))
;; x should be Float32(0x5E9DECD3 [Rational(5689851177705930752), 5689851177705930752.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 5689851177705930752

(declare-const z (_ BitVec 64))
(assert (= z #b0100111011110110011010011000000000000000000000000000000000000000))
;; z should be 5689851177705930752

(assert (= y z))
(check-sat)
(exit)

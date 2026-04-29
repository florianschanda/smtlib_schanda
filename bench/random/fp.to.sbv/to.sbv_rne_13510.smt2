(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001000 #b10110110011100111000011)))
;; x should be Float32(0x445B39C3 [Rational(14367171, 16384), 876.902527])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be 877

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000001101101101))
;; z should be 877

(assert (= y z))
(check-sat)
(exit)

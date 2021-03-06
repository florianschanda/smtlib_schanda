(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01011001010001100111000)))
;; x should be Float32(0x49ACA338 [Rational(1414247), 1414247.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 1414247

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000101011001010001100111))
;; z should be 1414247

(assert (= y z))
(check-sat)
(exit)

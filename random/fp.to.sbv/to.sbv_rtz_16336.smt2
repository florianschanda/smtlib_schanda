(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49ACA334)))
;; x should be Float32(0x49ACA334 [Rational(2828493, 2), 1414246.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 1414246

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000101011001010001100110))
;; z should be 1414246

(assert (= y z))
(check-sat)
(exit)

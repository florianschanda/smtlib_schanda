(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00001111110001100101110)))
;; x should be Float32(0x4A87E32E [Rational(4452759), 4452759.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 4452759

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010000111111000110010111))
;; z should be 4452759

(assert (= y z))
(check-sat)
(exit)

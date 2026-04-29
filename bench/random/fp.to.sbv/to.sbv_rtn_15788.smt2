(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001010 #b10111100001001101111010)))
;; x should be Float32(0x455E137A [Rational(7276989, 2048), 3553.217285])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 3553

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000110111100001))
;; z should be 3553

(assert (= y z))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x455E037A)))
;; x should be Float32(0x455E037A [Rational(7274941, 2048), 3552.217285])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 3552

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000110111100000))
;; z should be 3552

(assert (= y z))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4E0725EB)))
;; x should be Float32(0x4E0725EB [Rational(566852288), 566852288.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b11011110))
;; z should be -34

(assert (= y z))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4992EEC4)))
;; x should be Float32(0x4992EEC4 [Rational(2407345, 2), 1203672.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 1203672

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000100100101110111011000))
;; z should be 1203672

(assert (= y z))
(check-sat)
(exit)

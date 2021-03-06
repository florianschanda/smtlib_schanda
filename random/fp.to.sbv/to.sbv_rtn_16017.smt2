(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA887798)))
;; x should be Float32(0xCA887798 [Rational(-4471756), -4471756.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -4471756

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101110111100010000110100))
;; z should be -4471756

(assert (= y z))
(check-sat)
(exit)

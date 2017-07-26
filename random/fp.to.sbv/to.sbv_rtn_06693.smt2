(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01001010000110111100000)))
;; x should be Float32(0x4A250DE0 [Rational(2704248), 2704248.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 2704248

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001010010100001101111000))
;; z should be 2704248

(assert (= y z))
(check-sat)
(exit)

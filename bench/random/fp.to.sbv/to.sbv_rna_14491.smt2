(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA05087A)))
;; x should be Float32(0xCA05087A [Rational(-4359229, 2), -2179614.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -2179615

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110111101011110111100001))
;; z should be -2179615

(assert (= y z))
(check-sat)
(exit)

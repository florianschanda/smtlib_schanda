(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA9FAA8E)))
;; x should be Float32(0xCA9FAA8E [Rational(-5231943), -5231943.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1000110000100110010000110000010100111011011100000100000101100000))
;; z should be 10098832904176025952

(assert (= y z))
(check-sat)
(exit)

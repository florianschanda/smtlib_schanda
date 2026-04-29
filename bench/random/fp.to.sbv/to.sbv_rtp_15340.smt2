(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11000110 #b11010111101111100100110)))
;; x should be Float32(0xE36BDF26 [Rational(-4351064396841317564416), -4351064396841317564416.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1101100101010000111010101011110000111110011100001111011010010011))
;; z should be -2787470075119995245

(assert (not (= y z)))
(check-sat)
(exit)

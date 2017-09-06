(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD8755F09)))
;; x should be Float32(0xD8755F09 [Rational(-1079154086772736), -1079154086772736.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -1079154086772736

(declare-const z Int)
(assert (= z (- 1079154086772736)))
(assert (= y z))

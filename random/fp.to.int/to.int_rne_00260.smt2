(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC8813A50)))
;; x should be Float32(0xC8813A50 [Rational(-529317, 2), -264658.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -264658

(declare-const z Int)
(assert (= z (- 264658)))
(assert (= y z))

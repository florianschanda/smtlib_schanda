(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xE264DCB1)))
;; x should be Float32(0xE264DCB1 [Rational(-1055440035141249925120), -1055440035141249925120.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 1055440070325622013954.0))))
;; w should be Float32(0xE264DCB2 [Rational(-1055440105509994102784), -1055440105509994102784.000000])

(assert (distinct x w))
(check-sat)
(exit)

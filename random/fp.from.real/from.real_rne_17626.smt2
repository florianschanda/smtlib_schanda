(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b11000000 #b11110111110011110111110)))
;; x should be Float32(0xE07BE7BE [Rational(-72606742921397403648), -72606742921397403648.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 72606745120420659201.0))))
;; w should be Float32(0xE07BE7BF [Rational(-72606747319443914752), -72606747319443914752.000000])

(assert (distinct x w))
(check-sat)
(exit)

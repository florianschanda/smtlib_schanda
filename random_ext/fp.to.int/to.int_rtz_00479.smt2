(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTZ +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10100100 #b10000111111100000100010)))
;; x should be Float32(0x5243F822 [Rational(210420400128), 210420400128.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 210420400128

(declare-const z Int)
(assert (= z 210420400128))
(assert (not (= y z)))

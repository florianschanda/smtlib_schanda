(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNA -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b11100101 #b11101011110100010110010)))
;; x should be Float32(0xF2F5E8B2 [Rational(-9741457763534603085177757368320), -9741457763534603085177757368320.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -9741457763534603085177757368320

(declare-const z Int)
(assert (= z (- 9741457763534603085177757368320)))
(assert (not (= y z)))

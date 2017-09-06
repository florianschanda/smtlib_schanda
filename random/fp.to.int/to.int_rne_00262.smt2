(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNE -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11101101001100010111110)))
;; x should be Float32(0xCA7698BE [Rational(-8080479, 2), -4040239.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -4040240

(declare-const z Int)
(assert (= z (- 4040240)))
(assert (not (= y z)))

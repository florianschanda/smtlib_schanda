(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNE -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11110000010011100100001)))
;; x should be Float32(0xCAF82721 [Rational(-16262945, 2), -8131472.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -8131472

(declare-const z Int)
(assert (= z (- 8131472)))
(assert (not (= y z)))

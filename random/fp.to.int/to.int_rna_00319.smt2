(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00001001110011011011111)))
;; x should be Float32(0xCA84E6DF [Rational(-8709855, 2), -4354927.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -4354928

(declare-const z Int)
(assert (= z (- 4354928)))
(assert (not (= y z)))

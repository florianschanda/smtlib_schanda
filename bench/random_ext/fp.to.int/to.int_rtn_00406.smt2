(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b00101011110111101111000)))
;; x should be Float32(0x4915EF78 [Rational(1228271, 2), 614135.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 614135

(declare-const z Int)
(assert (= z 614135))
(assert (not (= y z)))

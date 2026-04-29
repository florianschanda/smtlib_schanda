(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11011001101100111111010)))
;; x should be Float32(0x4A6CD9FA [Rational(7761149, 2), 3880574.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 3880574

(declare-const z Int)
(assert (= z 3880574))
(assert (not (= y z)))

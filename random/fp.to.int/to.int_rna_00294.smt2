(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01110011111110011110100)))
;; x should be Float32(0x49B9FCF4 [Rational(3047229, 2), 1523614.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 1523615

(declare-const z Int)
(assert (= z 1523615))
(assert (not (= y z)))

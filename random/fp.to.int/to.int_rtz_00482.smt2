(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTZ +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00011100111111101111110)))
;; x should be Float32(0x000E7F7E [Rational(475071, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (not (= y z)))

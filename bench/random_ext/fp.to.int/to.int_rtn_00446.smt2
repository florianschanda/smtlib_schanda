(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTN -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00100010 #b01000001000101101011010)))
;; x should be Float32(0x91208B5A [Rational(-5260717, 41538374868278621028243970633760768), -0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -1

(declare-const z Int)
(assert (= z (- 1)))
(assert (not (= y z)))

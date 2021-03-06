(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10011110 #b01010101011110000000100)))
;; x should be Float32(0x4F2ABC04 [Rational(2864448512), 2864448512.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 71611215593.0 25.0))))
;; w should be Float32(0x4F2ABC04 [Rational(2864448512), 2864448512.000000])

(assert (not (= x w)))
(check-sat)
(exit)

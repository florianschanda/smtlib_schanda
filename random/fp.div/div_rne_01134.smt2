(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00506F4A)))
;; y should be Float32(0x00506F4A [Rational(2635685, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result (fp #b1 #b01111111 #b10010111011000101110001))))
(check-sat)
(exit)

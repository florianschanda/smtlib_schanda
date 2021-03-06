(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80758332)))
;; x should be Float32(0x80758332 [Rational(-3850649, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x298E7BFD)))
;; z should be Float32(0x298E7BFD [Rational(9337853, 147573952589676412928), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b01010011 #b00011100111101111111101))))
(check-sat)
(exit)

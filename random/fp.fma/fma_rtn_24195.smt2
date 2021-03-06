(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01000111001001110100010)))
;; x should be Float32(0xCA2393A2 [Rational(-5360081, 2), -2680040.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z (fp #b0 #b00011001 #b10100010111100111111111)))
;; z should be Float32(0x0CD179FF [Rational(13728255, 42535295865117307932921825928971026432), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b00011001 #b10100010111100111111111)))
(check-sat)
(exit)

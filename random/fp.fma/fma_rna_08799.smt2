(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01101001 #b00101001110011101000001)))
;; y should be Float32(0x3494E741 [Rational(9758529, 35184372088832), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4A77193E)))
;; z should be Float32(0x4A77193E [Rational(8096927, 2), 4048463.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #x4A77193E)))
(check-sat)
(exit)

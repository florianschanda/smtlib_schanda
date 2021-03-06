(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF7FFFFF)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b00011011001000001010011)))
;; y should be Float32(0x4A8D9053 [Rational(9277523, 2), 4638761.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xE959DDF2)))
;; z should be Float32(0xE959DDF2 [Rational(-16461563122572160013434880), -16461563122572160013434880.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)

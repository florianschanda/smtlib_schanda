(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00011101 #b01010001101000101000010)))
;; x should be Float32(0x0EA8D142 [Rational(5531809, 1329227995784915872903807060280344576), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x39D51A2840000000 [Rational(5531809, 1329227995784915872903807060280344576), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x39D51A2840000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

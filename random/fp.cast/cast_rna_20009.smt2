(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0EA8D142)))
;; x should be Float32(0x0EA8D142 [Rational(5531809, 1329227995784915872903807060280344576), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(+zero)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x0000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

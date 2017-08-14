(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b01101010 #b00100110001000111101011)))
;; x should be Float32(0x351311EB [Rational(9638379, 17592186044416), 0.000001])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 40589993019.0 87960930222080000.0))))
;; w should be Float32(0x34F7BDDD [Rational(16235997, 35184372088832), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ -zero 8 24)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b01100011 #b00111111010100100110011)))
;; y should be Float32(0x319FA933 [Rational(10463539, 2251799813685248), 0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RNA x y)))
(assert (not (= result (_ -zero 8 24))))
(check-sat)
(exit)

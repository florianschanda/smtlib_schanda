(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b01011111 #b00011101011100100110101)))
;; x should be Float32(0x2F8EB935 [Rational(9353525, 36028797018963968), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 38629728939.0 360287970189639680000.0)))))
;; w should be Float32(0xAEEBC6F4 [Rational(-3862973, 36028797018963968), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)

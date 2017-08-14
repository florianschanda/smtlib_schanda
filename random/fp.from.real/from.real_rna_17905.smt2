(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b01011111 #b00011101011100100110101)))
;; x should be Float32(0x2F8EB935 [Rational(9353525, 36028797018963968), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 46767628173.0 180143985094819840000.0))))
;; w should be Float32(0x2F8EB936 [Rational(4676763, 18014398509481984), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)

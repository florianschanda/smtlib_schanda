(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00630938)))
;; x should be Float32(0x00630938 [Rational(811303, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 46317214278769155256136031009453424009930606751698681.0 5092589940836215215671114221023445402628670984164840626590351123385953249408341765458493440.0))))
;; w should be Float32(0x00630938 [Rational(811303, 89202980794122492566142873090593446023921664), 0.000000])

(assert (= x w))
(check-sat)
(exit)

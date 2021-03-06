(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11000111 #b10011100110010100101010)))
;; x should be Float32(0x63CE652A [Rational(7614637836262040403968), 7614637836262040403968.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z (_ NaN 8 24)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)

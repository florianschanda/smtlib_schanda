(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b10000011011000011010000)))
;; x should be Float32(0x4941B0D0 [Rational(793357), 793357.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b11101100101110001011101)))
;; y should be Float32(0x4AF65C5D [Rational(16145501, 2), 8072750.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7F7FFFFF)))
;; z should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x7F7FFFFF))))
(check-sat)
(exit)

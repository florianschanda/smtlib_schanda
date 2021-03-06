(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01110001001011011011011)))
;; x should be Float32(0xCAB896DB [Rational(-12097243, 2), -6048621.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0B4032AB)))
;; y should be Float32(0x0B4032AB [Rational(12595883, 340282366920938463463374607431768211456), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b00000000000000000000000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFF800000))))
(check-sat)
(exit)

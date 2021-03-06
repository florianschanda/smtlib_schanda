(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11001001000001001110001)))
;; x should be Float32(0xCAE48271 [Rational(-14975601, 2), -7487800.500000])

(declare-const y Float32)
(assert (= y (_ +oo 8 24)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b01101001110101011111011)))
;; z should be Float32(0x4AB4EAFB [Rational(11856635, 2), 5928317.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)

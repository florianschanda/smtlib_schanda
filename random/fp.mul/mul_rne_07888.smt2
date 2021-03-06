(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49DFBCBC)))
;; x should be Float32(0x49DFBCBC [Rational(3665711, 2), 1832855.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010010 #b10110110001111111101000)))
;; y should be Float32(0xC95B1FE8 [Rational(-1795069, 2), -897534.500000])

(declare-const result Float32)
(assert (= result (fp.mul RNE x y)))
(assert (not (= result (fp #b1 #b10100111 #b01111111000001001010111))))
(check-sat)
(exit)

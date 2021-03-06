(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9126478)))
;; x should be Float32(0xC9126478 [Rational(-1199247, 2), -599623.500000])

(declare-const y Float32)
(assert (= y (_ NaN 8 24)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z (fp #b0 #b10011010 #b01010101010100011111111)))
;; z should be Float32(0x4D2AA8FF [Rational(178950128), 178950128.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b1 #b11111111 #b11111111111111111111111))))
(check-sat)
(exit)

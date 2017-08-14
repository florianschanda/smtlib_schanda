(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b00000101 #b00101111101111011110111)))
;; x should be Float32(0x0297DEF7 [Rational(9953015, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0x3F852FBDEE0000000000000000000000 [Rational(9953015, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111110000101 #b0010111110111101111011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

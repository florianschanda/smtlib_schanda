(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11101101010010101010000)))
;; x should be Float32(0x0076A550 [Rational(485973, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x380DA95400000000 [Rational(485973, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x380DA95400000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
